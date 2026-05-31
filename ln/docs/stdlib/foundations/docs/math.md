# `std math`

## What it is

The `math` module collects integer helpers (`abs`, `sign`, `twice`, `triple`, `square`, `pow2`, `triangular`, `gcd`) and a broad set of `f64` floating-point functions (`abs_f64`, `ceil`, `floor`, `round`, `trunc`, `sqrt`, `cbrt`, `hypot`, trig, hyperbolic, exp/log, etc.). The floating-point functions delegate to a C++ runtime backed by the host's math library; the integer helpers are pure Apollo.

This module is what user code reaches for to do math beyond the basic operators.

## When you use it

- Standard math: trig, exponentials, square roots.
- Integer helpers when you want a named operation instead of inline arithmetic (`sys.square(x)`).
- Building higher-level numerical code (geometry, signal processing, finance).

## API surface

All in `namespace sys`.

Integer (`i32`):

- `abs(v)`, `sign(v)`, `twice(v)`, `triple(v)`, `square(v)`, `pow2(exponent)`, `triangular(limit)`, `gcd(l, r)`.

Floating-point (`f64`):

- Magnitude / rounding: `abs_f64(v)`, `ceil(v)`, `floor(v)`, `round(v)`, `trunc(v)`.
- Roots: `sqrt(v)`, `cbrt(v)`, `hypot(a, b)`.
- Trig: `sin`, `cos`, `tan`, plus arc variants and hyperbolic in the full file.
- Exp/log: standard `exp`, `log`, etc. in the full file.

## Examples

### Integer helpers

```apollo
extern std math;

int main() {
    sys.println(sys.abs(-7));         // 7
    sys.println(sys.sign(-3));        // -1
    sys.println(sys.square(5));       // 25
    sys.println(sys.pow2(8));         // 256
    sys.println(sys.triangular(4));   // 1+2+3+4 = 10
    return 0;
}
```

### GCD

```apollo
extern std math;

int main() {
    sys.println(sys.gcd(12, 18));   // 6
    sys.println(sys.gcd(0, 9));     // 9
    return 0;
}
```

### Floating-point rounding

```apollo
extern std math;

int main() {
    sys.printf("ceil(2.3) = %f\n", sys.ceil(2.3));
    sys.printf("floor(2.7) = %f\n", sys.floor(2.7));
    sys.printf("round(2.5) = %f\n", sys.round(2.5));
    sys.printf("trunc(-1.9) = %f\n", sys.trunc(-1.9));
    return 0;
}
```

### Square root and hypotenuse

```apollo
extern std math;

int main() {
    sys.printf("sqrt(2) = %f\n", sys.sqrt(2.0));
    sys.printf("hypot(3, 4) = %f\n", sys.hypot(3.0, 4.0));   // 5
    return 0;
}
```

`hypot` computes `sqrt(a*a + b*b)` with better numerical behavior than the open-coded form.

### Trig

```apollo
extern std math;

int main() {
    sys.printf("sin(0) = %f\n", sys.sin(0.0));
    sys.printf("cos(0) = %f\n", sys.cos(0.0));
    sys.printf("tan(0) = %f\n", sys.tan(0.0));
    return 0;
}
```

Angles are in radians, matching the C math library convention.

### Combining integer + float

```apollo
extern std math;

i32 distance_squared(i32 dx, i32 dy) {
    return sys.square(dx) + sys.square(dy);
}

int main() {
    nconst i32 d2 = distance_squared(3, 4);
    sys.printf("distance = %f\n", sys.sqrt(d2));
    return 0;
}
```

Integer math for the squared distance; float for the root.

## Common mistakes

- **Calling float helpers on `i32`.** The signature is `f64` only; cast explicitly.
- **Expecting `round` to do banker's rounding.** It follows the C++ `round` semantics — round half away from zero.
- **Trig with degrees.** Convert to radians (`degrees * pi / 180.0`) before calling `sin`/`cos`/`tan`.
- **`pow2` for large exponents.** It is iterative; large exponents are slow. Use a native pow helper if needed.
- **`gcd(0, 0)`.** Returns 0 by convention.

## See also

- `docs/stdlib/foundations/docs/core.md` — generic integer helpers.
- `docs/stdlib/foundations/docs/bits.md` — bit-level integer ops.
- `docs/language/types/docs/primitive-types.md` — `f64`, `i32` and friends.
- `Apollo-Main/include/math.apollo` — source.
