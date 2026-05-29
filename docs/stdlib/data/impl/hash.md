# `std hash` — implementation

## Module source

`Apollo-Main/include/hash.apollo`.

## Exported functions

All in `namespace sys`, all native-backed:

- `hash_fnv1a_32` → `__apo_stdlib::hash_fnv1a_32`
- `hash_fnv1a_64` → `__apo_stdlib::hash_fnv1a_64`
- `hash_adler32` → `__apo_stdlib::hash_adler32`
- `hash_crc32` → `__apo_stdlib::hash_crc32`
- `hash_murmur3_32` → `__apo_stdlib::hash_murmur3_32`

## Native bridge

`@unsafe { inline::cpp { ... } }` includes `apo_stdlib_runtime.hpp` and defines C++ shims that pass through `__apo_stdlib::view_or_empty(value)` to handle null pointers safely. Each `__apo_stdlib::hash_*` helper consumes a `std::string_view`.

## Lowering

Standard inline-foreign call lowering; each Apollo helper becomes a single call into the C++ shim.

## Edges and gotchas

- All five algorithms operate on bytes (effectively the string's UTF-8 representation). The Apollo `str` is UTF-8; non-ASCII strings hash consistently if their byte representation is consistent.
- Results may be negative when interpreted as signed `i32`; the C++ helpers return `uint32_t`/`uint64_t` and the cast to `int`/`long` preserves the bit pattern.
- `hash_fnv1a_64` returns `long`, which matches the platform `long` size (64-bit on most modern targets, 32-bit on some Windows compilers — exact width depends on build).

## Source of truth

- Source: `Apollo-Main/include/hash.apollo`
- C++ helpers: `Apollo-Main/compiler/runtime_support/apo_stdlib_runtime.hpp`
