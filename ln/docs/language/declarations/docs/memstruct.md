# Memstruct declaration

## Current surface

Apollo's current memstruct grammar is:

```antlr
memstruct : communalQualifier? MEMSTRUCT ID inheritanceClause? attributeBlock? structBody ;
```

That means a `memstruct` currently looks like a struct-like declaration with optional communal qualifier, optional inheritance clause, optional `.att{...}` block, and a normal `structBody`.

## Examples from current fixtures

```apollo
memstruct Buffer {
    i32 size;
}
```

Communal form:

```apollo
@communal memstruct SharedState {
    // ...
}
```

## What is not in the current grammar

The older docs described dedicated layout syntax such as:

- `#[packed]`
- `#[align(...)]`
- field `@offset` markers

Those are not part of the current `memstruct` grammar in `compilerv1.g4`.

## Notes

- A `memstruct` can carry a normal `.att{...}` attribute block because `attributeBlock` is in the rule.
- Current fixtures also show instance construction with `.uses(...)`, for example `Buffer{}.uses(arena)`, but that is part of the instance/allocation surface, not special memstruct-only declaration syntax.
- If you need guaranteed layout behavior, verify it against the current backend/runtime rather than relying on older memstruct prose.

## See also

- `Apollo-Main/compiler/compilerv1.g4`
- `Apollo-Main/compiler/tests/grammar/pass/memstruct_allocator_surface.apollo`
- `Apollo-Main/compiler/tests/grammar/pass/scheduler_communal_surface.apollo`
- `docs/language/directives/docs/attribute-block.md`
