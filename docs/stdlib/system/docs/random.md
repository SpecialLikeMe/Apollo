# `std random`

## What it is

The `random` module provides a `random` PRNG handle plus operations to seed it and draw `i32`, `i32` in range, `f64`, and `bool` values. Each `random` is an independent generator state — create one per stream you need.

This is a non-cryptographic PRNG suitable for simulations, tests, and games. For cryptographic randomness, do not use this.

## When you use it

- Procedural generation (terrain, level layout).
- Sampling and shuffling.
- Test fixtures that need reproducible randomness via a fixed seed.
- Quick coin-flips for behavior selection.

## API surface

All in `namespace sys`:

- `sys.rand_new()` → `random`.
- `sys.rand_seed(rng, seed)` — reset the generator to a known state.
- `sys.rand_i32(rng)` — full-range `i32` (may be negative).
- `sys.rand_range_i32(rng, low, high)` — `i32` in `[low, high)` or similar (see runtime).
- `sys.rand_f64(rng)` — `[0.0, 1.0)`.
- `sys.rand_bool(rng)` — 0 or 1.

## Examples

### Basic draws

```apollo
extern std random;

int main() {
    nconst random rng = sys.rand_new();
    sys.println(sys.rand_i32(rng));
    sys.printf("%f\n", sys.rand_f64(rng));
    sys.println(sys.rand_bool(rng));
    return 0;
}
```

### Reproducible runs

```apollo
extern std random;

int main() {
    nconst random rng = sys.rand_new();
    sys.rand_seed(rng, 42);
    for (nconst i := 0; i < 5; i = i + 1) {
        sys.println(sys.rand_range_i32(rng, 0, 100));
    }
    return 0;
}
```

Same seed → same sequence; useful for tests.

### Two independent streams

```apollo
extern std random;

int main() {
    nconst random a = sys.rand_new();
    nconst random b = sys.rand_new();
    sys.rand_seed(a, 1);
    sys.rand_seed(b, 2);
    sys.println(sys.rand_i32(a));
    sys.println(sys.rand_i32(b));
    return 0;
}
```

Each handle has its own state.

### Coin flip

```apollo
extern std random;

int main() {
    nconst random rng = sys.rand_new();
    for (nconst i := 0; i < 10; i = i + 1) {
        sys.println(sys.rand_bool(rng) == 1 ? "heads" : "tails");
    }
    return 0;
}
```

### Pick from a list

```apollo
extern std random;
extern std collections;

str pick(nconst random& rng, nconst vector& items) {
    nconst i32 i = sys.rand_range_i32(rng, 0, sys.vec_len(items));
    return sys.vec_get(items, i);
}

int main() {
    nconst random rng = sys.rand_new();
    nconst vector colors = sys.vec_new();
    sys.vec_push(colors, "red");
    sys.vec_push(colors, "green");
    sys.vec_push(colors, "blue");
    sys.println(pick(&nconst rng, &nconst colors));
    return 0;
}
```

### Generate a random float in a custom range

```apollo
extern std random;

f64 rand_in(nconst random& rng, f64 low, f64 high) {
    return low + sys.rand_f64(rng) * (high - low);
}

int main() {
    nconst random rng = sys.rand_new();
    sys.printf("%f\n", rand_in(&nconst rng, -1.0, 1.0));
    return 0;
}
```

## Common mistakes

- **Using for security.** Not cryptographic. Use a system CSPRNG for security tokens.
- **One global generator shared across threads.** The runtime's PRNG state isn't synchronized; use one per thread or wrap with a mutex.
- **Re-seeding mid-stream.** Wipes prior state; only do this when you need a deterministic restart.
- **Range with `low == high`.** May return `low` or panic depending on the runtime; check before calling.
- **Drawing `i32` and expecting non-negative.** `rand_i32` returns any `i32`. Use `rand_range_i32` for bounded values.

## See also

- `docs/stdlib/foundations/docs/math.md` — clamp/normalize draws.
- `docs/stdlib/foundations/docs/core.md` — selection helpers.
- `docs/stdlib/data/docs/collections.md` — random picks from collections.
- `Apollo-Main/include/random.apollo` — source.
