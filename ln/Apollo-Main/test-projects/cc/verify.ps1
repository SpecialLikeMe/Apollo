$ErrorActionPreference = 'Stop'

$projectRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$compilerDir = [System.IO.Path]::GetFullPath((Join-Path $projectRoot '..\..\compiler'))
$compilerEntry = Join-Path $compilerDir 'exec.bat'
$translator = Join-Path $projectRoot 'main.apollo'

function Invoke-CcSample {
    param(
        [Parameter(Mandatory = $true)]
        [string]$Name
    )

    $inputPath = Join-Path $projectRoot (Join-Path 'examples' "$Name.c")
    $outputPath = Join-Path $projectRoot (Join-Path 'output' "$Name.apollo")

    Push-Location $compilerDir
    try {
        $env:APOLLO_CC_INPUT = $inputPath
        $env:APOLLO_CC_OUTPUT = $outputPath

        & $compilerEntry run $translator
        if ($LASTEXITCODE -ne 0) {
            throw "cc translator failed for sample '$Name'"
        }

        & $compilerEntry run $outputPath
        if ($LASTEXITCODE -ne 0) {
            throw "generated Apollo program failed for sample '$Name'"
        }
    }
    finally {
        Pop-Location
    }
}

Invoke-CcSample -Name 'sum_to'
Invoke-CcSample -Name 'gcd'

Write-Host 'cc verification passed for sum_to and gcd.'