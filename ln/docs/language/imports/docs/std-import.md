# Standard library import

## What it is

`extern std <name>;` loads one of Apollo's bundled stdlib modules from `Apollo-Main/include/<name>.apollo`.

The import is file-scoped. After the line is parsed, the file can use the module's exported surface.

## Current surface

```apollo
extern std prelude;
extern std io;
extern std collections;
```

- Each import is a separate top-level statement.
- The module name is a single identifier.
- The current passing fixtures explicitly write `extern std prelude;`. Do not assume the prelude is implicitly available everywhere.

## When you use it

Use `extern std` when a file depends on stdlib definitions that are not declared locally.

Common cases:

- `extern std prelude;` for the baseline `sys.*` surface used across the grammar tests.
- `extern std io;` for formatted output and handle-oriented I/O helpers.
- `extern std collections;` for the opaque `vector` / `map` / `set` handle API in `include/collections.apollo`.
- `extern std strings;`, `math;`, `fs;`, `process;`, `thread;`, and similar modules when you call those namespaces directly.

## Semantics

- The compiler resolves the named module from `Apollo-Main/include/`.
- Imports must appear at file scope.
- Import order does not change meaning.
- A missing stdlib module is a compile-time error.

## Examples

### Prelude import

```apollo
extern std prelude;

int main() {
    sys.printf("Hello, world\n");
    return 0;
}
```

This is the current baseline import shape used throughout the passing grammar fixtures.

### Multiple std imports

```apollo
extern std prelude;
extern std io;

int main() {
    sys.printf("%i\n", 7);
    return 0;
}
```

Multiple std modules are listed one per line.

### Collections handle API

```apollo
extern std prelude;
extern std collections;

int main() {
    vector items = sys.vec_new();
    sys.vec_push(items, "alpha");
    sys.vec_push(items, "beta");
    return sys.vec_len(items) - 2;
}
```

`extern std collections;` exposes the opaque handle-based collections helpers defined in `include/collections.apollo`.

### Explicit module pairing

```apollo
extern std prelude;
extern std io;
extern std fs;

int main() {
    sys.printf("imports loaded\n");
    return 0;
}
```

Imports are additive. Loading `io` does not also load `fs`.

## Common mistakes

- **Assuming the prelude is always implicit.** The current tested surface explicitly imports it with `extern std prelude;`.
- **Putting imports inside a function.** `extern std` belongs at file scope.
- **Trying to alias imports.** `extern std collections as c;` is not part of the current grammar.
- **Using a module name that does not exist in `Apollo-Main/include/`.** The import fails during compilation.

## See also

- `docs/language/imports/docs/import-statement.md` — non-stdlib imports.
- `docs/language/imports/docs/include.md` — source inclusion.
- `docs/stdlib/io/docs/io.md` — the I/O surface loaded by `extern std io;`.
- `docs/stdlib/data/docs/collections.md` — the handle-based collections helpers.
