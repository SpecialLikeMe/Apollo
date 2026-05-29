# `std allocators` — implementation

## Module source

`Apollo-Main/include/allocators.apollo`.

## Exported types

- `DefaultAllocator` (memstruct)
- `GeneralPurposeAllocator` (memstruct)
- `ArenaAllocator` (memstruct)

All three share an identical layout:

```
str label
str strategy
i32 default_block_bytes
bool thread_safe
bool relocatable
str last_type
i32 allocation_count
i32 release_count
i32 reserved_bytes
i32 peak_bytes
```

## Methods

Each allocator exposes `alloc`, `resize`, `remap`, `free`. All operate on the same fields; `remap` is implemented as a forwarder to `resize`.

## Lowering

These are memstructs with member methods. Lowering follows the standard memstruct path in `Apollo-Main/compiler/cpp/src/visitor.cpp`:

- Layout matches the declared field order (C layout).
- Methods become free functions taking an implicit pointer to the struct.
- No GC interaction; allocators are deterministic structs.

## Runtime interaction

The module performs no actual heap allocation. All "allocation" is bookkeeping on integer fields. Real storage comes from `malloc<T>()` / `plcnew T(args)` in user code.

## Edges and gotchas

- `reserved_bytes` clamps to zero if a free would push it negative; this hides accounting bugs rather than fixing them. Treat negative deltas as a sign of mismatched calls.
- `peak_bytes` only updates on `alloc`/`resize`; it does not decrease when memory is freed (it's a high-water mark).
- The `thread_safe` field is informational; the methods do not use locks.
- The three allocator types are layout-identical but distinct nominal types — passing one where another is expected requires explicit conversion.

## Source of truth

- Source: `Apollo-Main/include/allocators.apollo`
- Memstruct lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
- Memstruct frontend: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
