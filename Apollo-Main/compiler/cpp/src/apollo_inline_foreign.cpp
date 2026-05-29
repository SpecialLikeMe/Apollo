#include "apollo_inline_foreign.h"

#include <algorithm>
#include <cctype>
#include <cstdlib>
#include <filesystem>
#include <fstream>
#include <optional>
#ifdef _WIN32
#include <process.h>
#endif
#include <regex>
#include <set>
#include <sstream>
#include <stdexcept>
#include <string>
#include <string_view>
#include <unordered_map>
#include <unordered_set>
#include <utility>
#include <vector>

#include "compilerv1Lexer.h"
#include "compilerv1BaseVisitor.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Intrinsics.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Linker/Linker.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/raw_ostream.h"

namespace {

std::string trimCopy(std::string text) {
    const auto first = text.find_first_not_of(" \t\r\n");
    if (first == std::string::npos) {
        return {};
    }
    const auto last = text.find_last_not_of(" \t\r\n");
    return text.substr(first, last - first + 1);
}

std::string collapseSpaces(std::string text) {
    std::string result;
    result.reserve(text.size());
    bool previousSpace = false;
    for (const unsigned char ch : text) {
        if (std::isspace(ch) != 0) {
            if (!previousSpace) {
                result.push_back(' ');
            }
            previousSpace = true;
            continue;
        }
        result.push_back(static_cast<char>(ch));
        previousSpace = false;
    }
    return trimCopy(std::move(result));
}

std::string stableHashHex(std::string_view text) {
    std::uint64_t hash = 1469598103934665603ull;
    for (const unsigned char ch : text) {
        hash ^= ch;
        hash *= 1099511628211ull;
    }
    std::ostringstream builder;
    builder << std::hex;
    builder.width(16);
    builder.fill('0');
    builder << hash;
    return builder.str();
}

std::string defaulted(const char* value, const char* defaultValue) {
    if (value == nullptr) {
        return defaultValue;
    }
    const std::string normalized = trimCopy(value);
    return normalized.empty() ? std::string(defaultValue) : normalized;
}

std::string targetTripleFromEnvironment() {
    return defaulted(std::getenv("APOLLO_TARGET_TRIPLE"), "");
}

std::string hostPlatformCacheTag() {
#if defined(_WIN32)
    return "windows";
#elif defined(__APPLE__)
    return "macos";
#elif defined(__linux__)
    return "linux";
#else
    return "unknown";
#endif
}

std::string rustTargetTripleFromApolloTarget(std::string targetTriple) {
    if (targetTriple == "x86_64-w64-windows-gnu") {
        return "x86_64-pc-windows-gnu";
    }
    if (targetTriple == "i686-w64-windows-gnu") {
        return "i686-pc-windows-gnu";
    }
    return targetTriple;
}

std::string sysrootFromEnvironment() {
    return defaulted(std::getenv("APOLLO_SYSROOT"), "");
}

std::string cxxStdFromEnvironment() {
    return defaulted(std::getenv("APOLLO_CXX_STD"), "c++20");
}

std::string optLevelFromEnvironment() {
    return defaulted(std::getenv("APOLLO_OPT_LEVEL"), "3");
}

std::filesystem::path findRuntimeSupportRoot(const std::filesystem::path& anchorPath) {
    std::filesystem::path cursor;
    if (anchorPath.empty()) {
        cursor = std::filesystem::current_path();
    } else if (anchorPath.has_parent_path()) {
        cursor = std::filesystem::absolute(anchorPath.parent_path()).lexically_normal();
    } else {
        cursor = std::filesystem::absolute(anchorPath).lexically_normal();
    }

    while (!cursor.empty()) {
        const auto runtimeSupportDir = (cursor / "runtime_support").lexically_normal();
        if (std::filesystem::exists(runtimeSupportDir)) {
            return cursor;
        }

        const auto parent = cursor.parent_path();
        if (parent == cursor) {
            break;
        }
        cursor = parent;
    }

    return {};
}

std::vector<std::filesystem::path> inlineForeignIncludeDirs(const std::filesystem::path& sourcePath,
    const std::filesystem::path& outputPath) {
    std::vector<std::filesystem::path> dirs;
    if (sourcePath.has_parent_path()) {
        dirs.push_back(std::filesystem::absolute(sourcePath.parent_path()).lexically_normal());
    }

    std::filesystem::path compilerDir = findRuntimeSupportRoot(sourcePath);
    if (compilerDir.empty()) {
        compilerDir = findRuntimeSupportRoot(outputPath);
    }
    if (compilerDir.empty()) {
        compilerDir = findRuntimeSupportRoot(std::filesystem::current_path());
    }
    const auto runtimeSupportDir = (compilerDir / "runtime_support").lexically_normal();
    if (std::filesystem::exists(runtimeSupportDir)) {
        dirs.push_back(runtimeSupportDir);
    }

    std::sort(dirs.begin(), dirs.end());
    dirs.erase(std::unique(dirs.begin(), dirs.end()), dirs.end());
    return dirs;
}

void appendIncludeSearchPaths(std::vector<std::string>& command,
    const std::filesystem::path& sourcePath,
    const std::filesystem::path& outputPath) {
    for (const auto& dir : inlineForeignIncludeDirs(sourcePath, outputPath)) {
        command.push_back("-I");
        command.push_back(dir.string());
    }
}

std::string firstDefined(const char* primary, const char* secondary, const char* fallback) {
    const std::string primaryValue = defaulted(primary, "");
    if (!primaryValue.empty()) {
        return primaryValue;
    }
    const std::string secondaryValue = defaulted(secondary, "");
    if (!secondaryValue.empty()) {
        return secondaryValue;
    }
    return fallback;
}

bool startsWith(std::string_view text, std::string_view prefix) {
    return text.size() >= prefix.size() && text.substr(0, prefix.size()) == prefix;
}

bool endsWith(std::string_view text, std::string_view suffix) {
    return text.size() >= suffix.size() && text.substr(text.size() - suffix.size()) == suffix;
}

std::string stripWrappingQuotes(std::string text) {
    text = trimCopy(std::move(text));
    if (text.size() >= 2 && text.front() == '"' && text.back() == '"') {
        text.erase(text.begin());
        text.pop_back();
    }
    return text;
}

bool fileExistsForCommand(const std::filesystem::path& path) {
    std::error_code error;
    return std::filesystem::exists(path, error) && !std::filesystem::is_directory(path, error);
}

std::vector<std::string> splitPathList(std::string_view rawPath) {
    std::vector<std::string> entries;
#ifdef _WIN32
    constexpr char kSeparator = ';';
#else
    constexpr char kSeparator = ':';
#endif
    std::size_t cursor = 0;
    while (cursor <= rawPath.size()) {
        const std::size_t next = rawPath.find(kSeparator, cursor);
        const std::string entry = trimCopy(std::string(rawPath.substr(cursor, next == std::string_view::npos ? rawPath.size() - cursor : next - cursor)));
        if (!entry.empty()) {
            entries.push_back(entry);
        }
        if (next == std::string_view::npos) {
            break;
        }
        cursor = next + 1;
    }
    return entries;
}

std::vector<std::string> executableExtensions() {
#ifdef _WIN32
    std::vector<std::string> extensions;
    const std::string raw = defaulted(std::getenv("PATHEXT"), ".COM;.EXE;.BAT;.CMD");
    for (const auto& extension : splitPathList(raw)) {
        if (!extension.empty()) {
            extensions.push_back(extension);
        }
    }
    if (extensions.empty()) {
        extensions = {".COM", ".EXE", ".BAT", ".CMD"};
    }
    extensions.push_back(std::string());
    return extensions;
#else
    return {std::string()};
#endif
}

bool inlineForeignToolAvailable(std::string command) {
    command = stripWrappingQuotes(std::move(command));
    if (command.empty()) {
        return false;
    }

    const std::filesystem::path commandPath(command);
    const auto candidatesFor = [&](const std::filesystem::path& basePath) {
        std::vector<std::filesystem::path> candidates;
        if (basePath.has_extension()) {
            candidates.push_back(basePath);
            return candidates;
        }
        for (const auto& extension : executableExtensions()) {
            if (extension.empty()) {
                candidates.push_back(basePath);
            } else {
                candidates.push_back(basePath.string() + extension);
            }
        }
        return candidates;
    };

    if (commandPath.has_parent_path() || commandPath.is_absolute()) {
        for (const auto& candidate : candidatesFor(commandPath)) {
            if (fileExistsForCommand(candidate)) {
                return true;
            }
        }
        return false;
    }

    for (const auto& directory : splitPathList(defaulted(std::getenv("PATH"), ""))) {
        for (const auto& candidate : candidatesFor(std::filesystem::path(directory) / commandPath)) {
            if (fileExistsForCommand(candidate)) {
                return true;
            }
        }
    }
    return false;
}

std::string sanitizeClikeExportType(std::string typeText) {
    std::string normalized = collapseSpaces(std::move(typeText));
    for (const std::string_view prefix : {std::string_view("extern \"C\" "), std::string_view("static ")}) {
        while (normalized.rfind(prefix, 0) == 0) {
            normalized.erase(0, prefix.size());
            normalized = trimCopy(normalized);
        }
    }
    return normalized;
}

bool isClikeLanguage(ApolloInlineForeignLanguage language) {
    return language == ApolloInlineForeignLanguage::C
        || language == ApolloInlineForeignLanguage::Cpp
        || language == ApolloInlineForeignLanguage::ObjectiveC
        || language == ApolloInlineForeignLanguage::ObjectiveCpp;
}

bool isStringApolloType(std::string_view typeText) {
    return typeText == "str";
}

std::pair<std::string, std::string> splitCppPreamble(std::string_view payload);

std::string regexEscape(std::string_view text) {
    std::string escaped;
    escaped.reserve(text.size() * 2);
    for (const char ch : text) {
        switch (ch) {
        case '\\':
        case '.':
        case '^':
        case '$':
        case '|':
        case '(': 
        case ')':
        case '[':
        case ']':
        case '{':
        case '}':
        case '*':
        case '+':
        case '?':
            escaped.push_back('\\');
            escaped.push_back(ch);
            break;
        default:
            escaped.push_back(ch);
            break;
        }
    }
    return escaped;
}

std::string replaceIdentifierTokens(std::string text,
    std::vector<std::pair<std::string, std::string>> replacements) {
    std::sort(replacements.begin(), replacements.end(), [](const auto& left, const auto& right) {
        return left.first.size() > right.first.size();
    });
    for (const auto& [from, to] : replacements) {
        text = std::regex_replace(text, std::regex("\\b" + regexEscape(from) + "\\b"), to);
    }
    return text;
}

bool isCaptureReferenceBoundaryChar(char ch) {
    const unsigned char value = static_cast<unsigned char>(ch);
    return std::isalnum(value) != 0 || ch == '_' || ch == '.';
}

std::string replaceRuntimeCaptureReferences(std::string text,
    const std::vector<ApolloInlineForeignCapture>& captures) {
    if (captures.empty()) {
        return text;
    }

    std::vector<std::pair<std::string, std::string>> replacements;
    replacements.reserve(captures.size());
    for (const auto& capture : captures) {
        replacements.emplace_back(capture.sourceText, capture.bindingName);
    }
    std::sort(replacements.begin(), replacements.end(), [](const auto& left, const auto& right) {
        return left.first.size() > right.first.size();
    });

    for (const auto& [from, to] : replacements) {
        std::string rewritten;
        std::size_t cursor = 0;
        while (cursor < text.size()) {
            const std::size_t match = text.find(from, cursor);
            if (match == std::string::npos) {
                rewritten.append(text, cursor, std::string::npos);
                break;
            }

            const std::size_t matchEnd = match + from.size();
            const bool leftBoundary = match == 0 || !isCaptureReferenceBoundaryChar(text[match - 1]);
            const bool rightBoundary = matchEnd == text.size() || !isCaptureReferenceBoundaryChar(text[matchEnd]);
            if (!leftBoundary || !rightBoundary) {
                rewritten.append(text, cursor, match + 1 - cursor);
                cursor = match + 1;
                continue;
            }

            rewritten.append(text, cursor, match - cursor);
            rewritten.append(to);
            cursor = matchEnd;
        }
        text = std::move(rewritten);
    }

    return text;
}

struct ApolloInlineForeignAggregateMethodBridge {
    std::string name;
    std::string returnType;
    std::vector<ApolloInlineForeignParameter> parameters;
    bool isStatic = false;
};

struct ApolloInlineForeignAggregateBridge {
    std::string keyword;
    std::string name;
    std::string baseName;
    std::vector<ApolloInlineForeignAggregateMethodBridge> methods;
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

std::string apolloTypeToCppBridge(std::string typeText) {
    typeText = trimCopy(std::move(typeText));
    if (typeText.empty()) {
        return "void";
    }

    std::string suffix;
    while (!typeText.empty()) {
        const char tail = typeText.back();
        if (tail != '*' && tail != '&') {
            break;
        }
        suffix.insert(suffix.begin(), tail);
        typeText.pop_back();
        typeText = trimCopy(std::move(typeText));
    }

    const std::string baseType = trimAggregateTypeName(typeText);
    std::string cppType;
    if (baseType == "void") {
        cppType = "void";
    } else if (baseType == "indef") {
        cppType = "void*";
        suffix.clear();
    } else if (baseType == "str") {
        cppType = "const char*";
        suffix.clear();
    } else if (baseType == "bool") {
        cppType = "bool";
    } else if (baseType == "short" || baseType == "i16" || baseType == "u16") {
        cppType = "short";
    } else if (baseType == "int" || baseType == "i32" || baseType == "u32") {
        cppType = "int";
    } else if (baseType == "long" || baseType == "i64" || baseType == "u64" || baseType == "usize" || baseType == "isize") {
        cppType = "long";
    } else if (baseType == "float" || baseType == "f32") {
        cppType = "float";
    } else if (baseType == "double" || baseType == "f64") {
        cppType = "double";
    } else {
        cppType = baseType;
    }

    return cppType + suffix;
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

std::vector<ApolloInlineForeignAggregateMethodBridge> collectAggregateMethodBridges(const std::vector<compilerv1Parser::MethodContext*>& methods) {
    std::vector<ApolloInlineForeignAggregateMethodBridge> bridges;
    for (auto* method : methods) {
        const std::string methodName = aggregateMethodSourceName(method);
        if (methodName.empty()) {
            continue;
        }

        ApolloInlineForeignAggregateMethodBridge bridge;
        bridge.name = methodName;
        bridge.returnType = method != nullptr && method->returnType() != nullptr
            ? apolloTypeToCppBridge(method->returnType()->getText())
            : "void";
        bridge.isStatic = method != nullptr && method->STATIC() != nullptr;

        if (method != nullptr && method->params() != nullptr) {
            std::size_t ordinal = 0;
            for (auto* param : method->params()->param()) {
                if (param == nullptr || param->typeRef() == nullptr) {
                    continue;
                }
                ApolloInlineForeignParameter parameter;
                parameter.name = param->ID() != nullptr ? param->ID()->getText() : ("arg" + std::to_string(ordinal));
                parameter.foreignType = apolloTypeToCppBridge(param->typeRef()->getText());
                bridge.parameters.push_back(std::move(parameter));
                ++ordinal;
            }
        }

        bridges.push_back(std::move(bridge));
    }
    return bridges;
}

void appendAggregateBridge(std::vector<ApolloInlineForeignAggregateBridge>& bridges,
    std::string keyword,
    std::string name,
    std::string baseName,
    const std::vector<compilerv1Parser::MethodContext*>& methods) {
    ApolloInlineForeignAggregateBridge bridge;
    bridge.keyword = std::move(keyword);
    bridge.name = std::move(name);
    bridge.baseName = trimAggregateTypeName(std::move(baseName));
    bridge.methods = collectAggregateMethodBridges(methods);
    bridges.push_back(std::move(bridge));
}

std::vector<ApolloInlineForeignAggregateBridge> collectApolloAggregateBridges(const std::filesystem::path& sourcePath) {
    if (sourcePath.empty()) {
        return {};
    }

    std::ifstream input(sourcePath);
    if (!input) {
        return {};
    }

    std::ostringstream source;
    source << input.rdbuf();

    antlr4::ANTLRInputStream antlrInput(source.str());
    compilerv1Lexer lexer(&antlrInput);
    antlr4::CommonTokenStream tokens(&lexer);
    compilerv1Parser parser(&tokens);
    parser.removeErrorListeners();
    lexer.removeErrorListeners();

    auto* tree = parser.program();
    if (tree == nullptr || parser.getNumberOfSyntaxErrors() > 0) {
        return {};
    }

    std::vector<ApolloInlineForeignAggregateBridge> bridges;
    for (auto* child : tree->children) {
        if (auto* classCtx = dynamic_cast<compilerv1Parser::ClassContext*>(child)) {
            std::vector<compilerv1Parser::MethodContext*> methods;
            if (classCtx->classBody() != nullptr) {
                for (auto* member : classCtx->classBody()->classMember()) {
                    if (member != nullptr && member->method() != nullptr) {
                        methods.push_back(member->method());
                    }
                }
            }
            appendAggregateBridge(bridges,
                "class",
                classCtx->ID() != nullptr ? classCtx->ID()->getText() : std::string(),
                classCtx->inheritanceClause() != nullptr && !classCtx->inheritanceClause()->inheritedType().empty()
                    && classCtx->inheritanceClause()->inheritedType(0) != nullptr
                    && classCtx->inheritanceClause()->inheritedType(0)->typeRef() != nullptr
                    ? classCtx->inheritanceClause()->inheritedType(0)->typeRef()->getText()
                    : std::string(),
                methods);
            continue;
        }

        if (auto* structCtx = dynamic_cast<compilerv1Parser::StructContext*>(child)) {
            std::vector<compilerv1Parser::MethodContext*> methods;
            if (structCtx->structBody() != nullptr) {
                for (auto* member : structCtx->structBody()->structMember()) {
                    if (member != nullptr && member->method() != nullptr) {
                        methods.push_back(member->method());
                    }
                }
            }
            appendAggregateBridge(bridges,
                "struct",
                structCtx->ID() != nullptr ? structCtx->ID()->getText() : std::string(),
                structCtx->inheritanceClause() != nullptr && !structCtx->inheritanceClause()->inheritedType().empty()
                    && structCtx->inheritanceClause()->inheritedType(0) != nullptr
                    && structCtx->inheritanceClause()->inheritedType(0)->typeRef() != nullptr
                    ? structCtx->inheritanceClause()->inheritedType(0)->typeRef()->getText()
                    : std::string(),
                methods);
        }
    }

    bridges.erase(std::remove_if(bridges.begin(), bridges.end(), [](const auto& bridge) {
        return bridge.name.empty();
    }), bridges.end());
    return bridges;
}

std::string renderApolloAggregateBridgeDeclarations(const std::filesystem::path& sourcePath,
    std::string_view payload) {
    std::ostringstream builder;
    for (const auto& bridge : collectApolloAggregateBridges(sourcePath)) {
        if (!bridge.name.empty()
            && !std::regex_search(std::string(payload), std::regex("\\b" + regexEscape(bridge.name) + "\\b")) ) {
            continue;
        }
        if (std::regex_search(std::string(payload), std::regex("\\b(?:class|struct)\\s+" + regexEscape(bridge.name) + "\\b"))) {
            continue;
        }

        builder << bridge.keyword << ' ' << bridge.name;
        if (!bridge.baseName.empty()) {
            builder << " : public " << bridge.baseName;
        }
        builder << " {\npublic:\n";
        for (const auto& method : bridge.methods) {
            builder << "    ";
            if (method.isStatic) {
                builder << "static ";
            }
            builder << method.returnType << ' ' << method.name << '(';
            for (std::size_t index = 0; index < method.parameters.size(); ++index) {
                if (index > 0) {
                    builder << ", ";
                }
                builder << method.parameters[index].foreignType << ' ' << method.parameters[index].name;
            }
            builder << ");\n";
        }
        builder << "};\n";
    }
    return builder.str();
}

std::string privateInlineFunctionName(const ApolloInlineForeignBlock& block, std::string_view name) {
    return "__apollo_inline_private_" + block.stableId + "_" + std::string(name);
}

std::string rewritePrivateFunctionNames(const ApolloInlineForeignBlock& block, std::string payload) {
    std::vector<std::pair<std::string, std::string>> replacements;
    replacements.reserve(block.functions.size());
    for (const auto& function : block.functions) {
        replacements.emplace_back(function.name, privateInlineFunctionName(block, function.name));
    }
    return replaceIdentifierTokens(std::move(payload), std::move(replacements));
}

std::string apolloTypeToClikeAbi(std::string_view apolloType) {
    if (apolloType == "str") {
        return "const char*";
    }
    if (apolloType == "indef") {
        return "void*";
    }
    if (apolloType == "bool") {
        return "bool";
    }
    if (apolloType == "short" || apolloType == "i16" || apolloType == "u16") {
        return "short";
    }
    if (apolloType == "long" || apolloType == "i64" || apolloType == "u64") {
        return "long";
    }
    if (apolloType == "float" || apolloType == "f32") {
        return "float";
    }
    if (apolloType == "double" || apolloType == "f64") {
        return "double";
    }
    if (apolloType == "void") {
        return "void";
    }
    return "int";
}

std::string apolloTypeToRustAbi(std::string_view apolloType) {
    if (apolloType == "str") {
        return "*const c_char";
    }
    if (apolloType == "bool") {
        return "bool";
    }
    if (apolloType == "short" || apolloType == "i16") {
        return "i16";
    }
    if (apolloType == "u16") {
        return "u16";
    }
    if (apolloType == "u32") {
        return "u32";
    }
    if (apolloType == "long" || apolloType == "i64") {
        return "i64";
    }
    if (apolloType == "u64") {
        return "u64";
    }
    if (apolloType == "float" || apolloType == "f32") {
        return "f32";
    }
    if (apolloType == "double" || apolloType == "f64") {
        return "f64";
    }
    if (apolloType == "void") {
        return "()";
    }
    return "i32";
}

std::string apolloTypeToSwiftAbi(std::string_view apolloType) {
    if (apolloType == "str") {
        return "UnsafePointer<CChar>?";
    }
    if (apolloType == "bool") {
        return "Bool";
    }
    if (apolloType == "short" || apolloType == "i16") {
        return "Int16";
    }
    if (apolloType == "u16") {
        return "UInt16";
    }
    if (apolloType == "u32") {
        return "UInt32";
    }
    if (apolloType == "long" || apolloType == "i64") {
        return "Int64";
    }
    if (apolloType == "u64") {
        return "UInt64";
    }
    if (apolloType == "float" || apolloType == "f32") {
        return "Float";
    }
    if (apolloType == "double" || apolloType == "f64") {
        return "Double";
    }
    if (apolloType == "void") {
        return "Void";
    }
    return "Int32";
}

std::string apolloTypeToZigAbi(std::string_view apolloType) {
    if (apolloType == "str") {
        return "[*:0]const u8";
    }
    if (apolloType == "bool") {
        return "bool";
    }
    if (apolloType == "short" || apolloType == "i16") {
        return "i16";
    }
    if (apolloType == "u16") {
        return "u16";
    }
    if (apolloType == "u32") {
        return "u32";
    }
    if (apolloType == "long" || apolloType == "i64") {
        return "i64";
    }
    if (apolloType == "u64") {
        return "u64";
    }
    if (apolloType == "float" || apolloType == "f32") {
        return "f32";
    }
    if (apolloType == "double" || apolloType == "f64") {
        return "f64";
    }
    if (apolloType == "void") {
        return "void";
    }
    return "i32";
}

std::string apolloTypeToPythonAbi(std::string_view apolloType) {
    if (apolloType == "str") {
        return "str";
    }
    if (apolloType == "bool") {
        return "bool";
    }
    if (apolloType == "short" || apolloType == "i16") {
        return "i16";
    }
    if (apolloType == "u16") {
        return "u16";
    }
    if (apolloType == "u32") {
        return "u32";
    }
    if (apolloType == "long" || apolloType == "i64") {
        return "i64";
    }
    if (apolloType == "u64") {
        return "u64";
    }
    if (apolloType == "float" || apolloType == "f32") {
        return "f32";
    }
    if (apolloType == "double" || apolloType == "f64") {
        return "f64";
    }
    if (apolloType == "void") {
        return "None";
    }
    return "i32";
}

std::string apolloTypeToGoAbi(std::string_view apolloType) {
    if (apolloType == "str") {
        return "string";
    }
    if (apolloType == "bool") {
        return "bool";
    }
    if (apolloType == "short" || apolloType == "i16") {
        return "int16";
    }
    if (apolloType == "u16") {
        return "uint16";
    }
    if (apolloType == "u32") {
        return "uint32";
    }
    if (apolloType == "long" || apolloType == "i64") {
        return "int64";
    }
    if (apolloType == "u64") {
        return "uint64";
    }
    if (apolloType == "float" || apolloType == "f32") {
        return "float32";
    }
    if (apolloType == "double" || apolloType == "f64") {
        return "float64";
    }
    if (apolloType == "void") {
        return "";
    }
    return "int32";
}

std::string apolloTypeToTypeScriptAbi(std::string_view apolloType) {
    if (apolloType == "str") {
        return "string";
    }
    if (apolloType == "bool") {
        return "boolean";
    }
    if (apolloType == "void") {
        return "void";
    }
    if (apolloType == "float" || apolloType == "double" || apolloType == "f32" || apolloType == "f64") {
        return "number";
    }
    return "i32";
}

bool enablesRuntimeInlineForeign(int ruleIndex) {
    switch (ruleIndex) {
    case compilerv1Parser::RuleFunction:
    case compilerv1Parser::RuleMethod:
    case compilerv1Parser::RuleLambdaLiteral:
    case compilerv1Parser::RuleSrcDecl:
    case compilerv1Parser::RuleEventHandlerStmt:
    case compilerv1Parser::RuleMandatoryScheduleMember:
    case compilerv1Parser::RuleSchedulerInsertStmt:
        return true;
    default:
        return false;
    }
}

ApolloInlineForeignLanguage normalizeLanguage(std::string_view language) {
    std::string normalized(language);
    std::transform(normalized.begin(), normalized.end(), normalized.begin(), [](unsigned char ch) {
        return static_cast<char>(std::tolower(ch));
    });
    if (normalized == "c") {
        return ApolloInlineForeignLanguage::C;
    }
    if (normalized == "objc" || normalized == "obj-c" || normalized == "objectivec" || normalized == "objective-c") {
        return ApolloInlineForeignLanguage::ObjectiveC;
    }
    if (normalized == "cpp" || normalized == "cxx" || normalized == "cc") {
        return ApolloInlineForeignLanguage::Cpp;
    }
    if (normalized == "objcpp" || normalized == "obj-cpp" || normalized == "objectivecpp"
        || normalized == "objective-cpp" || normalized == "objcxx" || normalized == "objectivec++"
        || normalized == "objective-c++") {
        return ApolloInlineForeignLanguage::ObjectiveCpp;
    }
    if (normalized == "rs" || normalized == "rust") {
        return ApolloInlineForeignLanguage::Rust;
    }
    if (normalized == "swift") {
        return ApolloInlineForeignLanguage::Swift;
    }
    if (normalized == "zig") {
        return ApolloInlineForeignLanguage::Zig;
    }
    if (normalized == "py" || normalized == "python" || normalized == "lpython") {
        return ApolloInlineForeignLanguage::Python;
    }
    if (normalized == "go" || normalized == "golang" || normalized == "gollvm" || normalized == "llvm-goc" || normalized == "tangollvm") {
        return ApolloInlineForeignLanguage::Go;
    }
    if (normalized == "ts" || normalized == "typescript" || normalized == "llts" || normalized == "js" || normalized == "javascript") {
        return ApolloInlineForeignLanguage::TypeScript;
    }
    return ApolloInlineForeignLanguage::Unsupported;
}

std::optional<std::string> mapClikeTypeToApollo(std::string_view typeText) {
    std::string normalized = sanitizeClikeExportType(std::string(typeText));
    normalized = collapseSpaces(std::move(normalized));
    if (normalized == "void") {
        return "void";
    }
    if (normalized == "char*" || normalized == "char *" || normalized == "const char*" || normalized == "const char *"
        || normalized == "char const*" || normalized == "char const *") {
        return "str";
    }
    if (normalized == "void*" || normalized == "void *" || normalized == "const void*" || normalized == "const void *") {
        return "indef";
    }
    if (normalized == "bool") {
        return "bool";
    }
    if (normalized == "short") {
        return "short";
    }
    if (normalized == "int8_t" || normalized == "std::int8_t") {
        return "i8";
    }
    if (normalized == "uint8_t" || normalized == "std::uint8_t") {
        return "u8";
    }
    if (normalized == "int16_t" || normalized == "std::int16_t") {
        return "i16";
    }
    if (normalized == "uint16_t" || normalized == "std::uint16_t") {
        return "u16";
    }
    if (normalized == "int") {
        return "int";
    }
    if (normalized == "int32_t" || normalized == "std::int32_t") {
        return "i32";
    }
    if (normalized == "uint32_t" || normalized == "std::uint32_t") {
        return "u32";
    }
    if (normalized == "long") {
        return "long";
    }
    if (normalized == "int64_t" || normalized == "std::int64_t") {
        return "i64";
    }
    if (normalized == "uint64_t" || normalized == "std::uint64_t") {
        return "u64";
    }
    if (normalized == "size_t" || normalized == "std::size_t") {
        return "usize";
    }
    if (normalized == "ptrdiff_t" || normalized == "std::ptrdiff_t") {
        return "isize";
    }
    if (normalized == "float") {
        return "float";
    }
    if (normalized == "double") {
        return "double";
    }
    return std::nullopt;
}

std::optional<std::string> mapRustTypeToApollo(std::string_view typeText) {
    std::string normalized = collapseSpaces(std::string(typeText));
    if (normalized == "&str" || normalized == "str") {
        return "str";
    }
    if (normalized == "bool") {
        return "bool";
    }
    if (normalized == "i16") {
        return "i16";
    }
    if (normalized == "u16") {
        return "u16";
    }
    if (normalized == "i32") {
        return "i32";
    }
    if (normalized == "u32") {
        return "u32";
    }
    if (normalized == "i64") {
        return "i64";
    }
    if (normalized == "u64") {
        return "u64";
    }
    if (normalized == "f64") {
        return "f64";
    }
    if (normalized == "()") {
        return "void";
    }
    return std::nullopt;
}

std::optional<std::string> mapSwiftTypeToApollo(std::string_view typeText) {
    const std::string normalized = collapseSpaces(std::string(typeText));
    if (normalized == "UnsafePointer<CChar>?" || normalized == "UnsafePointer<CChar>" || normalized == "String") {
        return "str";
    }
    if (normalized == "Bool") {
        return "bool";
    }
    if (normalized == "Int16") {
        return "i16";
    }
    if (normalized == "UInt16") {
        return "u16";
    }
    if (normalized == "Int32") {
        return "i32";
    }
    if (normalized == "UInt32") {
        return "u32";
    }
    if (normalized == "Int64") {
        return "i64";
    }
    if (normalized == "UInt64") {
        return "u64";
    }
    if (normalized == "Float") {
        return "float";
    }
    if (normalized == "Double") {
        return "double";
    }
    if (normalized == "Void" || normalized == "()") {
        return "void";
    }
    return std::nullopt;
}

std::optional<std::string> mapZigTypeToApollo(std::string_view typeText) {
    std::string normalized = collapseSpaces(std::string(typeText));
    if (!normalized.empty() && normalized.front() == '!') {
        normalized.erase(normalized.begin());
        normalized = trimCopy(normalized);
    }
    if (normalized == "[*:0]const u8" || normalized == "[]const u8" || normalized == "[:0]const u8") {
        return "str";
    }
    if (normalized == "bool") {
        return "bool";
    }
    if (normalized == "i16") {
        return "i16";
    }
    if (normalized == "u16") {
        return "u16";
    }
    if (normalized == "i32") {
        return "i32";
    }
    if (normalized == "u32") {
        return "u32";
    }
    if (normalized == "i64") {
        return "i64";
    }
    if (normalized == "u64") {
        return "u64";
    }
    if (normalized == "f32") {
        return "float";
    }
    if (normalized == "f64") {
        return "double";
    }
    if (normalized == "void") {
        return "void";
    }
    return std::nullopt;
}

std::optional<std::string> mapPythonTypeToApollo(std::string_view typeText) {
    const std::string normalized = collapseSpaces(std::string(typeText));
    if (normalized == "str") {
        return "str";
    }
    if (normalized == "bool") {
        return "bool";
    }
    if (normalized == "i16") {
        return "i16";
    }
    if (normalized == "u16") {
        return "u16";
    }
    if (normalized == "i32" || normalized == "int") {
        return "i32";
    }
    if (normalized == "u32") {
        return "u32";
    }
    if (normalized == "i64") {
        return "i64";
    }
    if (normalized == "u64") {
        return "u64";
    }
    if (normalized == "f32") {
        return "float";
    }
    if (normalized == "f64" || normalized == "float") {
        return "double";
    }
    if (normalized == "None") {
        return "void";
    }
    return std::nullopt;
}

std::optional<std::string> mapGoTypeToApollo(std::string_view typeText) {
    const std::string normalized = collapseSpaces(std::string(typeText));
    if (normalized == "string") {
        return "str";
    }
    if (normalized == "bool") {
        return "bool";
    }
    if (normalized == "int16") {
        return "i16";
    }
    if (normalized == "uint16") {
        return "u16";
    }
    if (normalized == "int32" || normalized == "int") {
        return "i32";
    }
    if (normalized == "uint32") {
        return "u32";
    }
    if (normalized == "int64") {
        return "i64";
    }
    if (normalized == "uint64") {
        return "u64";
    }
    if (normalized == "float32") {
        return "float";
    }
    if (normalized == "float64") {
        return "double";
    }
    return std::nullopt;
}

std::optional<std::string> mapTypeScriptTypeToApollo(std::string_view typeText) {
    const std::string normalized = collapseSpaces(std::string(typeText));
    if (normalized == "string") {
        return "str";
    }
    if (normalized == "boolean") {
        return "bool";
    }
    if (normalized == "i16") {
        return "i16";
    }
    if (normalized == "u16") {
        return "u16";
    }
    if (normalized == "i32") {
        return "i32";
    }
    if (normalized == "u32") {
        return "u32";
    }
    if (normalized == "i64") {
        return "i64";
    }
    if (normalized == "u64") {
        return "u64";
    }
    if (normalized == "number") {
        return "double";
    }
    if (normalized == "void") {
        return "void";
    }
    return std::nullopt;
}

std::optional<ApolloInlineForeignParameter> parseColonParameter(std::string_view token,
    const std::function<std::optional<std::string>(std::string_view)>& mapper) {
    const std::string text = collapseSpaces(std::string(token));
    if (text.empty()) {
        return std::nullopt;
    }
    const auto colon = text.find(':');
    if (colon == std::string::npos || colon == 0 || colon + 1 >= text.size()) {
        return std::nullopt;
    }
    ApolloInlineForeignParameter parameter;
    parameter.name = trimCopy(text.substr(0, colon));
    parameter.foreignType = trimCopy(text.substr(colon + 1));
    const auto apolloType = mapper(parameter.foreignType);
    if (!apolloType.has_value()) {
        return std::nullopt;
    }
    parameter.apolloType = *apolloType;
    return parameter;
}

std::optional<ApolloInlineForeignParameter> parseGoParameter(std::string_view token) {
    const std::string text = collapseSpaces(std::string(token));
    if (text.empty()) {
        return std::nullopt;
    }
    const auto lastSpace = text.find_last_of(' ');
    if (lastSpace == std::string::npos || lastSpace == 0 || lastSpace + 1 >= text.size()) {
        return std::nullopt;
    }
    ApolloInlineForeignParameter parameter;
    parameter.name = trimCopy(text.substr(0, lastSpace));
    parameter.foreignType = trimCopy(text.substr(lastSpace + 1));
    if (parameter.name.find(',') != std::string::npos) {
        return std::nullopt;
    }
    const auto apolloType = mapGoTypeToApollo(parameter.foreignType);
    if (!apolloType.has_value()) {
        return std::nullopt;
    }
    parameter.apolloType = *apolloType;
    return parameter;
}

std::vector<std::string> splitTopLevelChunks(std::string_view text) {
    std::vector<std::string> chunks;
    std::size_t chunkStart = 0;
    int braceDepth = 0;
    int parenDepth = 0;
    bool inLineComment = false;
    bool inBlockComment = false;
    bool inString = false;
    char stringQuote = '\0';
    bool escaping = false;

    for (std::size_t index = 0; index < text.size(); ++index) {
        const char ch = text[index];
        const char next = index + 1 < text.size() ? text[index + 1] : '\0';

        if (inLineComment) {
            if (ch == '\n') {
                inLineComment = false;
            }
            continue;
        }
        if (inBlockComment) {
            if (ch == '*' && next == '/') {
                inBlockComment = false;
                ++index;
            }
            continue;
        }
        if (inString) {
            if (escaping) {
                escaping = false;
                continue;
            }
            if (ch == '\\') {
                escaping = true;
                continue;
            }
            if (ch == stringQuote) {
                inString = false;
                stringQuote = '\0';
            }
            continue;
        }

        if (ch == '/' && next == '/') {
            inLineComment = true;
            ++index;
            continue;
        }
        if (ch == '/' && next == '*') {
            inBlockComment = true;
            ++index;
            continue;
        }
        if (ch == '"' || ch == '\'') {
            inString = true;
            stringQuote = ch;
            continue;
        }
        if (ch == '(') {
            ++parenDepth;
            continue;
        }
        if (ch == ')') {
            parenDepth = std::max(0, parenDepth - 1);
            continue;
        }
        if (ch == '{') {
            ++braceDepth;
            continue;
        }
        if (ch == '}') {
            braceDepth = std::max(0, braceDepth - 1);
            if (braceDepth == 0) {
                const std::string chunk = trimCopy(std::string(text.substr(chunkStart, index - chunkStart + 1)));
                if (!chunk.empty()) {
                    chunks.push_back(chunk);
                }
                chunkStart = index + 1;
            }
            continue;
        }
        if (ch == ';' && braceDepth == 0 && parenDepth == 0) {
            const std::string chunk = trimCopy(std::string(text.substr(chunkStart, index - chunkStart + 1)));
            if (!chunk.empty()) {
                chunks.push_back(chunk);
            }
            chunkStart = index + 1;
        }
    }

    const std::string trailing = trimCopy(std::string(text.substr(chunkStart)));
    if (!trailing.empty()) {
        chunks.push_back(trailing);
    }
    return chunks;
}

std::vector<std::string> splitCommaSeparated(std::string_view text) {
    std::vector<std::string> parts;
    std::size_t partStart = 0;
    int parenDepth = 0;
    int angleDepth = 0;
    for (std::size_t index = 0; index < text.size(); ++index) {
        const char ch = text[index];
        if (ch == '(') {
            ++parenDepth;
        } else if (ch == ')') {
            parenDepth = std::max(0, parenDepth - 1);
        } else if (ch == '<') {
            ++angleDepth;
        } else if (ch == '>') {
            angleDepth = std::max(0, angleDepth - 1);
        } else if (ch == ',' && parenDepth == 0 && angleDepth == 0) {
            parts.push_back(trimCopy(std::string(text.substr(partStart, index - partStart))));
            partStart = index + 1;
        }
    }
    const std::string trailing = trimCopy(std::string(text.substr(partStart)));
    if (!trailing.empty()) {
        parts.push_back(trailing);
    }
    return parts;
}

std::optional<ApolloInlineForeignParameter> parseClikeParameter(std::string_view token) {
    const std::string text = collapseSpaces(std::string(token));
    if (text.empty() || text == "void") {
        return std::nullopt;
    }
    const auto lastSpace = text.find_last_of(' ');
    if (lastSpace == std::string::npos || lastSpace + 1 >= text.size()) {
        return std::nullopt;
    }
    ApolloInlineForeignParameter parameter;
    parameter.foreignType = trimCopy(text.substr(0, lastSpace));
    parameter.name = trimCopy(text.substr(lastSpace + 1));
    const auto apolloType = mapClikeTypeToApollo(parameter.foreignType);
    if (!apolloType.has_value()) {
        return std::nullopt;
    }
    parameter.apolloType = *apolloType;
    return parameter;
}

std::optional<ApolloInlineForeignParameter> parseRustParameter(std::string_view token) {
    const std::string text = collapseSpaces(std::string(token));
    if (text.empty()) {
        return std::nullopt;
    }
    const auto colon = text.find(':');
    if (colon == std::string::npos || colon == 0 || colon + 1 >= text.size()) {
        return std::nullopt;
    }
    ApolloInlineForeignParameter parameter;
    parameter.name = trimCopy(text.substr(0, colon));
    parameter.foreignType = trimCopy(text.substr(colon + 1));
    const auto apolloType = mapRustTypeToApollo(parameter.foreignType);
    if (!apolloType.has_value()) {
        return std::nullopt;
    }
    parameter.apolloType = *apolloType;
    return parameter;
}

ApolloInlineForeignSymbol makeClikeFunctionSymbol(std::string name,
    std::string foreignType,
    std::string apolloType,
    std::vector<ApolloInlineForeignParameter> parameters,
    bool variadic,
    bool declarationOnly) {
    ApolloInlineForeignSymbol symbol;
    symbol.kind = ApolloInlineForeignSymbolKind::Function;
    symbol.name = std::move(name);
    symbol.foreignType = sanitizeClikeExportType(std::move(foreignType));
    symbol.apolloType = std::move(apolloType);
    symbol.parameters = std::move(parameters);
    symbol.variadic = variadic;
    symbol.declarationOnly = declarationOnly;
    return symbol;
}

void appendClikeFunctionSymbol(std::vector<ApolloInlineForeignSymbol>& symbols,
    ApolloInlineForeignSymbol symbol) {
    auto existing = std::find_if(symbols.begin(), symbols.end(), [&](const ApolloInlineForeignSymbol& candidate) {
        return candidate.kind == ApolloInlineForeignSymbolKind::Function && candidate.name == symbol.name;
    });
    if (existing == symbols.end()) {
        symbols.push_back(std::move(symbol));
        return;
    }
    if (existing->declarationOnly && !symbol.declarationOnly) {
        *existing = std::move(symbol);
    }
}

std::vector<std::string> collectClikeIncludedHeaders(std::string_view preamble) {
    static const std::regex kIncludePattern(R"(^\s*#\s*include\s*[<\"]([^>\"]+)[>\"])", std::regex::optimize);

    std::vector<std::string> headers;
    std::istringstream lines{std::string(preamble)};
    std::string line;
    while (std::getline(lines, line)) {
        std::smatch match;
        if (!std::regex_search(line, match, kIncludePattern)) {
            continue;
        }
        std::string header = trimCopy(match[1].str());
        std::replace(header.begin(), header.end(), '\\', '/');
        const auto slash = header.find_last_of('/');
        if (slash != std::string::npos) {
            header = header.substr(slash + 1);
        }
        std::transform(header.begin(), header.end(), header.begin(), [](unsigned char ch) {
            return static_cast<char>(std::tolower(ch));
        });
        if (!header.empty() && std::find(headers.begin(), headers.end(), header) == headers.end()) {
            headers.push_back(std::move(header));
        }
    }
    return headers;
}

std::vector<ApolloInlineForeignSymbol> collectKnownClikeHeaderFunctions(std::string_view preamble) {
    static const std::unordered_map<std::string, std::vector<ApolloInlineForeignSymbol>> kHeaderFunctions = {
        {"cstdio", {
            makeClikeFunctionSymbol("puts", "int", "int", {ApolloInlineForeignParameter{"s", "const char*", "str"}}, false, true),
            makeClikeFunctionSymbol("printf", "int", "int", {ApolloInlineForeignParameter{"format", "const char*", "str"}}, true, true),
            makeClikeFunctionSymbol("putchar", "int", "int", {ApolloInlineForeignParameter{"ch", "int", "int"}}, false, true),
        }},
        {"stdio.h", {
            makeClikeFunctionSymbol("puts", "int", "int", {ApolloInlineForeignParameter{"s", "const char*", "str"}}, false, true),
            makeClikeFunctionSymbol("printf", "int", "int", {ApolloInlineForeignParameter{"format", "const char*", "str"}}, true, true),
            makeClikeFunctionSymbol("putchar", "int", "int", {ApolloInlineForeignParameter{"ch", "int", "int"}}, false, true),
        }},
        {"cstdlib", {
            makeClikeFunctionSymbol("atoi", "int", "int", {ApolloInlineForeignParameter{"text", "const char*", "str"}}, false, true),
            makeClikeFunctionSymbol("atol", "long", "long", {ApolloInlineForeignParameter{"text", "const char*", "str"}}, false, true),
            makeClikeFunctionSymbol("atof", "double", "double", {ApolloInlineForeignParameter{"text", "const char*", "str"}}, false, true),
            makeClikeFunctionSymbol("rand", "int", "int", {}, false, true),
            makeClikeFunctionSymbol("srand", "void", "void", {ApolloInlineForeignParameter{"seed", "int", "int"}}, false, true),
            makeClikeFunctionSymbol("exit", "void", "void", {ApolloInlineForeignParameter{"code", "int", "int"}}, false, true),
        }},
        {"stdlib.h", {
            makeClikeFunctionSymbol("atoi", "int", "int", {ApolloInlineForeignParameter{"text", "const char*", "str"}}, false, true),
            makeClikeFunctionSymbol("atol", "long", "long", {ApolloInlineForeignParameter{"text", "const char*", "str"}}, false, true),
            makeClikeFunctionSymbol("atof", "double", "double", {ApolloInlineForeignParameter{"text", "const char*", "str"}}, false, true),
            makeClikeFunctionSymbol("rand", "int", "int", {}, false, true),
            makeClikeFunctionSymbol("srand", "void", "void", {ApolloInlineForeignParameter{"seed", "int", "int"}}, false, true),
            makeClikeFunctionSymbol("exit", "void", "void", {ApolloInlineForeignParameter{"code", "int", "int"}}, false, true),
        }},
        {"cmath", {
            makeClikeFunctionSymbol("sin", "double", "double", {ApolloInlineForeignParameter{"value", "double", "double"}}, false, true),
            makeClikeFunctionSymbol("cos", "double", "double", {ApolloInlineForeignParameter{"value", "double", "double"}}, false, true),
            makeClikeFunctionSymbol("tan", "double", "double", {ApolloInlineForeignParameter{"value", "double", "double"}}, false, true),
            makeClikeFunctionSymbol("sqrt", "double", "double", {ApolloInlineForeignParameter{"value", "double", "double"}}, false, true),
            makeClikeFunctionSymbol("pow", "double", "double", {ApolloInlineForeignParameter{"lhs", "double", "double"}, ApolloInlineForeignParameter{"rhs", "double", "double"}}, false, true),
        }},
        {"math.h", {
            makeClikeFunctionSymbol("sin", "double", "double", {ApolloInlineForeignParameter{"value", "double", "double"}}, false, true),
            makeClikeFunctionSymbol("cos", "double", "double", {ApolloInlineForeignParameter{"value", "double", "double"}}, false, true),
            makeClikeFunctionSymbol("tan", "double", "double", {ApolloInlineForeignParameter{"value", "double", "double"}}, false, true),
            makeClikeFunctionSymbol("sqrt", "double", "double", {ApolloInlineForeignParameter{"value", "double", "double"}}, false, true),
            makeClikeFunctionSymbol("pow", "double", "double", {ApolloInlineForeignParameter{"lhs", "double", "double"}, ApolloInlineForeignParameter{"rhs", "double", "double"}}, false, true),
        }},
    };

    std::vector<ApolloInlineForeignSymbol> functions;
    for (const auto& header : collectClikeIncludedHeaders(preamble)) {
        const auto it = kHeaderFunctions.find(header);
        if (it == kHeaderFunctions.end()) {
            continue;
        }
        for (const auto& symbol : it->second) {
            appendClikeFunctionSymbol(functions, symbol);
        }
    }
    return functions;
}

std::vector<ApolloInlineForeignSymbol> collectClikeFunctionDeclarations(std::string_view payload) {
    static const std::regex kFunctionPattern(R"(^\s*((?:extern\s+"C"\s+)?(?:extern\s+)?(?:static\s+)?(?:const\s+)?[A-Za-z_][A-Za-z0-9_:]*(?:\s+const)?(?:\s*[*&]+)?)\s+([A-Za-z_][A-Za-z0-9_]*)\s*\(([^)]*)\)\s*;)", std::regex::optimize);

    std::vector<ApolloInlineForeignSymbol> functions;
    for (const auto& chunk : splitTopLevelChunks(payload)) {
        if (chunk.find('{') != std::string::npos) {
            continue;
        }
        std::smatch match;
        if (!std::regex_search(chunk, match, kFunctionPattern)) {
            continue;
        }
        const auto apolloType = mapClikeTypeToApollo(match[1].str());
        if (!apolloType.has_value()) {
            continue;
        }
        std::vector<ApolloInlineForeignParameter> parameters;
        bool variadic = false;
        bool unsupportedParameter = false;
        for (const auto& rawParameter : splitCommaSeparated(match[3].str())) {
            if (rawParameter == "void") {
                continue;
            }
            if (rawParameter == "...") {
                variadic = true;
                continue;
            }
            const auto parameter = parseClikeParameter(rawParameter);
            if (!parameter.has_value()) {
                unsupportedParameter = true;
                break;
            }
            parameters.push_back(*parameter);
        }
        if (!unsupportedParameter) {
            appendClikeFunctionSymbol(functions,
                makeClikeFunctionSymbol(match[2].str(), match[1].str(), *apolloType, std::move(parameters), variadic, true));
        }
    }
    return functions;
}

std::vector<ApolloInlineForeignSymbol> collectClikeFunctions(std::string_view payload) {
    static const std::regex kFunctionPattern(R"(^\s*((?:extern\s+"C"\s+)?(?:static\s+)?(?:const\s+)?[A-Za-z_][A-Za-z0-9_:]*(?:\s+const)?(?:\s*[*&]+)?)\s+([A-Za-z_][A-Za-z0-9_]*)\s*\(([^)]*)\)\s*\{)", std::regex::optimize);

    std::vector<ApolloInlineForeignSymbol> functions;
    for (const auto& chunk : splitTopLevelChunks(payload)) {
        std::smatch match;
        if (!std::regex_search(chunk, match, kFunctionPattern)) {
            continue;
        }
        const auto apolloType = mapClikeTypeToApollo(match[1].str());
        if (!apolloType.has_value()) {
            continue;
        }
        ApolloInlineForeignSymbol symbol;
        symbol.kind = ApolloInlineForeignSymbolKind::Function;
        symbol.name = match[2].str();
        symbol.foreignType = sanitizeClikeExportType(match[1].str());
        symbol.apolloType = *apolloType;
        symbol.declarationOnly = false;
        bool unsupportedParameter = false;
        for (const auto& rawParameter : splitCommaSeparated(match[3].str())) {
            if (rawParameter == "void") {
                continue;
            }
            if (rawParameter == "...") {
                symbol.variadic = true;
                continue;
            }
            const auto parameter = parseClikeParameter(rawParameter);
            if (!parameter.has_value()) {
                unsupportedParameter = true;
                break;
            }
            symbol.parameters.push_back(*parameter);
        }
        if (!unsupportedParameter) {
            functions.push_back(std::move(symbol));
        }
    }
    return functions;
}

std::vector<ApolloInlineForeignSymbol> collectClikeGlobals(std::string_view payload) {
    static const std::regex kGlobalPattern(R"(^\s*((?:static\s+)?(?:const\s+)?[A-Za-z_][A-Za-z0-9_:]*(?:\s+const)?(?:\s*[*&]+)?)\s+([A-Za-z_][A-Za-z0-9_]*)\s*=)", std::regex::optimize);

    std::vector<ApolloInlineForeignSymbol> globals;
    for (const auto& chunk : splitTopLevelChunks(payload)) {
        if (chunk.find('{') != std::string::npos) {
            continue;
        }
        std::smatch match;
        if (!std::regex_search(chunk, match, kGlobalPattern)) {
            continue;
        }
        const auto apolloType = mapClikeTypeToApollo(match[1].str());
        if (!apolloType.has_value()) {
            continue;
        }
        ApolloInlineForeignSymbol symbol;
        symbol.kind = ApolloInlineForeignSymbolKind::Global;
        symbol.name = match[2].str();
        symbol.foreignType = sanitizeClikeExportType(match[1].str());
        symbol.apolloType = *apolloType;
        symbol.mutableStorage = true;
        globals.push_back(std::move(symbol));
    }
    return globals;
}

std::pair<std::string, std::string> partitionClikeRuntimeChunks(std::string_view payload) {
    std::ostringstream definitions;
    std::ostringstream statements;
    for (const auto& chunk : splitTopLevelChunks(payload)) {
        if (!collectClikeFunctions(chunk).empty()) {
            definitions << chunk << "\n";
            continue;
        }
        statements << chunk << "\n";
    }
    return {definitions.str(), statements.str()};
}

std::vector<ApolloInlineForeignSymbol> collectRustFunctions(std::string_view payload) {
    static const std::regex kFunctionPattern(R"(^((?:pub\s+)?fn)\s+([A-Za-z_][A-Za-z0-9_]*)\s*\(([^)]*)\)\s*(?:->\s*([^\{]+))?\s*\{)", std::regex::optimize);

    std::vector<ApolloInlineForeignSymbol> functions;
    for (const auto& chunk : splitTopLevelChunks(payload)) {
        std::smatch match;
        if (!std::regex_search(chunk, match, kFunctionPattern)) {
            continue;
        }
        const std::string returnType = match[4].matched ? trimCopy(match[4].str()) : "()";
        const auto apolloType = mapRustTypeToApollo(returnType);
        if (!apolloType.has_value()) {
            continue;
        }
        ApolloInlineForeignSymbol symbol;
        symbol.kind = ApolloInlineForeignSymbolKind::Function;
        symbol.name = match[2].str();
        symbol.foreignType = returnType;
        symbol.apolloType = *apolloType;
        bool unsupportedParameter = false;
        for (const auto& rawParameter : splitCommaSeparated(match[3].str())) {
            const auto parameter = parseRustParameter(rawParameter);
            if (!parameter.has_value()) {
                unsupportedParameter = true;
                break;
            }
            symbol.parameters.push_back(*parameter);
        }
        if (!unsupportedParameter) {
            functions.push_back(std::move(symbol));
        }
    }
    return functions;
}

std::vector<ApolloInlineForeignSymbol> collectRustGlobals(std::string_view payload) {
    static const std::regex kLetPattern(R"(^let\s+(mut\s+)?([A-Za-z_][A-Za-z0-9_]*)\s*:\s*([^=;]+?)\s*=)", std::regex::optimize);
    static const std::regex kStaticPattern(R"(^(?:pub\s+)?static\s+(mut\s+)?([A-Za-z_][A-Za-z0-9_]*)\s*:\s*([^=;]+?)\s*=)", std::regex::optimize);

    std::vector<ApolloInlineForeignSymbol> globals;
    for (const auto& chunk : splitTopLevelChunks(payload)) {
        if (chunk.find('{') != std::string::npos) {
            continue;
        }
        std::smatch match;
        if (!std::regex_search(chunk, match, kLetPattern) && !std::regex_search(chunk, match, kStaticPattern)) {
            continue;
        }
        const auto apolloType = mapRustTypeToApollo(match[3].str());
        if (!apolloType.has_value()) {
            continue;
        }
        ApolloInlineForeignSymbol symbol;
        symbol.kind = ApolloInlineForeignSymbolKind::Global;
        symbol.name = match[2].str();
        symbol.foreignType = collapseSpaces(match[3].str());
        symbol.apolloType = *apolloType;
        symbol.mutableStorage = match[1].matched;
        globals.push_back(std::move(symbol));
    }
    return globals;
}

std::vector<ApolloInlineForeignSymbol> collectSwiftFunctions(std::string_view payload) {
    static const std::regex kFunctionPattern(R"(^(?:@[A-Za-z_][A-Za-z0-9_().]*\s+|(?:public|private|internal|fileprivate|open|final|static|class|mutating|nonmutating)\s+)*func\s+([A-Za-z_][A-Za-z0-9_]*)\s*\(([^)]*)\)\s*(?:->\s*([^\{]+))?\s*\{)", std::regex::optimize);

    std::vector<ApolloInlineForeignSymbol> functions;
    for (const auto& chunk : splitTopLevelChunks(payload)) {
        std::smatch match;
        if (!std::regex_search(chunk, match, kFunctionPattern)) {
            continue;
        }
        const std::string returnType = match[3].matched ? trimCopy(match[3].str()) : "Void";
        const auto apolloType = mapSwiftTypeToApollo(returnType);
        if (!apolloType.has_value()) {
            continue;
        }
        ApolloInlineForeignSymbol symbol;
        symbol.kind = ApolloInlineForeignSymbolKind::Function;
        symbol.name = match[1].str();
        symbol.foreignType = returnType;
        symbol.apolloType = *apolloType;
        bool unsupportedParameter = false;
        for (const auto& rawParameter : splitCommaSeparated(match[2].str())) {
            const auto parameter = parseColonParameter(rawParameter, mapSwiftTypeToApollo);
            if (!parameter.has_value()) {
                unsupportedParameter = true;
                break;
            }
            symbol.parameters.push_back(*parameter);
        }
        if (!unsupportedParameter) {
            functions.push_back(std::move(symbol));
        }
    }
    return functions;
}

std::vector<ApolloInlineForeignSymbol> collectSwiftGlobals(std::string_view payload) {
    static const std::regex kGlobalPattern(R"(^(?:public\s+|private\s+|internal\s+|fileprivate\s+)?(let|var)\s+([A-Za-z_][A-Za-z0-9_]*)\s*:\s*([^=;]+?)\s*=)", std::regex::optimize);

    std::vector<ApolloInlineForeignSymbol> globals;
    for (const auto& chunk : splitTopLevelChunks(payload)) {
        if (chunk.find('{') != std::string::npos) {
            continue;
        }
        std::smatch match;
        if (!std::regex_search(chunk, match, kGlobalPattern)) {
            continue;
        }
        const auto apolloType = mapSwiftTypeToApollo(match[3].str());
        if (!apolloType.has_value()) {
            continue;
        }
        ApolloInlineForeignSymbol symbol;
        symbol.kind = ApolloInlineForeignSymbolKind::Global;
        symbol.name = match[2].str();
        symbol.foreignType = collapseSpaces(match[3].str());
        symbol.apolloType = *apolloType;
        symbol.mutableStorage = match[1].str() == "var";
        globals.push_back(std::move(symbol));
    }
    return globals;
}

std::vector<ApolloInlineForeignSymbol> collectZigFunctions(std::string_view payload) {
    static const std::regex kFunctionPattern(R"(^(?:pub\s+)?fn\s+([A-Za-z_][A-Za-z0-9_]*)\s*\(([^)]*)\)\s*([^\{]+?)?\s*\{)", std::regex::optimize);

    std::vector<ApolloInlineForeignSymbol> functions;
    for (const auto& chunk : splitTopLevelChunks(payload)) {
        std::smatch match;
        if (!std::regex_search(chunk, match, kFunctionPattern)) {
            continue;
        }
        const std::string returnType = match[3].matched ? trimCopy(match[3].str()) : "void";
        const auto apolloType = mapZigTypeToApollo(returnType);
        if (!apolloType.has_value()) {
            continue;
        }
        ApolloInlineForeignSymbol symbol;
        symbol.kind = ApolloInlineForeignSymbolKind::Function;
        symbol.name = match[1].str();
        symbol.foreignType = returnType;
        symbol.apolloType = *apolloType;
        bool unsupportedParameter = false;
        for (const auto& rawParameter : splitCommaSeparated(match[2].str())) {
            const auto parameter = parseColonParameter(rawParameter, mapZigTypeToApollo);
            if (!parameter.has_value()) {
                unsupportedParameter = true;
                break;
            }
            symbol.parameters.push_back(*parameter);
        }
        if (!unsupportedParameter) {
            functions.push_back(std::move(symbol));
        }
    }
    return functions;
}

std::vector<ApolloInlineForeignSymbol> collectZigGlobals(std::string_view payload) {
    static const std::regex kGlobalPattern(R"(^(?:pub\s+)?(const|var)\s+([A-Za-z_][A-Za-z0-9_]*)\s*:\s*([^=;]+?)\s*=)", std::regex::optimize);

    std::vector<ApolloInlineForeignSymbol> globals;
    for (const auto& chunk : splitTopLevelChunks(payload)) {
        if (chunk.find('{') != std::string::npos) {
            continue;
        }
        std::smatch match;
        if (!std::regex_search(chunk, match, kGlobalPattern)) {
            continue;
        }
        const auto apolloType = mapZigTypeToApollo(match[3].str());
        if (!apolloType.has_value()) {
            continue;
        }
        ApolloInlineForeignSymbol symbol;
        symbol.kind = ApolloInlineForeignSymbolKind::Global;
        symbol.name = match[2].str();
        symbol.foreignType = collapseSpaces(match[3].str());
        symbol.apolloType = *apolloType;
        symbol.mutableStorage = match[1].str() == "var";
        globals.push_back(std::move(symbol));
    }
    return globals;
}

std::vector<ApolloInlineForeignSymbol> collectPythonFunctions(std::string_view payload) {
    static const std::regex kFunctionPattern(R"(^def\s+([A-Za-z_][A-Za-z0-9_]*)\s*\(([^)]*)\)\s*(?:->\s*([^:]+))?\s*:)", std::regex::optimize);

    std::vector<ApolloInlineForeignSymbol> functions;
    for (const auto& chunk : splitTopLevelChunks(payload)) {
        std::smatch match;
        if (!std::regex_search(chunk, match, kFunctionPattern)) {
            continue;
        }
        const std::string returnType = match[3].matched ? trimCopy(match[3].str()) : "None";
        const auto apolloType = mapPythonTypeToApollo(returnType);
        if (!apolloType.has_value()) {
            continue;
        }
        ApolloInlineForeignSymbol symbol;
        symbol.kind = ApolloInlineForeignSymbolKind::Function;
        symbol.name = match[1].str();
        symbol.foreignType = returnType;
        symbol.apolloType = *apolloType;
        bool unsupportedParameter = false;
        for (const auto& rawParameter : splitCommaSeparated(match[2].str())) {
            const auto parameter = parseColonParameter(rawParameter, mapPythonTypeToApollo);
            if (!parameter.has_value()) {
                unsupportedParameter = true;
                break;
            }
            symbol.parameters.push_back(*parameter);
        }
        if (!unsupportedParameter) {
            functions.push_back(std::move(symbol));
        }
    }
    return functions;
}

std::vector<ApolloInlineForeignSymbol> collectPythonGlobals(std::string_view payload) {
    static const std::regex kGlobalPattern(R"(^([A-Za-z_][A-Za-z0-9_]*)\s*:\s*([^=;]+?)\s*=)", std::regex::optimize);

    std::vector<ApolloInlineForeignSymbol> globals;
    for (const auto& chunk : splitTopLevelChunks(payload)) {
        if (chunk.find('{') != std::string::npos || chunk.rfind("def ", 0) == 0) {
            continue;
        }
        std::smatch match;
        if (!std::regex_search(chunk, match, kGlobalPattern)) {
            continue;
        }
        const auto apolloType = mapPythonTypeToApollo(match[2].str());
        if (!apolloType.has_value()) {
            continue;
        }
        ApolloInlineForeignSymbol symbol;
        symbol.kind = ApolloInlineForeignSymbolKind::Global;
        symbol.name = match[1].str();
        symbol.foreignType = collapseSpaces(match[2].str());
        symbol.apolloType = *apolloType;
        symbol.mutableStorage = true;
        globals.push_back(std::move(symbol));
    }
    return globals;
}

std::vector<ApolloInlineForeignSymbol> collectGoFunctions(std::string_view payload) {
    static const std::regex kFunctionPattern(R"(^func\s+([A-Za-z_][A-Za-z0-9_]*)\s*\(([^)]*)\)\s*(?:\(([^)]+)\)|([^\s\{]+))?\s*\{)", std::regex::optimize);

    std::vector<ApolloInlineForeignSymbol> functions;
    for (const auto& chunk : splitTopLevelChunks(payload)) {
        std::smatch match;
        if (!std::regex_search(chunk, match, kFunctionPattern)) {
            continue;
        }
        const std::string returnType = match[3].matched ? trimCopy(match[3].str())
            : (match[4].matched ? trimCopy(match[4].str()) : std::string());
        const auto apolloType = mapGoTypeToApollo(returnType.empty() ? "void" : returnType);
        if (!apolloType.has_value()) {
            continue;
        }
        ApolloInlineForeignSymbol symbol;
        symbol.kind = ApolloInlineForeignSymbolKind::Function;
        symbol.name = match[1].str();
        symbol.foreignType = returnType.empty() ? "" : returnType;
        symbol.apolloType = *apolloType;
        bool unsupportedParameter = false;
        for (const auto& rawParameter : splitCommaSeparated(match[2].str())) {
            const auto parameter = parseGoParameter(rawParameter);
            if (!parameter.has_value()) {
                unsupportedParameter = true;
                break;
            }
            symbol.parameters.push_back(*parameter);
        }
        if (!unsupportedParameter) {
            functions.push_back(std::move(symbol));
        }
    }
    return functions;
}

std::vector<ApolloInlineForeignSymbol> collectGoGlobals(std::string_view payload) {
    static const std::regex kGlobalPattern(R"(^(?:var|const)\s+([A-Za-z_][A-Za-z0-9_]*)\s+([^=;]+?)\s*=)", std::regex::optimize);

    std::vector<ApolloInlineForeignSymbol> globals;
    for (const auto& chunk : splitTopLevelChunks(payload)) {
        if (chunk.find('{') != std::string::npos) {
            continue;
        }
        std::smatch match;
        if (!std::regex_search(chunk, match, kGlobalPattern)) {
            continue;
        }
        const auto apolloType = mapGoTypeToApollo(match[2].str());
        if (!apolloType.has_value()) {
            continue;
        }
        ApolloInlineForeignSymbol symbol;
        symbol.kind = ApolloInlineForeignSymbolKind::Global;
        symbol.name = match[1].str();
        symbol.foreignType = collapseSpaces(match[2].str());
        symbol.apolloType = *apolloType;
        symbol.mutableStorage = true;
        globals.push_back(std::move(symbol));
    }
    return globals;
}

std::vector<ApolloInlineForeignSymbol> collectTypeScriptFunctions(std::string_view payload) {
    static const std::regex kFunctionPattern(R"(^(?:export\s+)?function\s+([A-Za-z_][A-Za-z0-9_]*)\s*\(([^)]*)\)\s*(?::\s*([^\{]+))?\s*\{)", std::regex::optimize);

    std::vector<ApolloInlineForeignSymbol> functions;
    for (const auto& chunk : splitTopLevelChunks(payload)) {
        std::smatch match;
        if (!std::regex_search(chunk, match, kFunctionPattern)) {
            continue;
        }
        const std::string returnType = match[3].matched ? trimCopy(match[3].str()) : "void";
        const auto apolloType = mapTypeScriptTypeToApollo(returnType);
        if (!apolloType.has_value()) {
            continue;
        }
        ApolloInlineForeignSymbol symbol;
        symbol.kind = ApolloInlineForeignSymbolKind::Function;
        symbol.name = match[1].str();
        symbol.foreignType = returnType;
        symbol.apolloType = *apolloType;
        bool unsupportedParameter = false;
        for (const auto& rawParameter : splitCommaSeparated(match[2].str())) {
            const auto parameter = parseColonParameter(rawParameter, mapTypeScriptTypeToApollo);
            if (!parameter.has_value()) {
                unsupportedParameter = true;
                break;
            }
            symbol.parameters.push_back(*parameter);
        }
        if (!unsupportedParameter) {
            functions.push_back(std::move(symbol));
        }
    }
    return functions;
}

std::vector<ApolloInlineForeignSymbol> collectTypeScriptGlobals(std::string_view payload) {
    static const std::regex kGlobalPattern(R"(^(?:export\s+)?(?:let|const|var)\s+([A-Za-z_][A-Za-z0-9_]*)\s*:\s*([^=;]+?)\s*=)", std::regex::optimize);

    std::vector<ApolloInlineForeignSymbol> globals;
    for (const auto& chunk : splitTopLevelChunks(payload)) {
        if (chunk.find('{') != std::string::npos) {
            continue;
        }
        std::smatch match;
        if (!std::regex_search(chunk, match, kGlobalPattern)) {
            continue;
        }
        const auto apolloType = mapTypeScriptTypeToApollo(match[2].str());
        if (!apolloType.has_value()) {
            continue;
        }
        ApolloInlineForeignSymbol symbol;
        symbol.kind = ApolloInlineForeignSymbolKind::Global;
        symbol.name = match[1].str();
        symbol.foreignType = collapseSpaces(match[2].str());
        symbol.apolloType = *apolloType;
        symbol.mutableStorage = true;
        globals.push_back(std::move(symbol));
    }
    return globals;
}

ApolloInlineForeignBlock buildInlineForeignBlock(compilerv1Parser::InlineForeignBlockContext* ctx,
    std::size_t ordinal,
    bool executesAtRuntime) {
    ApolloInlineForeignBlock block;
    const auto* languageNode = ctx->NATIVE() != nullptr ? ctx->NATIVE()->getSymbol() : (ctx->ID() != nullptr ? ctx->ID()->getSymbol() : nullptr);
    block.languageText = languageNode != nullptr ? languageNode->getText() : std::string();
    block.language = normalizeLanguage(block.languageText);
    block.payload = ctx->INCLUSIVE() != nullptr ? ctx->INCLUSIVE()->getText() : std::string();
    block.line = ctx->getStart() != nullptr ? ctx->getStart()->getLine() : 1;
    block.column = ctx->getStart() != nullptr ? ctx->getStart()->getCharPositionInLine() + 1 : 1;
    block.stableId = "inline_" + std::to_string(block.line) + "_" + std::to_string(block.column) + "_" + std::to_string(ordinal);
    block.runnerName = "__apollo_inline_run_" + block.stableId;
    block.executesAtRuntime = executesAtRuntime;

    switch (block.language) {
    case ApolloInlineForeignLanguage::C:
    case ApolloInlineForeignLanguage::Cpp:
    case ApolloInlineForeignLanguage::ObjectiveC:
    case ApolloInlineForeignLanguage::ObjectiveCpp:
        {
            const auto [clikePreamble, clikeBody] = splitCppPreamble(block.payload);
            for (auto symbol : collectClikeFunctions(clikeBody)) {
                appendClikeFunctionSymbol(block.functions, std::move(symbol));
            }
            for (auto symbol : collectClikeFunctionDeclarations(clikeBody)) {
                appendClikeFunctionSymbol(block.functions, std::move(symbol));
            }
            for (auto symbol : collectKnownClikeHeaderFunctions(clikePreamble)) {
                appendClikeFunctionSymbol(block.functions, std::move(symbol));
            }
            block.globals = collectClikeGlobals(clikeBody);
        }
        break;
    case ApolloInlineForeignLanguage::Rust:
        block.functions = collectRustFunctions(block.payload);
        block.globals = collectRustGlobals(block.payload);
        break;
    case ApolloInlineForeignLanguage::Swift:
        block.functions = collectSwiftFunctions(block.payload);
        block.globals = collectSwiftGlobals(block.payload);
        break;
    case ApolloInlineForeignLanguage::Zig:
        block.functions = collectZigFunctions(block.payload);
        block.globals = collectZigGlobals(block.payload);
        break;
    case ApolloInlineForeignLanguage::Python:
        block.functions = collectPythonFunctions(block.payload);
        block.globals = collectPythonGlobals(block.payload);
        break;
    case ApolloInlineForeignLanguage::Go:
        block.functions = collectGoFunctions(block.payload);
        block.globals = collectGoGlobals(block.payload);
        break;
    case ApolloInlineForeignLanguage::TypeScript:
        block.functions = collectTypeScriptFunctions(block.payload);
        block.globals = collectTypeScriptGlobals(block.payload);
        break;
    case ApolloInlineForeignLanguage::Unsupported:
        break;
    }

    for (auto& global : block.globals) {
        global.getterName = "__apollo_inline_get_" + block.stableId + "_" + global.name;
    }
    return block;
}

void collectInlineForeignBlocksFromTree(antlr4::tree::ParseTree* node,
    bool executesAtRuntime,
    std::vector<ApolloInlineForeignBlock>& blocks) {
    if (node == nullptr) {
        return;
    }

    bool childRuntime = executesAtRuntime;
    if (auto* ruleContext = dynamic_cast<antlr4::ParserRuleContext*>(node)) {
        childRuntime = childRuntime || enablesRuntimeInlineForeign(ruleContext->getRuleIndex());
    }

    if (auto* inlineForeign = dynamic_cast<compilerv1Parser::InlineForeignBlockContext*>(node)) {
        blocks.push_back(buildInlineForeignBlock(inlineForeign, blocks.size(), executesAtRuntime));
    }

    for (auto* child : node->children) {
        collectInlineForeignBlocksFromTree(child, childRuntime, blocks);
    }
}

std::string renderClikeParameters(const std::vector<ApolloInlineForeignParameter>& parameters,
    bool variadic = false) {
    std::ostringstream builder;
    for (std::size_t index = 0; index < parameters.size(); ++index) {
        if (index > 0) {
            builder << ", ";
        }
        builder << parameters[index].foreignType << ' ' << parameters[index].name;
    }
    if (variadic) {
        if (!parameters.empty()) {
            builder << ", ";
        }
        builder << "...";
    }
    return builder.str();
}

std::string renderArgumentNames(const std::vector<ApolloInlineForeignParameter>& parameters) {
    std::ostringstream builder;
    for (std::size_t index = 0; index < parameters.size(); ++index) {
        if (index > 0) {
            builder << ", ";
        }
        builder << parameters[index].name;
    }
    return builder.str();
}

std::vector<const ApolloInlineForeignBlock*> importedBlocksFor(const ApolloInlineForeignBlock& block,
    const std::vector<ApolloInlineForeignBlock>& allBlocks) {
    std::vector<const ApolloInlineForeignBlock*> importedBlocks;
    for (const auto& candidate : allBlocks) {
        if (candidate.stableId == block.stableId) {
            break;
        }
        if (!candidate.functions.empty() || !candidate.globals.empty()) {
            importedBlocks.push_back(&candidate);
        }
    }
    return importedBlocks;
}

std::string renderImportedClikeDeclarations(const ApolloInlineForeignBlock& block,
    const std::vector<ApolloInlineForeignBlock>& allBlocks) {
    std::ostringstream builder;
    for (const ApolloInlineForeignBlock* imported : importedBlocksFor(block, allBlocks)) {
        for (const auto& function : imported->functions) {
            builder << "extern ";
            builder << apolloTypeToClikeAbi(function.apolloType);
            builder << ' ' << function.name << '(' << renderClikeParameters(function.parameters, function.variadic) << ");\n";
        }
        for (const auto& global : imported->globals) {
            if (isStringApolloType(global.apolloType)) {
                builder << "extern const char* " << global.getterName << "(void);\n";
            } else {
                builder << "extern " << apolloTypeToClikeAbi(global.apolloType) << "* " << global.getterName << "(void);\n";
            }
        }
    }
    return builder.str();
}

std::string renderImportedClikeDefinitionAliases(const ApolloInlineForeignBlock& block,
    const std::vector<ApolloInlineForeignBlock>& allBlocks) {
    std::ostringstream builder;
    for (const ApolloInlineForeignBlock* imported : importedBlocksFor(block, allBlocks)) {
        for (const auto& global : imported->globals) {
            if (isStringApolloType(global.apolloType)) {
                builder << "#define " << global.name << ' ' << global.getterName << "()\n";
            } else {
                builder << "#define " << global.name << " (*" << global.getterName << "())\n";
            }
        }
    }
    return builder.str();
}

std::string renderImportedClikeDefinitionAliasUndefs(const ApolloInlineForeignBlock& block,
    const std::vector<ApolloInlineForeignBlock>& allBlocks) {
    std::ostringstream builder;
    for (const ApolloInlineForeignBlock* imported : importedBlocksFor(block, allBlocks)) {
        for (const auto& global : imported->globals) {
            builder << "#undef " << global.name << "\n";
        }
    }
    return builder.str();
}

std::string renderImportedClikeRunnerAliases(const ApolloInlineForeignBlock& block,
    const std::vector<ApolloInlineForeignBlock>& allBlocks) {
    std::ostringstream builder;
    for (const ApolloInlineForeignBlock* imported : importedBlocksFor(block, allBlocks)) {
        for (const auto& global : imported->globals) {
            if (isStringApolloType(global.apolloType)) {
                builder << "const char* " << global.name << " = " << global.getterName << "();\n";
            } else {
                builder << apolloTypeToClikeAbi(global.apolloType) << ' ' << global.name << " = *" << global.getterName << "();\n";
            }
        }
    }
    return builder.str();
}

std::string renderImportedClikeRunnerWritebacks(const ApolloInlineForeignBlock& block,
    const std::vector<ApolloInlineForeignBlock>& allBlocks) {
    std::ostringstream builder;
    for (const ApolloInlineForeignBlock* imported : importedBlocksFor(block, allBlocks)) {
        for (const auto& global : imported->globals) {
            if (isStringApolloType(global.apolloType)) {
                continue;
            }
            builder << "*" << global.getterName << "() = " << global.name << ";\n";
        }
    }
    return builder.str();
}

std::string renderImportedRustDeclarations(const ApolloInlineForeignBlock& block,
    const std::vector<ApolloInlineForeignBlock>& allBlocks) {
    std::ostringstream builder;
    builder << "use std::ffi::CStr;\n";
    builder << "use std::os::raw::c_char;\n";
    builder << "extern \"C-unwind\" {\n";
    bool declaredAnything = false;
    for (const ApolloInlineForeignBlock* imported : importedBlocksFor(block, allBlocks)) {
        for (const auto& function : imported->functions) {
            declaredAnything = true;
            builder << "    fn " << function.name << '(';
            for (std::size_t index = 0; index < function.parameters.size(); ++index) {
                if (index > 0) {
                    builder << ", ";
                }
                builder << function.parameters[index].name << ": " << apolloTypeToRustAbi(function.parameters[index].apolloType);
            }
            if (function.variadic) {
                if (!function.parameters.empty()) {
                    builder << ", ";
                }
                builder << "...";
            }
            builder << ')';
            if (function.apolloType != "void") {
                builder << " -> " << apolloTypeToRustAbi(function.apolloType);
            }
            builder << ";\n";
        }
        for (const auto& global : imported->globals) {
            declaredAnything = true;
            if (isStringApolloType(global.apolloType)) {
                builder << "    fn " << global.getterName << "() -> *const c_char;\n";
            } else {
                builder << "    fn " << global.getterName << "() -> *mut " << global.foreignType << ";\n";
            }
        }
    }
    builder << "}\n";
    return declaredAnything ? builder.str() : std::string();
}

std::string renderImportedRustRunnerAliases(const ApolloInlineForeignBlock& block,
    const std::vector<ApolloInlineForeignBlock>& allBlocks) {
    std::ostringstream builder;
    for (const ApolloInlineForeignBlock* imported : importedBlocksFor(block, allBlocks)) {
        for (const auto& global : imported->globals) {
            if (isStringApolloType(global.apolloType)) {
                builder << "    let " << global.name << " = unsafe { CStr::from_ptr(" << global.getterName << "()).to_string_lossy().into_owned() };\n";
            } else {
                builder << "    let mut " << global.name << " = unsafe { *" << global.getterName << "() };\n";
            }
        }
    }
    return builder.str();
}

std::string renderImportedRustRunnerWritebacks(const ApolloInlineForeignBlock& block,
    const std::vector<ApolloInlineForeignBlock>& allBlocks) {
    std::ostringstream builder;
    for (const ApolloInlineForeignBlock* imported : importedBlocksFor(block, allBlocks)) {
        for (const auto& global : imported->globals) {
            if (isStringApolloType(global.apolloType)) {
                continue;
            }
            builder << "    unsafe { *" << global.getterName << "() = " << global.name << "; }\n";
        }
    }
    return builder.str();
}

std::string renderRustRuntimeCaptureParameters(const std::vector<ApolloInlineForeignCapture>& captures) {
    std::ostringstream builder;
    for (std::size_t index = 0; index < captures.size(); ++index) {
        if (index > 0) {
            builder << ", ";
        }
        const auto& capture = captures[index];
        if (isStringApolloType(capture.apolloType)) {
            builder << capture.bindingName << ": *const c_char";
        } else {
            builder << capture.bindingName << ": " << apolloTypeToRustAbi(capture.apolloType);
        }
    }
    return builder.str();
}

std::string renderRustRuntimeCaptureAliases(const std::vector<ApolloInlineForeignCapture>& captures) {
    (void)captures;
    return {};
}

bool rustRuntimeCapturesNeedStdImports(const std::vector<ApolloInlineForeignCapture>& captures) {
    return std::any_of(captures.begin(), captures.end(), [](const ApolloInlineForeignCapture& capture) {
        return isStringApolloType(capture.apolloType);
    });
}

const ApolloInlineForeignCapture* findRustRuntimeCapture(std::string_view bindingName,
    const std::vector<ApolloInlineForeignCapture>& captures) {
    for (const auto& capture : captures) {
        if (capture.bindingName == bindingName) {
            return &capture;
        }
    }
    return nullptr;
}

std::string transformRustChunk(const std::string& chunk);

std::string transformRustRuntimeChunk(const std::string& chunk,
    const std::vector<ApolloInlineForeignCapture>& captures) {
    const std::string transformed = transformRustChunk(chunk);
    static const std::regex kPrintlnPattern(R"(^println!\(\s*"\{\}"\s*,\s*([A-Za-z_][A-Za-z0-9_]*)\s*\);$)", std::regex::optimize);

    std::smatch match;
    if (std::regex_match(transformed, match, kPrintlnPattern)) {
        const std::string bindingName = trimCopy(match[1].str());
        const ApolloInlineForeignCapture* capture = findRustRuntimeCapture(bindingName, captures);
        if (capture != nullptr && isStringApolloType(capture->apolloType)) {
            return "unsafe { printf(b\"%s\\n\\0\".as_ptr() as *const c_char, " + bindingName + "); }";
        }
    }

    return transformed;
}

std::pair<std::string, std::string> splitCppPreamble(std::string_view payload) {
    std::ostringstream preamble;
    std::ostringstream body;
    bool stillInPreamble = true;
    std::istringstream lines{std::string(payload)};
    std::string line;
    while (std::getline(lines, line)) {
        const std::string trimmed = trimCopy(line);
        if (stillInPreamble && (trimmed.empty() || (!trimmed.empty() && trimmed.front() == '#'))) {
            preamble << line << '\n';
            continue;
        }
        stillInPreamble = false;
        body << line << '\n';
    }
    return {preamble.str(), body.str()};
}

std::string transformRustChunk(const std::string& chunk) {
    static const std::regex kLetPattern(R"(^let\s+(mut\s+)?([A-Za-z_][A-Za-z0-9_]*)\s*:\s*([^=;]+?)\s*=\s*(.+);$)", std::regex::optimize);
    static const std::regex kStaticPattern(R"(^(?:pub\s+)?static\s+(mut\s+)?([A-Za-z_][A-Za-z0-9_]*)\s*:\s*([^=;]+?)\s*=\s*(.+);$)", std::regex::optimize);

    std::smatch match;
    if (std::regex_match(chunk, match, kLetPattern)) {
        return std::string("pub static ") + (match[1].matched ? "mut " : "") + match[2].str() + ": " + trimCopy(match[3].str()) + " = " + trimCopy(match[4].str()) + ";";
    }
    if (std::regex_match(chunk, match, kStaticPattern)) {
        return std::string("pub static ") + (match[1].matched ? "mut " : "") + match[2].str() + ": " + trimCopy(match[3].str()) + " = " + trimCopy(match[4].str()) + ";";
    }
    return chunk;
}

std::string buildCSource(const ApolloInlineForeignBlock& block,
    const std::vector<ApolloInlineForeignBlock>& allBlocks) {
    std::ostringstream builder;
    const auto [preamble, body] = splitCppPreamble(block.payload);
    builder << preamble;
    builder << renderImportedClikeDeclarations(block, allBlocks);
    if (block.executesAtRuntime) {
        const auto [definitions, statements] = partitionClikeRuntimeChunks(body);
        if (!trimCopy(definitions).empty()) {
            builder << renderImportedClikeDefinitionAliases(block, allBlocks);
            builder << definitions;
            builder << renderImportedClikeDefinitionAliasUndefs(block, allBlocks);
        }
        builder << "extern void " << block.runnerName << "(void) {\n";
        builder << renderImportedClikeRunnerAliases(block, allBlocks);
        builder << statements;
        builder << renderImportedClikeRunnerWritebacks(block, allBlocks);
        builder << "}\n";
        return builder.str();
    }
    builder << renderImportedClikeDefinitionAliases(block, allBlocks);
    for (const auto& function : block.functions) {
        if (!function.declarationOnly) {
            continue;
        }
        builder << "extern " << function.foreignType << ' ' << function.name << '(' << renderClikeParameters(function.parameters, function.variadic) << ");\n";
    }
    builder << body << "\n";
    for (const auto& global : block.globals) {
        if (isStringApolloType(global.apolloType)) {
            builder << "const char* " << global.getterName << "(void) { return " << global.name << "; }\n";
        } else {
            builder << global.foreignType << "* " << global.getterName << "(void) { return &" << global.name << "; }\n";
        }
    }
    return builder.str();
}

std::string buildCppSource(const std::filesystem::path& sourcePath,
    const ApolloInlineForeignBlock& block,
    const std::vector<ApolloInlineForeignBlock>& allBlocks) {
    const auto [preamble, body] = splitCppPreamble(block.payload);
    const std::string namespaceName = "__apollo_inline_" + block.stableId;

    std::ostringstream builder;
    builder << preamble;
    builder << renderImportedClikeDeclarations(block, allBlocks);
    builder << renderApolloAggregateBridgeDeclarations(sourcePath, body);
    if (block.executesAtRuntime) {
        const auto [definitions, statements] = partitionClikeRuntimeChunks(body);
        if (!trimCopy(definitions).empty()) {
            builder << renderImportedClikeDefinitionAliases(block, allBlocks);
            builder << "extern \"C\" {\n";
            builder << definitions;
            builder << "}\n";
            builder << renderImportedClikeDefinitionAliasUndefs(block, allBlocks);
        }
        builder << "extern \"C\" void " << block.runnerName << "() {\n";
        builder << renderImportedClikeRunnerAliases(block, allBlocks);
        builder << statements;
        builder << renderImportedClikeRunnerWritebacks(block, allBlocks);
        builder << "}\n";
        return builder.str();
    }
    builder << renderImportedClikeDefinitionAliases(block, allBlocks);
    if ((block.functions.empty() && block.globals.empty()
            && (body.find("sys__native_") != std::string::npos || body.find("sys__") != std::string::npos))
        || body.find("sys__printf") != std::string::npos) {
        builder << "extern \"C\" {\n";
        builder << body;
        builder << "}\n";
        return builder.str();
    }
    builder << "namespace " << namespaceName << " {\n";
    builder << body;
    builder << "}\n";

    for (const auto& function : block.functions) {
        if (function.declarationOnly) {
            builder << "extern \"C\" " << function.foreignType << ' ' << function.name << '(' << renderClikeParameters(function.parameters, function.variadic) << ");\n";
            continue;
        }
        builder << "extern \"C\" " << function.foreignType << ' ' << function.name << '(' << renderClikeParameters(function.parameters, function.variadic) << ") { ";
        if (function.apolloType != "void") {
            builder << "return ";
        }
        builder << namespaceName << "::" << function.name << '(' << renderArgumentNames(function.parameters) << "); }\n";
    }
    for (const auto& global : block.globals) {
        if (isStringApolloType(global.apolloType)) {
            builder << "extern \"C\" const char* " << global.getterName << "() { return " << namespaceName << "::" << global.name << "; }\n";
        } else {
            builder << "extern \"C\" " << global.foreignType << "* " << global.getterName << "() { return &" << namespaceName << "::" << global.name << "; }\n";
        }
    }
    return builder.str();
}

std::string buildRustSource(const ApolloInlineForeignBlock& block,
    const std::vector<ApolloInlineForeignBlock>& allBlocks,
    const std::vector<ApolloInlineForeignCapture>& captures) {
    const std::string moduleName = "apollo_inline_" + block.stableId;
    const std::string rewrittenPayload = replaceRuntimeCaptureReferences(block.payload, captures);
    std::ostringstream builder;
    const std::string importedDeclarations = renderImportedRustDeclarations(block, allBlocks);
    if (importedDeclarations.empty() && rustRuntimeCapturesNeedStdImports(captures)) {
        builder << "use std::os::raw::c_char;\n";
    }
    builder << importedDeclarations;
    if (block.executesAtRuntime) {
        if (rustRuntimeCapturesNeedStdImports(captures)) {
            builder << "extern \"C\" {\n";
            builder << "    fn printf(format: *const c_char, ...) -> i32;\n";
            builder << "}\n";
        }
        builder << "#[no_mangle]\npub extern \"C-unwind\" fn " << block.runnerName << '(' << renderRustRuntimeCaptureParameters(captures) << ") {\n";
        builder << renderImportedRustRunnerAliases(block, allBlocks);
        builder << renderRustRuntimeCaptureAliases(captures);
        for (const auto& chunk : splitTopLevelChunks(rewrittenPayload)) {
            builder << "    " << transformRustRuntimeChunk(chunk, captures) << "\n";
        }
        builder << renderImportedRustRunnerWritebacks(block, allBlocks);
        builder << "}\n";
        return builder.str();
    }
    builder << "mod " << moduleName << " {\n";
    builder << "#![allow(dead_code)]\n";
    for (const auto& chunk : splitTopLevelChunks(block.payload)) {
        builder << transformRustChunk(chunk) << "\n";
    }
    builder << "}\n";

    for (const auto& function : block.functions) {
        builder << "#[no_mangle]\npub extern \"C-unwind\" fn " << function.name << '(';
        for (std::size_t index = 0; index < function.parameters.size(); ++index) {
            if (index > 0) {
                builder << ", ";
            }
            builder << function.parameters[index].name << ": " << function.parameters[index].foreignType;
        }
        builder << ')';
        if (trimCopy(function.foreignType) != "()") {
            builder << " -> " << function.foreignType;
        }
        builder << " { ";
        if (function.apolloType != "void") {
            builder << "return ";
        }
        builder << moduleName << "::" << function.name << '(' << renderArgumentNames(function.parameters) << "); }\n";
    }
    for (const auto& global : block.globals) {
        if (isStringApolloType(global.apolloType)) {
            builder << "#[no_mangle]\npub extern \"C-unwind\" fn " << global.getterName << "() -> *const ::std::os::raw::c_char { "
                    << moduleName << "::" << global.name << ".as_ptr() as *const ::std::os::raw::c_char }\n";
        } else {
            builder << "#[no_mangle]\npub extern \"C-unwind\" fn " << global.getterName << "() -> *mut " << global.foreignType << " { ";
            if (global.mutableStorage) {
                builder << "std::ptr::addr_of_mut!(" << moduleName << "::" << global.name << ")";
            } else {
                builder << "std::ptr::addr_of!(" << moduleName << "::" << global.name << ") as *mut " << global.foreignType;
            }
            builder << " }\n";
        }
    }
    return builder.str();
}

std::string buildObjectiveCSource(const ApolloInlineForeignBlock& block,
    const std::vector<ApolloInlineForeignBlock>& allBlocks) {
    return buildCSource(block, allBlocks);
}

std::string buildObjectiveCppSource(const std::filesystem::path& sourcePath,
    const ApolloInlineForeignBlock& block,
    const std::vector<ApolloInlineForeignBlock>& allBlocks) {
    return buildCppSource(sourcePath, block, allBlocks);
}

std::string renderSwiftParameters(const std::vector<ApolloInlineForeignParameter>& parameters,
    bool useApolloAbi) {
    std::ostringstream builder;
    for (std::size_t index = 0; index < parameters.size(); ++index) {
        if (index > 0) {
            builder << ", ";
        }
        builder << parameters[index].name << ": "
                << (useApolloAbi ? apolloTypeToSwiftAbi(parameters[index].apolloType) : parameters[index].foreignType);
    }
    return builder.str();
}

std::string renderImportedSwiftDeclarations(const ApolloInlineForeignBlock& block,
    const std::vector<ApolloInlineForeignBlock>& allBlocks) {
    std::ostringstream builder;
    bool wroteFoundation = false;
    const auto ensureFoundation = [&]() {
        if (!wroteFoundation) {
            builder << "import Foundation\n";
            wroteFoundation = true;
        }
    };
    for (const ApolloInlineForeignBlock* imported : importedBlocksFor(block, allBlocks)) {
        for (const auto& function : imported->functions) {
            if (isStringApolloType(function.apolloType)) {
                ensureFoundation();
            }
            const std::string aliasName = "__apollo_import_" + function.name + "_" + imported->stableId;
            builder << "@_silgen_name(\"" << function.name << "\")\n";
            builder << "func " << aliasName << '(' << renderSwiftParameters(function.parameters, true) << ')';
            if (function.apolloType != "void") {
                builder << " -> " << apolloTypeToSwiftAbi(function.apolloType);
            }
            builder << "\n";
            builder << "func " << function.name << '(' << renderSwiftParameters(function.parameters, true) << ')';
            if (function.apolloType != "void") {
                builder << " -> " << apolloTypeToSwiftAbi(function.apolloType);
            }
            builder << " { ";
            if (function.apolloType != "void") {
                builder << "return ";
            }
            builder << aliasName << '(' << renderArgumentNames(function.parameters) << ") }\n";
        }
        for (const auto& global : imported->globals) {
            if (isStringApolloType(global.apolloType)) {
                ensureFoundation();
                builder << "@_silgen_name(\"" << global.getterName << "\")\n";
                builder << "func __apollo_import_" << global.getterName << "() -> UnsafePointer<CChar>?\n";
                builder << "var " << global.name << ": String {\n";
                builder << "    guard let raw = __apollo_import_" << global.getterName << "() else { return \"\" }\n";
                builder << "    return String(cString: raw)\n";
                builder << "}\n";
            } else {
                builder << "@_silgen_name(\"" << global.getterName << "\")\n";
                builder << "func __apollo_import_" << global.getterName << "() -> UnsafeMutablePointer<" << apolloTypeToSwiftAbi(global.apolloType) << ">\n";
                builder << "var " << global.name << ": " << apolloTypeToSwiftAbi(global.apolloType) << " {\n";
                builder << "    get { __apollo_import_" << global.getterName << "().pointee }\n";
                builder << "    nonmutating set { __apollo_import_" << global.getterName << "().pointee = newValue }\n";
                builder << "}\n";
            }
        }
    }
    return builder.str();
}

std::string buildSwiftSource(const ApolloInlineForeignBlock& block,
    const std::vector<ApolloInlineForeignBlock>& allBlocks) {
    std::ostringstream builder;
    builder << renderImportedSwiftDeclarations(block, allBlocks);
    if (block.payload.find("import Foundation") == std::string::npos
        && (block.payload.find("String") != std::string::npos || block.payload.find("CChar") != std::string::npos)) {
        builder << "import Foundation\n";
    }
    builder << block.payload << "\n";
    if (block.executesAtRuntime) {
        builder << "@_cdecl(\"" << block.runnerName << "\")\n";
        builder << "public func __apollo_inline_runner_" << block.stableId << "() -> Void {\n";
        builder << block.payload << "\n";
        builder << "}\n";
        return builder.str();
    }
    for (const auto& function : block.functions) {
        builder << "@_cdecl(\"" << function.name << "\")\n";
        builder << "public func __apollo_export_" << privateInlineFunctionName(block, function.name) << '(';
        builder << renderSwiftParameters(function.parameters, false) << ')';
        if (function.apolloType != "void") {
            builder << " -> " << function.foreignType;
        }
        builder << " { ";
        if (function.apolloType != "void") {
            builder << "return ";
        }
        builder << function.name << '(' << renderArgumentNames(function.parameters) << ") }\n";
    }
    for (const auto& global : block.globals) {
        if (isStringApolloType(global.apolloType)) {
            builder << "@_cdecl(\"" << global.getterName << "\")\n";
            builder << "public func __apollo_export_" << global.getterName << "() -> UnsafePointer<CChar>? {\n";
            builder << "    return (" << global.name << " as NSString).utf8String\n";
            builder << "}\n";
        } else {
            builder << "@_cdecl(\"" << global.getterName << "\")\n";
            builder << "public func __apollo_export_" << global.getterName << "() -> UnsafeMutablePointer<" << global.foreignType << "> {\n";
            builder << "    return UnsafeMutablePointer(&" << global.name << ")\n";
            builder << "}\n";
        }
    }
    return builder.str();
}

std::string renderZigParameters(const std::vector<ApolloInlineForeignParameter>& parameters,
    bool useApolloAbi) {
    std::ostringstream builder;
    for (std::size_t index = 0; index < parameters.size(); ++index) {
        if (index > 0) {
            builder << ", ";
        }
        builder << parameters[index].name << ": "
                << (useApolloAbi ? apolloTypeToZigAbi(parameters[index].apolloType) : parameters[index].foreignType);
    }
    return builder.str();
}

std::string renderImportedZigDeclarations(const ApolloInlineForeignBlock& block,
    const std::vector<ApolloInlineForeignBlock>& allBlocks) {
    std::ostringstream builder;
    for (const ApolloInlineForeignBlock* imported : importedBlocksFor(block, allBlocks)) {
        for (const auto& function : imported->functions) {
            builder << "extern fn " << function.name << '(' << renderZigParameters(function.parameters, true) << ')';
            if (function.apolloType != "void") {
                builder << ' ' << apolloTypeToZigAbi(function.apolloType);
            }
            builder << ";\n";
        }
        for (const auto& global : imported->globals) {
            if (isStringApolloType(global.apolloType)) {
                builder << "extern fn " << global.getterName << "() [*:0]const u8;\n";
            } else {
                builder << "extern fn " << global.getterName << "() *" << apolloTypeToZigAbi(global.apolloType) << ";\n";
            }
        }
    }
    return builder.str();
}

std::string buildZigSource(const ApolloInlineForeignBlock& block,
    const std::vector<ApolloInlineForeignBlock>& allBlocks) {
    std::ostringstream builder;
    builder << renderImportedZigDeclarations(block, allBlocks);
    const std::string rewrittenPayload = rewritePrivateFunctionNames(block, block.payload);
    if (block.executesAtRuntime) {
        builder << "export fn " << block.runnerName << "() void {\n";
        for (const ApolloInlineForeignBlock* imported : importedBlocksFor(block, allBlocks)) {
            for (const auto& global : imported->globals) {
                if (isStringApolloType(global.apolloType)) {
                    builder << "    const " << global.name << " = " << global.getterName << "();\n";
                } else {
                    builder << "    var " << global.name << " = " << global.getterName << "().*;\n";
                }
            }
        }
        builder << block.payload << "\n";
        for (const ApolloInlineForeignBlock* imported : importedBlocksFor(block, allBlocks)) {
            for (const auto& global : imported->globals) {
                if (isStringApolloType(global.apolloType)) {
                    continue;
                }
                builder << "    " << global.getterName << "().* = " << global.name << ";\n";
            }
        }
        builder << "}\n";
        return builder.str();
    }
    builder << rewrittenPayload << "\n";
    for (const auto& function : block.functions) {
        builder << "export fn " << function.name << '(' << renderZigParameters(function.parameters, false) << ')';
        if (function.apolloType != "void") {
            builder << ' ' << function.foreignType;
        }
        builder << " { ";
        if (function.apolloType != "void") {
            builder << "return ";
        }
        builder << privateInlineFunctionName(block, function.name) << '(' << renderArgumentNames(function.parameters) << "); }\n";
    }
    for (const auto& global : block.globals) {
        if (isStringApolloType(global.apolloType)) {
            builder << "export fn " << global.getterName << "() [*:0]const u8 { return " << global.name << "; }\n";
        } else {
            builder << "export fn " << global.getterName << "() *" << global.foreignType << " { return &" << global.name << "; }\n";
        }
    }
    return builder.str();
}

std::string buildPythonSource(const ApolloInlineForeignBlock& block,
    const std::vector<ApolloInlineForeignBlock>& allBlocks) {
    std::ostringstream builder;
    builder << "from lpython import *\n";
    for (const ApolloInlineForeignBlock* imported : importedBlocksFor(block, allBlocks)) {
        for (const auto& function : imported->functions) {
            builder << "@ccall\ndef " << function.name << '(';
            for (std::size_t index = 0; index < function.parameters.size(); ++index) {
                if (index > 0) {
                    builder << ", ";
                }
                builder << function.parameters[index].name << ": " << apolloTypeToPythonAbi(function.parameters[index].apolloType);
            }
            builder << ')';
            if (function.apolloType != "void") {
                builder << " -> " << apolloTypeToPythonAbi(function.apolloType);
            }
            builder << ": ...\n";
        }
        for (const auto& global : imported->globals) {
            if (isStringApolloType(global.apolloType)) {
                builder << "@ccall\ndef " << global.getterName << "() -> str: ...\n";
            } else {
                builder << "@ccall\ndef " << global.getterName << "() -> CPtr: ...\n";
            }
        }
    }
    if (block.executesAtRuntime) {
        builder << "@ccallable\ndef " << block.runnerName << "() -> None:\n";
        for (const ApolloInlineForeignBlock* imported : importedBlocksFor(block, allBlocks)) {
            for (const auto& global : imported->globals) {
                if (isStringApolloType(global.apolloType)) {
                    builder << "    " << global.name << " = " << global.getterName << "()\n";
                } else {
                    builder << "    " << global.name << ": " << apolloTypeToPythonAbi(global.apolloType) << " = c_p_pointer(" << global.getterName << "(), " << apolloTypeToPythonAbi(global.apolloType) << ")[0]\n";
                }
            }
        }
        builder << block.payload << "\n";
        for (const ApolloInlineForeignBlock* imported : importedBlocksFor(block, allBlocks)) {
            for (const auto& global : imported->globals) {
                if (isStringApolloType(global.apolloType)) {
                    continue;
                }
                builder << "    c_p_pointer(" << global.getterName << "(), " << apolloTypeToPythonAbi(global.apolloType) << ")[0] = " << global.name << "\n";
            }
        }
        return builder.str();
    }
    const std::string rewrittenPayload = rewritePrivateFunctionNames(block, block.payload);
    builder << rewrittenPayload << "\n";
    for (const auto& function : block.functions) {
        builder << "@ccallable\ndef " << function.name << '(';
        for (std::size_t index = 0; index < function.parameters.size(); ++index) {
            if (index > 0) {
                builder << ", ";
            }
            builder << function.parameters[index].name << ": " << function.parameters[index].foreignType;
        }
        builder << ')';
        if (function.apolloType != "void") {
            builder << " -> " << function.foreignType;
        }
        builder << ":\n";
        builder << "    ";
        if (function.apolloType == "void") {
            builder << privateInlineFunctionName(block, function.name) << '(' << renderArgumentNames(function.parameters) << ")\n";
        } else {
            builder << "return " << privateInlineFunctionName(block, function.name) << '(' << renderArgumentNames(function.parameters) << ")\n";
        }
    }
    for (const auto& global : block.globals) {
        if (isStringApolloType(global.apolloType)) {
            builder << "@ccallable\ndef " << global.getterName << "() -> str:\n    return " << global.name << "\n";
        } else {
            builder << "@ccallable\ndef " << global.getterName << "() -> CPtr:\n    return pointer(" << global.name << ")\n";
        }
    }
    return builder.str();
}

std::string buildGoSource(const ApolloInlineForeignBlock& block,
    const std::vector<ApolloInlineForeignBlock>& allBlocks) {
    std::ostringstream builder;
    builder << "package main\n/*\n#include <stdint.h>\n";
    for (const ApolloInlineForeignBlock* imported : importedBlocksFor(block, allBlocks)) {
        for (const auto& function : imported->functions) {
            builder << apolloTypeToClikeAbi(function.apolloType) << ' ' << function.name << '(';
            for (std::size_t index = 0; index < function.parameters.size(); ++index) {
                if (index > 0) {
                    builder << ", ";
                }
                builder << apolloTypeToClikeAbi(function.parameters[index].apolloType) << ' ' << function.parameters[index].name;
            }
            builder << ");\n";
        }
        for (const auto& global : imported->globals) {
            if (isStringApolloType(global.apolloType)) {
                builder << "const char* " << global.getterName << "(void);\n";
            } else {
                builder << apolloTypeToClikeAbi(global.apolloType) << "* " << global.getterName << "(void);\n";
            }
        }
    }
    builder << "*/\nimport \"C\"\nimport \"unsafe\"\n";
    if (block.executesAtRuntime) {
        builder << "//export " << block.runnerName << "\nfunc " << block.runnerName << "() {\n";
        for (const ApolloInlineForeignBlock* imported : importedBlocksFor(block, allBlocks)) {
            for (const auto& global : imported->globals) {
                if (isStringApolloType(global.apolloType)) {
                    builder << "    " << global.name << " := C.GoString(" << global.getterName << "())\n";
                } else {
                    builder << "    " << global.name << " := *(*" << apolloTypeToGoAbi(global.apolloType) << ")(unsafe.Pointer(C." << global.getterName << "()))\n";
                }
            }
        }
        builder << block.payload << "\n";
        for (const ApolloInlineForeignBlock* imported : importedBlocksFor(block, allBlocks)) {
            for (const auto& global : imported->globals) {
                if (isStringApolloType(global.apolloType)) {
                    continue;
                }
                builder << "    *(*" << apolloTypeToGoAbi(global.apolloType) << ")(unsafe.Pointer(C." << global.getterName << "())) = " << global.name << "\n";
            }
        }
        builder << "}\n";
        return builder.str();
    }
    const std::string rewrittenPayload = rewritePrivateFunctionNames(block, block.payload);
    builder << rewrittenPayload << "\n";
    for (const auto& function : block.functions) {
        builder << "//export " << function.name << "\nfunc " << function.name << '(';
        for (std::size_t index = 0; index < function.parameters.size(); ++index) {
            if (index > 0) {
                builder << ", ";
            }
            builder << function.parameters[index].name << ' ' << function.parameters[index].foreignType;
        }
        builder << ')';
        if (function.apolloType != "void") {
            builder << ' ' << function.foreignType;
        }
        builder << " { ";
        if (function.apolloType != "void") {
            builder << "return ";
        }
        builder << privateInlineFunctionName(block, function.name) << '(' << renderArgumentNames(function.parameters) << ") }\n";
    }
    for (const auto& global : block.globals) {
        if (isStringApolloType(global.apolloType)) {
            builder << "//export " << global.getterName << "\nfunc " << global.getterName << "() *byte { return unsafe.StringData(" << global.name << ") }\n";
        } else {
            builder << "//export " << global.getterName << "\nfunc " << global.getterName << "() *" << global.foreignType << " { return &" << global.name << " }\n";
        }
    }
    return builder.str();
}

std::optional<std::string> translateGoVariableDeclarationToClike(std::string_view line) {
    static const std::regex kPattern(R"(^(?:var|const)\s+([A-Za-z_][A-Za-z0-9_]*)\s+([^=;]+?)\s*=\s*(.+?);?$)", std::regex::optimize);

    std::smatch match;
    const std::string text = trimCopy(std::string(line));
    if (!std::regex_match(text, match, kPattern)) {
        return std::nullopt;
    }
    const auto apolloType = mapGoTypeToApollo(match[2].str());
    if (!apolloType.has_value()) {
        return std::nullopt;
    }
    return apolloTypeToClikeAbi(*apolloType) + " " + match[1].str() + " = " + trimCopy(match[3].str()) + ";";
}

std::optional<std::string> translateTypeScriptVariableDeclarationToClike(std::string_view line) {
    static const std::regex kPattern(R"(^(?:export\s+)?(?:let|const|var)\s+([A-Za-z_][A-Za-z0-9_]*)\s*:\s*([^=;]+?)\s*=\s*(.+?);?$)", std::regex::optimize);

    std::smatch match;
    const std::string text = trimCopy(std::string(line));
    if (!std::regex_match(text, match, kPattern)) {
        return std::nullopt;
    }
    const auto apolloType = mapTypeScriptTypeToApollo(match[2].str());
    if (!apolloType.has_value()) {
        return std::nullopt;
    }
    return apolloTypeToClikeAbi(*apolloType) + " " + match[1].str() + " = " + trimCopy(match[3].str()) + ";";
}

std::string translateManagedStatementBlockToClike(std::string_view blockText,
    ApolloInlineForeignLanguage language) {
    std::ostringstream builder;
    std::istringstream lines{std::string(blockText)};
    std::string line;
    while (std::getline(lines, line)) {
        const std::size_t indentWidth = line.find_first_not_of(" \t");
        const std::string indent = indentWidth == std::string::npos ? std::string() : line.substr(0, indentWidth);
        std::string trimmed = trimCopy(line);
        if (trimmed.empty()) {
            builder << '\n';
            continue;
        }
        if (startsWith(trimmed, "//") || startsWith(trimmed, "#")) {
            builder << indent << trimmed << '\n';
            continue;
        }

        std::optional<std::string> converted;
        if (language == ApolloInlineForeignLanguage::Go) {
            converted = translateGoVariableDeclarationToClike(trimmed);
        } else if (language == ApolloInlineForeignLanguage::TypeScript) {
            converted = translateTypeScriptVariableDeclarationToClike(trimmed);
            if (!converted.has_value() && startsWith(trimmed, "export ")) {
                trimmed = trimCopy(trimmed.substr(7));
            }
        }

        if (converted.has_value()) {
            builder << indent << *converted << '\n';
            continue;
        }

        if (!endsWith(trimmed, ";") && !endsWith(trimmed, "{") && trimmed != "}" && !endsWith(trimmed, ":")) {
            trimmed.push_back(';');
        }
        builder << indent << trimmed << '\n';
    }
    return builder.str();
}

std::string renderManagedFunctionHeaderToClike(std::string_view name,
    const std::vector<ApolloInlineForeignParameter>& parameters,
    std::string_view apolloType) {
    std::ostringstream builder;
    builder << apolloTypeToClikeAbi(apolloType) << ' ' << name << '(' << renderClikeParameters(parameters) << ')';
    return builder.str();
}

std::optional<std::string> translateGoTopLevelChunkToClike(std::string_view chunk) {
    static const std::regex kFunctionPattern(R"(^func\s+([A-Za-z_][A-Za-z0-9_]*)\s*\(([^)]*)\)\s*(?:\(([^)]+)\)|([^\s\{]+))?\s*\{$)", std::regex::optimize);

    const std::string text = trimCopy(std::string(chunk));
    if (text.empty()) {
        return std::string();
    }
    if (const auto global = translateGoVariableDeclarationToClike(text); global.has_value()) {
        return *global + "\n";
    }

    const std::size_t openBrace = text.find('{');
    const std::size_t closeBrace = text.rfind('}');
    if (openBrace == std::string::npos || closeBrace == std::string::npos || closeBrace < openBrace) {
        return std::nullopt;
    }

    std::smatch match;
    const std::string header = trimCopy(text.substr(0, openBrace + 1));
    if (!std::regex_match(header, match, kFunctionPattern)) {
        return std::nullopt;
    }

    const std::string returnType = match[3].matched ? trimCopy(match[3].str())
        : (match[4].matched ? trimCopy(match[4].str()) : std::string());
    const auto apolloType = mapGoTypeToApollo(returnType.empty() ? "void" : returnType);
    if (!apolloType.has_value()) {
        return std::nullopt;
    }

    std::vector<ApolloInlineForeignParameter> parameters;
    for (const auto& rawParameter : splitCommaSeparated(match[2].str())) {
        if (trimCopy(rawParameter).empty()) {
            continue;
        }
        const auto parameter = parseGoParameter(rawParameter);
        if (!parameter.has_value()) {
            return std::nullopt;
        }
        parameters.push_back(*parameter);
    }

    std::ostringstream builder;
    builder << renderManagedFunctionHeaderToClike(match[1].str(), parameters, *apolloType) << " {\n";
    builder << translateManagedStatementBlockToClike(text.substr(openBrace + 1, closeBrace - openBrace - 1), ApolloInlineForeignLanguage::Go);
    builder << "}\n";
    return builder.str();
}

std::optional<std::string> translateTypeScriptTopLevelChunkToClike(std::string_view chunk) {
    static const std::regex kFunctionPattern(R"(^(?:export\s+)?function\s+([A-Za-z_][A-Za-z0-9_]*)\s*\(([^)]*)\)\s*(?::\s*([^\{]+))?\s*\{$)", std::regex::optimize);

    const std::string text = trimCopy(std::string(chunk));
    if (text.empty()) {
        return std::string();
    }
    if (const auto global = translateTypeScriptVariableDeclarationToClike(text); global.has_value()) {
        return *global + "\n";
    }

    const std::size_t openBrace = text.find('{');
    const std::size_t closeBrace = text.rfind('}');
    if (openBrace == std::string::npos || closeBrace == std::string::npos || closeBrace < openBrace) {
        return std::nullopt;
    }

    std::smatch match;
    const std::string header = trimCopy(text.substr(0, openBrace + 1));
    if (!std::regex_match(header, match, kFunctionPattern)) {
        return std::nullopt;
    }

    const auto apolloType = mapTypeScriptTypeToApollo(match[3].matched ? trimCopy(match[3].str()) : std::string("void"));
    if (!apolloType.has_value()) {
        return std::nullopt;
    }

    std::vector<ApolloInlineForeignParameter> parameters;
    for (const auto& rawParameter : splitCommaSeparated(match[2].str())) {
        if (trimCopy(rawParameter).empty()) {
            continue;
        }
        const auto parameter = parseColonParameter(rawParameter, mapTypeScriptTypeToApollo);
        if (!parameter.has_value()) {
            return std::nullopt;
        }
        parameters.push_back(*parameter);
    }

    std::ostringstream builder;
    builder << renderManagedFunctionHeaderToClike(match[1].str(), parameters, *apolloType) << " {\n";
    builder << translateManagedStatementBlockToClike(text.substr(openBrace + 1, closeBrace - openBrace - 1), ApolloInlineForeignLanguage::TypeScript);
    builder << "}\n";
    return builder.str();
}

std::string buildManagedSurfaceFallbackSource(const ApolloInlineForeignBlock& block,
    const std::vector<ApolloInlineForeignBlock>& allBlocks) {
    std::ostringstream builder;
    builder << "#include <stdbool.h>\n";
    builder << "#include <stdint.h>\n";
    builder << renderImportedClikeDeclarations(block, allBlocks);
    if (block.executesAtRuntime) {
        builder << "extern void " << block.runnerName << "(void) {\n";
        builder << renderImportedClikeRunnerAliases(block, allBlocks);
        builder << translateManagedStatementBlockToClike(block.payload, block.language);
        builder << renderImportedClikeRunnerWritebacks(block, allBlocks);
        builder << "}\n";
        return builder.str();
    }

    builder << renderImportedClikeDefinitionAliases(block, allBlocks);
    for (const auto& chunk : splitTopLevelChunks(block.payload)) {
        const auto translated = block.language == ApolloInlineForeignLanguage::Go
            ? translateGoTopLevelChunkToClike(chunk)
            : translateTypeScriptTopLevelChunkToClike(chunk);
        if (translated.has_value()) {
            builder << *translated;
            continue;
        }
        builder << translateManagedStatementBlockToClike(chunk, block.language);
    }
    for (const auto& global : block.globals) {
        if (isStringApolloType(global.apolloType)) {
            builder << "const char* " << global.getterName << "(void) { return " << global.name << "; }\n";
        } else {
            builder << apolloTypeToClikeAbi(global.apolloType) << "* " << global.getterName << "(void) { return &" << global.name << "; }\n";
        }
    }
    return builder.str();
}

std::string buildTypeScriptSource(const ApolloInlineForeignBlock& block,
    const std::vector<ApolloInlineForeignBlock>& allBlocks) {
    std::ostringstream builder;
    for (const ApolloInlineForeignBlock* imported : importedBlocksFor(block, allBlocks)) {
        for (const auto& function : imported->functions) {
            builder << "declare function " << function.name << '(';
            for (std::size_t index = 0; index < function.parameters.size(); ++index) {
                if (index > 0) {
                    builder << ", ";
                }
                builder << function.parameters[index].name << ": " << apolloTypeToTypeScriptAbi(function.parameters[index].apolloType);
            }
            builder << ')';
            if (function.apolloType != "void") {
                builder << ": " << apolloTypeToTypeScriptAbi(function.apolloType);
            }
            builder << ";\n";
        }
        for (const auto& global : imported->globals) {
            if (isStringApolloType(global.apolloType)) {
                builder << "declare function " << global.getterName << "(): string;\n";
            } else {
                builder << "declare function " << global.getterName << "(): i32*;\n";
            }
        }
    }
    if (block.executesAtRuntime) {
        builder << "export function " << block.runnerName << "(): void {\n";
        for (const ApolloInlineForeignBlock* imported : importedBlocksFor(block, allBlocks)) {
            for (const auto& global : imported->globals) {
                if (isStringApolloType(global.apolloType)) {
                    builder << "  const " << global.name << " = " << global.getterName << "();\n";
                } else {
                    builder << "  let " << global.name << ": i32 = *" << global.getterName << "();\n";
                }
            }
        }
        builder << block.payload << "\n";
        for (const ApolloInlineForeignBlock* imported : importedBlocksFor(block, allBlocks)) {
            for (const auto& global : imported->globals) {
                if (isStringApolloType(global.apolloType)) {
                    continue;
                }
                builder << "  *" << global.getterName << "() = " << global.name << ";\n";
            }
        }
        builder << "}\n";
        return builder.str();
    }
    const std::string rewrittenPayload = rewritePrivateFunctionNames(block, block.payload);
    builder << rewrittenPayload << "\n";
    for (const auto& function : block.functions) {
        builder << "export function " << function.name << '(';
        for (std::size_t index = 0; index < function.parameters.size(); ++index) {
            if (index > 0) {
                builder << ", ";
            }
            builder << function.parameters[index].name << ": " << function.parameters[index].foreignType;
        }
        builder << ')';
        if (function.apolloType != "void") {
            builder << ": " << function.foreignType;
        }
        builder << " { ";
        if (function.apolloType != "void") {
            builder << "return ";
        }
        builder << privateInlineFunctionName(block, function.name) << '(' << renderArgumentNames(function.parameters) << "); }\n";
    }
    for (const auto& global : block.globals) {
        if (isStringApolloType(global.apolloType)) {
            builder << "export function " << global.getterName << "(): string { return " << global.name << "; }\n";
        } else {
            builder << "export function " << global.getterName << "(): " << global.foreignType << "* { return &" << global.name << "; }\n";
        }
    }
    return builder.str();
}

std::string buildInlineForeignSource(const std::filesystem::path& sourcePath,
    const ApolloInlineForeignBlock& block,
    const std::vector<ApolloInlineForeignBlock>& allBlocks,
    const std::vector<ApolloInlineForeignCapture>& captures) {
    switch (block.language) {
    case ApolloInlineForeignLanguage::C:
        return buildCSource(block, allBlocks);
    case ApolloInlineForeignLanguage::Cpp:
        return buildCppSource(sourcePath, block, allBlocks);
    case ApolloInlineForeignLanguage::ObjectiveC:
        return buildObjectiveCSource(block, allBlocks);
    case ApolloInlineForeignLanguage::ObjectiveCpp:
        return buildObjectiveCppSource(sourcePath, block, allBlocks);
    case ApolloInlineForeignLanguage::Rust:
        return buildRustSource(block, allBlocks, captures);
    case ApolloInlineForeignLanguage::Swift:
        return buildSwiftSource(block, allBlocks);
    case ApolloInlineForeignLanguage::Zig:
        return buildZigSource(block, allBlocks);
    case ApolloInlineForeignLanguage::Python:
        return buildPythonSource(block, allBlocks);
    case ApolloInlineForeignLanguage::Go:
        return buildGoSource(block, allBlocks);
    case ApolloInlineForeignLanguage::TypeScript:
        return buildTypeScriptSource(block, allBlocks);
    case ApolloInlineForeignLanguage::Unsupported:
        break;
    }
    throw std::runtime_error("Unsupported inline foreign language `" + block.languageText + "`");
}

std::string sourceExtensionFor(const ApolloInlineForeignBlock& block) {
    switch (block.language) {
    case ApolloInlineForeignLanguage::C:
        return ".c";
    case ApolloInlineForeignLanguage::Cpp:
        return ".cpp";
    case ApolloInlineForeignLanguage::ObjectiveC:
        return ".m";
    case ApolloInlineForeignLanguage::ObjectiveCpp:
        return ".mm";
    case ApolloInlineForeignLanguage::Rust:
        return ".rs";
    case ApolloInlineForeignLanguage::Swift:
        return ".swift";
    case ApolloInlineForeignLanguage::Zig:
        return ".zig";
    case ApolloInlineForeignLanguage::Python:
        return ".py";
    case ApolloInlineForeignLanguage::Go:
        return ".go";
    case ApolloInlineForeignLanguage::TypeScript:
        return ".ts";
    case ApolloInlineForeignLanguage::Unsupported:
        break;
    }
    return ".txt";
}

std::filesystem::path foreignCacheRoot(const std::filesystem::path& outputPath) {
    const auto parent = outputPath.has_parent_path() ? outputPath.parent_path() : std::filesystem::current_path();
    return (parent / "cache" / "inline_foreign").lexically_normal();
}

void writeTextFile(const std::filesystem::path& path, const std::string& content) {
    if (!path.parent_path().empty()) {
        std::filesystem::create_directories(path.parent_path());
    }
    std::ofstream output(path, std::ios::binary | std::ios::trunc);
    if (!output) {
        throw std::runtime_error("failed to write inline foreign artifact: " + path.string());
    }
    output << content;
}

void runCommand(const std::vector<std::string>& command, const std::filesystem::path& workingDirectory) {
    if (command.empty()) {
        throw std::runtime_error("refused to run empty inline foreign command");
    }

    const auto previousDirectory = std::filesystem::current_path();
    try {
        std::filesystem::current_path(workingDirectory);
#ifdef _WIN32
        std::vector<const char*> argv;
        argv.reserve(command.size() + 1);
        for (const auto& argument : command) {
            argv.push_back(argument.c_str());
        }
        argv.push_back(nullptr);
        const int exitCode = _spawnvp(_P_WAIT, command.front().c_str(), argv.data());
#else
        std::string rendered;
        for (std::size_t index = 0; index < command.size(); ++index) {
            if (index > 0) {
                rendered.push_back(' ');
            }
            rendered += command[index];
        }
        const int exitCode = std::system(rendered.c_str());
#endif
        std::filesystem::current_path(previousDirectory);
        if (exitCode != 0) {
            std::ostringstream builder;
            for (std::size_t index = 0; index < command.size(); ++index) {
                if (index > 0) {
                    builder << ' ';
                }
                builder << command[index];
            }
            throw std::runtime_error("inline foreign tool failed (exit " + std::to_string(exitCode) + "): " + builder.str());
        }
    } catch (...) {
        std::filesystem::current_path(previousDirectory);
        throw;
    }
}

std::filesystem::path compileInlineForeignToIr(const std::filesystem::path& sourcePath,
    const std::filesystem::path& outputPath,
    const ApolloInlineForeignBlock& block,
    const std::vector<ApolloInlineForeignBlock>& allBlocks,
    const std::vector<ApolloInlineForeignCapture>& captures) {
    const std::string clangTool = firstDefined(std::getenv("CLANG_EXE"), std::getenv("APOLLO_CLANG_EXE"), "clang");
    const std::string legacyGoLlvmTool = firstDefined(std::getenv("TANGOLLVM_EXE"), std::getenv("APOLLO_TANGOLLVM_EXE"), "");
    const std::string goLlvmTool = firstDefined(std::getenv("GOLLVM_EXE"), std::getenv("APOLLO_GOLLVM_EXE"),
        legacyGoLlvmTool.empty() ? "llvm-goc" : legacyGoLlvmTool.c_str());
    const std::string lltsTool = firstDefined(std::getenv("LLTS_EXE"), std::getenv("APOLLO_LLTS_EXE"), "lltsc");
    const bool goLlvmExplicitlyConfigured = !defaulted(std::getenv("GOLLVM_EXE"), "").empty()
        || !defaulted(std::getenv("APOLLO_GOLLVM_EXE"), "").empty()
        || !defaulted(std::getenv("TANGOLLVM_EXE"), "").empty()
        || !defaulted(std::getenv("APOLLO_TANGOLLVM_EXE"), "").empty();
    const bool goLlvmSupportedOnHost = [&]() {
#if defined(_WIN32) || defined(__APPLE__)
        return false;
#else
        const std::string targetTriple = targetTripleFromEnvironment();
        return targetTriple.empty() || targetTriple.find("linux") != std::string::npos;
#endif
    }();
    const bool useGoFallback = block.language == ApolloInlineForeignLanguage::Go
        && ((!goLlvmExplicitlyConfigured && !goLlvmSupportedOnHost) || !inlineForeignToolAvailable(goLlvmTool));
    const bool useTypeScriptFallback = block.language == ApolloInlineForeignLanguage::TypeScript && !inlineForeignToolAvailable(lltsTool);
    const bool useManagedSurfaceFallback = useGoFallback || useTypeScriptFallback;
    const std::string renderedSource = useManagedSurfaceFallback
        ? buildManagedSurfaceFallbackSource(block, allBlocks)
        : buildInlineForeignSource(sourcePath, block, allBlocks, captures);
    std::string compileSignature;
    switch (block.language) {
    case ApolloInlineForeignLanguage::C:
        compileSignature = "tool=" + firstDefined(std::getenv("CLANG_EXE"), std::getenv("APOLLO_CLANG_EXE"), "clang")
            + "\nlang=c"
            + "\nopt=" + optLevelFromEnvironment();
        break;
    case ApolloInlineForeignLanguage::Cpp:
        compileSignature = "tool=" + firstDefined(std::getenv("CLANGXX_EXE"), std::getenv("APOLLO_CLANGXX_EXE"), "clang++")
            + "\nlang=cpp"
            + "\nstd=" + cxxStdFromEnvironment()
            + "\nopt=" + optLevelFromEnvironment();
        break;
    case ApolloInlineForeignLanguage::ObjectiveC:
        compileSignature = "tool=" + firstDefined(std::getenv("CLANG_EXE"), std::getenv("APOLLO_CLANG_EXE"), "clang")
            + "\nlang=objc"
            + "\nopt=" + optLevelFromEnvironment();
        break;
    case ApolloInlineForeignLanguage::ObjectiveCpp:
        compileSignature = "tool=" + firstDefined(std::getenv("CLANGXX_EXE"), std::getenv("APOLLO_CLANGXX_EXE"), "clang++")
            + "\nlang=objcpp"
            + "\nstd=" + cxxStdFromEnvironment()
            + "\nopt=" + optLevelFromEnvironment();
        break;
    case ApolloInlineForeignLanguage::Rust:
        compileSignature = "tool=" + firstDefined(std::getenv("RUSTC_EXE"), std::getenv("APOLLO_RUSTC_EXE"), "rustc")
            + "\nlang=rust"
            + "\npanic=abort"
            + "\nedition=2021"
            + "\ntarget=" + rustTargetTripleFromApolloTarget(targetTripleFromEnvironment())
            + "\ncrate-type=lib";
        break;
    case ApolloInlineForeignLanguage::Swift:
        compileSignature = "tool=" + firstDefined(std::getenv("SWIFTC_EXE"), std::getenv("APOLLO_SWIFTC_EXE"), "swiftc")
            + "\nlang=swift"
            + "\nopt=" + optLevelFromEnvironment();
        break;
    case ApolloInlineForeignLanguage::Zig:
        compileSignature = "tool=" + firstDefined(std::getenv("ZIG_EXE"), std::getenv("APOLLO_ZIG_EXE"), "zig")
            + "\nlang=zig"
            + "\nopt=" + optLevelFromEnvironment();
        break;
    case ApolloInlineForeignLanguage::Python:
        compileSignature = "tool=" + firstDefined(std::getenv("LPYTHON_EXE"), std::getenv("APOLLO_LPYTHON_EXE"), "lpython")
            + "\nlang=python";
        break;
    case ApolloInlineForeignLanguage::Go:
        if (useGoFallback) {
            compileSignature = "tool=" + clangTool
                + "\nlang=go"
                + "\nfallback=clike-surface"
                + "\nopt=" + optLevelFromEnvironment();
        } else {
            compileSignature = "tool=" + goLlvmTool
                + "\nlang=go"
                + "\nopt=" + optLevelFromEnvironment();
        }
        break;
    case ApolloInlineForeignLanguage::TypeScript:
        if (useTypeScriptFallback) {
            compileSignature = "tool=" + clangTool
                + "\nlang=typescript"
                + "\nfallback=clike-surface"
                + "\nopt=" + optLevelFromEnvironment();
        } else {
            compileSignature = "tool=" + lltsTool
                + "\nlang=typescript"
                + "\nopt=" + optLevelFromEnvironment();
        }
        break;
    case ApolloInlineForeignLanguage::Unsupported:
        compileSignature = "lang=unsupported";
        break;
    }
    const std::string cacheKey = stableHashHex(sourcePath.string() + "\n" + outputPath.string() + "\n" + block.stableId + "\n"
        + block.languageText + "\n" + renderedSource + "\n" + hostPlatformCacheTag() + "\n" + targetTripleFromEnvironment() + "\n"
        + sysrootFromEnvironment() + "\n" + cxxStdFromEnvironment() + "\n" + optLevelFromEnvironment() + "\n"
        + compileSignature);

    const auto cacheRoot = foreignCacheRoot(outputPath);
    const auto sourceArtifact = cacheRoot / (cacheKey + (useManagedSurfaceFallback ? ".c" : sourceExtensionFor(block)));
    const auto irArtifact = cacheRoot / (cacheKey + ".ll");
    if (std::filesystem::exists(irArtifact)) {
        return irArtifact;
    }

    writeTextFile(sourceArtifact, renderedSource);

    std::vector<std::string> command;
    const std::string targetTriple = targetTripleFromEnvironment();
    const std::string rustTargetTriple = rustTargetTripleFromApolloTarget(targetTriple);
    const std::string sysroot = sysrootFromEnvironment();
    switch (block.language) {
    case ApolloInlineForeignLanguage::C:
        command = {firstDefined(std::getenv("CLANG_EXE"), std::getenv("APOLLO_CLANG_EXE"), "clang")};
        if (!targetTriple.empty()) {
            command.push_back("--target=" + targetTriple);
        }
        if (!sysroot.empty()) {
            command.push_back("--sysroot=" + sysroot);
        }
        appendIncludeSearchPaths(command, sourcePath, outputPath);
        command.push_back("-x");
        command.push_back("c");
        command.push_back("-O" + optLevelFromEnvironment());
        command.push_back("-S");
        command.push_back("-emit-llvm");
        command.push_back(sourceArtifact.string());
        command.push_back("-o");
        command.push_back(irArtifact.string());
        break;
    case ApolloInlineForeignLanguage::Cpp:
        command = {firstDefined(std::getenv("CLANGXX_EXE"), std::getenv("APOLLO_CLANGXX_EXE"), "clang++")};
        if (!targetTriple.empty()) {
            command.push_back("--target=" + targetTriple);
        }
        if (!sysroot.empty()) {
            command.push_back("--sysroot=" + sysroot);
        }
        appendIncludeSearchPaths(command, sourcePath, outputPath);
        command.push_back("-std=" + cxxStdFromEnvironment());
        command.push_back("-O" + optLevelFromEnvironment());
        command.push_back("-S");
        command.push_back("-emit-llvm");
        command.push_back(sourceArtifact.string());
        command.push_back("-o");
        command.push_back(irArtifact.string());
        break;
    case ApolloInlineForeignLanguage::ObjectiveC:
        command = {firstDefined(std::getenv("CLANG_EXE"), std::getenv("APOLLO_CLANG_EXE"), "clang")};
        if (!targetTriple.empty()) {
            command.push_back("--target=" + targetTriple);
        }
        if (!sysroot.empty()) {
            command.push_back("--sysroot=" + sysroot);
        }
        appendIncludeSearchPaths(command, sourcePath, outputPath);
        command.push_back("-x");
        command.push_back("objective-c");
        command.push_back("-O" + optLevelFromEnvironment());
        command.push_back("-S");
        command.push_back("-emit-llvm");
        command.push_back(sourceArtifact.string());
        command.push_back("-o");
        command.push_back(irArtifact.string());
        break;
    case ApolloInlineForeignLanguage::ObjectiveCpp:
        command = {firstDefined(std::getenv("CLANGXX_EXE"), std::getenv("APOLLO_CLANGXX_EXE"), "clang++")};
        if (!targetTriple.empty()) {
            command.push_back("--target=" + targetTriple);
        }
        if (!sysroot.empty()) {
            command.push_back("--sysroot=" + sysroot);
        }
        appendIncludeSearchPaths(command, sourcePath, outputPath);
        command.push_back("-x");
        command.push_back("objective-c++");
        command.push_back("-std=" + cxxStdFromEnvironment());
        command.push_back("-O" + optLevelFromEnvironment());
        command.push_back("-S");
        command.push_back("-emit-llvm");
        command.push_back(sourceArtifact.string());
        command.push_back("-o");
        command.push_back(irArtifact.string());
        break;
    case ApolloInlineForeignLanguage::Rust:
        command = {firstDefined(std::getenv("RUSTC_EXE"), std::getenv("APOLLO_RUSTC_EXE"), "rustc")};
        if (!rustTargetTriple.empty()) {
            command.push_back("--target");
            command.push_back(rustTargetTriple);
        }
        command.push_back("-C");
        command.push_back("panic=abort");
        command.push_back("--edition");
        command.push_back("2021");
        command.push_back("--crate-type");
        command.push_back("lib");
        command.push_back("--crate-name");
        command.push_back("apollo_inline_" + block.stableId);
        command.push_back("--emit=llvm-ir");
        command.push_back(sourceArtifact.string());
        command.push_back("-o");
        command.push_back(irArtifact.string());
        break;
    case ApolloInlineForeignLanguage::Swift:
        command = {firstDefined(std::getenv("SWIFTC_EXE"), std::getenv("APOLLO_SWIFTC_EXE"), "swiftc")};
        if (!targetTriple.empty()) {
            command.push_back("-target");
            command.push_back(targetTriple);
        }
        if (!sysroot.empty()) {
            command.push_back("-sdk");
            command.push_back(sysroot);
        }
        command.push_back("-parse-as-library");
        command.push_back("-emit-ir");
        command.push_back(sourceArtifact.string());
        command.push_back("-o");
        command.push_back(irArtifact.string());
        break;
    case ApolloInlineForeignLanguage::Zig:
        command = {firstDefined(std::getenv("ZIG_EXE"), std::getenv("APOLLO_ZIG_EXE"), "zig")};
        command.push_back("build-lib");
        command.push_back(sourceArtifact.string());
        if (!targetTriple.empty()) {
            command.push_back("-target");
            command.push_back(targetTriple);
        }
        command.push_back("-O");
        command.push_back("ReleaseFast");
        command.push_back("-fno-emit-bin");
        command.push_back("-femit-llvm-ir=" + irArtifact.string());
        break;
    case ApolloInlineForeignLanguage::Python:
        command = {firstDefined(std::getenv("LPYTHON_EXE"), std::getenv("APOLLO_LPYTHON_EXE"), "lpython")};
        if (!targetTriple.empty()) {
            command.push_back("--target");
            command.push_back(targetTriple);
        }
        command.push_back("--emit-llvm");
        command.push_back("-o");
        command.push_back(irArtifact.string());
        command.push_back(sourceArtifact.string());
        break;
    case ApolloInlineForeignLanguage::Go:
        if (useGoFallback) {
            command = {clangTool};
            if (!targetTriple.empty()) {
                command.push_back("--target=" + targetTriple);
            }
            if (!sysroot.empty()) {
                command.push_back("--sysroot=" + sysroot);
            }
            appendIncludeSearchPaths(command, sourcePath, outputPath);
            command.push_back("-x");
            command.push_back("c");
            command.push_back("-O" + optLevelFromEnvironment());
            command.push_back("-S");
            command.push_back("-emit-llvm");
            command.push_back(sourceArtifact.string());
            command.push_back("-o");
            command.push_back(irArtifact.string());
        } else {
            command = {goLlvmTool};
            command.push_back("-c");
            command.push_back("-fgo-pkgpath=apollo.inline." + block.stableId);
            command.push_back("-S");
            command.push_back("-emit-llvm");
            command.push_back("-o");
            command.push_back(irArtifact.string());
            command.push_back(sourceArtifact.string());
        }
        break;
    case ApolloInlineForeignLanguage::TypeScript:
        if (useTypeScriptFallback) {
            command = {clangTool};
            if (!targetTriple.empty()) {
                command.push_back("--target=" + targetTriple);
            }
            if (!sysroot.empty()) {
                command.push_back("--sysroot=" + sysroot);
            }
            appendIncludeSearchPaths(command, sourcePath, outputPath);
            command.push_back("-x");
            command.push_back("c");
            command.push_back("-O" + optLevelFromEnvironment());
            command.push_back("-S");
            command.push_back("-emit-llvm");
            command.push_back(sourceArtifact.string());
            command.push_back("-o");
            command.push_back(irArtifact.string());
        } else {
            command = {lltsTool};
            if (!targetTriple.empty()) {
                command.push_back("--target=" + targetTriple);
            }
            command.push_back("--emit-llvm");
            command.push_back(sourceArtifact.string());
            command.push_back("-o");
            command.push_back(irArtifact.string());
        }
        break;
    case ApolloInlineForeignLanguage::Unsupported:
        throw std::runtime_error("Unsupported inline foreign language `" + block.languageText + "`");
    }

    runCommand(command, sourcePath.has_parent_path() ? sourcePath.parent_path() : std::filesystem::current_path());
    return irArtifact;
}

void validateExportConflicts(compilerv1Parser::ProgramContext* tree, const std::vector<ApolloInlineForeignBlock>& blocks) {
    std::unordered_set<std::string> functionNames;
    std::unordered_set<std::string> globalNames;

    if (tree != nullptr) {
        for (auto* function : tree->function()) {
            if (function != nullptr && function->ID() != nullptr) {
                functionNames.insert(function->ID()->getText());
            }
        }
        for (auto* macro : tree->macro()) {
            if (macro != nullptr && macro->ID() != nullptr) {
                functionNames.insert(macro->ID()->getText());
            }
        }
        for (auto* global : tree->globalInit()) {
            auto* initCore = global != nullptr && global->init() != nullptr ? global->init()->initCore() : nullptr;
            if (initCore != nullptr && initCore->ID() != nullptr) {
                globalNames.insert(initCore->ID()->getText());
            }
        }
        for (auto* init : tree->init()) {
            auto* initCore = init != nullptr ? init->initCore() : nullptr;
            if (initCore != nullptr && initCore->ID() != nullptr) {
                globalNames.insert(initCore->ID()->getText());
            }
        }
    }

    std::unordered_set<std::string> foreignFunctionNames;
    std::unordered_set<std::string> foreignGlobalNames;
    for (const auto& block : blocks) {
        for (const auto& function : block.functions) {
            if (!foreignFunctionNames.insert(function.name).second || functionNames.contains(function.name) || globalNames.contains(function.name)) {
                throw std::runtime_error("inline foreign export name collision for function `" + function.name + "`");
            }
        }
        for (const auto& global : block.globals) {
            if (!foreignGlobalNames.insert(global.name).second || globalNames.contains(global.name) || functionNames.contains(global.name)) {
                throw std::runtime_error("inline foreign export name collision for global `" + global.name + "`");
            }
        }
    }
}

void linkInlineForeignModule(llvm::Module& module,
    const std::filesystem::path& sourcePath,
    const std::filesystem::path& outputPath,
    const ApolloInlineForeignBlock& block,
    const std::vector<ApolloInlineForeignBlock>& allBlocks,
    const std::vector<ApolloInlineForeignCapture>& captures) {
    const auto irArtifact = compileInlineForeignToIr(sourcePath, outputPath, block, allBlocks, captures);

    llvm::SMDiagnostic diagnostic;
    std::unique_ptr<llvm::Module> foreignModule = llvm::parseIRFile(irArtifact.string(), diagnostic, module.getContext());
    if (!foreignModule) {
        std::string rendered;
        llvm::raw_string_ostream stream(rendered);
        diagnostic.print("apollo-inline-foreign", stream);
        stream.flush();
        throw std::runtime_error("failed to parse generated inline foreign LLVM IR for `" + block.languageText + "` block: " + rendered);
    }

    if (llvm::Linker::linkModules(module, std::move(foreignModule))) {
        throw std::runtime_error("failed to link inline foreign LLVM IR for `" + block.languageText + "` block");
    }

    if (block.language == ApolloInlineForeignLanguage::Rust) {
        for (llvm::Function& function : module) {
            if (!function.isDeclaration()) {
                continue;
            }
            if (function.getName().find("panic_cannot_unwind") == llvm::StringRef::npos) {
                continue;
            }
            llvm::BasicBlock* entry = llvm::BasicBlock::Create(module.getContext(), "entry", &function);
            llvm::IRBuilder<> builder(entry);
            llvm::Function* trap = llvm::Intrinsic::getOrInsertDeclaration(&module, llvm::Intrinsic::trap);
            builder.CreateCall(trap);
            builder.CreateUnreachable();
        }
    }

    for (const auto& function : block.functions) {
        if (function.declarationOnly) {
            continue;
        }
        if (module.getFunction(function.name) == nullptr) {
            throw std::runtime_error("linked inline foreign block did not export expected function `" + function.name + "`");
        }
    }
    for (const auto& global : block.globals) {
        if (module.getFunction(global.getterName) == nullptr) {
            throw std::runtime_error("linked inline foreign block did not export expected getter `" + global.getterName + "`");
        }
    }
    if (block.executesAtRuntime && module.getFunction(block.runnerName) == nullptr) {
        throw std::runtime_error("linked inline foreign block did not export expected runner `" + block.runnerName + "`");
    }
}

llvm::Type* llvmTypeForInlineForeignApolloType(llvm::LLVMContext& context, std::string_view apolloType) {
    if (apolloType == "void") {
        return llvm::Type::getVoidTy(context);
    }
    if (apolloType == "bool") {
        return llvm::Type::getInt1Ty(context);
    }
    if (apolloType == "i8" || apolloType == "u8" || apolloType == "byte") {
        return llvm::Type::getInt8Ty(context);
    }
    if (apolloType == "short" || apolloType == "i16" || apolloType == "u16") {
        return llvm::Type::getInt16Ty(context);
    }
    if (apolloType == "char") {
        return llvm::Type::getInt32Ty(context);
    }
    if (apolloType == "int" || apolloType == "i32" || apolloType == "u32") {
        return llvm::Type::getInt32Ty(context);
    }
    if (apolloType == "long" || apolloType == "i64" || apolloType == "u64" || apolloType == "usize" || apolloType == "isize") {
        return llvm::Type::getInt64Ty(context);
    }
    if (apolloType == "float") {
        return llvm::Type::getFloatTy(context);
    }
    if (apolloType == "double" || apolloType == "f64") {
        return llvm::Type::getDoubleTy(context);
    }
    if (apolloType == "str" || apolloType == "indef") {
        return llvm::PointerType::getUnqual(context);
    }
    return nullptr;
}

void declareInlineForeignFunctionImports(llvm::Module& module, const ApolloInlineForeignBlock& block) {
    for (const auto& function : block.functions) {
        if (!function.declarationOnly || module.getFunction(function.name) != nullptr) {
            continue;
        }

        llvm::Type* returnType = llvmTypeForInlineForeignApolloType(module.getContext(), function.apolloType);
        if (returnType == nullptr) {
            continue;
        }
        std::vector<llvm::Type*> argTypes;
        argTypes.reserve(function.parameters.size());
        bool supported = true;
        for (const auto& parameter : function.parameters) {
            llvm::Type* argType = llvmTypeForInlineForeignApolloType(module.getContext(), parameter.apolloType);
            if (argType == nullptr) {
                supported = false;
                break;
            }
            argTypes.push_back(argType);
        }
        if (!supported) {
            continue;
        }

        module.getOrInsertFunction(function.name, llvm::FunctionType::get(returnType, argTypes, function.variadic));
    }
}

} // namespace

std::vector<ApolloInlineForeignBlock> collectInlineForeignBlocks(compilerv1Parser::ProgramContext* tree) {
    if (tree == nullptr) {
        return {};
    }
    std::vector<ApolloInlineForeignBlock> blocks;
    collectInlineForeignBlocksFromTree(tree, false, blocks);
    return blocks;
}

void linkInlineForeignModules(llvm::Module& module,
    const std::filesystem::path& sourcePath,
    const std::filesystem::path& outputPath,
    compilerv1Parser::ProgramContext* tree,
    const std::vector<ApolloInlineForeignBlock>& blocks) {
    if (blocks.empty()) {
        return;
    }

    validateExportConflicts(tree, blocks);
    for (const auto& block : blocks) {
        if (block.language == ApolloInlineForeignLanguage::Unsupported) {
            throw std::runtime_error("inline foreign language `" + block.languageText + "` is not supported by the native backend yet");
        }
        if (block.executesAtRuntime) {
            continue;
        }
        const bool declarationOnlyFunctions = !block.functions.empty()
            && std::all_of(block.functions.begin(), block.functions.end(), [](const ApolloInlineForeignSymbol& function) {
                return function.declarationOnly;
            });
        if (declarationOnlyFunctions && block.globals.empty()) {
            declareInlineForeignFunctionImports(module, block);
            continue;
        }
        linkInlineForeignModule(module, sourcePath, outputPath, block, blocks, {});
        declareInlineForeignFunctionImports(module, block);
    }
}

void ensureRuntimeInlineForeignModule(llvm::Module& module,
    const std::filesystem::path& sourcePath,
    const std::filesystem::path& outputPath,
    const ApolloInlineForeignBlock& block,
    const std::vector<ApolloInlineForeignBlock>& blocks,
    const std::vector<ApolloInlineForeignCapture>& captures) {
    if (module.getFunction(block.runnerName) != nullptr) {
        return;
    }
    linkInlineForeignModule(module, sourcePath, outputPath, block, blocks, captures);
}
