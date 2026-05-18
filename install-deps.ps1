param(
    [Parameter(Mandatory = $true)]
    [string]$InstallDir,

    [switch]$RunValidation
)

$ErrorActionPreference = 'Stop'

function Write-Status {
    param([string]$Message)
    Write-Host "[apollo-install] $Message"
}

function Convert-ToInstallerSelection {
    param([AllowNull()][string]$Value)

    if ([string]::IsNullOrWhiteSpace($Value)) {
        return $null
    }

    switch -Regex ($Value.Trim()) {
        '^(1|true|yes|y|on)$' { return $true }
        '^(0|false|no|n|off)$' { return $false }
        default { return $null }
    }
}

function Test-InstallerInteractive {
    try {
        return [Environment]::UserInteractive -and -not [Console]::IsInputRedirected -and -not [Console]::IsOutputRedirected
    } catch {
        return $false
    }
}

function Resolve-InstallerSelection {
    param(
        [string]$EnvName,
        [string]$Prompt,
        [bool]$InteractiveDefault,
        [bool]$NonInteractiveDefault
    )

    $envValue = [Environment]::GetEnvironmentVariable($EnvName)
    $parsed = Convert-ToInstallerSelection -Value $envValue
    if ($null -ne $parsed) {
        return $parsed
    }

    if (-not (Test-InstallerInteractive)) {
        return $NonInteractiveDefault
    }

    while ($true) {
        $suffix = if ($InteractiveDefault) { '[Y/n]' } else { '[y/N]' }
        $response = Read-Host "$Prompt $suffix"
        if ([string]::IsNullOrWhiteSpace($response)) {
            return $InteractiveDefault
        }

        $parsed = Convert-ToInstallerSelection -Value $response
        if ($null -ne $parsed) {
            return $parsed
        }

        Write-Status 'Please answer yes or no.'
    }
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

function Resolve-WingetPackageExecutable {
    param(
        [string]$PackagePrefix,
        [string]$ExecutableName
    )

    if ([string]::IsNullOrWhiteSpace($PackagePrefix) -or [string]::IsNullOrWhiteSpace($ExecutableName)) {
        return $null
    }

    $packagesRoot = Join-Path $env:LOCALAPPDATA 'Microsoft\WinGet\Packages'
    if (-not (Test-Path $packagesRoot)) {
        return $null
    }

    $packageDir = Get-ChildItem -Path $packagesRoot -Directory -Filter ($PackagePrefix + '*') -ErrorAction SilentlyContinue |
        Sort-Object FullName -Descending |
        Select-Object -First 1
    if (-not $packageDir) {
        return $null
    }

    $match = Get-ChildItem -Path $packageDir.FullName -Filter $ExecutableName -File -Recurse -ErrorAction SilentlyContinue |
        Sort-Object FullName -Descending |
        Select-Object -First 1
    if ($match) {
        return $match.FullName
    }

    return $null
}

function Resolve-CommandPath {
    param(
        [string[]]$Names,
        [string[]]$CandidateFiles = @()
    )

    foreach ($name in ($Names | Where-Object { -not [string]::IsNullOrWhiteSpace($_) })) {
        $command = Get-Command $name -ErrorAction SilentlyContinue | Select-Object -First 1
        if ($command -and -not [string]::IsNullOrWhiteSpace($command.Source)) {
            return $command.Source
        }
    }

    foreach ($candidate in ($CandidateFiles | Where-Object { -not [string]::IsNullOrWhiteSpace($_) })) {
        if (Test-Path $candidate) {
            return $candidate
        }
    }

    return $null
}

function Resolve-PythonCommand {
    return Resolve-CommandPath -Names @('python', 'python3', 'py') -CandidateFiles @(
        (Resolve-WingetPackageExecutable -PackagePrefix 'Python.Python.3' -ExecutableName 'python.exe')
    )
}

function Resolve-PipCommand {
    return Resolve-CommandPath -Names @('pip', 'pip3') -CandidateFiles @(
        (Resolve-WingetPackageExecutable -PackagePrefix 'Python.Python.3' -ExecutableName 'pip.exe')
    )
}

function Test-PythonPipModule {
    param([string]$PythonCommand)

    if ([string]::IsNullOrWhiteSpace($PythonCommand)) {
        return $false
    }

    if ((Split-Path $PythonCommand -Leaf) -ieq 'py.exe') {
        & $PythonCommand -3 -m pip --version 1>$null 2>$null
    } else {
        & $PythonCommand -m pip --version 1>$null 2>$null
    }

    return $LASTEXITCODE -eq 0
}

function Resolve-PythonUserScriptsDir {
    $python = Resolve-PythonCommand
    if (-not $python) {
        return $null
    }

    $userBase = $null
    if ((Split-Path $python -Leaf) -ieq 'py.exe') {
        $userBase = & $python -3 -c "import site; print(site.USER_BASE)" 2>$null | Select-Object -First 1
    } else {
        $userBase = & $python -c "import site; print(site.USER_BASE)" 2>$null | Select-Object -First 1
    }
    if ([string]::IsNullOrWhiteSpace($userBase)) {
        return $null
    }

    $scriptsDir = Join-Path $userBase 'Scripts'
    if (Test-Path $scriptsDir) {
        return $scriptsDir
    }
    return $null
}

function Resolve-RustcCommand {
    return Resolve-CommandPath -Names @('rustc') -CandidateFiles @(
        (Join-Path $env:USERPROFILE '.cargo\bin\rustc.exe')
    )
}

function Resolve-RustupCommand {
    return Resolve-CommandPath -Names @('rustup') -CandidateFiles @(
        (Join-Path $env:USERPROFILE '.cargo\bin\rustup.exe')
    )
}

function Resolve-CargoCommand {
    return Resolve-CommandPath -Names @('cargo') -CandidateFiles @(
        (Join-Path $env:USERPROFILE '.cargo\bin\cargo.exe')
    )
}

function Resolve-ZigCommand {
    return Resolve-CommandPath -Names @('zig') -CandidateFiles @(
        (Resolve-WingetPackageExecutable -PackagePrefix 'zig.zig' -ExecutableName 'zig.exe')
    )
}

function Resolve-GoCommand {
    return Resolve-CommandPath -Names @('go') -CandidateFiles @(
        (Join-Path $env:ProgramFiles 'Go\bin\go.exe')
    )
}

function Resolve-NodeCommand {
    return Resolve-CommandPath -Names @('node') -CandidateFiles @(
        (Join-Path $env:ProgramFiles 'nodejs\node.exe')
    )
}

function Resolve-NpmCommand {
    return Resolve-CommandPath -Names @('npm') -CandidateFiles @(
        (Join-Path $env:ProgramFiles 'nodejs\npm.cmd')
    )
}

function Resolve-SwiftcCommand {
    return Resolve-CommandPath -Names @('swiftc') -CandidateFiles @(
        (Resolve-WingetPackageExecutable -PackagePrefix 'Swift.Toolchain' -ExecutableName 'swiftc.exe')
    )
}

function Resolve-LPythonCommand {
    return Resolve-CommandPath -Names @('lpython') -CandidateFiles @(
        $(if ($scriptsDir = Resolve-PythonUserScriptsDir) { Join-Path $scriptsDir 'lpython.exe' }),
        $(if ($scriptsDir = Resolve-PythonUserScriptsDir) { Join-Path $scriptsDir 'lpython.cmd' }),
        $(if ($scriptsDir = Resolve-PythonUserScriptsDir) { Join-Path $scriptsDir 'lpython.bat' })
    )
}

function Test-LPythonModuleInstalled {
    param([string]$PythonCommand)

    if ([string]::IsNullOrWhiteSpace($PythonCommand)) {
        return $false
    }

    if ((Split-Path $PythonCommand -Leaf) -ieq 'py.exe') {
        & $PythonCommand -3 -c "import importlib.util, sys; sys.exit(0 if importlib.util.find_spec('lpython') else 1)" 1>$null 2>$null
    } else {
        & $PythonCommand -c "import importlib.util, sys; sys.exit(0 if importlib.util.find_spec('lpython') else 1)" 1>$null 2>$null
    }

    return $LASTEXITCODE -eq 0
}

function Resolve-GoLLVMCommand {
    return Resolve-CommandPath -Names @('llvm-goc', 'gollvm')
}

function Resolve-LLTSCommand {
    return Resolve-CommandPath -Names @('lltsc') -CandidateFiles @(
        (Join-Path $env:USERPROFILE '.cargo\bin\lltsc.exe')
    )
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

function Resolve-MingwMakeProgram {
    param([string]$MsysRoot)

    if ([string]::IsNullOrWhiteSpace($MsysRoot)) {
        return $null
    }

    foreach ($candidate in @(
            (Join-Path $MsysRoot 'clang64\bin\mingw32-make.exe'),
            (Join-Path $MsysRoot 'clang64\bin\make.exe'),
            (Join-Path $MsysRoot 'usr\bin\make.exe'))) {
        if (Test-Path $candidate) {
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

function Ensure-Python {
    $python = Resolve-PythonCommand
    $pip = Resolve-PipCommand
    $hasPipModule = Test-PythonPipModule -PythonCommand $python
    if ($python -and ($pip -or $hasPipModule)) {
        Add-ToProcessPath -Entry (Split-Path $python -Parent)
        if ($pip) {
            Add-ToProcessPath -Entry (Split-Path $pip -Parent)
        }
        if ($scriptsDir = Resolve-PythonUserScriptsDir) {
            Add-ToProcessPath -Entry $scriptsDir
        }
        Write-Status 'Python and pip already present'
        return
    }

    Install-WingetPackage -Id 'Python.Python.3.13' -Name 'Python 3.13'

    $python = Resolve-PythonCommand
    $pip = Resolve-PipCommand
    if (-not $python) {
        throw 'Python could not be located after installing Python 3.13.'
    }

    if (-not $pip -and -not (Test-PythonPipModule -PythonCommand $python)) {
        Write-Status 'Bootstrapping pip with ensurepip'
        if ((Split-Path $python -Leaf) -ieq 'py.exe') {
            & $python -3 -m ensurepip --upgrade
        } else {
            & $python -m ensurepip --upgrade
        }
        if ($LASTEXITCODE -ne 0) {
            throw 'pip could not be located or bootstrapped after installing Python 3.13.'
        }
        $pip = Resolve-PipCommand
    }

    Add-ToProcessPath -Entry (Split-Path $python -Parent)
    if ($pip) {
        Add-ToProcessPath -Entry (Split-Path $pip -Parent)
    }
    if ($scriptsDir = Resolve-PythonUserScriptsDir) {
        Add-ToProcessPath -Entry $scriptsDir
    }
}

function Ensure-Rust {
    $rustc = Resolve-RustcCommand
    if ($rustc) {
        Add-ToProcessPath -Entry (Split-Path $rustc -Parent)
        Write-Status 'Rust already present'
        Ensure-RustTarget -TargetTriple 'x86_64-pc-windows-gnu'
        return
    }

    Install-WingetPackage -Id 'Rustlang.Rustup' -Name 'Rustup'

    $rustc = Resolve-RustcCommand
    if (-not $rustc) {
        throw 'rustc.exe could not be located after installing Rustup.'
    }

    Add-ToProcessPath -Entry (Split-Path $rustc -Parent)
    Ensure-RustTarget -TargetTriple 'x86_64-pc-windows-gnu'
}

function Ensure-RustTarget {
    param([string]$TargetTriple)

    if ([string]::IsNullOrWhiteSpace($TargetTriple)) {
        return
    }

    $rustup = Resolve-RustupCommand
    if (-not $rustup) {
        throw 'rustup.exe could not be located after installing Rust.'
    }

    $installedTargets = & $rustup target list --installed 2>$null
    if ($LASTEXITCODE -ne 0) {
        throw "Unable to query installed Rust targets with $rustup."
    }

    if ($installedTargets -contains $TargetTriple) {
        Write-Status "Rust target $TargetTriple already present"
        return
    }

    Write-Status "Installing Rust target $TargetTriple"
    & $rustup target add $TargetTriple
    if ($LASTEXITCODE -ne 0) {
        throw "Failed to install Rust target $TargetTriple."
    }
}

function Ensure-LLTS {
    $llts = Resolve-LLTSCommand
    if ($llts) {
        Add-ToProcessPath -Entry (Split-Path $llts -Parent)
        Write-Status 'LLTS already present'
        return
    }

    $cargo = Resolve-CargoCommand
    if (-not $cargo) {
        Write-Status 'Cargo was not found after installing Rust; Apollo will use its built-in TypeScript inline foreign fallback until LLTS is installed.'
        return
    }

    Add-ToProcessPath -Entry (Split-Path $cargo -Parent)
    Write-Status 'Installing LLTS via cargo'
    & $cargo install lltsc
    if ($LASTEXITCODE -ne 0) {
        Write-Status 'cargo install lltsc failed; Apollo will use its built-in TypeScript inline foreign fallback until LLTS is installed.'
        return
    }

    $llts = Resolve-LLTSCommand
    if (-not $llts) {
        Write-Status 'LLTS was not resolved after cargo install; Apollo will use its built-in TypeScript inline foreign fallback until LLTS is installed.'
        return
    }

    Add-ToProcessPath -Entry (Split-Path $llts -Parent)
}

function Ensure-Zig {
    $zig = Resolve-ZigCommand
    if ($zig) {
        Add-ToProcessPath -Entry (Split-Path $zig -Parent)
        Write-Status 'Zig already present'
        return
    }

    Install-WingetPackage -Id 'zig.zig' -Name 'Zig'

    $zig = Resolve-ZigCommand
    if (-not $zig) {
        throw 'zig.exe could not be located after installing Zig.'
    }

    Add-ToProcessPath -Entry (Split-Path $zig -Parent)
}

function Ensure-Go {
    $go = Resolve-GoCommand
    if ($go) {
        Add-ToProcessPath -Entry (Split-Path $go -Parent)
        Write-Status 'Go already present'
        return
    }

    Install-WingetPackage -Id 'GoLang.Go' -Name 'Go'

    $go = Resolve-GoCommand
    if (-not $go) {
        throw 'go.exe could not be located after installing Go.'
    }

    Add-ToProcessPath -Entry (Split-Path $go -Parent)
}

function Ensure-Node {
    $node = Resolve-NodeCommand
    $npm = Resolve-NpmCommand
    if ($node -and $npm) {
        Add-ToProcessPath -Entry (Split-Path $node -Parent)
        Add-ToProcessPath -Entry (Split-Path $npm -Parent)
        Write-Status 'Node.js and npm already present'
        return
    }

    Install-WingetPackage -Id 'OpenJS.NodeJS.LTS' -Name 'Node.js LTS'

    $node = Resolve-NodeCommand
    $npm = Resolve-NpmCommand
    if (-not $node -or -not $npm) {
        throw 'node.exe or npm could not be located after installing Node.js LTS.'
    }

    Add-ToProcessPath -Entry (Split-Path $node -Parent)
    Add-ToProcessPath -Entry (Split-Path $npm -Parent)
}

function Ensure-Swift {
    $swiftc = Resolve-SwiftcCommand
    if ($swiftc) {
        Add-ToProcessPath -Entry (Split-Path $swiftc -Parent)
        Write-Status 'Swift already present'
        return
    }

    try {
        Install-WingetPackage -Id 'Swift.Toolchain' -Name 'Swift Toolchain'
    } catch {
        $swiftc = Resolve-SwiftcCommand
        if ($swiftc) {
            Add-ToProcessPath -Entry (Split-Path $swiftc -Parent)
            Write-Status 'Swift Toolchain is already installed; continuing without a winget upgrade'
            return
        }
        Write-Status 'Swift Toolchain could not be auto-installed or resolved; Apollo inline foreign Swift will remain disabled until APOLLO_SWIFTC_EXE points to a real Swift compiler.'
        return
    }

    $swiftc = Resolve-SwiftcCommand
    if (-not $swiftc) {
        Write-Status 'swiftc.exe could not be located after installing the Swift Toolchain; Apollo inline foreign Swift will remain disabled until APOLLO_SWIFTC_EXE points to a real Swift compiler.'
        return
    }

    Add-ToProcessPath -Entry (Split-Path $swiftc -Parent)
}

function Ensure-LPython {
    $lpython = Resolve-LPythonCommand
    if ($lpython) {
        Add-ToProcessPath -Entry (Split-Path $lpython -Parent)
        Write-Status 'LPython already present'
        return
    }

    Ensure-Python
    $python = Resolve-PythonCommand
    if (-not $python) {
        Write-Status 'Python could not be resolved before installing LPython; Apollo inline foreign Python will remain disabled.'
        return
    }

    if (Test-LPythonModuleInstalled -PythonCommand $python) {
        Write-Status 'LPython Python package is already installed, but no lpython compiler command was found. Apollo inline foreign Python will remain disabled until APOLLO_LPYTHON_EXE points to a real LPython compiler.'
        return
    }

    Write-Status 'Installing LPython via pip'
    if ((Split-Path $python -Leaf) -ieq 'py.exe') {
        & $python -3 -m pip install --upgrade lpython
    } else {
        & $python -m pip install --upgrade lpython
    }
    if ($LASTEXITCODE -ne 0) {
        Write-Status 'pip could not install LPython; Apollo inline foreign Python will remain disabled until APOLLO_LPYTHON_EXE points to a real LPython compiler.'
        return
    }

    if ($scriptsDir = Resolve-PythonUserScriptsDir) {
        Add-ToProcessPath -Entry $scriptsDir
    }

    $lpython = Resolve-LPythonCommand
    if (-not $lpython) {
        if (Test-LPythonModuleInstalled -PythonCommand $python) {
            Write-Status 'The installed lpython package did not provide a compiler command on this platform. Apollo inline foreign Python will remain disabled until APOLLO_LPYTHON_EXE points to a real LPython compiler.'
            return
        }
        Write-Status 'LPython was not located after installation; Apollo inline foreign Python will remain disabled until APOLLO_LPYTHON_EXE points to a real LPython compiler.'
        return
    }

    Add-ToProcessPath -Entry (Split-Path $lpython -Parent)
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
        'mingw-w64-clang-x86_64-antlr4-runtime-cpp',
        'mingw-w64-clang-x86_64-compiler-rt',
        'mingw-w64-clang-x86_64-llvm',
        'mingw-w64-clang-x86_64-gc',
        'mingw-w64-clang-x86_64-make',
        'mingw-w64-clang-x86_64-SDL2',
        'mingw-w64-clang-x86_64-SDL2_image'
    )

    Write-Status 'Refreshing MSYS2 package metadata'
    Invoke-MsysBash -Root $MsysRoot -Command 'pacman -Sy --noconfirm'

    Write-Status 'Ensuring clang64 clang, ANTLR4 runtime, compiler-rt, llvm, make, Boehm GC, SDL2, and SDL2_image packages are installed'
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

    $asanFiles = Get-ChildItem -Path $resourceDir -Recurse -Filter 'libclang_rt.asan*.a' -ErrorAction SilentlyContinue
    if ($asanFiles) {
        return $asanFiles[0].FullName
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

function Resolve-SdlHeader {
    param([string]$IncludeDir)

    $candidates = @(
        (Join-Path $IncludeDir 'SDL.h'),
        (Join-Path $IncludeDir 'SDL2\SDL.h')
    )

    foreach ($candidate in $candidates) {
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

    $compilerDir = Join-Path $InstallDirPath 'Apollo-Main\compiler'
    if (-not (Test-Path $compilerDir)) {
        throw "Apollo compiler directory not found at $compilerDir"
    }

    $mingwBin = Join-Path $MsysRoot 'clang64\bin'
    $makeProgram = Resolve-MingwMakeProgram -MsysRoot $MsysRoot
    $includeDir = Join-Path $MsysRoot 'clang64\include'
    $libDir = Join-Path $MsysRoot 'clang64\lib'
    $rustc = Resolve-RustcCommand
    $swiftc = Resolve-SwiftcCommand
    $zig = Resolve-ZigCommand
    $lpython = Resolve-LPythonCommand
    $gollvm = Resolve-GoLLVMCommand
    $llts = Resolve-LLTSCommand
    $go = Resolve-GoCommand
    $node = Resolve-NodeCommand
    $npm = Resolve-NpmCommand

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

    $sdlHeader = Resolve-SdlHeader -IncludeDir $includeDir
    if (-not $sdlHeader) {
        throw 'SDL2 headers were not found after package installation.'
    }

    $sdlLibrary = Resolve-GcLibrary -LibDir $libDir -Names @('libSDL2.dll.a', 'libSDL2.a')
    if (-not $sdlLibrary) {
        throw 'libSDL2 was not found after package installation.'
    }

    $sdlImageLibrary = Resolve-GcLibrary -LibDir $libDir -Names @('libSDL2_image.dll.a', 'libSDL2_image.a')
    if (-not $sdlImageLibrary) {
        throw 'libSDL2_image was not found after package installation.'
    }

    $asanRuntime = Resolve-AsanRuntime -ClangxxPath (Join-Path $mingwBin 'clang++.exe')
    if (-not $asanRuntime) {
        throw 'Clang compiler-rt AddressSanitizer runtimes were not found after package installation.'
    }
    if (-not $makeProgram) {
        throw 'MSYS2 make executable was not found after package installation.'
    }

    foreach ($requiredPath in @(
            (Join-Path $mingwBin 'clang.exe'),
            (Join-Path $mingwBin 'clang++.exe'),
            (Join-Path $mingwBin 'llc.exe'),
            $makeProgram,
            (Join-Path $JavaBin 'java.exe'),
            (Join-Path $JavaBin 'javac.exe'))) {
        if (-not (Test-Path $requiredPath)) {
            throw "Required tool was not found at $requiredPath"
        }
    }

    $envFile = Join-Path $compilerDir 'toolchain-env.bat'
    $pathEntries = @($mingwBin, $JavaBin)
    $pathEntries += Split-Path $makeProgram -Parent
    foreach ($tool in @($rustc, $swiftc, $zig, $lpython, $go, $node, $npm, $gollvm, $llts)) {
        if (-not [string]::IsNullOrWhiteSpace($tool)) {
            $pathEntries += Split-Path $tool -Parent
        }
    }
    $pathEntries = $pathEntries | Where-Object { -not [string]::IsNullOrWhiteSpace($_) } | Select-Object -Unique
    $lines = @(
        '@echo off',
        'set "APOLLO_GOLLVM_REPO=https://go.googlesource.com/gollvm/"',
        'set "APOLLO_LLTS_REPO=cargo:lltsc"',
        ('set "APOLLO_MSYS64_ROOT={0}"' -f $MsysRoot),
        ('set "APOLLO_MINGW_BIN={0}"' -f $mingwBin),
        ('set "APOLLO_LLVM_BIN={0}"' -f $mingwBin),
        'set "APOLLO_NATIVE_GENERATOR=MinGW Makefiles"',
        ('set "APOLLO_NATIVE_C_COMPILER={0}"' -f (Join-Path $mingwBin 'clang.exe')),
        ('set "APOLLO_NATIVE_CXX_COMPILER={0}"' -f (Join-Path $mingwBin 'clang++.exe')),
        ('set "APOLLO_NATIVE_MAKE_PROGRAM={0}"' -f $makeProgram),
        ('set "APOLLO_NATIVE_CMAKE_PREFIX={0}"' -f (Join-Path $MsysRoot 'clang64')),
        ('set "APOLLO_GC_INCLUDE_DIR={0}"' -f $includeDir),
        ('set "APOLLO_GC_LIB_DIR={0}"' -f $libDir),
        ('set "APOLLO_SDL_INCLUDE_DIR={0}"' -f $includeDir),
        ('set "APOLLO_SDL_LIB_DIR={0}"' -f $libDir),
        ('set "APOLLO_JAVA_BIN={0}"' -f $JavaBin),
        ('set "APOLLO_RUSTC_EXE={0}"' -f $rustc),
        ('set "APOLLO_SWIFTC_EXE={0}"' -f $swiftc),
        ('set "APOLLO_ZIG_EXE={0}"' -f $zig),
        ('set "APOLLO_LPYTHON_EXE={0}"' -f $lpython),
        ('set "APOLLO_GOLLVM_EXE={0}"' -f $gollvm),
        ('set "APOLLO_TANGOLLVM_EXE={0}"' -f $gollvm),
        ('set "APOLLO_LLTS_EXE={0}"' -f $llts),
        ('set "APOLLO_GO_EXE={0}"' -f $go),
        ('set "APOLLO_NODE_EXE={0}"' -f $node),
        ('set "APOLLO_NPM_EXE={0}"' -f $npm),
        ('set "PATH={0};%PATH%"' -f ($pathEntries -join ';'))
    )
    $pathEntries += Split-Path $makeProgram -Parent
    Set-Content -Path $envFile -Value $lines -Encoding ASCII
    Write-Status "Wrote Apollo toolchain environment file to $envFile"
}

function Set-SessionToolchainEnv {
    param(
        [string]$MsysRoot,
        [string]$JavaBin
    )

    $mingwBin = Join-Path $MsysRoot 'clang64\bin'
    $makeProgram = Resolve-MingwMakeProgram -MsysRoot $MsysRoot
    $includeDir = Join-Path $MsysRoot 'clang64\include'
    $libDir = Join-Path $MsysRoot 'clang64\lib'
    $rustc = Resolve-RustcCommand
    $swiftc = Resolve-SwiftcCommand
    $zig = Resolve-ZigCommand
    $lpython = Resolve-LPythonCommand
    $gollvm = Resolve-GoLLVMCommand
    $llts = Resolve-LLTSCommand
    $go = Resolve-GoCommand
    $node = Resolve-NodeCommand
    $npm = Resolve-NpmCommand

    $env:APOLLO_MSYS64_ROOT = $MsysRoot
    $env:APOLLO_MINGW_BIN = $mingwBin
    $env:APOLLO_LLVM_BIN = $mingwBin
    $env:APOLLO_NATIVE_GENERATOR = 'MinGW Makefiles'
    $env:APOLLO_NATIVE_C_COMPILER = Join-Path $mingwBin 'clang.exe'
    $env:APOLLO_NATIVE_CXX_COMPILER = Join-Path $mingwBin 'clang++.exe'
    $env:APOLLO_NATIVE_MAKE_PROGRAM = $makeProgram
    $env:APOLLO_NATIVE_CMAKE_PREFIX = Join-Path $MsysRoot 'clang64'
    $env:APOLLO_GC_INCLUDE_DIR = $includeDir
    $env:APOLLO_GC_LIB_DIR = $libDir
    $env:APOLLO_SDL_INCLUDE_DIR = $includeDir
    $env:APOLLO_SDL_LIB_DIR = $libDir
    $env:APOLLO_JAVA_BIN = $JavaBin
    $env:APOLLO_RUSTC_EXE = $rustc
    $env:APOLLO_SWIFTC_EXE = $swiftc
    $env:APOLLO_ZIG_EXE = $zig
    $env:APOLLO_LPYTHON_EXE = $lpython
    $env:APOLLO_GOLLVM_EXE = $gollvm
    $env:APOLLO_TANGOLLVM_EXE = $gollvm
    $env:APOLLO_LLTS_EXE = $llts
    $env:APOLLO_GO_EXE = $go
    $env:APOLLO_NODE_EXE = $node
    $env:APOLLO_NPM_EXE = $npm

    $pathEntries = @($mingwBin, $JavaBin)
    if ($makeProgram) {
        $pathEntries += Split-Path $makeProgram -Parent
    }
    foreach ($tool in @($rustc, $swiftc, $zig, $lpython, $go, $node, $npm, $gollvm, $llts)) {
        if (-not [string]::IsNullOrWhiteSpace($tool)) {
            $pathEntries += Split-Path $tool -Parent
        }
    }
    $env:PATH = (($pathEntries | Where-Object { -not [string]::IsNullOrWhiteSpace($_) } | Select-Object -Unique) -join ';') + ';' + $env:PATH
}

function Invoke-ApolloValidation {
    param([string]$InstallDirPath)

    $validationScript = Join-Path $InstallDirPath 'Apollo-Main\compiler\run-test-suite.ps1'
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

$installCoreDependencies = Resolve-InstallerSelection -EnvName 'APOLLO_INSTALL_CORE_DEPS' -Prompt 'Install Apollo core dependencies (Git, Java, Python, MSYS2 clang/LLVM, ANTLR runtime, GC, SDL2)?' -InteractiveDefault $true -NonInteractiveDefault $true
$installFeatureDependencies = Resolve-InstallerSelection -EnvName 'APOLLO_INSTALL_FEATURE_DEPS' -Prompt 'Install optional inline-foreign toolchains (Rust, Go, Node, Zig, Swift, LLTS, LPython)?' -InteractiveDefault $false -NonInteractiveDefault $true

if ($installCoreDependencies) {
    Ensure-Git
    Ensure-Java
    Ensure-Python
    $msysRoot = Ensure-Msys2
    Ensure-MingwPackages -MsysRoot $msysRoot
} else {
    Write-Status 'Skipping core dependency installation; using any existing Windows toolchain that is already installed.'
    $msysRoot = Resolve-MsysRoot
}

if ($installFeatureDependencies) {
    Ensure-Node
    Ensure-Go
    Ensure-Rust
    Ensure-LLTS
    Ensure-Zig
    Ensure-Swift
    Ensure-LPython
} else {
    Write-Status 'Skipping optional inline-foreign toolchain installation'
}

if (-not $msysRoot) {
    throw 'MSYS2 could not be resolved. Re-run the installer and choose core dependency installation, or install MSYS2 manually.'
}

$javaBin = Resolve-JavaBin
Write-ToolchainEnv -InstallDirPath $InstallDir -MsysRoot $msysRoot -JavaBin $javaBin
Set-SessionToolchainEnv -MsysRoot $msysRoot -JavaBin $javaBin

if (-not (Resolve-GoLLVMCommand)) {
    Write-Status 'GoLLVM was not found in PATH; Apollo will use its built-in Go inline foreign fallback for the currently supported surface. Set APOLLO_GOLLVM_EXE after installing llvm-goc if you want to prefer an external compiler.'
}
if (-not (Resolve-LLTSCommand)) {
    Write-Status 'LLTS was not found in PATH after the cargo bootstrap attempt; Apollo will use its built-in TypeScript inline foreign fallback for the currently supported surface. Set APOLLO_LLTS_EXE after installing lltsc if you want to prefer an external compiler.'
}
if (-not (Resolve-SwiftcCommand)) {
    Write-Status 'Swift compiler was not found; Apollo inline foreign Swift will remain disabled until APOLLO_SWIFTC_EXE points to a real Swift compiler.'
}
if (-not (Resolve-LPythonCommand)) {
    Write-Status 'LPython compiler was not found; the available PyPI package only provides support modules on this machine. Apollo inline foreign Python will remain disabled until APOLLO_LPYTHON_EXE points to a real LPython compiler.'
}

if ($RunValidation) {
    Invoke-ApolloValidation -InstallDirPath $InstallDir
} else {
    Write-Status 'Skipping Apollo validation suite during dependency bootstrap. Run `powershell -NoProfile -ExecutionPolicy Bypass -File .\Apollo-Main\compiler\run-test-suite.ps1` when you want to validate the toolchain.'
}

Write-Status 'Dependency bootstrap complete'