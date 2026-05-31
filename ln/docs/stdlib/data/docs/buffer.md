# `std buffer`

## What it is

The `buffer` module wraps a growable byte/string buffer object provided by the runtime. The `buffer` type is an opaque handle; the module exports `sys.*` functions to create, append to, read from, and clear it.

A buffer is the idiomatic way to accumulate output in Apollo when you don't want to repeatedly concatenate strings. Each push is O(amortized 1); a final `buffer_text` returns the accumulated content.

## When you use it

- Building up a large string from many smaller pieces (logs, generated source, formatted reports).
- Avoiding the quadratic cost of repeated string concatenation.
- Holding a temporary working area for a function that produces text.

For single-line formatting, `sys.println` and string interpolation are simpler.

## API surface

All in `namespace sys`:

- `buffer sys.buffer()` — create a new, empty buffer.
- `void sys.buffer_push_str(buf, text)` — append a string.
- `void sys.buffer_push_i32(buf, n)` — append the decimal text of an integer.
- `str sys.buffer_text(buf)` — return the accumulated text.
- `void sys.buffer_clear(buf)` — reset to empty.

The `buffer` type is a handle managed by the runtime.

## Examples

### Building a string

```apollo
extern std buffer;

int main() {
    nconst buffer buf = sys.buffer();
    sys.buffer_push_str(buf, "hello");
    sys.buffer_push_str(buf, ", ");
    sys.buffer_push_str(buf, "world");
    sys.println(sys.buffer_text(buf));
    return 0;
}
```

### Mixing strings and integers

```apollo
extern std buffer;

int main() {
    nconst buffer buf = sys.buffer();
    sys.buffer_push_str(buf, "count = ");
    sys.buffer_push_i32(buf, 42);
    sys.buffer_push_str(buf, ", status = ");
    sys.buffer_push_str(buf, "ok");
    sys.println(sys.buffer_text(buf));
    return 0;
}
```

The numeric push converts to decimal text and appends.

### Loop accumulation

```apollo
extern std buffer;

int main() {
    nconst buffer buf = sys.buffer();
    sys.buffer_push_str(buf, "items: [");
    for (nconst i := 0; i < 5; i = i + 1) {
        if (i > 0) {
            sys.buffer_push_str(buf, ", ");
        }
        sys.buffer_push_i32(buf, i);
    }
    sys.buffer_push_str(buf, "]");
    sys.println(sys.buffer_text(buf));
    return 0;
}
```

A single buffer accumulates the loop's output; one final print.

### Resetting and reusing

```apollo
extern std buffer;

void emit_report(nconst buffer& buf, nconst str& title, i32 score) {
    sys.buffer_clear(buf);
    sys.buffer_push_str(buf, title);
    sys.buffer_push_str(buf, ": ");
    sys.buffer_push_i32(buf, score);
    sys.println(sys.buffer_text(buf));
}

int main() {
    nconst buffer scratch = sys.buffer();
    emit_report(&nconst scratch, "alice", 87);
    emit_report(&nconst scratch, "bob", 92);
    return 0;
}
```

One buffer reused across reports; clear before each use.

### Building a multi-line message

```apollo
extern std buffer;

int main() {
    nconst buffer buf = sys.buffer();
    sys.buffer_push_str(buf, "summary:\n");
    sys.buffer_push_str(buf, "  - items: ");
    sys.buffer_push_i32(buf, 12);
    sys.buffer_push_str(buf, "\n  - errors: ");
    sys.buffer_push_i32(buf, 0);
    sys.println(sys.buffer_text(buf));
    return 0;
}
```

### As a return value

```apollo
extern std buffer;

str format_pair(nconst str& a, i32 b) {
    nconst buffer buf = sys.buffer();
    sys.buffer_push_str(buf, a);
    sys.buffer_push_str(buf, "=");
    sys.buffer_push_i32(buf, b);
    return sys.buffer_text(buf);
}

int main() {
    sys.println(format_pair("x", 7));
    return 0;
}
```

The buffer is local; `buffer_text` returns a string the caller keeps.

## Common mistakes

- **Forgetting to call `sys.buffer_text`.** Without it, you've accumulated content but not retrieved it.
- **Using a buffer across threads without external synchronization.** The runtime's buffer is not thread-safe by default.
- **Pushing very large amounts without ever clearing or releasing.** Buffers grow; for long-lived buffers, `buffer_clear` resets while keeping the allocation.
- **Treating the buffer as a `str`.** It's a handle; only the explicit `buffer_text` call produces a string.
- **Calling `buffer_push_i32` with non-`i32` values.** Convert first; mixed types must go through their respective push.

## See also

- `docs/stdlib/text/docs/strings.md` — string helpers used alongside buffers.
- `docs/stdlib/data/docs/collections.md` — for structured data, not text.
- `docs/stdlib/io/docs/io.md` — print helpers that often consume buffer output.
- `Apollo-Main/include/buffer.apollo` — source.
