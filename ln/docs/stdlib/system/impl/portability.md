# `std portability` — implementation

## Module source

`Apollo-Main/include/portability.apollo`.

## Exported functions

All in `namespace sys`, native-backed. Surface listed in the docs page.

## Native bridge

`@unsafe { inline::cpp { ... } }` includes `apo_std_object_runtime.hpp` and forwards each Apollo function to `__apo_stdlib::*`. The runtime implements platform-specific code (Windows API on Win32, POSIX equivalents elsewhere).

## Lowering

Standard inline-foreign call lowering.

## Edges and gotchas

- `path_separator()` returns `"\\"` on Windows, `"/"` elsewhere.
- `exe_suffix()` returns `".exe"` on Windows, empty elsewhere.
- `env_get` returns an empty string for missing keys; do not distinguish from an empty-value key without `env_has` (not currently exposed).
- `sleep_ms` blocks the calling thread; for cooperative pauses use `std thread.thread_yield` in spin loops or `std task` for async pacing.
- `current_dir`/`set_current_dir` operate on process-global state; they affect every thread.

## Source of truth

- Source: `Apollo-Main/include/portability.apollo`
- C++ helpers: `Apollo-Main/compiler/runtime_support/apo_std_object_runtime.hpp`
