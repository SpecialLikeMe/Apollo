# Function declaration

## What it is

A function declaration introduces a named, callable, top-level piece of code with an explicit return type, an explicit parameter list, and a brace-delimited body. Functions are the main unit of program structure in Apollo. Everything Apollo can run — `main`, helper routines, methods, lambdas, closures, and macros — is ultimately reduced to a function-like callable surface, and the plain top-level function is the simplest of those forms.

## When you use it

You write a top-level function when:

- You have a named operation you want to call from `main` or from other functions.
- You want a stable signature that other parts of the program rely on.
- You want the borrow checker, mutability rules, and type system to apply to a clearly scoped block of code.

You should reach for a method instead when the callable logically belongs to a class or struct. You should reach for a lambda or closure when the callable is short-lived, locally constructed, and meant to be assigned to a variable.

## Syntax

```
returnType name(params?) attributeBlock? { body }
```

Where:

- `returnType` is either `void` or a `typeRef` such as `int`, `i32`, `str`, `vector<str>`, `const int&`, `fn<int(int)>`, etc.
- `name` is an identifier. There is no overloading by signature; the name must be unique within its scope.
- `params?` is zero or more comma-separated parameters of the form `(const | nconst)? typeRef? identifier`.
- `attributeBlock?` is an optional `.att { ... }` block carrying metadata read during the runtime-surface pass.
- The body is a brace block. A function whose declared return type is not `void` must end every path with a `return` statement.

## Semantics

A function declaration creates a callable value at the top level of its containing source file. Callers reach the function by writing its name followed by an argument list in parentheses. Arguments are evaluated left to right, then bound to the parameters by position.

Parameter mutability is per parameter. By default a parameter binding is immutable, even if the parameter type is a value type. To allow the body to assign through the parameter binding, mark the parameter with `nconst` (or its older spellings `nst` and `stt`). Marking it `const` is the default and only useful for readability.

The body executes sequentially. Apollo is explicitly typed, so locals introduced in the body must have a type, an inferred binding form like `ato` or `:=`, or come from a constructor-like initializer. The body has access to the parameter bindings, to any imports brought into scope at file level, and to any declarations earlier in the file.

A function whose return type is not `void` must produce a value on every path. The frontend rejects a function that can fall off the end of the body without returning. A function with return type `void` may either omit the return statement at the end or write `return;` explicitly; both are accepted.

Functions participate in Apollo's borrow checker the same way any other block of code does. If a parameter is a reference (`&` or `.&` form), the borrow lifetime is the body of the function. Returning a reference is allowed only when the borrow checker can prove the referenced value outlives the call.

## Examples

### A pure leaf function

```apollo
int add(int left, int right) {
    return left + right;
}

int main() {
    int total = add(2, 3);
    sys.println(total);
    return 0;
}
```

`add` takes two immutable `int` parameters and returns their sum. Calling it inside `main` binds `total` to the result and the program prints `5`.

### A function with a mutable parameter binding

```apollo
int bump(nconst int value) {
    value = value + 1;
    return value;
}

int main() {
    int bumped = bump(7);
    sys.println(bumped);
    return 0;
}
```

Here `value` is bound `nconst`, so the body is allowed to assign to it. Because parameters are passed by value, the caller's argument is unaffected — only the local binding inside `bump` changes.

### A void function used for side effects

```apollo
void announce(str message) {
    sys.println(message);
    return;
}

int main() {
    announce("starting");
    announce("done");
    return 0;
}
```

A `void` function may end with `return;` for clarity. It can also omit the final `return` when control naturally falls off the end of the body, but writing it explicitly is the convention in the codebase.

### A function with a reference parameter

```apollo
int read_value(nconst int& slot) {
    return *slot;
}

int main() {
    nconst int counter = 42;
    nconst int& alias = &nconst counter;
    int copy = read_value(alias);
    sys.println(copy);
    return 0;
}
```

`read_value` takes a borrowed reference to an `int`. The borrow is alive for the duration of the call, which is short and well-scoped, so the borrow checker is happy. `*slot` reads the referenced value.

### A function returning a reference

```apollo
str& keep(str& value) {
    return value;
}

int main() {
    str message = "hello";
    str& kept = keep(message);
    sys.println(kept);
    return 0;
}
```

`keep` simply hands its reference parameter back to the caller. The borrow checker permits this because the returned reference cannot outlive `value`, and `value` is just an alias of `message`, which lives for the full body of `main`.

### A function used recursively

```apollo
int factorial(int n) {
    if (n <= 1) {
        return 1;
    }
    return n * factorial(n - 1);
}

int main() {
    sys.println(factorial(6));
    return 0;
}
```

Apollo allows direct recursion. The compiler does not require a forward declaration: the name `factorial` is in scope inside its own body.

### A function with an attribute block

```apollo
int hot_path(int x) .att { hot } {
    return x * x;
}

int main() {
    sys.println(hot_path(9));
    return 0;
}
```

`.att { hot }` attaches a metadata entry to the declaration. Attributes are consumed by validation and codegen — they do not change the parse-tree shape of the body itself.

## Common mistakes

- **Missing a return on some path.** A non-`void` function must end every path with a `return`. An `if` with no `else` that returns from the `if` branch but falls through afterward is fine; an `if`/`else` that returns from one branch but not the other is not.
- **Trying to reassign a parameter without `nconst`.** Apollo bindings are immutable by default. Reassigning a parameter requires marking it `nconst` in the parameter list.
- **Overloading by signature.** Apollo does not pick a function from a set of same-named candidates. Each function name must be unique in its scope.
- **Returning a reference to a local.** Returning `&local` where `local` is a value owned by the function fails the borrow checker because the local dies before the caller can use the reference.
- **Confusing functions with methods.** A method declaration looks similar but lives inside a class or struct body and accepts access modifiers like `public` and `private`. Top-level functions never carry those modifiers.

## See also

- `docs/language/declarations/docs/method.md` — methods are the class/struct-scoped equivalent.
- `docs/language/functions-and-interop/docs/lambda.md` — lambdas are inline, value-form callables.
- `docs/language/functions-and-interop/docs/closure.md` — closures capture surrounding bindings.
- `docs/language/control-flow/docs/return.md` — full rules for the `return` statement.
- `docs/language/memory-and-storage/docs/borrow-expression.md` — borrow semantics that apply to reference parameters.
