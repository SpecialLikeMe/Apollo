# `std regex` — implementation

## Module source

`Apollo-Main/include/regex.apollo`.

## Exported type

- `regex` — opaque handle backed by `__apo_stdlib::regex_*`.

## Exported functions

All in `namespace sys`: `regex_compile`, `regex_is_match`, `regex_find`, `regex_replace`, `regex_error`.

## Native bridge

`@unsafe { inline::cpp { ... } }` includes `apo_std_object_runtime.hpp`. The C++ shims:

```cpp
void* sys__native_regex_compile(const char* pattern)             { return __apo_stdlib::regex_compile(__apo_stdlib::text_or_empty(pattern)); }
int   sys__native_regex_is_match(void* value, const char* text)  { return __apo_stdlib::regex_is_match(value, __apo_stdlib::view_or_empty(text)); }
const char* sys__native_regex_find(void* value, const char* text)                                    { return __apo_stdlib::regex_find(value, __apo_stdlib::view_or_empty(text)); }
const char* sys__native_regex_replace(void* value, const char* text, const char* replacement)        { return __apo_stdlib::regex_replace(value, __apo_stdlib::view_or_empty(text), __apo_stdlib::view_or_empty(replacement)); }
const char* sys__native_regex_error(void* value)                                                     { return __apo_stdlib::regex_error(value); }
```

## Lowering

Each Apollo function becomes a direct inline-foreign call. The `regex` handle lowers to `void*`.

## Runtime support

The regex implementation lives behind `__apo_stdlib::regex_*` in `apo_std_object_runtime.hpp` / its companion implementation. It uses C++ `<regex>` under the hood (ECMAScript dialect by default), with the handle wrapping a `std::regex` plus error state.

## Edges and gotchas

- Returned strings (`regex_find`, `regex_replace`, `regex_error`) are owned by the runtime; copy if you need to outlive the next call.
- The handle stores the compile error message; failed compiles return a handle whose subsequent matches always fail and whose `regex_error` returns the message.
- `regex_is_match` tests full string match. To test substring presence, use `regex_find` and check for a non-empty result.
- Replacement string uses the default ECMAScript replacement syntax (`$1`, `$&`, etc.).

## Source of truth

- Source: `Apollo-Main/include/regex.apollo`
- C++ helpers: `Apollo-Main/compiler/runtime_support/apo_std_object_runtime.hpp`
