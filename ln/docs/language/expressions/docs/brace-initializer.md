# Brace initializer

## What it is

A brace initializer builds an aggregate value with `{ ... }`. Apollo uses this form for struct values, typedef-struct aliases, struct-like enum variants, and other places where the destination aggregate type is already known.

Brace initializers support both designated elements such as `.field = value` and positional elements such as `{1, 2, 3}`. In practice, designated form is the clearest choice for named fields.

## When you use it

You reach for a brace initializer when:

- You are constructing a struct or typedef-struct value.
- You want to initialize only some named fields and leave the rest at their default zero or empty state.
- You need an aggregate value directly in expression position, such as a function argument or collection append call.
- You are constructing a struct-like enum variant.

## Syntax

```antlr
braceInitializer
    : '{' (braceInitializerElement (',' braceInitializerElement)* ','?)? '}'
    ;

braceInitializerElement
    : '.' ID '=' expression
    | expression
    ;
```

The destination type comes from the surrounding declaration, constructor-like type expression, or enum variant.

## Semantics

Apollo accepts brace initializers in two main shapes:

- Typed declaration form: `Point p { .x = 1, .y = 2 };`
- Expression form: `consume(Point { .x = 1, .y = 2 });`

Designated elements target fields by name. Positional elements follow the declared field order. Mixed designated and positional forms are parsed, but designated entries are the most readable and least error-prone for named aggregates.

The initializer itself does not carry a standalone type. A surrounding type must make the target aggregate unambiguous.

## Examples

### Typed declaration with named fields

```apollo
typedef struct rtx {
    nconst int id;
    nconst str a;
}

int main() {
    rtx full = {
        .id = 1,
        .a = "Hello, world!"
    };
    sys.println(full.a);
    return full.id;
}
```

The declaration fixes the destination type, so the brace initializer can omit the type name.

### Partial designated initialization

```apollo
typedef struct rtx {
    nconst int id;
    nconst str a;
}

int main() {
    rtx partial = {
        .id = 2
    };
    return partial.id;
}
```

Only the named field is initialized explicitly; the remaining fields keep their default zero or empty state.

### Expression-position struct literal

```apollo
struct x {
    int i;
}

void consume(x value) {
}

int main() {
    consume(x {
        .i = 4
    });
    return 0;
}
```

The type name before the braces makes the expression-position aggregate explicit.

### Appending a struct literal to a container

```apollo
struct x {
    int i;
}

int main() {
    nconst vector<x> values;
    values.append(x {
        .i = 3
    });
    return 0;
}
```

This is the same aggregate form as a declaration initializer, just used directly as the method argument.

### Struct-like enum variant

```apollo
enum myenum {
    success,
    retry {
        str msg;
    }
}

int main() {
    myenum value = myenum::retry {
        .msg = "again"
    };
    return 0;
}
```

Struct-like enum variants use the same brace surface as ordinary aggregate values.

## Common mistakes

- **Using `<...>` for named fields.** Angle brackets are for positional composite literals, not designated field initialization.
- **Leaving the destination type ambiguous.** A bare `{ .x = 1 }` is not enough; Apollo needs the surrounding declaration or type expression.
- **Misspelling a field name.** Designated fields must match the declared field name exactly.
- **Expecting brace initialization to create methods or behavior.** The initializer only constructs the value; behavior still comes from the declared type.

## See also

- `docs/language/declarations/docs/struct.md` — struct declarations and aggregate members.
- `docs/language/expressions/docs/composite-literal.md` — angle-bracket positional literals.
- `docs/language/types/docs/enum-type.md` — enum and variant forms.