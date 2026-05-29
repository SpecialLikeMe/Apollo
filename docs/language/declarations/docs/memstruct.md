# Memstruct declaration

## What it is

A `memstruct` is a struct with explicit memory layout. Where a plain struct lets the compiler choose alignment and field order to suit the target, a memstruct fixes both. The fields appear in source order, no padding is inserted unless you ask for it, and the resulting type is suitable for FFI, memory-mapped I/O, network protocols, and anywhere else the bytes themselves carry meaning.

Memstructs are how Apollo programs talk to C structs, binary file formats, hardware registers, and the platform's syscall surfaces. They are not the right tool for ordinary data modelling — that's what `struct` and `class` are for.

## When you use it

You reach for a memstruct when:

- You are exchanging data with C or another language that has a documented struct layout.
- You are parsing or emitting a binary format and the byte layout is part of the spec.
- You are reading hardware registers or memory-mapped device memory.
- You need a type whose `sizeof` and field offsets are predictable across builds.

If none of those apply, use a `struct` and let the compiler decide.

## Syntax

```
'memstruct' ID memstructLayoutAttr? '{'
    (memstructField)*
'}' ';'?

memstructLayoutAttr : '#[' ('packed' | 'align' '(' INT ')') ']' ;
memstructField      : mutability? typeRef ID ('@' INT)? ';' ;
```

The optional `#[packed]` attribute removes all padding. The optional `#[align(N)]` attribute fixes the overall alignment to `N` bytes. A field may carry an `@offset` suffix to force its position; the compiler then verifies the offset is consistent with the field's type and the layout rules.

## Semantics

A memstruct declares a value type with a deterministic byte layout. Field order in source is field order in memory. Without `#[packed]`, fields receive natural alignment for their lowered type, and padding is inserted between fields when needed. With `#[packed]`, no padding is inserted; misaligned access goes through the runtime's safe-load helpers.

Construction looks like any other aggregate: `Name(arg, arg, ...)`. Reading and writing fields uses `.` access, the same as a struct.

Memstructs interoperate with C struct types declared in inline foreign blocks. A memstruct with the same field types and layout as a C struct is bit-compatible and can be passed across the FFI boundary by value or by pointer.

The borrow checker treats memstructs the same as plain structs. The only differences are layout determinism and the additional `@offset`/`#[packed]`/`#[align]` controls.

## Examples

### A POSIX-style timespec

```apollo
memstruct Timespec {
    i64 tv_sec;
    i64 tv_nsec;
};

int main() {
    nconst Timespec ts = Timespec(1700000000, 500000);
    sys.printf("%lld.%lld\n", ts.tv_sec, ts.tv_nsec);
    return 0;
}
```

Two `i64` fields with natural alignment. The layout matches the POSIX `struct timespec` on a 64-bit platform.

### A packed network header

```apollo
memstruct EthernetHeader #[packed] {
    u8 dst_mac[6];
    u8 src_mac[6];
    u16 ethertype;
};

int main() {
    nconst EthernetHeader h = EthernetHeader(
        <0x00, 0x11, 0x22, 0x33, 0x44, 0x55>,
        <0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff>,
        0x0800
    );
    sys.printf("ethertype=%x\n", h.ethertype);
    return 0;
}
```

`#[packed]` eliminates the alignment padding that would otherwise appear between the 6-byte MAC fields and the 2-byte ethertype.

### Forcing field offsets

```apollo
memstruct DeviceRegisters {
    u32 control @ 0x00;
    u32 status  @ 0x10;
    u32 data    @ 0x20;
};
```

The `@` suffix pins each field at the declared offset. The compiler verifies the resulting layout is consistent with the field types and reserves the bytes in between as implicit padding.

### Interoperating with a C struct

```apollo
memstruct sockaddr_in #[packed] {
    u16 sin_family;
    u16 sin_port;
    u32 sin_addr;
    u8  sin_zero[8];
};

extern "C" {
    int bind(int sockfd, sockaddr_in* addr, u32 addrlen);
}

int main() {
    nconst sockaddr_in addr = sockaddr_in(2, 0x5000, 0x0100007f, <0,0,0,0,0,0,0,0>);
    nconst int rc = bind(3, &nconst addr, 16);
    sys.println(rc);
    return 0;
}
```

The memstruct's layout matches the C `struct sockaddr_in`, so passing a pointer to it across the FFI boundary works without translation.

### A memstruct used as a buffer view

```apollo
memstruct PixelRGBA {
    u8 r;
    u8 g;
    u8 b;
    u8 a;
};

extern std buffer;

int main() {
    nconst buffer<u8> raw = buffer.create<u8>(4);
    buffer.write_u8(raw, 0, 255);
    buffer.write_u8(raw, 1, 128);
    buffer.write_u8(raw, 2, 0);
    buffer.write_u8(raw, 3, 200);

    nconst PixelRGBA pixel = buffer.view<PixelRGBA>(raw, 0);
    sys.printf("r=%d g=%d b=%d a=%d\n", pixel.r, pixel.g, pixel.b, pixel.a);
    return 0;
}
```

`buffer.view<T>` reinterprets a byte buffer as a memstruct. Because the memstruct's layout is fixed, this view is well-defined.

### Aligning to a cache line

```apollo
memstruct CacheLine #[align(64)] {
    u64 counter;
    u64 generation;
};
```

`#[align(64)]` raises the type's alignment to 64 bytes, which is useful for avoiding false sharing on cache-coherent multicore CPUs.

## Common mistakes

- **Using a memstruct for ordinary data.** Memstructs trade flexibility for layout determinism. Plain structs are more portable and slightly faster on some targets.
- **Mixing `#[packed]` with platform-aligned access.** A packed misaligned field may require the runtime's safe-load helper on architectures that fault on misaligned reads. The compiler emits the safe form when necessary.
- **Inconsistent `@offset` directives.** If two fields' explicit offsets overlap, the compiler rejects the declaration.
- **Assuming layout equality across architectures.** `i64` is 8 bytes everywhere Apollo runs today, but `usize`-equivalent types vary. Fix types explicitly (`u32`, `i64`) in FFI contexts.
- **Borrowing a packed field by reference.** A packed misaligned field cannot be borrowed directly; copy the field into a local and borrow the local.

## See also

- `docs/language/declarations/docs/struct.md` — the natural-layout sibling.
- `docs/language/functions-and-interop/docs/inline-foreign-block.md` — declaring matching C types.
- `docs/stdlib/data/docs/buffer.md` — byte buffers and memstruct views.
- `docs/language/directives/docs/attribute-block.md` — the broader attribute mechanism.
