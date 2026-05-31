# For-in loop — implementation

## Grammar surface

From `Apollo-Main/compiler/compilerv1.g4`:

```antlr
forInStatement
    : 'for' '(' mutability? typeRef? ID ':' expression ')' block
    ;
```

The rule is distinct from the C-style `forStatement`, so the parser disambiguates by lookahead — a `:` after the binding name commits to `forInStatement`.

## Parse tree shape

A `ForInStatementContext` exposes:

- `mutability()` — optional, applies to the loop binding.
- `typeRef()` — optional element type.
- `ID()` — the loop binding name.
- `expression()` — the iterable.
- `block()` — the body.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp` validates a for-in by:

1. Resolving the iterable's type and confirming it implements the iteration interface (either a concrete iterable like `vector<T>` / `map<K, V>` / `set<T>`, or a range value from the `ranges` stdlib).
2. Deriving the element type from the iterable. For `vector<T>` and `set<T>` it is `T`; for `map<K, V>` it is `{K, V}`; for ranges it is the range's element type.
3. Matching the optional `typeRef` against the derived element type. If the user supplied a type, it must equal the derived type.
4. Introducing the loop binding into a fresh scope at the start of the body.
5. Acquiring an iteration borrow on the iterable for the loop's duration. The borrow flavor depends on whether the binding is by value (no borrow needed on the iterable when iterating by value of a copyable element) or by reference (immutable iteration borrow for an immutable element reference, mutable iteration borrow for a mutable element reference).
6. Recursing into the body. Inside the body, the iterable is considered borrowed and may not be mutated through its name.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

1. The iterable expression is lowered. The result is a value whose lowered representation includes a way to obtain a current element and advance.
2. The visitor emits the standard iterator pattern: an init block that initializes the iterator state, a condition block that checks for end-of-iteration, a body block, an advance block, and a join block.
3. On each iteration, the visitor emits a load of the current element into the loop binding's slot, then branches to the body. After the body, the advance block runs.
4. `break` lowers to a branch to the join block; `continue` lowers to a branch to the advance block.

For collection types with known representations (vectors, arrays), the visitor inlines the iteration directly using index arithmetic rather than going through a heap-allocated iterator. For more complex iterables (ranges, map entries) it dispatches through the stdlib's iteration ABI.

## Runtime support

For collection iteration, the runtime support objects under `Apollo-Main/compiler/runtime_support/` provide the underlying storage and length accessors used by the inlined iteration loop.

For range iteration, `Apollo-Main/include/ranges.apollo` defines the user-visible interface and the runtime support libraries implement the next-element machinery.

## Edges and gotchas

- The grammar's `:` is what distinguishes `forInStatement` from `forStatement`. Removing the colon turns the construct into a parser error against `forStatement` since the C-style form expects `(' init ; cond ; step ')`.
- Iterating by value of an element type with non-trivial copy cost (for example, a large struct) silently incurs per-iteration copies. The frontend does not warn; iterate by reference when copies are expensive.
- The frontend rejects iteration over a non-iterable expression. There is no implicit coercion from, say, an integer to a range — write `ranges.exclusive(0, n)` explicitly.
- The iteration borrow on the iterable conflicts with any other borrow of the same place for the full loop duration. That is what prevents mutation of the collection inside the loop.
- Iteration order is defined by the iterable. Vectors and arrays iterate in index order. Maps iterate in unspecified order (implementation-defined hash order). Sets iterate in unspecified order.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`forInStatement`, `block`)
- Frontend validation: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
- Iterable surfaces: `Apollo-Main/include/collections.apollo`, `Apollo-Main/include/ranges.apollo`
- Runtime support: `Apollo-Main/compiler/runtime_support/`
