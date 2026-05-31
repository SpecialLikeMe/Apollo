# Standard library import

## What it is

`extern std <name>;` is the statement that pulls one of Apollo's bundled standard-library modules into the current source file. After the import, the module's surface is reachable through the namespace it exposes — for example, `extern std collections;` makes `collections.vector`, `collections.map`, and `collections.set` available to the rest of the file.

This is the primary way an Apollo program reaches the language's built-in capabilities. Without an `extern std` line, the program has access only to the prelude (always implicitly imported) and to whatever it declares itself.

## When you use it

You write an `extern std` line at the top of any source file that uses anything outside the prelude:

- Any file that uses `collections.vector`, `collections.map`, or other container types.
- Any file that uses `io` beyond the prelude-exposed `sys.println` / `sys.printf`.
- Any file that uses `math`, `strings`, `time`, `fs`, `net`, `process`, `thread`, `task`, `regex`, `json`, etc.

Imports are file-scoped. Each source file imports what it needs. There is no project-level import shared across files.

## Syntax

```
'extern' 'std' moduleName ';'
```

`moduleName` is a single identifier matching one of the modules in `Apollo-Main/include/`. The list of available modules is:

`allocators`, `assertions`, `bits`, `buffer`, `collections`, `core`, `encoding`, `fs`, `hash`, `io`, `json`, `math`, `net`, `portability`, `prelude`, `process`, `random`, `ranges`, `regex`, `result`, `strings`, `sync`, `task`, `thread`, `time`.

Multiple imports go on separate lines. There is no shorthand for grouping.

## Semantics

The import resolves to the corresponding `Apollo-Main/include/<name>.apollo` module at parse time. The compiler loads that module's declarations, then exposes them under the module's namespace identifier inside the importing file.

Imports do not have ordering significance. The module's symbols are available throughout the file regardless of where the `extern std` line appears, though convention is to place all imports at the top.

The prelude is imported implicitly into every Apollo file. The prelude exposes the most commonly used surfaces — `sys.println`, `sys.printf`, basic types like `int`, `str`, `bool`, and core operators. Code never writes `extern std prelude;` explicitly.

An import that names a non-existent module is rejected with a clear diagnostic pointing at the offending line.

## Examples

### Importing collections

```apollo
extern std collections;

int main() {
    nconst vector<int> values = <1, 2, 3, 4, 5>;
    nconst int total = collections.vector.sum(values);
    sys.println(total);
    return 0;
}
```

The `extern std collections;` line is what makes `vector<int>` and `collections.vector.sum` available. Without it, the same code would fail at parse time.

### Importing multiple modules

```apollo
extern std collections;
extern std strings;
extern std math;

int main() {
    nconst vector<str> words = <"hello", "world", "apollo">;
    for (nconst str w : words) {
        sys.printf("%s -> %d\n", w, strings.length(w));
    }
    sys.println(math.sqrt(2.0));
    return 0;
}
```

Each module's surface is independent. `strings.length` and `math.sqrt` live in different namespaces; an import is required for each.

### Importing io for file work

```apollo
extern std io;
extern std fs;

int main() {
    nconst str content = fs.read_to_string("notes.txt");
    io.write_line(io.stdout(), content);
    return 0;
}
```

`io` provides explicit handle-based I/O beyond what the prelude exposes. `fs` provides filesystem access. Both go through the same import mechanism.

### Importing concurrency primitives

```apollo
extern std thread;
extern std sync;

int main() {
    nconst sync.mutex<int> shared = sync.mutex.create<int>(0);
    nconst thread.handle worker = thread.spawn(closure [&nconst shared] () -> void {
        nconst sync.guard<int> g = sync.mutex.lock(shared);
        *g = *g + 1;
    });
    thread.join(worker);
    sys.println(*sync.mutex.lock(shared));
    return 0;
}
```

Concurrency surfaces live behind their own modules. The closure captures `shared` by reference and uses `sync.mutex.lock` to acquire exclusive access inside the worker thread.

### Importing regex

```apollo
extern std regex;

int main() {
    nconst regex.pattern email = regex.compile("[a-z]+@[a-z]+\\.[a-z]+");
    nconst bool ok = regex.matches(email, "ada@example.com");
    sys.println(ok);
    return 0;
}
```

`regex.compile` builds a pattern; `regex.matches` checks a string against it. The import is the gate for both calls.

### Importing for assertions in tests

```apollo
extern std assertions;
extern std collections;

void check_sum() {
    nconst vector<int> data = <1, 2, 3>;
    nconst int total = collections.vector.sum(data);
    assertions.equal(total, 6);
}

int main() {
    check_sum();
    sys.println("ok");
    return 0;
}
```

`assertions` exposes `equal`, `not_equal`, `is_true`, and related checks. They print and exit non-zero on failure, which is the standard test-harness shape.

## Common mistakes

- **Forgetting the import.** Using `collections.vector` without `extern std collections;` fails at parse time with an unknown-identifier diagnostic on `collections`.
- **Importing the prelude explicitly.** `extern std prelude;` is rejected (or at best a no-op depending on compiler version) — the prelude is always implicit.
- **Trying to alias an import.** Apollo does not support `extern std collections as c;`. The module always appears under its declared name.
- **Importing a non-existent module.** The module name must match one of the files in `Apollo-Main/include/`. A typo is rejected with a clear error.
- **Putting imports inside functions.** Imports are file-scoped and must appear at file scope. They cannot be nested inside a function body.

## See also

- `docs/language/imports/docs/import-statement.md` — non-std imports from your own project.
- `docs/language/imports/docs/include.md` — raw file inclusion (used sparingly).
- `docs/stdlib/foundations/docs/core.md` — what the prelude provides implicitly.
- `docs/stdlib/foundations/docs/index.md` — the full catalog of stdlib modules.
- `Apollo-Main/STDLIB_CONTRACT.md` — the contract every stdlib module follows.
