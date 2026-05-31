# Cast expression

## What it is

A cast expression converts a value from one type to another. Apollo requires explicit casts for any conversion that changes representation, sign, or width — there are no implicit numeric or pointer conversions.

The syntax is `expression as type`. The compiler verifies the conversion is permitted; for unsafe conversions (pointer casts, narrowing), the program acknowledges the risk by writing the cast.

## When you use it

- Converting between numeric widths: `i32 a = i64_value as i32;`
- Converting between signedness: `u8 b = i32_value as u8;`
- Bridging between pointer types in FFI code: `void_ptr as i32*`.
- Narrowing a borrowed interface to its underlying type (when supported).

## Syntax

```
castExpr : expression 'as' typeRef ;
```

The keyword `as` separates the source expression from the target type.

## Semantics

The cast is interpreted by the source and target types:

- **Integer to integer**: widening is value-preserving; narrowing may lose information. Sign conversions reinterpret the bit pattern.
- **Integer to floating**: rounds to the nearest representable float.
- **Floating to integer**: truncates toward zero. Behavior on overflow is implementation-defined; the `core` module exposes checked variants.
- **Float to float**: widening exact, narrowing rounds.
- **Pointer to pointer**: bit-cast; both pointer types must have compatible representations.
- **Bool to integer**: produces 0 or 1.
- **Integer to bool**: zero becomes `false`, non-zero becomes `true`.

Casts that the compiler considers impossible (e.g., struct to int) are rejected at validation time.

## Examples

### Widening integer

```apollo
int main() {
    nconst i16 small = 100;
    nconst i64 big = small as i64;
    sys.println(big);
    return 0;
}
```

Widening from `i16` to `i64` preserves the value.

### Narrowing integer

```apollo
int main() {
    nconst i32 wide = 1000;
    nconst i8 byte = wide as i8;
    sys.printf("%d -> %d\n", wide, byte);
    return 0;
}
```

`1000` does not fit in `i8`. The cast truncates the bit pattern; the result is whatever the lower 8 bits encode.

### Signedness change

```apollo
int main() {
    nconst i32 negative = -1;
    nconst u32 unsigned_view = negative as u32;
    sys.printf("%d as u32 = %u\n", negative, unsigned_view);
    return 0;
}
```

Reinterprets the bit pattern. `-1` as `u32` is the maximum unsigned value.

### Integer to float

```apollo
int main() {
    nconst i32 n = 7;
    nconst f64 r = n as f64;
    sys.println(r / 2.0);
    return 0;
}
```

Required to mix integers into floating-point arithmetic.

### Float to integer (truncate)

```apollo
int main() {
    nconst f64 r = 3.9;
    nconst i32 t = r as i32;
    sys.println(t);   // 3
    return 0;
}
```

Truncation toward zero; for rounding, use `math.round` from the math module before casting.

### Pointer cast for FFI

```apollo
int main() {
    nconst i32* slot = malloc<i32>();
    nconst u8* bytes = slot as u8*;
    for (nconst i := 0; i < 4; i = i + 1) {
        bytes[i] = i;
    }
    sys.println(*slot);
    free(slot);
    return 0;
}
```

A `i32*` reinterpreted as `u8*` exposes the underlying bytes. Useful when writing serialization or interoperating with byte-oriented APIs.

## Common mistakes

- **Assuming silent conversion.** Apollo has none — even `i32` to `i64` requires `as`.
- **Forgetting that narrowing loses bits.** A narrowing cast can change the value drastically. Validate the value first if it must round-trip.
- **Casting between unrelated pointer types without checking representation.** Bit-casting a pointer to a type with different alignment requirements may produce invalid pointers.
- **Casting a struct to an unrelated type.** Rejected.
- **Using `cast<T>(value)` syntax.** Apollo uses `value as T`, not `cast<T>`.

## See also

- `docs/language/types/docs/primitive-types.md` — primitive sizes and behavior.
- `docs/stdlib/foundations/docs/core.md` — checked numeric conversions.
- `docs/stdlib/foundations/docs/math.md` — rounding helpers.
- `docs/language/types/docs/pointer-type.md` — pointer interpretation.
