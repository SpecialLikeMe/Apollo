param(
    [Parameter(Mandatory = $true)]
    [ValidateSet('version', 'update', 'uninstall')]
    [string]$Action,

    [string]$InstallDir = $PSScriptRoot
)

$ErrorActionPreference = 'Stop'

$OfficialRepo = 'https://github.com/SpecialLikeMe/Apollo.git'
$InstallDir = [System.IO.Path]::GetFullPath($InstallDir)

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

function Format-ProcessArgument {
    param(
        [Parameter(Mandatory = $true)]
        [AllowEmptyString()]
        [string]$Value
    )

    if ($Value.Length -eq 0) {
        return '""'
    }

    if ($Value -notmatch '[\s"]') {
        return $Value
    }

    return '"' + ($Value -replace '"', '\"') + '"'
}

function Invoke-Git {
    param(
        [Parameter(Mandatory = $true)]
        [string[]]$Arguments
    )

    $git = Resolve-GitCommand
    if (-not $git) {
        throw 'Apollo update requires git on PATH.'
    }

    $startInfo = New-Object System.Diagnostics.ProcessStartInfo
    $startInfo.FileName = $git
    $startInfo.UseShellExecute = $false
    $startInfo.RedirectStandardOutput = $true
    $startInfo.RedirectStandardError = $true
    $startInfo.CreateNoWindow = $true
    $startInfo.Arguments = (($Arguments | ForEach-Object { Format-ProcessArgument -Value $_ }) -join ' ')

    $process = New-Object System.Diagnostics.Process
    $process.StartInfo = $startInfo

    try {
        [void]$process.Start()
        $stdout = $process.StandardOutput.ReadToEnd()
        $stderr = $process.StandardError.ReadToEnd()
        $process.WaitForExit()
        $exitCode = $process.ExitCode
    } finally {
        $process.Dispose()
    }

    $combinedOutput = @()
    if (-not [string]::IsNullOrWhiteSpace($stdout)) {
        $combinedOutput += ($stdout -split "`r?`n")
    }
    if (-not [string]::IsNullOrWhiteSpace($stderr)) {
        $combinedOutput += ($stderr -split "`r?`n")
    }

    return [PSCustomObject]@{
        Output = @($combinedOutput | Where-Object { $_ -ne '' })
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

function Connect-InstallToOfficialRepo {
    param(
        [Parameter(Mandatory = $true)]
        [string]$Branch
    )

    if (Test-Path (Join-Path $InstallDir '.git')) {
        return
    }

    $tempRepo = Join-Path ([System.IO.Path]::GetTempPath()) ("apollo-update-{0}" -f [Guid]::NewGuid().ToString('N'))
    try {
        $cloneResult = Invoke-Git -Arguments @('clone', '--branch', $Branch, '--single-branch', $OfficialRepo, $tempRepo)
        if ($cloneResult.ExitCode -ne 0) {
            throw (($cloneResult.Output | Out-String).Trim())
        }

        Copy-Item -LiteralPath (Join-Path $tempRepo '.git') -Destination (Join-Path $InstallDir '.git') -Recurse -Force

        $resetResult = Invoke-Git -Arguments @('-C', $InstallDir, 'reset', '--hard', 'HEAD')
        if ($resetResult.ExitCode -ne 0) {
            throw (($resetResult.Output | Out-String).Trim())
        }
    } finally {
        Remove-Item -LiteralPath $tempRepo -Recurse -Force -ErrorAction SilentlyContinue
    }
}

function Update-Apollo {
    if (-not (Resolve-GitCommand)) {
        throw 'Apollo update requires git on PATH.'
    }

    $branch = Resolve-OfficialBranch
    Connect-InstallToOfficialRepo -Branch $branch

    $dirtyResult = Invoke-Git -Arguments @('-C', $InstallDir, 'status', '--porcelain', '--untracked-files=no')
    if ($dirtyResult.ExitCode -ne 0) {
        throw (($dirtyResult.Output | Out-String).Trim())
    }

    if (($dirtyResult.Output | Out-String).Trim().Length -gt 0) {
        throw 'Apollo update aborted because the worktree has tracked changes. Commit or stash them first.'
    }

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
