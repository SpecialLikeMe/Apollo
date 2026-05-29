# Import statement — implementation

## Grammar surface

```antlr
importStmt
    : 'extern' 'std' moduleName ('as' alias)? ';'
    | 'extern' modulePath ('as' alias)? ';'
    | 'extern' 'std' moduleName '.' '{' importList '}' ';'
    ;

moduleName  : ID ('.' ID)* ;
modulePath  : ID ('.' ID)* ;
importList  : ID (',' ID)* ;
```

## Parse tree shape

An `ImportStmtContext` exposes the module flavor (std vs user), the module name, optional alias, and optional selective-import list.

## Frontend handling

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Resolves the module to a source file path:
   - `extern std X;` → `Apollo-Main/include/X.apollo`.
   - `extern X.Y;` → `X/Y.apollo` from the project root or the configured search path.
2. Parses the target module (or reuses a cached parse).
3. Registers the module's exported symbols under the appropriate name in the current scope:
   - Qualified: `module.symbol`.
   - Aliased: `alias.symbol`.
   - Selective: each listed `symbol` directly.
4. Rejects cyclic imports.

## Build driver

`Apollo-Main/compiler/cpp/src/apollo_build_driver.cpp`:

1. Tracks the import graph for incremental compilation.
2. Triggers recompilation of dependents when a module changes.
3. Manages the search path for user modules via project configuration.

## Lowering

No direct lowering effect. Imported symbols become regular symbol references in the importing module's IR.

## Runtime support

None.

## Edges and gotchas

- Module loading is one-time per program. Selective imports do not re-load; they only introduce additional bindings.
- The search path is configured at build-driver level; the language itself only specifies the resolution algorithm.
- Cycle detection runs across the full import graph; long cycles produce a diagnostic naming the cycle's edges.
- A module's exports are determined by the module's own top-level declarations; there is no explicit `export` keyword (every public declaration is exported).

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`importStmt`)
- Frontend: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Build driver: `Apollo-Main/compiler/cpp/src/apollo_build_driver.cpp`
- Stdlib modules: `Apollo-Main/include/*.apollo`
