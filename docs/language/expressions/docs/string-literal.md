# String literals

## What they are

A string literal is a sequence of characters between double quotes. It produces a `str` value. String literals are immutable, length-prefixed UTF-8, and the same `str` value is shared across uses of identical literals when the compiler can prove they are equal.

Apollo has one string-literal form. There are no raw-string or template-literal forms in the grammar; for multi-line or interpolated text, build the result via the `strings` module.

## When you use them

Anywhere you need a constant string value: messages, format specifiers, lookup keys, file paths, configuration defaults, debug output.

## Syntax

```
STRING : '"' (~["\\\n] | escape)* '"' ;
escape : '\\' ['"\\nrt0] | '\\' 'x' HEX HEX | '\\' 'u' '{' HEX+ '}' ;
```

Supported escapes:

- `\\` backslash
- `\"` double quote
- `\'` single quote
- `\n` newline
- `\r` carriage return
- `\t` tab
- `\0` null byte
- `\xNN` byte by hex
- `\u{...}` Unicode code point in hex (1-6 hex digits)

## Semantics

A string literal evaluates to a `str` value. The `str` type is a pointer-and-length pair holding UTF-8 bytes. Literals reside in the program's read-only data section; their bytes are not mutable.

Equal literals may be deduplicated by the compiler — two `"hello"` literals may share storage. Programs must not rely on pointer identity or non-identity of string literals.

The empty literal `""` is a valid `str` of length zero.

## Examples

### Plain literal

```apollo
int main() {
    nconst str greeting = "hello";
    sys.println(greeting);
    return 0;
}
```

### Escapes

```apollo
int main() {
    sys.println("line1\nline2\nline3");
    sys.println("tab\there");
    sys.println("quote: \"inside\"");
    sys.println("backslash: \\");
    return 0;
}
```

Each escape produces its corresponding byte sequence in the literal.

### Unicode escape

```apollo
int main() {
    sys.println("smile: \u{1F600}");
    sys.println("alpha: \u{03B1}");
    return 0;
}
```

The `\u{...}` form encodes the code point as UTF-8.

### Format string for printf

```apollo
int main() {
    sys.printf("count=%d ratio=%f flag=%s\n", 7, 3.14, "ok");
    return 0;
}
```

The format specifier is just a string literal.

### Concatenation via strings module

```apollo
extern std strings;

int main() {
    nconst str a = "hello, ";
    nconst str b = "world";
    sys.println(strings.concat(a, b));
    return 0;
}
```

The `+` operator does not concatenate strings; use `strings.concat`.

### Byte literal via hex escape

```apollo
int main() {
    nconst str payload = "\xde\xad\xbe\xef";
    sys.printf("bytes: %s len=%d\n", payload, strings.length(payload));
    return 0;
}
```

Hex escapes embed arbitrary bytes; the result is a valid `str` even if the bytes are not valid UTF-8 (subject to consumer interpretation).

## Common mistakes

- **Trying to mutate a literal.** String literals are immutable. Any attempt to write through their underlying storage is undefined.
- **Expecting `+` to concatenate.** Apollo's `+` is arithmetic only. Use `strings.concat`.
- **Forgetting to escape.** Embedded `"` or `\` must be escaped.
- **Assuming literal identity.** Two identical literals may share storage; do not depend on it either way.
- **Mixing escape forms.** `\u{...}` expects hex digits; `\xNN` expects exactly two hex digits.

## See also

- `docs/language/types/docs/primitive-types.md` — `str` type.
- `docs/stdlib/text/docs/strings.md` — string operations.
- `docs/stdlib/text/docs/encoding.md` — UTF-8 helpers.
- `docs/stdlib/io/docs/io.md` — printf-style formatting.
