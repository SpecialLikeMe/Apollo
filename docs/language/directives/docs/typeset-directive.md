# Typeset directive

## What it is

The `typeset` directive declares a named set of types and constraints reusable across templates, generic declarations, and interface checks. A typeset is essentially a named bundle that lists acceptable types or required capabilities — e.g., "any signed integer type" or "any type implementing `Hashable` and `Comparable`".

Where a template's `T:` constraint is per-parameter, a `typeset` is a reusable definition you can reference by name.

## When you use it

- You constrain multiple templates with the same set of types/interfaces.
- You want to give a constraint a descriptive name (`Numeric`, `Stringable`).
- You're building a generic library where consistent constraint vocabulary aids users.

For one-off constraints, a direct `T: SomeInterface` is sufficient.

## Syntax

```
typesetDirective
    : '#[typeset' '(' typesetName ',' typesetBody ')' ']'
    ;
typesetBody
    : 'types' '(' typeRef (',' typeRef)* ')'
    | 'requires' '(' interfaceRef (',' interfaceRef)* ')'
    | typesetBody '&&' typesetBody
    ;
```

The directive defines a typeset named `typesetName` with either an explicit type enumeration, an interface requirement list, or a conjunction of both.

## Semantics

Once defined, the typeset name can be used in template parameter constraints:

```apollo
template <T: SignedNumeric> T abs<T>(T value) { ... }
```

`SignedNumeric` here would be defined as a typeset listing `i8`, `i16`, `i32`, `i64`, `f32`, `f64`.

The typeset's contents are checked against the actual template argument: an enumeration set requires the argument to be one of the listed types; an interface requirement requires the argument to implement each named interface; a conjunction requires both.

## Examples

### Defining a numeric typeset

```apollo
#[typeset(SignedNumeric, types(i8, i16, i32, i64, f32, f64))];

template <T: SignedNumeric> T abs<T>(T value) {
    return value < 0 ? -value : value;
}

int main() {
    sys.println(abs<i32>(-5));
    sys.println(abs<f64>(-2.5));
    return 0;
}
```

The typeset names a set of acceptable types; the template references it.

### Interface-based typeset

```apollo
interface Hashable { i64 hash(); };
interface Comparable { bool less(nconst Comparable& other); };

#[typeset(HashableComparable, requires(Hashable, Comparable))];

template <T: HashableComparable> i64 hashed_compare<T>(nconst T& a, nconst T& b) {
    if (a.hash() == b.hash() && !a.less(&nconst b) && !b.less(&nconst a)) {
        return 0;
    }
    return a.less(&nconst b) ? -1 : 1;
}
```

The typeset requires both interfaces. Any type implementing both qualifies.

### Conjunction typeset

```apollo
#[typeset(NumericComparable,
    types(i8, i16, i32, i64, f32, f64) && requires(Comparable))];

interface Comparable { bool less(nconst Comparable& other); };

template <T: NumericComparable> T min<T>(T a, T b) {
    return a < b ? a : b;
}
```

The conjunction requires the type to be both numeric and to implement `Comparable`.

### File-scoped typeset declaration

```apollo
#[typeset(Printable, requires(Display))];

interface Display { str to_str(); };

template <T: Printable> void show<T>(nconst T& value) {
    sys.println(value.to_str());
}
```

The typeset is declared at file scope and used by every subsequent template.

### Typeset referenced across files

```apollo
// shared/typesets.apollo
#[typeset(Hashable, requires(HashImpl))];
interface HashImpl { i64 hash(); };

// main.apollo
extern shared.typesets;

template <T: Hashable> i64 keyize<T>(nconst T& value) {
    return value.hash();
}
```

Typesets are first-class declarations; they can be imported just like types.

### Using a typeset in a class generic parameter

```apollo
#[typeset(Storable, types(i32, i64, f64, str))];

class Cell<T: Storable> {
    public:
    nconst T value;
};

int main() {
    nconst Cell<i32> c1 = Cell<i32>(42);
    nconst Cell<str> c2 = Cell<str>("hello");
    sys.println(c1.value);
    sys.println(c2.value);
    return 0;
}
```

Class generic parameters accept typeset names just like function generics.

## Common mistakes

- **Empty typeset.** Rejected; requires at least one type or interface.
- **Forward reference to a typeset.** The typeset must be defined before its use.
- **Using a typeset with a non-generic.** Typesets are only meaningful as template constraints.
- **Conjunction of conflicting requirements.** `types(i32) && requires(Hashable)` requires `i32` to implement `Hashable`; if it doesn't, no type satisfies the typeset.
- **Treating a typeset as a type.** It is a constraint, not a type — you cannot declare `Storable x = 5;`.

## See also

- `docs/language/declarations/docs/template.md` — generics and constraints.
- `docs/language/declarations/docs/interface.md` — interface declarations.
- `docs/language/directives/docs/lto-directive.md` — related directive surface.
- `docs/language/types/docs/generic-type.md` — typeset constraints in action.
