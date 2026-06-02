# For-in loop

## Current surface

Apollo's current `for-in` grammar is:

```antlr
forInStatement : FOR '('? (CONST | NCONST)? typeRef ID IN forInIterable ')'? block ;
forInIterable  : expression ('..' expression)? ;
```

The important details are:

- the separator is `in`, not `:`
- a type is required in the grammar
- the iterable can be an expression or a range-like `expr .. expr`

## Examples from current fixtures

Range form:

```apollo
for (int i in 0 .. 5) {
    // ...
}
```

Vector/set form:

```apollo
for (const str item in xs) {
    // ...
}

for (const str item in names) {
    return item == "a" ? 0 : 1;
}
```

## Current implementation notes

The native backend does not implement a general iterable protocol. Current in-tree coverage and lowering support are focused on concrete surfaces such as:

- range-like `expr .. expr`
- vectors
- set and unordered_set iteration for currently supported element shapes

If you need a broader iterable abstraction, verify it against current backend support rather than assuming the older docs still apply.

## See also

- `Apollo-Main/compiler/compilerv1.g4`
- `Apollo-Main/compiler/tests/loop_forin_smoke.apollo`
- `Apollo-Main/compiler/tests/grammar/pass/vector_str_statement_surface.apollo`
- `Apollo-Main/compiler/tests/grammar/pass/set_statement_surface.apollo`
