# Proc macro declaration — implementation

## Surface

Apollo now supports two preprocessor-backed procedural macro declarations:

```apollo
attr vector<token> macro_name(vector<token> __tokenstream, ...args) {
    ...
}

derive vector<token> macro_name(vector<token> __tokenstream, ...args) {
    ...
}
```

They are applied to the next top-level declaration with:

```apollo
#idio macro_name(...)
#derive macro_name(...)
```

`#idio` is the attribute-macro form. It replaces the target declaration with the returned tokenstream.
`#derive` is the derive-macro form. It appends the returned tokenstream after the target declaration.

## Token surface

Proc macros expose a compile-time `vector<token>` surface through the required `__tokenstream` parameter.

The logical `token` shape is:

- `VALUE`: the token text.
- `TYPE`: the token kind name.

This surface is compile-time only. The current implementation does not lower proc-macro declarations into runtime Apollo code.

## Quote blocks

`quote { ... }` captures Apollo source text that the proc macro can return directly or insert into a cloned tokenstream.

Macro arguments are substituted by identifier name inside the quote block before the final source is reparsed.

Example:

```apollo
attr vector<token> addhelper(vector<token> __tokenstream, nrc what) {
    nconst vector<token> output = __tokenstream;
    output.insert(0, quote {
        void generated_helper() {
            sys.println(what);
            return;
        }
    });
    return output;
}
```

## Current implementation model

The implementation lives in `Apollo-Main/compiler/cpp/src/apollo_source_preprocessor.cpp` and runs before parsing.

The preprocessor currently supports these proc-macro body forms:

- `nconst vector<token> name = __tokenstream;`
- `const vector<token> name = __tokenstream;`
- `name.insert(<integer-index>, quote { ... });`
- `return name;`
- `return __tokenstream;`
- `return quote { ... };`

## Scope and limits

This is intentionally a constrained first implementation.

- Proc macros are expanded only at top level.
- The target is the next top-level declaration after the directive line.
- The evaluator is preprocessor-driven, not a general compile-time Apollo interpreter.
- Unsupported proc-macro statements fail preprocessing with a descriptive error.

## Validation

Regression coverage lives in:

- `Apollo-Main/compiler/cpp/src/apollo_runtime_tests.cpp`
- `Apollo-Main/compiler/tests/grammar/pass/proc_macro_surface.apollo`

The focused build validation also compiles a real Apollo program that uses both `attr` and `derive` proc macros end to end.
