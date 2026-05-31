# Return statement — implementation

## Grammar surface

From `Apollo-Main/compiler/compilerv1.g4`:

```antlr
returnStmt : 'return' expression? ';' ;
```

## Parse tree shape

A `ReturnStmtContext` exposes the optional `expression()`.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp` validates a return by:

1. Identifying the enclosing function (or closure) declaration.
2. If the return type is `void`, requiring no expression; if non-void, requiring an expression assignable to the return type.
3. Validating the expression against the declared return type.
4. Marking the containing block path as "returns", which contributes to the path-coverage analysis.
5. If a borrow is being returned, verifying its lifetime allows the value to escape to the caller.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

1. The expression (if any) is lowered into a temporary.
2. Any active drop hooks for owned locals in scope are emitted.
3. If the return sits inside a try/finally, an unwind path through the finally block is emitted that preserves the temporary across the finally execution.
4. An LLVM `ret` instruction is emitted with the temporary's value, or `ret void` for void functions.

## Runtime support

None for the return itself. Drop hooks for owned aggregates may call into runtime-support routines for cleanup.

## Edges and gotchas

- The path-coverage check is purely lexical/structural. A return whose path is unreachable (because of `while (true)` above it, for instance) still counts as a return.
- Returning a reference produced inside the function fails the borrow checker. Returning a reference parameter or a borrow into the receiver is fine.
- Inside a closure, the return targets the closure's return type and exits only the closure. A higher-level escape mechanism (a `break` to a labeled loop, throw, or a result-flag pattern) is required to exit the enclosing function.
- A return inside finally is permitted but unusual; it replaces any pending return value or error.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`returnStmt`)
- Frontend validation: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
