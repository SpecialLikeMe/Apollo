# `std math` — implementation

## Module source

`Apollo-Main/include/math.apollo`. Imports `std core`.

## Surface partition

- **Integer helpers** (pure Apollo): `abs`, `sign`, `twice`, `triple`, `square`, `pow2`, `triangular`, `gcd`. Implemented with simple loops or arithmetic; `square` and `pow2` use additive loops (not `*` or shift) to keep semantics explicit.
- **Floating-point helpers** (native-backed): `abs_f64`, `ceil`, `floor`, `round`, `trunc`, `sqrt`, `cbrt`, `hypot`, `sin`, `cos`, `tan`, plus arc / hyperbolic / exp / log in the full file.

## Native bridge

The module ends with an `@unsafe { inline::cpp { ... } }` block declaring C++ shims `sys__native_*` that call into the host math library or into `__apo_stdlib` helpers.

## Lowering

- Integer helpers inline; the loop-based `square` and `pow2` are deliberately not turned into shifts/multiplies at this layer.
- Float helpers lower to direct calls to the inline-foreign C++ shims, which in turn call the host's `<cmath>` functions.

## Edges and gotchas

- `square(x)` runs in O(|x|) additions, not a single `x * x`. This is intentional to match the surface's compatibility shape; consumers wanting a fast multiply should write `x * x` directly.
- `pow2(exponent)` runs in O(exponent) iterations. For larger exponents, bit shifts or native pow helpers are faster.
- `gcd` uses the subtractive algorithm and returns `sys.abs` of inputs, matching common conventions for negative inputs.
- Float helpers inherit the host platform's IEEE 754 semantics, including NaN propagation, signed zero, and rounding mode.

## Source of truth

- Source: `Apollo-Main/include/math.apollo`
- C++ helpers: `Apollo-Main/compiler/runtime_support/apo_stdlib_runtime.hpp`
- Inline foreign lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
