param(
    [string]$ManifestPath = "",
    [string]$OutputDir = "",
    [string]$PreservePath = ""
)

function Get-NormalizedPath {
    param([string]$PathValue)

    if ([string]::IsNullOrWhiteSpace($PathValue)) {
        return $null
    }

    try {
        return [System.IO.Path]::GetFullPath($PathValue)
    } catch {
        return $null
    }
}

function Remove-PathWithRetries {
    param([string]$TargetPath)

    for ($attempt = 0; $attempt -lt 15; $attempt += 1) {
        try {
            if (Test-Path -LiteralPath $TargetPath) {
                Remove-Item -LiteralPath $TargetPath -Force -Recurse -ErrorAction Stop
            }
            return
        } catch {
            Start-Sleep -Milliseconds 200
        }
    }
}

function Should-PreserveOutputChild {
    param(
        [string]$ChildPath,
        [string]$NormalizedOutputDir
    )

    if ([string]::IsNullOrWhiteSpace($ChildPath) -or [string]::IsNullOrWhiteSpace($NormalizedOutputDir)) {
        return $false
    }

    $normalizedChild = Get-NormalizedPath $ChildPath
    if ($null -eq $normalizedChild) {
        return $false
    }

    $outputClasses = Join-Path $NormalizedOutputDir 'classes'
    $outputCache = Join-Path $NormalizedOutputDir 'cache'
    $outputDeps = Join-Path $NormalizedOutputDir 'deps'
    $outputLl = Join-Path $NormalizedOutputDir 'output.ll'
    if ($normalizedChild -ieq $outputClasses -or $normalizedChild -ieq $outputCache -or $normalizedChild -ieq $outputDeps -or $normalizedChild -ieq $outputLl) {
        return $true
    }

    if ([System.IO.Path]::GetExtension($normalizedChild) -ieq '.pch') {
        return $true
    }

    $fileName = [System.IO.Path]::GetFileName($normalizedChild)
    if ($fileName -like 'apollo_direct_ir_runtime_support.*') {
        return $true
    }

    return $false
}

$preserve = Get-NormalizedPath $PreservePath
$normalizedOutputDir = Get-NormalizedPath $OutputDir
$targets = New-Object System.Collections.Generic.List[string]

if (-not [string]::IsNullOrWhiteSpace($ManifestPath) -and (Test-Path -LiteralPath $ManifestPath)) {
    foreach ($line in Get-Content -LiteralPath $ManifestPath -Encoding UTF8) {
        if (-not [string]::IsNullOrWhiteSpace($line)) {
            $targets.Add($line.Trim())
        }
    }
}

if ($normalizedOutputDir -and (Test-Path -LiteralPath $normalizedOutputDir)) {
    foreach ($child in Get-ChildItem -LiteralPath $OutputDir -Force -ErrorAction SilentlyContinue) {
        if (-not (Should-PreserveOutputChild -ChildPath $child.FullName -NormalizedOutputDir $normalizedOutputDir)) {
            $targets.Add($child.FullName)
        }
    }
}

$uniqueTargets = $targets |
    ForEach-Object { Get-NormalizedPath $_ } |
    Where-Object { $_ -and ($null -eq $preserve -or $_ -ine $preserve) } |
    Sort-Object -Unique |
    Sort-Object Length -Descending

foreach ($target in $uniqueTargets) {
    Remove-PathWithRetries $target
}

if ($normalizedOutputDir -and (Test-Path -LiteralPath $normalizedOutputDir)) {
    $remaining = Get-ChildItem -LiteralPath $normalizedOutputDir -Force -ErrorAction SilentlyContinue |
        Where-Object { -not (Should-PreserveOutputChild -ChildPath $_.FullName -NormalizedOutputDir $normalizedOutputDir) } |
        Select-Object -First 1
    if ($null -eq $remaining) {
        $preservedEntries = Get-ChildItem -LiteralPath $normalizedOutputDir -Force -ErrorAction SilentlyContinue | Select-Object -First 1
        if ($null -ne $preservedEntries) {
            return
        }
        Remove-PathWithRetries $normalizedOutputDir
    }
}