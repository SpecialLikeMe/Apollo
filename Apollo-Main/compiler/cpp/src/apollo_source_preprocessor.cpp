#include "apollo_source_preprocessor.h"

#include "antlr4-runtime.h"
#include "compilerv1Lexer.h"

#include <cctype>
#include <fstream>
#include <regex>
#include <sstream>
#include <stdexcept>
#include <string>
#include <unordered_map>
#include <unordered_set>
#include <vector>

namespace {

enum class ProcMacroKind {
    Attribute,
    Derive,
};

enum class ProcMacroBodyOpKind {
    CloneTokenStream,
    InsertQuote,
    ReturnVariable,
    ReturnQuote,
};

struct ProcMacroBodyOp {
    ProcMacroBodyOpKind kind = ProcMacroBodyOpKind::CloneTokenStream;
    std::string variableName;
    size_t insertIndex = 0;
    std::string quoteText;
};

struct ProcMacroDefinition {
    ProcMacroKind kind = ProcMacroKind::Attribute;
    std::string name;
    std::vector<std::string> parameterNames;
    std::vector<ProcMacroBodyOp> operations;
};

struct ProcMacroInvocation {
    ProcMacroKind kind = ProcMacroKind::Attribute;
    std::string name;
    std::vector<std::string> arguments;
};

struct LineSyntaxSummary {
    int braceDelta = 0;
    bool hasBrace = false;
    bool hasTopLevelSemicolon = false;
};

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

std::string trimCopy(std::string_view text) {
    const size_t first = text.find_first_not_of(" \t\r\n");
    if (first == std::string_view::npos) {
        return {};
    }
    const size_t last = text.find_last_not_of(" \t\r\n");
    return std::string(text.substr(first, last - first + 1));
}

std::string removeAsciiWhitespace(std::string_view text) {
    std::string compact;
    compact.reserve(text.size());
    for (const unsigned char ch : text) {
        if (std::isspace(ch) == 0) {
            compact.push_back(static_cast<char>(ch));
        }
    }
    return compact;
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

LineSyntaxSummary analyzeLineSyntax(std::string_view line) {
    LineSyntaxSummary summary;
    char quote = '\0';
    bool escaping = false;
    for (size_t index = 0; index < line.size(); ++index) {
        const char ch = line[index];
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
        if (ch == '/' && index + 1 < line.size() && line[index + 1] == '/') {
            break;
        }
        if (ch == '"' || ch == '\'' || ch == '`') {
            quote = ch;
            continue;
        }
        if (ch == '{') {
            ++summary.braceDelta;
            summary.hasBrace = true;
        } else if (ch == '}') {
            --summary.braceDelta;
            summary.hasBrace = true;
        } else if (ch == ';') {
            summary.hasTopLevelSemicolon = true;
        }
    }
    return summary;
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
        if (ch == '"' || ch == '\'' || ch == '`') {
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
    return analyzeLineSyntax(line).braceDelta;
}

bool isProcMacroDefinitionLine(std::string_view line) {
    static const std::regex kPattern(R"(^\s*(attr|derive)\s+vector\s*<\s*token\s*>\s+[A-Za-z_][A-Za-z0-9_]*\s*\()",
        std::regex::ECMAScript);
    return std::regex_search(std::string(line), kPattern);
}

bool parseProcMacroInvocationLine(std::string_view line, ProcMacroInvocation& invocation) {
    static const std::regex kPattern(R"(^\s*#(idio|derive)\s+([A-Za-z_][A-Za-z0-9_]*)\s*(?:\((.*)\))?\s*$)",
        std::regex::ECMAScript);
    std::smatch match;
    const std::string lineText(line);
    if (!std::regex_match(lineText, match, kPattern)) {
        return false;
    }
    invocation.kind = match[1].str() == "idio" ? ProcMacroKind::Attribute : ProcMacroKind::Derive;
    invocation.name = match[2].str();
    invocation.arguments.clear();
    const std::string argsText = match[3].matched ? match[3].str() : std::string();
    if (trimCopy(argsText).empty()) {
        return true;
    }
    invocation.arguments = {};

    std::string current;
    int parenDepth = 0;
    int braceDepth = 0;
    int bracketDepth = 0;
    int angleDepth = 0;
    char quote = '\0';
    bool escaping = false;
    for (size_t index = 0; index < argsText.size(); ++index) {
        const char ch = argsText[index];
        if (quote != '\0') {
            current.push_back(ch);
            if (escaping) {
                escaping = false;
            } else if (ch == '\\') {
                escaping = true;
            } else if (ch == quote) {
                quote = '\0';
            }
            continue;
        }
        if (ch == '"' || ch == '\'' || ch == '`') {
            quote = ch;
            current.push_back(ch);
            continue;
        }
        switch (ch) {
        case '(': ++parenDepth; break;
        case ')': --parenDepth; break;
        case '{': ++braceDepth; break;
        case '}': --braceDepth; break;
        case '[': ++bracketDepth; break;
        case ']': --bracketDepth; break;
        case '<': ++angleDepth; break;
        case '>':
            if (angleDepth > 0) {
                --angleDepth;
            }
            break;
        case ',':
            if (parenDepth == 0 && braceDepth == 0 && bracketDepth == 0 && angleDepth == 0) {
                invocation.arguments.push_back(trimCopy(current));
                current.clear();
                continue;
            }
            break;
        default:
            break;
        }
        current.push_back(ch);
    }
    if (!trimCopy(current).empty()) {
        invocation.arguments.push_back(trimCopy(current));
    }
    return true;
}

std::vector<std::string> splitTopLevelList(std::string_view text) {
    std::vector<std::string> parts;
    std::string current;
    int parenDepth = 0;
    int braceDepth = 0;
    int bracketDepth = 0;
    int angleDepth = 0;
    char quote = '\0';
    bool escaping = false;
    for (size_t index = 0; index < text.size(); ++index) {
        const char ch = text[index];
        if (quote != '\0') {
            current.push_back(ch);
            if (escaping) {
                escaping = false;
            } else if (ch == '\\') {
                escaping = true;
            } else if (ch == quote) {
                quote = '\0';
            }
            continue;
        }
        if (ch == '"' || ch == '\'' || ch == '`') {
            quote = ch;
            current.push_back(ch);
            continue;
        }
        switch (ch) {
        case '(': ++parenDepth; break;
        case ')': --parenDepth; break;
        case '{': ++braceDepth; break;
        case '}': --braceDepth; break;
        case '[': ++bracketDepth; break;
        case ']': --bracketDepth; break;
        case '<': ++angleDepth; break;
        case '>':
            if (angleDepth > 0) {
                --angleDepth;
            }
            break;
        case ',':
            if (parenDepth == 0 && braceDepth == 0 && bracketDepth == 0 && angleDepth == 0) {
                parts.push_back(trimCopy(current));
                current.clear();
                continue;
            }
            break;
        default:
            break;
        }
        current.push_back(ch);
    }
    if (!trimCopy(current).empty()) {
        parts.push_back(trimCopy(current));
    }
    return parts;
}

std::vector<std::string> splitProcMacroStatements(std::string_view body) {
    std::vector<std::string> statements;
    size_t start = 0;
    int parenDepth = 0;
    int braceDepth = 0;
    int bracketDepth = 0;
    char quote = '\0';
    bool escaping = false;
    for (size_t index = 0; index < body.size(); ++index) {
        const char ch = body[index];
        if (quote != '\0') {
            if (escaping) {
                escaping = false;
            } else if (ch == '\\') {
                escaping = true;
            } else if (ch == quote) {
                quote = '\0';
            }
            continue;
        }
        if (ch == '"' || ch == '\'' || ch == '`') {
            quote = ch;
            continue;
        }
        switch (ch) {
        case '(': ++parenDepth; break;
        case ')': --parenDepth; break;
        case '{': ++braceDepth; break;
        case '}': --braceDepth; break;
        case '[': ++bracketDepth; break;
        case ']': --bracketDepth; break;
        case ';':
            if (parenDepth == 0 && braceDepth == 0 && bracketDepth == 0) {
                statements.push_back(trimCopy(body.substr(start, index - start + 1)));
                start = index + 1;
            }
            break;
        default:
            break;
        }
    }
    const std::string tail = trimCopy(body.substr(start));
    if (!tail.empty()) {
        statements.push_back(tail);
    }
    return statements;
}

std::string dedentQuoteText(std::string_view text) {
    std::vector<std::string> lines = splitLinesPreserveEndings(text);
    while (!lines.empty() && trimCopy(lines.front()).empty()) {
        lines.erase(lines.begin());
    }
    while (!lines.empty() && trimCopy(lines.back()).empty()) {
        lines.pop_back();
    }
    if (lines.empty()) {
        return {};
    }

    size_t commonIndent = std::string::npos;
    for (const auto& line : lines) {
        if (trimCopy(line).empty()) {
            continue;
        }
        size_t indent = 0;
        while (indent < line.size() && (line[indent] == ' ' || line[indent] == '\t')) {
            ++indent;
        }
        commonIndent = commonIndent == std::string::npos ? indent : std::min(commonIndent, indent);
    }
    if (commonIndent == std::string::npos) {
        commonIndent = 0;
    }

    std::string normalized;
    for (const auto& line : lines) {
        normalized += line.size() >= commonIndent ? line.substr(commonIndent) : line;
    }
    return trimCopy(normalized);
}

ProcMacroDefinition parseProcMacroDefinition(const std::string& text) {
    static const std::regex kHeaderPattern(
        R"(^\s*(attr|derive)\s+vector\s*<\s*token\s*>\s+([A-Za-z_][A-Za-z0-9_]*)\s*\(([\s\S]*?)\)\s*\{([\s\S]*)\}\s*$)",
        std::regex::ECMAScript);
    std::smatch match;
    if (!std::regex_match(text, match, kHeaderPattern)) {
        throw std::runtime_error("unsupported proc macro declaration surface");
    }

    ProcMacroDefinition definition;
    definition.kind = match[1].str() == "attr" ? ProcMacroKind::Attribute : ProcMacroKind::Derive;
    definition.name = match[2].str();
    const std::vector<std::string> params = splitTopLevelList(match[3].str());
    if (params.empty()) {
        throw std::runtime_error("proc macro `" + definition.name + "` must accept `vector<token> __tokenstream`");
    }
    if (removeAsciiWhitespace(params.front()) != "vector<token>__tokenstream") {
        throw std::runtime_error("proc macro `" + definition.name + "` must declare `vector<token> __tokenstream` as its first parameter");
    }

    for (size_t index = 1; index < params.size(); ++index) {
        std::smatch paramMatch;
        if (!std::regex_search(params[index], paramMatch, std::regex(R"(([A-Za-z_][A-Za-z0-9_]*)\s*$)"))) {
            throw std::runtime_error("proc macro `" + definition.name + "` has an unsupported parameter declaration: " + params[index]);
        }
        definition.parameterNames.push_back(paramMatch[1].str());
    }

    for (const std::string& rawStatement : splitProcMacroStatements(match[4].str())) {
        std::string statement = trimCopy(rawStatement);
        if (statement.empty()) {
            continue;
        }
        if (!statement.empty() && statement.back() == ';') {
            statement.pop_back();
            statement = trimCopy(statement);
        }

        std::smatch bodyMatch;
        if (std::regex_match(statement, bodyMatch,
                std::regex(R"(^(?:const|nconst)\s+vector\s*<\s*token\s*>\s+([A-Za-z_][A-Za-z0-9_]*)\s*=\s*__tokenstream\s*$)"))) {
            ProcMacroBodyOp op;
            op.kind = ProcMacroBodyOpKind::CloneTokenStream;
            op.variableName = bodyMatch[1].str();
            definition.operations.push_back(std::move(op));
            continue;
        }
        if (std::regex_match(statement, bodyMatch,
                std::regex(R"(^([A-Za-z_][A-Za-z0-9_]*)\s*\.\s*insert\s*\(\s*([0-9]+)\s*,\s*quote\s*\{([\s\S]*)\}\s*\)\s*$)", std::regex::ECMAScript))) {
            ProcMacroBodyOp op;
            op.kind = ProcMacroBodyOpKind::InsertQuote;
            op.variableName = bodyMatch[1].str();
            op.insertIndex = static_cast<size_t>(std::stoull(bodyMatch[2].str()));
            op.quoteText = dedentQuoteText(bodyMatch[3].str());
            definition.operations.push_back(std::move(op));
            continue;
        }
        if (std::regex_match(statement, bodyMatch,
                std::regex(R"(^return\s+quote\s*\{([\s\S]*)\}\s*$)", std::regex::ECMAScript))) {
            ProcMacroBodyOp op;
            op.kind = ProcMacroBodyOpKind::ReturnQuote;
            op.quoteText = dedentQuoteText(bodyMatch[1].str());
            definition.operations.push_back(std::move(op));
            continue;
        }
        if (std::regex_match(statement, bodyMatch,
                std::regex(R"(^return\s+([A-Za-z_][A-Za-z0-9_]*|__tokenstream)\s*$)"))) {
            ProcMacroBodyOp op;
            op.kind = ProcMacroBodyOpKind::ReturnVariable;
            op.variableName = bodyMatch[1].str();
            definition.operations.push_back(std::move(op));
            continue;
        }

        throw std::runtime_error("proc macro `" + definition.name + "` uses an unsupported statement: " + statement);
    }

    if (definition.operations.empty()) {
        throw std::runtime_error("proc macro `" + definition.name + "` must contain at least one supported operation");
    }
    return definition;
}

size_t captureTopLevelItemEnd(const std::vector<std::string>& lines, size_t startLine) {
    int braceDepth = 0;
    bool sawBrace = false;
    for (size_t index = startLine; index < lines.size(); ++index) {
        const LineSyntaxSummary summary = analyzeLineSyntax(lines[index]);
        braceDepth += summary.braceDelta;
        sawBrace = sawBrace || summary.hasBrace;
        if (sawBrace) {
            if (braceDepth == 0) {
                return index;
            }
            continue;
        }
        if (summary.hasTopLevelSemicolon) {
            return index;
        }
    }
    throw std::runtime_error("unterminated top-level item while preprocessing proc macros");
}

std::string joinLines(const std::vector<std::string>& lines, size_t startLine, size_t endLine) {
    std::string text;
    for (size_t index = startLine; index <= endLine && index < lines.size(); ++index) {
        text += lines[index];
    }
    return text;
}

std::string collectProcMacroDefinitions(std::string_view text,
    std::unordered_map<std::string, ProcMacroDefinition>& definitions) {
    std::string output;
    const std::vector<std::string> lines = splitLinesPreserveEndings(text);
    int braceDepth = 0;
    for (size_t lineIndex = 0; lineIndex < lines.size(); ++lineIndex) {
        if (braceDepth == 0 && isProcMacroDefinitionLine(lines[lineIndex])) {
            const size_t endLine = captureTopLevelItemEnd(lines, lineIndex);
            ProcMacroDefinition definition = parseProcMacroDefinition(joinLines(lines, lineIndex, endLine));
            definitions.insert_or_assign(definition.name, std::move(definition));
            output.push_back('\n');
            lineIndex = endLine;
            continue;
        }
        output += lines[lineIndex];
        braceDepth += braceDeltaForLine(lines[lineIndex]);
        if (braceDepth < 0) {
            braceDepth = 0;
        }
    }
    return output;
}

std::unordered_map<std::string, std::string> buildProcMacroArgumentMap(
    const ProcMacroDefinition& definition,
    const ProcMacroInvocation& invocation) {
    if (definition.parameterNames.size() != invocation.arguments.size()) {
        throw std::runtime_error("proc macro `" + definition.name + "` expected "
            + std::to_string(definition.parameterNames.size()) + " argument(s) but received "
            + std::to_string(invocation.arguments.size()));
    }
    std::unordered_map<std::string, std::string> arguments;
    for (size_t index = 0; index < definition.parameterNames.size(); ++index) {
        arguments.emplace(definition.parameterNames[index], invocation.arguments[index]);
    }
    return arguments;
}

std::string substituteProcMacroParameters(std::string_view text,
    const std::unordered_map<std::string, std::string>& arguments) {
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
        if (ch == '"' || ch == '\'' || ch == '`') {
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

        size_t end = cursor + 1;
        while (end < text.size() && isIdentifierChar(text[end])) {
            ++end;
        }
        const std::string identifier(text.substr(cursor, end - cursor));
        if (const auto it = arguments.find(identifier); it != arguments.end()) {
            output += it->second;
        } else {
            output += identifier;
        }
        cursor = end;
    }
    return output;
}

std::vector<size_t> collectVisibleTokenOffsets(const std::string& text) {
    antlr4::ANTLRInputStream input(text);
    compilerv1Lexer lexer(&input);
    antlr4::CommonTokenStream tokens(&lexer);
    tokens.fill();

    std::vector<size_t> offsets;
    for (antlr4::Token* token : tokens.getTokens()) {
        if (token == nullptr || token->getType() == antlr4::Token::EOF || token->getChannel() != antlr4::Token::DEFAULT_CHANNEL) {
            continue;
        }
        offsets.push_back(static_cast<size_t>(token->getStartIndex()));
    }
    return offsets;
}

std::string insertProcMacroTextAtTokenIndex(std::string source, size_t index, std::string insertion) {
    const std::vector<size_t> tokenOffsets = collectVisibleTokenOffsets(source);
    if (index > tokenOffsets.size()) {
        throw std::runtime_error("proc macro attempted to insert at token index " + std::to_string(index)
            + " but the tokenstream only has " + std::to_string(tokenOffsets.size()) + " token(s)");
    }

    const size_t offset = index == tokenOffsets.size() ? source.size() : tokenOffsets[index];
    if (!insertion.empty() && offset < source.size() && !std::isspace(static_cast<unsigned char>(insertion.back()))) {
        insertion.push_back('\n');
    }
    source.insert(offset, insertion);
    return source;
}

std::string applyProcMacroInvocation(const ProcMacroDefinition& definition,
    const ProcMacroInvocation& invocation,
    const std::string& targetText) {
    if (definition.kind != invocation.kind) {
        throw std::runtime_error("proc macro `" + definition.name + "` was invoked with the wrong directive kind");
    }

    std::unordered_map<std::string, std::string> variables;
    const auto arguments = buildProcMacroArgumentMap(definition, invocation);
    for (const ProcMacroBodyOp& operation : definition.operations) {
        switch (operation.kind) {
        case ProcMacroBodyOpKind::CloneTokenStream:
            variables[operation.variableName] = targetText;
            break;
        case ProcMacroBodyOpKind::InsertQuote: {
            auto it = variables.find(operation.variableName);
            if (it == variables.end()) {
                throw std::runtime_error("proc macro `" + definition.name + "` inserted into unknown variable `" + operation.variableName + "`");
            }
            it->second = insertProcMacroTextAtTokenIndex(it->second,
                operation.insertIndex,
                substituteProcMacroParameters(operation.quoteText, arguments));
            break;
        }
        case ProcMacroBodyOpKind::ReturnVariable:
            if (operation.variableName == "__tokenstream") {
                return targetText;
            }
            if (const auto it = variables.find(operation.variableName); it != variables.end()) {
                return it->second;
            }
            throw std::runtime_error("proc macro `" + definition.name + "` returned unknown variable `" + operation.variableName + "`");
        case ProcMacroBodyOpKind::ReturnQuote:
            return substituteProcMacroParameters(operation.quoteText, arguments);
        }
    }
    throw std::runtime_error("proc macro `" + definition.name + "` did not produce a return value");
}

std::string expandProcMacroInvocations(std::string_view text,
    const std::unordered_map<std::string, ProcMacroDefinition>& definitions) {
    std::string output;
    const std::vector<std::string> lines = splitLinesPreserveEndings(text);
    int braceDepth = 0;
    for (size_t lineIndex = 0; lineIndex < lines.size(); ++lineIndex) {
        ProcMacroInvocation firstInvocation;
        if (braceDepth == 0 && parseProcMacroInvocationLine(lines[lineIndex], firstInvocation)) {
            std::vector<ProcMacroInvocation> invocations;
            invocations.push_back(std::move(firstInvocation));

            size_t directiveEnd = lineIndex;
            while (directiveEnd + 1 < lines.size()) {
                ProcMacroInvocation nextInvocation;
                if (!parseProcMacroInvocationLine(lines[directiveEnd + 1], nextInvocation)) {
                    break;
                }
                invocations.push_back(std::move(nextInvocation));
                ++directiveEnd;
            }

            size_t itemStart = directiveEnd + 1;
            std::string preservedGap;
            while (itemStart < lines.size() && trimCopy(lines[itemStart]).empty()) {
                preservedGap += lines[itemStart];
                ++itemStart;
            }
            if (itemStart >= lines.size()) {
                throw std::runtime_error("proc macro invocation missing a following declaration");
            }

            const size_t itemEnd = captureTopLevelItemEnd(lines, itemStart);
            std::string transformed = joinLines(lines, itemStart, itemEnd);
            for (const ProcMacroInvocation& invocation : invocations) {
                const auto definitionIt = definitions.find(invocation.name);
                if (definitionIt == definitions.end()) {
                    throw std::runtime_error("unknown proc macro `" + invocation.name + "`");
                }
                const std::string expansion = applyProcMacroInvocation(definitionIt->second, invocation, transformed);
                if (definitionIt->second.kind == ProcMacroKind::Attribute) {
                    transformed = expansion;
                } else {
                    if (!transformed.empty() && !std::isspace(static_cast<unsigned char>(transformed.back()))) {
                        transformed.push_back('\n');
                    }
                    transformed += expansion;
                    if (!transformed.empty() && !std::isspace(static_cast<unsigned char>(transformed.back()))) {
                        transformed.push_back('\n');
                    }
                }
            }

            output += preservedGap;
            output += transformed;
            lineIndex = itemEnd;
            continue;
        }

        output += lines[lineIndex];
        braceDepth += braceDeltaForLine(lines[lineIndex]);
        if (braceDepth < 0) {
            braceDepth = 0;
        }
    }
    return output;
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

        if (text[cursor] == '"' || text[cursor] == '\'' || text[cursor] == '`') {
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

        if (ch == '"' || ch == '\'' || ch == '`') {
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

    std::unordered_map<std::string, ProcMacroDefinition> procMacroDefinitions;
    const std::string withoutProcMacroDecls = collectProcMacroDefinitions(expanded, procMacroDefinitions);
    const std::string procExpanded = expandProcMacroInvocations(withoutProcMacroDecls, procMacroDefinitions);

    std::unordered_set<std::string> namespaceNames;
    const std::string flattened = flattenNamespaceBlocks(procExpanded, namespaceNames);
    return rewriteQualifiedNamespaceAccess(flattened, namespaceNames);
}

std::string preprocessApolloSourceFromFile(const std::filesystem::path& sourcePath) {
    return preprocessApolloSource(sourcePath, readTextFile(sourcePath));
}