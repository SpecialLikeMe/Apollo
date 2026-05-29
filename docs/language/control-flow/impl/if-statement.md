# If statement — implementation

## Grammar surface

From `Apollo-Main/compiler/compilerv1.g4`:

```antlr
ifStatement
    : 'if' '(' expression ')' block
      ('else' 'if' '(' expression ')' block)*
      ('else' block)?
    ;
```

The rule is greedy on the `else if` arm, so any number of intermediate branches are matched in one production. A trailing `else` is optional and, when present, closes the chain.

## Parse tree shape

An `IfStatementContext` exposes parallel lists:

- `expression()` as a list — one entry per `if` and per `else if`.
- `block()` as a list — one entry per branch, in order. The trailing `else` block, when present, is the last element and has no matching expression.

The parser does not distinguish leading `if`, `else if`, and trailing `else` at the AST level; the frontend reconstructs the structure by comparing list sizes (an extra block with no matching expression means an `else` is present).

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp` validates an `if` by:

1. Type-checking each condition expression. The result type must be `bool`.
2. Recursing into each block to validate its statements in its own scope.
3. Recording branch return-coverage for the surrounding function's "every path returns" analysis. A branch returns if every path through its block ends in a `return`. The `if` as a whole returns if every branch (including a present `else`) returns.
4. Propagating borrow-checker state through each branch independently. A borrow created in one branch is not visible in another. Borrows surviving past the `if` must exist before the `if` started.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

1. The first condition is lowered, producing an `i1` value.
2. A conditional branch goes to the body block on true, otherwise to the next chain block (either the next `else if` condition's evaluation block or the `else` body or a join block).
3. Each body lowers as a standard block. At the end of the body, an unconditional branch goes to the join block.
4. The join block is the continuation point for the surrounding function; subsequent statements lower into it.

Empty branches are not collapsed at the source level (the grammar requires a block, even if it is `{}`), but LLVM passes optimize the resulting IR.

## Runtime support

None. `if` is a pure control-flow construct; the lowered IR is branch instructions only.

## Edges and gotchas

- The grammar does not allow a bare statement as a branch body. This avoids the dangling-`else` ambiguity entirely and makes `else if` parse cleanly even with deep nesting.
- The frontend rejects a non-boolean condition. Integer "truthiness" is not part of the language.
- An `if` with no `else` branch always counts as a non-returning path in the surrounding function's return analysis, because execution can fall through with the condition false.
- The frontend evaluates conditions left to right and short-circuits `&&` and `||` correctly. The lowered IR uses explicit branch instructions to implement the short-circuit, not bitwise operations.
- Borrow checker state inside an `if` is per-branch. A mutable borrow created inside the `if` body that is not stored into an outer binding is gone by the time the `else` runs, so the same place may be borrowed mutably in each branch independently.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`ifStatement`, `block`)
- Frontend validation: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
