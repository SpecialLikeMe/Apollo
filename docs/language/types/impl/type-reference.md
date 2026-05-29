# Type reference — implementation

## Grammar surface

From `Apollo-Main/compiler/compilerv1.g4`:

```antlr
typeRef
    : primitiveType
    | ID
    | genericType
    | referenceType
    | pointerType
    | functionType
    | shapeType
    | arrayType
    | 'void'
    ;
```

`typeRef` is the central alternation through which every type-position grammar rule passes. Most other rules (`returnType`, `param`, `init`, generics' argument list, etc.) call `typeRef` directly.

## Parse tree shape

A `TypeRefContext` exposes accessors for each alternative — only one will be present for a given context. The frontend dispatches on the present accessor to resolve the type.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp` resolves a `typeRef` by:

1. Dispatching on the alternative present in the context.
2. For named types (`ID`), looking up the name in the type table. Generic parameters of the surrounding declaration take precedence over top-level types of the same name.
3. For generics (`ID<...>`), resolving the base type then instantiating with the argument list.
4. For references and pointers, resolving the inner type then wrapping.
5. For function types, resolving the return type and each parameter type.
6. For shapes, resolving each slot type.
7. For arrays, resolving the element type and validating the size (constant) if present.

Resolved types are canonicalized — equivalent types share a single internal representation, making subsequent equality checks O(1).

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

- Primitives map to LLVM primitive types (`i8`, `i16`, `i32`, `i64`, `float`, `double`, `i1` for bool, an opaque struct or pointer for `str`).
- Named types map to their declared lowered representation (LLVM struct for classes/structs/memstructs, two-pointer struct for interfaces).
- References and pointers map to LLVM pointer types.
- Function types map to LLVM function pointer types or two-pointer closures depending on the callable form.
- Shapes map to LLVM struct types with anonymous elements.
- Arrays map to LLVM array types (fixed size) or pointer + length pairs (dynamic).

## Runtime support

None for type references themselves. Lowered representations may pull in runtime-support objects for specific types (heap allocators for owned aggregates, dispatch tables for interfaces).

## Edges and gotchas

- `int` is an alias for `i32`. Older code uses `int`; new code may prefer the explicit width.
- `str` is an opaque pointer-and-length pair at the lowered level; its size is platform-fixed.
- `void` is only valid as a return type. A `void` variable binding is rejected.
- Generic instantiation is memoized per `(base, argument-tuple)` so repeated references to `vector<int>` share the same instantiation.
- Recursion through references and pointers is allowed; recursion through value types is rejected because the size would be undefined.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`typeRef` and each alternative)
- Frontend resolution: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
