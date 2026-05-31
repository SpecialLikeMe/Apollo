# Dereference operator — implementation

## Grammar surface

The unary `*` operator appears as a high-precedence prefix operator in the expression grammar:

```antlr
dereferenceExpr : '*' unaryExpr ;
```

It shares the precedence level with other unary operators (`&`, `!`, unary `-`).

## Parse tree shape

A `DereferenceExprContext` exposes the inner `unaryExpr()` operand.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Resolves the operand's type. It must be a reference type or a pointer type.
2. The expression's result type is the inner type of the reference/pointer.
3. If the operand is an immutable reference and the dereference appears on the left-hand side of an assignment, rejects with a diagnostic.
4. For pointer operands, no borrow tracking is applied.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

- Read context: lowers to an LLVM `load` from the pointer.
- Write context: the surrounding assignment lowers to a `store` through the pointer.
- The `->` operator desugars to `(*p).field` and lowers as `getelementptr` + `load`/`store`.

## Runtime support

None.

## Edges and gotchas

- The operator works uniformly on references and pointers because both lower to LLVM pointers.
- Apollo does not allow implicit dereferencing. Each read or write through a reference/pointer must spell `*` (or `->` for field access).
- The frontend treats `*expr` on the LHS of `=` specially to distinguish read from write contexts.
- Stacked dereferences `**p` require `p` to be a pointer-to-pointer (or a reference-to-pointer); the frontend rejects more dereferences than the type allows.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`dereferenceExpr`)
- Frontend: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
