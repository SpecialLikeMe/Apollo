# Whitespace — implementation

## Grammar surface

```antlr
WS : [ \t\r\n]+ -> skip ;
```

A single lexer rule matches any run of whitespace characters and discards them.

## Lexer behavior

Whitespace runs are consumed and produce no tokens. Token positions advance past the consumed characters.

The lexer does not distinguish among the four whitespace characters — they are all equivalent.

## Frontend handling

None — the frontend never sees whitespace.

## Lowering

None.

## Runtime support

None.

## Edges and gotchas

- The lexer treats `\r\n` and `\n` identically. Source files with either line ending parse the same way.
- Trailing whitespace inside a file is permitted; the lexer simply consumes it as part of the final WS token.
- A file consisting entirely of whitespace and comments produces an empty AST, which then fails the requirement for at least one top-level declaration (typically `int main()`).
- Unicode whitespace characters beyond ASCII space/tab/CR/LF are not recognized; they would appear as lexer errors.

## Source of truth

- Grammar / lexer: `Apollo-Main/compiler/compilerv1.g4` (`WS` rule)
