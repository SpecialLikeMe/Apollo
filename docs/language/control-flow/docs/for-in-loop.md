# For-in loop

## What it is

The `for-in` loop iterates over the elements of a collection or range. It binds each element in turn to a loop-local variable and runs the body once per element. It is the preferred shape when you want to walk every element of something iterable; the C-style three-part `for` exists for index-driven loops, but `for-in` is shorter, safer, and avoids fencepost errors.

## When you use it

You reach for `for-in` whenever you want to walk a sequence and don't need the index:

- Iterating a vector, array, or set.
- Iterating the key-value pairs of a map.
- Walking a range produced by the `ranges` stdlib module.
- Iterating the lines of a file, the bytes of a buffer, or any other iterable surface.

When you need the position too, either pair it with `ranges.enumerate` or fall back to the C-style `for`.

## Syntax

```
'for' '(' mutability? typeRef? ID ':' expression ')' block
```

- The mutability marker (`const`, `nconst`) applies to the loop binding, not to the iterated collection.
- The `typeRef` is optional when the element type can be inferred from the iterable.
- The `ID` is the loop-local binding name.
- The expression must evaluate to an iterable.
- The body is a brace block.

## Semantics

The iterable expression is evaluated once, at loop entry. The loop then walks the iterable in its natural order, binding each element to the loop variable and running the body. The binding is fresh on each iteration — modifying it does not modify the iterable.

If the loop binding is `nconst`, the body may reassign the binding, but the change affects only the current iteration's local copy. To mutate the underlying collection element, iterate by reference: declare the binding as a reference type and let the iterable yield references.

The body executes zero or more times depending on the iterable's length. A `break` exits the loop entirely; a `continue` skips the rest of the body and advances to the next element.

Borrow-checker behavior: when iterating by reference, each iteration's borrow is independent and lives only for that iteration. When iterating by value (the default), no borrow of the collection is created — the loop machinery has already done the work to give you a copy of each element.

## Examples

### Iterating a vector by value

```apollo
extern std collections;

int main() {
    nconst vector<int> numbers = <1, 2, 3, 4, 5>;
    nconst int total = 0;
    nconst int total_mut = 0;
    for (nconst int n : numbers) {
        sys.println(n);
    }
    return 0;
}
```

Each `n` is a fresh local of type `int` holding a copy of the current element. The body simply prints it.

### Iterating with mutation in the body

```apollo
extern std collections;

int main() {
    nconst vector<int> numbers = <1, 2, 3, 4, 5>;
    nconst int sum = 0;
    nconst int sum_mut = 0;
    for (nconst int n : numbers) {
        sum_mut = sum_mut + n;
    }
    sys.println(sum_mut);
    return 0;
}
```

The accumulator lives outside the loop; the loop reads each element and adds it in. The element binding `n` is per-iteration and discarded at the end of each pass.

### Iterating by reference to mutate elements

```apollo
extern std collections;

int main() {
    nconst vector<int> numbers = <1, 2, 3>;
    for (nconst int& slot : &nconst numbers) {
        *slot = *slot * 10;
    }
    for (nconst int n : numbers) {
        sys.println(n);
    }
    return 0;
}
```

Borrowing the vector mutably and iterating yields mutable references to each element. Writing through `*slot` mutates the underlying vector.

### Iterating over a range

```apollo
extern std ranges;

int main() {
    for (nconst int i : ranges.exclusive(0, 5)) {
        sys.println(i);
    }
    return 0;
}
```

The `ranges` stdlib produces iterables. `ranges.exclusive(0, 5)` yields `0, 1, 2, 3, 4`.

### Iterating with `break` and `continue`

```apollo
extern std collections;

int main() {
    nconst vector<int> values = <1, 2, -1, 3, 4, -1, 5>;
    for (nconst int v : values) {
        if (v == -1) {
            continue;
        }
        if (v >= 4) {
            break;
        }
        sys.println(v);
    }
    return 0;
}
```

`continue` skips negative-sentinel values. `break` stops the loop entirely when the first large element appears. Output is `1`, `2`, `3`.

### Iterating map entries

```apollo
extern std collections;

int main() {
    nconst map<str, int> scores = collections.map.create<str, int>();
    collections.map.insert(scores, "ada", 95);
    collections.map.insert(scores, "lin", 88);
    collections.map.insert(scores, "ken", 91);

    for (nconst {str, int} entry : scores) {
        sys.printf("%s -> %d\n", entry[0], entry[1]);
    }
    return 0;
}
```

A map iterated by value yields shape pairs of (key, value). Iteration order is unspecified for a hash map.

## Common mistakes

- **Reassigning the loop binding and expecting the collection to change.** The binding is a per-iteration copy. To mutate elements, iterate by reference.
- **Capturing the loop binding in a closure that outlives the iteration.** The binding is freshly initialized each iteration, but its storage is the same slot. Closures that need to remember per-iteration values must copy them into their own state.
- **Modifying the collection during iteration.** Adding or removing elements from the collection inside the loop is rejected by the borrow checker because the loop holds a conceptual borrow of the iterable.
- **Forgetting `nconst` on a binding you intend to reassign.** Without `nconst`, the loop binding is immutable for the duration of each iteration.
- **Using `for (i := 0; ...)` shape and calling it `for-in`.** That is the C-style `for`. The `for-in` shape always has a single binding, a `:`, and an iterable.

## See also

- `docs/language/control-flow/docs/for.md` — the C-style three-part `for`.
- `docs/language/control-flow/docs/while.md` — condition-driven looping.
- `docs/language/control-flow/docs/break.md` and `docs/language/control-flow/docs/continue.md` — flow control within loops.
- `docs/stdlib/data/docs/ranges.md` — the `ranges` stdlib that pairs naturally with `for-in`.
- `docs/stdlib/data/docs/collections.md` — vectors, sets, and maps as iterables.
