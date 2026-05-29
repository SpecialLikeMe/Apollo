# `std bits` — implementation

## Module source

`Apollo-Main/include/bits.apollo`.

## Exported surface

All free functions in `namespace sys`:

- Simple operator wrappers: `bit_and`, `bit_or`, `bit_xor`, `shl`, `shr`, `has_any`, `has_all`.
- Native-backed: `clz`, `ctz`, `popcount`, `ffs`, `rotate_left`, `rotate_right`, `bswap`.

## Native bridge

The module embeds an `@unsafe { inline::cpp { ... } }` block that defines C++ shims:

```cpp
int sys__native_clz(int value)         { return __apo_stdlib::clz_i32(value); }
int sys__native_ctz(int value)         { return __apo_stdlib::ctz_i32(value); }
int sys__native_popcount(int value)    { return __apo_stdlib::popcount_i32(value); }
int sys__native_ffs(int value)         { return __apo_stdlib::ffs_i32(value); }
int sys__native_rotate_left(int v, int a)  { return __apo_stdlib::rotate_left_i32(v, a); }
int sys__native_rotate_right(int v, int a) { return __apo_stdlib::rotate_right_i32(v, a); }
int sys__native_bswap(int value)       { return __apo_stdlib::bswap_i32(value); }
```

The `__apo_stdlib::*_i32` helpers live in `apo_stdlib_runtime.hpp` and call LLVM/GCC intrinsics or fall back to portable implementations.

## Lowering

- Operator-wrapping functions inline trivially (`bit_and` → `left & right`).
- Native-backed functions lower to a call into the C++ shim, which itself lowers to LLVM IR via the inline foreign block.

## Edges and gotchas

- The native helpers assume the C++ runtime header (`apo_stdlib_runtime.hpp`) is available; this is true for the standard build, but a `nativemode(no_runtime)` file cannot use them.
- All operations are `i32`-only at the Apollo surface; the underlying C++ helpers also have `i64` variants that aren't yet wrapped in Apollo.
- `shl`/`shr` use the Apollo `<<`/`>>` operators directly; shift behavior follows the platform's C++ rules (UB on out-of-range amounts).

## Source of truth

- Source: `Apollo-Main/include/bits.apollo`
- C++ helpers: `Apollo-Main/compiler/runtime_support/apo_stdlib_runtime.hpp`
- Inline foreign lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
