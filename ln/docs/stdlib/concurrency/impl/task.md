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

There is no special compiler lowering for `std task` beyond ordinary function-call lowering. The task helpers are normal Apollo wrappers around the inline C++ shims defined in `Apollo-Main/include/task.apollo`.

This module is also not wired to statement-form `async foo();`. The current async-call lowering path in `Apollo-Main/compiler/cpp/src/visitor.cpp` just lowers the nested call as a statement and does not create or return a `task`.

## Runtime support

`__apo_stdlib::task_*` provides:

- A future-like wrapper holding `(tag, value)` plus completion state.
- Ready tasks are immediately completed.
- `await_<type>` reads the value, blocking until completion.
- `task_is_<type>` inspects the stored payload tag without consuming the value.

Type mismatch is a runtime contract here: the wrapper expects callers to use the matching `task_await_<type>` function for the stored payload.

## Edges and gotchas

- The current surface supports only the four primitive value types. For complex types, build a wrapper that boxes the value behind a string or composite handle.
- Tasks are reference-counted by the runtime; the Apollo handle holds a strong reference.
- `task_done` is a non-blocking poll; `task_await_*` is blocking. There is no cancellation surface in this module.
- Do not read language-level async semantics into this page; `std task` is an explicit library/runtime API, not the implementation of an `await` keyword.

## Source of truth

- Source: `Apollo-Main/include/task.apollo`
- C++ helpers: `Apollo-Main/compiler/runtime_support/apo_std_object_runtime.hpp`
- Async-call lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
