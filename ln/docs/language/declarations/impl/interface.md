# Interface declaration — implementation

## Grammar surface

From `Apollo-Main/compiler/compilerv1.g4`:

```antlr
interfaceDecl  : 'itr' ID inheritanceClause? attributeBlock? '{' virtualMethod* '}' ;
inheritanceClause : '*' inheritedType (';' inheritedType)* ;
virtualMethod  : VIRTUAL returnType ID '(' params? ')' ';' ;
```

The active parser keyword is `itr`. Older prose that documents an `interface` keyword or a separate `interfaceMember` rule is stale.

## Parse tree shape

An `InterfaceDeclContext` exposes:

- `ID()` — the interface name.
- `inheritanceClause()` — optional inherited type list.
- `attributeBlock()` — optional attached attributes.
- `virtualMethod()` — zero or more virtual method signatures.

Each interface member is parsed with the shared `virtualMethod` rule.

## Frontend handling

The current source-backed anchors for this surface are:

- `Apollo-Main/compiler/compilerv1.g4` — accepted syntax.
- `Apollo-Main/compiler/tests/grammar/pass/language_surface.apollo` — passing interface/class syntax example.
- `Apollo-Main/compiler/cpp/src/apollo_driver.cpp` — AST summarization of `InterfaceDeclContext`.
- `Apollo-Main/compiler/cpp/src/hir/lowering.cpp` — lowering entry that visits `InterfaceDeclContext`.

Classes attach an interface through `inheritanceClause`, for example `class Animal * public Speaker { ... }`, and the interface body itself is restricted to virtual method declarations.

## Lowering

The verified lowering surface today is:

1. `itr` declarations survive parsing as `InterfaceDeclContext` nodes.
2. Implementing classes reference those interface types through the inheritance clause.
3. Interface members are recorded as virtual method signatures rather than standalone declaration nodes.

The older documentation's exact vtable narrative was written against a previous surface and should not be treated as the primary source of truth until the current lowering path is fully re-audited.

## Runtime support

There is no special runtime syntax in the declaration itself. Any dispatch/runtime behavior comes from the native compiler pipeline after parsing and lowering.

## Edges and gotchas

- The keyword is `itr`, not `interface`.
- Interface members must use the `virtual` signature form.
- Apollo uses inline modifiers like `public virtual void speak();`, not C++ access sections like `public:`.
- Interfaces and classes both reuse `inheritanceClause`, so multiple inherited types are separated with `;` after `*`.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`interfaceDecl`, `inheritanceClause`, `virtualMethod`)
- Passing syntax sample: `Apollo-Main/compiler/tests/grammar/pass/language_surface.apollo`
- AST display: `Apollo-Main/compiler/cpp/src/apollo_driver.cpp`
- Lowering entry: `Apollo-Main/compiler/cpp/src/hir/lowering.cpp`