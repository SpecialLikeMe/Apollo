# Function type — implementation

## Grammar surface

```antlr
functionType
    : 'fn' '<' returnType '(' (typeRef (',' typeRef)*)? ')' '>'
    ;
```

## Parse tree shape

A `FunctionTypeContext` exposes the `returnType()` and a list of parameter `typeRef()` entries.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Resolves the return type and each parameter type.
2. Canonicalizes the resulting function-type entry. Two function types with the same shape share one internal entry.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

- A function type lowers to a two-pointer struct: `{ fn_ptr, env_ptr }`. The `fn_ptr` is the lowered function pointer; the `env_ptr` is a pointer to the closure record (null for non-capturing callables).
- Calls through a function-typed value load the function pointer and invoke it with the env pointer prepended to the source-level arguments.
- For non-capturing callables, an optimization pass collapses the env-ptr handling into a direct call when the static type permits.

## Runtime support

Closure records may require heap storage when the closure escapes its creating scope. Allocation and release use the standard allocator surface. The dispatch overhead is one indirect call per invocation.

## Edges and gotchas

- Function types are equal structurally — two `fn<int(int)>` references are the same type regardless of which callable they came from.
- A function-typed value carrying a non-capturing callable can be stored, copied, and called with no allocation cost.
- The two-pointer representation means a function value is twice the size of a raw function pointer. For tight loops over many small callables, store the callable directly via a known type rather than a function-type binding.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`functionType`)
- Frontend resolution: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
