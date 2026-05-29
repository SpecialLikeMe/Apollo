# Macro declaration

## What it is

A macro is a named, parameterized fragment of Apollo source that expands at compile time. Macros let you factor out repetitive surface-level patterns without paying the runtime cost of a function call. Apollo's macros are hygienic — identifiers introduced inside a macro do not collide with identifiers at the call site — and they expand into well-typed AST, not raw text.

Macros are the right tool for patterns that look like control flow or declarations rather than expressions. For ordinary code reuse, a function (possibly generic) is simpler.

## When you use it

You reach for a macro when:

- You want to abstract a small statement-level pattern that a function cannot express (because it introduces declarations, captures local names, or short-circuits control flow).
- You are building an assertion-like helper that prints surrounding context (file, line, expression text) the caller would otherwise have to supply.
- You want a compile-time-typed builder for a domain-specific surface.

If your abstraction takes values, computes a result, and returns it, write a function. Macros are for patterns that need to *generate* code.

## Syntax

```
'macro' ID '(' macroParams? ')' '{' macroBody '}' ';'?

macroParams : macroParam (',' macroParam)* ;
macroParam  : 'expr' ID            // an expression to splice
            | 'type' ID            // a type to splice
            | 'ident' ID           // an identifier (binding name)
            | 'stmt' ID            // a statement
            | 'block' ID           // a brace block
            ;
```

The body looks like ordinary Apollo source, with macro parameters spliced in where their name appears.

## Semantics

A macro call has the form `macro_name(arg, arg, ...)`. Each argument is parsed in the kind declared for the corresponding parameter — expression arguments are parsed as expressions, type arguments as types, and so on.

Expansion happens after parsing the call site but before semantic analysis. The macro's body is rebuilt with the arguments substituted for the parameter names. The expanded AST is then validated and lowered as if the programmer had written it directly.

Hygiene: any identifier the macro introduces (a local binding name, a label) is renamed to a fresh symbol invisible to the call site. The call site's own identifiers are unaffected by the macro's expansion, and the macro cannot accidentally shadow a binding at the call site.

Macros may carry attributes for metadata such as compile-time evaluation, suppressing diagnostics, or marking macros as test-only.

## Examples

### A debug-print macro

```apollo
macro dbg(expr value) {
    sys.printf("%s = %v\n", "value", value);
}

int main() {
    int x = 7;
    dbg(x);
    dbg(x * 2);
    return 0;
}
```

`dbg(x)` expands to the body with `value` replaced by `x`. The macro avoids requiring the caller to repeat the expression name in a string.

### A try-or-return macro

```apollo
extern std result;

macro try_or_return(expr r) {
    if (!result.is_ok(r)) {
        return result.error(r);
    }
}

result<int, str> step_one() {
    return result.ok(42);
}

result<int, str> chain() {
    nconst result<int, str> a = step_one();
    try_or_return(a);
    return result.ok(result.value(a) + 1);
}

int main() {
    nconst result<int, str> r = chain();
    sys.println(result.value(r));
    return 0;
}
```

The macro expands into a statement-level `if` that short-circuits the enclosing function. A regular function could not do this because `return` inside a function only exits that function.

### A scoped-timer macro

```apollo
extern std time;

macro time_block(ident label, block body) {
    nconst i64 label_start = time.now_ns();
    body
    sys.printf("%s took %lld ns\n", "label", time.now_ns() - label_start);
}

int main() {
    time_block(work, {
        nconst int sum = 0;
        for (i := 0; i < 1000; i = i + 1) {
            sum = sum + i;
        }
    });
    return 0;
}
```

The macro takes a label identifier and a block. It wraps the block with timing code. Hygiene ensures the macro's `label_start` does not collide with any local in the call site.

### A typed-default macro

```apollo
macro default_of(type T) {
    T()
}

int main() {
    nconst int z = default_of(int);
    sys.println(z);
    return 0;
}
```

The macro splices a type argument into a default-construction expression. The expanded form is `int()`.

### Building a static lookup table

```apollo
macro static_table(ident name) {
    nconst map<str, int> name = collections.map.create<str, int>();
    collections.map.insert(name, "one", 1);
    collections.map.insert(name, "two", 2);
    collections.map.insert(name, "three", 3);
}

extern std collections;

int main() {
    static_table(numbers);
    sys.println(collections.map.get(numbers, "two"));
    return 0;
}
```

The macro introduces a binding with the caller-supplied name and populates it. Useful for boilerplate-heavy initialization.

## Common mistakes

- **Using a macro where a function would do.** Functions are easier to reason about. Reach for a macro only when you need the macro's compile-time substitution or short-circuit behavior.
- **Assuming text substitution.** Macros expand into AST. Operator precedence, parsing, and scope rules apply to the *expanded* form, not to the source text.
- **Naming a macro the same as a function.** Macro names share a namespace with functions. Avoid the conflict.
- **Forgetting parameter kinds.** Each parameter has a kind (`expr`, `type`, `ident`, `stmt`, `block`). The argument must match the kind.
- **Capturing call-site identifiers by guessing names.** Hygiene rewrites macro-introduced names. To deliberately produce or consume a caller name, pass it as an `ident` parameter.

## See also

- `docs/language/declarations/docs/function.md` — the usual abstraction mechanism.
- `docs/language/declarations/docs/template.md` — compile-time-parameterized declarations.
- `docs/language/directives/docs/attribute-block.md` — attaching attribute metadata to macros.
- `Apollo-Main/include/assertions.apollo` — examples of macros in the standard library.
