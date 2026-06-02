# Attribute block

## Current surface

Apollo's current attribute-block syntax is `.att{...}`, not `#[...]`.

The grammar rule is:

```apollo
attributeBlock : '.att' '{' attributeEntry (',' attributeEntry)* '}' ;
```

This block can appear after declarations that allow `attributeBlock`, including functions, methods, fields, enums, structs, memstructs, classes, interfaces, and opstructs.

## Examples that match the grammar fixtures

```apollo
@cmglobal struct SharedState.att{packed} {
    i32 mask;
}

i32 decorate(i32 value).att{aligned(16)} {
    i32 shifted = value << 1;
    i32 mixed = shifted | 3;
    i32 toggled = mixed ^ 2;
    return toggled & 7;
}
```

## What this replaces

Older docs described a Rust-style `#[...]` general attribute system. That is not the current declaration-level attribute syntax in `compilerv1.g4`. Top-level directives such as `#[gc(total)]` and `#[borrow_checker(off)]` still exist, but they are separate grammar rules and should not be confused with `.att{...}`.

## Current status

- `.att{...}` is the declaration attribute surface.
- `#[...]` is used only by the specific top-level directive rules that still exist.
- Fixture-backed attribute names currently include `packed` and `aligned(16)`.

## Common mistakes

- Writing declaration attributes as `#[packed]` or `#[align(16)]`. The current declaration grammar uses `.att{...}`.
- Treating `.att{...}` and top-level directives as interchangeable. They are different grammar surfaces.
- Assuming every name inside `.att{...}` has backend behavior. Verify attribute meaning against fixture coverage and implementation.
