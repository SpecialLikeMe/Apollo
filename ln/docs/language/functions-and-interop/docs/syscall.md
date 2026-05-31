# Syscall

## What it is

`syscall` is a low-level operator that invokes an operating-system call directly, bypassing the standard libc wrapper. The syscall is identified by its platform-specific number; the operator supplies the number and arguments and returns the kernel's result.

This is the most direct path from Apollo to the kernel. Use it when the standard library's wrappers are unavailable, undesirable, or insufficient.

## When you use it

- Implementing low-level IO that must not go through buffered libc.
- Building a minimal runtime that does not link against libc.
- Calling syscalls that libc does not expose.
- Writing system tooling that exercises specific kernel behaviors.

For ordinary file/process/network work, use the `fs`, `process`, and `net` modules. They handle platform variation and resource management.

## Syntax

```
syscallExpr : 'syscall' '(' INT_LIT (',' expression)* ')' ;
```

The first argument is the syscall number (compile-time integer literal). Subsequent arguments are the syscall's parameters in platform order. The result is a 64-bit integer holding the kernel's return value.

## Semantics

`syscall(N, a, b, c, ...)`:

1. Loads each argument into the platform's syscall argument register.
2. Loads `N` into the syscall number register.
3. Issues the platform's syscall instruction (`syscall` on x86-64 Linux, `svc` on aarch64, etc.).
4. Reads the result from the platform's return register and yields it as `i64`.

The number and meaning of arguments are *not* validated. The programmer is responsible for matching the kernel's expectations.

Result conventions vary by platform: Linux uses negative values for errno; macOS uses a separate carry flag for error indication. Treat the return value accordingly.

`syscall` is only available in nativemode files (or files explicitly opting in) on platforms where direct syscalls are supported.

## Examples

### Linux write to stdout

```apollo
nativemode(no_runtime);

int main() {
    nconst i64 SYS_WRITE = 1;
    nconst u8[6] msg = <'h', 'e', 'l', 'l', 'o', 0x0a>;
    syscall(SYS_WRITE, 1, &nconst msg, 6);
    return 0;
}
```

`SYS_WRITE` is syscall number 1 on Linux x86-64. The call writes 6 bytes to fd 1 (stdout).

### Linux exit

```apollo
nativemode(no_runtime);

int main() {
    nconst i64 SYS_EXIT = 60;
    syscall(SYS_EXIT, 0);
    return 0;     // unreachable
}
```

`SYS_EXIT` terminates the process; the return statement is unreachable.

### Linux open and close

```apollo
nativemode(no_runtime);

int main() {
    nconst i64 SYS_OPEN  = 2;
    nconst i64 SYS_CLOSE = 3;
    nconst i64 fd = syscall(SYS_OPEN, "/etc/hostname", 0);
    if (fd >= 0) {
        syscall(SYS_CLOSE, fd);
    }
    return 0;
}
```

A minimalist open/close pair without going through libc.

### Reading errno-style returns

```apollo
nativemode(no_runtime);

int main() {
    nconst i64 SYS_GETPID = 39;
    nconst i64 pid = syscall(SYS_GETPID);
    if (pid >= 0) {
        sys.printf("pid=%lld\n", pid);
    } else {
        sys.printf("errno=%lld\n", -pid);
    }
    return 0;
}
```

Linux returns negative errno on failure; treat the result accordingly.

### Linux clock_gettime

```apollo
nativemode(no_runtime);

memstruct Timespec #[c_layout] {
    i64 tv_sec;
    i64 tv_nsec;
};

int main() {
    nconst i64 SYS_CLOCK_GETTIME = 228;
    nconst i64 CLOCK_REALTIME = 0;
    nconst Timespec ts = Timespec(0, 0);
    nconst i64 result = syscall(SYS_CLOCK_GETTIME, CLOCK_REALTIME, &nconst ts);
    if (result == 0) {
        sys.printf("now: %lld.%09lld\n", ts.tv_sec, ts.tv_nsec);
    }
    return 0;
}
```

A memstruct supplies the kernel-expected layout for the timespec output.

### Syscall with no arguments

```apollo
nativemode(no_runtime);

int main() {
    nconst i64 SYS_GETUID = 102;
    nconst i64 uid = syscall(SYS_GETUID);
    sys.printf("uid=%lld\n", uid);
    return 0;
}
```

Some syscalls take no arguments — just the number.

## Common mistakes

- **Wrong syscall number.** Numbers differ across platforms (Linux vs macOS) and even across architectures (x86-64 vs aarch64).
- **Wrong argument count.** Apollo does not validate; the kernel will misinterpret stack/register state.
- **Missing alignment for memory arguments.** Some syscalls require specific alignment; mis-aligned buffers may produce errors or undefined behavior.
- **Using syscall outside nativemode.** Rejected on platforms where the language gates direct syscalls.
- **Treating the return as unsigned blindly.** Linux returns negative errno; mistaking it for a valid result causes confusion.

## See also

- `docs/language/functions-and-interop/docs/nativemode.md` — required mode.
- `docs/stdlib/system/docs/process.md`, `fs.md`, `time.md` — high-level alternatives.
- `docs/language/declarations/docs/memstruct.md` — kernel-shaped layouts.
- `docs/language/functions-and-interop/docs/inline-foreign-block.md` — alternative escape hatch.
