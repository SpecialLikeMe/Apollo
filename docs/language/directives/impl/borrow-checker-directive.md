# Borrow checker directive — implementation

## Grammar surface

```antlr
borrowDirective
    : '#[' 'borrow_checker' '(' borrowFlag (',' borrowFlag)* ')' ']'
    ;
borrowFlag
    : 'strict' | 'advisory' | 'off'
    | 'promote' '(' ID (',' ID)* ')'
    | 'demote'  '(' ID (',' ID)* ')'
    ;
```

The directive participates in the `#[...]` attribute-block surface.

## Frontend handling

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Parses the directive and records the resulting mode and category overrides.
2. Maintains a stack of borrow-check configurations: file-scope at the bottom, function-scope on top.
3. Each borrow-check query consults the current top of the stack.

`Apollo-Main/brc/borrow_checker.cpp`:

1. Reads the configuration before issuing diagnostics.
2. Filters or re-classifies each finding per the configuration's promote/demote lists.
3. With `off`, skips checking entirely for the targeted scope.

## Lowering

No lowering effect — the directive only influences diagnostic emission.

## Runtime support

None.

## Edges and gotchas

- Category names in promote/demote correspond to diagnostic codes used by the borrow checker. Unknown names produce a warning and are ignored.
- The directive does not change the language's runtime behavior; turning the checker off does not insert safety checks at runtime.
- Function-scope directives apply to the function body only; method bodies inherit the class's directives unless overridden per-method.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`borrowDirective`)
- Frontend: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Borrow checker: `Apollo-Main/brc/borrow_checker.h`, `Apollo-Main/brc/borrow_checker.cpp`
