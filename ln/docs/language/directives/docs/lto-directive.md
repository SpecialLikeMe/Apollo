# LTO binding

## Current surface

Apollo's current `lto` surface is not a `#[lto:...]` directive. In the grammar it is a binding form:

```apollo
ltoInit : (CONST | NCONST)? LTO ID '=' expression ';' ;
```

That means source such as:

```apollo
lto dynamic = 1;
nconst lto value = 7;
```

is valid, while the older attribute-style `#[lto:full]` documentation is not.

## Related surface

There is also a dedicated statement for `typeset` on an `lto` binding:

```apollo
ltoTypesetStmt : ID '.' 'typeset' '(' typeRef ')' ('.' 'cast' '(' ')')? ';' ;
```

Examples from the grammar fixtures:

```apollo
nconst lto value = 7;
value.typeset(str).cast();

nconst lto cleared = 1;
cleared.typeset(i32);
```

## Current backend behavior

In the native backend, `lto` bindings currently lower like ordinary storage initialized from the right-hand expression. The lowered value is tracked with the internal kind string `lto`.

`value.typeset(...)` is currently recognized by the parser and statement lowering path, but the backend does not attach richer semantics in the same way the old docs claimed.

## Example

```apollo
int main() {
    lto dynamic = 1;
    i32 total = dynamic + 1;

    nconst lto changing = total;
    changing = total;

    return changing;
}
```

## Common mistakes

- Writing `#[lto:full]` or `#[lto:thin]`. That is not the current grammar.
- Assuming `lto` is a build-optimization directive in source. The current parser treats it as a binding form.
- Assuming `.typeset(...).cast()` has the full behavior described in older docs. Verify behavior against the backend before depending on it.
