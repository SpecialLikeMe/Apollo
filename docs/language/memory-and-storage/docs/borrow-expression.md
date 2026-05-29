# Borrow expression

## What it is

A borrow expression produces a reference to an existing value without copying it. It is the primary way Apollo programs share a value across functions, methods, and scopes while still letting the borrow checker enforce safe aliasing.

Apollo has two borrow flavors:

- **Immutable borrow** — `&const expr` or simply `&expr`. The borrower may read the referenced value but not mutate it. Multiple immutable borrows can coexist.
- **Mutable borrow** — `&nconst expr` (older spellings `&nst expr`, `&stt expr`). The borrower may both read and mutate the referenced value. Only one mutable borrow may be alive at a time, and no immutable borrows may overlap with it.

A borrow produces a value of reference type, written `T&` (immutable) or `nconst T&` (mutable) in the type position.

## When you use it

You write a borrow expression when you want:

- To pass a large value into a function without copying it.
- To let a callee mutate a value the caller still owns.
- To bind an alias for an existing value so you can refer to it by a shorter or more meaningful name in a region of code.
- To store a reference inside a shape, struct, or collection slot (subject to borrow-checker lifetime rules).

You do not use a borrow when you want ownership transfer. Apollo does not have an explicit "move" operator; ownership transfer happens via plain assignment of an owned value.

## Syntax

```
'&' ('const' | 'nconst' | 'stt' | 'nst')? expression
```

The mutability keyword sits between the `&` and the expression. When omitted, the borrow is immutable.

The borrowed expression must be an addressable value — a binding, a field access, an array index, or a dereference. Borrowing a temporary (the result of a function call that returns by value, for example) is rejected, because the temporary dies before the borrow could be used.

## Semantics

A borrow expression evaluates the place it is borrowing from, then yields a reference value pointing at that place. The reference is valid for as long as both:

1. The borrowed place is alive (its enclosing scope has not exited), and
2. No conflicting borrow has invalidated it.

The borrow checker enforces the second condition statically. The rules are:

- **Many readers, no writers.** While any immutable borrow of a place is alive, no mutable borrow of that place — or of any place that overlaps with it — may be created, and the place itself may not be mutated through its name.
- **One writer, no readers.** While a mutable borrow of a place is alive, no other borrow of the place may be created, and the place may not be accessed through its name.

The lifetime of a borrow is the lexical region from the borrow expression to the last use of the borrowed reference. A borrow stored into a binding lives until the binding goes out of scope or is overwritten.

Dereferencing a borrow uses the unary `*` operator: `*reference` reads the referenced value, and `*reference = new_value` (when the borrow is mutable) writes through it.

## Examples

### A read-only borrow passed to a function

```apollo
int sum_three(nconst int& a, nconst int& b, nconst int& c) {
    return *a + *b + *c;
}

int main() {
    int x = 1;
    int y = 2;
    int z = 3;
    int total = sum_three(&x, &y, &z);
    sys.println(total);
    return 0;
}
```

Each `&x`, `&y`, `&z` is an immutable borrow. The callee reads through the references with `*a`, `*b`, `*c`. Multiple immutable borrows of separate places coexist trivially.

### A mutable borrow used to mutate in place

```apollo
void bump(nconst int& slot) {
    *slot = *slot + 1;
}

int main() {
    nconst int counter = 0;
    bump(&nconst counter);
    bump(&nconst counter);
    bump(&nconst counter);
    sys.println(counter);
    return 0;
}
```

Each call creates a fresh mutable borrow that lives only for the duration of that call. After each call returns, the borrow is gone, so the next call can create its own without conflict.

### Aliasing a long expression with a borrow

```apollo
extern std collections;

int main() {
    nconst vector<int> values = <1, 2, 3, 4, 5>;
    nconst int& first = &values[0];
    sys.println(*first);
    return 0;
}
```

`&values[0]` borrows the first slot. The alias `first` reads through the borrow. Because the borrow is immutable, the vector itself may also be read elsewhere; it just cannot be mutated until `first` is gone.

### A mutable borrow that excludes other access

```apollo
int main() {
    nconst int counter = 10;
    nconst int& writer = &nconst counter;
    *writer = 99;
    // sys.println(counter);  // <-- rejected: writer is still alive
    sys.println(*writer);
    return 0;
}
```

While `writer` is alive, `counter` cannot be read by its own name. The compiler requires you to go through `writer`. Once `writer` falls out of use, normal access to `counter` resumes.

### Borrowing a struct field

```apollo
struct Point {
    public:
    nconst i32 x;
    nconst i32 y;
};

void translate(nconst i32& slot, i32 delta) {
    *slot = *slot + delta;
}

int main() {
    nconst Point p = Point(3, 4);
    translate(&nconst p.x, 10);
    translate(&nconst p.y, -2);
    sys.printf("(%d, %d)\n", p.x, p.y);
    return 0;
}
```

You can borrow an individual field. The borrow checker treats two different fields of the same struct as non-overlapping places, so `&nconst p.x` and `&nconst p.y` can be created back-to-back.

### Returning a borrow

```apollo
nconst int& pick_max(nconst int& a, nconst int& b) {
    if (*a >= *b) {
        return a;
    }
    return b;
}

int main() {
    int left = 7;
    int right = 12;
    nconst int& winner = pick_max(&left, &right);
    sys.println(*winner);
    return 0;
}
```

The returned reference is valid as long as both `left` and `right` are alive — the borrow checker uses the shorter of the two input lifetimes as the output lifetime.

## Common mistakes

- **Borrowing a temporary.** `&compute()` is rejected. Bind the result to a named local first, then borrow the local.
- **Holding an immutable borrow across a mutation.** Once any immutable borrow exists, you cannot mutate the borrowed place until that borrow is gone.
- **Two simultaneous mutable borrows.** Only one mutable borrow of a place may be alive at a time. Reorganize so the first borrow ends before the second begins.
- **Returning a borrow of a local.** `&local` where `local` is owned by the function fails the borrow checker — the local dies before the caller could use the reference.
- **Forgetting to dereference.** `int x = ref;` is rejected when `ref` is a `int&`. Write `int x = *ref;` to read through the borrow.

## See also

- `docs/language/memory-and-storage/docs/mutability.md` — the `const`/`nconst` rules a borrow inherits.
- `docs/language/expressions/docs/dereference.md` — the `*` operator that reads through a borrow.
- `docs/language/types/docs/reference-type.md` — the type form `T&` produced by a borrow.
- `docs/language/declarations/docs/function.md` — passing borrows as parameters.
- `Apollo-Main/brc/borrow_checker.h` — the borrow-checker implementation surface, for the curious.
