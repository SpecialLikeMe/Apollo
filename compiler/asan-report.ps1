param(
    [string]$ExecutablePath,
    [string]$ReportPath,
    [string]$WorkingDirectory = ""
)

function Get-LineColor {
    param([string]$Line)

    if ([string]::IsNullOrWhiteSpace($Line)) {
        return $null
    }

    if ($Line -match '(?i)^==\d+==ERROR: AddressSanitizer:|\bFATAL\b|^==\d+==ABORTING') {
        return 'Purple'
    }
    if ($Line -match '(?i)terminate called after throwing|uncaught exception|unhandled exception|std::exception|what\(\):') {
        return 'Purple'
    }
    if ($Line -match '(?i)\b(write|read) of size\b|heap-buffer-overflow|stack-buffer-overflow|global-buffer-overflow|use-after-free|heap-use-after-free|double-free|invalid-free|stack-use-after-(return|scope)') {
        return 'Red'
    }
    if ($Line -match '(?i)^\s*#\d+\s|allocated by thread|freed by thread|previously allocated by thread|shadow bytes around|is located|inside of|thread T\d+|scariness score|hint:') {
        return 'BrightMagenta'
    }
    if ($Line -match '(?i)\b(warning|summary|note|LeakSanitizer)\b') {
        return 'Yellow'
    }
    if ($Line -match '(?i)completed without reported sanitizer findings|no sanitizer findings detected') {
        return 'Green'
    }

    return $null
}

function Write-ColoredLine {
    param([string]$Line)

    $color = Get-LineColor $Line
    switch ($color) {
        'Green' {
            Write-Host ([char]27 + '[92m' + $Line + [char]27 + '[0m')
            return
        }
        'Yellow' {
            Write-Host ([char]27 + '[93m' + $Line + [char]27 + '[0m')
            return
        }
        'Red' {
            Write-Host ([char]27 + '[91m' + $Line + [char]27 + '[0m')
            return
        }
        'BrightMagenta' {
            Write-Host ([char]27 + '[95m' + $Line + [char]27 + '[0m')
            return
        }
        'Purple' {
            Write-Host ([char]27 + '[38;2;168;85;247m' + $Line + [char]27 + '[0m')
            return
        }
        default {
            Write-Host $Line
            return
        }
    }
}

function Resolve-NormalizedPath {
    param([string]$PathValue)

    if ([string]::IsNullOrWhiteSpace($PathValue)) {
        return $null
    }

    $trimmed = $PathValue.Trim().Trim('"')
    try {
        return [System.IO.Path]::GetFullPath($trimmed)
    } catch {
        return $null
    }
}

function Should-DisplayAnalyzerLine {
    param([string]$Line)

    if ([string]::IsNullOrWhiteSpace($Line)) {
        return $false
    }

    return $null -ne (Get-LineColor $Line)
}

function Write-ColoredReport {
    param(
        [string[]]$Lines,
        [switch]$OnlyIssueLines
    )

    $foundIssue = $false
    foreach ($line in $Lines) {
        if ([string]::IsNullOrWhiteSpace($line)) {
            continue
        }
        if ($OnlyIssueLines -and -not (Should-DisplayAnalyzerLine $line)) {
            continue
        }
        Write-ColoredLine $line
        if ($line -match '(?i)AddressSanitizer|LeakSanitizer|\b(error|fatal|warning|summary)\b') {
            $foundIssue = $true
        }
        if ($line -match '(?i)terminate called after throwing|uncaught exception|unhandled exception|std::exception|what\(\):') {
            $foundIssue = $true
        }
    }

    return $foundIssue
}

if ([string]::IsNullOrWhiteSpace($ExecutablePath) -and [string]::IsNullOrWhiteSpace($ReportPath)) {
    Write-Host 'Provide either -ExecutablePath or -ReportPath.' -ForegroundColor Red
    exit 1
}

if (-not [string]::IsNullOrWhiteSpace($ExecutablePath) -and -not [string]::IsNullOrWhiteSpace($ReportPath)) {
    Write-Host 'Use either -ExecutablePath or -ReportPath, not both at the same time.' -ForegroundColor Red
    exit 1
}

if (-not [string]::IsNullOrWhiteSpace($ReportPath)) {
    $resolvedReportPath = Resolve-NormalizedPath $ReportPath
    if ($null -eq $resolvedReportPath -or -not (Test-Path -LiteralPath $resolvedReportPath)) {
        Write-Host "ASan report file not found: $ReportPath" -ForegroundColor Red
        exit 1
    }

    $reportLines = Get-Content -LiteralPath $resolvedReportPath -Encoding UTF8
    $foundIssue = Write-ColoredReport $reportLines
    if (-not $foundIssue) {
        Write-Host 'ASan completed without reported sanitizer findings.' -ForegroundColor Green
    }
    exit 0
}

if (-not (Test-Path -LiteralPath $ExecutablePath)) {
    Write-Host "ASan executable not found: $ExecutablePath" -ForegroundColor Red
    exit 1
}

$resolvedExecutable = Resolve-NormalizedPath $ExecutablePath
$resolvedWorkingDirectory = $null
$requestedWorkingDirectory = Resolve-NormalizedPath $WorkingDirectory

$resolvedExecutable = Resolve-NormalizedPath $ExecutablePath
$resolvedWorkingDirectory = if ([string]::IsNullOrWhiteSpace($WorkingDirectory)) {
    Split-Path -LiteralPath $resolvedExecutable -Parent
} else {
    if ($requestedWorkingDirectory -and (Test-Path -LiteralPath $requestedWorkingDirectory)) {
        $requestedWorkingDirectory
    } else {
        Split-Path -LiteralPath $resolvedExecutable -Parent
    }
}

$startInfo = New-Object System.Diagnostics.ProcessStartInfo
$startInfo.FileName = $resolvedExecutable
$startInfo.WorkingDirectory = $resolvedWorkingDirectory
$startInfo.UseShellExecute = $false
$startInfo.RedirectStandardOutput = $true
$startInfo.RedirectStandardError = $true
$startInfo.EnvironmentVariables['ASAN_OPTIONS'] = 'color=never:detect_leaks=0:halt_on_error=0'

$process = New-Object System.Diagnostics.Process
$process.StartInfo = $startInfo

try {
    [void]$process.Start()
    $stdoutTask = $process.StandardOutput.ReadToEndAsync()
    $stderrTask = $process.StandardError.ReadToEndAsync()
    $process.WaitForExit()

    $stdoutIssue = Write-ColoredReport ($stdoutTask.Result -split "`r?`n") -OnlyIssueLines
    $stderrIssue = Write-ColoredReport ($stderrTask.Result -split "`r?`n")
    if (-not $stdoutIssue -and -not $stderrIssue -and $process.ExitCode -ne 0) {
        Write-Host ([char]27 + '[38;2;168;85;247m' + ("Analyzer detected abnormal termination with exit code {0}." -f $process.ExitCode) + [char]27 + '[0m')
    }
    if (-not $stdoutIssue -and -not $stderrIssue -and $process.ExitCode -eq 0) {
        Write-Host 'ASan completed without reported sanitizer findings.' -ForegroundColor Green
    }

    exit $process.ExitCode
} finally {
    $process.Dispose()
}