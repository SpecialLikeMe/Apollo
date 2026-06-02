# Schedule

## What it is

A `schedule` declaration names a scheduler-driven task surface. It declares one or more mandatory schedule members, then lets top-level statements start the scheduler, insert work, and drain it.

This is Apollo's built-in scheduler DSL. It is separate from plain `async` calls and from ordinary loops.

## When you use it

You reach for `schedule` when:

- You want named scheduler entry points instead of ad hoc task spawning.
- You need to register mandatory work blocks once and trigger them through the scheduler runtime.
- You are using communal runtime features that depend on scheduler support.

## Syntax

```antlr
scheduleDecl        : 'schedule' ID '{' scheduleMember* '}' ;
scheduleMember      : mandatoryScheduleMember ;
mandatoryScheduleMember : 'mandatory' ID block ;

schedulerStartStmt  : ID '.' 'new' '(' ID ')' '.' ('detatch' | 'detach' | 'join') '(' ')' ';' ;
schedulerInsertStmt : ID '.' 'ins' '(' ID ',' expression ')' block ;
schedulerVoidStmt   : ID '.' ('schvoid' | 'void') '(' ')' ';' ;
```

## Semantics

A `schedule` declaration introduces a scheduler-named surface and one or more mandatory member blocks. The runtime-facing scheduler statements then operate on that surface:

- `Name.new(runner).detatch();` or `.detach();` starts the scheduler without waiting.
- `Name.new(runner).join();` starts the scheduler and waits for completion.
- `runner.ins(member, expr) { ... }` inserts work associated with the named schedule member.
- `runner.schvoid();` or `runner.void();` drains or finalizes the scheduled work queue.

The scheduler runtime must be available for these forms. The frontend marks the file as using scheduler support as soon as it sees any of these nodes.

## Examples

### Basic schedule declaration

```apollo
schedule Pipeline {
    mandatory heartbeat {
        sys.println("tick");
    }
}
```

This declares a scheduler surface named `Pipeline` with one mandatory member named `heartbeat`.

### Detached start

```apollo
schedule Pipeline {
    mandatory heartbeat {
        sys.println("tick");
    }
}

Pipeline.new(runner).detatch();
```

`detatch` is accepted as the existing legacy spelling.

### Detached start with the corrected alias

```apollo
schedule Pipeline {
    mandatory heartbeat {
        sys.println("tick");
    }
}

Pipeline.new(runner).detach();
```

`detach` is the clearer spelling, but it lowers through the same scheduler-start surface.

### Inserting scheduled work

```apollo
schedule Pipeline {
    mandatory heartbeat {
        sys.println("tick");
    }
}

Pipeline.new(runner).detatch();
runner.ins(heartbeat, 5) {
    sys.println("run");
}
```

The `ins(...) { ... }` statement names the schedule member and supplies a payload expression plus a block.

### Draining the scheduler

```apollo
schedule Pipeline {
    mandatory heartbeat {
        sys.println("tick");
    }
}

Pipeline.new(runner).detatch();
runner.ins(heartbeat, 5) {
    sys.println("run");
}
runner.schvoid();
```

`schvoid()` is the scheduler-specific spelling for the drain/finalize step.

## Common mistakes

- **Using `schedule` without any members.** The body is meant to declare mandatory scheduler members.
- **Expecting `schedule` to behave like a loop.** It declares scheduler entry points; it does not execute by itself.
- **Calling scheduler statements without scheduler runtime support.** These statements are only meaningful when the scheduler runtime is part of the program surface.
- **Confusing `async` with `schedule`.** `async worker();` is a separate statement form.

## See also

- `docs/language/functions-and-interop/docs/async-call.md` — statement-form async calls.
- `docs/language/directives/docs/borrow-checker-directive.md` — related runtime policy surfaces.
- `docs/language/declarations/docs/memstruct.md` — communal and runtime-heavy aggregate declarations.