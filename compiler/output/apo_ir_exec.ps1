param(
    [string]$Kind = '',
    [string]$Name = ''
)
$outputDir = Join-Path (Get-Location) 'output'
$irPath = Join-Path $outputDir 'apo_ir.txt'

function Unescape-Field([string]$Value) {
    $builder = New-Object System.Text.StringBuilder
    $escaping = $false
    foreach ($char in $Value.ToCharArray()) {
        if ($escaping) {
            switch ($char) {
                'n' { [void]$builder.Append("`n") }
                'r' { [void]$builder.Append("`r") }
                't' { [void]$builder.Append("`t") }
                default { [void]$builder.Append($char) }
            }
            $escaping = $false
            continue
        }
        if ($char -eq '\\') {
            $escaping = $true
            continue
        }
        [void]$builder.Append($char)
    }
    if ($escaping) { [void]$builder.Append('\\') }
    return $builder.ToString()
}

function Split-Record([string]$Line) {
    $fields = New-Object System.Collections.Generic.List[string]
    $builder = New-Object System.Text.StringBuilder
    $escaping = $false
    foreach ($char in $Line.ToCharArray()) {
        if ($escaping) {
            switch ($char) {
                'n' { [void]$builder.Append("`n") }
                'r' { [void]$builder.Append("`r") }
                't' { [void]$builder.Append("`t") }
                default { [void]$builder.Append($char) }
            }
            $escaping = $false
            continue
        }
        if ($char -eq '\\') {
            $escaping = $true
            continue
        }
        if ($char -eq "`t") {
            $fields.Add($builder.ToString())
            $builder.Clear() | Out-Null
            continue
        }
        [void]$builder.Append($char)
    }
    if ($escaping) { [void]$builder.Append('\\') }
    $fields.Add($builder.ToString())
    return ,$fields.ToArray()
}

function Find-Record([string]$Kind, [string]$Name) {
    if (-not (Test-Path $irPath)) { return $null }
    $lines = Get-Content -Path $irPath -Encoding UTF8
    for ($index = $lines.Length - 1; $index -ge 0; $index -= 1) {
        $line = $lines[$index]
        if ([string]::IsNullOrEmpty($line)) { continue }
        $fields = Split-Record $line
        if ($fields.Length -lt 5) { continue }
        if ($Kind -and $fields[0] -ne $Kind) { continue }
        if ($fields[1] -ne $Name) { continue }
        return ,$fields
    }
    return $null
}

function Run-Payload([string]$Lang, [string]$Code) {
    New-Item -ItemType Directory -Force -Path $outputDir | Out-Null
    switch ($Lang) {
        'cpp' { Set-Content -Path (Join-Path $outputDir 'apo_async_cpp.cpp') -Value $Code -Encoding UTF8; cmd /c 'g++ output\apo_async_cpp.cpp -o output\apo_async_cpp.exe && .\output\apo_async_cpp.exe'; return $LASTEXITCODE }
        'c' { Set-Content -Path (Join-Path $outputDir 'apo_async_c.c') -Value $Code -Encoding UTF8; cmd /c 'gcc output\apo_async_c.c -o output\apo_async_c.exe && .\output\apo_async_c.exe'; return $LASTEXITCODE }
        'rs' { Set-Content -Path (Join-Path $outputDir 'apo_async_rs.rs') -Value $Code -Encoding UTF8; cmd /c 'rustc output\apo_async_rs.rs -o output\apo_async_rs.exe && .\output\apo_async_rs.exe'; return $LASTEXITCODE }
        'java' { Set-Content -Path (Join-Path $outputDir 'ApoAsyncTask.java') -Value $Code -Encoding UTF8; cmd /c 'javac output\ApoAsyncTask.java -d output && java -cp output ApoAsyncTask'; return $LASTEXITCODE }
        'cs' { Set-Content -Path (Join-Path $outputDir 'ApoAsyncTask.cs') -Value $Code -Encoding UTF8; cmd /c 'csc /nologo /out:output\ApoAsyncTask.exe output\ApoAsyncTask.cs && .\output\ApoAsyncTask.exe'; return $LASTEXITCODE }
        'py' { Set-Content -Path (Join-Path $outputDir 'apo_async.py') -Value $Code -Encoding UTF8; cmd /c 'py output\apo_async.py || python output\apo_async.py'; return $LASTEXITCODE }
        'js' { Set-Content -Path (Join-Path $outputDir 'apo_async.js') -Value $Code -Encoding UTF8; cmd /c 'node output\apo_async.js'; return $LASTEXITCODE }
        'ts' { Set-Content -Path (Join-Path $outputDir 'apo_async.ts') -Value $Code -Encoding UTF8; cmd /c 'tsc output\apo_async.ts --outDir output && node output\apo_async.js'; return $LASTEXITCODE }
        'go' { Set-Content -Path (Join-Path $outputDir 'apo_async_go.go') -Value $Code -Encoding UTF8; cmd /c 'go build -o output\apo_async_go.exe output\apo_async_go.go && .\output\apo_async_go.exe'; return $LASTEXITCODE }
        'php' { Set-Content -Path (Join-Path $outputDir 'apo_async.php') -Value $Code -Encoding UTF8; cmd /c 'php output\apo_async.php'; return $LASTEXITCODE }
        'rb' { Set-Content -Path (Join-Path $outputDir 'apo_async.rb') -Value $Code -Encoding UTF8; cmd /c 'ruby output\apo_async.rb'; return $LASTEXITCODE }
        'kt' { Set-Content -Path (Join-Path $outputDir 'ApoAsyncTask.kt') -Value $Code -Encoding UTF8; cmd /c 'kotlinc output\ApoAsyncTask.kt -include-runtime -d output\ApoAsyncTask.jar && java -jar output\ApoAsyncTask.jar'; return $LASTEXITCODE }
        default { Write-Error "unsupported stored language: $Lang"; return -1 }
    }
}

$record = Find-Record $Kind $Name
if ($null -eq $record) {
    Write-Error "IR entry not found: $Kind $Name"
    exit 1
}
exit (Run-Payload $record[3] $record[4])
