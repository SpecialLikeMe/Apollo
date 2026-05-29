# LTO directive — implementation

## Grammar surface

```antlr
ltoDirective : '#[' 'lto' (':' ltoMode)? ']' ;
ltoMode      : 'full' | 'thin' | 'off' ;
```

## Frontend handling

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Records the LTO mode on the directive's target.
2. Forwards the mode to the build driver via the artifact metadata.

## Build driver

`Apollo-Main/compiler/cpp/src/apollo_build_driver.cpp`:

1. Reads per-declaration and per-file LTO metadata.
2. Configures the LLVM emission flags: bitcode emission for full LTO targets, thin-LTO summaries otherwise.
3. Configures linker flags so the linker performs LTO on marked targets.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

- For LTO-marked functions, emits IR with attributes that signal LTO intent (`nounwind`, function attributes recognized by LLVM's LTO machinery).
- Otherwise unchanged.

## Runtime support

None.

## Edges and gotchas

- If the platform linker does not support the requested LTO mode, the directive is silently downgraded (e.g., full → thin → off).
- LTO modes do not alter source-level behavior; they only affect performance and binary layout.
- Caching considers the LTO mode part of the artifact key, so toggling the directive invalidates cached artifacts.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`ltoDirective`)
- Frontend: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Build driver: `Apollo-Main/compiler/cpp/src/apollo_build_driver.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
