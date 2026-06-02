# Lambda

## Current surface

Apollo's current lambda grammar is assignment-based:

```antlr
lambda : typeRef ID '=' 'lmd' '->' lambdaDefinition ;
lambdaDefinition : function | lambdaLiteral ;
lambdaLiteral : returnType? '(' params? ')' block ;
```

So the accepted shape is:

```apollo
type name = lmd-> (...) { ... }
```

not `lambda (...) -> ...`.

## Current backend behavior

The native backend supports two cases:

- If the left-hand type is a function type, the lambda is lowered as a callable and stored in that binding.
- If the left-hand type is not a function type, the lambda must lower to a zero-argument, value-returning callable and is immediately invoked. The binding receives the result value.

That immediate-evaluation path is the one exercised by current grammar fixtures:

```apollo
i32 eager = lmd-> () {
    return promoted;
}
```

## Notes

- The grammar does not use the `lambda` keyword.
- The body can be a full function-shaped definition or a literal parameter list plus block.
- The current repository fixtures exercise immediate-evaluation, not a large library of higher-order lambda examples.

## See also

- `docs/language/functions-and-interop/docs/closure.md`
- `Apollo-Main/compiler/cpp/src/visitor.cpp`
- `Apollo-Main/compiler/tests/grammar/pass/language_surface.apollo`
