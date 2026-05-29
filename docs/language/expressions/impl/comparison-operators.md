# Comparison operators — implementation

## Grammar surface

```antlr
equality   : relational (('==' | '!=') relational)* ;
relational : additive (('<' | '<=' | '>' | '>=') additive)* ;
```

Left-associative. Chaining at the source level is parsed but the frontend rejects expressions like `a < b < c` to avoid bool-vs-int comparisons.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Resolves both operand types and ensures they match.
2. For ordering operators, requires the type to be ordered (integers, floats, bools, pointers within the same allocation).
3. Sets the result type to `bool`.
4. Rejects chained comparisons (when the next operand is itself a comparison result).

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

| Op | Signed int | Unsigned int | Float | Pointer |
|----|------------|--------------|-------|---------|
| == | icmp eq    | icmp eq      | fcmp oeq | icmp eq |
| != | icmp ne    | icmp ne      | fcmp one | icmp ne |
| <  | icmp slt   | icmp ult     | fcmp olt | icmp ult |
| <= | icmp sle   | icmp ule     | fcmp ole | icmp ule |
| >  | icmp sgt   | icmp ugt     | fcmp ogt | icmp ugt |
| >= | icmp sge   | icmp uge     | fcmp oge | icmp uge |

Float comparisons use ordered predicates (`oeq`, `olt`, etc.), which return false if either operand is NaN.

## Runtime support

None for primitives. String comparison routes through `runtime_support/` string helpers when `==` is applied to `str`.

## Edges and gotchas

- Signed vs unsigned chosen by the frontend; LLVM IR alone does not distinguish.
- Float comparisons use the ordered variants by default (consistent with `==` returning false for NaN); the `math` module exposes unordered variants when needed.
- Pointer comparison is well-defined only within a single allocation. The frontend cannot detect cross-allocation comparison.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4`
- Frontend: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
