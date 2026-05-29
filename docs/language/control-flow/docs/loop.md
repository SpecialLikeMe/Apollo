# Loop statement

## What it is

`loop` is Apollo's explicitly-infinite looping construct. It runs its body forever until a `break`, `return`, or `throw` exits it. There is no condition in the header — the loop's exit logic lives inside the body.

`loop` is the cleanest spelling for "run this until told to stop". It is preferred over `while (true)` because the intent is right there in the keyword.

## When you use it

You reach for `loop` when:

- The loop has no natural condition for the header — the exit decision is made inside the body.
- You are running an event loop, a server accept-loop, or any long-lived processing routine.
- You want a uniform "stop when X happens" idiom and prefer `break` over a redundant `true` check.

If a clear condition fits in the header, prefer `while`. If you need a counter, use `for`.

## Syntax

```
loopStmt : 'loop' block ;
```

No header expression. The body is a brace block.

## Semantics

`loop` runs the body once, then again, and again, until something exits it. `break` exits the loop. `return` exits the loop and the enclosing function. `throw` exits the loop via the exception path.

The body has its own scope. Bindings declared inside the body do not survive across iterations; they are re-initialized each time. To carry state across iterations, declare the binding outside the loop.

The frontend treats a `loop` whose body never exits as a non-returning path for the enclosing function. A function whose `loop` is the last statement and whose body lacks any exit needs no further `return` — the loop never falls through.

## Examples

### A simple counted exit

```apollo
int main() {
    nconst int n = 0;
    loop {
        if (n >= 5) {
            break;
        }
        sys.println(n);
        n = n + 1;
    }
    return 0;
}
```

The loop runs forever from the header's perspective; the body's `if`/`break` provides the exit.

### Reading until end-of-input

```apollo
extern std io;

int main() {
    loop {
        nconst str line = io.read_line(io.stdin());
        if (strings.length(line) == 0) {
            break;
        }
        sys.println(line);
    }
    return 0;
}

extern std strings;
```

A typical input-processing loop: read, check for end, process, repeat.

### Event-loop shape

```apollo
extern std io;

void handle(str event) {
    sys.printf("event: %s\n", event);
}

int main() {
    loop {
        nconst str e = io.read_line(io.stdin());
        if (e == "quit") {
            break;
        }
        handle(e);
    }
    sys.println("shutting down");
    return 0;
}
```

The loop body dispatches each event. The exit condition is the "quit" message.

### Loop with a return

```apollo
extern std collections;

int first_negative(nconst vector<int>& items) {
    nconst int i = 0;
    loop {
        if (i >= collections.vector.length(items)) {
            return -1;
        }
        if (items[i] < 0) {
            return i;
        }
        i = i + 1;
    }
}

int main() {
    nconst vector<int> data = <1, 2, -3, 4>;
    sys.println(first_negative(&nconst data));
    return 0;
}
```

The loop exits via `return` on either of two conditions. Because the loop never falls through, the function does not need a return after the loop.

### Loop wrapping a state machine

```apollo
int main() {
    nconst int state = 0;
    loop {
        switch (state) {
            case 0: { sys.println("init");   state = 1; }
            case 1: { sys.println("work");   state = 2; }
            case 2: { sys.println("finish"); state = 3; }
            default: { break; }
        }
        if (state == 3) {
            break;
        }
    }
    return 0;
}
```

A long-lived state machine where each iteration advances the state. Two exits: the `default` case break and the post-switch `if (state == 3) break;`.

## Common mistakes

- **No exit in the body.** A `loop` with no `break`, `return`, or `throw` runs forever. The frontend does not warn (sometimes that is exactly what you want), so be deliberate.
- **Forgetting to update progress.** A loop that does not advance state will spin. Make sure each iteration moves toward exit.
- **Declaring loop state inside the body.** Bindings declared in the body are re-initialized each iteration. Move them outside if you need them to persist.
- **Using `loop` when `while` is clearer.** If there is an obvious condition, `while` reads better.
- **Expecting an implicit counter.** `loop` has no counter. Add one yourself with a binding outside the loop.

## See also

- `docs/language/control-flow/docs/while.md` — condition-driven looping.
- `docs/language/control-flow/docs/for.md` — counter-driven looping.
- `docs/language/control-flow/docs/break.md` and `docs/language/control-flow/docs/return.md` — the standard exits.
