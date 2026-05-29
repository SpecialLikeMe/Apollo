# GC directive — implementation

## Grammar surface

```antlr
gcDirective : '#[' 'gc' (':' gcMode)? ']' ;
gcMode      : 'tracing' | 'rc' | 'arena' ;
```

The `#[...]` syntax is the attribute-block surface, of which `gc` is one recognized form.

## Frontend handling

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Records the GC mode on the directive target (type, function, or file).
2. Marks allocations within the target's scope as GC-managed.
3. Routes `plcnew` for the type to the GC allocator instead of the standard heap.
4. Suppresses the requirement for a matching `delete`.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

- GC allocations route through `gc_alloc(size, type_descriptor)` from the runtime.
- Type descriptors include the GC strategy and a tracer that walks fields holding GC pointers.
- For RC mode, every pointer copy emits an increment; every pointer drop emits a decrement.
- For arena mode, allocations push onto the active scope's arena; the scope's exit emits `arena_release`.

## Runtime support

GC runtime lives in `Apollo-Main/GC/apollo_gc.hpp` and its companion implementation under `runtime_support/`. The runtime provides:

- Tracing collector with conservative or precise scanning.
- Atomic reference counting helpers.
- Arena allocation/free.
- Type descriptor registration.

## Edges and gotchas

- Mixing GC modes in one type is rejected — the directive's mode applies uniformly.
- Cross-mode pointer copies are allowed at the language level but require care; the GC sees only its own pointers.
- Tracing GC may pause; the runtime exposes configuration knobs for cycle frequency and pause budgets.
- The borrow checker remains active for references regardless of GC mode.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`gcDirective`, attribute block)
- Frontend: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
- GC runtime: `Apollo-Main/GC/apollo_gc.hpp`, `Apollo-Main/compiler/runtime_support/`
