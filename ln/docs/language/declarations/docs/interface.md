# Interface declaration

## What it is

Apollo's current interface declaration keyword is `itr`.

An `itr` declares a named virtual-method contract that classes can attach in their inheritance clause. Older documentation that uses the keyword `interface` or C++-style access blocks such as `public:` is out of date.

## When you use it

Use an `itr` when:

- Multiple classes should expose the same virtual method surface.
- You want a class hierarchy to promise a specific set of overridable operations.
- You need one named contract that several concrete classes can share.

If you only need one concrete implementation and no shared virtual surface, a plain class method is simpler.

## Syntax

```apollo
itr Name inheritanceClause? attributeBlock? {
    virtual ReturnType methodName(params?);
    virtual ReturnType otherMethod(params?);
}
```

Classes attach an interface in their inheritance clause:

```apollo
class Dog * public Speaker {
    public virtual void speak() {
        sys.println("dog");
        return;
    }
}
```

## Semantics

- The parser accepts `itr`, not `interface`.
- Interface bodies contain only virtual method signatures terminated with `;`.
- Implementing classes list the interface in the `* public ...` or `* private ...` inheritance clause.
- Implementing methods should match the declared signature and are written as `public virtual` methods.
- Subclasses may use `@Override` when overriding inherited virtual methods.

The examples below are patterned after the current grammar test surface.

## Examples

### Minimal interface declaration

```apollo
itr Speaker {
    virtual void speak();
}

int main() {
    return 0;
}
```

This declares only the interface surface. There are no method bodies inside `itr`.

### A class implementing one interface

```apollo
itr Speaker {
    virtual void speak();
}

class Dog * public Speaker {
    public virtual void speak() {
        sys.println("dog");
        return;
    }
}

int main() {
    stat pet = Dog{};
    pet.speak();
    return 0;
}
```

`Dog` lists `Speaker` in its inheritance clause and provides the matching `public virtual` method.

### One class implementing multiple interfaces

```apollo
itr Speaker {
    virtual void speak();
}

itr Walker {
    virtual void walk();
}

class Animal * public Speaker; public Walker {
    public virtual void speak() {
        sys.println("animal");
        return;
    }

    public virtual void walk() {
        sys.println("walk");
        return;
    }
}

int main() {
    stat animal = Animal{};
    animal.speak();
    animal.walk();
    return 0;
}
```

Apollo separates inherited types with `;` inside the `* ...` clause.

### Overriding an inherited virtual method

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

int main() {
    stat pet = Dog{};
    pet.speak();
    return 0;
}
```

`@Override` belongs on the subclass override. The interface declaration itself still uses `virtual` signatures.

### Interface methods with parameters

```apollo
itr Greeter {
    virtual void greet(str name);
}

class ConsoleGreeter * public Greeter {
    public virtual void greet(str name) {
        sys.println(name);
        return;
    }
}

int main() {
    stat greeter = ConsoleGreeter{};
    greeter.greet("Apollo");
    return 0;
}
```

Method parameters are declared in the interface signature and repeated exactly in the implementation.

## Common mistakes

- **Using `interface` instead of `itr`.** The current parser rejects `interface Greeter { ... }`.
- **Writing C++-style access sections.** Apollo uses `public virtual void speak()` and `public i32 value;`, not `public:` blocks.
- **Omitting `virtual` inside the interface body.** Interface members are declared as virtual method signatures.
- **Forgetting to list the interface in the class inheritance clause.** Use `class Name * public InterfaceName { ... }`.
- **Changing the signature in the implementation.** Parameter and return types still need to match the interface declaration.

## See also

- `docs/language/declarations/docs/class.md` — class declaration syntax.
- `docs/language/declarations/docs/method.md` — virtual methods and overrides.
- `docs/language/declarations/docs/template.md` — other declaration forms.