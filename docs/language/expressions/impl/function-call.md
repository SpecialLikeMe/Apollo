# Function call — implementation

## Grammar surface

```antlr
functionCall : expression '(' callArgs? ')' ;
callArgs     : expression (',' expression)* ;
```

The call appears as a postfix operator on any callable-producing expression.

## Parse tree shape

`FunctionCallContext` exposes the callable `expression()` and the argument list `callArgs()`.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Resolves the callable expression's type. It must be a function type (`fn<R(Args...)>`) or a directly-referenced function/method declaration.
2. Compares the argument count to the parameter count.
3. Type-checks each argument against the corresponding parameter.
4. For methods, validates the receiver expression and binds it as the implicit `self`.
5. For closures with non-`Copy` captures, runs borrow-checker queries to confirm the capture's lifetime covers the call site.
6. Records the call's result type for use by the surrounding expression.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

- Direct function calls: lowered as LLVM `call` to the function's lowered name.
- Method calls: lowered as direct `call` with the receiver passed as the first argument; virtual methods through an interface go through a vtable indirect call.
- Calls through a function-typed value: lowered as an indirect `call` through the value's function-pointer slot, with the environment pointer passed as a hidden first argument.
- Closures with no captures: the lowered call may bypass the env pointer when the static type is known to be capture-free.

## Runtime support

Closure invocation overhead is one indirect call plus loading the environment pointer. No additional runtime is required beyond what the callee itself uses.

## Edges and gotchas

- Calls are pure syntactic constructs; nothing about the call site is reflected at runtime beyond the call instruction itself.
- The frontend caches argument-list checks per call site so revalidations during incremental compilation are cheap.
- Variadic calls (used in some `printf`-style stdlib helpers) are validated against the declared variadic surface.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`functionCall`, `callArgs`)
- Frontend: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
