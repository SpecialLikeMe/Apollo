# Bitwise operators — implementation

## Grammar surface

```antlr
bitwiseOr  : bitwiseXor ('|' bitwiseXor)* ;
bitwiseXor : bitwiseAnd ('^' bitwiseAnd)* ;
bitwiseAnd : shift      ('&' shift)* ;
shift      : additive   (('<<' | '>>') additive)* ;
unaryNot   : '~' unary | postfix ;
```

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Requires both operands to be the same integer type.
2. Rejects bitwise on floats, bools, pointers, or structs.
3. Sets the result type to the operand type.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

| Op | LLVM op |
|----|---------|
| &  | and     |
| \| | or      |
| ^  | xor     |
| ~  | xor with all-ones |
| << | shl     |
| >> (signed) | ashr |
| >> (unsigned) | lshr |

## Runtime support

None.

## Edges and gotchas

- Shift amount semantics match LLVM: shifts by amount >= bit width are undefined. The frontend does not insert clamping.
- `~` lowers to `xor` with the type's all-ones value; LLVM does not have a dedicated `not` op.
- Signed vs unsigned `>>` is chosen at the frontend per the operand type; LLVM IR distinguishes via `ashr` and `lshr`.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4`
- Frontend: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
