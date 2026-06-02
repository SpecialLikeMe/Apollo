# Generic type

## What it is

A generic type is a concrete instantiation such as `Box<int>`, `vector<str>`, or `unordered_map<str, int>`.

Apollo's current generic declaration surface is documented on the template page. Older docs that use `class Box<T>` are out of date.

## Current shape

```apollo
Name<T>
Name<T, U>
vector<str>
unordered_map<str, int>
fn<i32(i32, i32)>
```

The argument list is part of the type itself. Different argument lists produce different concrete types.

## Semantics

- Generic arguments are checked during validation.
- Distinct instantiations lower to distinct concrete types.
- Nested generic arguments are valid when the referenced surface supports them.
- Function types such as `fn<i32(i32)>` participate in the same angle-bracket type syntax.

## Examples

### Built-in generic containers

```apollo
extern std prelude;

int main() {
    vector<str> names;
    names.append("apollo");

    unordered_map<str, int> scores;
    scores["dog"] = 7;

    return scores["dog"] - 7;
}
```

### Template declaration and instantiation

```apollo
extern std prelude;

template Box(T) {
    public T fetch(T value) {
        return value;
    }
}

int main() {
    nconst Box<int> box;
    return box.fetch(4) - 4;
}
```

### Generic function result type

```apollo
extern std prelude;

template <T> identity(<T> x) {
    T value = x;
    return value;
}

int main() {
    int a = identity<int>(4);
    str b = identity("hello");
    return a - 4;
}
```

### Function type as a generic type

```apollo
extern std prelude;

int main() {
    fn<i32(i32, i32)> add = clr-> [](i32 left, i32 right) in let main::() =
        return left + right;
    return add(1, 2) - 3;
}
```

### Multiple generic arguments

```apollo
extern std prelude;

int main() {
    unordered_map<i32, i32> counts;
    counts[90] = 1;
    return counts[90] - 1;
}
```

## Common mistakes

- **Using old declaration syntax.** Current generic declarations use `template Box(T)`, not `class Box<T>`.
- **Forgetting the argument list.** `Box` and `unordered_map` by themselves are not the same type as `Box<int>` or `unordered_map<str, int>`.
- **Supplying the wrong number of arguments.** `vector<T>` takes one argument; `unordered_map<K, V>` takes two.
- **Assuming different instantiations are interchangeable.** `vector<int>` and `vector<str>` are different concrete types.

## See also

- `docs/language/declarations/docs/template.md` — declaring templates and generic functions.
- `docs/language/types/docs/type-reference.md` — the broader type grammar.
- `docs/language/expressions/docs/index-expression.md` — indexing generic containers.
