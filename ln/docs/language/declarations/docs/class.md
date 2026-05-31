# Class declaration

## What it is

A class is a named type that bundles together fields, methods, and access control. Classes in Apollo are reference-friendly aggregates designed for object-oriented composition: you write fields with their types, methods that operate on those fields, and visibility sections that control which members are reachable from outside the class.

Apollo's classes deliberately keep the surface small. There is no inheritance keyword on the class itself — composition via fields is the primary reuse mechanism — but interfaces declared with `interface` are implementable via methods.

## When you use it

You write a class when:

- You have a set of fields that belong together and a set of operations that act on them as a unit.
- You want access control to keep callers away from internal state.
- You want instances to live by name, with named fields, rather than by position the way a shape or composite literal would.
- You want to provide methods that callers reach with member-access syntax (`obj.method()`).

If you just need a fixed-shape data bag with no methods and no access control, prefer a `struct`. If you need a value-type with explicit memory layout for FFI or low-level work, use a `memstruct`.

## Syntax

```
'class' ID genericParams? attributeBlock? '{'
    (accessSection | memberDecl)*
'}' ';'?

accessSection : ('public' | 'private' | 'protected') ':' ;
memberDecl    : field | method ;
field         : mutability? typeRef ID ('=' expression)? ';' ;
method        : (STATIC | VIRTUAL)? returnType ID '(' params? ')' attributeBlock? block ;
```

Members appear in any order. An access section sets the visibility for everything that follows it until the next access section. The default visibility before the first section is `private`.

## Semantics

A class declaration introduces a new named type. Instances are constructed by calling the class as if it were a function: `MyClass(arg, arg)`. The constructor is implicitly synthesized from the field initializers and the field list — fields with `=` initializers use that initializer when the constructor argument is omitted, and fields without initializers must be supplied at construction.

Field mutability follows the standard rules. A `const` field is fixed at construction. A `nconst` field can be reassigned later through a mutable reference to the instance.

Methods have an implicit receiver named `self`. The receiver is borrowed for the duration of the call: immutably if the method does not mutate fields, mutably if it does. A method marked `static` has no `self` and is reached as `ClassName.method(...)`.

Access modifiers restrict member access from outside the class. `private` members are reachable only from inside other methods of the same class. `public` members are reachable from anywhere. `protected` members are reachable from the class and from other classes that implement an interface bridging them, mirroring the access pattern most C-family languages use.

Class instances are value types by default — assignment copies fields. To share an instance across multiple owners, pass a borrow or a reference.

## Examples

### A small class with private state

```apollo
class Counter {
    private:
    nconst i32 value = 0;

    public:
    void bump() {
        self.value = self.value + 1;
    }

    i32 read() {
        return self.value;
    }
};

int main() {
    nconst Counter c = Counter();
    c.bump();
    c.bump();
    c.bump();
    sys.println(c.read());
    return 0;
}
```

`value` is private and reached only by the methods. `bump` and `read` are public. The instance is constructed with no arguments because the only field has a default.

### A class with required constructor arguments

```apollo
class Point {
    public:
    const i32 x;
    const i32 y;

    f32 distance_to(nconst Point& other) {
        const i32 dx = self.x - other.x;
        const i32 dy = self.y - other.y;
        return math.sqrt((dx * dx + dy * dy) as f32);
    }
};

int main() {
    nconst Point a = Point(0, 0);
    nconst Point b = Point(3, 4);
    sys.println(a.distance_to(&nconst b));
    return 0;
}
```

Both fields are `const` with no defaults, so the constructor requires both. Once built, the instance is immutable — `nconst Point c; c.x = 1;` would be rejected.

### A class with a static method

```apollo
class TempConverter {
    public:
    static f32 c_to_f(f32 c) {
        return c * 9.0 / 5.0 + 32.0;
    }

    static f32 f_to_c(f32 f) {
        return (f - 32.0) * 5.0 / 9.0;
    }
};

int main() {
    sys.println(TempConverter.c_to_f(100.0));
    sys.println(TempConverter.f_to_c(32.0));
    return 0;
}
```

Static methods take no `self` and are dispatched through the class name. They are useful for pure utilities that share a namespace with related instance methods.

### A class implementing an interface

```apollo
interface Drawable {
    void draw();
};

class Circle {
    public:
    const f32 radius;

    void draw() {
        sys.printf("circle r=%f\n", self.radius);
    }
};

void render(nconst Drawable& target) {
    target.draw();
}

int main() {
    nconst Circle c = Circle(2.5);
    render(&nconst c);
    return 0;
}
```

`Circle` provides the methods the `Drawable` interface declares. Functions that take a `Drawable&` can accept a `Circle&` because Circle satisfies the interface shape.

### A class composing other classes

```apollo
class Position {
    public:
    nconst i32 x;
    nconst i32 y;
};

class Velocity {
    public:
    nconst i32 dx;
    nconst i32 dy;
};

class Mover {
    public:
    nconst Position pos;
    nconst Velocity vel;

    void tick() {
        self.pos.x = self.pos.x + self.vel.dx;
        self.pos.y = self.pos.y + self.vel.dy;
    }
};

int main() {
    nconst Mover m = Mover(Position(0, 0), Velocity(1, 2));
    m.tick();
    m.tick();
    sys.printf("(%d, %d)\n", m.pos.x, m.pos.y);
    return 0;
}
```

Composition is the primary reuse mechanism. `Mover` holds a `Position` and a `Velocity` and orchestrates them.

### A generic class

```apollo
class Box<T> {
    public:
    const T contents;

    nconst T& peek() {
        return &self.contents;
    }
};

int main() {
    nconst Box<int> bi = Box<int>(42);
    nconst Box<str> bs = Box<str>("packed");
    sys.println(*bi.peek());
    sys.println(*bs.peek());
    return 0;
}
```

The `T` parameter is filled at the construction site. Each instantiation produces a distinct concrete type. Methods that name `T` work the same way as in non-generic classes.

## Common mistakes

- **Reaching a private field from outside.** Outside callers must go through public methods. Make a getter or move the access into a public method.
- **Forgetting `self`.** Inside methods, field and method references go through `self`. Bare `value` is treated as a free identifier and is rejected if no such binding is in scope.
- **Expecting reference semantics by default.** Apollo classes are value types. Assigning one instance to another copies. To share state, pass a `Class&`.
- **Adding inheritance.** Classes do not inherit from other classes. Use composition and interfaces.
- **Mutating a `const` field through a `nconst` instance.** Field-level `const` overrides instance-level mutability. The field stays fixed even if the instance is mutable.

## See also

- `docs/language/declarations/docs/struct.md` — a lighter, methodless aggregate.
- `docs/language/declarations/docs/memstruct.md` — an explicit-layout aggregate for FFI and low-level work.
- `docs/language/declarations/docs/method.md` — full method rules.
- `docs/language/declarations/docs/interface.md` — interface declaration and implementation.
- `docs/language/declarations/docs/template.md` — generic class parameters.
