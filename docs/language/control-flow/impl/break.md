# Break statement — implementation

## Grammar surface

```antlr
breakStmt : 'break' ';' ;
```

From `Apollo-Main/compiler/compilerv1.g4`. No labels, no expression.

## Parse tree shape

A `BreakStmtContext` carries no children of interest — the token `break` and the terminating `;`.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Consults the break/continue resolver, which tracks the stack of enclosing loops and switches.
2. Rejects the statement when the stack is empty.
3. Records the target construct so lowering knows where to branch.
4. Marks the containing block as "ends in break", which counts as a non-returning exit for path analysis (a break does not satisfy a return-required path).

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

1. Drops scope-exit hooks for bindings that go out of scope between the break and the targeted construct's exit point.
2. Emits an unconditional branch to the join block recorded by the targeted construct (the loop's exit block or the switch's join block).

## Runtime support

None.

## Edges and gotchas

- `break` always targets the innermost loop or switch — there are no labels.
- Lowering correctly handles breaks crossing nested scopes (any owned locals introduced between the break and the target are dropped).
- The step expression of a C-style `for` is *not* executed on the break path. To run code on exit regardless of break, structure with a `finally` or with explicit cleanup at the exit block.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`breakStmt`)
- Frontend validation: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
