# Assignment — implementation

## Grammar surface

```antlr
assignmentStmt
    : placeExpr '=' expression ';'
    | placeExpr compoundOp expression ';'
    ;

compoundOp : '+=' | '-=' | '*=' | '/=' | '%='
           | '&=' | '|=' | '^=' | '<<=' | '>>=' ;
```

`placeExpr` is a restricted subset of the full expression grammar admitting only identifiers, field/method access chains, indexing, and dereference. Assignment is a statement; it is not an expression.

## Parse tree shape

`AssignmentStmtContext` exposes the `placeExpr()`, optional `compoundOp()`, and the right-hand `expression()`.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Resolves the place and checks it is assignable (mutability of bindings, fields, and borrows lines up).
2. Resolves the right-hand expression and type-checks it against the place's type.
3. For compound forms, also validates the operator is defined for the place's type.
4. For mutations through borrows, queries the borrow checker to ensure the borrow's flavor permits writes.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

- `=` lowers to a `store` to the place's lowered address.
- Compound `op=` lowers to: address computation once, `load`, op, `store`. The address is not recomputed.
- Field/index writes lower to `getelementptr` + `store`.
- Dereference writes lower to a direct `store` through the pointer.

## Runtime support

None beyond what the operator itself requires (e.g. string concatenation helpers if `+=` is overloaded for strings — though Apollo does not currently overload it).

## Edges and gotchas

- Assignments are statements, not expressions. There is no chained `a = b = 5`.
- The compound forms produce a single address computation, avoiding double evaluation of complex places.
- Apollo rejects implicit numeric narrowing in assignment, even for compound forms (`u8 v; v += int_value;` requires the right-hand side to fit).

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`assignmentStmt`, `compoundOp`)
- Frontend: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
