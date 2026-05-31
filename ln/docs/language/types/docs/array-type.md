# Array type

## What it is

An array type is a fixed-size or unsized sequence of elements of one type. Apollo has two forms: `T[N]` for a compile-time-fixed length and `T[]` for an unsized form used primarily in parameter declarations and as a view over heap-allocated buffers.

Arrays are the right choice when you need contiguous storage of a known type and you do not want the dynamic growth that `vector<T>` provides.

## When you use it

You reach for an array when:

- The size is known at compile time and never changes.
- You need contiguous storage with predictable layout.
- You want to receive a parameter of "any length" through the unsized form.
- You are wrapping a buffer and want indexed access.

For dynamic resizing, use `vector<T>` from `collections`.

## Syntax

```
arrayType
    : typeRef '[' INT ']'      // fixed size
    | typeRef '[' ']'          // unsized, parameter/buffer form
    ;
```

The size in the fixed form must be a compile-time constant integer.

## Semantics

A fixed-size array `T[N]` is a value type with N consecutive `T` elements. Its size is `sizeof(T) * N` (plus alignment as needed). Indexing `a[i]` returns the `i`-th element (zero-based). Out-of-bounds access is checked at the source level when the index is a compile-time constant; runtime checks depend on build configuration.

An unsized array `T[]` is a length-erased view. It cannot be stored as a value; it appears as a parameter type (`fn(int[] data)`) or as the result of a buffer view. The length must be supplied separately.

Arrays are value-typed in the fixed form. Assigning copies all elements. Borrowing produces an array reference (`T[N]&`), through which the array can be read or mutated.

Literal arrays use the composite-literal syntax: `<10, 20, 30, 40>` for a four-element value.

## Examples

### Fixed-size array

```apollo
int main() {
    nconst i32[4] quad = <10, 20, 30, 40>;
    for (nconst i := 0; i < 4; i = i + 1) {
        sys.println(quad[i]);
    }
    return 0;
}
```

`i32[4]` has exactly four elements. Indexing is zero-based.

### Multidimensional array

```apollo
int main() {
    nconst i32[3][3] grid = <
        <1, 2, 3>,
        <4, 5, 6>,
        <7, 8, 9>
    >;
    sys.println(grid[1][2]);
    return 0;
}
```

`i32[3][3]` is a 3-by-3 array. Each inner literal builds one row.

### Unsized array parameter

```apollo
int sum(nconst i32[]& data, i32 len) {
    nconst i32 total = 0;
    for (nconst i := 0; i < len; i = i + 1) {
        total = total + data[i];
    }
    return total;
}

int main() {
    nconst i32[5] values = <1, 2, 3, 4, 5>;
    sys.println(sum(&nconst values, 5));
    return 0;
}
```

The unsized parameter accepts any-length array; the length is passed alongside.

### Array borrow and mutation

```apollo
void zero_all(nconst i32[8]& slots) {
    for (nconst i := 0; i < 8; i = i + 1) {
        slots[i] = 0;
    }
}

int main() {
    nconst i32[8] buf = <1, 1, 1, 1, 1, 1, 1, 1>;
    zero_all(&nconst buf);
    for (nconst i := 0; i < 8; i = i + 1) {
        sys.println(buf[i]);
    }
    return 0;
}
```

Borrowing the array mutably lets the callee write through the borrow.

### Array of structs

```apollo
struct Sample { i32 value; bool ok; };

int main() {
    nconst Sample[3] samples = <
        Sample(10, true),
        Sample(20, false),
        Sample(30, true)
    >;
    for (nconst i := 0; i < 3; i = i + 1) {
        sys.printf("[%d] %d %d\n", i, samples[i].value, samples[i].ok);
    }
    return 0;
}
```

Each element is a struct; member access uses `.` after indexing.

### Array inside a memstruct

```apollo
memstruct Packet {
    u8 magic[4];
    u32 length;
    u8 payload[256];
};

int main() {
    nconst Packet p = Packet(
        <0xde, 0xad, 0xbe, 0xef>,
        128,
        <0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
         0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
         0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
         0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
         0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
         0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
         0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
         0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0>
    );
    sys.printf("magic %x%x%x%x len %u\n", p.magic[0], p.magic[1], p.magic[2], p.magic[3], p.length);
    return 0;
}
```

Memstructs commonly contain fixed-size arrays for headers, padding, and inline payloads.

## Common mistakes

- **Using a non-constant size in the fixed form.** `T[n]` where `n` is a runtime value is rejected. Use `vector<T>` or an allocator.
- **Out-of-bounds index.** A compile-time constant index outside the array bounds is rejected. Runtime indices fault per build configuration.
- **Assigning between arrays of different sizes.** `i32[4]` and `i32[5]` are distinct types; copies require the same size.
- **Returning a reference to a local array.** Borrow-checker rejected.
- **Treating an unsized `T[]` as storable.** It is a parameter/view-only form. To store, use a fixed-size array or a vector.

## See also

- `docs/language/types/docs/type-reference.md` — array types in the umbrella.
- `docs/stdlib/data/docs/collections.md` — vectors and other dynamic containers.
- `docs/stdlib/data/docs/buffer.md` — byte buffers and views.
- `docs/language/expressions/docs/composite-literal.md` — the `<...>` literal that builds array values.
