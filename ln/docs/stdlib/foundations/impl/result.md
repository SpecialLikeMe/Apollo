# `std result` — implementation

## Module source

`Apollo-Main/include/result.apollo`.

## Tagged layout

`nominal<T, E>`, `option<T>`, and `option<T, E>` all lower to the same named LLVM struct family. The lowered aggregate has four fields:

- field `0`: `is_nominal` flag
- field `1`: `is_terminal` flag
- field `2`: success payload `T`
- field `3`: error payload `E`

Those two flag bits distinguish the three logical states:

- nominal — carries a `T`.
- cerr — carries an `E` (typically `str` or `cerr`).
- terminal — same payload as cerr but with a fatal-intent flag.

`option<T>` is sugar for `nominal<T, str>`. `option<T, cerr>` is sugar for `nominal<T, cerr>`.

## Predicate overloads

The module declares ordinary overloaded Apollo functions for the supported `(value type, error type)` combinations — `i32`, `bool`, `f64`, `str` for success payloads, with `str` and `cerr` error payloads. Each wrapper is a one-line forwarder to a compiler-backed `sys__is_*` intrinsic.

The frontend validator in `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp` now keeps all overload signatures for a callable name and resolves them against the actual argument list before emitting mismatch diagnostics. That matters here because `std result` relies on overload sets heavily.

## Constructors

`nominal(...)`, `cerr(...)`, and `terminalcerr(...)` are recognized in the frontend (`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`) as constructor forms. They lower to a literal of the tagged layout with the appropriate tag and payload.

## Unwrap helpers

`sys.unwrap_i32`, `sys.unwrap_bool`, `sys.unwrap_f64`, `sys.unwrap_str` lower to `sys__unwrap_*` intrinsics that read the value payload. The intrinsics do not check the tag — they assume the caller has verified the result.

In addition, member access of the form `value.unwrap()` is compiler sugar. In `Apollo-Main/compiler/cpp/src/visitor.cpp`, zero-argument `unwrap()` calls on lowered `nominal` / `option` carriers return field `2` directly, and the return-type inference path peels the first generic argument from the carrier type text.

`sys.error_message(value)` lowers to an intrinsic that returns the error payload as a string.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

- Result types lower to a struct `{ i1 is_nominal, i1 is_terminal, ok_value, err_value }`.
- Constructors emit a struct literal with the appropriate tag.
- Predicate intrinsics read the two flag fields.
- Unwrap intrinsics and `value.unwrap()` read the success payload field.
- `sys.error_message(...)` reads the error payload field.

## Runtime support

Minimal — the result type is value-based and requires no allocator. The string-carrying error payload uses the standard string representation.

## Edges and gotchas

- The overloaded predicate functions cover only the primitive value types currently. Custom types as result values are supported at the language level but the predicates do not directly accept them; use a custom check on the underlying tag or expose your own helper.
- `value.unwrap()` is broader than the stdlib wrappers: it works on lowered carrier types even when `std result` does not declare a matching `sys.unwrap_*` overload.
- Result types are POD-friendly and pass by value cheaply; for large value types, consider whether to use a result or a separate ok/err pair.
- The `terminal` tag is a hint, not enforcement — the caller decides how to act on it.

## Source of truth

- Source: `Apollo-Main/include/result.apollo`
- Frontend constructors: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
