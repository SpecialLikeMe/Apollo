#include <cctype>
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

extern "C" void apollo_vector_i32_push(void* rawHandle, std::int32_t value) {
    auto* handle = static_cast<ApolloVectorI32Handle*>(rawHandle);
    if (handle == nullptr) {
        return;
    }
    handle->items.push_back(value);
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
