# String literals — implementation

## Grammar surface

The lexer token:

```antlr
STRING : '"' (~["\\\n] | EscapeSeq)* '"' ;

EscapeSeq
    : '\\' ['"\\nrt0]
    | '\\' 'x' HexDigit HexDigit
    | '\\' 'u' '{' HexDigit+ '}'
    ;
```

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Decodes escapes during lexing.
2. Stores the decoded byte sequence and length.
3. Marks the literal as a `str` value of the decoded length.
4. Deduplicates against the literal pool — identical content shares one constant.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

- Each unique literal is emitted as an LLVM private constant byte array in the program's read-only data section.
- The literal's value is a `{ i8*, i64 }` constant holding the pointer to the byte array and the length.
- Operations on the literal (length queries, indexing) lower to the same operations as on any `str` value.

## Runtime support

`strings` module helpers in `Apollo-Main/compiler/runtime_support/` operate on the `{ i8*, i64 }` representation regardless of whether the source is a literal or a heap-allocated string.

## Edges and gotchas

- Literals are stored as UTF-8 bytes verbatim after escape decoding. The lexer does not validate the result as well-formed UTF-8; consumers that require validity should run a check.
- The `\u{...}` form encodes the code point as UTF-8 bytes during lexing, producing 1–4 bytes depending on the code point.
- The lexer rejects unterminated literals and unrecognized escape sequences.

## Source of truth

- Grammar / lexer: `Apollo-Main/compiler/compilerv1.g4` (`STRING`, `EscapeSeq`)
- Frontend: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
- Runtime: `Apollo-Main/compiler/runtime_support/`
