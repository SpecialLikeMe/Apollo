# Bitwise operators

## What they are

Bitwise operators manipulate the individual bits of integer values:

- `&` bitwise AND
- `|` bitwise OR
- `^` bitwise XOR
- `~` bitwise NOT (unary)
- `<<` left shift
- `>>` right shift (arithmetic for signed, logical for unsigned)

Compound assignment forms (`&=`, `|=`, `^=`, `<<=`, `>>=`) read-modify-write the place.

## When you use them

- Flag manipulation: setting, clearing, testing bits in a bitmask.
- Packed encoding/decoding: extracting fields from a packed integer.
- Hashing and checksums.
- Hardware register access (memstruct fields representing registers).
- Encryption and low-level data work.

## Syntax

```
bitwiseOr  : bitwiseXor ('|' bitwiseXor)* ;
bitwiseXor : bitwiseAnd ('^' bitwiseAnd)* ;
bitwiseAnd : shift      ('&' shift)* ;
shift      : additive   (('<<' | '>>') additive)* ;
unaryNot   : '~' unary | postfix ;
```

Precedence (lowest to highest among bitwise): `|`, `^`, `&`, `<<`/`>>`, unary `~`.

## Semantics

All operands must be integer types and of the same type. The result type matches the operand type.

- `&`, `|`, `^` perform the operation bit-by-bit.
- `~` inverts every bit.
- `<<` shifts left, filling with zero bits.
- `>>` on a signed type performs an arithmetic shift (fills with the sign bit). On an unsigned type, it performs a logical shift (fills with zero).
- Shifts by an amount equal to or exceeding the operand's bit width are undefined.

## Examples

### Setting and clearing a flag

```apollo
int main() {
    nconst u32 flags = 0;
    nconst u32 ENABLED = 0x01;
    nconst u32 VERBOSE = 0x02;

    flags = flags | ENABLED;            // set ENABLED
    flags = flags | VERBOSE;            // set VERBOSE
    sys.printf("after set: 0x%x\n", flags);

    flags = flags & ~ENABLED;           // clear ENABLED
    sys.printf("after clear: 0x%x\n", flags);
    return 0;
}
```

`|` sets bits; `&` with the inverse clears them.

### Testing a bit

```apollo
int main() {
    nconst u32 flags = 0x05;
    nconst u32 BIT0 = 0x01;
    nconst u32 BIT2 = 0x04;

    if ((flags & BIT0) != 0) {
        sys.println("bit 0 is set");
    }
    if ((flags & BIT2) != 0) {
        sys.println("bit 2 is set");
    }
    return 0;
}
```

`flags & MASK` extracts bits; compare to zero to test.

### Packing fields

```apollo
int main() {
    nconst u8 r = 0xff;
    nconst u8 g = 0x80;
    nconst u8 b = 0x40;
    nconst u32 packed = ((r as u32) << 16) | ((g as u32) << 8) | (b as u32);
    sys.printf("0x%x\n", packed);
    return 0;
}
```

Shifts and ORs pack three bytes into a 32-bit value.

### Unpacking fields

```apollo
int main() {
    nconst u32 packed = 0xff8040;
    nconst u8 r = ((packed >> 16) & 0xff) as u8;
    nconst u8 g = ((packed >>  8) & 0xff) as u8;
    nconst u8 b = ( packed        & 0xff) as u8;
    sys.printf("r=%u g=%u b=%u\n", r, g, b);
    return 0;
}
```

Shift to align the field, mask to isolate it.

### XOR toggle

```apollo
int main() {
    nconst u32 flags = 0xf0;
    flags = flags ^ 0xf0;       // toggle high nibble off
    sys.printf("%x\n", flags);
    flags = flags ^ 0xf0;       // toggle back on
    sys.printf("%x\n", flags);
    return 0;
}
```

XOR with a mask toggles the masked bits.

### Right shift sign behavior

```apollo
int main() {
    nconst i32 signed_val = -8;
    nconst u32 unsigned_val = 0xfffffff8;
    sys.println(signed_val >> 1);       // -4 (arithmetic shift)
    sys.printf("%x\n", unsigned_val >> 1);  // 0x7ffffffc (logical shift)
    return 0;
}
```

Signed `>>` preserves sign; unsigned `>>` fills with zero.

## Common mistakes

- **Using `&&` for bitwise AND.** `&&` is logical; `&` is bitwise.
- **Shift by too much.** A shift of 32 on an `i32` is undefined.
- **Operator precedence with comparison.** `(flags & MASK) != 0` requires parentheses because `==` and `!=` bind tighter than `&`.
- **Mixing signed/unsigned without cast.** The frontend rejects.
- **Assuming `~` on a smaller type extends to int.** `~u8(0)` is `u8(0xff)`, not `i32(-1)`. Cast if you need a wider result.

## See also

- `docs/language/types/docs/primitive-types.md` — integer types.
- `docs/stdlib/foundations/docs/bits.md` — higher-level bit operations.
- `docs/language/expressions/docs/logical-operators.md` — boolean counterparts.
- `docs/language/expressions/docs/assignment.md` — compound forms.
