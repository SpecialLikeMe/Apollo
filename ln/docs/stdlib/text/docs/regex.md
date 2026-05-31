# `std regex`

## What it is

The `regex` module compiles regular expressions and runs them against strings: match, find, replace. A compiled regex is an opaque `regex` handle; you compile once and reuse the handle for many operations.

The pattern syntax is the C++ ECMAScript dialect (via `std::regex` or an equivalent backend in the runtime). The module is intentionally minimal — five functions — covering the common cases without getting into capture groups, named matches, or stream interfaces.

## When you use it

- Validating input against a pattern.
- Extracting a single match from a string.
- Replacing the first or all matches with another string.
- Inspecting compilation errors when a pattern is malformed.

For richer regex usage (captures, iteration over all matches), reach for a custom helper on top of these primitives.

## API surface

All in `namespace sys`:

- `sys.regex_compile(pattern)` → `regex` handle.
- `sys.regex_is_match(re, text)` → `i32` (1 if `text` matches the pattern fully).
- `sys.regex_find(re, text)` → `str` (the first match, or empty string if no match).
- `sys.regex_replace(re, text, replacement)` → `str` (text with matches replaced).
- `sys.regex_error(re)` → `str` (empty if compilation succeeded; otherwise the error message).

## Examples

### Compile and match

```apollo
extern std regex;

int main() {
    nconst regex re = sys.regex_compile("[a-z]+");
    sys.println(sys.regex_is_match(re, "hello"));   // 1
    sys.println(sys.regex_is_match(re, "Hello"));   // 0 (uppercase 'H' fails full match)
    return 0;
}
```

### Find first

```apollo
extern std regex;

int main() {
    nconst regex re = sys.regex_compile("[0-9]+");
    sys.println(sys.regex_find(re, "abc 123 def 456"));   // "123"
    return 0;
}
```

`regex_find` returns the first match's text; for "no match" it returns the empty string.

### Replace

```apollo
extern std regex;

int main() {
    nconst regex re = sys.regex_compile("[0-9]+");
    sys.println(sys.regex_replace(re, "abc 123 def 456", "###"));
    // "abc ### def ###"  (replaces all matches in std::regex's default semantics)
    return 0;
}
```

### Inspecting compile errors

```apollo
extern std regex;

int main() {
    nconst regex bad = sys.regex_compile("[unterminated");
    nconst str err = sys.regex_error(bad);
    if (sys.str_len(err) > 0) {
        sys.println("compile error: ${err}");
    } else {
        sys.println("compiled ok");
    }
    return 0;
}
```

The handle is still returned but `regex_error` reports the failure.

### Validating input

```apollo
extern std regex;

i32 looks_like_email(nconst str& input) {
    nconst regex re = sys.regex_compile("[^@]+@[^@]+\\.[^@]+");
    return sys.regex_is_match(re, input);
}

int main() {
    sys.println(looks_like_email("alice@example.com"));    // 1
    sys.println(looks_like_email("not an email"));         // 0
    return 0;
}
```

A common pattern: compile per validation function (or hoist the regex out for hot paths).

### Reusing a compiled regex

```apollo
extern std regex;
extern std collections;

void filter_alphanumeric(nconst vector& words) {
    nconst regex re = sys.regex_compile("[a-zA-Z0-9]+");
    for (nconst i := 0; i < sys.vec_len(words); i = i + 1) {
        nconst str w = sys.vec_get(words, i);
        if (sys.regex_is_match(re, w) == 1) {
            sys.println(w);
        }
    }
}

int main() {
    nconst vector v = sys.vec_new();
    sys.vec_push(v, "hello");
    sys.vec_push(v, "hi!");
    sys.vec_push(v, "abc123");
    filter_alphanumeric(v);
    return 0;
}
```

Compile once, use many times.

## Common mistakes

- **Treating `regex_is_match` as substring search.** It tests for a full match of the pattern against the text. For substring search, use `regex_find` (non-empty result means a match was found).
- **Not checking `regex_error`.** A bad pattern produces a handle that fails silently; check error after compile if the pattern is user-supplied.
- **Recompiling in a hot loop.** Compilation is expensive; hoist the compile out of the loop.
- **Forgetting to escape regex metacharacters.** `.`, `*`, `+`, `?`, `()`, `[]`, `{}`, `|`, `\` are special; escape them when matching literally.
- **Expecting capture-group output.** `regex_find` returns the full match. For captures, you need a richer interface than this module currently exposes.

## See also

- `docs/stdlib/text/docs/strings.md` — non-regex string operations.
- `docs/stdlib/text/docs/encoding.md` — validate/encode before applying regex.
- `docs/stdlib/data/docs/collections.md` — `vector` for batches of inputs.
- `Apollo-Main/include/regex.apollo` — source.
