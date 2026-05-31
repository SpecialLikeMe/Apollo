# Primitive types — implementation

## Grammar surface

The primitive type keywords are lex tokens. The grammar rule that admits them is:

```antlr
primitiveType
    : 'i8' | 'i16' | 'i32' | 'i64'
    | 'u8' | 'u16' | 'u32' | 'u64'
    | 'f32' | 'f64'
    | 'bool'
    | 'str'
    | 'int'           // alias for i32
    | 'ato'           // type-inference placeholder
    | 'void'          // valid only in return positions
    ;
```

## Frontend handling

Each keyword resolves directly to a canonical type entry in the type table. `int` resolves to the same entry as `i32`. `ato` is not a type per se — it triggers inference from the right-hand side of a declaration.

`void` is admitted in `typeRef` only when the parent rule is `returnType`; in any other position the frontend rejects it.

## Lowering

Lowering tables in `Apollo-Main/compiler/cpp/src/visitor.cpp` map each primitive to an LLVM type:

| Apollo | LLVM            |
|--------|-----------------|
| i8/u8  | i8              |
| i16/u16| i16             |
| i32/u32| i32             |
| i64/u64| i64             |
| f32    | float           |
| f64    | double          |
| bool   | i1              |
| str    | { i8*, i64 }    |
| void   | void (returns only) |

Signedness for integers is tracked by the frontend; LLVM IR itself does not distinguish, but the chosen instruction (`sdiv` vs `udiv`, `icmp slt` vs `icmp ult`, etc.) depends on the source-level type.

## Runtime support

String construction, length queries, and concatenation use small helpers in `Apollo-Main/compiler/runtime_support/`. Integer and float operations lower to LLVM instructions directly without runtime help.

## Edges and gotchas

- Apollo uses two's-complement integer arithmetic with wraparound on overflow. Checked variants are exposed through `core`.
- `str` is immutable. Mutation operations always allocate.
- Float comparisons follow IEEE 754; comparisons involving NaN yield false except for `!=`.
- The `int` alias exists for ergonomics; mixing `int` and `i32` is allowed because they are the same type.
- Cross-width integer conversions require an explicit cast. The frontend rejects implicit narrowing or sign changes.

## Source of truth

- Grammar / lexer: `Apollo-Main/compiler/compilerv1.g4`
- Type table and resolution: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
- String runtime: `Apollo-Main/compiler/runtime_support/`
