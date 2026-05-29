# Indentation

## What it is

Apollo does *not* use indentation as syntax. Block structure is delimited by `{` and `}`. Indentation is purely a stylistic convention — the compiler ignores it.

This page documents the convention used throughout the codebase and stdlib, and why it matters for readability even though the compiler doesn't enforce it.

## Convention

- **Four spaces per level**, no tabs. The compiler is indifferent; the stdlib and reference codebase use four spaces.
- **Block bodies indented one level** beyond their opening line.
- **Continuation lines indented one level** beyond the line they continue.
- **Attribute blocks at the same level** as the declaration they decorate.
- **Multi-line composite literals** indented one level inside the brackets.

## When indentation matters

Indentation never affects compilation. It affects:

- Diff readability.
- Code review clarity.
- Editor folding behavior.
- Searching for blocks visually.

Auto-formatter tools (when available) normalize indentation to the four-space convention.

## Examples

### Standard nesting

```apollo
int main() {
    nconst int x = 7;
    if (x > 0) {
        for (nconst i := 0; i < x; i = i + 1) {
            sys.println(i);
        }
    }
    return 0;
}
```

Each nested level adds four spaces.

### Continuation

```apollo
int main() {
    nconst int sum =
        compute_a(1, 2, 3) +
        compute_b(4, 5, 6) +
        compute_c(7, 8, 9);
    sys.println(sum);
    return 0;
}
```

Continuation lines start one indent level deeper than the statement's starting line.

### Composite literal

```apollo
extern std collections;

int main() {
    nconst vector<vector<int>> matrix = <
        <1, 2, 3>,
        <4, 5, 6>,
        <7, 8, 9>
    >;
    sys.println(matrix[1][1]);
    return 0;
}
```

Inner elements aligned at one extra indent level.

### Attribute on declaration

```apollo
#[gc:tracing]
class Node {
    public:
    const i32 id;
    nconst Node* next;
};
```

The attribute is at the same column as `class`. Members are indented one level inside the braces.

### Long function signature

```apollo
int complicated_function(
    nconst int parameter_one,
    nconst int parameter_two,
    nconst int parameter_three
) {
    return parameter_one + parameter_two + parameter_three;
}
```

Long parameter lists break across lines with each parameter at one indent level deeper.

### Try/catch/finally

```apollo
int main() {
    try {
        risky_operation();
    } catch (str msg) {
        sys.printf("error: %s\n", msg);
    } finally {
        cleanup();
    }
    return 0;
}
```

Each handler block sits at the same column as the preceding `}`.

## Common mistakes

- **Mixing tabs and spaces.** Visually inconsistent across editors. Use spaces exclusively.
- **Inconsistent indent width.** Stick to four spaces; mixed widths confuse the reader.
- **Indenting attribute blocks separately.** The attribute and its declaration are visually one unit; align them.
- **Over-indenting continuation.** One extra level is enough; don't pile on multiple.
- **Skipping indentation in short blocks.** `{ stmt; }` on one line is fine but multi-line blocks should always indent.

## See also

- `docs/language/lexical/docs/whitespace.md` — broader whitespace rules.
- `docs/language/lexical/docs/tokens.md` — what the lexer actually sees.
- `Apollo-Main/include/*.apollo` — examples following the convention.
- `Apollo-Main/compiler/compilerv1.g4` — confirms there is no indentation syntax.
