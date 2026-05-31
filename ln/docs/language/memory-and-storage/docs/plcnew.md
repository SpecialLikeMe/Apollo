# Plcnew / delete

## What it is

`plcnew T(args...)` allocates a `T` on the heap and runs `T`'s constructor with the given arguments. The result is a `T*` pointing at the constructed value. `delete ptr` runs `T`'s destructor (if any) and releases the storage.

This is the constructed-allocation surface, the counterpart to `malloc`/`free`. Use it when the type has constructor logic that needs to run, or when you want the heap allocation to look symmetric with stack value construction.

## When you use it

- Allocating a class or struct instance on the heap that should be properly initialized.
- Allocating values whose construction has side effects (registering with a manager, opening a handle).
- Building heap-allocated nodes for a custom data structure.

For raw uninitialized storage, prefer `malloc`/`free`.

## Syntax

```
plcnewExpr : 'plcnew' typeRef '(' callArgs? ')' ;
deleteStmt : 'delete' expression ';' ;
```

## Semantics

`plcnew T(args)` allocates storage for `T`, runs the constructor with `args` over that storage, and returns the pointer. The constructed value is fully initialized when the expression returns. If construction throws, the storage is released and the throw propagates.

`delete ptr` runs `T`'s destructor (if declared) and releases the storage. After `delete`, the pointer is invalid.

## Examples

### Heap-allocated class

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

`plcnew Counter(0)` constructs a `Counter` with the initial value. `delete c` releases it.

### Heap-allocated struct

```apollo
struct Sample {
    i32 timestamp;
    f32 value;
};

int main() {
    nconst Sample* s = plcnew Sample(1700000000, 3.14);
    sys.printf("t=%d v=%f\n", s->timestamp, s->value);
    delete s;
    return 0;
}
```

Even structs with no methods can use `plcnew` if you prefer the construction shape over `malloc + field writes`.

### Linked-list node

```apollo
class Node {
    public:
    const i32 value;
    nconst Node* next;
};

int main() {
    nconst Node* a = plcnew Node(1, null);
    nconst Node* b = plcnew Node(2, null);
    nconst Node* c = plcnew Node(3, null);
    a->next = b;
    b->next = c;
    nconst Node* p = a;
    while (p != null) {
        sys.println(p->value);
        p = p->next;
    }
    delete a;
    delete b;
    delete c;
    return 0;
}
```

Each node is constructed on the heap and linked through `next`. Releasing happens in reverse.

### Factory returning a pointer

```apollo
class Widget {
    public:
    const str name;
};

Widget* make(str name) {
    return plcnew Widget(name);
}

int main() {
    nconst Widget* w = make("alpha");
    sys.println(w->name);
    delete w;
    return 0;
}
```

The factory hides the allocation behind a function. The caller still owns the released-by-delete responsibility.

### Holding plcnew-allocated values in a vector

```apollo
extern std collections;

class Job { public: const i32 id; };

int main() {
    nconst vector<Job*> queue = <
        plcnew Job(1),
        plcnew Job(2),
        plcnew Job(3)
    >;
    for (nconst Job* j : queue) {
        sys.println(j->id);
    }
    for (nconst Job* j : queue) {
        delete j;
    }
    return 0;
}
```

The vector stores pointers; the deletes run after the iteration. Order doesn't matter for individual deletes.

### Construction with mixed argument types

```apollo
class Pair {
    public:
    const i32 left;
    const str right;
};

int main() {
    nconst Pair* p = plcnew Pair(42, "answer");
    sys.printf("%d -> %s\n", p->left, p->right);
    delete p;
    return 0;
}
```

Constructor arguments match the class's required field order — same as for value-level construction.

## Common mistakes

- **Forgetting `delete`.** `plcnew` is not garbage collected. Every `plcnew` needs a matching `delete`.
- **Mixing with `free`.** Use `delete` for `plcnew`-allocated pointers, `free` for `malloc`-allocated pointers.
- **Calling delete twice.** Undefined.
- **Holding a `plcnew`'d pointer in a closure that outlives `delete`.** Use-after-free.
- **Constructor that throws.** The storage is released, but the program may be left in an inconsistent state if the throw bypasses other cleanup.

## See also

- `docs/language/memory-and-storage/docs/malloc.md` — raw allocation.
- `docs/language/memory-and-storage/docs/allocators.md` — full allocator surface.
- `docs/language/declarations/docs/class.md` — construction details.
- `docs/language/types/docs/pointer-type.md` — pointer type produced.
