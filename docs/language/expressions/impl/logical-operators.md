# Logical operators — implementation

## Grammar surface

```antlr
logicalOr  : logicalAnd ('||' logicalAnd)* ;
logicalAnd : equality   ('&&' equality)* ;
unaryNot   : '!' unary  | postfix ;
```

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Resolves both operands.
2. Requires each operand to be `bool`.
3. Sets the result type to `bool`.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

- `&&` lowers to a conditional branch + phi:
  - Evaluate `a`; if false, jump to merge with `false`.
  - Otherwise, evaluate `b`; jump to merge with `b`'s result.
- `||` lowers symmetrically: evaluate `a`; if true, jump with `true`; otherwise evaluate `b`.
- `!a` lowers to `xor a, 1` (since bool is i1).

The conditional-branch lowering is what makes `&&` and `||` short-circuit; only the necessary branch is traversed at runtime.

## Runtime support

None.

## Edges and gotchas

- Lowering uses branches rather than `select` because of short-circuit semantics. Optimizer passes may collapse to `select` when both branches are pure and cheap.
- `!` on a non-bool is rejected at the frontend.
- The frontend does not transform `!(a && b)` into `!a || !b`. That's an optimizer's job if any.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4`
- Frontend: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
