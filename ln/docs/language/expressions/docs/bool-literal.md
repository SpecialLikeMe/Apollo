# Bool literals

## What they are

`true` and `false` are the two boolean literals. They have type `bool` and are the only values that type can take.

## When you use them

- Initializing a bool variable: `nconst bool ready = false;`
- Returning a status from a function: `return true;`
- Default values for predicates: `bool include = true;`
- Direct conditions: rare, but `if (true) { ... }` for unconditional code (usually a sign that the structure can be simplified).

## Syntax

```
boolLit : 'true' | 'false' ;
```

Lowercase, exact spelling. There are no other bool literals — no `0`/`1` shortcut, no `yes`/`no`.

## Semantics

`true` evaluates to the bool value true; `false` evaluates to false. The literals carry no other state.

Bool participates in logical (`&&`, `||`, `!`) and equality (`==`, `!=`) operators. There is no implicit conversion between bool and integer or pointer types.

## Examples

### Direct initialization

```apollo
int main() {
    nconst bool ready = true;
    nconst bool done = false;
    sys.println(ready);
    sys.println(done);
    return 0;
}
```

### Return from a predicate

```apollo
bool is_valid(int n) {
    if (n < 0 || n > 100) {
        return false;
    }
    return true;
}

int main() {
    sys.println(is_valid(50));
    sys.println(is_valid(-5));
    return 0;
}
```

### Default in a parameter

```apollo
extern std collections;

void show(nconst vector<int>& items, bool reverse) {
    if (reverse) {
        for (nconst i := collections.vector.length(items) - 1; i >= 0; i = i - 1) {
            sys.println(items[i]);
        }
    } else {
        for (nconst int v : items) {
            sys.println(v);
        }
    }
}

int main() {
    nconst vector<int> v = <1, 2, 3>;
    show(&nconst v, false);
    sys.println("--");
    show(&nconst v, true);
    return 0;
}
```

### Used with logical operators

```apollo
int main() {
    nconst bool a = true;
    nconst bool b = false;
    sys.println(a && b);    // false
    sys.println(a || b);    // true
    sys.println(!a);        // false
    return 0;
}
```

### In a conditional expression

```apollo
int main() {
    nconst bool admin = true;
    nconst str role = admin ? "administrator" : "user";
    sys.println(role);
    return 0;
}
```

### Flag toggling

```apollo
int main() {
    nconst bool flag = true;
    flag = !flag;
    flag = !flag;
    sys.println(flag);
    return 0;
}
```

## Common mistakes

- **Using 0/1 as bool.** `nconst bool x = 1;` is rejected. Write `true` or `false`.
- **Using `True`/`False`.** Apollo's literals are lowercase.
- **Calling `if (1)` style code.** Apollo requires bool, not integer.
- **Comparing to true/false explicitly.** `if (ready == true)` is verbose; just `if (ready)`.
- **Treating a non-zero pointer as truthy.** Compare to null explicitly: `if (p != null)`.

## See also

- `docs/language/types/docs/primitive-types.md` — `bool` type.
- `docs/language/expressions/docs/logical-operators.md` — `&&`, `||`, `!`.
- `docs/language/expressions/docs/comparison-operators.md` — producing bools.
- `docs/language/expressions/docs/conditional-expression.md` — `cond ? a : b`.
