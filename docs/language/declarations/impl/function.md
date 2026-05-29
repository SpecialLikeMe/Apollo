# Function declaration — implementation

## Grammar surface

The accepted shape lives in `Apollo-Main/compiler/compilerv1.g4`:

```antlr
function     : returnType ID '(' params? ')' attributeBlock? block ;
returnType   : 'void' | typeRef ;
params       : param (',' param)* ;
param        : (CONST | NCONST)? typeRef? ID ;
block        : LBRACE (statement | returnStmt)* RBRACE ;
```

`function` is reachable directly from the `program` rule, which is what makes it a top-level declaration. The `block` it terminates on is the standard Apollo body shape — a brace-delimited sequence of statements with optional `returnStmt` items mixed in.

## Parse tree shape

A `FunctionContext` produced by the generated parser carries:

- `returnType()` — a `ReturnTypeContext` resolving to either the literal `'void'` token or a `TypeRefContext`.
- `ID()` — the function name as a terminal token.
- `params()` — a `ParamsContext` if any parameters were provided, otherwise null.
- `attributeBlock()` — an optional `AttributeBlockContext` carrying `.att { ... }` entries.
- `block()` — the body `BlockContext`.

The parameter list rule allows a parameter to omit its type. That shape exists so other declaration forms can share the same `param` rule; top-level functions in practice always supply a type for every parameter, and the frontend rejects a parameter with no type when it sits inside a `function`.

## Frontend validation

The frontend runtime-cycle visitor in `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp` walks each `FunctionContext` and enforces:

- The function name is unique within its containing scope.
- Each parameter has a resolvable type.
- The return type is either `void` or a valid `typeRef`.
- The body has a return on every path when the return type is not `void`.
- Any reference parameter participates correctly in the borrow analysis pass.
- Attribute entries in `attributeBlock()` are known.

Validation runs before any IR is emitted. If a function fails any of the rules above, the frontend records a diagnostic and codegen is skipped for that declaration.

## Lowering

Lowering happens in `Apollo-Main/compiler/cpp/src/visitor.cpp`. For each accepted `FunctionContext` the visitor:

1. Builds an LLVM `FunctionType` from the return type and parameter types.
2. Creates a function in the current module using the declaration name.
3. Emits an entry basic block.
4. Walks the body block, lowering each statement in order. Local bindings get LLVM stack slots; references get pointer slots whose lifetime tracks the borrow.
5. Emits a return for the final path. For `void` functions with no explicit `return`, the visitor inserts an implicit `ret void` at the end of the body.

Functions marked with an attribute block participate in the codegen optimization plan defined in `Apollo-Main/compiler/cpp/src/apollo_codegen_optimization_plan.h`. The plan inspects recognized attributes (for example `hot`, `cold`, `no_inline`) and translates them into LLVM function attributes during lowering.

## Runtime support

A normal function does not need any extra runtime support. The lowered LLVM IR is self-contained, and the AOT pipeline in `apollo_build_driver.cpp` links it as part of `output.ll`.

When a function calls into stdlib surfaces (for example `sys.println`), those calls resolve through the `extern std ...` import machinery to declarations from `Apollo-Main/include/`. The build driver then links the appropriate runtime support objects from `Apollo-Main/compiler/runtime_support/` so the lowered IR can resolve the symbols at link time.

## Edges and gotchas

- The grammar accepts a parameter without a type because the same rule is reused by other declaration forms; the frontend rejects this shape for top-level functions specifically.
- The grammar does not encode "this path returns" — that is purely a frontend-surface check. A grammar-valid function with a missing return on some path will still produce a `FunctionContext`, but lowering never runs for it because validation fails first.
- Forward declarations are not needed because the frontend collects all top-level function names in a first pass before any body is lowered. That is what allows direct and mutual recursion without explicit forward declarations.
- Method bodies share most of the lowering pipeline with top-level functions. The difference is that the method rule injects an implicit receiver and applies the access modifiers (`public`, `private`, `static`, `virtual`) before handing the body to the same visitor logic.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`function`, `params`, `param`, `returnType`, `block`)
- Frontend validation: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
- Optimization metadata: `Apollo-Main/compiler/cpp/src/apollo_codegen_optimization_plan.h`
- Build / link integration: `Apollo-Main/compiler/cpp/src/apollo_build_driver.cpp`
