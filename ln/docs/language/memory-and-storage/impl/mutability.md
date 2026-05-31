# Mutability — implementation

## Grammar surface

```antlr
mutability : 'const' | 'nconst' | 'stt' | 'nst' ;
```

The `mutability` rule appears as an optional prefix on `init`, `param`, struct/class field declarations, for-loop bindings, and closure capture entries.

## Frontend handling

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Maps `const`/`stt` to an internal "immutable" flag and `nconst`/`nst` to "mutable".
2. Records the flag on the binding entry.
3. On every assignment, checks the target binding's flag. Immutable targets reject the assignment with a diagnostic that names the original declaration site.
4. On borrow expressions, checks the target's flag against the borrow flavor: mutable borrows require mutable sources (where source-level mutability is meaningful).

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`, mutability has no LLVM-level representation. Once the frontend has cleared the assignment, the lowered IR is the same regardless of source-level mutability. Optimization passes may use the read-only information conveyed by `const` to constant-fold more aggressively.

## Runtime support

None.

## Edges and gotchas

- The default in `init` and `param` is immutable. Programs that want mutability must spell it.
- `stt`/`nst` are accepted aliases. The frontend canonicalizes them to `const`/`nconst` for diagnostics.
- Mutability is a property of the binding, not the storage. The same place can be borrowed both immutably and mutably across non-overlapping scopes.
- Closure capture entries carry their own mutability flag separate from the captured source binding's flag. A by-value capture of an immutable source can still be `nconst` inside the closure.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`mutability`)
- Frontend enforcement: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
