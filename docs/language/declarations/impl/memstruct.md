# Memstruct declaration — implementation

## Grammar surface

From `Apollo-Main/compiler/compilerv1.g4`:

```antlr
memstructDecl
    : 'memstruct' ID memstructLayoutAttr? '{' memstructField* '}' ';'?
    ;
memstructLayoutAttr
    : '#[' ('packed' | 'align' '(' INT ')') ']'
    ;
memstructField
    : mutability? typeRef ID ('@' INT)? ';'
    ;
```

The layout attribute syntactically overlaps with the broader directive surface but is parsed as part of the memstruct header itself so the layout is bound to the declaration.

## Parse tree shape

A `MemstructDeclContext` carries:

- `ID()` — the type name.
- `memstructLayoutAttr()` — optional packed/align attribute.
- `memstructField()` as a list.

Each `MemstructFieldContext` exposes `mutability()`, `typeRef()`, `ID()`, and an optional offset `INT()`.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp` validates a memstruct by:

1. Registering the type name.
2. Computing each field's lowered size and natural alignment.
3. Walking fields in declaration order and building the layout. With `#[packed]`, fields are placed at the next byte boundary. Without it, each field is placed at the next multiple of its natural alignment.
4. For fields with explicit `@offset`, verifying the offset matches the running placement (or jumping to the offset and reserving padding bytes in between).
5. Computing the type's total size (rounded up to the type's alignment) and its alignment.
6. Recording the layout for use by codegen and by FFI tooling.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

1. The memstruct lowers to an LLVM struct type with explicit padding fields inserted where the layout requires gap bytes.
2. With `#[packed]`, the LLVM struct is marked packed so the backend does not re-introduce alignment padding.
3. Field access lowers to `extractvalue`/`getelementptr` using the precomputed field index.
4. With explicit alignment (`#[align(N)]`), the lowered type's alignment is forced via LLVM `align` metadata on every load, store, and aggregate operation.
5. FFI-bound memstructs are also emitted with C-mangling-compatible names when imported through inline foreign blocks.

## Runtime support

Misaligned access on packed fields can require safe-load helpers from `Apollo-Main/compiler/runtime_support/`. Buffer-view operations (`buffer.view<T>`) and reinterpretation routines are also runtime-supported and validated at the boundary.

## Edges and gotchas

- Two memstructs with identical field types and layout are still distinct Apollo types. Bit-equivalence does not imply type-equivalence.
- A memstruct field whose own type has a larger alignment than the memstruct's declared `#[align(N)]` is rejected.
- Self-referencing memstructs by value are rejected for the same size-undefined reason as plain structs. Self-referencing pointer fields are fine.
- The layout computation is deterministic and cross-platform within the same target architecture. Cross-target memstructs (32-bit vs 64-bit) may have different total sizes if any field is platform-sized; prefer fixed-width types in FFI.
- `@offset` is one-way: it forces placement but does not let later fields slide backward. Fields must appear in increasing offset order.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`memstructDecl`, `memstructField`, `memstructLayoutAttr`)
- Frontend validation: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
- Buffer view helpers: `Apollo-Main/include/buffer.apollo` and `Apollo-Main/compiler/runtime_support/`
