# Pointer type — implementation

## Grammar surface

```antlr
pointerType : typeRef '*' ;
```

## Parse tree shape

A `PointerTypeContext` exposes the inner `typeRef()` and the `*` token.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Resolves the inner type.
2. Wraps it in a canonical pointer-type entry.
3. Skips borrow-checker tracking — pointer operations are not borrow-managed.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

- A pointer type lowers to an LLVM pointer to the inner type's lowered form.
- `*ptr` lowers to a `load`; `*ptr = value` to a `store`.
- `ptr->field` lowers to `getelementptr` + `load` or `store`.
- The literal `null` lowers to LLVM `null`.

## Runtime support

`malloc`, `free`, `plcnew`, and `delete` route through the runtime's allocator surface. FFI calls go through the inline foreign block infrastructure. Pointer arithmetic helpers live in `core` and `buffer`.

## Edges and gotchas

- Pointers may be null. The compiler does not insert null checks; the programmer is responsible.
- Pointer types and reference types lower to the same LLVM construct (a pointer). The distinction is purely frontend: references are borrow-tracked, pointers are not.
- The `&` operator is reserved for borrow expressions, not for taking a pointer. To produce a pointer from a stack value, you must go through an allocator or an inline foreign helper.
- Pointer comparisons (`==`, `!=`) compare addresses, not contents.
- The frontend rejects implicit pointer-to-reference and reference-to-pointer conversions. Explicit casts (where allowed) are required.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`pointerType`)
- Frontend resolution: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
- Allocator runtime: `Apollo-Main/compiler/runtime_support/`
