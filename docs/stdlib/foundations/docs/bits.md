# `std bits`

## What it is

The `bits` module exports bit-level operations on `i32` values. The basic operators (`&`, `|`, `^`, `<<`, `>>`) are provided as named functions for readability; the more specialized operations (`clz`, `ctz`, `popcount`, `ffs`, rotations, byte swap) call native helpers backed by C++ runtime intrinsics under `@unsafe { inline::cpp { ... } }`.

This module makes bit-twiddling code self-documenting: `sys.popcount(mask)` reads better than open-coding a bit-counting loop.

## When you use it

- Setting, clearing, and testing flag bits.
- Counting set bits or trailing/leading zeros for compact data structures.
- Implementing fixed-point math, hashing primitives, or compact serialization.
- Implementing bit-rotation in hash and crypto routines.

## API surface

All functions live in `namespace sys` and take/return `i32`:

- Combiners: `bit_and(l, r)`, `bit_or(l, r)`, `bit_xor(l, r)`.
- Shifts: `shl(value, amount)`, `shr(value, amount)`.
- Predicates: `has_any(value, mask)`, `has_all(value, mask)`.
- Counts: `clz(value)`, `ctz(value)`, `popcount(value)`, `ffs(value)`.
- Rotations: `rotate_left(value, amount)`, `rotate_right(value, amount)`.
- Byte order: `bswap(value)`.

## Examples

### Combining flags

```apollo
extern std bits;

const i32 FLAG_READ  = 1;
const i32 FLAG_WRITE = 2;
const i32 FLAG_EXEC  = 4;

int main() {
    nconst i32 perms = sys.bit_or(FLAG_READ, FLAG_WRITE);
    if (sys.has_any(perms, FLAG_WRITE) == 1) {
        sys.println("writable");
    }
    if (sys.has_all(perms, FLAG_EXEC) == 0) {
        sys.println("not executable");
    }
    return 0;
}
```

Named functions read better than mixed `|`/`&` chains in code that traffics in flags.

### Counting bits

```apollo
extern std bits;

int main() {
    nconst i32 mask = 0xAA;          // 10101010
    sys.printf("bits set: %d\n", sys.popcount(mask));
    sys.printf("trailing zeros: %d\n", sys.ctz(mask));
    sys.printf("leading zeros: %d\n", sys.clz(mask));
    return 0;
}
```

### Find first set

```apollo
extern std bits;

int main() {
    nconst i32 value = 0x10;     // bit 4
    nconst i32 idx = sys.ffs(value);
    sys.printf("lowest set bit: %d\n", idx);
    return 0;
}
```

`ffs` returns a 1-based index of the lowest-set bit (0 if value is 0), matching the POSIX semantics.

### Rotations

```apollo
extern std bits;

int main() {
    nconst i32 value = 0x12345678;
    sys.printf("rol 8: %x\n", sys.rotate_left(value, 8));
    sys.printf("ror 8: %x\n", sys.rotate_right(value, 8));
    return 0;
}
```

Rotations don't lose bits; they wrap around.

### Byte swap

```apollo
extern std bits;

int main() {
    nconst i32 host = 0x11223344;
    nconst i32 network = sys.bswap(host);
    sys.printf("swapped: %x\n", network);
    return 0;
}
```

`bswap` reverses the four bytes of a 32-bit value; useful for network/host endianness conversion.

### Implementing a bitset accessor

```apollo
extern std bits;

i32 get_bit(i32 set, i32 index) {
    return sys.has_any(set, sys.shl(1, index));
}

void set_bit(nconst i32& set, i32 index) {
    *set = sys.bit_or(*set, sys.shl(1, index));
}

int main() {
    nconst i32 bits = 0;
    set_bit(&nconst bits, 3);
    set_bit(&nconst bits, 7);
    sys.printf("bit 3: %d\n", get_bit(bits, 3));
    sys.printf("bit 5: %d\n", get_bit(bits, 5));
    sys.printf("popcount: %d\n", sys.popcount(bits));
    return 0;
}
```

A miniature bitset built entirely from `std bits` functions.

## Common mistakes

- **Shifting by `>= 32`.** Undefined behavior on most targets. The module forwards to native intrinsics; behavior matches the platform.
- **Using `>>` on a signed negative value.** Apollo's `i32` is signed; right shift behavior on negatives is arithmetic (sign-extending). For logical shift, mask first or convert.
- **Treating `ffs(0)` as 1.** It returns 0 for the all-zero input — guard against this.
- **Confusing 0-based and 1-based indices.** `clz`/`ctz` are bit counts; `ffs` is a 1-based index. They are not interchangeable.
- **Calling these on `f32`/`f64`.** The bits module is `i32`-only. For float-bit reinterpretation use cast expressions or dedicated helpers.

## See also

- `docs/stdlib/foundations/docs/math.md` — arithmetic operations.
- `docs/language/expressions/docs/bitwise-operators.md` — language-level bitwise ops.
- `docs/stdlib/foundations/docs/core.md` — broader `sys.*` surface.
- `Apollo-Main/include/bits.apollo` — source.
