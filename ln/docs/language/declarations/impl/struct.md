# Struct declaration — implementation

## Grammar surface

From `Apollo-Main/compiler/compilerv1.g4`:

```antlr
structDecl
    : 'struct' ID genericParams? attributeBlock? '{' structField* '}' ';'?
    ;
structField : mutability? typeRef ID ('=' expression)? ';' ;
```

The struct body is a flat sequence of field declarations. The grammar does not allow access sections or method declarations inside a struct — that's what makes it distinct from `classDecl`.

## Parse tree shape

A `StructDeclContext` carries:

- `ID()` — the struct name.
- `genericParams()` — optional generic parameter list.
- `attributeBlock()` — optional `.att { ... }` metadata.
- `structField()` as a list — one per field.

Each `StructFieldContext` exposes `mutability()`, `typeRef()`, `ID()`, and an optional default-initializer `expression()`.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp` validates a struct by:

1. Registering the struct name in the current scope.
2. Validating each field's type. Field types may reference the struct's own generic parameters but may not transitively reference the struct itself by value (recursive value-typed fields are rejected; recursive reference-typed fields are allowed).
3. Validating each default initializer expression against its field's type.
4. Synthesizing the implicit constructor. Parameters are the fields without `=` initializers in declaration order. Fields with initializers use the initializer when the corresponding constructor argument is omitted.
5. Checking for duplicate field names within the struct.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

1. The struct lowers to an LLVM `StructType` with one element per field in declaration order.
2. The implicit constructor lowers to a function that allocates the aggregate, stores each field, and returns the populated value.
3. Field access (`obj.field`) lowers to `extractvalue` for value-typed access or `getelementptr` for place-based access through a reference.
4. Field assignment through a mutable reference lowers to `getelementptr` + `store`.

Generic structs are instantiated per type-argument tuple. Each instantiation produces a distinct LLVM struct type.

## Runtime support

None. Structs are stack-resident aggregates with trivial copy semantics. Heap allocation through `new`/`plcnew` routes through the standard allocator surface but does not require struct-specific runtime objects.

## Edges and gotchas

- The grammar accepts an empty body, but a zero-field struct has limited utility and the frontend warns about it.
- Field defaults are evaluated at construction time, not at declaration time. Each constructor call re-evaluates any default expression that ends up being used.
- Recursive value-typed fields are rejected because they would have undefined size. Use a reference or a heap-allocated pointer for self-referencing structures.
- Struct equality and hashing are not synthesized by the compiler. Use the `hash` and `equality` surfaces from the stdlib if needed.
- Aligned and packed layouts are not part of `struct`. Use `memstruct` for explicit-layout requirements.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`structDecl`, `structField`)
- Frontend validation: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
