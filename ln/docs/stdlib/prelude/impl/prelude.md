# `std prelude` — implementation

## Module source

`Apollo-Main/include/prelude.apollo`.

## Body

The module body is purely a sequence of `extern std <module>;` statements covering every other stdlib module (24 in total): `core`, `result`, `math`, `bits`, `strings`, `io`, `ranges`, `collections`, `assertions`, `buffer`, `allocators`, `fs`, `process`, `task`, `portability`, `encoding`, `regex`, `random`, `time`, `sync`, `thread`, `hash`, `json`, `net`.

The module declares no new symbols.

## Frontend handling

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

- Treats `prelude` like any other module — it parses, processes the transitive `extern` statements, and registers the loaded modules in the importing file's scope.
- Because each transitive module is already idempotent on load, importing the prelude N times still only loads each underlying module once.

## Build driver

`Apollo-Main/compiler/cpp/src/apollo_build_driver.cpp` tracks the prelude's transitive imports in the dependency graph for incremental compilation. A change to any module the prelude includes invalidates files that import the prelude.

## Lowering

None — the prelude itself emits no code.

## Edges and gotchas

- Because `extern std prelude;` brings in 24 modules, parse-time cost is higher than a focused import set. For large projects, prefer focused imports per file.
- The prelude's transitive surface is broad; symbol collisions are possible if user code defines names that conflict with stdlib `sys.*` functions. The frontend reports such collisions.
- Adding a module to the stdlib does not automatically add it to the prelude; the prelude must be updated to reflect new modules.

## Source of truth

- Source: `Apollo-Main/include/prelude.apollo`
- Frontend: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Build driver: `Apollo-Main/compiler/cpp/src/apollo_build_driver.cpp`
