# Nativemode

## What it is

`nativemode` is a top-level directive that switches a source file (or a region within it) into a closer-to-native mode of compilation. In nativemode, Apollo relaxes a few high-level conventions in favor of behavior closer to the target's native ABI:

- Runtime panics on errors that would normally throw become plain traps.
- The borrow checker is reduced to advisory diagnostics (still reports issues but does not stop compilation).
- Stdlib helpers that allocate or do bookkeeping route to lighter alternatives where possible.
- Inline foreign blocks operate with reduced shimming.

Nativemode is intended for systems code and FFI-heavy modules that need to behave like the platform expects.

## When you use it

- Implementing low-level routines that must match a C ABI exactly.
- Writing platform shims that need to avoid runtime allocation.
- Embedding Apollo inside a larger native program where the Apollo runtime is unwelcome.
- Building OS-level components that cannot tolerate the standard runtime's behavior.

For ordinary application code, leave nativemode off. The default mode provides safety guarantees the language is built around.

## Syntax

```
nativemodeDecl : 'nativemode' nativeOptions? ';' ;
nativeOptions : '(' nativeFlag (',' nativeFlag)* ')' ;
nativeFlag    : 'no_runtime' | 'no_borrow_panic' | 'c_abi_only' | ID ;
```

The directive appears at the top of the file, before any other declarations. Options refine which native behaviors apply.

## Semantics

A `nativemode` directive at file scope affects the entire file. The exact set of changes depends on which flags are specified:

- `no_runtime` — disable the Apollo standard runtime. Programs may not use any stdlib module that depends on runtime support (collections, task, regex, etc.).
- `no_borrow_panic` — borrow violations become warnings rather than errors.
- `c_abi_only` — every exported function uses the C ABI; closures and capturing forms are rejected.

Without flags, `nativemode;` applies a sensible default subset for systems-level work.

The borrow checker still runs in nativemode but reports findings at a lower severity (or skipped, with `no_borrow_panic`).

## Examples

### Basic nativemode declaration

```apollo
nativemode;

void hello() {
    sys.println("hello from native mode");
}

int main() {
    hello();
    return 0;
}
```

The file declares nativemode at the top. Default behaviors apply.

### Nativemode with no runtime

```apollo
nativemode(no_runtime);

inline foreign c export (fn write_byte(u8) -> void) {
    #include <unistd.h>
    void write_byte(unsigned char b) {
        write(1, &b, 1);
    }
}

int main() {
    write_byte(0x48);  // H
    write_byte(0x69);  // i
    write_byte(0x0a);  // \n
    return 0;
}
```

No runtime means no `sys.println`. The program goes through inline foreign C for IO.

### C ABI only

```apollo
nativemode(c_abi_only);

i32 add(i32 a, i32 b) {
    return a + b;
}

i32 sub(i32 a, i32 b) {
    return a - b;
}

int main() {
    sys.println(add(3, 4));
    sys.println(sub(10, 3));
    return 0;
}
```

Each function is exported with C calling convention. No closures or captures permitted.

### Embedded in a hybrid program

```apollo
// regular.apollo
extern std collections;

int main() {
    nconst vector<int> v = <1, 2, 3>;
    for (nconst int x : v) {
        sys.println(x);
    }
    sys.println(low_level_add(40, 2));
    return 0;
}

// low_level.apollo
nativemode(c_abi_only);

i32 low_level_add(i32 a, i32 b) {
    return a + b;
}
```

A normal Apollo file calls into a nativemode file. The link works because the nativemode function uses C ABI, accessible from the high-level side.

### Nativemode with borrow checker as advisory

```apollo
nativemode(no_borrow_panic);

void unsafe_alias(nconst int& a, nconst int& b) {
    // Apollo's borrow checker would normally reject overlapping mutable borrows,
    // but in this mode the diagnostic is informational.
    *a = *a + *b;
    *b = *b - *a;
}

int main() {
    int x = 10;
    int y = 3;
    unsafe_alias(&x, &y);
    sys.println(x);
    sys.println(y);
    return 0;
}
```

The borrow checker still reports issues so they can be reviewed; compilation continues.

### File of platform syscalls

```apollo
nativemode(no_runtime);

inline foreign c export (fn os_open(i8*, i32) -> i32, fn os_close(i32) -> i32) {
    #include <fcntl.h>
    #include <unistd.h>
    int os_open(const char* path, int flags) { return open(path, flags); }
    int os_close(int fd) { return close(fd); }
}

int main() {
    nconst i32 fd = os_open("/etc/hostname", 0);
    if (fd >= 0) {
        os_close(fd);
    }
    return 0;
}
```

A pure-systems file: nativemode, no runtime, only C-level functionality.

## Common mistakes

- **Using stdlib modules with `no_runtime`.** Most stdlib depends on runtime support; the build will fail at link time.
- **Forgetting to put `nativemode` first.** It must precede other top-level declarations.
- **Mixing nativemode and high-level Apollo in the same file.** All or nothing per file.
- **Assuming `no_borrow_panic` makes unsafe code safe.** It only changes diagnostic severity. The semantic issues are still there.
- **Using closures with `c_abi_only`.** Rejected — closures have an environment pointer, incompatible with the C calling convention.

## See also

- `docs/language/directives/docs/nativemode-directive.md` — directive cross-reference.
- `docs/language/functions-and-interop/docs/inline-foreign-block.md` — common partner.
- `docs/language/functions-and-interop/docs/syscall.md` — direct syscalls.
- `docs/language/declarations/docs/memstruct.md` — layouts native code requires.
