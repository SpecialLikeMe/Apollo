$ErrorActionPreference = 'Stop'

$compilerDir = Split-Path -Parent $MyInvocation.MyCommand.Path

function Import-BatchEnvironment {
    param(
        [string]$BatchPath
    )

    if (-not (Test-Path $BatchPath)) {
        return
    }

    $cmdExe = if ($env:ComSpec -and (Test-Path $env:ComSpec)) {
        $env:ComSpec
    }
    else {
        Join-Path $env:SystemRoot 'System32\cmd.exe'
    }

    $captured = & $cmdExe /d /c "call `"$BatchPath`" >nul && set"
    foreach ($line in $captured) {
        $separator = $line.IndexOf('=')
        if ($separator -lt 1) {
            continue
        }

        $name = $line.Substring(0, $separator)
        $value = $line.Substring($separator + 1)
        Set-Item -Path ("Env:{0}" -f $name) -Value $value
    }
}

function Initialize-NativeToolchainEnvironment {
    $toolchainEnv = Join-Path $compilerDir 'toolchain-env.bat'
    Import-BatchEnvironment -BatchPath $toolchainEnv

    if (-not $env:APOLLO_MSYS64_ROOT -and (Test-Path 'C:\msys64')) {
        $env:APOLLO_MSYS64_ROOT = 'C:\msys64'
    }

    if (-not $env:APOLLO_MINGW_BIN -and $env:APOLLO_MSYS64_ROOT) {
        $defaultMingwBin = Join-Path $env:APOLLO_MSYS64_ROOT 'clang64\bin'
        if (Test-Path $defaultMingwBin) {
            $env:APOLLO_MINGW_BIN = $defaultMingwBin
        }
    }

    if (-not $env:APOLLO_NATIVE_GENERATOR -and $env:APOLLO_MINGW_BIN -and (Test-Path (Join-Path $env:APOLLO_MINGW_BIN 'mingw32-make.exe'))) {
        $env:APOLLO_NATIVE_GENERATOR = 'MinGW Makefiles'
    }
    if (-not $env:APOLLO_NATIVE_C_COMPILER -and $env:APOLLO_MINGW_BIN -and (Test-Path (Join-Path $env:APOLLO_MINGW_BIN 'clang.exe'))) {
        $env:APOLLO_NATIVE_C_COMPILER = Join-Path $env:APOLLO_MINGW_BIN 'clang.exe'
    }
    if (-not $env:APOLLO_NATIVE_CXX_COMPILER -and $env:APOLLO_MINGW_BIN -and (Test-Path (Join-Path $env:APOLLO_MINGW_BIN 'clang++.exe'))) {
        $env:APOLLO_NATIVE_CXX_COMPILER = Join-Path $env:APOLLO_MINGW_BIN 'clang++.exe'
    }
    if (-not $env:APOLLO_NATIVE_MAKE_PROGRAM -and $env:APOLLO_MINGW_BIN -and (Test-Path (Join-Path $env:APOLLO_MINGW_BIN 'mingw32-make.exe'))) {
        $env:APOLLO_NATIVE_MAKE_PROGRAM = Join-Path $env:APOLLO_MINGW_BIN 'mingw32-make.exe'
    }
    if (-not $env:APOLLO_NATIVE_CMAKE_PREFIX -and $env:APOLLO_MSYS64_ROOT) {
        $defaultCmakePrefix = Join-Path $env:APOLLO_MSYS64_ROOT 'clang64'
        if (Test-Path (Join-Path $defaultCmakePrefix 'lib\cmake\antlr4-runtime')) {
            $env:APOLLO_NATIVE_CMAKE_PREFIX = $defaultCmakePrefix
        }
    }

    if ($env:APOLLO_MINGW_BIN) {
        $pathEntries = @($env:PATH -split ';')
        if ($pathEntries -notcontains $env:APOLLO_MINGW_BIN) {
            $env:PATH = "$($env:APOLLO_MINGW_BIN);$($env:PATH)"
        }
    }
}

Initialize-NativeToolchainEnvironment
$env:APOLLO_HIDE_AST = '1'
Set-Location $compilerDir

function Resolve-NativeBuildDriver {
    $nativeBuildDir = if ($env:APOLLO_NATIVE_BUILD_DIR) {
        $env:APOLLO_NATIVE_BUILD_DIR
    }
    else {
        Join-Path (Split-Path $compilerDir -Parent) 'build'
    }
    $candidates = @(
        (Join-Path $nativeBuildDir 'apollo_build_driver_native.exe'),
        (Join-Path $nativeBuildDir 'Release\apollo_build_driver_native.exe'),
        (Join-Path $nativeBuildDir 'Debug\apollo_build_driver_native.exe'),
        (Join-Path $nativeBuildDir 'RelWithDebInfo\apollo_build_driver_native.exe'),
        (Join-Path $nativeBuildDir 'MinSizeRel\apollo_build_driver_native.exe'),
        (Join-Path $compilerDir 'cpp\build\Release\apollo_build_driver_native.exe'),
        (Join-Path $compilerDir 'cpp\build\Debug\apollo_build_driver_native.exe'),
        (Join-Path $compilerDir 'cpp\build\RelWithDebInfo\apollo_build_driver_native.exe'),
        (Join-Path $compilerDir 'cpp\build\MinSizeRel\apollo_build_driver_native.exe')
    )

    foreach ($candidate in $candidates) {
        if (Test-Path $candidate) {
            return $candidate
        }
    }

    throw 'Native Apollo build driver executable was not found.'
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

function Invoke-NativeCtall {
    param(
        [string]$RelativeInputPath,
        [string]$FailureMessage
    )

    $resolvedInputPath = (Resolve-Path (Join-Path $compilerDir $RelativeInputPath)).Path
    $outputBinary = Join-Path $compilerDir ('output\ctall-' + [guid]::NewGuid().ToString('N') + '.exe')
    try {
        & $script:nativeBuildDriver build-aot $resolvedInputPath $outputBinary
        if ($LASTEXITCODE -ne 0 -or -not (Test-Path $outputBinary)) {
            throw $FailureMessage
        }

        $runWorkDir = Split-Path -Parent $resolvedInputPath
        Push-Location $runWorkDir
        try {
            & $outputBinary
            if ($LASTEXITCODE -ne 0) {
                throw $FailureMessage
            }
        }
        finally {
            Pop-Location
        }
    }
    finally {
        Remove-Item $outputBinary -ErrorAction SilentlyContinue
    }
}

function Invoke-NativeAnalyze {
    param(
        [string]$RelativeInputPath,
        [string]$FailureMessage
    )

    cmd /c "call .\exec.bat -analyze $RelativeInputPath"
    if ($LASTEXITCODE -ne 0) {
        throw $FailureMessage
    }
}

& powershell -NoProfile -ExecutionPolicy Bypass -File .\run-grammar-tests.ps1
if ($LASTEXITCODE -ne 0) {
    throw 'Grammar and safety fixture suite failed.'
}

& powershell -NoProfile -ExecutionPolicy Bypass -File .\run-llvm-grammar-tests.ps1
if ($LASTEXITCODE -ne 0) {
    throw 'Strict LLVM grammar suite failed.'
}

$script:nativeBuildDriver = Resolve-NativeBuildDriver

$typedefOpstructStandaloneDir = Join-Path $env:TEMP ('apollo-standalone-' + [guid]::NewGuid().ToString('N'))
New-Item -ItemType Directory -Path $typedefOpstructStandaloneDir | Out-Null
$typedefOpstructBinary = Join-Path $compilerDir 'output\typedef_opstruct_standalone.exe'
& $script:nativeBuildDriver build-aot (Join-Path $compilerDir 'tests\grammar\pass\typedef_opstruct_dsl.apollo') $typedefOpstructBinary
if ($LASTEXITCODE -ne 0 -or -not (Test-Path $typedefOpstructBinary)) {
    throw 'Apollo standalone binary build failed for tests\\grammar\\pass\\typedef_opstruct_dsl.apollo.'
}

Copy-Item $typedefOpstructBinary (Join-Path $typedefOpstructStandaloneDir 'standalone.exe')
Set-Content -Path (Join-Path $typedefOpstructStandaloneDir 'stdin.txt') -Value 'sys.println("Hello, world");' -NoNewline

Push-Location $typedefOpstructStandaloneDir
try {
    cmd /c ".\standalone.exe < stdin.txt > stdout.txt"
    if ($LASTEXITCODE -ne 0) {
        throw 'Apollo standalone typedef opstruct binary failed to run outside the repo directory.'
    }

    $typedefOpstructStandaloneOutput = Get-Content .\stdout.txt -Raw
    if ($typedefOpstructStandaloneOutput -notmatch 'Hello, world') {
        throw 'Apollo standalone typedef opstruct binary did not execute the stdin-fed Apollo src payload.'
    }
}
finally {
    Pop-Location
}

Invoke-NativeCtall -RelativeInputPath 'tests\grammar\pass\autofmt_surface.apollo' -FailureMessage 'Apollo ctall validation failed for tests\\grammar\\pass\\autofmt_surface.apollo.'
Invoke-NativeCtall -RelativeInputPath 'tests\grammar\pass\autofmt_reported_sample.apollo' -FailureMessage 'Apollo ctall validation failed for tests\\grammar\\pass\\autofmt_reported_sample.apollo.'
Invoke-NativeCtall -RelativeInputPath 'tests\grammar\pass\autofmt_template_trace.apollo' -FailureMessage 'Apollo ctall validation failed for tests\\grammar\\pass\\autofmt_template_trace.apollo.'
Invoke-NativeCtall -RelativeInputPath 'tests\analyze\asan_clean.apollo' -FailureMessage 'Apollo ctall validation failed for tests\\analyze\\asan_clean.apollo.'
Invoke-NativeAnalyze -RelativeInputPath 'tests\analyze\asan_clean.apollo' -FailureMessage 'Apollo analyze validation failed for tests\\analyze\\asan_clean.apollo.'

Invoke-GcRuntimeProbe

Write-Host 'Apollo validation suite passed.'
