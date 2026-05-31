# `std prelude`

## What it is

The `prelude` module is a convenience aggregator. It does not export any new symbols of its own — it just `extern`s every other stdlib module, so a single `extern std prelude;` brings the whole standard library into scope.

Use the prelude when you want the full stdlib available without listing each module individually. For programs with a smaller surface, prefer naming the specific modules so dependencies are explicit.

## What it pulls in

The module body (in source order) imports:

```
extern std core;
extern std result;
extern std math;
extern std bits;
extern std strings;
extern std io;
extern std ranges;
extern std collections;
extern std assertions;
extern std buffer;
extern std allocators;
extern std fs;
extern std process;
extern std task;
extern std portability;
extern std encoding;
extern std regex;
extern std random;
extern std time;
extern std sync;
extern std thread;
extern std hash;
extern std json;
extern std net;
```

That's 24 modules — every standard library module except `prelude` itself.

## When you use it

- Quick scripts, demos, and prototypes where you want everything available.
- Tutorials and examples that don't want to clutter the example with imports.

For production programs, list only the modules you actually use — it makes the dependency surface visible and slightly improves compile time.

## Examples

### Hello world with prelude

```apollo
extern std prelude;

int main() {
    sys.println("hello, world");
    return 0;
}
```

### Use multiple modules without listing each

```apollo
extern std prelude;

int main() {
    nconst random rng = sys.rand_new();
    sys.rand_seed(rng, 42);
    for (nconst i := 0; i < 3; i = i + 1) {
        sys.printf("draw %d: %d\n", i, sys.rand_range_i32(rng, 0, 100));
    }
    sys.println("pi ~ ${sys.sqrt(2.0) * sys.sqrt(2.0)}");
    return 0;
}
```

The prelude makes `random`, `math`, `io`, `strings` interpolation all available.

### Mixing many surfaces in a small script

```apollo
extern std prelude;

int main() {
    nconst i32 start = sys.monotonic_millis();
    nconst vector items = sys.vec_new();
    for (nconst i := 0; i < 1000; i = i + 1) {
        sys.vec_push(items, "item${i}");
    }
    nconst i32 elapsed = sys.monotonic_millis() - start;
    sys.printf("built %d items in %d ms\n", sys.vec_len(items), elapsed);
    return 0;
}
```

`vector`, `monotonic_millis`, `vec_push`, `vec_len`, `printf` — all without explicit imports.

### Quick filesystem script

```apollo
extern std prelude;

int main() {
    sys.fs_create_dir_all("scratch");
    nconst file f = sys.file_create("scratch/log.txt");
    sys.file_write(f, "started at ${sys.datetime_now_local()}\n");
    sys.file_close(f);
    sys.println("wrote log");
    return 0;
}
```

### Network + JSON

```apollo
extern std prelude;

int main() {
    nconst url u = sys.url_parse("https://example.com/api?q=hello");
    sys.println(sys.url_host(u));
    sys.println(sys.url_query(u));
    return 0;
}
```

### Hash + collections

```apollo
extern std prelude;

int main() {
    nconst vector keys = sys.vec_new();
    sys.vec_push(keys, "alpha");
    sys.vec_push(keys, "beta");
    sys.vec_push(keys, "gamma");
    for (nconst i := 0; i < sys.vec_len(keys); i = i + 1) {
        nconst str k = sys.vec_get(keys, i);
        sys.printf("%s -> %x\n", k, sys.hash_fnv1a_32(k));
    }
    return 0;
}
```

## Common mistakes

- **Using the prelude in libraries.** Bring in only what you actually use; the prelude's broad imports may pull in unwanted transitive dependencies.
- **Believing the prelude defines `sys.*`.** It re-exports the modules that define `sys.*` functions, but the namespace and functions themselves live in each module.
- **Expecting the prelude to add language features.** It's purely a roll-up of imports; nothing changes about the language.
- **Confusing it with a global include.** Other files must still `extern std prelude;` themselves — the prelude is per-file.

## See also

- Every other module documented in `docs/stdlib/`.
- `docs/language/imports/docs/import-statement.md` — the `extern` syntax.
- `docs/language/imports/docs/std-import.md` — stdlib-specific import notes.
- `Apollo-Main/include/prelude.apollo` — source.
