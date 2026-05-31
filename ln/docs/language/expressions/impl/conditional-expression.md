# Conditional expression — implementation

## Grammar surface

```antlr
conditionalExpr : expression '?' expression ':' expression ;
```

Right-associative. Precedence is below assignment but above logical-or.

## Parse tree shape

`ConditionalExprContext` exposes the three sub-expressions in order: condition, then-branch, else-branch.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Resolves the condition's type; it must be `bool`.
2. Resolves both branch expressions.
3. Computes a common type for the branches. If the types differ and no implicit unification exists, emits a diagnostic.
4. Sets the expression's result type to the common type.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

- Lowers to an LLVM `select` instruction when both branches are pure and cheap.
- Lowers to a conditional branch + phi node when branches have side effects or are expensive (loads, calls). This avoids evaluating both branches.

## Runtime support

None.

## Edges and gotchas

- Apollo's conditional expression is true short-circuit: only the selected branch is evaluated, including its side effects.
- The condition must be exactly `bool`; integers and pointers do not implicitly convert.
- The unification rule for branch types matches the function-call argument unification rule — same widening allowed but no implicit narrowing.
- A conditional whose result is unused is rejected because it produces a value with no destination.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`conditionalExpr`)
- Frontend: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
