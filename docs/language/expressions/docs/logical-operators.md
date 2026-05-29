# Logical operators

## What they are

Logical operators combine boolean values:

- `&&` logical AND (short-circuit)
- `||` logical OR (short-circuit)
- `!`  logical NOT (unary)

Both `&&` and `||` short-circuit: the second operand is evaluated only if necessary. This is significant when the second operand has side effects or might fail.

## When you use them

- Combining multiple conditions: `if (x > 0 && x < 100)`.
- Guarding a potentially-faulting operation: `if (p != null && *p == 0)`.
- Selecting between fallbacks: `nconst bool ok = primary() || fallback();`.
- Inverting a condition: `if (!found)`.

## Syntax

```
logicalOr  : logicalAnd ('||' logicalAnd)* ;
logicalAnd : equality   ('&&' equality)* ;
unaryNot   : '!' unary  | postfix ;
```

`!` has higher precedence than `&&`, which has higher precedence than `||`. All three operate on `bool`.

## Semantics

`a && b`:
- Evaluate `a`.
- If `a` is false, the result is false without evaluating `b`.
- Otherwise, evaluate `b` and return its value.

`a || b`:
- Evaluate `a`.
- If `a` is true, the result is true without evaluating `b`.
- Otherwise, evaluate `b` and return its value.

`!a`:
- Evaluate `a`; return its boolean inverse.

Operands must be `bool`. There is no implicit coercion from integer or pointer types.

## Examples

### Combined conditions

```apollo
int main() {
    nconst int x = 50;
    if (x > 0 && x < 100) {
        sys.println("in range");
    }
    return 0;
}
```

Both conditions must hold.

### Short-circuit guards a null pointer

```apollo
int main() {
    nconst i32* p = null;
    if (p != null && *p == 0) {
        sys.println("zero");
    } else {
        sys.println("null or non-zero");
    }
    return 0;
}
```

`*p` is never evaluated when `p` is null because `&&` short-circuits.

### OR with fallback

```apollo
bool primary() { return false; }
bool fallback() { sys.println("fallback ran"); return true; }

int main() {
    nconst bool ok = primary() || fallback();
    sys.println(ok);
    return 0;
}
```

`fallback()` runs only because `primary()` returned false.

### Negation

```apollo
int main() {
    nconst bool ready = false;
    if (!ready) {
        sys.println("waiting");
    }
    return 0;
}
```

`!ready` inverts the bool.

### Combining negation with ordering

```apollo
int main() {
    nconst int v = 42;
    if (!(v < 0 || v > 100)) {
        sys.println("valid");
    }
    return 0;
}
```

Parenthesization makes the grouping explicit.

### De Morgan transformation

```apollo
int main() {
    nconst bool a = true;
    nconst bool b = false;
    sys.println(!(a && b));         // !a || !b
    sys.println(!(a || b));         // !a && !b
    return 0;
}
```

De Morgan's identities hold; the compiler does not auto-simplify but the logic is equivalent.

## Common mistakes

- **Using `&` instead of `&&`.** `&` is bitwise AND on integers; not the same.
- **Truthy values.** Apollo does not treat integers or pointers as bools. Compare explicitly.
- **Forgetting short-circuit.** Side effects in the second operand may not run; if you depend on them, evaluate separately.
- **Precedence mistakes.** Mix of `&&`, `||`, `==` can be confusing; parenthesize when in doubt.
- **Double negation overuse.** `!!x` is not idiomatic to coerce to bool — it's just `x` since `x` is already bool.

## See also

- `docs/language/expressions/docs/comparison-operators.md` — producing bool values.
- `docs/language/expressions/docs/bitwise-operators.md` — `&`, `|`, `^` on integers.
- `docs/language/control-flow/docs/if-statement.md`, `while.md` — typical consumers.
- `docs/language/expressions/docs/conditional-expression.md` — `cond ? a : b`.
