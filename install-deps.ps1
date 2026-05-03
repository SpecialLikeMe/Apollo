param(
    [Parameter(Mandatory = $true)]
    [string]$InstallDir
)

$ErrorActionPreference = 'Stop'

function Write-Status {
    param([string]$Message)
    Write-Host "[apollo-install] $Message"
}

function Get-WingetCommand {
    $winget = Get-Command winget -ErrorAction SilentlyContinue
    if (-not $winget) {
        throw 'winget is required to bootstrap Apollo dependencies on Windows.'
    }
    return $winget.Source
}

function Add-ToProcessPath {
    param([string]$Entry)

    if ([string]::IsNullOrWhiteSpace($Entry) -or -not (Test-Path $Entry)) {
        return
    }

    $entries = $env:PATH -split ';' | Where-Object { -not [string]::IsNullOrWhiteSpace($_) }
    if ($entries -contains $Entry) {
        return
    }

    $env:PATH = "$Entry;$env:PATH"
}

function Resolve-GitCommand {
    $git = Get-Command git -ErrorAction SilentlyContinue
    if ($git) {
        return $git.Source
    }

    $candidates = @(
        (Join-Path $env:ProgramFiles 'Git\cmd\git.exe'),
        (Join-Path $env:ProgramFiles 'Git\bin\git.exe'),
        (Join-Path $env:LOCALAPPDATA 'Programs\Git\cmd\git.exe'),
        (Join-Path ${env:ProgramFiles(x86)} 'Git\cmd\git.exe')
    )

    foreach ($candidate in $candidates) {
        if ([string]::IsNullOrWhiteSpace($candidate)) {
            continue
        }
        if (Test-Path $candidate) {
            return $candidate
        }
    }

    return $null
}

function Install-WingetPackage {
    param(
        [string]$Id,
        [string]$Name
    )

    $winget = Get-WingetCommand
    Write-Status "Installing $Name via winget"
    & $winget install --id $Id --exact --accept-source-agreements --accept-package-agreements --disable-interactivity
    if ($LASTEXITCODE -ne 0) {
        throw "winget failed while installing $Name (package id: $Id)."
    }
}

function Resolve-MsysRoot {
    $candidates = @()
    if ($env:APOLLO_MSYS64_ROOT) {
        $candidates += $env:APOLLO_MSYS64_ROOT
    }
    $candidates += 'C:\msys64'

    foreach ($candidate in ($candidates | Select-Object -Unique)) {
        if ([string]::IsNullOrWhiteSpace($candidate)) {
            continue
        }
        if (Test-Path (Join-Path $candidate 'usr\bin\bash.exe')) {
            return $candidate
        }
    }

    return $null
}

function Invoke-MsysBash {
    param(
        [string]$Root,
        [string]$Command
    )

    $bash = Join-Path $Root 'usr\bin\bash.exe'
    if (-not (Test-Path $bash)) {
        throw "MSYS2 bash was not found at $bash."
    }

    & $bash -lc $Command
    if ($LASTEXITCODE -ne 0) {
        throw "MSYS2 command failed: $Command"
    }
}

function Ensure-Java {
    $java = Get-Command java -ErrorAction SilentlyContinue
    $javac = Get-Command javac -ErrorAction SilentlyContinue
    if ($java -and $javac) {
        Write-Status 'Java runtime and compiler already present'
        return
    }

    Install-WingetPackage -Id 'Microsoft.OpenJDK.21' -Name 'Microsoft OpenJDK 21'
}

function Ensure-Git {
    $git = Resolve-GitCommand
    if ($git) {
        Add-ToProcessPath -Entry (Split-Path $git -Parent)
        Write-Status 'Git already present'
        return
    }

    Install-WingetPackage -Id 'Git.Git' -Name 'Git'

    $git = Resolve-GitCommand
    if (-not $git) {
        throw 'git.exe could not be located after installing Git.'
    }

    Add-ToProcessPath -Entry (Split-Path $git -Parent)
}

function Ensure-Msys2 {
    $root = Resolve-MsysRoot
    if ($root) {
        Write-Status "MSYS2 already present at $root"
        return $root
    }

    Install-WingetPackage -Id 'MSYS2.MSYS2' -Name 'MSYS2'

    $root = Resolve-MsysRoot
    if (-not $root) {
        throw 'MSYS2 was installed but could not be located afterwards.'
    }

    return $root
}

function Ensure-MingwPackages {
    param([string]$MsysRoot)

    $packages = @(
        'mingw-w64-clang-x86_64-clang',
        'mingw-w64-clang-x86_64-compiler-rt',
        'mingw-w64-clang-x86_64-llvm',
        'mingw-w64-clang-x86_64-gc',
        'mingw-w64-clang-x86_64-make',
        'mingw-w64-clang-x86_64-SDL2',
        'mingw-w64-clang-x86_64-SDL2_image'
    )

    Write-Status 'Refreshing MSYS2 package metadata'
    Invoke-MsysBash -Root $MsysRoot -Command 'pacman -Sy --noconfirm'

    Write-Status 'Ensuring clang64 clang, compiler-rt, llvm, make, Boehm GC, SDL2, and SDL2_image packages are installed'
    Invoke-MsysBash -Root $MsysRoot -Command ("pacman -S --needed --noconfirm " + ($packages -join ' '))
}

function Resolve-AsanRuntime {
    param([string]$ClangxxPath)

    if (-not (Test-Path $ClangxxPath)) {
        return $null
    }

    $resourceDir = (& $ClangxxPath --print-resource-dir 2>$null | Select-Object -First 1)
    if ([string]::IsNullOrWhiteSpace($resourceDir)) {
        return $null
    }

    $matches = Get-ChildItem -Path $resourceDir -Recurse -Filter 'libclang_rt.asan*.a' -ErrorAction SilentlyContinue
    if ($matches) {
        return $matches[0].FullName
    }

    return $null
}

function Resolve-JavaBin {
    $javac = Get-Command javac -ErrorAction SilentlyContinue
    if ($javac) {
        return (Split-Path $javac.Source -Parent)
    }

    $searchRoots = @(
        'C:\Program Files\Microsoft',
        'C:\Program Files\Eclipse Adoptium',
        'C:\Program Files\OpenJDK'
    )

    foreach ($root in $searchRoots) {
        if (-not (Test-Path $root)) {
            continue
        }

        $candidate = Get-ChildItem -Path $root -Directory -ErrorAction SilentlyContinue |
            Where-Object { Test-Path (Join-Path $_.FullName 'bin\javac.exe') } |
            Sort-Object FullName -Descending |
            Select-Object -First 1

        if ($candidate) {
            return (Join-Path $candidate.FullName 'bin')
        }
    }

    throw 'javac.exe could not be located after installing Java.'
}

function Resolve-GcHeader {
    param([string]$IncludeDir)

    $candidates = @(
        (Join-Path $IncludeDir 'gc_cpp.h'),
        (Join-Path $IncludeDir 'gc\gc_cpp.h'),
        (Join-Path $IncludeDir 'gc.h'),
        (Join-Path $IncludeDir 'gc\gc.h')
    )

    foreach ($candidate in $candidates) {
        if (Test-Path $candidate) {
            return $candidate
        }
    }

    return $null
}

function Resolve-GcLibrary {
    param(
        [string]$LibDir,
        [string[]]$Names
    )

    foreach ($name in $Names) {
        $candidate = Join-Path $LibDir $name
        if (Test-Path $candidate) {
            return $candidate
        }
    }

    return $null
}

function Write-ToolchainEnv {
    param(
        [string]$InstallDirPath,
        [string]$MsysRoot,
        [string]$JavaBin
    )

    $compilerDir = Join-Path $InstallDirPath 'compiler'
    if (-not (Test-Path $compilerDir)) {
        throw "Apollo compiler directory not found at $compilerDir"
    }

    $mingwBin = Join-Path $MsysRoot 'clang64\bin'
    $includeDir = Join-Path $MsysRoot 'clang64\include'
    $libDir = Join-Path $MsysRoot 'clang64\lib'

    $gcHeader = Resolve-GcHeader -IncludeDir $includeDir
    if (-not $gcHeader) {
        throw 'Boehm GC headers were not found after package installation.'
    }

    $gcLibrary = Resolve-GcLibrary -LibDir $libDir -Names @('libgc.dll.a', 'libgc.a')
    if (-not $gcLibrary) {
        throw 'libgc was not found after package installation.'
    }

    $gcppLibrary = Resolve-GcLibrary -LibDir $libDir -Names @('libgccpp.dll.a', 'libgccpp.a')
    if (-not $gcppLibrary) {
        throw 'libgccpp was not found after package installation.'
    }

    $asanRuntime = Resolve-AsanRuntime -ClangxxPath (Join-Path $mingwBin 'clang++.exe')
    if (-not $asanRuntime) {
        throw 'Clang compiler-rt AddressSanitizer runtimes were not found after package installation.'
    }

    foreach ($requiredPath in @(
            (Join-Path $mingwBin 'clang.exe'),
            (Join-Path $mingwBin 'clang++.exe'),
            (Join-Path $mingwBin 'llc.exe'),
            (Join-Path $mingwBin 'make.exe'),
            (Join-Path $JavaBin 'java.exe'),
            (Join-Path $JavaBin 'javac.exe'))) {
        if (-not (Test-Path $requiredPath)) {
            throw "Required tool was not found at $requiredPath"
        }
    }

    $envFile = Join-Path $compilerDir 'toolchain-env.bat'
    $lines = @(
        '@echo off',
        ('set "APOLLO_MSYS64_ROOT={0}"' -f $MsysRoot),
        ('set "APOLLO_MINGW_BIN={0}"' -f $mingwBin),
        ('set "APOLLO_LLVM_BIN={0}"' -f $mingwBin),
        ('set "APOLLO_GC_INCLUDE_DIR={0}"' -f $includeDir),
        ('set "APOLLO_GC_LIB_DIR={0}"' -f $libDir),
        ('set "APOLLO_JAVA_BIN={0}"' -f $JavaBin),
        'set "PATH=%APOLLO_MINGW_BIN%;%APOLLO_JAVA_BIN%;%PATH%"'
    )

    Set-Content -Path $envFile -Value $lines -Encoding ASCII
    Write-Status "Wrote Apollo toolchain environment file to $envFile"
}

function Set-SessionToolchainEnv {
    param(
        [string]$MsysRoot,
        [string]$JavaBin
    )

    $mingwBin = Join-Path $MsysRoot 'clang64\bin'
    $includeDir = Join-Path $MsysRoot 'clang64\include'
    $libDir = Join-Path $MsysRoot 'clang64\lib'

    $env:APOLLO_MSYS64_ROOT = $MsysRoot
    $env:APOLLO_MINGW_BIN = $mingwBin
    $env:APOLLO_LLVM_BIN = $mingwBin
    $env:APOLLO_GC_INCLUDE_DIR = $includeDir
    $env:APOLLO_GC_LIB_DIR = $libDir
    $env:APOLLO_JAVA_BIN = $JavaBin
    $env:PATH = "$mingwBin;$JavaBin;$env:PATH"
}

function Invoke-ApolloValidation {
    param([string]$InstallDirPath)

    $validationScript = Join-Path $InstallDirPath 'compiler\run-test-suite.ps1'
    if (-not (Test-Path $validationScript)) {
        throw "Apollo validation script was not found at $validationScript"
    }

    Write-Status 'Running Apollo validation suite'
    & powershell -NoProfile -ExecutionPolicy Bypass -File $validationScript
    if ($LASTEXITCODE -ne 0) {
        throw 'Apollo validation suite failed.'
    }
}

$InstallDir = [System.IO.Path]::GetFullPath($InstallDir)
Write-Status "Bootstrapping dependencies for Apollo at $InstallDir"

Ensure-Git
Ensure-Java
$msysRoot = Ensure-Msys2
Ensure-MingwPackages -MsysRoot $msysRoot
$javaBin = Resolve-JavaBin
Write-ToolchainEnv -InstallDirPath $InstallDir -MsysRoot $msysRoot -JavaBin $javaBin
Set-SessionToolchainEnv -MsysRoot $msysRoot -JavaBin $javaBin
Invoke-ApolloValidation -InstallDirPath $InstallDir

Write-Status 'Dependency bootstrap complete'