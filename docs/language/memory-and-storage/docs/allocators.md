# Allocators

## What they are

Allocators are the surface Apollo programs use to manage memory outside the stack. They cover heap allocation for raw values (`malloc`/`free`), constructed values (`plcnew`/`delete`), arrays (`core.alloc_array`/`core.free_array`), and custom-arena work through the `allocators` stdlib module.

Apollo's default allocator is the system malloc. Custom allocators (arena, pool, slab) live behind the `allocators` module surface and are used when you want explicit control over allocation locality, lifetimes, or fragmentation.

## When you use them

Reach for an allocator when:

- A value must outlive the stack frame that creates it.
- A value's size is not known at compile time.
- You need many small allocations grouped under a single freeable arena.
- You are working with FFI surfaces that expect heap memory.

For most ordinary work, prefer values on the stack and let `vector<T>`, `map`, and friends handle heap details internally.

## Syntax

```
'malloc' '<' typeRef '>' '(' ')'                      // raw heap slot
'free' '(' pointerExpr ')'                            // release a raw slot
'plcnew' typeRef '(' callArgs? ')'                    // heap-construct
'delete' pointerExpr                                  // destruct + release

// from the allocators module:
allocators.arena.create()
allocators.arena.alloc(arena, sizeBytes)
allocators.arena.free(arena)
```

## Semantics

`malloc<T>()` allocates `sizeof(T)` bytes of uninitialized memory and returns a `T*`. The contents are undefined until written. `free(ptr)` releases the allocation.

`plcnew T(args...)` allocates and constructs a `T` on the heap, returning a `T*`. `delete ptr` runs `T`'s destructor (if any) and releases the storage.

`allocators.arena` exposes an arena allocator: allocations within the arena are released en masse when the arena is freed. Useful for transient work where individual frees would be tedious.

The borrow checker does not track raw pointers. Lifetime and ownership of heap allocations are the programmer's responsibility.

## Examples

### Raw allocation with malloc

```apollo
int main() {
    nconst i32* slot = malloc<i32>();
    *slot = 42;
    sys.println(*slot);
    free(slot);
    return 0;
}
```

`malloc<i32>` returns a pointer; `*slot` reads/writes the value; `free` releases.

### Constructed allocation with plcnew

```apollo
class Counter {
    public:
    nconst i32 value;
    void bump() { self.value = self.value + 1; }
};

int main() {
    nconst Counter* c = plcnew Counter(0);
    c->bump();
    c->bump();
    sys.println(c->value);
    delete c;
    return 0;
}
```

`plcnew Counter(0)` constructs the object on the heap. `delete c` releases it (plus runs any destructor).

### Heap-allocated array

```apollo
extern std core;

int main() {
    nconst i32* buf = core.alloc_array<i32>(8);
    for (nconst i := 0; i < 8; i = i + 1) {
        core.poke(buf, i, i * i);
    }
    for (nconst i := 0; i < 8; i = i + 1) {
        sys.println(core.peek(buf, i));
    }
    core.free_array(buf);
    return 0;
}
```

`core.alloc_array<T>(n)` returns a pointer to an n-element array. Indexed access goes through `core.peek`/`core.poke`.

### Arena allocator

```apollo
extern std allocators;

int main() {
    nconst allocators.arena a = allocators.arena.create();
    nconst i32* x = allocators.arena.alloc<i32>(a);
    nconst i32* y = allocators.arena.alloc<i32>(a);
    *x = 1;
    *y = 2;
    sys.println(*x + *y);
    allocators.arena.free(a);   // releases x and y together
    return 0;
}
```

Arena allocations share one cleanup point. Faster than per-allocation frees and tidier when many allocations have the same lifetime.

### Pool allocator for many same-size objects

```apollo
extern std allocators;

class Node {
    public:
    const i32 value;
    nconst Node* next;
};

int main() {
    nconst allocators.pool<Node> pool = allocators.pool.create<Node>(1024);
    nconst Node* head = allocators.pool.alloc(pool);
    head->value = 1;
    head->next = null;
    nconst Node* second = allocators.pool.alloc(pool);
    second->value = 2;
    second->next = null;
    head->next = second;
    sys.printf("%d -> %d\n", head->value, head->next->value);
    allocators.pool.free(pool);
    return 0;
}
```

A pool pre-allocates many slots of the same type. Per-allocation cost is amortized.

### Using malloc inside a struct constructor

```apollo
struct Buffer {
    public:
    nconst u8* data;
    nconst i32 length;
};

Buffer make_buffer(i32 length) {
    nconst u8* data = core.alloc_array<u8>(length);
    return Buffer(data, length);
}

void release(nconst Buffer& b) {
    core.free_array(b.data);
}

extern std core;

int main() {
    nconst Buffer b = make_buffer(16);
    sys.printf("allocated %d bytes\n", b.length);
    release(&nconst b);
    return 0;
}
```

A constructor-like helper plus an explicit release. The struct itself stores the pointer and length.

## Common mistakes

- **Use after free.** Touching a pointer after `free` or `delete` is undefined.
- **Double free.** Calling `free` twice on the same pointer is undefined.
- **Mixing malloc with delete (or vice versa).** Use the matching pair: `malloc`/`free`, `plcnew`/`delete`, `core.alloc_array`/`core.free_array`, arena alloc with arena free.
- **Leaking.** Every allocation needs a matching release. Prefer arenas when lifetimes line up.
- **Storing a pointer to stack memory.** Stack lifetimes are tied to the function frame. Use a heap allocation if a pointer must escape the frame.

## See also

- `docs/language/memory-and-storage/docs/malloc.md` — raw allocation.
- `docs/language/memory-and-storage/docs/plcnew.md` — constructed allocation.
- `docs/stdlib/foundations/docs/allocators.md` — arena, pool, and custom allocators.
- `docs/language/types/docs/pointer-type.md` — the pointer type produced by allocations.
- `docs/stdlib/foundations/docs/core.md` — array allocation helpers.
