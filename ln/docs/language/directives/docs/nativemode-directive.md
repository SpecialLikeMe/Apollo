# Nativemode directive

## What it is

The `nativemode` directive is the file-level switch that puts a source file into a closer-to-native compilation mode. It is the same surface described in `docs/language/functions-and-interop/docs/nativemode.md`; this page is the directive-centric cross-reference for users browsing the directive catalog.

See `docs/language/functions-and-interop/docs/nativemode.md` for the full description with examples, flag semantics, and gotchas.

## Quick reference

Syntax:

```
nativemode (no_runtime)? (no_borrow_panic)? (c_abi_only)? ;
```

Flags (any combination):

- `no_runtime` — exclude Apollo's standard runtime; only inline foreign and syscall surfaces are available.
- `no_borrow_panic` — borrow violations become warnings.
- `c_abi_only` — every exported function uses the C calling convention; closures and capturing forms are rejected.

Placement: must precede any other top-level declaration in the file.

## Examples

### Minimal directive

```apollo
nativemode;

int main() {
    sys.println("hello from native mode");
    return 0;
}
```

### Combined flags

```apollo
nativemode(no_runtime, c_abi_only);

inline foreign c export (fn os_write(i32, i8*, i64) -> i64) {
    #include <unistd.h>
    long os_write(int fd, const char* buf, long len) {
        return write(fd, buf, len);
    }
}

i32 main() {
    nconst i8[6] msg = <'h', 'e', 'l', 'l', 'o', 0x0a>;
    os_write(1, &nconst msg, 6);
    return 0;
}
```

### Coexisting with attribute-block directives

```apollo
nativemode(no_borrow_panic);

#[lto:thin]
int hot_path(int a, int b) {
    return a + b;
}

int main() {
    sys.println(hot_path(3, 4));
    return 0;
}
```

The `nativemode` directive and the attribute-block `#[lto:thin]` apply independently.

### File of platform constants

```apollo
nativemode;

const i64 SYS_WRITE = 1;
const i64 SYS_EXIT  = 60;

int main() {
    syscall(SYS_WRITE, 1, "ok\n", 3);
    syscall(SYS_EXIT, 0);
    return 0;
}
```

A nativemode file holding syscall numbers as named constants.

### Subset of stdlib still allowed

```apollo
nativemode;   // no flags — full nativemode default

extern std core;

int main() {
    sys.println(core.size_of<i32>());
    return 0;
}
```

Without `no_runtime`, stdlib modules remain available.

### Per-target conditional via attribute block

```apollo
nativemode(no_runtime);

#[target:linux]
int linux_only() {
    return 1;
}

#[target:macos]
int macos_only() {
    return 1;
}

int main() {
    return 0;
}
```

The nativemode directive interacts with target-specific attributes for cross-platform native modules.

## See also

- `docs/language/functions-and-interop/docs/nativemode.md` — full description.
- `docs/language/functions-and-interop/docs/inline-foreign-block.md` — typical companion.
- `docs/language/functions-and-interop/docs/syscall.md` — direct syscall surface.
- `docs/language/directives/docs/attribute-block.md` — other directive syntax.
