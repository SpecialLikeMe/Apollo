# `std json` — implementation

## Module source

`Apollo-Main/include/json.apollo`. Imports `std collections`.

## Exported functions

All in `namespace sys`. Parse: `json_parse_bool`, `json_parse_int`, `json_parse_float`, `json_parse_str`, `json_parse_array`, `json_parse_object`. Write: `json_write_bool`, `json_write_int`, `json_write_float`, `json_write_str`, `json_write_array`, `json_write_object`, plus start/end markers for arrays and objects.

## Native bridge

`@unsafe { inline::cpp { ... } }` includes `apo_stdlib_runtime.hpp` and `apo_std_object_runtime.hpp`. Each Apollo function calls a `sys__native_json_*` shim that in turn invokes `__apo_stdlib::json_*`.

Notable details:

- `json_parse_array` and `json_parse_object` return opaque pointers (`void*`) that Apollo treats as `vector` / `map` handles. The runtime returns a fully-populated handle that shares the layout of `std collections` handles, so the standard `vec_*` / `map_*` helpers work on the parsed result.
- `json_parse_str` returns a `const char*` whose lifetime is tied to the parser's internal storage; copy to a longer-lived `str` if needed.

## Lowering

Standard inline-foreign call lowering. Each Apollo helper becomes a call into the corresponding C++ shim.

## Runtime support

JSON parse/write logic lives in `apo_stdlib_runtime.hpp` / its companion implementation. The runtime implements a streaming-friendly parser and a writer that emits compact JSON.

## Edges and gotchas

- The current parse surface is value-typed: each call expects a JSON document whose root matches the parser's type. To parse mixed documents, parse as `object` or `array` and walk the resulting handle.
- Strings produced by `json_parse_str` are owned by the parser; treat them as borrowed.
- The writer does not pretty-print; it emits compact JSON.
- `json_parse_bool` returns `0`/`1` integers, not Apollo `bool`. Apply `sys.boolify` if you want strict bool semantics.

## Source of truth

- Source: `Apollo-Main/include/json.apollo`
- C++ helpers: `Apollo-Main/compiler/runtime_support/apo_stdlib_runtime.hpp`, `apo_std_object_runtime.hpp`
- Handle layout: `Apollo-Main/GC/apollo_gc.hpp`
