# Block statement — implementation

## Grammar surface

```antlr
block : LBRACE (statement | returnStmt)* RBRACE ;
```

## Parse tree shape

A `BlockContext` exposes its list of statements through `statement()` and `returnStmt()` accessors.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Opens a fresh scope.
2. Walks each child statement in source order, accumulating bindings, borrows, and return-coverage information.
3. Closes the scope at the closing brace, releasing any borrows scoped to the block.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

1. The block lowers as a straight-line sequence of lowered statements within the current LLVM basic block (or splits into multiple basic blocks for control flow).
2. Scope-exit drop hooks for owned locals are emitted at the block's exit edge.
3. No LLVM construct corresponds to the block itself — the brackets are purely a frontend scoping marker.

## Runtime support

None for the block itself; drop hooks may invoke runtime helpers for non-trivial cleanup.

## Edges and gotchas

- Blocks nest arbitrarily. Each block has its own scope.
- The frontend treats a block ending in `return` (or `throw` / unconditional `break`) as returning/exiting for path analysis.
- An empty block has no effect at the IR level beyond participating in scope.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`block`)
- Frontend validation: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
