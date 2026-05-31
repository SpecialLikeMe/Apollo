# Comparison operators

## What they are

Comparison operators produce a boolean from two operands of the same type:

- `==` equal
- `!=` not equal
- `<`  less than
- `<=` less than or equal
- `>`  greater than
- `>=` greater than or equal

All comparisons require matching operand types. The result type is always `bool`.

## When you use them

- Loop conditions: `while (i < n) { ... }`.
- Branch tests: `if (x == 0) { ... }`.
- Filtering and predicates: `if (value > threshold) { ... }`.
- Sorting and ordering: pairwise comparisons in custom sort functions.

## Syntax

```
equality   : relational (('==' | '!=') relational)* ;
relational : additive (('<' | '<=' | '>' | '>=') additive)* ;
```

Comparisons are left-associative but chaining like `a < b < c` is rejected — write `a < b && b < c`.

## Semantics

Comparison semantics depend on the operand type:

- **Integers**: ordering by numeric value. Signed and unsigned both supported; do not mix.
- **Floats**: IEEE 754 ordering. NaN compares unequal to everything including itself; ordering tests with NaN yield false.
- **Bool**: `false < true`. Useful for sorting.
- **Pointers and references**: equality compares addresses; ordering operators compare addresses if both pointers refer into the same allocation (otherwise undefined).
- **Strings**: lexicographic comparison via the `strings` module surface; `==` on `str` compares byte equality.

User-defined types may opt into comparison via interface implementation; see `docs/stdlib/foundations/docs/core.md`.

## Examples

### Equality

```apollo
int main() {
    nconst int a = 7;
    nconst int b = 7;
    sys.println(a == b);    // true
    sys.println(a != b);    // false
    return 0;
}
```

### Ordering

```apollo
int main() {
    nconst int a = 3;
    nconst int b = 5;
    sys.println(a < b);     // true
    sys.println(a <= a);    // true
    sys.println(a > b);     // false
    return 0;
}
```

### Float NaN

```apollo
extern std math;

int main() {
    nconst f64 nan = math.nan();
    sys.println(nan == nan);   // false!
    sys.println(nan != nan);   // true!
    return 0;
}
```

`nan` does not compare equal to itself. Always use `math.is_nan` to test.

### String comparison

```apollo
extern std strings;

int main() {
    sys.println("hello" == "hello");    // true
    sys.println(strings.compare("a", "b"));   // negative
    return 0;
}
```

`==` on `str` compares byte content. Ordering uses the `strings` module.

### Comparison in a sort

```apollo
extern std collections;

int main() {
    nconst vector<int> v = <5, 2, 8, 1>;
    collections.vector.sort(v, closure (int a, int b) -> bool {
        return a < b;
    });
    for (nconst int x : v) {
        sys.println(x);
    }
    return 0;
}
```

The closure expresses ordering via `<`.

### Combined comparison

```apollo
int main() {
    nconst int x = 7;
    if (x >= 0 && x <= 10) {
        sys.println("in range");
    }
    return 0;
}
```

Apollo does not support `0 <= x <= 10` chaining. Write the conjunction explicitly.

## Common mistakes

- **Chaining comparisons.** `a < b < c` is rejected.
- **NaN equality.** Floats with NaN never compare equal. Use `math.is_nan`.
- **Mixing types.** `int` and `f64` cannot be compared directly. Cast one to match.
- **Ordering unrelated pointers.** Undefined. Only compare pointers within the same allocation.
- **Assuming user types have `==`.** Only types that implement the comparison interface (or are primitive) support `==`.

## See also

- `docs/language/expressions/docs/logical-operators.md` — combining bool results.
- `docs/language/control-flow/docs/if-statement.md`, `while.md` — typical consumers.
- `docs/stdlib/foundations/docs/math.md` — NaN handling.
- `docs/stdlib/text/docs/strings.md` — string comparison.
