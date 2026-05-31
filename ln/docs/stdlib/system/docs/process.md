# `std process`

## What it is

The `process` module spawns and manages child processes. A `process` is an opaque handle representing a running child. The module supports spawn, wait (blocking or polling), exit-code inspection, completion check, kill, and command-string introspection.

## When you use it

- Running an external tool from Apollo code.
- Coordinating with another program (compiler invocation, packager, system command).
- Building automation scripts.

For piped I/O between processes, the current surface is minimal; richer pipe handling lives in extensions of this module.

## API surface

All in `namespace sys`:

- `sys.process_spawn(command)` → `process` handle. Command is a shell command line.
- `sys.process_wait(p)` → `i32` (blocks for exit; returns exit code).
- `sys.process_try_wait(p)` → `i32` (1 if exited, 0 if still running).
- `sys.process_exit_code(p)` → `i32`.
- `sys.process_completed(p)` → `i32` (1 once exited).
- `sys.process_kill(p)` → `i32` (1 on successful kill request).
- `sys.process_command(p)` → `str` (the command string used to spawn).

## Examples

### Run and wait

```apollo
extern std process;

int main() {
    nconst process p = sys.process_spawn("echo hello");
    nconst i32 code = sys.process_wait(p);
    sys.printf("exit code: %d\n", code);
    return 0;
}
```

### Poll completion

```apollo
extern std process;
extern std portability;

int main() {
    nconst process p = sys.process_spawn("sleep 1");
    while (sys.process_try_wait(p) == 0) {
        sys.println("still running...");
        sys.sleep_ms(200);
    }
    sys.printf("done with code %d\n", sys.process_exit_code(p));
    return 0;
}
```

`try_wait` is non-blocking; combine with `sleep_ms` for a polling pattern.

### Kill a runaway

```apollo
extern std process;
extern std portability;

int main() {
    nconst process p = sys.process_spawn("sleep 30");
    sys.sleep_ms(100);
    sys.process_kill(p);
    sys.process_wait(p);
    sys.printf("killed; exit code = %d\n", sys.process_exit_code(p));
    return 0;
}
```

### Inspect command

```apollo
extern std process;

int main() {
    nconst process p = sys.process_spawn("ls -la");
    sys.println("running: ${sys.process_command(p)}");
    sys.process_wait(p);
    return 0;
}
```

### Conditional command

```apollo
extern std process;
extern std portability;

int main() {
    nconst str cmd = sys.host_is_windows() == 1 ? "dir" : "ls";
    nconst process p = sys.process_spawn(cmd);
    sys.process_wait(p);
    return 0;
}
```

### Multiple in parallel

```apollo
extern std process;

int main() {
    nconst process a = sys.process_spawn("echo a");
    nconst process b = sys.process_spawn("echo b");
    nconst process c = sys.process_spawn("echo c");
    sys.process_wait(a);
    sys.process_wait(b);
    sys.process_wait(c);
    sys.println("all three completed");
    return 0;
}
```

Each spawn is independent; wait on each handle in turn.

## Common mistakes

- **Not waiting on spawned processes.** Unwaited children may zombify; always call `wait` or `try_wait` to completion.
- **Building command strings from user input without escaping.** Shell injection risk; sanitize inputs.
- **Calling `exit_code` before completion.** Result is undefined; check `completed` or `wait` first.
- **Killing without waiting.** Some platforms require a subsequent wait to reap the zombie.
- **Assuming output is captured.** This minimal surface does not redirect stdout/stderr; for capture, use a higher-level shell wrapper or shell redirection in the command.

## See also

- `docs/stdlib/system/docs/portability.md` — `process_id`, `executable_path`.
- `docs/stdlib/system/docs/fs.md` — read files the subprocess writes.
- `docs/stdlib/concurrency/docs/task.md` — async wrapping of process waits.
- `Apollo-Main/include/process.apollo` — source.
