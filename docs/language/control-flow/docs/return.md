# Return statement

## What it is

`return` ends the current function and optionally hands a value back to the caller. It is the only way a non-`void` function can produce its result, and the most common way a `void` function exits early.

`return` participates in the frontend's "every path returns" check: a non-`void` function must end every reachable path with a `return`, and the compiler enforces that.

## When you use it

Every non-`void` function ends every path with a `return`. Inside a `void` function, you use `return` to exit early when continuing would be wrong, or write `return;` at the very end if you prefer the explicit form (many people omit it for void).

You also use `return` inside `if` guards, `switch` cases, and loop bodies to short-circuit out of the surrounding function when an answer is already known or an error has been detected.

## Syntax

```
returnStmt : 'return' expression? ';' ;
```

The expression is present in a non-`void` function and omitted in a `void` function. Mixing the two — `return;` in a non-`void` function or `return value;` in a `void` function — is rejected by the frontend.

## Semantics

`return` immediately exits the function. The expression, if present, is evaluated and its value is what the caller receives. The function's locals are torn down (calling any drop hooks for owned values, releasing any borrows that originated inside the function).

If the function is inside a `try` block with a `finally` clause, the `finally` block runs before the function actually exits. The return value is preserved across the finally execution.

The frontend's path-coverage analysis treats a block ending in `return` as "this path returns", which contributes to the surrounding function's overall return coverage. An `if` whose every branch returns is itself a returning block; a loop whose body returns on every path returns. Plain fall-through control flow does not return.

## Examples

### Returning a value

```apollo
int square(int n) {
    return n * n;
}

int main() {
    sys.println(square(7));
    return 0;
}
```

The body's only statement is `return`, which evaluates the expression and exits.

### Early return as a guard

```apollo
int divide(int top, int bottom) {
    if (bottom == 0) {
        return 0;
    }
    return top / bottom;
}

int main() {
    sys.println(divide(20, 4));
    sys.println(divide(7, 0));
    return 0;
}
```

The early `return` from the guard keeps the success path at minimum indentation.

### Void return

```apollo
void announce(str msg) {
    if (strings.length(msg) == 0) {
        return;
    }
    sys.println(msg);
}

extern std strings;

int main() {
    announce("");
    announce("hello");
    return 0;
}
```

`return;` exits the void function early without producing a value. A final `return;` at the end is optional.

### Returning from inside a loop

```apollo
extern std collections;

int find(nconst vector<int>& items, int target) {
    for (nconst i := 0; i < collections.vector.length(items); i = i + 1) {
        if (items[i] == target) {
            return i;
        }
    }
    return -1;
}

int main() {
    nconst vector<int> data = <10, 20, 30, 40>;
    sys.println(find(&nconst data, 30));
    sys.println(find(&nconst data, 99));
    return 0;
}
```

`return` inside the loop exits both the loop and the function. The fall-through `return -1` handles the "not found" case.

### Multiple early returns

```apollo
str classify(int n) {
    if (n < 0) {
        return "negative";
    }
    if (n == 0) {
        return "zero";
    }
    if (n < 10) {
        return "small";
    }
    return "large";
}

int main() {
    sys.println(classify(-3));
    sys.println(classify(0));
    sys.println(classify(5));
    sys.println(classify(99));
    return 0;
}
```

A ladder of guarded returns is often clearer than nested if/else.

### Return interacting with finally

```apollo
extern std fs;

str read_first_line(str path) {
    nconst fs.handle h = fs.open(path);
    try {
        return fs.read_line(h);
    } finally {
        fs.close(h);
    }
}

int main() {
    sys.println(read_first_line("notes.txt"));
    return 0;
}
```

The `return` inside `try` runs the `finally` block before the function actually exits. The returned value is preserved across the finally execution.

## Common mistakes

- **Missing return on some path.** Non-void functions must return on every reachable path. The compiler points at the function header and lists the offending path.
- **Returning a value from a void function.** Rejected; void functions either write `return;` or omit it entirely.
- **Returning a reference to a local.** The borrow checker rejects this because the local dies before the caller can use the reference.
- **Forgetting the semicolon.** `return value` without `;` is a parse error.
- **Assuming `return` in a closure exits the enclosing function.** A `return` inside a closure body exits the *closure*, not the surrounding function. Use a non-closure structure or set a flag.

## See also

- `docs/language/declarations/docs/function.md` — function definition and the return-on-every-path rule.
- `docs/language/control-flow/docs/try-catch.md` — interaction with `finally`.
- `docs/language/functions-and-interop/docs/closure.md` — closure return scope.
