# Loop statement — implementation

## Grammar surface

```antlr
loopStmt : 'loop' block ;
```

## Parse tree shape

A `LoopStmtContext` exposes the body `block()` only.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Recurses into the body in a fresh scope.
2. Registers the loop with the break/continue resolver.
3. Marks the loop as a non-returning path unless the body has an unconditional exit (return, throw, or unconditional break to an enclosing target).

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

1. Emits a single body block and a join block.
2. The body ends with an unconditional branch back to itself.
3. `break` branches to the join block. `continue` branches to the start of the body.

## Runtime support

None.

## Edges and gotchas

- A loop with no exit edge is encoded as an unconditional infinite loop at the LLVM level. Optimization passes correctly mark code after such a loop as unreachable.
- The loop body's scope ends at the back edge, so per-iteration borrows are released on each cycle.
- `loop { }` (empty body) is valid grammar but useless; the frontend warns.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`loopStmt`)
- Frontend validation: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
