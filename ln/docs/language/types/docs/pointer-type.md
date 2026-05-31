# Pointer type

## What it is

A pointer type, written `T*`, is the type of a raw, unchecked pointer to a value of type `T`. Pointers are how Apollo programs reach into manually-managed memory: heap-allocated values, FFI buffers, hardware-mapped regions. They sit outside the borrow checker's safety guarantees and are intended for use through the allocator surface (`malloc`/`free`/`plcnew`) and inline foreign code.

For ordinary safe sharing, use references (`T&`). Pointers are the unsafe escape hatch.

## When you use it

You write a pointer type when:

- You allocate heap storage and need to refer to it.
- You receive a pointer from a C function via the FFI.
- You produce a pointer to pass to a C function via the FFI.
- You implement a low-level data structure that needs raw memory access.

## Syntax

```
pointerType : typeRef '*' ;
```

The `*` follows the inner type. Stacked pointers are allowed: `int**` is a pointer to a pointer.

## Semantics

A pointer is a raw memory address. It may be null. Dereferencing a null pointer is undefined behavior. The borrow checker does not track pointer lifetimes — that responsibility is on the programmer.

Pointer arithmetic is not part of the core language. The `core` and `buffer` stdlib modules expose explicit byte-offset operations when needed.

Pointers cross the FFI boundary without translation. A `T*` in Apollo is the same byte pattern as a `T*` in C.

## Examples

### Heap allocation and free

```apollo
int main() {
    nconst i32* slot = malloc<i32>();
    *slot = 42;
    sys.println(*slot);
    free(slot);
    return 0;
}
```

`malloc<i32>` returns an `i32*`. `*slot` reads/writes the heap value. `free` releases the storage.

### Pointer to a struct

```apollo
struct Sample { i32 value; };

int main() {
    nconst Sample* p = plcnew Sample(7);
    sys.println(p->value);          // -> dereferences and accesses
    free(p);
    return 0;
}
```

`plcnew` constructs a value on the heap and returns a pointer. `->` is the dereference-and-access operator for pointers.

### Pointer from FFI

```apollo
extern "C" {
    i8* getenv(i8* name);
}

extern std strings;

int main() {
    nconst i8* raw = getenv("HOME");
    if (raw == null) {
        sys.println("not set");
    } else {
        nconst str home = strings.from_cstr(raw);
        sys.println(home);
    }
    return 0;
}
```

`getenv` returns a raw C string pointer. The Apollo code checks for null before converting.

### Pointer to a memstruct for hardware

```apollo
memstruct DeviceRegisters {
    u32 control;
    u32 status;
    u32 data;
};

void poke(nconst DeviceRegisters* dev) {
    dev->control = 1;
    while (dev->status == 0) { }
    dev->data = 0xff;
}
```

The pointer addresses a memory-mapped device. The memstruct's fixed layout matches the hardware's register layout.

### Allocating an array

```apollo
extern std core;

int main() {
    nconst i32* buffer = core.alloc_array<i32>(16);
    for (nconst i := 0; i < 16; i = i + 1) {
        core.poke(buffer, i, i * i);
    }
    for (nconst i := 0; i < 16; i = i + 1) {
        sys.println(core.peek(buffer, i));
    }
    core.free_array(buffer);
    return 0;
}
```

A raw pointer plus explicit offset operations from `core` for indexed access. Prefer `vector<T>` for normal collection work.

### Pointer-to-pointer

```apollo
int main() {
    nconst i32* leaf = malloc<i32>();
    *leaf = 1;
    nconst i32** node = malloc<i32*>();
    *node = leaf;
    sys.println(**node);
    free(node);
    free(leaf);
    return 0;
}
```

Double dereference reaches the leaf value. Be careful with cleanup order.

## Common mistakes

- **Using a pointer where a reference would do.** References are safe; pointers are not. Default to references and reach for pointers only when you genuinely need the unsafety.
- **Forgetting to `free`.** Allocations not freed leak. Pair every `malloc`/`plcnew`/`alloc_array` with the matching free.
- **Dereferencing null.** Always check for null when the pointer's origin allows it.
- **Mixing `free` with `plcnew` improperly.** Use `delete` for `plcnew`-constructed objects when the type has a destructor; use `free` for `malloc`'d raw bytes.
- **Pointer arithmetic that escapes the original allocation.** The buffer's bounds are not tracked. Out-of-bounds access is undefined.

## See also

- `docs/language/types/docs/reference-type.md` — the safe alternative.
- `docs/language/memory-and-storage/docs/malloc.md` and `plcnew.md` — allocation forms.
- `docs/language/memory-and-storage/docs/allocators.md` — broader allocator picture.
- `docs/language/functions-and-interop/docs/inline-foreign-block.md` — FFI surface that uses pointers heavily.
