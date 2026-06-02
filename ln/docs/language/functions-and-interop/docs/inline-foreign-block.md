# Inline foreign block

## Current surface

Apollo currently parses inline foreign blocks with this rule:

```antlr
inlineForeignBlock : INLINE INLINE_SEP (NATIVE | ID) INCLUSIVE ';'? ;
```

That means the language surface is:

```apollo
inline::cpp {
    // foreign payload
}

inl::cxx {
    #include <memory>
}
```

There is no current `inline foreign ... export (...)` grammar.

## What the parser accepts

- `inline` and `inl` are aliases.
- The language tag comes after `::`.
- The payload is the inclusive `{ ... }` block.
- The language can be a built-in `NATIVE` token such as `cpp`, `c`, `rust`, `python`, `ts`, or a plain identifier such as `cxx`.

## Current implementation notes

The compiler collects these blocks and normalizes the requested language. Top-level blocks participate in the inline-foreign collection/linking path. Statement-position blocks are also recognized, and runtime-position handling depends on the backend path that encounters them.

What is no longer accurate:

- there is no export-list syntax in the grammar
- there is no separate `inline foreign` keyword pair
- language exposure is not declared with a typed Apollo-side signature list in this surface

## Example

```apollo
@unsafe {
    inl::cxx {
        #include <memory>
    }
}
```

## See also

- `docs/language/functions-and-interop/docs/nativemode.md`
- `Apollo-Main/compiler/compilerv1.g4`
- `Apollo-Main/compiler/cpp/src/apollo_inline_foreign.cpp`
- `Apollo-Main/compiler/tests/grammar/pass/runtime_surface.apollo`
