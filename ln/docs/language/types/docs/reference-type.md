# Reference type

## What it is

A reference type, written `T&` or `nconst T&`, is the type of a borrowed reference to a value of type `T`. References are how Apollo programs share access to a value without copying it, and the reference type is how the program names that sharing in declarations and signatures.

Reference types are produced by the borrow expression (`&value` / `&nconst value`). They are not constructible by any other means.

## When you use it

You write a reference type whenever you declare:

- A parameter that borrows from the caller (`nconst vector<int>& items`).
- A return type that hands a borrow back to the caller (`nconst int& slot(...)`).
- A local binding that aliases another binding.
- A field of a struct or class that holds a reference (subject to lifetime constraints).
- A loop binding that iterates by reference.

## Syntax

```
referenceType : typeRef '&' ;
```

The mutability of the borrow is conventionally written on the binding (`nconst i32& slot`), but the reference type itself encodes mutability via the binding's mutability marker plus the source borrow's flavor.

## Semantics

A reference type denotes a non-null pointer to a value of the inner type with an attached lifetime. The lifetime is the lexical region during which the borrow is alive.

Two reference types are the same when their inner types are the same and their mutability matches. References are value-typed for the purpose of assignment — you can copy a reference value freely, subject to the borrow checker's rules about how many active borrows of the same place may exist.

A reference is dereferenced with the unary `*` operator: `*ref` reads the referenced value; `*ref = value` (when the reference is mutable) writes through it.

References do not own. Dropping a reference does not affect the referenced value; only the original owner's drop releases the storage.

## Examples

### Reference parameter

```apollo
int sum(nconst vector<int>& items) {
    nconst int total = 0;
    for (nconst int v : items) {
        total = total + v;
    }
    return total;
}

extern std collections;

int main() {
    nconst vector<int> data = <1, 2, 3, 4, 5>;
    sys.println(sum(&nconst data));
    return 0;
}
```

`sum` borrows `data` rather than copying. The borrow lives for the duration of the call.

### Mutable reference parameter

```apollo
void bump(nconst int& slot) {
    *slot = *slot + 1;
}

int main() {
    nconst int counter = 0;
    bump(&nconst counter);
    bump(&nconst counter);
    sys.println(counter);
    return 0;
}
```

A mutable reference allows the callee to write through it. The borrow lives for the call only.

### Reference return

```apollo
nconst int& bigger(nconst int& a, nconst int& b) {
    if (*a >= *b) {
        return a;
    }
    return b;
}

int main() {
    int x = 7;
    int y = 12;
    nconst int& winner = bigger(&x, &y);
    sys.println(*winner);
    return 0;
}
```

The returned reference's lifetime is bounded by the shorter of the input lifetimes.

### Reference binding (alias)

```apollo
extern std collections;

int main() {
    nconst vector<int> values = <10, 20, 30>;
    nconst int& first = &values[0];
    sys.println(*first);
    return 0;
}
```

`first` is a reference binding that aliases the first slot of the vector. Reading through it reads the slot.

### Reference in a struct field

```apollo
struct Aliasing {
    public:
    nconst int& slot;
};

int main() {
    nconst int counter = 5;
    nconst Aliasing a = Aliasing(&counter);
    sys.println(*a.slot);
    return 0;
}
```

A struct field can hold a reference. The struct's lifetime cannot exceed the referenced value's lifetime; the borrow checker tracks this.

### Iterating by reference

```apollo
extern std collections;

int main() {
    nconst vector<int> values = <1, 2, 3>;
    for (nconst int& slot : &nconst values) {
        *slot = *slot * 2;
    }
    for (nconst int v : values) {
        sys.println(v);
    }
    return 0;
}
```

Borrowing the vector and iterating yields mutable references to each element. The loop mutates through each.

## Common mistakes

- **Trying to make a reference without a borrow expression.** References can only be produced by `&value` / `&nconst value`; you cannot conjure one from thin air.
- **Returning a reference to a local.** Rejected by the borrow checker because the local dies before the caller can use the reference.
- **Holding a reference past the borrowed value's lifetime.** Rejected — the borrow's lifetime is tracked statically.
- **Dereferencing without `*`.** A reference does not implicitly act like the underlying value. Use `*ref` to read.
- **Expecting reference assignment to rebind.** Assigning to a reference binding writes through the reference; it does not rebind the reference to a different place.

## See also

- `docs/language/memory-and-storage/docs/borrow-expression.md` — how references are created.
- `docs/language/expressions/docs/dereference.md` — `*` operator.
- `docs/language/types/docs/pointer-type.md` — raw pointers for unsafe interop.
- `docs/language/memory-and-storage/docs/mutability.md` — interaction with `const`/`nconst`.
