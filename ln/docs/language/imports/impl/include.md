# Include — implementation

## Grammar surface

```antlr
includeStmt : 'include' STRING ';' ;
```

The `include` keyword is a top-level statement.

## Parse tree shape

An `IncludeStmtContext` exposes the path `STRING()`.

## Frontend handling

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Resolves the path relative to the current file (or relative to the project root for leading `/`).
2. Reads the referenced file's source.
3. Parses the included source in place, splicing its AST nodes into the current file's top-level scope.
4. Detects cyclic includes via an active-include stack and rejects them.

## Build driver

`Apollo-Main/compiler/cpp/src/apollo_build_driver.cpp`:

1. Tracks include edges for incremental compilation.
2. Any change to an included file invalidates every including file's cache entry.

## Lowering

No direct lowering effect — includes are resolved entirely at parse time.

## Runtime support

None.

## Edges and gotchas

- Include is syntactically simple but compositionally heavy: each inclusion duplicates the parse cost. Modules (via `extern`) parse once per program; includes parse once per including file.
- Apollo's include is not a preprocessor — there is no conditional inclusion, no macro guards, no `#ifdef` equivalent. For configuration, prefer build-driver flags.
- The frontend rejects duplicate top-level declarations resulting from multiple includes of the same file in one compilation unit; protect against this by structuring includes to avoid duplication.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`includeStmt`)
- Frontend: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Build driver: `Apollo-Main/compiler/cpp/src/apollo_build_driver.cpp`
