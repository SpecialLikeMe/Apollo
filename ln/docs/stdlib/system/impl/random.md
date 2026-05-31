# `std random` — implementation

## Module source

`Apollo-Main/include/random.apollo`.

## Exported type

- `random` — opaque handle wrapping a runtime PRNG state.

## Exported functions

In `namespace sys`: `rand_new`, `rand_seed`, `rand_i32`, `rand_range_i32`, `rand_f64`, `rand_bool`.

## Native bridge

`@unsafe { inline::cpp { ... } }` includes `apo_std_object_runtime.hpp`. The runtime PRNG is a `std::mt19937` (or equivalent) wrapped in a heap object; each `rand_new` returns a fresh state.

## Lowering

Standard inline-foreign call lowering.

## Edges and gotchas

- `rand_range_i32(low, high)` is implementation-defined for `low == high` or `low > high`. Treat as a precondition violation.
- The PRNG is deterministic given a seed; without `rand_seed`, the runtime selects a default seed (commonly clock-based).
- The PRNG is not thread-safe; one handle should belong to one thread.
- `rand_f64` is in `[0.0, 1.0)`; the upper bound is excluded.

## Source of truth

- Source: `Apollo-Main/include/random.apollo`
- C++ helpers: `Apollo-Main/compiler/runtime_support/apo_std_object_runtime.hpp`
