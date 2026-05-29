# While loop — implementation

## Grammar surface

From `Apollo-Main/compiler/compilerv1.g4`:

```antlr
whileStatement : 'while' '(' expression ')' block ;
```

## Parse tree shape

A `WhileStatementContext` exposes `expression()` (the condition) and `block()` (the body).

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp` validates a `while` by:

1. Type-checking the condition; the result must be `bool`.
2. Recursing into the body in a fresh scope.
3. Registering the loop with the break/continue resolver so any `break` or `continue` inside the body targets this loop unless an inner loop intervenes.
4. Computing borrow-checker fixpoints: borrows that survive across iterations must originate outside the loop; per-iteration borrows are released at the body's exit edge.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

1. The visitor emits a condition block, a body block, and a join block.
2. Entry branches unconditionally to the condition block.
3. The condition is lowered into the condition block; the result drives a conditional branch to either the body block or the join block.
4. The body is lowered into the body block, then ends with an unconditional branch back to the condition block.
5. `break` becomes a branch to the join block; `continue` becomes a branch to the condition block.

## Runtime support

None.

## Edges and gotchas

- The condition is evaluated *before* the first iteration, so a `while (false) { ... }` body never runs.
- Apollo has no `do { ... } while (cond)` form. Use `loop { ... if (!cond) { break; } }` when you need post-test semantics.
- The frontend does not perform termination analysis. An infinite-without-exit `while (true)` body is permitted; downstream optimization passes may remove unreachable code following such a loop.
- Borrows scoped to a single iteration are released at the back edge of the loop. A borrow that escapes the body via a binding declared outside the loop persists across iterations.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`whileStatement`)
- Frontend validation: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
