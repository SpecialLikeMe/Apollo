# `std strings` — implementation

## Module source

`Apollo-Main/include/strings.apollo`.

## Surface partition

- **Pure-Apollo helpers** using string interpolation: `empty`, `space`, `newline`, `tab`, `brackets`, `parens`, `join_space`, `join_colon`, `pair_i32`, `label_i32`, `status`.
- **Native-backed helpers** for length, concat, trim, case, search, replace, substring, split/join. Each Apollo wrapper calls a `sys__native_str_*` shim that invokes `__apo_stdlib::str_*`.

## Native bridge

`@unsafe { inline::cpp { ... } }` (further in the file) declares the C++ shims and includes `apo_stdlib_runtime.hpp`. The runtime helpers operate on `std::string_view` and return owned `const char*` strings.

## Lowering

- Interpolation-based helpers lower per the standard string interpolation path: a sequence of allocations producing the formatted string.
- Native-backed helpers lower as inline-foreign function calls.

## Runtime storage

Apollo strings are stored as UTF-8. `str_len` reports the byte count; character counts come from `std encoding`. The native helpers preserve UTF-8 cleanliness for trim, case, and search where the underlying runtime supports it (case operations may degrade to ASCII-only depending on the runtime implementation).

## Edges and gotchas

- The returned strings from native helpers are managed by the runtime; copy or store them in Apollo-owned bindings if they need to outlive the next call.
- `str_titlecase` is a best-effort transformation: it lowercases all letters except the first letter of each space-separated word. Non-Latin scripts may not be handled correctly.
- The `str_contains` result is 1 or 0; it does not return the position. For position, use `str_find`.

## Source of truth

- Source: `Apollo-Main/include/strings.apollo`
- C++ helpers: `Apollo-Main/compiler/runtime_support/apo_stdlib_runtime.hpp`
- Interpolation lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
