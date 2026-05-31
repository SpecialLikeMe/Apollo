# Arithmetic operators

## What they are

Arithmetic operators perform numeric computation on integer and floating-point values. Apollo's arithmetic surface is the standard set:

- `+` addition
- `-` subtraction and unary negation
- `*` multiplication
- `/` division
- `%` remainder

Operands must match types — no implicit mixed-type arithmetic. Integer division truncates toward zero. Integer arithmetic wraps on overflow by default; checked variants are available through the `core` module.

## When you use them

Constantly — counting, indexing, scaling, accumulating. These are the lowest-level numeric primitives in the language.

## Syntax

```
additive       : multiplicative (('+' | '-') multiplicative)* ;
multiplicative : unary (('*' | '/' | '%') unary)* ;
unary          : ('-' | '+') unary | postfix ;
```

`*`, `/`, `%` bind tighter than `+`, `-`. Use parentheses to override.

## Semantics

For integers:

- `+`, `-`, `*` wrap on overflow (two's-complement semantics).
- `/` truncates toward zero. Division by zero faults (in checked builds) or is undefined (in release).
- `%` is the remainder; the sign of the result matches the dividend.

For floats:

- All operations follow IEEE 754.
- `/` by zero produces `inf` or `nan` per the standard.
- `%` is not defined for floats; use `math.fmod` from the math module.

Mixing integer and float is rejected; use an explicit cast.

## Examples

### Integer addition and subtraction

```apollo
int main() {
    nconst i32 a = 7;
    nconst i32 b = 3;
    sys.println(a + b);   // 10
    sys.println(a - b);   // 4
    sys.println(-a);      // -7
    return 0;
}
```

### Multiplication and integer division

```apollo
int main() {
    nconst i32 a = 17;
    nconst i32 b = 4;
    sys.println(a * b);   // 68
    sys.println(a / b);   // 4 (truncated)
    sys.println(a % b);   // 1
    return 0;
}
```

### Floating-point arithmetic

```apollo
int main() {
    nconst f64 a = 1.5;
    nconst f64 b = 2.0;
    sys.println(a + b);   // 3.5
    sys.println(a * b);   // 3.0
    sys.println(a / b);   // 0.75
    return 0;
}
```

### Mixing requires a cast

```apollo
int main() {
    nconst i32 n = 7;
    nconst f64 r = (n as f64) / 2.0;
    sys.println(r);       // 3.5
    return 0;
}
```

Without the cast, `n / 2.0` is rejected because the operand types differ.

### Overflow wraps

```apollo
int main() {
    nconst i32 big = 2147483647;
    sys.println(big + 1);   // -2147483648 (wraps)
    return 0;
}
```

For checked arithmetic, use `core.add_checked(...)`.

### Operator precedence

```apollo
int main() {
    sys.println(2 + 3 * 4);       // 14 (multiplication first)
    sys.println((2 + 3) * 4);     // 20
    sys.println(10 - 4 - 2);      // 4 (left-associative)
    return 0;
}
```

## Common mistakes

- **Implicit mixed-type arithmetic.** Apollo rejects it. Cast one operand explicitly.
- **Integer-division surprise.** `1 / 2` is `0`, not `0.5`. Cast to float if you want fractional results.
- **Division by zero.** Always faults or is undefined; guard with a check if the divisor is variable.
- **Modulo with negative dividend.** The sign of the result matches the dividend in Apollo's spec, which may differ from some languages' floor-modulo.
- **Confusing precedence.** When in doubt, parenthesize.

## See also

- `docs/language/types/docs/primitive-types.md` — numeric types.
- `docs/stdlib/foundations/docs/core.md` — checked arithmetic.
- `docs/stdlib/foundations/docs/math.md` — floating-point helpers.
- `docs/language/expressions/docs/cast-expression.md` — explicit type conversions.
