# Inline foreign block

## What it is

An inline foreign block embeds source written in another language directly inside an Apollo source file. The block's contents are passed to a foreign compiler (Clang for C/C++, rustc for Rust) and exposed to Apollo as a set of callable foreign symbols. The block also declares the symbols' Apollo-side signatures so the rest of the program can call them safely.

Inline foreign blocks are how Apollo programs integrate with libraries that aren't worth wrapping at the system layer, prototype FFI work, or write small bits of platform-specific code inline.

## When you use it

- Embedding a snippet of C for tight numeric work.
- Calling into a Rust crate by writing the bridge inline.
- Working with platform APIs that require small adapters.
- Prototyping a foreign integration before extracting it to a separate file.

For larger foreign codebases, prefer building them separately and linking through `extern "C"` declarations.

## Syntax

```
inlineForeign
    : 'inline' 'foreign' ID '{' RAW_TEXT '}'
    | 'inline' 'foreign' ID 'export' '(' exportList ')' '{' RAW_TEXT '}'
    ;

exportList : exportEntry (',' exportEntry)* ;
exportEntry : 'fn' ID '(' typeList? ')' '->' typeRef ;
```

The first `ID` names the foreign language: `c`, `cpp`, `rust`. The raw text is the foreign source. The optional `export` clause lists the symbols Apollo should pull in along with their Apollo-visible signatures.

## Semantics

The foreign source is written verbatim to a scratch file and compiled with the appropriate foreign compiler. Resulting object code is linked into the Apollo program.

Symbols listed in the `export` clause are declared as Apollo extern functions matching the supplied signatures. Calls into them go through the normal call surface; the foreign ABI is C-compatible.

Apollo does not validate the foreign source — that is the foreign compiler's job. Mismatches between the foreign source's actual signature and the Apollo `export` declaration produce link-time or runtime issues.

The block runs in the program's normal address space; foreign code shares memory with Apollo. Be deliberate about ownership.

## Examples

### Tiny C helper

```apollo
inline foreign c export (fn fast_add(i32, i32) -> i32) {
    int fast_add(int a, int b) {
        return a + b;
    }
}

int main() {
    sys.println(fast_add(3, 4));
    return 0;
}
```

The C function is compiled inline and called from Apollo.

### C++ block with stateful helper

```apollo
inline foreign cpp export (
    fn make_counter() -> i64*,
    fn bump_counter(i64*) -> void,
    fn read_counter(i64*) -> i64
) {
    #include <cstdint>
    extern "C" {
        int64_t* make_counter() {
            return new int64_t(0);
        }
        void bump_counter(int64_t* c) { (*c)++; }
        int64_t read_counter(int64_t* c) { return *c; }
    }
}

int main() {
    nconst i64* c = make_counter();
    bump_counter(c);
    bump_counter(c);
    sys.println(read_counter(c));
    return 0;
}
```

The C++ block uses `<cstdint>` and exposes three functions. Apollo treats them like any other callable.

### Rust block

```apollo
inline foreign rust export (fn rust_double(i32) -> i32) {
    #[no_mangle]
    pub extern "C" fn rust_double(x: i32) -> i32 {
        x * 2
    }
}

int main() {
    sys.println(rust_double(21));
    return 0;
}
```

Rust functions must be `extern "C"` and `#[no_mangle]` to be visible.

### Sharing a struct definition

```apollo
inline foreign c export (
    fn make_point(i32, i32) -> Point*,
    fn point_distance(Point*, Point*) -> f64
) {
    typedef struct { int x; int y; } Point;

    Point* make_point(int x, int y) {
        Point* p = malloc(sizeof(Point));
        p->x = x;
        p->y = y;
        return p;
    }

    double point_distance(Point* a, Point* b) {
        double dx = a->x - b->x;
        double dy = a->y - b->y;
        return dx * dx + dy * dy;
    }
}

memstruct Point #[c_layout] {
    i32 x;
    i32 y;
};

int main() {
    nconst Point* a = make_point(0, 0);
    nconst Point* b = make_point(3, 4);
    sys.println(point_distance(a, b));
    return 0;
}
```

A memstruct on the Apollo side mirrors the C struct's layout so pointers can be exchanged.

### Block without exports (helpers only)

```apollo
inline foreign c {
    // private helpers; nothing exposed to Apollo
    static int internal_only() {
        return 42;
    }
}

int main() {
    sys.println("foreign block defined private helpers");
    return 0;
}
```

A block with no `export` is compiled but exposes nothing; useful for static helpers used by sibling exported functions.

### Embedding a header

```apollo
inline foreign c export (fn current_pid() -> i32) {
    #include <unistd.h>
    int current_pid() { return (int) getpid(); }
}

int main() {
    sys.printf("pid=%d\n", current_pid());
    return 0;
}
```

System headers are included in the inline block just as they would be in a standalone C file.

## Common mistakes

- **Signature mismatch.** The `export` declaration must exactly match the foreign function's signature. A mismatch produces undefined behavior, often a crash.
- **Forgetting `extern "C"` in C++/Rust.** C++ and Rust mangle names by default; Apollo needs unmangled `extern "C"` symbols.
- **Memory ownership confusion.** Pointers cross the boundary as raw addresses. Decide explicitly which side owns and frees.
- **Including the same header in many blocks.** Multiple blocks compile independently; redundant includes are tolerable but wasteful. For shared headers, prefer a real shared header file.
- **Relying on Apollo features inside the foreign block.** The foreign block sees no Apollo types or values; only what you pass through the export signatures.

## See also

- `docs/language/functions-and-interop/docs/syscall.md` — direct syscalls without a foreign block.
- `docs/language/functions-and-interop/docs/nativemode.md` — switching the whole compilation to native-style.
- `docs/language/declarations/docs/memstruct.md` — layouts that mirror C structs.
- `docs/language/types/docs/pointer-type.md` — pointers that cross the boundary.
