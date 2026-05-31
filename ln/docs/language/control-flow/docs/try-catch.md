# Try / catch statement

## What it is

`try` / `catch` is Apollo's structured error-handling construct. The `try` block runs code that may signal a failure; the `catch` block runs in response. Apollo's error model is value-based (Results), but `try` / `catch` exists as a structured way to interact with code that propagates errors through `throw` or that wraps `result`-returning operations into a friendlier flow.

The construct is statement-shaped, not expression-shaped. It does not produce a value directly.

## When you use it

You reach for `try` / `catch` when:

- You are calling code that may signal failure via `throw` and you want to recover locally instead of propagating.
- You want to centralize cleanup or fallback behavior for a region of code.
- You are bridging code that uses `throw` with code that uses `result` values, and you want one location to convert between the two styles.

For ordinary failable work, prefer the `result` surface and check it explicitly. `try` / `catch` is for the cases where wrapping every call in `if (result.is_ok(...))` would obscure the algorithm.

## Syntax

```
tryCatchStatement
    : 'try' block 'catch' '(' typeRef? ID? ')' block
      ('finally' block)?
    ;
```

The `catch` clause receives an optional bound error value. The optional `finally` block runs after either the `try` body finishes normally or after the `catch` block runs.

## Semantics

The `try` block runs. If it completes without signaling, control proceeds past the `try` / `catch` (running the `finally` block first if present).

If a `throw` inside the `try` block signals an error, control transfers to the `catch` block. The error value is bound to the catch parameter if one is declared. The `catch` block runs to completion, then control proceeds (after the `finally` block, if present).

Errors of types not matched by the `catch` parameter type — when a type is declared — propagate out of the `try` / `catch` as if it were not present. When the catch parameter type is omitted, the `catch` matches any error.

The `finally` block runs in both the normal and the error path. It is intended for cleanup (closing handles, releasing locks). Errors thrown inside `finally` replace any pending error from the `try` or `catch` blocks.

## Examples

### Catching any error

```apollo
extern std fs;

int main() {
    try {
        nconst str content = fs.read_to_string("notes.txt");
        sys.println(content);
    } catch (err) {
        sys.printf("read failed: %s\n", err);
    }
    return 0;
}
```

If `fs.read_to_string` throws on missing file, control transfers to the catch with `err` bound to the thrown value.

### Typed catch parameter

```apollo
extern std net;

int main() {
    try {
        nconst net.connection c = net.connect("example.com", 80);
        net.close(c);
    } catch (net.error err) {
        sys.printf("network error: %s\n", net.error_message(err));
    }
    return 0;
}
```

The catch parameter's type filters which errors are matched. Other error types propagate.

### Try / catch / finally

```apollo
extern std fs;

void process_file(str path) {
    nconst fs.handle h = fs.open(path);
    try {
        nconst str line = fs.read_line(h);
        sys.println(line);
    } catch (err) {
        sys.printf("read error: %s\n", err);
    } finally {
        fs.close(h);
    }
}

int main() {
    process_file("notes.txt");
    return 0;
}
```

`finally` ensures `fs.close` runs regardless of whether the read succeeded or failed.

### Catching to convert to result

```apollo
extern std fs;
extern std result;

result<str, str> safe_read(str path) {
    try {
        return result.ok<str, str>(fs.read_to_string(path));
    } catch (err) {
        return result.error<str, str>(err);
    }
}

int main() {
    nconst result<str, str> r = safe_read("notes.txt");
    if (result.is_ok(r)) {
        sys.println(result.value(r));
    } else {
        sys.println(result.error(r));
    }
    return 0;
}
```

A small `try` / `catch` bridges throw-style code into result-style code.

### Re-throwing inside catch

```apollo
extern std fs;

void log_and_rethrow(str path) {
    try {
        nconst str content = fs.read_to_string(path);
        sys.println(content);
    } catch (err) {
        sys.printf("logging error before propagating: %s\n", err);
        throw err;
    }
}

int main() {
    try {
        log_and_rethrow("missing.txt");
    } catch (e) {
        sys.printf("outer caught: %s\n", e);
    }
    return 0;
}
```

Re-throwing inside a `catch` propagates the error to an outer handler.

## Common mistakes

- **Using try/catch as the default error mechanism.** Apollo prefers explicit `result` values. Use try/catch for genuine exceptional cases, not normal control flow.
- **Forgetting `finally` cleanup.** Resources opened inside the `try` block that need closing should be closed in `finally`, not at the end of `try` (because the end may never run if an error occurs).
- **Catching an unrelated error type.** Typed catch parameters do not match unrelated error types; the error escapes uncaught. Either omit the type to catch anything, or layer multiple `try`/`catch` blocks.
- **Throwing inside `finally`.** Replaces any pending error, which is rarely what you want. Keep `finally` blocks cleanup-only.
- **Expecting a return value.** `try`/`catch` is a statement. To produce a value, assign inside both branches or rely on `result`.

## See also

- `docs/stdlib/foundations/docs/result.md` — the value-based error mechanism.
- `docs/language/control-flow/docs/throw.md` — signaling an error.
- `docs/language/control-flow/docs/return.md` — exiting a function from inside try/catch.
- `docs/stdlib/foundations/docs/assertions.md` — fail-fast checks that don't need catching.
