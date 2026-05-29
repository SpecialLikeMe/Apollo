# Primitive types

## What they are

Primitive types are the built-in scalar types Apollo recognizes without any declaration. They cover signed and unsigned integers in several widths, floating point, boolean, and string. Primitives have fixed sizes and representations across every target Apollo runs on.

## When you use them

You use primitives directly for ordinary scalar values:

- Integers for counters, indices, IDs, sizes, byte values.
- Floats for measurements, ratios, geometry.
- `bool` for true/false conditions.
- `str` for textual data.

For ranges or compositions of primitives, use `vector<T>`, arrays, or shape types.

## The primitive set

```
Integers (signed):   i8, i16, i32, i64
Integers (unsigned): u8, u16, u32, u64
Floating point:      f32, f64
Boolean:             bool
String:              str
Aliases:             int (= i32)
Inferred:            ato       (placeholder; the type is filled at validation time)
Sentinel:            void      (only valid in return positions)
```

Every primitive is recognized at lex time. Their sizes are: `iN`/`uN` = N/8 bytes, `f32` = 4 bytes, `f64` = 8 bytes, `bool` = 1 byte, `str` = pointer + length (platform-fixed).

## Semantics

Primitives are value types. Assignment copies. Arithmetic on integers wraps on overflow by default (consistent with two's-complement semantics); the `core` stdlib provides checked variants.

Floats follow IEEE 754. Comparisons with NaN behave per the standard.

`bool` has exactly two values, `true` and `false`. There is no implicit conversion between bool and any integer type.

`str` is an immutable, length-prefixed UTF-8 sequence. Mutation operations go through `strings` and return new values.

## Examples

### Integer arithmetic

```apollo
int main() {
    nconst i32 a = 7;
    nconst i32 b = 3;
    sys.println(a + b);     // 10
    sys.println(a - b);     // 4
    sys.println(a * b);     // 21
    sys.println(a / b);     // 2 (integer division)
    sys.println(a % b);     // 1
    return 0;
}
```

### Unsigned vs signed

```apollo
int main() {
    nconst u8  byte = 255;
    nconst i8  small = -1;
    sys.printf("u8=%u i8=%d\n", byte, small);
    nconst u32 big = 4000000000;
    sys.printf("u32=%u\n", big);
    return 0;
}
```

`u8` covers `0..255`; `i8` covers `-128..127`. The compiler rejects an out-of-range literal at the source level.

### Floating point

```apollo
extern std math;

int main() {
    nconst f64 r = 2.0;
    nconst f64 area = math.pi * r * r;
    sys.println(area);
    return 0;
}
```

`f64` is the usual default for math work. Use `f32` when storage size matters and you can tolerate single-precision rounding.

### Bool

```apollo
int main() {
    nconst bool a = true;
    nconst bool b = false;
    sys.println(a && b);    // false
    sys.println(a || b);    // true
    sys.println(!a);        // false
    return 0;
}
```

`bool` participates in `&&`, `||`, `!`, and comparisons. There is no implicit numeric value.

### Strings

```apollo
extern std strings;

int main() {
    nconst str greeting = "hello";
    nconst str subject  = "world";
    sys.println(strings.concat(greeting, strings.concat(" ", subject)));
    sys.println(strings.length(greeting));
    sys.println(strings.byte_at(greeting, 0));
    return 0;
}
```

`str` operations live in the `strings` module. The literal `"hello"` produces a `str`.

### Mixing primitives in a struct

```apollo
struct Sample {
    i64 timestamp;
    f32 value;
    u8  flags;
    bool valid;
};

int main() {
    nconst Sample s = Sample(1700000000, 3.14, 0x01, true);
    sys.printf("t=%lld v=%f f=%u v=%d\n", s.timestamp, s.value, s.flags, s.valid);
    return 0;
}
```

Each field uses a primitive. The struct's lowered size is the sum of field sizes plus alignment padding (use `memstruct` for explicit layout).

## Common mistakes

- **Integer overflow assumptions.** Arithmetic wraps by default. Use the checked variants from `core` if you want overflow detection.
- **Float equality.** Floats rarely compare exactly equal after arithmetic. Compare with a tolerance.
- **Implicit bool/int conversion.** Apollo has none. Write `n != 0` instead of `n` when you want a bool from an int.
- **Mixing signed and unsigned.** Mixed arithmetic requires an explicit cast. The frontend rejects implicit cross-sign operations to avoid surprises.
- **Treating `str` as mutable.** Use `strings.concat` and friends; do not try to mutate a `str` in place.

## See also

- `docs/language/types/docs/type-reference.md` — the umbrella that admits primitives.
- `docs/stdlib/foundations/docs/core.md` — checked arithmetic and primitive helpers.
- `docs/stdlib/foundations/docs/math.md` — float math.
- `docs/stdlib/text/docs/strings.md` — string operations.
- `docs/language/expressions/docs/cast-expression.md` — explicit conversions between primitives.
