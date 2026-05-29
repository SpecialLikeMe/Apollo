# Composite literal — implementation

## Grammar surface

```antlr
compositeLiteral : '<' expression (',' expression)* ','? '>' ;
```

The `<` token shares a lexical surface with the less-than operator and with generic argument brackets. The grammar disambiguates by context — composite literals appear only where an aggregate value is expected.

## Parse tree shape

A `CompositeLiteralContext` exposes the ordered list of `expression()` children.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Determines the destination type from the context (assignment target, return type, parameter type).
2. Dispatches on the destination's kind:
   - Array: requires `elements.size() == declared_size`; type-checks each element against the element type.
   - Vector: type-checks each element against the vector's element type.
   - Shape: requires `elements.size() == slot_count`; type-checks per slot.
   - Struct: maps elements positionally to field declarations.
3. Reports a diagnostic for mismatches.

If no destination cue is available, the frontend emits a diagnostic asking for a type hint.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

- Array: emits a sequence of `insertvalue` instructions building the LLVM array.
- Vector: lowers to a call to the vector constructor with the element list (or to a stack-built array + copy depending on size).
- Shape: emits a sequence of `insertvalue` instructions for the lowered struct.
- Struct: same as shape, using the declared field order.

Constant-only literals lower to LLVM `ConstantArray` / `ConstantStruct` values directly.

## Runtime support

Vector literals call into the `collections` runtime for allocation. Other forms are lowered inline.

## Edges and gotchas

- The `<` token's overlap with the less-than operator and generics is resolved by the parser using context, not lookahead. In a few corner cases an explicit cast may be required.
- The literal does not have a standalone type; it is always interpreted relative to the destination. Outside any destination it is rejected.
- Trailing commas are accepted but do not contribute an empty element.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`compositeLiteral`)
- Frontend: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
