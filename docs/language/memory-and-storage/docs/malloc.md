# Malloc / free

## What it is

`malloc<T>()` allocates a single uninitialized slot of type `T` on the heap and returns a `T*` pointing at it. `free(ptr)` releases the slot. Together they are the most basic allocation surface in Apollo — direct, untyped (beyond `T`'s size), and unmanaged.

Use `malloc`/`free` when you want raw storage you will initialize yourself. For constructed values, use `plcnew`/`delete`.

## When you use it

- Allocating a slot whose contents you will write directly (struct/memstruct fields, primitive value).
- Implementing a low-level data structure that needs control over construction.
- Producing memory to hand to a C function via the FFI.

## Syntax

```
'malloc' '<' typeRef '>' '(' ')'
'free' '(' pointerExpr ')' ';'
```

`malloc` takes no value arguments — only the type parameter. `free` takes the pointer to release.

## Semantics

`malloc<T>()` allocates `sizeof(T)` bytes aligned for `T`. The returned pointer is non-null on success; the program aborts on out-of-memory by default. The pointed-to memory is uninitialized — reading before writing is undefined.

`free(ptr)` returns the slot to the allocator. After `free`, the pointer is invalid; any use is undefined. Double-free is undefined.

`malloc` does not run constructors. Use `plcnew` if `T` has constructor logic.

## Examples

### Single integer slot

```apollo
int main() {
    nconst i32* slot = malloc<i32>();
    *slot = 42;
    sys.println(*slot);
    free(slot);
    return 0;
}
```

Allocate, write, read, free. The simplest possible use.

### Struct on the heap

```apollo
struct Point { i32 x; i32 y; };

int main() {
    nconst Point* p = malloc<Point>();
    p->x = 3;
    p->y = 4;
    sys.printf("(%d, %d)\n", p->x, p->y);
    free(p);
    return 0;
}
```

Allocate the struct, initialize fields through `->`, free. Note no constructor runs — fields are uninitialized until written.

### Memstruct for FFI

```apollo
memstruct sockaddr_in #[packed] {
    u16 sin_family;
    u16 sin_port;
    u32 sin_addr;
    u8  sin_zero[8];
};

int main() {
    nconst sockaddr_in* addr = malloc<sockaddr_in>();
    addr->sin_family = 2;
    addr->sin_port = 0x5000;
    addr->sin_addr = 0x0100007f;
    sys.printf("ready: port=%u\n", addr->sin_port);
    free(addr);
    return 0;
}
```

A memstruct allocated for use with a C API. The layout is bit-compatible.

### Pointer passed to a function

```apollo
void zero(nconst i32* slot) {
    *slot = 0;
}

int main() {
    nconst i32* p = malloc<i32>();
    *p = 99;
    zero(p);
    sys.println(*p);
    free(p);
    return 0;
}
```

A pointer parameter accepts the heap address; the function writes through it.

### Out-of-memory guard with default behavior

```apollo
int main() {
    // The default allocator aborts on OOM. Programs that need to recover
    // should use the allocators module's checked variants.
    nconst i32* slot = malloc<i32>();
    *slot = 0;
    free(slot);
    return 0;
}
```

The default `malloc<T>()` does not return null on failure — it aborts. To recover from out-of-memory, use `allocators.try_malloc<T>()` (from the `allocators` module), which returns a result.

### Reusing a slot

```apollo
int main() {
    nconst i32* slot = malloc<i32>();
    for (nconst i := 0; i < 5; i = i + 1) {
        *slot = i * i;
        sys.println(*slot);
    }
    free(slot);
    return 0;
}
```

One allocation, many writes. The slot lives until `free` releases it.

## Common mistakes

- **Reading before writing.** Uninitialized memory contains garbage. Always write before reading.
- **Forgetting to free.** Leaks accumulate.
- **Freeing twice.** Undefined behavior.
- **Mixing with `delete`.** `delete` belongs with `plcnew`. Use `free` for `malloc`-allocated pointers.
- **Storing a stack pointer in a heap slot and freeing the wrong one.** Be deliberate about which pointer owns the storage.

## See also

- `docs/language/memory-and-storage/docs/plcnew.md` — construction + allocation.
- `docs/language/memory-and-storage/docs/allocators.md` — the full allocator picture.
- `docs/language/types/docs/pointer-type.md` — pointer type.
- `docs/stdlib/foundations/docs/allocators.md` — checked allocation and custom allocators.
