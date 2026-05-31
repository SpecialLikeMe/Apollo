# `std ranges`

## What it is

The `ranges` module is a small collection of integer-range helpers: counting the length of a range, summing the integers in a closed range, summing a stepped range, and repeated addition. All are pure Apollo loops.

The module is intentionally simple. It is not an iterator framework; it does not produce a sequence object you can compose. For richer iteration, the language's `for-in` loop and stdlib vector/map operations are the primary tools.

## When you use it

- Computing a running total of integers in a range without writing the loop inline.
- Counting how many integers fit in `[start, stop)`.
- Building a stepped sum (e.g., even numbers up to 100).
- Simple repeat-add pattern for testing or quick math.

For real iteration, prefer `for-in` over `vector`.

## API surface

All in `namespace sys`, `i32`-typed:

- `sys.count_up(start, stop)` — number of integers in `[start, stop)`.
- `sys.sum_range(start, stop)` — sum of integers in `[start, stop]` (closed range).
- `sys.sum_step(start, stop, step)` — sum of `start, start+step, start+2*step, ...` while still in range.
- `sys.repeat_add(value, times)` — `value * times` expressed as repeated addition.

## Examples

### Count

```apollo
extern std ranges;

int main() {
    sys.println(sys.count_up(0, 10));    // 10
    sys.println(sys.count_up(5, 5));     // 0
    sys.println(sys.count_up(3, 8));     // 5
    return 0;
}
```

The range is half-open: `count_up(0, 10)` covers 0..9.

### Sum range

```apollo
extern std ranges;

int main() {
    sys.println(sys.sum_range(1, 10));   // 55
    sys.println(sys.sum_range(1, 100));  // 5050
    return 0;
}
```

Closed range — both `start` and `stop` included.

### Sum step

```apollo
extern std ranges;

int main() {
    sys.println(sys.sum_step(2, 10, 2));   // 2+4+6+8+10 = 30
    sys.println(sys.sum_step(10, 0, -1));  // 10+9+...+0 = 55
    sys.println(sys.sum_step(0, 100, 0));  // step 0 returns 0
    return 0;
}
```

The function handles positive and negative steps; step 0 returns 0 by convention.

### Repeat add

```apollo
extern std ranges;

int main() {
    sys.println(sys.repeat_add(5, 4));    // 5+5+5+5 = 20
    sys.println(sys.repeat_add(7, 0));    // 0
    return 0;
}
```

A safe multiplication expressed as addition (useful when you want to be explicit about the cost).

### Combining with control flow

```apollo
extern std ranges;

int main() {
    nconst int total = 0;
    for (nconst i := 1; i <= 5; i = i + 1) {
        total = total + sys.sum_range(1, i);   // 1, 1+2, 1+2+3, ...
    }
    sys.println(total);
    return 0;
}
```

Composing range helpers inside a regular loop.

### Computing a triangular number alternative

```apollo
extern std ranges;
extern std math;

int main() {
    sys.println(sys.triangular(10));       // from std math, additive loop
    sys.println(sys.sum_range(1, 10));     // same value via ranges
    return 0;
}
```

`std math.triangular` and `std ranges.sum_range` overlap for the simple case; they are equivalent in result.

## Common mistakes

- **Confusing half-open and closed ranges.** `count_up` is half-open `[start, stop)`; `sum_range` is closed `[start, stop]`. Read the names carefully.
- **`sum_step` with the wrong sign step.** A positive step requires `stop >= start` to produce non-empty output, and vice versa.
- **`sum_step` with step 0.** Returns 0 by convention to avoid infinite loops.
- **Using these for large ranges.** All are O(range size) by construction; for big arithmetic prefer closed-form formulas.
- **Expecting iterators.** The module returns integer results, not sequence objects.

## See also

- `docs/stdlib/foundations/docs/math.md` — `triangular` and friends.
- `docs/stdlib/foundations/docs/core.md` — `min`, `max`, `clamp`.
- `docs/language/control-flow/docs/for-in-loop.md` — iteration over collections.
- `Apollo-Main/include/ranges.apollo` — source.
