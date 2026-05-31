# `std result` — implementation

## Module source

`Apollo-Main/include/result.apollo`.

## Tagged layout

`nominal<T, E>`, `option<T>`, and `option<T, E>` all lower to a tagged union the runtime treats uniformly. The tag distinguishes three states:

- nominal — carries a `T`.
- cerr — carries an `E` (typically `str` or `cerr`).
- terminal — same payload as cerr but with a fatal-intent flag.

`option<T>` is sugar for `nominal<T, str>`. `option<T, cerr>` is sugar for `nominal<T, cerr>`.

## Predicate overloads

The module declares one overload per supported `(value type, error type)` combination — `i32`, `bool`, `f64`, `str` for values, `str` and `cerr` for errors. Each predicate is a one-line forwarder to the compiler-backed `sys__is_*` intrinsic.

## Constructors

`nominal(...)`, `cerr(...)`, and `terminalcerr(...)` are recognized in the frontend (`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`) as constructor forms. They lower to a literal of the tagged layout with the appropriate tag and payload.

## Unwrap helpers

`sys.unwrap_i32`, `sys.unwrap_bool`, `sys.unwrap_f64`, `sys.unwrap_str` lower to `sys__unwrap_*` intrinsics that read the value payload. The intrinsics do not check the tag — they assume the caller has verified the result.

`sys.error_message(value)` lowers to an intrinsic that returns the error payload as a string.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

- Result types lower to a struct `{ i32 tag, payload value, str message }` (or equivalent depending on value type).
- Constructors emit a struct literal with the appropriate tag.
- Predicate intrinsics compare the tag field.
- Unwrap intrinsics read the value field.

## Runtime support

Minimal — the result type is value-based and requires no allocator. The string-carrying error payload uses the standard string representation.

## Edges and gotchas

- The overloaded predicate functions cover only the primitive value types currently. Custom types as result values are supported at the language level but the predicates do not directly accept them; use a custom check on the underlying tag or expose your own helper.
- Result types are POD-friendly and pass by value cheaply; for large value types, consider whether to use a result or a separate ok/err pair.
- The `terminal` tag is a hint, not enforcement — the caller decides how to act on it.

## Source of truth

- Source: `Apollo-Main/include/result.apollo`
- Frontend constructors: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
