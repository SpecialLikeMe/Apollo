# Apollo `cc`

This project is a tiny source-to-source compiler written in Apollo. It accepts a deliberately small but Turing-complete subset of C and emits Apollo source.

Implementation note:

- The translator is intentionally line-oriented and conservative. It favors predictable behavior on the current Apollo compiler surface over a larger but more fragile parser.

Supported subset:

- Function definitions with `int` and `void` return types
- `int` parameters
- Local `int` declarations with optional initializers
- Assignment statements
- `return`
- `if { ... } else { ... }`
- `while { ... }`
- Integer literals, identifiers, function calls, unary `-` / `!`, and binary `* / % + - < <= > >= == != && ||`
- `//` and `/* ... */` comments

Current limitations:

- Control-flow bodies must use braces
- The translator expects simple statement-oriented formatting and is happiest when each statement stays on one line
- No pointers, arrays, structs, strings, or preprocessor support
- No declarations after the subset types above

Usage:

1. Run the compiler from this directory with `APOLLO_CC_INPUT` and `APOLLO_CC_OUTPUT` set, or let it use the default `examples/sum_to.c` and `output/sum_to.apollo` paths.
2. Compile the generated Apollo file with the normal Apollo compiler.

Recommended verification flow on Windows PowerShell:

```powershell
$env:APOLLO_CC_INPUT = (Join-Path $PWD 'examples\sum_to.c')
$env:APOLLO_CC_OUTPUT = (Join-Path $PWD 'output\sum_to.apollo')
..\..\compiler\exec.bat run .\main.apollo
..\..\compiler\exec.bat run $env:APOLLO_CC_OUTPUT
```

Reusable verification:

- Run `./verify.ps1` from this directory to translate and execute both bundled samples end to end.