# `std process` — implementation

## Module source

`Apollo-Main/include/process.apollo`.

## Exported type

- `process` — opaque handle wrapping a runtime child-process object.

## Exported functions

In `namespace sys`: `process_spawn`, `process_wait`, `process_try_wait`, `process_exit_code`, `process_completed`, `process_kill`, `process_command`.

## Native bridge

`@unsafe { inline::cpp { ... } }` includes `apo_std_object_runtime.hpp`. The runtime wraps either `posix_spawn` (POSIX) or `CreateProcess` (Windows), tracking the child's PID/handle, command string, exit state, and exit code.

## Lowering

Standard inline-foreign call lowering. The `process` handle lowers to `void*`.

## Edges and gotchas

- `process_spawn` accepts a single command string and routes it through a shell on the host platform — this matches the simplicity of small scripts but means quoting and escaping rules follow the host shell.
- The current surface does not expose pipe I/O. To capture output, redirect within the command (`> output.txt`) and read with `std fs`.
- `process_kill` issues a termination signal but does not block; pair with `process_wait` to ensure the child is reaped.
- The exit code is the platform's raw exit code; signal-terminated processes on POSIX may report negative or special values per platform conventions.

## Source of truth

- Source: `Apollo-Main/include/process.apollo`
- C++ helpers: `Apollo-Main/compiler/runtime_support/apo_std_object_runtime.hpp`
