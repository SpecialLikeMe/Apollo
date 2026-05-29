# Lambda — implementation

## Grammar surface

```antlr
lambdaExpr : 'lambda' '(' paramList? ')' '->' returnType block ;
```

`lambda` is a reserved keyword introducing the form.

## Parse tree shape

A `LambdaExprContext` exposes the `paramList()`, `returnType()`, and `block()`.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Validates the parameter list.
2. Validates the body against the declared return type.
3. Walks the body to confirm no local from the surrounding scope is referenced. Module-level names are allowed.
4. Sets the expression's type to `fn<R(Args...)>`.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

- The lambda is lifted to a top-level helper function with a generated name.
- The expression value is a `fn<R(Args...)>` two-pointer struct with the function pointer set to the lifted helper and the environment pointer set to null.
- Calls through the lambda's function type skip env-loading when the static type indicates a null environment.

## Runtime support

None.

## Edges and gotchas

- The "no captures" rule is enforced strictly. The frontend produces a precise diagnostic naming the captured binding when violated.
- Because the lifted helper is just a function, all the usual function-level optimizations apply (inlining, constant folding).
- A lambda's lowered helper participates in the compiler cache like any function; identical lambdas in different source positions still produce separate helpers (no deduplication at the AST level).

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`lambdaExpr`)
- Frontend: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
