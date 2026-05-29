# `std io` — implementation

## Module source

`Apollo-Main/include/io.apollo`. Imports `std core`, `std strings`.

## Surface

Two tiers:

- **High-level helpers** (pure Apollo, lower onto `sys.println` and string-formatting helpers from `std strings`): `puts`, `echo_str`, `echo_i32`, `echo_pair`, `banner`, `divider`, `debug_bool`, `blank`.
- **Terminal control** (native-backed): `term_print_raw`, `term_println_raw`, `term_read_line`, `term_is_tty`, `term_columns`, `term_rows`, `term_clear`, `term_set_cursor`, `term_show_cursor`, `term_hide_cursor`, `term_set_color_fg`, `term_set_color_bg`.

## Native bridge

Native helpers `sys__native_term_*` live in an `@unsafe { inline::cpp { ... } }` block (further down in the source). They call into the platform-appropriate terminal layer — POSIX termios on Linux/macOS, the Windows console API on Windows — and ultimately into helpers from `apo_stdlib_runtime.hpp`.

## `sys.println`

`sys.println` is not defined in this module — it is provided as a compiler-recognized builtin that lowers to a print runtime call. The `io` module's helpers compose `sys.println` with formatting from `std strings`.

## Lowering

- High-level helpers inline directly into a print call plus formatting.
- Native-backed helpers lower as inline-foreign function calls.

## Runtime support

`Apollo-Main/compiler/runtime_support/` contains the print runtime and terminal-control implementations. Color codes follow ANSI escape conventions on Unix and translate to console-attribute calls on Windows.

## Edges and gotchas

- `term_read_line` blocks the calling thread. There is no async variant in this module; use `std task` for non-blocking I/O.
- Terminal color codes are numeric per the ANSI base set (0-7 plus bright variants). The native helpers translate these to the platform.
- `sys.println` always appends a newline; for output without a newline use `sys.term_print_raw`.

## Source of truth

- Source: `Apollo-Main/include/io.apollo`
- Print runtime: `Apollo-Main/compiler/runtime_support/`
- Builtin lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
