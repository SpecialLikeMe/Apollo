# Switch statement — implementation

## Grammar surface

From `Apollo-Main/compiler/compilerv1.g4`:

```antlr
switchStatement
    : 'switch' '(' expression ')' '{' caseClause* defaultClause? '}'
    ;
caseClause    : 'case' caseValue (',' caseValue)* ':' block ;
defaultClause : 'default' ':' block ;
caseValue     : INT | STRING | ID ;
```

## Parse tree shape

A `SwitchStatementContext` exposes the scrutinee `expression()`, a list of `caseClause()` children, and an optional `defaultClause()`.

Each `CaseClauseContext` has a list of `caseValue()` entries and a `block()`.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp` validates a `switch` by:

1. Validating the scrutinee expression.
2. Checking each case value is a constant of a type compatible with the scrutinee.
3. Rejecting duplicate case values across all clauses.
4. Recursing into each case block in its own scope.
5. Registering the switch with the break resolver so `break` inside a case targets the switch's exit.
6. Rejecting `continue` inside case blocks (the break resolver only accepts switch-style breaks).

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

1. The scrutinee is lowered into a temporary.
2. For dense integer case sets, the visitor emits an LLVM `switch` instruction with one destination per case value and a destination for the `default` (or the join block if no default is present).
3. For sparse or string case sets, the visitor emits a chain of equality comparisons and conditional branches.
4. Each case block lowers into its destination basic block and ends with an unconditional branch to the join block (unless it returns or breaks elsewhere).
5. The join block is the exit point for the surrounding control flow.

## Runtime support

None for integer scrutinees. String comparisons go through the standard string-equality routine in `Apollo-Main/compiler/runtime_support/`.

## Edges and gotchas

- The grammar uses a per-case `block` so there is no syntactic possibility of fallthrough. C-style `case X: case Y:` style requires the comma-list form.
- The frontend does not require exhaustiveness. A switch with no `default` and no matching case is a no-op.
- Two case clauses listing the same constant produce a clear diagnostic — duplicates are easy to introduce when refactoring.
- String case lowering uses the canonical string-equality routine, which compares lengths first and bytes second. Large string-case sets are handled clause-by-clause rather than as a perfect-hash table.
- A `return` inside a case behaves identically to `return` anywhere else — it exits the enclosing function.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`switchStatement`, `caseClause`, `defaultClause`)
- Frontend validation: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
