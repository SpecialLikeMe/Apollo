# Generic type

## What it is

A generic type is an instantiation of a template at the type-position. Where the template declaration introduces parameters (`class Box<T> { ... }`), a generic type fills those parameters with concrete arguments (`Box<int>`). The result is a single named type ready to be used wherever a type can appear.

Generic types let you reuse one declaration across many element types without losing static typing or paying runtime polymorphism costs.

## When you use it

You write a generic type whenever you instantiate a generic declaration:

- `vector<int>`, `map<str, i32>`, `set<u8>` — using generic collections.
- `Box<MyClass>`, `Pair<int, str>` — using user-defined generic classes or structs.
- `fn<int(int)>` — using the built-in function type (technically a generic shape too).
- `Comparator<int>` — using a generic interface.

## Syntax

```
genericType : ID '<' typeRef (',' typeRef)* '>' ;
```

The base name is the generic declaration; the angle-bracketed list supplies the type arguments. The argument count must match the declaration's parameter count.

## Semantics

A generic type instantiation is resolved at validation time. The frontend looks up the base, checks the argument count, and produces a specialized type entry keyed by `(base, arguments...)`. Two instantiations with the same key share the same internal type and therefore the same lowered representation.

The specialization is *monomorphized*: each distinct argument set produces its own concrete code at lower time. There is no shared runtime dispatch and no boxing.

Generic arguments may themselves be generic types, references, function types, etc. — anything `typeRef` admits.

## Examples

### Generic collection instantiation

```apollo
extern std collections;

int main() {
    nconst vector<int> ints = <1, 2, 3>;
    nconst vector<str> words = <"a", "b", "c">;
    nconst map<str, int> table = collections.map.create<str, int>();
    sys.println(collections.vector.length(ints));
    sys.println(collections.vector.length(words));
    return 0;
}
```

Each `vector<...>` is a distinct instantiation, with its own lowered representation specialized to the element type.

### Nested generics

```apollo
extern std collections;

int main() {
    nconst vector<vector<int>> rows = <
        <1, 2, 3>,
        <4, 5, 6>,
        <7, 8, 9>
    >;
    for (nconst vector<int> row : rows) {
        for (nconst int v : row) {
            sys.printf("%d ", v);
        }
        sys.println("");
    }
    return 0;
}
```

`vector<vector<int>>` nests two generic instantiations. Each level is its own concrete type.

### Generic struct

```apollo
struct Pair<A, B> {
    A first;
    B second;
};

int main() {
    nconst Pair<int, str> p = Pair<int, str>(7, "seven");
    nconst Pair<str, bool> q = Pair<str, bool>("ok", true);
    sys.printf("%d %s\n", p.first, p.second);
    sys.printf("%s %d\n", q.first, q.second);
    return 0;
}
```

Each `Pair<...>` is a distinct type. Methods (if any) are specialized per instantiation.

### Generic class with method

```apollo
class Box<T> {
    public:
    const T value;

    T peek() {
        return self.value;
    }
};

int main() {
    nconst Box<int> bi = Box<int>(42);
    nconst Box<str> bs = Box<str>("packed");
    sys.println(bi.peek());
    sys.println(bs.peek());
    return 0;
}
```

`Box<int>` and `Box<str>` have separate `peek` methods, each specialized to the argument type.

### Generic in a function signature

```apollo
T first<T>(nconst vector<T>& items) {
    return items[0];
}

extern std collections;

int main() {
    nconst vector<int> a = <10, 20, 30>;
    nconst vector<str> b = <"one", "two">;
    sys.println(first<int>(&nconst a));
    sys.println(first<str>(&nconst b));
    return 0;
}
```

`first<int>` and `first<str>` are separate function specializations. Each call site picks the type argument explicitly.

### Generic with multiple parameters

```apollo
extern std collections;

int main() {
    nconst map<i32, str> lookup = collections.map.create<i32, str>();
    collections.map.insert(lookup, 1, "one");
    collections.map.insert(lookup, 2, "two");
    sys.println(collections.map.get(lookup, 1));
    return 0;
}
```

`map<i32, str>` is an instantiation with two arguments. The argument order matches the declared parameter order.

## Common mistakes

- **Wrong argument count.** `vector<int, str>` is rejected if `vector` takes one parameter.
- **Forgetting arguments.** `vector v = ...` is rejected; arguments are required.
- **Mixing related generics.** `Box<Derived>` is not a subtype of `Box<Base>`. Use interface borrows or explicit conversion for polymorphism over the contained type.
- **Constraint failure.** When a template has a constraint (`T: Display`), the argument must satisfy it; otherwise the instantiation fails.
- **Using a generic as both a type and a base.** A binding's type is a *specific* instantiation; you cannot write `Box` alone where a type is expected.

## See also

- `docs/language/declarations/docs/template.md` — declaring generic forms.
- `docs/language/types/docs/type-reference.md` — generics in the type-reference umbrella.
- `docs/language/declarations/docs/class.md`, `struct.md`, `interface.md` — declarations that can be generic.
- `docs/stdlib/data/docs/collections.md` — common generic collection types.
