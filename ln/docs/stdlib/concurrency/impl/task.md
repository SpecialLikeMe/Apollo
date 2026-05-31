# `std task` — implementation

## Module source

`Apollo-Main/include/task.apollo`.

## Exported type

- `task` — opaque handle managed by `__apo_stdlib::task_*`.

## Exported functions

All in `namespace sys`:

- `task_ready_<type>` constructors for `i32`, `str`, `bool`, `f64`.
- `task_done` predicate.
- `task_await_<type>` blocking extractors for each type.
- `task_is_<type>` type queries for each type.

## Native bridge

`@unsafe { inline::cpp { ... } }` includes `apo_std_object_runtime.hpp`. C++ shims forward to `__apo_stdlib::task_*`. Each `task_ready_<type>` returns a `void*` that wraps a future-like object tagged with the value type.

## Lowering

Standard inline-foreign call lowering. The Apollo-level `async` keyword on a function lowers to a task-returning function whose body is wrapped in the runtime's task machinery; from the caller's perspective the result is a `task` handle interchangeable with one returned from `task_ready_*`.

## Runtime support

`__apo_stdlib::task_*` provides:

- A future-like wrapper holding `(tag, value)` plus completion state.
- Ready tasks are immediately completed.
- Async-produced tasks are completed by the scheduler when their body returns.
- `await_<type>` reads the value, blocking until completion. Type mismatch is undefined behavior at this layer; the language frontend prevents mismatch when `async`/`await` are used directly.

## Edges and gotchas

- The current surface supports only the four primitive value types. For complex types, build a wrapper that boxes the value behind a string or composite handle.
- Tasks are reference-counted by the runtime; the Apollo handle holds a strong reference.
- `task_done` is a non-blocking poll; `task_await_*` is blocking. There is no cancellation surface in this module.

## Source of truth

- Source: `Apollo-Main/include/task.apollo`
- C++ helpers: `Apollo-Main/compiler/runtime_support/apo_std_object_runtime.hpp`
- `async`/`await` lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
