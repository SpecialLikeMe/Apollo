# Assignment

## What it is

Assignment writes a value into an assignable place. Apollo's primary assignment operator is `=`. Compound forms (`+=`, `-=`, `*=`, `/=`, `%=`, `&=`, `|=`, `^=`, `<<=`, `>>=`) read the current value, apply an operation, and write the result back.

Assignment is a statement-level construct in Apollo; it does not produce a value usable in a surrounding expression.

## When you use it

- Updating a mutable local: `counter = counter + 1;`
- Mutating a field through a borrow: `slot.value = 42;`
- Writing through a reference or pointer: `*ref = 10;`
- Initializing storage produced by `malloc`: `*p = ...;`
- Updating array or vector elements: `v[i] = ...;`

## Syntax

```
assignment
    : place '=' expression ';'
    | place compoundOp expression ';'
    ;

compoundOp : '+=' | '-=' | '*=' | '/=' | '%='
           | '&=' | '|=' | '^=' | '<<=' | '>>=' ;

place
    : ID
    | place '.' ID
    | place '->' ID
    | place '[' expression ']'
    | '*' place
    ;
```

The left-hand side must be a *place* — something with a storage location, not an arbitrary expression.

## Semantics

`place = expression;` evaluates the right-hand side, then writes it to the location identified by the place. The left-hand side's mutability must permit the write:

- The binding (if a direct identifier) must be `nconst`.
- A field write requires the field to be `nconst` and the containing place to be writable.
- A dereference write (`*ref = value`) requires the reference to be mutable.

Compound assignments are equivalent to `place = place <op> expression;` with the place's address computed once. Side effects in `place` (rare) are not re-executed.

The expression's type must match the place's type. Apollo does not perform implicit narrowing.

## Examples

### Simple local update

```apollo
int main() {
    nconst int counter = 0;
    counter = counter + 1;
    counter = counter + 1;
    sys.println(counter);
    return 0;
}
```

The local is mutable; assignment updates it.

### Compound assignment

```apollo
int main() {
    nconst int total = 0;
    total += 10;
    total += 20;
    total += 30;
    sys.println(total);
    return 0;
}
```

`+=` adds and writes back in one statement.

### Field write

```apollo
struct Counter { nconst i32 ticks; };

int main() {
    nconst Counter c = Counter(0);
    c.ticks = 5;
    c.ticks += 2;
    sys.println(c.ticks);
    return 0;
}
```

The field's `nconst` permits the write.

### Write through a reference

```apollo
void bump(nconst int& slot) {
    *slot = *slot + 1;
}

int main() {
    nconst int x = 0;
    bump(&nconst x);
    bump(&nconst x);
    sys.println(x);
    return 0;
}
```

The mutable reference allows write-through.

### Vector element update

```apollo
extern std collections;

int main() {
    nconst vector<int> v = <0, 0, 0>;
    for (nconst i := 0; i < 3; i = i + 1) {
        v[i] = (i + 1) * 10;
    }
    for (nconst int x : v) {
        sys.println(x);
    }
    return 0;
}
```

Vector index access produces an assignable place when the vector is mutable.

### Chained reads (no chained assignment)

```apollo
int main() {
    nconst int a = 0;
    nconst int b = 0;
    a = 5;
    b = a;
    sys.println(a + b);
    return 0;
}
```

Apollo does not support `a = b = 5;` chained assignment as an expression — assignments are statements. Use two statements.

## Common mistakes

- **Writing to an immutable binding.** Rejected. Make the binding `nconst`.
- **Writing to a derived value.** `x + 1 = 5;` is rejected — the LHS must be a place.
- **Compound assignment on a non-numeric type.** `s += "x";` is not implicit string concatenation; use `strings.concat`.
- **Confusing `=` with `==`.** `=` writes, `==` tests equality. Apollo uses both; pick the one that matches your intent.
- **Trying to use the value of an assignment.** Assignments are statements. Use a separate read.

## See also

- `docs/language/memory-and-storage/docs/mutability.md` — `nconst` enables assignment.
- `docs/language/expressions/docs/dereference.md` — writing through `*`.
- `docs/language/expressions/docs/member-access.md` — field writes.
- `docs/language/expressions/docs/index-expression.md` — element writes.
