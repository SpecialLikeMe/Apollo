# Throw statement — implementation

## Grammar surface

```antlr
throwStmt : 'throw' expression ';' ;
```

## Parse tree shape

A `ThrowStmtContext` exposes the thrown `expression()`.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Validates the thrown expression's type.
2. Marks the containing path as exiting via throw — it does not count as a normal return.
3. Records the throw site for the unwind tables.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

1. Lowers the expression into a temporary.
2. Drops scope-exit hooks for locals along the unwind path up to the nearest landing pad.
3. Calls the runtime throw routine with the temporary as the payload.

## Runtime support

The throw routine and the unwinder live in `Apollo-Main/compiler/runtime_support/`. Throws use the platform's structured exception machinery (libunwind on Unix, SEH on Windows).

## Edges and gotchas

- Throwing a non-trivial value involves a copy or a move into the runtime's exception storage. Use compact error types when possible.
- The frontend does not enforce a thrown-type contract; functions do not declare what they may throw.
- A throw inside `finally` replaces the in-flight exception.
- Throwing across an FFI boundary into C code is undefined; the runtime catches throws at the FFI exit point and aborts.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`throwStmt`)
- Frontend validation: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
- Runtime: `Apollo-Main/compiler/runtime_support/`
