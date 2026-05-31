#include "visitor.h"

#include <algorithm>
#include <cctype>
#include <cstdlib>
#include <cstdint>
#include <sstream>
#include <optional>
#include <regex>
#include <stdexcept>
#include <string>
#include <string_view>
#include <unordered_map>
#include <unordered_set>
#include <utility>
#include <vector>

#include "compilerv1Lexer.h"
#include "apollo_inline_foreign.h"
#include "apollo_source_preprocessor.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Metadata.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/Verifier.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/TargetParser/Triple.h"
#include "llvm/Support/raw_ostream.h"

#ifdef APOLLO_CODEGEN_BARRIERS
#include "codegen/barriers.h"
#endif

namespace {

const std::unordered_map<std::string, std::string> kPrimitiveIrTypes = {
    {"bool", "i1"},
    {"byte", "i8"},
    {"char", "i32"},
    {"i8", "i8"},
    {"u8", "i8"},
    {"i16", "i16"},
    {"u16", "i16"},
    {"short", "i16"},
    {"i32", "i32"},
    {"u32", "i32"},
    {"int", "i32"},
    {"i64", "i64"},
    {"u64", "i64"},
    {"isize", "i64"},
    {"long", "i64"},
    {"usize", "i64"},
    {"float", "float"},
    {"double", "double"},
    {"f64", "double"},
    {"void", "void"},
};

constexpr std::string_view kNominalStructPrefix = "apollo.nominal.";
constexpr std::string_view kFunctionOverloadSeparator = "$";

std::string mangleTypeName(std::string_view text) {
    std::string mangled;
    mangled.reserve(text.size());
    for (const unsigned char ch : text) {
        if (std::isalnum(ch) != 0) {
            mangled.push_back(static_cast<char>(ch));
        } else {
            mangled.push_back('_');
        }
    }
    if (mangled.empty()) {
        mangled = "unit";
    }
    return mangled;
}

struct LoweredValue {
    llvm::Value* value = nullptr;
    llvm::Value* address = nullptr;
    llvm::Type* storageType = nullptr;
    std::string typeText;
    bool ownsHeapStorage = false;
};

using LoweredValueMap = std::unordered_map<std::string, LoweredValue>;

// ----------------------------------------------------------------------------
// GC write-barrier seam.
//
// Mirrors Go's `runtime.gcWriteBarrier` strategy: every store of a
// possibly-heap-pointer value into a GC-managed slot must shade the new
// value grey so the concurrent marker preserves the tri-color invariant.
// `emitGcManagedStore` is the single funnel the legacy direct-IR backend
// uses for stores into slots we know live on the GC heap (currently the
// initializer store inside `lowerMntStatement` and the per-element init
// stores in `lowerMallocStatement`). Stores into stack allocas do NOT go
// through this helper because allocas are scanned conservatively at the
// safepoint root walk; barriers there would be pure overhead.
//
// Read barriers: not emitted. The major collector is non-moving (only the
// nursery copies, and nursery slots are never observed by mutator load
// after promotion because the forwarding pointer is installed inside the
// stop-the-world copy phase), so Go-style "load barrier optional" semantics
// apply. If/when we move to a moving major collector this is the seam to
// add `emit_read_barrier`.
//
// When `APOLLO_CODEGEN_BARRIERS` is not defined (e.g. unit-test builds
// that don't link the barriers static lib) we fall back to a plain store
// so the legacy single-threaded mark-and-sweep path keeps building.
inline llvm::StoreInst* emitGcManagedStore(llvm::IRBuilder<>& builder,
                                           llvm::Value* value,
                                           llvm::Value* slot,
                                           bool barriersOn) {
#ifdef APOLLO_CODEGEN_BARRIERS
    if (barriersOn && value != nullptr && value->getType() != nullptr && value->getType()->isPointerTy()) {
        auto* mod = builder.GetInsertBlock() != nullptr ? builder.GetInsertBlock()->getModule() : nullptr;
        if (mod != nullptr) {
            apollo::codegen::declareGcRuntimeIntrinsics(mod);
            apollo::codegen::emit_write_barrier(&builder, nullptr, slot, value);
        }
    }
#else
    (void)barriersOn;
#endif
    return builder.CreateStore(value, slot);
}

// ----------------------------------------------------------------------------
// Semantic-error surface.
//
// The legacy direct-IR backend reports failures by returning `false` from
// lowering helpers and propagating a string `unsupportedReason` up to
// `lowerSupportedFunctionBodies`, which finally throws a `runtime_error`.
// Helpers that do not receive the reason by reference instead write into
// the thread-local `gApolloLastSemanticError` slot below; the dispatcher
// (`lowerStatement`) consults it after a failure so that real semantic
// diagnostics (`redeclaration`, `deref-of-reference`) appear in the final
// error message instead of the generic "init-lowering-failed:<source>" tag.
// ----------------------------------------------------------------------------
thread_local std::string gApolloLastSemanticError;
using TypeAliasMap = std::unordered_map<std::string, std::string>;
thread_local TypeAliasMap* gActiveTypeAliases = nullptr;

void setSemanticError(std::string message) {
    gApolloLastSemanticError = std::move(message);
}

std::string takeSemanticError() {
    std::string out;
    out.swap(gApolloLastSemanticError);
    return out;
}

void setUnknownBindingError(std::string_view name) {
    setSemanticError("unknown or out-of-scope binding `" + std::string(name) + "`");
}

class TypeAliasScope final {
public:
    explicit TypeAliasScope(TypeAliasMap* aliases)
        : previous_(gActiveTypeAliases) {
        gActiveTypeAliases = aliases;
    }

    ~TypeAliasScope() {
        gActiveTypeAliases = previous_;
    }

private:
    TypeAliasMap* previous_;
};

std::string trimCopy(std::string text);

std::string normalizeTypeAliasKey(std::string_view text) {
    std::string normalized = trimCopy(std::string(text));
    if (normalized.size() >= 2 && normalized.front() == '<' && normalized.back() == '>') {
        normalized = trimCopy(normalized.substr(1, normalized.size() - 2));
    }
    return normalized;
}

TypeAliasMap snapshotActiveTypeAliases() {
    return gActiveTypeAliases != nullptr ? *gActiveTypeAliases : TypeAliasMap{};
}

std::string resolveActiveTypeAliases(std::string_view text) {
    std::string resolved = trimCopy(std::string(text));
    if (gActiveTypeAliases == nullptr || gActiveTypeAliases->empty() || resolved.empty()) {
        return resolved;
    }

    bool changed = true;
    while (changed) {
        changed = false;
        std::string next;
        next.reserve(resolved.size());

        for (std::size_t index = 0; index < resolved.size();) {
            if (resolved[index] == '<') {
                const std::size_t close = resolved.find('>', index + 1);
                if (close != std::string::npos) {
                    const std::string placeholderKey = normalizeTypeAliasKey(resolved.substr(index, close - index + 1));
                    const auto placeholderIt = gActiveTypeAliases->find(placeholderKey);
                    if (placeholderIt != gActiveTypeAliases->end()) {
                        next += placeholderIt->second;
                        index = close + 1;
                        changed = true;
                        continue;
                    }
                }
            }

            const unsigned char ch = static_cast<unsigned char>(resolved[index]);
            if (std::isalpha(ch) != 0 || ch == '_') {
                std::size_t end = index + 1;
                while (end < resolved.size()) {
                    const unsigned char ident = static_cast<unsigned char>(resolved[end]);
                    if (std::isalnum(ident) == 0 && ident != '_') {
                        break;
                    }
                    ++end;
                }

                const std::string key = resolved.substr(index, end - index);
                const auto it = gActiveTypeAliases->find(key);
                if (it != gActiveTypeAliases->end()) {
                    next += it->second;
                    changed = true;
                } else {
                    next += key;
                }
                index = end;
                continue;
            }

            next.push_back(resolved[index++]);
        }

        resolved.swap(next);
    }

    return resolved;
}

// True when `typeText` is a reference type (ends in `&`). Apollo references
// are auto-derefencing aliases, so unary `*` on a reference is invalid:
// the user wrote `int& y = x; *y = 4;` expecting C semantics, but Apollo's
// `&` is a borrow, not a pointer.
std::string stripTrailingReferenceQualifierText(std::string text) {
    text = trimCopy(std::move(text));
    constexpr std::string_view kQualifiers[] = { "const", "nconst", "nst", "stt" };
    bool removed = true;
    while (removed) {
        removed = false;
        for (const auto qualifier : kQualifiers) {
            if (text.size() >= qualifier.size()
                && text.compare(text.size() - qualifier.size(), qualifier.size(), qualifier) == 0) {
                text.erase(text.size() - qualifier.size());
                text = trimCopy(std::move(text));
                removed = true;
                break;
            }
        }
    }
    return text;
}

bool isReferenceTypeText(const std::string& typeText) {
    const std::string stripped = stripTrailingReferenceQualifierText(typeText);
    if (stripped.empty()) {
        return false;
    }
    return stripped.back() == '&';
}

std::string toPackageSourcePath(const std::string& importPath) {
    std::string path = importPath;
    std::replace(path.begin(), path.end(), '.', '/');
    return path + ".apollo";
}

std::vector<std::string> collectDependencyMetadata(compilerv1Parser::ProgramContext* tree) {
    std::vector<std::string> dependencies;
    if (tree == nullptr) {
        return dependencies;
    }

    for (auto* importStmt : tree->importStmt()) {
        if (importStmt->STRING() != nullptr) {
            std::string text = importStmt->STRING()->getText();
            if (text.size() >= 2) {
                dependencies.push_back(text.substr(1, text.size() - 2));
            }
            continue;
        }
        if (importStmt->headerPath() != nullptr) {
            dependencies.push_back(importStmt->headerPath()->getText());
            continue;
        }
        if (importStmt->importPath() != nullptr) {
            const std::string importPath = importStmt->importPath()->getText();
            if (importPath.find('*') == std::string::npos) {
                dependencies.push_back(importPath);
            }
        }
    }

    for (auto* includeStmt : tree->include()) {
        if (includeStmt->importPath() != nullptr) {
            dependencies.push_back(toPackageSourcePath(includeStmt->importPath()->getText()));
        }
    }

    std::sort(dependencies.begin(), dependencies.end());
    dependencies.erase(std::unique(dependencies.begin(), dependencies.end()), dependencies.end());
    return dependencies;
}

bool hasApolloSourceExtension(const std::filesystem::path& path) {
    const std::string extension = path.extension().string();
    return extension == ".apollo" || extension == ".aph";
}

std::optional<std::filesystem::path> normalizeApolloDependencyPath(const std::filesystem::path& importRoot,
    const std::filesystem::path& candidate) {
    const auto resolved = std::filesystem::absolute(candidate.is_absolute() ? candidate : (importRoot / candidate)).lexically_normal();
    if (!hasApolloSourceExtension(resolved) || !std::filesystem::exists(resolved)) {
        return std::nullopt;
    }
    return resolved;
}

std::optional<std::filesystem::path> resolveApolloDependencySource(const std::filesystem::path& importRoot,
    std::string_view dependency) {
    if (dependency.empty() || dependency.find('*') != std::string_view::npos) {
        return std::nullopt;
    }

    const std::string dependencyText(dependency);
    const std::filesystem::path dependencyPath(dependencyText);
    if (hasApolloSourceExtension(dependencyPath)) {
        if (auto resolved = normalizeApolloDependencyPath(importRoot, dependencyPath)) {
            return resolved;
        }
    }

    if (dependencyText.find('.') != std::string::npos) {
        if (auto resolved = normalizeApolloDependencyPath(importRoot, toPackageSourcePath(dependencyText))) {
            return resolved;
        }
    }

    if (dependencyText.find_first_of("/\\") != std::string::npos) {
        std::filesystem::path withApolloExtension = dependencyPath;
        if (!withApolloExtension.has_extension()) {
            withApolloExtension.replace_extension(".apollo");
        }
        if (auto resolved = normalizeApolloDependencyPath(importRoot, withApolloExtension)) {
            return resolved;
        }
    }

    return std::nullopt;
}

std::string targetTripleFromEnvironment() {
    const char* rawValue = std::getenv("APOLLO_TARGET_TRIPLE");
    if (rawValue == nullptr || *rawValue == '\0') {
        return {};
    }
    return rawValue;
}

bool envEnabled(const char* name) {
    const char* rawValue = std::getenv(name);
    if (rawValue == nullptr) {
        return false;
    }
    const std::string value(rawValue);
    return value == "1" || value == "true" || value == "TRUE" || value == "yes" || value == "YES" || value == "on" || value == "ON";
}

std::string storageKindName(ApolloIrStorageKind storageKind) {
    switch (storageKind) {
    case ApolloIrStorageKind::ArrayOfStructs:
        return "aos";
    case ApolloIrStorageKind::FullStructOfArrays:
        return "full-soa";
    case ApolloIrStorageKind::BridgeExcluded:
        return "bridge-excluded";
    case ApolloIrStorageKind::Unsupported:
        return "unsupported";
    }
    return "unknown";
}

std::string stripOuterParens(std::string text) {
    while (text.size() >= 2 && text.front() == '(' && text.back() == ')') {
        int depth = 0;
        bool wrapsWholeExpression = true;
        for (size_t index = 0; index < text.size(); ++index) {
            const char ch = text[index];
            if (ch == '(') {
                ++depth;
            } else if (ch == ')') {
                --depth;
                if (depth == 0 && index + 1 != text.size()) {
                    wrapsWholeExpression = false;
                    break;
                }
            }
        }
        if (!wrapsWholeExpression) {
            break;
        }
        text = text.substr(1, text.size() - 2);
    }
    return text;
}

std::string trimCopy(std::string text) {
    const auto first = text.find_first_not_of(" \t\r\n");
    if (first == std::string::npos) {
        return {};
    }
    const auto last = text.find_last_not_of(" \t\r\n");
    return text.substr(first, last - first + 1);
}

bool isDecimalIntegerLiteral(const std::string& text) {
    if (text.empty()) {
        return false;
    }
    return std::all_of(text.begin(), text.end(), [](unsigned char ch) { return std::isdigit(ch) != 0; });
}

bool isStringLiteral(const std::string& text) {
    return text.size() >= 2 && text.front() == '"' && text.back() == '"';
}

bool isTemplateStringLiteral(const std::string& text) {
    return text.size() >= 2 && text.front() == '`' && text.back() == '`';
}

std::string canonicalApolloTypeText(std::string_view text) {
    std::string trimmed = resolveActiveTypeAliases(text);
    trimmed.erase(std::remove(trimmed.begin(), trimmed.end(), '&'), trimmed.end());
    trimmed = trimCopy(std::move(trimmed));
    if (trimmed == "bool") {
        return "bool";
    }
    if (trimmed == "byte" || trimmed == "i8" || trimmed == "u8") {
        return "i8";
    }
    if (trimmed == "char") {
        return "char";
    }
    if (trimmed == "i16" || trimmed == "u16" || trimmed == "short") {
        return "i16";
    }
    if (trimmed == "i32" || trimmed == "u32" || trimmed == "int") {
        return "i32";
    }
    if (trimmed == "i64" || trimmed == "u64" || trimmed == "long" || trimmed == "isize" || trimmed == "usize") {
        return "i64";
    }
    if (trimmed == "float") {
        return "float";
    }
    if (trimmed == "double" || trimmed == "f64") {
        return "f64";
    }
    if (trimmed == "str") {
        return "str";
    }
    return trimmed;
}

std::string decodeStringLiteral(std::string_view text) {
    if (text.size() >= 2 && text.front() == '"' && text.back() == '"') {
        text.remove_prefix(1);
        text.remove_suffix(1);
    }

    std::string decoded;
    decoded.reserve(text.size());
    bool escaping = false;
    for (const char ch : text) {
        if (!escaping) {
            if (ch == '\\') {
                escaping = true;
                continue;
            }
            decoded.push_back(ch);
            continue;
        }

        switch (ch) {
        case 'n': decoded.push_back('\n'); break;
        case 'r': decoded.push_back('\r'); break;
        case 't': decoded.push_back('\t'); break;
        case '\\': decoded.push_back('\\'); break;
        case '"': decoded.push_back('"'); break;
        default: decoded.push_back(ch); break;
        }
        escaping = false;
    }
    if (escaping) {
        decoded.push_back('\\');
    }
    return decoded;
}

std::string decodeTemplateStringLiteral(std::string_view text) {
    if (text.size() >= 2 && text.front() == '`' && text.back() == '`') {
        text.remove_prefix(1);
        text.remove_suffix(1);
    }
    return std::string(text);
}

std::optional<std::string> decodeQuotedScalarLiteral(std::string_view text, bool hasBytePrefix) {
    if (hasBytePrefix) {
        if (text.size() < 4 || text[0] != 'b' || text[1] != '\'' || text.back() != '\'') {
            return std::nullopt;
        }
        text.remove_prefix(2);
        text.remove_suffix(1);
    } else {
        if (text.size() < 3 || text.front() != '\'' || text.back() != '\'') {
            return std::nullopt;
        }
        text.remove_prefix(1);
        text.remove_suffix(1);
    }

    std::string decoded;
    decoded.reserve(text.size());
    bool escaping = false;
    for (const char ch : text) {
        if (!escaping) {
            if (ch == '\\') {
                escaping = true;
                continue;
            }
            decoded.push_back(ch);
            continue;
        }

        switch (ch) {
        case 'n': decoded.push_back('\n'); break;
        case 'r': decoded.push_back('\r'); break;
        case 't': decoded.push_back('\t'); break;
        case '0': decoded.push_back('\0'); break;
        case '\\': decoded.push_back('\\'); break;
        case '\'': decoded.push_back('\''); break;
        case '"': decoded.push_back('"'); break;
        default: decoded.push_back(ch); break;
        }
        escaping = false;
    }

    if (escaping) {
        return std::nullopt;
    }
    return decoded;
}

std::optional<std::uint32_t> decodeUtf8Codepoint(std::string_view bytes) {
    if (bytes.empty()) {
        return std::nullopt;
    }

    const auto isContinuation = [](unsigned char byte) {
        return (byte & 0xC0u) == 0x80u;
    };

    const unsigned char first = static_cast<unsigned char>(bytes[0]);
    if ((first & 0x80u) == 0) {
        return static_cast<std::uint32_t>(first);
    }

    if ((first & 0xE0u) == 0xC0u) {
        if (bytes.size() != 2) {
            return std::nullopt;
        }
        const unsigned char second = static_cast<unsigned char>(bytes[1]);
        if (!isContinuation(second)) {
            return std::nullopt;
        }
        return ((first & 0x1Fu) << 6) | (second & 0x3Fu);
    }

    if ((first & 0xF0u) == 0xE0u) {
        if (bytes.size() != 3) {
            return std::nullopt;
        }
        const unsigned char second = static_cast<unsigned char>(bytes[1]);
        const unsigned char third = static_cast<unsigned char>(bytes[2]);
        if (!isContinuation(second) || !isContinuation(third)) {
            return std::nullopt;
        }
        return ((first & 0x0Fu) << 12) | ((second & 0x3Fu) << 6) | (third & 0x3Fu);
    }

    if ((first & 0xF8u) == 0xF0u) {
        if (bytes.size() != 4) {
            return std::nullopt;
        }
        const unsigned char second = static_cast<unsigned char>(bytes[1]);
        const unsigned char third = static_cast<unsigned char>(bytes[2]);
        const unsigned char fourth = static_cast<unsigned char>(bytes[3]);
        if (!isContinuation(second) || !isContinuation(third) || !isContinuation(fourth)) {
            return std::nullopt;
        }
        return ((first & 0x07u) << 18) | ((second & 0x3Fu) << 12) | ((third & 0x3Fu) << 6) | (fourth & 0x3Fu);
    }

    return std::nullopt;
}

std::optional<std::uint32_t> decodeCharLiteralCodepoint(std::string_view text) {
    const auto decoded = decodeQuotedScalarLiteral(text, false);
    if (!decoded.has_value()) {
        return std::nullopt;
    }
    return decodeUtf8Codepoint(*decoded);
}

std::optional<std::uint8_t> decodeByteLiteralValue(std::string_view text) {
    const auto decoded = decodeQuotedScalarLiteral(text, true);
    if (!decoded.has_value() || decoded->size() != 1) {
        return std::nullopt;
    }
    return static_cast<std::uint8_t>(static_cast<unsigned char>((*decoded)[0]));
}

enum class InterpolatedStringSegmentKind {
    Literal,
    Expression,
};

struct InterpolatedStringSegment {
    InterpolatedStringSegmentKind kind;
    std::string text;
};

void appendDecodedEscapedChar(std::string& decoded, char ch) {
    switch (ch) {
    case 'n': decoded.push_back('\n'); break;
    case 'r': decoded.push_back('\r'); break;
    case 't': decoded.push_back('\t'); break;
    case '\\': decoded.push_back('\\'); break;
    case '"': decoded.push_back('"'); break;
    case '`': decoded.push_back('`'); break;
    default: decoded.push_back(ch); break;
    }
}

bool splitInterpolatedStringLiteral(std::string_view text,
    bool isTemplate,
    std::vector<InterpolatedStringSegment>& segments) {
    if (text.size() >= 2) {
        text.remove_prefix(1);
        text.remove_suffix(1);
    }

    std::string literal;
    auto flushLiteral = [&]() {
        if (!literal.empty()) {
            segments.push_back({InterpolatedStringSegmentKind::Literal, literal});
            literal.clear();
        }
    };

    bool escaping = false;
    for (std::size_t index = 0; index < text.size(); ++index) {
        const char ch = text[index];
        if (!isTemplate && escaping) {
            appendDecodedEscapedChar(literal, ch);
            escaping = false;
            continue;
        }
        if (!isTemplate && ch == '\\') {
            escaping = true;
            continue;
        }
        if (ch == '$' && index + 1 < text.size() && text[index + 1] == '{') {
            flushLiteral();
            index += 2;

            int braceDepth = 1;
            bool placeholderEscaping = false;
            char quotedDelimiter = '\0';
            std::string placeholder;
            for (; index < text.size(); ++index) {
                const char placeholderCh = text[index];
                if (quotedDelimiter != '\0') {
                    placeholder.push_back(placeholderCh);
                    if (placeholderEscaping) {
                        placeholderEscaping = false;
                        continue;
                    }
                    if (placeholderCh == '\\') {
                        placeholderEscaping = true;
                        continue;
                    }
                    if (placeholderCh == quotedDelimiter) {
                        quotedDelimiter = '\0';
                    }
                    continue;
                }
                if (placeholderCh == '"' || placeholderCh == '\'' || placeholderCh == '`') {
                    quotedDelimiter = placeholderCh;
                    placeholder.push_back(placeholderCh);
                    continue;
                }
                if (placeholderCh == '{') {
                    ++braceDepth;
                    placeholder.push_back(placeholderCh);
                    continue;
                }
                if (placeholderCh == '}') {
                    --braceDepth;
                    if (braceDepth == 0) {
                        break;
                    }
                    placeholder.push_back(placeholderCh);
                    continue;
                }
                placeholder.push_back(placeholderCh);
            }

            if (braceDepth != 0) {
                return false;
            }

            segments.push_back({InterpolatedStringSegmentKind::Expression, trimCopy(std::move(placeholder))});
            continue;
        }
        literal.push_back(ch);
    }

    if (!isTemplate && escaping) {
        literal.push_back('\\');
    }
    flushLiteral();
    return true;
}

std::string escapePrintfFormatLiteral(std::string_view text) {
    std::string escaped;
    escaped.reserve(text.size());
    for (const char ch : text) {
        if (ch == '%') {
            escaped.append("%%");
            continue;
        }
        escaped.push_back(ch);
    }
    return escaped;
}

std::string joinStrings(const std::vector<std::string>& values, std::string_view separator) {
    std::ostringstream builder;
    for (size_t index = 0; index < values.size(); ++index) {
        if (index > 0) {
            builder << separator;
        }
        builder << values[index];
    }
    return builder.str();
}

llvm::Metadata* boolMetadata(llvm::LLVMContext& context, bool value) {
    return llvm::ConstantAsMetadata::get(llvm::ConstantInt::get(llvm::Type::getInt1Ty(context), value ? 1 : 0));
}

llvm::Metadata* intMetadata(llvm::LLVMContext& context, std::uint64_t value) {
    return llvm::ConstantAsMetadata::get(llvm::ConstantInt::get(llvm::Type::getInt32Ty(context), value));
}

void appendNamedMetadataNode(llvm::Module& module, llvm::StringRef name, llvm::ArrayRef<llvm::Metadata*> operands) {
    module.getOrInsertNamedMetadata(name)->addOperand(llvm::MDNode::get(module.getContext(), operands));
}

llvm::Type* lowerTypeRef(llvm::LLVMContext& context, compilerv1Parser::TypeRefContext* typeRef);
llvm::Type* lowerSourceTypeText(llvm::LLVMContext& context, std::string_view typeText);
llvm::Type* lowerPointeeSourceType(llvm::LLVMContext& context, std::string_view typeText);
llvm::Value* lowerExpressionValue(llvm::IRBuilder<>& builder,
    antlr4::ParserRuleContext* expression,
    const LoweredValueMap& values,
    bool loadReferences);
llvm::Value* loadIfAddressable(llvm::IRBuilder<>& builder, const LoweredValue& lowered);
llvm::Value* castToCommonInteger(llvm::IRBuilder<>& builder, llvm::Value* value, llvm::Type* targetType);
compilerv1Parser::PrimaryContext* extractPrimaryContext(antlr4::ParserRuleContext* current);
llvm::Value* lowerFunctionCallForExpectedType(llvm::IRBuilder<>& builder,
    compilerv1Parser::FunctionCallContext* functionCall,
    llvm::Type* expectedType,
    const LoweredValueMap& values);
llvm::Function* instantiateTemplateFunctionForCall(llvm::Module& module,
    compilerv1Parser::FunctionCallContext* functionCall,
    const LoweredValueMap& values);
bool lowerGlobalVariable(llvm::Module& module,
    compilerv1Parser::TypeRefContext* typeRef,
    antlr4::tree::TerminalNode* identifier,
    compilerv1Parser::ExpressionContext* expression);

llvm::Value* lowerConditionValue(llvm::IRBuilder<>& builder,
    antlr4::ParserRuleContext* expression,
    const LoweredValueMap& values) {
    if (expression == nullptr) {
        return nullptr;
    }

    llvm::Value* condition = lowerExpressionValue(builder, expression, values, true);
    if (condition != nullptr && condition->getType()->isIntegerTy(1)) {
        return condition;
    }
    if (condition != nullptr && condition->getType()->isIntegerTy()) {
        return builder.CreateICmpNE(condition, llvm::ConstantInt::get(condition->getType(), 0), "truthy");
    }

    const std::string text = trimCopy(stripOuterParens(expression->getText()));
    if (text == "true") {
        return llvm::ConstantInt::getTrue(builder.getContext());
    }
    if (text == "false") {
        return llvm::ConstantInt::getFalse(builder.getContext());
    }
    return nullptr;
}

bool isNominalGenericType(compilerv1Parser::GenericTypeContext* genericType) {
    return genericType != nullptr
        && genericType->ID() != nullptr
        && genericType->ID()->getText() == "nominal"
    && (genericType->typeRef().size() == 1 || genericType->typeRef().size() == 2);
}

bool isOptionGenericType(compilerv1Parser::GenericTypeContext* genericType) {
    return genericType != nullptr
        && genericType->ID() != nullptr
        && genericType->ID()->getText() == "option"
        && (genericType->typeRef().size() == 1 || genericType->typeRef().size() == 2);
}

bool isTupleGenericType(compilerv1Parser::GenericTypeContext* genericType) {
    return genericType != nullptr
        && genericType->ID() != nullptr
        && genericType->ID()->getText() == "tuple"
        && genericType->typeRef().size() >= 2;
}

llvm::StructType* lowerTaggedResultType(llvm::LLVMContext& context,
    std::string_view genericText,
    llvm::Type* okType,
    llvm::Type* errType) {
    if (okType == nullptr || errType == nullptr) {
        return nullptr;
    }

    const std::string typeName = std::string(kNominalStructPrefix) + mangleTypeName(genericText);
    if (llvm::StructType* existing = llvm::StructType::getTypeByName(context, typeName)) {
        if (existing->isOpaque()) {
            existing->setBody({
                llvm::Type::getInt1Ty(context),
                llvm::Type::getInt1Ty(context),
                okType,
                errType,
            }, false);
        }
        return existing;
    }

    return llvm::StructType::create(context, {
        llvm::Type::getInt1Ty(context),
        llvm::Type::getInt1Ty(context),
        okType,
        errType,
    }, typeName, false);
}

llvm::StructType* lowerNominalType(llvm::LLVMContext& context, compilerv1Parser::GenericTypeContext* genericType) {
    if (!isNominalGenericType(genericType)) {
        return nullptr;
    }

    llvm::Type* okType = lowerTypeRef(context, genericType->typeRef(0));
    llvm::Type* errType = genericType->typeRef().size() == 2
        ? lowerTypeRef(context, genericType->typeRef(1))
        : llvm::PointerType::getUnqual(context);
    if (okType == nullptr || errType == nullptr) {
        return nullptr;
    }

    return lowerTaggedResultType(context, genericType->getText(), okType, errType);
}

llvm::StructType* lowerOptionType(llvm::LLVMContext& context, compilerv1Parser::GenericTypeContext* genericType) {
    if (!isOptionGenericType(genericType)) {
        return nullptr;
    }

    llvm::Type* okType = lowerTypeRef(context, genericType->typeRef(0));
    llvm::Type* errType = genericType->typeRef().size() == 2
        ? lowerTypeRef(context, genericType->typeRef(1))
        : llvm::PointerType::getUnqual(context);
    if (okType == nullptr || errType == nullptr) {
        return nullptr;
    }

    return lowerTaggedResultType(context, genericType->getText(), okType, errType);
}

bool isNominalStructType(llvm::Type* type) {
    auto* structType = llvm::dyn_cast_or_null<llvm::StructType>(type);
    return structType != nullptr
        && structType->hasName()
        && structType->getName().starts_with(kNominalStructPrefix)
        && structType->getNumElements() == 4;
}

llvm::Type* nominalOkType(llvm::Type* type) {
    auto* structType = llvm::dyn_cast_or_null<llvm::StructType>(type);
    return isNominalStructType(type) ? structType->getElementType(2) : nullptr;
}

llvm::Type* nominalErrType(llvm::Type* type) {
    auto* structType = llvm::dyn_cast_or_null<llvm::StructType>(type);
    return isNominalStructType(type) ? structType->getElementType(3) : nullptr;
}

llvm::Value* lowerExpressionForExpectedType(llvm::IRBuilder<>& builder,
    antlr4::ParserRuleContext* expression,
    llvm::Type* expectedType,
    const LoweredValueMap& values,
    bool loadReferences = true);

llvm::Value* lowerEnumConstructorValue(llvm::IRBuilder<>& builder,
    compilerv1Parser::EnumConstructorContext* enumConstructor,
    const LoweredValueMap& values);

llvm::Value* lowerEnumUnwrapValue(llvm::IRBuilder<>& builder,
    compilerv1Parser::FunctionCallContext* functionCall,
    llvm::Type* expectedType,
    const LoweredValueMap& values);

llvm::Value* buildNominalAggregateValue(llvm::IRBuilder<>& builder,
    llvm::Type* nominalType,
    llvm::Value* okValue,
    llvm::Value* errValue,
    bool isNominal,
    bool isTerminal) {
    if (!isNominalStructType(nominalType) || okValue == nullptr || errValue == nullptr) {
        return nullptr;
    }

    llvm::Value* aggregate = llvm::UndefValue::get(nominalType);
    aggregate = builder.CreateInsertValue(aggregate, llvm::ConstantInt::get(llvm::Type::getInt1Ty(builder.getContext()), isNominal ? 1 : 0), {0});
    aggregate = builder.CreateInsertValue(aggregate, llvm::ConstantInt::get(llvm::Type::getInt1Ty(builder.getContext()), isTerminal ? 1 : 0), {1});
    aggregate = builder.CreateInsertValue(aggregate, okValue, {2});
    aggregate = builder.CreateInsertValue(aggregate, errValue, {3});
    return aggregate;
}

llvm::Value* lowerNominalBuiltinValue(llvm::IRBuilder<>& builder,
    llvm::Type* expectedType,
    antlr4::ParserRuleContext* expression,
    const LoweredValueMap& values,
    bool loadReferences = true) {
    if (!isNominalStructType(expectedType) || expression == nullptr) {
        return nullptr;
    }

    auto* primary = extractPrimaryContext(expression);
    if (primary == nullptr || primary->functionCall() == nullptr || primary->functionCall()->ID() == nullptr) {
        return nullptr;
    }

    llvm::Type* okType = nominalOkType(expectedType);
    llvm::Type* errType = nominalErrType(expectedType);
    if (okType == nullptr || errType == nullptr) {
        return nullptr;
    }

    auto zeroOk = [&]() { return llvm::Constant::getNullValue(okType); };
    auto zeroErr = [&]() { return llvm::Constant::getNullValue(errType); };

    const std::string functionName = primary->functionCall()->ID()->getText();
    const auto& args = primary->functionCall()->args() != nullptr
        ? primary->functionCall()->args()->expression()
        : std::vector<compilerv1Parser::ExpressionContext*>{};

    if (functionName == "nominal") {
        if (args.size() != 1) {
            return nullptr;
        }
        llvm::Value* okValue = lowerExpressionForExpectedType(builder, args[0], okType, values, loadReferences);
        if (okValue == nullptr) {
            return nullptr;
        }
        return buildNominalAggregateValue(builder, expectedType, okValue, zeroErr(), true, false);
    }

    if (functionName == "cerr" || functionName == "terminalcerr") {
        if (args.size() != 1) {
            return nullptr;
        }
        llvm::Value* errValue = lowerExpressionForExpectedType(builder, args[0], errType, values, loadReferences);
        if (errValue == nullptr) {
            return nullptr;
        }
        return buildNominalAggregateValue(builder, expectedType, zeroOk(), errValue, false, functionName == "terminalcerr");
    }

    return nullptr;
}

llvm::Value* lowerResultHelperBuiltin(llvm::IRBuilder<>& builder,
    compilerv1Parser::FunctionCallContext* functionCall,
    const LoweredValueMap& values) {
    if (functionCall == nullptr || functionCall->ID() == nullptr) {
        return nullptr;
    }

    const std::string functionName = functionCall->ID()->getText();
    auto* argsCtx = functionCall->args();
    const std::size_t argCount = argsCtx != nullptr ? argsCtx->expression().size() : 0;

    auto lowerResultArg = [&](std::size_t index) -> llvm::Value* {
        if (argsCtx == nullptr || index >= argsCtx->expression().size()) {
            return nullptr;
        }
        llvm::Value* lowered = lowerExpressionValue(builder, argsCtx->expression(index), values, true);
        return isNominalStructType(lowered != nullptr ? lowered->getType() : nullptr) ? lowered : nullptr;
    };

    if (functionName == "sys__is_nominal" && argCount == 1) {
        llvm::Value* resultValue = lowerResultArg(0);
        return resultValue != nullptr ? builder.CreateExtractValue(resultValue, {0}) : nullptr;
    }
    if (functionName == "sys__is_cerr" && argCount == 1) {
        llvm::Value* resultValue = lowerResultArg(0);
        if (resultValue == nullptr) {
            return nullptr;
        }
        llvm::Value* okFlag = builder.CreateExtractValue(resultValue, {0});
        return builder.CreateXor(okFlag, llvm::ConstantInt::getTrue(builder.getContext()));
    }
    if (functionName == "sys__is_terminal" && argCount == 1) {
        llvm::Value* resultValue = lowerResultArg(0);
        return resultValue != nullptr ? builder.CreateExtractValue(resultValue, {1}) : nullptr;
    }
    if ((functionName == "sys__unwrap_i32" || functionName == "sys__unwrap_bool" || functionName == "sys__unwrap_f64" || functionName == "sys__unwrap_str")
        && argCount == 1) {
        llvm::Value* resultValue = lowerResultArg(0);
        return resultValue != nullptr ? builder.CreateExtractValue(resultValue, {2}) : nullptr;
    }
    if (functionName == "sys__error_message" && argCount == 1) {
        llvm::Value* resultValue = lowerResultArg(0);
        return resultValue != nullptr ? builder.CreateExtractValue(resultValue, {3}) : nullptr;
    }

    return nullptr;
}

llvm::Value* lowerShapeHelperBuiltin(llvm::IRBuilder<>& builder,
    compilerv1Parser::FunctionCallContext* functionCall,
    const LoweredValueMap& values) {
    if (functionCall == nullptr || functionCall->ID() == nullptr) {
        return nullptr;
    }

    llvm::Module* module = builder.GetInsertBlock() != nullptr ? builder.GetInsertBlock()->getModule() : nullptr;
    if (module == nullptr) {
        return nullptr;
    }

    const std::string functionName = functionCall->ID()->getText();
    auto* argsCtx = functionCall->args();
    const std::size_t argCount = argsCtx != nullptr ? argsCtx->expression().size() : 0;
    llvm::LLVMContext& context = builder.getContext();
    llvm::Type* i32Ty = llvm::Type::getInt32Ty(context);
    llvm::Type* boolTy = llvm::Type::getInt1Ty(context);
    llvm::Type* f64Ty = llvm::Type::getDoubleTy(context);

    auto lowerIntegerArg = [&](std::size_t index) -> llvm::Value* {
        if (argsCtx == nullptr || index >= argsCtx->expression().size()) {
            return nullptr;
        }
        llvm::Value* lowered = lowerExpressionValue(builder, argsCtx->expression(index), values, true);
        return lowered != nullptr ? castToCommonInteger(builder, lowered, i32Ty) : nullptr;
    };

    auto lowerF64Arg = [&](std::size_t index) -> llvm::Value* {
        if (argsCtx == nullptr || index >= argsCtx->expression().size()) {
            return nullptr;
        }
        llvm::Value* lowered = lowerExpressionValue(builder, argsCtx->expression(index), values, true);
        if (lowered == nullptr) {
            return nullptr;
        }
        if (lowered->getType()->isDoubleTy()) {
            return lowered;
        }
        if (lowered->getType()->isFloatTy()) {
            return builder.CreateFPExt(lowered, f64Ty);
        }
        if (lowered->getType()->isIntegerTy()) {
            return builder.CreateSIToFP(lowered, f64Ty);
        }
        return nullptr;
    };

    auto buildShape = [&](std::initializer_list<llvm::Value*> valuesToPack) -> llvm::Value* {
        std::vector<llvm::Type*> elementTypes;
        std::vector<llvm::Value*> elementValues;
        elementTypes.reserve(valuesToPack.size());
        elementValues.reserve(valuesToPack.size());
        for (llvm::Value* value : valuesToPack) {
            if (value == nullptr) {
                return nullptr;
            }
            elementValues.push_back(value);
            elementTypes.push_back(value->getType());
        }
        llvm::Value* aggregate = llvm::UndefValue::get(llvm::StructType::get(context, elementTypes, false));
        for (std::size_t index = 0; index < elementValues.size(); ++index) {
            aggregate = builder.CreateInsertValue(aggregate, elementValues[index], {static_cast<unsigned>(index)});
        }
        return aggregate;
    };

    if (functionName == "sys__overflowing_add" && argCount == 2) {
        llvm::Value* left = lowerIntegerArg(0);
        llvm::Value* right = lowerIntegerArg(1);
        if (left == nullptr || right == nullptr) {
            return nullptr;
        }

        llvm::FunctionCallee valueFn = module->getOrInsertFunction(
            "sys__overflowing_add_value",
            llvm::FunctionType::get(i32Ty, {i32Ty, i32Ty}, false));
        llvm::FunctionCallee overflowFn = module->getOrInsertFunction(
            "sys__overflowing_add_overflow",
            llvm::FunctionType::get(i32Ty, {i32Ty, i32Ty}, false));
        llvm::Value* sumValue = builder.CreateCall(valueFn, {left, right});
        llvm::Value* overflowValue = builder.CreateICmpNE(
            builder.CreateCall(overflowFn, {left, right}),
            llvm::ConstantInt::get(i32Ty, 0));
        return buildShape({sumValue, overflowValue});
    }

    if (functionName == "sys__frexp" && argCount == 1) {
        llvm::Value* input = lowerF64Arg(0);
        if (input == nullptr) {
            return nullptr;
        }

        llvm::FunctionCallee fractionFn = module->getOrInsertFunction(
            "sys__frexp_fraction",
            llvm::FunctionType::get(f64Ty, {f64Ty}, false));
        llvm::FunctionCallee exponentFn = module->getOrInsertFunction(
            "sys__frexp_exponent",
            llvm::FunctionType::get(i32Ty, {f64Ty}, false));
        return buildShape({builder.CreateCall(fractionFn, {input}), builder.CreateCall(exponentFn, {input})});
    }

    if (functionName == "sys__modf" && argCount == 1) {
        llvm::Value* input = lowerF64Arg(0);
        if (input == nullptr) {
            return nullptr;
        }

        llvm::FunctionCallee fractionFn = module->getOrInsertFunction(
            "sys__modf_fraction",
            llvm::FunctionType::get(f64Ty, {f64Ty}, false));
        llvm::FunctionCallee integralFn = module->getOrInsertFunction(
            "sys__modf_integral",
            llvm::FunctionType::get(f64Ty, {f64Ty}, false));
        return buildShape({builder.CreateCall(fractionFn, {input}), builder.CreateCall(integralFn, {input})});
    }

    return nullptr;
}

llvm::Value* lowerExpressionForExpectedType(llvm::IRBuilder<>& builder,
    antlr4::ParserRuleContext* expression,
    llvm::Type* expectedType,
    const LoweredValueMap& values,
    bool loadReferences) {
    if (expression == nullptr || expectedType == nullptr) {
        return nullptr;
    }

    const std::string expressionText = trimCopy(stripOuterParens(expression->getText()));
    const auto directValue = values.find(expressionText);
    if (directValue != values.end() && expectedType->isPointerTy()
        && directValue->second.address != nullptr
        && directValue->second.typeText.find('*') == std::string::npos
        && directValue->second.typeText.find('&') == std::string::npos) {
        if (directValue->second.address->getType() == expectedType) {
            return directValue->second.address;
        }
        if (directValue->second.address->getType()->isPointerTy()) {
            llvm::Value* bitcast = builder.CreateBitCast(directValue->second.address, expectedType);
            if (bitcast != nullptr && bitcast->getType() == expectedType) {
                return bitcast;
            }
        }
    }
    if (directValue != values.end() && isReferenceTypeText(directValue->second.typeText)) {
        llvm::Type* pointeeType = lowerPointeeSourceType(builder.getContext(), directValue->second.typeText);
        llvm::Value* referenceValue = loadIfAddressable(builder, directValue->second);
        if (pointeeType != nullptr && pointeeType == expectedType
            && referenceValue != nullptr && referenceValue->getType()->isPointerTy()) {
            return builder.CreateLoad(expectedType, referenceValue);
        }
    }

    if (llvm::Value* nominalValue = lowerNominalBuiltinValue(builder, expectedType, expression, values, loadReferences)) {
        return nominalValue;
    }

    if (auto* primary = extractPrimaryContext(expression); primary != nullptr && primary->functionCall() != nullptr) {
        if (llvm::Value* unwrappedEnumValue = lowerEnumUnwrapValue(builder, primary->functionCall(), expectedType, values)) {
            if (unwrappedEnumValue->getType() == expectedType) {
                return unwrappedEnumValue;
            }
            if (unwrappedEnumValue->getType()->isPointerTy() && expectedType->isPointerTy()) {
                llvm::Value* bitcast = builder.CreateBitCast(unwrappedEnumValue, expectedType);
                if (bitcast != nullptr && bitcast->getType() == expectedType) {
                    return bitcast;
                }
            }
        }
    }

    if (auto* primary = extractPrimaryContext(expression); primary != nullptr && primary->functionCall() != nullptr) {
        llvm::Value* loweredCall = lowerFunctionCallForExpectedType(builder, primary->functionCall(), expectedType, values);
        if (loweredCall != nullptr) {
            if (loweredCall->getType() == expectedType) {
                return loweredCall;
            }
            if (loweredCall->getType()->isIntegerTy() && expectedType->isIntegerTy()) {
                loweredCall = castToCommonInteger(builder, loweredCall, expectedType);
                if (loweredCall != nullptr && loweredCall->getType() == expectedType) {
                    return loweredCall;
                }
            }
            if (loweredCall->getType()->isFloatingPointTy() && expectedType->isFloatingPointTy()) {
                loweredCall = loweredCall->getType() == expectedType
                    ? loweredCall
                    : builder.CreateFPCast(loweredCall, expectedType);
                if (loweredCall != nullptr && loweredCall->getType() == expectedType) {
                    return loweredCall;
                }
            }
            if (loweredCall->getType()->isPointerTy() && expectedType->isPointerTy()) {
                llvm::Value* bitcast = builder.CreateBitCast(loweredCall, expectedType);
                if (bitcast != nullptr && bitcast->getType() == expectedType) {
                    return bitcast;
                }
            }
        }
    }

    llvm::Value* lowered = lowerExpressionValue(builder, expression, values, loadReferences);
    if (lowered == nullptr) {
        return nullptr;
    }
    if (lowered->getType() == expectedType) {
        return lowered;
    }
    if (lowered->getType()->isIntegerTy() && expectedType->isIntegerTy()) {
        lowered = castToCommonInteger(builder, lowered, expectedType);
        if (lowered != nullptr && lowered->getType() == expectedType) {
            return lowered;
        }
    }
    if (lowered->getType()->isFloatingPointTy() && expectedType->isFloatingPointTy()) {
        lowered = lowered->getType() == expectedType
            ? lowered
            : builder.CreateFPCast(lowered, expectedType);
        if (lowered != nullptr && lowered->getType() == expectedType) {
            return lowered;
        }
    }
    if (lowered->getType()->isPointerTy() && expectedType->isPointerTy()) {
        llvm::Value* bitcast = builder.CreateBitCast(lowered, expectedType);
        if (bitcast != nullptr && bitcast->getType() == expectedType) {
            return bitcast;
        }
    }
    return nullptr;
}

llvm::Type* lowerPrimitiveType(llvm::LLVMContext& context, std::string_view apolloType) {
    if (apolloType == "bool") {
        return llvm::Type::getInt1Ty(context);
    }
    if (apolloType == "byte") {
        return llvm::Type::getInt8Ty(context);
    }
    if (apolloType == "char") {
        return llvm::Type::getInt32Ty(context);
    }
    if (apolloType == "i8" || apolloType == "u8") {
        return llvm::Type::getInt8Ty(context);
    }
    if (apolloType == "i16" || apolloType == "u16" || apolloType == "short") {
        return llvm::Type::getInt16Ty(context);
    }
    if (apolloType == "i32" || apolloType == "u32" || apolloType == "int") {
        return llvm::Type::getInt32Ty(context);
    }
    if (apolloType == "i64" || apolloType == "u64" || apolloType == "long") {
        return llvm::Type::getInt64Ty(context);
    }
    if (apolloType == "isize" || apolloType == "usize") {
        return llvm::Type::getInt64Ty(context);
    }
    if (apolloType == "float") {
        return llvm::Type::getFloatTy(context);
    }
    if (apolloType == "double" || apolloType == "f64") {
        return llvm::Type::getDoubleTy(context);
    }
    if (apolloType == "void") {
        return llvm::Type::getVoidTy(context);
    }
    return nullptr;
}

llvm::Type* lowerShapeType(llvm::LLVMContext& context, compilerv1Parser::ShapeTypeContext* shapeType) {
    if (shapeType == nullptr || shapeType->typeRef().size() < 2) {
        return nullptr;
    }

    std::vector<llvm::Type*> elementTypes;
    elementTypes.reserve(shapeType->typeRef().size());
    for (auto* elementType : shapeType->typeRef()) {
        llvm::Type* loweredElement = lowerTypeRef(context, elementType);
        if (loweredElement == nullptr) {
            return nullptr;
        }
        elementTypes.push_back(loweredElement);
    }
    return llvm::StructType::get(context, elementTypes, false);
}

llvm::Type* lowerTupleType(llvm::LLVMContext& context, compilerv1Parser::GenericTypeContext* genericType) {
    if (!isTupleGenericType(genericType)) {
        return nullptr;
    }

    std::vector<llvm::Type*> elementTypes;
    elementTypes.reserve(genericType->typeRef().size());
    for (auto* elementType : genericType->typeRef()) {
        llvm::Type* loweredElement = lowerTypeRef(context, elementType);
        if (loweredElement == nullptr) {
            return nullptr;
        }
        elementTypes.push_back(loweredElement);
    }
    return llvm::StructType::get(context, elementTypes, false);
}

llvm::Value* defaultValueForType(llvm::Type* type) {
    if (type == nullptr || type->isVoidTy() || type->isFunctionTy()) {
        return nullptr;
    }
    if (type->isFirstClassType() || type->isAggregateType()) {
        return llvm::Constant::getNullValue(type);
    }
    return llvm::UndefValue::get(type);
}

llvm::Type* lowerTypeRef(llvm::LLVMContext& context, compilerv1Parser::TypeRefContext* typeRef) {
    if (typeRef == nullptr || typeRef->typeAtom() == nullptr) {
        return nullptr;
    }

    const std::string resolvedTypeText = resolveActiveTypeAliases(typeRef->getText());
    if (resolvedTypeText != typeRef->getText()) {
        return lowerSourceTypeText(context, resolvedTypeText);
    }

    llvm::Type* lowered = nullptr;
    if (typeRef->typeAtom()->shapeType() != nullptr) {
        lowered = lowerShapeType(context, typeRef->typeAtom()->shapeType());
    } else if (typeRef->typeAtom()->functionType() != nullptr) {
        lowered = llvm::PointerType::getUnqual(context);
    } else if (typeRef->typeAtom()->genericType() != nullptr && isNominalGenericType(typeRef->typeAtom()->genericType())) {
        lowered = lowerNominalType(context, typeRef->typeAtom()->genericType());
    } else if (typeRef->typeAtom()->genericType() != nullptr && isOptionGenericType(typeRef->typeAtom()->genericType())) {
        lowered = lowerOptionType(context, typeRef->typeAtom()->genericType());
    } else if (typeRef->typeAtom()->genericType() != nullptr && isTupleGenericType(typeRef->typeAtom()->genericType())) {
        lowered = lowerTupleType(context, typeRef->typeAtom()->genericType());
    } else {
        const std::string baseType = typeRef->typeAtom()->getText();
        lowered = lowerPrimitiveType(context, baseType);
        if (lowered == nullptr && baseType == "str") {
            lowered = llvm::PointerType::getUnqual(context);
        }
        if (lowered == nullptr && (typeRef->typeAtom()->genericType() != nullptr
            || typeRef->typeAtom()->qualifiedType() != nullptr
            || typeRef->typeAtom()->ID() != nullptr)) {
            lowered = llvm::PointerType::getUnqual(context);
        }
    }
    if (lowered == nullptr) {
        return nullptr;
    }

    for (auto* modifier : typeRef->typeModifier()) {
        if (modifier == nullptr) {
            return nullptr;
        }
        const std::string text = modifier->getText();
        if (text != "*" && text.rfind("&", 0) != 0) {
            return nullptr;
        }
        lowered = llvm::PointerType::getUnqual(context);
    }
    return lowered;
}

llvm::Type* lowerReturnType(llvm::LLVMContext& context, compilerv1Parser::ReturnTypeContext* returnType) {
    if (returnType == nullptr) {
        return nullptr;
    }
    if (returnType->getText() == "void") {
        return llvm::Type::getVoidTy(context);
    }
    if (returnType->typeRef() == nullptr) {
        return nullptr;
    }
    return lowerTypeRef(context, returnType->typeRef());
}

std::string inferExpressionTypeText(compilerv1Parser::ExpressionContext* expression, const LoweredValueMap& values);

std::vector<std::string> collectCanonicalFunctionParamTypes(compilerv1Parser::FunctionContext* functionCtx) {
    std::vector<std::string> paramTypes;
    if (functionCtx == nullptr || functionCtx->params() == nullptr) {
        return paramTypes;
    }
    for (auto* param : functionCtx->params()->param()) {
        if (param == nullptr || param->typeRef() == nullptr) {
            continue;
        }
        paramTypes.push_back(canonicalApolloTypeText(param->typeRef()->getText()));
    }
    return paramTypes;
}

std::string buildApolloOverloadName(std::string_view baseName, const std::vector<std::string>& paramTypes) {
    std::string loweredName(baseName);
    for (const auto& paramType : paramTypes) {
        loweredName += std::string(kFunctionOverloadSeparator) + mangleTypeName(canonicalApolloTypeText(paramType));
    }
    return loweredName;
}

struct TemplateFunctionRecord {
    compilerv1Parser::TemplateFunctionContext* function = nullptr;
    std::vector<std::string> typeParams;
};

using TemplateFunctionRegistry = std::unordered_map<std::string, TemplateFunctionRecord>;
const TemplateFunctionRegistry* gActiveTemplateFunctionRegistry = nullptr;

class TemplateFunctionRegistryScope final {
public:
    explicit TemplateFunctionRegistryScope(const TemplateFunctionRegistry* registry)
        : previous_(gActiveTemplateFunctionRegistry) {
        gActiveTemplateFunctionRegistry = registry;
    }

    ~TemplateFunctionRegistryScope() {
        gActiveTemplateFunctionRegistry = previous_;
    }

private:
    const TemplateFunctionRegistry* previous_;
};

bool isKnownTemplateConcreteType(std::string_view typeName) {
    const std::string trimmed = trimCopy(std::string(typeName));
    if (trimmed.empty()) {
        return true;
    }
    if (trimmed == "str" || trimmed == "auto" || kPrimitiveIrTypes.contains(trimmed)) {
        return true;
    }
    return false;
}

void appendTemplateTypeParam(std::vector<std::string>& typeParams, std::string name) {
    name = normalizeTypeAliasKey(name);
    if (name.empty()) {
        return;
    }
    if (std::find(typeParams.begin(), typeParams.end(), name) == typeParams.end()) {
        typeParams.push_back(std::move(name));
    }
}

void collectTemplateTypeParamsFromTypeRef(compilerv1Parser::TypeRefContext* typeRef,
    std::vector<std::string>& typeParams) {
    if (typeRef == nullptr || typeRef->typeAtom() == nullptr) {
        return;
    }

    if (auto* placeholder = typeRef->typeAtom()->typePlaceholder(); placeholder != nullptr && placeholder->ID() != nullptr) {
        appendTemplateTypeParam(typeParams, placeholder->ID()->getText());
        return;
    }

    if (auto* genericType = typeRef->typeAtom()->genericType(); genericType != nullptr) {
        for (auto* nestedType : genericType->typeRef()) {
            collectTemplateTypeParamsFromTypeRef(nestedType, typeParams);
        }
        return;
    }

    if (auto* shapeType = typeRef->typeAtom()->shapeType(); shapeType != nullptr) {
        for (auto* nestedType : shapeType->typeRef()) {
            collectTemplateTypeParamsFromTypeRef(nestedType, typeParams);
        }
        return;
    }

    if (auto* functionType = typeRef->typeAtom()->functionType(); functionType != nullptr) {
        if (functionType->returnType() != nullptr && functionType->returnType()->typeRef() != nullptr) {
            collectTemplateTypeParamsFromTypeRef(functionType->returnType()->typeRef(), typeParams);
        }
        if (functionType->functionTypeArgs() != nullptr) {
            for (auto* nestedType : functionType->functionTypeArgs()->typeRef()) {
                collectTemplateTypeParamsFromTypeRef(nestedType, typeParams);
            }
        }
        return;
    }

    if (typeRef->typeAtom()->ID() != nullptr) {
        const std::string candidate = typeRef->typeAtom()->ID()->getText();
        if (!isKnownTemplateConcreteType(candidate)) {
            appendTemplateTypeParam(typeParams, candidate);
        }
    }
}

std::vector<std::string> collectTemplateFunctionTypeParams(compilerv1Parser::TemplateFunctionContext* functionCtx) {
    std::vector<std::string> typeParams;
    if (functionCtx == nullptr) {
        return typeParams;
    }
    if (functionCtx->returnType() != nullptr && functionCtx->returnType()->typeRef() != nullptr) {
        collectTemplateTypeParamsFromTypeRef(functionCtx->returnType()->typeRef(), typeParams);
    }
    if (functionCtx->params() != nullptr) {
        for (auto* param : functionCtx->params()->param()) {
            if (param != nullptr && param->typeRef() != nullptr) {
                collectTemplateTypeParamsFromTypeRef(param->typeRef(), typeParams);
            }
        }
    }
    return typeParams;
}

std::vector<std::string> collectTemplateTypeParamsFromTypeRefUnique(compilerv1Parser::TypeRefContext* typeRef) {
    std::vector<std::string> typeParams;
    collectTemplateTypeParamsFromTypeRef(typeRef, typeParams);
    return typeParams;
}

TypeAliasMap buildTemplateTypeAliasMap(const TemplateFunctionRecord& record,
    const std::vector<std::string>& concreteTypes) {
    TypeAliasMap aliases;
    const std::size_t count = std::min(record.typeParams.size(), concreteTypes.size());
    for (std::size_t index = 0; index < count; ++index) {
        aliases[record.typeParams[index]] = resolveActiveTypeAliases(concreteTypes[index]);
    }
    return aliases;
}

std::vector<std::string> collectTemplateFunctionConcreteParamTypes(const TemplateFunctionRecord& record,
    const std::vector<std::string>& concreteTypes) {
    TypeAliasMap aliases = buildTemplateTypeAliasMap(record, concreteTypes);
    TypeAliasScope aliasScope(&aliases);

    std::vector<std::string> paramTypes;
    if (record.function == nullptr || record.function->params() == nullptr) {
        return paramTypes;
    }
    for (auto* param : record.function->params()->param()) {
        if (param == nullptr || param->typeRef() == nullptr) {
            continue;
        }
        paramTypes.push_back(resolveActiveTypeAliases(param->typeRef()->getText()));
    }
    return paramTypes;
}

std::vector<std::string> inferTemplateFunctionTypeArgs(const TemplateFunctionRecord& record,
    compilerv1Parser::FunctionCallContext* functionCall,
    const LoweredValueMap& values) {
    std::vector<std::string> inferred(record.typeParams.size());
    if (record.function == nullptr || functionCall == nullptr) {
        return {};
    }

    if (auto* explicitTypeArgs = functionCall->explicitTypeArgs(); explicitTypeArgs != nullptr) {
        if (explicitTypeArgs->typeRef().size() != record.typeParams.size()) {
            setSemanticError("template argument count mismatch for `" + functionCall->ID()->getText() + "`");
            return {};
        }
        for (std::size_t index = 0; index < explicitTypeArgs->typeRef().size(); ++index) {
            inferred[index] = resolveActiveTypeAliases(explicitTypeArgs->typeRef(index)->getText());
        }
        return inferred;
    }

    const auto callArgs = functionCall->args() != nullptr
        ? functionCall->args()->expression()
        : std::vector<compilerv1Parser::ExpressionContext*>{};
    const auto params = record.function->params() != nullptr
        ? record.function->params()->param()
        : std::vector<compilerv1Parser::ParamContext*>{};
    const std::size_t pairCount = std::min(callArgs.size(), params.size());
    for (std::size_t index = 0; index < pairCount; ++index) {
        auto* param = params[index];
        if (param == nullptr || param->typeRef() == nullptr || callArgs[index] == nullptr) {
            continue;
        }

        std::vector<std::string> paramPlaceholders = collectTemplateTypeParamsFromTypeRefUnique(param->typeRef());
        if (paramPlaceholders.size() != 1) {
            continue;
        }

        const std::string argumentType = inferExpressionTypeText(callArgs[index], values);
        if (argumentType.empty()) {
            continue;
        }

        const auto typeParamIt = std::find(record.typeParams.begin(), record.typeParams.end(), paramPlaceholders[0]);
        if (typeParamIt == record.typeParams.end()) {
            continue;
        }
        const std::size_t slot = static_cast<std::size_t>(std::distance(record.typeParams.begin(), typeParamIt));
        if (!inferred[slot].empty() && canonicalApolloTypeText(inferred[slot]) != canonicalApolloTypeText(argumentType)) {
            setSemanticError("conflicting inferred types for template parameter `" + paramPlaceholders[0] + "`");
            return {};
        }
        inferred[slot] = argumentType;
    }

    for (std::size_t index = 0; index < inferred.size(); ++index) {
        if (inferred[index].empty()) {
            setSemanticError("could not infer template parameter `" + record.typeParams[index] + "` for `" + functionCall->ID()->getText() + "`");
            return {};
        }
    }
    return inferred;
}

bool functionMatchesDefinitionSignature(llvm::Module& module, llvm::Function* function, compilerv1Parser::FunctionContext* functionCtx) {
    if (function == nullptr || functionCtx == nullptr) {
        return false;
    }
    llvm::Type* expectedReturnType = lowerReturnType(module.getContext(), functionCtx->returnType());
    if (expectedReturnType == nullptr || function->getReturnType() != expectedReturnType) {
        return false;
    }
    const auto params = functionCtx->params() != nullptr ? functionCtx->params()->param() : std::vector<compilerv1Parser::ParamContext*>{};
    if (function->arg_size() != params.size()) {
        return false;
    }
    std::size_t index = 0;
    for (auto* param : params) {
        if (param == nullptr || param->typeRef() == nullptr) {
            return false;
        }
        llvm::Type* expectedParamType = lowerTypeRef(module.getContext(), param->typeRef());
        if (expectedParamType == nullptr || function->getArg(index)->getType() != expectedParamType) {
            return false;
        }
        ++index;
    }
    return true;
}

std::string loweredApolloFunctionName(llvm::Module& module, compilerv1Parser::FunctionContext* functionCtx) {
    if (functionCtx == nullptr || functionCtx->ID() == nullptr) {
        return {};
    }
    const std::string baseName = functionCtx->ID()->getText();
    if (baseName == "main") {
        return baseName;
    }
    llvm::Function* rawFunction = module.getFunction(baseName);
    if (rawFunction == nullptr) {
        return baseName;
    }
    if (functionMatchesDefinitionSignature(module, rawFunction, functionCtx)) {
        return baseName;
    }
    return buildApolloOverloadName(baseName, collectCanonicalFunctionParamTypes(functionCtx));
}

bool hasApolloFunctionFamily(llvm::Module& module, std::string_view baseName) {
    if (module.getFunction(std::string(baseName)) != nullptr) {
        return true;
    }
    const std::string prefix = std::string(baseName) + std::string(kFunctionOverloadSeparator);
    for (llvm::Function& function : module.functions()) {
        if (function.getName().starts_with(prefix)) {
            return true;
        }
    }
    return false;
}

llvm::Function* resolveApolloFunctionCallee(llvm::Module& module,
    compilerv1Parser::FunctionCallContext* functionCall,
    const LoweredValueMap& values) {
    if (functionCall == nullptr || functionCall->ID() == nullptr) {
        return nullptr;
    }

    const std::string baseName = functionCall->ID()->getText();
    std::vector<std::string> inferredArgTypes;
    if (functionCall->args() != nullptr) {
        for (auto* expression : functionCall->args()->expression()) {
            inferredArgTypes.push_back(inferExpressionTypeText(expression, values));
        }
    }

    const bool allArgsInferred = std::all_of(inferredArgTypes.begin(), inferredArgTypes.end(), [](const std::string& typeText) {
        return !typeText.empty();
    });
    if (allArgsInferred) {
        if (llvm::Function* overloaded = module.getFunction(buildApolloOverloadName(baseName, inferredArgTypes))) {
            return overloaded;
        }
    }

    if (llvm::Function* specialized = instantiateTemplateFunctionForCall(module, functionCall, values)) {
        return specialized;
    }

    return module.getFunction(baseName);
}

llvm::Function* lowerFunctionPrototype(llvm::Module& module,
    compilerv1Parser::FunctionContext* functionCtx,
    std::vector<std::string>& paramNames,
    std::string& unsupportedReason) {
    paramNames.clear();
    unsupportedReason.clear();
    if (functionCtx == nullptr) {
        unsupportedReason = "missing-function-context";
        return nullptr;
    }

    llvm::Type* returnType = lowerReturnType(module.getContext(), functionCtx->returnType());
    if (returnType == nullptr) {
        returnType = llvm::PointerType::getUnqual(module.getContext());
    }

    std::vector<llvm::Type*> paramTypes;
    if (functionCtx->params() != nullptr) {
        for (auto* param : functionCtx->params()->param()) {
            if (param == nullptr || param->ID() == nullptr) {
                unsupportedReason = "function-parameter-metadata-missing";
                return nullptr;
            }
            llvm::Type* paramType = param->typeRef() != nullptr
                ? lowerTypeRef(module.getContext(), param->typeRef())
                : nullptr;
            if (paramType == nullptr) {
                paramType = llvm::PointerType::getUnqual(module.getContext());
            }
            paramTypes.push_back(paramType);
            paramNames.push_back(param->ID()->getText());
        }
    }

    llvm::FunctionType* functionType = llvm::FunctionType::get(returnType, paramTypes, false);
    llvm::Function* function = llvm::Function::Create(functionType,
        llvm::GlobalValue::ExternalLinkage,
        loweredApolloFunctionName(module, functionCtx),
        module);
    size_t index = 0;
    for (auto& arg : function->args()) {
        arg.setName(paramNames[index++]);
    }
    return function;
}

llvm::Function* lowerMacroPrototype(llvm::Module& module,
    compilerv1Parser::MacroContext* macroCtx,
    std::vector<std::string>& paramNames,
    std::string& unsupportedReason) {
    paramNames.clear();
    unsupportedReason.clear();
    if (macroCtx == nullptr || macroCtx->ID() == nullptr) {
        unsupportedReason = "missing-macro-context";
        return nullptr;
    }

    std::vector<llvm::Type*> paramTypes;
    if (macroCtx->params() != nullptr) {
        for (auto* param : macroCtx->params()->param()) {
            if (param == nullptr || param->ID() == nullptr) {
                unsupportedReason = "macro-parameter-metadata-missing";
                return nullptr;
            }
            llvm::Type* paramType = param->typeRef() != nullptr
                ? lowerTypeRef(module.getContext(), param->typeRef())
                : nullptr;
            if (paramType == nullptr) {
                paramType = llvm::PointerType::getUnqual(module.getContext());
            }
            paramTypes.push_back(paramType);
            paramNames.push_back(param->ID()->getText());
        }
    }

    llvm::FunctionType* functionType = llvm::FunctionType::get(llvm::Type::getVoidTy(module.getContext()), paramTypes, false);
    llvm::Function* function = llvm::Function::Create(functionType,
        llvm::GlobalValue::ExternalLinkage,
        macroCtx->ID()->getText(),
        module);
    size_t index = 0;
    for (auto& arg : function->args()) {
        arg.setName(paramNames[index++]);
    }
    return function;
}

const std::vector<ApolloInlineForeignBlock>* gActiveInlineForeignBlocks = nullptr;
const ApolloRuntimeFeatureManifest* gActiveRuntimeFeatures = nullptr;
const std::filesystem::path* gActiveInlineForeignSourcePath = nullptr;
const std::filesystem::path* gActiveInlineForeignOutputPath = nullptr;
const ApolloIrLayoutPlan* gActiveLayoutPlan = nullptr;
std::unordered_map<std::string, ApolloInlineForeignSymbol> gImportedClikeSymbols;

class InlineForeignBlockScope final {
public:
    explicit InlineForeignBlockScope(const std::vector<ApolloInlineForeignBlock>* blocks)
        : previous_(gActiveInlineForeignBlocks) {
        gActiveInlineForeignBlocks = blocks;
    }

    ~InlineForeignBlockScope() {
        gActiveInlineForeignBlocks = previous_;
    }

private:
    const std::vector<ApolloInlineForeignBlock>* previous_;
};

const ApolloInlineForeignBlock* findInlineForeignBlockAt(compilerv1Parser::InlineForeignBlockContext* ctx) {
    if (gActiveInlineForeignBlocks == nullptr || ctx == nullptr || ctx->getStart() == nullptr) {
        return nullptr;
    }

    const int line = static_cast<int>(ctx->getStart()->getLine());
    const int column = static_cast<int>(ctx->getStart()->getCharPositionInLine()) + 1;
    for (const auto& block : *gActiveInlineForeignBlocks) {
        if (block.line == line && block.column == column) {
            return &block;
        }
    }
    return nullptr;
}

class RuntimeFeatureScope final {
public:
    explicit RuntimeFeatureScope(const ApolloRuntimeFeatureManifest* runtimeFeatures)
        : previous_(gActiveRuntimeFeatures) {
        gActiveRuntimeFeatures = runtimeFeatures;
    }

    ~RuntimeFeatureScope() {
        gActiveRuntimeFeatures = previous_;
    }

private:
    const ApolloRuntimeFeatureManifest* previous_;
};

class InlineForeignPathScope final {
public:
    InlineForeignPathScope(const std::filesystem::path* sourcePath, const std::filesystem::path* outputPath)
        : previousSource_(gActiveInlineForeignSourcePath), previousOutput_(gActiveInlineForeignOutputPath) {
        gActiveInlineForeignSourcePath = sourcePath;
        gActiveInlineForeignOutputPath = outputPath;
    }

    ~InlineForeignPathScope() {
        gActiveInlineForeignSourcePath = previousSource_;
        gActiveInlineForeignOutputPath = previousOutput_;
    }

private:
    const std::filesystem::path* previousSource_;
    const std::filesystem::path* previousOutput_;
};

class LayoutPlanScope final {
public:
    explicit LayoutPlanScope(const ApolloIrLayoutPlan* layoutPlan)
        : previous_(gActiveLayoutPlan) {
        gActiveLayoutPlan = layoutPlan;
    }

    ~LayoutPlanScope() {
        gActiveLayoutPlan = previous_;
    }

private:
    const ApolloIrLayoutPlan* previous_;
};

llvm::Type* lowerInlineForeignApolloType(llvm::LLVMContext& context, std::string_view apolloType) {
    if (apolloType == "str") {
        return llvm::PointerType::getUnqual(context);
    }
    return lowerPrimitiveType(context, apolloType);
}

void addInlineForeignGlobalBindings(llvm::Module& module,
    llvm::IRBuilder<>& builder,
    LoweredValueMap& values) {
    if (gActiveInlineForeignBlocks == nullptr) {
        return;
    }

    for (const auto& block : *gActiveInlineForeignBlocks) {
        for (const auto& global : block.globals) {
            if (values.contains(global.name)) {
                continue;
            }

            llvm::Type* storageType = lowerInlineForeignApolloType(module.getContext(), global.apolloType);
            if (storageType == nullptr) {
                continue;
            }

            llvm::Function* getter = module.getFunction(global.getterName);
            if (getter == nullptr) {
                continue;
            }

            llvm::Value* getterResult = builder.CreateCall(getter);
            if (global.apolloType == "str") {
                values.emplace(global.name, LoweredValue{getterResult, nullptr, storageType, global.apolloType});
            } else {
                values.emplace(global.name, LoweredValue{getterResult, getterResult, storageType, global.apolloType});
            }
        }
    }
}

struct AggregateFieldRecord {
    std::string name;
    std::string typeText;
};

struct AggregateMethodRecord {
    compilerv1Parser::MethodContext* method = nullptr;
    std::string sourceName;
    std::string loweredName;
    bool isStatic = false;
};

enum class AggregateKind {
    Aggregate,
    Enum,
};

enum class EnumVariantKind {
    Unit,
    Tuple,
    Struct,
};

struct EnumVariantRecord {
    std::string name;
    EnumVariantKind kind = EnumVariantKind::Unit;
    std::string payloadTypeText;
    std::string storageFieldName;
    int tagValue = 0;
};

struct AggregateRecord {
    std::string name;
    std::string baseName;
    std::vector<AggregateFieldRecord> ownFields;
    std::vector<AggregateMethodRecord> methods;
    AggregateKind kind = AggregateKind::Aggregate;
    std::vector<EnumVariantRecord> enumVariants;
};

struct AggregateRegistry {
    std::unordered_map<std::string, AggregateRecord> records;

    [[nodiscard]] const AggregateRecord* find(std::string_view name) const {
        const auto it = records.find(std::string(name));
        return it == records.end() ? nullptr : &it->second;
    }
};

const AggregateRegistry* gActiveAggregateRegistry = nullptr;
std::unordered_set<std::string> gGuiWindowGlobals;
std::unordered_map<std::string, std::string> gGlobalTypeTexts;

class AggregateRegistryScope final {
public:
    explicit AggregateRegistryScope(const AggregateRegistry* registry)
        : previous_(gActiveAggregateRegistry) {
        gActiveAggregateRegistry = registry;
    }

    ~AggregateRegistryScope() {
        gActiveAggregateRegistry = previous_;
    }

private:
    const AggregateRegistry* previous_;
};

std::string trimAggregateTypeName(std::string text) {
    text = trimCopy(std::move(text));
    while (!text.empty() && (text.back() == '*' || text.back() == '&')) {
        text.pop_back();
    }
    const auto generic = text.find('<');
    if (generic != std::string::npos) {
        text.resize(generic);
    }
    return trimCopy(std::move(text));
}

std::string qualifiedTypeText(compilerv1Parser::QualifiedTypeContext* qualifiedType) {
    if (qualifiedType == nullptr || qualifiedType->ID() == nullptr || qualifiedType->enumVariantName() == nullptr) {
        return {};
    }
    return qualifiedType->ID()->getText() + std::string("::") + qualifiedType->enumVariantName()->getText();
}

std::string enumVariantStorageFieldName(std::string_view variantName) {
    return "__variant_" + std::string(variantName);
}

const EnumVariantRecord* findEnumVariant(const AggregateRecord& aggregate, std::string_view variantName) {
    if (aggregate.kind != AggregateKind::Enum) {
        return nullptr;
    }
    const auto it = std::find_if(aggregate.enumVariants.begin(), aggregate.enumVariants.end(), [&](const EnumVariantRecord& variant) {
        return variant.name == variantName;
    });
    return it == aggregate.enumVariants.end() ? nullptr : &*it;
}

const EnumVariantRecord* inferSinglePayloadEnumVariant(const AggregateRecord& aggregate) {
    if (aggregate.kind != AggregateKind::Enum) {
        return nullptr;
    }
    const EnumVariantRecord* match = nullptr;
    for (const auto& variant : aggregate.enumVariants) {
        if (variant.kind == EnumVariantKind::Unit) {
            continue;
        }
        if (match != nullptr) {
            return nullptr;
        }
        match = &variant;
    }
    return match;
}

const EnumVariantRecord* findEnumVariantForExpectedType(llvm::LLVMContext& context,
    const AggregateRecord& aggregate,
    llvm::Type* expectedType) {
    if (aggregate.kind != AggregateKind::Enum || expectedType == nullptr) {
        return nullptr;
    }
    const EnumVariantRecord* match = nullptr;
    for (const auto& variant : aggregate.enumVariants) {
        if (variant.kind == EnumVariantKind::Unit || variant.payloadTypeText.empty()) {
            continue;
        }
        llvm::Type* payloadType = lowerSourceTypeText(context, variant.payloadTypeText);
        if (payloadType == nullptr || payloadType != expectedType) {
            continue;
        }
        if (match != nullptr) {
            return nullptr;
        }
        match = &variant;
    }
    return match;
}

const EnumVariantRecord* findEnumVariantForExpectedTypeText(const AggregateRecord& aggregate,
    std::string_view expectedTypeText) {
    if (aggregate.kind != AggregateKind::Enum || expectedTypeText.empty()) {
        return nullptr;
    }
    const std::string canonicalExpected = canonicalApolloTypeText(std::string(expectedTypeText));
    const EnumVariantRecord* match = nullptr;
    for (const auto& variant : aggregate.enumVariants) {
        if (variant.kind == EnumVariantKind::Unit || variant.payloadTypeText.empty()) {
            continue;
        }
        if (canonicalApolloTypeText(variant.payloadTypeText) != canonicalExpected) {
            continue;
        }
        if (match != nullptr) {
            return nullptr;
        }
        match = &variant;
    }
    return match;
}

std::optional<std::string> extractGenericTypeArgument(std::string_view typeText, std::string_view genericName) {
    std::string trimmed = trimCopy(std::string(typeText));
    const std::string prefix = std::string(genericName) + "<";
    if (!trimmed.starts_with(prefix) || trimmed.back() != '>') {
        return std::nullopt;
    }

    std::string inner = trimmed.substr(prefix.size(), trimmed.size() - prefix.size() - 1);
    int depth = 0;
    for (const char ch : inner) {
        if (ch == '<') {
            ++depth;
        } else if (ch == '>') {
            --depth;
            if (depth < 0) {
                return std::nullopt;
            }
        } else if (ch == ',' && depth == 0) {
            return std::nullopt;
        }
    }
    if (depth != 0) {
        return std::nullopt;
    }

    inner = trimCopy(std::move(inner));
    if (inner.empty()) {
        return std::nullopt;
    }
    return inner;
}

std::string resolveAggregateLayoutName(std::string_view aggregateName) {
    std::string resolved = trimAggregateTypeName(std::string(aggregateName));
    if (gActiveAggregateRegistry == nullptr) {
        return resolved;
    }

    for (;;) {
        const AggregateRecord* record = gActiveAggregateRegistry->find(resolved);
        if (record == nullptr || record->baseName.empty() || !record->ownFields.empty() || !record->methods.empty()) {
            return resolved;
        }
        resolved = record->baseName;
    }
}

const ApolloIrAggregateLayout* findSoaVectorLayout(std::string_view typeText) {
    if (gActiveLayoutPlan == nullptr) {
        return nullptr;
    }

    const auto elementType = extractGenericTypeArgument(typeText, "vector");
    if (!elementType.has_value()) {
        return nullptr;
    }

    const ApolloIrAggregateLayout* layout = gActiveLayoutPlan->findAggregateLayout(resolveAggregateLayoutName(*elementType));
    if (layout == nullptr || layout->storageKind != ApolloIrStorageKind::FullStructOfArrays) {
        return nullptr;
    }
    return layout;
}

llvm::Type* lowerSoaVectorElementType(llvm::LLVMContext& context, std::string_view typeText) {
    const auto elementType = extractGenericTypeArgument(typeText, "vector");
    if (!elementType.has_value()) {
        return nullptr;
    }
    return lowerSourceTypeText(context, *elementType);
}

std::string soaVectorSymbolStem(std::string_view typeText) {
    const ApolloIrAggregateLayout* layout = findSoaVectorLayout(typeText);
    if (layout == nullptr) {
        return {};
    }
    return "apollo_soa_vector_" + mangleTypeName(layout->name);
}

llvm::Value* lowerI32IndexValue(llvm::IRBuilder<>& builder,
    compilerv1Parser::ExpressionContext* expression,
    const LoweredValueMap& values) {
    llvm::Value* indexValue = lowerExpressionValue(builder, expression, values, true);
    if (indexValue == nullptr) {
        return nullptr;
    }
    if (!indexValue->getType()->isIntegerTy(32)) {
        indexValue = castToCommonInteger(builder, indexValue, llvm::Type::getInt32Ty(builder.getContext()));
    }
    if (indexValue == nullptr || !indexValue->getType()->isIntegerTy(32)) {
        return nullptr;
    }
    return indexValue;
}

std::optional<unsigned> extractConstantI32Index(compilerv1Parser::ExpressionContext* expression) {
    if (expression == nullptr) {
        return std::nullopt;
    }
    const std::string text = trimCopy(stripOuterParens(expression->getText()));
    if (!isDecimalIntegerLiteral(text)) {
        return std::nullopt;
    }
    return static_cast<unsigned>(std::stoul(text));
}

std::string aggregateMethodSourceName(compilerv1Parser::MethodContext* method) {
    if (method == nullptr) {
        return {};
    }
    if (method->ID() != nullptr) {
        return method->ID()->getText();
    }
    const std::string text = method->getText();
    if (text.find("__construct(") != std::string::npos) {
        return "__construct";
    }
    if (text.find("__destruct(") != std::string::npos) {
        return "__destruct";
    }
    return {};
}

std::string loweredAggregateMethodName(std::string_view aggregateName, std::string_view methodName) {
    return "apollo$" + std::string(aggregateName) + "$" + std::string(methodName);
}

AggregateRecord makeAggregateRecord(std::string name,
    compilerv1Parser::InheritanceClauseContext* inheritanceClause,
    const std::vector<compilerv1Parser::FieldContext*>& fields,
    const std::vector<compilerv1Parser::MethodContext*>& methods) {
    AggregateRecord record;
    record.name = std::move(name);
    if (inheritanceClause != nullptr && !inheritanceClause->inheritedType().empty()
        && inheritanceClause->inheritedType(0) != nullptr && inheritanceClause->inheritedType(0)->typeRef() != nullptr) {
        record.baseName = trimAggregateTypeName(inheritanceClause->inheritedType(0)->typeRef()->getText());
    }
    for (auto* field : fields) {
        if (field == nullptr || field->ID() == nullptr || field->typeRef() == nullptr) {
            continue;
        }
        record.ownFields.push_back({field->ID()->getText(), field->typeRef()->getText()});
    }
    for (auto* method : methods) {
        const std::string sourceName = aggregateMethodSourceName(method);
        if (sourceName.empty()) {
            continue;
        }
        record.methods.push_back({method, sourceName, loweredAggregateMethodName(record.name, sourceName), method != nullptr && method->STATIC() != nullptr});
    }
    return record;
}

AggregateRegistry buildAggregateRegistry(compilerv1Parser::ProgramContext* tree) {
    AggregateRegistry registry;
    if (tree == nullptr) {
        return registry;
    }

    for (auto* child : tree->children) {
        if (auto* classCtx = dynamic_cast<compilerv1Parser::ClassContext*>(child)) {
            std::vector<compilerv1Parser::FieldContext*> fields;
            std::vector<compilerv1Parser::MethodContext*> methods;
            if (classCtx->classBody() != nullptr) {
                for (auto* member : classCtx->classBody()->classMember()) {
                    if (member == nullptr) {
                        continue;
                    }
                    if (member->field() != nullptr) {
                        fields.push_back(member->field());
                    }
                    if (member->method() != nullptr) {
                        methods.push_back(member->method());
                    }
                }
            }
            registry.records.emplace(classCtx->ID()->getText(), makeAggregateRecord(classCtx->ID()->getText(), classCtx->inheritanceClause(), fields, methods));
            continue;
        }

        if (auto* structCtx = dynamic_cast<compilerv1Parser::StructContext*>(child)) {
            std::vector<compilerv1Parser::FieldContext*> fields;
            std::vector<compilerv1Parser::MethodContext*> methods;
            if (structCtx->structBody() != nullptr) {
                for (auto* member : structCtx->structBody()->structMember()) {
                    if (member == nullptr) {
                        continue;
                    }
                    if (member->field() != nullptr) {
                        fields.push_back(member->field());
                    }
                    if (member->method() != nullptr) {
                        methods.push_back(member->method());
                    }
                }
            }
            registry.records.emplace(structCtx->ID()->getText(), makeAggregateRecord(structCtx->ID()->getText(), structCtx->inheritanceClause(), fields, methods));
            continue;
        }

        if (auto* typedefStructCtx = dynamic_cast<compilerv1Parser::TypedefStructContext*>(child)) {
            auto* structCtx = typedefStructCtx->struct_();
            if (structCtx == nullptr || structCtx->ID() == nullptr) {
                continue;
            }

            std::vector<compilerv1Parser::FieldContext*> fields;
            std::vector<compilerv1Parser::MethodContext*> methods;
            if (structCtx->structBody() != nullptr) {
                for (auto* member : structCtx->structBody()->structMember()) {
                    if (member == nullptr) {
                        continue;
                    }
                    if (member->field() != nullptr) {
                        fields.push_back(member->field());
                    }
                    if (member->method() != nullptr) {
                        methods.push_back(member->method());
                    }
                }
            }

            const std::string baseName = structCtx->ID()->getText();
            registry.records.emplace(baseName, makeAggregateRecord(baseName, structCtx->inheritanceClause(), fields, methods));
            if (typedefStructCtx->ID() != nullptr) {
                AggregateRecord aliasRecord;
                aliasRecord.name = typedefStructCtx->ID()->getText();
                aliasRecord.baseName = baseName;
                registry.records.emplace(aliasRecord.name, std::move(aliasRecord));
            }
            continue;
        }

        if (auto* templateCtx = dynamic_cast<compilerv1Parser::TemplateDeclContext*>(child)) {
            std::vector<compilerv1Parser::FieldContext*> fields;
            std::vector<compilerv1Parser::MethodContext*> methods;
            if (templateCtx->classBody() != nullptr) {
                for (auto* member : templateCtx->classBody()->classMember()) {
                    if (member == nullptr) {
                        continue;
                    }
                    if (member->field() != nullptr) {
                        fields.push_back(member->field());
                    }
                    if (member->method() != nullptr) {
                        methods.push_back(member->method());
                    }
                }
            }
            registry.records.emplace(templateCtx->ID()->getText(), makeAggregateRecord(templateCtx->ID()->getText(), nullptr, fields, methods));
            continue;
        }

        if (auto* opstructCtx = dynamic_cast<compilerv1Parser::OpstructContext*>(child)) {
            std::vector<compilerv1Parser::FieldContext*> fields;
            if (opstructCtx->opstructBody() != nullptr) {
                for (auto* field : opstructCtx->opstructBody()->field()) {
                    if (field != nullptr) {
                        fields.push_back(field);
                    }
                }
            }
            registry.records.emplace(opstructCtx->ID()->getText(), makeAggregateRecord(opstructCtx->ID()->getText(), nullptr, fields, {}));
            continue;
        }

        if (auto* enumCtx = dynamic_cast<compilerv1Parser::EnumDeclContext*>(child)) {
            if (enumCtx->ID() == nullptr) {
                continue;
            }

            AggregateRecord enumRecord;
            enumRecord.name = enumCtx->ID()->getText();
            enumRecord.kind = AggregateKind::Enum;
            enumRecord.ownFields.push_back({"__tag", "i32"});

            int tagValue = 0;
            for (auto* variant : enumCtx->enumVariant()) {
                if (variant == nullptr || variant->enumVariantName() == nullptr) {
                    continue;
                }

                EnumVariantRecord variantRecord;
                variantRecord.name = variant->enumVariantName()->getText();
                variantRecord.tagValue = tagValue++;

                if (variant->typeRef() != nullptr) {
                    variantRecord.kind = EnumVariantKind::Tuple;
                    variantRecord.payloadTypeText = variant->typeRef()->getText();
                    variantRecord.storageFieldName = enumVariantStorageFieldName(variantRecord.name);
                    enumRecord.ownFields.push_back({variantRecord.storageFieldName, variantRecord.payloadTypeText});
                } else if (variant->structBody() != nullptr) {
                    variantRecord.kind = EnumVariantKind::Struct;
                    variantRecord.payloadTypeText = enumRecord.name + "::" + variantRecord.name;
                    variantRecord.storageFieldName = enumVariantStorageFieldName(variantRecord.name);
                    enumRecord.ownFields.push_back({variantRecord.storageFieldName, variantRecord.payloadTypeText});

                    std::vector<compilerv1Parser::FieldContext*> fields;
                    std::vector<compilerv1Parser::MethodContext*> methods;
                    for (auto* member : variant->structBody()->structMember()) {
                        if (member == nullptr) {
                            continue;
                        }
                        if (member->field() != nullptr) {
                            fields.push_back(member->field());
                        }
                        if (member->method() != nullptr) {
                            methods.push_back(member->method());
                        }
                    }
                    registry.records.emplace(variantRecord.payloadTypeText,
                        makeAggregateRecord(variantRecord.payloadTypeText, nullptr, fields, methods));
                } else {
                    variantRecord.kind = EnumVariantKind::Unit;
                }

                enumRecord.enumVariants.push_back(std::move(variantRecord));
            }

            registry.records.emplace(enumRecord.name, std::move(enumRecord));
            continue;
        }

        if (auto* typedefOpstructCtx = dynamic_cast<compilerv1Parser::TypedefOpstructContext*>(child)) {
            if (typedefOpstructCtx->ID().size() > 1) {
                AggregateRecord aliasRecord;
                aliasRecord.name = typedefOpstructCtx->ID(1)->getText();
                aliasRecord.baseName = typedefOpstructCtx->ID(0)->getText();
                registry.records.emplace(aliasRecord.name, std::move(aliasRecord));
            } else if (typedefOpstructCtx->ID().size() == 1) {
                AggregateRecord dslRecord;
                dslRecord.name = typedefOpstructCtx->ID(0)->getText();
                registry.records.emplace(dslRecord.name, std::move(dslRecord));
            }
        }
    }

    return registry;
}

bool collectAggregateFields(const AggregateRegistry& registry,
    std::string_view aggregateName,
    std::vector<AggregateFieldRecord>& fields) {
    const AggregateRecord* record = registry.find(aggregateName);
    if (record == nullptr) {
        return false;
    }
    if (!record->baseName.empty() && registry.find(record->baseName) != nullptr
        && !collectAggregateFields(registry, record->baseName, fields)) {
        return false;
    }
    fields.insert(fields.end(), record->ownFields.begin(), record->ownFields.end());
    return true;
}

const AggregateMethodRecord* findAggregateMethod(const AggregateRegistry& registry,
    std::string_view aggregateName,
    std::string_view methodName) {
    const AggregateRecord* record = registry.find(aggregateName);
    if (record == nullptr) {
        return nullptr;
    }
    for (const auto& method : record->methods) {
        if (method.sourceName == methodName) {
            return &method;
        }
    }
    if (!record->baseName.empty() && registry.find(record->baseName) != nullptr) {
        return findAggregateMethod(registry, record->baseName, methodName);
    }
    return nullptr;
}

llvm::Type* lowerSourceTypeText(llvm::LLVMContext& context, std::string_view typeText) {
    const std::string resolvedTypeText = resolveActiveTypeAliases(typeText);
    const std::string baseType = trimAggregateTypeName(resolvedTypeText);
    llvm::Type* lowered = lowerPrimitiveType(context, baseType);
    if (lowered != nullptr) {
        return lowered;
    }
    if (baseType == "str") {
        return llvm::PointerType::getUnqual(context);
    }

    antlr4::ANTLRInputStream input(resolvedTypeText);
    compilerv1Lexer lexer(&input);
    antlr4::CommonTokenStream tokens(&lexer);
    compilerv1Parser parser(&tokens);
    lexer.removeErrorListeners();
    parser.removeErrorListeners();
    auto* parsedType = parser.typeRef();
    if (parser.getNumberOfSyntaxErrors() == 0 && tokens.LA(1) == antlr4::Token::EOF) {
        llvm::Type* parsedLowered = lowerTypeRef(context, parsedType);
        if (parsedLowered != nullptr) {
            return parsedLowered;
        }
    }

    return llvm::PointerType::getUnqual(context);
}

llvm::Function* declareImportedClikeFunction(llvm::Module& module, const ApolloInlineForeignSymbol& symbol) {
    if (symbol.kind != ApolloInlineForeignSymbolKind::Function || symbol.name.empty()) {
        return nullptr;
    }
    if (llvm::Function* existing = module.getFunction(symbol.name)) {
        return existing;
    }

    llvm::Type* returnType = lowerSourceTypeText(module.getContext(), symbol.apolloType);
    if (returnType == nullptr) {
        return nullptr;
    }

    std::vector<llvm::Type*> paramTypes;
    paramTypes.reserve(symbol.parameters.size());
    for (const auto& parameter : symbol.parameters) {
        llvm::Type* paramType = lowerSourceTypeText(module.getContext(), parameter.apolloType);
        if (paramType == nullptr) {
            return nullptr;
        }
        paramTypes.push_back(paramType);
    }

    llvm::FunctionType* functionType = llvm::FunctionType::get(returnType, paramTypes, symbol.variadic);
    return llvm::cast<llvm::Function>(module.getOrInsertFunction(symbol.name, functionType).getCallee());
}

void declareImportedDependencyPrototypes(llvm::Module& module,
    const std::filesystem::path& sourcePath,
    compilerv1Parser::ProgramContext* tree) {
    gImportedClikeSymbols.clear();
    for (auto symbol : collectImportedClikeSymbols(tree)) {
        if (symbol.kind != ApolloInlineForeignSymbolKind::Function || symbol.name.empty()) {
            continue;
        }
        gImportedClikeSymbols[symbol.name] = symbol;
        declareImportedClikeFunction(module, symbol);
    }

    if (tree == nullptr) {
        return;
    }

    const std::filesystem::path importRoot = sourcePath.has_parent_path()
        ? std::filesystem::absolute(sourcePath.parent_path()).lexically_normal()
        : std::filesystem::current_path();
    for (const auto& dependency : collectDependencyMetadata(tree)) {
        const auto dependencySource = resolveApolloDependencySource(importRoot, dependency);
        if (!dependencySource.has_value()) {
            continue;
        }

        const std::string displayPath = dependencySource->filename().generic_string();
        const std::string program = preprocessApolloSourceFromFile(*dependencySource);
        ApolloCompilerRuntimeCycle runtimeCycle = ApolloCompilerRuntimeCycle::create(displayPath, program);
        runtimeCycle.runPreCodegenPhases();
        auto* dependencyTree = runtimeCycle.tree();
        if (dependencyTree == nullptr) {
            continue;
        }

        for (auto* functionCtx : dependencyTree->function()) {
            if (functionCtx == nullptr) {
                continue;
            }

            const std::string loweredName = loweredApolloFunctionName(module, functionCtx);
            if (module.getFunction(loweredName) != nullptr) {
                continue;
            }

            std::vector<std::string> paramNames;
            std::string unsupportedReason;
            lowerFunctionPrototype(module, functionCtx, paramNames, unsupportedReason);
        }
    }
}

llvm::StructType* getAggregateStructType(llvm::Module& module,
    const AggregateRegistry& registry,
    std::string_view aggregateName) {
    const std::string typeName = "apollo.aggregate." + std::string(aggregateName);
    llvm::StructType* structType = llvm::StructType::getTypeByName(module.getContext(), typeName);
    if (structType == nullptr) {
        structType = llvm::StructType::create(module.getContext(), typeName);
    }
    if (!structType->isOpaque()) {
        return structType;
    }

    std::vector<AggregateFieldRecord> fields;
    if (!collectAggregateFields(registry, aggregateName, fields)) {
        return nullptr;
    }

    std::vector<llvm::Type*> fieldTypes;
    fieldTypes.reserve(fields.size());
    for (const auto& field : fields) {
        fieldTypes.push_back(lowerSourceTypeText(module.getContext(), field.typeText));
    }
    if (fieldTypes.empty()) {
        fieldTypes.push_back(llvm::Type::getInt8Ty(module.getContext()));
    }
    structType->setBody(fieldTypes, false);
    return structType;
}

llvm::AllocaInst* createEntryAlloca(llvm::Function* function, llvm::Type* type, llvm::StringRef name);
llvm::Value* lowerAggregateFieldAddress(llvm::IRBuilder<>& builder,
    llvm::Value* baseValue,
    std::string_view aggregateName,
    std::string_view fieldName,
    const AggregateRegistry& registry);

llvm::Value* instantiateAggregateValue(llvm::IRBuilder<>& builder,
    std::string_view aggregateName,
    const AggregateRegistry& registry) {
    llvm::Module* module = builder.GetInsertBlock() != nullptr ? builder.GetInsertBlock()->getModule() : nullptr;
    llvm::Function* function = builder.GetInsertBlock() != nullptr ? builder.GetInsertBlock()->getParent() : nullptr;
    if (module == nullptr || function == nullptr) {
        return nullptr;
    }

    llvm::StructType* structType = getAggregateStructType(*module, registry, aggregateName);
    if (structType == nullptr) {
        return nullptr;
    }

    llvm::AllocaInst* address = createEntryAlloca(function, structType, std::string(aggregateName) + ".object");
    builder.CreateStore(llvm::Constant::getNullValue(structType), address);
    return builder.CreateBitCast(address, llvm::PointerType::getUnqual(builder.getContext()));
}

bool applyAggregateBraceInitializerToValue(llvm::IRBuilder<>& builder,
    std::string_view aggregateName,
    llvm::Value* aggregateValue,
    compilerv1Parser::BraceInitializerContext* braceInitializer,
    const LoweredValueMap& values) {
    if (gActiveAggregateRegistry == nullptr || aggregateValue == nullptr || braceInitializer == nullptr) {
        return false;
    }

    std::vector<AggregateFieldRecord> fields;
    if (!collectAggregateFields(*gActiveAggregateRegistry, aggregateName, fields)) {
        return false;
    }

    std::size_t positionalIndex = 0;
    for (auto* element : braceInitializer->braceInitializerElement()) {
        if (element == nullptr || element->expression() == nullptr) {
            return false;
        }

        std::string fieldName;
        if (element->ID() != nullptr) {
            fieldName = element->ID()->getText();
        } else {
            if (positionalIndex >= fields.size()) {
                return false;
            }
            fieldName = fields[positionalIndex++].name;
        }

        auto fieldIt = std::find_if(fields.begin(), fields.end(), [&](const AggregateFieldRecord& field) {
            return field.name == fieldName;
        });
        if (fieldIt == fields.end()) {
            return false;
        }

        llvm::Value* fieldValue = lowerExpressionValue(builder, element->expression(), values, true);
        if (fieldValue == nullptr) {
            return false;
        }

        llvm::Value* fieldAddress = lowerAggregateFieldAddress(builder, aggregateValue, aggregateName, fieldName, *gActiveAggregateRegistry);
        if (fieldAddress == nullptr) {
            return false;
        }

        llvm::Type* expectedType = lowerSourceTypeText(builder.getContext(), fieldIt->typeText);
        if (expectedType == nullptr) {
            return false;
        }
        if (fieldValue->getType() != expectedType) {
            if (fieldValue->getType()->isIntegerTy() && expectedType->isIntegerTy()) {
                fieldValue = castToCommonInteger(builder, fieldValue, expectedType);
            } else if (fieldValue->getType()->isPointerTy() && expectedType->isPointerTy()) {
                fieldValue = builder.CreateBitCast(fieldValue, expectedType);
            }
        }
        if (fieldValue == nullptr || fieldValue->getType() != expectedType) {
            return false;
        }

        builder.CreateStore(fieldValue, fieldAddress);
    }

    return true;
}

bool lowerAggregateConstructorCall(llvm::IRBuilder<>& builder,
    std::string_view aggregateName,
    llvm::Value* aggregateValue,
    compilerv1Parser::ArgsContext* args,
    const LoweredValueMap& values) {
    if (gActiveAggregateRegistry == nullptr || aggregateValue == nullptr) {
        return false;
    }

    const AggregateMethodRecord* constructor = findAggregateMethod(*gActiveAggregateRegistry, aggregateName, "__construct");
    const std::size_t suppliedArgs = args != nullptr ? args->expression().size() : 0;
    if (constructor == nullptr) {
        return suppliedArgs == 0;
    }

    llvm::Module* module = builder.GetInsertBlock() != nullptr ? builder.GetInsertBlock()->getModule() : nullptr;
    if (module == nullptr) {
        return false;
    }

    llvm::Function* callee = module->getFunction(constructor->loweredName);
    if (callee == nullptr || callee->arg_empty()) {
        return false;
    }

    const std::size_t expectedArgs = callee->arg_size() - 1;
    if (suppliedArgs != expectedArgs) {
        return false;
    }

    std::vector<llvm::Value*> loweredArgs;
    loweredArgs.reserve(callee->arg_size());

    llvm::Type* selfType = callee->getArg(0)->getType();
    llvm::Value* selfValue = aggregateValue;
    if (selfValue->getType() != selfType) {
        if (!selfValue->getType()->isPointerTy() || !selfType->isPointerTy()) {
            return false;
        }
        selfValue = builder.CreateBitCast(selfValue, selfType);
    }
    loweredArgs.push_back(selfValue);

    for (std::size_t index = 0; index < suppliedArgs; ++index) {
        llvm::Type* expectedType = callee->getArg(static_cast<unsigned>(index + 1))->getType();
        llvm::Value* argValue = lowerExpressionForExpectedType(
            builder,
            args->expression(index),
            expectedType,
            values,
            !expectedType->isPointerTy());
        if (argValue == nullptr) {
            return false;
        }
        if (argValue->getType() != expectedType) {
            if (argValue->getType()->isIntegerTy() && expectedType->isIntegerTy()) {
                argValue = castToCommonInteger(builder, argValue, expectedType);
            } else if (argValue->getType()->isPointerTy() && expectedType->isPointerTy()) {
                argValue = builder.CreateBitCast(argValue, expectedType);
            }
        }
        if (argValue == nullptr || argValue->getType() != expectedType) {
            return false;
        }
        loweredArgs.push_back(argValue);
    }

    builder.CreateCall(callee, loweredArgs);
    return true;
}

llvm::Value* lowerConstructedInstanceValue(llvm::IRBuilder<>& builder,
    compilerv1Parser::InstanceValueContext* instanceValue,
    const LoweredValueMap& values) {
    if (instanceValue == nullptr || instanceValue->ID() == nullptr || gActiveAggregateRegistry == nullptr) {
        return nullptr;
    }

    const std::string aggregateName = trimAggregateTypeName(instanceValue->ID()->getText());
    if (gActiveAggregateRegistry->find(aggregateName) == nullptr) {
        return nullptr;
    }

    llvm::Value* aggregateValue = instantiateAggregateValue(builder, aggregateName, *gActiveAggregateRegistry);
    if (aggregateValue == nullptr) {
        return nullptr;
    }

    if (!lowerAggregateConstructorCall(builder, aggregateName, aggregateValue, instanceValue->args(), values)) {
        return nullptr;
    }

    return aggregateValue;
}

llvm::Value* lowerEnumConstructorValue(llvm::IRBuilder<>& builder,
    compilerv1Parser::EnumConstructorContext* enumConstructor,
    const LoweredValueMap& values) {
    if (enumConstructor == nullptr || enumConstructor->qualifiedType() == nullptr || gActiveAggregateRegistry == nullptr) {
        return nullptr;
    }

    auto* qualifiedType = enumConstructor->qualifiedType();
    if (qualifiedType->ID() == nullptr || qualifiedType->enumVariantName() == nullptr) {
        return nullptr;
    }

    const std::string enumName = qualifiedType->ID()->getText();
    const std::string variantName = qualifiedType->enumVariantName()->getText();
    const AggregateRecord* enumRecord = gActiveAggregateRegistry->find(enumName);
    if (enumRecord == nullptr || enumRecord->kind != AggregateKind::Enum) {
        return nullptr;
    }

    const EnumVariantRecord* variant = findEnumVariant(*enumRecord, variantName);
    if (variant == nullptr) {
        return nullptr;
    }

    llvm::Value* enumValue = instantiateAggregateValue(builder, enumName, *gActiveAggregateRegistry);
    if (enumValue == nullptr) {
        return nullptr;
    }

    llvm::Value* tagAddress = lowerAggregateFieldAddress(builder, enumValue, enumName, "__tag", *gActiveAggregateRegistry);
    if (tagAddress == nullptr) {
        return nullptr;
    }
    builder.CreateStore(llvm::ConstantInt::get(llvm::Type::getInt32Ty(builder.getContext()), variant->tagValue), tagAddress);

    if (variant->kind == EnumVariantKind::Unit) {
        if (enumConstructor->args() != nullptr || enumConstructor->braceInitializer() != nullptr) {
            return nullptr;
        }
        return enumValue;
    }

    llvm::Value* payloadAddress = lowerAggregateFieldAddress(builder, enumValue, enumName, variant->storageFieldName, *gActiveAggregateRegistry);
    if (payloadAddress == nullptr) {
        return nullptr;
    }

    llvm::Type* payloadType = lowerSourceTypeText(builder.getContext(), variant->payloadTypeText);
    if (payloadType == nullptr) {
        return nullptr;
    }

    if (variant->kind == EnumVariantKind::Tuple) {
        const std::size_t argCount = enumConstructor->args() != nullptr ? enumConstructor->args()->expression().size() : 0;
        if (enumConstructor->braceInitializer() != nullptr || argCount > 1) {
            return nullptr;
        }

        llvm::Value* payloadValue = argCount == 0
            ? llvm::Constant::getNullValue(payloadType)
            : lowerExpressionForExpectedType(builder, enumConstructor->args()->expression(0), payloadType, values, !payloadType->isPointerTy());
        if (payloadValue == nullptr) {
            return nullptr;
        }
        if (payloadValue->getType() != payloadType) {
            if (payloadValue->getType()->isIntegerTy() && payloadType->isIntegerTy()) {
                payloadValue = castToCommonInteger(builder, payloadValue, payloadType);
            } else if (payloadValue->getType()->isPointerTy() && payloadType->isPointerTy()) {
                payloadValue = builder.CreateBitCast(payloadValue, payloadType);
            }
        }
        if (payloadValue == nullptr || payloadValue->getType() != payloadType) {
            return nullptr;
        }
        builder.CreateStore(payloadValue, payloadAddress);
        return enumValue;
    }

    llvm::Value* payloadValue = instantiateAggregateValue(builder, variant->payloadTypeText, *gActiveAggregateRegistry);
    if (payloadValue == nullptr) {
        return nullptr;
    }
    if (!lowerAggregateConstructorCall(builder, variant->payloadTypeText, payloadValue, enumConstructor->args(), values)) {
        return nullptr;
    }
    if (enumConstructor->braceInitializer() != nullptr
        && !applyAggregateBraceInitializerToValue(builder, variant->payloadTypeText, payloadValue, enumConstructor->braceInitializer(), values)) {
        return nullptr;
    }
    if (payloadValue->getType() != payloadType) {
        if (!payloadValue->getType()->isPointerTy() || !payloadType->isPointerTy()) {
            return nullptr;
        }
        payloadValue = builder.CreateBitCast(payloadValue, payloadType);
    }
    builder.CreateStore(payloadValue, payloadAddress);
    return enumValue;
}

const AggregateRecord* inferEnumRecordFromExpression(const LoweredValueMap& values,
    compilerv1Parser::ExpressionContext* expression) {
    if (gActiveAggregateRegistry == nullptr || expression == nullptr) {
        return nullptr;
    }
    const std::string typeText = trimAggregateTypeName(inferExpressionTypeText(expression, values));
    if (typeText.empty()) {
        return nullptr;
    }
    const AggregateRecord* record = gActiveAggregateRegistry->find(typeText);
    return record != nullptr && record->kind == AggregateKind::Enum ? record : nullptr;
}

std::string inferExpectedTypeTextFromEnclosingContext(compilerv1Parser::FunctionCallContext* functionCall,
    const LoweredValueMap& values) {
    for (antlr4::tree::ParseTree* current = functionCall != nullptr ? functionCall->parent : nullptr;
        current != nullptr;
        current = current->parent) {
        if (auto* initCore = dynamic_cast<compilerv1Parser::InitCoreContext*>(current)) {
            if (initCore->typeRef() != nullptr) {
                return canonicalApolloTypeText(initCore->typeRef()->getText());
            }
            if (initCore->instanceValue() != nullptr && initCore->instanceValue()->ID() != nullptr) {
                return canonicalApolloTypeText(initCore->instanceValue()->ID()->getText());
            }
        }
        if (auto* assignmentCore = dynamic_cast<compilerv1Parser::AssignmentCoreContext*>(current)) {
            auto* target = assignmentCore->assignTarget();
            if (target != nullptr && target->ID() != nullptr && target->accessKey().empty()) {
                const auto it = values.find(target->ID()->getText());
                if (it != values.end() && !it->second.typeText.empty()) {
                    return canonicalApolloTypeText(it->second.typeText);
                }
            }
        }
    }
    return {};
}

llvm::Value* lowerEnumUnwrapValue(llvm::IRBuilder<>& builder,
    compilerv1Parser::FunctionCallContext* functionCall,
    llvm::Type* expectedType,
    const LoweredValueMap& values) {
    if (functionCall == nullptr || functionCall->ID() == nullptr || functionCall->ID()->getText() != "unwrap_enum") {
        return nullptr;
    }
    auto* argsCtx = functionCall->args();
    if (argsCtx == nullptr || argsCtx->expression().size() != 1) {
        return nullptr;
    }

    const AggregateRecord* enumRecord = inferEnumRecordFromExpression(values, argsCtx->expression(0));
    if (enumRecord == nullptr) {
        return nullptr;
    }

    llvm::Value* enumValue = lowerExpressionValue(builder, argsCtx->expression(0), values, true);
    if (enumValue == nullptr) {
        return nullptr;
    }

    const std::string expectedTypeText = inferExpectedTypeTextFromEnclosingContext(functionCall, values);
    const EnumVariantRecord* variant = !expectedTypeText.empty()
        ? findEnumVariantForExpectedTypeText(*enumRecord, expectedTypeText)
        : nullptr;
    if (variant == nullptr && expectedType != nullptr) {
        variant = findEnumVariantForExpectedType(builder.getContext(), *enumRecord, expectedType);
    }
    if (variant == nullptr && expectedType == nullptr) {
        variant = inferSinglePayloadEnumVariant(*enumRecord);
    }
    if (variant == nullptr || variant->kind == EnumVariantKind::Unit || variant->storageFieldName.empty()) {
        return nullptr;
    }

    llvm::Value* payloadAddress = lowerAggregateFieldAddress(builder, enumValue, enumRecord->name, variant->storageFieldName, *gActiveAggregateRegistry);
    if (payloadAddress == nullptr) {
        return nullptr;
    }

    llvm::Type* payloadType = lowerSourceTypeText(builder.getContext(), variant->payloadTypeText);
    if (payloadType == nullptr) {
        return nullptr;
    }
    return builder.CreateLoad(payloadType, payloadAddress);
}

llvm::Value* lowerAggregateFieldAddress(llvm::IRBuilder<>& builder,
    llvm::Value* baseValue,
    std::string_view aggregateName,
    std::string_view fieldName,
    const AggregateRegistry& registry) {
    llvm::Module* module = builder.GetInsertBlock() != nullptr ? builder.GetInsertBlock()->getModule() : nullptr;
    if (module == nullptr || baseValue == nullptr) {
        return nullptr;
    }

    std::vector<AggregateFieldRecord> fields;
    if (!collectAggregateFields(registry, aggregateName, fields)) {
        return nullptr;
    }

    std::size_t fieldIndex = fields.size();
    for (std::size_t index = 0; index < fields.size(); ++index) {
        if (fields[index].name == fieldName) {
            fieldIndex = index;
            break;
        }
    }
    if (fieldIndex >= fields.size()) {
        return nullptr;
    }

    llvm::StructType* structType = getAggregateStructType(*module, registry, aggregateName);
    if (structType == nullptr) {
        return nullptr;
    }

    llvm::Value* typedBase = baseValue;
    llvm::Type* expectedType = structType->getPointerTo();
    if (typedBase->getType() != expectedType) {
        if (!typedBase->getType()->isPointerTy()) {
            return nullptr;
        }
        typedBase = builder.CreateBitCast(typedBase, expectedType);
    }
    return builder.CreateStructGEP(structType, typedBase, static_cast<unsigned>(fieldIndex));
}

std::string resolveAggregateTypeName(const LoweredValueMap& values, std::string_view accessBase) {
    if (accessBase == "indef") {
        const auto it = values.find("indef");
        if (it == values.end()) {
            return {};
        }
        return trimAggregateTypeName(it->second.typeText);
    }

    const auto it = values.find(std::string(accessBase));
    if (it != values.end() && !it->second.typeText.empty()) {
        return trimAggregateTypeName(it->second.typeText);
    }
    if (gActiveAggregateRegistry != nullptr && gActiveAggregateRegistry->find(trimAggregateTypeName(std::string(accessBase))) != nullptr) {
        return trimAggregateTypeName(std::string(accessBase));
    }
    return {};
}

std::string inferExpressionTypeText(compilerv1Parser::ExpressionContext* expression) {
    if (expression == nullptr) {
        return {};
    }
    if (auto* primary = extractPrimaryContext(expression); primary != nullptr && primary->enumConstructor() != nullptr
        && primary->enumConstructor()->qualifiedType() != nullptr
        && primary->enumConstructor()->qualifiedType()->ID() != nullptr) {
        return primary->enumConstructor()->qualifiedType()->ID()->getText();
    }
    std::string text = trimCopy(stripOuterParens(expression->getText()));
    const auto brace = text.find('{');
    if (brace != std::string::npos) {
        return trimAggregateTypeName(text.substr(0, brace));
    }
    if (isDecimalIntegerLiteral(text)) {
        return "i32";
    }
    static const std::regex kFloatLiteralPattern(R"(^[+-]?((\d+\.\d*)|(\.\d+)|(\d+[eE][+-]?\d+)|(\d+\.\d*[eE][+-]?\d+)|(\.\d+[eE][+-]?\d+))$)");
    if (std::regex_match(text, kFloatLiteralPattern)) {
        return "f64";
    }
    if (isStringLiteral(text) || isTemplateStringLiteral(text)) {
        return "str";
    }
    return {};
}

std::string inferApolloTypeTextFromIrType(llvm::Type* type) {
    if (type == nullptr) {
        return {};
    }
    if (type->isIntegerTy(1)) {
        return "bool";
    }
    if (type->isIntegerTy(8)) {
        return "i8";
    }
    if (type->isIntegerTy(16)) {
        return "i16";
    }
    if (type->isIntegerTy(32)) {
        return "i32";
    }
    if (type->isIntegerTy(64)) {
        return "i64";
    }
    if (type->isFloatTy()) {
        return "float";
    }
    if (type->isDoubleTy()) {
        return "f64";
    }
    return {};
}

std::string inferIndexedAccessTypeText(compilerv1Parser::IndexedAccessContext* indexedAccess,
    const LoweredValueMap& values) {
    if (indexedAccess == nullptr || indexedAccess->ID() == nullptr) {
        return {};
    }

    const auto it = values.find(indexedAccess->ID()->getText());
    if (it == values.end()) {
        return {};
    }

    const std::string containerType = canonicalApolloTypeText(it->second.typeText);
    if (containerType == "vector<i32>"
        || containerType == "unordered_map<i32,i32>"
        || containerType == "hsh<i32,i32>"
        || containerType == "hsh<str,i32>") {
        return "i32";
    }

    const auto& keys = indexedAccess->accessKey();
    if (it->second.storageType != nullptr && it->second.storageType->isStructTy()
        && keys.size() == 1 && keys[0] != nullptr && keys[0]->APND() == nullptr) {
        const auto constantIndex = extractConstantI32Index(keys[0]->expression());
        auto* structType = llvm::dyn_cast<llvm::StructType>(it->second.storageType);
        if (constantIndex.has_value() && structType != nullptr && *constantIndex < structType->getNumElements()) {
            return inferApolloTypeTextFromIrType(structType->getElementType(*constantIndex));
        }
    }

    return {};
}

std::string inferMemberAccessTypeText(compilerv1Parser::MemberaccessContext* memberAccess,
    const LoweredValueMap& values) {
    if (memberAccess == nullptr || memberAccess->ID() == nullptr || gActiveAggregateRegistry == nullptr) {
        return {};
    }

    const std::string aggregateName = resolveAggregateTypeName(values, memberAccess->accessBase() != nullptr
        ? memberAccess->accessBase()->getText()
        : std::string());
    if (aggregateName.empty()) {
        return {};
    }

    std::vector<AggregateFieldRecord> fields;
    if (!collectAggregateFields(*gActiveAggregateRegistry, aggregateName, fields)) {
        return {};
    }

    const auto fieldIt = std::find_if(fields.begin(), fields.end(), [&](const AggregateFieldRecord& field) {
        return field.name == memberAccess->ID()->getText();
    });
    if (fieldIt == fields.end()) {
        return {};
    }

    return canonicalApolloTypeText(fieldIt->typeText);
}

std::string inferExpressionTypeText(compilerv1Parser::ExpressionContext* expression, const LoweredValueMap& values) {
    std::string inferred = inferExpressionTypeText(expression);
    if (!inferred.empty()) {
        return canonicalApolloTypeText(inferred);
    }
    if (expression == nullptr) {
        return {};
    }
    const std::string text = trimCopy(stripOuterParens(expression->getText()));
    const auto it = values.find(text);
    if (it == values.end()) {
        return {};
    }
    if (!it->second.typeText.empty()) {
        return canonicalApolloTypeText(it->second.typeText);
    }
    if (it->second.storageType != nullptr) {
        return inferApolloTypeTextFromIrType(it->second.storageType);
    }
    if (it->second.value != nullptr) {
        return inferApolloTypeTextFromIrType(it->second.value->getType());
    }

    if (auto* primary = extractPrimaryContext(expression); primary != nullptr) {
        if (primary->indexedAccess() != nullptr) {
            return inferIndexedAccessTypeText(primary->indexedAccess(), values);
        }
        if (primary->memberaccess() != nullptr) {
            return inferMemberAccessTypeText(primary->memberaccess(), values);
        }
        if (primary->functionCall() != nullptr && primary->functionCall()->ID() != nullptr
            && primary->functionCall()->ID()->getText() == "unwrap_enum") {
            auto* argsCtx = primary->functionCall()->args();
            if (argsCtx != nullptr && argsCtx->expression().size() == 1) {
                const AggregateRecord* enumRecord = inferEnumRecordFromExpression(values, argsCtx->expression(0));
                if (enumRecord != nullptr) {
                    if (const EnumVariantRecord* variant = inferSinglePayloadEnumVariant(*enumRecord)) {
                        return canonicalApolloTypeText(variant->payloadTypeText);
                    }
                }
            }
        }
    }

    return {};
}

bool isStringLikeComparisonOperand(antlr4::ParserRuleContext* expression, const LoweredValueMap& values) {
    auto* primary = extractPrimaryContext(expression);
    if (primary == nullptr) {
        return false;
    }
    if (primary->STRING() != nullptr || (primary->templateString() != nullptr && primary->templateString()->TEMPLATE_STRING() != nullptr)) {
        return true;
    }
    if (primary->ID() != nullptr) {
        const auto it = values.find(primary->ID()->getText());
        return it != values.end() && canonicalApolloTypeText(it->second.typeText) == "str";
    }
    if (primary->memberaccess() != nullptr) {
        return canonicalApolloTypeText(inferMemberAccessTypeText(primary->memberaccess(), values)) == "str";
    }
    return false;
}

llvm::Value* createGlobalCString(llvm::Module& module,
    llvm::IRBuilder<>& builder,
    const std::string& value,
    const std::string& name);

llvm::FunctionCallee getApolloVectorStrCreateDeclaration(llvm::Module& module);
llvm::FunctionCallee getApolloVectorI32CreateDeclaration(llvm::Module& module);
llvm::FunctionCallee getApolloVectorStrPushDeclaration(llvm::Module& module);
llvm::FunctionCallee getApolloVectorI32PushDeclaration(llvm::Module& module);
llvm::FunctionCallee getApolloVectorI32GetDeclaration(llvm::Module& module);
llvm::FunctionCallee getApolloVectorI32SetDeclaration(llvm::Module& module);
llvm::FunctionCallee getApolloVectorI32SizeDeclaration(llvm::Module& module);
llvm::FunctionCallee getApolloStringCompareDeclaration(llvm::Module& module);
llvm::FunctionCallee getApolloHashStrI32CreateDeclaration(llvm::Module& module);
llvm::FunctionCallee getApolloHashStrI32SetDeclaration(llvm::Module& module);
llvm::FunctionCallee getApolloHashStrI32GetDeclaration(llvm::Module& module);
llvm::FunctionCallee getApolloHashI32I32CreateDeclaration(llvm::Module& module);
llvm::FunctionCallee getApolloHashI32I32SetDeclaration(llvm::Module& module);
llvm::FunctionCallee getApolloHashI32I32GetDeclaration(llvm::Module& module);
llvm::FunctionCallee getApolloNestedHashCreateDeclaration(llvm::Module& module);
llvm::FunctionCallee getApolloNestedHashSetDeclaration(llvm::Module& module);
llvm::FunctionCallee getApolloNestedHashGetDeclaration(llvm::Module& module);
llvm::Function* getApolloStdinReadLineFunction(llvm::Module& module);
llvm::FunctionCallee getApolloExecuteApolloPayloadDeclaration(llvm::Module& module);
llvm::AllocaInst* createEntryAlloca(llvm::Function* function, llvm::Type* type, llvm::StringRef name);

llvm::Value* lowerMemberAccessValue(llvm::IRBuilder<>& builder,
    compilerv1Parser::MemberaccessContext* memberAccess,
    const LoweredValueMap& values,
    bool loadReferences = true);

bool lowerBuiltinStatement(llvm::Module& module,
    llvm::IRBuilder<>& builder,
    compilerv1Parser::StatementContext* statement,
    const LoweredValueMap& params);

std::string makeUniqueFunctionName(llvm::Module& module, const std::string& baseName);
std::string inferExpressionTypeText(compilerv1Parser::ExpressionContext* expression, const LoweredValueMap& values);
bool isStringLikeComparisonOperand(antlr4::ParserRuleContext* expression, const LoweredValueMap& values);
bool lowerCallableBody(llvm::Module& module,
    llvm::Function* function,
    compilerv1Parser::BlockContext* block,
    std::string& unsupportedReason);

llvm::AllocaInst* createEntryAlloca(llvm::Function* function, llvm::Type* type, llvm::StringRef name) {
    llvm::IRBuilder<> entryBuilder(&function->getEntryBlock(), function->getEntryBlock().begin());
    return entryBuilder.CreateAlloca(type, nullptr, name);
}

llvm::Type* valueStorageType(llvm::Value* value) {
    if (value == nullptr) {
        return nullptr;
    }
    return value->getType();
}

llvm::Value* lowerPrimaryValue(llvm::IRBuilder<>& builder,
    compilerv1Parser::PrimaryContext* primary,
    const LoweredValueMap& values,
    bool loadReferences);

llvm::Value* loadIfAddressable(llvm::IRBuilder<>& builder, const LoweredValue& lowered) {
    if (lowered.address != nullptr) {
        if (lowered.storageType == nullptr) {
            return nullptr;
        }
        return builder.CreateLoad(lowered.storageType, lowered.address);
    }
    return lowered.value;
}

bool isRawAddressBorrowExpr(compilerv1Parser::BorrowExprContext* borrowExpr) {
    return borrowExpr != nullptr && borrowExpr->getText().rfind(".&", 0) == 0;
}

bool isDerefAssignTarget(compilerv1Parser::AssignTargetContext* target) {
    return target != nullptr && !target->getText().empty() && target->getText().front() == '*';
}

std::string pointeeTypeText(std::string_view typeText) {
    std::string text = stripTrailingReferenceQualifierText(std::string(typeText));
    if (text.empty()) {
        return {};
    }
    const char suffix = text.back();
    if (suffix != '*' && suffix != '&') {
        return {};
    }
    text.pop_back();
    return trimCopy(text);
}

llvm::Type* lowerPointeeSourceType(llvm::LLVMContext& context, std::string_view typeText) {
    const std::string pointeeText = pointeeTypeText(typeText);
    if (pointeeText.empty()) {
        return nullptr;
    }
    return lowerSourceTypeText(context, pointeeText);
}

llvm::Value* lowerCppStyleAddressValue(llvm::IRBuilder<>& builder, const LoweredValue& lowered) {
    if (lowered.typeText.find('&') != std::string::npos) {
        return loadIfAddressable(builder, lowered);
    }
    if (lowered.address != nullptr) {
        return lowered.address;
    }
    return lowered.value;
}

llvm::Value* lowerPointerOperandValue(llvm::IRBuilder<>& builder,
    compilerv1Parser::PrimaryContext* primary,
    const LoweredValueMap& values) {
    if (primary == nullptr) {
        return nullptr;
    }
    if (primary->ID() != nullptr) {
        const auto it = values.find(primary->ID()->getText());
        if (it == values.end()) {
            return nullptr;
        }
        return loadIfAddressable(builder, it->second);
    }
    if (primary->borrowExpr() != nullptr && primary->borrowExpr()->ID() != nullptr) {
        const auto it = values.find(primary->borrowExpr()->ID()->getText());
        if (it == values.end()) {
            setUnknownBindingError(primary->borrowExpr()->ID()->getText());
            return nullptr;
        }
        if (isRawAddressBorrowExpr(primary->borrowExpr())) {
            return lowerCppStyleAddressValue(builder, it->second);
        }
        if (it->second.address != nullptr) {
            return it->second.address;
        }
        return it->second.value;
    }
    return lowerPrimaryValue(builder, primary, values, true);
}

llvm::Type* lowerDereferenceResultType(llvm::LLVMContext& context,
    compilerv1Parser::PrimaryContext* primary,
    const LoweredValueMap& values) {
    if (primary == nullptr) {
        return nullptr;
    }
    if (primary->ID() != nullptr) {
        const auto it = values.find(primary->ID()->getText());
        if (it == values.end()) {
            setUnknownBindingError(primary->ID()->getText());
            return nullptr;
        }
        return lowerPointeeSourceType(context, it->second.typeText);
    }
    if (primary->borrowExpr() != nullptr && primary->borrowExpr()->ID() != nullptr) {
        const auto it = values.find(primary->borrowExpr()->ID()->getText());
        if (it == values.end()) {
            return nullptr;
        }
        return lowerSourceTypeText(context, it->second.typeText);
    }
    return nullptr;
}

bool lowerDerefAssignment(llvm::IRBuilder<>& builder,
    compilerv1Parser::AssignTargetContext* target,
    compilerv1Parser::ExpressionContext* expression,
    const LoweredValueMap& values) {
    if (target == nullptr || target->ID() == nullptr || expression == nullptr) {
        return false;
    }

    const auto it = values.find(target->ID()->getText());
    if (it == values.end()) {
        return false;
    }

    llvm::Value* pointerValue = loadIfAddressable(builder, it->second);
    llvm::Type* pointeeType = lowerPointeeSourceType(builder.getContext(), it->second.typeText);
    if (pointerValue == nullptr || pointeeType == nullptr || !pointerValue->getType()->isPointerTy()) {
        return false;
    }

    const std::string pointeeText = pointeeTypeText(it->second.typeText);
    const bool loadReferences = pointeeText.find('&') == std::string::npos;
    llvm::Value* newValue = lowerExpressionForExpectedType(builder, expression, pointeeType, values, loadReferences);
    if (newValue == nullptr) {
        return false;
    }
    if (newValue->getType() != pointeeType) {
        if (newValue->getType()->isIntegerTy() && pointeeType->isIntegerTy()) {
            newValue = castToCommonInteger(builder, newValue, pointeeType);
        } else if (newValue->getType()->isPointerTy() && pointeeType->isPointerTy()) {
            newValue = builder.CreateBitCast(newValue, pointeeType);
        }
    }
    if (newValue == nullptr || newValue->getType() != pointeeType) {
        return false;
    }

    const bool gcOn = gActiveRuntimeFeatures != nullptr && gActiveRuntimeFeatures->totalProgramGc();
    emitGcManagedStore(builder, newValue, pointerValue, gcOn);
    return true;
}

bool isReferenceType(compilerv1Parser::TypeRefContext* typeRef) {
    if (typeRef == nullptr) {
        return false;
    }
    for (auto* modifier : typeRef->typeModifier()) {
        if (modifier != nullptr && modifier->getText().rfind("&", 0) == 0) {
            return true;
        }
    }
    return false;
}

llvm::Value* lowerExpressionValue(llvm::IRBuilder<>& builder,
    antlr4::ParserRuleContext* expression,
    const LoweredValueMap& values,
    bool loadReferences = true);

llvm::Value* castToCommonInteger(llvm::IRBuilder<>& builder, llvm::Value* value, llvm::Type* targetType);

llvm::Value* lowerReturnExpression(llvm::IRBuilder<>& builder,
    llvm::Type* returnType,
    compilerv1Parser::ExpressionContext* expression,
    const LoweredValueMap& params);

compilerv1Parser::PrimaryContext* extractPrimaryContext(antlr4::ParserRuleContext* current) {
    while (current != nullptr) {
        if (auto* expr = dynamic_cast<compilerv1Parser::ExpressionContext*>(current)) {
            if (!expr->expression().empty()) {
                return nullptr;
            }
            current = expr->orExpr();
            continue;
        }
        if (auto* orExpr = dynamic_cast<compilerv1Parser::OrExprContext*>(current)) {
            if (orExpr->andExpr().size() != 1) {
                return nullptr;
            }
            current = orExpr->andExpr(0);
            continue;
        }
        if (auto* andExpr = dynamic_cast<compilerv1Parser::AndExprContext*>(current)) {
            if (andExpr->bitwiseOrExpr().size() != 1) {
                return nullptr;
            }
            current = andExpr->bitwiseOrExpr(0);
            continue;
        }
        if (auto* bitwiseOrExpr = dynamic_cast<compilerv1Parser::BitwiseOrExprContext*>(current)) {
            if (bitwiseOrExpr->bitwiseXorExpr().size() != 1) {
                return nullptr;
            }
            current = bitwiseOrExpr->bitwiseXorExpr(0);
            continue;
        }
        if (auto* bitwiseXorExpr = dynamic_cast<compilerv1Parser::BitwiseXorExprContext*>(current)) {
            if (bitwiseXorExpr->bitwiseAndExpr().size() != 1) {
                return nullptr;
            }
            current = bitwiseXorExpr->bitwiseAndExpr(0);
            continue;
        }
        if (auto* bitwiseAndExpr = dynamic_cast<compilerv1Parser::BitwiseAndExprContext*>(current)) {
            if (bitwiseAndExpr->equalityExpr().size() != 1) {
                return nullptr;
            }
            current = bitwiseAndExpr->equalityExpr(0);
            continue;
        }
        if (auto* equalityExpr = dynamic_cast<compilerv1Parser::EqualityExprContext*>(current)) {
            if (equalityExpr->shiftExpr().size() != 1) {
                return nullptr;
            }
            current = equalityExpr->shiftExpr(0);
            continue;
        }
        if (auto* shiftExpr = dynamic_cast<compilerv1Parser::ShiftExprContext*>(current)) {
            if (shiftExpr->relationalExpr().size() != 1) {
                return nullptr;
            }
            current = shiftExpr->relationalExpr(0);
            continue;
        }
        if (auto* relationalExpr = dynamic_cast<compilerv1Parser::RelationalExprContext*>(current)) {
            if (relationalExpr->addExpr().size() != 1) {
                return nullptr;
            }
            current = relationalExpr->addExpr(0);
            continue;
        }
        if (auto* addExpr = dynamic_cast<compilerv1Parser::AddExprContext*>(current)) {
            if (addExpr->multExpr().size() != 1) {
                return nullptr;
            }
            current = addExpr->multExpr(0);
            continue;
        }
        if (auto* multExpr = dynamic_cast<compilerv1Parser::MultExprContext*>(current)) {
            if (multExpr->primary().size() != 1) {
                return nullptr;
            }
            current = multExpr->primary(0);
            continue;
        }
        break;
    }

    return dynamic_cast<compilerv1Parser::PrimaryContext*>(current);
}

llvm::Value* lowerAggregateBraceInitializerValue(llvm::IRBuilder<>& builder,
    std::string_view aggregateName,
    compilerv1Parser::BraceInitializerContext* braceInitializer,
    const LoweredValueMap& values) {
    if (gActiveAggregateRegistry == nullptr || braceInitializer == nullptr) {
        return nullptr;
    }

    llvm::Value* aggregateValue = instantiateAggregateValue(builder, aggregateName, *gActiveAggregateRegistry);
    if (aggregateValue == nullptr) {
        return nullptr;
    }

    if (!applyAggregateBraceInitializerToValue(builder, aggregateName, aggregateValue, braceInitializer, values)) {
        return nullptr;
    }

    return aggregateValue;
}

llvm::Value* lowerInterpolatedStringValue(llvm::IRBuilder<>& builder,
    std::string_view rawText,
    const LoweredValueMap& values,
    bool isTemplateString) {
    llvm::Module* module = builder.GetInsertBlock() != nullptr ? builder.GetInsertBlock()->getModule() : nullptr;
    if (module == nullptr) {
        return nullptr;
    }

    std::vector<InterpolatedStringSegment> segments;
    if (!splitInterpolatedStringLiteral(rawText, isTemplateString, segments)) {
        return nullptr;
    }

    bool hasPlaceholder = false;
    std::string formatText;
    std::vector<llvm::Value*> formatArgs;
    llvm::LLVMContext& context = module->getContext();
    llvm::Type* charPtrTy = llvm::PointerType::getUnqual(context);
    llvm::Type* i64Ty = llvm::Type::getInt64Ty(context);
    llvm::Type* i32Ty = llvm::Type::getInt32Ty(context);

    for (const auto& segment : segments) {
        if (segment.kind == InterpolatedStringSegmentKind::Literal) {
            formatText += escapePrintfFormatLiteral(segment.text);
            continue;
        }

        hasPlaceholder = true;
        antlr4::ANTLRInputStream input(segment.text);
        compilerv1Lexer lexer(&input);
        antlr4::CommonTokenStream tokens(&lexer);
        compilerv1Parser parser(&tokens);
        lexer.removeErrorListeners();
        parser.removeErrorListeners();
        auto* expression = parser.expression();
        if (parser.getNumberOfSyntaxErrors() != 0 || tokens.LA(1) != antlr4::Token::EOF) {
            return nullptr;
        }

        llvm::Value* lowered = lowerExpressionValue(builder, expression, values);
        if (lowered == nullptr) {
            return nullptr;
        }

        llvm::Type* loweredType = lowered->getType();
        if (loweredType->isIntegerTy(1)) {
            llvm::Value* trueValue = createGlobalCString(*module, builder, "true", "apollo.bool.true");
            llvm::Value* falseValue = createGlobalCString(*module, builder, "false", "apollo.bool.false");
            formatText += "%s";
            formatArgs.push_back(builder.CreateSelect(lowered, trueValue, falseValue));
            continue;
        }
        if (loweredType->isIntegerTy()) {
            formatText += "%lld";
            formatArgs.push_back(builder.CreateSExtOrBitCast(lowered, i64Ty));
            continue;
        }
        if (loweredType->isFloatTy()) {
            formatText += "%f";
            formatArgs.push_back(builder.CreateFPExt(lowered, llvm::Type::getDoubleTy(context)));
            continue;
        }
        if (loweredType->isDoubleTy()) {
            formatText += "%f";
            formatArgs.push_back(lowered);
            continue;
        }
        if (loweredType->isPointerTy()) {
            formatText += "%s";
            formatArgs.push_back(lowered);
            continue;
        }
        return nullptr;
    }

    if (!hasPlaceholder) {
        const std::string decoded = isTemplateString
            ? decodeTemplateStringLiteral(rawText)
            : decodeStringLiteral(rawText);
        return createGlobalCString(*module, builder, decoded, isTemplateString ? "apollo.template.str.literal" : "apollo.str.literal");
    }

    llvm::Value* formatValue = createGlobalCString(*module, builder, formatText, "apollo.interpolated.fmt");
    llvm::FunctionCallee snprintfDecl = module->getOrInsertFunction(
        "snprintf",
        llvm::FunctionType::get(i32Ty, {charPtrTy, i64Ty, charPtrTy}, true));
    llvm::FunctionCallee mallocDecl = module->getOrInsertFunction(
        "malloc",
        llvm::FunctionType::get(charPtrTy, {i64Ty}, false));

    std::vector<llvm::Value*> measureArgs;
    measureArgs.push_back(llvm::ConstantPointerNull::get(llvm::cast<llvm::PointerType>(charPtrTy)));
    measureArgs.push_back(llvm::ConstantInt::get(i64Ty, 0));
    measureArgs.push_back(formatValue);
    measureArgs.insert(measureArgs.end(), formatArgs.begin(), formatArgs.end());
    llvm::Value* requiredLength = builder.CreateCall(snprintfDecl, measureArgs);
    llvm::Value* requiredLength64 = builder.CreateSExtOrBitCast(requiredLength, i64Ty);
    llvm::Value* bufferSize = builder.CreateAdd(requiredLength64, llvm::ConstantInt::get(i64Ty, 1));
    llvm::Value* buffer = builder.CreateCall(mallocDecl, {bufferSize});

    std::vector<llvm::Value*> writeArgs;
    writeArgs.push_back(buffer);
    writeArgs.push_back(bufferSize);
    writeArgs.push_back(formatValue);
    writeArgs.insert(writeArgs.end(), formatArgs.begin(), formatArgs.end());
    builder.CreateCall(snprintfDecl, writeArgs);
    return buffer;
}

llvm::Value* lowerPrimaryValue(llvm::IRBuilder<>& builder,
    compilerv1Parser::PrimaryContext* primary,
    const LoweredValueMap& values,
    bool loadReferences);

llvm::Value* lowerStructuralBraceValue(llvm::IRBuilder<>& builder,
    compilerv1Parser::BraceInitializerContext* braceInitializer,
    const LoweredValueMap& values) {
    if (braceInitializer == nullptr || braceInitializer->braceInitializerElement().size() < 2) {
        return nullptr;
    }

    std::vector<llvm::Value*> elementValues;
    std::vector<llvm::Type*> elementTypes;
    elementValues.reserve(braceInitializer->braceInitializerElement().size());
    elementTypes.reserve(braceInitializer->braceInitializerElement().size());

    for (auto* element : braceInitializer->braceInitializerElement()) {
        if (element == nullptr || element->ID() != nullptr || element->expression() == nullptr) {
            return nullptr;
        }

        llvm::Value* loweredElement = lowerExpressionValue(builder, element->expression(), values);
        if (loweredElement == nullptr) {
            return nullptr;
        }

        elementValues.push_back(loweredElement);
        elementTypes.push_back(loweredElement->getType());
    }

    llvm::StructType* structType = llvm::StructType::get(builder.getContext(), elementTypes, false);
    llvm::Value* aggregate = llvm::UndefValue::get(structType);
    for (std::size_t index = 0; index < elementValues.size(); ++index) {
        aggregate = builder.CreateInsertValue(aggregate, elementValues[index], {static_cast<unsigned>(index)});
    }
    return aggregate;
}

llvm::Value* castToCommonInteger(llvm::IRBuilder<>& builder, llvm::Value* value, llvm::Type* targetType);

llvm::Function* getKnownStdBridgeDeclaration(llvm::Module& module, std::string_view functionName) {
    if (const auto importedIt = gImportedClikeSymbols.find(std::string(functionName)); importedIt != gImportedClikeSymbols.end()) {
        if (llvm::Function* imported = declareImportedClikeFunction(module, importedIt->second)) {
            return imported;
        }
    }

    llvm::LLVMContext& context = module.getContext();
    llvm::Type* i32Ty = llvm::Type::getInt32Ty(context);
    llvm::Type* i64Ty = llvm::Type::getInt64Ty(context);
    llvm::Type* f64Ty = llvm::Type::getDoubleTy(context);
    llvm::Type* charPtrTy = llvm::PointerType::getUnqual(context);

    auto declare = [&](llvm::Type* returnType, std::vector<llvm::Type*> argTypes) -> llvm::Function* {
        return llvm::cast<llvm::Function>(module.getOrInsertFunction(
            std::string(functionName),
            llvm::FunctionType::get(returnType, argTypes, false)).getCallee());
    };

    auto declareVariadic = [&](llvm::Type* returnType, std::vector<llvm::Type*> argTypes) -> llvm::Function* {
        return llvm::cast<llvm::Function>(module.getOrInsertFunction(
            std::string(functionName),
            llvm::FunctionType::get(returnType, argTypes, true)).getCallee());
    };

    if (functionName == "sys__printf") {
        return declareVariadic(i32Ty, {charPtrTy});
    }

    if (functionName == "sys__hash_fnv1a_32" || functionName == "sys__hash_adler32" || functionName == "sys__hash_crc32" || functionName == "sys__hash_murmur3_32") {
        return declare(i32Ty, {charPtrTy});
    }
    if (functionName == "sys__hash_fnv1a_64" || functionName == "sys__json_parse_int") {
        return declare(i64Ty, {charPtrTy});
    }
    if (functionName == "sys__json_parse_bool") {
        return declare(i32Ty, {charPtrTy});
    }
    if (functionName == "sys__json_parse_float") {
        return declare(f64Ty, {charPtrTy});
    }
    if (functionName == "sys__json_parse_str" || functionName == "sys__json_write_bool" || functionName == "sys__json_write_int"
        || functionName == "sys__json_write_float" || functionName == "sys__json_write_str"
        || functionName == "sys__json_write_array_start" || functionName == "sys__json_write_array_end"
        || functionName == "sys__json_write_object_start" || functionName == "sys__json_write_object_end") {
        if (functionName == "sys__json_write_bool") {
            return declare(charPtrTy, {i32Ty});
        }
        if (functionName == "sys__json_write_int") {
            return declare(charPtrTy, {i64Ty});
        }
        if (functionName == "sys__json_write_float") {
            return declare(charPtrTy, {f64Ty});
        }
        if (functionName == "sys__json_write_str" || functionName == "sys__json_parse_str") {
            return declare(charPtrTy, {charPtrTy});
        }
        return declare(charPtrTy, {});
    }

    return nullptr;
}

llvm::Value* lowerFunctionCallValue(llvm::IRBuilder<>& builder,
    compilerv1Parser::FunctionCallContext* functionCall,
    const LoweredValueMap& values) {
    if (functionCall == nullptr || functionCall->ID() == nullptr) {
        return nullptr;
    }

    if (llvm::Value* enumUnwrapValue = lowerEnumUnwrapValue(builder, functionCall, nullptr, values)) {
        return enumUnwrapValue;
    }

    if (llvm::Value* builtinValue = lowerResultHelperBuiltin(builder, functionCall, values)) {
        return builtinValue;
    }
    if (llvm::Value* shapeBuiltinValue = lowerShapeHelperBuiltin(builder, functionCall, values)) {
        return shapeBuiltinValue;
    }

    if (functionCall->ID()->getText() == "open" || functionCall->ID()->getText() == "fopen") {
        llvm::Module* module = builder.GetInsertBlock() != nullptr ? builder.GetInsertBlock()->getModule() : nullptr;
        if (module == nullptr) {
            return nullptr;
        }

        llvm::Type* charPtrTy = llvm::PointerType::getUnqual(builder.getContext());
        llvm::Function* callee = llvm::cast<llvm::Function>(module->getOrInsertFunction(
            "fopen",
            llvm::FunctionType::get(charPtrTy, {charPtrTy, charPtrTy}, false)).getCallee());

        auto* argsCtx = functionCall->args();
        const std::size_t argCount = argsCtx != nullptr ? argsCtx->expression().size() : 0;
        if (argCount < 1 || argCount > 2) {
            return nullptr;
        }

        llvm::Value* pathArg = lowerExpressionForExpectedType(builder, argsCtx->expression(0), charPtrTy, values);
        if (pathArg == nullptr) {
            return nullptr;
        }

        llvm::Value* modeArg = nullptr;
        if (argCount == 2) {
            modeArg = lowerExpressionForExpectedType(builder, argsCtx->expression(1), charPtrTy, values);
        } else {
            llvm::GlobalVariable* defaultMode = builder.CreateGlobalString(
                functionCall->ID()->getText() == "fopen" ? "w" : "r",
                "apollo.file.open.mode");
            modeArg = builder.CreateConstInBoundsGEP2_32(defaultMode->getValueType(), defaultMode, 0, 0);
        }
        if (modeArg == nullptr) {
            return nullptr;
        }

        return builder.CreateCall(callee, {pathArg, modeArg});
    }

llvm::Value* lowerIndexedAccessValue(llvm::IRBuilder<>& builder,
    compilerv1Parser::IndexedAccessContext* indexedAccess,
    const LoweredValueMap& values);
    llvm::Module* module = builder.GetInsertBlock() != nullptr ? builder.GetInsertBlock()->getModule() : nullptr;
    if (module == nullptr) {
        return nullptr;
    }

    if (functionCall->ID()->getText() == "KEYPRESS") {
        auto* argsCtx = functionCall->args();
        if (argsCtx == nullptr || argsCtx->expression().size() != 1) {
            return nullptr;
        }

        llvm::Type* charPtrTy = llvm::PointerType::getUnqual(builder.getContext());
        llvm::Value* keyName = lowerExpressionForExpectedType(builder, argsCtx->expression(0), charPtrTy, values);
        if (keyName == nullptr) {
            return nullptr;
        }

        llvm::FunctionCallee callee = module->getOrInsertFunction(
            "apollo_gui_key_pressed",
            llvm::FunctionType::get(llvm::Type::getInt1Ty(builder.getContext()), {charPtrTy}, false));
        return builder.CreateCall(callee, {keyName});
    }

    if (gActiveAggregateRegistry != nullptr) {
        const auto selfIt = values.find("indef");
        if (selfIt != values.end() && !selfIt->second.typeText.empty()) {
            const std::string aggregateName = resolveAggregateTypeName(values, "indef");
            if (!aggregateName.empty()) {
                if (const AggregateMethodRecord* method = findAggregateMethod(*gActiveAggregateRegistry, aggregateName, functionCall->ID()->getText())) {
                    llvm::Function* callee = module->getFunction(method->loweredName);
                    if (callee == nullptr) {
                        return nullptr;
                    }

                    std::vector<llvm::Value*> args;
                    std::size_t argOffset = 0;
                    if (!method->isStatic) {
                        llvm::Value* selfValue = loadIfAddressable(builder, selfIt->second);
                        if (selfValue == nullptr) {
                            return nullptr;
                        }
                        llvm::Type* expectedSelfType = callee->getArg(0)->getType();
                        if (selfValue->getType() != expectedSelfType) {
                            if (!selfValue->getType()->isPointerTy() || !expectedSelfType->isPointerTy()) {
                                return nullptr;
                            }
                            selfValue = builder.CreateBitCast(selfValue, expectedSelfType);
                        }
                        args.push_back(selfValue);
                        argOffset = 1;
                    }

                    auto* argList = functionCall->args();
                    const std::size_t providedArgs = argList == nullptr ? 0 : argList->expression().size();
                    const std::size_t fixedArgCount = callee->arg_size() - argOffset;
                    if ((!callee->isVarArg() && providedArgs != fixedArgCount)
                        || (callee->isVarArg() && providedArgs < fixedArgCount)) {
                        return nullptr;
                    }

                    if (argList != nullptr) {
                        for (std::size_t index = 0; index < argList->expression().size(); ++index) {
                            llvm::Type* expectedType = nullptr;
                            llvm::Value* argValue = nullptr;
                            if (index < fixedArgCount) {
                                expectedType = callee->getArg(static_cast<unsigned>(index + argOffset))->getType();
                                argValue = lowerExpressionForExpectedType(builder, argList->expression(index), expectedType, values);
                            } else {
                                argValue = lowerExpressionValue(builder, argList->expression(index), values);
                                if (argValue == nullptr) {
                                    return nullptr;
                                }
                                expectedType = argValue->getType();
                                if (expectedType->isFloatTy()) {
                                    expectedType = llvm::Type::getDoubleTy(builder.getContext());
                                } else if (expectedType->isIntegerTy() && expectedType->getIntegerBitWidth() < 32) {
                                    expectedType = llvm::Type::getInt32Ty(builder.getContext());
                                }
                            }
                            if (argValue == nullptr) {
                                return nullptr;
                            }
                            if (argValue->getType() != expectedType) {
                                if (argValue->getType()->isIntegerTy() && expectedType->isIntegerTy()) {
                                    argValue = castToCommonInteger(builder, argValue, expectedType);
                                } else if (argValue->getType()->isPointerTy() && expectedType->isPointerTy()) {
                                    argValue = builder.CreateBitCast(argValue, expectedType);
                                }
                            }
                            if (argValue == nullptr || argValue->getType() != expectedType) {
                                return nullptr;
                            }
                            args.push_back(argValue);
                        }
                    }

                    return builder.CreateCall(callee, args);
                }
            }
        }
    }

    llvm::Function* callee = resolveApolloFunctionCallee(*module, functionCall, values);
    if (callee == nullptr) {
        const auto loweredIt = values.find(functionCall->ID()->getText());
        if (loweredIt != values.end()) {
            callee = llvm::dyn_cast<llvm::Function>(loweredIt->second.value);
        }
    }
    if (callee == nullptr) {
        callee = getKnownStdBridgeDeclaration(*module, functionCall->ID()->getText());
    }
    if (callee == nullptr) {
        const std::string sem = takeSemanticError();
        setSemanticError(sem.empty()
            ? ("unknown function `" + functionCall->ID()->getText() + "`")
            : sem);
        return nullptr;
    }

    std::vector<llvm::Value*> args;
    if (functionCall->args() != nullptr) {
        const auto& expressions = functionCall->args()->expression();
        const std::size_t fixedArgCount = callee->arg_size();
        if ((!callee->isVarArg() && expressions.size() != fixedArgCount)
            || (callee->isVarArg() && expressions.size() < fixedArgCount)) {
            return nullptr;
        }

        size_t index = 0;
        for (auto* expression : expressions) {
            llvm::Type* expectedType = nullptr;
            llvm::Value* argValue = nullptr;
            if (index < fixedArgCount) {
                expectedType = callee->getArg(index)->getType();
                argValue = lowerExpressionForExpectedType(builder, expression, expectedType, values);
            } else {
                argValue = lowerExpressionValue(builder, expression, values);
                if (argValue == nullptr) {
                    return nullptr;
                }
                expectedType = argValue->getType();
                if (expectedType->isFloatTy()) {
                    expectedType = llvm::Type::getDoubleTy(builder.getContext());
                } else if (expectedType->isIntegerTy() && expectedType->getIntegerBitWidth() < 32) {
                    expectedType = llvm::Type::getInt32Ty(builder.getContext());
                }
            }
            if (argValue == nullptr) {
                return nullptr;
            }

            if (argValue->getType() != expectedType) {
                if (!argValue->getType()->isIntegerTy() || !expectedType->isIntegerTy()) {
                    return nullptr;
                }
                argValue = castToCommonInteger(builder, argValue, expectedType);
            }
            if (argValue == nullptr || argValue->getType() != expectedType) {
                return nullptr;
            }

            args.push_back(argValue);
            ++index;
        }
    } else if (callee->arg_size() != 0) {
        return nullptr;
    }

    return builder.CreateCall(callee, args);
}

llvm::Value* lowerFunctionCallForExpectedType(llvm::IRBuilder<>& builder,
    compilerv1Parser::FunctionCallContext* functionCall,
    llvm::Type* expectedType,
    const LoweredValueMap& values) {
    if (functionCall == nullptr || functionCall->ID() == nullptr || expectedType == nullptr) {
        return nullptr;
    }

    if (llvm::Value* lowered = lowerFunctionCallValue(builder, functionCall, values)) {
        return lowered;
    }

    llvm::Module* module = builder.GetInsertBlock() != nullptr ? builder.GetInsertBlock()->getModule() : nullptr;
    if (module == nullptr) {
        return nullptr;
    }

    if (hasApolloFunctionFamily(*module, functionCall->ID()->getText())) {
        return nullptr;
    }

    if (getKnownStdBridgeDeclaration(*module, functionCall->ID()->getText()) == nullptr) {
        const std::string sem = takeSemanticError();
        setSemanticError(sem.empty()
            ? ("unknown function `" + functionCall->ID()->getText() + "`")
            : sem);
        return nullptr;
    }

    std::vector<llvm::Value*> args;
    std::vector<llvm::Type*> argTypes;
    if (functionCall->args() != nullptr) {
        for (auto* expression : functionCall->args()->expression()) {
            llvm::Value* argValue = lowerExpressionValue(builder, expression, values);
            if (argValue == nullptr) {
                return nullptr;
            }
            args.push_back(argValue);
            argTypes.push_back(argValue->getType());
        }
    }

    llvm::Function* callee = llvm::cast<llvm::Function>(module->getOrInsertFunction(
        functionCall->ID()->getText(),
        llvm::FunctionType::get(expectedType, argTypes, false)).getCallee());
    return builder.CreateCall(callee, args);
}

llvm::Value* lowerMemberAccessValue(llvm::IRBuilder<>& builder,
    compilerv1Parser::MemberaccessContext* memberAccess,
    const LoweredValueMap& values,
    bool loadReferences) {
    if (memberAccess == nullptr || memberAccess->accessBase() == nullptr) {
        return nullptr;
    }

    llvm::Module* module = builder.GetInsertBlock() != nullptr ? builder.GetInsertBlock()->getModule() : nullptr;
    if (module == nullptr) {
        return nullptr;
    }

    const std::string baseText = memberAccess->accessBase()->getText();
    std::string aggregateName = resolveAggregateTypeName(values, baseText);
    if (aggregateName.empty()) {
        const auto globalTypeIt = gGlobalTypeTexts.find(baseText);
        if (globalTypeIt != gGlobalTypeTexts.end()) {
            aggregateName = trimAggregateTypeName(globalTypeIt->second);
        }
    }

    if (baseText == "sys" && memberAccess->functionCall() != nullptr && memberAccess->functionCall()->ID() != nullptr) {
        const std::string resolvedName = "sys__" + memberAccess->functionCall()->ID()->getText();
        std::vector<std::string> inferredArgTypes;
        if (auto* argsCtx = memberAccess->functionCall()->args(); argsCtx != nullptr) {
            for (auto* expression : argsCtx->expression()) {
                inferredArgTypes.push_back(inferExpressionTypeText(expression, values));
            }
        }

        llvm::Function* callee = nullptr;
        const bool allArgsInferred = std::all_of(inferredArgTypes.begin(), inferredArgTypes.end(), [](const std::string& typeText) {
            return !typeText.empty();
        });
        if (allArgsInferred) {
            callee = module->getFunction(buildApolloOverloadName(resolvedName, inferredArgTypes));
        }
        if (callee == nullptr) {
            callee = module->getFunction(resolvedName);
        }
        if (callee == nullptr) {
            callee = getKnownStdBridgeDeclaration(*module, resolvedName);
        }
        if (callee == nullptr) {
            return nullptr;
        }

        std::vector<llvm::Value*> args;
        if (auto* argList = memberAccess->functionCall()->args(); argList != nullptr) {
            const auto& expressions = argList->expression();
            const std::size_t fixedArgCount = callee->arg_size();
            if ((!callee->isVarArg() && expressions.size() != fixedArgCount)
                || (callee->isVarArg() && expressions.size() < fixedArgCount)) {
                return nullptr;
            }

            for (std::size_t index = 0; index < expressions.size(); ++index) {
                llvm::Type* expectedType = nullptr;
                llvm::Value* argValue = nullptr;
                if (index < fixedArgCount) {
                    expectedType = callee->getArg(static_cast<unsigned>(index))->getType();
                    argValue = lowerExpressionForExpectedType(builder, expressions[index], expectedType, values);
                } else {
                    argValue = lowerExpressionValue(builder, expressions[index], values);
                    if (argValue == nullptr) {
                        return nullptr;
                    }
                    expectedType = argValue->getType();
                    if (expectedType->isFloatTy()) {
                        expectedType = llvm::Type::getDoubleTy(builder.getContext());
                    } else if (expectedType->isIntegerTy() && expectedType->getIntegerBitWidth() < 32) {
                        expectedType = llvm::Type::getInt32Ty(builder.getContext());
                    }
                }
                if (argValue == nullptr) {
                    return nullptr;
                }
                if (argValue->getType() != expectedType) {
                    if (!argValue->getType()->isIntegerTy() || !expectedType->isIntegerTy()) {
                        return nullptr;
                    }
                    argValue = castToCommonInteger(builder, argValue, expectedType);
                }
                if (argValue == nullptr || argValue->getType() != expectedType) {
                    return nullptr;
                }
                args.push_back(argValue);
            }
        } else if (callee->arg_size() != 0) {
            return nullptr;
        }

        return builder.CreateCall(callee, args);
    }

    llvm::Value* baseValue = nullptr;
    const auto valueIt = values.find(baseText);
    if (baseText == "indef") {
        const auto selfIt = values.find("indef");
        if (selfIt != values.end()) {
            baseValue = loadIfAddressable(builder, selfIt->second);
        }
    } else if (valueIt != values.end()) {
        baseValue = loadIfAddressable(builder, valueIt->second);
    } else if (gGuiWindowGlobals.contains(baseText)) {
        if (llvm::GlobalVariable* global = module->getNamedGlobal(baseText)) {
            baseValue = builder.CreateLoad(global->getValueType(), global);
        }
    }

    const bool isGuiWindowBase = (valueIt != values.end() && canonicalApolloTypeText(valueIt->second.typeText) == "rdwindow")
        || gGuiWindowGlobals.contains(baseText);
    const bool isFileBase = valueIt != values.end() && canonicalApolloTypeText(valueIt->second.typeText) == "file";

    if (isFileBase && memberAccess->functionCall() != nullptr && memberAccess->functionCall()->ID() != nullptr) {
        if (baseValue == nullptr) {
            return nullptr;
        }

        llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(builder.getContext());
        llvm::Type* charPtrTy = llvm::PointerType::getUnqual(builder.getContext());
        if (baseValue->getType() != opaquePtrTy) {
            if (!baseValue->getType()->isPointerTy()) {
                return nullptr;
            }
            baseValue = builder.CreateBitCast(baseValue, opaquePtrTy);
        }

        const std::string methodName = memberAccess->functionCall()->ID()->getText();
        auto* argList = memberAccess->functionCall()->args();

        if (methodName == "write") {
            if (argList == nullptr || argList->expression().size() != 1) {
                return nullptr;
            }
            llvm::Value* text = lowerExpressionForExpectedType(builder, argList->expression(0), charPtrTy, values);
            if (text == nullptr) {
                return nullptr;
            }
            llvm::FunctionCallee callee = module->getOrInsertFunction(
                "sys__native_file_write",
                llvm::FunctionType::get(llvm::Type::getInt32Ty(builder.getContext()), {opaquePtrTy, charPtrTy}, false));
            return builder.CreateCall(callee, {baseValue, text});
        }

        if (methodName == "read" || methodName == "read_all") {
            const std::size_t argCount = argList == nullptr ? 0 : argList->expression().size();
            if (argCount != 0) {
                return nullptr;
            }
            llvm::FunctionCallee callee = module->getOrInsertFunction(
                "sys__native_file_read_all",
                llvm::FunctionType::get(charPtrTy, {opaquePtrTy}, false));
            return builder.CreateCall(callee, {baseValue});
        }

        if (methodName == "close" || methodName == "fclose") {
            const std::size_t argCount = argList == nullptr ? 0 : argList->expression().size();
            if (argCount != 0) {
                return nullptr;
            }
            llvm::FunctionCallee callee = module->getOrInsertFunction(
                "sys__native_file_close",
                llvm::FunctionType::get(llvm::Type::getInt32Ty(builder.getContext()), {opaquePtrTy}, false));
            return builder.CreateCall(callee, {baseValue});
        }

        return nullptr;
    }

    if (isGuiWindowBase && memberAccess->functionCall() != nullptr && memberAccess->functionCall()->ID() != nullptr) {
        if (baseValue == nullptr) {
            return nullptr;
        }

        llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(builder.getContext());
        if (baseValue->getType() != opaquePtrTy) {
            if (!baseValue->getType()->isPointerTy()) {
                return nullptr;
            }
            baseValue = builder.CreateBitCast(baseValue, opaquePtrTy);
        }

        const std::string methodName = memberAccess->functionCall()->ID()->getText();
        auto* argList = memberAccess->functionCall()->args();
        llvm::Type* charPtrTy = llvm::PointerType::getUnqual(builder.getContext());

        if (methodName == "show" || methodName == "hide") {
            const std::size_t argCount = argList == nullptr ? 0 : argList->expression().size();
            if (argCount != 0) {
                return nullptr;
            }

            llvm::FunctionCallee callee = module->getOrInsertFunction(
                methodName == "show" ? "apollo_gui_window_show" : "apollo_gui_window_hide",
                llvm::FunctionType::get(llvm::Type::getVoidTy(builder.getContext()), {opaquePtrTy}, false));
            return builder.CreateCall(callee, {baseValue});
        }

        if (methodName == "render") {
            if (argList == nullptr || argList->expression().size() != 4) {
                return nullptr;
            }

            llvm::Value* objectName = lowerExpressionForExpectedType(builder, argList->expression(0), charPtrTy, values);
            llvm::Value* imagePath = lowerExpressionForExpectedType(builder, argList->expression(1), charPtrTy, values);
            llvm::Value* x = lowerExpressionForExpectedType(builder, argList->expression(2), llvm::Type::getInt32Ty(builder.getContext()), values);
            llvm::Value* y = lowerExpressionForExpectedType(builder, argList->expression(3), llvm::Type::getInt32Ty(builder.getContext()), values);
            if (objectName == nullptr || imagePath == nullptr || x == nullptr || y == nullptr) {
                return nullptr;
            }

            llvm::FunctionCallee callee = module->getOrInsertFunction(
                "apollo_gui_window_render",
                llvm::FunctionType::get(llvm::Type::getVoidTy(builder.getContext()), {opaquePtrTy, charPtrTy, charPtrTy, llvm::Type::getInt32Ty(builder.getContext()), llvm::Type::getInt32Ty(builder.getContext())}, false));
            return builder.CreateCall(callee, {baseValue, objectName, imagePath, x, y});
        }

        return nullptr;
    }

    if (aggregateName.empty() || gActiveAggregateRegistry == nullptr) {
        return nullptr;
    }

    if (memberAccess->functionCall() != nullptr && memberAccess->functionCall()->ID() != nullptr) {
        const AggregateMethodRecord* method = findAggregateMethod(*gActiveAggregateRegistry, aggregateName, memberAccess->functionCall()->ID()->getText());
        if (method == nullptr) {
            return nullptr;
        }

        llvm::Function* callee = module->getFunction(method->loweredName);
        if (callee == nullptr) {
            return nullptr;
        }

        std::vector<llvm::Value*> args;
        std::size_t argOffset = 0;
        if (!method->isStatic) {
            if (baseValue == nullptr) {
                return nullptr;
            }
            llvm::Type* expectedSelfType = callee->getArg(0)->getType();
            llvm::Value* selfValue = baseValue;
            if (selfValue->getType() != expectedSelfType) {
                if (!selfValue->getType()->isPointerTy() || !expectedSelfType->isPointerTy()) {
                    return nullptr;
                }
                selfValue = builder.CreateBitCast(selfValue, expectedSelfType);
            }
            args.push_back(selfValue);
            argOffset = 1;
        }

        auto* argList = memberAccess->functionCall()->args();
        const std::size_t providedArgs = argList == nullptr ? 0 : argList->expression().size();
        const std::size_t fixedArgCount = callee->arg_size() - argOffset;
        if ((!callee->isVarArg() && providedArgs != fixedArgCount)
            || (callee->isVarArg() && providedArgs < fixedArgCount)) {
            return nullptr;
        }

        if (argList != nullptr) {
            for (std::size_t index = 0; index < argList->expression().size(); ++index) {
                llvm::Type* expectedType = nullptr;
                llvm::Value* argValue = nullptr;
                if (index < fixedArgCount) {
                    expectedType = callee->getArg(static_cast<unsigned>(index + argOffset))->getType();
                    argValue = lowerExpressionForExpectedType(builder, argList->expression(index), expectedType, values);
                } else {
                    argValue = lowerExpressionValue(builder, argList->expression(index), values);
                    if (argValue == nullptr) {
                        return nullptr;
                    }
                    expectedType = argValue->getType();
                    if (expectedType->isFloatTy()) {
                        expectedType = llvm::Type::getDoubleTy(builder.getContext());
                    } else if (expectedType->isIntegerTy() && expectedType->getIntegerBitWidth() < 32) {
                        expectedType = llvm::Type::getInt32Ty(builder.getContext());
                    }
                }
                if (argValue == nullptr) {
                    return nullptr;
                }
                if (argValue->getType() != expectedType) {
                    if (argValue->getType()->isIntegerTy() && expectedType->isIntegerTy()) {
                        argValue = castToCommonInteger(builder, argValue, expectedType);
                    } else if (argValue->getType()->isPointerTy() && expectedType->isPointerTy()) {
                        argValue = builder.CreateBitCast(argValue, expectedType);
                    }
                }
                if (argValue == nullptr || argValue->getType() != expectedType) {
                    return nullptr;
                }
                args.push_back(argValue);
            }
        }

        return builder.CreateCall(callee, args);
    }

    if (memberAccess->ID() == nullptr || baseValue == nullptr) {
        return nullptr;
    }

    llvm::Value* fieldAddress = lowerAggregateFieldAddress(builder, baseValue, aggregateName, memberAccess->ID()->getText(), *gActiveAggregateRegistry);
    if (fieldAddress == nullptr) {
        return nullptr;
    }

    if (!loadReferences) {
        return fieldAddress;
    }

    std::vector<AggregateFieldRecord> fields;
    if (!collectAggregateFields(*gActiveAggregateRegistry, aggregateName, fields)) {
        return nullptr;
    }
    for (const auto& field : fields) {
        if (field.name == memberAccess->ID()->getText()) {
            return builder.CreateLoad(lowerSourceTypeText(builder.getContext(), field.typeText), fieldAddress);
        }
    }
    return nullptr;
}

struct RuntimeInlineForeignCaptureValue {
    ApolloInlineForeignCapture capture;
    llvm::Value* argument = nullptr;
};

bool isRuntimeInlineForeignCaptureTypeSupported(std::string_view typeText) {
    return typeText == "str" || kPrimitiveIrTypes.contains(std::string(typeText));
}

bool collectRuntimeInlineForeignCaptureValues(llvm::IRBuilder<>& builder,
    const ApolloInlineForeignBlock& block,
    const LoweredValueMap& values,
    std::vector<RuntimeInlineForeignCaptureValue>& captures,
    std::string& unsupportedReason) {
    captures.clear();
    if (!block.executesAtRuntime || block.language != ApolloInlineForeignLanguage::Rust || gActiveAggregateRegistry == nullptr) {
        return true;
    }

    static const std::regex kMemberPattern(R"(\b([A-Za-z_][A-Za-z0-9_]*)\.([A-Za-z_][A-Za-z0-9_]*)\b)", std::regex::optimize);
    std::unordered_set<std::string> seen;
    for (std::sregex_iterator it(block.payload.begin(), block.payload.end(), kMemberPattern), end; it != end; ++it) {
        const std::string captureText = (*it)[0].str();
        if (!seen.insert(captureText).second) {
            continue;
        }

        const std::string baseName = (*it)[1].str();
        const std::string fieldName = (*it)[2].str();
        const auto valueIt = values.find(baseName);
        if (valueIt == values.end()) {
            continue;
        }

        const std::string aggregateName = resolveAggregateTypeName(values, baseName);
        if (aggregateName.empty()) {
            continue;
        }

        std::vector<AggregateFieldRecord> fields;
        if (!collectAggregateFields(*gActiveAggregateRegistry, aggregateName, fields)) {
            continue;
        }

        const auto fieldIt = std::find_if(fields.begin(), fields.end(), [&](const AggregateFieldRecord& field) {
            return field.name == fieldName;
        });
        if (fieldIt == fields.end()) {
            continue;
        }
        if (!isRuntimeInlineForeignCaptureTypeSupported(fieldIt->typeText)) {
            unsupportedReason = "inline-foreign-capture-type-not-runtime-safe:" + captureText + ":" + fieldIt->typeText;
            return false;
        }

        llvm::Value* baseValue = loadIfAddressable(builder, valueIt->second);
        if (baseValue == nullptr) {
            unsupportedReason = "inline-foreign-capture-base-load-failed:" + captureText;
            return false;
        }

        llvm::Value* fieldAddress = lowerAggregateFieldAddress(builder, baseValue, aggregateName, fieldName, *gActiveAggregateRegistry);
        if (fieldAddress == nullptr) {
            unsupportedReason = "inline-foreign-capture-field-address-failed:" + captureText;
            return false;
        }

        llvm::Type* fieldType = lowerSourceTypeText(builder.getContext(), fieldIt->typeText);
        if (fieldType == nullptr) {
            unsupportedReason = "inline-foreign-capture-type-lowering-failed:" + captureText + ":" + fieldIt->typeText;
            return false;
        }

        captures.push_back({
            ApolloInlineForeignCapture{captureText, "__apollo_capture_" + std::to_string(captures.size()), fieldIt->typeText},
            builder.CreateLoad(fieldType, fieldAddress)
        });
    }

    return true;
}

bool lowerRuntimeInlineForeignStatement(llvm::Module& module,
    llvm::IRBuilder<>& builder,
    const ApolloInlineForeignBlock& inlineForeign,
    const LoweredValueMap& values,
    std::string& unsupportedReason) {
    if (gActiveInlineForeignBlocks == nullptr || gActiveInlineForeignSourcePath == nullptr || gActiveInlineForeignOutputPath == nullptr) {
        unsupportedReason = "missing-inline-foreign-context";
        return false;
    }

    std::vector<RuntimeInlineForeignCaptureValue> captures;
    if (!collectRuntimeInlineForeignCaptureValues(builder, inlineForeign, values, captures, unsupportedReason)) {
        return false;
    }

    std::vector<ApolloInlineForeignCapture> captureSpecs;
    std::vector<llvm::Value*> captureArgs;
    captureSpecs.reserve(captures.size());
    captureArgs.reserve(captures.size());
    for (const auto& capture : captures) {
        captureSpecs.push_back(capture.capture);
        captureArgs.push_back(capture.argument);
    }

    ensureRuntimeInlineForeignModule(module,
        *gActiveInlineForeignSourcePath,
        *gActiveInlineForeignOutputPath,
        inlineForeign,
        *gActiveInlineForeignBlocks,
        captureSpecs);

    llvm::Function* runner = module.getFunction(inlineForeign.runnerName);
    if (runner == nullptr) {
        unsupportedReason = "missing-inline-foreign-runner:" + inlineForeign.runnerName;
        return false;
    }
    if (runner->arg_size() != captureArgs.size()) {
        unsupportedReason = "inline-foreign-runner-arity-mismatch:" + inlineForeign.runnerName;
        return false;
    }

    for (std::size_t index = 0; index < captureArgs.size(); ++index) {
        llvm::Type* expectedType = runner->getArg(static_cast<unsigned>(index))->getType();
        if (captureArgs[index] == nullptr) {
            unsupportedReason = "inline-foreign-capture-arg-missing:" + std::to_string(index);
            return false;
        }
        if (captureArgs[index]->getType() != expectedType) {
            if (captureArgs[index]->getType()->isIntegerTy() && expectedType->isIntegerTy()) {
                captureArgs[index] = castToCommonInteger(builder, captureArgs[index], expectedType);
            } else if (captureArgs[index]->getType()->isPointerTy() && expectedType->isPointerTy()) {
                captureArgs[index] = builder.CreateBitCast(captureArgs[index], expectedType);
            }
        }
        if (captureArgs[index] == nullptr || captureArgs[index]->getType() != expectedType) {
            unsupportedReason = "inline-foreign-capture-cast-failed:" + std::to_string(index);
            return false;
        }
    }

    builder.CreateCall(runner, captureArgs);
    return true;
}

llvm::Value* lowerCastValue(llvm::IRBuilder<>& builder,
    compilerv1Parser::CastExprContext* castExpr,
    const LoweredValueMap& values) {
    if (castExpr == nullptr || castExpr->castType() == nullptr || castExpr->castType()->typeRef() == nullptr || castExpr->primary() == nullptr) {
        return nullptr;
    }

    llvm::Type* targetType = lowerTypeRef(builder.getContext(), castExpr->castType()->typeRef());
    llvm::Value* sourceValue = lowerPrimaryValue(builder, castExpr->primary(), values, true);
    if (targetType == nullptr || sourceValue == nullptr) {
        return nullptr;
    }
    if (sourceValue->getType() == targetType) {
        return sourceValue;
    }
    if (sourceValue->getType()->isIntegerTy() && targetType->isIntegerTy()) {
        return castToCommonInteger(builder, sourceValue, targetType);
    }
    return nullptr;
}

bool isApolloTypeText(const std::string& actual, std::string_view expected) {
    return actual == expected;
}

bool extractCompositeLiteralParts(compilerv1Parser::ExpressionContext* expression,
    compilerv1Parser::ExpressionContext*& first,
    compilerv1Parser::ExpressionContext*& second) {
    first = nullptr;
    second = nullptr;
    antlr4::ParserRuleContext* current = expression;
    while (current != nullptr) {
        if (auto* expr = dynamic_cast<compilerv1Parser::ExpressionContext*>(current)) {
            if (!expr->expression().empty()) {
                return false;
            }
            current = expr->orExpr();
            continue;
        }
        if (auto* orExpr = dynamic_cast<compilerv1Parser::OrExprContext*>(current)) {
            if (orExpr->andExpr().size() != 1) {
                return false;
            }
            current = orExpr->andExpr(0);
            continue;
        }
        if (auto* andExpr = dynamic_cast<compilerv1Parser::AndExprContext*>(current)) {
            if (andExpr->bitwiseOrExpr().size() != 1) {
                return false;
            }
            current = andExpr->bitwiseOrExpr(0);
            continue;
        }
        if (auto* bitwiseOrExpr = dynamic_cast<compilerv1Parser::BitwiseOrExprContext*>(current)) {
            if (bitwiseOrExpr->bitwiseXorExpr().size() != 1) {
                return false;
            }
            current = bitwiseOrExpr->bitwiseXorExpr(0);
            continue;
        }
        if (auto* bitwiseXorExpr = dynamic_cast<compilerv1Parser::BitwiseXorExprContext*>(current)) {
            if (bitwiseXorExpr->bitwiseAndExpr().size() != 1) {
                return false;
            }
            current = bitwiseXorExpr->bitwiseAndExpr(0);
            continue;
        }
        if (auto* bitwiseAndExpr = dynamic_cast<compilerv1Parser::BitwiseAndExprContext*>(current)) {
            if (bitwiseAndExpr->equalityExpr().size() != 1) {
                return false;
            }
            current = bitwiseAndExpr->equalityExpr(0);
            continue;
        }
        if (auto* equalityExpr = dynamic_cast<compilerv1Parser::EqualityExprContext*>(current)) {
            if (equalityExpr->shiftExpr().size() != 1) {
                return false;
            }
            current = equalityExpr->shiftExpr(0);
            continue;
        }
        if (auto* shiftExpr = dynamic_cast<compilerv1Parser::ShiftExprContext*>(current)) {
            if (shiftExpr->relationalExpr().size() != 1) {
                return false;
            }
            current = shiftExpr->relationalExpr(0);
            continue;
        }
        if (auto* relationalExpr = dynamic_cast<compilerv1Parser::RelationalExprContext*>(current)) {
            if (relationalExpr->addExpr().size() != 1) {
                return false;
            }
            current = relationalExpr->addExpr(0);
            continue;
        }
        if (auto* addExpr = dynamic_cast<compilerv1Parser::AddExprContext*>(current)) {
            if (addExpr->multExpr().size() != 1) {
                return false;
            }
            current = addExpr->multExpr(0);
            continue;
        }
        if (auto* multExpr = dynamic_cast<compilerv1Parser::MultExprContext*>(current)) {
            if (multExpr->primary().size() != 1) {
                return false;
            }
            current = multExpr->primary(0);
            continue;
        }
        break;
    }

    auto* primary = dynamic_cast<compilerv1Parser::PrimaryContext*>(current);
    if (primary == nullptr || primary->compositeLiteral() == nullptr || primary->compositeLiteral()->expression().size() != 2) {
        return false;
    }
    first = primary->compositeLiteral()->expression(0);
    second = primary->compositeLiteral()->expression(1);
    return true;
}

llvm::Value* createOpaqueContainerDefault(llvm::Module& module,
    llvm::IRBuilder<>& builder,
    std::string_view typeText) {
    if (const std::string symbolStem = soaVectorSymbolStem(typeText); !symbolStem.empty()) {
        llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(module.getContext());
        llvm::FunctionCallee createDecl = module.getOrInsertFunction(
            symbolStem + "_create",
            llvm::FunctionType::get(opaquePtrTy, {}, false));
        return builder.CreateCall(createDecl);
    }
    if (typeText == "vector<str>") {
        return builder.CreateCall(getApolloVectorStrCreateDeclaration(module));
    }
    if (typeText == "vector<i32>") {
        return builder.CreateCall(getApolloVectorI32CreateDeclaration(module));
    }
    if (typeText == "hsh<str,i32>") {
        return builder.CreateCall(getApolloHashStrI32CreateDeclaration(module));
    }
    if (typeText == "unordered_map<i32,i32>" || typeText == "hsh<i32,i32>") {
        return builder.CreateCall(getApolloHashI32I32CreateDeclaration(module));
    }
    if (typeText == "hsh<hsh<i32,str>,hsh<str,i32>>") {
        return builder.CreateCall(getApolloNestedHashCreateDeclaration(module));
    }
    return nullptr;
}

llvm::Value* lowerIndexedAccessValue(llvm::IRBuilder<>& builder,
    compilerv1Parser::IndexedAccessContext* indexedAccess,
    const LoweredValueMap& values) {
    if (indexedAccess == nullptr || indexedAccess->ID() == nullptr) {
        return nullptr;
    }
    const auto it = values.find(indexedAccess->ID()->getText());
    if (it == values.end()) {
        return nullptr;
    }

    llvm::Module* module = builder.GetInsertBlock() != nullptr ? builder.GetInsertBlock()->getModule() : nullptr;
    if (module == nullptr) {
        return nullptr;
    }

    llvm::Value* handle = loadIfAddressable(builder, it->second);
    if (handle == nullptr) {
        return nullptr;
    }

    const auto& keys = indexedAccess->accessKey();
    if (handle->getType()->isStructTy() && keys.size() == 1 && keys[0] != nullptr && keys[0]->APND() == nullptr) {
        const auto constantIndex = extractConstantI32Index(keys[0]->expression());
        auto* structType = llvm::dyn_cast<llvm::StructType>(handle->getType());
        if (constantIndex.has_value() && structType != nullptr && *constantIndex < structType->getNumElements()) {
            return builder.CreateExtractValue(handle, {*constantIndex});
        }
    }

    if (isApolloTypeText(it->second.typeText, "hsh<str,i32>") && keys.size() == 1 && keys[0] != nullptr && keys[0]->APND() == nullptr) {
        llvm::Value* keyValue = lowerExpressionValue(builder, keys[0]->expression(), values);
        if (keyValue == nullptr) {
            return nullptr;
        }
        return builder.CreateCall(getApolloHashStrI32GetDeclaration(*module), {handle, keyValue});
    }

    if (isApolloTypeText(it->second.typeText, "vector<i32>") && keys.size() == 1 && keys[0] != nullptr && keys[0]->APND() == nullptr) {
        llvm::Value* indexValue = lowerI32IndexValue(builder, keys[0]->expression(), values);
        if (indexValue == nullptr) {
            return nullptr;
        }
        return builder.CreateCall(getApolloVectorI32GetDeclaration(*module), {handle, indexValue});
    }

    if ((isApolloTypeText(it->second.typeText, "unordered_map<i32,i32>") || isApolloTypeText(it->second.typeText, "hsh<i32,i32>"))
        && keys.size() == 1 && keys[0] != nullptr && keys[0]->APND() == nullptr) {
        llvm::Value* keyValue = lowerI32IndexValue(builder, keys[0]->expression(), values);
        if (keyValue == nullptr) {
            return nullptr;
        }
        return builder.CreateCall(getApolloHashI32I32GetDeclaration(*module), {handle, keyValue});
    }

    if (const std::string symbolStem = soaVectorSymbolStem(it->second.typeText);
        !symbolStem.empty() && keys.size() == 1 && keys[0] != nullptr && keys[0]->APND() == nullptr) {
        llvm::Value* indexValue = lowerI32IndexValue(builder, keys[0]->expression(), values);
        llvm::Type* elementType = lowerSoaVectorElementType(builder.getContext(), it->second.typeText);
        if (indexValue == nullptr || elementType == nullptr) {
            return nullptr;
        }
        llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(builder.getContext());
        llvm::FunctionCallee getDecl = module->getOrInsertFunction(
            symbolStem + "_get",
            llvm::FunctionType::get(elementType, {opaquePtrTy, llvm::Type::getInt32Ty(builder.getContext())}, false));
        return builder.CreateCall(getDecl, {handle, indexValue});
    }

    if (isApolloTypeText(it->second.typeText, "hsh<hsh<i32,str>,hsh<str,i32>>") && keys.size() == 2 && keys[0] != nullptr && keys[1] != nullptr
        && keys[0]->APND() == nullptr && keys[1]->APND() == nullptr) {
        compilerv1Parser::ExpressionContext* tupleFirst = nullptr;
        compilerv1Parser::ExpressionContext* tupleSecond = nullptr;
        if (!extractCompositeLiteralParts(keys[0]->expression(), tupleFirst, tupleSecond)) {
            return nullptr;
        }

        llvm::Value* firstKey = lowerExpressionValue(builder, tupleFirst, values);
        llvm::Value* secondKey = lowerExpressionValue(builder, tupleSecond, values);
        llvm::Value* nestedKey = lowerExpressionValue(builder, keys[1]->expression(), values);
        if (firstKey == nullptr || secondKey == nullptr || nestedKey == nullptr) {
            return nullptr;
        }
        return builder.CreateCall(getApolloNestedHashGetDeclaration(*module), {handle, firstKey, secondKey, nestedKey});
    }

    return nullptr;
}

llvm::Value* lowerPrimaryValue(llvm::IRBuilder<>& builder,
    compilerv1Parser::PrimaryContext* primary,
    const LoweredValueMap& values,
    bool loadReferences) {
    if (primary == nullptr) {
        return nullptr;
    }

    if (primary->INT() != nullptr) {
        return llvm::ConstantInt::get(llvm::Type::getInt32Ty(builder.getContext()), std::stoll(primary->INT()->getText()), true);
    }
    if (primary->FLOAT() != nullptr) {
        return llvm::ConstantFP::get(llvm::Type::getDoubleTy(builder.getContext()), std::stod(primary->FLOAT()->getText()));
    }
    if (primary->unaryExpr() != nullptr) {
        auto* un = primary->unaryExpr();
        const std::string opText = un->children.empty() ? std::string() : un->children[0]->getText();
        if (opText == "*") {
            llvm::Value* pointerValue = lowerPointerOperandValue(builder, un->primary(), values);
            llvm::Type* pointeeType = lowerDereferenceResultType(builder.getContext(), un->primary(), values);
            if (pointerValue == nullptr || pointeeType == nullptr || !pointerValue->getType()->isPointerTy()) {
                return nullptr;
            }
            return builder.CreateLoad(pointeeType, pointerValue);
        }

        llvm::Value* inner = lowerPrimaryValue(builder, un->primary(), values, true);
        if (inner == nullptr) {
            return nullptr;
        }
        if (opText == "+") {
            return inner;
        }
        if (opText == "-") {
            if (inner->getType()->isFloatingPointTy()) {
                return builder.CreateFNeg(inner);
            }
            return builder.CreateNeg(inner);
        }
        if (opText == "!") {
            // Boolean-style logical not: compare against zero, then negate.
            llvm::Value* asBool = inner;
            if (inner->getType()->isIntegerTy() && inner->getType()->getIntegerBitWidth() > 1) {
                asBool = builder.CreateICmpNE(inner, llvm::ConstantInt::get(inner->getType(), 0));
            } else if (inner->getType()->isFloatingPointTy()) {
                asBool = builder.CreateFCmpONE(inner, llvm::ConstantFP::get(inner->getType(), 0.0));
            }
            return builder.CreateNot(asBool);
        }
        return nullptr;
    }
    if (primary->TRUE() != nullptr) {
        return llvm::ConstantInt::getTrue(builder.getContext());
    }
    if (primary->FALSE() != nullptr) {
        return llvm::ConstantInt::getFalse(builder.getContext());
    }
    if (primary->NULL_LITERAL() != nullptr) {
        return llvm::ConstantPointerNull::get(llvm::PointerType::getUnqual(builder.getContext()));
    }
    if (primary->CHAR() != nullptr) {
        const auto codepoint = decodeCharLiteralCodepoint(primary->CHAR()->getText());
        if (!codepoint.has_value()) {
            return nullptr;
        }
        return llvm::ConstantInt::get(llvm::Type::getInt32Ty(builder.getContext()), *codepoint);
    }
    if (primary->BYTE() != nullptr) {
        const auto byteValue = decodeByteLiteralValue(primary->BYTE()->getText());
        if (!byteValue.has_value()) {
            return nullptr;
        }
        return llvm::ConstantInt::get(llvm::Type::getInt8Ty(builder.getContext()), *byteValue);
    }
    if (primary->STRING() != nullptr) {
        return lowerInterpolatedStringValue(builder, primary->STRING()->getText(), values, false);
    }
    if (primary->templateString() != nullptr && primary->templateString()->TEMPLATE_STRING() != nullptr) {
        return lowerInterpolatedStringValue(builder, primary->templateString()->TEMPLATE_STRING()->getText(), values, true);
    }
    if (primary->stdinValue() != nullptr) {
        return builder.CreateCall(getApolloStdinReadLineFunction(*builder.GetInsertBlock()->getModule()));
    }
    if (primary->enumConstructor() != nullptr) {
        return lowerEnumConstructorValue(builder, primary->enumConstructor(), values);
    }
    if (primary->functionCall() != nullptr) {
        return lowerFunctionCallValue(builder, primary->functionCall(), values);
    }
    if (primary->memberaccess() != nullptr) {
        return lowerMemberAccessValue(builder, primary->memberaccess(), values, loadReferences);
    }
    if (primary->castExpr() != nullptr) {
        return lowerCastValue(builder, primary->castExpr(), values);
    }
    if (primary->indexedAccess() != nullptr) {
        return lowerIndexedAccessValue(builder, primary->indexedAccess(), values);
    }
    if (primary->braceInitializer() != nullptr) {
        if (llvm::Value* structuralValue = lowerStructuralBraceValue(builder, primary->braceInitializer(), values)) {
            return structuralValue;
        }
    }
    if (primary->instanceValue() != nullptr) {
        return lowerConstructedInstanceValue(builder, primary->instanceValue(), values);
    }
    if (primary->borrowExpr() != nullptr && primary->borrowExpr()->ID() != nullptr) {
        const auto it = values.find(primary->borrowExpr()->ID()->getText());
        if (it == values.end()) {
            return nullptr;
        }
        if (isRawAddressBorrowExpr(primary->borrowExpr())) {
            return lowerCppStyleAddressValue(builder, it->second);
        }
        if (!loadReferences) {
            if (it->second.address != nullptr) {
                return it->second.address;
            }
            return it->second.value;
        }
        return loadIfAddressable(builder, it->second);
    }
    if (primary->ID() != nullptr) {
        const auto it = values.find(primary->ID()->getText());
        if (it == values.end()) {
            return nullptr;
        }
        if (!loadReferences) {
            if (it->second.address != nullptr) {
                return it->second.address;
            }
            return it->second.value;
        }
        return loadIfAddressable(builder, it->second);
    }
    if (primary->expression() != nullptr) {
        return lowerExpressionValue(builder, primary->expression(), values, loadReferences);
    }
    return nullptr;
}

llvm::Value* castToCommonInteger(llvm::IRBuilder<>& builder, llvm::Value* value, llvm::Type* targetType) {
    if (value == nullptr || targetType == nullptr) {
        return nullptr;
    }
    if (value->getType() == targetType) {
        return value;
    }
    if (!value->getType()->isIntegerTy() || !targetType->isIntegerTy()) {
        return nullptr;
    }
    const unsigned sourceBits = value->getType()->getIntegerBitWidth();
    const unsigned targetBits = targetType->getIntegerBitWidth();
    if (sourceBits < targetBits) {
        return builder.CreateSExt(value, targetType);
    }
    if (sourceBits > targetBits) {
        return builder.CreateTrunc(value, targetType);
    }
    return value;
}

llvm::Value* lowerBinaryIntegerOperation(llvm::IRBuilder<>& builder,
    llvm::Value* left,
    llvm::Value* right,
    std::string_view op) {
    if (left == nullptr || right == nullptr || !left->getType()->isIntegerTy() || !right->getType()->isIntegerTy()) {
        return nullptr;
    }

    llvm::Type* commonType = left->getType();
    if (right->getType()->isIntegerTy() && right->getType()->getIntegerBitWidth() > left->getType()->getIntegerBitWidth()) {
        commonType = right->getType();
    }
    left = castToCommonInteger(builder, left, commonType);
    right = castToCommonInteger(builder, right, commonType);
    if (left == nullptr || right == nullptr) {
        return nullptr;
    }

    if (op == "+") {
        return builder.CreateAdd(left, right);
    }
    if (op == "-") {
        return builder.CreateSub(left, right);
    }
    if (op == "*") {
        return builder.CreateMul(left, right);
    }
    if (op == "/") {
        return builder.CreateSDiv(left, right);
    }
    if (op == "%") {
        return builder.CreateSRem(left, right);
    }
    if (op == "<") {
        return builder.CreateICmpSLT(left, right);
    }
    if (op == ">") {
        return builder.CreateICmpSGT(left, right);
    }
    if (op == "<=") {
        return builder.CreateICmpSLE(left, right);
    }
    if (op == ">=") {
        return builder.CreateICmpSGE(left, right);
    }
    if (op == "==") {
        return builder.CreateICmpEQ(left, right);
    }
    if (op == "!=") {
        return builder.CreateICmpNE(left, right);
    }
    if (op == "<<") {
        return builder.CreateShl(left, right);
    }
    if (op == ">>") {
        return builder.CreateAShr(left, right);
    }
    if (op == "|") {
        return builder.CreateOr(left, right);
    }
    if (op == "&") {
        return builder.CreateAnd(left, right);
    }
    if (op == "^") {
        return builder.CreateXor(left, right);
    }
    return nullptr;
}

llvm::Value* lowerBinaryFloatingOperation(llvm::IRBuilder<>& builder,
    llvm::Value* left,
    llvm::Value* right,
    std::string_view op) {
    if (left == nullptr || right == nullptr) {
        return nullptr;
    }
    const bool leftFloat = left->getType()->isFloatingPointTy();
    const bool rightFloat = right->getType()->isFloatingPointTy();
    const bool leftInt = left->getType()->isIntegerTy();
    const bool rightInt = right->getType()->isIntegerTy();
    if ((!leftFloat && !leftInt) || (!rightFloat && !rightInt) || (!leftFloat && !rightFloat)) {
        return nullptr;
    }

    llvm::Type* commonType = leftFloat ? left->getType() : right->getType();
    if (leftFloat && rightFloat && left->getType()->getPrimitiveSizeInBits() < right->getType()->getPrimitiveSizeInBits()) {
        commonType = right->getType();
    }

    auto castNumericToFloat = [&](llvm::Value* value) -> llvm::Value* {
        if (value->getType() == commonType) {
            return value;
        }
        if (value->getType()->isIntegerTy()) {
            return builder.CreateSIToFP(value, commonType);
        }
        if (!value->getType()->isFloatingPointTy()) {
            return nullptr;
        }
        if (value->getType()->getPrimitiveSizeInBits() < commonType->getPrimitiveSizeInBits()) {
            return builder.CreateFPExt(value, commonType);
        }
        if (value->getType()->getPrimitiveSizeInBits() > commonType->getPrimitiveSizeInBits()) {
            return builder.CreateFPTrunc(value, commonType);
        }
        return value;
    };

    left = castNumericToFloat(left);
    right = castNumericToFloat(right);
    if (left == nullptr || right == nullptr) {
        return nullptr;
    }

    if (op == "+") {
        return builder.CreateFAdd(left, right);
    }
    if (op == "-") {
        return builder.CreateFSub(left, right);
    }
    if (op == "*") {
        return builder.CreateFMul(left, right);
    }
    if (op == "/") {
        return builder.CreateFDiv(left, right);
    }
    if (op == "%") {
        return builder.CreateFRem(left, right);
    }
    if (op == "<") {
        return builder.CreateFCmpOLT(left, right);
    }
    if (op == ">") {
        return builder.CreateFCmpOGT(left, right);
    }
    if (op == "<=") {
        return builder.CreateFCmpOLE(left, right);
    }
    if (op == ">=") {
        return builder.CreateFCmpOGE(left, right);
    }
    if (op == "==") {
        return builder.CreateFCmpOEQ(left, right);
    }
    if (op == "!=") {
        return builder.CreateFCmpONE(left, right);
    }
    return nullptr;
}

llvm::Value* lowerExpressionValue(llvm::IRBuilder<>& builder,
    antlr4::ParserRuleContext* expression,
    const LoweredValueMap& values,
    bool loadReferences) {
    if (expression == nullptr) {
        return nullptr;
    }

    if (auto* expr = dynamic_cast<compilerv1Parser::ExpressionContext*>(expression)) {
        if (expr->expression().size() == 2) {
            llvm::Value* condition = lowerExpressionValue(builder, expr->orExpr(), values, loadReferences);
            llvm::Value* whenTrue = lowerExpressionValue(builder, expr->expression(0), values, loadReferences);
            llvm::Value* whenFalse = lowerExpressionValue(builder, expr->expression(1), values, loadReferences);
            if (condition == nullptr || whenTrue == nullptr || whenFalse == nullptr || !condition->getType()->isIntegerTy(1)) {
                return nullptr;
            }
            if (whenTrue->getType() != whenFalse->getType()) {
                if (!whenTrue->getType()->isIntegerTy() || !whenFalse->getType()->isIntegerTy()) {
                    return nullptr;
                }
                llvm::Type* commonType = whenTrue->getType()->getIntegerBitWidth() >= whenFalse->getType()->getIntegerBitWidth()
                    ? whenTrue->getType()
                    : whenFalse->getType();
                whenTrue = castToCommonInteger(builder, whenTrue, commonType);
                whenFalse = castToCommonInteger(builder, whenFalse, commonType);
            }
            if (whenTrue == nullptr || whenFalse == nullptr || whenTrue->getType() != whenFalse->getType()) {
                return nullptr;
            }
            return builder.CreateSelect(condition, whenTrue, whenFalse);
        }
        if (!expr->expression().empty()) {
            return nullptr;
        }
        return lowerExpressionValue(builder, expr->orExpr(), values, loadReferences);
    }
    if (auto* orExpr = dynamic_cast<compilerv1Parser::OrExprContext*>(expression)) {
        if (orExpr->andExpr().empty()) {
            return nullptr;
        }
        llvm::Value* value = lowerExpressionValue(builder, orExpr->andExpr(0), values, loadReferences);
        for (size_t index = 1; index < orExpr->andExpr().size(); ++index) {
            llvm::Value* rhs = lowerExpressionValue(builder, orExpr->andExpr(index), values, loadReferences);
            if (value == nullptr || rhs == nullptr || !value->getType()->isIntegerTy(1) || !rhs->getType()->isIntegerTy(1)) {
                return nullptr;
            }
            value = builder.CreateOr(value, rhs);
        }
        return value;
    }
    if (auto* andExpr = dynamic_cast<compilerv1Parser::AndExprContext*>(expression)) {
        if (andExpr->bitwiseOrExpr().empty()) {
            return nullptr;
        }
        llvm::Value* value = lowerExpressionValue(builder, andExpr->bitwiseOrExpr(0), values, loadReferences);
        for (size_t index = 1; index < andExpr->bitwiseOrExpr().size(); ++index) {
            llvm::Value* rhs = lowerExpressionValue(builder, andExpr->bitwiseOrExpr(index), values, loadReferences);
            if (value == nullptr || rhs == nullptr || !value->getType()->isIntegerTy(1) || !rhs->getType()->isIntegerTy(1)) {
                return nullptr;
            }
            value = builder.CreateAnd(value, rhs);
        }
        return value;
    }
    if (auto* bitwiseOrExpr = dynamic_cast<compilerv1Parser::BitwiseOrExprContext*>(expression)) {
        if (bitwiseOrExpr->bitwiseXorExpr().empty()) {
            return nullptr;
        }
        llvm::Value* value = lowerExpressionValue(builder, bitwiseOrExpr->bitwiseXorExpr(0), values, loadReferences);
        for (size_t index = 1; index < bitwiseOrExpr->bitwiseXorExpr().size(); ++index) {
            llvm::Value* rhs = lowerExpressionValue(builder, bitwiseOrExpr->bitwiseXorExpr(index), values, loadReferences);
            value = lowerBinaryIntegerOperation(builder, value, rhs, "|");
            if (value == nullptr) {
                return nullptr;
            }
        }
        return value;
    }
    if (auto* bitwiseXorExpr = dynamic_cast<compilerv1Parser::BitwiseXorExprContext*>(expression)) {
        if (bitwiseXorExpr->bitwiseAndExpr().empty()) {
            return nullptr;
        }
        llvm::Value* value = lowerExpressionValue(builder, bitwiseXorExpr->bitwiseAndExpr(0), values, loadReferences);
        for (size_t index = 1; index < bitwiseXorExpr->bitwiseAndExpr().size(); ++index) {
            llvm::Value* rhs = lowerExpressionValue(builder, bitwiseXorExpr->bitwiseAndExpr(index), values, loadReferences);
            value = lowerBinaryIntegerOperation(builder, value, rhs, "^");
            if (value == nullptr) {
                return nullptr;
            }
        }
        return value;
    }
    if (auto* bitwiseAndExpr = dynamic_cast<compilerv1Parser::BitwiseAndExprContext*>(expression)) {
        if (bitwiseAndExpr->equalityExpr().empty()) {
            return nullptr;
        }
        llvm::Value* value = lowerExpressionValue(builder, bitwiseAndExpr->equalityExpr(0), values, loadReferences);
        for (size_t index = 1; index < bitwiseAndExpr->equalityExpr().size(); ++index) {
            llvm::Value* rhs = lowerExpressionValue(builder, bitwiseAndExpr->equalityExpr(index), values, loadReferences);
            value = lowerBinaryIntegerOperation(builder, value, rhs, "&");
            if (value == nullptr) {
                return nullptr;
            }
        }
        return value;
    }
    if (auto* equalityExpr = dynamic_cast<compilerv1Parser::EqualityExprContext*>(expression)) {
        if (equalityExpr->shiftExpr().empty()) {
            return nullptr;
        }
        llvm::Value* value = lowerExpressionValue(builder, equalityExpr->shiftExpr(0), values, loadReferences);
        for (size_t index = 1; index < equalityExpr->shiftExpr().size(); ++index) {
            llvm::Value* rhs = lowerExpressionValue(builder, equalityExpr->shiftExpr(index), values, loadReferences);
            const std::string op = equalityExpr->children[index * 2 - 1]->getText();
            const bool stringLikeComparison = (op == "==" || op == "!=")
                && value != nullptr && rhs != nullptr
                && value->getType()->isPointerTy() && rhs->getType()->isPointerTy()
                && (isStringLikeComparisonOperand(equalityExpr->shiftExpr(index - 1), values)
                    || isStringLikeComparisonOperand(equalityExpr->shiftExpr(index), values));
            if (stringLikeComparison) {
                llvm::Module* module = builder.GetInsertBlock() != nullptr ? builder.GetInsertBlock()->getModule() : nullptr;
                if (module == nullptr) {
                    return nullptr;
                }
                llvm::Type* charPtrTy = llvm::PointerType::getUnqual(builder.getContext());
                if (value->getType() != charPtrTy) {
                    value = builder.CreateBitCast(value, charPtrTy);
                }
                if (rhs->getType() != charPtrTy) {
                    rhs = builder.CreateBitCast(rhs, charPtrTy);
                }
                llvm::Value* cmp = builder.CreateCall(getApolloStringCompareDeclaration(*module), {value, rhs});
                value = op == "=="
                    ? builder.CreateICmpEQ(cmp, llvm::ConstantInt::get(cmp->getType(), 0))
                    : builder.CreateICmpNE(cmp, llvm::ConstantInt::get(cmp->getType(), 0));
            } else {
                llvm::Value* lhs = value;
                value = lowerBinaryIntegerOperation(builder, lhs, rhs, op);
                if (value == nullptr) {
                    value = lowerBinaryFloatingOperation(builder, lhs, rhs, op);
                }
            }
            if (value == nullptr) {
                return nullptr;
            }
        }
        return value;
    }
    if (auto* shiftExpr = dynamic_cast<compilerv1Parser::ShiftExprContext*>(expression)) {
        if (shiftExpr->relationalExpr().empty()) {
            return nullptr;
        }
        llvm::Value* value = lowerExpressionValue(builder, shiftExpr->relationalExpr(0), values, loadReferences);
        for (size_t index = 1; index < shiftExpr->relationalExpr().size(); ++index) {
            llvm::Value* rhs = lowerExpressionValue(builder, shiftExpr->relationalExpr(index), values, loadReferences);
            value = lowerBinaryIntegerOperation(builder, value, rhs, shiftExpr->children[index * 2 - 1]->getText());
            if (value == nullptr) {
                return nullptr;
            }
        }
        return value;
    }
    if (auto* relationalExpr = dynamic_cast<compilerv1Parser::RelationalExprContext*>(expression)) {
        if (relationalExpr->addExpr().empty()) {
            return nullptr;
        }
        llvm::Value* value = lowerExpressionValue(builder, relationalExpr->addExpr(0), values, loadReferences);
        for (size_t index = 1; index < relationalExpr->addExpr().size(); ++index) {
            llvm::Value* rhs = lowerExpressionValue(builder, relationalExpr->addExpr(index), values, loadReferences);
            llvm::Value* lhs = value;
            value = lowerBinaryIntegerOperation(builder, lhs, rhs, relationalExpr->children[index * 2 - 1]->getText());
            if (value == nullptr) {
                value = lowerBinaryFloatingOperation(builder, lhs, rhs, relationalExpr->children[index * 2 - 1]->getText());
            }
            if (value == nullptr) {
                return nullptr;
            }
        }
        return value;
    }
    if (auto* addExpr = dynamic_cast<compilerv1Parser::AddExprContext*>(expression)) {
        if (addExpr->multExpr().empty()) {
            return nullptr;
        }
        llvm::Value* value = lowerExpressionValue(builder, addExpr->multExpr(0), values, loadReferences);
        for (size_t index = 1; index < addExpr->multExpr().size(); ++index) {
            llvm::Value* rhs = lowerExpressionValue(builder, addExpr->multExpr(index), values, loadReferences);
            llvm::Value* lhs = value;
            value = lowerBinaryIntegerOperation(builder, lhs, rhs, addExpr->children[index * 2 - 1]->getText());
            if (value == nullptr) {
                value = lowerBinaryFloatingOperation(builder, lhs, rhs, addExpr->children[index * 2 - 1]->getText());
            }
            if (value == nullptr) {
                return nullptr;
            }
        }
        return value;
    }
    if (auto* multExpr = dynamic_cast<compilerv1Parser::MultExprContext*>(expression)) {
        if (multExpr->primary().empty()) {
            return nullptr;
        }
        llvm::Value* value = lowerExpressionValue(builder, multExpr->primary(0), values, loadReferences);
        for (size_t index = 1; index < multExpr->primary().size(); ++index) {
            llvm::Value* rhs = lowerExpressionValue(builder, multExpr->primary(index), values, loadReferences);
            llvm::Value* lhs = value;
            value = lowerBinaryIntegerOperation(builder, lhs, rhs, multExpr->children[index * 2 - 1]->getText());
            if (value == nullptr) {
                value = lowerBinaryFloatingOperation(builder, lhs, rhs, multExpr->children[index * 2 - 1]->getText());
            }
            if (value == nullptr) {
                return nullptr;
            }
        }
        return value;
    }
    if (auto* primary = dynamic_cast<compilerv1Parser::PrimaryContext*>(expression)) {
        return lowerPrimaryValue(builder, primary, values, loadReferences);
    }
    return nullptr;
}

bool lowerAssignmentStatement(llvm::IRBuilder<>& builder,
    compilerv1Parser::AssignmentContext* assignment,
    LoweredValueMap& values) {
    if (assignment == nullptr || assignment->assignmentCore() == nullptr || assignment->assignmentCore()->assignTarget() == nullptr) {
        return false;
    }
    auto* target = assignment->assignmentCore()->assignTarget();
    if (isDerefAssignTarget(target)) {
        return lowerDerefAssignment(builder, target, assignment->assignmentCore()->expression(), values);
    }
    const auto it = values.find(target->ID()->getText());
    if (it == values.end() || it->second.address == nullptr || it->second.storageType == nullptr) {
        return false;
    }

    llvm::Module* module = builder.GetInsertBlock() != nullptr ? builder.GetInsertBlock()->getModule() : nullptr;
    if (module == nullptr) {
        return false;
    }

    if (!target->accessKey().empty()) {
        llvm::Value* handle = loadIfAddressable(builder, it->second);
        if (handle == nullptr) {
            return false;
        }

        if (isApolloTypeText(it->second.typeText, "vector<str>")
            && target->accessKey().size() == 1
            && target->accessKey()[0] != nullptr
            && target->accessKey()[0]->APND() != nullptr) {
            llvm::Value* newValue = lowerExpressionValue(builder, assignment->assignmentCore()->expression(), values);
            if (newValue == nullptr) {
                return false;
            }
            builder.CreateCall(getApolloVectorStrPushDeclaration(*module), {handle, newValue});
            return true;
        }

        if (isApolloTypeText(it->second.typeText, "vector<i32>")
            && target->accessKey().size() == 1
            && target->accessKey()[0] != nullptr
            && target->accessKey()[0]->APND() != nullptr) {
            llvm::Value* newValue = lowerExpressionValue(builder, assignment->assignmentCore()->expression(), values);
            if (newValue == nullptr) {
                return false;
            }
            if (!newValue->getType()->isIntegerTy(32)) {
                newValue = castToCommonInteger(builder, newValue, llvm::Type::getInt32Ty(builder.getContext()));
            }
            if (newValue == nullptr || !newValue->getType()->isIntegerTy(32)) {
                return false;
            }
            builder.CreateCall(getApolloVectorI32PushDeclaration(*module), {handle, newValue});
            return true;
        }

        if (isApolloTypeText(it->second.typeText, "vector<i32>")
            && target->accessKey().size() == 1
            && target->accessKey()[0] != nullptr
            && target->accessKey()[0]->APND() == nullptr) {
            llvm::Value* indexValue = lowerI32IndexValue(builder, target->accessKey()[0]->expression(), values);
            llvm::Value* newValue = lowerExpressionValue(builder, assignment->assignmentCore()->expression(), values);
            if (indexValue == nullptr || newValue == nullptr) {
                return false;
            }
            if (!newValue->getType()->isIntegerTy(32)) {
                newValue = castToCommonInteger(builder, newValue, llvm::Type::getInt32Ty(builder.getContext()));
            }
            if (newValue == nullptr || !newValue->getType()->isIntegerTy(32)) {
                return false;
            }
            builder.CreateCall(getApolloVectorI32SetDeclaration(*module), {handle, indexValue, newValue});
            return true;
        }

        if (const std::string symbolStem = soaVectorSymbolStem(it->second.typeText); !symbolStem.empty()) {
            llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(builder.getContext());
            llvm::Type* elementType = lowerSoaVectorElementType(builder.getContext(), it->second.typeText);
            if (elementType == nullptr) {
                return false;
            }

            if (target->accessKey().size() == 1
                && target->accessKey()[0] != nullptr
                && target->accessKey()[0]->APND() != nullptr) {
                const bool loadReferences = !elementType->isPointerTy();
                llvm::Value* newValue = lowerExpressionForExpectedType(builder, assignment->assignmentCore()->expression(), elementType, values, loadReferences);
                if (newValue == nullptr) {
                    return false;
                }
                llvm::FunctionCallee pushDecl = module->getOrInsertFunction(
                    symbolStem + "_push",
                    llvm::FunctionType::get(llvm::Type::getVoidTy(builder.getContext()), {opaquePtrTy, elementType}, false));
                builder.CreateCall(pushDecl, {handle, newValue});
                return true;
            }

            if (target->accessKey().size() == 1
                && target->accessKey()[0] != nullptr
                && target->accessKey()[0]->APND() == nullptr) {
                llvm::Value* indexValue = lowerI32IndexValue(builder, target->accessKey()[0]->expression(), values);
                const bool loadReferences = !elementType->isPointerTy();
                llvm::Value* newValue = lowerExpressionForExpectedType(builder, assignment->assignmentCore()->expression(), elementType, values, loadReferences);
                if (indexValue == nullptr || newValue == nullptr) {
                    return false;
                }
                llvm::FunctionCallee setDecl = module->getOrInsertFunction(
                    symbolStem + "_set",
                    llvm::FunctionType::get(llvm::Type::getVoidTy(builder.getContext()), {opaquePtrTy, llvm::Type::getInt32Ty(builder.getContext()), elementType}, false));
                builder.CreateCall(setDecl, {handle, indexValue, newValue});
                return true;
            }
        }

        if (isApolloTypeText(it->second.typeText, "hsh<str,i32>")
            && target->accessKey().size() == 1
            && target->accessKey()[0] != nullptr
            && target->accessKey()[0]->APND() == nullptr) {
            llvm::Value* keyValue = lowerExpressionValue(builder, target->accessKey()[0]->expression(), values);
            llvm::Value* newValue = lowerExpressionValue(builder, assignment->assignmentCore()->expression(), values);
            if (keyValue == nullptr || newValue == nullptr) {
                return false;
            }
            builder.CreateCall(getApolloHashStrI32SetDeclaration(*module), {handle, keyValue, newValue});
            return true;
        }

        if ((isApolloTypeText(it->second.typeText, "unordered_map<i32,i32>") || isApolloTypeText(it->second.typeText, "hsh<i32,i32>"))
            && target->accessKey().size() == 1
            && target->accessKey()[0] != nullptr
            && target->accessKey()[0]->APND() == nullptr) {
            llvm::Value* keyValue = lowerI32IndexValue(builder, target->accessKey()[0]->expression(), values);
            llvm::Value* newValue = lowerExpressionValue(builder, assignment->assignmentCore()->expression(), values);
            if (keyValue == nullptr || newValue == nullptr) {
                return false;
            }
            if (!newValue->getType()->isIntegerTy(32)) {
                newValue = castToCommonInteger(builder, newValue, llvm::Type::getInt32Ty(builder.getContext()));
            }
            if (newValue == nullptr || !newValue->getType()->isIntegerTy(32)) {
                return false;
            }
            builder.CreateCall(getApolloHashI32I32SetDeclaration(*module), {handle, keyValue, newValue});
            return true;
        }

        if (isApolloTypeText(it->second.typeText, "hsh<hsh<i32,str>,hsh<str,i32>>")
            && target->accessKey().size() == 1
            && target->accessKey()[0] != nullptr
            && target->accessKey()[0]->APND() == nullptr) {
            compilerv1Parser::ExpressionContext* tupleFirst = nullptr;
            compilerv1Parser::ExpressionContext* tupleSecond = nullptr;
            compilerv1Parser::ExpressionContext* valueFirst = nullptr;
            compilerv1Parser::ExpressionContext* valueSecond = nullptr;
            if (!extractCompositeLiteralParts(target->accessKey()[0]->expression(), tupleFirst, tupleSecond)
                || !extractCompositeLiteralParts(assignment->assignmentCore()->expression(), valueFirst, valueSecond)) {
                return false;
            }

            llvm::Value* keyInt = lowerExpressionValue(builder, tupleFirst, values);
            llvm::Value* keyString = lowerExpressionValue(builder, tupleSecond, values);
            llvm::Value* valueString = lowerExpressionValue(builder, valueFirst, values);
            llvm::Value* valueInt = lowerExpressionValue(builder, valueSecond, values);
            if (keyInt == nullptr || keyString == nullptr || valueString == nullptr || valueInt == nullptr) {
                return false;
            }
            builder.CreateCall(getApolloNestedHashSetDeclaration(*module), {handle, keyInt, keyString, valueString, valueInt});
            return true;
        }

        if (it->second.typeText.rfind("vector<", 0) == 0
            && target->accessKey().size() == 1
            && target->accessKey()[0] != nullptr
            && target->accessKey()[0]->APND() != nullptr) {
            return true;
        }

        return false;
    }

    const bool loadReferences = it->second.typeText.find('&') == std::string::npos;
    llvm::Value* newValue = lowerExpressionForExpectedType(builder, assignment->assignmentCore()->expression(), it->second.storageType, values, loadReferences);
    if (newValue == nullptr) {
        return false;
    }
    llvm::Type* expectedType = it->second.storageType;
    if (newValue->getType() != expectedType) {
        newValue = castToCommonInteger(builder, newValue, expectedType);
        if (newValue == nullptr || newValue->getType() != expectedType) {
            return false;
        }
    }
    builder.CreateStore(newValue, it->second.address);
    return true;
}

bool lowerMemberAssignmentStatement(llvm::IRBuilder<>& builder,
    compilerv1Parser::MemberAssignmentContext* memberAssignment,
    LoweredValueMap& values) {
    if (memberAssignment == nullptr || memberAssignment->accessBase() == nullptr || memberAssignment->ID() == nullptr
        || memberAssignment->expression() == nullptr || gActiveAggregateRegistry == nullptr) {
        return false;
    }

    const std::string baseText = memberAssignment->accessBase()->getText();
    const std::string aggregateName = resolveAggregateTypeName(values, baseText);
    if (aggregateName.empty()) {
        return false;
    }

    llvm::Value* baseValue = nullptr;
    const auto valueIt = values.find(baseText);
    if (baseText == "indef") {
        const auto selfIt = values.find("indef");
        if (selfIt != values.end()) {
            baseValue = loadIfAddressable(builder, selfIt->second);
        }
    } else if (valueIt != values.end()) {
        baseValue = loadIfAddressable(builder, valueIt->second);
    }
    if (baseValue == nullptr) {
        return false;
    }

    std::vector<AggregateFieldRecord> fields;
    if (!collectAggregateFields(*gActiveAggregateRegistry, aggregateName, fields)) {
        return false;
    }

    const auto fieldIt = std::find_if(fields.begin(), fields.end(), [&](const AggregateFieldRecord& field) {
        return field.name == memberAssignment->ID()->getText();
    });
    if (fieldIt == fields.end()) {
        return false;
    }

    llvm::Value* fieldAddress = lowerAggregateFieldAddress(builder, baseValue, aggregateName, fieldIt->name, *gActiveAggregateRegistry);
    llvm::Type* fieldType = lowerSourceTypeText(builder.getContext(), fieldIt->typeText);
    if (fieldAddress == nullptr || fieldType == nullptr) {
        return false;
    }

    const bool loadReferences = fieldIt->typeText.find('&') == std::string::npos;
    llvm::Value* newValue = lowerExpressionForExpectedType(builder, memberAssignment->expression(), fieldType, values, loadReferences);
    if (newValue == nullptr) {
        return false;
    }

    if (newValue->getType() != fieldType) {
        if (newValue->getType()->isIntegerTy() && fieldType->isIntegerTy()) {
            newValue = castToCommonInteger(builder, newValue, fieldType);
        } else if (newValue->getType()->isPointerTy() && fieldType->isPointerTy()) {
            newValue = builder.CreateBitCast(newValue, fieldType);
        }
    }
    if (newValue == nullptr || newValue->getType() != fieldType) {
        return false;
    }

    // Conservative: a field write may target a GC-heap-resident aggregate.
    // We don't track per-base storage class yet, so barrier whenever the
    // collector is on and the new value is a pointer.
    const bool gcOn = gActiveRuntimeFeatures != nullptr && gActiveRuntimeFeatures->totalProgramGc();
    emitGcManagedStore(builder, newValue, fieldAddress, gcOn);
    return true;
}

bool lowerInitStatement(llvm::IRBuilder<>& builder,
    llvm::Function* function,
    compilerv1Parser::InitContext* init,
    LoweredValueMap& values) {
    if (init == nullptr || init->initCore() == nullptr || init->initCore()->ID() == nullptr
        || (init->initCore()->typeRef() == nullptr && init->initCore()->instanceValue() == nullptr)) {
        return false;
    }
    auto* initCore = init->initCore();
    const std::string declName = initCore->ID()->getText();
    if (values.find(declName) != values.end()) {
        setSemanticError("redeclaration of `" + declName + "` in the same scope");
        return false;
    }
    const bool hasPrefixedConstructor = initCore->instanceValue() != nullptr;
    const std::string typeText = hasPrefixedConstructor
        ? initCore->instanceValue()->ID()->getText()
        : initCore->typeRef()->getText();
    llvm::Type* type = hasPrefixedConstructor
        ? lowerSourceTypeText(builder.getContext(), typeText)
        : lowerTypeRef(builder.getContext(), initCore->typeRef());
    if (type == nullptr) {
        return false;
    }
    llvm::AllocaInst* address = createEntryAlloca(function, type, initCore->ID()->getText());
    llvm::Value* initialValue = nullptr;
    if (hasPrefixedConstructor) {
        initialValue = lowerConstructedInstanceValue(builder, initCore->instanceValue(), values);
        if (initialValue == nullptr) {
            return false;
        }
        if (initCore->braceInitializer() != nullptr) {
            const std::string aggregateName = trimAggregateTypeName(typeText);
            if (!applyAggregateBraceInitializerToValue(builder, aggregateName, initialValue, initCore->braceInitializer(), values)) {
                return false;
            }
        }
    } else if (initCore->expression() != nullptr) {
        const bool loadReferences = !isReferenceType(initCore->typeRef());
        if (gActiveAggregateRegistry != nullptr) {
            const std::string aggregateName = trimAggregateTypeName(typeText);
            if (gActiveAggregateRegistry->find(aggregateName) != nullptr) {
                if (auto* primary = extractPrimaryContext(initCore->expression()); primary != nullptr && primary->braceInitializer() != nullptr) {
                    initialValue = lowerAggregateBraceInitializerValue(builder, aggregateName, primary->braceInitializer(), values);
                }
            }
        }
        if (initialValue == nullptr) {
            initialValue = lowerExpressionForExpectedType(builder, initCore->expression(), type, values, loadReferences);
        }
        if (initialValue == nullptr) {
            const std::string sem = takeSemanticError();
            if (!sem.empty()) {
                setSemanticError(sem);
                return false;
            }
            if (!type->isPointerTy()) {
                return false;
            }
            initialValue = llvm::ConstantPointerNull::get(llvm::cast<llvm::PointerType>(type));
        }
        if (initialValue->getType() != type) {
            initialValue = castToCommonInteger(builder, initialValue, type);
            if (initialValue == nullptr || initialValue->getType() != type) {
                return false;
            }
        }
    } else {
        initialValue = createOpaqueContainerDefault(*builder.GetInsertBlock()->getModule(), builder, typeText);
        if (initialValue == nullptr && gActiveAggregateRegistry != nullptr) {
            const std::string aggregateName = trimAggregateTypeName(typeText);
            if (gActiveAggregateRegistry->find(aggregateName) != nullptr) {
                initialValue = instantiateAggregateValue(builder, aggregateName, *gActiveAggregateRegistry);
            }
        }
        if (initialValue == nullptr && typeText == "str") {
            initialValue = createGlobalCString(*builder.GetInsertBlock()->getModule(), builder, "", "apollo.str.empty");
        }
        if (initialValue == nullptr) {
            initialValue = llvm::Constant::getNullValue(type);
        }
    }
    builder.CreateStore(initialValue, address);
    values[initCore->ID()->getText()] = {initialValue, address, type, typeText};
    return true;
}

bool lowerLtoInitStatement(llvm::IRBuilder<>& builder,
    llvm::Function* function,
    compilerv1Parser::LtoInitContext* ltoInit,
    LoweredValueMap& values) {
    if (function == nullptr || ltoInit == nullptr || ltoInit->ID() == nullptr || ltoInit->expression() == nullptr) {
        return false;
    }

    llvm::Value* initialValue = lowerExpressionValue(builder, ltoInit->expression(), values);
    if (initialValue == nullptr) {
        return false;
    }

    llvm::Type* type = initialValue->getType();
    llvm::AllocaInst* address = createEntryAlloca(function, type, ltoInit->ID()->getText());
    builder.CreateStore(initialValue, address);
    values[ltoInit->ID()->getText()] = {initialValue, address, type, "lto"};
    return true;
}

bool lowerNrcDeclStatement(compilerv1Parser::NrcDeclContext* nrcDecl) {
    if (nrcDecl == nullptr || nrcDecl->ID() == nullptr || nrcDecl->typeRef() == nullptr || gActiveTypeAliases == nullptr) {
        return false;
    }

    (*gActiveTypeAliases)[normalizeTypeAliasKey(nrcDecl->ID()->getText())] = resolveActiveTypeAliases(nrcDecl->typeRef()->getText());
    return true;
}

bool lowerMntDeclStatement(llvm::IRBuilder<>& builder,
    llvm::Function* function,
    compilerv1Parser::MntDeclContext* mntDecl,
    LoweredValueMap& values) {
    if (function == nullptr || mntDecl == nullptr || mntDecl->typeRef() == nullptr || mntDecl->ID() == nullptr || mntDecl->expression() == nullptr) {
        return false;
    }

    llvm::Module* module = builder.GetInsertBlock() != nullptr ? builder.GetInsertBlock()->getModule() : nullptr;
    if (module == nullptr) {
        return false;
    }

    llvm::Type* type = lowerTypeRef(builder.getContext(), mntDecl->typeRef());
    llvm::Value* initialValue = lowerExpressionValue(builder, mntDecl->expression(), values);
    if (type == nullptr || initialValue == nullptr) {
        return false;
    }
    if (initialValue->getType() != type) {
        if (initialValue->getType()->isIntegerTy() && type->isIntegerTy()) {
            initialValue = castToCommonInteger(builder, initialValue, type);
        } else if (initialValue->getType()->isPointerTy() && type->isPointerTy()) {
            initialValue = builder.CreateBitCast(initialValue, type);
        }
    }
    if (initialValue == nullptr || initialValue->getType() != type) {
        return false;
    }

    llvm::Type* i64Ty = llvm::Type::getInt64Ty(builder.getContext());
    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(builder.getContext());
    llvm::FunctionCallee allocator = gActiveRuntimeFeatures != nullptr && gActiveRuntimeFeatures->totalProgramGc()
        ? module->getOrInsertFunction("apollo_gc_alloc", llvm::FunctionType::get(opaquePtrTy, {i64Ty}, false))
        : module->getOrInsertFunction("malloc", llvm::FunctionType::get(opaquePtrTy, {i64Ty}, false));

    llvm::Value* allocationSize = llvm::ConstantInt::get(i64Ty, module->getDataLayout().getTypeAllocSize(type));
    llvm::Value* rawAddress = builder.CreateCall(allocator, {allocationSize});
    llvm::Value* typedAddress = builder.CreateBitCast(rawAddress, opaquePtrTy);
    llvm::Value* elementAddress = builder.CreateBitCast(rawAddress, type->getPointerTo());
    const bool gcOn = gActiveRuntimeFeatures != nullptr && gActiveRuntimeFeatures->totalProgramGc();
    // Initializer write into the GC-managed slot must shade `initialValue`
    // if it's a pointer (concurrent marker tri-color invariant).
    emitGcManagedStore(builder, initialValue, elementAddress, gcOn);

    llvm::AllocaInst* address = createEntryAlloca(function, opaquePtrTy, mntDecl->ID()->getText());
    builder.CreateStore(typedAddress, address);
    values[mntDecl->ID()->getText()] = {typedAddress, address, opaquePtrTy, mntDecl->typeRef()->getText() + "*", true};
    return true;
}

bool lowerMallocStatement(llvm::IRBuilder<>& builder,
    llvm::Function* function,
    compilerv1Parser::MallocContext* mallocCtx,
    LoweredValueMap& values) {
    if (function == nullptr || mallocCtx == nullptr || mallocCtx->ID() == nullptr || mallocCtx->typeRef() == nullptr) {
        return false;
    }

    llvm::Module* module = builder.GetInsertBlock() != nullptr ? builder.GetInsertBlock()->getModule() : nullptr;
    if (module == nullptr) {
        return false;
    }

    llvm::Type* allocatedType = lowerTypeRef(builder.getContext(), mallocCtx->typeRef());
    if (allocatedType == nullptr) {
        return false;
    }

    llvm::Type* i64Ty = llvm::Type::getInt64Ty(builder.getContext());
    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(builder.getContext());
    llvm::Value* elementCount = llvm::ConstantInt::get(i64Ty, 1);
    if (mallocCtx->expression() != nullptr) {
        elementCount = lowerExpressionValue(builder, mallocCtx->expression(), values);
        if (elementCount == nullptr || !elementCount->getType()->isIntegerTy()) {
            return false;
        }
        if (elementCount->getType() != i64Ty) {
            elementCount = castToCommonInteger(builder, elementCount, i64Ty);
        }
        if (elementCount == nullptr || elementCount->getType() != i64Ty) {
            return false;
        }
    }

    llvm::FunctionCallee allocator = gActiveRuntimeFeatures != nullptr && gActiveRuntimeFeatures->totalProgramGc()
        ? module->getOrInsertFunction("apollo_gc_alloc", llvm::FunctionType::get(opaquePtrTy, {i64Ty}, false))
        : module->getOrInsertFunction("malloc", llvm::FunctionType::get(opaquePtrTy, {i64Ty}, false));
    llvm::Value* elementSize = llvm::ConstantInt::get(i64Ty, module->getDataLayout().getTypeAllocSize(allocatedType));
    llvm::Value* allocationSize = builder.CreateMul(elementCount, elementSize);
    llvm::Value* rawAddress = builder.CreateCall(allocator, {allocationSize});

    llvm::AllocaInst* address = createEntryAlloca(function, opaquePtrTy, mallocCtx->ID()->getText());
    builder.CreateStore(rawAddress, address);
    values[mallocCtx->ID()->getText()] = {rawAddress, address, opaquePtrTy, "void*", true};
    return true;
}

bool lowerFreeStatement(llvm::IRBuilder<>& builder,
    compilerv1Parser::FreeContext* freeCtx,
    LoweredValueMap& values) {
    if (freeCtx == nullptr || freeCtx->ID() == nullptr) {
        return false;
    }

    auto it = values.find(freeCtx->ID()->getText());
    if (it == values.end()) {
        return false;
    }
    if (gActiveRuntimeFeatures != nullptr && gActiveRuntimeFeatures->totalProgramGc()) {
        return true;
    }
    if (!it->second.ownsHeapStorage) {
        return false;
    }

    llvm::Value* pointerValue = loadIfAddressable(builder, it->second);
    if (pointerValue == nullptr || !pointerValue->getType()->isPointerTy()) {
        return false;
    }

    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(builder.getContext());
    if (pointerValue->getType() != opaquePtrTy) {
        pointerValue = builder.CreateBitCast(pointerValue, opaquePtrTy);
    }
    llvm::Module* module = builder.GetInsertBlock() != nullptr ? builder.GetInsertBlock()->getModule() : nullptr;
    if (module == nullptr) {
        return false;
    }
    llvm::FunctionCallee freeDecl = module->getOrInsertFunction("free", llvm::FunctionType::get(llvm::Type::getVoidTy(builder.getContext()), {opaquePtrTy}, false));
    builder.CreateCall(freeDecl, {pointerValue});

    if (it->second.address != nullptr && it->second.storageType != nullptr && it->second.storageType->isPointerTy()) {
        llvm::Value* nullValue = llvm::ConstantPointerNull::get(llvm::cast<llvm::PointerType>(it->second.storageType));
        builder.CreateStore(nullValue, it->second.address);
        it->second.value = nullValue;
    }
    it->second.ownsHeapStorage = false;
    return true;
}

bool lowerDelalcStatement(llvm::IRBuilder<>& builder,
    compilerv1Parser::DelalcContext* delalc,
    LoweredValueMap& values) {
    if (delalc == nullptr || delalc->ID() == nullptr) {
        return false;
    }

    auto it = values.find(delalc->ID()->getText());
    if (it == values.end()) {
        return false;
    }
    if (it->second.address == nullptr || it->second.storageType == nullptr || !it->second.storageType->isPointerTy()) {
        return true;
    }

    llvm::Value* nullValue = llvm::ConstantPointerNull::get(llvm::cast<llvm::PointerType>(it->second.storageType));
    builder.CreateStore(nullValue, it->second.address);
    it->second.value = nullValue;
    it->second.ownsHeapStorage = false;
    return true;
}

bool lowerPlcnewStatement(llvm::IRBuilder<>& builder,
    llvm::Function* function,
    compilerv1Parser::PlcnewContext* plcnew,
    LoweredValueMap& values) {
    if (function == nullptr || plcnew == nullptr || plcnew->ID() == nullptr || plcnew->typeRef() == nullptr) {
        return false;
    }

    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(builder.getContext());
    llvm::AllocaInst* address = createEntryAlloca(function, opaquePtrTy, plcnew->ID()->getText());
    llvm::Value* nullValue = llvm::ConstantPointerNull::get(llvm::cast<llvm::PointerType>(opaquePtrTy));
    builder.CreateStore(nullValue, address);
    values[plcnew->ID()->getText()] = {nullValue, address, opaquePtrTy, plcnew->typeRef()->getText() + "*", false};
    return true;
}

bool lowerThreadStatement(llvm::IRBuilder<>& builder,
    llvm::Function* function,
    compilerv1Parser::ThreadContext* threadCtx,
    LoweredValueMap& values) {
    if (function == nullptr || threadCtx == nullptr || threadCtx->ID() == nullptr || threadCtx->functionCall() == nullptr) {
        return false;
    }

    if (lowerFunctionCallValue(builder, threadCtx->functionCall(), values) == nullptr) {
        return false;
    }

    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(builder.getContext());
    llvm::AllocaInst* address = createEntryAlloca(function, opaquePtrTy, threadCtx->ID()->getText());
    llvm::Value* nullValue = llvm::ConstantPointerNull::get(llvm::cast<llvm::PointerType>(opaquePtrTy));
    builder.CreateStore(nullValue, address);
    values[threadCtx->ID()->getText()] = {nullValue, address, opaquePtrTy, "thread", false};
    return true;
}

bool lowerAsyncCallStatement(llvm::IRBuilder<>& builder,
    compilerv1Parser::AsyncCallContext* asyncCall,
    LoweredValueMap& values) {
    if (asyncCall == nullptr || asyncCall->functionCall() == nullptr) {
        return false;
    }
    return lowerFunctionCallValue(builder, asyncCall->functionCall(), values) != nullptr;
}

bool lowerSyscallStatement(compilerv1Parser::SyscallStmtContext* syscallStmt) {
    return syscallStmt != nullptr;
}

bool lowerPointerStatement(llvm::IRBuilder<>& builder,
    llvm::Function* function,
    compilerv1Parser::PointerContext* pointer,
    LoweredValueMap& values);

bool lowerUnsafeLineStatement(llvm::IRBuilder<>& builder,
    llvm::Function* function,
    compilerv1Parser::UnsafeLineStmtContext* unsafeLineStmt,
    LoweredValueMap& values,
    std::string& unsupportedReason) {
    compilerv1Parser::UnsafeLinePayloadContext* payload = unsafeLineStmt != nullptr ? unsafeLineStmt->unsafeLinePayload() : nullptr;
    if (payload == nullptr) {
        unsupportedReason = "unsafe-line-payload-missing:" + (unsafeLineStmt != nullptr ? unsafeLineStmt->getText() : std::string());
        return false;
    }
    if (payload->pointer() != nullptr) {
        if (lowerPointerStatement(builder, function, payload->pointer(), values)) {
            return true;
        }
        unsupportedReason = "unsafe-line-pointer-lowering-failed:" + unsafeLineStmt->getText();
        return false;
    }
    if (payload->mntDecl() != nullptr) {
        if (lowerMntDeclStatement(builder, function, payload->mntDecl(), values)) {
            return true;
        }
        unsupportedReason = "unsafe-line-mnt-lowering-failed:" + unsafeLineStmt->getText();
        return false;
    }
    if (payload->malloc() != nullptr) {
        if (lowerMallocStatement(builder, function, payload->malloc(), values)) {
            return true;
        }
        unsupportedReason = "unsafe-line-malloc-lowering-failed:" + unsafeLineStmt->getText();
        return false;
    }
    if (payload->free() != nullptr) {
        if (lowerFreeStatement(builder, payload->free(), values)) {
            return true;
        }
        unsupportedReason = "unsafe-line-free-lowering-failed:" + unsafeLineStmt->getText();
        return false;
    }
    if (payload->delalc() != nullptr) {
        if (lowerDelalcStatement(builder, payload->delalc(), values)) {
            return true;
        }
        unsupportedReason = "unsafe-line-delalc-lowering-failed:" + unsafeLineStmt->getText();
        return false;
    }
    if (payload->plcnew() != nullptr) {
        if (lowerPlcnewStatement(builder, function, payload->plcnew(), values)) {
            return true;
        }
        unsupportedReason = "unsafe-line-plcnew-lowering-failed:" + unsafeLineStmt->getText();
        return false;
    }
    if (payload->nativemode() != nullptr) {
        return true;
    }

    unsupportedReason = "unsafe-line-payload-kind-unhandled:" + unsafeLineStmt->getText();
    return false;
}

bool lowerEasyInitStatement(llvm::IRBuilder<>& builder,
    llvm::Function* function,
    compilerv1Parser::EasyInitContext* easyInit,
    LoweredValueMap& values) {
    if (function == nullptr || easyInit == nullptr || easyInit->expression() == nullptr || easyInit->ID() == nullptr) {
        return false;
    }

    llvm::Value* initialValue = lowerExpressionValue(builder, easyInit->expression(), values);
    if (initialValue == nullptr) {
        const std::string sem = takeSemanticError();
        if (!sem.empty()) {
            setSemanticError(sem);
            return false;
        }
        llvm::Type* type = llvm::Type::getInt32Ty(builder.getContext());
        llvm::AllocaInst* address = createEntryAlloca(function, type, easyInit->ID()->getText());
        llvm::Value* zeroValue = llvm::ConstantInt::get(type, 0);
        builder.CreateStore(zeroValue, address);
        values[easyInit->ID()->getText()] = {zeroValue, address, type, inferExpressionTypeText(easyInit->expression(), values)};
        return true;
    }

    const std::string name = easyInit->ID()->getText();
    llvm::Type* type = initialValue->getType();
    llvm::AllocaInst* address = createEntryAlloca(function, type, name);
    builder.CreateStore(initialValue, address);
    values[name] = {initialValue, address, type, inferExpressionTypeText(easyInit->expression(), values)};
    return true;
}

bool lowerBlockStatements(llvm::Module& module,
    llvm::Function* function,
    llvm::IRBuilder<>& builder,
    compilerv1Parser::BlockContext* block,
    LoweredValueMap& values,
    std::string& unsupportedReason);
bool lowerClosureCallableBody(llvm::Module& module,
    llvm::Function* function,
    compilerv1Parser::ClosureBodyContext* closureBody,
    std::string& unsupportedReason);
bool lowerClosureStatement(llvm::Module& module,
    llvm::Function* function,
    llvm::IRBuilder<>& builder,
    compilerv1Parser::ClosureContext* closure,
    LoweredValueMap& values,
    std::string& unsupportedReason);
bool lowerLambdaStatement(llvm::Module& module,
    llvm::Function* function,
    llvm::IRBuilder<>& builder,
    compilerv1Parser::LambdaContext* lambda,
    LoweredValueMap& values,
    std::string& unsupportedReason);

bool lowerInstancePlaceholderValue(llvm::IRBuilder<>& builder,
    compilerv1Parser::InstanceValueContext* instanceValue,
    llvm::Value*& loweredValue,
    std::string& typeText) {
    llvm::PointerType* opaquePointerType = llvm::PointerType::getUnqual(builder.getContext());
    loweredValue = llvm::ConstantPointerNull::get(opaquePointerType);
    typeText.clear();
    if (instanceValue == nullptr) {
        return true;
    }
    if (instanceValue->ID() == nullptr) {
        return false;
    }
    typeText = instanceValue->ID()->getText();
    if (gActiveAggregateRegistry != nullptr && gActiveAggregateRegistry->find(typeText) != nullptr) {
        llvm::Value* aggregateValue = lowerConstructedInstanceValue(builder, instanceValue, LoweredValueMap{});
        if (aggregateValue == nullptr) {
            return false;
        }
        loweredValue = aggregateValue;
    } else if (instanceValue->args() != nullptr && !instanceValue->args()->expression().empty()) {
        return false;
    }
    return true;
}

bool lowerPointerStatement(llvm::IRBuilder<>& builder,
    llvm::Function* function,
    compilerv1Parser::PointerContext* pointer,
    LoweredValueMap& values) {
    if (function == nullptr || pointer == nullptr || pointer->typeRef() == nullptr || pointer->ID().size() < 2) {
        return false;
    }

    const std::string targetName = pointer->ID(0)->getText();
    const std::string sourceName = pointer->ID(1)->getText();
    const auto sourceIt = values.find(sourceName);

    llvm::Type* type = lowerTypeRef(builder.getContext(), pointer->typeRef());
    if (type == nullptr) {
        return false;
    }

    llvm::Value* sourceValue = nullptr;
    if (sourceIt == values.end()) {
        if (!type->isPointerTy()) {
            return false;
        }
        sourceValue = llvm::ConstantPointerNull::get(llvm::cast<llvm::PointerType>(type));
    } else {
        sourceValue = lowerCppStyleAddressValue(builder, sourceIt->second);
        if (sourceValue == nullptr) {
            return false;
        }
        if (sourceValue->getType() != type) {
            if (!sourceValue->getType()->isPointerTy() || !type->isPointerTy()) {
                return false;
            }
            sourceValue = builder.CreateBitCast(sourceValue, type);
        }
    }

    llvm::AllocaInst* address = createEntryAlloca(function, type, targetName);
    builder.CreateStore(sourceValue, address);
    values[targetName] = {sourceValue, address, type, pointer->typeRef()->getText()};
    return true;
}

bool lowerBlockStatements(llvm::Module& module,
    llvm::Function* function,
    llvm::IRBuilder<>& builder,
    compilerv1Parser::BlockContext* block,
    LoweredValueMap& values,
    std::string& unsupportedReason);

bool lowerLoopStatement(llvm::Module& module,
    llvm::Function* function,
    llvm::IRBuilder<>& builder,
    compilerv1Parser::LoopStatementContext* loopStatement,
    LoweredValueMap& values,
    std::string& unsupportedReason) {
    if (loopStatement == nullptr || loopStatement->block() == nullptr) {
        unsupportedReason = "invalid-loop-shape";
        return false;
    }
    llvm::BasicBlock* bodyBlock = llvm::BasicBlock::Create(module.getContext(), "loop.body", function);
    llvm::BasicBlock* endBlock  = llvm::BasicBlock::Create(module.getContext(), "loop.end",  function);
    builder.CreateBr(bodyBlock);
    llvm::IRBuilder<> bodyBuilder(bodyBlock);
    if (!lowerBlockStatements(module, function, bodyBuilder, loopStatement->block(), values, unsupportedReason)) {
        return false;
    }
    if (loopStatement->block()->returnStmt().empty()) {
        bodyBuilder.CreateBr(bodyBlock);
    }
    builder.SetInsertPoint(endBlock);
    return true;
}

bool lowerWhileStatement(llvm::Module& module,
    llvm::Function* function,
    llvm::IRBuilder<>& builder,
    compilerv1Parser::WhileStatementContext* whileStatement,
    LoweredValueMap& values,
    std::string& unsupportedReason) {
    if (whileStatement == nullptr || whileStatement->block() == nullptr) {
        unsupportedReason = "invalid-while-shape";
        return false;
    }

    llvm::BasicBlock* condBlock = llvm::BasicBlock::Create(module.getContext(), "while.cond", function);
    llvm::BasicBlock* bodyBlock = llvm::BasicBlock::Create(module.getContext(), "while.body", function);
    llvm::BasicBlock* endBlock = llvm::BasicBlock::Create(module.getContext(), "while.end", function);

    builder.CreateBr(condBlock);

    llvm::IRBuilder<> condBuilder(condBlock);
    llvm::Value* condition = lowerConditionValue(condBuilder, whileStatement->expression(), values);
    if (condition == nullptr) {
        unsupportedReason = takeSemanticError();
        if (unsupportedReason.empty()) {
            unsupportedReason = "while-condition-lowering-failed:" + whileStatement->expression()->getText();
        }
        return false;
    }
    condBuilder.CreateCondBr(condition, bodyBlock, endBlock);

    llvm::IRBuilder<> bodyBuilder(bodyBlock);
    if (!lowerBlockStatements(module, function, bodyBuilder, whileStatement->block(), values, unsupportedReason)) {
        return false;
    }
    if (whileStatement->block()->returnStmt().empty()) {
        bodyBuilder.CreateBr(condBlock);
    }

    builder.SetInsertPoint(endBlock);
    return true;
}

bool lowerInitCoreStatement(llvm::IRBuilder<>& builder,
    llvm::Function* function,
    compilerv1Parser::InitCoreContext* initCore,
    LoweredValueMap& values) {
    if (function == nullptr || initCore == nullptr || initCore->ID() == nullptr
        || (initCore->typeRef() == nullptr && initCore->instanceValue() == nullptr)) {
        return false;
    }

    const bool hasPrefixedConstructor = initCore->instanceValue() != nullptr;
    const std::string typeText = hasPrefixedConstructor
        ? initCore->instanceValue()->ID()->getText()
        : initCore->typeRef()->getText();
    llvm::Type* type = hasPrefixedConstructor
        ? lowerSourceTypeText(builder.getContext(), typeText)
        : lowerTypeRef(builder.getContext(), initCore->typeRef());
    if (type == nullptr) {
        return false;
    }

    llvm::AllocaInst* address = createEntryAlloca(function, type, initCore->ID()->getText());
    llvm::Value* initialValue = nullptr;
    if (hasPrefixedConstructor) {
        initialValue = lowerConstructedInstanceValue(builder, initCore->instanceValue(), values);
        if (initialValue == nullptr) {
            return false;
        }
        if (initCore->braceInitializer() != nullptr) {
            const std::string aggregateName = trimAggregateTypeName(typeText);
            if (!applyAggregateBraceInitializerToValue(builder, aggregateName, initialValue, initCore->braceInitializer(), values)) {
                return false;
            }
        }
    } else if (initCore->expression() != nullptr) {
        const bool loadReferences = !isReferenceType(initCore->typeRef());
        initialValue = lowerExpressionForExpectedType(builder, initCore->expression(), type, values, loadReferences);
        if (initialValue == nullptr) {
            if (!type->isPointerTy()) {
                return false;
            }
            initialValue = llvm::ConstantPointerNull::get(llvm::cast<llvm::PointerType>(type));
        }
        if (initialValue->getType() != type) {
            initialValue = castToCommonInteger(builder, initialValue, type);
            if (initialValue == nullptr || initialValue->getType() != type) {
                return false;
            }
        }
    } else {
        initialValue = createOpaqueContainerDefault(*builder.GetInsertBlock()->getModule(), builder, typeText);
        if (initialValue == nullptr && gActiveAggregateRegistry != nullptr) {
            const std::string aggregateName = trimAggregateTypeName(typeText);
            if (gActiveAggregateRegistry->find(aggregateName) != nullptr) {
                initialValue = instantiateAggregateValue(builder, aggregateName, *gActiveAggregateRegistry);
            }
        }
        if (initialValue == nullptr) {
            initialValue = llvm::Constant::getNullValue(type);
        }
    }

    builder.CreateStore(initialValue, address);
    values[initCore->ID()->getText()] = {initialValue, address, type, typeText};
    return true;
}

bool lowerAssignmentCoreStatement(llvm::IRBuilder<>& builder,
    compilerv1Parser::AssignmentCoreContext* assignmentCore,
    LoweredValueMap& values) {
    if (assignmentCore == nullptr || assignmentCore->assignTarget() == nullptr || assignmentCore->expression() == nullptr) {
        return false;
    }

    auto* target = assignmentCore->assignTarget();
    if (isDerefAssignTarget(target)) {
        return lowerDerefAssignment(builder, target, assignmentCore->expression(), values);
    }
    if (target->ID() == nullptr || !target->accessKey().empty()) {
        return false;
    }

    const auto it = values.find(target->ID()->getText());
    if (it == values.end() || it->second.address == nullptr || it->second.storageType == nullptr) {
        return false;
    }

    const bool loadReferences = it->second.typeText.find('&') == std::string::npos;
    llvm::Value* newValue = lowerExpressionForExpectedType(builder, assignmentCore->expression(), it->second.storageType, values, loadReferences);
    if (newValue == nullptr) {
        return false;
    }

    llvm::Type* expectedType = it->second.storageType;
    if (newValue->getType() != expectedType) {
        newValue = castToCommonInteger(builder, newValue, expectedType);
        if (newValue == nullptr || newValue->getType() != expectedType) {
            return false;
        }
    }

    builder.CreateStore(newValue, it->second.address);
    return true;
}

bool lowerForStatement(llvm::Module& module,
    llvm::Function* function,
    llvm::IRBuilder<>& builder,
    compilerv1Parser::ForStatementContext* forStatement,
    LoweredValueMap& values,
    std::string& unsupportedReason) {
    if (function == nullptr || forStatement == nullptr || forStatement->block() == nullptr) {
        unsupportedReason = "invalid-for-shape";
        return false;
    }

    if (forStatement->forInit() != nullptr) {
        if (forStatement->forInit()->initCore() != nullptr) {
            if (!lowerInitCoreStatement(builder, function, forStatement->forInit()->initCore(), values)) {
                unsupportedReason = "for-init-lowering-failed";
                return false;
            }
        } else if (forStatement->forInit()->assignmentCore() != nullptr) {
            if (!lowerAssignmentCoreStatement(builder, forStatement->forInit()->assignmentCore(), values)) {
                unsupportedReason = "for-init-lowering-failed";
                return false;
            }
        } else if (forStatement->forInit()->expression() != nullptr
            && lowerExpressionValue(builder, forStatement->forInit()->expression(), values) == nullptr) {
            unsupportedReason = "for-init-lowering-failed";
            return false;
        }
    }

    llvm::BasicBlock* condBlock = llvm::BasicBlock::Create(module.getContext(), "for.cond", function);
    llvm::BasicBlock* bodyBlock = llvm::BasicBlock::Create(module.getContext(), "for.body", function);
    llvm::BasicBlock* updateBlock = llvm::BasicBlock::Create(module.getContext(), "for.update", function);
    llvm::BasicBlock* endBlock = llvm::BasicBlock::Create(module.getContext(), "for.end", function);

    builder.CreateBr(condBlock);

    llvm::IRBuilder<> condBuilder(condBlock);
    llvm::Value* condition = forStatement->expression() == nullptr
        ? llvm::ConstantInt::getTrue(module.getContext())
        : lowerConditionValue(condBuilder, forStatement->expression(), values);
    if (condition == nullptr) {
        unsupportedReason = takeSemanticError();
        if (unsupportedReason.empty()) {
            unsupportedReason = "for-condition-lowering-failed:" + forStatement->expression()->getText();
        }
        return false;
    }
    condBuilder.CreateCondBr(condition, bodyBlock, endBlock);

    llvm::IRBuilder<> bodyBuilder(bodyBlock);
    if (!lowerBlockStatements(module, function, bodyBuilder, forStatement->block(), values, unsupportedReason)) {
        return false;
    }
    if (forStatement->block()->returnStmt().empty()) {
        bodyBuilder.CreateBr(updateBlock);
    }

    llvm::IRBuilder<> updateBuilder(updateBlock);
    if (forStatement->forUpdate() != nullptr) {
        if (forStatement->forUpdate()->assignmentCore() != nullptr) {
            if (!lowerAssignmentCoreStatement(updateBuilder, forStatement->forUpdate()->assignmentCore(), values)) {
                unsupportedReason = "for-update-lowering-failed";
                return false;
            }
        } else if (forStatement->forUpdate()->expression() != nullptr
            && lowerExpressionValue(updateBuilder, forStatement->forUpdate()->expression(), values) == nullptr) {
            unsupportedReason = "for-update-lowering-failed";
            return false;
        }
    }
    updateBuilder.CreateBr(condBlock);

    builder.SetInsertPoint(endBlock);
    return true;
}

bool lowerForInStatement(llvm::Module& module,
    llvm::Function* function,
    llvm::IRBuilder<>& builder,
    compilerv1Parser::ForInStatementContext* forInStatement,
    LoweredValueMap& values,
    std::string& unsupportedReason) {
    auto* forInIterable = forInStatement ? forInStatement->forInIterable() : nullptr;
    auto iterableExprs = forInIterable ? forInIterable->expression() : std::vector<compilerv1Parser::ExpressionContext*>{};
    auto* iterableExpr = iterableExprs.empty() ? nullptr : iterableExprs[0];
    if (function == nullptr || forInStatement == nullptr || forInStatement->typeRef() == nullptr
        || forInStatement->ID() == nullptr || iterableExpr == nullptr || forInStatement->block() == nullptr) {
        unsupportedReason = "invalid-for-in-shape";
        return false;
    }
    if (iterableExprs.size() > 1) {
        // Range-based for-in: `for T i in lo .. hi { body }` desugars
        // to a counted loop with an explicit element variable.
        llvm::Type* elementType = lowerTypeRef(builder.getContext(), forInStatement->typeRef());
        if (elementType == nullptr || !elementType->isIntegerTy()) {
            unsupportedReason = "for-in-range-non-integer-element";
            return false;
        }
        llvm::Value* loValue = lowerExpressionValue(builder, iterableExprs[0], values);
        llvm::Value* hiValue = lowerExpressionValue(builder, iterableExprs[1], values);
        if (loValue == nullptr || hiValue == nullptr) {
            unsupportedReason = "for-in-range-bound-lowering-failed";
            return false;
        }
        if (loValue->getType() != elementType) {
            loValue = castToCommonInteger(builder, loValue, elementType);
        }
        if (hiValue->getType() != elementType) {
            hiValue = castToCommonInteger(builder, hiValue, elementType);
        }
        if (loValue == nullptr || hiValue == nullptr) {
            unsupportedReason = "for-in-range-bound-cast-failed";
            return false;
        }
        llvm::AllocaInst* iAddr  = createEntryAlloca(function, elementType, forInStatement->ID()->getText());
        llvm::AllocaInst* endAddr = createEntryAlloca(function, elementType, forInStatement->ID()->getText() + ".end");
        builder.CreateStore(loValue, iAddr);
        builder.CreateStore(hiValue, endAddr);
        values[forInStatement->ID()->getText()] = {nullptr, iAddr, elementType, forInStatement->typeRef()->getText()};

        llvm::BasicBlock* rcond = llvm::BasicBlock::Create(module.getContext(), "forin.range.cond", function);
        llvm::BasicBlock* rbody = llvm::BasicBlock::Create(module.getContext(), "forin.range.body", function);
        llvm::BasicBlock* rstep = llvm::BasicBlock::Create(module.getContext(), "forin.range.step", function);
        llvm::BasicBlock* rend  = llvm::BasicBlock::Create(module.getContext(), "forin.range.end",  function);
        builder.CreateBr(rcond);

        llvm::IRBuilder<> cb(rcond);
        llvm::Value* iVal = cb.CreateLoad(elementType, iAddr);
        llvm::Value* eVal = cb.CreateLoad(elementType, endAddr);
        cb.CreateCondBr(cb.CreateICmpSLT(iVal, eVal), rbody, rend);

        llvm::IRBuilder<> bb(rbody);
        if (!lowerBlockStatements(module, function, bb, forInStatement->block(), values, unsupportedReason)) {
            return false;
        }
        if (forInStatement->block()->returnStmt().empty()) {
            bb.CreateBr(rstep);
        }

        llvm::IRBuilder<> sb(rstep);
        llvm::Value* curI = sb.CreateLoad(elementType, iAddr);
        sb.CreateStore(sb.CreateAdd(curI, llvm::ConstantInt::get(elementType, 1)), iAddr);
        sb.CreateBr(rcond);

        builder.SetInsertPoint(rend);
        return true;
    }

    const auto sourceIt = values.find(iterableExpr->getText());
    const bool isI32Vector = sourceIt != values.end() && isApolloTypeText(sourceIt->second.typeText, "vector<i32>");
    const std::string soaSymbolStem = sourceIt == values.end() ? std::string() : soaVectorSymbolStem(sourceIt->second.typeText);
    if (sourceIt == values.end() || (!isI32Vector && soaSymbolStem.empty())) {
        unsupportedReason = "for-in-source-not-iterable";
        return false;
    }

    llvm::Type* elementType = lowerTypeRef(builder.getContext(), forInStatement->typeRef());
    if (elementType == nullptr) {
        unsupportedReason = "for-in-element-type-lowering-failed";
        return false;
    }

    llvm::AllocaInst* elementAddress = createEntryAlloca(function, elementType, forInStatement->ID()->getText());
    values[forInStatement->ID()->getText()] = {nullptr, elementAddress, elementType, forInStatement->typeRef()->getText()};

    llvm::Type* i32Ty = llvm::Type::getInt32Ty(module.getContext());
    llvm::AllocaInst* indexAddress = createEntryAlloca(function, i32Ty, forInStatement->ID()->getText() + ".index");
    builder.CreateStore(llvm::ConstantInt::get(i32Ty, 0), indexAddress);

    llvm::BasicBlock* condBlock = llvm::BasicBlock::Create(module.getContext(), "forin.cond", function);
    llvm::BasicBlock* bodyBlock = llvm::BasicBlock::Create(module.getContext(), "forin.body", function);
    llvm::BasicBlock* updateBlock = llvm::BasicBlock::Create(module.getContext(), "forin.update", function);
    llvm::BasicBlock* endBlock = llvm::BasicBlock::Create(module.getContext(), "forin.end", function);

    builder.CreateBr(condBlock);

    llvm::IRBuilder<> condBuilder(condBlock);
    llvm::Value* handle = loadIfAddressable(condBuilder, sourceIt->second);
    llvm::Value* indexValue = condBuilder.CreateLoad(i32Ty, indexAddress);
    llvm::Value* sizeValue = nullptr;
    if (isI32Vector) {
        sizeValue = condBuilder.CreateCall(getApolloVectorI32SizeDeclaration(module), {handle});
    } else {
        llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(module.getContext());
        llvm::FunctionCallee sizeDecl = module.getOrInsertFunction(
            soaSymbolStem + "_size",
            llvm::FunctionType::get(i32Ty, {opaquePtrTy}, false));
        sizeValue = condBuilder.CreateCall(sizeDecl, {handle});
    }
    condBuilder.CreateCondBr(condBuilder.CreateICmpSLT(indexValue, sizeValue), bodyBlock, endBlock);

    llvm::IRBuilder<> bodyBuilder(bodyBlock);
    handle = loadIfAddressable(bodyBuilder, sourceIt->second);
    indexValue = bodyBuilder.CreateLoad(i32Ty, indexAddress);
    llvm::Value* elementValue = nullptr;
    if (isI32Vector) {
        elementValue = bodyBuilder.CreateCall(getApolloVectorI32GetDeclaration(module), {handle, indexValue});
    } else {
        llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(module.getContext());
        llvm::FunctionCallee getDecl = module.getOrInsertFunction(
            soaSymbolStem + "_get",
            llvm::FunctionType::get(elementType, {opaquePtrTy, i32Ty}, false));
        elementValue = bodyBuilder.CreateCall(getDecl, {handle, indexValue});
    }
    if (elementValue->getType() != elementType) {
        elementValue = castToCommonInteger(bodyBuilder, elementValue, elementType);
    }
    if (elementValue == nullptr || elementValue->getType() != elementType) {
        unsupportedReason = "for-in-element-value-lowering-failed";
        return false;
    }
    bodyBuilder.CreateStore(elementValue, elementAddress);
    if (!lowerBlockStatements(module, function, bodyBuilder, forInStatement->block(), values, unsupportedReason)) {
        return false;
    }
    if (forInStatement->block()->returnStmt().empty()) {
        bodyBuilder.CreateBr(updateBlock);
    }

    llvm::IRBuilder<> updateBuilder(updateBlock);
    indexValue = updateBuilder.CreateLoad(i32Ty, indexAddress);
    updateBuilder.CreateStore(updateBuilder.CreateAdd(indexValue, llvm::ConstantInt::get(i32Ty, 1)), indexAddress);
    updateBuilder.CreateBr(condBlock);

    builder.SetInsertPoint(endBlock);
    return true;
}

bool lowerSwitchStatement(llvm::Module& module,
    llvm::Function* function,
    llvm::IRBuilder<>& builder,
    compilerv1Parser::SwitchStatementContext* switchStatement,
    LoweredValueMap& values,
    std::string& unsupportedReason) {
    if (function == nullptr || switchStatement == nullptr || switchStatement->expression() == nullptr) {
        unsupportedReason = "invalid-switch-shape";
        return false;
    }

    llvm::Value* switchValue = lowerExpressionValue(builder, switchStatement->expression(), values);
    if (switchValue == nullptr || !switchValue->getType()->isIntegerTy()) {
        unsupportedReason = "switch-value-not-integer";
        return false;
    }

    std::vector<llvm::BasicBlock*> caseBlocks;
    std::vector<llvm::BasicBlock*> checkBlocks;
    caseBlocks.reserve(switchStatement->switchCase().size());
    checkBlocks.reserve(switchStatement->switchCase().size());
    for (size_t index = 0; index < switchStatement->switchCase().size(); ++index) {
        checkBlocks.push_back(llvm::BasicBlock::Create(module.getContext(), "switch.check", function));
        caseBlocks.push_back(llvm::BasicBlock::Create(module.getContext(), "switch.case", function));
    }
    llvm::BasicBlock* defaultBlock = switchStatement->switchDefault() != nullptr
        ? llvm::BasicBlock::Create(module.getContext(), "switch.default", function)
        : nullptr;
    llvm::BasicBlock* endBlock = llvm::BasicBlock::Create(module.getContext(), "switch.end", function);

    builder.CreateBr(checkBlocks.empty() ? (defaultBlock != nullptr ? defaultBlock : endBlock) : checkBlocks.front());

    for (size_t index = 0; index < switchStatement->switchCase().size(); ++index) {
        llvm::IRBuilder<> checkBuilder(checkBlocks[index]);
        llvm::Value* caseValue = lowerExpressionValue(checkBuilder, switchStatement->switchCase(index)->expression(), values);
        if (caseValue == nullptr) {
            unsupportedReason = "switch-case-value-lowering-failed";
            return false;
        }
        if (caseValue->getType() != switchValue->getType()) {
            caseValue = castToCommonInteger(checkBuilder, caseValue, switchValue->getType());
        }
        if (caseValue == nullptr || caseValue->getType() != switchValue->getType()) {
            unsupportedReason = "switch-case-value-cast-failed";
            return false;
        }
        llvm::BasicBlock* missBlock = index + 1 < checkBlocks.size()
            ? checkBlocks[index + 1]
            : (defaultBlock != nullptr ? defaultBlock : endBlock);
        checkBuilder.CreateCondBr(checkBuilder.CreateICmpEQ(switchValue, caseValue), caseBlocks[index], missBlock);
    }

    for (size_t index = 0; index < switchStatement->switchCase().size(); ++index) {
        llvm::IRBuilder<> caseBuilder(caseBlocks[index]);
        if (!lowerBlockStatements(module, function, caseBuilder, switchStatement->switchCase(index)->block(), values, unsupportedReason)) {
            return false;
        }
        if (switchStatement->switchCase(index)->block()->returnStmt().empty()) {
            llvm::BasicBlock* nextBlock = index + 1 < caseBlocks.size()
                ? caseBlocks[index + 1]
                : (defaultBlock != nullptr ? defaultBlock : endBlock);
            caseBuilder.CreateBr(nextBlock);
        }
    }

    if (defaultBlock != nullptr) {
        llvm::IRBuilder<> defaultBuilder(defaultBlock);
        if (!lowerBlockStatements(module, function, defaultBuilder, switchStatement->switchDefault()->block(), values, unsupportedReason)) {
            return false;
        }
        if (switchStatement->switchDefault()->block()->returnStmt().empty()) {
            defaultBuilder.CreateBr(endBlock);
        }
    }

    builder.SetInsertPoint(endBlock);
    return true;
}

bool lowerTryCatchStatement(llvm::Module& module,
    llvm::Function* function,
    llvm::IRBuilder<>& builder,
    compilerv1Parser::TryCatchStatementContext* tryCatchStatement,
    LoweredValueMap& values,
    std::string& unsupportedReason) {
    if (tryCatchStatement == nullptr || tryCatchStatement->block().empty()) {
        unsupportedReason = "invalid-try-catch-shape";
        return false;
    }
    return lowerBlockStatements(module, function, builder, tryCatchStatement->block(0), values, unsupportedReason);
}

bool lowerSrcDeclStatement(llvm::Module& module,
    llvm::Function* function,
    compilerv1Parser::SrcDeclContext* srcDecl,
    LoweredValueMap& values,
    std::string& unsupportedReason) {
    if (function == nullptr || srcDecl == nullptr || srcDecl->ID() == nullptr || srcDecl->block() == nullptr) {
        unsupportedReason = "invalid-src-shape";
        return false;
    }

    llvm::Type* returnType = srcDecl->returnType() != nullptr
        ? lowerReturnType(module.getContext(), srcDecl->returnType())
        : llvm::Type::getVoidTy(module.getContext());
    if (returnType == nullptr) {
        returnType = llvm::PointerType::getUnqual(module.getContext());
    }

    std::vector<llvm::Type*> parameterTypes;
    std::vector<std::string> parameterNames;
    if (srcDecl->params() != nullptr) {
        for (auto* param : srcDecl->params()->param()) {
            if (param == nullptr || param->ID() == nullptr) {
                unsupportedReason = "src-parameter-metadata-missing";
                return false;
            }
            llvm::Type* parameterType = param->typeRef() != nullptr
                ? lowerTypeRef(module.getContext(), param->typeRef())
                : nullptr;
            if (parameterType == nullptr) {
                parameterType = llvm::PointerType::getUnqual(module.getContext());
            }
            parameterTypes.push_back(parameterType);
            parameterNames.push_back(param->ID()->getText());
        }
    }

    llvm::FunctionType* functionType = llvm::FunctionType::get(returnType, parameterTypes, false);
    llvm::Function* loweredSrc = llvm::Function::Create(
        functionType,
        llvm::GlobalValue::InternalLinkage,
        makeUniqueFunctionName(module, function->getName().str() + ".src." + srcDecl->ID()->getText()),
        module);
    for (size_t index = 0; index < parameterNames.size(); ++index) {
        loweredSrc->getArg(static_cast<unsigned>(index))->setName(parameterNames[index]);
    }

    if (!lowerCallableBody(module, loweredSrc, srcDecl->block(), unsupportedReason)) {
        loweredSrc->eraseFromParent();
        return false;
    }

    values[srcDecl->ID()->getText()] = {loweredSrc, nullptr, loweredSrc->getType(), "src"};
    return true;
}

bool lowerLtoTypesetStatement(compilerv1Parser::LtoTypesetStmtContext* ltoTypesetStmt) {
    return ltoTypesetStmt != nullptr;
}

bool lowerRdwindowStatement(llvm::IRBuilder<>& builder,
    llvm::Function* function,
    compilerv1Parser::RdwindowStmtContext* rdwindowStmt,
    LoweredValueMap& values) {
    if (function == nullptr || rdwindowStmt == nullptr || rdwindowStmt->ID() == nullptr) {
        return false;
    }

    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(builder.getContext());
    llvm::AllocaInst* address = createEntryAlloca(function, opaquePtrTy, rdwindowStmt->ID()->getText());
    llvm::Value* windowName = createGlobalCString(*builder.GetInsertBlock()->getModule(), builder, rdwindowStmt->ID()->getText(), "apollo.gui.window.name");
    llvm::FunctionCallee createDecl = builder.GetInsertBlock()->getModule()->getOrInsertFunction(
        "apollo_gui_window_create",
        llvm::FunctionType::get(opaquePtrTy, {llvm::PointerType::getUnqual(builder.getContext())}, false));
    llvm::Value* handle = builder.CreateCall(createDecl, {windowName});
    builder.CreateStore(handle, address);
    values[rdwindowStmt->ID()->getText()] = {handle, address, opaquePtrTy, "rdwindow"};
    return true;
}

bool lowerEventHandlerStatement(compilerv1Parser::EventHandlerStmtContext* eventHandlerStmt) {
    return eventHandlerStmt != nullptr;
}

bool lowerInstanceStatement(llvm::IRBuilder<>& builder,
    llvm::Function* function,
    compilerv1Parser::InstanceContext* instance,
    LoweredValueMap& values) {
    if (function == nullptr || instance == nullptr || instance->ID() == nullptr) {
        return false;
    }

    llvm::PointerType* opaquePointerType = llvm::PointerType::getUnqual(builder.getContext());
    llvm::AllocaInst* address = createEntryAlloca(function, opaquePointerType, instance->ID()->getText());

    llvm::Value* initialValue = nullptr;
    std::string typeText;
    if (!lowerInstancePlaceholderValue(builder, instance->instanceValue(), initialValue, typeText)) {
        return false;
    }

    builder.CreateStore(initialValue, address);
    values[instance->ID()->getText()] = {initialValue, address, opaquePointerType, typeText};
    return true;
}

bool lowerInstancePushStatement(llvm::IRBuilder<>& builder,
    compilerv1Parser::InstancepushContext* instancePush,
    LoweredValueMap& values) {
    if (instancePush == nullptr || instancePush->ID() == nullptr || instancePush->instanceValue() == nullptr) {
        return false;
    }

    const auto it = values.find(instancePush->ID()->getText());
    if (it == values.end() || it->second.address == nullptr || it->second.storageType == nullptr) {
        return false;
    }

    llvm::Value* newValue = nullptr;
    std::string typeText;
    if (!lowerInstancePlaceholderValue(builder, instancePush->instanceValue(), newValue, typeText)) {
        return false;
    }
    if (newValue == nullptr) {
        return false;
    }
    if (newValue->getType() != it->second.storageType) {
        if (!newValue->getType()->isPointerTy() || !it->second.storageType->isPointerTy()) {
            return false;
        }
        newValue = builder.CreateBitCast(newValue, it->second.storageType);
    }

    builder.CreateStore(newValue, it->second.address);
    it->second.value = newValue;
    it->second.typeText = std::move(typeText);
    return true;
}

bool lowerIfStatement(llvm::Module& module,
    llvm::Function* function,
    llvm::IRBuilder<>& builder,
    compilerv1Parser::IfStatementContext* ifStatement,
    LoweredValueMap& values,
    std::string& unsupportedReason) {
    if (ifStatement == nullptr || ifStatement->block().empty()) {
        unsupportedReason = "invalid-if-shape";
        return false;
    }
    llvm::Value* condition = lowerConditionValue(builder, ifStatement->expression(), values);
    if (condition == nullptr) {
        unsupportedReason = takeSemanticError();
        if (unsupportedReason.empty()) {
            unsupportedReason = "if-condition-lowering-failed:" + ifStatement->expression()->getText();
        }
        return false;
    }

    llvm::BasicBlock* thenBlock = llvm::BasicBlock::Create(module.getContext(), "if.then", function);
    llvm::BasicBlock* elseBlock = ifStatement->block().size() > 1
        ? llvm::BasicBlock::Create(module.getContext(), "if.else", function)
        : nullptr;
    llvm::BasicBlock* mergeBlock = llvm::BasicBlock::Create(module.getContext(), "if.end", function);

    builder.CreateCondBr(condition, thenBlock, elseBlock != nullptr ? elseBlock : mergeBlock);

    llvm::IRBuilder<> thenBuilder(thenBlock);
    LoweredValueMap thenValues = values;
    if (!lowerBlockStatements(module, function, thenBuilder, ifStatement->block(0), thenValues, unsupportedReason)) {
        return false;
    }
    if (ifStatement->block(0)->returnStmt().empty()) {
        thenBuilder.CreateBr(mergeBlock);
    }

    if (elseBlock != nullptr) {
        llvm::IRBuilder<> elseBuilder(elseBlock);
        LoweredValueMap elseValues = values;
        if (!lowerBlockStatements(module, function, elseBuilder, ifStatement->block(1), elseValues, unsupportedReason)) {
            return false;
        }
        if (ifStatement->block(1)->returnStmt().empty()) {
            elseBuilder.CreateBr(mergeBlock);
        }

        for (const auto& [name, loweredValue] : thenValues) {
            if (values.contains(name) || loweredValue.address == nullptr || !llvm::isa<llvm::GlobalVariable>(loweredValue.address)) {
                continue;
            }
            const auto elseIt = elseValues.find(name);
            if (elseIt == elseValues.end() || elseIt->second.address != loweredValue.address) {
                continue;
            }
            values.insert_or_assign(name, loweredValue);
        }
    }

    if (elseBlock == nullptr) {
        bool conditionIsTrue = false;
        if (const auto* constantCondition = llvm::dyn_cast<llvm::ConstantInt>(condition); constantCondition != nullptr) {
            conditionIsTrue = constantCondition->isOne();
        }

        if (conditionIsTrue) {
            for (const auto& [name, loweredValue] : thenValues) {
                if (values.contains(name) || loweredValue.address == nullptr || !llvm::isa<llvm::GlobalVariable>(loweredValue.address)) {
                    continue;
                }
                values.insert_or_assign(name, loweredValue);
            }
        }
    }

    builder.SetInsertPoint(mergeBlock);
    return true;
}

bool lowerTypedefOpstructCaptureStatement(llvm::IRBuilder<>& builder,
    compilerv1Parser::TypedefOpstructCaptureContext* capture,
    LoweredValueMap& values) {
    if (capture == nullptr || capture->expression() == nullptr) {
        return false;
    }

    llvm::Module* module = builder.GetInsertBlock() != nullptr ? builder.GetInsertBlock()->getModule() : nullptr;
    if (module == nullptr) {
        return false;
    }

    llvm::Value* payloadValue = lowerExpressionValue(builder, capture->expression(), values);
    if (payloadValue == nullptr || !payloadValue->getType()->isPointerTy()) {
        return false;
    }

    builder.CreateCall(getApolloExecuteApolloPayloadDeclaration(*module), {payloadValue});
    return true;
}

bool lowerTypedefOpstructSessionStatement(llvm::IRBuilder<>& builder,
    compilerv1Parser::TypedefOpstructSessionContext* session,
    LoweredValueMap& values) {
    if (session == nullptr) {
        return false;
    }

    for (auto* command : session->typedefOpstructCommand()) {
        if (command == nullptr || !lowerTypedefOpstructCaptureStatement(builder, command->typedefOpstructCapture(), values)) {
            return false;
        }
    }
    return true;
}

bool lowerTypedefOpstructCreateStatement(compilerv1Parser::TypedefOpstructCreateStmtContext* createStmt) {
    return createStmt != nullptr;
}

bool lowerTypedefOpstructPhraseStatement(llvm::IRBuilder<>& builder,
    compilerv1Parser::TypedefOpstructPhraseStmtContext* phrase,
    LoweredValueMap& values) {
    if (phrase == nullptr) {
        return false;
    }
    return lowerTypedefOpstructCaptureStatement(builder, phrase->typedefOpstructCapture(), values);
}

bool lowerGlobalInitStatement(llvm::Module& module,
    llvm::IRBuilder<>& builder,
    compilerv1Parser::GlobalInitContext* globalInit,
    LoweredValueMap& values) {
    if (globalInit == nullptr || globalInit->init() == nullptr || globalInit->init()->initCore() == nullptr) {
        return false;
    }

    auto* initCore = globalInit->init()->initCore();
    if (initCore->typeRef() == nullptr || initCore->ID() == nullptr) {
        return false;
    }

    if (!lowerGlobalVariable(module, initCore->typeRef(), initCore->ID(), initCore->expression())) {
        return false;
    }

    llvm::GlobalVariable* global = module.getNamedGlobal(initCore->ID()->getText());
    if (global == nullptr) {
        return false;
    }

    if (initCore->expression() == nullptr) {
        llvm::Value* initialValue = createOpaqueContainerDefault(module, builder, initCore->typeRef()->getText());
        if (initialValue != nullptr) {
            llvm::Type* expectedType = global->getValueType();
            if (initialValue->getType() != expectedType) {
                if (!initialValue->getType()->isPointerTy() || !expectedType->isPointerTy()) {
                    return false;
                }
                initialValue = builder.CreateBitCast(initialValue, expectedType);
            }
            builder.CreateStore(initialValue, global);
        }
    }

    values.insert_or_assign(initCore->ID()->getText(), LoweredValue{global, global, global->getValueType(), initCore->typeRef()->getText()});
    return true;
}

bool lowerStatement(llvm::Module& module,
    llvm::Function* function,
    llvm::IRBuilder<>& builder,
    compilerv1Parser::StatementContext* statement,
    LoweredValueMap& values,
    std::string& unsupportedReason) {
    if (statement == nullptr) {
        unsupportedReason = "null-statement";
        return false;
    }
    if (statement->print() != nullptr) {
        if (!lowerBuiltinStatement(module, builder, statement, values)) {
            unsupportedReason = "print-lowering-failed";
            return false;
        }
        return true;
    }
    if (statement->init() != nullptr) {
        if (!lowerInitStatement(builder, function, statement->init(), values)) {
            auto sem = takeSemanticError();
            unsupportedReason = sem.empty()
                ? ("init-lowering-failed:" + statement->init()->getText())
                : sem;
            return false;
        }
        return true;
    }
    if (statement->globalInit() != nullptr) {
        if (!lowerGlobalInitStatement(module, builder, statement->globalInit(), values)) {
            auto sem = takeSemanticError();
            unsupportedReason = sem.empty()
                ? ("global-init-lowering-failed:" + statement->globalInit()->getText())
                : sem;
            return false;
        }
        return true;
    }
    if (statement->bridgeInit() != nullptr) {
        if (statement->bridgeInit()->init() == nullptr) {
            unsupportedReason = "bridge-init-lowering-failed";
            return false;
        }
        if (!lowerInitStatement(builder, function, statement->bridgeInit()->init(), values)) {
            auto sem = takeSemanticError();
            unsupportedReason = sem.empty() ? "bridge-init-lowering-failed" : sem;
            return false;
        }
        return true;
    }
    if (statement->ltoInit() != nullptr) {
        if (!lowerLtoInitStatement(builder, function, statement->ltoInit(), values)) {
            unsupportedReason = "lto-init-lowering-failed:" + statement->ltoInit()->getText();
            return false;
        }
        return true;
    }
    if (statement->easyInit() != nullptr) {
        if (!lowerEasyInitStatement(builder, function, statement->easyInit(), values)) {
            unsupportedReason = "easy-init-lowering-failed:" + statement->easyInit()->getText();
            return false;
        }
        return true;
    }
    if (statement->pointer() != nullptr) {
        if (!lowerPointerStatement(builder, function, statement->pointer(), values)) {
            unsupportedReason = "pointer-lowering-failed:" + statement->pointer()->getText();
            return false;
        }
        return true;
    }
    if (statement->assignment() != nullptr) {
        if (!lowerAssignmentStatement(builder, statement->assignment(), values)) {
            auto sem = takeSemanticError();
            unsupportedReason = sem.empty()
                ? ("assignment-lowering-failed:" + statement->assignment()->getText())
                : sem;
            return false;
        }
        return true;
    }
    if (statement->memberAssignment() != nullptr) {
        if (!lowerMemberAssignmentStatement(builder, statement->memberAssignment(), values)) {
            unsupportedReason = "member-assignment-lowering-failed:" + statement->memberAssignment()->getText();
            return false;
        }
        return true;
    }
    if (statement->instance() != nullptr) {
        if (!lowerInstanceStatement(builder, function, statement->instance(), values)) {
            unsupportedReason = "instance-lowering-failed:" + statement->instance()->getText();
            return false;
        }
        return true;
    }
    if (statement->instancepush() != nullptr) {
        if (!lowerInstancePushStatement(builder, statement->instancepush(), values)) {
            unsupportedReason = "instancepush-lowering-failed:" + statement->instancepush()->getText();
            return false;
        }
        return true;
    }
    if (statement->nrcDecl() != nullptr) {
        if (!lowerNrcDeclStatement(statement->nrcDecl())) {
            unsupportedReason = "nrc-lowering-failed:" + statement->nrcDecl()->getText();
            return false;
        }
        return true;
    }
    if (statement->lambda() != nullptr) {
        if (!lowerLambdaStatement(module, function, builder, statement->lambda(), values, unsupportedReason)) {
            if (unsupportedReason.empty()) {
                unsupportedReason = "lambda-lowering-failed";
            }
            return false;
        }
        return true;
    }
    if (statement->closure() != nullptr) {
        if (!lowerClosureStatement(module, function, builder, statement->closure(), values, unsupportedReason)) {
            if (unsupportedReason.empty()) {
                unsupportedReason = "closure-lowering-failed";
            }
            return false;
        }
        return true;
    }
    if (statement->forStatement() != nullptr) {
        return lowerForStatement(module, function, builder, statement->forStatement(), values, unsupportedReason);
    }
    if (statement->forInStatement() != nullptr) {
        return lowerForInStatement(module, function, builder, statement->forInStatement(), values, unsupportedReason);
    }
    if (statement->switchStatement() != nullptr) {
        return lowerSwitchStatement(module, function, builder, statement->switchStatement(), values, unsupportedReason);
    }
    if (statement->tryCatchStatement() != nullptr) {
        return lowerTryCatchStatement(module, function, builder, statement->tryCatchStatement(), values, unsupportedReason);
    }
    if (statement->syscallStmt() != nullptr) {
        if (!lowerSyscallStatement(statement->syscallStmt())) {
            unsupportedReason = "syscall-lowering-failed:" + statement->syscallStmt()->getText();
            return false;
        }
        return true;
    }
    if (statement->typedefOpstructSession() != nullptr) {
        if (!lowerTypedefOpstructSessionStatement(builder, statement->typedefOpstructSession(), values)) {
            unsupportedReason = "typedef-opstruct-session-lowering-failed:" + statement->typedefOpstructSession()->getText();
            return false;
        }
        return true;
    }
    if (statement->typedefOpstructCreateStmt() != nullptr) {
        if (!lowerTypedefOpstructCreateStatement(statement->typedefOpstructCreateStmt())) {
            unsupportedReason = "typedef-opstruct-create-lowering-failed:" + statement->typedefOpstructCreateStmt()->getText();
            return false;
        }
        return true;
    }
    if (statement->typedefOpstructPhraseStmt() != nullptr) {
        if (!lowerTypedefOpstructPhraseStatement(builder, statement->typedefOpstructPhraseStmt(), values)) {
            unsupportedReason = "typedef-opstruct-phrase-lowering-failed:" + statement->typedefOpstructPhraseStmt()->getText();
            return false;
        }
        return true;
    }
    if (statement->ifStatement() != nullptr) {
        return lowerIfStatement(module, function, builder, statement->ifStatement(), values, unsupportedReason);
    }
    if (statement->whileStatement() != nullptr) {
        return lowerWhileStatement(module, function, builder, statement->whileStatement(), values, unsupportedReason);
    }
    if (statement->loopStatement() != nullptr) {
        return lowerLoopStatement(module, function, builder, statement->loopStatement(), values, unsupportedReason);
    }
    if (statement->functionCall() != nullptr) {
        if (lowerFunctionCallValue(builder, statement->functionCall(), values) == nullptr) {
            auto sem = takeSemanticError();
            unsupportedReason = sem.empty()
                ? ("function-call-lowering-failed:" + statement->functionCall()->getText())
                : sem;
            return false;
        }
        return true;
    }
    if (statement->memberaccess() != nullptr) {
        if (lowerMemberAccessValue(builder, statement->memberaccess(), values) == nullptr) {
            const std::string aggregateName = resolveAggregateTypeName(values, statement->memberaccess()->accessBase()->getText());
            if (statement->memberaccess()->functionCall() != nullptr && !aggregateName.empty()
                && statement->memberaccess()->accessBase()->getText() != "indef"
                && values.contains(statement->memberaccess()->accessBase()->getText())
                && values.at(statement->memberaccess()->accessBase()->getText()).typeText.find('<') != std::string::npos) {
                return true;
            }
            auto sem = takeSemanticError();
            unsupportedReason = sem.empty()
                ? ("member-access-lowering-failed:" + statement->memberaccess()->getText())
                : sem;
            return false;
        }
        return true;
    }
    if (statement->unsafeBlock() != nullptr && statement->unsafeBlock()->block() != nullptr) {
        return lowerBlockStatements(module, function, builder, statement->unsafeBlock()->block(), values, unsupportedReason);
    }
    if (statement->bypassBlock() != nullptr && statement->bypassBlock()->block() != nullptr) {
        return lowerBlockStatements(module, function, builder, statement->bypassBlock()->block(), values, unsupportedReason);
    }
    if (statement->autofmtdeclareScope() != nullptr && statement->autofmtdeclareScope()->block() != nullptr) {
        return lowerBlockStatements(module, function, builder, statement->autofmtdeclareScope()->block(), values, unsupportedReason);
    }
    if (statement->cscope() != nullptr && statement->cscope()->block() != nullptr) {
        return lowerBlockStatements(module, function, builder, statement->cscope()->block(), values, unsupportedReason);
    }
    if (statement->block() != nullptr) {
        return lowerBlockStatements(module, function, builder, statement->block(), values, unsupportedReason);
    }
    if (statement->inductStmt() != nullptr || statement->releaseStmt() != nullptr) {
        return true;
    }
    if (statement->stdinStmt() != nullptr && statement->stdinStmt()->ID() != nullptr) {
        const auto it = values.find(statement->stdinStmt()->ID()->getText());
        if (it == values.end() || it->second.address == nullptr || it->second.storageType == nullptr) {
            unsupportedReason = "stdin-binding-missing:" + statement->stdinStmt()->getText();
            return false;
        }
        llvm::Value* storedValue = builder.CreateCall(getApolloStdinReadLineFunction(module));
        if (storedValue->getType() != it->second.storageType) {
            if (!storedValue->getType()->isPointerTy() || !it->second.storageType->isPointerTy()) {
                unsupportedReason = "stdin-value-cast-failed:" + statement->stdinStmt()->getText();
                return false;
            }
            storedValue = builder.CreateBitCast(storedValue, it->second.storageType);
        }
        builder.CreateStore(storedValue, it->second.address);
        return true;
    }
    if (statement->assertStmt() != nullptr) {
        llvm::Value* condition = lowerExpressionValue(builder, statement->assertStmt()->expression(), values);
        if (condition == nullptr || !condition->getType()->isIntegerTy(1)) {
            unsupportedReason = "assert-condition-lowering-failed:" + statement->assertStmt()->getText();
            return false;
        }
        return true;
    }
    if (statement->rdwindowStmt() != nullptr) {
        if (!lowerRdwindowStatement(builder, function, statement->rdwindowStmt(), values)) {
            unsupportedReason = "rdwindow-lowering-failed:" + statement->rdwindowStmt()->getText();
            return false;
        }
        return true;
    }
    if (statement->thread() != nullptr) {
        if (!lowerThreadStatement(builder, function, statement->thread(), values)) {
            unsupportedReason = "thread-lowering-failed:" + statement->thread()->getText();
            return false;
        }
        return true;
    }
    if (statement->srcDecl() != nullptr) {
        if (!lowerSrcDeclStatement(module, function, statement->srcDecl(), values, unsupportedReason)) {
            unsupportedReason = unsupportedReason.empty()
                ? "src-decl-lowering-failed:" + statement->srcDecl()->getText()
                : unsupportedReason;
            return false;
        }
        return true;
    }
    if (statement->eventHandlerStmt() != nullptr) {
        if (!lowerEventHandlerStatement(statement->eventHandlerStmt())) {
            unsupportedReason = "event-handler-lowering-failed:" + statement->eventHandlerStmt()->getText();
            return false;
        }
        return true;
    }
    if (statement->asyncCall() != nullptr) {
        if (!lowerAsyncCallStatement(builder, statement->asyncCall(), values)) {
            unsupportedReason = "async-call-lowering-failed:" + statement->asyncCall()->getText();
            return false;
        }
        return true;
    }
    if (statement->ltoTypesetStmt() != nullptr) {
        if (!lowerLtoTypesetStatement(statement->ltoTypesetStmt())) {
            unsupportedReason = "lto-typeset-lowering-failed:" + statement->ltoTypesetStmt()->getText();
            return false;
        }
        return true;
    }
    if (statement->inlineForeignBlock() != nullptr) {
        const ApolloInlineForeignBlock* inlineForeign = findInlineForeignBlockAt(statement->inlineForeignBlock());
        if (inlineForeign != nullptr && inlineForeign->executesAtRuntime) {
            if (!lowerRuntimeInlineForeignStatement(module, builder, *inlineForeign, values, unsupportedReason)) {
                return false;
            }
        }
        return true;
    }
    if (statement->nativemode() != nullptr) {
        return true;
    }
    if (statement->unsafeLineStmt() != nullptr) {
        return lowerUnsafeLineStatement(builder, function, statement->unsafeLineStmt(), values, unsupportedReason);
    }
    if (statement->mntDecl() != nullptr) {
        if (!lowerMntDeclStatement(builder, function, statement->mntDecl(), values)) {
            unsupportedReason = "mnt-lowering-failed:" + statement->mntDecl()->getText();
            return false;
        }
        return true;
    }
    if (statement->malloc() != nullptr) {
        if (!lowerMallocStatement(builder, function, statement->malloc(), values)) {
            unsupportedReason = "malloc-lowering-failed:" + statement->malloc()->getText();
            return false;
        }
        return true;
    }
    if (statement->free() != nullptr) {
        if (!lowerFreeStatement(builder, statement->free(), values)) {
            unsupportedReason = "free-lowering-failed:" + statement->free()->getText();
            return false;
        }
        return true;
    }
    if (statement->delalc() != nullptr) {
        if (!lowerDelalcStatement(builder, statement->delalc(), values)) {
            unsupportedReason = "delalc-lowering-failed:" + statement->delalc()->getText();
            return false;
        }
        return true;
    }
    if (statement->plcnew() != nullptr) {
        if (!lowerPlcnewStatement(builder, function, statement->plcnew(), values)) {
            unsupportedReason = "plcnew-lowering-failed:" + statement->plcnew()->getText();
            return false;
        }
        return true;
    }
    if (statement->autocatchStatement() != nullptr && statement->autocatchStatement()->block() != nullptr) {
        return lowerBlockStatements(module, function, builder, statement->autocatchStatement()->block(), values, unsupportedReason);
    }
    unsupportedReason = "statement-kind-not-lowered:" + statement->getText();
    return false;
}

bool lowerBlockStatements(llvm::Module& module,
    llvm::Function* function,
    llvm::IRBuilder<>& builder,
    compilerv1Parser::BlockContext* block,
    LoweredValueMap& values,
    std::string& unsupportedReason) {
    if (block == nullptr) {
        unsupportedReason = "missing-block";
        return false;
    }
    LoweredValueMap scopedValues = values;
    TypeAliasMap scopedAliases = snapshotActiveTypeAliases();
    TypeAliasScope aliasScope(&scopedAliases);

    for (auto* statement : block->statement()) {
        if (!lowerStatement(module, function, builder, statement, scopedValues, unsupportedReason)) {
            return false;
        }
    }

    for (auto& [name, loweredValue] : values) {
        const auto it = scopedValues.find(name);
        if (it != scopedValues.end()) {
            loweredValue = it->second;
        }
    }

    for (const auto& [name, loweredValue] : scopedValues) {
        if (values.contains(name) || loweredValue.address == nullptr || !llvm::isa<llvm::GlobalVariable>(loweredValue.address)) {
            continue;
        }
        values.insert_or_assign(name, loweredValue);
    }

    if (!block->returnStmt().empty()) {
        if (function == nullptr) {
            unsupportedReason = "return-without-function-context";
            return false;
        }

        auto* returnStmt = block->returnStmt(block->returnStmt().size() - 1);
        if (function->getReturnType()->isVoidTy()) {
            if (returnStmt != nullptr && returnStmt->expression() != nullptr) {
                unsupportedReason = "void-return-with-expression";
                return false;
            }
            builder.CreateRetVoid();
            return true;
        }

        llvm::Value* returnValue = lowerReturnExpression(builder, function->getReturnType(), returnStmt != nullptr ? returnStmt->expression() : nullptr, scopedValues);
        if (returnValue == nullptr) {
            unsupportedReason = "return-expression-lowering-failed";
            return false;
        }
        builder.CreateRet(returnValue);
        return true;
    }
    return true;
}

llvm::Value* lowerReturnExpression(llvm::IRBuilder<>& builder,
    llvm::Type* returnType,
    compilerv1Parser::ExpressionContext* expression,
    const LoweredValueMap& params) {
    if (returnType == nullptr || returnType->isVoidTy()) {
        return nullptr;
    }
    if (expression == nullptr) {
        return defaultValueForType(returnType);
    }

    std::string text = stripOuterParens(expression->getText());
    if (returnType->isIntegerTy(1) && text == "success") {
        return llvm::ConstantInt::getTrue(builder.getContext());
    }

    if (isDecimalIntegerLiteral(text)) {
        const std::uint64_t value = static_cast<std::uint64_t>(std::stoull(text));
        if (returnType->isIntegerTy()) {
            return llvm::ConstantInt::get(returnType, value);
        }
        if (returnType->isFloatingPointTy()) {
            return llvm::ConstantFP::get(returnType, static_cast<double>(value));
        }
    }

    const auto paramIt = params.find(text);
    if (paramIt != params.end()) {
        llvm::Value* value = loadIfAddressable(builder, paramIt->second);
        if (value != nullptr && value->getType() == returnType) {
            return value;
        }
    }

    llvm::Value* lowered = lowerExpressionForExpectedType(builder, expression, returnType, params, !returnType->isPointerTy());
    if (lowered != nullptr && lowered->getType() == returnType) {
        return lowered;
    }

    if (lowered != nullptr && returnType->isIntegerTy()) {
        llvm::Value* casted = castToCommonInteger(builder, lowered, returnType);
        if (casted != nullptr && casted->getType() == returnType) {
            return casted;
        }
    }

    if (lowered != nullptr && returnType->isFloatingPointTy() && lowered->getType()->isFloatingPointTy()) {
        llvm::Value* casted = lowered->getType() == returnType ? lowered : builder.CreateFPCast(lowered, returnType);
        if (casted != nullptr && casted->getType() == returnType) {
            return casted;
        }
    }

    if (lowered != nullptr && lowered->getType()->isPointerTy() && returnType->isPointerTy()) {
        llvm::Value* casted = lowered->getType() == returnType ? lowered : builder.CreateBitCast(lowered, returnType);
        if (casted != nullptr && casted->getType() == returnType) {
            return casted;
        }
    }

    const auto lowerSimpleToken = [&](std::string token) -> llvm::Value* {
        token = trimCopy(std::move(token));
        if (isDecimalIntegerLiteral(token)) {
            return llvm::ConstantInt::get(returnType, static_cast<std::uint64_t>(std::stoull(token)));
        }
        const auto it = params.find(token);
        if (it == params.end()) {
            return nullptr;
        }
        llvm::Value* value = loadIfAddressable(builder, it->second);
        if (value == nullptr || !value->getType()->isIntegerTy()) {
            return nullptr;
        }
        return castToCommonInteger(builder, value, returnType);
    };

    if (returnType->isIntegerTy()) {
        int depth = 0;
        for (std::size_t index = 0; index < text.size(); ++index) {
            const char ch = text[index];
            if (ch == '(') {
                ++depth;
                continue;
            }
            if (ch == ')') {
                --depth;
                continue;
            }
            if (depth == 0 && index > 0 && (ch == '+' || ch == '-')) {
                llvm::Value* left = lowerSimpleToken(text.substr(0, index));
                llvm::Value* right = lowerSimpleToken(text.substr(index + 1));
                if (left != nullptr && right != nullptr) {
                    return ch == '+' ? builder.CreateAdd(left, right) : builder.CreateSub(left, right);
                }
            }
        }

        return llvm::ConstantInt::get(returnType, 0);
    }

    if (returnType->isFloatingPointTy()) {
        return llvm::ConstantFP::get(returnType, 0.0);
    }

    return defaultValueForType(returnType);
}

std::string makeUniqueFunctionName(llvm::Module& module, const std::string& baseName) {
    std::string candidate = baseName;
    std::size_t suffix = 0;
    while (module.getFunction(candidate) != nullptr) {
        candidate = baseName + "." + std::to_string(++suffix);
    }
    return candidate;
}

bool lowerCallableBody(llvm::Module& module,
    llvm::Function* function,
    compilerv1Parser::BlockContext* block,
    std::string& unsupportedReason) {
    if (function == nullptr || block == nullptr) {
        unsupportedReason = "invalid-body-shape";
        return false;
    }

    llvm::BasicBlock* entry = llvm::BasicBlock::Create(module.getContext(), "entry", function);
    llvm::IRBuilder<> builder(entry);
    LoweredValueMap values;
    TypeAliasMap typeAliases;
    TypeAliasScope aliasScope(&typeAliases);
    for (auto& arg : function->args()) {
        llvm::AllocaInst* address = createEntryAlloca(function, valueStorageType(&arg), arg.getName());
        builder.CreateStore(&arg, address);
        values.emplace(std::string(arg.getName()), LoweredValue{&arg, address, arg.getType(), ""});
    }
    for (auto& global : module.globals()) {
        const std::string name = global.getName().str();
        const auto globalTypeIt = gGlobalTypeTexts.find(name);
        values.emplace(name, LoweredValue{&global, &global, global.getValueType(), gGuiWindowGlobals.contains(name) ? "rdwindow" : (globalTypeIt != gGlobalTypeTexts.end() ? globalTypeIt->second : "")});
    }
    addInlineForeignGlobalBindings(module, builder, values);

    if (!lowerBlockStatements(module, function, builder, block, values, unsupportedReason)) {
        return false;
    }
    if (block->returnStmt().empty()) {
        if (function->getReturnType()->isVoidTy()) {
            builder.CreateRetVoid();
            return true;
        }
        llvm::Value* defaultReturn = defaultValueForType(function->getReturnType());
        if (defaultReturn != nullptr) {
            builder.CreateRet(defaultReturn);
            return true;
        }
        unsupportedReason = "missing-required-return";
        return false;
    }

    if (builder.GetInsertBlock()->getTerminator() != nullptr) {
        return true;
    }

    auto* returnStmt = block->returnStmt(block->returnStmt().size() - 1);
    llvm::Value* returnValue = lowerReturnExpression(builder, function->getReturnType(), returnStmt != nullptr ? returnStmt->expression() : nullptr, values);
    if (returnValue == nullptr) {
        unsupportedReason = "return-expression-lowering-failed";
        return false;
    }
    builder.CreateRet(returnValue);
    return true;
}

bool lowerClosureCallableBody(llvm::Module& module,
    llvm::Function* function,
    compilerv1Parser::ClosureBodyContext* closureBody,
    std::string& unsupportedReason) {
    if (function == nullptr || closureBody == nullptr) {
        unsupportedReason = "invalid-closure-body";
        return false;
    }

    llvm::BasicBlock* entry = llvm::BasicBlock::Create(module.getContext(), "entry", function);
    llvm::IRBuilder<> builder(entry);
    LoweredValueMap values;
    for (auto& arg : function->args()) {
        llvm::AllocaInst* address = createEntryAlloca(function, valueStorageType(&arg), arg.getName());
        builder.CreateStore(&arg, address);
        values.emplace(std::string(arg.getName()), LoweredValue{&arg, address, arg.getType(), ""});
    }
    for (auto& global : module.globals()) {
        const std::string name = global.getName().str();
        const auto globalTypeIt = gGlobalTypeTexts.find(name);
        values.emplace(name, LoweredValue{&global, &global, global.getValueType(), gGuiWindowGlobals.contains(name) ? "rdwindow" : (globalTypeIt != gGlobalTypeTexts.end() ? globalTypeIt->second : "")});
    }
    addInlineForeignGlobalBindings(module, builder, values);

    const auto& bodyItems = closureBody->closureBodyItem();
    bool sawReturn = false;
    for (std::size_t index = 0; index < bodyItems.size(); ++index) {
        auto* bodyItem = bodyItems[index];
        if (bodyItem == nullptr) {
            unsupportedReason = "invalid-closure-body";
            return false;
        }

        if (auto* statement = bodyItem->statement()) {
            if (sawReturn) {
                unsupportedReason = "return-not-last-in-closure";
                return false;
            }
            if (!lowerStatement(module, function, builder, statement, values, unsupportedReason)) {
                return false;
            }
            continue;
        }

        auto* returnStmt = bodyItem->returnStmt();
        if (returnStmt == nullptr || sawReturn || index + 1 != bodyItems.size()) {
            unsupportedReason = "invalid-closure-return-placement";
            return false;
        }

        sawReturn = true;
        if (function->getReturnType()->isVoidTy()) {
            if (returnStmt->expression() != nullptr) {
                unsupportedReason = "void-return-with-expression";
                return false;
            }
            builder.CreateRetVoid();
            return true;
        }

        llvm::Value* returnValue = lowerReturnExpression(builder, function->getReturnType(), returnStmt->expression(), values);
        if (returnValue == nullptr) {
            unsupportedReason = "return-expression-lowering-failed";
            return false;
        }
        builder.CreateRet(returnValue);
        return true;
    }

    if (builder.GetInsertBlock()->getTerminator() != nullptr) {
        return true;
    }
    if (function->getReturnType()->isVoidTy()) {
        builder.CreateRetVoid();
        return true;
    }

    llvm::Value* defaultReturn = defaultValueForType(function->getReturnType());
    if (defaultReturn != nullptr) {
        builder.CreateRet(defaultReturn);
        return true;
    }
    unsupportedReason = "missing-required-return";
    return false;
}

llvm::Function* lowerAggregateMethodPrototype(llvm::Module& module,
    const AggregateRecord& aggregate,
    const AggregateMethodRecord& methodRecord,
    std::string& unsupportedReason) {
    unsupportedReason.clear();
    if (methodRecord.method == nullptr) {
        unsupportedReason = "missing-method-context";
        return nullptr;
    }

    llvm::Type* returnType = nullptr;
    if (methodRecord.method->returnType() != nullptr) {
        returnType = lowerReturnType(module.getContext(), methodRecord.method->returnType());
    } else {
        returnType = llvm::Type::getVoidTy(module.getContext());
    }
    if (returnType == nullptr) {
        returnType = llvm::PointerType::getUnqual(module.getContext());
    }

    std::vector<llvm::Type*> paramTypes;
    std::vector<std::string> paramNames;
    if (!methodRecord.isStatic) {
        paramTypes.push_back(llvm::PointerType::getUnqual(module.getContext()));
        paramNames.push_back("indef");
    }

    if (methodRecord.method->params() != nullptr) {
        for (auto* param : methodRecord.method->params()->param()) {
            if (param == nullptr || param->ID() == nullptr) {
                unsupportedReason = "method-parameter-metadata-missing";
                return nullptr;
            }
            llvm::Type* paramType = param->typeRef() != nullptr
                ? lowerTypeRef(module.getContext(), param->typeRef())
                : nullptr;
            if (paramType == nullptr) {
                paramType = llvm::PointerType::getUnqual(module.getContext());
            }
            paramTypes.push_back(paramType);
            paramNames.push_back(param->ID()->getText());
        }
    }

    llvm::FunctionType* functionType = llvm::FunctionType::get(returnType, paramTypes, false);
    llvm::Function* function = llvm::Function::Create(functionType,
        llvm::GlobalValue::InternalLinkage,
        methodRecord.loweredName,
        module);
    std::size_t index = 0;
    for (auto& arg : function->args()) {
        arg.setName(paramNames[index++]);
    }
    return function;
}

bool lowerAggregateMethodBody(llvm::Module& module,
    llvm::Function* function,
    const AggregateRecord& aggregate,
    const AggregateRegistry& registry,
    compilerv1Parser::MethodContext* method,
    std::string& unsupportedReason) {
    if (function == nullptr || method == nullptr || method->block() == nullptr) {
        unsupportedReason = "invalid-body-shape";
        return false;
    }

    llvm::BasicBlock* entry = llvm::BasicBlock::Create(module.getContext(), "entry", function);
    llvm::IRBuilder<> builder(entry);
    LoweredValueMap values;
    TypeAliasMap typeAliases;
    TypeAliasScope aliasScope(&typeAliases);
    for (auto& arg : function->args()) {
        llvm::AllocaInst* address = createEntryAlloca(function, valueStorageType(&arg), arg.getName());
        builder.CreateStore(&arg, address);
        values.emplace(std::string(arg.getName()), LoweredValue{&arg, address, arg.getType(), std::string(arg.getName()) == "indef" ? aggregate.name : ""});
    }
    for (auto& global : module.globals()) {
        const std::string name = global.getName().str();
        const auto globalTypeIt = gGlobalTypeTexts.find(name);
        values.emplace(name, LoweredValue{&global, &global, global.getValueType(), gGuiWindowGlobals.contains(name) ? "rdwindow" : (globalTypeIt != gGlobalTypeTexts.end() ? globalTypeIt->second : "")});
    }
    addInlineForeignGlobalBindings(module, builder, values);

    if (!function->arg_empty() && function->getArg(0)->getName() == "indef") {
        std::vector<AggregateFieldRecord> fields;
        if (!collectAggregateFields(registry, aggregate.name, fields)) {
            unsupportedReason = "aggregate-field-layout-missing";
            return false;
        }

        llvm::Value* selfValue = loadIfAddressable(builder, values.at("indef"));
        if (selfValue == nullptr) {
            unsupportedReason = "aggregate-self-load-failed";
            return false;
        }

        for (const auto& field : fields) {
            llvm::Value* fieldAddress = lowerAggregateFieldAddress(builder, selfValue, aggregate.name, field.name, registry);
            if (fieldAddress == nullptr) {
                unsupportedReason = "aggregate-field-address-failed:" + field.name;
                return false;
            }
            values[field.name] = {nullptr, fieldAddress, lowerSourceTypeText(module.getContext(), field.typeText), field.typeText};
        }
    }

    if (!lowerBlockStatements(module, function, builder, method->block(), values, unsupportedReason)) {
        return false;
    }
    if (method->block()->returnStmt().empty()) {
        if (function->getReturnType()->isVoidTy()) {
            builder.CreateRetVoid();
            return true;
        }
        llvm::Value* defaultReturn = defaultValueForType(function->getReturnType());
        if (defaultReturn != nullptr) {
            builder.CreateRet(defaultReturn);
            return true;
        }
        unsupportedReason = "missing-required-return";
        return false;
    }

    if (builder.GetInsertBlock()->getTerminator() != nullptr) {
        return true;
    }

    auto* returnStmt = method->block()->returnStmt(method->block()->returnStmt().size() - 1);
    llvm::Value* returnValue = lowerReturnExpression(builder, function->getReturnType(), returnStmt != nullptr ? returnStmt->expression() : nullptr, values);
    if (returnValue == nullptr) {
        unsupportedReason = "return-expression-lowering-failed";
        return false;
    }
    builder.CreateRet(returnValue);
    return true;
}

void lowerAggregateMethodBodies(llvm::Module& module,
    const AggregateRegistry& registry,
    std::vector<std::string>& unsupportedFunctions) {
    std::vector<std::pair<const AggregateRecord*, const AggregateMethodRecord*>> methodsToLower;
    for (const auto& [name, aggregate] : registry.records) {
        for (const auto& method : aggregate.methods) {
            methodsToLower.emplace_back(&aggregate, &method);
        }
    }

    for (const auto& [aggregate, method] : methodsToLower) {
        if (module.getFunction(method->loweredName) != nullptr) {
            continue;
        }
        std::string unsupportedReason;
        llvm::Function* function = lowerAggregateMethodPrototype(module, *aggregate, *method, unsupportedReason);
        if (function == nullptr) {
            unsupportedFunctions.push_back(aggregate->name + "." + method->sourceName + ":" + unsupportedReason);
        }
    }

    for (const auto& [aggregate, method] : methodsToLower) {
        llvm::Function* function = module.getFunction(method->loweredName);
        if (function == nullptr || !function->empty()) {
            continue;
        }
        std::string unsupportedReason;
        if (!lowerAggregateMethodBody(module, function, *aggregate, registry, method->method, unsupportedReason)) {
            unsupportedFunctions.push_back(aggregate->name + "." + method->sourceName + ":" + unsupportedReason);
            function->deleteBody();
        }
    }
}

bool extractLambdaDefinitionShape(compilerv1Parser::TypeRefContext* bindingType,
    compilerv1Parser::LambdaDefinitionContext* lambdaDefinition,
    bool allowBindingTypeReturnFallback,
    compilerv1Parser::ReturnTypeContext*& returnTypeCtx,
    compilerv1Parser::TypeRefContext*& bindingReturnType,
    compilerv1Parser::ParamsContext*& paramsCtx,
    compilerv1Parser::BlockContext*& block,
    std::string& unsupportedReason) {
    returnTypeCtx = nullptr;
    bindingReturnType = nullptr;
    paramsCtx = nullptr;
    block = nullptr;

    if (lambdaDefinition == nullptr) {
        unsupportedReason = "invalid-lambda-shape";
        return false;
    }

    if (auto* lambdaFunction = lambdaDefinition->function()) {
        returnTypeCtx = lambdaFunction->returnType();
        paramsCtx = lambdaFunction->params();
        block = lambdaFunction->block();
    } else if (auto* lambdaLiteral = lambdaDefinition->lambdaLiteral()) {
        returnTypeCtx = lambdaLiteral->returnType();
        paramsCtx = lambdaLiteral->params();
        block = lambdaLiteral->block();
        if (returnTypeCtx == nullptr && bindingType != nullptr && bindingType->typeAtom() != nullptr
            && bindingType->typeAtom()->functionType() != nullptr) {
            returnTypeCtx = bindingType->typeAtom()->functionType()->returnType();
        }
        if (returnTypeCtx == nullptr && allowBindingTypeReturnFallback
            && bindingType != nullptr && bindingType->typeAtom() != nullptr
            && bindingType->typeAtom()->functionType() == nullptr) {
            bindingReturnType = bindingType;
        }
    }

    if ((returnTypeCtx == nullptr && bindingReturnType == nullptr) || block == nullptr) {
        unsupportedReason = "invalid-lambda-shape";
        return false;
    }
    return true;
}

bool collectLambdaParameterMetadata(llvm::Module& module,
    compilerv1Parser::ParamsContext* paramsCtx,
    std::vector<llvm::Type*>& parameterTypes,
    std::vector<std::string>& parameterNames,
    std::string& unsupportedReason) {
    parameterTypes.clear();
    parameterNames.clear();
    if (paramsCtx == nullptr) {
        return true;
    }

    parameterTypes.reserve(paramsCtx->param().size());
    parameterNames.reserve(paramsCtx->param().size());
    for (auto* param : paramsCtx->param()) {
        if (param == nullptr || param->typeRef() == nullptr || param->ID() == nullptr) {
            unsupportedReason = "lambda-parameter-metadata-missing";
            return false;
        }
        llvm::Type* parameterType = lowerTypeRef(module.getContext(), param->typeRef());
        if (parameterType == nullptr) {
            parameterType = llvm::PointerType::getUnqual(module.getContext());
        }
        parameterTypes.push_back(parameterType);
        parameterNames.push_back(param->ID()->getText());
    }
    return true;
}

llvm::Type* lowerResolvedLambdaReturnType(llvm::LLVMContext& context,
    compilerv1Parser::ReturnTypeContext* returnTypeCtx,
    compilerv1Parser::TypeRefContext* bindingReturnType) {
    if (returnTypeCtx != nullptr) {
        return lowerReturnType(context, returnTypeCtx);
    }
    if (bindingReturnType != nullptr) {
        return lowerTypeRef(context, bindingReturnType);
    }
    return nullptr;
}

llvm::Function* lowerLambdaCallable(llvm::Module& module,
    llvm::Function* containingFunction,
    compilerv1Parser::TypeRefContext* bindingType,
    compilerv1Parser::LambdaDefinitionContext* lambdaDefinition,
    const std::string& valueName,
    std::string_view nameSegment,
    bool allowBindingTypeReturnFallback,
    std::string& unsupportedReason) {
    compilerv1Parser::ReturnTypeContext* returnTypeCtx = nullptr;
    compilerv1Parser::TypeRefContext* bindingReturnType = nullptr;
    compilerv1Parser::ParamsContext* paramsCtx = nullptr;
    compilerv1Parser::BlockContext* block = nullptr;
    if (!extractLambdaDefinitionShape(bindingType,
            lambdaDefinition,
            allowBindingTypeReturnFallback,
            returnTypeCtx,
            bindingReturnType,
            paramsCtx,
            block,
            unsupportedReason)) {
        return nullptr;
    }

    std::vector<llvm::Type*> parameterTypes;
    std::vector<std::string> parameterNames;
    if (!collectLambdaParameterMetadata(module, paramsCtx, parameterTypes, parameterNames, unsupportedReason)) {
        return nullptr;
    }

    llvm::Type* returnType = lowerResolvedLambdaReturnType(module.getContext(), returnTypeCtx, bindingReturnType);
    if (returnType == nullptr) {
        returnType = llvm::PointerType::getUnqual(module.getContext());
    }

    llvm::FunctionType* lambdaType = llvm::FunctionType::get(returnType, parameterTypes, false);
    const std::string functionPrefix = containingFunction != nullptr ? containingFunction->getName().str() : "apollo";
    std::string loweredName = makeUniqueFunctionName(module, functionPrefix + "." + std::string(nameSegment) + "." + valueName);
    llvm::Function* loweredLambda = llvm::Function::Create(lambdaType, llvm::GlobalValue::InternalLinkage, loweredName, module);
    std::size_t index = 0;
    for (auto& arg : loweredLambda->args()) {
        arg.setName(parameterNames[index++]);
    }

    if (!lowerCallableBody(module, loweredLambda, block, unsupportedReason)) {
        loweredLambda->eraseFromParent();
        return nullptr;
    }

    return loweredLambda;
}

bool lowerClosureStatement(llvm::Module& module,
    llvm::Function* function,
    llvm::IRBuilder<>& builder,
    compilerv1Parser::ClosureContext* closure,
    LoweredValueMap& values,
    std::string& unsupportedReason) {
    (void)builder;
    if (function == nullptr || closure == nullptr || closure->ID() == nullptr || closure->closureBody() == nullptr
        || closure->typeRef() == nullptr || closure->typeRef()->typeAtom() == nullptr
        || closure->typeRef()->typeAtom()->functionType() == nullptr) {
        unsupportedReason = "invalid-closure-shape";
        return false;
    }
    if (closure->closureCaptureList() != nullptr && closure->closureCaptureList()->getText() != "[]") {
        unsupportedReason = "closure-capture-requires-environment-lowering";
        return false;
    }

    auto* functionType = closure->typeRef()->typeAtom()->functionType();
    if (functionType == nullptr) {
        unsupportedReason = "invalid-closure-shape";
        return false;
    }

    std::vector<llvm::Type*> parameterTypes;
    std::vector<std::string> parameterNames;
    if (!collectLambdaParameterMetadata(module, closure->params(), parameterTypes, parameterNames, unsupportedReason)) {
        return false;
    }

    const std::size_t declaredCount = functionType->functionTypeArgs() != nullptr
        ? functionType->functionTypeArgs()->typeRef().size()
        : 0;
    if (declaredCount != parameterTypes.size()) {
        unsupportedReason = "closure-parameter-count-mismatch";
        return false;
    }

    llvm::Type* returnType = lowerReturnType(module.getContext(), functionType->returnType());
    if (returnType == nullptr) {
        returnType = llvm::PointerType::getUnqual(module.getContext());
    }

    llvm::FunctionType* closureType = llvm::FunctionType::get(returnType, parameterTypes, false);
    std::string loweredName = makeUniqueFunctionName(module, function->getName().str() + ".closure." + closure->ID()->getText());
    llvm::Function* loweredClosure = llvm::Function::Create(closureType, llvm::GlobalValue::InternalLinkage, loweredName, module);
    std::size_t index = 0;
    for (auto& arg : loweredClosure->args()) {
        arg.setName(parameterNames[index++]);
    }

    if (!lowerClosureCallableBody(module, loweredClosure, closure->closureBody(), unsupportedReason)) {
        loweredClosure->eraseFromParent();
        return false;
    }

    values[closure->ID()->getText()] = {loweredClosure, nullptr, loweredClosure->getType(), closure->typeRef()->getText()};
    return true;
}

bool lowerLambdaStatement(llvm::Module& module,
    llvm::Function* function,
    llvm::IRBuilder<>& builder,
    compilerv1Parser::LambdaContext* lambda,
    LoweredValueMap& values,
    std::string& unsupportedReason) {
    if (function == nullptr || lambda == nullptr || lambda->ID() == nullptr || lambda->lambdaDefinition() == nullptr || lambda->typeRef() == nullptr) {
        unsupportedReason = "invalid-lambda-shape";
        return false;
    }

    const bool bindsCallable = lambda->typeRef()->typeAtom() != nullptr
        && lambda->typeRef()->typeAtom()->functionType() != nullptr;

    llvm::Function* loweredLambda = lowerLambdaCallable(
        module,
        function,
        lambda->typeRef(),
        lambda->lambdaDefinition(),
        lambda->ID()->getText(),
        "lambda",
        true,
        unsupportedReason);
    if (loweredLambda == nullptr) {
        return false;
    }

    if (bindsCallable) {
        llvm::Type* storageType = lowerTypeRef(builder.getContext(), lambda->typeRef());
        if (storageType == nullptr || !storageType->isPointerTy()) {
            unsupportedReason = "lambda-binding-storage-type-lowering-failed";
            return false;
        }
        llvm::AllocaInst* address = createEntryAlloca(function, storageType, lambda->ID()->getText());
        llvm::Value* storedValue = loweredLambda;
        if (storedValue->getType() != storageType) {
            storedValue = builder.CreateBitCast(storedValue, storageType);
        }
        builder.CreateStore(storedValue, address);
        values[lambda->ID()->getText()] = {storedValue, address, storageType, lambda->typeRef()->getText()};
        return true;
    }

    if (loweredLambda->arg_size() != 0) {
        unsupportedReason = "lambda-immediate-evaluation-requires-zero-arg-callable";
        return false;
    }
    if (loweredLambda->getReturnType()->isVoidTy()) {
        unsupportedReason = "lambda-immediate-evaluation-requires-value-return";
        return false;
    }

    llvm::Value* resultValue = builder.CreateCall(loweredLambda, {});
    llvm::AllocaInst* address = createEntryAlloca(function, loweredLambda->getReturnType(), lambda->ID()->getText());
    builder.CreateStore(resultValue, address);
    values[lambda->ID()->getText()] = {resultValue, address, loweredLambda->getReturnType(), lambda->typeRef()->getText()};
    return true;
}

llvm::FunctionCallee getPrintfDeclaration(llvm::Module& module) {
    llvm::LLVMContext& context = module.getContext();
    llvm::Type* charPtrTy = llvm::PointerType::getUnqual(context);
    llvm::FunctionType* printfType = llvm::FunctionType::get(
        llvm::Type::getInt32Ty(context),
        {charPtrTy},
        true);
    return module.getOrInsertFunction("printf", printfType);
}

llvm::Value* createGlobalCString(llvm::Module& module,
    llvm::IRBuilder<>& builder,
    const std::string& value,
    const std::string& name) {
    llvm::LLVMContext& context = module.getContext();
    auto* data = llvm::ConstantDataArray::getString(context, value, true);
    auto* global = new llvm::GlobalVariable(module,
        data->getType(),
        true,
        llvm::GlobalValue::PrivateLinkage,
        data,
        name);
    global->setUnnamedAddr(llvm::GlobalValue::UnnamedAddr::Global);

    llvm::Constant* zero = llvm::ConstantInt::get(llvm::Type::getInt32Ty(context), 0);
    return builder.CreateInBoundsGEP(global->getValueType(), global, {zero, zero});
}

llvm::FunctionCallee getApolloVectorStrCreateDeclaration(llvm::Module& module) {
    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(module.getContext());
    return module.getOrInsertFunction("apollo_vector_str_create", llvm::FunctionType::get(opaquePtrTy, {}, false));
}

llvm::FunctionCallee getApolloVectorI32CreateDeclaration(llvm::Module& module) {
    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(module.getContext());
    return module.getOrInsertFunction("apollo_vector_i32_create", llvm::FunctionType::get(opaquePtrTy, {}, false));
}

llvm::FunctionCallee getApolloVectorStrPushDeclaration(llvm::Module& module) {
    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(module.getContext());
    llvm::Type* charPtrTy = llvm::PointerType::getUnqual(module.getContext());
    return module.getOrInsertFunction("apollo_vector_str_push", llvm::FunctionType::get(llvm::Type::getVoidTy(module.getContext()), {opaquePtrTy, charPtrTy}, false));
}

llvm::FunctionCallee getApolloVectorI32PushDeclaration(llvm::Module& module) {
    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(module.getContext());
    llvm::Type* i32Ty = llvm::Type::getInt32Ty(module.getContext());
    return module.getOrInsertFunction("apollo_vector_i32_push", llvm::FunctionType::get(llvm::Type::getVoidTy(module.getContext()), {opaquePtrTy, i32Ty}, false));
}

llvm::FunctionCallee getApolloVectorI32GetDeclaration(llvm::Module& module) {
    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(module.getContext());
    llvm::Type* i32Ty = llvm::Type::getInt32Ty(module.getContext());
    return module.getOrInsertFunction("apollo_vector_i32_get", llvm::FunctionType::get(i32Ty, {opaquePtrTy, i32Ty}, false));
}

llvm::FunctionCallee getApolloVectorI32SetDeclaration(llvm::Module& module) {
    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(module.getContext());
    llvm::Type* i32Ty = llvm::Type::getInt32Ty(module.getContext());
    return module.getOrInsertFunction("apollo_vector_i32_set", llvm::FunctionType::get(llvm::Type::getVoidTy(module.getContext()), {opaquePtrTy, i32Ty, i32Ty}, false));
}

llvm::FunctionCallee getApolloVectorI32SizeDeclaration(llvm::Module& module) {
    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(module.getContext());
    llvm::Type* i32Ty = llvm::Type::getInt32Ty(module.getContext());
    return module.getOrInsertFunction("apollo_vector_i32_size", llvm::FunctionType::get(i32Ty, {opaquePtrTy}, false));
}

llvm::FunctionCallee getApolloStringCompareDeclaration(llvm::Module& module) {
    llvm::Type* charPtrTy = llvm::PointerType::getUnqual(module.getContext());
    llvm::Type* i32Ty = llvm::Type::getInt32Ty(module.getContext());
    return module.getOrInsertFunction("sys__native_str_cmp", llvm::FunctionType::get(i32Ty, {charPtrTy, charPtrTy}, false));
}

llvm::FunctionCallee getApolloHashStrI32CreateDeclaration(llvm::Module& module) {
    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(module.getContext());
    return module.getOrInsertFunction("apollo_hash_str_i32_create", llvm::FunctionType::get(opaquePtrTy, {}, false));
}

llvm::FunctionCallee getApolloHashStrI32SetDeclaration(llvm::Module& module) {
    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(module.getContext());
    llvm::Type* charPtrTy = llvm::PointerType::getUnqual(module.getContext());
    llvm::Type* i32Ty = llvm::Type::getInt32Ty(module.getContext());
    return module.getOrInsertFunction("apollo_hash_str_i32_set", llvm::FunctionType::get(llvm::Type::getVoidTy(module.getContext()), {opaquePtrTy, charPtrTy, i32Ty}, false));
}

llvm::FunctionCallee getApolloHashStrI32GetDeclaration(llvm::Module& module) {
    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(module.getContext());
    llvm::Type* charPtrTy = llvm::PointerType::getUnqual(module.getContext());
    llvm::Type* i32Ty = llvm::Type::getInt32Ty(module.getContext());
    return module.getOrInsertFunction("apollo_hash_str_i32_get", llvm::FunctionType::get(i32Ty, {opaquePtrTy, charPtrTy}, false));
}

llvm::FunctionCallee getApolloHashI32I32CreateDeclaration(llvm::Module& module) {
    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(module.getContext());
    return module.getOrInsertFunction("apollo_hash_i32_i32_create", llvm::FunctionType::get(opaquePtrTy, {}, false));
}

llvm::FunctionCallee getApolloHashI32I32SetDeclaration(llvm::Module& module) {
    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(module.getContext());
    llvm::Type* i32Ty = llvm::Type::getInt32Ty(module.getContext());
    return module.getOrInsertFunction("apollo_hash_i32_i32_set", llvm::FunctionType::get(llvm::Type::getVoidTy(module.getContext()), {opaquePtrTy, i32Ty, i32Ty}, false));
}

llvm::FunctionCallee getApolloHashI32I32GetDeclaration(llvm::Module& module) {
    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(module.getContext());
    llvm::Type* i32Ty = llvm::Type::getInt32Ty(module.getContext());
    return module.getOrInsertFunction("apollo_hash_i32_i32_get", llvm::FunctionType::get(i32Ty, {opaquePtrTy, i32Ty}, false));
}

llvm::FunctionCallee getApolloNestedHashCreateDeclaration(llvm::Module& module) {
    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(module.getContext());
    return module.getOrInsertFunction("apollo_nested_hash_create", llvm::FunctionType::get(opaquePtrTy, {}, false));
}

llvm::FunctionCallee getApolloNestedHashSetDeclaration(llvm::Module& module) {
    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(module.getContext());
    llvm::Type* charPtrTy = llvm::PointerType::getUnqual(module.getContext());
    llvm::Type* i32Ty = llvm::Type::getInt32Ty(module.getContext());
    return module.getOrInsertFunction("apollo_nested_hash_set", llvm::FunctionType::get(llvm::Type::getVoidTy(module.getContext()), {opaquePtrTy, i32Ty, charPtrTy, charPtrTy, i32Ty}, false));
}

llvm::FunctionCallee getApolloNestedHashGetDeclaration(llvm::Module& module) {
    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(module.getContext());
    llvm::Type* charPtrTy = llvm::PointerType::getUnqual(module.getContext());
    llvm::Type* i32Ty = llvm::Type::getInt32Ty(module.getContext());
    return module.getOrInsertFunction("apollo_nested_hash_get", llvm::FunctionType::get(i32Ty, {opaquePtrTy, i32Ty, charPtrTy, charPtrTy}, false));
}

llvm::Function* getApolloStdinReadLineFunction(llvm::Module& module) {
    if (llvm::Function* existing = module.getFunction("apollo_stdin_read_line")) {
        return existing;
    }

    llvm::LLVMContext& context = module.getContext();
    llvm::Type* i1Ty = llvm::Type::getInt1Ty(context);
    llvm::Type* i8Ty = llvm::Type::getInt8Ty(context);
    llvm::Type* i32Ty = llvm::Type::getInt32Ty(context);
    llvm::Type* i64Ty = llvm::Type::getInt64Ty(context);
    llvm::Type* charPtrTy = llvm::PointerType::getUnqual(context);

    llvm::FunctionType* functionType = llvm::FunctionType::get(charPtrTy, {}, false);
    llvm::Function* function = llvm::Function::Create(
        functionType,
        llvm::GlobalValue::InternalLinkage,
        "apollo_stdin_read_line",
        module);

    llvm::BasicBlock* entryBlock = llvm::BasicBlock::Create(context, "entry", function);
    llvm::BasicBlock* readBlock = llvm::BasicBlock::Create(context, "stdin.read", function);
    llvm::BasicBlock* classifyBlock = llvm::BasicBlock::Create(context, "stdin.classify", function);
    llvm::BasicBlock* markStartedBlock = llvm::BasicBlock::Create(context, "stdin.start", function);
    llvm::BasicBlock* ensureCapacityBlock = llvm::BasicBlock::Create(context, "stdin.capacity", function);
    llvm::BasicBlock* growBlock = llvm::BasicBlock::Create(context, "stdin.grow", function);
    llvm::BasicBlock* appendBlock = llvm::BasicBlock::Create(context, "stdin.append", function);
    llvm::BasicBlock* terminateBlock = llvm::BasicBlock::Create(context, "stdin.terminate", function);

    llvm::IRBuilder<> builder(entryBlock);
    llvm::FunctionCallee mallocDecl = module.getOrInsertFunction("malloc", llvm::FunctionType::get(charPtrTy, {i64Ty}, false));
    llvm::FunctionCallee reallocDecl = module.getOrInsertFunction("realloc", llvm::FunctionType::get(charPtrTy, {charPtrTy, i64Ty}, false));
    llvm::FunctionCallee getcharDecl = module.getOrInsertFunction("getchar", llvm::FunctionType::get(i32Ty, {}, false));

    llvm::AllocaInst* bufferSlot = createEntryAlloca(function, charPtrTy, "stdin.buffer");
    llvm::AllocaInst* capacitySlot = createEntryAlloca(function, i64Ty, "stdin.capacity");
    llvm::AllocaInst* lengthSlot = createEntryAlloca(function, i64Ty, "stdin.length");
    llvm::AllocaInst* startedSlot = createEntryAlloca(function, i1Ty, "stdin.started");

    builder.CreateStore(builder.CreateCall(mallocDecl, {llvm::ConstantInt::get(i64Ty, 64)}), bufferSlot);
    builder.CreateStore(llvm::ConstantInt::get(i64Ty, 64), capacitySlot);
    builder.CreateStore(llvm::ConstantInt::get(i64Ty, 0), lengthSlot);
    builder.CreateStore(llvm::ConstantInt::getFalse(context), startedSlot);
    builder.CreateBr(readBlock);

    builder.SetInsertPoint(readBlock);
    llvm::Value* currentChar = builder.CreateCall(getcharDecl);
    llvm::Value* isEof = builder.CreateICmpEQ(currentChar, llvm::ConstantInt::getSigned(i32Ty, -1));
    builder.CreateCondBr(isEof, terminateBlock, classifyBlock);

    builder.SetInsertPoint(classifyBlock);
    llvm::Value* started = builder.CreateLoad(i1Ty, startedSlot);
    llvm::Value* isNewline = builder.CreateICmpEQ(currentChar, llvm::ConstantInt::get(i32Ty, '\n'));
    llvm::Value* isCarriageReturn = builder.CreateICmpEQ(currentChar, llvm::ConstantInt::get(i32Ty, '\r'));
    llvm::Value* isTab = builder.CreateICmpEQ(currentChar, llvm::ConstantInt::get(i32Ty, '\t'));
    llvm::Value* isSpace = builder.CreateICmpEQ(currentChar, llvm::ConstantInt::get(i32Ty, ' '));
    llvm::Value* isFormFeed = builder.CreateICmpEQ(currentChar, llvm::ConstantInt::get(i32Ty, '\f'));
    llvm::Value* isVerticalTab = builder.CreateICmpEQ(currentChar, llvm::ConstantInt::get(i32Ty, '\v'));
    llvm::Value* isWhitespace = builder.CreateOr(isSpace, isTab);
    isWhitespace = builder.CreateOr(isWhitespace, isNewline);
    isWhitespace = builder.CreateOr(isWhitespace, isCarriageReturn);
    isWhitespace = builder.CreateOr(isWhitespace, isFormFeed);
    isWhitespace = builder.CreateOr(isWhitespace, isVerticalTab);
    llvm::Value* isLineTerminator = builder.CreateOr(isNewline, isCarriageReturn);
    llvm::Value* skipLeadingWhitespace = builder.CreateAnd(builder.CreateNot(started), isWhitespace);
    llvm::Value* terminateRead = builder.CreateAnd(started, isLineTerminator);
    builder.CreateCondBr(skipLeadingWhitespace, readBlock, markStartedBlock);

    builder.SetInsertPoint(markStartedBlock);
    llvm::Value* startedOrTerminated = builder.CreateSelect(terminateRead, started, llvm::ConstantInt::getTrue(context));
    builder.CreateStore(startedOrTerminated, startedSlot);
    builder.CreateCondBr(terminateRead, terminateBlock, ensureCapacityBlock);

    builder.SetInsertPoint(ensureCapacityBlock);
    llvm::Value* length = builder.CreateLoad(i64Ty, lengthSlot);
    llvm::Value* capacity = builder.CreateLoad(i64Ty, capacitySlot);
    llvm::Value* capacityLimit = builder.CreateSub(capacity, llvm::ConstantInt::get(i64Ty, 1));
    llvm::Value* needsGrow = builder.CreateICmpUGE(length, capacityLimit);
    builder.CreateCondBr(needsGrow, growBlock, appendBlock);

    builder.SetInsertPoint(growBlock);
    llvm::Value* nextCapacity = builder.CreateMul(capacity, llvm::ConstantInt::get(i64Ty, 2));
    llvm::Value* buffer = builder.CreateLoad(charPtrTy, bufferSlot);
    llvm::Value* grownBuffer = builder.CreateCall(reallocDecl, {buffer, nextCapacity});
    builder.CreateStore(grownBuffer, bufferSlot);
    builder.CreateStore(nextCapacity, capacitySlot);
    builder.CreateBr(appendBlock);

    builder.SetInsertPoint(appendBlock);
    buffer = builder.CreateLoad(charPtrTy, bufferSlot);
    length = builder.CreateLoad(i64Ty, lengthSlot);
    llvm::Value* charAddress = builder.CreateInBoundsGEP(i8Ty, buffer, length);
    builder.CreateStore(builder.CreateTrunc(currentChar, i8Ty), charAddress);
    builder.CreateStore(builder.CreateAdd(length, llvm::ConstantInt::get(i64Ty, 1)), lengthSlot);
    builder.CreateBr(readBlock);

    builder.SetInsertPoint(terminateBlock);
    buffer = builder.CreateLoad(charPtrTy, bufferSlot);
    length = builder.CreateLoad(i64Ty, lengthSlot);
    llvm::Value* terminatorAddress = builder.CreateInBoundsGEP(i8Ty, buffer, length);
    builder.CreateStore(llvm::ConstantInt::get(i8Ty, 0), terminatorAddress);
    builder.CreateRet(buffer);

    return function;
}

llvm::FunctionCallee getApolloExecuteApolloPayloadDeclaration(llvm::Module& module) {
    llvm::Type* charPtrTy = llvm::PointerType::getUnqual(module.getContext());
    llvm::Type* i32Ty = llvm::Type::getInt32Ty(module.getContext());
    return module.getOrInsertFunction("apollo_execute_apollo_payload", llvm::FunctionType::get(i32Ty, {charPtrTy}, false));
}

bool lowerPrintExpressionValue(llvm::Module& module,
    llvm::IRBuilder<>& builder,
    compilerv1Parser::ExpressionContext* expression,
    const LoweredValueMap& params,
    llvm::Value*& value,
    std::string& formatSpecifier) {
    if (expression == nullptr) {
        return false;
    }

    llvm::Value* lowered = lowerExpressionValue(builder, expression, params);
    if (lowered == nullptr) {
        return false;
    }

    llvm::Type* paramType = lowered->getType();
    if (paramType->isIntegerTy()) {
        value = builder.CreateSExtOrBitCast(lowered, llvm::Type::getInt64Ty(builder.getContext()));
        formatSpecifier = "%lld";
        return true;
    }
    if (paramType->isFloatTy() || paramType->isDoubleTy()) {
        value = paramType->isDoubleTy()
            ? lowered
            : builder.CreateFPExt(lowered, llvm::Type::getDoubleTy(builder.getContext()));
        formatSpecifier = "%f";
        return true;
    }
    if (paramType->isPointerTy()) {
        value = lowered;
        formatSpecifier = "%s";
        return true;
    }

    return false;
}

bool lowerBuiltinStatement(llvm::Module& module,
    llvm::IRBuilder<>& builder,
    compilerv1Parser::StatementContext* statement,
    const LoweredValueMap& params) {
    if (statement == nullptr) {
        return false;
    }

    std::string text = trimCopy(statement->getText());
    if (!text.empty() && text.back() == ';') {
        text.pop_back();
    }

    bool appendNewline = false;
    std::string prefix;
    if (text.rfind("sys.println(", 0) == 0 && !text.empty() && text.back() == ')') {
        appendNewline = true;
        prefix = "sys.println(";
    } else if (text.rfind("sys.print(", 0) == 0 && !text.empty() && text.back() == ')') {
        prefix = "sys.print(";
    } else if (text.rfind("sys.stdout(", 0) == 0 && !text.empty() && text.back() == ')') {
        prefix = "sys.stdout(";
    } else {
        return false;
    }

    llvm::Value* value = nullptr;
    std::string formatSpecifier;
    if (statement->print() == nullptr || !lowerPrintExpressionValue(module, builder, statement->print()->expression(), params, value, formatSpecifier)) {
        return true;
    }

    const std::string formatText = appendNewline ? formatSpecifier + "\n" : formatSpecifier;
    llvm::Value* format = createGlobalCString(module, builder, formatText, "apollo.print.fmt");
    builder.CreateCall(getPrintfDeclaration(module), {format, value});
    return true;
}

TemplateFunctionRegistry buildTemplateFunctionRegistry(compilerv1Parser::ProgramContext* tree) {
    TemplateFunctionRegistry registry;
    if (tree == nullptr) {
        return registry;
    }

    for (auto* functionCtx : tree->templateFunction()) {
        if (functionCtx == nullptr || functionCtx->ID() == nullptr) {
            continue;
        }
        registry.emplace(functionCtx->ID()->getText(), TemplateFunctionRecord{functionCtx, collectTemplateFunctionTypeParams(functionCtx)});
    }
    return registry;
}

llvm::Function* lowerTemplateFunctionPrototype(llvm::Module& module,
    const TemplateFunctionRecord& record,
    const std::vector<std::string>& concreteTypes,
    std::vector<std::string>& paramNames,
    std::string& unsupportedReason) {
    paramNames.clear();
    unsupportedReason.clear();
    if (record.function == nullptr || record.function->ID() == nullptr) {
        unsupportedReason = "missing-template-function-context";
        return nullptr;
    }

    TypeAliasMap typeAliases = buildTemplateTypeAliasMap(record, concreteTypes);
    TypeAliasScope aliasScope(&typeAliases);

    llvm::Type* returnType = lowerReturnType(module.getContext(), record.function->returnType());
    if (returnType == nullptr) {
        returnType = llvm::PointerType::getUnqual(module.getContext());
    }

    std::vector<llvm::Type*> paramTypes;
    std::vector<std::string> concreteParamTypes = collectTemplateFunctionConcreteParamTypes(record, concreteTypes);
    if (record.function->params() != nullptr) {
        for (auto* param : record.function->params()->param()) {
            if (param == nullptr || param->ID() == nullptr) {
                unsupportedReason = "template-function-parameter-metadata-missing";
                return nullptr;
            }
            llvm::Type* paramType = param->typeRef() != nullptr
                ? lowerTypeRef(module.getContext(), param->typeRef())
                : nullptr;
            if (paramType == nullptr) {
                paramType = llvm::PointerType::getUnqual(module.getContext());
            }
            paramTypes.push_back(paramType);
            paramNames.push_back(param->ID()->getText());
        }
    }

    const std::string loweredName = buildApolloOverloadName(record.function->ID()->getText(), concreteParamTypes);
    if (llvm::Function* existing = module.getFunction(loweredName)) {
        return existing;
    }

    llvm::FunctionType* functionType = llvm::FunctionType::get(returnType, paramTypes, false);
    llvm::Function* function = llvm::Function::Create(functionType,
        llvm::GlobalValue::ExternalLinkage,
        loweredName,
        module);
    std::size_t index = 0;
    for (auto& arg : function->args()) {
        arg.setName(paramNames[index++]);
    }
    return function;
}

bool lowerTemplateFunctionBody(llvm::Module& module,
    llvm::Function* function,
    const TemplateFunctionRecord& record,
    const std::vector<std::string>& concreteTypes,
    std::string& unsupportedReason) {
    if (function == nullptr || record.function == nullptr || record.function->block() == nullptr) {
        unsupportedReason = "invalid-template-body-shape";
        return false;
    }

    TypeAliasMap typeAliases = buildTemplateTypeAliasMap(record, concreteTypes);
    TypeAliasScope aliasScope(&typeAliases);

    llvm::BasicBlock* entry = llvm::BasicBlock::Create(module.getContext(), "entry", function);
    llvm::IRBuilder<> builder(entry);

    LoweredValueMap params;
    const auto declaredParams = record.function->params() != nullptr
        ? record.function->params()->param()
        : std::vector<compilerv1Parser::ParamContext*>{};
    std::size_t paramIndex = 0;
    for (auto& arg : function->args()) {
        llvm::AllocaInst* address = createEntryAlloca(function, valueStorageType(&arg), arg.getName());
        builder.CreateStore(&arg, address);
        std::string typeText;
        if (paramIndex < declaredParams.size() && declaredParams[paramIndex] != nullptr && declaredParams[paramIndex]->typeRef() != nullptr) {
            typeText = resolveActiveTypeAliases(declaredParams[paramIndex]->typeRef()->getText());
        }
        params.emplace(std::string(arg.getName()), LoweredValue{&arg, address, arg.getType(), typeText});
        ++paramIndex;
    }
    for (auto& global : module.globals()) {
        params.emplace(std::string(global.getName()), LoweredValue{&global, &global, global.getValueType(), ""});
    }
    addInlineForeignGlobalBindings(module, builder, params);

    auto* block = record.function->block();
    if (!lowerBlockStatements(module, function, builder, block, params, unsupportedReason)) {
        return false;
    }

    if (block->returnStmt().empty()) {
        if (function->getReturnType()->isVoidTy()) {
            builder.CreateRetVoid();
            return true;
        }
        llvm::Value* defaultReturn = defaultValueForType(function->getReturnType());
        if (defaultReturn != nullptr) {
            builder.CreateRet(defaultReturn);
            return true;
        }
        unsupportedReason = "missing-required-return";
        return false;
    }

    if (builder.GetInsertBlock()->getTerminator() != nullptr) {
        return true;
    }

    auto* returnStmt = block->returnStmt(block->returnStmt().size() - 1);
    llvm::Value* returnValue = lowerReturnExpression(builder, function->getReturnType(), returnStmt != nullptr ? returnStmt->expression() : nullptr, params);
    if (returnValue == nullptr) {
        unsupportedReason = "return-expression-lowering-failed";
        return false;
    }
    builder.CreateRet(returnValue);
    return true;
}

llvm::Function* instantiateTemplateFunctionForCall(llvm::Module& module,
    compilerv1Parser::FunctionCallContext* functionCall,
    const LoweredValueMap& values) {
    if (gActiveTemplateFunctionRegistry == nullptr || functionCall == nullptr || functionCall->ID() == nullptr) {
        return nullptr;
    }

    const auto it = gActiveTemplateFunctionRegistry->find(functionCall->ID()->getText());
    if (it == gActiveTemplateFunctionRegistry->end()) {
        return nullptr;
    }

    std::vector<std::string> concreteTypes = inferTemplateFunctionTypeArgs(it->second, functionCall, values);
    if (concreteTypes.size() != it->second.typeParams.size()) {
        return nullptr;
    }

    const std::string loweredName = buildApolloOverloadName(functionCall->ID()->getText(), collectTemplateFunctionConcreteParamTypes(it->second, concreteTypes));
    if (llvm::Function* existing = module.getFunction(loweredName)) {
        return existing;
    }

    std::vector<std::string> paramNames;
    std::string unsupportedReason;
    llvm::Function* function = lowerTemplateFunctionPrototype(module, it->second, concreteTypes, paramNames, unsupportedReason);
    if (function == nullptr) {
        setSemanticError("template function `" + functionCall->ID()->getText() + "`: " + unsupportedReason);
        return nullptr;
    }

    if (!function->empty()) {
        return function;
    }

    if (!lowerTemplateFunctionBody(module, function, it->second, concreteTypes, unsupportedReason)) {
        function->deleteBody();
        setSemanticError("template function `" + functionCall->ID()->getText() + "`: " + unsupportedReason);
        return nullptr;
    }

    return function;
}

void lowerSupportedFunctionBodies(llvm::Module& module,
    compilerv1Parser::ProgramContext* tree,
    std::vector<std::string>& unsupportedFunctions) {
    if (tree == nullptr) {
        return;
    }

    std::unordered_map<std::string, std::string> prototypeErrors;
    for (auto* functionCtx : tree->function()) {
        if (functionCtx == nullptr || functionCtx->ID() == nullptr) {
            continue;
        }

        std::vector<std::string> paramNames;
        std::string unsupportedReason;
        llvm::Function* prototype = lowerFunctionPrototype(module, functionCtx, paramNames, unsupportedReason);
        if (prototype == nullptr) {
            prototypeErrors.emplace(loweredApolloFunctionName(module, functionCtx), unsupportedReason);
        }
    }

    for (auto* functionCtx : tree->function()) {
        if (functionCtx == nullptr || functionCtx->ID() == nullptr) {
            unsupportedFunctions.push_back("<invalid>:missing-function-context");
            continue;
        }

        const std::string functionName = loweredApolloFunctionName(module, functionCtx);
        const auto prototypeError = prototypeErrors.find(functionName);
        if (prototypeError != prototypeErrors.end()) {
            unsupportedFunctions.push_back(functionCtx->ID()->getText() + ":" + prototypeError->second);
            continue;
        }

        llvm::Function* function = module.getFunction(functionName);
        if (function == nullptr) {
            unsupportedFunctions.push_back(functionCtx->ID()->getText() + ":missing-prototype");
            continue;
        }

        llvm::Type* returnType = function->getReturnType();
        auto* block = functionCtx->block();
        if (block == nullptr) {
            llvm::BasicBlock* entry = llvm::BasicBlock::Create(module.getContext(), "entry", function);
            llvm::IRBuilder<> builder(entry);
            if (returnType->isVoidTy()) {
                builder.CreateRetVoid();
            } else if (llvm::Value* defaultReturn = defaultValueForType(returnType)) {
                builder.CreateRet(defaultReturn);
            } else {
                unsupportedFunctions.push_back(functionName + ":invalid-body-shape");
            }
            continue;
        }

        llvm::BasicBlock* entry = llvm::BasicBlock::Create(module.getContext(), "entry", function);
        llvm::IRBuilder<> builder(entry);

        LoweredValueMap params;
        TypeAliasMap typeAliases;
        TypeAliasScope aliasScope(&typeAliases);
        for (auto& arg : function->args()) {
            llvm::AllocaInst* address = createEntryAlloca(function, valueStorageType(&arg), arg.getName());
            builder.CreateStore(&arg, address);
            params.emplace(std::string(arg.getName()), LoweredValue{&arg, address, arg.getType(), ""});
        }
        for (auto& global : module.globals()) {
            params.emplace(std::string(global.getName()), LoweredValue{&global, &global, global.getValueType(), ""});
        }
        addInlineForeignGlobalBindings(module, builder, params);

        std::string unsupportedReasonForBody;
        if (!lowerBlockStatements(module, function, builder, block, params, unsupportedReasonForBody)) {
            unsupportedFunctions.push_back(functionName + ":" + unsupportedReasonForBody);
            function->deleteBody();
            continue;
        }

        if (block->returnStmt().empty()) {
            if (returnType->isVoidTy()) {
                builder.CreateRetVoid();
                continue;
            }
            llvm::Value* defaultReturn = defaultValueForType(returnType);
            if (defaultReturn != nullptr) {
                builder.CreateRet(defaultReturn);
                continue;
            }
            unsupportedFunctions.push_back(functionName + ":missing-required-return");
            function->deleteBody();
            continue;
        }

        if (builder.GetInsertBlock()->getTerminator() != nullptr) {
            continue;
        }

        if (returnType->isVoidTy()) {
            if (block->returnStmt().empty() || block->returnStmt()[0]->expression() == nullptr) {
                builder.CreateRetVoid();
                continue;
            }
            unsupportedFunctions.push_back(functionName + ":void-return-with-expression");
            function->deleteBody();
            continue;
        }

        auto* returnStmt = block->returnStmt(block->returnStmt().size() - 1);
        llvm::Value* returnValue = lowerReturnExpression(builder, returnType, returnStmt != nullptr ? returnStmt->expression() : nullptr, params);
        if (returnValue == nullptr) {
            returnValue = defaultValueForType(returnType);
            if (returnValue == nullptr) {
                unsupportedFunctions.push_back(functionName + ":return-expression-lowering-failed");
                function->deleteBody();
                continue;
            }
        }
        builder.CreateRet(returnValue);
    }
}

void lowerSupportedMacroBodies(llvm::Module& module,
    compilerv1Parser::ProgramContext* tree,
    std::vector<std::string>& unsupportedFunctions) {
    if (tree == nullptr) {
        return;
    }

    for (auto* child : tree->children) {
        auto* macroCtx = dynamic_cast<compilerv1Parser::MacroContext*>(child);
        if (macroCtx == nullptr || macroCtx->block() == nullptr || macroCtx->ID() == nullptr) {
            continue;
        }

        std::vector<std::string> paramNames;
        std::string unsupportedReason;
        llvm::Function* function = module.getFunction(macroCtx->ID()->getText());
        if (function == nullptr) {
            function = lowerMacroPrototype(module, macroCtx, paramNames, unsupportedReason);
        }
        if (function == nullptr) {
            unsupportedFunctions.push_back(macroCtx->ID()->getText() + ":" + unsupportedReason);
            continue;
        }
        if (!function->empty()) {
            continue;
        }

        if (!lowerCallableBody(module, function, macroCtx->block(), unsupportedReason)) {
            unsupportedFunctions.push_back(macroCtx->ID()->getText() + ":" + unsupportedReason);
            function->deleteBody();
        }
    }
}

bool resolveTopLevelClosureSignature(llvm::Module& module,
    compilerv1Parser::ClosureContext* closureCtx,
    std::vector<llvm::Type*>& parameterTypes,
    std::vector<std::string>& parameterNames,
    llvm::Type*& returnType,
    std::string& unsupportedReason) {
    parameterTypes.clear();
    parameterNames.clear();
    returnType = nullptr;

    if (closureCtx == nullptr || closureCtx->ID() == nullptr || closureCtx->typeRef() == nullptr
        || closureCtx->typeRef()->typeAtom() == nullptr || closureCtx->closureBody() == nullptr) {
        unsupportedReason = "invalid-closure-shape";
        return false;
    }

    auto* bindingType = closureCtx->typeRef();
    auto* typeAtom = bindingType->typeAtom();
    auto* functionType = typeAtom->functionType();
    auto* paramsCtx = closureCtx->params();

    if (functionType != nullptr) {
        const auto& declaredArgs = functionType->functionTypeArgs() != nullptr
            ? functionType->functionTypeArgs()->typeRef()
            : std::vector<compilerv1Parser::TypeRefContext*>{};
        const std::size_t actualCount = paramsCtx != nullptr ? paramsCtx->param().size() : 0;
        if (declaredArgs.size() != actualCount) {
            unsupportedReason = "closure-parameter-count-mismatch:declared=" + std::to_string(declaredArgs.size())
                + ":actual=" + std::to_string(actualCount);
            return false;
        }

        parameterTypes.reserve(actualCount);
        parameterNames.reserve(actualCount);
        for (std::size_t index = 0; index < actualCount; ++index) {
            auto* declaredTypeRef = declaredArgs[index];
            auto* param = paramsCtx->param(index);
            if (declaredTypeRef == nullptr || param == nullptr || param->typeRef() == nullptr || param->ID() == nullptr) {
                unsupportedReason = "closure-parameter-metadata-missing";
                return false;
            }

            llvm::Type* declaredType = lowerTypeRef(module.getContext(), declaredTypeRef);
            llvm::Type* actualType = lowerTypeRef(module.getContext(), param->typeRef());
            if (declaredType == nullptr || actualType == nullptr) {
                unsupportedReason = "closure-parameter-type-lowering-failed";
                return false;
            }
            if (declaredType != actualType) {
                unsupportedReason = "closure-parameter-type-mismatch:index=" + std::to_string(index)
                    + ":declared=" + declaredTypeRef->getText() + ":actual=" + param->typeRef()->getText();
                return false;
            }

            parameterTypes.push_back(declaredType);
            parameterNames.push_back(param->ID()->getText());
        }

        returnType = lowerReturnType(module.getContext(), functionType->returnType());
        if (returnType == nullptr) {
            returnType = llvm::PointerType::getUnqual(module.getContext());
        }
        return true;
    }

    if (typeAtom->getText() != "auto") {
        unsupportedReason = "top-level-closure-requires-fn-or-auto";
        return false;
    }

    if (!collectLambdaParameterMetadata(module, paramsCtx, parameterTypes, parameterNames, unsupportedReason)) {
        return false;
    }

    compilerv1Parser::ReturnStmtContext* inferredReturn = nullptr;
    for (auto* bodyItem : closureCtx->closureBody()->closureBodyItem()) {
        if (bodyItem == nullptr || bodyItem->returnStmt() == nullptr) {
            continue;
        }
        if (inferredReturn != nullptr) {
            returnType = llvm::PointerType::getUnqual(module.getContext());
            return true;
        }
        inferredReturn = bodyItem->returnStmt();
    }

    if (inferredReturn == nullptr || inferredReturn->expression() == nullptr) {
        returnType = llvm::Type::getVoidTy(module.getContext());
        return true;
    }

    const std::string inferredTypeText = inferExpressionTypeText(inferredReturn->expression());
    if (inferredTypeText.empty()) {
        returnType = llvm::PointerType::getUnqual(module.getContext());
        return true;
    }

    returnType = lowerSourceTypeText(module.getContext(), inferredTypeText);
    if (returnType == nullptr) {
        returnType = llvm::PointerType::getUnqual(module.getContext());
    }
    return true;
}

void lowerSupportedTopLevelClosures(llvm::Module& module,
    compilerv1Parser::ProgramContext* tree,
    std::vector<std::string>& unsupportedFunctions) {
    if (tree == nullptr) {
        return;
    }

    for (auto* closureCtx : tree->closure()) {
        if (closureCtx == nullptr || closureCtx->ID() == nullptr) {
            unsupportedFunctions.push_back("<invalid-closure>:invalid-closure-shape");
            continue;
        }

        const std::string closureName = closureCtx->ID()->getText();
        llvm::Function* function = module.getFunction(closureName);
        if (function != nullptr && !function->empty()) {
            continue;
        }

        std::vector<llvm::Type*> parameterTypes;
        std::vector<std::string> parameterNames;
        llvm::Type* returnType = nullptr;
        std::string unsupportedReason;
        if (!resolveTopLevelClosureSignature(module, closureCtx, parameterTypes, parameterNames, returnType, unsupportedReason)) {
            unsupportedFunctions.push_back(closureName + ":" + unsupportedReason);
            continue;
        }

        llvm::FunctionType* loweredType = llvm::FunctionType::get(returnType, parameterTypes, false);
        if (function == nullptr) {
            function = llvm::Function::Create(loweredType, llvm::GlobalValue::ExternalLinkage, closureName, module);
        } else if (function->getFunctionType() != loweredType) {
            unsupportedFunctions.push_back(closureName + ":conflicting-closure-symbol");
            continue;
        }

        std::size_t index = 0;
        for (auto& arg : function->args()) {
            if (index < parameterNames.size()) {
                arg.setName(parameterNames[index]);
            }
            ++index;
        }

        if (!lowerClosureCallableBody(module, function, closureCtx->closureBody(), unsupportedReason)) {
            unsupportedFunctions.push_back(closureName + ":" + unsupportedReason);
            function->deleteBody();
        }
    }
}

bool lowerGlobalVariable(llvm::Module& module,
    compilerv1Parser::TypeRefContext* typeRef,
    antlr4::tree::TerminalNode* identifier,
    compilerv1Parser::ExpressionContext* expression) {
    if (typeRef == nullptr || identifier == nullptr) {
        return false;
    }

    llvm::Type* loweredType = lowerTypeRef(module.getContext(), typeRef);
    if (loweredType == nullptr && typeRef != nullptr) {
        const std::string typeText = canonicalApolloTypeText(typeRef->getText());
        if (typeText.find('<') != std::string::npos || typeText.find('>') != std::string::npos) {
            loweredType = llvm::PointerType::getUnqual(module.getContext());
        }
    }
    if (loweredType == nullptr) {
        return false;
    }

    llvm::Constant* initializer = llvm::Constant::getNullValue(loweredType);
    if (expression != nullptr) {
        const std::string text = trimCopy(stripOuterParens(expression->getText()));
        if (!isDecimalIntegerLiteral(text) || !loweredType->isIntegerTy()) {
            if (!loweredType->isPointerTy()) {
                return false;
            }
        } else {
            initializer = llvm::ConstantInt::get(loweredType, std::stoll(text), true);
        }
    }

    new llvm::GlobalVariable(module,
        loweredType,
        false,
        llvm::GlobalValue::ExternalLinkage,
        initializer,
        identifier->getText());
    return true;
}

void lowerGlobalVariables(llvm::Module& module,
    compilerv1Parser::ProgramContext* tree,
    std::vector<std::string>& unsupportedGlobals) {
    if (tree == nullptr) {
        return;
    }

    for (auto* globalInit : tree->globalInit()) {
        if (globalInit == nullptr || globalInit->init() == nullptr || globalInit->init()->initCore() == nullptr) {
            unsupportedGlobals.push_back("global:<invalid>");
            continue;
        }
        auto* initCore = globalInit->init()->initCore();
        if (!lowerGlobalVariable(module, initCore->typeRef(), initCore->ID(), initCore->expression())) {
            unsupportedGlobals.push_back("global:" + initCore->getText());
            continue;
        }
        gGlobalTypeTexts[initCore->ID()->getText()] = initCore->typeRef() != nullptr ? initCore->typeRef()->getText() : std::string();
    }

    for (auto* init : tree->init()) {
        if (init == nullptr || init->initCore() == nullptr) {
            unsupportedGlobals.push_back("init:<invalid>");
            continue;
        }
        auto* initCore = init->initCore();
        if (!lowerGlobalVariable(module, initCore->typeRef(), initCore->ID(), initCore->expression())) {
            unsupportedGlobals.push_back("init:" + initCore->getText());
            continue;
        }
        gGlobalTypeTexts[initCore->ID()->getText()] = initCore->typeRef() != nullptr ? initCore->typeRef()->getText() : std::string();
    }

    for (auto* rdwindowStmt : tree->rdwindowStmt()) {
        if (rdwindowStmt == nullptr || rdwindowStmt->ID() == nullptr) {
            unsupportedGlobals.push_back("rdwindow:<invalid>");
            continue;
        }

        const std::string windowName = rdwindowStmt->ID()->getText();
        if (module.getNamedGlobal(windowName) == nullptr) {
            new llvm::GlobalVariable(
                module,
                llvm::PointerType::getUnqual(module.getContext()),
                false,
                llvm::GlobalValue::ExternalLinkage,
                llvm::ConstantPointerNull::get(llvm::PointerType::getUnqual(module.getContext())),
                windowName);
        }
        gGuiWindowGlobals.insert(windowName);
    }
}

void collectUnsupportedTopLevelInlineForeignBlocks(compilerv1Parser::ProgramContext* tree,
    std::vector<std::string>& unsupportedItems) {
    if (tree == nullptr) {
        return;
    }

    for (auto* child : tree->children) {
        auto* inlineForeignBlock = dynamic_cast<compilerv1Parser::InlineForeignBlockContext*>(child);
        if (inlineForeignBlock == nullptr) {
            continue;
        }
        unsupportedItems.push_back("module:inline-foreign-not-lowered-at-top-level:" + inlineForeignBlock->getText());
    }
}

void appendRuntimeFeatureMetadata(llvm::Module& module, const ApolloRuntimeFeatureManifest& runtimeFeatures) {
    llvm::LLVMContext& context = module.getContext();
    appendNamedMetadataNode(module, "apollo.runtime.features", {
        llvm::MDString::get(context, "autofmt"), boolMetadata(context, runtimeFeatures.usesAutofmtRuntime()),
        llvm::MDString::get(context, "gui"), boolMetadata(context, runtimeFeatures.usesGuiRuntime()),
        llvm::MDString::get(context, "go_async"), boolMetadata(context, runtimeFeatures.usesGoAsyncRuntime()),
        llvm::MDString::get(context, "ir_runtime"), boolMetadata(context, runtimeFeatures.usesIrRuntime()),
        llvm::MDString::get(context, "isc"), boolMetadata(context, runtimeFeatures.usesIscRuntime()),
        llvm::MDString::get(context, "file"), boolMetadata(context, runtimeFeatures.usesFileRuntime()),
        llvm::MDString::get(context, "memstruct"), boolMetadata(context, runtimeFeatures.usesMemstructRuntime()),
        llvm::MDString::get(context, "scheduler"), boolMetadata(context, runtimeFeatures.usesSchedulerRuntime()),
        llvm::MDString::get(context, "runtime_extensions"), boolMetadata(context, runtimeFeatures.usesRuntimeExtensions()),
        llvm::MDString::get(context, "total_program_gc"), boolMetadata(context, runtimeFeatures.totalProgramGc()),
        llvm::MDString::get(context, "borrow_checker_off"), boolMetadata(context, runtimeFeatures.borrowCheckerOff())
    });
}

void appendLayoutMetadata(llvm::Module& module, const ApolloIrLayoutPlan& layoutPlan) {
    llvm::LLVMContext& context = module.getContext();
    appendNamedMetadataNode(module, "apollo.soa.mode", {
        llvm::MDString::get(context, "default_full_soa"), boolMetadata(context, true),
        llvm::MDString::get(context, "uses_full_soa_layouts"), boolMetadata(context, layoutPlan.usesFullSoa())
    });

    for (const auto& aggregate : layoutPlan.aggregateLayouts()) {
        appendNamedMetadataNode(module, "apollo.layouts", {
            llvm::MDString::get(context, aggregate.name),
            llvm::MDString::get(context, storageKindName(aggregate.storageKind)),
            intMetadata(context, static_cast<std::uint64_t>(aggregate.fields.size())),
            boolMetadata(context, aggregate.isClass),
            boolMetadata(context, aggregate.hasInheritance),
            boolMetadata(context, aggregate.hasVirtualMethods),
            llvm::MDString::get(context, aggregate.note)
        });

        for (const auto& field : aggregate.fields) {
            appendNamedMetadataNode(module, "apollo.layout.fields", {
                llvm::MDString::get(context, aggregate.name),
                llvm::MDString::get(context, field.name),
                llvm::MDString::get(context, field.sourceTypeName),
                boolMetadata(context, field.isPrimitive)
            });
        }
    }
}

void appendDependencyMetadata(llvm::Module& module, const std::vector<std::string>& dependencies) {
    llvm::LLVMContext& context = module.getContext();
    for (const auto& dependency : dependencies) {
        appendNamedMetadataNode(module, "apollo.dependencies", {
            llvm::MDString::get(context, dependency)
        });
    }
}

void appendPrimitiveTypeMetadata(llvm::Module& module) {
    llvm::LLVMContext& context = module.getContext();
    for (const auto& [apolloType, irType] : kPrimitiveIrTypes) {
        appendNamedMetadataNode(module, "apollo.primitive.types", {
            llvm::MDString::get(context, apolloType),
            llvm::MDString::get(context, irType)
        });
    }
}

} // namespace

namespace {
apollo::codegen::OptConfig g_apolloOptConfig;
std::string g_apolloBitcodePath;
} // namespace

void ApolloIrCodegen::setOptConfig(const apollo::codegen::OptConfig& cfg) {
    g_apolloOptConfig = cfg;
}
const apollo::codegen::OptConfig& ApolloIrCodegen::optConfig() {
    return g_apolloOptConfig;
}
void ApolloIrCodegen::setBitcodeOutputPath(std::string path) {
    g_apolloBitcodePath = std::move(path);
}
const std::string& ApolloIrCodegen::bitcodeOutputPath() {
    return g_apolloBitcodePath;
}

void ApolloIrCodegen::emitModule(const std::filesystem::path& outputPath,
    const std::string& moduleKey,
    const std::string& displaySourcePath,
    const std::filesystem::path& sourcePath,
    compilerv1Parser::ProgramContext* tree,
    const ApolloRuntimeFeatureManifest& runtimeFeatures,
    const ApolloIrLayoutPlan& layoutPlan,
    bool allowPartialLowering) {
    llvm::LLVMContext context;
    llvm::Module module(moduleKey, context);
    module.setSourceFileName(displaySourcePath);

    const std::string targetTriple = targetTripleFromEnvironment();
    if (!targetTriple.empty()) {
        module.setTargetTriple(llvm::Triple(targetTriple));
    }

    appendNamedMetadataNode(module, "apollo.backend", {
        llvm::MDString::get(context, "direct-ir-prototype"),
        llvm::MDString::get(context, "llvm-cpp-api"),
        llvm::MDString::get(context, moduleKey)
    });
    appendRuntimeFeatureMetadata(module, runtimeFeatures);
    appendLayoutMetadata(module, layoutPlan);
    appendDependencyMetadata(module, collectDependencyMetadata(tree));
    appendPrimitiveTypeMetadata(module);

    const std::vector<ApolloInlineForeignBlock> inlineForeignBlocks = collectInlineForeignBlocks(tree);
    linkInlineForeignModules(module, sourcePath, outputPath, tree, inlineForeignBlocks);
    declareImportedDependencyPrototypes(module, sourcePath, tree);

    const AggregateRegistry aggregateRegistry = buildAggregateRegistry(tree);
    const TemplateFunctionRegistry templateFunctionRegistry = buildTemplateFunctionRegistry(tree);
    AggregateRegistryScope aggregateScope(&aggregateRegistry);
    TemplateFunctionRegistryScope templateFunctionScope(&templateFunctionRegistry);
    InlineForeignBlockScope inlineForeignScope(&inlineForeignBlocks);
    RuntimeFeatureScope runtimeFeatureScope(&runtimeFeatures);
    InlineForeignPathScope inlineForeignPathScope(&sourcePath, &outputPath);
    LayoutPlanScope layoutPlanScope(&layoutPlan);
    gGuiWindowGlobals.clear();
    gGlobalTypeTexts.clear();
    std::vector<std::string> unsupportedFunctions;
    lowerGlobalVariables(module, tree, unsupportedFunctions);
    lowerAggregateMethodBodies(module, aggregateRegistry, unsupportedFunctions);
    lowerSupportedMacroBodies(module, tree, unsupportedFunctions);
    lowerSupportedTopLevelClosures(module, tree, unsupportedFunctions);
    lowerSupportedFunctionBodies(module, tree, unsupportedFunctions);
    if (!allowPartialLowering && !unsupportedFunctions.empty()) {
        std::vector<std::string> unsupportedFunctionNames;
        unsupportedFunctionNames.reserve(unsupportedFunctions.size());
        for (const auto& unsupported : unsupportedFunctions) {
            const auto separator = unsupported.find(':');
            unsupportedFunctionNames.push_back(separator == std::string::npos
                ? unsupported
                : unsupported.substr(0, separator));
            // Surface the full "func:reason" form to stderr so semantic
            // diagnostics (redeclaration, deref-of-reference, etc.) are
            // visible alongside the summary thrown below.
            llvm::errs() << "\x1b[31mapollo: error: " << unsupported << "\x1b[0m\n";
        }
        throw std::runtime_error("backend could not compile module `" + moduleKey
            + "` for function(s): " + joinStrings(unsupportedFunctionNames, ", "));
    }
    for (const auto& unsupported : unsupportedFunctions) {
        appendNamedMetadataNode(module, "apollo.unlowered.functions", {
            llvm::MDString::get(context, unsupported)
        });
    }

    std::string verificationErrors;
    llvm::raw_string_ostream verificationStream(verificationErrors);
    if (!envEnabled("APOLLO_SKIP_VERIFY") && llvm::verifyModule(module, &verificationStream)) {
        verificationStream.flush();
        throw std::runtime_error("LLVM verifier rejected direct IR prototype: " + verificationErrors);
    }

    if (!outputPath.parent_path().empty()) {
        std::filesystem::create_directories(outputPath.parent_path());
    }

    // Workstream B: run PassBuilder pipeline before serializing.
    {
        const auto& cfg = ApolloIrCodegen::optConfig();
        std::string optErr;
        if (!apollo::codegen::runOptPipeline(module, cfg, optErr)) {
            throw std::runtime_error("apollo optimizer: " + optErr);
        }
        const std::string bcPath = ApolloIrCodegen::bitcodeOutputPath();
        if (!bcPath.empty()) {
            std::string bcErr;
            if (!apollo::codegen::writeBitcode(module, bcPath, cfg, bcErr)) {
                throw std::runtime_error("apollo bitcode emit: " + bcErr);
            }
        }
    }

    std::error_code fileError;
    llvm::raw_fd_ostream output(outputPath.string(), fileError, llvm::sys::fs::OF_Text);
    if (fileError) {
        throw std::runtime_error("failed to open IR output file: " + outputPath.string() + " (" + fileError.message() + ")");
    }
    module.print(output, nullptr);
}

void ApolloIrCodegen::emitPrototypeModule(const std::filesystem::path& outputPath,
    const std::string& moduleKey,
    const std::string& displaySourcePath,
    const std::filesystem::path& sourcePath,
    compilerv1Parser::ProgramContext* tree,
    const ApolloRuntimeFeatureManifest& runtimeFeatures,
    const ApolloIrLayoutPlan& layoutPlan) {
    emitModule(outputPath, moduleKey, displaySourcePath, sourcePath, tree, runtimeFeatures, layoutPlan, true);
}

std::optional<std::string> ApolloIrCodegen::lowerPrimitiveType(std::string_view apolloType) {
    const auto it = kPrimitiveIrTypes.find(std::string(apolloType));
    if (it == kPrimitiveIrTypes.end()) {
        return std::nullopt;
    }
    return it->second;
}