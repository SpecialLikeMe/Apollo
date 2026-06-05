# `std task`

## What it is

The `task` module exposes Apollo's task handle primitives: a `task` is an opaque runtime handle representing a typed future-like value. The module provides `task_ready_<type>(v)` to create a task already holding a value, `task_done(t)` to check completion, `task_await_<type>(t)` to extract the value (blocking until ready), and `task_is_<type>(t)` to query the task's stored value type.

The module supports `i32`, `bool`, `str`, and `f64` task value types.

This module is an explicit stdlib/runtime surface. The current language-level `async foo();` statement does not produce a task handle, and there is no language `await` keyword in the current grammar.

## When you use it

- Returning a value from a producer that may not yet have computed it.
- Polling or awaiting task handles returned by runtime-backed APIs.
- Bridging callback-style or already-computed values into task-shaped code with `task_ready_*`.

`task_ready_*` itself does not create parallel work; it creates an already-completed handle.

## API surface

All in `namespace sys`:

- `sys.task_ready_<type>(v)` → `task` (ready task holding `v`). Types: `i32`, `str`, `bool`, `f64`.
- `sys.task_done(t)` → `i32` (1 if the task has resolved).
- `sys.task_await_<type>(t)` → typed value (blocks until ready).
- `sys.task_is_<type>(t)` → `i32` (1 if the task's value type matches).

## Examples

### Ready task

```apollo
extern std task;

int main() {
    nconst task t = sys.task_ready_i32(42);
    sys.println(sys.task_done(t));         // 1
    sys.println(sys.task_await_i32(t));    // 42
    return 0;
}
```

`task_ready_*` is the "already-done" constructor.

### Await various types

```apollo
extern std task;

int main() {
    nconst task ti = sys.task_ready_i32(7);
    nconst task ts = sys.task_ready_str("hello");
    nconst task tf = sys.task_ready_f64(3.14);
    nconst task tb = sys.task_ready_bool(1);

    sys.println(sys.task_await_i32(ti));
    sys.println(sys.task_await_str(ts));
    sys.printf("%f\n", sys.task_await_f64(tf));
    sys.println(sys.task_await_bool(tb));
    return 0;
}
```

### Polling done

```apollo
extern std task;

int main() {
    nconst task t = sys.task_ready_i32(99);
    while (sys.task_done(t) == 0) {
        // wait for completion (here it's immediate)
    }
    sys.println(sys.task_await_i32(t));
    return 0;
}
```

`task_done` is non-blocking; useful when polling without committing to a blocking await.

### Type query

```apollo
extern std task;

void describe(nconst task& t) {
    if (sys.task_is_i32(t) == 1) {
        sys.println("i32 task");
    } else if (sys.task_is_str(t) == 1) {
        sys.println("str task");
    } else if (sys.task_is_bool(t) == 1) {
        sys.println("bool task");
    } else if (sys.task_is_f64(t) == 1) {
        sys.println("f64 task");
    }
}

int main() {
    describe(sys.task_ready_i32(1));
    describe(sys.task_ready_str("x"));
    return 0;
}
```

When you don't know a task's type up front, query before awaiting.

## Common mistakes

- **Calling the wrong typed `await`.** `task_await_str` on an `i32` task is undefined behavior. Query type first with `task_is_*` if uncertain.
- **Expecting `async foo();` to return a task.** In the current backend it lowers like an ordinary statement call and does not produce a handle.
- **Treating tasks as values.** They are handles; passing by value shares state.
- **Forgetting that `task_done` is informational.** It does not advance the task; `task_await_*` is the blocking operation.
- **Mixing task types incorrectly.** A handle can only carry one type; you cannot retype a task.

## See also

- `docs/language/functions-and-interop/docs/async-call.md` — language-level async.
- `docs/stdlib/concurrency/docs/sync.md` — locks, condvars, channels.
- `Apollo-Main/include/task.apollo` — source.
