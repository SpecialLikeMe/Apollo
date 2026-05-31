#ifndef __APO_IR_RUNTIME
#define __APO_IR_RUNTIME

#include "apo_native_interop_runtime.hpp"

#include <iostream>
#include <unordered_map>

static std::vector<std::string> __apo_syscallQueue;

static bool __apo_host_is_windows() {
#ifdef _WIN32
    return true;
#else
    return false;
#endif
}

static std::string __apo_binary_target(const std::string& basePath) {
    return __apo_host_is_windows() ? basePath + ".exe" : basePath;
}

static std::string __apo_binary_command(const std::string& basePath) {
    return __apo_host_is_windows() ? __apo_binary_target(basePath) : "./" + basePath;
}

static const char* __apo_cpp_compiler() {
    return __apo_host_is_windows() ? "g++" : "c++";
}

static const char* __apo_c_compiler() {
    return __apo_host_is_windows() ? "gcc" : "cc";
}

static std::string __apo_python_command(const std::string& scriptPath) {
    return __apo_host_is_windows()
            ? "py " + scriptPath + " || python " + scriptPath
            : "python3 " + scriptPath + " || python " + scriptPath;
}

static std::string __apo_csharp_command(const std::string& outputPath) {
    return __apo_host_is_windows() ? outputPath : "mono " + outputPath + " || " + outputPath;
}

static const char* __apo_ir_exec_powershell_script() {
    return R"APO(param(
    [string]$Kind = '',
    [string]$Name = ''
)
$outputDir = Join-Path (Get-Location) 'output'
$irPath = Join-Path $outputDir 'apo_ir.txt'

function Unescape-Field([string]$Value) {
    $builder = New-Object System.Text.StringBuilder
    $escaping = $false
    foreach ($char in $Value.ToCharArray()) {
        if ($escaping) {
            switch ($char) {
                'n' { [void]$builder.Append("`n") }
                'r' { [void]$builder.Append("`r") }
                't' { [void]$builder.Append("`t") }
                default { [void]$builder.Append($char) }
            }
            $escaping = $false
            continue
        }
        if ($char -eq '\\') {
            $escaping = $true
            continue
        }
        [void]$builder.Append($char)
    }
    if ($escaping) { [void]$builder.Append('\\') }
    return $builder.ToString()
}

function Split-Record([string]$Line) {
    $fields = New-Object System.Collections.Generic.List[string]
    $builder = New-Object System.Text.StringBuilder
    $escaping = $false
    foreach ($char in $Line.ToCharArray()) {
        if ($escaping) {
            switch ($char) {
                'n' { [void]$builder.Append("`n") }
                'r' { [void]$builder.Append("`r") }
                't' { [void]$builder.Append("`t") }
                default { [void]$builder.Append($char) }
            }
            $escaping = $false
            continue
        }
        if ($char -eq '\\') {
            $escaping = $true
            continue
        }
        if ($char -eq "`t") {
            $fields.Add($builder.ToString())
            $builder.Clear() | Out-Null
            continue
        }
        [void]$builder.Append($char)
    }
    if ($escaping) { [void]$builder.Append('\\') }
    $fields.Add($builder.ToString())
    return ,$fields.ToArray()
}

function Find-Record([string]$Kind, [string]$Name) {
    if (-not (Test-Path $irPath)) { return $null }
    $lines = Get-Content -Path $irPath -Encoding UTF8
    for ($index = $lines.Length - 1; $index -ge 0; $index -= 1) {
        $line = $lines[$index]
        if ([string]::IsNullOrEmpty($line)) { continue }
        $fields = Split-Record $line
        if ($fields.Length -lt 5) { continue }
        if ($Kind -and $fields[0] -ne $Kind) { continue }
        if ($fields[1] -ne $Name) { continue }
        return ,$fields
    }
    return $null
}

function Run-Payload([string]$Lang, [string]$Code) {
    New-Item -ItemType Directory -Force -Path $outputDir | Out-Null
    switch ($Lang) {
        'cpp' { Set-Content -Path (Join-Path $outputDir 'apo_async_cpp.cpp') -Value $Code -Encoding UTF8; cmd /c 'g++ output\apo_async_cpp.cpp -o output\apo_async_cpp.exe && .\output\apo_async_cpp.exe'; return $LASTEXITCODE }
        'c' { Set-Content -Path (Join-Path $outputDir 'apo_async_c.c') -Value $Code -Encoding UTF8; cmd /c 'gcc output\apo_async_c.c -o output\apo_async_c.exe && .\output\apo_async_c.exe'; return $LASTEXITCODE }
        'rs' { Set-Content -Path (Join-Path $outputDir 'apo_async_rs.rs') -Value $Code -Encoding UTF8; cmd /c 'rustc output\apo_async_rs.rs -o output\apo_async_rs.exe && .\output\apo_async_rs.exe'; return $LASTEXITCODE }
        'java' { Set-Content -Path (Join-Path $outputDir 'ApoAsyncTask.java') -Value $Code -Encoding UTF8; cmd /c 'javac output\ApoAsyncTask.java -d output && java -cp output ApoAsyncTask'; return $LASTEXITCODE }
        'cs' { Set-Content -Path (Join-Path $outputDir 'ApoAsyncTask.cs') -Value $Code -Encoding UTF8; cmd /c 'csc /nologo /out:output\ApoAsyncTask.exe output\ApoAsyncTask.cs && .\output\ApoAsyncTask.exe'; return $LASTEXITCODE }
        'py' { Set-Content -Path (Join-Path $outputDir 'apo_async.py') -Value $Code -Encoding UTF8; cmd /c 'py output\apo_async.py || python output\apo_async.py'; return $LASTEXITCODE }
        'js' { Set-Content -Path (Join-Path $outputDir 'apo_async.js') -Value $Code -Encoding UTF8; cmd /c 'node output\apo_async.js'; return $LASTEXITCODE }
        'ts' { Set-Content -Path (Join-Path $outputDir 'apo_async.ts') -Value $Code -Encoding UTF8; cmd /c 'tsc output\apo_async.ts --outDir output && node output\apo_async.js'; return $LASTEXITCODE }
        'go' { Set-Content -Path (Join-Path $outputDir 'apo_async_go.go') -Value $Code -Encoding UTF8; cmd /c 'go build -o output\apo_async_go.exe output\apo_async_go.go && .\output\apo_async_go.exe'; return $LASTEXITCODE }
        'php' { Set-Content -Path (Join-Path $outputDir 'apo_async.php') -Value $Code -Encoding UTF8; cmd /c 'php output\apo_async.php'; return $LASTEXITCODE }
        'rb' { Set-Content -Path (Join-Path $outputDir 'apo_async.rb') -Value $Code -Encoding UTF8; cmd /c 'ruby output\apo_async.rb'; return $LASTEXITCODE }
        'kt' { Set-Content -Path (Join-Path $outputDir 'ApoAsyncTask.kt') -Value $Code -Encoding UTF8; cmd /c 'kotlinc output\ApoAsyncTask.kt -include-runtime -d output\ApoAsyncTask.jar && java -jar output\ApoAsyncTask.jar'; return $LASTEXITCODE }
        default { Write-Error "unsupported stored language: $Lang"; return -1 }
    }
}

$record = Find-Record $Kind $Name
if ($null -eq $record) {
    Write-Error "IR entry not found: $Kind $Name"
    exit 1
}
exit (Run-Payload $record[3] $record[4])
)APO";
}

static const char* __apo_ir_exec_shell_script() {
    return R"APO(#!/bin/sh
kind=${1:-}
name=${2:-}
output_dir="output"
ir_path="$output_dir/apo_ir.txt"
tab_char=$(printf '\t')

apo_unescape() {
    printf '%b' "$1"
}

apo_find_record() {
    [ -f "$ir_path" ] || return 1
    record=""
    while IFS= read -r line || [ -n "$line" ]; do
        [ -z "$line" ] && continue
        IFS="$tab_char" read -r field1 field2 field3 field4 field5 <<EOF
$line
EOF
        if [ -n "$kind" ] && [ "$field1" != "$kind" ]; then
            continue
        fi
        if [ "$field2" != "$name" ]; then
            continue
        fi
        record="$line"
    done < "$ir_path"
    [ -n "$record" ] || return 1
    IFS="$tab_char" read -r record_kind record_name record_type record_lang record_payload <<EOF
$record
EOF
    return 0
}

run_payload() {
    lang="$1"
    code="$2"
    mkdir -p "$output_dir"
    case "$lang" in
        cpp)
            printf '%s' "$code" > "$output_dir/apo_async_cpp.cpp"
            c++ "$output_dir/apo_async_cpp.cpp" -o "$output_dir/apo_async_cpp" && "$output_dir/apo_async_cpp"
            ;;
        c)
            printf '%s' "$code" > "$output_dir/apo_async_c.c"
            cc "$output_dir/apo_async_c.c" -o "$output_dir/apo_async_c" && "$output_dir/apo_async_c"
            ;;
        rs)
            printf '%s' "$code" > "$output_dir/apo_async_rs.rs"
            rustc "$output_dir/apo_async_rs.rs" -o "$output_dir/apo_async_rs" && "$output_dir/apo_async_rs"
            ;;
        java)
            printf '%s' "$code" > "$output_dir/ApoAsyncTask.java"
            javac "$output_dir/ApoAsyncTask.java" -d "$output_dir" && java -cp "$output_dir" ApoAsyncTask
            ;;
        cs)
            printf '%s' "$code" > "$output_dir/ApoAsyncTask.cs"
            csc /nologo /out:"$output_dir/ApoAsyncTask.exe" "$output_dir/ApoAsyncTask.cs" && (mono "$output_dir/ApoAsyncTask.exe" 2>/dev/null || "$output_dir/ApoAsyncTask.exe")
            ;;
        py)
            printf '%s' "$code" > "$output_dir/apo_async.py"
            python3 "$output_dir/apo_async.py" || python "$output_dir/apo_async.py"
            ;;
        js)
            printf '%s' "$code" > "$output_dir/apo_async.js"
            node "$output_dir/apo_async.js"
            ;;
        ts)
            printf '%s' "$code" > "$output_dir/apo_async.ts"
            tsc "$output_dir/apo_async.ts" --outDir "$output_dir" && node "$output_dir/apo_async.js"
            ;;
        go)
            printf '%s' "$code" > "$output_dir/apo_async_go.go"
            go build -o "$output_dir/apo_async_go" "$output_dir/apo_async_go.go" && "$output_dir/apo_async_go"
            ;;
        php)
            printf '%s' "$code" > "$output_dir/apo_async.php"
            php "$output_dir/apo_async.php"
            ;;
        rb)
            printf '%s' "$code" > "$output_dir/apo_async.rb"
            ruby "$output_dir/apo_async.rb"
            ;;
        kt)
            printf '%s' "$code" > "$output_dir/ApoAsyncTask.kt"
            kotlinc "$output_dir/ApoAsyncTask.kt" -include-runtime -d "$output_dir/ApoAsyncTask.jar" && java -jar "$output_dir/ApoAsyncTask.jar"
            ;;
        *)
            echo "unsupported stored language: $lang" >&2
            return 1
            ;;
    esac
}

if ! apo_find_record; then
    echo "IR entry not found: $kind $name" >&2
    exit 1
fi

run_payload "$record_lang" "$(apo_unescape "$record_payload")"
exit $?
)APO";
}

static int __apo_irReset = []() {
    std::filesystem::create_directories("output");
    std::ofstream out("output/apo_ir.txt", std::ios::trunc);
    return 0;
}();

static void __apo_writeFile(const std::string& path, const std::string& content) {
    std::filesystem::create_directories("output");
    std::ofstream out(path, std::ios::trunc);
    out << content;
}

static int __apo_irExecInit = []() {
    __apo_writeFile("output/apo_ir_exec.ps1", __apo_ir_exec_powershell_script());
    __apo_writeFile("output/apo_ir_exec.sh", __apo_ir_exec_shell_script());
#ifndef _WIN32
    std::error_code permissionError;
    std::filesystem::permissions("output/apo_ir_exec.sh",
        std::filesystem::perms::owner_exec | std::filesystem::perms::group_exec | std::filesystem::perms::others_exec,
        std::filesystem::perm_options::add,
        permissionError);
#endif
    return 0;
}();

static std::string __apo_escapeIrField(const std::string& value) {
    std::string escaped;
    for (char ch : value) {
        if (ch == '\\') escaped += "\\\\";
        else if (ch == '\t') escaped += "\\t";
        else if (ch == '\n') escaped += "\\n";
        else if (ch == '\r') escaped += "\\r";
        else escaped.push_back(ch);
    }
    return escaped;
}

static std::vector<std::string> __apo_parseIrLine(const std::string& line) {
    std::vector<std::string> fields;
    std::string current;
    bool escaping = false;
    for (char ch : line) {
        if (escaping) {
            if (ch == 'n') current.push_back('\n');
            else if (ch == 'r') current.push_back('\r');
            else if (ch == 't') current.push_back('\t');
            else current.push_back(ch);
            escaping = false;
            continue;
        }
        if (ch == '\\') {
            escaping = true;
            continue;
        }
        if (ch == '\t') {
            fields.push_back(current);
            current.clear();
            continue;
        }
        current.push_back(ch);
    }
    if (escaping) current.push_back('\\');
    fields.push_back(current);
    return fields;
}

static void async_write(const std::string& kind, const std::string& name, const std::string& typeName, const std::string& payload, const std::string& sourceLang) {
    std::filesystem::create_directories("output");
    std::ofstream out("output/apo_ir.txt", std::ios::app);
    out << __apo_escapeIrField(kind) << '\t' << __apo_escapeIrField(name) << '\t' << __apo_escapeIrField(typeName) << '\t' << __apo_escapeIrField(sourceLang) << '\t' << __apo_escapeIrField(payload) << '\n';
}

static void async_write(const std::string& kind, const std::string& name, const std::string& typeName, const std::string& payload) {
    async_write(kind, name, typeName, payload, "apollo");
}

static std::string async_read(const std::string& kind, const std::string& name) {
    std::ifstream in("output/apo_ir.txt");
    if (!in) return "";
    std::vector<std::string> lines;
    std::string line;
    while (std::getline(in, line)) {
        if (!line.empty()) lines.push_back(line);
    }
    for (auto it = lines.rbegin(); it != lines.rend(); ++it) {
        std::vector<std::string> fields = __apo_parseIrLine(*it);
        if (fields.size() < 5) continue;
        if (!kind.empty() && fields[0] != kind) continue;
        if (fields[1] != name) continue;
        return fields[4];
    }
    return "";
}

static std::string async_read(const std::string& name) {
    return async_read("", name);
}

struct __apo_apollo_payload_value {
    enum class Kind {
        Integer,
        String
    };

    Kind kind = Kind::String;
    long long integerValue = 0;
    std::string stringValue;

    static __apo_apollo_payload_value integer(long long value) {
        __apo_apollo_payload_value result;
        result.kind = Kind::Integer;
        result.integerValue = value;
        return result;
    }

    static __apo_apollo_payload_value string(std::string value) {
        __apo_apollo_payload_value result;
        result.kind = Kind::String;
        result.stringValue = std::move(value);
        return result;
    }

    std::string render() const {
        return kind == Kind::Integer ? std::to_string(integerValue) : stringValue;
    }
};

static std::string __apo_trim_copy(const std::string& text) {
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

static bool __apo_is_identifier(const std::string& text) {
    if (text.empty()) {
        return false;
    }
    if (!(std::isalpha(static_cast<unsigned char>(text[0])) || text[0] == '_')) {
        return false;
    }
    for (size_t index = 1; index < text.size(); index++) {
        char ch = text[index];
        if (!(std::isalnum(static_cast<unsigned char>(ch)) || ch == '_')) {
            return false;
        }
    }
    return true;
}

static std::vector<std::string> __apo_split_top_level(const std::string& text, char delimiter) {
    std::vector<std::string> parts;
    std::string current;
    bool inString = false;
    bool escaping = false;
    int parenDepth = 0;
    int braceDepth = 0;
    int bracketDepth = 0;
    for (char ch : text) {
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

static bool __apo_has_wrapping_parens(const std::string& text) {
    if (text.size() < 2 || text.front() != '(' || text.back() != ')') {
        return false;
    }
    bool inString = false;
    bool escaping = false;
    int depth = 0;
    for (size_t index = 0; index < text.size(); index++) {
        char ch = text[index];
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

static bool __apo_is_integer_literal(const std::string& text) {
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

static std::string __apo_decode_string_literal(const std::string& text) {
    std::string decoded;
    bool escaping = false;
    for (size_t index = 1; index + 1 < text.size(); index++) {
        char ch = text[index];
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

static bool __apo_eval_apollo_expr(const std::string& rawExpr,
                                   std::unordered_map<std::string, __apo_apollo_payload_value>& bindings,
                                   __apo_apollo_payload_value& outValue) {
    std::string expr = __apo_trim_copy(rawExpr);
    while (__apo_has_wrapping_parens(expr)) {
        expr = __apo_trim_copy(expr.substr(1, expr.size() - 2));
    }
    while (!expr.empty() && expr.back() == ';') {
        expr.pop_back();
        expr = __apo_trim_copy(expr);
    }
    std::vector<std::string> additiveParts = __apo_split_top_level(expr, '+');
    if (additiveParts.size() > 1) {
        std::vector<__apo_apollo_payload_value> values;
        values.reserve(additiveParts.size());
        bool sawString = false;
        long long integerTotal = 0;
        std::string stringTotal;
        for (const std::string& part : additiveParts) {
            __apo_apollo_payload_value value;
            if (!__apo_eval_apollo_expr(part, bindings, value)) {
                return false;
            }
            sawString = sawString || value.kind == __apo_apollo_payload_value::Kind::String;
            values.push_back(value);
        }
        if (sawString) {
            for (const __apo_apollo_payload_value& value : values) {
                stringTotal += value.render();
            }
            outValue = __apo_apollo_payload_value::string(stringTotal);
            return true;
        }
        for (const __apo_apollo_payload_value& value : values) {
            integerTotal += value.integerValue;
        }
        outValue = __apo_apollo_payload_value::integer(integerTotal);
        return true;
    }
    if (expr == "sys.stdin()") {
        std::string input;
        std::getline(std::cin >> std::ws, input);
        outValue = __apo_apollo_payload_value::string(input);
        return true;
    }
    auto tryRenderExpr = [&](const std::string& prefix, bool appendNewline) -> bool {
        size_t prefixStart = expr.find(prefix);
        if (prefixStart == std::string::npos) {
            return false;
        }
        size_t close = expr.find_last_of(')');
        if (close == std::string::npos || close <= prefixStart + prefix.size() - 1) {
            return false;
        }
        std::string inner = expr.substr(prefixStart + prefix.size(), close - (prefixStart + prefix.size()));
        __apo_apollo_payload_value value;
        if (!__apo_eval_apollo_expr(inner, bindings, value)) {
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
        size_t open = expr.find('(');
        size_t close = expr.find_last_of(')');
        if (open != std::string::npos && close != std::string::npos && close > open + 1) {
            __apo_apollo_payload_value value;
            if (__apo_eval_apollo_expr(expr.substr(open + 1, close - open - 1), bindings, value)) {
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
        outValue = __apo_apollo_payload_value::string(__apo_decode_string_literal(expr));
        return true;
    }
    if (__apo_is_integer_literal(expr)) {
        outValue = __apo_apollo_payload_value::integer(std::stoll(expr));
        return true;
    }
    auto binding = bindings.find(expr);
    if (binding != bindings.end()) {
        outValue = binding->second;
        return true;
    }
    return false;
}

static int __apo_execute_apollo_statement(const std::string& rawStatement,
                                          std::unordered_map<std::string, __apo_apollo_payload_value>& bindings) {
    std::string statement = __apo_trim_copy(rawStatement);
    while (!statement.empty() && statement.back() == ';') {
        statement.pop_back();
        statement = __apo_trim_copy(statement);
    }
    if (statement.empty()) {
        return 0;
    }
    auto renderCall = [&](const std::string& prefix, bool appendNewline) -> int {
        size_t prefixStart = statement.find(prefix);
        if (prefixStart == std::string::npos) {
            return 1;
        }
        size_t close = statement.find_last_of(')');
        if (close == std::string::npos || close <= prefixStart + prefix.size() - 1) {
            return 1;
        }
        std::string inner = statement.substr(prefixStart + prefix.size(), close - (prefixStart + prefix.size()));
        __apo_apollo_payload_value value;
        if (!__apo_eval_apollo_expr(inner, bindings, value)) {
            std::cerr << "unsupported Apollo payload expression: " << inner << std::endl;
            return -1;
        }
        std::cout << value.render();
        if (appendNewline) {
            std::cout << std::endl;
        }
        return 0;
    };

    if (int renderStatus = renderCall("sys.println(", true); renderStatus != 1) {
        return renderStatus;
    }
    if (int renderStatus = renderCall("sys.print(", false); renderStatus != 1) {
        return renderStatus;
    }
    if (int renderStatus = renderCall("sys.stdout(", false); renderStatus != 1) {
        return renderStatus;
    }
    if (statement.find("sys.") != std::string::npos
            && (statement.find("stdout") != std::string::npos || statement.find("print") != std::string::npos)) {
        size_t open = statement.find('(');
        size_t close = statement.find_last_of(')');
        if (open != std::string::npos && close != std::string::npos && close > open + 1) {
            __apo_apollo_payload_value value;
            std::string inner = statement.substr(open + 1, close - open - 1);
            if (!__apo_eval_apollo_expr(inner, bindings, value)) {
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

    std::vector<std::string> assignmentParts = __apo_split_top_level(statement, '=');
    if (assignmentParts.size() == 2) {
        std::string left = __apo_trim_copy(assignmentParts[0]);
        std::string right = assignmentParts[1];
        std::vector<std::string> leftTokens = __apo_split_top_level(left, ' ');
        std::string name = left;
        if (leftTokens.size() >= 2) {
            std::string maybeName = __apo_trim_copy(leftTokens.back());
            std::string maybeType = __apo_trim_copy(leftTokens[leftTokens.size() - 2]);
            if (__apo_is_identifier(maybeName)
                    && (maybeType == "str" || maybeType == "i32" || maybeType == "i64" || maybeType == "int"
                        || maybeType == "u32" || maybeType == "u64" || maybeType == "const" || maybeType == "nconst")) {
                name = maybeName;
            }
        }
        if (!__apo_is_identifier(name)) {
            std::cerr << "unsupported Apollo payload assignment target: " << left << std::endl;
            return -1;
        }
        __apo_apollo_payload_value value;
        if (!__apo_eval_apollo_expr(right, bindings, value)) {
            std::cerr << "unsupported Apollo payload expression: " << right << std::endl;
            return -1;
        }
        bindings[name] = value;
        return 0;
    }

    __apo_apollo_payload_value ignored;
    if (__apo_eval_apollo_expr(statement, bindings, ignored)) {
        return 0;
    }

    std::cerr << "unsupported Apollo payload statement: " << statement << std::endl;
    return -1;
}

static int __apo_execute_apollo_payload(const std::string& code) {
    std::unordered_map<std::string, __apo_apollo_payload_value> bindings;
    for (const std::string& rawStatement : __apo_split_top_level(code, ';')) {
        int status = __apo_execute_apollo_statement(rawStatement, bindings);
        if (status != 0) {
            return status;
        }
    }
    return 0;
}

static int __apo_runPayload(const std::string& payload) {
    size_t split = payload.find('\n');
    if (split == std::string::npos) {
        std::cerr << "invalid syscall payload" << std::endl;
        return -1;
    }
    std::string lang = payload.substr(0, split);
    std::string code = payload.substr(split + 1);
    std::string prepared = __apo_wrap_native_source(lang, code);
    if (lang == "apollo") {
        return __apo_execute_apollo_payload(code);
    }
    if (lang == "cpp") {
        std::string outputBase = "output/apo_async_cpp";
        __apo_writeFile("output/apo_async_cpp.cpp", prepared);
        return system((std::string(__apo_cpp_compiler()) + " output/apo_async_cpp.cpp -o " + __apo_binary_target(outputBase) + " && " + __apo_binary_command(outputBase)).c_str());
    }
    if (lang == "c") {
        std::string outputBase = "output/apo_async_c";
        __apo_writeFile("output/apo_async_c.c", prepared);
        return system((std::string(__apo_c_compiler()) + " output/apo_async_c.c -o " + __apo_binary_target(outputBase) + " && " + __apo_binary_command(outputBase)).c_str());
    }
    if (lang == "rs") {
        std::string outputBase = "output/apo_async_rs";
        __apo_writeFile("output/apo_async_rs.rs", prepared);
        return system((std::string("rustc output/apo_async_rs.rs -o ") + __apo_binary_target(outputBase) + " && " + __apo_binary_command(outputBase)).c_str());
    }
    if (lang == "java") { __apo_writeFile("output/ApoAsyncTask.java", prepared); return system("javac output/ApoAsyncTask.java -d output && java -cp output ApoAsyncTask"); }
    if (lang == "cs") {
        std::string outputPath = "output/ApoAsyncTask.exe";
        __apo_writeFile("output/ApoAsyncTask.cs", prepared);
        return system((std::string("csc /nologo /out:") + outputPath + " output/ApoAsyncTask.cs && " + __apo_csharp_command(outputPath)).c_str());
    }
    if (lang == "py") { __apo_writeFile("output/apo_async.py", prepared); return system(__apo_python_command("output/apo_async.py").c_str()); }
    if (lang == "js") { __apo_writeFile("output/apo_async.js", prepared); return system("node output/apo_async.js"); }
    if (lang == "ts") { __apo_writeFile("output/apo_async.ts", prepared); return system("tsc output/apo_async.ts --outDir output && node output/apo_async.js"); }
    if (lang == "go") {
        std::string outputBase = "output/apo_async_go";
        __apo_writeFile("output/apo_async_go.go", prepared);
        return system((std::string("go build -o ") + __apo_binary_target(outputBase) + " output/apo_async_go.go && " + __apo_binary_command(outputBase)).c_str());
    }
    if (lang == "php") { __apo_writeFile("output/apo_async.php", prepared); return system("php output/apo_async.php"); }
    if (lang == "rb") { __apo_writeFile("output/apo_async.rb", prepared); return system("ruby output/apo_async.rb"); }
    if (lang == "kt") { __apo_writeFile("output/ApoAsyncTask.kt", prepared); return system("kotlinc output/ApoAsyncTask.kt -include-runtime -d output/ApoAsyncTask.jar && java -jar output/ApoAsyncTask.jar"); }
    std::cerr << "unsupported syscall language: " << lang << std::endl;
    return -1;
}

static void __apo_queuePayload(const std::string& payload) {
    __apo_syscallQueue.push_back(payload);
}

static int __apo_executePayload(const std::string& payload) {
    return __apo_runPayload(payload);
}

static int __apo_executeQueuedPayload(bool drainAll) {
    if (__apo_syscallQueue.empty()) {
        std::cerr << "syscall queue empty" << std::endl;
        return -1;
    }
    if (drainAll) {
        while (!__apo_syscallQueue.empty()) {
            __apo_runPayload(__apo_syscallQueue.back());
            __apo_syscallQueue.pop_back();
        }
        return 0;
    }
    std::string payload = __apo_syscallQueue.back();
    __apo_syscallQueue.pop_back();
    return __apo_runPayload(payload);
}

static std::vector<std::string> __apo_findIrRecord(const std::string& kind, const std::string& name) {
    std::ifstream in("output/apo_ir.txt");
    if (!in) return {};
    std::vector<std::string> lines;
    std::string line;
    while (std::getline(in, line)) {
        if (!line.empty()) lines.push_back(line);
    }
    for (auto it = lines.rbegin(); it != lines.rend(); ++it) {
        std::vector<std::string> fields = __apo_parseIrLine(*it);
        if (fields.size() < 5) continue;
        if (!kind.empty() && fields[0] != kind) continue;
        if (fields[1] != name) continue;
        return fields;
    }
    return {};
}

static int async_exec(const std::string& kind, const std::string& name) {
    std::vector<std::string> fields = __apo_findIrRecord(kind, name);
    if (fields.size() < 5) {
        std::cerr << "IR entry not found: " << kind << " " << name << std::endl;
        return -1;
    }
    return __apo_runPayload(fields[3] + "\n" + fields[4]);
}

static int async_exec(const std::string& name) {
    return async_exec("", name);
}

#endif