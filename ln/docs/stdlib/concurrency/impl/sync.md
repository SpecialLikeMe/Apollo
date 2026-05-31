# `std sync` — implementation

## Module source

`Apollo-Main/include/sync.apollo`.

## Exported types

- `mutex` — opaque handle wrapping `std::mutex` (or platform equivalent).
- `condvar` — opaque handle wrapping `std::condition_variable`.
- `channel` — opaque handle for typed message-passing.

## Exported functions

All in `namespace sys`. Mutex: `mutex_new`, `mutex_lock`, `mutex_try_lock`, `mutex_unlock`. Condvar: `condvar_new`, `condvar_wait_ms`, `condvar_notify_one`, `condvar_notify_all`. Channel: `channel_bounded`, `channel_unbounded`, `channel_send_<type>`, `channel_try_send_<type>`, `channel_recv_<type>` for `i32`, `bool`, `str`, `f64`. Source includes further surface (try_recv, len, close) further down.

## Native bridge

`@unsafe { inline::cpp { ... } }` includes `apo_std_object_runtime.hpp`. C++ shims forward to `__apo_stdlib::mutex_*`, `condvar_*`, `channel_*`. Channels are implemented as typed queues with internal mutex + condvar plus a capacity field for bounded variants.

## Lowering

Standard inline-foreign call lowering. Handles lower to `void*`.

## Runtime support

- **Mutex** uses `std::mutex` on POSIX, the platform mutex on Windows. `try_lock` returns 1/0; `lock` blocks; `unlock` releases.
- **Condvar** uses `std::condition_variable` with a `wait_for` underlying call for `wait_ms`. Returns 1 on timeout, 0 on signal.
- **Channels** are implemented as a typed FIFO buffer guarded by a mutex and signaled by condvars for not-empty / not-full. Bounded channels block on full; unbounded grow as needed.

## Edges and gotchas

- The mutex is not reentrant; recursive locking by the same thread deadlocks.
- Channel item types are checked at the wrapper level — a channel created via `channel_bounded(4)` has no intrinsic type; the type is established by the first send/recv pair. Mismatch causes runtime undefined behavior in the typed wrappers.
- Condvar's `wait_ms` lacks a predicate parameter; users must structure waits around spurious wakeups (re-check the protected condition after wakeup).
- The Apollo `bool` channel send takes `i32` for compatibility; values are interpreted as truthy/falsy.

## Source of truth

- Source: `Apollo-Main/include/sync.apollo`
- C++ helpers: `Apollo-Main/compiler/runtime_support/apo_std_object_runtime.hpp`
