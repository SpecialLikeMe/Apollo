# Numeric literals — implementation

## Grammar surface

```antlr
INT_LIT
    : '0x' HexDigit ('_' | HexDigit)*
    | '0b' BinDigit ('_' | BinDigit)*
    | '0o' OctDigit ('_' | OctDigit)*
    | Digit ('_' | Digit)*
    ;

FLOAT_LIT
    : Digit ('_' | Digit)* '.' Digit ('_' | Digit)* Exponent?
    | Digit ('_' | Digit)* Exponent
    ;

Exponent : ('e' | 'E') ('+' | '-')? Digit+ ;
```

## Lexer behavior

The lexer:

1. Strips underscores during numeric parsing.
2. Parses the residual string per the base (hex, binary, octal, decimal).
3. Stores the parsed value as a 64-bit integer or `f64`, plus a tag indicating the source form (for diagnostics).

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Determines the destination type from context (default `i32` for integer literals, `f64` for float literals, when no context is available).
2. Checks the literal value fits the destination type's range.
3. Sets the expression's type and stores the validated value.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

- Integer literals lower to LLVM `ConstantInt` of the destination width.
- Float literals lower to LLVM `ConstantFP` of the destination width (with implicit rounding to single precision when the destination is `f32`).

## Runtime support

None.

## Edges and gotchas

- The unary `-` is a separate expression, not part of the literal. This affects representability of the most-negative integer values; use casts or constants from `core` as needed.
- Underscores are valid only between digits. The lexer rejects leading, trailing, or consecutive underscores in the digit body.
- Float literals always carry an explicit decimal or exponent; integer-only literals do not implicitly become floats. Implicit integer-to-float conversion is rejected.
- Octal literals require the `0o` prefix; `0` followed by digits is *not* interpreted as octal.

## Source of truth

- Grammar / lexer: `Apollo-Main/compiler/compilerv1.g4` (`INT_LIT`, `FLOAT_LIT`)
- Frontend: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
