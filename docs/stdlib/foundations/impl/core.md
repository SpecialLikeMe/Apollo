# `std core` — implementation

## Module source

`Apollo-Main/include/core.apollo`.

## Surface partition

Two groups:

- **Pure Apollo** — `id`, `min`, `max`, `clamp`, `abs_diff`, `choose`, `boolify`, `average_floor`, `between`. Trivial one-liners.
- **Native-backed** — `div_floor`, `mod_euc`, `saturating_add`/`sub`/`mul`, `wrapping_add`/`sub`, `lcm`, `signum`. These dispatch to C++ helpers in `__apo_stdlib`.

## Native bridge

The `@unsafe { inline::cpp { ... } }` block declares C++ wrappers calling into `apo_stdlib_runtime.hpp`:

```cpp
int sys__native_div_floor(int l, int r)        { return __apo_stdlib::div_floor_i32(l, r); }
int sys__native_mod_euc(int l, int r)          { return __apo_stdlib::mod_euclid_i32(l, r); }
int sys__native_saturating_add(int l, int r)   { return __apo_stdlib::saturating_add_i32(l, r); }
// ... etc.
int sys__native_lcm(int l, int r)              { return __apo_stdlib::lcm_i32(l, r); }
int sys__native_signum(int v)                  { return __apo_stdlib::signum_i32(v); }
```

The block also exposes `sys__overflowing_add_value` / `..._overflow` pair helpers but does not currently surface them through Apollo functions.

## Lowering

- Pure-Apollo helpers inline trivially.
- Native-backed helpers lower as calls to the C++ shims via the inline foreign block path.

## Edges and gotchas

- `clamp` does not validate `lo <= hi`. Passing reversed bounds returns one of the bounds based on the value's position.
- `mod_euc(-7, 3)` returns 2; the language-level `%` would return -1. Use `mod_euc` when you need positive remainders.
- `saturating_mul` clamps to `INT_MIN`/`INT_MAX` on overflow; the underlying C++ helper performs the saturation.
- `lcm(0, x)` returns 0 by convention in the C++ helper.

## Source of truth

- Source: `Apollo-Main/include/core.apollo`
- C++ helpers: `Apollo-Main/compiler/runtime_support/apo_stdlib_runtime.hpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
