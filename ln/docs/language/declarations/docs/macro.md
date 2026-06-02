# Macro declaration

## What exists today

Apollo currently accepts qualified macro declarations with one of these prefixes:

```apollo
extern [&macro] name(params) {
    ...
}

__preprocess [&macro] name(params) {
    ...
}

extern [&dynamic_macro] name(params) {
    ...
}

__preprocess [&dynamic_macro] name(params) {
    ...
}
```

This is the grammar-backed surface in `Apollo-Main/compiler/compilerv1.g4`. The parameter list uses the ordinary Apollo parameter syntax. The old `macro dbg(expr value) { ... }` surface with `expr`/`type`/`ident` splice kinds is not the current language.

## How to use it

These declarations are invoked with ordinary call syntax:

```apollo
extern [&macro] announce(str message) {
    sys.println(message);
}

int main() {
    announce("hello");
    return 0;
}
```

The grammar tests also cover `__preprocess [&macro]`:

```apollo
__preprocess [&macro] check(u32 value) {
    assert(value > 0);
}
```

## What not to assume

Do not assume the following features exist for this surface today:

- Hygienic AST splicing.
- Parameter kinds like `expr`, `type`, `ident`, `stmt`, or `block`.
- A separate call form distinct from an ordinary function call.
- General compile-time code generation from the callable macro surface.

Those claims appeared in older docs, but they do not match the current grammar or implementation.

## Dynamic macros

`[&dynamic_macro]` is a distinct qualifier accepted by the grammar. The current runtime marks these declarations for runtime extension support.

Example:

```apollo
#[macro_mode(runtime)]

stdef opstruct Packet {
    str name;
    i32 size;
}

extern [&dynamic_macro] log_packet(Packet packet) {
    sys.println(packet.name);
}
```

This surface is covered by the runtime grammar tests. If you are not using runtime macro extensions, prefer plain `[&macro]` forms.

## Proc macros are separate

Apollo also has a separate preprocessor-backed proc-macro surface:

```apollo
attr vector<token> addhelper(vector<token> __tokenstream, nrc what) {
    nconst vector<token> output = __tokenstream;
    output.insert(0, quote {
        void generated_helper() {
            sys.println(what);
            return;
        }
    });
    return output;
}
```

Applied with:

```apollo
#idio addhelper("before")
```

Use that proc-macro surface when you need tokenstream rewriting. See `docs/language/declarations/impl/proc-macro.md` for the currently supported operations.

## Source of truth

- `Apollo-Main/compiler/compilerv1.g4`
- `Apollo-Main/compiler/tests/grammar/pass/language_surface.apollo`
- `Apollo-Main/compiler/tests/grammar/pass/syntax_surface.apollo`
- `Apollo-Main/compiler/tests/grammar/pass/opstruct_runtime_surface.apollo`
- `Apollo-Main/compiler/cpp/src/apollo_source_preprocessor.cpp`
