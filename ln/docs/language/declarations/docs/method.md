# Method declaration

## What it is

A method is a member declared inside a class or struct body.

Apollo's current method surface uses inline visibility modifiers and supports plain methods, `static` methods, `virtual` methods, constructors, destructors, and `@Override` on derived implementations.

## When you use it

Use a method when behavior belongs to a specific class or struct declaration.

Use `static` when the operation belongs to the type's namespace but does not need an instance. Use `virtual` when the method participates in interface or inherited virtual dispatch.

## Syntax

```apollo
method
    : @Override? visibility? (
          static? virtual? ReturnType name(params?) attributes? block
        | __construct(params?) attributes? block
        | __destruct() attributes? block
      )
```

In the current grammar, `visibility` is `public` or `private` and appears inline on the member itself.

## Semantics

- Methods are declared directly in the class body. There are no `public:` / `private:` sections.
- A regular method can access class members directly inside the body.
- A `public static` method is called through the type name, for example `Dog.tag()`.
- A `public virtual` method provides the implementation for an `itr` contract or an inherited virtual slot.
- Derived classes use `@Override` on the overriding method.
- Constructors use `__construct(...)`; current passing examples assign instance fields through `indef.member` inside the constructor body.

## Examples

### A regular instance method

```apollo
struct Pair {
    public i32 left;
    public i32 right;

    public i32 sum() {
        return left + right;
    }
}

int main() {
    Pair point = Pair{};
    point.sum();
    return 0;
}
```

The method is declared inline with `public`, and the body reads the surrounding members directly.

### A static method

```apollo
class Dog {
    public static void tag() {
        sys.println("dog-tag");
        return;
    }
}

int main() {
    Dog.tag();
    return 0;
}
```

`tag` belongs to the class and is called through the class name.

### Virtual method implementation and override

```apollo
itr Speaker {
    virtual void speak();
}

class Animal * public Speaker {
    public virtual void speak() {
        sys.println("animal");
        return;
    }
}

class Dog * public Animal {
    @Override
    public void speak() {
        sys.println("dog");
        return;
    }
}
```

The base implementation uses `public virtual`. The derived implementation uses `@Override` and the matching signature.

### Constructor syntax

```apollo
class Counter {
    public i32 value;

    public __construct(i32 seed) {
        indef.value = seed;
    }
}

int main() {
    stat direct = Counter{42};
    return direct.value == 42 ? 0 : 1;
}
```

Current constructor examples write to fields through `indef` rather than `self`.

## Common mistakes

- **Writing `public:` / `private:` sections.** Visibility belongs on each method declaration.
- **Using `interface` instead of `itr`.** Virtual contracts are declared with `itr` and implemented with `public virtual` methods.
- **Documenting method bodies with `self.` only.** The current passing surface accesses members directly inside ordinary methods.
- **Using the old generic class form in method examples.** Current generic declaration examples use `template Name(T)`, not `class Name<T>`.

## See also

- `docs/language/declarations/docs/class.md` — class declarations and inheritance clauses.
- `docs/language/declarations/docs/interface.md` — `itr`, virtual signatures, and overrides.
- `docs/language/declarations/docs/template.md` — generic declaration forms.