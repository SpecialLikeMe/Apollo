# Shape type — implementation

## Grammar surface

From `Apollo-Main/compiler/compilerv1.g4`:

```antlr
shapeType : LBRACE typeRef (',' typeRef)+ ','? RBRACE ;
```

The trailing `+` quantifier on the comma-prefixed slot requires at least two type slots. Anything less reduces to a plain `typeRef` and is therefore rejected at the shape level.

The companion value-side rule is:

```antlr
compositeLiteral : '<' expression (',' expression)+ '>' ;
```

Same shape, same minimum-of-two restriction, but using angle brackets and expression slots instead of type slots.

## Parse tree shape

A `ShapeTypeContext` exposes:

- `typeRef()` as a list — each element is one slot's `TypeRefContext`.
- `LBRACE()` / `RBRACE()` for the delimiters.
- Comma tokens between slots, accessed via the parser's terminal accessors.

Shape type nodes appear wherever a `typeRef` appears, because `typeRef` has `shapeType` as one of its alternatives. That includes function parameter types, return types, generic type arguments, map key types, variable bindings, and cast targets.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp` validates a shape type at the same time it validates the surrounding type reference. The checks are:

- Each slot's `typeRef` resolves to a known type. Unknown identifiers in a slot produce a diagnostic against the slot, not the whole shape.
- Slot types are checked for completeness — if a slot is a reference type, the borrow must be expressible at the position where the shape appears (for example, returning a shape that contains a reference to a local would be rejected by the borrow checker at the function-body level).
- When a `compositeLiteral` is matched to a shape type, the literal's slot count must equal the shape's slot count, and each expression must be assignable to the corresponding slot type. That match-up happens in the expression-validation pass, not in shape-type validation itself.

## Lowering

Lowering happens in `Apollo-Main/compiler/cpp/src/visitor.cpp`. A shape type lowers to an LLVM aggregate (`{T0, T1, ...}` in LLVM IR). The visitor:

1. Builds the lowered element types in order.
2. Creates an LLVM `StructType` with those elements. The struct is anonymous and structurally typed; two shapes with the same lowered elements share the same LLVM type.
3. Uses the lowered struct anywhere the source shape type appears — locals get a stack slot of that struct type, parameters are passed by value, return types use the same struct.

A composite literal lowers by:

1. Evaluating each slot expression left to right.
2. Storing the result of each slot into the corresponding element of a stack-allocated aggregate.
3. Loading the aggregate as the literal's value.

Indexing a shape value with a constant integer (`entry[0]`) lowers to an LLVM `extractvalue`. Indexing through a borrow lowers to a `getelementptr` followed by a load.

Destructuring assignment (`<i32 a, str b> = entry;`) lowers to one `extractvalue` per slot followed by an initializing store into each named local's stack slot.

## Runtime support

Shape types do not require runtime support. They are stack-resident aggregates with trivial copy semantics; the LLVM backend handles them natively.

Hash-map usage with shape keys does need runtime support, but that is the responsibility of `collections.map` and the runtime-support objects under `Apollo-Main/compiler/runtime_support/`. The shape type itself only contributes its lowered struct layout; the hash and equality routines are generated for the slot types by the map facade.

## Edges and gotchas

- The grammar's minimum-of-two-slot rule is intentional. A one-slot shape would be ambiguous with a brace-delimited block and would add no expressive power over the underlying type.
- The angle-bracket composite literal can be confused with a generic argument list at the parser level. The grammar disambiguates by context — a `<` at the start of an expression position is a composite literal; the same token in a type position is a generic argument list.
- Shape equality at the LLVM level is structural, but at the source level it is identity-based by slot order. Reordering slots produces a distinct type even though the LLVM struct happens to have the same layout.
- A shape containing a reference type is allowed, but the borrow lifetime of the shape is bounded by the shortest-lived borrow inside it. The borrow checker enforces this when the shape crosses scope boundaries.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`shapeType`, `compositeLiteral`, `typeRef`)
- Frontend validation: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
- Map/key support: `Apollo-Main/include/collections.apollo` and `Apollo-Main/compiler/runtime_support/`
