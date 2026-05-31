# Tokens — implementation

## Grammar surface

The lexer rules occupy the lower half of `Apollo-Main/compiler/compilerv1.g4`. ANTLR generates a tokenizer from those rules. The token set includes:

- Explicit keywords listed as string literals in parser rules (e.g. `'if'`, `'else'`).
- Named lexer rules (`ID`, `INT_LIT`, `FLOAT_LIT`, `STRING`, `RAW_TEXT`, etc.).
- Operator and punctuation tokens listed as string literals.

ANTLR's longest-match disambiguation handles operator overlaps (`+`, `++`, `+=`, etc.).

## Lexer behavior

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp` (or its lexer-adjacent code):

1. Reads UTF-8 source text.
2. Skips whitespace and comments per the `WS` and `COMMENT` lexer rules.
3. Produces a token stream consumed by the ANTLR-generated parser.
4. Token positions (line, column, span) are preserved on each token for diagnostics.

## Keyword reservation

Keywords are reserved at the lexer level; the parser never sees them as `ID` tokens. Adding a keyword therefore requires care — it breaks any code using that name as an identifier.

## Lowering

Tokens themselves do not lower. They are consumed by the parser to build an AST, which is then validated and lowered.

## Runtime support

None.

## Edges and gotchas

- The `<` token serves multiple roles (less-than, generic open). The parser disambiguates via context; no special lexer state is required.
- Multi-character operators are recognized greedily (`<<=` is one token, not `<<` + `=`).
- The `#[` token is a single unit to avoid ambiguity with an attribute opener inside an expression.
- The `RAW_TEXT` token used inside inline foreign blocks suspends ordinary tokenization until the matching `}`.

## Source of truth

- Grammar / lexer: `Apollo-Main/compiler/compilerv1.g4`
- Frontend: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Token-position diagnostics: same file plus ANTLR runtime in `Apollo-Main/compiler/deps/`
