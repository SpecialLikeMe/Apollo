# Composite literal

## What it is

A composite literal builds a positional aggregate value inline. The single syntax `<a, b, c>` constructs vectors, arrays, and shape values depending on the destination type. The compiler infers the kind of aggregate from where the literal appears.

Composite literals are the angle-bracket form. Named aggregate construction such as struct and struct-like enum values uses brace initializers instead.

## When you use it

- Building a fixed-size array: `nconst i32[3] a = <1, 2, 3>;`
- Building a vector: `nconst vector<int> v = <1, 2, 3>;`
- Building a shape value: `nconst {i32, str} pair = <1, "one">;`
- Feeding a positional aggregate into another initializer, such as a struct field whose type is a vector or shape.

## Syntax

```
compositeLiteral : '<' expression (',' expression)* ','? '>' ;
```

A minimum of one element. Trailing commas allowed. Nesting is allowed: each element can itself be a composite literal.

## Semantics

The literal has no fixed type on its own. The destination context determines the resulting type:

- Array context → array literal; element count must match the array's size.
- Vector context → vector with the literal's elements.
- Shape context → shape with slots matched to the literal's positions.

Each element is type-checked against the destination's expected element/field type.

## Examples

### Vector

```apollo
extern std collections;

int main() {
    nconst vector<int> v = <1, 2, 3, 4, 5>;
    sys.println(collections.vector.length(v));
    sys.println(v[2]);
    return 0;
}
```

The composite literal builds a five-element vector.

### Fixed array

```apollo
int main() {
    nconst i32[3] a = <10, 20, 30>;
    sys.println(a[0] + a[1] + a[2]);
    return 0;
}
```

The element count must match the array's declared size.

### Shape value

```apollo
{i32, str} entry() {
    return <1, "one">;
}

int main() {
    {i32, str} e = entry();
    sys.println(e[1]);
    return 0;
}
```

The literal becomes a shape value with slots positionally matched.

### Nested

```apollo
extern std collections;

int main() {
    nconst vector<vector<int>> matrix = <
        <1, 2, 3>,
        <4, 5, 6>,
        <7, 8, 9>
    >;
    for (nconst vector<int> row : matrix) {
        for (nconst int v : row) {
            sys.printf("%d ", v);
        }
        sys.println("");
    }
    return 0;
}
```

Each inner literal becomes a `vector<int>`; the outer becomes a `vector<vector<int>>`.

### Trailing comma

```apollo
extern std collections;

int main() {
    nconst vector<int> v = <
        1,
        2,
        3,
    >;
    sys.println(collections.vector.length(v));
    return 0;
}
```

A trailing comma is allowed and recommended for multi-line literals.

### Inside a struct field initializer

```apollo
struct Bag {
    nconst vector<int> items;
};

int main() {
    Bag b {
        .items = <10, 20, 30>
    };
    for (nconst int v : b.items) {
        sys.println(v);
    }
    return 0;
}
```

The composite literal fills the `vector<int>` field, while the outer `Bag` value is still built with a brace initializer.

## Common mistakes

- **Empty literal.** `<>` has no destination cue and is rejected. Use a typed constructor instead.
- **Wrong element count for array.** `i32[3] a = <1, 2>;` is rejected.
- **Mixed element types.** All elements of a vector literal must share one type. For mixed-type tuples, use a shape value.
- **Using `<...>` for named fields.** Composite literals are positional. Use a brace initializer for named struct fields such as `Point { .x = 1, .y = 2 }`.
- **Destination cannot be inferred.** A literal as a bare function argument may need a type hint via a cast.

## See also

- `docs/language/types/docs/array-type.md` — fixed-size arrays.
- `docs/language/types/docs/shape-type.md` — shape values.
- `docs/stdlib/data/docs/collections.md` — vector and friends.
- `docs/language/expressions/docs/brace-initializer.md` — designated and aggregate brace construction.
- `docs/language/declarations/docs/struct.md` — struct declarations and field layout.
