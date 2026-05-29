# Throw statement

## What it is

`throw` signals an error that propagates up the call stack until a `catch` clause handles it. Apollo's error model is value-based by default (using `result`), but `throw`/`catch` exists for the cases where exception-style propagation is clearer or required.

## When you use it

Use `throw` sparingly. The Apollo convention is to return `result` values for ordinary failable operations. Reserve `throw` for:

- Errors deep in a call stack where intermediate frames have no useful response.
- Bridges into FFI surfaces whose native code uses exceptions.
- Assertion-style abort paths where unwinding is acceptable.

## Syntax

```
throwStmt : 'throw' expression ';' ;
```

The expression is the error value. Any type may be thrown; convention is to throw a string, a struct describing the error, or a stdlib error type.

## Semantics

`throw` evaluates the expression, then transfers control to the nearest enclosing `catch` clause whose parameter type matches the thrown value's type. If no matching catch exists in the current function, the throw propagates to the caller. Propagation continues until either a matching catch is found or the program's top frame is reached, at which point the program aborts.

`finally` blocks along the unwind path execute in reverse order before the matching catch runs. Locals along the path are dropped.

## Examples

### Throwing a string

```apollo
extern std strings;

int parse_positive(str s) {
    nconst int v = strings.to_i32(s);
    if (v <= 0) {
        throw "must be positive";
    }
    return v;
}

int main() {
    try {
        sys.println(parse_positive("5"));
        sys.println(parse_positive("-3"));
    } catch (err) {
        sys.printf("error: %s\n", err);
    }
    return 0;
}
```

The negative value triggers a throw; the catch picks it up.

### Throwing a struct

```apollo
struct Error {
    str code;
    str message;
};

int divide(int top, int bottom) {
    if (bottom == 0) {
        throw Error("DIVZERO", "cannot divide by zero");
    }
    return top / bottom;
}

int main() {
    try {
        sys.println(divide(20, 4));
        sys.println(divide(7, 0));
    } catch (Error e) {
        sys.printf("[%s] %s\n", e.code, e.message);
    }
    return 0;
}
```

A typed throw and a typed catch parameter narrow the error path.

### Throw inside a loop

```apollo
extern std collections;

void check_all_positive(nconst vector<int>& items) {
    for (nconst int v : items) {
        if (v < 0) {
            throw "negative element found";
        }
    }
}

int main() {
    nconst vector<int> data = <1, 2, -3, 4>;
    try {
        check_all_positive(&nconst data);
    } catch (err) {
        sys.printf("validation: %s\n", err);
    }
    return 0;
}
```

The throw exits the loop and the function in one motion.

### Throw with finally cleanup

```apollo
extern std fs;

void copy_lines(str src, str dst) {
    nconst fs.handle in = fs.open(src);
    try {
        nconst fs.handle out = fs.create(dst);
        try {
            nconst str line = fs.read_line(in);
            if (strings.length(line) == 0) {
                throw "empty source";
            }
            fs.write_line(out, line);
        } finally {
            fs.close(out);
        }
    } finally {
        fs.close(in);
    }
}

extern std strings;

int main() {
    try {
        copy_lines("a.txt", "b.txt");
    } catch (err) {
        sys.printf("error: %s\n", err);
    }
    return 0;
}
```

Both handles close on the unwind path, in reverse order of opening.

### Rethrowing from a catch

```apollo
extern std fs;

void load(str path) {
    try {
        nconst str content = fs.read_to_string(path);
        sys.println(content);
    } catch (err) {
        sys.printf("load failed for %s, rethrowing\n", path);
        throw err;
    }
}

int main() {
    try {
        load("missing.txt");
    } catch (err) {
        sys.printf("outer: %s\n", err);
    }
    return 0;
}
```

The inner catch logs and re-throws to let the outer catch make the final decision.

## Common mistakes

- **Using throw for ordinary errors.** Return `result` values for normal failure modes. Throws are for exceptional paths.
- **Throwing inside a `finally`.** Replaces any pending error, which is rarely intended.
- **Mismatched catch types.** A typed catch parameter only matches that type. Other throws escape uncaught.
- **Forgetting that throw unwinds.** Owned resources along the path are dropped. Make sure invariants don't depend on the throw not happening.
- **Catching too broadly.** A bare `catch (err)` matches anything. Be deliberate about what you want to handle vs propagate.

## See also

- `docs/language/control-flow/docs/try-catch.md` — the corresponding handler.
- `docs/stdlib/foundations/docs/result.md` — the preferred value-based alternative.
- `docs/stdlib/foundations/docs/assertions.md` — fail-fast patterns.
