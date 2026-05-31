# `std core`

## What it is

The `core` module is Apollo's grab bag of general-purpose `i32` utility functions: identity, min/max, clamp, absolute difference, divmod variants, saturating/wrapping arithmetic, GCD/LCM, signum, choose/boolify. Many higher-level modules (`math`, `assertions`, the prelude) build on `core`.

Most of these are tiny one-liners with intent that's clearer than the equivalent open-coded expression. Saturating/wrapping arithmetic and Euclidean modulo are backed by native helpers because they need exact overflow/sign semantics.

## When you use it

- Picking the smaller or larger of two values without writing a branch.
- Clamping a parameter to a safe range.
- Computing a midpoint, a divisor floor, or a Euclidean modulus.
- Doing arithmetic where you must control overflow behavior.

## API surface

All in `namespace sys`, `i32`-typed unless noted:

- Identity / selection: `id(v)`, `min(l, r)`, `max(l, r)`, `clamp(v, lo, hi)`, `choose(cond, t, f)`, `boolify(v)`, `between(v, lo, hi)`.
- Differences: `abs_diff(l, r)`, `average_floor(l, r)`.
- Division: `div_floor(l, r)`, `mod_euc(l, r)`.
- Overflow control: `saturating_add(l, r)`, `saturating_sub(l, r)`, `saturating_mul(l, r)`, `wrapping_add(l, r)`, `wrapping_sub(l, r)`.
- Number theory: `lcm(l, r)`, `signum(v)`.

## Examples

### Selection helpers

```apollo
extern std core;

int main() {
    sys.println(sys.min(3, 7));            // 3
    sys.println(sys.max(3, 7));            // 7
    sys.println(sys.clamp(15, 0, 10));     // 10
    sys.println(sys.choose(1, 100, 200));  // 100
    return 0;
}
```

Readable one-liners that replace small if-chains.

### Range check

```apollo
extern std core;

int main() {
    nconst int score = 85;
    if (sys.between(score, 70, 100) == 1) {
        sys.println("passing");
    }
    return 0;
}
```

`sys.between` returns 1 if `lo <= score <= hi`, else 0.

### Saturating vs wrapping

```apollo
extern std core;

int main() {
    nconst int big = 2147483600;
    sys.println(sys.saturating_add(big, 1000));  // clamps to i32 max
    sys.println(sys.wrapping_add(big, 1000));    // wraps around
    return 0;
}
```

When near `i32` limits, choose explicitly between clamping and wrapping.

### Euclidean modulus

```apollo
extern std core;

int main() {
    sys.println(-7 % 3);             // language-level: -1
    sys.println(sys.mod_euc(-7, 3)); // Euclidean: 2 (always non-negative)
    return 0;
}
```

Euclidean modulus is what most number-theoretic code wants.

### GCD/LCM

```apollo
extern std core;

int main() {
    sys.println(sys.lcm(6, 8));        // 24
    return 0;
}
```

LCM is delegated to the native helper which computes via `a / gcd(a,b) * b` with overflow guarding.

### Composing min/max

```apollo
extern std core;

int main() {
    nconst int a = 5;
    nconst int b = 12;
    nconst int c = 9;
    nconst int median = sys.max(sys.min(a, b), sys.min(sys.max(a, b), c));
    sys.println(median);
    return 0;
}
```

Three-value median expressed in terms of `min` and `max`.

## Common mistakes

- **Confusing `mod_euc` with `%`.** They differ on negative dividends. Use `mod_euc` when you want a non-negative result.
- **Using `saturating_*` when you want overflow detection.** Saturating clamps silently; for detection prefer the (not-yet-exposed-in-Apollo) overflow-pair helpers in the C++ runtime.
- **Calling `clamp(v, hi, lo)` with reversed bounds.** Result is unspecified; pass `(value, low, high)` in that order.
- **Calling `lcm(0, x)`.** Returns 0 by convention; double-check this is what your math expects.
- **Treating `id` as a no-op for performance.** It is a no-op at the source level; use it sparingly for clarity, not as a hint.

## See also

- `docs/stdlib/foundations/docs/math.md` — float-and-square-style operations.
- `docs/stdlib/foundations/docs/bits.md` — bitwise primitives.
- `docs/stdlib/foundations/docs/assertions.md` — checks built on `core`.
- `Apollo-Main/include/core.apollo` — source.
