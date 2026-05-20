#include "apollo_source_preprocessor.h"

#include <cctype>
#include <fstream>
#include <regex>
#include <sstream>
#include <stdexcept>
#include <string>
#include <unordered_set>
#include <vector>

namespace {

const std::unordered_set<std::string> kBuiltinSysMembers = {
    "print",
    "println",
    "stdin",
    "stdout"
};

std::filesystem::path apolloMainRoot() {
    static const std::filesystem::path root = std::filesystem::path(__FILE__).lexically_normal()
        .parent_path()
        .parent_path()
        .parent_path()
        .parent_path();
    return root;
}

std::filesystem::path stdlibRoot() {
    return (apolloMainRoot() / "include").lexically_normal();
}

std::string readTextFile(const std::filesystem::path& path) {
    std::ifstream input(path, std::ios::binary);
    if (!input) {
        throw std::runtime_error("failed to open source file: " + path.string());
    }
    std::ostringstream builder;
    builder << input.rdbuf();
    return builder.str();
}

std::vector<std::string> splitLinesPreserveEndings(std::string_view text) {
    std::vector<std::string> lines;
    size_t start = 0;
    while (start < text.size()) {
        size_t end = start;
        while (end < text.size() && text[end] != '\n' && text[end] != '\r') {
            ++end;
        }

        size_t lineEnd = end;
        if (lineEnd < text.size()) {
            if (text[lineEnd] == '\r' && lineEnd + 1 < text.size() && text[lineEnd + 1] == '\n') {
                lineEnd += 2;
            } else {
                ++lineEnd;
            }
        }

        lines.emplace_back(text.substr(start, lineEnd - start));
        start = lineEnd;
    }

    if (text.empty()) {
        lines.emplace_back();
    }
    return lines;
}

bool isIdentifierStart(char ch) {
    const unsigned char uch = static_cast<unsigned char>(ch);
    return std::isalpha(uch) != 0 || ch == '_';
}

bool isIdentifierChar(char ch) {
    const unsigned char uch = static_cast<unsigned char>(ch);
    return std::isalnum(uch) != 0 || ch == '_';
}

std::string qualifiedNamespaceSymbol(const std::string& nsName, const std::string& memberName) {
    return nsName + "__" + memberName;
}

bool isBuiltinQualifiedName(const std::string& nsName, const std::string& memberName) {
    return nsName == "sys" && kBuiltinSysMembers.contains(memberName);
}

size_t findMatchingBrace(std::string_view text, size_t openBrace) {
    int depth = 1;
    char quote = '\0';
    bool escaping = false;
    for (size_t index = openBrace + 1; index < text.size(); ++index) {
        const char ch = text[index];
        if (quote != '\0') {
            if (escaping) {
                escaping = false;
                continue;
            }
            if (ch == '\\') {
                escaping = true;
                continue;
            }
            if (ch == quote) {
                quote = '\0';
            }
            continue;
        }
        if (ch == '"' || ch == '`') {
            quote = ch;
            continue;
        }
        if (ch == '{') {
            ++depth;
            continue;
        }
        if (ch == '}') {
            --depth;
            if (depth == 0) {
                return index;
            }
        }
    }
    return std::string_view::npos;
}

int braceDeltaForLine(std::string_view line) {
    int delta = 0;
    char quote = '\0';
    bool escaping = false;
    for (const char ch : line) {
        if (quote != '\0') {
            if (escaping) {
                escaping = false;
                continue;
            }
            if (ch == '\\') {
                escaping = true;
                continue;
            }
            if (ch == quote) {
                quote = '\0';
            }
            continue;
        }
        if (ch == '"' || ch == '`') {
            quote = ch;
            continue;
        }
        if (ch == '{') {
            ++delta;
        } else if (ch == '}') {
            --delta;
        }
    }
    return delta;
}

std::string prefixNamespaceDeclarationLine(const std::string& line, const std::string& nsName) {
    static const std::regex kMacroPattern(R"(^\s*(?:extern \[&(?:dynamic_)?macro\]|__preprocess \[&(?:dynamic_)?macro\])\s+([A-Za-z_][A-Za-z0-9_]*)\s*\()");
    static const std::regex kFunctionPattern(R"(^\s*(?:void|[A-Za-z_][A-Za-z0-9_<> ,:*&]*)\s+([A-Za-z_][A-Za-z0-9_]*)\s*\([^;]*\)\s*(?:\.att\s*\{[^}]*\}\s*)?\{?\s*$)");
    static const std::regex kSrcPattern(R"(^\s*(?:(?:const|nconst)\s+)?src\s+([A-Za-z_][A-Za-z0-9_]*)\b)");
    static const std::regex kTypeDeclPattern(R"(^\s*(?:class|struct|memstruct|itr|schedule)\s+([A-Za-z_][A-Za-z0-9_]*)\b)");
    static const std::regex kOpstructPattern(R"(^\s*stdef\s+opstruct\s+([A-Za-z_][A-Za-z0-9_]*)\b)");
    static const std::regex kGlobalPattern(R"(^\s*(?:global\s+)?(?:(?:const|nconst)\s+)?[A-Za-z_][A-Za-z0-9_<> ,:*&]*\s+([A-Za-z_][A-Za-z0-9_]*)\s*(?:=|;)\s*$)");

    const std::regex* patterns[] = {
        &kMacroPattern,
        &kFunctionPattern,
        &kSrcPattern,
        &kTypeDeclPattern,
        &kOpstructPattern,
        &kGlobalPattern
    };

    for (const auto* pattern : patterns) {
        std::smatch match;
        if (!std::regex_search(line, match, *pattern) || match.size() < 2) {
            continue;
        }
        const std::string originalName = match[1].str();
        std::string rewritten = line;
        rewritten.replace(static_cast<size_t>(match.position(1)), static_cast<size_t>(match.length(1)), qualifiedNamespaceSymbol(nsName, originalName));
        return rewritten;
    }

    return line;
}

std::string prefixNamespaceDeclarations(std::string_view text, const std::string& nsName) {
    std::string result;
    int braceDepth = 0;
    for (const auto& line : splitLinesPreserveEndings(text)) {
        if (braceDepth == 0) {
            result += prefixNamespaceDeclarationLine(line, nsName);
        } else {
            result += line;
        }
        braceDepth += braceDeltaForLine(line);
        if (braceDepth < 0) {
            braceDepth = 0;
        }
    }
    return result;
}

std::string flattenNamespaceBlocks(std::string_view text, std::unordered_set<std::string>& namespaceNames) {
    std::string output;
    size_t cursor = 0;
    char quote = '\0';
    bool escaping = false;

    while (cursor < text.size()) {
        if (quote != '\0') {
            output.push_back(text[cursor]);
            if (escaping) {
                escaping = false;
            } else if (text[cursor] == '\\') {
                escaping = true;
            } else if (text[cursor] == quote) {
                quote = '\0';
            }
            ++cursor;
            continue;
        }

        if (text[cursor] == '"' || text[cursor] == '`') {
            quote = text[cursor];
            output.push_back(text[cursor]);
            ++cursor;
            continue;
        }

        const bool boundaryBefore = cursor == 0 || !isIdentifierChar(text[cursor - 1]);
        if (boundaryBefore && text.substr(cursor, 9) == "namespace") {
            size_t afterKeyword = cursor + 9;
            if (afterKeyword < text.size() && isIdentifierChar(text[afterKeyword])) {
                output.push_back(text[cursor]);
                ++cursor;
                continue;
            }

            while (afterKeyword < text.size() && std::isspace(static_cast<unsigned char>(text[afterKeyword])) != 0) {
                ++afterKeyword;
            }
            if (afterKeyword >= text.size() || !isIdentifierStart(text[afterKeyword])) {
                output.push_back(text[cursor]);
                ++cursor;
                continue;
            }

            size_t nameEnd = afterKeyword + 1;
            while (nameEnd < text.size() && isIdentifierChar(text[nameEnd])) {
                ++nameEnd;
            }
            const std::string namespaceName(text.substr(afterKeyword, nameEnd - afterKeyword));

            size_t openBrace = nameEnd;
            while (openBrace < text.size() && std::isspace(static_cast<unsigned char>(text[openBrace])) != 0) {
                ++openBrace;
            }
            if (openBrace >= text.size() || text[openBrace] != '{') {
                output.push_back(text[cursor]);
                ++cursor;
                continue;
            }

            const size_t closeBrace = findMatchingBrace(text, openBrace);
            if (closeBrace == std::string_view::npos) {
                throw std::runtime_error("unterminated namespace block while preprocessing " + apolloMainRoot().string());
            }

            namespaceNames.insert(namespaceName);
            const std::string nested = flattenNamespaceBlocks(text.substr(openBrace + 1, closeBrace - openBrace - 1), namespaceNames);
            output.push_back('\n');
            output += prefixNamespaceDeclarations(nested, namespaceName);
            output.push_back('\n');
            cursor = closeBrace + 1;
            continue;
        }

        output.push_back(text[cursor]);
        ++cursor;
    }

    return output;
}

std::string rewriteQualifiedNamespaceAccess(std::string_view text, const std::unordered_set<std::string>& namespaceNames) {
    std::string output;
    size_t cursor = 0;
    char quote = '\0';
    bool escaping = false;

    while (cursor < text.size()) {
        const char ch = text[cursor];
        if (quote != '\0') {
            output.push_back(ch);
            if (escaping) {
                escaping = false;
            } else if (ch == '\\') {
                escaping = true;
            } else if (ch == quote) {
                quote = '\0';
            }
            ++cursor;
            continue;
        }

        if (ch == '"' || ch == '`') {
            quote = ch;
            output.push_back(ch);
            ++cursor;
            continue;
        }

        if (!isIdentifierStart(ch) || (cursor > 0 && isIdentifierChar(text[cursor - 1]))) {
            output.push_back(ch);
            ++cursor;
            continue;
        }

        size_t nameEnd = cursor + 1;
        while (nameEnd < text.size() && isIdentifierChar(text[nameEnd])) {
            ++nameEnd;
        }

        const std::string namespaceName(text.substr(cursor, nameEnd - cursor));
        if (!namespaceNames.contains(namespaceName)) {
            output.append(text.substr(cursor, nameEnd - cursor));
            cursor = nameEnd;
            continue;
        }

        size_t memberStart = std::string_view::npos;
        if (nameEnd < text.size() && text[nameEnd] == '.') {
            memberStart = nameEnd + 1;
        } else if (nameEnd + 1 < text.size() && text[nameEnd] == ':' && text[nameEnd + 1] == ':') {
            memberStart = nameEnd + 2;
        }

        if (memberStart == std::string_view::npos || memberStart >= text.size() || !isIdentifierStart(text[memberStart])) {
            output.append(text.substr(cursor, nameEnd - cursor));
            cursor = nameEnd;
            continue;
        }

        size_t memberEnd = memberStart + 1;
        while (memberEnd < text.size() && isIdentifierChar(text[memberEnd])) {
            ++memberEnd;
        }

        const std::string memberName(text.substr(memberStart, memberEnd - memberStart));
        if (isBuiltinQualifiedName(namespaceName, memberName)) {
            output.append(text.substr(cursor, memberEnd - cursor));
            cursor = memberEnd;
            continue;
        }

        output += qualifiedNamespaceSymbol(namespaceName, memberName);
        cursor = memberEnd;
    }

    return output;
}

std::string expandStdImportsRecursive(const std::filesystem::path& sourcePath,
    std::string_view sourceText,
    std::unordered_set<std::string>& importedModules,
    std::unordered_set<std::string>& activeModules) {
    static const std::regex kStdImportPattern(R"(^\s*extern\s+std\s+([A-Za-z_][A-Za-z0-9_]*)\s*;?\s*$)");

    std::string output;
    for (const auto& line : splitLinesPreserveEndings(sourceText)) {
        std::smatch match;
        if (!std::regex_match(line, match, kStdImportPattern) || match.size() < 2) {
            output += line;
            continue;
        }

        const std::string moduleName = match[1].str();
        const std::filesystem::path modulePath = (stdlibRoot() / (moduleName + ".apollo")).lexically_normal();
        if (!std::filesystem::exists(modulePath)) {
            throw std::runtime_error("extern std module `" + moduleName + "` was not found at " + modulePath.string());
        }
        if (!importedModules.insert(moduleName).second) {
            output.push_back('\n');
            continue;
        }
        if (!activeModules.insert(moduleName).second) {
            throw std::runtime_error("cyclic extern std import detected while expanding `" + moduleName + "` for " + sourcePath.string());
        }

        output.push_back('\n');
        output += expandStdImportsRecursive(modulePath, readTextFile(modulePath), importedModules, activeModules);
        output.push_back('\n');
        activeModules.erase(moduleName);
    }
    return output;
}

} // namespace

std::string preprocessApolloSource(const std::filesystem::path& sourcePath, std::string_view sourceText) {
    std::unordered_set<std::string> importedModules;
    std::unordered_set<std::string> activeModules;
    const std::string expanded = expandStdImportsRecursive(sourcePath, sourceText, importedModules, activeModules);

    std::unordered_set<std::string> namespaceNames;
    const std::string flattened = flattenNamespaceBlocks(expanded, namespaceNames);
    return rewriteQualifiedNamespaceAccess(flattened, namespaceNames);
}

std::string preprocessApolloSourceFromFile(const std::filesystem::path& sourcePath) {
    return preprocessApolloSource(sourcePath, readTextFile(sourcePath));
}