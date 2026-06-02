$ErrorActionPreference = 'Stop'
$PSNativeCommandUseErrorActionPreference = $false

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

$nativeSourceDir = Join-Path $compilerDir 'cpp'
$nativeBuildDir = if ($env:APOLLO_NATIVE_BUILD_DIR) { $env:APOLLO_NATIVE_BUILD_DIR } else { Join-Path (Split-Path $compilerDir -Parent) 'build' }
$nativeBuildConfig = if ($env:APOLLO_NATIVE_BUILD_CONFIG) { $env:APOLLO_NATIVE_BUILD_CONFIG } else { 'Release' }

function Resolve-CommandPath {
    param(
        [string]$Name
    )

    if (Test-Path $Name) {
        return $Name
    }

    $command = Get-Command $Name -ErrorAction SilentlyContinue
    if ($command) {
        return $command.Source
    }

    if ($Name -in @('cmake', 'cmake.exe')) {
        $candidates = @()
        if ($env:APOLLO_CMAKE_EXE) {
            $candidates += $env:APOLLO_CMAKE_EXE
        }
        if ($env:APOLLO_MINGW_BIN) {
            $candidates += Join-Path $env:APOLLO_MINGW_BIN 'cmake.exe'
        }
        if ($env:APOLLO_MSYS64_ROOT) {
            $candidates += Join-Path $env:APOLLO_MSYS64_ROOT 'clang64\bin\cmake.exe'
        }
        $candidates += @(
            'C:\Program Files\CMake\bin\cmake.exe',
            'C:\Program Files (x86)\CMake\bin\cmake.exe',
            'C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin\cmake.exe',
            'C:\Program Files\Microsoft Visual Studio\2022\Professional\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin\cmake.exe',
            'C:\Program Files\Microsoft Visual Studio\2022\Enterprise\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin\cmake.exe',
            'C:\Program Files\Microsoft Visual Studio\18\Community\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin\cmake.exe'
        )
        foreach ($candidate in $candidates | Select-Object -Unique) {
            if ($candidate -and (Test-Path $candidate)) {
                return $candidate
            }
        }
    }

    throw "Command could not be resolved: $Name"
}

function Invoke-CapturedProcess {
    param(
        [string]$FilePath,
        [string[]]$Arguments = @()
    )

    $resolvedFilePath = Resolve-CommandPath -Name $FilePath
    $quotedArguments = @(
        foreach ($argument in $Arguments) {
        if ($null -eq $argument) {
            '""'
            continue
        }

        if ($argument -notmatch '[\s"]') {
            $argument
            continue
        }

        '"' + (($argument -replace '(\\*)"', '$1$1\\"') -replace '(\\+)$', '$1$1') + '"'
        }
    )
    $startInfo = New-Object System.Diagnostics.ProcessStartInfo
    $startInfo.FileName = $resolvedFilePath
    $startInfo.Arguments = [string]::Join(' ', $quotedArguments)
    $startInfo.UseShellExecute = $false
    $startInfo.RedirectStandardOutput = $true
    $startInfo.RedirectStandardError = $true
    $startInfo.CreateNoWindow = $true
    $startInfo.WorkingDirectory = $compilerDir

    $process = New-Object System.Diagnostics.Process
    $process.StartInfo = $startInfo
    [void]$process.Start()
    $stdout = $process.StandardOutput.ReadToEnd()
    $stderr = $process.StandardError.ReadToEnd()
    $process.WaitForExit()

    $output = if ([string]::IsNullOrEmpty($stderr)) {
        [string]$stdout
    }
    else {
        [string]($stdout + $stderr)
    }

    return [pscustomobject]@{
        ExitCode = $process.ExitCode
        Output = $output
    }
}

function Ensure-NativeBuild {
    param(
        [string[]]$Targets
    )

    if (-not (Test-Path (Join-Path $nativeBuildDir 'CMakeCache.txt'))) {
        $configureArgs = @()
        if ($env:APOLLO_NATIVE_GENERATOR) {
            $configureArgs += "-G$($env:APOLLO_NATIVE_GENERATOR)"
        }
        $configureArgs += @('-S', $nativeSourceDir, '-B', $nativeBuildDir)
        $usingMingwGenerator = $env:APOLLO_NATIVE_GENERATOR -eq 'MinGW Makefiles'
        if ($usingMingwGenerator) {
            if ($env:APOLLO_NATIVE_C_COMPILER) {
                $configureArgs += "-DCMAKE_C_COMPILER=$($env:APOLLO_NATIVE_C_COMPILER)"
            }
            if ($env:APOLLO_NATIVE_CXX_COMPILER) {
                $configureArgs += "-DCMAKE_CXX_COMPILER=$($env:APOLLO_NATIVE_CXX_COMPILER)"
            }
            if ($env:APOLLO_NATIVE_MAKE_PROGRAM) {
                $configureArgs += "-DCMAKE_MAKE_PROGRAM=$($env:APOLLO_NATIVE_MAKE_PROGRAM)"
            }
            if ($env:APOLLO_NATIVE_CMAKE_PREFIX) {
                $configureArgs += "-DCMAKE_PREFIX_PATH=$($env:APOLLO_NATIVE_CMAKE_PREFIX)"
            }
        }
        elseif ($env:CMAKE_TOOLCHAIN_FILE) {
            $configureArgs += "-DCMAKE_TOOLCHAIN_FILE=$($env:CMAKE_TOOLCHAIN_FILE)"
        }
        elseif ($env:VCPKG_ROOT) {
            $vcpkgToolchain = Join-Path $env:VCPKG_ROOT 'scripts\buildsystems\vcpkg.cmake'
            if (Test-Path $vcpkgToolchain) {
                $configureArgs += "-DCMAKE_TOOLCHAIN_FILE=$vcpkgToolchain"
            }
        }

        $configureResult = Invoke-CapturedProcess -FilePath 'cmake' -Arguments $configureArgs
        if ($configureResult.ExitCode -ne 0) {
            throw "Failed to configure Apollo C++ build.`n$($configureResult.Output)"
        }
    }

    $buildArgs = @('--build', $nativeBuildDir, '--config', $nativeBuildConfig, '--target') + $Targets
    $buildResult = Invoke-CapturedProcess -FilePath 'cmake' -Arguments $buildArgs
    if ($buildResult.ExitCode -ne 0) {
        throw "Failed to build Apollo C++ targets.`n$($buildResult.Output)"
    }
}

function Resolve-NativeExecutable {
    param(
        [string]$Name
    )

    $configs = @($nativeBuildConfig, 'Release', 'RelWithDebInfo', 'Debug', 'MinSizeRel') | Select-Object -Unique
    foreach ($config in $configs) {
        $candidate = Join-Path (Join-Path $nativeBuildDir $config) ("{0}.exe" -f $Name)
        if (Test-Path $candidate) {
            return $candidate
        }
        $candidate = Join-Path (Join-Path $nativeBuildDir $config) $Name
        if (Test-Path $candidate) {
            return $candidate
        }
    }

    foreach ($candidate in @(
        (Join-Path $nativeBuildDir ("{0}.exe" -f $Name)),
        (Join-Path $nativeBuildDir $Name)
    )) {
        if (Test-Path $candidate) {
            return $candidate
        }
    }

    throw "Native Apollo executable not found: $Name"
}

Ensure-NativeBuild -Targets @('apollo_build_driver_native')
$driverExe = Resolve-NativeExecutable -Name 'apollo_build_driver_native'
$outputDir = Join-Path $compilerDir 'output'
if (-not (Test-Path $outputDir)) {
    New-Item -ItemType Directory -Path $outputDir | Out-Null
}

$failures = New-Object System.Collections.Generic.List[string]
Get-ChildItem (Join-Path $compilerDir 'tests\grammar\pass') -Filter '*.apollo' | Sort-Object Name | ForEach-Object {
    $outputPath = Join-Path $outputDir ($_.BaseName + '.strict.ll')
    $result = Invoke-CapturedProcess -FilePath $driverExe -Arguments @('emit-ll', $_.FullName, $outputPath)
    if ($result.ExitCode -ne 0) {
        $firstLine = ($result.Output -split "`r?`n" | Where-Object { $_ -ne '' } | Select-Object -First 1)
        if (-not $firstLine) {
            $firstLine = 'strict LLVM emit-ll failed without diagnostic output.'
        }
        $failures.Add("$($_.Name) => $firstLine") | Out-Null
    }
}

if ($failures.Count -gt 0) {
    throw "Strict LLVM grammar suite failed.`n$($failures -join "`n")"
}

Write-Host 'Strict LLVM grammar suite passed.'