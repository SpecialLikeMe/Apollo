# Borrow expression

## Current surface

Apollo's current borrow-expression grammar is narrower than the older docs described:

```antlr
borrowExpr : '&' NCONST? ID
           | '.&' ID
           ;
```

That means the accepted forms are currently identifier-based:

```apollo
&value
&nconst value
.&x
```

## What these forms mean today

- `&value` and `&nconst value` are the borrow-expression forms used by the borrow/reference system.
- `.&value` is the raw-address form used in unsafe/pointer-oriented code.

The current grammar does not define a general `&(arbitrary expression)` borrow form.

## Examples from current fixtures

```apollo
const str& alias = &message;
nconst str& alias = &nconst value;
```

Unsafe raw address example:

```apollo
@unsafe {
    int* p = .&x;
    *p = 90;
}
```

## Notes

- If you see older docs borrowing fields, indexes, or arbitrary expressions directly, that no longer matches the current grammar.
- Borrow-checker semantics still matter, but this page only claims the syntax that the parser currently accepts.

## See also

- `Apollo-Main/compiler/compilerv1.g4`
- `Apollo-Main/compiler/tests/safety/pass/reference_identity.apollo`
- `Apollo-Main/compiler/tests/grammar/pass/pointer_expression_surface.apollo`
