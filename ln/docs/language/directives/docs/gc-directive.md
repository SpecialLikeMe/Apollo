# GC directive

## Current surface

Apollo currently parses GC directives only as top-level directives:

```apollo
#[gc(mode)]
#[gcmode(mode)]
```

The grammar rule is:

```apollo
gcDirective : '#[' (GC_NAME | GCMODE_NAME) '(' ID ')' ']' ;
```

`GC_NAME` is `gc` and `GCMODE_NAME` is `gcmode`.

## What is actually documented here

This page documents the accepted syntax, not an invented matrix of per-type GC behaviors. The directive is a program-level item in the grammar. It is not written as a declaration attribute, and it is not a `#[gc:mode]` surface.

The parser accepts any identifier inside the parentheses. The repository fixtures currently use `total`:

```apollo
#[gc(total)]
#[gcmode(total)]
```

## Placement

`gcDirective` is part of the top-level `program` rule, so it appears as its own top-level item:

```apollo
#[gcmode(total)]

int main() {
    return 0;
}
```

Do not write it as a trailing attribute on a class, function, or struct. That is not the current grammar.

## Implementation notes

- The grammar accepts both `gc` and `gcmode` spellings.
- The mode name is parsed as a plain identifier.
- Passing tests in this repository currently exercise `total`.
- If you need backend-specific GC behavior, verify it against the runtime and compiler implementation rather than assuming older docs are still true.

## Common mistakes

- Writing `#[gc:tracing]` or other colon-based forms. That syntax is not in the current grammar.
- Treating the directive as a declaration attribute. The current parser recognizes it as a top-level directive.
- Assuming every identifier is a documented runtime mode. The parser accepts any `ID`, but only fixture-backed values should be treated as known behavior.
