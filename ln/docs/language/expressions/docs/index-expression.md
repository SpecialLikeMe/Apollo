# Index expression

## What it is

An index expression reads or writes a collection element with square brackets.

Current passing surfaces include:

- arrays such as `values[2]`
- vectors such as `items[0]`
- maps such as `scores["dog"]`
- nested map/shape lookups such as `nested[<23, "hello">]["world"]`

## Current shape

```apollo
container[key]
container[key] = value
```

The key expression must match the container's index type.

## Semantics

- Arrays and vectors use integer indexes.
- `unordered_map<...>` and `hsh<...>` use the declared key type.
- On the left-hand side of `=`, the index expression becomes the assignment target.
- On the right-hand side, it yields the loaded value.

## Examples

### Array read

```apollo
extern std prelude;

int main() {
    nconst i32[4] values = <10, 20, 30, 40>;
    return values[2] - 30;
}
```

### Vector write and read

```apollo
extern std prelude;

int main() {
    vector<i32> values;
    values.append(7);
    values[0] = 9;
    return values[0] - 9;
}
```

### Integer-key map

```apollo
extern std prelude;

i32 main() {
    global unordered_map<i32, i32> scores;
    scores[90] = 1;
    return scores[90] - 1;
}
```

### String-key map

```apollo
extern std prelude;

int main() {
    unordered_map<str, int> scores;
    scores["dog"] = 9;
    return scores["dog"] - 9;
}
```

### Nested indexing

```apollo
extern std prelude;

int main() {
    hsh<hsh<i32, str>, hsh<str, i32>> nested;
    nested[<23, "hello">] = <"world", 9>;
    return nested[<23, "hello">]["world"] - 9;
}
```

## Common mistakes

- **Using outdated helper-style docs.** Current tested code uses direct indexing like `scores["dog"]`, not older `collections.map.create<...>()` examples.
- **Using the wrong key type.** `values["0"]` is not valid for a vector.
- **Writing through an immutable surface.** Indexed assignment requires a writable container.
- **Using `()` instead of `[]`.** `scores("dog")` is a call, not an index expression.

## See also

- `docs/language/expressions/docs/member-access.md` — dot-based lookup and method calls.
- `docs/language/expressions/docs/assignment.md` — assignment targets.
- `docs/language/types/docs/array-type.md` — array layout and bounds.
- `docs/language/types/docs/generic-type.md` — `vector<T>` and `unordered_map<K, V>` as generic types.
