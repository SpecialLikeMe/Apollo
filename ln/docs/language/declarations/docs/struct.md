# Struct declaration

## What it is

A struct is a named aggregate type declared with `struct`. In the current grammar, a struct body may contain fields, methods, nested structs, nested classes, and nested template declarations. Structs can also use an inheritance clause and an attribute block.

When you want a named aggregate with field-style storage and optional helper methods, `struct` is the right starting point. If you need the explicit runtime/layout surface used by allocator and communal features, use `memstruct` instead.

## When you use it

You reach for a struct when:

- You have several related values that travel together and you want them under a clear name with named fields.
- You want named-field access such as `p.x` instead of positional indexing.
- You want aggregate construction with brace initializers such as `Point { .x = 1, .y = 2 }`.
- You need a lightweight aggregate that still allows member functions or nested declarations.

## Syntax

```
'struct' ID inheritanceClause? attributeBlock? '{'
    structMember*
'}'

structMember : method | field | templateDecl | class | struct ;
field        : visibility? (const | nconst)? typeRef ID attributeBlock? ';' ;
```

Apollo does not use `public:` / `private:` sections here. Visibility, when present, is attached per member: `public i32 left;`.

## Semantics

A struct declaration introduces a new named aggregate type. The common construction surface is the brace initializer:

- declaration form: `Point p { .x = 1, .y = 2 };`
- expression form: `consume(Point { .x = 1, .y = 2 });`

Fields follow Apollo's normal mutability rules. A field declared without `nconst` is immutable by default. A `nconst` field may be reassigned through a mutable instance.

Struct methods, if present, are declared inside the struct body using the normal method surface. Nested structs, nested classes, and nested templates are also allowed by the grammar.

`typedef struct` can wrap the same surface and optionally attach an alias name after the closing body.

## Examples

### A simple field-only struct

```apollo
struct Point {
    i32 x;
    i32 y;
};

int main() {
    Point origin {
        .x = 0,
        .y = 0
    };
    Point target {
        .x = 3,
        .y = 4
    };
    sys.printf("from (%d,%d) to (%d,%d)\n", origin.x, origin.y, target.x, target.y);
    return 0;
}
```

Field access uses the `.` operator.

### A struct with a method

```apollo
struct Pair {
    public i32 left;
    public i32 right;

    public i32 sum() {
        return left + right;
    }
}

int main() {
    Pair pair {
        .left = 2,
        .right = 3
    };
    sys.println(pair.sum());
    return 0;
}
```

Structs are not limited to fields; the grammar admits methods too.

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

Brace initialization can be partial when the destination aggregate supports omitted fields.

### Expression-position construction

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

The type name before the braces makes the aggregate explicit at the call site.

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

Expression-position struct literals are accepted in ordinary method calls as well.

## Common mistakes

- **Documenting structs as field-only bags.** The current grammar also allows methods and nested declarations inside a struct body.
- **Expecting call-style construction to be the primary form.** The actively supported aggregate surface is brace initialization.
- **Forgetting `nconst`.** A field declared without `nconst` is immutable by default.
- **Writing `public:` or `private:` sections.** Visibility is attached to each member, not introduced with section labels.
- **Using `<...>` for named fields.** Angle-bracket composite literals are positional; named aggregate fields use braces.

## See also

- `docs/language/declarations/docs/class.md` — when you need methods and access control.
- `docs/language/declarations/docs/memstruct.md` — when you need explicit memory layout.
- `docs/language/expressions/docs/brace-initializer.md` — aggregate construction with `{ ... }`.
- `docs/language/types/docs/shape-type.md` — the unnamed positional alternative.
- `docs/language/memory-and-storage/docs/mutability.md` — `const` vs `nconst` rules applied to fields.
