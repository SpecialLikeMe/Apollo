# Async call

## What it is

An async call invokes a function and immediately returns a *task handle* representing the in-flight computation. The function runs concurrently with the caller. When the result is needed, the caller `await`s the handle.

Apollo's async is built on cooperative tasks managed by the `task` stdlib module. Tasks are scheduled by a runtime worker pool; await suspends the calling task until the result is ready.

## When you use it

- Performing IO or other blocking work without halting the calling task.
- Parallelizing independent computations across cores.
- Pipelining work: kick off N tasks, await all results.
- Building producer/consumer flows using the `task` and `sync` modules.

For purely synchronous code, do not introduce async — it adds scheduling overhead.

## Syntax

```
asyncCall : 'async' callableExpr '(' callArgs? ')' ;
```

The `async` keyword prefixes any function call. The result is a `task<R>` where `R` is the underlying call's return type.

## Semantics

`async f(args)`:

1. Allocates a task record on the heap.
2. Schedules `f(args)` to run on a worker thread.
3. Returns a `task<R>` handle immediately. The handle owns the result slot.

The original call's side effects are deferred until the worker picks up the task. The caller continues without waiting.

To get the result, `await handle` (see `await.md`). Awaiting before the task completes suspends the calling task.

Discarding a task handle without awaiting is allowed but uncommon — the work still runs to completion, and the result (if any) is dropped.

## Examples

### Single async call

```apollo
extern std task;

int slow_compute(int n) {
    // pretend this is expensive
    nconst i32 total = 0;
    for (nconst i := 0; i < n * 1000; i = i + 1) {
        total = total + 1;
    }
    return total;
}

int main() {
    nconst task<int> t = async slow_compute(50);
    sys.println("doing other work...");
    nconst int result = await t;
    sys.println(result);
    return 0;
}
```

The async call returns immediately; the result is awaited at the end.

### Parallel work

```apollo
extern std task;

int square(int n) { return n * n; }

int main() {
    nconst task<int> t1 = async square(3);
    nconst task<int> t2 = async square(4);
    nconst task<int> t3 = async square(5);
    nconst int sum = (await t1) + (await t2) + (await t3);
    sys.println(sum);
    return 0;
}
```

Three independent tasks run concurrently; the awaits collect results.

### Async IO

```apollo
extern std fs;
extern std task;

int main() {
    nconst task<str> contents = async fs.read_text_file("config.json");
    sys.println("started read");
    nconst str text = await contents;
    sys.println(text);
    return 0;
}
```

IO doesn't block the caller; meanwhile, the main task can do other work.

### Async with closure capture

```apollo
extern std task;
extern std strings;

int main() {
    nconst str prefix = "hello, ";
    nconst task<str> greeting = async closure [=prefix] () -> str {
        return strings.concat(prefix, "world");
    }();
    sys.println(await greeting);
    return 0;
}
```

The async call invokes a closure that captures `prefix`. Note the `()` at the end — closures are values; you invoke them.

### Fan-out then fan-in

```apollo
extern std collections;
extern std task;

int process(int n) { return n * 2 + 1; }

int main() {
    nconst vector<int> inputs = <1, 2, 3, 4, 5>;
    nconst vector<task<int>> handles = collections.vector.create<task<int>>();
    for (nconst int v : inputs) {
        collections.vector.push(handles, async process(v));
    }
    nconst int total = 0;
    for (nconst task<int> h : handles) {
        total = total + (await h);
    }
    sys.println(total);
    return 0;
}
```

A common fan-out/fan-in pattern: launch many tasks, await them all.

### Discarding the handle

```apollo
extern std task;

void log_async(str msg) { sys.println(msg); }

int main() {
    nconst task<void> _ = async log_async("started");
    sys.println("continuing");
    return 0;
}
```

Discarded handles still complete. The result (here void) is dropped.

## Common mistakes

- **Forgetting to await.** The work still runs but the result is lost.
- **Sharing mutable state without sync.** Tasks run on different threads. Mutating shared state requires `sync` primitives.
- **Awaiting from within a hot synchronous loop.** Each await may suspend; design for that or use sync code.
- **Async on trivially-fast functions.** Scheduling overhead outweighs the work; skip async for small operations.
- **Capturing references in an async closure.** The reference's lifetime may end before the task runs. Capture by value.

## See also

- `docs/language/functions-and-interop/docs/await.md` — collecting results.
- `docs/stdlib/concurrency/docs/task.md` — the task runtime.
- `docs/stdlib/concurrency/docs/sync.md` — synchronization for shared state.
- `docs/language/functions-and-interop/docs/closure.md` — closures, often used with async.
