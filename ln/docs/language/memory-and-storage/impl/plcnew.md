# Plcnew / delete — implementation

## Grammar surface

```antlr
plcnewExpr : 'plcnew' typeRef '(' callArgs? ')' ;
deleteStmt : 'delete' expression ';' ;
```

## Parse tree shape

`PlcnewExprContext` exposes the type argument `typeRef()` and the `callArgs()` matching constructor arguments. `DeleteStmtContext` exposes the pointer `expression()`.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Resolves the type and looks up its implicit (or explicit) constructor.
2. Type-checks the call arguments against the constructor's parameter list.
3. Result type is `T*`.
4. For delete, verifies the operand is a pointer type and records the type for destructor dispatch.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

- `plcnew T(args)` lowers to: `apollo_malloc(sizeof(T), align(T))` + an in-place constructor call.
- If construction throws, the lowering inserts a cleanup that frees the allocation before re-raising.
- `delete ptr` lowers to: destructor call on `*ptr` (if `T` has one) + `apollo_free(ptr)`.

## Runtime support

`apollo_malloc` / `apollo_free` from `Apollo-Main/compiler/runtime_support/` provide the storage. Constructor and destructor functions are generated alongside the type's other methods.

## Edges and gotchas

- The frontend rejects `plcnew T()` if `T`'s constructor requires non-defaulted arguments and none are supplied.
- Destructors are not synthesized automatically. A type without a destructor simply skips the destructor call at `delete`.
- The expression form of `plcnew` integrates with composite literals and other expression contexts; the statement form requires it appear inside a larger context.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`plcnewExpr`, `deleteStmt`)
- Frontend: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
- Runtime: `Apollo-Main/compiler/runtime_support/`
