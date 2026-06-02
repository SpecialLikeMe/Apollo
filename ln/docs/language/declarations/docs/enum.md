# Enum declaration

## Current surface

Apollo's current enum grammar is:

```antlr
enumDecl    : 'enum' ID attributeBlock? LBRACE enumVariant (',' enumVariant)* ','? RBRACE ;
enumVariant : enumVariantName
            | enumVariantName '(' typeRef ')'
            | enumVariantName structBody
            ;
```

That gives three variant forms:

- unit variant
- single-payload tuple variant
- struct-body variant

## Example from current fixtures

```apollo
enum myenum {
    success,
    failure(str),
    retry {
        str msg;
        bool ok() {
            return true;
        }
    }
}
```

Construction currently uses qualified names:

```apollo
myenum a = myenum::success;
myenum b = myenum::failure("oops");
myenum c = myenum::retry { .msg = "again" };
```

The current codebase also uses `unwrap_enum(...)` for payload extraction:

```apollo
str msg = unwrap_enum(b);
myenum::retry retry_payload = unwrap_enum(c);
```

## Notes

- The grammar allows an optional `.att{...}` block on the enum declaration.
- `success` is explicitly allowed as an enum variant name by the grammar.
- `unwrap_enum(...)` is an implementation surface present in the compiler/backend today.

## See also

- `Apollo-Main/compiler/compilerv1.g4`
- `Apollo-Main/compiler/tests/grammar/pass/enum_surface.apollo`
- `Apollo-Main/compiler/cpp/src/visitor.cpp`
