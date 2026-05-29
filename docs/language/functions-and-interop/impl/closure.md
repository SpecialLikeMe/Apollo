# Closure — implementation

## Grammar surface

From `Apollo-Main/compiler/compilerv1.g4`:

```antlr
closure
    : 'closure' captureList? '(' params? ')' '->' returnType (block | indentedBlock)
    ;
captureList : '[' captureEntry (',' captureEntry)* ']' ;
captureEntry
    : '=' ID                // by value, immutable
    | NCONST '=' ID         // by value, mutable
    | '&' ID                // by immutable borrow
    | '&' NCONST ID         // by mutable borrow
    ;
indentedBlock : <indent-sensitive> ;
```

The closure rule is unusual in two ways. First, it is the only place in Apollo where an indent-sensitive alternative appears in the grammar. Second, the capture list uses a per-entry mutability/borrow prefix instead of relying on the standard `mutability` rule, because the meaning of `=` vs `&` differs from anywhere else in the language.

## Parse tree shape

A `ClosureContext` carries:

- `captureList()` — optional. If present, a list of `CaptureEntryContext` entries.
- `params()` — optional parameter list.
- `returnType()` — the result type.
- `block()` or `indentedBlock()` — exactly one of the two will be present.

The lexer cooperates by emitting synthetic `INDENT` and `DEDENT` tokens around the indented body. Those tokens are then recognized by the `indentedBlock` rule. Outside of closures, those tokens are filtered before they reach the parser.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp` validates a closure by:

1. Type-checking each capture entry. By-value captures copy the binding's type; by-reference captures use the corresponding reference type with the borrow flavor from the entry's prefix.
2. Recording the captures in a closure-local scope. The body sees the captures as bindings with the resolved type and mutability.
3. Validating the parameter list and return type using the same rules as for a function declaration.
4. Recursing into the body. Inside the body, the captures behave like locals; outer-scope bindings are not visible unless captured.
5. Computing the closure's type as `fn<R(Args...)>`, regardless of capture set.
6. Reporting the closure's lifetime constraints. By-reference captures impose a lower bound on the closure's lifetime equal to the shortest captured borrow's lifetime.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

1. The visitor synthesizes a hidden "closure record" struct holding one field per capture. By-value captures store a copy; by-reference captures store a pointer.
2. The visitor emits a hidden function whose first parameter is a pointer to the closure record and whose remaining parameters match the source-level parameter list. Inside the hidden function, references to captured bindings load through the record pointer.
3. The closure expression itself lowers to a small value that bundles (a) the address of the hidden function and (b) the address of an allocated closure record initialized from the captures. The bundle matches the `fn<R(Args...)>` calling convention.
4. Invoking the closure lowers to a call that passes the record pointer and the source-level arguments.

A non-capturing closure (empty capture list) skips the closure-record allocation and reduces to a plain function pointer — the same lowering used by lambdas.

## Runtime support

Capturing closures may need heap storage for their closure record when their lifetime exceeds the surrounding stack frame. Allocation routes through the standard allocator surface and, when the closure value drops, the record is released. The runtime hooks live alongside the rest of the value-lifetime infrastructure in `Apollo-Main/compiler/runtime_support/`.

## Edges and gotchas

- The indent-sensitive body is the only such construct in Apollo. The lexer's indent/dedent emission is gated by the parser state — outside the `closure` rule, the indent tokens are suppressed entirely.
- Mixing the brace body and the indented body on the same closure produces a parser error. The two forms are alternative productions, not stackable.
- A by-reference capture of a value held in a temporary is rejected at the capture-list validation step, because the temporary's lifetime is too short.
- A non-capturing closure and a lambda lower to the same code. The user-facing distinction is purely syntactic: `closure () -> void { ... }` with no capture list is allowed but conventionally written as a lambda.
- The closure record's layout is implementation-private. Source-level code cannot inspect it; the only legal operations on a closure value are call, assignment, and storing into a binding of compatible function type.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`closure`, `captureList`, `captureEntry`, `indentedBlock`)
- Lexer indent/dedent emission: lexer rules in the same grammar file
- Frontend validation: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
- Runtime support: `Apollo-Main/compiler/runtime_support/`
