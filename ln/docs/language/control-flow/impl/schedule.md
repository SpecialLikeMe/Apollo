# Schedule — implementation

## Grammar surface

From `Apollo-Main/compiler/compilerv1.g4`:

```antlr
scheduleDecl          : SCHEDULE ID LBRACE scheduleMember* RBRACE ;
scheduleMember        : mandatoryScheduleMember ;
mandatoryScheduleMember : MANDATORY ID block ;

schedulerStartStmt    : ID '.' 'new' '(' ID ')' '.' schedulerStartMode '(' ')' ';' ;
schedulerStartMode    : DETATCH | DETACH | JOIN ;
schedulerInsertStmt   : ID '.' INS '(' ID ',' expression ')' block ;
schedulerVoidStmt     : ID '.' (SCHVOID | 'void') '(' ')' ';' ;
```

The scheduler surface is split between a declaration node (`scheduleDecl`) and three statement nodes for start, insert, and drain.

## Parse tree shape

The parser produces:

- `ScheduleDeclContext` for the `schedule Name { ... }` declaration
- `SchedulerStartStmtContext` for `Name.new(runner).detatch();`, `.detach();`, and `.join();`
- `SchedulerInsertStmtContext` for `runner.ins(member, expr) { ... }`
- `SchedulerVoidStmtContext` for `runner.schvoid();` and `runner.void();`

## Frontend validation

In `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`, each of these nodes marks the program as using scheduler runtime support:

- `visitScheduleDecl(...)`
- `visitSchedulerStartStmt(...)`
- `visitSchedulerInsertStmt(...)`
- `visitSchedulerVoidStmt(...)`

Those visitors set `usesSchedulerRuntime_ = true` and then recurse into children. That is the main frontend contract for the surface today.

## Lowering

The current HIR lowering keeps scheduler statements as explicit statement nodes rather than erasing them into unrelated control-flow forms.

In `Apollo-Main/compiler/cpp/src/hir/lowering.cpp`:

- `SchedulerInsertStmtContext` lowers into a unit block that retains both the payload expression and the attached block
- `SchedulerStartStmtContext` lowers into a unit block marker
- `SchedulerVoidStmtContext` lowers into a unit block marker

That preserves the scheduler surface for later stages without pretending the syntax is just an ordinary function call.

## Runtime support

Scheduler usage is recorded in the runtime feature metadata emitted by `Apollo-Main/compiler/cpp/src/visitor.cpp`. The downstream runtime path decides how to interpret and link that scheduler-enabled program.

## Edges and gotchas

- Both `detatch` and `detach` are accepted by grammar. They are aliases of the same start-mode surface.
- `schvoid()` and `.void()` are also grammar aliases of the same drain/finalize node.
- The scheduler feature is independent of plain `async` call syntax, even though both surfaces imply concurrency-related runtime support.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4`
- Frontend validation: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- HIR lowering: `Apollo-Main/compiler/cpp/src/hir/lowering.cpp`
- Coverage: `Apollo-Main/compiler/tests/grammar/pass/schedule_surface.apollo`