# Template declaration

## What it is

A template introduces a reusable declaration parameterized by one or more type variables (and, less commonly, value variables). Apollo's template surface is the way generic functions, generic classes, generic structs, and generic interfaces are written. The same `<T, U, ...>` parameter list appears on every declaration form that can be generic.

A template is not itself a value or a type — it is a pattern. Each *use* of the template with concrete arguments produces a specific instantiation.

## When you use it

You write a template when:

- A function or type can operate on multiple unrelated element types without changing its body.
- You want to share an implementation between several specific types without losing static typing.
- You are building a container, a comparator, a result wrapper, or any other abstraction that is the same shape regardless of the contained type.

You do not use a template when there is only one type involved. Plain non-generic forms are clearer.

## Syntax

The generic parameter list is the same in every position:

```
genericParams : '<' genericParam (',' genericParam)* '>' ;
genericParam  : ID (':' typeRef)?      // a type parameter, optionally constrained
              | typeRef ID             // a value parameter (less common)
              ;
```

The parameter list attaches to:

- Function declarations: `T identity<T>(T x) { return x; }`
- Class declarations: `class Box<T> { ... }`
- Struct declarations: `struct Pair<A, B> { ... }`
- Interface declarations: `interface Comparator<T> { ... }`

At each use site, concrete arguments fill the parameters: `identity<int>(5)`, `Box<str>("hi")`, `Pair<int, str>(1, "x")`.

## Semantics

A template declaration is never directly executable. The compiler treats it as a recipe. When the program uses the template with concrete arguments, the compiler instantiates a specialized version with the type parameters replaced. Each distinct argument list yields a distinct instantiation.

Instantiations are checked individually. Body code that is well-formed for some arguments but not others produces an error only at the offending instantiation. This is similar to C++ templates' lazy checking — the compiler does not require the body to type-check for all conceivable arguments.

Type parameters may carry an optional constraint after a colon, naming an interface the argument must satisfy. The compiler checks the constraint at instantiation time, and the body may rely on the interface's method signatures.

Value-parameter templates are accepted for cases where a compile-time integer (an array size, an alignment) is part of the type. The argument must be a constant expression evaluable at compile time.

## Examples

### A generic identity function

```apollo
T identity<T>(T x) {
    return x;
}

int main() {
    sys.println(identity<int>(42));
    sys.println(identity<str>("hello"));
    return 0;
}
```

The same body works for any type. Each call site picks the type argument explicitly.

### Generic function with multiple parameters

```apollo
{B, A} swap<A, B>(A a, B b) {
    return <b, a>;
}

int main() {
    {str, int} s = swap<int, str>(1, "one");
    sys.printf("%s %d\n", s[0], s[1]);
    return 0;
}
```

Two parameters, two arguments. Return type uses both.

### Generic class

```apollo
class Box<T> {
    public:
    const T value;

    T peek() {
        return self.value;
    }
};

int main() {
    nconst Box<int> bi = Box<int>(7);
    nconst Box<str> bs = Box<str>("packed");
    sys.println(bi.peek());
    sys.println(bs.peek());
    return 0;
}
```

The class is instantiated per type. `Box<int>` and `Box<str>` are distinct types.

### Constrained type parameter

```apollo
interface Display {
    str render();
};

void show<T: Display>(nconst T& item) {
    sys.println(item.render());
}

class Tag {
    public:
    const str name;
    virtual str render() {
        return strings.concat("<", strings.concat(self.name, ">"));
    }
};

extern std strings;

int main() {
    nconst Tag t = Tag("apollo");
    show<Tag>(&nconst t);
    return 0;
}
```

The constraint `T: Display` ensures the body can call `item.render()`. The compiler checks the constraint at the call site.

### Generic struct used in a container

```apollo
struct Result<T, E> {
    T value;
    E error;
    bool is_ok;
};

Result<int, str> parse(str text) {
    if (strings.length(text) == 0) {
        return Result<int, str>(0, "empty", false);
    }
    return Result<int, str>(strings.to_i32(text), "", true);
}

extern std strings;

int main() {
    nconst Result<int, str> r = parse("42");
    if (r.is_ok) {
        sys.println(r.value);
    } else {
        sys.println(r.error);
    }
    return 0;
}
```

A generic struct with two type parameters. Each call site supplies both.

### Value-parameter template

```apollo
struct FixedArray<T, INT N> {
    T data[N];
};

int main() {
    nconst FixedArray<int, 4> a = FixedArray<int, 4>(<10, 20, 30, 40>);
    sys.println(a.data[2]);
    return 0;
}
```

`N` is a value parameter — a compile-time integer. The array dimension uses it directly. The instantiation `FixedArray<int, 4>` differs from `FixedArray<int, 8>`.

## Common mistakes

- **Omitting the argument list.** `Box(7)` is rejected when `Box` is generic; write `Box<int>(7)`. Apollo does not currently infer type arguments from constructor arguments.
- **Passing a non-constant for a value parameter.** Value parameters must be compile-time constants.
- **Using a constrained method without the constraint.** If the body calls `item.method()`, the parameter must be constrained to an interface declaring that method.
- **Sharing instantiations across modules with mismatched arguments.** Each module that uses `Box<int>` instantiates it independently, but the resulting types are the same. Cross-module mismatches normally only happen when a generic argument depends on a module-private type.
- **Assuming covariance.** `Box<Derived>` is not a subtype of `Box<Base>`. Reach for an interface if you need polymorphism over the contained type.

## See also

- `docs/language/declarations/docs/function.md` — non-generic function form.
- `docs/language/declarations/docs/class.md`, `struct.md`, `interface.md` — declaration forms that accept generic parameters.
- `docs/language/types/docs/generic-type.md` — using a generic type as a `typeRef`.
- `docs/language/types/docs/type-reference.md` — the umbrella rule that admits generic types.
