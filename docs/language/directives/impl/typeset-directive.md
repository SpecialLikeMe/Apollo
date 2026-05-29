# Typeset directive — implementation

## Grammar surface

```antlr
typesetDirective
    : '#[' 'typeset' '(' typesetName ',' typesetBody ')' ']'
    ;
typesetBody
    : 'types' '(' typeRef (',' typeRef)* ')'
    | 'requires' '(' interfaceRef (',' interfaceRef)* ')'
    | typesetBody '&&' typesetBody
    ;
```

## Parse tree shape

A `TypesetDirectiveContext` exposes the typeset name `ID()` and the `typesetBody()`.

## Frontend handling

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Registers the named typeset in the type table.
2. Resolves the typeset body's referenced types and interfaces.
3. Stores the conjunction structure for later constraint checks.

When a template parameter declares `T: TypesetName`:

1. The frontend looks up the typeset.
2. At instantiation time, validates the supplied argument against the typeset's enumerated types and required interfaces.
3. Emits a diagnostic naming the typeset and the unsatisfied requirement if validation fails.

## Lowering

No direct lowering effect. Typesets are compile-time constructs that influence template instantiation legality.

## Runtime support

None.

## Edges and gotchas

- Typeset names share the namespace with types and interfaces; conflicts are reported.
- A typeset can reference other typesets via interface references, but cyclic definitions are rejected.
- The conjunction structure preserves user-visible order so diagnostics can be specific about which clause failed.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`typesetDirective`)
- Frontend: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
