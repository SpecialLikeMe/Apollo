# Dereference operator

## What it is

The unary `*` operator dereferences a reference or pointer, producing access to the pointed-to value. On the right-hand side of an assignment or as the operand of any expression, `*expr` reads the referenced/pointed value; on the left-hand side, `*expr = value` writes through it.

Apollo uses the same `*` operator for references and for pointers. The borrow checker enforces safety on references; pointers are unchecked.

## When you use it

You use `*` whenever you need to access the value behind a reference or pointer:

- Reading through a reference parameter (`*slot`).
- Writing through a mutable reference (`*slot = value`).
- Reading through a heap pointer (`*malloc'd_pointer`).
- Composing with member-access via the `->` shortcut (`p->field`, which is sugar for `(*p).field`).

## Syntax

```
dereference : '*' expression ;
```

Right-associative. Stacking `**p` dereferences twice.

## Semantics

`*ref` reads the value at the address held by `ref`. For references, the borrow's flavor (immutable vs mutable) determines whether write-through is allowed. For pointers, write-through is always syntactically allowed; safety is the programmer's responsibility.

`*ref = value` writes through the reference/pointer. The expression evaluates to the written value (so chained assignments like `*a = *b = 0` work).

Dereferencing a null pointer is undefined behavior. Dereferencing a reference that has been invalidated by the borrow checker is rejected at compile time.

## Examples

### Reading through a reference

```apollo
int main() {
    int x = 7;
    nconst int& ref = &x;
    sys.println(*ref);
    return 0;
}
```

`*ref` reads the value `x` through the borrow.

### Writing through a mutable reference

```apollo
int main() {
    nconst int counter = 0;
    nconst int& writer = &nconst counter;
    *writer = 42;
    sys.println(counter);
    return 0;
}
```

`*writer = 42` writes through the borrow, mutating `counter`.

### Dereferencing in arithmetic

```apollo
int add(nconst int& a, nconst int& b) {
    return *a + *b;
}

int main() {
    int x = 3;
    int y = 4;
    sys.println(add(&x, &y));
    return 0;
}
```

`*a + *b` reads both referenced values and adds them.

### Pointer dereference

```apollo
int main() {
    nconst i32* slot = malloc<i32>();
    *slot = 99;
    sys.println(*slot);
    free(slot);
    return 0;
}
```

Same operator works on pointers. The borrow checker is silent here; the programmer must ensure the pointer is valid.

### Double dereference

```apollo
int main() {
    nconst i32* inner = malloc<i32>();
    *inner = 7;
    nconst i32** outer = malloc<i32*>();
    *outer = inner;
    sys.println(**outer);
    free(outer);
    free(inner);
    return 0;
}
```

`**outer` dereferences twice: first to reach `inner`, then to reach the value.

### Sugar via `->`

```apollo
struct Point { i32 x; i32 y; };

int main() {
    nconst Point* p = plcnew Point(3, 4);
    sys.printf("(%d, %d)\n", p->x, p->y);
    delete p;
    return 0;
}
```

`p->x` is shorthand for `(*p).x`. Use it for pointer-to-struct access.

## Common mistakes

- **Dereferencing without `*`.** Apollo does not implicitly dereference. `int x = ref;` is rejected when `ref` is a reference; write `*ref`.
- **Writing through an immutable reference.** `*ref = value` requires `ref` to be a mutable reference.
- **Dereferencing null.** The compiler does not check; it's undefined.
- **Mixing up `*` and `&`.** `*` reads through; `&` borrows from. Swapping them produces nonsense.
- **Stacking dereferences without need.** `**p` is only correct when `p` is a pointer-to-pointer.

## See also

- `docs/language/memory-and-storage/docs/borrow-expression.md` — creating references with `&`.
- `docs/language/types/docs/reference-type.md` and `pointer-type.md` — what `*` operates on.
- `docs/language/expressions/docs/member-access.md` — `.` and `->` operators.
- `docs/language/expressions/docs/assignment.md` — writing through `*`.
