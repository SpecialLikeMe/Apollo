# Async call — implementation

## Grammar surface

```antlr
asyncCall : ASYNC functionCall ';' ;
```

The current grammar accepts only statement-form `async` calls such as `async worker();`.

## Parse tree shape

ANTLR generates an `AsyncCallContext` that owns the nested `FunctionCallContext`. There is no expression-form async node and no task-valued `async` expression in the current grammar.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp` does not add a separate async type system here. The underlying function call is validated exactly like an ordinary call, so normal argument-count and argument-type diagnostics still apply.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`, `lowerAsyncCallStatement(...)` simply lowers the nested `functionCall` through the ordinary call path and discards any returned value.

There is no task creation, no task handle result, and no dedicated scheduler hookup in this lowering path.

## Runtime support

None beyond whatever the callee itself already uses. Statement-form `async` does not introduce a separate runtime object.

## Edges and gotchas

- `async foo();` is currently a statement-only spelling, not a task-producing expression.
- Because lowering reuses the normal call path, side effects and argument evaluation happen exactly as they would for `foo();`.
- This syntax is distinct from `async` native payload syntax such as `async inclusive cpp;`.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`asyncCall`)
- Frontend: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
