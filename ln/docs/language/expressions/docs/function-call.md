# Function call

## What it is

A function call invokes a callable with an argument list. The callable can be a top-level function, a method bound to a receiver, a lambda, a closure, a function-typed binding, or any other value of function type. The syntax is uniform: `f(arg, arg, ...)`.

Apollo has no implicit calls. A function value with no parentheses is just the value; you must write `()` to invoke.

## When you use it

Constantly. Every operation beyond pure arithmetic and member access goes through a call.

## Syntax

```
functionCall : callableExpr '(' (expression (',' expression)*)? ')' ;
```

Where `callableExpr` is any expression that produces a callable: an identifier referring to a function, a member access that yields a method, a function-typed binding, a lambda or closure expression, etc.

## Semantics

Argument expressions are evaluated left-to-right before the call. Each argument's type must match (or be implicitly convertible to) the corresponding parameter type.

For methods, the receiver is bound implicitly via the member-access expression: `g.method(a)` is equivalent to calling the method with `g` as the implicit `self` and `a` as the explicit argument.

The call's result type is the callable's return type. A void call cannot appear in a value-needing context.

For closures with captures, the call loads the closure's environment pointer and invokes the function pointer with both the environment and the explicit arguments. This is invisible at the source level.

## Examples

### Top-level call

```apollo
int square(int n) { return n * n; }

int main() {
    sys.println(square(7));
    return 0;
}
```

`square(7)` invokes the function with the literal `7`.

### Method call on a value

```apollo
class Counter {
    public:
    nconst i32 value;
    void bump() { self.value = self.value + 1; }
};

int main() {
    nconst Counter c = Counter(0);
    c.bump();
    c.bump();
    sys.println(c.value);
    return 0;
}
```

`c.bump()` calls the method with `c` as the receiver.

### Call through a function-typed binding

```apollo
int main() {
    nconst fn<int(int, int)> op = closure (int a, int b) -> int { return a + b; };
    sys.println(op(3, 4));
    return 0;
}
```

The binding holds a callable; the call invokes it.

### Higher-order: passing a callable

```apollo
extern std collections;

void each(nconst vector<int>& items, fn<void(int)> action) {
    for (nconst int v : items) {
        action(v);
    }
}

int main() {
    nconst vector<int> data = <1, 2, 3>;
    each(&nconst data, sys.println);
    return 0;
}
```

`each` accepts a callable parameter and invokes it for each element.

### Chained calls

```apollo
extern std strings;

int main() {
    sys.println(strings.length(strings.concat("hello, ", "world")));
    return 0;
}
```

The outer call's argument is the result of the inner call. Evaluation is left-to-right, inner-first.

### Call with no arguments

```apollo
extern std time;

int main() {
    nconst i64 now = time.now_ms();
    sys.println(now);
    return 0;
}
```

Parentheses are required even with no arguments.

## Common mistakes

- **Forgetting parentheses.** `square` alone is the function value; `square()` invokes it.
- **Wrong argument count.** A mismatch with the declared parameter count is rejected.
- **Wrong argument type.** Apollo requires explicit conversions where the types don't match exactly.
- **Calling a void function in a value context.** `int x = print_hello();` is rejected.
- **Passing a method without binding.** `g.greet` produces a bound callable; `Greeter.greet` does not exist. Methods must be bound to a receiver before they are values.

## See also

- `docs/language/declarations/docs/function.md` — function declarations.
- `docs/language/declarations/docs/method.md` — methods and the implicit `self`.
- `docs/language/types/docs/function-type.md` — function-typed values.
- `docs/language/functions-and-interop/docs/closure.md`, `lambda.md` — anonymous callables.
