# Cast expression — implementation

## Grammar surface

```antlr
castExpr : expression 'as' typeRef ;
```

The `as` keyword is a binary expression operator at a precedence level between unary and multiplicative.

## Parse tree shape

`CastExprContext` exposes the source `expression()` and the target `typeRef()`.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Resolves the source's type and the target type.
2. Classifies the conversion as one of: integer↔integer, integer↔float, float↔float, bool↔integer, pointer↔pointer, identity (no-op), or rejected.
3. For rejected conversions, emits a diagnostic naming both types.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

| Conversion | LLVM op |
|------------|---------|
| Integer widen, signed | `sext` |
| Integer widen, unsigned | `zext` |
| Integer narrow | `trunc` |
| Integer sign reinterpret | `bitcast` (no-op at LLVM level; signedness is source-level) |
| Integer → float, signed | `sitofp` |
| Integer → float, unsigned | `uitofp` |
| Float → integer, signed | `fptosi` |
| Float → integer, unsigned | `fptoui` |
| Float widen | `fpext` |
| Float narrow | `fptrunc` |
| Bool → integer | `zext` |
| Integer → bool | compare against 0 |
| Pointer → pointer | `bitcast` |

## Runtime support

None — all casts lower to single LLVM instructions or no-ops.

## Edges and gotchas

- Integer signedness is a frontend property; LLVM IR is signedness-agnostic. The chosen LLVM op depends on the source-level type.
- Float-to-integer with out-of-range floats is undefined at the LLVM level. The `core` module provides checked variants for safety.
- Pointer casts are `bitcast` — they do not adjust offsets even if the target type has different alignment.
- Identity casts (`x as T` where `x` is already `T`) produce no LLVM instruction.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`castExpr`)
- Frontend: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
