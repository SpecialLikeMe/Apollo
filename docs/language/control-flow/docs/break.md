# Break statement

## What it is

`break` exits the nearest enclosing loop (`for`, `for-in`, `while`, or `loop`) or `switch` immediately. Execution continues at the statement after the exited construct.

## When you use it

You write `break` when:

- A loop has done enough work and the natural exit condition is awkward to put in the header.
- You found what you were looking for in the middle of an iteration.
- You want to leave a `switch` case early (although fallthrough is not possible, `break` is still useful inside nested control flow).
- You are using `loop { ... }` for an explicitly-infinite loop and `break` is how you exit.

## Syntax

```
breakStmt : 'break' ';' ;
```

No expression, no label. `break` always targets the innermost enclosing loop or switch.

## Semantics

`break` immediately exits the innermost enclosing loop or switch. Any pending step expression (in a C-style `for`) is skipped. Any borrows held inside the loop body are released as scopes unwind.

A `break` that is not inside any loop or switch is a frontend error.

## Examples

### Exiting a search loop

```apollo
extern std collections;

int find_first(nconst vector<int>& items, int target) {
    nconst int found = -1;
    for (nconst i := 0; i < collections.vector.length(items); i = i + 1) {
        if (items[i] == target) {
            found = i;
            break;
        }
    }
    return found;
}

int main() {
    nconst vector<int> data = <10, 20, 30, 40, 50>;
    sys.println(find_first(&nconst data, 30));
    return 0;
}
```

`break` exits as soon as the target is found. The loop's step expression is skipped.

### Breaking out of `loop`

```apollo
int main() {
    nconst int i = 0;
    loop {
        if (i >= 5) {
            break;
        }
        sys.println(i);
        i = i + 1;
    }
    return 0;
}
```

`loop` is explicitly infinite; `break` is the only way out (short of `return`).

### Break inside `while (true)`

```apollo
extern std collections;

int main() {
    nconst vector<int> work = <1, 2, 3>;
    while (true) {
        if (collections.vector.length(work) == 0) {
            break;
        }
        sys.println(collections.vector.pop(work));
    }
    return 0;
}
```

A `while (true)` with internal `break` is equivalent to `loop { ... }`. Use whichever reads better.

### Break inside a switch nested in a loop

```apollo
int main() {
    nconst int code = 0;
    for (nconst i := 0; i < 5; i = i + 1) {
        switch (i) {
            case 3: {
                code = 1;
                break;     // exits the switch only
            }
            default: { }
        }
        if (code == 1) {
            break;         // exits the for loop
        }
    }
    sys.println(code);
    return 0;
}
```

`break` targets the innermost construct. To exit two levels, structure with a flag or use `return` if the situation allows.

### Break in a for-in loop

```apollo
extern std collections;

int main() {
    nconst vector<int> values = <5, 7, 9, 12, 14>;
    for (nconst int v : values) {
        if (v % 2 == 0) {
            sys.printf("first even: %d\n", v);
            break;
        }
    }
    return 0;
}
```

`break` exits the for-in immediately. Subsequent elements are not iterated.

## Common mistakes

- **Using `break` outside a loop or switch.** Rejected by the frontend.
- **Expecting `break` to exit multiple loops.** It exits only the innermost. Use a flag or `return` for multi-level exits.
- **Forgetting `break` in a switch case expecting fallthrough.** Apollo switches do not fall through, so this is moot — `break` is never required to leave a case.
- **Using `break` to skip an iteration.** That's what `continue` is for. `break` exits entirely.
- **Missing semicolon.** `break` without `;` is a parse error.

## See also

- `docs/language/control-flow/docs/continue.md` — skipping to the next iteration.
- `docs/language/control-flow/docs/loop.md` — the unconditional loop most often paired with `break`.
- `docs/language/control-flow/docs/while.md`, `for.md`, `for-in-loop.md` — looping constructs.
- `docs/language/control-flow/docs/switch.md` — switch and break inside it.
