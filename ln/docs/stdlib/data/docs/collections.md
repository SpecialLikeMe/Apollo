# `std collections`

## What it is

The `collections` stdlib module provides opaque handle-based containers and helper functions in the `sys.*` namespace.

This page is about the stdlib handle API from `Apollo-Main/include/collections.apollo`, not the language-level generic containers such as `vector<T>` or `unordered_map<K, V>`.

## Current surface

Common helpers include:

- `sys.vec_new()`, `sys.vec_with_capacity(n)`, `sys.vec_len(v)`
- `sys.vec_push(v, item)`, `sys.vec_pop(v)`
- `sys.vec_get(v, i)`, `sys.vec_set(v, i, item)`
- `sys.vec_insert(v, i, item)`, `sys.vec_remove(v, i)`, `sys.vec_swap_remove(v, i)`
- `sys.vec_resize(v, n, item)`, `sys.vec_dedup(v)`
- `sys.map_new()`, `sys.map_len(m)`
- `sys.map_insert(m, key, value)`, `sys.map_get(m, key)`, `sys.map_get_mut(m, key)`
- `sys.map_contains_key(m, key)`, `sys.map_remove(m, key)`, `sys.map_entry_or_insert(m, key, default)`

## When you use it

Use this module when you want the stdlib's opaque runtime handles for `str`-based vectors, maps, ordered maps, sets, queues, and related helpers.

If you want the language-level generic collection syntax instead, see the generic type and index expression pages.

## Examples

### Basic vector handle

```apollo
extern std prelude;

i32 main() {
    vector items = sys.vec_new();
    sys.vec_push(items, "alpha");
    sys.vec_push(items, "beta");
    return sys.vec_len(items) - 2;
}
```

### Swap-remove and resize

```apollo
extern std prelude;

i32 main() {
    vector items = sys.vec_new();
    sys.vec_push(items, "alpha");
    sys.vec_push(items, "beta");
    sys.vec_push(items, "beta");

    str swapped = sys.vec_swap_remove(items, 0);
    sys.vec_resize(items, 4, "pad");
    sys.vec_dedup(items);

    if (swapped != "alpha") {
        return 1;
    }
    return sys.vec_len(items) - 3;
}
```

### Map insert and contains

```apollo
extern std prelude;

i32 main() {
    map table = sys.map_new();
    sys.map_insert(table, "greeting", "hello");
    return sys.map_contains_key(table, "greeting") == 1 ? 0 : 1;
}
```

### Entry-or-insert

```apollo
extern std prelude;

i32 main() {
    map table = sys.map_new();
    str inserted = sys.map_entry_or_insert(table, "subject", "apollo");
    return inserted == "apollo" ? 0 : 1;
}
```

### Manual cleanup

```apollo
extern std prelude;

i32 main() {
    vector items = sys.vec_new();
    map table = sys.map_new();
    sys.handle_destroy(items);
    sys.handle_destroy(table);
    return 0;
}
```

## Common mistakes

- **Mixing this page with generic container syntax.** `vector items = sys.vec_new()` is the stdlib handle API; `vector<str> items;` is a different language surface.
- **Assuming arbitrary element types.** The `sys.vec_*` and `sys.map_*` helpers in `include/collections.apollo` are string-oriented convenience APIs.
- **Forgetting cleanup for long-lived handles.** The stdlib handle surface uses runtime-managed objects and often pairs with `sys.handle_destroy(...)` in the current tests.
- **Expecting indexed `[]` syntax on these opaque handles.** The handle API uses `sys.vec_get`, `sys.vec_set`, and `sys.map_get` helpers.

## See also

- `docs/language/types/docs/generic-type.md` — language-level `vector<T>` and `unordered_map<K, V>`.
- `docs/language/expressions/docs/index-expression.md` — direct `[]` indexing.
- `docs/stdlib/data/docs/hash.md` — hashing helpers.
- `Apollo-Main/include/collections.apollo` — authoritative source for the stdlib handle API.
