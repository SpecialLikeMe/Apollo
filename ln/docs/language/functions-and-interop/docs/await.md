# Await

## Current status

Apollo does not currently have an `await` keyword in `compilerv1.g4`.

A search of the grammar finds no `await` token or `awaitExpr` rule. Older docs that described language-level `await` are outdated.

## What exists instead

The repository currently uses stdlib and runtime helper functions for waiting on task-like values, for example:

- `sys.task_await_i32(...)`
- `sys.task_await_bool(...)`
- `sys.task_await_f64(...)`
- `sys.process_wait(...)`
- `sys.process_exit_code(...)`

Example from the grammar fixtures:

```apollo
return sys.process_exit_code(proc) + sys.task_await_i32(ready) - 12;
```

## Practical guidance

- Do not write `await x` in Apollo source today. The parser will not accept it.
- If you need waiting behavior, use the concrete stdlib helper that matches the runtime value you have.
- Treat `async foo();` as a separate statement surface, not as the producer of a language-level awaitable object.
