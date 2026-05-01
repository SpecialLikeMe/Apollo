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

$preserve = Get-NormalizedPath $PreservePath
$targets = New-Object System.Collections.Generic.List[string]

if (-not [string]::IsNullOrWhiteSpace($ManifestPath) -and (Test-Path -LiteralPath $ManifestPath)) {
    foreach ($line in Get-Content -LiteralPath $ManifestPath -Encoding UTF8) {
        if (-not [string]::IsNullOrWhiteSpace($line)) {
            $targets.Add($line.Trim())
        }
    }
}

if (-not [string]::IsNullOrWhiteSpace($OutputDir) -and (Test-Path -LiteralPath $OutputDir)) {
    foreach ($child in Get-ChildItem -LiteralPath $OutputDir -Force -ErrorAction SilentlyContinue) {
        $targets.Add($child.FullName)
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

$normalizedOutputDir = Get-NormalizedPath $OutputDir
if ($normalizedOutputDir -and (Test-Path -LiteralPath $normalizedOutputDir)) {
    $remaining = Get-ChildItem -LiteralPath $normalizedOutputDir -Force -ErrorAction SilentlyContinue | Select-Object -First 1
    if ($null -eq $remaining) {
        Remove-PathWithRetries $normalizedOutputDir
    }
}