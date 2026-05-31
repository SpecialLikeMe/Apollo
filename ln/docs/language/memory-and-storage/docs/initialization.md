# Variable initialization

## What it is

Variable initialization is the act of introducing a new named binding and giving it a value at the moment of introduction. In Apollo, every local binding is initialized when it is declared — there is no "declare now, assign later" path for a fresh local. This is enforced by the grammar and by the frontend.

The grammar rule that covers it is `init`. It has several spellings that all share the same shape: an optional mutability keyword, an optional type, an identifier, an `=` sign, and an initializer expression.

## When you use it

Every time you make a new local. Initialization is the only way to create a local binding in Apollo. There are no implicitly-default-constructed locals.

Choose the form that matches what you want:

- **Explicit type, immutable** — `int total = 0;` when you want the binding pinned to a type and never reassigned.
- **Explicit type, mutable** — `nconst int total = 0;` when you will reassign `total` later.
- **Inferred type, immutable** — `ato total = compute();` when the type is obvious from the right-hand side.
- **Inferred type, mutable** — `nconst ato total = compute();` for inferred mutable bindings.
- **Walrus form** — `total := compute();` is a short inferred-immutable form.

## Syntax

```
(const | nconst | stt | nst)? typeRef? identifier '=' expression ';'
```

The mutability keyword is optional. The default is `const` — immutable. The type is optional in inferred forms (`ato` or the `:=` shorthand). The right-hand side is any expression that produces a value assignable to the binding.

`stt` and `nst` are older spellings retained for source compatibility. New code should use `const` and `nconst`.

## Semantics

An initialization expression is evaluated first, then the resulting value is stored into a fresh stack slot for the binding. The binding's lifetime begins at the initialization and ends when its enclosing block exits.

Immutable bindings (`const`, default) cannot be reassigned after initialization. The frontend rejects an `=` against an immutable binding outside of the initialization itself. Note that immutability applies to the binding, not the referenced data; an immutable binding to a reference can still mutate the referenced value if the reference itself is mutable.

Mutable bindings (`nconst`) can be reassigned. The new value must still satisfy the binding's declared (or inferred) type.

Inferred bindings (`ato`, `:=`) take their type from the initializer. The type is fixed at initialization — you cannot reassign an inferred binding to a value of a different type later.

Initialization participates in the borrow checker. If the initializer is a borrow expression, the binding is treated as a reference for borrow-analysis purposes. The borrow's lifetime is the binding's lifetime.

## Examples

### Plain typed initialization

```apollo
int main() {
    int width = 80;
    int height = 24;
    int area = width * height;
    sys.println(area);
    return 0;
}
```

Three immutable typed locals. Each is initialized once and never reassigned.

### Mutable typed initialization

```apollo
int main() {
    nconst int counter = 0;
    counter = counter + 1;
    counter = counter + 1;
    sys.println(counter);
    return 0;
}
```

`nconst` allows the two subsequent assignments. The type is fixed at `int` for the binding's whole lifetime.

### Inferred initialization with `ato`

```apollo
str greet(str name) {
    ato message = strings.concat("hello, ", name);
    return message;
}

int main() {
    sys.println(greet("world"));
    return 0;
}
```

`message` is inferred as `str` from the right-hand side. The binding is immutable by default.

### Walrus form

```apollo
int main() {
    total := 0;
    for (i := 0; i < 10; i = i + 1) {
        total = total + i;
    }
    sys.println(total);
    return 0;
}
```

Wait — `total` here is immutable by default and the loop tries to reassign it, which fails. Use this form only for one-shot locals; reach for `nconst ato` or a typed `nconst` form when reassignment is needed:

```apollo
int main() {
    nconst ato total = 0;
    for (nconst i := 0; i < 10; i = i + 1) {
        total = total + i;
    }
    sys.println(total);
    return 0;
}
```

### Initialization from a function call

```apollo
{i32, str} fetch_entry() {
    return <1, "first">;
}

int main() {
    {i32, str} entry = fetch_entry();
    sys.println(entry[1]);
    return 0;
}
```

The initializer can be any expression, including a function call returning a composite value.

### Initialization with a borrow

```apollo
int main() {
    nconst int counter = 0;
    nconst int& alias = &nconst counter;
    *alias = *alias + 1;
    sys.println(counter);
    return 0;
}
```

`alias` is initialized with a mutable borrow of `counter`. The borrow lives as long as `alias` does, which is until the end of `main`. Mutating through `*alias` mutates `counter`.

## Common mistakes

- **Declaring without initializing.** `int x;` is rejected. Every local must have an initializer.
- **Reassigning an immutable binding.** `int x = 0; x = 1;` is rejected because `x` is immutable.
- **Mismatched types.** `int x = "hello";` is rejected; the initializer must be assignable to the declared type.
- **Changing an inferred binding's type later.** `nconst ato x = 1; x = "no";` is rejected; once inferred, the type is fixed.
- **Using `:=` for a reassigned local.** `:=` produces an immutable binding. For reassignment, use `nconst ato` or a typed `nconst`.

## See also

- `docs/language/memory-and-storage/docs/mutability.md` — full rules for `const` vs `nconst`.
- `docs/language/memory-and-storage/docs/borrow-expression.md` — initializing a reference binding.
- `docs/language/expressions/docs/assignment.md` — reassigning a binding after initialization.
- `docs/language/types/docs/type-reference.md` — the type-side of the declaration.
