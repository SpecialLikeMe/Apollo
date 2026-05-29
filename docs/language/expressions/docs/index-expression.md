# Index expression

## What it is

An index expression accesses a single element of an indexed container — array, vector, buffer, map — by supplying a key in square brackets. The syntax is `container[index]`. For arrays, vectors, and buffers, the index is an integer; for maps, it is the key type.

Index expressions can appear on either side of an assignment: `v[i]` reads the element, `v[i] = value` writes it (subject to mutability).

## When you use it

You use indexing whenever you reach into a collection by position or key:

- Array element access: `a[3]`.
- Vector element access: `v[i]`.
- Map lookup: `table["key"]`.
- Buffer byte access: `buf[offset]`.

For shape values, integer-literal indexing is provided through the member-access surface (`shape[0]`, `shape[1]`).

## Syntax

```
indexExpr : expression '[' expression ']' ;
```

The index expression's type must match the container's index type.

## Semantics

`container[index]` produces the element at the given index. For arrays and vectors, an out-of-bounds index faults at runtime (in checked builds) or is undefined (in release).

When the index expression appears on the LHS of an assignment, the result is an assignable place. The container must be mutable, the index valid, and the element type assignable.

For maps, `table[key]` reads the value associated with the key. If the key is not present, behavior depends on the map type: some variants return a default; others fault. Use `collections.map.get` for explicit lookup with absence handling.

## Examples

### Array index

```apollo
int main() {
    nconst i32[5] a = <10, 20, 30, 40, 50>;
    sys.println(a[2]);
    return 0;
}
```

Zero-based indexing.

### Vector write

```apollo
extern std collections;

int main() {
    nconst vector<int> v = <1, 2, 3>;
    v[1] = 99;
    for (nconst int x : v) {
        sys.println(x);
    }
    return 0;
}
```

The vector is mutable, so element writes are allowed.

### Map lookup

```apollo
extern std collections;

int main() {
    nconst map<str, int> table = collections.map.create<str, int>();
    collections.map.insert(table, "one", 1);
    collections.map.insert(table, "two", 2);
    sys.println(table["one"]);
    sys.println(table["two"]);
    return 0;
}
```

The key type determines the index expression's type.

### Index in a loop

```apollo
extern std collections;

int main() {
    nconst vector<int> v = <1, 2, 3, 4, 5>;
    for (nconst i := 0; i < collections.vector.length(v); i = i + 1) {
        sys.printf("v[%d] = %d\n", i, v[i]);
    }
    return 0;
}
```

Indexed traversal works the same as in any imperative language.

### Computed index

```apollo
extern std collections;

int main() {
    nconst vector<int> v = <10, 20, 30, 40, 50>;
    nconst int i = 1;
    nconst int j = 2;
    sys.println(v[i + j]);
    return 0;
}
```

The index expression can be any integer expression.

### Nested index for matrix

```apollo
extern std collections;

int main() {
    nconst vector<vector<int>> matrix = <
        <1, 2, 3>,
        <4, 5, 6>,
        <7, 8, 9>
    >;
    sys.println(matrix[1][2]);  // 6
    return 0;
}
```

Chained indexing reaches into nested containers.

## Common mistakes

- **Out-of-bounds.** Always check the container's length before indexing in performance-critical code, or rely on the runtime check.
- **Wrong index type.** A string index on a vector is rejected; the index must match the container's index type.
- **Writing to an immutable container.** A vector bound `const` cannot be written through `v[i] = ...`.
- **Assuming map default values.** Some map types fault on missing key. Use `collections.map.get` for absence handling.
- **Using `()` instead of `[]`.** `v(0)` is a call, not an index.

## See also

- `docs/language/types/docs/array-type.md` — fixed-size arrays.
- `docs/stdlib/data/docs/collections.md` — vectors and maps.
- `docs/stdlib/data/docs/buffer.md` — byte buffers.
- `docs/language/expressions/docs/assignment.md` — element writes.
