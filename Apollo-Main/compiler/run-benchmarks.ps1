param(
    [long]$WorkloadSize = 20000000,
    [int]$RepeatCount = 5,
    [switch]$SkipCompile,
    [switch]$KeepArtifacts
)

$ErrorActionPreference = 'Stop'
$PSNativeCommandUseErrorActionPreference = $false

$compilerDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $compilerDir

$benchmarkDir = Join-Path $compilerDir 'benchmarks'
$outputRoot = Join-Path $compilerDir 'bench-output'
$generatedDir = Join-Path $outputRoot 'generated'
$binaryDir = Join-Path $outputRoot 'bin'
$reportPath = Join-Path $outputRoot 'benchmark-results.csv'

$benchmarks = @(
    [pscustomobject]@{
        Name = 'sum-loop'
        ApolloTemplate = Join-Path $benchmarkDir 'sum_loop.apollo.tmpl'
        CppTemplate = Join-Path $benchmarkDir 'sum_loop.cpp.tmpl'
        ScaleDivisor = 1
        Description = 'Numeric accumulation baseline without string-heavy runtime features'
    },
    [pscustomobject]@{
        Name = 'branch-mix'
        ApolloTemplate = Join-Path $benchmarkDir 'branch_mix.apollo.tmpl'
        CppTemplate = Join-Path $benchmarkDir 'branch_mix.cpp.tmpl'
        ScaleDivisor = 1
        Description = 'Branch-heavy integer workload baseline'
    },
    [pscustomobject]@{
        Name = 'string-runtime'
        ApolloTemplate = Join-Path $benchmarkDir 'string_runtime.apollo.tmpl'
        CppTemplate = Join-Path $benchmarkDir 'string_runtime.cpp.tmpl'
        ScaleDivisor = 200
        Description = 'Plain Apollo runtime string operations against direct C++ std::string code'
    },
    [pscustomobject]@{
        Name = 'typedef-opstruct-strings'
        ApolloTemplate = Join-Path $benchmarkDir 'typedef_opstruct_strings.apollo.tmpl'
        CppTemplate = Join-Path $benchmarkDir 'typedef_opstruct_strings.cpp.tmpl'
        ScaleDivisor = 200
        Description = 'typedef opstruct phrase surface driving the same runtime string kernel'
    },
    [pscustomobject]@{
        Name = 'gc-strings'
        ApolloTemplate = Join-Path $benchmarkDir 'gc_strings.apollo.tmpl'
        CppTemplate = Join-Path $benchmarkDir 'gc_strings.cpp.tmpl'
        ScaleDivisor = 250
        Description = 'Whole-program GC benchmark over managed string-bearing state'
    },
    [pscustomobject]@{
        Name = 'gc-typedef-opstruct-strings'
        ApolloTemplate = Join-Path $benchmarkDir 'gc_typedef_opstruct_strings.apollo.tmpl'
        CppTemplate = Join-Path $benchmarkDir 'gc_typedef_opstruct_strings.cpp.tmpl'
        ScaleDivisor = 250
        Description = 'Whole-program GC plus typedef opstruct runtime-string workload'
    }
)

function Resolve-WorkloadLimit {
    param(
        [long]$RequestedLimit,
        [object]$Benchmark
    )

    $divisor = 1
    if ($null -ne $Benchmark.PSObject.Properties['ScaleDivisor'] -and $Benchmark.ScaleDivisor -gt 0) {
        $divisor = [long]$Benchmark.ScaleDivisor
    }

    $scaled = [math]::Floor([double]$RequestedLimit / [double]$divisor)
    if ($scaled -lt 1) {
        return 1L
    }
    return [long]$scaled
}

function Resolve-Clangxx {
    if ($env:APOLLO_MINGW_BIN) {
        $candidate = Join-Path $env:APOLLO_MINGW_BIN 'clang++.exe'
        if (Test-Path $candidate) {
            return $candidate
        }
    }

    $command = Get-Command 'clang++' -ErrorAction SilentlyContinue
    if ($command) {
        return $command.Source
    }

    $toolchainEnv = Join-Path $compilerDir 'toolchain-env.bat'
    if (Test-Path $toolchainEnv) {
        $mingwLine = Get-Content -Path $toolchainEnv | Where-Object { $_ -match '^set\s+"APOLLO_MINGW_BIN=' } | Select-Object -First 1
        if ($mingwLine -match '^set\s+"APOLLO_MINGW_BIN=(.+)"$') {
            $candidate = Join-Path $Matches[1] 'clang++.exe'
            if (Test-Path $candidate) {
                return $candidate
            }
        }
    }

    throw 'clang++ could not be resolved. Ensure toolchain-env.bat points at a valid LLVM toolchain.'
}

function Expand-Template {
    param(
        [string]$TemplatePath,
        [string]$DestinationPath,
        [long]$Limit
    )

    $content = Get-Content -Path $TemplatePath -Raw
    $content = $content.Replace('__LIMIT__', [string]$Limit)
    Set-Content -Path $DestinationPath -Value $content -Encoding ASCII
}

function Invoke-CheckedProcess {
    param(
        [string]$FilePath,
        [string[]]$ArgumentList = @(),
        [string]$FailureMessage,
        [string]$StdOutPath,
        [string]$StdErrPath
    )

    $stopwatch = [System.Diagnostics.Stopwatch]::StartNew()
    $process = $null
    try {
        $process = Start-Process -FilePath $FilePath `
            -ArgumentList $ArgumentList `
            -NoNewWindow -Wait -PassThru `
            -RedirectStandardOutput $StdOutPath `
            -RedirectStandardError $StdErrPath `
            -ErrorAction Stop
    } finally {
        $stopwatch.Stop()
    }

    $stdout = if (Test-Path $StdOutPath) { [string](Get-Content -Path $StdOutPath -Raw) } else { '' }
    $stderr = if (Test-Path $StdErrPath) { [string](Get-Content -Path $StdErrPath -Raw) } else { '' }
    if ($null -eq $process) {
        throw "$FailureMessage`nProcess failed to start: $FilePath"
    }
    if ($null -eq $stdout) {
        $stdout = ''
    }
    if ($null -eq $stderr) {
        $stderr = ''
    }
    if ($process.ExitCode -ne 0) {
        throw "$FailureMessage`n$stderr$stdout"
    }

    return [pscustomobject]@{
        ElapsedMilliseconds = [math]::Round($stopwatch.Elapsed.TotalMilliseconds, 3)
        StdOut = $stdout.Trim()
        StdErr = $stderr.Trim()
    }
}

function Invoke-CompileStep {
    param(
        [string]$Name,
        [scriptblock]$Action
    )

    $stopwatch = [System.Diagnostics.Stopwatch]::StartNew()
    & $Action
    $stopwatch.Stop()
    return [math]::Round($stopwatch.Elapsed.TotalMilliseconds, 3)
}

function Measure-BinaryRuns {
    param(
        [string]$BinaryPath,
        [string]$Label,
        [int]$Count
    )

    $warmupStdOut = [System.IO.Path]::GetTempFileName()
    $warmupStdErr = [System.IO.Path]::GetTempFileName()
    try {
        $warmup = Invoke-CheckedProcess -FilePath $BinaryPath -FailureMessage "$Label warmup failed" -StdOutPath $warmupStdOut -StdErrPath $warmupStdErr
        $samples = New-Object System.Collections.Generic.List[double]
        for ($runIndex = 0; $runIndex -lt $Count; $runIndex++) {
            $stdoutPath = [System.IO.Path]::GetTempFileName()
            $stderrPath = [System.IO.Path]::GetTempFileName()
            try {
                $result = Invoke-CheckedProcess -FilePath $BinaryPath -FailureMessage "$Label run failed" -StdOutPath $stdoutPath -StdErrPath $stderrPath
                $samples.Add([double]$result.ElapsedMilliseconds)
                if ($result.StdOut -ne $warmup.StdOut) {
                    throw "$Label output changed between warmup and measured runs."
                }
            } finally {
                Remove-Item $stdoutPath, $stderrPath -ErrorAction SilentlyContinue
            }
        }

        return [pscustomobject]@{
            Output = $warmup.StdOut
            MeanMs = [math]::Round(($samples | Measure-Object -Average).Average, 3)
            MinMs = [math]::Round(($samples | Measure-Object -Minimum).Minimum, 3)
            MaxMs = [math]::Round(($samples | Measure-Object -Maximum).Maximum, 3)
            Samples = @($samples)
        }
    } finally {
        Remove-Item $warmupStdOut, $warmupStdErr -ErrorAction SilentlyContinue
    }
}

if ($RepeatCount -lt 1) {
    throw 'RepeatCount must be at least 1.'
}

if ($WorkloadSize -lt 1) {
    throw 'WorkloadSize must be at least 1.'
}

New-Item -ItemType Directory -Force -Path $outputRoot, $generatedDir, $binaryDir | Out-Null

$clangxx = Resolve-Clangxx
$results = New-Object System.Collections.Generic.List[object]

foreach ($benchmark in $benchmarks) {
    $effectiveWorkload = Resolve-WorkloadLimit -RequestedLimit $WorkloadSize -Benchmark $benchmark
    $apolloSource = Join-Path $generatedDir ($benchmark.Name + '.apollo')
    $cppSource = Join-Path $generatedDir ($benchmark.Name + '.cpp')
    $apolloBinary = Join-Path $binaryDir ($benchmark.Name + '-apollo.exe')
    $cppBinary = Join-Path $binaryDir ($benchmark.Name + '-cpp.exe')

    Expand-Template -TemplatePath $benchmark.ApolloTemplate -DestinationPath $apolloSource -Limit $effectiveWorkload
    Expand-Template -TemplatePath $benchmark.CppTemplate -DestinationPath $cppSource -Limit $effectiveWorkload

    $apolloCompileMs = $null
    $cppCompileMs = $null

    if (-not $SkipCompile) {
        $apolloCompileMs = Invoke-CompileStep -Name ($benchmark.Name + ' apollo compile') -Action {
            $compileOutput = [System.IO.Path]::GetTempFileName()
            $compileError = [System.IO.Path]::GetTempFileName()
            try {
                $execBat = Join-Path $compilerDir 'exec.bat'
                $command = "call `"$execBat`" `"$apolloSource`" -W `"$apolloBinary`""
                $null = Invoke-CheckedProcess -FilePath 'cmd.exe' -ArgumentList @('/d', '/c', $command) -FailureMessage "Apollo compile failed for $($benchmark.Name)" -StdOutPath $compileOutput -StdErrPath $compileError
            } finally {
                Remove-Item $compileOutput, $compileError -ErrorAction SilentlyContinue
            }
        }

        $cppCompileMs = Invoke-CompileStep -Name ($benchmark.Name + ' c++ compile') -Action {
            $compileOutput = [System.IO.Path]::GetTempFileName()
            $compileError = [System.IO.Path]::GetTempFileName()
            try {
                $null = Invoke-CheckedProcess -FilePath $clangxx -ArgumentList @('-O3', '-DNDEBUG', '-std=c++20', $cppSource, '-o', $cppBinary) -FailureMessage "C++ compile failed for $($benchmark.Name)" -StdOutPath $compileOutput -StdErrPath $compileError
            } finally {
                Remove-Item $compileOutput, $compileError -ErrorAction SilentlyContinue
            }
        }
    }

    if (-not (Test-Path $apolloBinary)) {
        throw "Apollo benchmark binary missing for $($benchmark.Name). Re-run without -SkipCompile first."
    }
    if (-not (Test-Path $cppBinary)) {
        throw "C++ benchmark binary missing for $($benchmark.Name). Re-run without -SkipCompile first."
    }

    $apolloTiming = Measure-BinaryRuns -BinaryPath $apolloBinary -Label ($benchmark.Name + ' Apollo') -Count $RepeatCount
    $cppTiming = Measure-BinaryRuns -BinaryPath $cppBinary -Label ($benchmark.Name + ' C++') -Count $RepeatCount

    if ($apolloTiming.Output -ne $cppTiming.Output) {
        throw "Output mismatch for $($benchmark.Name): Apollo=`"$($apolloTiming.Output)`" C++=`"$($cppTiming.Output)`""
    }

    $speedRatio = if ($cppTiming.MeanMs -eq 0) { [double]::NaN } else { [math]::Round($apolloTiming.MeanMs / $cppTiming.MeanMs, 3) }
    $results.Add([pscustomobject]@{
        Benchmark = $benchmark.Name
        Description = $benchmark.Description
        RequestedWorkload = $WorkloadSize
        EffectiveWorkload = $effectiveWorkload
        RepeatCount = $RepeatCount
        ApolloCompileMs = $apolloCompileMs
        CppCompileMs = $cppCompileMs
        ApolloMeanMs = $apolloTiming.MeanMs
        ApolloMinMs = $apolloTiming.MinMs
        ApolloMaxMs = $apolloTiming.MaxMs
        CppMeanMs = $cppTiming.MeanMs
        CppMinMs = $cppTiming.MinMs
        CppMaxMs = $cppTiming.MaxMs
        ApolloVsCppRatio = $speedRatio
        Output = $apolloTiming.Output
    }) | Out-Null
}

$results | Export-Csv -Path $reportPath -NoTypeInformation
$results | Format-Table Benchmark, EffectiveWorkload, RepeatCount, ApolloCompileMs, CppCompileMs, ApolloMeanMs, CppMeanMs, ApolloVsCppRatio -AutoSize

Write-Host ""
Write-Host "CSV report: $reportPath"

if (-not $KeepArtifacts) {
    Write-Host "Generated sources and binaries were kept in $outputRoot for inspection."
}