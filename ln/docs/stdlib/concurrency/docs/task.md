# `std task`

## What it is

The `task` module exposes Apollo's typed task primitives: a `task` is an opaque handle representing a future-like value. The module provides `task_ready_<type>(v)` to create a task already holding a value, `task_done(t)` to check completion, `task_await_<type>(t)` to extract the value (blocking until ready), and `task_is_<type>(t)` to query the task's value type.

The module supports `i32`, `bool`, `str`, and `f64` task value types.

This module complements the language-level `async`/`await` surface — `async` produces a task; `await` is sugar for `task_await_*`.

## When you use it

- Returning a value from a producer that may not yet have computed it.
- Implementing fork/join over independent units of work.
- Bridging callback-style APIs into await-based code (`task_ready_*` wraps a synchronous value as a task).

For real concurrent execution, pair with the language's `async` form or with threads from `std thread`.

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

### Combining with async

```apollo
extern std task;

async i32 compute_async(i32 x) {
    return x * x;
}

int main() {
    nconst task t = compute_async(7);          // returns a task
    sys.println(sys.task_await_i32(t));        // 49
    return 0;
}
```

`async` functions return tasks; the same `task_await_*` helpers extract the result.

### Fork/join

```apollo
extern std task;

async i32 a() { return 1; }
async i32 b() { return 2; }
async i32 c() { return 3; }

int main() {
    nconst task ta = a();
    nconst task tb = b();
    nconst task tc = c();
    nconst i32 sum = sys.task_await_i32(ta)
                   + sys.task_await_i32(tb)
                   + sys.task_await_i32(tc);
    sys.println(sum);
    return 0;
}
```

Three independent computations; join their results.

## Common mistakes

- **Calling the wrong typed `await`.** `task_await_str` on an `i32` task is undefined behavior. Query type first with `task_is_*` if uncertain.
- **Awaiting in a tight loop without yielding.** Tasks from `task_ready_*` are instantly done, but real async tasks need the scheduler to run; blocking the caller without yielding may deadlock.
- **Treating tasks as values.** They are handles; passing by value shares state.
- **Forgetting that `task_done` is informational.** It does not advance the task; only `await` waits.
- **Mixing task types incorrectly.** A handle can only carry one type; you cannot retype a task.

## See also

- `docs/language/functions-and-interop/docs/async-call.md` — language-level async.
- `docs/language/functions-and-interop/docs/await.md` — language-level await.
- `docs/stdlib/concurrency/docs/sync.md` — locks, condvars, channels.
- `Apollo-Main/include/task.apollo` — source.
