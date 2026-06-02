# Async call

## Current surface

The grammar currently defines an async call as a statement prefixing a normal function call:

```apollo
asyncCall : ASYNC functionCall ';' ;
```

Example:

```apollo
async worker();
```

## Current backend behavior

The native backend does not currently create a task handle or a separate concurrency runtime for this syntax. The lowering path for `asyncCall` simply lowers the underlying function call as a statement.

In other words, the current codebase does not support the older documented model of:

- `task<T>` return values
- language-level `await`
- guaranteed concurrent execution from `async f(...)`

## What to use instead

If you need asynchronous waiting today, the repository fixtures use stdlib helpers such as `sys.task_await_i32(...)`, `sys.task_await_bool(...)`, and `sys.task_await_f64(...)`. Those are library/runtime surfaces, not a dedicated `await` keyword.

## Example

```apollo
void worker() {
    return;
}

int main() {
    async worker();
    return 0;
}
```

## Common mistakes

- Expecting `async foo();` to produce a task handle. It does not in the current backend.
- Writing `await` expressions after an async call. There is no `await` keyword in the current grammar.
- Treating `async` call syntax and `async { ... }lang;` native payload syntax as the same thing. They are different grammar forms.
