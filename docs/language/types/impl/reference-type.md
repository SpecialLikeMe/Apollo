# Reference type — implementation

## Grammar surface

```antlr
referenceType : typeRef '&' ;
```

## Parse tree shape

A `ReferenceTypeContext` exposes the inner `typeRef()` and the `&` token.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Resolves the inner type.
2. Wraps it in a canonical reference-type entry.
3. The binding's mutability marker combined with the source borrow's flavor determines the reference's read/write permissions.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

- A reference type lowers to a plain LLVM pointer to the inner type's lowered form.
- Dereference (`*ref`) lowers to a `load` from the pointer.
- Write-through (`*ref = value`) lowers to a `store`.
- The frontend's mutability information drives borrow-checker constraints but has no LLVM-level representation.

## Runtime support

None.

## Edges and gotchas

- References are non-null by construction (borrow expressions always succeed or fail at compile time). There is no null-reference concept.
- A reference is a value at the LLVM level (a pointer), so copying a reference is one pointer copy. The borrow checker constrains *when* and *how many* copies may exist.
- References cannot point to temporaries because the temporary's lowered storage is gone before the reference could be used.
- Two reference types with the same inner type but different mutability are distinct at the source level but identical at the LLVM level.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`referenceType`)
- Frontend resolution: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Borrow tracker: `Apollo-Main/brc/borrow_checker.h`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
