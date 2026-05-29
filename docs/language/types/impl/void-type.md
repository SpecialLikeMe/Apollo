# Void type — implementation

## Grammar surface

`void` is a keyword admitted by the `returnType` rule (and via `typeRef` only when checked positionally):

```antlr
returnType : 'void' | typeRef ;
```

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. When `void` appears in `returnType`, marks the surrounding function/method/closure as non-value-producing.
2. When `void` appears anywhere else (binding type, field type, parameter type, generic argument, shape slot), rejects with a diagnostic.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

- A void return type lowers to LLVM `void`.
- Implicit final returns lower to `ret void`.
- Void calls lower to LLVM calls whose result is discarded.

## Runtime support

None.

## Edges and gotchas

- Void is a return-only sentinel; it does not name a storable type. Two void-returning callables are equal in function-type sense (`fn<void(...)>`) with the same parameter list.
- A void call cannot appear in an expression that expects a value; the frontend rejects such uses at the call site, not at the function declaration.
- The implicit final return for void functions is inserted by the lowering pass; the source program does not need an explicit `return;`.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`returnType`)
- Frontend validation: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
