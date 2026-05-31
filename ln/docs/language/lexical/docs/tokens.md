# Tokens

## What they are

Tokens are the lowest-level units the Apollo lexer produces from source text. Every keyword, identifier, literal, operator, and punctuation mark becomes one token, and every parsing rule consumes a sequence of tokens. Understanding the token set is the foundation for understanding everything else.

## Categories

Apollo's token set falls into five categories:

- **Keywords** — reserved words like `if`, `for`, `class`, `nconst`, `template`, `extern`, `nativemode`, `lambda`, `closure`, `malloc`, `free`, `plcnew`, `delete`, `await`, `async`, `syscall`, `void`, `true`, `false`, `null`, `self`, `super`, etc.
- **Identifiers** — `ID` tokens matching `[a-zA-Z_][a-zA-Z0-9_]*` that aren't keywords.
- **Literals** — integer, float, string, char (where supported), bool, null.
- **Operators** — `+`, `-`, `*`, `/`, `%`, `&`, `|`, `^`, `~`, `<<`, `>>`, `&&`, `||`, `!`, `==`, `!=`, `<`, `<=`, `>`, `>=`, `=`, `+=`, `-=`, `*=`, `/=`, `%=`, `&=`, `|=`, `^=`, `<<=`, `>>=`, `as`, `->`, `?`.
- **Punctuation** — `(`, `)`, `[`, `]`, `{`, `}`, `,`, `;`, `:`, `.`, `::`, `#[`, `]`.

Whitespace and comments are recognized by the lexer but do not produce tokens — they are skipped.

## When you care

Most of the time you don't think about tokens directly. They matter when:

- Diagnosing parser errors that mention "unexpected token X" or "expected token Y".
- Understanding why a particular spelling is accepted or rejected.
- Writing tooling (syntax highlighting, formatters) that consumes the same token stream.

## Reserved keywords

The full keyword list (subject to small additions):

```
if, else, switch, case, default, for, while, do, loop,
return, break, continue, throw, try, catch, finally,
class, struct, memstruct, interface, function, fn,
template, macro, async, await, lambda, closure,
const, nconst, stt, nst, public, private, virtual,
extern, include, import, as, self, super,
new, plcnew, delete, malloc, free, sizeof, alignof,
true, false, null, void, ato,
i8, i16, i32, i64, u8, u16, u32, u64, f32, f64, bool, str, int,
nativemode, no_runtime, no_borrow_panic, c_abi_only,
syscall, inline, foreign, export
```

Identifiers cannot reuse any of these.

## Examples

### Identifier vs keyword

```apollo
int main() {
    int x = 5;             // ok: x is an identifier
    // int class = 10;     // rejected: class is a keyword
    sys.println(x);
    return 0;
}
```

### Compound operators

```apollo
int main() {
    nconst int n = 1;
    n += 10;       // single token '+=' followed by ' 10'
    n <<= 2;       // single token '<<='
    sys.println(n);
    return 0;
}
```

Operators are tokenized greedily; the longest match wins.

### Punctuation in declarations

```apollo
class Point {
    public:                // tokens: 'public', ':'
    const i32 x;           // tokens: 'const', 'i32', 'x', ';'
};                         // token: '}', ';'
```

### Attribute opener

```apollo
#[lto:full]              // single token '#[' followed by 'lto', ':', 'full', ']'
int hot() { return 1; }
```

The `#[` is tokenized as one unit; the `]` is a separate token.

### Operator overlap

```apollo
int main() {
    nconst int* p = malloc<i32>();      // '<' is grammar-disambiguated
    *p = 5;
    sys.println(*p);
    free(p);
    return 0;
}
```

`<` and `>` serve as both comparison operators and generic-argument brackets; the parser disambiguates by context.

### Numeric literal tokenization

```apollo
int main() {
    nconst u32 a = 0xff_aa_00;      // single hex literal token
    nconst f64 b = 1_000.5e2;       // single float literal token
    sys.printf("%x %f\n", a, b);
    return 0;
}
```

Underscores within numeric literals are part of the same token; whitespace is not.

## Common mistakes

- **Using a reserved keyword as an identifier.** Rejected with "expected identifier" or similar.
- **Splitting an operator with whitespace.** `+ =` is `+` followed by `=`, not `+=`.
- **Forgetting `;` at statement end.** Rejected — semicolon is required.
- **Mixing `<` for generic args with `<<` for shift.** The parser handles this, but adjacent ambiguity in macros or templates can require explicit parentheses.
- **Stray `#[` without matching `]`.** The lexer reads `#[` as one token; if the closing `]` is missing, expect a parse error well past the actual problem.

## See also

- `docs/language/lexical/docs/comments.md` — comment forms.
- `docs/language/lexical/docs/whitespace.md` — whitespace rules.
- `docs/language/expressions/docs/numeric-literal.md`, `string-literal.md`, `bool-literal.md` — literal token forms.
- `Apollo-Main/compiler/compilerv1.g4` — the canonical grammar.
