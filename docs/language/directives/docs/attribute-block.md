# Attribute block

## What it is

The `#[...]` attribute block is Apollo's general syntax for attaching metadata or directives to declarations. It is how `#[gc]`, `#[lto]`, `#[typeset]`, `#[borrow_checker]`, target attributes, layout hints, and many other markers are written.

An attribute block precedes a declaration and attaches one or more attributes to it. Each attribute consists of a name and optional parenthesized arguments.

## When you use it

You use an attribute block whenever you want to:

- Apply a directive to a declaration (`#[gc:tracing]`, `#[lto:full]`).
- Hint at memory layout (`#[packed]`, `#[c_layout]`).
- Mark a function for a specific target (`#[target:linux]`).
- Apply a custom attribute recognized by a tool or the build driver.

## Syntax

```
attributeBlock : '#[' attribute (',' attribute)* ']' ;
attribute      : attrName (':' attrArg)? ('(' attrParams? ')')? ;
attrName       : ID ('.' ID)* ;
attrArg        : ID | INT_LIT | STRING ;
attrParams     : attrParam (',' attrParam)* ;
attrParam      : ID | INT_LIT | STRING | attrName '=' attrArg ;
```

Multiple attributes can be combined inside one block, comma-separated. Multiple attribute blocks can stack before a declaration.

## Semantics

Attribute names are namespaced — `gc`, `lto`, `target`, `typeset`, `packed`, `c_layout`, `borrow_checker`, etc. The compiler recognizes a known set of attributes and dispatches to the appropriate handler. Unknown attribute names produce a diagnostic by default; tools can register additional names.

Attribute application:

- The attribute attaches to the immediately-following declaration.
- A file-scope attribute block (followed by `;`) applies to the entire file.
- Some attributes are only valid on specific declaration kinds (e.g. `packed` only on memstructs).

## Examples

### Single attribute

```apollo
#[lto:thin]
int hot_path(int a, int b) {
    return a + b;
}
```

The `lto:thin` attribute attaches to `hot_path`.

### Multiple attributes in one block

```apollo
#[lto:full, gc:tracing]
class Cached {
    public:
    const i32 id;
};
```

Both attributes attach to the class.

### Stacked attribute blocks

```apollo
#[gc:rc]
#[lto:thin]
class Node {
    public:
    const i32 value;
    nconst Node* next;
};
```

Stacked blocks attach all listed attributes.

### Layout attributes on a memstruct

```apollo
memstruct sockaddr_in #[packed, c_layout] {
    u16 sin_family;
    u16 sin_port;
    u32 sin_addr;
    u8  sin_zero[8];
};
```

Layout attributes appear inline on the memstruct declaration.

### Target attribute

```apollo
#[target:linux]
int linux_specific() {
    return 1;
}

#[target:macos]
int macos_specific() {
    return 1;
}
```

The function is included in the build only on the targeted platform.

### File-scope attribute

```apollo
#[gc:tracing];

class A { public: const i32 v; nconst A* friend; };
class B { public: const i32 v; nconst A* mate; };

int main() {
    nconst A* a = plcnew A(1, null);
    nconst B* b = plcnew B(2, a);
    sys.println(a.v);
    sys.println(b.v);
    return 0;
}
```

The semicolon-terminated form at file scope applies to all subsequent declarations.

### Attribute with key=value parameters

```apollo
#[align(16)]
memstruct AlignedBuffer {
    u8 data[256];
};
```

The `align` attribute takes a parameter; here it sets minimum alignment to 16 bytes.

## Common mistakes

- **Misspelling an attribute name.** Produces a diagnostic. Check the reference.
- **Attaching an attribute to an inappropriate declaration.** `#[packed]` on a function is rejected.
- **Forgetting the semicolon on file-scope attributes.** `#[gc:tracing] class A { ... };` attaches to `A`; `#[gc:tracing];` is the file-scope form.
- **Confusing `#[...]` with `nativemode;`.** `nativemode` is its own top-level directive, not an attribute. The two use different grammar.
- **Stacking conflicting attributes.** `#[gc:tracing, gc:rc]` is rejected — only one GC mode per declaration.

## See also

- `docs/language/directives/docs/gc-directive.md`, `lto-directive.md`, `typeset-directive.md`, `borrow-checker-directive.md`, `nativemode-directive.md` — specific attribute forms.
- `docs/language/declarations/docs/memstruct.md` — layout attributes.
- `docs/language/declarations/docs/function.md` — target attributes.
- `Apollo-Main/compiler/cpp/src/apollo_build_driver.cpp` — driver-side attribute handlers.
