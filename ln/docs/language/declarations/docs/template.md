# Template declaration

## What it is

Apollo currently uses `template` for two different generic surfaces:

- Declaration templates such as `template Box(T) { ... }`
- Generic functions such as `template <T> identity(<T> x) { ... }`

Older documentation that uses `class Box<T>` or `interface Display<T>` is out of date.

## When you use it

Use a template when the same declaration should work across more than one concrete type.

Common examples are generic containers, reusable wrappers, and helper functions such as identity or forwarding helpers.

## Syntax

### Declaration template

```apollo
template Name(T, U) {
    public T first;
    public U second;
}
```

### Generic function

```apollo
template <T> identity(<T> x) {
    T value = x;
    return value;
}
```

## Semantics

- A declaration template introduces a reusable named type-like declaration.
- A generic function introduces a reusable function body parameterized by one or more type variables.
- Use sites still instantiate the resulting type or function with normal generic type syntax such as `Box<int>` or `identity<int>(4)`.
- The current passing surface also shows generic function inference in calls like `identity("hello")`.

## Examples

### Declaration template with one parameter

```apollo
template Box(T) {
    public T fetch(T value) {
        return value;
    }
}

int main() {
    nconst Box<int> box;
    box.fetch(4);
    return 0;
}
```

This is the current declaration form used by the language surface tests.

### Declaration template with a stored field

```apollo
template Holder(T) {
    public T value;

    public T fetch(T input) {
        return input;
    }
}

class Box {
    public void ping() {
        return;
    }
}

i32 main() {
    @autofmtdeclare {
        nconst Holder<Box> holder;
        Box input = Box{};
        holder.fetch(input);
        input.ping();
    }

    return 0;
}
```

The member type and method signature both use the template parameter directly.

### Generic function

```apollo
template <T> identity(<T> x) {
    T value = x;
    return value;
}

int main() {
    int a = identity<int>(4);
    str b = identity("hello");
    return 0;
}
```

The current passing test shows both explicit generic arguments and an inferred call.

## Common mistakes

- **Writing `class Box<T>` for a generic declaration.** The current declaration form is `template Box(T) { ... }`.
- **Assuming generic functions use the same declaration syntax as template types.** Generic functions use `template <T> name(<T> x) { ... }`.
- **Copying old `interface` examples into template code.** Current contract syntax uses `itr`.
- **Mixing C++-style access blocks into template bodies.** Current member declarations use inline `public` / `private` prefixes.

## See also

- `docs/language/declarations/docs/class.md` — class bodies and member syntax.
- `docs/language/declarations/docs/interface.md` — `itr` contracts used by current class examples.
- `docs/language/declarations/docs/method.md` — method syntax inside declaration templates.