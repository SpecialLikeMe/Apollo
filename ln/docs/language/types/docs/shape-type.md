# Shape type

## What it is

A shape type is Apollo's brace-delimited tuple of types. It names an ordered, fixed-length composite of two or more typed slots without giving the composite a class or struct name. You write it where you would otherwise write a type, and you build values for it with the composite literal `<a, b, ...>`.

The grammar surface is:

```
shapeType : '{' typeRef ',' typeRef (',' typeRef)* ','? '}'
```

In other words, at least two slots, separated by commas, wrapped in braces, with an optional trailing comma.

## When you use it

You reach for a shape type when you need a small, fixed, anonymous bundle of values and a named struct would be heavier than the situation deserves. Typical cases:

- Returning two or three related values from a function without inventing a `struct`.
- Keying a `map` by a small composite (`map<{i32, str}, ...>`).
- Holding a pair or triple of values inside a `vector` or `array`.
- Destructuring a result into named locals at the call site.
- Passing a small, well-typed bundle into a callback without ceremony.

If the bundle starts growing fields with meaningful names, switch to a `struct`. Shapes are for the shape; names belong to structs.

## Syntax

The type is brace-delimited. The composite literal is angle-bracket-delimited. The two surfaces look similar but are not interchangeable:

```apollo
{i32, str}              // a type: a shape with an int slot and a string slot
<42, "answer">          // a value: a composite literal that fits that type
```

Slots are positional. The first slot in the type aligns with the first expression in the literal, and so on. Slot count must match, and each expression must produce a value assignable to the corresponding type slot.

Indexing into a shape value uses the same composite literal as the key when the shape is being used as a map key. When the shape is just a tuple-style value, you can destructure it on assignment.

## Semantics

A shape type behaves as a value type. Assigning a shape value copies all its slots by value. Passing it to a function passes a copy. References to a shape (`{i32, str}&`) borrow the whole bundle, and the borrow rules are the same as for any other value.

Slot evaluation order in a composite literal is strictly left to right. That matters when slot expressions have side effects.

Two shape types are the same type if and only if they have the same slot count and each pair of corresponding slot types is the same. `{i32, str}` and `{str, i32}` are distinct.

Shape types are accepted anywhere a `typeRef` is accepted, including inside generics. That is what makes `map<{i32, str}, vector<i32>>` work.

## Examples

### Returning a small composite

```apollo
{i32, str} parse_entry(str line) {
    i32 id = strings.to_i32(strings.split(line, ':')[0]);
    str name = strings.split(line, ':')[1];
    return <id, name>;
}

int main() {
    {i32, str} entry = parse_entry("42:Devon");
    sys.println(entry[1]);
    return 0;
}
```

The function returns a fresh shape value. The caller binds it to a local of the same shape type.

### Destructuring into named locals

```apollo
{i32, str} split_name(str full) {
    i32 idx = strings.index_of(full, ' ');
    return <idx, strings.slice(full, idx + 1)>;
}

int main() {
    <i32 pos, str last> = split_name("Ada Lovelace");
    sys.println(last);
    return 0;
}
```

The angle-bracket form on the left-hand side mirrors the literal on the right. Each slot in the pattern introduces a new local with the type written next to it.

### Using a shape as a map key

```apollo
extern std collections;

int main() {
    nconst map<{i32, str}, i32> table = collections.map.create<{i32, str}, i32>();
    collections.map.insert(table, <1, "a">, 100);
    collections.map.insert(table, <1, "b">, 200);
    collections.map.insert(table, <2, "a">, 300);

    i32 value = collections.map.get(table, <1, "b">);
    sys.println(value);
    return 0;
}
```

The map's key type is a shape of `(i32, str)`. Equality on shapes is slot-by-slot, which is what makes them usable as map keys.

### Storing shapes in a vector

```apollo
extern std collections;

void list_pairs(nconst vector<{i32, i32}>& pairs) {
    for (nconst {i32, i32} p : pairs) {
        sys.printf("(%d, %d)\n", p[0], p[1]);
    }
}

int main() {
    nconst vector<{i32, i32}> data = <<1, 2>, <3, 4>, <5, 6>>;
    list_pairs(&nconst data);
    return 0;
}
```

`vector<{i32, i32}>` is a vector of shape values. Each iteration of the `for` binds `p` to one shape; `p[0]` and `p[1]` access its slots.

### Nesting shapes

```apollo
{str, {i32, i32}} locate(str city) {
    if (city == "denver") {
        return <"denver", <39, -104>>;
    }
    return <"unknown", <0, 0>>;
}

int main() {
    {str, {i32, i32}} entry = locate("denver");
    <str name, {i32, i32} coord> = entry;
    sys.printf("%s at (%d, %d)\n", name, coord[0], coord[1]);
    return 0;
}
```

Shapes nest. The inner shape `{i32, i32}` is just another type slot in the outer shape.

### Borrowing a shape

```apollo
void print_pair(nconst {i32, str}& entry) {
    sys.printf("%d: %s\n", entry[0], entry[1]);
}

int main() {
    {i32, str} entry = <7, "lucky">;
    print_pair(&nconst entry);
    return 0;
}
```

`&nconst entry` borrows the whole shape immutably. Inside `print_pair` the borrow is alive for the duration of the call, and the slots are accessed by index.

## Common mistakes

- **Single-slot shape.** `{i32}` is not a shape. The grammar requires at least two slots. Use `i32` directly.
- **Mismatched slot count.** Assigning `<1, 2, 3>` to a `{i32, i32}` binding fails. The literal must have the same number of slots as the type.
- **Using `(...)` instead of `<...>` for the literal.** The composite literal is angle-bracket-delimited; parentheses do not build a shape.
- **Expecting positional names.** Shapes have no field names. If you want `entry.id` and `entry.name`, use a `struct`.
- **Assuming shape order is reorderable.** `{i32, str}` and `{str, i32}` are different types.

## See also

- `docs/language/types/docs/type-reference.md` — the umbrella `typeRef` rule that admits shape types.
- `docs/language/expressions/docs/composite-literal.md` — the `<...>` literal that builds shape values.
- `docs/language/declarations/docs/struct.md` — the named alternative when slots want names.
- `docs/stdlib/data/docs/collections.md` — `map` and `vector` that frequently store shapes.
