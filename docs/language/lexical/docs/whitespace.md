# Whitespace

## What it is

Whitespace is the family of non-printing characters that separate tokens but contribute no tokens themselves. Apollo's lexer recognizes:

- Space (`' '`, U+0020).
- Tab (`'\t'`, U+0009).
- Carriage return (`'\r'`, U+000D).
- Line feed (`'\n'`, U+000A).

Whitespace separates tokens but is otherwise discarded.

## When you use it

Constantly — between tokens, indenting code, separating lines. Apollo is not whitespace-sensitive; you have wide latitude in formatting.

## Where whitespace is required

- Between two adjacent identifier-like tokens: `int main` (without the space these would be the single identifier `intmain`).
- Between adjacent keywords: `const int` requires a space; `constint` is one identifier.
- Between adjacent numeric literals.

Where adjacent tokens are unambiguously distinguishable by their characters (`(`, `)`, `,`, `;`, operators), whitespace is optional.

## Where whitespace is optional

- Around operators: `a + b` and `a+b` parse identically.
- Around punctuation: `f(a,b)` and `f( a , b )` parse identically.
- Between any tokens that can't be confused.

## Examples

### Required between identifiers

```apollo
int main() {
    int x = 5;           // 'int' and 'x' must be separated by whitespace
    sys.println(x);
    return 0;
}
```

`intx = 5;` would be parsed as an identifier `intx` with no type.

### Optional around operators

```apollo
int main() {
    nconst int a = 7;
    sys.println(a+1);     // ok: 'a+1' parses as 'a', '+', '1'
    sys.println(a + 1);   // also ok, more readable
    return 0;
}
```

### Optional around punctuation

```apollo
int main() {
    nconst vector<int> v=<1,2,3>;
    sys.println(v[0]);
    return 0;
}
```

Legal but cramped. Whitespace improves readability.

### Newlines as whitespace

```apollo
int main() {
    nconst int x
        =
        7;
    sys.println(x);
    return 0;
}
```

The assignment spans three lines; the lexer treats the newlines as ordinary whitespace.

### Whitespace inside parentheses

```apollo
int main() {
    nconst int total = compute(
        1,
        2,
        3
    );
    sys.println(total);
    return 0;
}
```

Long argument lists span multiple lines without any special continuation syntax.

### Mixed tabs and spaces

```apollo
int main() {
    nconst int x = 1;      // four spaces
	nconst int y = 2;      // one tab
    sys.println(x + y);
    return 0;
}
```

The lexer accepts both. Style guides recommend spaces only for consistency.

## Common mistakes

- **Concatenating identifiers without whitespace.** `intmain` is one identifier, not `int main`.
- **Forgetting `;` after a statement.** Semicolons are required; newlines do not terminate statements.
- **Trailing whitespace** — visually invisible but may trigger editor warnings or VCS noise. Strip it.
- **Carriage-return-only line endings.** Most platforms use `\n` or `\r\n`; `\r` alone is unusual but accepted by the lexer.
- **Trying to use indentation as syntax.** It isn't. Use `{` and `}`.

## See also

- `docs/language/lexical/docs/indentation.md` — indentation conventions.
- `docs/language/lexical/docs/tokens.md` — what tokens whitespace separates.
- `docs/language/lexical/docs/comments.md` — also skipped by the lexer.
- `Apollo-Main/compiler/compilerv1.g4` — the `WS` lexer rule.
