# For loop — implementation

## Grammar surface

From `Apollo-Main/compiler/compilerv1.g4`:

```antlr
forStatement
    : 'for' '(' forInit? ';' expression? ';' forStep? ')' block
    ;
forInit : init | walrusInit | assignment ;
forStep : assignment | callExpression | postfix ;
```

The parser distinguishes `forStatement` from `forInStatement` by the presence of `;` separators in the header. A `:` between the binding and the iterable commits to the `for-in` shape; the C-style form requires the two semicolons.

## Parse tree shape

A `ForStatementContext` exposes:

- `forInit()` — optional initializer.
- `expression()` — optional condition.
- `forStep()` — optional step.
- `block()` — the body.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp` validates a `for` by:

1. Opening a new scope for the loop. The initializer's bindings live in this scope.
2. Validating the initializer (if any) using the same logic as for a standalone `init` or assignment.
3. Type-checking the condition (if any); the result must be `bool`.
4. Validating the step (if any) as a statement-like expression.
5. Recursing into the body.
6. Registering the loop with the break/continue resolver.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

1. The initializer is lowered into the entry edge.
2. The condition block evaluates the condition; if absent, an unconditional branch goes straight to the body.
3. The body block executes the body, then branches to the step block.
4. The step block runs the step, then branches back to the condition block.
5. The join block is the loop's exit target. `break` branches to it; `continue` branches to the step block (so the step runs before the next condition check).

## Runtime support

None.

## Edges and gotchas

- Omitting the condition produces an infinite loop. Pair it with an internal `break`.
- The step runs after every body iteration, including those that ended via `continue`. To skip the step, restructure or `break`.
- The initializer's scope ends at the loop's exit edge; any reference to the counter outside the loop is rejected.
- Borrows acquired in the initializer or body and not persisted to outer bindings are released at the loop's back edge.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`forStatement`, `forInit`, `forStep`)
- Frontend validation: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
