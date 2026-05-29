# Malloc / free — implementation

## Grammar surface

```antlr
mallocExpr : 'malloc' '<' typeRef '>' '(' ')' ;
freeStmt   : 'free' '(' expression ')' ';' ;
```

## Parse tree shape

A `MallocExprContext` exposes the type argument `typeRef()`. A `FreeStmtContext` exposes the pointer `expression()`.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Resolves the malloc's type argument and computes `sizeof(T)` and the alignment.
2. Marks the expression's result type as `T*`.
3. For free, verifies the argument is a pointer type but does not check which allocator owns it.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

- `malloc<T>()` lowers to a call to the runtime's `apollo_malloc(size, align)` with `T`'s size and alignment.
- The result pointer is cast (at the LLVM level) to the appropriate pointer-to-T type.
- `free(p)` lowers to a call to `apollo_free(p)`.

## Runtime support

`apollo_malloc` and `apollo_free` live in `Apollo-Main/compiler/runtime_support/`. The default implementation forwards to the system `malloc`/`free`. Builds can swap in instrumented variants for leak detection or quota tracking.

## Edges and gotchas

- The grammar requires the angle-bracket type argument — `malloc()` with no type is rejected.
- `malloc` is the raw allocator. It does not zero memory, does not call constructors, and does not record ownership.
- The default behavior on out-of-memory is to abort. Programs that need recovery should use the `allocators` module's `try_*` surfaces.
- `free` accepts any pointer-typed expression. Mismatched allocator pairs (allocate with arena, free with `free`) produce undefined behavior.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`mallocExpr`, `freeStmt`)
- Frontend: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
- Runtime: `Apollo-Main/compiler/runtime_support/`
