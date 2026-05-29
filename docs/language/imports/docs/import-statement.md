# Import statement

## What it is

The `extern` import statement makes another module's contents available in the current source file. Apollo has three import flavors:

- `extern std MODULE;` — import a standard-library module (`Apollo-Main/include/<module>.apollo`).
- `extern PATH;` — import a user module by path (relative to the current file or to a configured root).
- `extern "C" { ... };` — declare a block of C functions (covered separately).

Imports are how Apollo modules compose. Each file lists exactly what it depends on.

## When you use it

- Bringing in stdlib functionality: `extern std io;`, `extern std collections;`.
- Splitting a project into multiple files and referencing one from another.
- Pulling in a third-party module installed via the build driver's dependency mechanism.

## Syntax

```
importStmt
    : 'extern' 'std' moduleName ('as' alias)? ';'
    | 'extern' modulePath ('as' alias)? ';'
    | 'extern' 'std' moduleName '.' '{' importList '}' ';'
    ;

moduleName  : ID ('.' ID)* ;
modulePath  : ID ('.' ID)* ;
importList  : ID (',' ID)* ;
```

The optional `as alias` lets you rename the imported namespace. The `.{...}` form imports specific named items into the current scope.

## Semantics

`extern std collections;` makes the `collections` module's exported items accessible as `collections.something`. The module is loaded once per program; multiple `extern` statements for the same module share the same loaded copy.

`extern std collections as col;` aliases the namespace: subsequently `col.vector.push(...)` rather than `collections.vector.push(...)`.

`extern std collections.{vector, map};` brings `vector` and `map` directly into the current scope so you can call them unqualified.

User module imports work analogously: `extern myproject.utils;` looks up the module from the project root or the configured search path.

Imports are processed before any other top-level work. Cyclic imports are rejected at compile time.

## Examples

### Standard module

```apollo
extern std io;

int main() {
    sys.println("hello");
    return 0;
}
```

`extern std io;` makes the `io` module available; `sys.println` is exposed via that module (in practice `sys` is bound through the prelude, but the principle stands).

### Multiple stdlib imports

```apollo
extern std collections;
extern std strings;
extern std io;

int main() {
    nconst vector<str> words = <"hello", "world">;
    nconst str joined = strings.concat(words[0], strings.concat(" ", words[1]));
    sys.println(joined);
    return 0;
}
```

Each module is imported separately. Order does not matter.

### Module alias

```apollo
extern std collections as col;

int main() {
    nconst vector<int> v = <1, 2, 3>;
    sys.println(col.vector.length(v));
    return 0;
}
```

The alias keeps references concise in a file that uses the module heavily.

### Selective import

```apollo
extern std collections.{vector, map};

int main() {
    nconst vector<int> v = <1, 2, 3>;
    sys.println(vector.length(v));   // unqualified
    return 0;
}
```

The selected names are accessible without the module prefix.

### User module

```apollo
// utils.apollo
int square(int n) { return n * n; }

// main.apollo
extern utils;

int main() {
    sys.println(utils.square(7));
    return 0;
}
```

The `extern utils;` statement loads `utils.apollo` from the project root.

### Nested module path

```apollo
extern myproject.math.advanced;

int main() {
    sys.println(myproject.math.advanced.factorial(5));
    return 0;
}
```

Dots in the path indicate a directory structure: `myproject/math/advanced.apollo`.

## Common mistakes

- **Forgetting `std`.** `extern collections;` looks for a user module named `collections`, not the stdlib one.
- **Importing twice with different aliases.** The module is loaded once; the aliases coexist.
- **Cyclic imports.** Rejected. Restructure so imports form a DAG.
- **Using a name before it is imported.** Imports must precede uses. Place them at the top of the file.
- **Mixing import forms unnecessarily.** Pick one form (qualified or selective) per module for readability.

## See also

- `docs/language/imports/docs/std-import.md` — the stdlib import surface (companion to this page).
- `docs/language/imports/docs/include.md` — including a file's source verbatim.
- `docs/stdlib/foundations/docs/core.md` — what stdlib modules expose.
- `Apollo-Main/compiler/cpp/src/apollo_build_driver.cpp` — module resolution.
