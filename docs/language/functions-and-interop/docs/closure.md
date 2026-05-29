# Closure

## What it is

A closure is a callable value created in expression position that captures bindings from its surrounding scope. Closures are how Apollo programs hand pieces of code to other pieces of code while keeping access to local context — they are the building block for callbacks, deferred computation, and higher-order patterns.

Closures are the only indentation-sensitive surface in Apollo. The body of a closure may use either brace-delimited or indented-block form. The indented form starts on the line after the closure header and continues until the indent level returns to the header's level.

## When you use it

You write a closure when:

- You need to pass a small piece of behavior into a function that takes a callable parameter — sort comparators, map transforms, filter predicates, event handlers.
- You want a callable that remembers some surrounding state without making that state global.
- You want to delay a computation until later by wrapping it in a value you can store and invoke.

If the callable does not need to capture anything from its scope, a lambda is the lighter form. If the callable is a top-level reusable operation, a named function is clearer.

## Syntax

There are two body forms:

**Brace body**

```
closure capture_list? '(' params? ')' '->' returnType '{' body '}'
```

**Indented body**

```
closure capture_list? '(' params? ')' '->' returnType
    body_indented
```

Where:

- `capture_list?` is an optional `[ ... ]` block listing the bindings to capture and how to capture them (by value with `=name`, by immutable borrow with `&name`, by mutable borrow with `&nconst name`).
- `params?` is the parameter list, same shape as for a function.
- `returnType` is `void` or any `typeRef`.
- `body` is a brace-delimited block or, in the indented form, a sequence of statements indented past the closure header.

The capture list is optional. When omitted, the closure does not capture anything and is equivalent to a lambda.

## Semantics

A closure expression evaluates to a callable value. The capture list runs at the moment the closure is created — bindings captured by value are copied then, and bindings captured by reference establish borrows then. The captured state lives as long as the closure value lives.

The body runs each time the closure is called. Captured values are available in the body just like local bindings. Captures by value behave like immutable locals of the closure (or mutable, if explicitly marked `nconst` in the capture list). Captures by reference behave like the reference type that the corresponding place produces.

The closure's type includes its parameter types and return type and matches the `fn<R(Args...)>` function-type shape. Two closures with the same parameter and return types are assignable to the same `fn<R(Args...)>` binding regardless of what they capture.

The borrow checker tracks captures. A closure that captures by reference holds a borrow of the captured place for the closure's lifetime; that borrow conflicts with mutations of the place through other paths during the same window.

## Examples

### Capture by value

```apollo
fn<int(int)> make_adder(int delta) {
    return closure [=delta] (int x) -> int {
        return x + delta;
    };
}

int main() {
    nconst fn<int(int)> add5 = make_adder(5);
    sys.println(add5(10));
    sys.println(add5(20));
    return 0;
}
```

`make_adder` returns a closure that has captured the value of `delta` by copy. Each call to `add5` adds `5` to its argument. The captured copy lives inside the returned closure value.

### Capture by immutable borrow

```apollo
fn<int()> make_reader(nconst int& slot) {
    return closure [&slot] () -> int {
        return *slot;
    };
}

int main() {
    int counter = 42;
    nconst fn<int()> read = make_reader(&counter);
    sys.println(read());
    return 0;
}
```

The closure captures a reference to `counter`. Reading through the closure reads the current value of `counter`. The borrow lives as long as the closure value, so `counter` must outlive the closure.

### Capture by mutable borrow

```apollo
fn<void()> make_incrementer(nconst int& slot) {
    return closure [&nconst slot] () -> void {
        *slot = *slot + 1;
    };
}

int main() {
    nconst int counter = 0;
    nconst fn<void()> bump = make_incrementer(&nconst counter);
    bump();
    bump();
    bump();
    sys.println(counter);
    return 0;
}
```

The closure holds a mutable borrow. Each call writes through it. While `bump` is alive, `counter` cannot be touched directly because the borrow is still active.

### Closure passed to a higher-order function

```apollo
extern std collections;

void each(nconst vector<int>& items, fn<void(int)> action) {
    for (nconst int v : items) {
        action(v);
    }
}

int main() {
    nconst vector<int> data = <1, 2, 3, 4, 5>;
    nconst int total = 0;
    nconst int sum = 0;
    each(&nconst data, closure [&nconst sum] (int v) -> void {
        sum = sum + v;
    });
    sys.println(sum);
    return 0;
}
```

The closure is built inline at the call site and passed as the `action` parameter. The capture list grabs `sum` by mutable borrow so the closure can accumulate into it.

### Indented body form

```apollo
extern std collections;

int main() {
    nconst vector<int> values = <3, 1, 4, 1, 5, 9, 2, 6>;
    nconst fn<bool(int, int)> cmp = closure (int a, int b) -> bool
        return a < b;
    collections.vector.sort(values, cmp);
    for (nconst int v : values) {
        sys.println(v);
    }
    return 0;
}
```

The closure body is a single `return` statement on the line below the header, indented past the `closure` keyword. The indented region ends when the indent returns to the header's level. This form keeps very short closures from drowning in braces.

### Storing a closure for later use

```apollo
struct Deferred {
    public:
    nconst fn<void()> action;
};

void schedule(nconst Deferred& d) {
    d.action();
}

int main() {
    nconst str message = "ran later";
    nconst Deferred d = Deferred(closure [=message] () -> void {
        sys.println(message);
    });
    schedule(&nconst d);
    return 0;
}
```

The closure captures `message` by value, so the struct can be passed around without worrying about the original binding's lifetime. The deferred action runs whenever `schedule` invokes it.

## Common mistakes

- **Capturing by reference and outliving the borrowed place.** A closure that captures by reference must not outlive the borrowed binding. Returning a by-reference closure from a function that owns the borrowed place is rejected.
- **Forgetting the capture list.** Without `[...]`, the closure captures nothing. References to outer bindings in the body are rejected unless they are captured.
- **Mixing brace and indented body on the same closure.** Choose one. The indented form has no opening brace; the brace form has one.
- **Indenting less than the header in the indented form.** The body ends as soon as the indent returns to the header's level, so under-indented continuation lines silently exit the body.
- **Treating a closure as a plain function pointer.** Closures with captures carry state. The `fn<R(Args...)>` type abstracts over the difference, but trying to extract a raw function pointer from a capturing closure is rejected.

## See also

- `docs/language/functions-and-interop/docs/lambda.md` — non-capturing inline callables.
- `docs/language/declarations/docs/function.md` — top-level named callables.
- `docs/language/types/docs/function-type.md` — the `fn<R(Args...)>` type closures inhabit.
- `docs/language/memory-and-storage/docs/borrow-expression.md` — borrow rules that apply to by-reference captures.
- `docs/language/lexical/docs/indentation.md` — the indented-body rules.
