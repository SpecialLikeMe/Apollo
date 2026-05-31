# Try / catch statement — implementation

## Grammar surface

From `Apollo-Main/compiler/compilerv1.g4`:

```antlr
tryCatchStatement
    : 'try' block 'catch' '(' (typeRef? ID)? ')' block
      ('finally' block)?
    ;
```

The catch clause's parameter is fully optional; an empty `catch ()` matches anything without binding the error value.

## Parse tree shape

A `TryCatchStatementContext` exposes the `try` body block, the catch parameter (optional `typeRef` and `ID`), the catch body block, and an optional `finally` block.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp` validates a try/catch by:

1. Recursing into the try body in a fresh scope.
2. Validating the catch parameter type if present.
3. Introducing the catch parameter binding into the catch block's scope.
4. Recursing into the catch body.
5. Recursing into the finally body if present.
6. Recording the try/catch as a throw handler for the duration of the try body.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

1. The try body is lowered into a landing-pad-enclosed region. Calls inside the region carry exception-handling metadata.
2. A landing pad collects thrown values. The pad branches to the catch block if the value matches the declared type (or unconditionally if the type is absent), otherwise it propagates the error to the enclosing handler.
3. The catch block lowers normally, ending with a branch to the finally block (or the join block if no finally is present).
4. The try body's normal-exit edge also branches to the finally block.
5. The finally block lowers as a normal block ending with either re-raise (if it was reached via the propagation path) or branch to the join block (if reached normally or after catch).

## Runtime support

The throw/catch mechanism uses the platform's structured-exception runtime. The runtime hooks live in `Apollo-Main/compiler/runtime_support/`. Cross-target builds rely on the platform's libunwind or equivalent.

## Edges and gotchas

- Try/catch is not the cheap path. It introduces landing-pad metadata and inhibits some optimizations within the try region. Use `result` for ordinary failure handling.
- Errors thrown inside `finally` replace any pending error from the try or catch blocks. The runtime drops the original in favor of the new one.
- A catch parameter type that does not match propagates the error past the catch. Programs that want to catch everything should omit the type.
- The catch parameter binding's lifetime is the catch block only.
- Returning from inside `try`, `catch`, or `finally` still runs subsequent `finally` blocks on the way out.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`tryCatchStatement`)
- Frontend validation: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
- Runtime hooks: `Apollo-Main/compiler/runtime_support/`
