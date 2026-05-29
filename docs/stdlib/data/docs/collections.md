# `std collections`

## What it is

The `collections` module provides Apollo's two general-purpose container types: `vector` (a growable array) and `map` (an associative store from strings to values). Both are runtime-managed opaque handles with `sys.*` operation functions covering the usual operations: create, push/pop/insert/remove, get/set, iterate by index, clear, truncate, reserve, shrink, resize, dedup.

The surface is `str`-keyed and `str`-valued in the convenience helpers; the runtime supports broader types via the language's generic shape, but most of the exported helpers are `str`-typed for simplicity.

## When you use it

- Holding a list of items whose length isn't known up front.
- Building lookup tables and indexes.
- Backing for higher-level structures (queues, stacks, sets).

For fixed-size aggregates, prefer arrays or `struct` types.

## API surface (selected)

Index helpers:

- `sys.first_index()` — 0.
- `sys.next_index(i)` — `i + 1`.
- `sys.previous_index(i)` — `i - 1`.
- `sys.missing_i32()` — sentinel for "no match" (0 in the current convention).

Vector:

- `sys.vec_new()`, `sys.vec_with_capacity(n)` — construct.
- `sys.vec_len(v)` — length.
- `sys.vec_push(v, item)`, `sys.vec_pop(v)`.
- `sys.vec_get(v, i)`, `sys.vec_set(v, i, item)`.
- `sys.vec_insert(v, i, item)`, `sys.vec_remove(v, i)`, `sys.vec_swap_remove(v, i)`.
- `sys.vec_clear(v)`, `sys.vec_truncate(v, len)`.
- `sys.vec_reserve(v, additional)`, `sys.vec_shrink_to_fit(v)`.
- `sys.vec_resize(v, new_length, item)`, `sys.vec_dedup(v)`.

Map (further in the source): `sys.map_new()`, `sys.map_get(m, key)`, `sys.map_set(m, key, value)`, `sys.map_has(m, key)`, `sys.map_remove(m, key)`, `sys.map_len(m)`, `sys.map_clear(m)`.

## Examples

### Vector basics

```apollo
extern std collections;

int main() {
    nconst vector v = sys.vec_new();
    sys.vec_push(v, "alpha");
    sys.vec_push(v, "beta");
    sys.vec_push(v, "gamma");

    for (nconst i := 0; i < sys.vec_len(v); i = i + 1) {
        sys.println(sys.vec_get(v, i));
    }
    return 0;
}
```

### Insert and remove

```apollo
extern std collections;

int main() {
    nconst vector v = sys.vec_new();
    sys.vec_push(v, "a");
    sys.vec_push(v, "c");
    sys.vec_insert(v, 1, "b");          // a, b, c
    sys.println(sys.vec_get(v, 1));     // b
    sys.vec_remove(v, 0);               // b, c
    sys.println(sys.vec_get(v, 0));     // b
    return 0;
}
```

### Pop loop

```apollo
extern std collections;

int main() {
    nconst vector stack = sys.vec_new();
    sys.vec_push(stack, "one");
    sys.vec_push(stack, "two");
    sys.vec_push(stack, "three");

    while (sys.vec_len(stack) > 0) {
        sys.println(sys.vec_pop(stack));
    }
    return 0;
}
```

LIFO behavior — push then pop.

### Capacity hints

```apollo
extern std collections;

int main() {
    nconst vector v = sys.vec_with_capacity(1000);
    for (nconst i := 0; i < 1000; i = i + 1) {
        sys.vec_push(v, "item");
    }
    sys.vec_shrink_to_fit(v);
    sys.printf("len = %d\n", sys.vec_len(v));
    return 0;
}
```

Pre-allocate when you know the size; shrink after if needed.

### Map basics

```apollo
extern std collections;

int main() {
    nconst map m = sys.map_new();
    sys.map_set(m, "alice", "engineer");
    sys.map_set(m, "bob", "designer");
    if (sys.map_has(m, "alice") == 1) {
        sys.println(sys.map_get(m, "alice"));
    }
    return 0;
}
```

### Dedup

```apollo
extern std collections;

int main() {
    nconst vector v = sys.vec_new();
    sys.vec_push(v, "a");
    sys.vec_push(v, "a");
    sys.vec_push(v, "b");
    sys.vec_push(v, "b");
    sys.vec_push(v, "c");
    sys.vec_dedup(v);                  // consecutive duplicates removed
    sys.printf("len = %d\n", sys.vec_len(v));   // 3
    return 0;
}
```

`vec_dedup` removes consecutive duplicates; sort first if you want global dedup.

## Common mistakes

- **Index out of range.** `sys.vec_get(v, i)` with `i >= sys.vec_len(v)` is undefined; check length first.
- **Holding a reference across mutation.** Pushing or removing may relocate the storage; cached pointers become stale.
- **Using `swap_remove` when order matters.** It is O(1) but reorders; use `vec_remove` for order-preserving removal.
- **Shared mutation across threads.** The runtime structures are not thread-safe; use `std sync` for synchronization.
- **Treating the handle as a value.** It is a managed handle; passing by value shares the underlying storage.

## See also

- `docs/stdlib/data/docs/hash.md` — hashing keys for maps.
- `docs/stdlib/data/docs/ranges.md` — index/range helpers.
- `docs/stdlib/data/docs/buffer.md` — text accumulation.
- `Apollo-Main/include/collections.apollo` — source.
