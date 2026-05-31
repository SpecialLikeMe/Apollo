# Bool literals — implementation

## Grammar surface

```antlr
boolLit : 'true' | 'false' ;
```

`true` and `false` are reserved keywords at the lexer level.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Resolves the literal to a constant `bool` value.
2. Sets the expression's type to `bool`.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

- `true` lowers to LLVM `i1 1`.
- `false` lowers to LLVM `i1 0`.

## Runtime support

None.

## Edges and gotchas

- The literals are case-sensitive — `True` or `TRUE` are identifiers, not literals.
- No implicit conversion to or from integer types. `nconst bool b = 0;` is rejected by the type system.
- LLVM's `i1` representation is what bool lowers to; storage of bool in memory is typically `i8` for alignment but values stay as `i1` in registers.

## Source of truth

- Grammar / lexer: `Apollo-Main/compiler/compilerv1.g4` (`boolLit`)
- Frontend: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
