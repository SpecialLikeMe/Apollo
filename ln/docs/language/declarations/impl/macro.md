# Macro declaration — implementation

This page covers the current callable macro declaration surface:

- `extern [&macro]`
- `__preprocess [&macro]`
- `extern [&dynamic_macro]`
- `__preprocess [&dynamic_macro]`

For the separate tokenstream proc-macro surface, see `proc-macro.md` in the same directory.

## Grammar surface

From `Apollo-Main/compiler/compilerv1.g4`:

```antlr
macro        : macroQualifier ID '(' params? ')' block ;
macroQualifier
    : 'extern [&macro]'
    | '__preprocess [&macro]'
    | 'extern [&dynamic_macro]'
    | '__preprocess [&dynamic_macro]'
    ;
```

The declaration uses the normal Apollo `params` rule and a normal block body. There is no grammar support here for the older `macro name(expr value)` splice-style surface.

## What the frontend currently does

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp` currently treats dynamic macros as a runtime-extension signal:

- when a `macroQualifier` contains `dynamic_macro`, the runtime records that the compilation needs runtime extensions
- plain `[&macro]` declarations do not currently trigger additional macro-specific lowering paths there

## Preprocessor interaction

`Apollo-Main/compiler/cpp/src/apollo_source_preprocessor.cpp` recognizes these qualified macro declarations when it rewrites namespace-scoped declarations. That code matches both plain and dynamic macro qualifiers.

The same preprocessor file also implements the separate `attr` / `derive` proc-macro system. That proc-macro path is where tokenstream rewriting and `quote { ... }` support currently live.

## Dynamic macro runtime wiring

Dynamic macro declarations are exercised by `Apollo-Main/compiler/tests/grammar/pass/opstruct_runtime_surface.apollo` and the grammar harness checks that the generated C++ registers and invokes them through `runtime_support/apo_runtime_extensions.hpp`.

That makes `[&dynamic_macro]` a runtime-extension hook, not the old compile-time AST-expansion model described in earlier docs.

## Practical reading

If you are trying to understand what is implemented today, use these files as the source of truth:

- `Apollo-Main/compiler/compilerv1.g4`
- `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- `Apollo-Main/compiler/cpp/src/apollo_source_preprocessor.cpp`
- `Apollo-Main/compiler/tests/grammar/pass/language_surface.apollo`
- `Apollo-Main/compiler/tests/grammar/pass/syntax_surface.apollo`
- `Apollo-Main/compiler/tests/grammar/pass/opstruct_runtime_surface.apollo`
