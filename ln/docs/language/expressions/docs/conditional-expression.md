# Conditional expression

## What it is

The conditional expression `cond ? a : b` produces one of two values depending on a boolean test. It is an *expression*, not a statement — the result can be assigned, returned, or fed into another expression.

This complements `if`/`else`, which is a control-flow statement and does not produce a value.

## When you use it

- Picking between two values for an assignment: `nconst int max = a >= b ? a : b;`
- Inline guarding in a function argument: `print(value > 0 ? value : 0);`
- Selecting a default: `nconst str display = name != "" ? name : "anonymous";`

For more complex branching, use `if`/`else` and assign to a local.

## Syntax

```
conditionalExpr : expression '?' expression ':' expression ;
```

Right-associative; chains like `a ? x : b ? y : z` parse as `a ? x : (b ? y : z)`.

## Semantics

The condition is evaluated first. If true, the first branch is evaluated and its result is the expression's value; otherwise the second branch is evaluated. Only one of the two branches runs.

Both branches must have the same type (or implicitly convertible to a common type). The result's type is that common type.

Conditional expressions cannot contain statements. For multi-line work, use `if`/`else`.

## Examples

### Picking the larger of two

```apollo
int main() {
    nconst int a = 7;
    nconst int b = 12;
    nconst int big = a >= b ? a : b;
    sys.println(big);
    return 0;
}
```

`a >= b` selects which branch produces the value.

### Default for an empty string

```apollo
extern std strings;

int main() {
    nconst str name = "";
    nconst str display = strings.length(name) > 0 ? name : "anonymous";
    sys.println(display);
    return 0;
}
```

Both branches have type `str`. The selected branch flows into the binding.

### Inline argument guard

```apollo
int main() {
    nconst int value = -5;
    sys.println(value > 0 ? value : 0);
    return 0;
}
```

The argument expression uses a conditional to clamp to zero.

### Chained conditionals

```apollo
extern std strings;

str classify(int n) {
    return n < 0 ? "negative"
         : n == 0 ? "zero"
         : "positive";
}

int main() {
    sys.println(classify(-1));
    sys.println(classify(0));
    sys.println(classify(7));
    return 0;
}
```

Right-associativity makes chained selection readable.

### Conditional inside a literal

```apollo
extern std collections;

int main() {
    nconst bool include_extra = true;
    nconst vector<int> v = <1, 2, 3, include_extra ? 99 : 0>;
    for (nconst int x : v) {
        sys.println(x);
    }
    return 0;
}
```

The conditional supplies one element of the literal.

### Branch type matching

```apollo
int main() {
    nconst int v = 5;
    nconst f64 r = v > 0 ? (v as f64) : 0.0;
    sys.println(r);
    return 0;
}
```

Both branches reach `f64`. The explicit cast on the integer branch satisfies the type requirement.

## Common mistakes

- **Mismatched branch types.** Both branches must agree. Convert explicitly if necessary.
- **Using as a statement.** A conditional expression must produce a value used somewhere. `cond ? a : b;` as a statement is rejected.
- **Side-effecting branches that should both run.** Only one branch evaluates. If both must run, use sequential statements.
- **Confusing with `if`/`else`.** `if` is a statement; the conditional is an expression. Pick based on whether you need a value.
- **Operator precedence surprises.** Wrap a conditional in parentheses if it appears next to other operators with similar precedence.

## See also

- `docs/language/control-flow/docs/if-statement.md` — the statement counterpart.
- `docs/language/expressions/docs/logical-operators.md` — `&&`, `||`, `!` for boolean composition.
- `docs/language/expressions/docs/comparison-operators.md` — producing the condition value.
- `docs/language/expressions/docs/cast-expression.md` — bridging branch types.
