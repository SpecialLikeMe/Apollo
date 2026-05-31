# Nativemode directive — implementation

See `docs/language/functions-and-interop/impl/nativemode.md` for the canonical implementation notes.

## Quick reference

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`nativemodeDecl`)
- Frontend: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp` records per-file flags affecting validation, stdlib visibility, and lowering.
- Build driver: `Apollo-Main/compiler/cpp/src/apollo_build_driver.cpp` adjusts link flags for nativemode files.
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp` emits C-ABI signatures for `c_abi_only` and skips runtime initialization for `no_runtime`.

## Placement constraint

The directive must appear before any other top-level declaration in the file. The parser enforces this by rejecting a `nativemode` directive that follows a non-directive statement.

## Interaction with other directives

`nativemode` is parsed as a top-level declaration, distinct from the `#[...]` attribute-block syntax. The two coexist: a file can have `nativemode(no_runtime);` followed by `#[lto:thin]` on a specific function.

## Source of truth

- `docs/language/functions-and-interop/impl/nativemode.md` — full implementation notes.
- Grammar: `Apollo-Main/compiler/compilerv1.g4`
- Frontend / driver / lowering: as listed above.
