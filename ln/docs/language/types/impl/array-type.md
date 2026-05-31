# Array type — implementation

## Grammar surface

```antlr
arrayType
    : typeRef '[' INT ']'
    | typeRef '[' ']'
    ;
```

## Parse tree shape

An `ArrayTypeContext` exposes the element `typeRef()` and the optional size `INT()`.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Resolves the element type.
2. Parses the size literal (if present) as a positive compile-time integer.
3. For unsized `T[]`, restricts the type to parameter/view positions and rejects storage uses.
4. Canonicalizes the resulting array-type entry.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

- Fixed-size `T[N]` lowers to LLVM `[N x T]`.
- Indexing lowers to `getelementptr` + `load`/`store`.
- Borrowed array references lower to pointer-to-array with attached length information.
- Unsized `T[]` lowers to a pointer + length pair when passed by value, or a plain pointer when paired with an explicit length parameter.

## Runtime support

None for fixed-size arrays. Bounds-checking helpers live in `Apollo-Main/compiler/runtime_support/` and are inserted conditionally based on build configuration.

## Edges and gotchas

- The array literal `<a, b, c>` shares grammar with composite literals. The frontend disambiguates by the destination type at the assignment.
- Out-of-bounds compile-time-constant indices are rejected at validation. Runtime indices may be bounds-checked depending on build mode (`-O0` and debug builds check; `-O3` release builds omit by default).
- Multidimensional arrays are layouts of nested arrays — `i32[3][3]` is `[3 x [3 x i32]]` at the LLVM level, row-major.
- Returning a fixed-size array by value copies it. For large arrays, prefer to return a borrow or use a heap-allocated form.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`arrayType`)
- Frontend resolution: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
- Bounds-check runtime: `Apollo-Main/compiler/runtime_support/`
