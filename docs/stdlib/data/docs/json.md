# `std json`

## What it is

The `json` module parses and writes JSON values. The parse side has typed extractors for booleans, integers, floats, strings, arrays, and objects. The write side produces JSON text from the same types and provides start/end markers for streaming output.

Parsing returns Apollo-native values (`bool` as `i32`, integer as `long`, float as `f64`, etc.); arrays and objects come back as `vector` and `map` handles from `std collections`. Writing accepts those same Apollo values and returns JSON text.

## When you use it

- Reading configuration files.
- Producing structured output for tools and services.
- Talking to JSON-based HTTP APIs (paired with `std net`).
- Persisting application state in a portable, human-readable form.

For binary or higher-performance formats, this isn't the right module.

## API surface

All in `namespace sys`.

Parse:

- `sys.json_parse_bool(text)` → `i32` (0/1).
- `sys.json_parse_int(text)` → `long`.
- `sys.json_parse_float(text)` → `f64`.
- `sys.json_parse_str(text)` → `str`.
- `sys.json_parse_array(text)` → `vector`.
- `sys.json_parse_object(text)` → `map`.

Write:

- `sys.json_write_bool(value)` → `str`.
- `sys.json_write_int(value)` → `str`.
- `sys.json_write_float(value)` → `str`.
- `sys.json_write_str(value)` → `str`.
- `sys.json_write_array(value)` → `str`.
- `sys.json_write_object(value)` → `str`.

Streaming markers:

- `sys.json_write_array_start()`, `sys.json_write_array_end()`.
- `sys.json_write_object_start()`, `sys.json_write_object_end()`.

## Examples

### Parse a simple value

```apollo
extern std json;

int main() {
    nconst long n = sys.json_parse_int("42");
    nconst f64 pi = sys.json_parse_float("3.14");
    nconst str s = sys.json_parse_str("\"hello\"");
    sys.printf("n=%d pi=%f s=%s\n", n, pi, s);
    return 0;
}
```

### Parse an array

```apollo
extern std json;
extern std collections;

int main() {
    nconst vector arr = sys.json_parse_array("[\"a\", \"b\", \"c\"]");
    for (nconst i := 0; i < sys.vec_len(arr); i = i + 1) {
        sys.println(sys.vec_get(arr, i));
    }
    return 0;
}
```

### Parse an object

```apollo
extern std json;
extern std collections;

int main() {
    nconst map obj = sys.json_parse_object("{\"name\":\"alice\",\"role\":\"admin\"}");
    if (sys.map_has(obj, "name") == 1) {
        sys.println(sys.map_get(obj, "name"));
    }
    return 0;
}
```

### Write a value

```apollo
extern std json;

int main() {
    sys.println(sys.json_write_int(42));
    sys.println(sys.json_write_float(3.14));
    sys.println(sys.json_write_str("hello"));
    sys.println(sys.json_write_bool(1));
    return 0;
}
```

Each writer returns a JSON-encoded string suitable for splicing into a larger document.

### Write an object

```apollo
extern std json;
extern std collections;

int main() {
    nconst map obj = sys.map_new();
    sys.map_set(obj, "name", "alice");
    sys.map_set(obj, "role", "admin");
    sys.println(sys.json_write_object(obj));
    return 0;
}
```

### Streamed manual write

```apollo
extern std json;
extern std buffer;

int main() {
    nconst buffer out = sys.buffer();
    sys.buffer_push_str(out, sys.json_write_object_start());
    sys.buffer_push_str(out, sys.json_write_str("name"));
    sys.buffer_push_str(out, ":");
    sys.buffer_push_str(out, sys.json_write_str("alice"));
    sys.buffer_push_str(out, sys.json_write_object_end());
    sys.println(sys.buffer_text(out));
    return 0;
}
```

Streaming markers let you build JSON piecewise without first constructing a `map`.

## Common mistakes

- **Mismatched parser.** `sys.json_parse_int("3.14")` is wrong; use `json_parse_float`. Pick the parser matching the value's actual type.
- **Forgetting to escape strings in manual streamed writes.** Use `sys.json_write_str` to handle quoting; don't hand-write quoted strings.
- **Confusing returned types.** `parse_int` returns `long`, not `i32`. `parse_bool` returns `i32` (0/1). Be deliberate with types.
- **Parsing malformed JSON.** Behavior is implementation-defined; validate inputs at trust boundaries.
- **Reusing a parsed array/object's handle after it goes out of scope.** Handles are owned by the parser; clone or extract values if you need to outlive the parse.

## See also

- `docs/stdlib/data/docs/collections.md` — `vector` and `map` types used here.
- `docs/stdlib/data/docs/buffer.md` — accumulating output.
- `docs/stdlib/network/docs/net.md` — JSON over HTTP.
- `Apollo-Main/include/json.apollo` — source.
