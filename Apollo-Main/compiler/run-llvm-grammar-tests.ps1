$ErrorActionPreference = 'Stop'
$PSNativeCommandUseErrorActionPreference = $false

$compilerDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $compilerDir

$nativeSourceDir = Join-Path $compilerDir 'cpp'
$nativeBuildDir = Join-Path $nativeSourceDir 'build'
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
    $stdoutPath = [System.IO.Path]::GetTempFileName()
    $stderrPath = [System.IO.Path]::GetTempFileName()
    try {
        $startProcessArgs = @{
            FilePath = $resolvedFilePath
            NoNewWindow = $true
            Wait = $true
            PassThru = $true
            RedirectStandardOutput = $stdoutPath
            RedirectStandardError = $stderrPath
        }
        if ($Arguments.Count -gt 0) {
            $startProcessArgs.ArgumentList = $Arguments
        }

        $process = Start-Process @startProcessArgs
        $stdout = if (Test-Path $stdoutPath) { [string](Get-Content -Path $stdoutPath -Raw) } else { '' }
        $stderr = if (Test-Path $stderrPath) { [string](Get-Content -Path $stderrPath -Raw) } else { '' }
        $output = ([string]$stdout) + ([string]$stderr)
    }
    finally {
        Remove-Item $stdoutPath -ErrorAction SilentlyContinue
        Remove-Item $stderrPath -ErrorAction SilentlyContinue
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
            $configureArgs += @('-G', $env:APOLLO_NATIVE_GENERATOR)
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