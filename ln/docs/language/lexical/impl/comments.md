# Comments — implementation

## Grammar surface

```antlr
LINE_COMMENT  : '//' (~[\r\n])*  -> skip ;
BLOCK_COMMENT : '/*' (BLOCK_COMMENT | .)*? '*/' -> skip ;
```

Both rules are tagged with `-> skip` in ANTLR, meaning the lexer discards the matched text without producing a token.

## Lexer behavior

- Line comments terminate at the next CR or LF.
- Block comments are recursive in ANTLR4's syntax: the rule references itself to permit nesting.
- The lexer does not attach comments to subsequent tokens; comments are pure whitespace from the parser's perspective.

## Frontend handling

None — the frontend never sees comments.

## Lowering

None.

## Runtime support

None.

## Edges and gotchas

- The recursive lexer rule for block comments relies on ANTLR's non-greedy match (`.*?`). Performance is linear in source length.
- A comment inside a string literal is not a comment — strings have their own rules.
- A comment inside an inline foreign block's RAW_TEXT body is delegated to the foreign compiler; Apollo's lexer treats the entire RAW_TEXT as a single block.
- The `-> skip` tag means comments do not contribute to token position calculations beyond advancing the lexer's input pointer.

## Source of truth

- Grammar / lexer: `Apollo-Main/compiler/compilerv1.g4` (`LINE_COMMENT`, `BLOCK_COMMENT`)
