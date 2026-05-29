# Member access

## What it is

Member access reaches into an aggregate (struct, class, memstruct, shape) and produces the value or assignable place corresponding to a named or indexed member. Apollo provides two operators:

- `.` — access through a value or reference (`p.x`, `aref.x`).
- `->` — access through a pointer (`p->x`), sugar for `(*p).x`.

For shape types, members are indexed: `pair[0]`, `pair[1]`.

## When you use it

You use member access whenever you need to read or write a field of an aggregate, call a method, or follow a member chain.

## Syntax

```
memberAccess
    : expression '.' ID
    | expression '->' ID
    | expression '[' INT ']'        // for shape slot access
    ;
```

Member access is left-associative; chains read left to right.

## Semantics

`value.field` produces:
- For a struct/class/memstruct field, the field's value (or assignable place when on the LHS of `=`).
- For a method, a bound callable that can be invoked.

`pointer->field` is equivalent to `(*pointer).field`.

`shape[index]` produces the slot at the integer-literal index. The index must be a compile-time constant integer.

Member access respects visibility: only `public` members are reachable from outside the declaring type. Private members are accessible only within the type's own methods.

Field access through a borrow yields the appropriate flavor: through an immutable borrow, the result is read-only; through a mutable borrow, the result is writable.

## Examples

### Struct field access

```apollo
struct Point { i32 x; i32 y; };

int main() {
    nconst Point p = Point(3, 4);
    sys.printf("(%d, %d)\n", p.x, p.y);
    return 0;
}
```

`.` reads each field.

### Writing a struct field

```apollo
struct Counter { nconst i32 ticks; };

int main() {
    nconst Counter c = Counter(0);
    c.ticks = c.ticks + 1;
    sys.println(c.ticks);
    return 0;
}
```

`.` on the LHS writes the field (the field's mutability must permit it).

### Method call

```apollo
class Greeter {
    public:
    const str name;
    void greet() {
        sys.printf("hello, %s\n", self.name);
    }
};

int main() {
    nconst Greeter g = Greeter("apollo");
    g.greet();
    return 0;
}
```

`g.greet()` binds the method to `g` and calls it.

### Pointer access via `->`

```apollo
struct Sample { i32 value; };

int main() {
    nconst Sample* s = plcnew Sample(42);
    sys.println(s->value);
    delete s;
    return 0;
}
```

`s->value` desugars to `(*s).value`.

### Chained access

```apollo
struct Inner { i32 v; };
struct Outer { Inner inner; };

int main() {
    nconst Outer o = Outer(Inner(7));
    sys.println(o.inner.v);
    return 0;
}
```

Member access chains left-to-right.

### Shape slot access

```apollo
{i32, str} entry() {
    return <42, "answer">;
}

int main() {
    {i32, str} e = entry();
    sys.printf("%d %s\n", e[0], e[1]);
    return 0;
}
```

Shape values use integer-indexed access.

## Common mistakes

- **Using `.` on a pointer.** `p.x` where `p` is a pointer is rejected; write `p->x`.
- **Accessing private members from outside.** Rejected. Add a `public:` accessor or work inside the type.
- **Non-constant index for shape access.** `e[i]` where `i` is a variable is rejected; shape indices are compile-time constants.
- **Calling a method without `()`.** `g.greet;` does not call the method; it produces a bound callable. To invoke, write `g.greet();`.
- **Writing through `.` on an immutable borrow.** Rejected by the borrow checker.

## See also

- `docs/language/declarations/docs/struct.md`, `class.md`, `memstruct.md`, `interface.md` — declarations whose members are accessed.
- `docs/language/types/docs/shape-type.md` — shape slot access.
- `docs/language/expressions/docs/dereference.md` — `*` and the `->` desugaring.
- `docs/language/expressions/docs/function-call.md` — method invocation.
