# Borrow expression — implementation

## Grammar surface

From `Apollo-Main/compiler/compilerv1.g4`:

```antlr
borrowExpr : '&' mutability? expression ;
mutability : CONST | NCONST | STT | NST ;
```

The borrow expression is parsed at the unary-operator precedence level, so it binds tighter than binary operators but looser than member access and indexing. That means `&p.x` parses as `&(p.x)`, which is the intended reading: borrow the field, not borrow `p` then access `.x`.

## Parse tree shape

A `BorrowExprContext` carries:

- `mutability()` — optional; absent means immutable.
- `expression()` — the borrowed expression. This is any expression context; whether the result is borrowable is decided by the frontend, not the grammar.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp` validates a borrow by:

1. Confirming the borrowed expression denotes a *place* — a named binding, a field, an array index, or a dereference. Function-call results, arithmetic results, and other temporaries are rejected.
2. Checking the place's mutability against the borrow flavor. A mutable borrow of an immutable place is allowed when the place is itself a value the borrower can be granted write permission to (for example, a `nconst` binding can be borrowed mutably). A mutable borrow of a `const`-marked place that the borrower cannot legitimately mutate is rejected.
3. Registering the borrow with the borrow tracker in `Apollo-Main/brc/borrow_checker.h`. The tracker maintains, per place, the set of active immutable borrows and at most one active mutable borrow.
4. Computing the borrow's lifetime as the lexical region from the expression to the last use of the resulting reference value.
5. Checking the new borrow against existing borrows of overlapping places. Conflicts produce a diagnostic that points at both the new borrow and the conflicting one.

When the borrow is stored into a binding, the binding's lifetime becomes the borrow's lifetime. When the borrow is passed to a function call, the borrow lives for the call's duration unless the callee's return type re-exports the lifetime.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

1. The borrowed expression is lowered as a place — an LLVM pointer to the underlying storage. For a named binding, that pointer is the `alloca` slot. For a field, it is a `getelementptr` on the parent's slot. For an array index, it is a `getelementptr` with the index operand.
2. The borrow expression's value is exactly that pointer.
3. No copy, no allocation, no runtime call.

Mutable and immutable borrows lower identically at the LLVM level — the distinction lives entirely in the frontend's borrow tracker and never reaches codegen.

## Runtime support

None. Borrowing is a static-only operation. The borrow checker has no runtime presence; every check it performs is resolved at compile time.

## Edges and gotchas

- A borrow of a `*ref` (dereference of an existing reference) is allowed and behaves as a re-borrow of the original place. The lifetime is bounded by the shorter of the original borrow and the re-borrow.
- The grammar does not distinguish "borrow" from "address-of". The unary `&` is the only spelling for both. This is intentional — Apollo has no raw pointer-via-`&` syntax; raw pointers are constructed by explicit allocator calls.
- The frontend allows multiple back-to-back mutable borrows of the *same* place when each borrow's lifetime ends before the next begins. The classic pattern is `bump(&nconst counter); bump(&nconst counter);` — each borrow lives only for the duration of one call.
- The borrow checker treats different fields of the same struct or different elements of the same array (when the indices are constant and distinct) as non-overlapping places. Dynamic indices conservatively overlap.
- A reference type appears in the IR as a plain pointer. The frontend remembers the borrow flavor for validation, but the lowered representation is identical for both flavors.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`borrowExpr`, `mutability`)
- Frontend validation and borrow tracker integration: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Borrow checker core: `Apollo-Main/brc/borrow_checker.h` and `Apollo-Main/brc/borrow_checker.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
