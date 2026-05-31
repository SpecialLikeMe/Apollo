# Apollo Compilation Pipeline

This document explains, end-to-end, what happens when an Apollo source
file is compiled by the native toolchain. It walks through every major
stage — preprocessing, parsing, the runtime cycle of analysis phases,
AST→HIR lowering, HIR→MIR construction, MIR-based borrow checking,
LLVM IR generation, and the garbage-collector runtime — and points to
the exact files and functions involved.

> Conventions: file paths are relative to the repo root. Function names
> are written `ClassName::method` or `ns::func` and resolve to the
> definitions in the linked files. Phase names match the strings
> returned by `ApolloCompilerRuntimeCycle::defaultPhaseNames()`.

---

## 1. Entry Points

There are three native executables, all of which link the same
front-end and runtime libraries:

| Executable                  | Source                                   | Role                                                                 |
|-----------------------------|------------------------------------------|----------------------------------------------------------------------|
| `apollo_frontend_native`    | [Apollo-Main/compiler/cpp/src/main.cpp](Apollo-Main/compiler/cpp/src/main.cpp) | One-shot front end: preprocess → parse → analyze → optionally codegen. |
| `apollo_build_driver_native`| [Apollo-Main/compiler/cpp/src/build_driver.cpp](Apollo-Main/compiler/cpp/src/build_driver.cpp) | Multi-file build driver with caching.                               |
| `apollo_runtime_tests` / `apollo_driver_tests` / `apollo_borrowck_tests` / `apollo_mir_tests` / `apollo_gc_*_tests` | various `*_tests.cpp` | Unit harnesses.                                                     |

The user-facing CLI (`apollo.cpp` in the repo root and the
`Apollo-Main/apollo.sh` / `apollo-manage.*` wrappers) ultimately invoke
`apollo_frontend_native` or `apollo_build_driver_native`.

---

## 2. Source Preprocessing

Before parsing, every source unit is passed through the Apollo
preprocessor, which expands `extern`, resolves `apx` module
references, normalizes line endings, and tracks origin information for
diagnostics.

- File: [Apollo-Main/compiler/cpp/src/apollo_source_preprocessor.cpp](Apollo-Main/compiler/cpp/src/apollo_source_preprocessor.cpp)
- Key entry: `apollo::preprocessor::preprocessFile(path)` returns a
  `PreprocessedUnit { text, source_map }` consumed by the lexer.
- The `apx/` directory ([Apollo-Main/apx/include.ts](Apollo-Main/apx/include.ts),
  [Apollo-Main/apx/main.ts](Apollo-Main/apx/main.ts),
  [Apollo-Main/apx/write.ts](Apollo-Main/apx/write.ts)) houses the
  helper scripts used by the preprocessor for package-style includes.

The standard-library facade lives in [Apollo-Main/include/](Apollo-Main/include/)
and is referenced via the grammar rule `stdimport : 'extern' 'std' ID ';'?`.
Resolution of those imports happens during the `frontend-surface`
phase (see §4) via `FrontendSurfaceValidator::visitStdimport` in
[Apollo-Main/compiler/cpp/src/apollo_runtime.cpp](Apollo-Main/compiler/cpp/src/apollo_runtime.cpp),
which searches `$APOLLO_INCLUDE_DIR`, `$APOLLO_HOME/include`, and
`./include` for `<name>.apollo`.

---

## 3. Lexing & Parsing (ANTLR4)

Apollo is parsed by an ANTLR4-generated recursive-descent parser.

- Grammar: [Apollo-Main/compiler/compilerv1.g4](Apollo-Main/compiler/compilerv1.g4)
- Generated parser: `Apollo-Main/compiler/cpp/generated/compilerv1Parser.{h,cpp}`
- Generated lexer:  `Apollo-Main/compiler/cpp/generated/compilerv1Lexer.{h,cpp}`
- Generated visitors: `compilerv1BaseVisitor`, `compilerv1BaseListener`

The driver constructs `compilerv1Lexer`, a `CommonTokenStream`, and a
`compilerv1Parser`, then calls `parser.program()` to obtain a
`ProgramContext*` — the raw concrete syntax tree (CST). The CST is
not transformed into an AST data structure of its own; analysis
phases either walk it directly via ANTLR visitors or lower it on
demand into HIR (§6).

---

## 4. The Runtime Cycle of Analysis Phases

The orchestration core is `ApolloCompilerRuntimeCycle` in
[Apollo-Main/compiler/cpp/src/apollo_runtime.h](Apollo-Main/compiler/cpp/src/apollo_runtime.h)
and [Apollo-Main/compiler/cpp/src/apollo_runtime.cpp](Apollo-Main/compiler/cpp/src/apollo_runtime.cpp).

A "phase" is any object implementing `ApolloRuntimePhase`:

```cpp
struct ApolloRuntimePhase {
    virtual std::string name() const = 0;
    virtual void run(ApolloCompilerRuntimeCycle& cycle,
                     compilerv1Parser::ProgramContext* tree) const = 0;
};
```

`ApolloCompilerRuntimeCycle::create(path, tree, phases)` constructs a
cycle bound to one parsed `ProgramContext`, and `runAll()` executes
each phase in order, accumulating diagnostics. Phases communicate via
the cycle's diagnostic channel:

- `recordRuleDiagnostic(category, ctx, message)` — span-anchored error
- `recordWarningMessage(message)` — free-form warning preview
- `recordRuleDiagnosticPreview(...)` — non-fatal preview used by tests

### 4.1 Default phase order

`defaultPhases()` (apollo_runtime.cpp line 1337) returns the canonical
ordering. The exact names — returned by `defaultPhaseNames()` and
asserted by `apollo_runtime_tests` — are:

1. **`runtime-extension-surface`** — validates `#[runtime_extension]`
   blocks, foreign-language inline surfaces, unsafe-fallback metadata.
   Implementation: `RuntimeExtensionSurfaceVisitor`.
2. **`frontend-surface`** — top-level program well-formedness: stdlib
   import resolution, directive parsing, module-level shape checks.
   Implementation: `FrontendSurfaceValidator`.
3. **`unsafe-boundary`** — verifies that every `@unsafe` /
   `@bypass` / `#[borrow_checker(off)]` boundary is enclosed, balanced,
   and authorized. Implementation: `UnsafeBoundaryValidator`.
4. **`ownership`** — legacy AST-driven ownership tracking.
   See `borrowCheckerPhases()` and
   [Apollo-Main/compiler/cpp/src/borrowck/legacy/borrow_checker.cpp](Apollo-Main/compiler/cpp/src/borrowck/legacy/borrow_checker.cpp).
5. **`borrow`** — legacy AST-driven reference / borrow analysis.
6. **`memory-safety-finalize`** — legacy finalization: flushes any
   pending ownership facts.
7. **`memory-leak`** — legacy manual-allocation leak detection (the
   `*.alc()` surface; matches `void* x.alc(i32)` patterns).
8. **`mir-borrow-check`** — new MIR-based borrow checker (§7). Wired
   via `apollo::borrowck::mirBorrowCheckerPhases()` returned by
   [Apollo-Main/compiler/cpp/src/borrowck/mir_pipeline.cpp](Apollo-Main/compiler/cpp/src/borrowck/mir_pipeline.cpp).

The legacy and MIR borrow checkers run side by side during the
migration; legacy phases produce the user-visible diagnostics, and
`mir-borrow-check` validates the new pipeline against MIR bodies as
they become available via AST→HIR→MIR lowering.

---

## 5. AST → HIR Lowering

HIR (High-level IR) is Apollo's closed, type-erased intermediate form
that bridges the ANTLR CST and MIR. It is defined in:

- Schema: [Apollo-Main/compiler/cpp/src/hir/hir.h](Apollo-Main/compiler/cpp/src/hir/hir.h)
- Lowerer header: [Apollo-Main/compiler/cpp/src/hir/lowering.h](Apollo-Main/compiler/cpp/src/hir/lowering.h)
- Lowerer impl:   [Apollo-Main/compiler/cpp/src/hir/lowering.cpp](Apollo-Main/compiler/cpp/src/hir/lowering.cpp)

Key types in `hir::`:

- `Body` — a function body: `params[]`, `param_count`, `return_ty`,
  `locals[]`, `root_block`.
- `Expr` — tagged union by `ExprKind` (Block, If, While, Loop, Match,
  Binary, Unary, Call, Ref, AddrOf, Var, Assign, Return, LitInt,
  LitBool, LitChar, LitStr, Todo). Carries `mir::Ty`, `SourceInfo`,
  and kind-specific fields (`scalar`, `str_value`, `local`, `a/b`,
  `bin/un`, `stmts/tail`, `cond/then/else/body`, `scrutinee/arms`,
  `callee/args`, `ref_mut/operand_place`).
- `Stmt` — `Let { let_local, init }` or `ExprStmt { expr }`.

### 5.1 `AstLowerer`

`AstLowerer` is the per-function lowerer. Important members
(lowering.h):

- `current_` — the `Body` being built.
- `scopes_ : vector<unordered_map<string, LocalVarId>>` — lexical
  scope chain used for in-body name resolution.
- `tcx_` — type context for constructing `mir::Ty` values
  (`mkUnit`, `mkBool`, `mkI64`, ...).
- Helpers:
  - `declareLocal(name, ty, is_mut, si)` — append to `current_->locals`,
    record in the top scope, return a fresh `LocalVarId`.
  - `resolveLocal(name)` — walk scopes top-to-bottom.
  - `pushScope()` / `popScope()` — block-scope discipline.
  - `resolveTy(node)` — convert a `typeRef`/expression to `mir::Ty`
    (current implementation maps to `mkUnit` when the type is unknown;
    expression-level types are inferred during MIR build).
  - `spanOf(node)` — fills `mir::Span { file=invalid, lo, hi }` from
    ANTLR `getStart()->getStartIndex()` and `getStop()->getStopIndex()+1`.

### 5.2 Per-construct lowerers

All of the following return `ExprPtr`/`StmtPtr` and live in
lowering.cpp. Each one dispatches on the concrete ANTLR context using
`dynamic_cast` against the generated parser types:

- `lowerFunction(FunctionContext*)` — entry point. Sets `name`,
  `return_ty`, walks `params()->param()` declaring each parameter as a
  local (mutability comes from `NCONST()` / absence of `CONST()`),
  then lowers `block()` into `root_block`.
- `lowerExpr(ExpressionContext / orExpr / andExpr / ...)` — full
  precedence chain. Mixed-operator levels (equality, relational,
  shift, additive, multiplicative) walk children explicitly to recover
  the operator token; single-operator levels use the inline
  `buildLeftFold` helper. Ternary `a ? b : c` lowers to `ExprKind::If`.
- `lowerLiteralExpr(PrimaryContext*)` — INT, TRUE/FALSE/SUCCESS,
  CHAR, BYTE, STRING, NULL, FLOAT. Integer literals are decoded with
  `std::from_chars` (hex/binary/decimal); strings via
  `decodeStringLiteral` (handles `\n\t\r\\"\0`); floats are encoded
  into `scalar` as a `memcpy`'d `double` bit pattern.
- `lowerIdentifierExpr(PrimaryContext*)` — produces `ExprKind::Var`,
  resolves the name through the optional `NameResolver` callback or
  the in-function scope chain. Emits a `Todo` if unresolved.
- `lowerAssignExpr(AssignmentContext*)` — synthesizes a `Var` LHS
  from `AssignTargetContext->ID`, lowers the RHS, wraps in
  `ExprKind::Assign`. Array/indexed targets currently emit `Todo`.
- `lowerCallExpr(FunctionCallContext*)` — callee name stashed in
  `str_value`; `callee` (a `FnDefId`) left at 0 until a global symbol
  resolver fills it. Args lowered from `ArgsContext->expression()`.
- `lowerRefExpr(BorrowExprContext*)` — `ref_mut = NCONST() ? Mut : Shared`.
- `lowerBlockExpr(BlockContext*)` — pushes a scope, iterates children
  routing `StatementContext` → `lowerStmt`, `ReturnStmtContext` →
  `lowerReturnExpr` wrapped as an `ExprStmt`. Pops the scope on exit.
- `lowerIfExpr` / `lowerWhileExpr` / `lowerReturnExpr` — direct CST
  field reads.
- `lowerLetStmt(StmtContext*)` — handles `init`, `initCore`, and
  `easyInit` grammar shapes. Honors `CONST()` for immutability,
  reads `typeRef()` if present, lowers the initializer expression, and
  calls `declareLocal` to bind the name into the current scope. Emits
  `StmtKind::Let { let_local, init }`.
- `lowerExprStmt(ExpressionContext*)` — trivial wrapper.

Constructs without grammar (e.g. unary, loop, match) currently produce
`ExprKind::Todo` so downstream MIR build remains total. Adding the
grammar rule is the trigger to flesh those lowerers out.

---

## 6. HIR → MIR Construction

MIR is Apollo's mid-level CFG-IR, modeled after Rust's MIR.

- Core types: [Apollo-Main/compiler/cpp/src/mir/core/](Apollo-Main/compiler/cpp/src/mir/core/)
  (`Body`, `Local`, `BasicBlock`, `Statement`, `Terminator`, `Place`,
  `Operand`, `Rvalue`, `Ty`).
- Builder:   [Apollo-Main/compiler/cpp/src/mir/build/builder.cpp](Apollo-Main/compiler/cpp/src/mir/build/builder.cpp),
              [Apollo-Main/compiler/cpp/src/mir/build/build_expr.cpp](Apollo-Main/compiler/cpp/src/mir/build/build_expr.cpp)
- Public entry: `apollo::mir::buildBody(const hir::Body&) -> mir::Body`.

`MirBuilder` walks the HIR `Body`:

1. Initializes one MIR `Local` for the return slot (`_0`) and one per
   parameter (`_1..`).
2. Maps each HIR `LocalVarId` to a MIR `Local` index.
3. Starts a single basic block `bb0` and lowers `root_block` via
   `lowerExpr` / `lowerStmt`.

Key shapes lowered by `build_expr.cpp`:

- **Literals** → `Rvalue::Use(Operand::Constant(...))`.
- **Var** → `Operand::Copy(Place::local(...))`.
- **Binary** → `Rvalue::BinaryOp(op, lhs, rhs)`.
- **Assign** → emits a `Statement::Assign(place, rvalue)` into the
  current block.
- **Block** → sequential `Statement` emission, with the optional tail
  expression yielding the block's value.
- **If** → splits into three blocks (then, else, join); the current
  block terminates with `SwitchInt(cond, [0→else, otherwise→then])`,
  and both arms terminate with `Goto(join)`. The join block's first
  local holds the merged value.
- **While** → header / body / exit blocks: header tests the condition
  via `SwitchInt`, body terminates with `Goto(header)`, exit becomes
  the new current block.
- **Call** → terminator `Call { func, args, destination, target }` —
  the successor block is the call site's continuation.
- **Return** → terminator `Return`.
- **Ref/AddrOf** → `Rvalue::Ref(BorrowKind::{Shared,Mut}, place)`.

The result is a closed MIR `Body` ready for the borrow checker.

A tiny end-to-end demonstration of this works in
[Apollo-Main/compiler/cpp/src/mir/apollo_mir_tests.cpp](Apollo-Main/compiler/cpp/src/mir/apollo_mir_tests.cpp),
which prints the MIR for a hand-built `count_up_to` function.

---

## 7. MIR Borrow Checker

The new MIR borrow checker is in
[Apollo-Main/compiler/cpp/src/borrowck/mir/](Apollo-Main/compiler/cpp/src/borrowck/mir/).

Entry: `apollo::borrowck::mir::checkBody(const mir::Body&, DiagSink&)`
in [Apollo-Main/compiler/cpp/src/borrowck/mir/borrowck.cpp](Apollo-Main/compiler/cpp/src/borrowck/mir/borrowck.cpp).

The checker runs a 6-stage pipeline:

1. **`buildCfg`** — derive successor/predecessor edges for each
   `BasicBlock`.
2. **`buildMovePaths`** — assign a `MovePathId` to every place
   referenced in the body. A move path is a rooted tree
   (`local` → fields/projections), with the root corresponding to one
   `Local`. Sibling fields are tracked as disjoint paths so partial
   moves and disjoint borrows work correctly.
3. **`buildLoanSets`** — scan all `Rvalue::Ref` operations and assign
   each a fresh `LoanId`, recording its borrow kind (`Shared`/`Mut`),
   borrowed place, and origin statement.
4. **`solveLoanLive`** — dataflow over the CFG computing the set of
   live loans entering each statement.
5. **`solveDefInit`** — definitely-initialized analysis: a place is
   initialized after an assignment to it (or to an ancestor path) and
   uninitialized after a move out.
6. **`runChecks`** — emits diagnostics:
   - Use-of-uninitialized / use-after-move.
   - Conflicting shared+mut or mut+mut loans on overlapping paths.
   - Assignment through immutable bindings.
   DEPRECATED (compiler now reroutes new borrow requests to aliases of old ones)- Reborrow conflicts (`&mut` while a `&` is live, etc.).

All diagnostic codes are enumerated in
[Apollo-Main/compiler/cpp/src/borrowck/mir/error_codes.h](Apollo-Main/compiler/cpp/src/borrowck/mir/error_codes.h)
(30+ distinct codes covering moves, loans, mutability, partial init,
re-borrow, drop-while-borrowed, etc.).

### 7.1 Boundary directives

Three directives suppress the borrow checker for explicit unsafe
regions, scanned during the `unsafe-boundary` phase:

- `@unsafe { ... }` — bypass within an expression/block.
- `@bypass(...)` — single-statement bypass.
- `#[borrow_checker(off)] int foo() { ... }` — function-level off-switch.

These are enforced uniformly across both the legacy AST checker and
the new MIR checker.

### 7.2 Wiring

`apollo::borrowck::mirBorrowCheckerPhases()` in
[Apollo-Main/compiler/cpp/src/borrowck/mir_pipeline.cpp](Apollo-Main/compiler/cpp/src/borrowck/mir_pipeline.cpp)
returns the single `mir-borrow-check` phase appended at the end of
`defaultPhases()`. When no HIR bodies are registered yet (e.g. running
a source without lowering hooked in), the phase logs:

> `[apollo] MIR borrow checker enabled; no MIR bodies registered (AST→MIR lowering pending).`

and exits cleanly. As soon as the front end builds a `hir::Body` for a
given function, `buildBody` produces a `mir::Body` and the phase runs
the full pipeline.

---

## 8. Codegen (LLVM IR)

After analysis succeeds, the visitor at
[Apollo-Main/compiler/cpp/src/visitor.cpp](Apollo-Main/compiler/cpp/src/visitor.cpp)
walks the CST emitting LLVM IR via the LLVM C++ API. Output lands in
`output/output.ll` (and intermediate `.ll` for inline foreign
surfaces).

GC write/read barriers are lowered through
[Apollo-Main/compiler/cpp/src/codegen/barriers.cpp](Apollo-Main/compiler/cpp/src/codegen/barriers.cpp),
which inserts calls to the appropriate `apollo_gc_*` ABI symbols.

The `.ll` files are then handed off to `clang++`/`lld` via the
toolchain scripts under [Apollo-Main/compiler/](Apollo-Main/compiler/)
(`exec.bat`, `exec.sh`, `toolchain-env.*`).

---

## 9. Garbage Collector Runtime

The GC seam header is
[Apollo-Main/GC/apollo_gc.hpp](Apollo-Main/GC/apollo_gc.hpp). At build
time, `APOLLO_GC_CONCURRENT` selects between the simple stop-the-world
collector and the Go-style concurrent collector. The concurrent
implementation lives in
[Apollo-Main/compiler/cpp/runtime_support/gc/](Apollo-Main/compiler/cpp/runtime_support/gc/)
(or wherever the build places `apollo_gc_concurrent`,
`apollo_gc_cards`, `apollo_gc_typedesc`, `apollo_gc_large`):

- **Cards** (`apollo_gc_cards.cpp`): 512-byte cards
  (`kCardShift = 9`); the write barrier marks cards dirty so the
  concurrent marker only re-scans changed regions.
- **Type descriptors** (`apollo_gc_typedesc.cpp`): registered per allocation
  type; allows generic tracing without per-object vtables.
- **Large objects** (`apollo_gc_large.cpp`): objects over
  `kLargeObjectThreshold = 32 KiB` are page-aligned via
  `_aligned_malloc` (Windows) / `posix_memalign` (POSIX) and tracked
  in a separate span list.
- **Concurrent marker**: tri-color marking with Dijkstra
  shade-on-write through the card table.

Test coverage:

- [apollo_gc_extensions_tests.cpp](Apollo-Main/compiler/cpp/src/apollo_gc_extensions_tests.cpp)
  — cards / typedesc / large-object plumbing.
- `apollo_gc_concurrent_tests` — the concurrent marker (occasionally
  flaky on heavily-loaded machines; rerun if a marker timing
  assertion trips).

---

## 10. Build & Test

Configure and build (Windows / MinGW Clang):

```powershell
$env:PATH = "C:\msys64\clang64\bin;$env:PATH"
cd Apollo-Main/compiler/cpp
cmake -S . -B build -G "MinGW Makefiles" `
      -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++
cmake --build build -j 6
```

Run all unit tests from `build/`:

```powershell
./apollo_runtime_tests.exe
./apollo_borrowck_tests.exe
./apollo_mir_tests.exe
./apollo_gc_extensions_tests.exe
./apollo_gc_concurrent_tests.exe
./apollo_driver_tests.exe
```

The runtime test exe additionally asserts the canonical phase order
returned by `ApolloCompilerRuntimeCycle::defaultPhaseNames()`.

---

## 11. Known Gaps & Future Work

- **HIR lowering — type resolution.** The `TyResolver` callback is
  still stubbed to `mkUnit()` when invoked from the `mir-borrow-check`
  phase. Real type inference output is wired through other channels
  and not yet plumbed into the lowering site; until then, MIR bodies
  carry unit-typed operands. Move/borrow shape (which is what the
  borrow checker uses) is unaffected.
- **HIR lowering — non-integer switch arms.** `lowerSwitchExpr` only
  handles arms whose discriminant is an integer literal. Other arm
  forms (string, enum tag, expression) emit a `Todo` and are skipped.
- **HIR lowering — for-in iteration shape.** `lowerForInExpr`
  evaluates the iterable once and declares the loop binding so the
  borrow checker sees both, but the iterator-advance shape is left as
  a `Todo` and the body is not lowered.
- **Front-end fan-out.** `mir-borrow-check` lowers and checks every
  top-level `function` in the parse tree. Class/struct/lambda bodies
  are not yet routed through the lowerer.

---

## 12. Quick Reference

| Stage              | Driver function                              | File                                                                                       |
|--------------------|----------------------------------------------|--------------------------------------------------------------------------------------------|
| Preprocess         | `preprocessor::preprocessFile`               | [apollo_source_preprocessor.cpp](Apollo-Main/compiler/cpp/src/apollo_source_preprocessor.cpp) |
| Lex/parse          | `compilerv1Parser::program()`                | `Apollo-Main/compiler/cpp/generated/`                                                      |
| Runtime cycle      | `ApolloCompilerRuntimeCycle::runAll`         | [apollo_runtime.cpp](Apollo-Main/compiler/cpp/src/apollo_runtime.cpp)                       |
| AST→HIR            | `AstLowerer::lowerFunction`                  | [hir/lowering.cpp](Apollo-Main/compiler/cpp/src/hir/lowering.cpp)                           |
| HIR→MIR            | `mir::buildBody`                             | [mir/build/builder.cpp](Apollo-Main/compiler/cpp/src/mir/build/builder.cpp)                 |
| MIR borrow check   | `borrowck::mir::checkBody`                   | [borrowck/mir/borrowck.cpp](Apollo-Main/compiler/cpp/src/borrowck/mir/borrowck.cpp)         |
| Codegen            | `Visitor::visit*`                            | [visitor.cpp](Apollo-Main/compiler/cpp/src/visitor.cpp)                                    |
| GC barriers        | `codegen::barriers::emit*`                   | [codegen/barriers.cpp](Apollo-Main/compiler/cpp/src/codegen/barriers.cpp)                   |
| GC runtime         | `apollo_gc_*` ABI                            | [GC/apollo_gc.hpp](Apollo-Main/GC/apollo_gc.hpp) + `runtime_support/gc/*`                   |
