# Continue statement

## What it is

`continue` skips the rest of the current loop iteration and resumes at the loop's natural advance point. In a `while` loop, that means re-evaluating the condition. In a C-style `for` loop, that means running the step expression and then re-evaluating the condition. In a `for-in` loop, that means advancing to the next element. In a `loop`, that means jumping back to the top.

`continue` belongs to loops only; using it inside a `switch` case (without a surrounding loop) is rejected.

## When you use it

You write `continue` when:

- The body has an obvious "skip this element" early-out and you want to keep the success path at one indent level.
- Filtering inside a loop is clearer as a guard than as a wrapping `if`.
- A C-style for's step expression must still run on the skip path.

## Syntax

```
continueStmt : 'continue' ';' ;
```

No expression, no label. `continue` always targets the innermost enclosing loop.

## Semantics

`continue` jumps to the loop's advance point and continues looping. Borrows acquired earlier in the iteration but not stored outside the loop are released at the back edge.

A `continue` outside any loop is a frontend error. A `continue` inside a `switch` case nested in a loop targets the loop, not the switch.

## Examples

### Skipping even numbers

```apollo
int main() {
    for (nconst i := 0; i < 10; i = i + 1) {
        if (i % 2 == 0) {
            continue;
        }
        sys.println(i);
    }
    return 0;
}
```

`continue` skips the body's print on even iterations. The step `i = i + 1` still runs after the continue, so the loop advances normally.

### Skipping non-matching collection elements

```apollo
extern std collections;

int main() {
    nconst vector<int> values = <1, -2, 3, -4, 5>;
    nconst int total = 0;
    for (nconst int v : values) {
        if (v < 0) {
            continue;
        }
        total = total + v;
    }
    sys.println(total);
    return 0;
}
```

The loop iterates every element but adds only the non-negative ones. `continue` makes the guard read as "skip this", which is often clearer than wrapping the body in an `if`.

### Multiple skip conditions

```apollo
extern std strings;

int main() {
    nconst vector<str> lines = <"hello", "", "#comment", "world">;
    for (nconst str line : lines) {
        if (strings.length(line) == 0) {
            continue;
        }
        if (strings.byte_at(line, 0) == strings.byte_at("#", 0)) {
            continue;
        }
        sys.println(line);
    }
    return 0;
}
```

Stacked `continue` guards filter out empty lines and comment lines. Output is `hello` and `world`.

### Continue inside a while loop

```apollo
int main() {
    nconst int i = 0;
    while (i < 10) {
        i = i + 1;
        if (i % 3 == 0) {
            continue;
        }
        sys.println(i);
    }
    return 0;
}
```

In a `while` loop there is no step expression — `continue` jumps directly to the condition check.

### Continue inside a switch nested in a loop

```apollo
int main() {
    for (nconst i := 0; i < 5; i = i + 1) {
        switch (i) {
            case 2: {
                continue;   // targets the for loop, not the switch
            }
            default: { }
        }
        sys.println(i);
    }
    return 0;
}
```

`continue` targets the enclosing loop. `switch` does not participate in continue.

## Common mistakes

- **Using `continue` outside a loop.** Rejected.
- **Using `continue` to exit a loop.** That's `break`. `continue` keeps iterating.
- **Expecting `continue` to skip the C-style for's step.** It does not. The step still runs.
- **Confusing `continue` semantics in `while` vs `for`.** In `while`, no step exists, so `continue` is just a jump back to the condition.
- **Missing semicolon.** `continue` without `;` is a parse error.

## See also

- `docs/language/control-flow/docs/break.md` — full early exit.
- `docs/language/control-flow/docs/while.md`, `for.md`, `for-in-loop.md`, `loop.md` — looping constructs that accept `continue`.
