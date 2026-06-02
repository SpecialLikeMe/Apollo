# DEPREACATED

# Syscall

## Current surface

Apollo currently parses `syscall` as a statement, not as an expression with explicit arguments:

```antlr
syscallStmt : SYSCALL ('-' ALL)? ';' ;
```

That gives two accepted forms:

```apollo
syscall;
syscall -recursive;
```

## Current backend behavior

The native backend currently only checks that a `syscallStmt` node exists. It does not lower the old documented `syscall(number, args...)` expression surface, because that surface is not in the grammar.

So the accurate statement today is:

- `syscall;` and `syscall -recursive;` are accepted statement forms
- there is no language-level syscall expression with argument lists in the current grammar
- native lowering currently treats the statement as accepted surface, not as a modeled kernel-call API

## Example

```apollo
int main() {
    syscall;
    return 0;
}
```

## See also

- `docs/language/functions-and-interop/docs/nativemode.md`
- `Apollo-Main/compiler/compilerv1.g4`
- `Apollo-Main/compiler/cpp/src/visitor.cpp`
- `Apollo-Main/compiler/tests/grammar/pass/runtime_surface.apollo`
