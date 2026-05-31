# Await — implementation

## Grammar surface

```antlr
awaitExpr : 'await' expression ;
```

`await` is a reserved keyword acting as a prefix unary operator.

## Parse tree shape

An `AwaitExprContext` exposes the operand `expression()`.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Resolves the operand's type. It must be a `task<R>`.
2. Sets the expression's result type to `R`.
3. Marks the handle as consumed at this point — subsequent uses produce a diagnostic.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

- `await handle` lowers to a call to `task_wait(handle)` from the runtime.
- The runtime returns the result on success or re-raises the task's panic on failure.
- The handle's memory is released as part of the wait.

## Runtime support

`task_wait` lives in `Apollo-Main/compiler/runtime_support/`. It performs:

1. Atomic check of the task's completion flag.
2. If complete, copies the result out and releases the task record.
3. If not, parks the calling thread on the task's completion event.

Panic propagation uses the same channel as ordinary throws.

## Edges and gotchas

- Await is currently a blocking operation — there is no cooperative coroutine state machine. Multi-task throughput depends on the worker pool size.
- Handle reuse is rejected at the frontend level; the runtime would also fault on a double-wait.
- The borrow checker tracks references held across the await point and requires them to outlive the suspension.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`awaitExpr`)
- Frontend: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
- Runtime: `Apollo-Main/compiler/runtime_support/`
- Module: `Apollo-Main/include/task.apollo`
