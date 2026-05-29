# Syscall — implementation

## Grammar surface

```antlr
syscallExpr : 'syscall' '(' INT_LIT (',' expression)* ')' ;
```

`syscall` is a reserved keyword. The first argument is constrained to be an integer literal.

## Parse tree shape

A `SyscallExprContext` exposes the syscall number `INT_LIT()` and the ordered list of argument `expression()` entries.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Requires the surrounding file to be in nativemode (or explicitly opted-in) on platforms where syscalls are gated.
2. Validates the syscall number is in the platform's expected range.
3. Resolves each argument expression; permits integer, pointer, or pointer-typed argument expressions only.
4. Sets the result type to `i64`.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

- On Linux x86-64: emits inline assembly placing arguments in `rdi`, `rsi`, `rdx`, `r10`, `r8`, `r9` and the syscall number in `rax`, then the `syscall` instruction; reads the result from `rax`.
- On Linux aarch64: emits inline assembly placing arguments in `x0..x5` and the syscall number in `x8`, then `svc #0`.
- On macOS: similar but with platform-specific register conventions and a carry-flag check for error indication.
- On Windows: rejected — direct syscalls are not exposed at the language level.

## Runtime support

None — the syscall instruction is the runtime.

## Edges and gotchas

- The frontend cannot validate that the syscall number matches the supplied argument count. That correctness is on the programmer.
- Some syscalls have multiple variants (e.g., 32-bit vs 64-bit file offsets on 32-bit Linux). The numbers and signatures are platform-architecture-specific.
- Pointer arguments must remain valid for the duration of the syscall. The compiler does not insert pinning; nativemode programs are expected to manage this manually.
- `syscall` is a leaf operation: it does not invoke any Apollo function, so the borrow checker does not track flow through it.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`syscallExpr`)
- Frontend: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
