# `std encoding` — implementation

## Module source

`Apollo-Main/include/encoding.apollo`.

## Exported functions

All in `namespace sys`, all native-backed:

- Validation: `ascii_validate`, `utf8_validate`, `utf8_char_count`.
- Hex: `hex_encode`, `hex_decode`.
- URL: `url_encode`, `url_decode`.
- Base64: `base64_encode`, `base64_decode`.

## Native bridge

`@unsafe { inline::cpp { ... } }` includes `apo_stdlib_runtime.hpp` and forwards each call to the corresponding `__apo_stdlib::` helper. Inputs are routed through `__apo_stdlib::view_or_empty(value)` to handle null safely.

## Lowering

Standard inline-foreign lowering: each Apollo helper is a single C++ call.

## Edges and gotchas

- The returned strings from encoders are owned by the runtime; copy if you need long-lived storage.
- UTF-8 validation is strict: overlong encodings and surrogate halves are rejected.
- URL encoding follows RFC 3986; `~`, `-`, `_`, `.` are reserved and not escaped.
- Base64 uses the standard alphabet, no URL-safe variant in this module surface.

## Source of truth

- Source: `Apollo-Main/include/encoding.apollo`
- C++ helpers: `Apollo-Main/compiler/runtime_support/apo_stdlib_runtime.hpp`
