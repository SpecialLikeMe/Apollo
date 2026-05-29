# Continue statement — implementation

## Grammar surface

```antlr
continueStmt : 'continue' ';' ;
```

From `Apollo-Main/compiler/compilerv1.g4`. No labels, no expression.

## Parse tree shape

A `ContinueStmtContext` exposes the `continue` token and the terminating `;`.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Consults the break/continue resolver. Continue targets must be loops; switches do not accept continue.
2. Rejects the statement when no enclosing loop exists.
3. Records the target loop for lowering.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

1. Drops scope-exit hooks for bindings that go out of scope on the continue path.
2. Branches to the loop's advance edge: the step block for C-style `for`, the condition block for `while`, the advance block for `for-in`, the top of the loop for `loop`.

## Runtime support

None.

## Edges and gotchas

- The lowering correctly distinguishes loop kinds. In particular, `continue` inside a C-style `for` still runs the step expression, while in a `while` it does not (there is no step).
- A `continue` inside a `switch` nested in a loop targets the outer loop, not the switch. Programs that want to continue from a switch should structure with a flag.
- Lowering inserts drop hooks for any owned locals introduced between the continue site and the loop body's exit edge.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`continueStmt`)
- Frontend validation: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
