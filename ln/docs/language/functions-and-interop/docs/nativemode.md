# DEPREACATED


# Nativemode

## Current surface

The grammar rule named `nativemode` is currently:

```antlr
nativemode : ASYNC ('-' OVERRIDE)? INCLUSIVE (NATIVE | ID) ';' ;
```

That means the accepted source shape is an `async` payload block tagged with a language, for example:

```apollo
async {
    print(42)
}py;

async -override {
    int main() {
        return 0;
    }
}cpp;
```

## What it is not

The current grammar does not contain the older `nativemode;` or `nativemode(flags...)` directive surface described in previous docs.

## Current backend behavior

The native backend currently accepts this `nativemode` surface, but the lowering path itself is effectively a no-op in the places where it is recognized. Do not assume it flips a file-wide compiler mode or ABI policy unless you have verified a specific backend path that uses it.

## Where it appears

The grammar allows `nativemode` as a top-level program item and as a statement/unsafe-line payload in certain contexts. Current fixtures exercise it inside unsafe contexts.

## See also

- `docs/language/functions-and-interop/docs/inline-foreign-block.md`
- `docs/language/functions-and-interop/docs/async-call.md`
- `Apollo-Main/compiler/compilerv1.g4`
- `Apollo-Main/compiler/tests/grammar/pass/runtime_surface.apollo`
- `Apollo-Main/compiler/tests/grammar/pass/unsafe_alias_surface.apollo`
