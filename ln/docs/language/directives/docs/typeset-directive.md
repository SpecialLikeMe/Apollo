# Typeset statement

## What it is

The current Apollo grammar does not expose the old file-scope `#[typeset(...)]` directive described in earlier docs.

The tested `typeset` surface today is an `lto` retargeting statement:

```apollo
name.typeset(TypeName);
name.typeset(TypeName).cast();
```

## When you use it

Use this statement when working with an `lto` value whose tracked payload type needs to change.

- `name.typeset(TypeName);` clears the current payload and retargets the expected type.
- `name.typeset(TypeName).cast();` converts the current payload into the new target type.

## Syntax

```apollo
ID '.' 'typeset' '(' typeRef ')' ('.' 'cast' '(' ')')? ';'
```

This is a statement form, not a declaration form.

## Semantics

- The receiver is a named value, not an arbitrary expression.
- The current implementation targets `lto` payload retagging.
- `typeset(Type)` changes the tracked expected payload type and clears the current payload.
- `typeset(Type).cast()` performs a conversion into the new target type.
- Current lowering uses `__apo_to_string(...)` for `str` targets and constructor-style conversion for other targets.

## Examples

### Retarget an `lto` value and cast it

```apollo
int main() {
    nconst lto value = 7;
    value.typeset(str).cast();
    return 0;
}
```

This converts the current payload into `str` using the current `typeset(...).cast()` lowering path.

### Retarget an `lto` value without casting

```apollo
int main() {
    nconst lto cleared = 1;
    cleared.typeset(i32);
    return 0;
}
```

This updates the tracked target type and clears the existing payload.

## Common mistakes

- **Expecting `#[typeset(...)]` to parse.** That older directive form is no longer the current tested surface.
- **Using `typeset(...)` as an expression.** The grammar accepts it as a statement terminated with `;`.
- **Calling it on an arbitrary expression.** The receiver in the current grammar is an identifier.
- **Using it for normal generic constraints.** Current generic documentation should use the template forms documented on the template page instead.

## See also

- `docs/language/declarations/docs/template.md` — current generic declaration syntax.
- `docs/language/directives/docs/lto-directive.md` — related low-level optimization and `lto` surface.