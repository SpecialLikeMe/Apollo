# Inline foreign block — implementation

## Grammar surface

```antlr
inlineForeign
    : 'inline' 'foreign' ID '{' RAW_TEXT '}'
    | 'inline' 'foreign' ID 'export' '(' exportList ')' '{' RAW_TEXT '}'
    ;

exportList  : exportEntry (',' exportEntry)* ;
exportEntry : 'fn' ID '(' typeList? ')' '->' typeRef ;
```

The `RAW_TEXT` is captured verbatim — the Apollo lexer disables Apollo tokenization inside the braces of an inline foreign block until the matching closing brace.

## Parse tree shape

An `InlineForeignContext` exposes:

- The language `ID()` (`c`, `cpp`, `rust`).
- The raw text body.
- The optional `exportList()` with one `exportEntry()` per exposed symbol.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Records the foreign block for handoff to the foreign compiler.
2. Resolves each `exportEntry`'s parameter and return types against the Apollo type table.
3. Registers each exported symbol as an extern function with the resolved signature.
4. Does not validate the raw text — that is delegated to the foreign compiler.

## Compilation pipeline

The build driver `Apollo-Main/compiler/cpp/src/apollo_build_driver.cpp`:

1. Extracts each foreign block's raw text to a scratch file.
2. Invokes the appropriate compiler (Clang for C/C++, rustc for Rust).
3. Links the resulting object files into the final program.
4. Caches per-block compilation results keyed by block hash + compiler flags.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

- The block itself produces no Apollo IR; it is a build-driver concern.
- Exported symbols are referenced as extern functions with the declared signatures.

## Runtime support

None at the language level. The foreign object's runtime dependencies (C library, libstdc++, Rust runtime) are linked normally.

## Edges and gotchas

- The raw-text body must be balanced for braces; the lexer counts braces to find the matching close.
- Cross-block sharing of definitions in C/C++ requires the blocks to be compiled together. The build driver groups same-language blocks per Apollo source file.
- Rust blocks are compiled with `rustc --crate-type=staticlib` and linked. Crate-level features must be expressed via attributes inside the block.
- Caching keys include the block text, the language, and the compiler version. Changing any of these invalidates the cache.

## Source of truth

- Grammar / lexer: `Apollo-Main/compiler/compilerv1.g4` (`inlineForeign`, `RAW_TEXT`)
- Frontend: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Build driver: `Apollo-Main/compiler/cpp/src/apollo_build_driver.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
