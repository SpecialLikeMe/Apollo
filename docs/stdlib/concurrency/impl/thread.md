# `std thread` — implementation

## Module source

`Apollo-Main/include/thread.apollo`.

## Exported functions

In `namespace sys`:

- `thread_get_raw_id()` → `__apo_stdlib::thread_get_raw_id()`.
- `thread_yield()` → `__apo_stdlib::thread_yield()`.

## Native bridge

`@unsafe { inline::cpp { ... } }` includes `apo_std_object_runtime.hpp` and exposes the two shims:

```cpp
int sys__native_thread_get_raw_id() { return __apo_stdlib::thread_get_raw_id(); }
void sys__native_thread_yield()     { __apo_stdlib::thread_yield(); }
```

## Runtime support

`__apo_stdlib::thread_get_raw_id` returns a hash of `std::this_thread::get_id()` cast to int. `__apo_stdlib::thread_yield` calls `std::this_thread::yield()` or the platform equivalent.

## Lowering

Standard inline-foreign call lowering — each Apollo function is a single C++ call.

## Edges and gotchas

- The "raw id" is platform-dependent; its only contract is "stable per-thread identifier" for the lifetime of the thread.
- `thread_yield` is a hint; the platform scheduler may choose to keep running the current thread.
- The module deliberately omits thread creation. Spawning is the runtime's responsibility, exposed through `std task`'s async machinery or via inline-foreign code.

## Source of truth

- Source: `Apollo-Main/include/thread.apollo`
- C++ helpers: `Apollo-Main/compiler/runtime_support/apo_std_object_runtime.hpp`
