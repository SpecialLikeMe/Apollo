# Async call — implementation

## Grammar surface

```antlr
asyncCallExpr : 'async' expression '(' callArgs? ')' ;
```

`async` is a reserved keyword prefixing any call expression.

## Parse tree shape

An `AsyncCallExprContext` exposes the underlying call expression's parts: the callable and the argument list.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Validates the call as if it were synchronous (argument count, types).
2. Wraps the call's return type `R` in `task<R>`.
3. Confirms `R` is a heap-storable type (most types are; some unsized forms may not be).

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

- The call is rewritten to a closure that captures the resolved callable and arguments by value.
- The closure is submitted to the runtime's task scheduler via `task_spawn`.
- The expression value is the task handle returned by `task_spawn`.

## Runtime support

The task runtime lives in `Apollo-Main/compiler/runtime_support/` and underpins `Apollo-Main/include/task.apollo`. It maintains a worker thread pool, a task queue, and per-task result slots.

## Edges and gotchas

- Async calls always allocate (a task record, the result slot). For very short work, the overhead may outweigh the parallelism gain.
- The argument list is evaluated synchronously *before* the task is scheduled. Side effects in argument expressions happen on the caller's thread.
- Discarding the task handle is allowed; the work runs to completion regardless.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`asyncCallExpr`)
- Frontend: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
- Runtime: `Apollo-Main/compiler/runtime_support/`
- Module: `Apollo-Main/include/task.apollo`
