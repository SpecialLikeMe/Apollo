# `std strings`

## What it is

The `strings` module is Apollo's string toolkit. It has two layers:

- **Trivial pure-Apollo helpers** — `empty`, `space`, `newline`, `tab`, `brackets`, `parens`, `join_space`, `join_colon`, `pair_i32`, `label_i32`, `status`. These are one-liners using string interpolation to build small formatted strings.
- **Native-backed string operations** — `str_len`, `str_concat`, `str_trim*`, `str_lowercase`/`uppercase`/`titlecase`, `str_contains`, `str_starts_with`, `str_ends_with`, `str_find`, `str_replace`, `str_substring`, `str_split`, `str_join`, etc. (the file is long).

This module is what `std io` uses for formatting and what most user code uses for string manipulation.

## When you use it

- Building human-readable output.
- Cleaning and normalizing user input (trim, lowercase).
- Searching and replacing in strings.
- Splitting input into parts and joining results.

## API surface (selected)

Trivial helpers:

- Constants: `sys.empty()`, `sys.space()`, `sys.newline()`, `sys.tab()`.
- Wrappers: `sys.brackets(v)`, `sys.parens(v)`.
- Joins: `sys.join_space(l, r)`, `sys.join_colon(l, r)`.
- Format: `sys.pair_i32(l, r)`, `sys.label_i32(label, value)`, `sys.status(label, value)`.

Native-backed (selected):

- Size: `sys.str_len(value)` — byte length.
- Combine: `sys.str_concat(left, right)`.
- Trim: `sys.str_trim`, `sys.str_trim_start`, `sys.str_trim_end`.
- Case: `sys.str_lowercase`, `sys.str_uppercase`, `sys.str_titlecase`.
- Search: `sys.str_contains(value, sub)`.

(The file exposes more — see source for the full list.)

## Examples

### Trivial formatting

```apollo
extern std strings;

int main() {
    sys.println(sys.brackets("important"));         // [important]
    sys.println(sys.join_colon("status", "ok"));    // status: ok
    sys.println(sys.label_i32("count", 42));        // count: 42
    sys.println(sys.pair_i32(3, 4));                // 3, 4
    return 0;
}
```

### Trim and case

```apollo
extern std strings;

int main() {
    nconst str raw = "  Hello World  ";
    sys.println(sys.str_trim(raw));                 // "Hello World"
    sys.println(sys.str_lowercase(raw));            // "  hello world  "
    sys.println(sys.str_uppercase(sys.str_trim(raw))); // "HELLO WORLD"
    return 0;
}
```

### Concatenation

```apollo
extern std strings;

int main() {
    nconst str greeting = sys.str_concat("hello, ", "world");
    sys.println(greeting);
    return 0;
}
```

For more than two strings, chain or use `std buffer`.

### Substring check

```apollo
extern std strings;

int main() {
    nconst str haystack = "apollo programming";
    if (sys.str_contains(haystack, "program") == 1) {
        sys.println("found");
    }
    return 0;
}
```

### Title case for display

```apollo
extern std strings;

int main() {
    nconst str name = "alice in wonderland";
    sys.println(sys.str_titlecase(name));            // "Alice In Wonderland"
    return 0;
}
```

### Composing with other helpers

```apollo
extern std strings;

int main() {
    nconst str status_line = sys.brackets(sys.label_i32("score", 87));
    sys.println(status_line);                        // "[score: 87]"
    return 0;
}
```

The helpers compose naturally — wrap, label, format.

## Common mistakes

- **`str_len` returns bytes, not characters.** For character count, use `sys.utf8_char_count` from `std encoding`.
- **Concatenating in a loop.** Each `str_concat` allocates; for many pieces use `std buffer`.
- **Trim variations.** `str_trim` removes both sides; `_start` and `_end` are one-sided.
- **Case operations and locale.** The helpers use the platform's default locale rules; for explicit locale handling, use a dedicated library.
- **Using `str_contains` for full-match validation.** Substring presence does not imply a full match; for that pattern, use `std regex`.

## See also

- `docs/stdlib/data/docs/buffer.md` — accumulating many string pieces.
- `docs/stdlib/text/docs/encoding.md` — encoding, validation, UTF-8 character count.
- `docs/stdlib/text/docs/regex.md` — pattern matching on strings.
- `Apollo-Main/include/strings.apollo` — source.
