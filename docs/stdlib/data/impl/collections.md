# `std collections` — implementation

## Module source

`Apollo-Main/include/collections.apollo`.

## Exported types

- `vector` — opaque handle backed by `__apo_stdlib::vec_*` runtime functions.
- `map` — opaque handle backed by `__apo_stdlib::map_*` runtime functions.

## Exported functions

Index helpers (pure Apollo): `first_index`, `next_index`, `previous_index`, `missing_i32`.

Vector helpers (native-backed): `vec_new`, `vec_with_capacity`, `vec_len`, `vec_push`, `vec_pop`, `vec_get`, `vec_set`, `vec_insert`, `vec_remove`, `vec_swap_remove`, `vec_clear`, `vec_truncate`, `vec_reserve`, `vec_shrink_to_fit`, `vec_resize`, `vec_dedup`.

Map helpers (native-backed, declared further in source): `map_new`, `map_get`, `map_set`, `map_has`, `map_remove`, `map_len`, `map_clear`, plus iteration helpers.

## Native bridge

`@unsafe { inline::cpp { ... } }` includes `apo_std_object_runtime.hpp`, which defines:

- `vec_create`, `vec_create_with_capacity`, `vec_length`, `vec_push_text`, `vec_pop_text`, `vec_get_text`, `vec_set_text`, `vec_insert_text`, `vec_remove_text`, `vec_swap_remove_text`, `vec_clear`, `vec_truncate`, `vec_reserve`, `vec_shrink_to_fit`, `vec_resize_text`, `vec_dedup_text`.
- Analogous `map_*` helpers.

## Lowering

- Apollo helpers lower to direct calls into the native shims via the inline foreign block.
- The handle types lower to opaque pointers; their lifetime is managed by the runtime's handle destruction.

## Runtime storage

- `vector` uses a growable contiguous array of strings under the hood (for the string-typed surface).
- `map` uses a hash table keyed by string with strong-typed values.
- Both manage their own memory; the Apollo handle is a reference to a heap-allocated runtime object.

## Edges and gotchas

- The current exported surface is `str`-typed for items/values. The underlying runtime supports more types; broader Apollo bindings are added on demand.
- `vec_swap_remove` is O(1) by moving the last element into the removed slot; it does not preserve order.
- `vec_dedup` only removes adjacent duplicates; for global dedup, sort first.
- Map iteration order is unspecified; do not rely on insertion order.

## Source of truth

- Source: `Apollo-Main/include/collections.apollo`
- Runtime header: `Apollo-Main/compiler/runtime_support/apo_std_object_runtime.hpp`
- Handle destruction: `Apollo-Main/GC/apollo_gc.hpp`
