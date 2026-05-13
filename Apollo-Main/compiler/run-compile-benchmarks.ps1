param(
    [int]$WarmRuns = 3,
    [switch]$KeepArtifacts
)

$ErrorActionPreference = 'Stop'
$PSNativeCommandUseErrorActionPreference = $false

$compilerDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $compilerDir

$outputRoot = Join-Path $compilerDir 'bench-output'
$binaryDir = Join-Path $outputRoot 'compile-bin'
$reportPath = Join-Path $outputRoot 'compile-benchmark-results.csv'
$fixtures = @(
    [pscustomobject]@{ Name = 'implicit-this-small'; Path = 'tests\grammar\pass\implicit_this_surface.apollo' },
    [pscustomobject]@{ Name = 'typedef-opstruct-phrase'; Path = 'tests\grammar\pass\typedef_opstruct_instance_phrase.apollo' },
    [pscustomobject]@{ Name = 'autofmt-small'; Path = 'tests\grammar\pass\autofmt_surface.apollo' }
)

function Invoke-ApolloCompile {
    param(
        [string]$SourcePath,
        [string]$BinaryPath
    )

    $stdoutPath = [System.IO.Path]::GetTempFileName()
    $stderrPath = [System.IO.Path]::GetTempFileName()
    try {
        $stopwatch = [System.Diagnostics.Stopwatch]::StartNew()
        $command = "call .\exec.bat `"$SourcePath`" -W `"$BinaryPath`""
        $process = Start-Process -FilePath 'cmd.exe' -ArgumentList @('/d', '/c', $command) -NoNewWindow -Wait -PassThru -RedirectStandardOutput $stdoutPath -RedirectStandardError $stderrPath
        $stopwatch.Stop()
        $stdout = if (Test-Path $stdoutPath) { [string](Get-Content -Raw -Path $stdoutPath) } else { '' }
        $stderr = if (Test-Path $stderrPath) { [string](Get-Content -Raw -Path $stderrPath) } else { '' }
        if ($process.ExitCode -ne 0) {
            throw "Apollo compile failed for $SourcePath`n$stderr$stdout"
        }
        return [math]::Round($stopwatch.Elapsed.TotalMilliseconds, 3)
    }
    finally {
        Remove-Item $stdoutPath, $stderrPath -ErrorAction SilentlyContinue
    }
}

function Reset-FrontendArtifacts {
    Remove-Item 'output\classes' -Recurse -Force -ErrorAction SilentlyContinue
    Remove-Item 'output\cache' -Recurse -Force -ErrorAction SilentlyContinue
    Remove-Item 'output\*.pch' -Force -ErrorAction SilentlyContinue
    Remove-Item 'output\output.ll', 'output\output.obj', 'output\output.bin', 'output\output.exe', 'output\output.cpp' -Force -ErrorAction SilentlyContinue
    New-Item -ItemType Directory -Force -Path 'output\classes' | Out-Null
}

if ($WarmRuns -lt 1) {
    throw 'WarmRuns must be at least 1.'
}

New-Item -ItemType Directory -Force -Path $outputRoot, $binaryDir | Out-Null

$results = foreach ($fixture in $fixtures) {
    Reset-FrontendArtifacts
    $binaryPath = Join-Path $binaryDir ($fixture.Name + '.exe')
    $coldMs = Invoke-ApolloCompile -SourcePath $fixture.Path -BinaryPath $binaryPath

    $samples = New-Object System.Collections.Generic.List[double]
    for ($index = 0; $index -lt $WarmRuns; $index++) {
        $samples.Add((Invoke-ApolloCompile -SourcePath $fixture.Path -BinaryPath $binaryPath))
    }

    [pscustomobject]@{
        Fixture = $fixture.Name
        Source = $fixture.Path
        ColdCompileMs = $coldMs
        WarmMeanMs = [math]::Round(($samples | Measure-Object -Average).Average, 3)
        WarmMinMs = [math]::Round(($samples | Measure-Object -Minimum).Minimum, 3)
        WarmMaxMs = [math]::Round(($samples | Measure-Object -Maximum).Maximum, 3)
        WarmRuns = $WarmRuns
    }
}

$results | Export-Csv -NoTypeInformation -Path $reportPath
$results | Format-Table Fixture, ColdCompileMs, WarmMeanMs, WarmMinMs, WarmMaxMs, WarmRuns -AutoSize
Write-Host ""
Write-Host "CSV report: $reportPath"

if (-not $KeepArtifacts) {
    Write-Host "Binaries retained in $binaryDir for inspection."
}