# Member access — implementation

## Grammar surface

```antlr
memberAccessExpr
    : expression '.' ID
    | expression '->' ID
    | expression '[' INT ']'      // shape slot access
    ;
```

## Parse tree shape

`MemberAccessExprContext` exposes the receiver `expression()` and either an `ID()` (for `.` and `->`) or an `INT()` (for shape slot access).

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Resolves the receiver's type.
2. For `.`, requires the receiver to be a struct/class/memstruct/interface value or reference; looks up the field or method.
3. For `->`, requires the receiver to be a pointer or reference; dereferences once, then dispatches the same as `.`.
4. For `[INT]`, requires the receiver to be a shape value or reference; checks the index is within the slot count.
5. Enforces visibility (`public` vs `private`).
6. For mutating contexts (LHS of `=`), checks the receiver's borrow/binding mutability and the field's mutability.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

- Field access lowers to `getelementptr` + `load`/`store`.
- Method access lowers to a bound callable: for virtual methods through an interface, dispatch goes through the vtable in the interface's two-pointer representation.
- Shape slot access lowers identically to struct field access using the slot's positional offset.

## Runtime support

None beyond what the type's lowered representation requires.

## Edges and gotchas

- `->` is pure syntactic sugar; the frontend rewrites it to `(*expr).field` early in lowering.
- The slot-index form `[INT]` requires a literal integer in the grammar; arithmetic expressions are not allowed. Use `.field` on a struct if you need computed access.
- Interface method access goes through a small two-pointer dispatch that includes a vtable load + indirect call.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`memberAccessExpr`)
- Frontend: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
