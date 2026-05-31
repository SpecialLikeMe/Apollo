# `std assertions` — implementation

## Module source

`Apollo-Main/include/assertions.apollo`.

## Exported surface

Free functions in `namespace sys`:

- `sys.require(i32 condition, str message) -> i32`
- `sys.require_equal(i32 left, i32 right, str label) -> i32`
- `sys.require_nonzero(i32 value, str label) -> i32`

All three are pure Apollo — no inline foreign block, no runtime support.

## Lowering

Each helper lowers to a small function:

- Branch on the condition.
- Call `sys.println` with an interpolated string on failure.
- Return the appropriate integer.

String interpolation (`"${...}"`) lowers to a sequence of `sys.println` / string-formatting helpers per the standard interpolation lowering.

## Runtime interaction

The only runtime touchpoint is `sys.println`, which routes through the io module's print implementation.

## Edges and gotchas

- These helpers do not call `abort`, `exit`, or `throw`. Callers wanting fatal behavior must add it themselves.
- The output format is fixed; for structured diagnostics, build a wrapper that reports through a test framework.
- The helpers operate on `i32` exclusively; for `f64` or pointer comparisons, write custom checks or convert.
- The interpolation in failure messages allocates a short string; this is the only allocation cost in the helpers.

## Source of truth

- Source: `Apollo-Main/include/assertions.apollo`
- String interpolation lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
- `sys.println` source: `Apollo-Main/include/io.apollo` (and its runtime in `Apollo-Main/compiler/runtime_support/`)
