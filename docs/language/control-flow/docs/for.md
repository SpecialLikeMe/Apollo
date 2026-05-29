# For loop (C-style)

## What it is

The C-style `for` loop is Apollo's index-driven looping construct. It bundles an initializer, a condition, and a step expression into a single header, then runs the body once per iteration. It is the right shape when you need explicit control over the loop counter — its starting value, its termination check, and how it advances each iteration.

When you want to walk every element of a collection, `for-in` is shorter and safer. When the loop has no natural counter, `while` or `loop` are cleaner.

## When you use it

You reach for the C-style `for` when:

- You need an index — for example, to write into specific slots of a fixed-size structure.
- The step is non-trivial (e.g. doubling, decrementing, stepping by a variable amount).
- You want a single-line statement of "from where, until what, how to advance".
- You are translating familiar C-family loop patterns and the index-driven shape is clearest.

## Syntax

```
'for' '(' forInit? ';' expression? ';' forStep? ')' block

forInit : init | walrusInit | assignment ;
forStep : assignment | callExpression | postfix ;
```

All three header parts are optional. An empty initializer, condition, or step is legal — an entirely empty header `for (;;) { ... }` is a clean way to write an infinite loop, though `loop { ... }` is the conventional spelling.

## Semantics

Execution order per loop run:

1. The initializer runs once, before any iteration. It introduces a fresh scope that lives for the loop's lifetime.
2. The condition is evaluated. If false (or absent), the loop exits.
3. The body runs.
4. The step expression runs.
5. Control returns to step 2.

The initializer's bindings are visible in the condition, the body, and the step. They are not visible after the loop. When the initializer is an `init` (`int i = 0`), the binding's mutability follows the standard rules: declare it `nconst` if the step needs to reassign it.

`break` exits the loop immediately, skipping any remaining step or condition checks. `continue` skips the rest of the body but still runs the step before re-checking the condition.

## Examples

### Classic counted loop

```apollo
int main() {
    for (nconst int i = 0; i < 5; i = i + 1) {
        sys.println(i);
    }
    return 0;
}
```

`i` is initialized once, the condition checks each iteration, the step runs after each body. Output is `0`, `1`, `2`, `3`, `4`.

### Walrus form for the initializer

```apollo
int main() {
    for (nconst i := 0; i < 5; i = i + 1) {
        sys.println(i);
    }
    return 0;
}
```

Walrus form with `nconst` makes the inferred binding mutable so the step can reassign it.

### Doubling step

```apollo
int main() {
    for (nconst i := 1; i <= 64; i = i * 2) {
        sys.println(i);
    }
    return 0;
}
```

The step is `i = i * 2` instead of `i + 1`. The condition determines the upper bound.

### Walking an array by index

```apollo
extern std collections;

int main() {
    nconst vector<int> values = <10, 20, 30, 40, 50>;
    for (nconst i := 0; i < collections.vector.length(values); i = i + 1) {
        sys.printf("[%d] = %d\n", i, values[i]);
    }
    return 0;
}
```

When you need the index as well as the element, the C-style form is the natural fit. The index `i` is the loop counter; element access uses `values[i]`.

### Two-counter loop

```apollo
int main() {
    for (nconst i := 0; i < 5; i = i + 1) {
        for (nconst j := i; j < 5; j = j + 1) {
            sys.printf("(%d,%d) ", i, j);
        }
        sys.println("");
    }
    return 0;
}
```

Loops nest freely. Each inner loop's counter is independent; each outer iteration restarts the inner one.

### Loop with `break` and `continue`

```apollo
int main() {
    for (nconst i := 0; i < 20; i = i + 1) {
        if (i == 13) {
            break;
        }
        if (i % 2 == 0) {
            continue;
        }
        sys.println(i);
    }
    return 0;
}
```

`continue` skips the rest of the body but still runs the step. `break` exits the loop without running the step.

## Common mistakes

- **Forgetting `nconst` on the counter.** A `const` binding cannot be reassigned by the step. Use `nconst` for the counter.
- **Reading the counter after the loop.** The counter binding goes out of scope when the loop exits.
- **Off-by-one bounds.** Apollo provides no special protection. `i < n` walks `[0, n)`; `i <= n` walks `[0, n]`.
- **Side effects in the condition.** Allowed, but the condition runs once per iteration — be deliberate about that count.
- **Treating the step as part of the body.** The step runs after the body even when `continue` skips body code. To skip the step, use `break` and restructure.

## See also

- `docs/language/control-flow/docs/for-in-loop.md` — element-driven walking.
- `docs/language/control-flow/docs/while.md` — condition-driven looping.
- `docs/language/control-flow/docs/loop.md` — explicit infinite loop.
- `docs/language/control-flow/docs/break.md` and `docs/language/control-flow/docs/continue.md` — flow control.
