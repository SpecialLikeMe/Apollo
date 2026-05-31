# Await

## What it is

`await` is the operator that retrieves the result of an async task. Given a `task<R>` handle, `await` suspends the calling task until the handle's underlying work is complete, then produces the resulting `R` value.

`await` is the inverse of `async`: where `async` produces a handle, `await` consumes it.

## When you use it

Any time you need the result of an `async` call. The await must happen on the caller side; the task does not deliver its result anywhere else automatically.

## Syntax

```
awaitExpr : 'await' expression ;
```

The operand must be a `task<R>` value. The result has type `R`.

## Semantics

`await handle`:

1. If the task is complete, returns the stored result.
2. Otherwise, suspends the calling task and yields to the scheduler.
3. When the task completes, the scheduler resumes the awaiter.

Awaiting consumes the handle — using the handle after await is rejected.

Awaiting can be done from any task, including the main task. If the program's entire execution is single-threaded, the main task blocks until the worker completes.

`await` may also propagate failures: if the task panicked, the await re-raises the panic on the caller's thread.

## Examples

### Basic await

```apollo
extern std task;

int compute() { return 42; }

int main() {
    nconst task<int> t = async compute();
    nconst int v = await t;
    sys.println(v);
    return 0;
}
```

The handle is awaited; the result is used.

### Awaiting multiple tasks

```apollo
extern std task;

int main() {
    nconst task<int> a = async lambda () -> int { return 1; }();
    nconst task<int> b = async lambda () -> int { return 2; }();
    nconst task<int> c = async lambda () -> int { return 3; }();
    sys.println((await a) + (await b) + (await c));
    return 0;
}
```

Each await collects one result. Order of awaits matters only for scheduling — independent results can be awaited in any order.

### Await inside a loop

```apollo
extern std collections;
extern std task;

int process(int n) { return n * n; }

int main() {
    nconst vector<int> inputs = <1, 2, 3, 4, 5>;
    nconst vector<task<int>> handles = collections.vector.create<task<int>>();
    for (nconst int v : inputs) {
        collections.vector.push(handles, async process(v));
    }
    for (nconst task<int> h : handles) {
        sys.println(await h);
    }
    return 0;
}
```

Tasks are launched first, then awaited. This maximizes parallelism.

### Awaiting void

```apollo
extern std task;

void log_msg(str msg) { sys.println(msg); }

int main() {
    nconst task<void> t = async log_msg("hello");
    await t;
    sys.println("done");
    return 0;
}
```

`task<void>` is valid; the await produces no value but synchronizes with completion.

### Sequential dependency

```apollo
extern std task;

int load() { return 7; }
int transform(int v) { return v + 1; }

int main() {
    nconst task<int> a = async load();
    nconst int loaded = await a;
    nconst task<int> b = async transform(loaded);
    nconst int final = await b;
    sys.println(final);
    return 0;
}
```

When B depends on A, await A first, then launch B. Apollo does not yet have a built-in chain combinator.

### Await error propagation

```apollo
extern std task;

int faulty() {
    throw "oops";
}

int main() {
    nconst task<int> t = async faulty();
    try {
        nconst int v = await t;
        sys.println(v);
    } catch (str msg) {
        sys.printf("caught: %s\n", msg);
    }
    return 0;
}
```

A panic inside the task surfaces at the await call; ordinary try/catch catches it.

## Common mistakes

- **Forgetting to await.** The task runs, but the result is dropped.
- **Awaiting twice.** A handle can only be awaited once.
- **Awaiting in a tight loop.** Each await may suspend, costing context switches. Group awaits when possible.
- **Sequencing dependent tasks via awaits.** This serializes execution. If both can run, launch both first.
- **Holding references across await.** The reference's lifetime must cover the suspension; the borrow checker enforces this.

## See also

- `docs/language/functions-and-interop/docs/async-call.md` — producing task handles.
- `docs/stdlib/concurrency/docs/task.md` — the task runtime.
- `docs/language/control-flow/docs/try-catch.md` — error propagation.
- `docs/stdlib/concurrency/docs/sync.md` — shared-state coordination.
