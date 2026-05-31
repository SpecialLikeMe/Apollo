# `std assertions`

## What it is

The `assertions` module provides three small invariant-checking helpers under `namespace sys`. They return an `i32` (1 on success, 0 on failure) and print a message to stdout when an assertion fails, but they do not abort the program — they are advisory, not fatal.

For programs that need fail-fast behavior, combine these with an explicit early return or `throw`.

## When you use it

- Quick checks during development.
- Documenting invariants inline ("this should never be zero").
- Test scaffolding that wants to record failures but continue.

For production-grade preconditions where you want to terminate, prefer `throw` plus a `try/catch` at a higher level. For test frameworks, prefer a dedicated test runner.

## API surface

All helpers live in `namespace sys`:

- `i32 sys.require(i32 condition, str message)` — prints `"assertion failed: ${message}"` if `condition == 0`. Returns `condition`'s effective boolean (1 on pass, 0 on fail).
- `i32 sys.require_equal(i32 left, i32 right, str label)` — prints `"${label}: ${left} != ${right}"` on mismatch. Returns 1 on equal, 0 on mismatch.
- `i32 sys.require_nonzero(i32 value, str label)` — prints `"${label}: expected non-zero"` if `value == 0`. Returns `value` (which is nonzero on pass, 0 on fail).

## Examples

### Basic require

```apollo
extern std assertions;

int main() {
    nconst int n = 5;
    sys.require(n > 0, "n must be positive");
    sys.println(n);
    return 0;
}
```

The condition holds; no output beyond the value.

### Failing require

```apollo
extern std assertions;

int main() {
    nconst int n = -1;
    sys.require(n > 0, "n must be positive");
    sys.println("continued anyway");
    return 0;
}
```

Prints `assertion failed: n must be positive` then `continued anyway`. The helper does not abort.

### Require equal

```apollo
extern std assertions;

int compute() { return 42; }

int main() {
    sys.require_equal(compute(), 42, "compute returns 42");
    return 0;
}
```

When `compute()` drifts from 42, the failure prints with the actual mismatch.

### Require non-zero

```apollo
extern std assertions;

int find_index(int needle) {
    if (needle == 7) { return 3; }
    return 0;
}

int main() {
    nconst int idx = sys.require_nonzero(find_index(7), "must find needle");
    sys.println(idx);
    return 0;
}
```

The result of `find_index` propagates through `require_nonzero`.

### Fail-fast pattern

```apollo
extern std assertions;

int divide(int a, int b) {
    if (sys.require_nonzero(b, "divisor") == 0) {
        return 0;     // early return on assertion failure
    }
    return a / b;
}

int main() {
    sys.println(divide(10, 2));
    sys.println(divide(10, 0));
    return 0;
}
```

The helper alone does not abort; the caller decides whether to short-circuit.

### Test-style chain

```apollo
extern std assertions;

int main() {
    nconst int total = 0;
    total = total + sys.require_equal(1 + 1, 2, "add");
    total = total + sys.require_equal(3 * 3, 9, "mul");
    total = total + sys.require(2 < 5, "lt");
    sys.printf("passed: %d of 3\n", total);
    return 0;
}
```

Each helper returns 1 on success; summing yields a pass count.

## Common mistakes

- **Assuming `sys.require` aborts.** It doesn't. Combine with early return, `throw`, or `process.exit` for fatal behavior.
- **Discarding the return value when you needed the short-circuit.** The helpers' return value is meaningful; check it.
- **Calling assertions in tight loops.** They print on failure but otherwise do work each call. Don't put them in hot paths unless you want the cost.
- **Confusing `require_equal` argument order.** It's `(left, right, label)` — the label is the last argument, not the first.

## See also

- `docs/stdlib/foundations/docs/core.md` — the underlying `sys.*` namespace.
- `docs/language/control-flow/docs/throw.md` — fatal-error path.
- `docs/language/control-flow/docs/try-catch.md` — catching thrown errors.
- `Apollo-Main/include/assertions.apollo` — source.
