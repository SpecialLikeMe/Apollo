# Brace initializer — implementation

## Grammar surface

From `Apollo-Main/compiler/compilerv1.g4`:

```antlr
initCore
    : (CONST | NCONST)? typeRef ID ( '=' expression | braceInitializer )?
    | (CONST | NCONST)? instanceValue ID ( '=' braceInitializer )?
    | LET (CONST | NCONST)? ID ':' typeRef ( '=' expression )?
    ;

primary
    : ...
    | braceInitializer
    | instanceValue
    | ...
    ;

instanceValue
    : ID ( '{' args? '}' | braceInitializer ) allocatorUseSuffix?
    ;

braceInitializer
    : '{' (braceInitializerElement (',' braceInitializerElement)* ','?)? '}'
    ;

braceInitializerElement
    : '.' ID '=' expression
    | expression
    ;
```

That is the key detail: brace initializers are valid both in declaration position and as expression primaries, and `instanceValue` accepts a direct `TypeName { ... }` form.

## Parse tree shape

The parser exposes a `BraceInitializerContext` containing zero or more `BraceInitializerElementContext` children. Each child is either:

- a designated entry with `ID()` plus `expression()`, or
- a positional entry with only `expression()`.

When the initializer appears as `TypeName { ... }`, the surrounding node is an `InstanceValueContext`.

## Frontend validation

The native frontend treats brace initializers as aggregate-construction syntax. Validation happens through the same declaration and expression passes that validate struct, typedef-struct, and enum-variant usage. There is no separate runtime directive or feature gate for the syntax itself.

The main requirement is that the surrounding site must make the aggregate target type known.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`, aggregate brace construction is handled directly rather than being translated through angle-bracket composite literals.

Important helpers are:

- `lowerConstructedInstanceValue(...)`
- `applyAggregateBraceInitializerToValue(...)`
- `lowerInitStatement(...)`
- `lowerInitCoreStatement(...)`

These paths cover:

1. typed declarations without `=` such as `Point p { .x = 1 };`
2. typed expression-position construction such as `consume(Point { .x = 1 });`
3. aggregate construction nested inside container calls and enum-variant construction

The lowering code maps designated entries by field name and positional entries by declared field order.

## Runtime support

None by itself. Brace initialization lowers into ordinary aggregate-value construction in the emitted IR. Any runtime dependency comes from the aggregate type being initialized, not from the brace syntax.

## Edges and gotchas

- A bare brace initializer without an enclosing target type is not enough for codegen; the destination type must already be known.
- Designated and positional elements share one grammar surface, so downstream lowering must decide whether the target aggregate supports the requested shape.
- This surface is separate from `<...>` composite literals. The two syntaxes serve different aggregate families.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
- Coverage: `Apollo-Main/compiler/tests/grammar/pass/struct_literal_expression_surface.apollo` and `Apollo-Main/compiler/tests/grammar/pass/typedef_struct_designated_surface.apollo`