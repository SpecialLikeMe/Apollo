# Variable initialization — implementation

## Grammar surface

From `Apollo-Main/compiler/compilerv1.g4`:

```antlr
init : mutability? typeRef? ID '=' expression ';' ;
mutability : CONST | NCONST | STT | NST ;
```

The walrus form is a sibling rule that desugars to the same `init` shape with an inferred type and an immutable binding:

```antlr
walrusInit : ID WALRUS expression ';' ;
```

`ato` typed-bindings parse through the same `init` rule with the `typeRef` slot filled by `ato`, which the frontend treats as "infer from the right-hand side".

## Parse tree shape

An `InitContext` carries:

- `mutability()` — optional, indicating `const`/`nconst`/`stt`/`nst`.
- `typeRef()` — optional; absent when the binding is fully inferred via `walrusInit`.
- `ID()` — the binding name.
- `expression()` — the initializer.

A `WalrusInitContext` carries `ID()` and `expression()` only; the frontend synthesizes the immutable mutability and the inferred type when it reduces the node into the same internal binding form.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp` validates an init by:

1. Resolving the declared type, or inferring it from the initializer if absent.
2. Type-checking the initializer against the resolved type.
3. Registering the binding in the current scope with its mutability marker.
4. If the initializer is a borrow expression, recording the borrow against the binding so the borrow checker can track lifetime.
5. Rejecting any duplicate binding name in the same scope.

If the initializer is itself a function call returning a reference, the validator chains the borrow into the new binding's lifetime tracking, so subsequent uses of the binding inherit the original borrow's constraints.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

1. The initializer expression is lowered first, producing an LLVM value.
2. A stack slot is allocated with `alloca` of the binding's lowered type.
3. An initializing `store` writes the initializer value into the slot.
4. Subsequent uses of the binding load from the slot.

For reference bindings, the stack slot holds a pointer; the initializer is the address produced by a borrow expression. Loads and stores against the binding indirect through the pointer.

For inferred bindings, the visitor uses the lowered type of the initializer's result as the binding's lowered type.

## Runtime support

None. Initialization is a stack-only operation. Heap-allocated initializers (e.g. `malloc<T>()`, `plcnew T(...)`) carry their own runtime requirements, but those are separate concerns documented under the allocator surfaces.

## Edges and gotchas

- The grammar accepts a missing `typeRef` only in the walrus form; the `init` rule itself requires either a type or `ato`. The frontend rejects an `init` with neither.
- Older spellings `stt` and `nst` exist because earlier grammars used those keywords. They behave identically to `const` and `nconst` respectively.
- The frontend rejects shadowing within the same block but allows shadowing across nested blocks. A new `int x = ...` in an inner block hides the outer `x` for that block's lifetime.
- An initializer that itself reads the binding being initialized is rejected. The right-hand side is evaluated before the binding exists, so self-reference makes no sense.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`init`, `walrusInit`, `mutability`, `typeRef`)
- Frontend validation: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
