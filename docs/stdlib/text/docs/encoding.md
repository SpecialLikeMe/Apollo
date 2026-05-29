# `std encoding`

## What it is

The `encoding` module exports string validation and encoding helpers: ASCII and UTF-8 validation, UTF-8 character counting, hex encode/decode, URL percent-encode/decode, and Base64 encode/decode. All operate on `str` and call into native helpers backed by the C++ runtime.

## When you use it

- Validating untrusted input (is this really UTF-8?).
- Producing safe URLs (percent-encoding).
- Serializing binary data to text (hex, Base64).
- Counting glyphs rather than bytes (UTF-8 character count).

## API surface

All in `namespace sys`:

Validation:

- `sys.ascii_validate(value)` → `i32` (1 if all bytes are 7-bit ASCII).
- `sys.utf8_validate(value)` → `i32` (1 if the byte sequence is valid UTF-8).
- `sys.utf8_char_count(value)` → `i32` (number of UTF-8 code points).

Encoding:

- `sys.hex_encode(value)` / `sys.hex_decode(value)`.
- `sys.url_encode(value)` / `sys.url_decode(value)`.
- `sys.base64_encode(value)` / `sys.base64_decode(value)`.

## Examples

### Validate UTF-8

```apollo
extern std encoding;

int main() {
    nconst str a = "hello";
    nconst str b = "héllo";
    sys.printf("a ascii=%d utf8=%d chars=%d\n",
        sys.ascii_validate(a), sys.utf8_validate(a), sys.utf8_char_count(a));
    sys.printf("b ascii=%d utf8=%d chars=%d\n",
        sys.ascii_validate(b), sys.utf8_validate(b), sys.utf8_char_count(b));
    return 0;
}
```

`b` is valid UTF-8 (`héllo`) but not pure ASCII; its character count is 5 even though it's 6 bytes.

### Hex round-trip

```apollo
extern std encoding;

int main() {
    nconst str raw = "Hello";
    nconst str hex = sys.hex_encode(raw);
    sys.println(hex);                       // 48656c6c6f
    sys.println(sys.hex_decode(hex));       // Hello
    return 0;
}
```

### URL encoding

```apollo
extern std encoding;

int main() {
    nconst str raw = "hello world & friends?";
    nconst str enc = sys.url_encode(raw);
    sys.println(enc);                       // hello%20world%20%26%20friends%3F
    sys.println(sys.url_decode(enc));       // hello world & friends?
    return 0;
}
```

### Base64

```apollo
extern std encoding;

int main() {
    nconst str raw = "Apollo";
    nconst str b64 = sys.base64_encode(raw);
    sys.println(b64);                       // QXBvbGxv
    sys.println(sys.base64_decode(b64));    // Apollo
    return 0;
}
```

### Building a URL with query

```apollo
extern std encoding;

str build_search(nconst str& q) {
    return "https://example.com/search?q=${sys.url_encode(q)}";
}

int main() {
    sys.println(build_search("hello world"));
    return 0;
}
```

### Detect non-ASCII input

```apollo
extern std encoding;

void process(nconst str& input) {
    if (sys.ascii_validate(input) == 0) {
        sys.println("warning: contains non-ASCII characters");
    }
    if (sys.utf8_validate(input) == 0) {
        sys.println("error: not valid UTF-8");
        return;
    }
    sys.println("ok");
}

int main() {
    process("plain ascii");
    process("emoji: 🎉");
    return 0;
}
```

## Common mistakes

- **Assuming `str_len` returns characters.** `sys.str_len` returns bytes. Use `sys.utf8_char_count` for characters.
- **Round-tripping invalid input.** `hex_decode` of a non-hex string is implementation-defined; validate first.
- **URL-encoding entire URLs.** Encode the path/query *components*, not the entire URL — the slashes and `?` should remain.
- **Base64 line wrapping.** The encoder does not wrap; if you need MIME-style 76-column wrapping, do it yourself.
- **Treating ASCII validation as a security boundary.** It only checks byte values; pair with deeper validation if you care about the input's structure.

## See also

- `docs/stdlib/text/docs/strings.md` — broader string operations.
- `docs/stdlib/text/docs/regex.md` — pattern matching after validation.
- `docs/stdlib/network/docs/net.md` — URL encoding feeds HTTP requests.
- `Apollo-Main/include/encoding.apollo` — source.
