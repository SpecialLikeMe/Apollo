# Numeric literals

## What they are

A numeric literal is a sequence of digits (with optional prefix, sign, decimal point, exponent, or suffix) that evaluates to an integer or floating-point value. Apollo's lexer accepts:

- Decimal integers: `42`, `1000000`.
- Hex integers: `0xff`, `0xDEADBEEF`.
- Binary integers: `0b1010`, `0b1111_0000`.
- Octal integers: `0o755`.
- Floating-point: `3.14`, `2.5e-3`, `1.0e10`.
- Underscores as visual separators: `1_000_000`, `0xff_00_ff`.

The literal's type is inferred from the destination context (assignment target, function parameter) or defaults to `i32` for integer literals and `f64` for floating-point literals.

## When you use them

Constantly. Every constant value in source is a literal.

## Syntax

```
INT_LIT
    : '0x' HexDigit ('_' | HexDigit)*
    | '0b' BinDigit ('_' | BinDigit)*
    | '0o' OctDigit ('_' | OctDigit)*
    | Digit ('_' | Digit)*
    ;

FLOAT_LIT
    : Digit ('_' | Digit)* '.' Digit ('_' | Digit)* (Exponent)?
    | Digit ('_' | Digit)* Exponent
    ;

Exponent : ('e' | 'E') ('+' | '-')? Digit+ ;
```

## Semantics

A literal is parsed into its numeric value during lexing. The value is then matched against the destination type:

- For integer literals, the destination type must be an integer that fits the value. Out-of-range literals are rejected.
- For floating literals, the destination type must be `f32` or `f64`.
- Without a destination cue, integer literals default to `i32` and floats to `f64`.

Underscores in literals are purely visual and do not affect the value.

The unary `-` operator is not part of the literal — it is a separate negation expression. This matters for the lowest-representable `i32` value (`-2147483648` is parsed as `-` applied to `2147483648`, which does not fit `i32` directly; use a cast or the explicit `i32` minimum constant from `core`).

## Examples

### Decimal integer

```apollo
int main() {
    nconst int x = 42;
    nconst i64 big = 1_000_000_000_000;
    sys.println(x);
    sys.println(big);
    return 0;
}
```

Underscores group digits for readability.

### Hex and binary

```apollo
int main() {
    nconst u32 color = 0xff_00_aa;
    nconst u8 mask = 0b1111_0000;
    sys.printf("color=0x%x mask=0x%x\n", color, mask);
    return 0;
}
```

Useful for flag values and bit-level work.

### Octal for file modes

```apollo
int main() {
    nconst u32 mode = 0o755;        // rwxr-xr-x
    sys.printf("mode=0o%o\n", mode);
    return 0;
}
```

Octal is mostly useful for Unix file permissions.

### Floating-point

```apollo
int main() {
    nconst f64 pi = 3.141592653589793;
    nconst f32 r  = 1.5;
    nconst f64 e  = 2.5e-3;
    sys.println(pi);
    sys.println(r);
    sys.println(e);
    return 0;
}
```

`e` notation handles very large or very small values.

### Width-targeted literal

```apollo
int main() {
    nconst i8  small = 100;
    nconst i64 huge  = 9_000_000_000_000;
    sys.println(small);
    sys.println(huge);
    return 0;
}
```

The destination width determines whether the literal fits; the frontend rejects out-of-range integers.

### Cast for explicit width

```apollo
int main() {
    nconst i64 reasonable = 1000 as i64;
    sys.println(reasonable);
    return 0;
}
```

`1000` defaults to `i32`; the cast widens to `i64`. With a typed destination, the cast is unnecessary.

## Common mistakes

- **Out-of-range literal.** A literal too large for its destination is rejected at validation time.
- **Forgetting the prefix.** `0xff` is hex 255; `xff` is an identifier.
- **Decimal point only.** `5.` is rejected; write `5.0`.
- **Leading zeros on decimals.** Apollo does not interpret `0123` as octal; octal requires `0o`.
- **Underscore positions.** Underscores must be between digits, not at the start or end.

## See also

- `docs/language/types/docs/primitive-types.md` — numeric types and ranges.
- `docs/language/expressions/docs/cast-expression.md` — widening or narrowing.
- `docs/stdlib/foundations/docs/core.md` — typed numeric constants.
- `docs/language/expressions/docs/arithmetic-operators.md` — operations on numeric values.
