# Function type

## What it is

A function type is the type of a callable value. It names the return type and the parameter types of any function-shaped value. Top-level functions, lambdas, closures, and methods bound to a receiver all inhabit a function type when stored as a value.

Function types are how Apollo lets you pass behavior around: as a parameter to a higher-order function, as a field of a struct, as an element of a collection, or as the return value of a factory.

## When you use it

You write a function type when:

- You want to declare a binding that holds a callable.
- You want a parameter slot that accepts any callable matching a signature.
- You want a return type that produces a callable.
- You want a collection or struct to hold callables.

## Syntax

```
functionType : 'fn' '<' returnType '(' (typeRef (',' typeRef)*)? ')' '>' ;
```

The return type comes first, then the parameter type list in parentheses. The parameter list may be empty.

## Semantics

A function type is a structural value-type wrapper around a callable. Two function types are equal when their return types are equal and their parameter type lists are pairwise equal.

A value of function type is callable using the standard call syntax: `f(arg, arg)`. The call is dispatched through whatever the callable's representation provides — a direct call for top-level functions, an indirect call through a closure record for capturing closures.

Function-typed values are first-class: they can be stored, copied, passed, and returned. Apollo does not distinguish at the type level between a function with no captures and a closure with captures; both inhabit the same `fn<R(Args...)>` type.

The borrow checker treats function values as opaque value types. A closure that captures references holds those borrows internally, and the function value's lifetime is the shorter of its own and any borrowed capture's lifetime.

## Examples

### A function-typed binding

```apollo
int square(int n) {
    return n * n;
}

int main() {
    nconst fn<int(int)> op = square;
    sys.println(op(7));
    return 0;
}
```

`op` is a function-typed binding holding the `square` function. Calling `op(7)` is equivalent to calling `square(7)`.

### A higher-order function parameter

```apollo
extern std collections;

void apply_all(nconst vector<int>& items, fn<void(int)> action) {
    for (nconst int v : items) {
        action(v);
    }
}

int main() {
    nconst vector<int> data = <1, 2, 3>;
    apply_all(&nconst data, sys.println);
    return 0;
}
```

`apply_all` takes any callable matching `fn<void(int)>`. The standard `sys.println` overload for `int` satisfies the signature.

### Returning a callable from a function

```apollo
fn<int(int)> make_multiplier(int factor) {
    return closure [=factor] (int x) -> int {
        return x * factor;
    };
}

int main() {
    nconst fn<int(int)> times3 = make_multiplier(3);
    nconst fn<int(int)> times7 = make_multiplier(7);
    sys.println(times3(10));
    sys.println(times7(10));
    return 0;
}
```

The factory returns a closure that captures `factor` by value. The returned value has type `fn<int(int)>` even though it carries internal state.

### Storing callables in a collection

```apollo
extern std collections;

int main() {
    nconst vector<fn<int(int)>> ops = <
        closure (int x) -> int { return x + 1; },
        closure (int x) -> int { return x * 2; },
        closure (int x) -> int { return x - 3; }
    >;
    nconst int v = 10;
    for (nconst fn<int(int)> op : ops) {
        sys.println(op(v));
    }
    return 0;
}
```

Each element of the vector is a callable. The loop calls each in turn.

### Function-typed struct field

```apollo
struct Pipeline {
    public:
    nconst fn<int(int)> first;
    nconst fn<int(int)> second;

    int run(int x) {
        return self.second(self.first(x));
    }
};

int main() {
    nconst Pipeline p = Pipeline(
        closure (int x) -> int { return x + 10; },
        closure (int x) -> int { return x * 2; }
    );
    sys.println(p.run(5));
    return 0;
}
```

The struct holds two callables and chains them in `run`.

### Function type with no parameters

```apollo
fn<str()> greeter(str name) {
    return closure [=name] () -> str {
        return strings.concat("hello, ", name);
    };
}

extern std strings;

int main() {
    nconst fn<str()> g = greeter("apollo");
    sys.println(g());
    return 0;
}
```

`fn<str()>` is a callable taking no arguments and returning a string. Useful for deferred computation.

## Common mistakes

- **Mixing up parameter order.** `fn<int(str, bool)>` is not the same as `fn<int(bool, str)>`.
- **Forgetting the return type slot.** Even a void return must be written: `fn<void(int)>`.
- **Trying to call a function value via member access.** `f.call(arg)` is not Apollo syntax; just `f(arg)`.
- **Assuming function types are convertible.** Two function types with related but distinct signatures (different parameter widths, for example) do not convert implicitly.
- **Storing a closure that outlives its borrowed captures.** The borrow checker rejects this. Capture by value if the closure must outlive the original binding.

## See also

- `docs/language/declarations/docs/function.md` — top-level functions.
- `docs/language/functions-and-interop/docs/closure.md` — closures with captures.
- `docs/language/functions-and-interop/docs/lambda.md` — non-capturing inline callables.
- `docs/language/types/docs/type-reference.md` — where function types appear.
