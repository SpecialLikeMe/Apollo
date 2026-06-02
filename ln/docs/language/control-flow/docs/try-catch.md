# Try / catch

## Current surface

Apollo currently parses `try` / `catch` with this fixed shape:

```antlr
tryCatchStatement : TRY block CATCH '(' TERMINALEXCEPTION '(' ID ')' ')' block ;
```

In source that looks like:

```apollo
try {
    record(total);
} catch (terminalexception(ex)) {
    total = total + 4;
}
```

## What is not in the grammar

- no typed `catch` parameter
- no bare `catch (err)` form
- no `finally`

The current catch surface specifically names `terminalexception(identifier)`.

## Current backend behavior

The native backend currently lowers the `try` block body, but does not model the older fully featured exception behavior described in previous docs. The existing lowering path does not execute a distinct catch-handling flow in the way those docs claimed.

So this page should be read as: the syntax exists, but the implementation is presently narrower than a full exception system.

## See also

- `Apollo-Main/compiler/compilerv1.g4`
- `Apollo-Main/compiler/cpp/src/visitor.cpp`
- `Apollo-Main/compiler/tests/grammar/pass/control_flow_surface.apollo`
