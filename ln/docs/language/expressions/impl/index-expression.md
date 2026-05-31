# Index expression — implementation

## Grammar surface

```antlr
indexExpr : expression '[' expression ']' ;
```

Left-associative postfix. Chained indexing parses as `(a[i])[j]`.

## Parse tree shape

An `IndexExprContext` exposes the container `expression(0)` and the index `expression(1)`.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Resolves the container's type.
2. Looks up the container kind: array, vector, buffer, map, or a user type with an `operator[]` (rare).
3. Type-checks the index against the container's index type.
4. Determines whether the result is a value or an assignable place based on the container's mutability and the surrounding context.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

- Arrays: `getelementptr` + `load`/`store` on the array's pointer.
- Vectors: dispatch to the vector runtime's element accessor (which may inline to `getelementptr` for small vectors).
- Buffers: byte-offset `getelementptr` + `load`/`store`.
- Maps: call into the map runtime's lookup routine.

Bounds checking is inserted at lowering time when the build configuration requests it; release builds skip checks for arrays and vectors.

## Runtime support

Vector and map runtimes live in `Apollo-Main/compiler/runtime_support/` (or in `collections`-specific helpers). Bounds-check helpers are also in `runtime_support/`.

## Edges and gotchas

- Index expressions on shape values use the integer-literal form via member access — they share grammar but the index must be a constant.
- The container's borrow flavor propagates through the index access; an immutable vector borrow produces a read-only element view.
- For maps, the absence semantics depend on the map implementation. The frontend does not insert default-value handling; that is the runtime's choice.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`indexExpr`)
- Frontend: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
- Container runtimes: `Apollo-Main/compiler/runtime_support/`
