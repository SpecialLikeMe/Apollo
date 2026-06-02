# Borrow checker directive

## Current surface

Apollo currently parses borrow-checker directives as top-level directives with two accepted names:

```apollo
#[borrow_checker(mode)]
#[borrow_check(mode)]
```

The grammar rule is:

```apollo
borrowCheckerDirective : '#[' (BORROW_CHECKER_NAME | BORROW_CHECK_NAME) '(' ID ')' ']' ;
```

`BORROW_CHECKER_NAME` is `borrow_checker` and `BORROW_CHECK_NAME` is `borrow_check`.

## What is actually known

The parser accepts any identifier as the mode name. Repository fixtures currently exercise these spellings:

- `#[borrow_checker(off)]`
- `#[borrow_check(none)]`

This page documents the real surface accepted by the current grammar. It does not document the older, broader flag system that is no longer present in the parser.

## Placement

Like `gcDirective`, this is a top-level `program` item:

```apollo
#[borrow_checker(off)]

int main() {
    nconst int value = 1;
    const int& alias = value;
    value = 2;
    return alias;
}
```

Do not write it as a function-local or declaration attribute unless the grammar changes to allow that.

## Implementation notes

- Both `borrow_checker` and `borrow_check` are accepted aliases.
- The argument is parsed as a plain identifier.
- Passing fixtures currently use `off` and `none`.
- Any stronger semantic claim should be checked against the borrow-checker implementation, not inferred from outdated docs.

## Common mistakes

- Writing multi-flag forms such as `#[borrow_checker(strict, ...)]`. That is not the current grammar.
- Assuming function-scoped placement is supported. The current grammar treats this as a top-level directive.
- Treating every identifier as a documented mode. Only fixture-backed names should be treated as established behavior.
