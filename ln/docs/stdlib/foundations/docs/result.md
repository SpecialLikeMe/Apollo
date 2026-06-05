# `std result`

## What it is

The `result` module surfaces Apollo's canonical value-or-error carriers: `nominal<T, E>`, `option<T>`, and `option<T, E>`. All three lower to the same tagged aggregate shape. The constructors `nominal(...)`, `cerr(...)`, and `terminalcerr(...)` produce values of these types, and `std result` provides predicate and inspection helpers in `namespace sys`.

These types let Apollo code return a value-or-error pair from a single function without throwing.

## When you use it

- Functions that can fail in a recoverable way and want to make that explicit at the type level.
- APIs where exceptions are unwelcome (latency-sensitive code, FFI surfaces, lock-free paths).
- Optional values where `null` is awkward or wrong for the type.

## API surface

Carrier types:

- `nominal<T, E>` — success payload `T`, error payload `E`.
- `option<T>` — alias of `nominal<T, str>`.
- `option<T, E>` — same carrier layout with custom error type `E`.

Constructors:

- `nominal(v)` — produce a success result.
- `cerr(msg)` — produce a recoverable error.
- `terminalcerr(msg)` — produce a terminal error.

Result tag predicates in `namespace sys`:

- `sys.is_nominal(value)` — returns `1` if the carrier holds a success payload.
- `sys.is_cerr(value)` — returns `1` if the carrier holds a recoverable error.
- `sys.is_terminal(value)` — returns `1` if the carrier holds a terminal error.

These helpers are overloaded only for the primitive success payloads currently declared in `Apollo-Main/include/result.apollo`: `i32`, `bool`, `f64`, and `str`, with `str` or `cerr` error payloads.

Unwrap surfaces:

- `value.unwrap()` — compiler-provided zero-argument member sugar for `nominal<T, E>` and `option<...>` carriers. It returns the success payload type `T`.
- `sys.unwrap_i32(value)`, `sys.unwrap_bool(value)`, `sys.unwrap_f64(value)`, `sys.unwrap_str(value)` — typed stdlib helpers for the primitive overloads above.

Error inspection:

- `sys.error_message(value)` — returns the error string, or empty when the result is nominal.

## Examples

### Returning a result

```apollo
extern std result;

nominal<i32, str> parse_positive(i32 raw) {
    if (raw < 0) {
        return cerr("must be non-negative");
    }
    return nominal(raw);
}

int main() {
    nconst auto r = parse_positive(7);
    if (sys.is_nominal(r) == 1) {
        sys.println(r.unwrap());
    } else {
        sys.println(sys.error_message(r));
    }
    return 0;
}
```

### Option for "no result"

```apollo
extern std result;
extern std collections;

option<i32> find(nconst vector<i32>& v, i32 needle) {
    for (nconst i := 0; i < collections.vector.length(v); i = i + 1) {
        if (v[i] == needle) {
            return nominal(i);
        }
    }
    return cerr("not found");
}

int main() {
    nconst vector<i32> v = <10, 20, 30>;
    nconst auto r = find(&nconst v, 20);
    if (sys.is_nominal(r) == 1) {
        sys.printf("index = %d\n", r.unwrap());
    }
    return 0;
}
```

`option<i32>` is `nominal<i32, str>` in disguise — the lookup returns the index on success or a textual reason on absence.

### Terminal errors

```apollo
extern std result;

nominal<i32, str> open_critical_resource(i32 id) {
    if (id == 0) {
        return terminalcerr("resource id zero is reserved");
    }
    return nominal(id);
}

int main() {
    nconst auto r = open_critical_resource(0);
    if (sys.is_terminal(r) == 1) {
        sys.println("terminal failure; cannot continue");
        return 1;
    }
    return 0;
}
```

`terminalcerr` flags errors that the caller is expected to treat as fatal.

### Chaining

```apollo
extern std result;

nominal<i32, str> step_a() { return nominal(10); }

nominal<i32, str> step_b(i32 v) {
    if (v < 0) { return cerr("negative"); }
    return nominal(v * 2);
}

int main() {
    nconst auto a = step_a();
    if (sys.is_nominal(a) == 0) {
        sys.println(sys.error_message(a));
        return 1;
    }
    nconst auto b = step_b(a.unwrap());
    if (sys.is_nominal(b) == 1) {
        sys.println(b.unwrap());
    }
    return 0;
}
```

Manual chaining; each step checks the prior result before proceeding.

### Bool result

```apollo
extern std result;

nominal<bool, str> is_admin(i32 user_id) {
    if (user_id == 1) { return nominal(true); }
    if (user_id < 0) { return cerr("invalid user"); }
    return nominal(false);
}

int main() {
    nconst auto r = is_admin(1);
    if (sys.is_nominal(r) == 1) {
        sys.println(r.unwrap() ? "admin" : "not admin");
    }
    return 0;
}
```

### String result

```apollo
extern std result;

nominal<str, str> lookup_name(i32 id) {
    if (id == 1) { return nominal("alice"); }
    return cerr("unknown id");
}

int main() {
    nconst auto r = lookup_name(1);
    if (sys.is_nominal(r) == 1) {
        sys.println(r.unwrap());
    } else {
        sys.println(sys.error_message(r));
    }
    return 0;
}
```

## Common mistakes

- **Unwrapping without checking.** `r.unwrap()` and `sys.unwrap_*` do not verify the tag; call `sys.is_nominal(r)` first unless earlier control flow already proved success.
- **Confusing `cerr` vs `terminalcerr`.** They differ in caller intent: `cerr` is recoverable, `terminalcerr` says "stop".
- **Mixing result handling with exceptions.** Pick one strategy per layer of your code; mixing makes both harder to reason about.
- **Forgetting `extern std result`.** Without the import, the helper functions are not in scope.
- **Assuming every helper is fully generic.** `value.unwrap()` works for carrier types broadly, but `sys.is_*`, `sys.unwrap_*`, and `sys.error_message` are only declared for the overloads provided by `std result`.

## See also

- `docs/language/control-flow/docs/return.md` — what to do with a `nominal` result.
- `docs/language/control-flow/docs/try-catch.md` — the exception-based alternative.
- `docs/stdlib/foundations/docs/assertions.md` — invariant checking.
- `Apollo-Main/include/result.apollo` — source.
