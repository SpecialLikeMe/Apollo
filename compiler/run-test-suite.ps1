$ErrorActionPreference = 'Stop'

$compilerDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $compilerDir

function Resolve-JavaTool {
    param([string]$Name)

    if ($env:APOLLO_JAVA_BIN) {
        $candidate = Join-Path $env:APOLLO_JAVA_BIN ("{0}.exe" -f $Name)
        if (Test-Path $candidate) {
            return $candidate
        }
    }

    $command = Get-Command $Name -ErrorAction SilentlyContinue
    if ($command) {
        return $command.Source
    }

    throw "$Name could not be resolved."
}

function Invoke-GcRuntimeProbe {
    $probeSource = Join-Path $compilerDir 'tests\runtime\gc_runtime_probe.cpp'
    $probeOutputDir = Join-Path $compilerDir 'output'
    $probeBinary = Join-Path $compilerDir 'output\gc_runtime_probe.exe'
    try {
        if (-not (Test-Path $probeOutputDir)) {
            New-Item -ItemType Directory -Path $probeOutputDir | Out-Null
        }
        if (Test-Path '.\toolchain-env.bat') {
            cmd /c "call .\toolchain-env.bat && clang++ -std=c++20 -I. `"$probeSource`" -o `"$probeBinary`" && `"$probeBinary`""
        }
        else {
            & clang++ -std=c++20 -I. $probeSource -o $probeBinary
            if ($LASTEXITCODE -eq 0) {
                & $probeBinary
            }
        }

        if ($LASTEXITCODE -ne 0) {
            throw 'Native GC runtime probe failed.'
        }
    }
    finally {
        Remove-Item $probeBinary -ErrorAction SilentlyContinue
    }
}

 $javaExe = Resolve-JavaTool -Name 'java'
$javaCompilerExe = Resolve-JavaTool -Name 'javac'

function Regenerate-Parser {
    & $javaExe -jar .\antlr-4.13.2-complete.jar -visitor -Dlanguage=Java -o compiler-master .\compilerv1.g4
    if ($LASTEXITCODE -ne 0) {
        throw 'Failed to regenerate parser sources.'
    }
}

if (-not (Test-Path output)) {
    New-Item -ItemType Directory -Path output | Out-Null
}
if (-not (Test-Path output\classes)) {
    New-Item -ItemType Directory -Path output\classes | Out-Null
}

Regenerate-Parser

Push-Location compiler-master
try {
    & $javaCompilerExe -d ..\output\classes -cp ".;..\antlr-4.13.2-complete.jar" *.java
    if ($LASTEXITCODE -ne 0) {
        throw 'Failed to compile generated parser sources.'
    }
}
finally {
    Pop-Location
}

& $javaCompilerExe -d output\classes -cp ".;output\classes;antlr-4.13.2-complete.jar" CppCodeGenVisitor.java Main.java runtime.java
if ($LASTEXITCODE -ne 0) {
    throw 'Failed to compile Apollo compiler sources.'
}

& powershell -NoProfile -ExecutionPolicy Bypass -File .\run-grammar-tests.ps1
if ($LASTEXITCODE -ne 0) {
    throw 'Grammar and safety fixture suite failed.'
}

$phase3aStandaloneDir = Join-Path $env:TEMP ('apollo-standalone-' + [guid]::NewGuid().ToString('N'))
New-Item -ItemType Directory -Path $phase3aStandaloneDir | Out-Null
cmd /c "call .\exec.bat tests\grammar\pass\phase3a_typedef_opstruct_dsl.apollo -W output\phase3a_typedef_opstruct_standalone.exe"
if ($LASTEXITCODE -ne 0) {
    throw 'Apollo standalone binary build failed for tests\\grammar\\pass\\phase3a_typedef_opstruct_dsl.apollo.'
}

Copy-Item .\output\phase3a_typedef_opstruct_standalone.exe (Join-Path $phase3aStandaloneDir 'standalone.exe')
Set-Content -Path (Join-Path $phase3aStandaloneDir 'stdin.txt') -Value 'sys.println("Hello, world");' -NoNewline

Push-Location $phase3aStandaloneDir
try {
    cmd /c ".\standalone.exe < stdin.txt > stdout.txt"
    if ($LASTEXITCODE -ne 0) {
        throw 'Apollo standalone typedef opstruct binary failed to run outside the repo directory.'
    }

    $phase3aStandaloneOutput = Get-Content .\stdout.txt -Raw
    if ($phase3aStandaloneOutput -notmatch 'Hello, world') {
        throw 'Apollo standalone typedef opstruct binary did not execute the stdin-fed Apollo src payload.'
    }
}
finally {
    Pop-Location
}

cmd /c "call .\exec.bat ctall tests\grammar\pass\autofmt_surface.apollo"
if ($LASTEXITCODE -ne 0) {
    throw 'Apollo ctall validation failed for tests\\grammar\\pass\\autofmt_surface.apollo.'
}

cmd /c "call .\exec.bat ctall tests\grammar\pass\autofmt_reported_sample.apollo"
if ($LASTEXITCODE -ne 0) {
    throw 'Apollo ctall validation failed for tests\\grammar\\pass\\autofmt_reported_sample.apollo.'
}

cmd /c "call .\exec.bat ctall tests\grammar\pass\autofmt_template_trace.apollo"
if ($LASTEXITCODE -ne 0) {
    throw 'Apollo ctall validation failed for tests\\grammar\\pass\\autofmt_template_trace.apollo.'
}

cmd /c "call .\exec.bat ctall tests\analyze\asan_clean.apollo"
if ($LASTEXITCODE -ne 0) {
    throw 'Apollo ctall validation failed for tests\\analyze\\asan_clean.apollo.'
}

cmd /c "call .\exec.bat -analyze tests\analyze\asan_clean.apollo"
if ($LASTEXITCODE -ne 0) {
    throw 'Apollo analyze validation failed for tests\\analyze\\asan_clean.apollo.'
}

Invoke-GcRuntimeProbe

Write-Host 'Apollo validation suite passed.'
