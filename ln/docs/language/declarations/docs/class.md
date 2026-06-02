# Class declaration

## What it is

A class is a named declaration that groups fields and methods.

Apollo's current class surface uses inline visibility modifiers on each member. Older documentation that uses `public:` / `private:` blocks or the `interface` keyword is out of date.

## When you use it

Use a class when:

- A type needs named fields and attached behavior.
- You want methods such as `public static`, `public virtual`, or `@Override` members.
- You want a type to inherit from a base class or attach one or more `itr` contracts through the inheritance clause.

If you only need a simple aggregate with no class-specific behavior, a `struct` is usually simpler.

## Syntax

```apollo
class Name inheritanceClause? attributeBlock? {
    public i32 value;
    private str label;
    public static void tag() {
        return;
    }
    public virtual void speak() {
        return;
    }
}
```

The inheritance clause comes after `*` and separates inherited types with `;`:

```apollo
class Dog * public Animal; public Speaker {
    public void speak() {
        return;
    }
}
```

## Semantics

- Class members carry their own `public` or `private` modifier.
- There are no C++-style access sections such as `public:`.
- A class may inherit another class or attach interfaces with `* public TypeName` or `* private TypeName`.
- Methods inside the class body can be plain methods, `static` methods, `virtual` methods, constructors, or destructors.
- Generic class declarations use the `template Name(T)` form documented on the template page, not `class Name<T>`.

The examples below are based on the current passing grammar fixtures.

## Examples

### A minimal class

```apollo
class Pair {
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

`left` and `right` are declared with inline `public` modifiers, and the method body can refer to those members directly.

### A class implementing interfaces

```apollo
itr Speaker {
    virtual void speak();
}

itr Walker {
    virtual void walk();
}

class Animal * public Speaker; public Walker {
    public i32 value;

    public virtual void speak() {
        sys.println("animal");
        return;
    }

    public virtual void walk() {
        sys.println("walk");
        return;
    }
}
```

The class attaches both interfaces in the inheritance clause and implements the matching `public virtual` methods.

### A derived class with a static method and overrides

```apollo
class Dog * public Animal {
    public static void tag() {
        sys.println("dog-tag");
        return;
    }

    @Override
    public void speak() {
        sys.println("dog");
        return;
    }
}

int main() {
    Dog.tag();
    stat pet = Dog{};
    pet.speak();
    return 0;
}
```

`tag` is a class-level utility method. `speak` overrides the inherited virtual method.

### A class with an explicit constructor

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

Current constructor examples assign through `indef.member` inside `__construct`.

## Common mistakes

- **Writing `public:` or `private:` blocks.** Apollo currently expects `public i32 value;` and `public void run() { ... }`.
- **Using `interface` instead of `itr`.** Interface contracts are declared with `itr` and referenced from the class inheritance clause.
- **Using `class Box<T>` for a generic class.** The current declaration form is `template Box(T) { ... }`.
- **Forgetting the visibility modifier on members.** Current class examples use inline `public` / `private` prefixes on fields and methods.

## See also

- `docs/language/declarations/docs/interface.md` — interface contracts with `itr`.
- `docs/language/declarations/docs/method.md` — method, constructor, and override forms.
- `docs/language/declarations/docs/template.md` — generic declaration syntax.