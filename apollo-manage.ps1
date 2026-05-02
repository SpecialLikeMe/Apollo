param(
    [Parameter(Mandatory = $true)]
    [ValidateSet('version', 'update', 'uninstall')]
    [string]$Action,

    [string]$InstallDir = $PSScriptRoot
)

$ErrorActionPreference = 'Stop'

$OfficialRepo = 'https://github.com/SpecialLikeMe/Apollo.git'
$InstallDir = [System.IO.Path]::GetFullPath($InstallDir)

function Invoke-Git {
    param(
        [Parameter(Mandatory = $true)]
        [string[]]$Arguments
    )

    $output = & git @Arguments 2>&1
    $exitCode = $LASTEXITCODE
    return [PSCustomObject]@{
        Output = $output
        ExitCode = $exitCode
    }
}

function Get-GitMetadata {
    if (-not (Test-Path (Join-Path $InstallDir '.git'))) {
        return $null
    }

    $branchResult = Invoke-Git -Arguments @('-C', $InstallDir, 'rev-parse', '--abbrev-ref', 'HEAD')
    $commitResult = Invoke-Git -Arguments @('-C', $InstallDir, 'rev-parse', '--short', 'HEAD')
    if ($branchResult.ExitCode -ne 0 -or $commitResult.ExitCode -ne 0) {
        return $null
    }

    return [PSCustomObject]@{
        Branch = ($branchResult.Output | Select-Object -First 1).Trim()
        Commit = ($commitResult.Output | Select-Object -First 1).Trim()
    }
}

function Show-Version {
    $metadata = Get-GitMetadata
    if ($null -ne $metadata) {
        Write-Output ("Apollo dev ({0}@{1})" -f $metadata.Branch, $metadata.Commit)
    } else {
        Write-Output 'Apollo dev'
    }
    Write-Output ("repo {0}" -f $OfficialRepo)
}

function Resolve-OfficialBranch {
    $result = Invoke-Git -Arguments @('ls-remote', '--symref', $OfficialRepo, 'HEAD')
    if ($result.ExitCode -eq 0) {
        foreach ($line in $result.Output) {
            if ($line -match '^ref:\s+refs/heads/(.+)\s+HEAD$') {
                return $Matches[1]
            }
        }
    }

    return 'main'
}

function Update-Apollo {
    if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
        throw 'Apollo update requires git on PATH.'
    }

    if (-not (Test-Path (Join-Path $InstallDir '.git'))) {
        throw 'Apollo update requires a git checkout. Clone https://github.com/SpecialLikeMe/Apollo and run the command from that install.'
    }

    $dirtyResult = Invoke-Git -Arguments @('-C', $InstallDir, 'status', '--porcelain', '--untracked-files=no')
    if ($dirtyResult.ExitCode -ne 0) {
        throw (($dirtyResult.Output | Out-String).Trim())
    }

    if (($dirtyResult.Output | Out-String).Trim().Length -gt 0) {
        throw 'Apollo update aborted because the worktree has tracked changes. Commit or stash them first.'
    }

    $branch = Resolve-OfficialBranch
    $fetchResult = Invoke-Git -Arguments @('-C', $InstallDir, 'fetch', '--prune', $OfficialRepo, ("refs/heads/{0}" -f $branch))
    if ($fetchResult.ExitCode -ne 0) {
        throw (($fetchResult.Output | Out-String).Trim())
    }

    $mergeResult = Invoke-Git -Arguments @('-C', $InstallDir, 'merge', '--ff-only', 'FETCH_HEAD')
    if ($mergeResult.ExitCode -ne 0) {
        throw (($mergeResult.Output | Out-String).Trim())
    }

    $metadata = Get-GitMetadata
    if ($null -ne $metadata) {
        Write-Output ("Apollo updated to {0}@{1}" -f $metadata.Branch, $metadata.Commit)
    } else {
        Write-Output 'Apollo updated.'
    }
}

function Remove-InstallDirFromPath {
    $userPath = [Environment]::GetEnvironmentVariable('Path', 'User')
    if ([string]::IsNullOrEmpty($userPath)) {
        return
    }

    $normalizedInstallDir = $InstallDir.TrimEnd('\\')
    $entries = New-Object System.Collections.Generic.List[string]
    foreach ($entry in ($userPath -split ';')) {
        if ([string]::IsNullOrWhiteSpace($entry)) {
            continue
        }

        $expandedEntry = [Environment]::ExpandEnvironmentVariables($entry)
        $candidate = try {
            [System.IO.Path]::GetFullPath($expandedEntry).TrimEnd('\\')
        } catch {
            $expandedEntry.TrimEnd('\\')
        }

        if ($candidate -ieq $normalizedInstallDir) {
            continue
        }

        $entries.Add($entry)
    }

    [Environment]::SetEnvironmentVariable('Path', ($entries -join ';'), 'User')
    Start-Process -FilePath 'rundll32.exe' -ArgumentList 'user32.dll,UpdatePerUserSystemParameters' -WindowStyle Hidden | Out-Null
}

function Uninstall-Apollo {
    $windowsAppsDir = Join-Path $env:LOCALAPPDATA 'Microsoft\WindowsApps'
    $wrapperPath = Join-Path $windowsAppsDir 'apollo.cmd'
    if (Test-Path $wrapperPath) {
        Remove-Item $wrapperPath -Force
    }

    Remove-InstallDirFromPath

    $cleanupScript = Join-Path ([System.IO.Path]::GetTempPath()) (("apollo-uninstall-{0}.cmd" -f [Guid]::NewGuid().ToString('N')))
    $escapedInstallDir = $InstallDir.Replace('"', '""')
    @"
@echo off
pushd "%TEMP%"
ping 127.0.0.1 -n 3 >nul
rmdir /s /q "$escapedInstallDir"
del /q "%~f0"
"@ | Set-Content -Path $cleanupScript -Encoding Ascii

    Start-Process -FilePath 'cmd.exe' -ArgumentList '/d', '/c', ('"{0}"' -f $cleanupScript) -WindowStyle Hidden | Out-Null
    Write-Output ("Apollo uninstall started. CLI shims were removed and {0} will be deleted after this process exits." -f $InstallDir)
}

switch ($Action) {
    'version' {
        Show-Version
    }
    'update' {
        Update-Apollo
    }
    'uninstall' {
        Uninstall-Apollo
    }
}
