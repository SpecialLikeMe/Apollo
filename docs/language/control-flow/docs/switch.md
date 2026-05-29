# Switch statement

## What it is

The `switch` statement selects one of several blocks to run based on the value of a scrutinee expression. Each `case` lists one or more constant values; the first matching case runs and the rest are skipped. An optional `default` case runs when no listed case matches.

`switch` is the right shape when you have many discrete values to dispatch on. For two or three values, `if`/`else if` is clearer; for pattern matching on shapes or sum types, the matching forms are stronger.

## When you use it

You reach for `switch` when:

- You dispatch on an integer code, an enum value, a small string set, or any other set of discrete constants.
- The branches are independent — each case runs its own block and does not need to share state with neighboring cases.
- You want exhaustiveness when the scrutinee has a known set of values (with a `default` to catch the rest).

## Syntax

```
switchStatement
    : 'switch' '(' expression ')' '{'
        (caseClause)*
        defaultClause?
      '}'
    ;
caseClause    : 'case' caseValue (',' caseValue)* ':' block ;
defaultClause : 'default' ':' block ;
caseValue     : INT | STRING | ID ;     // constant expression
```

Each case's values are constant expressions. The block under each case is independent and does not fall through to the next case.

## Semantics

The scrutinee is evaluated once. Cases are tested in source order; the first case whose value list contains a match runs. The matching block executes once, then the entire `switch` exits — there is no fallthrough.

If no case matches and a `default` clause is present, the `default` block runs. If no case matches and no `default` clause is present, the `switch` exits without running any block.

Each case block is a normal brace block with its own scope. `break` is not required to leave a case (because there is no fallthrough), but a `break` inside a case still exits the surrounding `switch` early — useful inside nested control flow.

`return` inside a case exits the enclosing function. `continue` inside a case is rejected; `continue` belongs to loops only.

## Examples

### Dispatching on an integer code

```apollo
str describe(int code) {
    switch (code) {
        case 0: { return "ok"; }
        case 1: { return "not found"; }
        case 2: { return "permission denied"; }
        default: { return "unknown"; }
    }
}

int main() {
    sys.println(describe(0));
    sys.println(describe(1));
    sys.println(describe(99));
    return 0;
}
```

Each case returns. The `default` covers the long tail.

### Combining multiple values in one case

```apollo
str day_kind(int weekday) {
    switch (weekday) {
        case 0, 6: { return "weekend"; }
        case 1, 2, 3, 4, 5: { return "weekday"; }
        default: { return "invalid"; }
    }
}

int main() {
    sys.println(day_kind(0));
    sys.println(day_kind(3));
    sys.println(day_kind(7));
    return 0;
}
```

Multiple comma-separated values in a single case share the same block.

### Switching on strings

```apollo
int port_for(str protocol) {
    switch (protocol) {
        case "http":  { return 80; }
        case "https": { return 443; }
        case "ssh":   { return 22; }
        default:      { return -1; }
    }
}

int main() {
    sys.println(port_for("https"));
    sys.println(port_for("ftp"));
    return 0;
}
```

String case values compare for equality.

### Side-effect-only cases

```apollo
extern std collections;

void route(int kind, nconst vector<str>& log) {
    switch (kind) {
        case 1: {
            collections.vector.push(log, "small");
        }
        case 2: {
            collections.vector.push(log, "medium");
        }
        case 3: {
            collections.vector.push(log, "large");
        }
        default: {
            collections.vector.push(log, "other");
        }
    }
}

int main() {
    nconst vector<str> log = <>;
    route(1, &nconst log);
    route(2, &nconst log);
    route(99, &nconst log);
    for (nconst str entry : log) {
        sys.println(entry);
    }
    return 0;
}
```

Cases need not return — they can simply produce side effects and exit normally.

### Switch as part of a larger function

```apollo
int parse_digit(str s) {
    if (strings.length(s) != 1) {
        return -1;
    }
    nconst u8 b = strings.byte_at(s, 0);
    switch (b) {
        case 48, 49, 50, 51, 52, 53, 54, 55, 56, 57: {
            return b - 48;
        }
        default: {
            return -1;
        }
    }
}

extern std strings;

int main() {
    sys.println(parse_digit("7"));
    sys.println(parse_digit("x"));
    sys.println(parse_digit("42"));
    return 0;
}
```

A `switch` over a byte's ASCII value with a single combined case for the digit range.

## Common mistakes

- **Expecting fallthrough.** There is none. Each case is independent.
- **Non-constant case values.** Case values must be compile-time constants. Variables are rejected.
- **Duplicate case values.** Two cases listing the same value are rejected by the frontend.
- **Forgetting `default` when needed.** Without `default`, a non-matching scrutinee silently skips the entire switch. Add `default` whenever exhaustiveness matters.
- **Using `continue` inside a case.** `continue` belongs to loops; inside a `switch` it is rejected.

## See also

- `docs/language/control-flow/docs/if-statement.md` — fewer cases or non-constant tests.
- `docs/language/control-flow/docs/return.md` — early exit from cases.
- `docs/language/expressions/docs/conditional-expression.md` — value-producing two-way choice.
