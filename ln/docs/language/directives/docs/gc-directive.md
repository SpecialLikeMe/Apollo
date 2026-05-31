# GC directive

## What it is

The `gc` directive enables Apollo's optional garbage collector for a class, struct, or compilation unit. Without the directive, allocations follow Apollo's deterministic ownership model — every heap allocation has an explicit free. With the directive, marked types are managed by the GC subsystem.

This is opt-in. The default is deterministic allocation.

## When you use it

- Types whose lifetimes are difficult to track precisely (cyclic graphs, observer chains).
- Long-lived caches where individual deallocation is impractical.
- Prototyping code where focus is on logic rather than memory lifetimes.
- Interop with code that expects garbage-collected behavior.

For ordinary work, the borrow checker plus explicit allocation is the better choice — predictable, no GC pauses, no runtime cost.

## Syntax

```
gcDirective : '#[gc' (':' gcMode)? ']' ;
gcMode      : 'tracing' | 'rc' | 'arena' ;
```

The directive may appear:

- On a class or struct declaration to mark that type's instances as GC-managed.
- At file scope to opt every type in the file into GC.
- On a function to enable a GC scope for the call.

The optional `gcMode` selects between tracing GC, reference counting, and arena-managed (per-scope free).

## Semantics

Marking a type GC-managed changes how its allocations are tracked:

- **tracing**: allocations are registered with the tracing collector. Cycles are reclaimed on collection sweeps.
- **rc**: allocations use atomic reference counting. Cycles must be broken manually.
- **arena**: allocations are tied to a containing scope; freed when the scope ends.

Inside a GC-managed type's body, `plcnew T(args)` does not need a matching `delete` — the collector handles release. Methods on GC types may still hold borrows; the borrow checker continues to track those.

GC-managed types interoperate with deterministic types via pointers and borrows. Crossing the boundary requires no extra syntax, but ownership semantics differ: a GC-managed pointer is not freed manually, and a deterministic pointer is not collected automatically.

## Examples

### A GC-managed graph node

```apollo
#[gc:tracing]
class Node {
    public:
    const i32 id;
    nconst vector<Node*> neighbors;
};

extern std collections;

int main() {
    nconst Node* a = plcnew Node(1, collections.vector.create<Node*>());
    nconst Node* b = plcnew Node(2, collections.vector.create<Node*>());
    collections.vector.push(a.neighbors, b);
    collections.vector.push(b.neighbors, a);   // cycle is fine
    sys.println(a.id);
    sys.println(b.id);
    // no delete needed; GC handles release
    return 0;
}
```

A graph with a cycle. Tracing GC reclaims both nodes when the program exits or after a sweep.

### Reference-counted alternative

```apollo
#[gc:rc]
class CountedNode {
    public:
    const i32 value;
    nconst CountedNode* next;
};

int main() {
    nconst CountedNode* head = plcnew CountedNode(1, null);
    head.next = plcnew CountedNode(2, null);
    // no manual delete; RC handles release when the last reference goes away
    return 0;
}
```

RC is simpler than tracing but cannot reclaim cycles on its own.

### Arena GC at function scope

```apollo
class Temp {
    public:
    const i32 value;
};

#[gc:arena]
void scratch_work() {
    for (nconst i := 0; i < 100; i = i + 1) {
        nconst Temp* t = plcnew Temp(i);
        // t is alive for the rest of the function; freed on return
    }
}

int main() {
    scratch_work();
    sys.println("done");
    return 0;
}
```

Arena mode batches per-function allocations. Cleanup is a single arena release on return.

### File-scope GC

```apollo
#[gc:tracing];

class A { public: const i32 v; nconst A* next; };

int main() {
    nconst A* root = plcnew A(1, null);
    root.next = plcnew A(2, null);
    sys.println(root.v);
    sys.println(root.next.v);
    return 0;
}
```

All allocations in the file route through the GC.

### Mixing GC and non-GC types

```apollo
#[gc:rc]
class Cached { public: const str data; };

class Raw { public: const i32 v; };

int main() {
    nconst Cached* c = plcnew Cached("cached value");
    nconst Raw* r = plcnew Raw(7);
    sys.println(c.data);
    sys.println(r.v);
    delete r;        // Raw is not GC, so explicit delete
    return 0;
}
```

Each type's allocation model is independent.

### Switching GC mode mid-file

```apollo
#[gc:rc]
class A { public: const i32 v; };

#[gc:tracing]
class B { public: const i32 v; nconst B* friend; };

int main() {
    nconst A* a = plcnew A(1);
    nconst B* b = plcnew B(2, null);
    sys.println(a.v);
    sys.println(b.v);
    return 0;
}
```

Each declaration's GC mode is independent.

## Common mistakes

- **Cycles with `rc`.** Reference counting cannot reclaim cycles. Either switch to `tracing` or break cycles manually.
- **Mixing manual `delete` with GC types.** Don't `delete` a GC-managed pointer; the collector owns it.
- **Assuming GC removes the need for the borrow checker.** Borrow rules still apply to references; GC only affects allocation lifetime.
- **GC overhead in tight loops.** Tracing GC may pause; for hot paths, prefer deterministic allocation.
- **Cross-mode pointer confusion.** Be deliberate about whether a pointer is GC-owned or deterministic — they look the same but free differently.

## See also

- `docs/language/memory-and-storage/docs/allocators.md` — full allocator picture.
- `docs/language/memory-and-storage/docs/plcnew.md` — heap construction (used by GC).
- `docs/language/directives/docs/borrow-checker-directive.md` — companion directive for borrow rules.
- `Apollo-Main/include/portability.apollo` — runtime configuration touchpoints.
