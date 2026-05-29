# `std buffer` — implementation

## Module source

`Apollo-Main/include/buffer.apollo`.

## Exported type

- `buffer` — opaque handle managed by the C++ runtime (`__apo_stdlib::buffer_*`).

## Exported functions

In `namespace sys`:

- `sys.buffer()` → `sys__native_buffer()` → `__apo_stdlib::buffer_create()`.
- `sys.buffer_push_str(buf, text)` → `sys__native_buffer_push_str` → `__apo_stdlib::buffer_push_text`.
- `sys.buffer_push_i32(buf, n)` → `sys__native_buffer_push_i32` → `__apo_stdlib::buffer_push_i64` (widened).
- `sys.buffer_text(buf)` → `sys__native_buffer_text` → `__apo_stdlib::buffer_text`.
- `sys.buffer_clear(buf)` → `sys__native_buffer_clear` → `__apo_stdlib::buffer_clear`.

Also includes `sys__handle_destroy` for handle destruction; called by the runtime when the buffer's owning binding goes out of scope.

## Native bridge

`@unsafe { inline::cpp { ... } }` with `#include "apo_std_object_runtime.hpp"`. The runtime header defines `buffer_create`, `buffer_push_text`, `buffer_push_i64`, `buffer_text`, `buffer_clear`, and `handle_destroy`.

## Lowering

- `sys.buffer()` lowers to a call producing an opaque pointer.
- Push and text operations lower to calls into the runtime helpers.
- Buffer destruction routes through the standard handle-destroy path when the owning binding's lifetime ends.

## Runtime support

The C++ buffer is a growable byte vector with a UTF-8 view exposed via `buffer_text`. It owns its storage; the Apollo handle is a reference to the owned object.

## Edges and gotchas

- The `i32` push widens to `i64` in the native call; this keeps the integer text representation consistent.
- `buffer_text` returns a pointer into the buffer's storage; the returned `str` is valid until the buffer is mutated or destroyed.
- The buffer is not thread-safe. Use `std sync` primitives for cross-thread sharing.

## Source of truth

- Source: `Apollo-Main/include/buffer.apollo`
- Runtime header: `Apollo-Main/compiler/runtime_support/apo_std_object_runtime.hpp`
- Handle destruction: `Apollo-Main/compiler/cpp/src/visitor.cpp`, `Apollo-Main/GC/apollo_gc.hpp`
