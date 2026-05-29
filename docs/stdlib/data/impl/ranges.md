# `std ranges` — implementation

## Module source

`Apollo-Main/include/ranges.apollo`.

## Exported functions

All pure Apollo, `i32`-typed, no native bridge:

- `count_up(start, stop)` — loops `current` from `start` while `current < stop`, counting iterations.
- `sum_range(start, stop)` — loops `current` from `start` while `current <= stop`, summing.
- `sum_step(start, stop, step)` — branches on `step > 0` and loops with the appropriate comparison; returns 0 for `step == 0`.
- `repeat_add(value, times)` — adds `value` to a running total `times` times.

## Lowering

All four functions inline trivially as small loops. The frontend may convert them to closed-form arithmetic during optimization, but the source is deliberately additive.

## Runtime support

None.

## Edges and gotchas

- `count_up` returns 0 when `start >= stop`; it does not raise an error.
- `sum_range` returns 0 when `start > stop`; otherwise it computes the closed-range sum even if `start == stop` (returning `start`).
- `sum_step` does not advance for `step == 0`; returns 0 to avoid an infinite loop.
- All loops are O(range size); large ranges are slow. The closed-form `(n*(n+1))/2` is faster but isn't exposed here.

## Source of truth

- Source: `Apollo-Main/include/ranges.apollo`
