# Generic type — implementation

## Grammar surface

```antlr
genericType : ID '<' typeRef (',' typeRef)* '>' ;
```

## Parse tree shape

A `GenericTypeContext` exposes the base `ID()` and the list of argument `typeRef()` entries.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Resolves the base name to a generic declaration.
2. Checks the argument count against the declared parameter count.
3. Resolves each argument to a canonical type.
4. Looks up or instantiates the specialization `(base, args...)` in the instantiation cache.
5. Returns the canonical type entry for the instantiation.

If a constraint fails (a constrained type parameter receiving an argument that does not satisfy the constraint interface), the frontend emits a diagnostic pointing at the use site.

## Instantiation

The first reference to an instantiation triggers materialization:

1. The base's AST is cloned with parameters substituted.
2. The substituted AST is validated.
3. The frontend records lowered representations for fields and methods.

Subsequent references reuse the cached instantiation.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`, each instantiation lowers as a monomorphized concrete type with its own LLVM types and functions. There is no runtime type tag, no boxing, and no shared dispatch — each `vector<int>` and `vector<str>` is its own code.

## Runtime support

None for the instantiation mechanism itself. Lowered specializations may pull in runtime support for the underlying type (allocators, collection routines).

## Edges and gotchas

- Instantiation is hidden from source-level code. There is no syntax for naming or inspecting the cache.
- Cross-module instantiation of the same arguments produces the same canonical type. The frontend deduplicates across translation units.
- Recursive generic instantiation (`Box<Box<Box<int>>>`) is allowed but limited by the same recursion bounds as template expansion. Excessive nesting is reported as an error.
- Argument count mismatches are reported with both the declared count and the supplied count for clarity.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`genericType`)
- Frontend resolution and instantiation: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
