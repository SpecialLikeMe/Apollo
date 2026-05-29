# Allocators — implementation

## Grammar surface

The grammar exposes raw allocation through these surfaces:

```antlr
mallocExpr : 'malloc' '<' typeRef '>' '(' ')' ;
freeStmt   : 'free' '(' expression ')' ';' ;
plcnewExpr : 'plcnew' typeRef '(' callArgs? ')' ;
deleteStmt : 'delete' expression ';' ;
```

Higher-level allocator surfaces (arena, pool) live in `Apollo-Main/include/allocators.apollo` and are not grammar primitives — they are stdlib functions called through normal call syntax.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. `malloc<T>()` resolves to the system allocator's allocation routine for `sizeof(T)` bytes. Result type is `T*`.
2. `free(ptr)` requires `ptr` to be a pointer type; the frontend accepts any pointer.
3. `plcnew T(args...)` resolves to allocation followed by construction. Argument validation matches `T`'s implicit constructor.
4. `delete ptr` resolves to destruction (if `T` has a destructor) followed by deallocation.
5. The frontend does not track pointer ownership or lifetimes — borrow checking is suppressed for pointer values.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

- `malloc<T>()` lowers to a call to the runtime's `apollo_malloc` (or platform equivalent) with the size.
- `free(ptr)` lowers to a call to the runtime's `apollo_free`.
- `plcnew T(args)` lowers to allocation + an in-place call to `T`'s constructor on the returned pointer.
- `delete ptr` lowers to `T`'s destructor call (if any) + deallocation.

Arena and pool allocations call into routines from `Apollo-Main/compiler/runtime_support/` that maintain the allocator's internal state.

## Runtime support

The allocator runtime lives in `Apollo-Main/compiler/runtime_support/`. The default system allocator wraps malloc/free. Arena and pool allocators have their own implementations that batch system allocations and manage internal free lists.

## Edges and gotchas

- The frontend does not insert null checks on allocation results. Programs that need to handle out-of-memory must check explicitly.
- `plcnew`'s argument validation differs slightly from value-level constructor calls because the result is a pointer rather than a value; the construct is otherwise identical.
- Mixing allocator surfaces is undefined. Tracking which allocator owns which pointer is the programmer's responsibility.
- The runtime can be configured to track allocations for diagnostic purposes (leak detection, double-free detection); see the build driver's diagnostic flags.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`mallocExpr`, `freeStmt`, `plcnewExpr`, `deleteStmt`)
- Frontend: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
- Allocator runtime: `Apollo-Main/compiler/runtime_support/`
- Module: `Apollo-Main/include/allocators.apollo`
