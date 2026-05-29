# `std portability`

## What it is

The `portability` module exposes operating-system-aware helpers: host detection, path separator, executable suffix, environment variables, current working directory, executable path, process ID, CPU count, hostname, temp directory, path join, and a millisecond sleep. These let code adapt to platform conventions without inline foreign code.

## When you use it

- Building portable file paths (`path_join` with `path_separator`).
- Reading/writing environment variables.
- Detecting Windows vs POSIX to choose conventions.
- Quick `sleep_ms` for timing in tests and demos.

## API surface

All in `namespace sys`:

- Platform: `sys.host_is_windows()`, `sys.path_separator()`, `sys.exe_suffix()`.
- Environment: `sys.env_get(key)`, `sys.env_set(key, value)`, `sys.env_remove(key)`.
- Directories: `sys.current_dir()`, `sys.set_current_dir(path)`, `sys.temp_dir()`.
- Identity: `sys.executable_path()`, `sys.process_id()`, `sys.host_name()`.
- CPU: `sys.cpu_count()`.
- Paths: `sys.path_join(left, right)`.
- Timing: `sys.sleep_ms(value)`.

## Examples

### Platform-aware paths

```apollo
extern std portability;

int main() {
    nconst str sep = sys.path_separator();
    sys.println("path separator: ${sep}");
    nconst str path = sys.path_join("config", "app.json");
    sys.println(path);
    return 0;
}
```

`path_join` inserts the platform's separator; you don't hard-code `/` or `\`.

### Environment

```apollo
extern std portability;

int main() {
    nconst str home = sys.env_get("HOME");
    if (sys.str_len(home) == 0) {
        home = sys.env_get("USERPROFILE");   // Windows fallback
    }
    sys.println("home = ${home}");
    return 0;
}
```

### Identity

```apollo
extern std portability;

int main() {
    sys.printf("pid=%d host=%s exe=%s\n",
        sys.process_id(), sys.host_name(), sys.executable_path());
    return 0;
}
```

### CPU count

```apollo
extern std portability;

int main() {
    sys.printf("running on %d CPUs\n", sys.cpu_count());
    return 0;
}
```

Useful for sizing worker pools.

### Sleep

```apollo
extern std portability;

int main() {
    sys.println("waiting...");
    sys.sleep_ms(250);
    sys.println("done");
    return 0;
}
```

### Platform branch

```apollo
extern std portability;

void show_temp_dir() {
    if (sys.host_is_windows() == 1) {
        sys.println("Windows temp: ${sys.temp_dir()}");
    } else {
        sys.println("POSIX temp: ${sys.temp_dir()}");
    }
}

int main() {
    show_temp_dir();
    return 0;
}
```

## Common mistakes

- **Hard-coding path separators.** Use `sys.path_join` or `sys.path_separator()`.
- **Reading env vars synchronously after they change.** Env mutations from inline foreign code may not be visible until re-read.
- **Long sleeps in scheduler-managed code.** `sleep_ms` blocks the thread; for async backoff, use `std task` constructs.
- **`env_set` from a subprocess.** Setting an env var affects this process only; child processes get a snapshot at spawn.
- **`cpu_count` returns logical CPUs, not physical.** Hyperthreading doubles the count on most modern CPUs.

## See also

- `docs/stdlib/system/docs/fs.md` — filesystem.
- `docs/stdlib/system/docs/process.md` — spawning subprocesses.
- `docs/stdlib/system/docs/time.md` — timing.
- `Apollo-Main/include/portability.apollo` — source.
