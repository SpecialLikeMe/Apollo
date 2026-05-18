#include <cstdlib>
#include <chrono>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <optional>
#include <regex>
#include <set>
#include <string>
#include <thread>
#include <vector>

#include "apollo_driver.h"
#include "apollo_inline_foreign.h"
#include "apollo_runtime.h"

namespace {

std::string readTextFile(const std::filesystem::path& path) {
    std::ifstream input(path, std::ios::binary);
    if (!input) {
        throw std::runtime_error("failed to open file: " + path.string());
    }
    return std::string(std::istreambuf_iterator<char>(input), std::istreambuf_iterator<char>());
}

void writeTextFile(const std::filesystem::path& path, const std::string& content) {
    std::ofstream output(path, std::ios::binary | std::ios::trunc);
    if (!output) {
        throw std::runtime_error("failed to write file: " + path.string());
    }
    output << content;
}

#ifdef _WIN32
bool setEnvironmentValue(const std::string& name, const std::string& value) {
    return _putenv_s(name.c_str(), value.c_str()) == 0;
}

bool clearEnvironmentValue(const std::string& name) {
    return _putenv_s(name.c_str(), "") == 0;
}
#else
bool setEnvironmentValue(const std::string& name, const std::string& value) {
    return setenv(name.c_str(), value.c_str(), 1) == 0;
}

bool clearEnvironmentValue(const std::string& name) {
    return unsetenv(name.c_str()) == 0;
}
#endif

class ScopedEnvironmentOverride {
public:
    ScopedEnvironmentOverride(std::string name, std::string value)
        : name_(std::move(name)) {
        if (const char* existing = std::getenv(name_.c_str())) {
            previousValue_ = std::string(existing);
        }
        if (!setEnvironmentValue(name_, value)) {
            throw std::runtime_error("failed to set environment variable: " + name_);
        }
    }

    ~ScopedEnvironmentOverride() {
        if (previousValue_.has_value()) {
            setEnvironmentValue(name_, *previousValue_);
        } else {
            clearEnvironmentValue(name_);
        }
    }

    ScopedEnvironmentOverride(const ScopedEnvironmentOverride&) = delete;
    ScopedEnvironmentOverride& operator=(const ScopedEnvironmentOverride&) = delete;

private:
    std::string name_;
    std::optional<std::string> previousValue_;
};

std::set<std::string> collectMatches(const std::string& text, const std::regex& pattern) {
    std::set<std::string> matches;
    for (auto it = std::sregex_iterator(text.begin(), text.end(), pattern); it != std::sregex_iterator(); ++it) {
        matches.insert(it->str());
    }
    return matches;
}

bool require(bool condition, const std::string& message) {
    if (condition) {
        return true;
    }
    std::cerr << message << '\n';
    return false;
}

bool verifyInlineForeignLanguageCollection() {
    const std::string sourcePath = "tests/manual/inline_foreign_language_collection.apollo";
    const std::string program =
        "@unsafe {\n"
        "    inline::objc {\n"
        "        int objc_value = 7;\n"
        "        int objc_read() { return objc_value; }\n"
        "    }\n"
        "}\n"
        "@unsafe {\n"
        "    inl::objcpp {\n"
        "        int objcpp_value = 8;\n"
        "        int objcpp_read() { return objcpp_value; }\n"
        "    }\n"
        "}\n"
        "@unsafe {\n"
        "    inline::swift {\n"
        "        var swift_value: Int32 = 9;\n"
        "        func swift_read() -> Int32 { return swift_value }\n"
        "    }\n"
        "}\n"
        "@unsafe {\n"
        "    inline::zig {\n"
        "        var zig_value: i32 = 10;\n"
        "        fn zig_read() i32 { return zig_value; }\n"
        "    }\n"
        "}\n"
        "@unsafe {\n"
        "    inline::python {\n"
        "        py_value: i32 = 11;\n"
        "        def py_read() -> i32:\n"
        "            return py_value\n"
        "    }\n"
        "}\n"
        "@unsafe {\n"
        "    inline::go {\n"
        "        var go_value int32 = 12;\n"
        "        func go_read() int32 { return go_value }\n"
        "    }\n"
        "}\n"
        "@unsafe {\n"
        "    inline::typescript {\n"
        "        let ts_value: i32 = 13;\n"
        "        function ts_read(): i32 { return ts_value; }\n"
        "    }\n"
        "}\n"
        "int main() {\n"
        "    @unsafe {\n"
        "        inl::swift {\n"
        "            swift_value = swift_read() + 1;\n"
        "        }\n"
        "    }\n"
        "    return 0;\n"
        "}\n";

    ApolloCompilerRuntimeCycle cycle = ApolloCompilerRuntimeCycle::create(sourcePath, program);
    const auto blocks = collectInlineForeignBlocks(cycle.tree());
    if (!require(blocks.size() == 8, "expected all inline foreign language blocks to be collected")) {
        return false;
    }

    const std::vector<ApolloInlineForeignLanguage> expectedLanguages = {
        ApolloInlineForeignLanguage::ObjectiveC,
        ApolloInlineForeignLanguage::ObjectiveCpp,
        ApolloInlineForeignLanguage::Swift,
        ApolloInlineForeignLanguage::Zig,
        ApolloInlineForeignLanguage::Python,
        ApolloInlineForeignLanguage::Go,
        ApolloInlineForeignLanguage::TypeScript,
        ApolloInlineForeignLanguage::Swift,
    };
    for (std::size_t index = 0; index < expectedLanguages.size(); ++index) {
        if (!require(blocks[index].language == expectedLanguages[index], "inline foreign language normalization changed")) {
            return false;
        }
    }

    if (!require(blocks[0].functions.size() == 1 && blocks[0].globals.size() == 1, "objc block should expose one function and one global")) {
        return false;
    }
    if (!require(blocks[1].functions.size() == 1 && blocks[1].globals.size() == 1, "objective-c++ block should expose one function and one global")) {
        return false;
    }
    if (!require(blocks[2].functions.size() == 1 && blocks[2].globals.size() == 1 && blocks[2].functions.front().apolloType == "i32", "swift block should collect typed exports")) {
        return false;
    }
    if (!require(blocks[3].functions.size() == 1 && blocks[3].globals.size() == 1 && blocks[3].functions.front().apolloType == "i32", "zig block should collect typed exports")) {
        return false;
    }
    if (!require(blocks[4].functions.size() == 1 && blocks[4].globals.size() == 1 && blocks[4].functions.front().apolloType == "i32", "python block should collect typed exports")) {
        return false;
    }
    if (!require(blocks[5].functions.size() == 1 && blocks[5].globals.size() == 1 && blocks[5].functions.front().apolloType == "i32", "go block should collect typed exports")) {
        return false;
    }
    if (!require(blocks[6].functions.size() == 1 && blocks[6].globals.size() == 1 && blocks[6].functions.front().apolloType == "i32", "typescript block should collect typed exports")) {
        return false;
    }
    if (!require(blocks[7].executesAtRuntime, "statement-position inline foreign blocks should execute at runtime")) {
        return false;
    }
    return true;
}

bool verifyInlineForeignAllLanguagesCompileSurface() {
        const auto workspace = std::filesystem::temp_directory_path() / std::filesystem::path("apollo-inline-foreign-all-languages-native");
        std::error_code ec;
        std::filesystem::remove_all(workspace, ec);
        std::filesystem::create_directories(workspace);

        const auto source = workspace / "all_languages.apollo";
        const auto output = workspace / "all_languages.ll";
#ifdef _WIN32
        const auto fakeTool = workspace / "fake_inline_tool.cmd";
        const auto fakeToolScript = workspace / "fake_inline_tool.ps1";

        writeTextFile(fakeToolScript, R"TOOL($Arguments = $args

$src = ''
$out = ''
for ($index = 0; $index -lt $Arguments.Length; ++$index) {
    $argument = $Arguments[$index]
    if ($argument -eq '-o' -and $index + 1 -lt $Arguments.Length) {
        $out = $Arguments[$index + 1]
        ++$index
        continue
    }
    if ($argument.StartsWith('-femit-llvm-ir=')) {
        $out = $argument.Substring(15)
        continue
    }
    switch ([System.IO.Path]::GetExtension($argument).ToLowerInvariant()) {
        '.rs' { $src = $argument; continue }
        '.swift' { $src = $argument; continue }
        '.zig' { $src = $argument; continue }
        '.py' { $src = $argument; continue }
        '.go' { $src = $argument; continue }
        '.ts' { $src = $argument; continue }
    }
}

if ([string]::IsNullOrWhiteSpace($src) -or [string]::IsNullOrWhiteSpace($out)) {
    throw 'fake inline tool missing source or output'
}

$text = Get-Content -LiteralPath $src -Raw
$getterNames = [System.Collections.Generic.List[string]]::new()
switch ([System.IO.Path]::GetExtension($src).ToLowerInvariant()) {
    '.rs' {
        if ($text -notmatch '#\[no_mangle\]') { throw 'expected #[no_mangle] marker' }
        foreach ($regexMatch in [regex]::Matches($text, 'pub extern "C-unwind" fn (__apollo_inline_get_[A-Za-z0-9_]+)')) {
            $getterNames.Add($regexMatch.Groups[1].Value)
        }
    }
    '.swift' {
        if ($text -notmatch '@_cdecl\("') { throw 'expected @_cdecl marker' }
        foreach ($regexMatch in [regex]::Matches($text, '@_cdecl\("(__apollo_inline_get_[A-Za-z0-9_]+)"\)')) {
            $getterNames.Add($regexMatch.Groups[1].Value)
        }
    }
    '.zig' {
        if ($text -notmatch 'export fn ') { throw 'expected export fn marker' }
        foreach ($regexMatch in [regex]::Matches($text, 'export fn (__apollo_inline_get_[A-Za-z0-9_]+)')) {
            $getterNames.Add($regexMatch.Groups[1].Value)
        }
    }
    '.py' {
        if ($text -notmatch '@ccallable') { throw 'expected @ccallable marker' }
        foreach ($regexMatch in [regex]::Matches($text, '@ccallable\s*\r?\n\s*def (__apollo_inline_get_[A-Za-z0-9_]+)\(', [System.Text.RegularExpressions.RegexOptions]::Singleline)) {
            $getterNames.Add($regexMatch.Groups[1].Value)
        }
    }
    '.go' {
        if ($text -notmatch '//export ') { throw 'expected //export marker' }
        foreach ($regexMatch in [regex]::Matches($text, '//export (__apollo_inline_get_[A-Za-z0-9_]+)')) {
            $getterNames.Add($regexMatch.Groups[1].Value)
        }
    }
    '.ts' {
        if ($text -notmatch 'export function ') { throw 'expected export function marker' }
        foreach ($regexMatch in [regex]::Matches($text, 'export function (__apollo_inline_get_[A-Za-z0-9_]+)')) {
            $getterNames.Add($regexMatch.Groups[1].Value)
        }
    }
    default {
        throw "unsupported fake inline source: $src"
    }
}

$tmpC = if ($out.EndsWith('.ll')) { $out.Substring(0, $out.Length - 3) + '.fake.c' } else { $out + '.fake.c' }
$lines = [System.Collections.Generic.List[string]]::new()
$lines.Add('#include <stdint.h>')
$counter = 1
foreach ($name in ($getterNames | Sort-Object -Unique)) {
    if ([string]::IsNullOrWhiteSpace($name)) {
        continue
    }
    $lines.Add("static int ${name}_storage = $counter;")
    $lines.Add("int* ${name}(void) { return &${name}_storage; }")
    ++$counter
}
Set-Content -LiteralPath $tmpC -Value ($lines -join "`n")

$clang = if ($env:CLANG_EXE) { $env:CLANG_EXE } elseif ($env:APOLLO_CLANG_EXE) { $env:APOLLO_CLANG_EXE } else { 'clang' }
& $clang -S -emit-llvm $tmpC -o $out
if ($LASTEXITCODE -ne 0) {
    exit $LASTEXITCODE
}
)TOOL");
        writeTextFile(fakeTool, "@echo off\r\npowershell -NoProfile -ExecutionPolicy Bypass -File \"%~dp0fake_inline_tool.ps1\" %*\r\n");
#else
        const auto fakeTool = workspace / "fake_inline_tool.sh";

        writeTextFile(fakeTool, R"TOOL(#!/usr/bin/env bash
set -euo pipefail

src=""
out=""
while [[ $# -gt 0 ]]; do
    case "$1" in
        -o)
            out="$2"
            shift 2
            ;;
        -femit-llvm-ir=*)
            out="${1#-femit-llvm-ir=}"
            shift
            ;;
        *.rs|*.swift|*.zig|*.py|*.go|*.ts)
            src="$1"
            shift
            ;;
        *)
            shift
            ;;
    esac
done

if [[ -z "$src" || -z "$out" ]]; then
    echo "fake inline tool missing source or output" >&2
    exit 1
fi

getters=""
case "$src" in
    *.rs)
        grep -Fq '#[no_mangle]' "$src"
        getters=$({ grep -oE 'pub extern "C-unwind" fn __apollo_inline_get_[A-Za-z0-9_]+' "$src" | awk '{print $5}' | sort -u; } || true)
        ;;
    *.swift)
        grep -Fq '@_cdecl("' "$src"
        getters=$({ grep -oE '@_cdecl\("__apollo_inline_get_[A-Za-z0-9_]+"\)' "$src" | sed -E 's/@_cdecl\("([^"]+)"\)/\1/' | sort -u; } || true)
        ;;
    *.zig)
        grep -Fq 'export fn ' "$src"
        getters=$({ grep -oE 'export fn __apollo_inline_get_[A-Za-z0-9_]+' "$src" | awk '{print $3}' | sort -u; } || true)
        ;;
    *.py)
        grep -Fq '@ccallable' "$src"
        getters=$(awk '/@ccallable/{exporting=1; next} exporting && /def __apollo_inline_get_[A-Za-z0-9_]+\(/ { sub(/^.*def /, ""); sub(/\(.*/, ""); print; exporting=0 }' "$src" | sort -u)
        ;;
    *.go)
        grep -Fq '//export ' "$src"
        getters=$({ grep -oE '//export __apollo_inline_get_[A-Za-z0-9_]+' "$src" | awk '{print $2}' | sort -u; } || true)
        ;;
    *.ts)
        grep -Fq 'export function ' "$src"
        getters=$({ grep -oE 'export function __apollo_inline_get_[A-Za-z0-9_]+' "$src" | awk '{print $3}' | sort -u; } || true)
        ;;
    *)
        echo "unsupported fake inline source: $src" >&2
        exit 1
        ;;
esac

tmp_c="${out%.ll}.fake.c"
{
    echo '#include <stdint.h>'
    counter=1
    while IFS= read -r name; do
        if [[ -z "$name" ]]; then
            continue
        fi
        echo "static int ${name}_storage = ${counter};"
        echo "int* ${name}(void) { return &${name}_storage; }"
        counter=$((counter + 1))
    done <<< "$getters"
} > "$tmp_c"

clang -S -emit-llvm "$tmp_c" -o "$out"
)TOOL");
        std::filesystem::permissions(fakeTool,
                std::filesystem::perms::owner_read | std::filesystem::perms::owner_write | std::filesystem::perms::owner_exec,
                std::filesystem::perm_options::replace,
                ec);
#endif

        const std::string program =
                "@unsafe {\n"
                "    inline::c {\n"
                "        int c_value = 1;\n"
                "    }\n"
                "}\n"
                "@unsafe {\n"
                "    inline::cpp {\n"
                "        int cpp_value = 2;\n"
                "    }\n"
                "}\n"
                "@unsafe {\n"
                "    inline::objc {\n"
                "        int objc_value = 3;\n"
                "    }\n"
                "}\n"
                "@unsafe {\n"
                "    inline::objcpp {\n"
                "        int objcpp_value = 4;\n"
                "    }\n"
                "}\n"
                "@unsafe {\n"
                "    inline::rust {\n"
                "        static mut rust_value: i32 = 5;\n"
                "    }\n"
                "}\n"
                "@unsafe {\n"
                "    inline::swift {\n"
                "        var swift_value: Int32 = 6;\n"
                "    }\n"
                "}\n"
                "@unsafe {\n"
                "    inline::zig {\n"
                "        var zig_value: i32 = 7;\n"
                "    }\n"
                "}\n"
                "@unsafe {\n"
                "    inline::python {\n"
                "        py_value: i32 = 8;\n"
                "    }\n"
                "}\n"
                "@unsafe {\n"
                "    inline::go {\n"
                "        var go_value int32 = 9;\n"
                "    }\n"
                "}\n"
                "@unsafe {\n"
                "    inline::typescript {\n"
                "        let ts_value: i32 = 10;\n"
                "    }\n"
                "}\n"
                "int main() {\n"
                "    return 0;\n"
                "}\n";

        writeTextFile(source, program);

        ScopedEnvironmentOverride rustcOverride("APOLLO_RUSTC_EXE", fakeTool.string());
        ScopedEnvironmentOverride swiftOverride("APOLLO_SWIFTC_EXE", fakeTool.string());
        ScopedEnvironmentOverride zigOverride("APOLLO_ZIG_EXE", fakeTool.string());
        ScopedEnvironmentOverride lpythonOverride("APOLLO_LPYTHON_EXE", fakeTool.string());
        ScopedEnvironmentOverride gollvmOverride("APOLLO_GOLLVM_EXE", fakeTool.string());
        ScopedEnvironmentOverride lltsOverride("APOLLO_LLTS_EXE", fakeTool.string());

        ApolloDriver::compileApollo(source.string(), output.string());
        if (!require(std::filesystem::exists(output), "all-language inline foreign compile should emit LLVM IR")) {
                return false;
        }

        const auto cacheRoot = workspace / "cache" / "inline_foreign";
        const std::vector<std::pair<std::string, std::string>> expectedMarkers = {
                { ".c", "__apollo_inline_get_" },
                { ".cpp", "extern \"C\"" },
                { ".m", "__apollo_inline_get_" },
                { ".mm", "extern \"C\"" },
                { ".rs", "#[no_mangle]" },
                { ".swift", "@_cdecl(\"" },
                { ".zig", "export fn " },
                { ".py", "@ccallable" },
                { ".go", "//export " },
                { ".ts", "export function " },
        };
        for (const auto& [extension, marker] : expectedMarkers) {
                bool found = false;
                for (const auto& entry : std::filesystem::directory_iterator(cacheRoot)) {
                        if (entry.path().extension() != extension) {
                                continue;
                        }
                        found = true;
                        const std::string cachedSource = readTextFile(entry.path());
                        if (!require(cachedSource.find(marker) != std::string::npos,
                                        "cached inline foreign source missing expected marker for " + extension)) {
                                return false;
                        }
                        break;
                }
                if (!require(found, "missing cached inline foreign source for " + extension)) {
                        return false;
                }
        }

        const std::string ir = readTextFile(output);
        const auto getterReferences = collectMatches(ir, std::regex(R"(@__apollo_inline_get_[A-Za-z0-9_]+\()"));
        std::set<std::string> getterSymbols;
        for (const auto& reference : getterReferences) {
            getterSymbols.insert(reference.substr(1, reference.size() - 2));
        }
        if (!require(getterSymbols.size() == 10,
                "all-language inline foreign compile should link exactly ten getter functions, got " + std::to_string(getterSymbols.size()))) {
                return false;
        }
        return true;
}

    bool verifyInlineForeignManagedFallbackSurface() {
        const auto workspace = std::filesystem::temp_directory_path() / std::filesystem::path("apollo-inline-foreign-managed-fallback-native");
        std::error_code ec;
        std::filesystem::remove_all(workspace, ec);
        std::filesystem::create_directories(workspace);

        const auto source = workspace / "managed_fallback.apollo";
        const auto output = workspace / "managed_fallback.ll";
        const auto missingGoLlvm = workspace / "missing_llvm-goc.exe";
        const auto missingLlts = workspace / "missing_lltsc.exe";

        const std::string program =
            "@unsafe {\n"
            "    inline::go {\n"
            "        var go_value int32 = 12;\n"
            "        func go_read() int32 { return go_value }\n"
            "    }\n"
            "}\n"
            "@unsafe {\n"
            "    inline::typescript {\n"
            "        let ts_value: i32 = 13;\n"
            "        function ts_read(): i32 { return ts_value; }\n"
            "    }\n"
            "}\n"
            "int main() {\n"
            "    sys.println(go_read());\n"
            "    sys.println(ts_read());\n"
            "    return 0;\n"
            "}\n";

        writeTextFile(source, program);

        ScopedEnvironmentOverride gollvmOverride("APOLLO_GOLLVM_EXE", missingGoLlvm.string());
        ScopedEnvironmentOverride lltsOverride("APOLLO_LLTS_EXE", missingLlts.string());

        ApolloDriver::compileApollo(source.string(), output.string());
        if (!require(std::filesystem::exists(output), "managed inline foreign fallback should emit LLVM IR")) {
            return false;
        }

        const std::string ir = readTextFile(output);
        if (!require(ir.find("@go_read(") != std::string::npos,
            "managed Go fallback should export go_read into the final LLVM IR")) {
            return false;
        }
        if (!require(ir.find("@ts_read(") != std::string::npos,
            "managed TypeScript fallback should export ts_read into the final LLVM IR")) {
            return false;
        }
        return true;
    }

} // namespace

int main() {
    if (!verifyInlineForeignLanguageCollection()) {
        return 1;
    }
        if (!verifyInlineForeignAllLanguagesCompileSurface()) {
                return 1;
        }
        if (!verifyInlineForeignManagedFallbackSurface()) {
            return 1;
        }

    const auto originalCwd = std::filesystem::current_path();
    const auto workspace = std::filesystem::temp_directory_path() / std::filesystem::path("apollo-cache-test-native");
    std::error_code ec;
    std::filesystem::remove_all(workspace, ec);
    std::filesystem::create_directories(workspace);
    std::filesystem::current_path(workspace);

    try {
        const auto source = workspace / "main.apollo";
        const auto output = workspace / "cached-output.ll";

        {
            std::ofstream file(source, std::ios::binary | std::ios::trunc);
            file << "int main() { return 1; }\n";
        }

        ApolloDriver::compileApollo(source.string(), output.string());
        if (!require(std::filesystem::exists(output), "first compile should generate output")) {
            std::filesystem::current_path(originalCwd);
            return 1;
        }
        if (!require(std::filesystem::exists(ApolloDriver::cacheEntryPath(source, output)), "first compile should write cache metadata")) {
            std::filesystem::current_path(originalCwd);
            return 1;
        }

        const auto firstWrite = std::filesystem::last_write_time(output);
        std::this_thread::sleep_for(std::chrono::milliseconds(1200));

        ApolloDriver::compileApollo(source.string(), output.string());
        const auto secondWrite = std::filesystem::last_write_time(output);
        if (!require(firstWrite == secondWrite, "unchanged sources should reuse cached LLVM IR output")) {
            std::filesystem::current_path(originalCwd);
            return 1;
        }

        std::this_thread::sleep_for(std::chrono::milliseconds(1200));
        {
            std::ofstream file(source, std::ios::binary | std::ios::trunc);
            file << "int main() { return 2; }\n";
        }

        ApolloDriver::compileApollo(source.string(), output.string());
        const auto thirdWrite = std::filesystem::last_write_time(output);
        if (!require(thirdWrite > secondWrite, "editing the source should invalidate the cache")) {
            std::filesystem::current_path(originalCwd);
            return 1;
        }

        const auto dependencyDir = workspace / "support";
        std::filesystem::create_directories(dependencyDir);
        const auto dependencySource = dependencyDir / "helper.apollo";
        const auto dependencyOutput = workspace / "deps" / "support" / "helper.ll";

        {
            std::ofstream file(dependencySource, std::ios::binary | std::ios::trunc);
            file << "int helper_value() { return 7; }\n";
        }
        {
            std::ofstream file(source, std::ios::binary | std::ios::trunc);
            file << "extern {support.helper};\n"
                    "int main() {\n"
                    "    return helper_value();\n"
                    "}\n";
        }

        ApolloDriver::compileApollo(source.string(), output.string());
        if (!require(std::filesystem::exists(dependencyOutput), "dependency compile should materialize imported Apollo module output")) {
            std::filesystem::current_path(originalCwd);
            return 1;
        }
        if (!require(std::filesystem::exists(ApolloDriver::cacheEntryPath(dependencySource, dependencyOutput)), "dependency compile should write cache metadata for imported Apollo module output")) {
            std::filesystem::current_path(originalCwd);
            return 1;
        }

        std::filesystem::remove(dependencyOutput, ec);
        ApolloDriver::compileApollo(source.string(), output.string());
        if (!require(std::filesystem::exists(dependencyOutput), "dependency output should be restored on top-level cache hit")) {
            std::filesystem::current_path(originalCwd);
            return 1;
        }
    } catch (const std::exception& ex) {
        std::filesystem::current_path(originalCwd);
        std::cerr << ex.what() << '\n';
        return 1;
    }

    std::filesystem::current_path(originalCwd);
    return 0;
}