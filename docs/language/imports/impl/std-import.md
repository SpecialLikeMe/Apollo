# Standard library import — implementation

## Grammar surface

From `Apollo-Main/compiler/compilerv1.g4`:

```antlr
stdimport : 'extern' 'std' ID ';' ;
```

The rule is reachable directly from `program`, alongside `importStmt`, `include`, `function`, and the other top-level declaration forms.

## Parse tree shape

A `StdimportContext` carries:

- `ID()` — the module name as a terminal token.
- The `extern` and `std` keywords as fixed lexical tokens (not exposed as separately-named accessors).

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp` validates an `stdimport` by:

1. Looking up the module name in the stdlib catalog. The catalog is built from the files under `Apollo-Main/include/`.
2. Loading the module's declarations into the importing file's scope, prefixed with the module name as a namespace.
3. Rejecting duplicate imports of the same module within the same file with a warning (the second import is a no-op).
4. Rejecting an unknown module name with a diagnostic that names the offending identifier and points at the source line.

The module's declarations are parsed once per compilation unit, even if the same module is imported by many files. The frontend caches parsed module ASTs to avoid re-parsing.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`, the import itself does not emit IR. It only populates the symbol table that subsequent lowering passes consult when they encounter `module.symbol` references.

The lowering of calls into stdlib surfaces happens when the call site is lowered, not at import time. The call resolves through the symbol table to the module's declared function or type, and the lowering follows the standard call or member-access path.

## Runtime support

Stdlib modules vary widely in their runtime requirements. Pure libraries like `math` and `bits` need no runtime support. Collection libraries like `collections` and `buffer` need the allocator surface and per-collection runtime objects from `Apollo-Main/compiler/runtime_support/`. Concurrency libraries (`thread`, `sync`, `task`) need the platform's threading runtime. Filesystem and network libraries (`fs`, `net`) need the platform's I/O surfaces.

The build driver in `Apollo-Main/compiler/cpp/src/apollo_build_driver.cpp` consults the set of imported modules and links the appropriate runtime-support objects into the final binary.

## Edges and gotchas

- The grammar uses a literal `extern std` token sequence to distinguish stdlib imports from other `extern` forms. Project imports use a different rule (`importStmt`) and a different keyword shape.
- The module name slot is a single `ID`, not a dotted path. Multi-level stdlib organization (for example, `collections.vector`) is exposed inside the loaded module as nested namespaces, not at import time.
- The prelude is registered into every file's symbol table by the frontend during initial scope setup, before any `extern std` line is processed. That is why programs do not need to import it.
- The frontend does not enforce ordering of `extern std` lines, but the canonical style is to keep them grouped at the top of the file, one per line, alphabetized.
- An import resolves to the *current* contents of the matching stdlib file. The toolchain pins the stdlib version to the compiler version; updating the compiler updates the stdlib in lockstep.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`stdimport`)
- Module sources: `Apollo-Main/include/*.apollo`
- Frontend validation: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Build / link integration: `Apollo-Main/compiler/cpp/src/apollo_build_driver.cpp`
- Stdlib contract: `Apollo-Main/STDLIB_CONTRACT.md`
