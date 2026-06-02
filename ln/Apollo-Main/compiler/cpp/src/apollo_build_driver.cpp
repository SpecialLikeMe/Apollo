#include "apollo_build_driver.h"

#include <algorithm>
#include <cctype>
#include <cstdlib>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <optional>
#ifdef _WIN32
#ifndef WIN32_LEAN_AND_MEAN
#define WIN32_LEAN_AND_MEAN
#endif
#ifndef NOMINMAX
#define NOMINMAX
#endif
#include <process.h>
#include <windows.h>
#ifdef ERROR
#undef ERROR
#endif
#ifdef TRUE
#undef TRUE
#endif
#ifdef FALSE
#undef FALSE
#endif
#ifdef CONST
#undef CONST
#endif
#ifdef IN
#undef IN
#endif
#endif
#include <sstream>
#include <stdexcept>
#include <string>
#include <string_view>
#include <vector>

#include "apollo_driver.h"
#include "apollo_runtime.h"
#include "codegen/optimizer.h"
#include "visitor.h"

namespace {

void initializeConsoleStyling() {
#ifdef _WIN32
    auto enable = [](DWORD handleId) {
        HANDLE handle = GetStdHandle(handleId);
        if (handle == INVALID_HANDLE_VALUE || handle == nullptr) {
            return;
        }
        DWORD mode = 0;
        if (!GetConsoleMode(handle, &mode)) {
            return;
        }
        if ((mode & ENABLE_VIRTUAL_TERMINAL_PROCESSING) == 0) {
            SetConsoleMode(handle, mode | ENABLE_VIRTUAL_TERMINAL_PROCESSING);
        }
    };
    enable(STD_OUTPUT_HANDLE);
    enable(STD_ERROR_HANDLE);
#endif
}

void printErrorLine(const std::string& message) {
    std::cerr << "\x1b[31m" << message << "\x1b[0m\n";
}

class BuildDriverException final : public std::runtime_error {
public:
    using std::runtime_error::runtime_error;
};

struct RuntimeRequirements {
    std::vector<std::string> compileFlags;
    std::vector<std::string> linkFlags;
    std::string fingerprint;
};

struct BuildArtifactCache {
    std::filesystem::path artifactPath;
};

struct BuildEnvironment {
    std::filesystem::path compilerDir;
    std::filesystem::path sourceRoot;
    std::filesystem::path inputFile;
    std::filesystem::path outputDir;
    std::filesystem::path llvmOutput;
    std::filesystem::path objectOutput;
    std::filesystem::path pchHeader;
    std::filesystem::path pchOutput;
    std::string clangExe;
    std::string clangxxExe;
    std::string zigExe;
    std::string llcExe;
    std::string cxxStd;
    std::string optLevel;
    std::string llcOptLevel;
    std::string targetTriple;
    std::string sysroot;
    bool usePch = false;

    static BuildEnvironment load(const std::filesystem::path& inputFile);
};

std::vector<std::string> frontendFlags(const BuildEnvironment& env);
std::vector<std::string> targetFlags(const BuildEnvironment& env);
std::vector<std::string> standardLibraryFlags(const BuildEnvironment& env);
std::vector<std::string> llcFlags(const BuildEnvironment& env);
std::vector<std::string> analyzeFlags(const BuildEnvironment& env);
std::vector<std::string> linkFlags(const BuildEnvironment& env);
std::vector<std::string> standaloneLinkFlags(const BuildEnvironment& env);
std::vector<std::string> pgoFlags(bool compilePhase);
void runCommand(const std::vector<std::string>& command, const std::filesystem::path& workingDirectory);
bool useZigCrossToolchain(const BuildEnvironment& env);
std::vector<std::string> cxxCommandPrefix(const BuildEnvironment& env);

std::string readTextFile(const std::filesystem::path& path) {
    std::ifstream input(path, std::ios::binary);
    if (!input) {
        throw BuildDriverException("failed to read file: " + path.string());
    }
    std::ostringstream buffer;
    buffer << input.rdbuf();
    return buffer.str();
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

bool isBlank(std::string_view value) {
    for (const char ch : value) {
        if (!std::isspace(static_cast<unsigned char>(ch))) {
            return false;
        }
    }
    return true;
}

std::string defaulted(const char* value, const char* defaultValue) {
    return value == nullptr || isBlank(value) ? std::string(defaultValue) : std::string(value);
}

std::string firstDefined(const char* primary, const char* secondary, const char* fallback) {
    if (primary != nullptr && !isBlank(primary)) {
        return primary;
    }
    if (secondary != nullptr && !isBlank(secondary)) {
        return secondary;
    }
    return fallback;
}

bool supportsZigCrossTarget(std::string_view targetTriple) {
    return targetTriple == "x86_64-unknown-linux-gnu"
        || targetTriple == "x86_64-apple-darwin";
}

std::string zigTargetTriple(std::string_view targetTriple) {
    if (targetTriple == "x86_64-unknown-linux-gnu") {
        return "x86_64-linux-gnu";
    }
    if (targetTriple == "x86_64-apple-darwin") {
        return "x86_64-macos-none";
    }
    return std::string(targetTriple);
}

bool useZigCrossToolchain(const BuildEnvironment& env) {
    return !isBlank(env.zigExe) && supportsZigCrossTarget(env.targetTriple);
}

void ensureTargetToolchainConfigured(const BuildEnvironment& env) {
    if (isBlank(env.targetTriple)) {
        return;
    }
    if (supportsZigCrossTarget(env.targetTriple) && !useZigCrossToolchain(env)) {
        throw BuildDriverException(
            "Apollo cross-target '" + env.targetTriple
            + "' requires APOLLO_ZIG_EXE to point at a working zig executable. "
              "Apollo uses `zig c++` for -L and -M builds on Windows.");
    }
}

std::vector<std::string> cxxCommandPrefix(const BuildEnvironment& env) {
    if (useZigCrossToolchain(env)) {
        return {env.zigExe, "c++"};
    }
    return {env.clangxxExe};
}

bool envEnabled(const char* name, bool defaultValue) {
    const char* rawValue = std::getenv(name);
    if (rawValue == nullptr) {
        return defaultValue;
    }
    const std::string value(rawValue);
    return value == "1" || value == "true" || value == "TRUE" || value == "yes" || value == "YES" || value == "on" || value == "ON";
}

std::filesystem::path compilerDirFromEnvironment() {
    const char* rawCompilerDir = std::getenv("APOLLO_COMPILER_DIR");
    if (rawCompilerDir == nullptr || isBlank(rawCompilerDir)) {
        return std::filesystem::current_path().lexically_normal();
    }

    return std::filesystem::absolute(rawCompilerDir).lexically_normal();
}

bool fileExists(const std::filesystem::path& path) {
    std::error_code error;
    return std::filesystem::exists(path, error);
}

bool fileExistsInAny(const std::filesystem::path& dir, std::initializer_list<const char*> names) {
    for (const char* name : names) {
        if (fileExists(dir / name)) {
            return true;
        }
    }
    return false;
}

std::vector<std::filesystem::path> candidateMsysPrefixes() {
    std::vector<std::filesystem::path> prefixes;
    if (const char* raw = std::getenv("APOLLO_MSYS64_ROOT"); raw != nullptr && !isBlank(raw)) {
        prefixes.emplace_back(raw);
    }
#ifdef _WIN32
    prefixes.emplace_back("C:\\msys64");
#endif
    return prefixes;
}

void appendUnique(std::vector<std::string>& target, const std::string& value) {
    if (std::find(target.begin(), target.end(), value) == target.end()) {
        target.push_back(value);
    }
}

std::string joinFlags(const std::vector<std::string>& flags) {
    std::ostringstream builder;
    for (size_t index = 0; index < flags.size(); ++index) {
        if (index > 0) {
            builder << '\n';
        }
        builder << flags[index];
    }
    return builder.str();
}

std::optional<std::pair<std::filesystem::path, std::filesystem::path>> resolveSdlPaths() {
    auto validate = [](const std::filesystem::path& includeDir, const std::filesystem::path& libDir)
        -> std::optional<std::pair<std::filesystem::path, std::filesystem::path>> {
        std::filesystem::path effectiveInclude = includeDir;
        if (!fileExists(includeDir / "SDL.h") && fileExists(includeDir / "SDL2" / "SDL.h")) {
            effectiveInclude = includeDir / "SDL2";
        }
        if (!fileExists(effectiveInclude / "SDL.h")) {
            return std::nullopt;
        }
        if (!fileExistsInAny(libDir, {"libSDL2.a", "libSDL2.dll.a"})
            || !fileExistsInAny(libDir, {"libSDL2_image.a", "libSDL2_image.dll.a"})) {
            return std::nullopt;
        }
        return std::make_pair(effectiveInclude, libDir);
    };

    if (const char* includeRaw = std::getenv("APOLLO_SDL_INCLUDE_DIR"); includeRaw != nullptr && !isBlank(includeRaw)) {
        const char* libRaw = std::getenv("APOLLO_SDL_LIB_DIR");
        if (libRaw != nullptr && !isBlank(libRaw)) {
            if (auto resolved = validate(includeRaw, libRaw)) {
                return resolved;
            }
        }
    }

    for (const auto& prefix : candidateMsysPrefixes()) {
        for (const auto* variant : {"clang64", "mingw64"}) {
            if (auto resolved = validate(prefix / variant / "include", prefix / variant / "lib")) {
                return resolved;
            }
        }
    }

    return std::nullopt;
}

std::string directIrRuntimeSupportSource() {
    return R"APOLLO(#include <cctype>
#include <cstdint>
#include <cstddef>
#include <iostream>
#include <string>
#include <unordered_map>
#include <vector>

#include "runtime_support/apo_autofmt_owner_runtime.hpp"

namespace {

struct ApolloPayloadValue {
    enum class Kind {
        Integer,
        String
    };

    Kind kind = Kind::String;
    long long integerValue = 0;
    std::string stringValue;

    static ApolloPayloadValue integer(long long value) {
        ApolloPayloadValue result;
        result.kind = Kind::Integer;
        result.integerValue = value;
        return result;
    }

    static ApolloPayloadValue string(std::string value) {
        ApolloPayloadValue result;
        result.kind = Kind::String;
        result.stringValue = std::move(value);
        return result;
    }

    std::string render() const {
        return kind == Kind::Integer ? std::to_string(integerValue) : stringValue;
    }
};

std::string trimCopy(const std::string& text) {
    size_t start = 0;
    while (start < text.size() && std::isspace(static_cast<unsigned char>(text[start]))) {
        start++;
    }
    size_t end = text.size();
    while (end > start && std::isspace(static_cast<unsigned char>(text[end - 1]))) {
        end--;
    }
    return text.substr(start, end - start);
}

bool isIdentifier(const std::string& text) {
    if (text.empty()) {
        return false;
    }
    if (!(std::isalpha(static_cast<unsigned char>(text[0])) || text[0] == '_')) {
        return false;
    }
    for (size_t index = 1; index < text.size(); index++) {
        const char ch = text[index];
        if (!(std::isalnum(static_cast<unsigned char>(ch)) || ch == '_')) {
            return false;
        }
    }
    return true;
}

std::vector<std::string> splitTopLevel(const std::string& text, char delimiter) {
    std::vector<std::string> parts;
    std::string current;
    bool inString = false;
    bool escaping = false;
    int parenDepth = 0;
    int braceDepth = 0;
    int bracketDepth = 0;
    for (const char ch : text) {
        if (inString) {
            current.push_back(ch);
            if (escaping) {
                escaping = false;
            } else if (ch == '\\') {
                escaping = true;
            } else if (ch == '"') {
                inString = false;
            }
            continue;
        }
        if (ch == '"') {
            inString = true;
            current.push_back(ch);
            continue;
        }
        if (ch == '(') {
            parenDepth++;
            current.push_back(ch);
            continue;
        }
        if (ch == ')') {
            parenDepth--;
            current.push_back(ch);
            continue;
        }
        if (ch == '{') {
            braceDepth++;
            current.push_back(ch);
            continue;
        }
        if (ch == '}') {
            braceDepth--;
            current.push_back(ch);
            continue;
        }
        if (ch == '[') {
            bracketDepth++;
            current.push_back(ch);
            continue;
        }
        if (ch == ']') {
            bracketDepth--;
            current.push_back(ch);
            continue;
        }
        if (ch == delimiter && parenDepth == 0 && braceDepth == 0 && bracketDepth == 0) {
            parts.push_back(current);
            current.clear();
            continue;
        }
        current.push_back(ch);
    }
    parts.push_back(current);
    return parts;
}

bool hasWrappingParens(const std::string& text) {
    if (text.size() < 2 || text.front() != '(' || text.back() != ')') {
        return false;
    }
    bool inString = false;
    bool escaping = false;
    int depth = 0;
    for (size_t index = 0; index < text.size(); index++) {
        const char ch = text[index];
        if (inString) {
            if (escaping) {
                escaping = false;
            } else if (ch == '\\') {
                escaping = true;
            } else if (ch == '"') {
                inString = false;
            }
            continue;
        }
        if (ch == '"') {
            inString = true;
            continue;
        }
        if (ch == '(') {
            depth++;
        } else if (ch == ')') {
            depth--;
            if (depth == 0 && index + 1 < text.size()) {
                return false;
            }
        }
    }
    return depth == 0;
}

bool isIntegerLiteral(const std::string& text) {
    if (text.empty()) {
        return false;
    }
    size_t index = (text[0] == '-' || text[0] == '+') ? 1 : 0;
    if (index == text.size()) {
        return false;
    }
    for (; index < text.size(); index++) {
        if (!std::isdigit(static_cast<unsigned char>(text[index]))) {
            return false;
        }
    }
    return true;
}

std::string decodeStringLiteral(const std::string& text) {
    std::string decoded;
    bool escaping = false;
    for (size_t index = 1; index + 1 < text.size(); index++) {
        const char ch = text[index];
        if (escaping) {
            if (ch == 'n') decoded.push_back('\n');
            else if (ch == 'r') decoded.push_back('\r');
            else if (ch == 't') decoded.push_back('\t');
            else decoded.push_back(ch);
            escaping = false;
            continue;
        }
        if (ch == '\\') {
            escaping = true;
            continue;
        }
        decoded.push_back(ch);
    }
    if (escaping) {
        decoded.push_back('\\');
    }
    return decoded;
}

bool evalApolloExpr(const std::string& rawExpr,
    std::unordered_map<std::string, ApolloPayloadValue>& bindings,
    ApolloPayloadValue& outValue) {
    std::string expr = trimCopy(rawExpr);
    while (hasWrappingParens(expr)) {
        expr = trimCopy(expr.substr(1, expr.size() - 2));
    }
    while (!expr.empty() && expr.back() == ';') {
        expr.pop_back();
        expr = trimCopy(expr);
    }

    const std::vector<std::string> additiveParts = splitTopLevel(expr, '+');
    if (additiveParts.size() > 1) {
        std::vector<ApolloPayloadValue> values;
        values.reserve(additiveParts.size());
        bool sawString = false;
        long long integerTotal = 0;
        std::string stringTotal;
        for (const std::string& part : additiveParts) {
            ApolloPayloadValue value;
            if (!evalApolloExpr(part, bindings, value)) {
                return false;
            }
            sawString = sawString || value.kind == ApolloPayloadValue::Kind::String;
            values.push_back(value);
        }
        if (sawString) {
            for (const ApolloPayloadValue& value : values) {
                stringTotal += value.render();
            }
            outValue = ApolloPayloadValue::string(stringTotal);
            return true;
        }
        for (const ApolloPayloadValue& value : values) {
            integerTotal += value.integerValue;
        }
        outValue = ApolloPayloadValue::integer(integerTotal);
        return true;
    }

    if (expr == "sys.stdin()") {
        std::string input;
        std::getline(std::cin >> std::ws, input);
        outValue = ApolloPayloadValue::string(input);
        return true;
    }
    const auto tryRenderExpr = [&](const std::string& prefix, bool appendNewline) -> bool {
        const size_t prefixStart = expr.find(prefix);
        if (prefixStart == std::string::npos) {
            return false;
        }
        const size_t close = expr.find_last_of(')');
        if (close == std::string::npos || close <= prefixStart + prefix.size() - 1) {
            return false;
        }
        const std::string inner = expr.substr(prefixStart + prefix.size(), close - (prefixStart + prefix.size()));
        ApolloPayloadValue value;
        if (!evalApolloExpr(inner, bindings, value)) {
            return false;
        }
        std::cout << value.render();
        if (appendNewline) {
            std::cout << std::endl;
        }
        outValue = value;
        return true;
    };
    if (tryRenderExpr("sys.println(", true) || tryRenderExpr("sys.print(", false) || tryRenderExpr("sys.stdout(", false)) {
        return true;
    }
    if (expr.find("sys.") != std::string::npos
        && (expr.find("stdout") != std::string::npos || expr.find("print") != std::string::npos)) {
        const size_t open = expr.find('(');
        const size_t close = expr.find_last_of(')');
        if (open != std::string::npos && close != std::string::npos && close > open + 1) {
            ApolloPayloadValue value;
            if (evalApolloExpr(expr.substr(open + 1, close - open - 1), bindings, value)) {
                std::cout << value.render();
                if (expr.find("println") != std::string::npos) {
                    std::cout << std::endl;
                }
                outValue = value;
                return true;
            }
        }
    }
    if (expr.size() >= 2 && expr.front() == '"' && expr.back() == '"') {
        outValue = ApolloPayloadValue::string(decodeStringLiteral(expr));
        return true;
    }
    if (isIntegerLiteral(expr)) {
        outValue = ApolloPayloadValue::integer(std::stoll(expr));
        return true;
    }

    const auto binding = bindings.find(expr);
    if (binding != bindings.end()) {
        outValue = binding->second;
        return true;
    }
    return false;
}

int executeApolloStatement(const std::string& rawStatement,
    std::unordered_map<std::string, ApolloPayloadValue>& bindings) {
    std::string statement = trimCopy(rawStatement);
    while (!statement.empty() && statement.back() == ';') {
        statement.pop_back();
        statement = trimCopy(statement);
    }
    if (statement.empty()) {
        return 0;
    }

    const auto renderCall = [&](const std::string& prefix, bool appendNewline) -> int {
        const size_t prefixStart = statement.find(prefix);
        if (prefixStart == std::string::npos) {
            return 1;
        }
        const size_t close = statement.find_last_of(')');
        if (close == std::string::npos || close <= prefixStart + prefix.size() - 1) {
            return 1;
        }
        const std::string inner = statement.substr(prefixStart + prefix.size(), close - (prefixStart + prefix.size()));
        ApolloPayloadValue value;
        if (!evalApolloExpr(inner, bindings, value)) {
            std::cerr << "unsupported Apollo payload expression: " << inner << std::endl;
            return -1;
        }
        std::cout << value.render();
        if (appendNewline) {
            std::cout << std::endl;
        }
        return 0;
    };

    if (const int renderStatus = renderCall("sys.println(", true); renderStatus != 1) {
        return renderStatus;
    }
    if (const int renderStatus = renderCall("sys.print(", false); renderStatus != 1) {
        return renderStatus;
    }
    if (const int renderStatus = renderCall("sys.stdout(", false); renderStatus != 1) {
        return renderStatus;
    }
    if (statement.find("sys.") != std::string::npos
        && (statement.find("stdout") != std::string::npos || statement.find("print") != std::string::npos)) {
        const size_t open = statement.find('(');
        const size_t close = statement.find_last_of(')');
        if (open != std::string::npos && close != std::string::npos && close > open + 1) {
            ApolloPayloadValue value;
            const std::string inner = statement.substr(open + 1, close - open - 1);
            if (!evalApolloExpr(inner, bindings, value)) {
                std::cerr << "unsupported Apollo payload expression: " << inner << std::endl;
                return -1;
            }
            std::cout << value.render();
            if (statement.find("println") != std::string::npos) {
                std::cout << std::endl;
            }
            return 0;
        }
    }
    if (statement == "return" || statement.rfind("return ", 0) == 0) {
        return 0;
    }

    const std::vector<std::string> assignmentParts = splitTopLevel(statement, '=');
    if (assignmentParts.size() == 2) {
        const std::string left = trimCopy(assignmentParts[0]);
        const std::string right = assignmentParts[1];
        const std::vector<std::string> leftTokens = splitTopLevel(left, ' ');
        std::string name = left;
        if (leftTokens.size() >= 2) {
            const std::string maybeName = trimCopy(leftTokens.back());
            const std::string maybeType = trimCopy(leftTokens[leftTokens.size() - 2]);
            if (isIdentifier(maybeName)
                && (maybeType == "str" || maybeType == "i32" || maybeType == "i64" || maybeType == "int"
                    || maybeType == "u32" || maybeType == "u64" || maybeType == "const" || maybeType == "nconst")) {
                name = maybeName;
            }
        }
        if (!isIdentifier(name)) {
            std::cerr << "unsupported Apollo payload assignment target: " << left << std::endl;
            return -1;
        }
        ApolloPayloadValue value;
        if (!evalApolloExpr(right, bindings, value)) {
            std::cerr << "unsupported Apollo payload expression: " << right << std::endl;
            return -1;
        }
        bindings[name] = value;
        return 0;
    }

    ApolloPayloadValue ignored;
    if (evalApolloExpr(statement, bindings, ignored)) {
        return 0;
    }

    std::cerr << "unsupported Apollo payload statement: " << statement << std::endl;
    return -1;
}

} // namespace

extern "C" void apollo_gc_init() {
    ::__apollo_gc_init_impl();
}

extern "C" void* apollo_gc_alloc(std::size_t bytes) {
    return ::__apollo_gc_alloc_impl(bytes);
}

extern "C" int apollo_execute_apollo_payload(const char* code) {
    if (code == nullptr) {
        return -1;
    }

    std::unordered_map<std::string, ApolloPayloadValue> bindings;
    for (const std::string& rawStatement : splitTopLevel(code, ';')) {
        const int status = executeApolloStatement(rawStatement, bindings);
        if (status != 0) {
            return status;
        }
    }
    return 0;
}

struct ApolloVectorI32Handle {
    std::vector<std::int32_t> items;
};

struct ApolloVectorStrHandle {
    std::vector<std::string> items;
};

struct ApolloHashStrI32Handle {
    std::unordered_map<std::string, std::int32_t> items;
};

struct ApolloHashI32I32Handle {
    std::unordered_map<std::int32_t, std::int32_t> items;
};

struct ApolloNestedHashHandle {
    std::unordered_map<std::int32_t, std::unordered_map<std::string, std::unordered_map<std::string, std::int32_t>>> items;
};

extern "C" void* apollo_vector_i32_create() {
    return new ApolloVectorI32Handle();
}

extern "C" void* apollo_vector_str_create() {
    return new ApolloVectorStrHandle();
}

extern "C" void apollo_vector_i32_push(void* rawHandle, std::int32_t value) {
    auto* handle = static_cast<ApolloVectorI32Handle*>(rawHandle);
    if (handle == nullptr) {
        return;
    }
    handle->items.push_back(value);
}

extern "C" void apollo_vector_str_push(void* rawHandle, const char* value) {
    auto* handle = static_cast<ApolloVectorStrHandle*>(rawHandle);
    if (handle == nullptr) {
        return;
    }
    handle->items.emplace_back(value != nullptr ? value : "");
}

extern "C" void apollo_vector_str_set(void* rawHandle, std::int32_t index, const char* value) {
    auto* handle = static_cast<ApolloVectorStrHandle*>(rawHandle);
    if (handle == nullptr || index < 0 || static_cast<std::size_t>(index) >= handle->items.size()) {
        return;
    }
    handle->items[static_cast<std::size_t>(index)] = value != nullptr ? value : "";
}

extern "C" const char* apollo_vector_str_get(void* rawHandle, std::int32_t index) {
    auto* handle = static_cast<ApolloVectorStrHandle*>(rawHandle);
    if (handle == nullptr || index < 0 || static_cast<std::size_t>(index) >= handle->items.size()) {
        return "";
    }
    return handle->items[static_cast<std::size_t>(index)].c_str();
}

extern "C" std::int32_t apollo_vector_str_size(void* rawHandle) {
    auto* handle = static_cast<ApolloVectorStrHandle*>(rawHandle);
    return handle != nullptr ? static_cast<std::int32_t>(handle->items.size()) : 0;
}

extern "C" void apollo_vector_i32_set(void* rawHandle, std::int32_t index, std::int32_t value) {
    auto* handle = static_cast<ApolloVectorI32Handle*>(rawHandle);
    if (handle == nullptr || index < 0 || static_cast<std::size_t>(index) >= handle->items.size()) {
        return;
    }
    handle->items[static_cast<std::size_t>(index)] = value;
}

extern "C" std::int32_t apollo_vector_i32_get(void* rawHandle, std::int32_t index) {
    auto* handle = static_cast<ApolloVectorI32Handle*>(rawHandle);
    if (handle == nullptr || index < 0 || static_cast<std::size_t>(index) >= handle->items.size()) {
        return 0;
    }
    return handle->items[static_cast<std::size_t>(index)];
}

extern "C" std::int32_t apollo_vector_i32_size(void* rawHandle) {
    auto* handle = static_cast<ApolloVectorI32Handle*>(rawHandle);
    return handle != nullptr ? static_cast<std::int32_t>(handle->items.size()) : 0;
}

extern "C" void* apollo_hash_str_i32_create() {
    return new ApolloHashStrI32Handle();
}

extern "C" void apollo_hash_str_i32_set(void* rawHandle, const char* key, std::int32_t value) {
    auto* handle = static_cast<ApolloHashStrI32Handle*>(rawHandle);
    if (handle == nullptr || key == nullptr) {
        return;
    }
    handle->items[std::string(key)] = value;
}

extern "C" std::int32_t apollo_hash_str_i32_get(void* rawHandle, const char* key) {
    auto* handle = static_cast<ApolloHashStrI32Handle*>(rawHandle);
    if (handle == nullptr || key == nullptr) {
        return 0;
    }
    const auto found = handle->items.find(std::string(key));
    return found != handle->items.end() ? found->second : 0;
}

extern "C" void* apollo_hash_i32_i32_create() {
    return new ApolloHashI32I32Handle();
}

extern "C" void apollo_hash_i32_i32_set(void* rawHandle, std::int32_t key, std::int32_t value) {
    auto* handle = static_cast<ApolloHashI32I32Handle*>(rawHandle);
    if (handle == nullptr) {
        return;
    }
    handle->items[key] = value;
}

extern "C" std::int32_t apollo_hash_i32_i32_get(void* rawHandle, std::int32_t key) {
    auto* handle = static_cast<ApolloHashI32I32Handle*>(rawHandle);
    if (handle == nullptr) {
        return 0;
    }
    const auto found = handle->items.find(key);
    return found != handle->items.end() ? found->second : 0;
}

extern "C" void* apollo_nested_hash_create() {
    return new ApolloNestedHashHandle();
}

extern "C" void apollo_nested_hash_set(void* rawHandle,
    std::int32_t firstKey,
    const char* secondKey,
    const char* nestedKey,
    std::int32_t value) {
    auto* handle = static_cast<ApolloNestedHashHandle*>(rawHandle);
    if (handle == nullptr || secondKey == nullptr || nestedKey == nullptr) {
        return;
    }
    handle->items[firstKey][std::string(secondKey)][std::string(nestedKey)] = value;
}

extern "C" std::int32_t apollo_nested_hash_get(void* rawHandle,
    std::int32_t firstKey,
    const char* secondKey,
    const char* nestedKey) {
    auto* handle = static_cast<ApolloNestedHashHandle*>(rawHandle);
    if (handle == nullptr || secondKey == nullptr || nestedKey == nullptr) {
        return 0;
    }
    const auto outer = handle->items.find(firstKey);
    if (outer == handle->items.end()) {
        return 0;
    }
    const auto middle = outer->second.find(std::string(secondKey));
    if (middle == outer->second.end()) {
        return 0;
    }
    const auto inner = middle->second.find(std::string(nestedKey));
    return inner != middle->second.end() ? inner->second : 0;
}
)APOLLO";
}

std::filesystem::path buildDirectIrRuntimeSupportObject(const BuildEnvironment& env) {
    const auto sourcePath = (env.outputDir / "apollo_direct_ir_runtime_support.cpp").lexically_normal();
    const auto objectPath = (env.outputDir / "apollo_direct_ir_runtime_support.obj").lexically_normal();
    const auto signaturePath = (env.outputDir / "apollo_direct_ir_runtime_support.sig").lexically_normal();
    const std::string sourceText = directIrRuntimeSupportSource();
    std::ostringstream signature;
    signature << env.clangxxExe << '\n'
              << env.cxxStd << '\n'
              << env.optLevel << '\n'
              << stableHashHex(sourceText) << '\n'
              << joinFlags(targetFlags(env)) << '\n'
              << joinFlags(pgoFlags(true));
    const std::string buildSignature = stableHashHex(signature.str());

    if (!sourcePath.parent_path().empty()) {
        std::filesystem::create_directories(sourcePath.parent_path());
    }

    bool needsSourceWrite = true;
    if (fileExists(sourcePath)) {
        needsSourceWrite = readTextFile(sourcePath) != sourceText;
    }
    if (needsSourceWrite) {
        std::ofstream out(sourcePath, std::ios::binary | std::ios::trunc);
        if (!out) {
            throw BuildDriverException("failed to write direct IR runtime support source: " + sourcePath.string());
        }
        out << sourceText;
    }

    bool needsCompile = !fileExists(objectPath);
    if (!needsCompile) {
        needsCompile = !fileExists(signaturePath) || readTextFile(signaturePath) != buildSignature;
    }
    if (!needsCompile) {
        std::error_code error;
        const auto sourceTime = std::filesystem::last_write_time(sourcePath, error);
        if (error) {
            needsCompile = true;
        } else {
            error.clear();
            const auto objectTime = std::filesystem::last_write_time(objectPath, error);
            needsCompile = error || objectTime < sourceTime;
        }
    }

    if (!needsCompile) {
        return objectPath;
    }

    std::vector<std::string> command = cxxCommandPrefix(env);
    auto flags = targetFlags(env);
    command.insert(command.end(), flags.begin(), flags.end());
    command.push_back("-x");
    command.push_back("c++");
    command.push_back("-std=" + env.cxxStd);
    command.push_back("-O" + env.optLevel);
    auto pgoCompileFlags = pgoFlags(true);
    command.insert(command.end(), pgoCompileFlags.begin(), pgoCompileFlags.end());
    command.push_back("-I.");
    command.push_back("-c");
    command.push_back(sourcePath.string());
    command.push_back("-o");
    command.push_back(objectPath.string());
    runCommand(command, env.compilerDir);
    std::ofstream signatureOut(signaturePath, std::ios::binary | std::ios::trunc);
    if (!signatureOut) {
        throw BuildDriverException("failed to write direct IR runtime support signature: " + signaturePath.string());
    }
    signatureOut << buildSignature;
    return objectPath;
}

RuntimeRequirements directRuntimeRequirements() {
    RuntimeRequirements requirements;
    requirements.fingerprint = "direct-llvm-ir";
    return requirements;
}

bool llvmRuntimeFeatureEnabled(std::string_view llvmIr, std::string_view featureName) {
    const std::string needle = std::string("!\"") + std::string(featureName) + "\", i1 true";
    return llvmIr.find(needle) != std::string_view::npos;
}

bool llvmDefinesStandaloneEntrypoint(std::string_view llvmIr) {
    std::istringstream lines{std::string(llvmIr)};
    std::string line;
    while (std::getline(lines, line)) {
        if (line.rfind("define ", 0) == 0 && line.find("@main(") != std::string::npos) {
            return true;
        }
    }
    return false;
}

void ensureStandaloneEntrypointPresent(const BuildEnvironment& env, const std::filesystem::path& llvmIrPath) {
    const std::string llvmIr = readTextFile(llvmIrPath);
    if (!llvmDefinesStandaloneEntrypoint(llvmIr)) {
        throw BuildDriverException(
            "Apollo source did not define a standalone program entrypoint. "
            "No `main` function was emitted for: " + env.inputFile.string());
    }
}

RuntimeRequirements directRuntimeRequirements(const BuildEnvironment& env, const std::filesystem::path& llvmIrPath) {
    RuntimeRequirements requirements;
    const std::string llvmIr = readTextFile(llvmIrPath);

    const bool usesGuiRuntime = llvmRuntimeFeatureEnabled(llvmIr, "gui");
    const bool usesIrRuntime = llvmRuntimeFeatureEnabled(llvmIr, "ir_runtime");
    const bool usesApolloPayloadRuntime = llvmIr.find("apollo_execute_apollo_payload") != std::string::npos;
    const bool totalProgramGc = llvmRuntimeFeatureEnabled(llvmIr, "total_program_gc");

    std::ostringstream fingerprint;
    fingerprint << "direct-llvm-ir\n"
                << "gui=" << (usesGuiRuntime ? "1" : "0") << '\n'
                << "ir_runtime=" << (usesIrRuntime ? "1" : "0") << '\n'
                << "apollo_payload_runtime=" << (usesApolloPayloadRuntime ? "1" : "0") << '\n'
                << "total_program_gc=" << (totalProgramGc ? "1" : "0");

    if (usesGuiRuntime) {
        const auto sdlPaths = resolveSdlPaths();
        if (!sdlPaths.has_value()) {
            throw BuildDriverException("Apollo GUI runtime was requested by emitted LLVM IR, but SDL2/SDL2_image could not be resolved.");
        }
        appendUnique(requirements.linkFlags, "-L" + sdlPaths->second.string());
        appendUnique(requirements.linkFlags, "-lSDL2");
        appendUnique(requirements.linkFlags, "-lSDL2_image");
    }

    appendUnique(requirements.linkFlags, buildDirectIrRuntimeSupportObject(env).string());

    requirements.fingerprint = fingerprint.str();
    return requirements;
}

bool buildArtifactCacheEnabled() {
    return !envEnabled("APOLLO_DISABLE_INCREMENTAL_CACHE", false)
        && !envEnabled("APOLLO_DISABLE_BUILD_ARTIFACT_CACHE", false);
}

BuildArtifactCache buildArtifactCacheFor(const BuildEnvironment& env,
    std::string_view command,
    const RuntimeRequirements& requirements,
    const std::filesystem::path& outputPath,
    const std::filesystem::path& signatureSourcePath) {
    const std::string commandName(command);
    const std::string sourceHash = stableHashHex(readTextFile(signatureSourcePath));
    std::ostringstream signature;
    signature << ApolloDriver::currentCompilerSignature() << '\n'
              << commandName << '\n'
              << sourceHash << '\n'
              << env.clangExe << '\n'
              << env.clangxxExe << '\n'
              << env.llcExe << '\n'
              << env.cxxStd << '\n'
              << env.optLevel << '\n'
              << env.llcOptLevel << '\n'
              << env.targetTriple << '\n'
              << env.sysroot << '\n'
              << env.usePch << '\n'
              << joinFlags(frontendFlags(env)) << '\n'
              << joinFlags(llcFlags(env)) << '\n'
              << joinFlags(analyzeFlags(env)) << '\n'
              << joinFlags(linkFlags(env)) << '\n'
              << joinFlags(standaloneLinkFlags(env)) << '\n'
              << joinFlags(pgoFlags(true)) << '\n'
              << joinFlags(pgoFlags(false)) << '\n'
              << requirements.fingerprint;
    const std::string cacheKey = stableHashHex(signature.str());
    const auto extension = outputPath.has_extension() ? outputPath.extension() : std::filesystem::path(".bin");
    return { (env.outputDir / "cache" / "artifacts" / (commandName + "-" + cacheKey + extension.string())).lexically_normal() };
}

bool restoreCachedArtifact(const BuildArtifactCache& cache, const std::filesystem::path& outputPath) {
    if (!buildArtifactCacheEnabled() || !fileExists(cache.artifactPath)) {
        return false;
    }
    if (!outputPath.parent_path().empty()) {
        std::filesystem::create_directories(outputPath.parent_path());
    }
    std::filesystem::copy_file(cache.artifactPath, outputPath, std::filesystem::copy_options::overwrite_existing);
    return true;
}

void writeCachedArtifact(const BuildArtifactCache& cache, const std::filesystem::path& outputPath) {
    if (!buildArtifactCacheEnabled() || !fileExists(outputPath)) {
        return;
    }
    if (!cache.artifactPath.parent_path().empty()) {
        std::filesystem::create_directories(cache.artifactPath.parent_path());
    }
    std::filesystem::copy_file(outputPath, cache.artifactPath, std::filesystem::copy_options::overwrite_existing);
}

std::vector<std::string> splitFlags(const char* raw) {
    std::vector<std::string> flags;
    if (raw == nullptr || isBlank(raw)) {
        return flags;
    }

    std::string current;
    bool inQuotes = false;
    for (const char ch : std::string_view(raw)) {
        if (ch == '"') {
            inQuotes = !inQuotes;
            continue;
        }
        if (std::isspace(static_cast<unsigned char>(ch)) && !inQuotes) {
            if (!current.empty()) {
                flags.push_back(current);
                current.clear();
            }
            continue;
        }
        current.push_back(ch);
    }
    if (!current.empty()) {
        flags.push_back(current);
    }
    return flags;
}

std::vector<std::string> targetFlags(const BuildEnvironment& env) {
    std::vector<std::string> flags;
    if (!isBlank(env.targetTriple)) {
        if (useZigCrossToolchain(env)) {
            flags.push_back("-target");
            flags.push_back(zigTargetTriple(env.targetTriple));
        } else {
            flags.push_back("--target=" + env.targetTriple);
        }
    }
    if (!isBlank(env.sysroot)) {
        if (useZigCrossToolchain(env) && env.targetTriple.find("apple") != std::string::npos) {
            flags.push_back("-isysroot");
            flags.push_back(env.sysroot);
        } else {
            flags.push_back("--sysroot=" + env.sysroot);
        }
    }
    return flags;
}

std::vector<std::string> standardLibraryFlags(const BuildEnvironment& env) {
    (void)env;
    return {};
}

std::vector<std::string> pchUseFlags(const std::filesystem::path& pchOutput, bool usePch) {
    if (!usePch) {
        return {};
    }
    return {"-Winvalid-pch", "-include-pch", pchOutput.string()};
}

std::filesystem::path analyzePchOutput(const BuildEnvironment& env) {
    const auto parent = env.pchOutput.parent_path();
    const std::string fileName = env.pchOutput.filename().string();
    const auto extensionIndex = fileName.find_last_of('.');
    const std::string analyzeName = extensionIndex == std::string::npos
        ? fileName + "_asan"
        : fileName.substr(0, extensionIndex) + "_asan" + fileName.substr(extensionIndex);
    return parent.empty() ? (env.compilerDir / analyzeName) : (parent / analyzeName);
}

std::vector<std::string> frontendFlags(const BuildEnvironment& env) {
    std::vector<std::string> flags = targetFlags(env);
    flags.push_back("-x");
    flags.push_back("c++");
    flags.push_back("-std=" + env.cxxStd);
    flags.push_back("-O" + env.optLevel);
    flags.push_back("-S");
    flags.push_back("-emit-llvm");
    auto extra = splitFlags(std::getenv("APOLLO_FRONTEND_EXTRA_FLAGS"));
    flags.insert(flags.end(), extra.begin(), extra.end());
    auto pchFlags = pchUseFlags(env.pchOutput, env.usePch);
    flags.insert(flags.end(), pchFlags.begin(), pchFlags.end());
    return flags;
}

std::vector<std::string> llcFlags(const BuildEnvironment& env) {
    std::vector<std::string> flags = {"-O" + env.llcOptLevel, "-filetype=obj"};
    if (!isBlank(env.targetTriple)) {
        flags.push_back("-mtriple=" + env.targetTriple);
    }
    auto extra = splitFlags(std::getenv("APOLLO_LLC_EXTRA_FLAGS"));
    flags.insert(flags.end(), extra.begin(), extra.end());
    return flags;
}

std::vector<std::string> analyzeFlags(const BuildEnvironment& env) {
    std::vector<std::string> flags = targetFlags(env);
    flags.push_back("-x");
    flags.push_back("c++");
    flags.push_back("-std=" + env.cxxStd);
    flags.push_back("-O0");
    flags.push_back("-g");
    flags.push_back("-fno-omit-frame-pointer");
    flags.push_back("-fsanitize=address");
    auto extra = splitFlags(std::getenv("APOLLO_ANALYZE_EXTRA_FLAGS"));
    flags.insert(flags.end(), extra.begin(), extra.end());
    auto pchFlags = pchUseFlags(analyzePchOutput(env), env.usePch);
    flags.insert(flags.end(), pchFlags.begin(), pchFlags.end());
    return flags;
}

std::vector<std::string> linkFlags(const BuildEnvironment& env) {
    std::vector<std::string> flags = targetFlags(env);
    auto stdlibFlags = standardLibraryFlags(env);
    flags.insert(flags.end(), stdlibFlags.begin(), stdlibFlags.end());
    auto extra = splitFlags(std::getenv("APOLLO_LINK_EXTRA_FLAGS"));
    flags.insert(flags.end(), extra.begin(), extra.end());
    return flags;
}

std::vector<std::string> standaloneLinkFlags(const BuildEnvironment& env) {
    const bool windowsStaticLink = std::getenv("APOLLO_WINDOWS_STATIC_LINK") == nullptr
        ? true
        : envEnabled("APOLLO_WINDOWS_STATIC_LINK", false);
    const auto windowsFlags = [&]() {
        return windowsStaticLink
            ? std::vector<std::string>{"-mconsole", "-static", "-static-libstdc++", "-static-libgcc"}
            : std::vector<std::string>{"-mconsole"};
    };
    if (!isBlank(env.targetTriple)) {
        const std::string triple = env.targetTriple;
        if (triple.find("linux") != std::string::npos) {
            return {"-no-pie", "-static-libstdc++", "-static-libgcc"};
        }
        if (triple.find("apple") != std::string::npos || triple.find("darwin") != std::string::npos) {
            return {};
        }
        if (triple.find("windows") != std::string::npos || triple.find("mingw") != std::string::npos) {
            return windowsFlags();
        }
    }
#ifdef _WIN32
    return windowsFlags();
#elif defined(__linux__)
    return {"-no-pie", "-static-libstdc++", "-static-libgcc"};
#else
    return {};
#endif
}

std::vector<std::string> pgoFlags(bool compilePhase) {
    const char* rawMode = std::getenv("APOLLO_PGO_MODE");
    if (rawMode == nullptr || isBlank(rawMode)) {
        return {};
    }

    std::string mode(rawMode);
    for (char& ch : mode) {
        ch = static_cast<char>(std::tolower(static_cast<unsigned char>(ch)));
    }
    if (mode == "generate") {
        return {"-fprofile-generate"};
    }
    if (mode == "use") {
        const char* rawProfile = std::getenv("APOLLO_PGO_PROFILE");
        if (rawProfile == nullptr || isBlank(rawProfile)) {
            throw BuildDriverException("APOLLO_PGO_MODE=use requires APOLLO_PGO_PROFILE to point at the collected profile data.");
        }
        return {"-fprofile-use=" + std::string(rawProfile), "-fprofile-correction"};
    }
    if (compilePhase) {
        throw BuildDriverException("Unsupported APOLLO_PGO_MODE: " + std::string(rawMode));
    }
    return {};
}

void runCommand(const std::vector<std::string>& command, const std::filesystem::path& workingDirectory) {
    if (command.empty()) {
        throw BuildDriverException("refused to run an empty command");
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
        std::string commandLine;
        for (size_t index = 0; index < command.size(); ++index) {
            if (index > 0) {
                commandLine.push_back(' ');
            }
            commandLine += command[index];
        }
        const int exitCode = std::system(commandLine.c_str());
#endif
        std::filesystem::current_path(previousDirectory);
        if (exitCode != 0) {
            std::string renderedCommand;
            for (size_t index = 0; index < command.size(); ++index) {
                if (index > 0) {
                    renderedCommand.push_back(' ');
                }
                renderedCommand += command[index];
            }
            throw BuildDriverException("Command failed (exit " + std::to_string(exitCode) + "): " + renderedCommand);
        }
    } catch (...) {
        std::filesystem::current_path(previousDirectory);
        throw;
    }
}

void preparePch(const BuildEnvironment& env, bool analyzeMode) {
    if (!env.usePch) {
        return;
    }
    if (!std::filesystem::exists(env.pchHeader)) {
        throw BuildDriverException("Apollo PCH header not found: " + env.pchHeader.string());
    }

    const auto outputPath = analyzeMode ? analyzePchOutput(env) : env.pchOutput;
    if (!outputPath.parent_path().empty()) {
        std::filesystem::create_directories(outputPath.parent_path());
    }

    std::vector<std::string> command = cxxCommandPrefix(env);
    auto flags = targetFlags(env);
    command.insert(command.end(), flags.begin(), flags.end());
    command.push_back("-x");
    command.push_back("c++-header");
    command.push_back("-std=" + env.cxxStd);
    if (analyzeMode) {
        command.push_back("-O0");
        command.push_back("-g");
        command.push_back("-fno-omit-frame-pointer");
        command.push_back("-fsanitize=address");
        auto analyzeExtra = splitFlags(std::getenv("APOLLO_ANALYZE_EXTRA_FLAGS"));
        command.insert(command.end(), analyzeExtra.begin(), analyzeExtra.end());
    } else {
        command.push_back("-O" + env.optLevel);
        auto frontendExtra = splitFlags(std::getenv("APOLLO_FRONTEND_EXTRA_FLAGS"));
        command.insert(command.end(), frontendExtra.begin(), frontendExtra.end());
    }
    auto extra = splitFlags(std::getenv("APOLLO_PCH_EXTRA_FLAGS"));
    command.insert(command.end(), extra.begin(), extra.end());
    command.push_back(env.pchHeader.string());
    command.push_back("-o");
    command.push_back(outputPath.string());
    runCommand(command, env.compilerDir);
}

void emitLl(const BuildEnvironment& env, const std::filesystem::path& outputPath) {
    if (!outputPath.parent_path().empty()) {
        std::filesystem::create_directories(outputPath.parent_path());
    }

    // Workstream B: configure in-process optimizer from env + build env.
    apollo::codegen::OptConfig optCfg;
    if (!env.optLevel.empty() && env.optLevel != "0") {
        optCfg.level = std::min(3, std::max(0, env.optLevel[0] - '0'));
    }
    optCfg.lto = envEnabled("APOLLO_LTO", false);
    const char* pgoMode = std::getenv("APOLLO_PGO_MODE");
    if (pgoMode != nullptr) {
        const std::string mode = pgoMode;
        if (mode == "generate") {
            optCfg.pgo_instrument = true;
        } else if (mode == "use") {
            const char* prof = std::getenv("APOLLO_PGO_PROFILE");
            if (prof != nullptr) optCfg.pgo_use_path = prof;
        }
    }
    if (!env.targetTriple.empty()) {
        optCfg.target_triple = env.targetTriple;
    }
    ApolloIrCodegen::setOptConfig(optCfg);
    const char* bcOut = std::getenv("APOLLO_EMIT_BITCODE");
    ApolloIrCodegen::setBitcodeOutputPath(bcOut ? std::string(bcOut) : std::string{});

    ApolloDriver::compileApollo(env.inputFile.string(), outputPath.string());
}

void emitDirectPrototypeLl(const BuildEnvironment& env, const std::filesystem::path& outputPath) {
    if (!outputPath.parent_path().empty()) {
        std::filesystem::create_directories(outputPath.parent_path());
    }
    ApolloDriver::emitDirectIrPrototype(env.inputFile.string(), outputPath.string());
}

void lowerLlToObject(const BuildEnvironment& env, const std::filesystem::path& llvmInput) {
    std::vector<std::string> llcCommand = {env.llcExe};
    auto llc = llcFlags(env);
    llcCommand.insert(llcCommand.end(), llc.begin(), llc.end());
    llcCommand.push_back(llvmInput.string());
    llcCommand.push_back("-o");
    llcCommand.push_back(env.objectOutput.string());
    runCommand(llcCommand, env.compilerDir);
}

void linkStandaloneObject(const BuildEnvironment& env,
    const std::filesystem::path& objectInput,
    const std::filesystem::path& linkOutput,
    const RuntimeRequirements& requirements) {
    std::vector<std::string> linkCommand = cxxCommandPrefix(env);
    linkCommand.push_back(objectInput.string());
    linkCommand.push_back("-o");
    linkCommand.push_back(linkOutput.string());
    auto standaloneFlags = standaloneLinkFlags(env);
    linkCommand.insert(linkCommand.end(), standaloneFlags.begin(), standaloneFlags.end());
    auto pgoLinkFlags = pgoFlags(false);
    linkCommand.insert(linkCommand.end(), pgoLinkFlags.begin(), pgoLinkFlags.end());
    if (envEnabled("APOLLO_LTO", false)) {
        linkCommand.push_back("-flto=thin");
    }
    auto flags = linkFlags(env);
    linkCommand.insert(linkCommand.end(), flags.begin(), flags.end());
    linkCommand.insert(linkCommand.end(), requirements.linkFlags.begin(), requirements.linkFlags.end());
    runCommand(linkCommand, env.compilerDir);
}

void buildAot(const BuildEnvironment& env, const std::filesystem::path& linkOutput) {
    emitLl(env, env.llvmOutput);
    ensureStandaloneEntrypointPresent(env, env.llvmOutput);
    const RuntimeRequirements requirements = directRuntimeRequirements(env, env.llvmOutput);
    const BuildArtifactCache cache = buildArtifactCacheFor(env, "build-aot", requirements, linkOutput, env.inputFile);
    if (restoreCachedArtifact(cache, linkOutput)) {
        return;
    }
    if (!linkOutput.parent_path().empty()) {
        std::filesystem::create_directories(linkOutput.parent_path());
    }

    lowerLlToObject(env, env.llvmOutput);
    linkStandaloneObject(env, env.objectOutput, linkOutput, requirements);
    writeCachedArtifact(cache, linkOutput);
}

void buildAotDirectPrototype(const BuildEnvironment& env, const std::filesystem::path& linkOutput) {
    const RuntimeRequirements requirements;
    const BuildArtifactCache cache = buildArtifactCacheFor(env, "build-aot-direct-prototype", requirements, linkOutput, env.inputFile);
    if (restoreCachedArtifact(cache, linkOutput)) {
        return;
    }

    emitDirectPrototypeLl(env, env.llvmOutput);
    ensureStandaloneEntrypointPresent(env, env.llvmOutput);
    if (!linkOutput.parent_path().empty()) {
        std::filesystem::create_directories(linkOutput.parent_path());
    }

    lowerLlToObject(env, env.llvmOutput);
    linkStandaloneObject(env, env.objectOutput, linkOutput, requirements);
    writeCachedArtifact(cache, linkOutput);
}

void analyze(const BuildEnvironment& env, const std::filesystem::path& outputPath) {
    emitLl(env, env.llvmOutput);
    const RuntimeRequirements requirements = directRuntimeRequirements(env, env.llvmOutput);
    const BuildArtifactCache cache = buildArtifactCacheFor(env, "analyze", requirements, outputPath, env.inputFile);
    if (restoreCachedArtifact(cache, outputPath)) {
        return;
    }
    if (!outputPath.parent_path().empty()) {
        std::filesystem::create_directories(outputPath.parent_path());
    }

    std::vector<std::string> command = {env.clangxxExe};
    auto flags = targetFlags(env);
    command.insert(command.end(), flags.begin(), flags.end());
    command.push_back("-O0");
    command.push_back("-g");
    command.push_back("-fno-omit-frame-pointer");
    command.push_back("-fsanitize=address");
    command.push_back(env.llvmOutput.string());
    command.push_back("-o");
    command.push_back(outputPath.string());
    auto link = linkFlags(env);
    command.insert(command.end(), link.begin(), link.end());
    command.insert(command.end(), requirements.linkFlags.begin(), requirements.linkFlags.end());
    runCommand(command, env.compilerDir);
    writeCachedArtifact(cache, outputPath);
}

BuildEnvironment BuildEnvironment::load(const std::filesystem::path& rawInputFile) {
    const auto inputFile = std::filesystem::absolute(rawInputFile).lexically_normal();
    const auto compilerDir = compilerDirFromEnvironment();
    const auto outputDir = (compilerDir / "output").lexically_normal();
    std::filesystem::create_directories(outputDir);

    BuildEnvironment env;
    env.compilerDir = compilerDir;
    env.sourceRoot = inputFile.has_parent_path() ? inputFile.parent_path() : compilerDir;
    env.inputFile = inputFile;
    env.outputDir = outputDir;
    env.llvmOutput = (outputDir / "output.ll").lexically_normal();
    env.objectOutput = (outputDir / "output.obj").lexically_normal();
    env.pchHeader = (compilerDir / "runtime_support" / "apollo_pch.hpp").lexically_normal();
    env.pchOutput = (outputDir / "apollo.pch").lexically_normal();
    env.clangExe = firstDefined(std::getenv("CLANG_EXE"), std::getenv("APOLLO_CLANG_EXE"), "clang");
    env.clangxxExe = firstDefined(std::getenv("CLANGXX_EXE"), std::getenv("APOLLO_CLANGXX_EXE"), "clang++");
    env.zigExe = defaulted(std::getenv("APOLLO_ZIG_EXE"), "");
    env.llcExe = firstDefined(std::getenv("LLC_EXE"), std::getenv("APOLLO_LLC_EXE"), "llc");
    env.cxxStd = defaulted(std::getenv("APOLLO_CXX_STD"), "c++20");
    env.optLevel = defaulted(std::getenv("APOLLO_OPT_LEVEL"), "3");
    env.llcOptLevel = defaulted(std::getenv("APOLLO_LLC_OPT_LEVEL"), env.optLevel.c_str());
    env.targetTriple = defaulted(std::getenv("APOLLO_TARGET_TRIPLE"), "");
    env.sysroot = defaulted(std::getenv("APOLLO_SYSROOT"), "");
    ensureTargetToolchainConfigured(env);
    env.usePch = envEnabled("APOLLO_USE_PCH", true) && !useZigCrossToolchain(env);
    return env;
}

} // namespace

int ApolloBuildDriver::run(int argc, char** argv) {
    initializeConsoleStyling();
    try {
        if (argc < 3) {
            throw BuildDriverException("Usage: apollo_build_driver_native <emit-ll|emit-direct-ir-prototype|build-aot|build-aot-direct-prototype|analyze> <input-file> [output-file]");
        }

        const std::string command = argv[1];
        const BuildEnvironment env = BuildEnvironment::load(argv[2]);
        if (command == "emit-ll") {
            const auto outputPath = argc > 3 ? std::filesystem::absolute(argv[3]).lexically_normal() : env.llvmOutput;
            emitLl(env, outputPath);
            return 0;
        }
        if (command == "emit-direct-ir-prototype") {
            const auto outputPath = argc > 3 ? std::filesystem::absolute(argv[3]).lexically_normal() : env.llvmOutput;
            emitDirectPrototypeLl(env, outputPath);
            return 0;
        }
        if (command == "build-aot") {
            const auto outputPath = argc > 3 ? std::filesystem::absolute(argv[3]).lexically_normal() : (env.outputDir / "output.exe");
            buildAot(env, outputPath);
            return 0;
        }
        if (command == "build-aot-direct-prototype") {
            const auto outputPath = argc > 3 ? std::filesystem::absolute(argv[3]).lexically_normal() : (env.outputDir / "output-direct.exe");
            buildAotDirectPrototype(env, outputPath);
            return 0;
        }
        if (command == "analyze") {
            const auto outputPath = argc > 3 ? std::filesystem::absolute(argv[3]).lexically_normal() : (env.outputDir / "output_asan.exe");
            analyze(env, outputPath);
            return 0;
        }
        throw BuildDriverException("Unknown ApolloBuildDriver command: " + command);
    } catch (const BuildDriverException& ex) {
        printErrorLine(ex.what());
        return 1;
    } catch (const ApolloCompilationFailure& ex) {
        printErrorLine(ex.what());
        return 1;
    } catch (const std::exception& ex) {
        printErrorLine("Apollo backend driver crashed: " + std::string(ex.what()));
        return 1;
    }
}
