# Comments

## What they are

Comments are source-level annotations the lexer skips. Apollo supports two forms:

- Line comments — `// text` extending to end of line.
- Block comments — `/* text */` spanning any number of lines, nesting permitted.

Comments produce no tokens; they do not affect program behavior or semantics.

## When you use them

- Explaining a non-obvious decision or constraint.
- Annotating tricky code with intent.
- Temporarily disabling code during development.
- Marking TODOs and FIXMEs that tooling can grep.

For documentation, prefer the docs/ structure (this very tree) over inline comments — long explanations belong in dedicated docs.

## Syntax

```
LINE_COMMENT  : '//' (~[\r\n])* ;
BLOCK_COMMENT : '/*' (BLOCK_COMMENT | .)*? '*/' ;
```

Block comments may nest. The closing `*/` matches the most recent unmatched opener.

## Semantics

Comments are skipped by the lexer. They contribute nothing to the token stream and no AST node represents them.

Comments may appear:

- Between any two tokens.
- At any level of indentation.
- Inside expressions, declarations, blocks.

They may NOT appear inside string literals or inside the RAW_TEXT body of an inline foreign block (where the foreign compiler's own comment rules apply).

## Examples

### Line comment

```apollo
int main() {
    // The default for bindings is immutable; nconst opts in to mutability.
    nconst int counter = 0;
    counter = counter + 1;
    sys.println(counter);
    return 0;
}
```

### Block comment

```apollo
int main() {
    /*
     * Initialize a small vector for the demo.
     * The composite-literal syntax builds the contents in place.
     */
    nconst vector<int> v = <1, 2, 3>;
    sys.println(v[0]);
    return 0;
}
```

### Nested block comment

```apollo
int main() {
    /* outer
        /* inner */
        outer still
    */
    sys.println("compiled");
    return 0;
}
```

The lexer matches nested `/*` and `*/` correctly.

### Inline comment

```apollo
int main() {
    nconst int n = 7 /* the answer minus one */ + 1;
    sys.println(n);
    return 0;
}
```

Block comments can appear anywhere between tokens.

### Commenting out code

```apollo
int main() {
    nconst int active = 1;
    // nconst int debug = 0;     // disabled for now
    sys.println(active);
    return 0;
}
```

Quick way to disable a line during development.

### TODO marker

```apollo
int compute(int n) {
    // TODO: handle negative inputs once the spec is finalized
    return n * n;
}
```

Grep-friendly markers; the language treats them as ordinary comments.

## Common mistakes

- **Unterminated block comment.** A `/*` without `*/` consumes the rest of the file. Always close.
- **Putting `*/` inside a string and assuming it ends a comment.** It doesn't; comments don't apply inside strings.
- **Nesting mistakes.** While Apollo's block comments nest, count carefully — mismatched openers/closers produce confusing errors.
- **Relying on comments for documentation users will read.** Comments live with code; docs live in this tree. Use the right place for each.
- **Comment-only files.** A file with only comments parses but produces no declarations — usually accidental.

## See also

- `docs/language/lexical/docs/tokens.md` — the token set.
- `docs/language/lexical/docs/whitespace.md` — what else the lexer skips.
- `docs/README.md` — where prose documentation belongs.
- `Apollo-Main/compiler/compilerv1.g4` — comment lexer rules.
