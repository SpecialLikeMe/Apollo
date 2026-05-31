# Struct declaration

## What it is

A struct is a named, methodless aggregate of typed fields. Structs are the lightweight cousin of classes: they bundle fields together under a name, but they do not carry methods, access modifiers, or virtual dispatch. When you want a value-type bag of named slots and nothing more, a struct is the right shape.

Structs are pure data. They participate in the same mutability, ownership, and borrow rules as any other value type, but they have no behavior of their own.

## When you use it

You reach for a struct when:

- You have several related values that travel together and you want them under a clear name with named fields.
- You want positional pattern-matching to give way to named-field access (`p.x` instead of `pair[0]`).
- You do not need methods, access control, virtual dispatch, or any of the heavier machinery a class brings.

If you need methods on the aggregate, use a class. If you need explicit memory layout for FFI or low-level work, use a memstruct.

## Syntax

```
'struct' ID genericParams? attributeBlock? '{'
    (mutability? typeRef ID ('=' expression)? ';')*
'}' ';'?
```

A struct body is a sequence of field declarations. Each field has a type, a name, an optional default initializer, and an optional mutability marker. There are no access sections — every field is public.

## Semantics

A struct declaration introduces a new value type. Instances are constructed with `StructName(arg, arg, ...)`, where the arguments correspond one-to-one with the fields without default initializers, in declaration order. Fields with default initializers may be omitted at construction; their default is used.

Field mutability is per field. A `const` field is fixed at construction; a `nconst` field may be reassigned later through a mutable reference to the instance.

Structs are value-typed. Assignment copies all fields. Passing by value copies; passing by reference borrows. There is no implicit sharing.

Two struct types are different even if they have the same fields. Structural equivalence is not part of the language — names matter.

## Examples

### A simple coordinate struct

```apollo
struct Point {
    i32 x;
    i32 y;
};

int main() {
    nconst Point origin = Point(0, 0);
    nconst Point target = Point(3, 4);
    sys.printf("from (%d,%d) to (%d,%d)\n", origin.x, origin.y, target.x, target.y);
    return 0;
}
```

Two fields, two constructor arguments. Field access uses the `.` operator.

### A struct with default initializers

```apollo
struct Config {
    i32 width = 800;
    i32 height = 600;
    str title = "Untitled";
};

int main() {
    nconst Config defaults = Config();
    nconst Config wide = Config(1920, 1080);
    sys.printf("%dx%d %s\n", defaults.width, defaults.height, defaults.title);
    sys.printf("%dx%d %s\n", wide.width, wide.height, wide.title);
    return 0;
}
```

When every field has a default, the constructor can be called with no arguments. Providing arguments overrides defaults in declaration order.

### A struct with mixed mutability

```apollo
struct Event {
    const i64 id;
    const i64 timestamp;
    nconst str message;
};

int main() {
    nconst Event e = Event(1, 1700000000, "starting");
    e.message = "running";    // ok, message is nconst
    // e.id = 2;              // rejected, id is const
    sys.println(e.message);
    return 0;
}
```

`const` fields are immutable for the instance's lifetime. `nconst` fields may be reassigned through a mutable instance.

### Nesting structs

```apollo
struct Position { i32 x; i32 y; };
struct Velocity { i32 dx; i32 dy; };
struct Mover    { Position pos; Velocity vel; };

int main() {
    nconst Mover m = Mover(Position(0, 0), Velocity(1, 2));
    sys.printf("pos=(%d,%d) vel=(%d,%d)\n", m.pos.x, m.pos.y, m.vel.dx, m.vel.dy);
    return 0;
}
```

A struct field can itself be a struct. Field access chains: `m.pos.x`.

### A generic struct

```apollo
struct Pair<A, B> {
    A first;
    B second;
};

int main() {
    nconst Pair<int, str> a = Pair<int, str>(42, "answer");
    nconst Pair<str, int> b = Pair<str, int>("count", 7);
    sys.printf("%d %s\n", a.first, a.second);
    sys.printf("%s %d\n", b.first, b.second);
    return 0;
}
```

Generic type parameters are filled at the construction site. Each instantiation produces a distinct lowered type.

### Passing structs by reference

```apollo
struct Vec3 { f32 x; f32 y; f32 z; };

f32 dot(nconst Vec3& a, nconst Vec3& b) {
    return a.x * b.x + a.y * b.y + a.z * b.z;
}

int main() {
    nconst Vec3 u = Vec3(1.0, 0.0, 0.0);
    nconst Vec3 v = Vec3(0.0, 1.0, 0.0);
    sys.println(dot(&nconst u, &nconst v));
    return 0;
}
```

Borrowing a struct avoids the per-call copy. Fields are reached through the borrow the same way as through the value.

## Common mistakes

- **Adding methods.** Structs do not have methods. Move to a class if you need them.
- **Adding access sections.** All struct fields are public. Visibility is a class feature, not a struct feature.
- **Expecting structural equivalence.** Two structs with identical fields are still different types. Names matter.
- **Forgetting `nconst`.** A field declared without `nconst` is immutable. You cannot assign to it through any reference.
- **Omitting a non-defaulted field at construction.** Every field without `=` must be supplied as a constructor argument.

## See also

- `docs/language/declarations/docs/class.md` — when you need methods and access control.
- `docs/language/declarations/docs/memstruct.md` — when you need explicit memory layout.
- `docs/language/types/docs/shape-type.md` — the unnamed positional alternative.
- `docs/language/memory-and-storage/docs/mutability.md` — `const` vs `nconst` rules applied to fields.
