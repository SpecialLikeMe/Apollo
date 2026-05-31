# Indentation — implementation

## Grammar surface

None. Apollo's grammar uses explicit `{` and `}` for block structure. There is no indentation-sensitive lexer state, no INDENT/DEDENT tokens, and no whitespace-significant rules.

## Lexer behavior

Indentation is matched as part of the general whitespace rule:

```antlr
WS : [ \t\r\n]+ -> skip ;
```

Spaces, tabs, carriage returns, and newlines are all skipped uniformly.

## Frontend handling

None — the frontend never sees indentation.

## Lowering

None.

## Runtime support

None.

## Edges and gotchas

- Because there is no indentation syntax, conventions exist only by code review and tooling. Editors and auto-formatters carry the load.
- Mixed tabs and spaces are tolerated by the compiler but rejected by most style guides.
- Tools (formatters, linters) that ship with the Apollo toolchain enforce the four-space convention; they live in `Apollo-Main/apx/` and related directories.

## Source of truth

- Grammar / lexer: `Apollo-Main/compiler/compilerv1.g4` (`WS` rule)
- Stdlib examples following the convention: `Apollo-Main/include/*.apollo`
