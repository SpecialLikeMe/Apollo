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
#include <unordered_set>
#include <utility>
#include <vector>

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

std::string sysrootFromEnvironment() {
    return defaulted(std::getenv("APOLLO_SYSROOT"), "");
}

std::string cxxStdFromEnvironment() {
    return defaulted(std::getenv("APOLLO_CXX_STD"), "c++20");
}

std::string optLevelFromEnvironment() {
    return defaulted(std::getenv("APOLLO_OPT_LEVEL"), "3");
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

std::string sanitizeClikeExportType(std::string typeText) {
    std::string normalized = collapseSpaces(std::move(typeText));
    for (const std::string_view prefix : {std::string_view("extern \"C\" "), std::string_view("static "), std::string_view("const ")}) {
        while (normalized.rfind(prefix, 0) == 0) {
            normalized.erase(0, prefix.size());
            normalized = trimCopy(normalized);
        }
    }
    return normalized;
}

ApolloInlineForeignLanguage normalizeLanguage(std::string_view language) {
    std::string normalized(language);
    std::transform(normalized.begin(), normalized.end(), normalized.begin(), [](unsigned char ch) {
        return static_cast<char>(std::tolower(ch));
    });
    if (normalized == "c") {
        return ApolloInlineForeignLanguage::C;
    }
    if (normalized == "cpp" || normalized == "cxx" || normalized == "cc") {
        return ApolloInlineForeignLanguage::Cpp;
    }
    if (normalized == "rs" || normalized == "rust") {
        return ApolloInlineForeignLanguage::Rust;
    }
    return ApolloInlineForeignLanguage::Unsupported;
}

std::optional<std::string> mapClikeTypeToApollo(std::string_view typeText) {
    std::string normalized = sanitizeClikeExportType(std::string(typeText));
    if (normalized == "bool") {
        return "bool";
    }
    if (normalized == "short") {
        return "short";
    }
    if (normalized == "int") {
        return "int";
    }
    if (normalized == "long") {
        return "long";
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

std::vector<ApolloInlineForeignSymbol> collectClikeFunctions(std::string_view payload) {
    static const std::regex kFunctionPattern(R"(^((?:extern\s+"C"\s+)?(?:static\s+)?[A-Za-z_][A-Za-z0-9_:]*)\s+([A-Za-z_][A-Za-z0-9_]*)\s*\(([^)]*)\)\s*\{)", std::regex::optimize);

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
        bool unsupportedParameter = false;
        for (const auto& rawParameter : splitCommaSeparated(match[3].str())) {
            if (rawParameter == "void") {
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
    static const std::regex kGlobalPattern(R"(^((?:static\s+)?[A-Za-z_][A-Za-z0-9_:]*)\s+([A-Za-z_][A-Za-z0-9_]*)\s*=)", std::regex::optimize);

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

ApolloInlineForeignBlock buildInlineForeignBlock(compilerv1Parser::InlineForeignBlockContext* ctx, std::size_t ordinal) {
    ApolloInlineForeignBlock block;
    const auto* languageNode = ctx->NATIVE() != nullptr ? ctx->NATIVE()->getSymbol() : (ctx->ID() != nullptr ? ctx->ID()->getSymbol() : nullptr);
    block.languageText = languageNode != nullptr ? languageNode->getText() : std::string();
    block.language = normalizeLanguage(block.languageText);
    block.payload = ctx->INCLUSIVE() != nullptr ? ctx->INCLUSIVE()->getText() : std::string();
    block.line = ctx->getStart() != nullptr ? ctx->getStart()->getLine() : 1;
    block.column = ctx->getStart() != nullptr ? ctx->getStart()->getCharPositionInLine() + 1 : 1;
    block.stableId = "inline_" + std::to_string(block.line) + "_" + std::to_string(block.column) + "_" + std::to_string(ordinal);

    switch (block.language) {
    case ApolloInlineForeignLanguage::C:
    case ApolloInlineForeignLanguage::Cpp:
        block.functions = collectClikeFunctions(block.payload);
        block.globals = collectClikeGlobals(block.payload);
        break;
    case ApolloInlineForeignLanguage::Rust:
        block.functions = collectRustFunctions(block.payload);
        block.globals = collectRustGlobals(block.payload);
        break;
    case ApolloInlineForeignLanguage::Unsupported:
        break;
    }

    for (auto& global : block.globals) {
        global.getterName = "__apollo_inline_get_" + block.stableId + "_" + global.name;
    }
    return block;
}

class InlineForeignCollector final : public compilerv1BaseVisitor {
public:
    std::any visitInlineForeignBlock(compilerv1Parser::InlineForeignBlockContext* ctx) override {
        if (ctx != nullptr) {
            blocks_.push_back(buildInlineForeignBlock(ctx, blocks_.size()));
        }
        return visitChildren(ctx);
    }

    [[nodiscard]] std::vector<ApolloInlineForeignBlock> takeBlocks() {
        return std::move(blocks_);
    }

private:
    std::vector<ApolloInlineForeignBlock> blocks_;
};

std::string renderClikeParameters(const std::vector<ApolloInlineForeignParameter>& parameters) {
    std::ostringstream builder;
    for (std::size_t index = 0; index < parameters.size(); ++index) {
        if (index > 0) {
            builder << ", ";
        }
        builder << parameters[index].foreignType << ' ' << parameters[index].name;
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

std::string buildCSource(const ApolloInlineForeignBlock& block) {
    std::ostringstream builder;
    builder << block.payload << "\n";
    for (const auto& global : block.globals) {
        builder << global.foreignType << "* " << global.getterName << "(void) { return &" << global.name << "; }\n";
    }
    return builder.str();
}

std::string buildCppSource(const ApolloInlineForeignBlock& block) {
    const auto [preamble, body] = splitCppPreamble(block.payload);
    const std::string namespaceName = "__apollo_inline_" + block.stableId;

    std::ostringstream builder;
    builder << preamble;
    builder << "namespace " << namespaceName << " {\n";
    builder << body;
    builder << "}\n";

    for (const auto& function : block.functions) {
        builder << "extern \"C\" " << function.foreignType << ' ' << function.name << '(' << renderClikeParameters(function.parameters) << ") { ";
        if (function.apolloType != "void") {
            builder << "return ";
        }
        builder << namespaceName << "::" << function.name << '(' << renderArgumentNames(function.parameters) << "); }\n";
    }
    for (const auto& global : block.globals) {
        builder << "extern \"C\" " << global.foreignType << "* " << global.getterName << "() { return &" << namespaceName << "::" << global.name << "; }\n";
    }
    return builder.str();
}

std::string buildRustSource(const ApolloInlineForeignBlock& block) {
    const std::string moduleName = "apollo_inline_" + block.stableId;
    std::ostringstream builder;
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
        builder << "#[no_mangle]\npub extern \"C-unwind\" fn " << global.getterName << "() -> *mut " << global.foreignType << " { ";
        if (global.mutableStorage) {
            builder << "std::ptr::addr_of_mut!(" << moduleName << "::" << global.name << ")";
        } else {
            builder << "std::ptr::addr_of!(" << moduleName << "::" << global.name << ") as *mut " << global.foreignType;
        }
        builder << " }\n";
    }
    return builder.str();
}

std::string buildInlineForeignSource(const ApolloInlineForeignBlock& block) {
    switch (block.language) {
    case ApolloInlineForeignLanguage::C:
        return buildCSource(block);
    case ApolloInlineForeignLanguage::Cpp:
        return buildCppSource(block);
    case ApolloInlineForeignLanguage::Rust:
        return buildRustSource(block);
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
    case ApolloInlineForeignLanguage::Rust:
        return ".rs";
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
    const ApolloInlineForeignBlock& block) {
    const std::string renderedSource = buildInlineForeignSource(block);
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
    case ApolloInlineForeignLanguage::Rust:
        compileSignature = "tool=" + firstDefined(std::getenv("RUSTC_EXE"), std::getenv("APOLLO_RUSTC_EXE"), "rustc")
            + "\nlang=rust"
            + "\npanic=abort"
            + "\nedition=2021"
            + "\ncrate-type=lib";
        break;
    case ApolloInlineForeignLanguage::Unsupported:
        compileSignature = "lang=unsupported";
        break;
    }
    const std::string cacheKey = stableHashHex(sourcePath.string() + "\n" + outputPath.string() + "\n" + block.stableId + "\n"
        + block.languageText + "\n" + renderedSource + "\n" + targetTripleFromEnvironment() + "\n"
        + sysrootFromEnvironment() + "\n" + cxxStdFromEnvironment() + "\n" + optLevelFromEnvironment() + "\n"
        + compileSignature);

    const auto cacheRoot = foreignCacheRoot(outputPath);
    const auto sourceArtifact = cacheRoot / (cacheKey + sourceExtensionFor(block));
    const auto irArtifact = cacheRoot / (cacheKey + ".ll");
    if (std::filesystem::exists(irArtifact)) {
        return irArtifact;
    }

    writeTextFile(sourceArtifact, renderedSource);

    std::vector<std::string> command;
    const std::string targetTriple = targetTripleFromEnvironment();
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
        if (!targetTriple.empty()) {
            command.push_back("--target");
            command.push_back(targetTriple);
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
    const ApolloInlineForeignBlock& block) {
    const auto irArtifact = compileInlineForeignToIr(sourcePath, outputPath, block);

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
        if (module.getFunction(function.name) == nullptr) {
            throw std::runtime_error("linked inline foreign block did not export expected function `" + function.name + "`");
        }
    }
    for (const auto& global : block.globals) {
        if (module.getFunction(global.getterName) == nullptr) {
            throw std::runtime_error("linked inline foreign block did not export expected getter `" + global.getterName + "`");
        }
    }
}

} // namespace

std::vector<ApolloInlineForeignBlock> collectInlineForeignBlocks(compilerv1Parser::ProgramContext* tree) {
    if (tree == nullptr) {
        return {};
    }
    InlineForeignCollector collector;
    collector.visit(tree);
    return collector.takeBlocks();
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
        linkInlineForeignModule(module, sourcePath, outputPath, block);
    }
}
