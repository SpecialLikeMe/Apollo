#include <cstdlib>
#include <cstdint>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <string>
#include <vector>
using namespace std;

static std::vector<std::string> __apo_syscallQueue;
static int __apo_irReset = []() { std::filesystem::create_directories("output"); std::ofstream out("output/apo_ir.txt", std::ios::trunc); return 0; }();
static void __apo_writeFile(const std::string& path, const std::string& content) { std::filesystem::create_directories("output"); std::ofstream out(path, std::ios::trunc); out << content; }
static int __apo_irExecInit = []() {
    __apo_writeFile("output/apo_ir_exec.ps1", R"APO(
param(
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
        if ($char -eq '\') {
            $escaping = $true
            continue
        }
        [void]$builder.Append($char)
    }
    if ($escaping) { [void]$builder.Append('\') }
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
        if ($char -eq '\') {
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
    if ($escaping) { [void]$builder.Append('\') }
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
    )APO");
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
static int __apo_runPayload(const std::string& payload) {
    size_t split = payload.find('\n');
    if (split == std::string::npos) { std::cerr << "invalid syscall payload" << std::endl; return -1; }
    std::string lang = payload.substr(0, split);
    std::string code = payload.substr(split + 1);
    if (lang == "cpp") { __apo_writeFile("output/apo_async_cpp.cpp", code); return system("g++ output/apo_async_cpp.cpp -o output/apo_async_cpp.exe && .\\output\\apo_async_cpp.exe"); }
    if (lang == "c") { __apo_writeFile("output/apo_async_c.c", code); return system("gcc output/apo_async_c.c -o output/apo_async_c.exe && .\\output\\apo_async_c.exe"); }
    if (lang == "rs") { __apo_writeFile("output/apo_async_rs.rs", code); return system("rustc output/apo_async_rs.rs -o output/apo_async_rs.exe && .\\output\\apo_async_rs.exe"); }
    if (lang == "java") { __apo_writeFile("output/ApoAsyncTask.java", code); return system("javac output/ApoAsyncTask.java -d output && java -cp output ApoAsyncTask"); }
    if (lang == "cs") { __apo_writeFile("output/ApoAsyncTask.cs", code); return system("csc /nologo /out:output\\ApoAsyncTask.exe output\\ApoAsyncTask.cs && .\\output\\ApoAsyncTask.exe"); }
    if (lang == "py") { __apo_writeFile("output/apo_async.py", code); return system("py output/apo_async.py || python output/apo_async.py"); }
    if (lang == "js") { __apo_writeFile("output/apo_async.js", code); return system("node output/apo_async.js"); }
    if (lang == "ts") { __apo_writeFile("output/apo_async.ts", code); return system("tsc output/apo_async.ts --outDir output && node output/apo_async.js"); }
    if (lang == "go") { __apo_writeFile("output/apo_async_go.go", code); return system("go build -o output/apo_async_go.exe output/apo_async_go.go && .\\output\\apo_async_go.exe"); }
    if (lang == "php") { __apo_writeFile("output/apo_async.php", code); return system("php output/apo_async.php"); }
    if (lang == "rb") { __apo_writeFile("output/apo_async.rb", code); return system("ruby output/apo_async.rb"); }
    if (lang == "kt") { __apo_writeFile("output/ApoAsyncTask.kt", code); return system("kotlinc output/ApoAsyncTask.kt -include-runtime -d output/ApoAsyncTask.jar && java -jar output/ApoAsyncTask.jar"); }
    std::cerr << "unsupported syscall language: " << lang << std::endl;
    return -1;
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
    if (fields.size() < 5) { std::cerr << "IR entry not found: " << kind << " " << name << std::endl; return -1; }
    return __apo_runPayload(fields[3] + "\n" + fields[4]);
}
static int async_exec(const std::string& name) {
    return async_exec("", name);
}

int hello() {
    return 0;
}

