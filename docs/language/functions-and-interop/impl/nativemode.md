# Nativemode — implementation

## Grammar surface

```antlr
nativemodeDecl : 'nativemode' nativeOptions? ';' ;
nativeOptions  : '(' nativeFlag (',' nativeFlag)* ')' ;
nativeFlag     : 'no_runtime' | 'no_borrow_panic' | 'c_abi_only' | ID ;
```

The directive must appear before any other top-level declaration in the file.

## Parse tree shape

A `NativemodeDeclContext` exposes the optional list of `nativeFlag()` entries.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Records the per-file native flags.
2. Adjusts subsequent validation phases according to the flags:
   - `no_runtime`: marks all stdlib symbols as forbidden in this file.
   - `no_borrow_panic`: switches borrow-check failures to warnings.
   - `c_abi_only`: rejects closures, capturing forms, and any function returning a closure or function-typed value.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

- `c_abi_only`: every function uses the platform's C calling convention; name mangling is disabled.
- `no_runtime`: lowering omits stdlib initialization sequences and runtime hooks.
- Other flags primarily influence diagnostics rather than codegen.

## Runtime support

`no_runtime` files do not link the Apollo runtime stub. They must depend only on the C/system runtime via inline foreign blocks.

## Edges and gotchas

- Mixing files with and without nativemode in the same program is supported; nativemode is per-file.
- The borrow checker still runs even with `no_borrow_panic`; only the severity changes. This is intentional to keep diagnostics available.
- Some advanced features (async/await, generic templates that pull in runtime helpers) are effectively unavailable in `no_runtime` files because their lowering needs runtime support.
- The set of recognized flags is open-ended via the `ID` alternative; unknown flags are reported but do not stop compilation, allowing forward compatibility.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`nativemodeDecl`)
- Frontend: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
- Build driver: `Apollo-Main/compiler/cpp/src/apollo_build_driver.cpp`
