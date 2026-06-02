# Cast expression

## Current surface

Apollo's current cast syntax is C-style, not `as`:

```antlr
castExpr : '(' castType ')' primary ;
castType : typeRef ;
```

Examples from current fixtures:

```apollo
i32 narrowed = (i32)local;
i32** placed = (i32**)new[heap] i32*;
```

## Notes

- The operand is a `primary` expression in the current grammar.
- The old `value as Type` documentation is not accurate for the current parser.
- The native backend has dedicated lowering for cast expressions and performs the casts it knows how to lower across integer and pointer shapes.

## See also

- `Apollo-Main/compiler/compilerv1.g4`
- `Apollo-Main/compiler/cpp/src/visitor.cpp`
- `Apollo-Main/compiler/tests/grammar/pass/language_surface.apollo`
- `Apollo-Main/compiler/tests/grammar/pass/runtime_surface.apollo`
