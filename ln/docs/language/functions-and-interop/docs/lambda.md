# Lambda

## What it is

A lambda is an inline, non-capturing function expression. Where a closure can capture surrounding bindings, a lambda is restricted to its parameter list and body — anything it needs from outside must be passed as a parameter.

The restriction is a feature: lambdas never allocate, never carry environment pointers, and are guaranteed to lower to a plain function pointer. Use them when you want a small inline callable with zero overhead.

## When you use them

- Sorting predicates: `sort(v, lambda (int a, int b) -> bool { return a < b; });`
- Stateless transforms in higher-order functions.
- Test helpers and one-off callbacks where capturing is unnecessary.
- Function-typed parameters where the closure machinery would be overkill.

For anything that needs to reference a surrounding variable, use a closure instead.

## Syntax

```
lambda : 'lambda' '(' paramList? ')' '->' returnType block ;
```

The `lambda` keyword introduces the form. The body is a regular block.

## Semantics

A lambda evaluates to a value of function type `fn<R(Args...)>`. The body executes when the lambda is called. The body has access to:

- The lambda's parameters.
- Module-level names (functions, types, constants).

It does *not* have access to surrounding local variables. Any attempt to reference a local is rejected.

Because there are no captures, the lambda's representation is a plain function pointer plus a null environment pointer. It can be stored, copied, and called freely without lifetime concerns.

## Examples

### Inline predicate

```apollo
extern std collections;

int main() {
    nconst vector<int> v = <3, 1, 4, 1, 5, 9, 2, 6>;
    collections.vector.sort(v, lambda (int a, int b) -> bool {
        return a < b;
    });
    for (nconst int x : v) {
        sys.println(x);
    }
    return 0;
}
```

The lambda is stateless — it only uses its parameters.

### Mapping transform

```apollo
extern std collections;

vector<int> map_each(nconst vector<int>& src, fn<int(int)> f) {
    nconst vector<int> out = collections.vector.create<int>();
    for (nconst int v : src) {
        collections.vector.push(out, f(v));
    }
    return out;
}

int main() {
    nconst vector<int> base = <1, 2, 3, 4>;
    nconst vector<int> squared = map_each(&nconst base, lambda (int n) -> int {
        return n * n;
    });
    for (nconst int x : squared) {
        sys.println(x);
    }
    return 0;
}
```

The mapping function is a lambda — no need to capture anything.

### Lambda as a returned value

```apollo
fn<int(int)> identity_fn() {
    return lambda (int n) -> int { return n; };
}

int main() {
    nconst fn<int(int)> id = identity_fn();
    sys.println(id(42));
    return 0;
}
```

A lambda is a value; returning it is no different from returning any other value.

### Multiple parameters

```apollo
extern std collections;

int main() {
    nconst vector<int> v = <5, 1, 4, 2, 3};
    collections.vector.sort(v, lambda (int a, int b) -> bool {
        return a > b;     // descending
    });
    for (nconst int x : v) {
        sys.println(x);
    }
    return 0;
}
```

### Void-returning lambda

```apollo
extern std collections;

int main() {
    nconst vector<int> v = <10, 20, 30>;
    collections.vector.each(&nconst v, lambda (int n) -> void {
        sys.printf("got %d\n", n);
    });
    return 0;
}
```

A void return is allowed; the lambda is invoked for its side effects only.

### No captures — compile-time rejection

```apollo
int main() {
    nconst int outside = 7;
    // The following is rejected: lambdas cannot capture.
    // nconst fn<int(int)> f = lambda (int n) -> int { return n + outside; };
    return 0;
}
```

To make this work, use `closure` instead.

## Common mistakes

- **Capturing a local.** Rejected. Switch to `closure` or pass the value through a parameter.
- **Forgetting the return type.** `lambda (int n) { ... }` is rejected; return type is required.
- **Forgetting the arrow.** `lambda (int n) int { ... }` is rejected; use `->`.
- **Using `lambda` for stateful work.** If you need state, use `closure` (or a class with a method).
- **Reaching for `lambda` for member methods.** Methods are declared at the class/struct level, not as lambdas.

## See also

- `docs/language/functions-and-interop/docs/closure.md` — the capturing alternative.
- `docs/language/types/docs/function-type.md` — the type lambdas inhabit.
- `docs/language/expressions/docs/function-call.md` — invoking the result.
- `docs/language/declarations/docs/function.md` — top-level functions.
