# Mutability

## What it is

Mutability is Apollo's way of expressing whether a binding may be reassigned. Every binding — local variable, parameter, field, closure capture — is either *immutable* (cannot be reassigned after initialization) or *mutable* (can be reassigned). The default is immutable.

The keywords are:

- `const` — explicit immutable. Same as the default.
- `nconst` — mutable (the spelling comes from "not const").
- `stt`, `nst` — older spellings retained for source compatibility. `stt` is `const`; `nst` is `nconst`.

Mutability applies to the binding, not the value. A `const` binding to a mutable reference can still mutate through the reference; an immutable struct field is fixed for the instance's lifetime regardless of how the surrounding binding is declared.

## When you use it

Use the default (immutable) whenever you can. Reach for `nconst` only when:

- A loop counter or accumulator needs reassignment.
- A function parameter is meant to be reassigned in the body.
- A field changes over the instance's lifetime.
- A closure captures a binding by value and the closure body needs to update its copy.

Immutable bindings make code easier to reason about; the compiler verifies they truly don't change.

## Syntax

```
mutability : 'const' | 'nconst' | 'stt' | 'nst' ;
```

The mutability marker appears in:

- Variable initialization: `nconst int x = 0;`
- Function parameters: `void f(nconst int p) { ... }`
- Struct/class fields: `nconst i32 value;`
- For-loop bindings: `for (nconst i := 0; ...)`
- Closure captures: `closure [nconst =count] (...) -> ...`

## Semantics

An immutable binding is fixed at initialization. After the initializer runs, no `=` may target the binding. The frontend rejects any such attempt.

A mutable binding may be reassigned with `=`. The new value must match the binding's declared (or inferred) type — mutability does not allow type changes.

Mutability composes with reference flavors:

- An immutable binding to an immutable reference (`nconst int& alias = &x`) cannot rebind `alias` and cannot write through `*alias`.
- An immutable binding to a mutable reference (`const int& slot = &nconst x` is a contradiction in some grammars but Apollo allows the conceptual equivalent through the borrow flavor only) can write through the reference even though the binding cannot be rebound.

The borrow checker uses mutability to decide which borrows are allowed: a mutable borrow requires the source to be mutable; an immutable borrow imposes no requirement on the source's mutability beyond outliving the borrow.

## Examples

### Immutable by default

```apollo
int main() {
    int x = 0;
    // x = 1;          // rejected: x is immutable
    sys.println(x);
    return 0;
}
```

`int x = 0;` defaults to immutable. Reassignment is rejected.

### Mutable binding

```apollo
int main() {
    nconst int counter = 0;
    counter = counter + 1;
    counter = counter + 1;
    sys.println(counter);
    return 0;
}
```

`nconst` makes the binding mutable. Both reassignments succeed.

### Mutable parameter

```apollo
int next(nconst int value) {
    value = value + 1;
    return value;
}

int main() {
    sys.println(next(5));
    return 0;
}
```

`nconst int value` — the parameter binding is mutable inside the function. The caller's argument is unaffected because parameters are passed by value.

### Field mutability

```apollo
struct Counter {
    const i32 id;
    nconst i32 ticks;
};

int main() {
    nconst Counter c = Counter(1, 0);
    c.ticks = c.ticks + 1;
    // c.id = 2;       // rejected: id is const
    sys.printf("id=%d ticks=%d\n", c.id, c.ticks);
    return 0;
}
```

Field mutability is per-field. `id` cannot change; `ticks` can.

### Mutability and borrowing

```apollo
int main() {
    nconst int counter = 0;
    nconst int& writer = &nconst counter;
    *writer = 99;
    sys.println(counter);
    return 0;
}
```

`counter` is mutable (`nconst`), so it can be borrowed mutably. The mutable borrow writes through `*writer`.

### Older `stt` and `nst` spellings

```apollo
int main() {
    stt int a = 1;    // same as const int a = 1
    nst int b = 2;    // same as nconst int b = 2
    b = b + a;
    sys.println(b);
    return 0;
}
```

Old code uses `stt`/`nst`. New code uses `const`/`nconst`. The compiler accepts both.

## Common mistakes

- **Reassigning an immutable binding.** Always rejected. Add `nconst` if you need to reassign.
- **Trying to mutate through an immutable reference.** `*ref = ...` with `ref` an immutable reference is rejected.
- **Forgetting `nconst` on loop counters.** Inferred bindings like `i := 0` are immutable by default; use `nconst i := 0` for a counter.
- **Confusing binding mutability with value mutability.** An immutable binding to a mutable container can still mutate the container's contents (if the binding type allows).
- **Marking fields `const` and expecting in-place updates.** A `const` field cannot change. Either use `nconst` or rebuild the instance.

## See also

- `docs/language/memory-and-storage/docs/initialization.md` — where mutability is first applied.
- `docs/language/memory-and-storage/docs/borrow-expression.md` — borrow rules driven by mutability.
- `docs/language/types/docs/reference-type.md` — interaction with references.
- `docs/language/declarations/docs/struct.md` and `class.md` — fields and their mutability.
