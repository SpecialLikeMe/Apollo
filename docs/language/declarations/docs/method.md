# Method declaration

## What it is

A method is a function that lives inside a class body and operates on an instance of that class. Methods are how classes expose behavior. They carry an implicit `self` receiver, participate in access control, and can be marked `static` (no receiver) or `virtual` (dispatched through a vtable when reached through an interface).

Methods share most of their grammar with top-level functions. The differences are: methods live inside a `class` body, they may sit under an access section, they may carry a `static` or `virtual` modifier, and they have implicit access to `self`.

## When you use it

You write a method when the operation logically belongs to a single class and reads or mutates its fields. Method bodies are the natural home for behavior that depends on object state.

Reach for a top-level function when the operation does not need the class's state, or when it operates on multiple unrelated types. Reach for a static method when the operation belongs to the class's namespace but does not need an instance.

## Syntax

```
methodDecl
    : (STATIC | VIRTUAL)? returnType ID '(' params? ')' attributeBlock? block
    ;
```

The same shape as a top-level function, with two extra optional modifiers up front. The body is a brace block.

`static` methods take no `self` and are reached as `ClassName.method(...)`. `virtual` methods participate in vtable dispatch when called through a base reference or an interface; direct calls remain devirtualized.

## Semantics

A non-static method has an implicit first parameter, `self`, which is a borrow of the receiving instance. The borrow flavor is inferred from the body: a method that only reads fields gets an immutable `self`; a method that writes any field gets a mutable `self`.

Field access inside a method goes through `self`. Bare field names are not in scope; you write `self.field`. Calls to other methods of the same class also go through `self`: `self.other_method()`.

Access modifiers from the surrounding `public:`/`private:`/`protected:` section determine who may call the method from outside the class. Inside the class, all methods can call each other regardless of visibility.

A method's signature is part of the class's type. Two classes with the same method name but different signatures are not compatible — interface satisfaction requires the exact signature.

## Examples

### Read-only and mutating methods

```apollo
class Counter {
    private:
    nconst i32 value = 0;

    public:
    i32 read() {
        return self.value;
    }

    void bump() {
        self.value = self.value + 1;
    }
};

int main() {
    nconst Counter c = Counter();
    c.bump();
    c.bump();
    sys.println(c.read());
    return 0;
}
```

`read` only reads `self.value`, so `self` is an immutable borrow. `bump` writes, so `self` is a mutable borrow. The compiler infers both from the body.

### Static methods

```apollo
class Math2 {
    public:
    static i32 max(i32 a, i32 b) {
        if (a >= b) {
            return a;
        }
        return b;
    }

    static i32 min(i32 a, i32 b) {
        if (a <= b) {
            return a;
        }
        return b;
    }
};

int main() {
    sys.println(Math2.max(3, 7));
    sys.println(Math2.min(3, 7));
    return 0;
}
```

Static methods take no `self`. They are reached through the class name as if the class were a namespace.

### Calling another method on `self`

```apollo
class Rectangle {
    public:
    const f32 width;
    const f32 height;

    f32 area() {
        return self.width * self.height;
    }

    f32 doubled_area() {
        return self.area() * 2.0;
    }
};

int main() {
    nconst Rectangle r = Rectangle(3.0, 4.0);
    sys.println(r.area());
    sys.println(r.doubled_area());
    return 0;
}
```

`self.area()` calls the method on the same instance. Same access rules apply — `self` already has full access regardless of visibility.

### A virtual method satisfying an interface

```apollo
interface Drawable {
    void draw();
};

class Square {
    public:
    const f32 side;

    virtual void draw() {
        sys.printf("square side=%f\n", self.side);
    }
};

void render(nconst Drawable& d) {
    d.draw();
}

int main() {
    nconst Square s = Square(2.0);
    render(&nconst s);
    return 0;
}
```

Marking `draw` virtual makes the call through `Drawable&` go through the interface vtable. Without `virtual`, the interface call would resolve at compile time to the concrete method, which is fine when the type is known but breaks if Square is hidden behind a base reference.

### Methods that return references

```apollo
class Pair {
    public:
    nconst i32 first;
    nconst i32 second;

    nconst i32& slot(i32 index) {
        if (index == 0) {
            return &self.first;
        }
        return &self.second;
    }
};

int main() {
    nconst Pair p = Pair(10, 20);
    nconst i32& s = p.slot(0);
    sys.println(*s);
    return 0;
}
```

A method may borrow and return a reference into `self`. The returned reference cannot outlive the receiver — the borrow checker enforces this at the call site.

### Methods on a generic class

```apollo
class Stack<T> {
    private:
    nconst vector<T> items;

    public:
    void push(T value) {
        collections.vector.push(self.items, value);
    }

    T pop() {
        return collections.vector.pop(self.items);
    }

    bool is_empty() {
        return collections.vector.length(self.items) == 0;
    }
};

extern std collections;

int main() {
    nconst Stack<int> s = Stack<int>();
    s.push(1);
    s.push(2);
    s.push(3);
    while (!s.is_empty()) {
        sys.println(s.pop());
    }
    return 0;
}
```

Methods on a generic class can mention the class's type parameters freely. Each instantiation creates a fresh set of methods specialized to that parameter.

## Common mistakes

- **Forgetting `self`.** Method bodies access fields and other methods through `self`. Bare names refer to outer-scope identifiers.
- **Marking a non-method static.** `static` only makes sense inside a class. Outside, the modifier is rejected.
- **Reassigning `self`.** `self = ...` is not allowed. The receiver binding is fixed for the method's lifetime.
- **Returning a reference to a local from a method.** The borrow checker rejects this just like for a top-level function. Use `&self.field` to return a reference into the receiver.
- **Calling a private method from outside the class.** Visibility is checked at the call site, not at the declaration site.

## See also

- `docs/language/declarations/docs/class.md` — the surrounding class declaration.
- `docs/language/declarations/docs/function.md` — top-level functions for comparison.
- `docs/language/declarations/docs/interface.md` — interface declaration and dispatch.
- `docs/language/expressions/docs/member-access.md` — the `.` operator that reaches methods.
- `docs/language/memory-and-storage/docs/borrow-expression.md` — borrow rules applied to `self`.
