# Closure

## Current surface

Apollo's closure grammar is also assignment-based:

```antlr
closure : typeRef ID '=' 'clr' '->' closureCaptureList '(' params? ')' 'in' 'let' closureEntryPoint '::' '(' ')' '=' closureBody ;
```

Current grammar fixtures use shapes such as:

```apollo
fn<i32(i32)> xyz = clr-> [](i32 input) in let main::() =
    return input + 4;

auto zyx = clr-> [](i32 input) in let main::() =
    return 5;
```

## Current backend behavior

The native backend currently only supports empty capture lists. Non-empty capture lists are rejected with `closure-capture-requires-environment-lowering`.

That means the grammar can parse richer capture syntax, but current native lowering only supports `[]`.

The binding type must resolve to a function type for the native backend's closure lowering path.

## Notes

- The accepted keyword is `clr`, not `closure`.
- The body is indentation-sensitive in the current grammar.
- The `in let main::() =` portion is part of the current surface, even though earlier docs omitted it.

## See also

- `docs/language/functions-and-interop/docs/lambda.md`
- `Apollo-Main/compiler/cpp/src/visitor.cpp`
- `Apollo-Main/compiler/tests/grammar/pass/top_level_closure_surface.apollo`
- `Apollo-Main/compiler/tests/grammar/pass/top_level_auto_closure_surface.apollo`
