# While loop

## What it is

The `while` loop runs a body block repeatedly as long as a boolean condition holds. It is Apollo's primary condition-driven looping construct — when you want to loop "until something is true", `while` is the natural shape.

`while` is a statement, not an expression. It does not produce a value. The body block executes zero or more times depending on the condition; in particular, if the condition is already false on entry, the body never runs.

## When you use it

You reach for `while` when:

- You loop until a runtime condition flips, and the number of iterations is not known up front.
- You consume a stream, queue, or other source that may have any number of items.
- You retry a fallible operation until it succeeds or a budget is exhausted.
- You wait on a signal, a polling result, or a state transition.

If the loop walks a known collection element-by-element, use `for-in`. If you have a clear start/stop/step shape, use the C-style `for`. If you want the body to run at least once before checking the condition, structure the loop as a `loop` with an internal `break`.

## Syntax

```
'while' '(' expression ')' block
```

The condition is mandatory and must be a boolean expression. The body is always a brace block — there is no single-statement form.

## Semantics

The loop evaluates the condition before each iteration, including before the first. If the result is `true`, the body runs once and control returns to the condition. If the result is `false`, the loop exits and execution continues with the next statement after the loop.

`break` inside the body exits the loop immediately, skipping any remaining condition checks. `continue` skips the rest of the current iteration's body and returns to the condition. A `return` inside the body exits both the loop and the enclosing function.

The condition is re-evaluated each iteration. Side effects in the condition therefore happen once per iteration.

The body introduces a fresh scope. Bindings declared inside the body are gone before the next iteration starts; they are not preserved across iterations.

Borrow-checker behavior: any borrow created inside the body that does not survive to a later iteration is released at the end of each iteration. Borrows held across the loop must exist before the loop starts.

## Examples

### Counting down

```apollo
int main() {
    nconst int n = 5;
    while (n > 0) {
        sys.println(n);
        n = n - 1;
    }
    return 0;
}
```

The loop runs five times, printing `5`, `4`, `3`, `2`, `1`. When `n` reaches `0`, the condition fails and the loop exits.

### Polling for a state

```apollo
extern std time;

bool ready() {
    return time.now_ns() % 2 == 0;
}

int main() {
    while (!ready()) {
        sys.println("waiting");
    }
    sys.println("go");
    return 0;
}
```

The condition has side effects through the function call. Each iteration evaluates `ready()` again. As soon as it returns true, the loop exits.

### Consuming a queue

```apollo
extern std collections;

int main() {
    nconst vector<int> work = <1, 2, 3, 4, 5>;
    while (collections.vector.length(work) > 0) {
        nconst int next = collections.vector.pop(work);
        sys.println(next);
    }
    return 0;
}
```

Each iteration removes one element. When the vector is empty, the condition fails and the loop exits.

### Retrying a fallible operation

```apollo
extern std result;

result<int, str> try_fetch(int attempt) {
    if (attempt < 3) {
        return result.error<int, str>("not yet");
    }
    return result.ok<int, str>(42);
}

int main() {
    nconst int attempt = 1;
    nconst result<int, str> r = try_fetch(attempt);
    while (!result.is_ok(r)) {
        sys.printf("retry %d\n", attempt);
        attempt = attempt + 1;
        r = try_fetch(attempt);
    }
    sys.println(result.value(r));
    return 0;
}
```

The loop keeps retrying until the result is ok. The retry counter advances inside the body.

### Early exit with `break`

```apollo
int main() {
    nconst int i = 0;
    while (true) {
        if (i >= 10) {
            break;
        }
        sys.println(i);
        i = i + 1;
    }
    return 0;
}
```

A `while (true)` paired with an internal `break` is the idiomatic infinite-with-internal-exit shape. `break` exits the loop immediately.

### Skipping iterations with `continue`

```apollo
int main() {
    nconst int i = 0;
    while (i < 10) {
        i = i + 1;
        if (i % 2 == 0) {
            continue;
        }
        sys.println(i);
    }
    return 0;
}
```

`continue` jumps back to the condition without running the rest of the body. Output is `1`, `3`, `5`, `7`, `9`.

## Common mistakes

- **Non-boolean condition.** `while (n) { ... }` for an integer `n` is rejected. Write `while (n != 0) { ... }`.
- **Forgetting to mutate the loop variable.** A `while` whose condition never flips loops forever. The compiler does not detect this in general; structure the body so progress is obvious.
- **Forgetting the braces.** The body must be a brace block.
- **Holding a borrow across iterations unintentionally.** A borrow created in the body but not stored into an outer binding is released at the end of each iteration. To hold it across iterations, declare the binding outside the loop.
- **Confusing `while` with `if`.** `while` reruns until the condition fails; `if` runs at most once.

## See also

- `docs/language/control-flow/docs/for.md` — C-style three-part loop.
- `docs/language/control-flow/docs/for-in-loop.md` — element-driven loop.
- `docs/language/control-flow/docs/loop.md` — explicitly-infinite loop with internal exit.
- `docs/language/control-flow/docs/break.md` and `docs/language/control-flow/docs/continue.md` — flow control inside loops.
