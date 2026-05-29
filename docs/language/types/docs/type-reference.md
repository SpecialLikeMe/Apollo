# Type reference

## What it is

A type reference is the syntactic surface for naming a type anywhere a type is required — function parameters, return types, variable declarations, generic arguments, field types, cast targets, and so on. The grammar rule `typeRef` is the umbrella that admits every type form Apollo recognizes: primitives, named types (classes, structs, memstructs, interfaces), generics, references, function types, shape types, array types, and pointer types.

Understanding `typeRef` is understanding "what kinds of type can appear in a type position".

## When you use it

You write a type reference whenever Apollo asks for a type. The compiler does not infer types in declarations that the grammar requires explicit (`int x = 0;` requires the `int`); inferred forms (`ato` and `:=`) explicitly opt out.

## Syntax

The grammar's `typeRef` admits these alternatives (in conceptual order):

```
typeRef
    : primitive          // int, i8, i16, i32, i64, u8, ..., f32, f64, bool, str, ato, void
    | ID                 // a named type: a class, struct, memstruct, interface, or generic parameter
    | generic            // ID '<' typeRef (',' typeRef)* '>'
    | reference          // typeRef '&'
    | pointer            // typeRef '*'
    | functionType       // 'fn' '<' returnType '(' typeList? ')' '>'
    | shapeType          // '{' typeRef ',' typeRef (',' typeRef)* ','? '}'
    | arrayType          // typeRef '[' INT? ']'
    ;
```

Optional mutability prefixes (`const`, `nconst`) apply to the binding the type is attached to, not to the type itself, with the exception of references which carry their flavor as part of the type.

## Semantics

A type reference resolves to a single Apollo type at validation time. Two type references denote the same type if they reduce to the same underlying type after generic substitution and reference/pointer normalization. The frontend canonicalizes type references so equality checks are cheap.

Types carry a fixed size and alignment once resolved. Sizes are deterministic per target architecture (Apollo uses fixed-width integers like `i32` and `i64`; `int` is an alias for `i32` on every target).

Type references may be recursive only through reference or pointer types. A value-typed self-reference (a struct containing itself by value) is rejected.

## Examples

### Primitive types in declarations

```apollo
int main() {
    nconst i32 small = 42;
    nconst i64 big = 1700000000000;
    nconst f32 ratio = 0.5;
    nconst f64 precise = 3.141592653589793;
    nconst bool flag = true;
    nconst str text = "hello";
    sys.printf("%d %lld %f %f %d %s\n", small, big, ratio, precise, flag, text);
    return 0;
}
```

Each declaration's type is a `typeRef` reducing to a primitive.

### Named type and generic

```apollo
extern std collections;

class Holder {
    public:
    const i32 value;
};

int main() {
    nconst Holder h = Holder(7);
    nconst vector<i32> v = <1, 2, 3>;
    nconst map<str, i32> m = collections.map.create<str, i32>();
    sys.println(h.value);
    sys.println(v[0]);
    return 0;
}
```

`Holder`, `vector<i32>`, and `map<str, i32>` are all type references — the first is a plain named type, the others are generic types.

### Reference and pointer types

```apollo
int main() {
    int x = 5;
    nconst int& ref = &x;            // immutable reference type
    nconst i32* raw = malloc<i32>(); // pointer type
    *raw = 99;
    sys.println(*ref);
    sys.println(*raw);
    free(raw);
    return 0;
}
```

`int&` is a reference type. `i32*` is a pointer type. Both produce indirection but with different safety guarantees.

### Function type

```apollo
fn<int(int, int)> pick_op(bool add) {
    if (add) {
        return closure (int a, int b) -> int { return a + b; };
    }
    return closure (int a, int b) -> int { return a - b; };
}

int main() {
    nconst fn<int(int, int)> op = pick_op(true);
    sys.println(op(3, 4));
    return 0;
}
```

`fn<int(int, int)>` is the function type — a callable taking two ints and returning an int. Closures, lambdas, and top-level functions all inhabit this type.

### Shape type

```apollo
{i32, str} entry() {
    return <1, "first">;
}

int main() {
    {i32, str} e = entry();
    sys.println(e[1]);
    return 0;
}
```

A shape type is a `typeRef` of the form `{T0, T1, ...}` with at least two slots.

### Array type

```apollo
int main() {
    nconst i32[5] fixed = <10, 20, 30, 40, 50>;
    for (nconst i := 0; i < 5; i = i + 1) {
        sys.println(fixed[i]);
    }
    return 0;
}
```

`i32[5]` is a fixed-size array. `i32[]` (no size) is a dynamically-sized form available in some positions (parameter declarations, primarily).

## Common mistakes

- **Putting mutability on the type instead of the binding.** `const int x` is fine because `const` applies to `x`. `int const x` is rejected.
- **Forgetting generic arguments.** `vector v = ...` is rejected; write `vector<int> v = ...`.
- **Trying to use a primitive that doesn't exist.** Apollo's primitive set is fixed and target-stable. Unknown primitive names are rejected.
- **Recursive value-typed reference.** A struct containing itself by value is rejected. Use a reference or pointer for self-reference.
- **Using `void` outside of return types.** `void` is only valid as a return type; it cannot be a binding's type.

## See also

- `docs/language/types/docs/primitive-types.md` — the full primitive set.
- `docs/language/types/docs/function-type.md` — `fn<R(Args...)>`.
- `docs/language/types/docs/generic-type.md` — generic instantiation in type position.
- `docs/language/types/docs/reference-type.md`, `pointer-type.md`, `array-type.md`, `shape-type.md`, `void-type.md`.
