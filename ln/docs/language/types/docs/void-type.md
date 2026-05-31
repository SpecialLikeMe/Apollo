# Void type

## What it is

`void` is the sentinel type used to indicate that a function has no return value. It is the only place `void` appears in Apollo's type grammar — there is no `void` binding, no `void` field, no `void` parameter.

## When you use it

Every function whose body is run for side effects and produces no value uses `void` as its return type:

- Functions that print, log, or write.
- Functions that mutate state through a reference parameter.
- Functions that schedule, signal, or notify.
- Functions whose result is captured indirectly (e.g. through a closure capture).

When a function genuinely produces a value, name the value's type instead.

## Syntax

```
returnType : 'void' | typeRef ;
```

`void` is admitted by the `returnType` rule, which appears in function declarations, method declarations, lambda/closure return types, and function-type literals.

## Semantics

A function declared with `void` return type produces no value. Calls to it appear as statements: `print_hello();`. Such a call cannot appear inside an expression position that expects a value.

Inside the body of a void function, `return;` exits early without a value. A final return is optional — control falling off the end of a void function returns implicitly.

`void` cannot be used as a binding's type, a field's type, a parameter's type, a generic argument, or a slot in a shape type. The frontend rejects each.

## Examples

### Simple void function

```apollo
void print_hello() {
    sys.println("hello");
}

int main() {
    print_hello();
    return 0;
}
```

The body prints and the implicit return at the end exits.

### Void function with early exit

```apollo
extern std strings;

void announce(str msg) {
    if (strings.length(msg) == 0) {
        return;
    }
    sys.println(msg);
}

int main() {
    announce("");
    announce("hi");
    return 0;
}
```

`return;` exits early. The function never produces a value.

### Void function with mutating reference

```apollo
extern std collections;

void add_all(nconst vector<int>& target, nconst vector<int>& src) {
    for (nconst int v : src) {
        collections.vector.push(target, v);
    }
}

int main() {
    nconst vector<int> a = <1, 2>;
    nconst vector<int> b = <3, 4>;
    add_all(&nconst a, &nconst b);
    for (nconst int v : a) {
        sys.println(v);
    }
    return 0;
}
```

The function mutates `target` through the reference. No return value is needed.

### Void in a function type

```apollo
fn<void(int)> printer() {
    return closure (int n) -> void {
        sys.println(n);
    };
}

int main() {
    nconst fn<void(int)> p = printer();
    p(7);
    p(42);
    return 0;
}
```

`fn<void(int)>` is the type of a void-returning callable.

### Void method

```apollo
class Logger {
    public:
    virtual void log(str msg) {
        sys.println(msg);
    }
};

int main() {
    nconst Logger l = Logger();
    l.log("starting");
    l.log("running");
    return 0;
}
```

Void methods follow the same rules — return; or fall off the end.

## Common mistakes

- **Trying to assign the result of a void call.** `int x = void_fn();` is rejected. Void calls are statements.
- **Returning a value from void.** `return 0;` from a void function is rejected.
- **Using `void` as a binding type.** `void x;` is rejected. Use no binding at all if the value is meaningless.
- **Using `void` in a generic argument.** `vector<void>` is rejected; void is not a storable type.
- **Forgetting that void calls cannot chain.** Method chains rely on returning the receiver; void methods break the chain.

## See also

- `docs/language/declarations/docs/function.md` — function declarations including void.
- `docs/language/control-flow/docs/return.md` — return semantics.
- `docs/language/types/docs/type-reference.md` — type-position rules.
- `docs/language/types/docs/function-type.md` — `fn<void(...)>` shape.
