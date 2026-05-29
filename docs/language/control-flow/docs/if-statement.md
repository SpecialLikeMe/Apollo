# If statement

## What it is

The `if` statement is Apollo's primary conditional branching construct. It evaluates a boolean condition and runs one of two brace-delimited blocks depending on the result. The `else` branch is optional, and `else` may chain with another `if` to form an `else if` ladder.

`if` is a statement, not an expression. It does not produce a value. When you need a value-producing branch, use the conditional expression instead.

## When you use it

You write an `if` whenever your program's behavior depends on a runtime boolean. Typical situations:

- Guarding work behind a precondition.
- Choosing between two implementations based on configuration.
- Short-circuiting out of a function early when an invariant fails.
- Walking a switchable shape with two or three discrete cases.

When the number of cases grows past three or four discrete values, switch to a `switch` statement. When the cases are pattern-matching on a sum-type or shape, the matching forms are clearer than chained `if`s.

## Syntax

```
'if' '(' expression ')' block
('else' 'if' '(' expression ')' block)*
('else' block)?
```

Both the condition and the body are required for the leading `if`. The condition expression must produce a boolean value. The body is always a brace-delimited block — there is no single-statement form.

`else if` is exactly equivalent to `else { if ... }`. The compiler accepts both shapes interchangeably.

## Semantics

The condition is evaluated first. If the result is `true`, the body block runs. If the result is `false`, control proceeds to the next `else if` condition or the `else` block, in order. At most one block in the chain runs per execution.

Each block introduces a new scope. Bindings declared inside an `if` body are not visible after the `if` completes. This is the standard Apollo block-scoping rule and applies uniformly.

The condition's evaluation order matters when the condition includes function calls or other side effects. Apollo evaluates strictly left to right, and the short-circuit operators `&&` and `||` skip evaluation of the right operand when the left already determines the result.

`if` does not allow falling through to the next branch. Each block is independent. There is no implicit `break` or `fallthrough` notion — the chain of conditions stops at the first one that matches.

## Examples

### A simple guard

```apollo
int main() {
    nconst int balance = 100;
    if (balance < 0) {
        sys.println("overdrawn");
        return 1;
    }
    sys.println("ok");
    return 0;
}
```

The body runs only when the condition is true. If the condition is false, the body is skipped entirely and execution continues with the next statement after the `if`.

### An `if`/`else` pair

```apollo
str classify(int n) {
    if (n == 0) {
        return "zero";
    } else {
        return "nonzero";
    }
}

int main() {
    sys.println(classify(0));
    sys.println(classify(5));
    return 0;
}
```

Exactly one of the two branches runs. Both branches end with `return`, so the function's return-on-every-path requirement is satisfied.

### An `else if` ladder

```apollo
str sign(int n) {
    if (n > 0) {
        return "positive";
    } else if (n < 0) {
        return "negative";
    } else {
        return "zero";
    }
}

int main() {
    sys.println(sign(-3));
    sys.println(sign(0));
    sys.println(sign(7));
    return 0;
}
```

Conditions are tested top to bottom. The first match wins, and no later condition is evaluated.

### Short-circuit conditions

```apollo
bool has_data(nconst vector<int>& items, int index) {
    if (index >= 0 && index < collections.vector.length(items)) {
        return true;
    }
    return false;
}

int main() {
    nconst vector<int> v = <10, 20, 30>;
    sys.println(has_data(&nconst v, 1));
    sys.println(has_data(&nconst v, -1));
    sys.println(has_data(&nconst v, 99));
    return 0;
}
```

The `&&` short-circuits: when `index >= 0` is false, the bounds-check call is skipped, avoiding work and any side effects in the right operand.

### Nested `if`

```apollo
int main() {
    nconst int hour = 14;
    nconst bool is_weekend = false;

    if (is_weekend) {
        if (hour < 12) {
            sys.println("weekend morning");
        } else {
            sys.println("weekend afternoon");
        }
    } else {
        if (hour < 9 || hour > 17) {
            sys.println("weekday off-hours");
        } else {
            sys.println("weekday work hours");
        }
    }
    return 0;
}
```

`if` statements nest freely. Each inner block has its own scope and can declare its own bindings without colliding with outer names.

### Early-exit pattern

```apollo
int divide(int top, int bottom) {
    if (bottom == 0) {
        sys.println("cannot divide by zero");
        return 0;
    }
    return top / bottom;
}

int main() {
    sys.println(divide(20, 4));
    sys.println(divide(7, 0));
    return 0;
}
```

The early-`return`-from-the-guard pattern keeps the success path at minimum nesting.

## Common mistakes

- **Forgetting the parentheses.** `if cond { ... }` is rejected — the condition must be parenthesized.
- **Forgetting the braces.** `if (cond) statement;` is rejected — the body must be a brace block, even when it holds one statement.
- **Treating `if` as an expression.** `int x = if (cond) 1 else 2;` is rejected. Use the conditional expression `cond ? 1 : 2` for value-producing branching.
- **Non-boolean condition.** `if (n) { ... }` for an integer `n` is rejected. Write `if (n != 0) { ... }` explicitly.
- **Assuming `else` attaches to the wrong `if`.** When nesting `if` inside `if`, the brace requirement removes the dangling-`else` problem — `else` always pairs with the most recent open `if`-block.

## See also

- `docs/language/control-flow/docs/while.md` — looping on a condition.
- `docs/language/control-flow/docs/switch.md` — branching on many discrete cases.
- `docs/language/expressions/docs/conditional-expression.md` — the value-producing `cond ? a : b`.
- `docs/language/control-flow/docs/return.md` — early exits used inside guards.
