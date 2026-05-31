# `std sync`

## What it is

The `sync` module exposes Apollo's concurrency primitives: `mutex` (mutual exclusion), `condvar` (condition variable), and `channel` (typed message-passing queue). All are opaque runtime handles with `sys.*` operations.

The module supports several channel item types — `i32`, `bool`, `f64`, and `str` — with `send`, `try_send`, and `recv` variants per type. Mutexes and condvars are untyped.

## When you use it

- Coordinating access to shared state across threads (mutex).
- Implementing producer/consumer pipelines (channel).
- Blocking until a condition is signaled (condvar).

For fork/join over computational work, prefer `std task`. For raw threading, see `std thread`.

## API surface

All in `namespace sys`.

Mutex:

- `sys.mutex_new()` → `mutex`.
- `sys.mutex_lock(m)`, `sys.mutex_try_lock(m)`, `sys.mutex_unlock(m)`.

Condition variable:

- `sys.condvar_new()` → `condvar`.
- `sys.condvar_wait_ms(cv, timeout_ms)`.
- `sys.condvar_notify_one(cv)`, `sys.condvar_notify_all(cv)`.

Channel:

- `sys.channel_bounded(capacity)`, `sys.channel_unbounded()` → `channel`.
- `sys.channel_send_<type>(ch, item)` — blocking send (`i32`, `bool`, `str`, `f64`).
- `sys.channel_try_send_<type>(ch, item)` — non-blocking send.
- `sys.channel_recv_<type>(ch)` — blocking receive.

(Further surface in the source — try-recv, len, close.)

## Examples

### Basic mutex

```apollo
extern std sync;

int main() {
    nconst mutex m = sys.mutex_new();
    sys.mutex_lock(m);
    // critical section
    sys.println("locked region");
    sys.mutex_unlock(m);
    return 0;
}
```

### Try-lock

```apollo
extern std sync;

int main() {
    nconst mutex m = sys.mutex_new();
    if (sys.mutex_try_lock(m) == 1) {
        sys.println("acquired");
        sys.mutex_unlock(m);
    } else {
        sys.println("busy");
    }
    return 0;
}
```

`try_lock` returns 1 on success, 0 if the lock was unavailable.

### Bounded channel send/recv

```apollo
extern std sync;

int main() {
    nconst channel ch = sys.channel_bounded(4);
    sys.channel_send_i32(ch, 10);
    sys.channel_send_i32(ch, 20);
    sys.println(sys.channel_recv_i32(ch));    // 10
    sys.println(sys.channel_recv_i32(ch));    // 20
    return 0;
}
```

A 4-element bounded queue; sends block when full, receives block when empty.

### Non-blocking send

```apollo
extern std sync;

int main() {
    nconst channel ch = sys.channel_bounded(2);
    sys.channel_send_i32(ch, 1);
    sys.channel_send_i32(ch, 2);
    nconst i32 result = sys.channel_try_send_i32(ch, 3);
    if (result == 0) {
        sys.println("channel full");
    }
    return 0;
}
```

### Condvar wait with timeout

```apollo
extern std sync;

int main() {
    nconst condvar cv = sys.condvar_new();
    nconst i32 timed_out = sys.condvar_wait_ms(cv, 100);
    if (timed_out == 1) {
        sys.println("timed out");
    } else {
        sys.println("notified");
    }
    return 0;
}
```

`condvar_wait_ms` returns 1 when the timeout elapses without a notification.

### String channel for messages

```apollo
extern std sync;

int main() {
    nconst channel msgs = sys.channel_unbounded();
    sys.channel_send_str(msgs, "ping");
    sys.channel_send_str(msgs, "pong");
    sys.println(sys.channel_recv_str(msgs));
    sys.println(sys.channel_recv_str(msgs));
    return 0;
}
```

Channels are typed per send/recv pair; mixing `send_str` with `recv_i32` is a logical error caught at runtime.

## Common mistakes

- **Forgetting to `mutex_unlock`.** Always pair every lock with an unlock. Consider wrapping critical sections in helper functions that ensure unlock.
- **Calling `mutex_unlock` from a different thread.** Behavior is platform-defined; mutexes are owned by the locking thread.
- **Mismatched channel types.** A channel created for `i32` should only be used with `_i32` send/recv pairs.
- **Unbounded channels with slow consumers.** The producer may run forever filling memory; bound channels when backpressure matters.
- **Condvar without a mutex protecting the predicate.** The condvar exposes a `wait_ms`; in correct designs you also need a mutex protecting the shared state being signaled.

## See also

- `docs/stdlib/concurrency/docs/task.md` — async tasks built on top.
- `docs/stdlib/concurrency/docs/thread.md` — thread-id and yield helpers.
- `docs/language/functions-and-interop/docs/async-call.md` — async at the language level.
- `Apollo-Main/include/sync.apollo` — source.
