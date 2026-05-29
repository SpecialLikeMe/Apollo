# `std thread`

## What it is

The `thread` module is intentionally small: it exposes the current thread's raw ID and a yield helper. It does not provide thread creation or join from the Apollo surface — that is handled either by the runtime's task scheduler (via `std task`) or by inline-foreign code that calls platform threading APIs directly.

## When you use it

- Logging that wants to tag entries with the running thread.
- Cooperative back-off in spin loops via `thread_yield`.
- Diagnostics that want to see which thread a code path is running on.

For spawning new threads or controlling a thread pool, the Apollo surface delegates: use `std task` for fork/join semantics or write platform-specific inline-foreign code.

## API surface

All in `namespace sys`:

- `sys.thread_get_raw_id()` → `i32` (a platform-specific integer identifying the calling thread).
- `sys.thread_yield()` — hint to the scheduler to let another runnable thread run.

## Examples

### Print thread id

```apollo
extern std thread;

int main() {
    sys.printf("running on thread %d\n", sys.thread_get_raw_id());
    return 0;
}
```

The id is the platform's raw value; treat it as opaque.

### Yield in a spin

```apollo
extern std thread;
extern std sync;

int main() {
    nconst mutex m = sys.mutex_new();
    nconst i32 attempts = 0;
    while (sys.mutex_try_lock(m) == 0) {
        attempts = attempts + 1;
        sys.thread_yield();
    }
    sys.printf("acquired after %d retries\n", attempts);
    sys.mutex_unlock(m);
    return 0;
}
```

In a busy-wait, calling `thread_yield` is a polite hint that lets the scheduler run other threads.

### Tagging log lines

```apollo
extern std thread;

void log(nconst str& msg) {
    sys.printf("[thread %d] %s\n", sys.thread_get_raw_id(), msg);
}

int main() {
    log("starting");
    log("doing work");
    log("done");
    return 0;
}
```

### Pairing with task scheduler

```apollo
extern std thread;
extern std task;

async i32 with_thread_log(i32 v) {
    sys.printf("computing %d on thread %d\n", v, sys.thread_get_raw_id());
    return v * v;
}

int main() {
    nconst task t = with_thread_log(7);
    sys.println(sys.task_await_i32(t));
    return 0;
}
```

The async task may run on a worker thread; the log entry records which one.

### Adaptive back-off

```apollo
extern std thread;

void busy_wait(i32 iterations) {
    nconst i32 i = 0;
    while (i < iterations) {
        if ((i & 0xff) == 0) {
            sys.thread_yield();
        }
        i = i + 1;
    }
}

int main() {
    busy_wait(10000);
    sys.println("done");
    return 0;
}
```

Yielding periodically reduces CPU pressure while still spinning.

### Sanity check raw id stability

```apollo
extern std thread;

int main() {
    nconst i32 a = sys.thread_get_raw_id();
    nconst i32 b = sys.thread_get_raw_id();
    sys.println(a == b ? "stable" : "changed");   // stable on a single thread
    return 0;
}
```

The raw id is stable for the lifetime of a thread.

## Common mistakes

- **Treating `thread_get_raw_id` as portable across platforms.** It is an opaque integer; do not parse it.
- **Expecting `thread_yield` to do scheduling work.** It's a hint; the platform may ignore it. Don't rely on it for correctness.
- **Using `thread_yield` in tight inner loops without thinking about cost.** It can dominate work in microbenchmarks; yield with throttling.
- **Looking here for thread creation.** Use `std task` plus `async` for that surface.
- **Assuming thread ids are reused.** Some platforms reuse ids; others don't. Don't use the id as a long-term identity key.

## See also

- `docs/stdlib/concurrency/docs/sync.md` — locks, condvars, channels.
- `docs/stdlib/concurrency/docs/task.md` — async tasks.
- `docs/language/functions-and-interop/docs/async-call.md` — async at the language level.
- `Apollo-Main/include/thread.apollo` — source.
