# Class declaration — implementation

## Grammar surface

From `Apollo-Main/compiler/compilerv1.g4`:

```antlr
classDecl
    : 'class' ID genericParams? attributeBlock? '{' classBody '}' ';'?
    ;
classBody : (accessSection | memberDecl)* ;
accessSection : ('public' | 'private' | 'protected') ':' ;
memberDecl : fieldDecl | methodDecl ;
fieldDecl : mutability? typeRef ID ('=' expression)? ';' ;
methodDecl
    : (STATIC | VIRTUAL)? returnType ID '(' params? ')' attributeBlock? block
    ;
```

The trailing semicolon on the class declaration is optional. Both `class Foo { ... };` and `class Foo { ... }` are accepted.

## Parse tree shape

A `ClassDeclContext` exposes:

- `ID()` — the class name.
- `genericParams()` — optional generic parameter list.
- `attributeBlock()` — optional `.att { ... }` metadata.
- `classBody()` — the body, holding alternating access sections and member declarations.

Each `MemberDeclContext` resolves to either a `FieldDeclContext` or a `MethodDeclContext`. The frontend walks the body in source order, tracking the current visibility as it goes.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp` validates a class by:

1. Registering the class name as a new type in the current scope. Duplicate names are rejected.
2. Walking the body in two passes. The first pass collects all field declarations to build the instance layout; the second pass validates method bodies, which may reference fields and other methods.
3. Synthesizing an implicit constructor whose parameter list is the sequence of fields without `=` initializers, in declaration order. Fields with initializers are filled from the initializer expression when the constructor argument is omitted.
4. For each method, building the method's frame with an implicit `self` parameter (omitted for `static` methods). The receiver's mutability is inferred from how the body uses field access — methods that assign to a field through `self` are tagged as mutating-receiver.
5. Recording access modifiers per member for downstream visibility checks.
6. Validating attribute entries.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

1. The class lowers to an LLVM `StructType` with one element per field, in declaration order.
2. The synthesized constructor lowers to a function that allocates a stack slot, runs each field's initializer (constructor argument or default), and returns the populated aggregate.
3. Each non-static method lowers to a function whose first parameter is a pointer to the class struct, followed by the source-level parameters. Source-level `self.field` lowers to a `getelementptr` on the receiver pointer.
4. Static methods lower as plain functions with no receiver parameter.
5. Method dispatch is direct (non-virtual) by default. Methods marked `virtual` go through a vtable when the call is made through an interface or a base reference; direct calls remain devirtualized.

## Runtime support

Plain class instances need no runtime support beyond the standard allocator surface used by `new` / `plcnew`. Virtual dispatch through an interface borrow uses the interface's vtable layout, generated in lockstep with each implementing class. The runtime objects under `Apollo-Main/compiler/runtime_support/` provide the dispatch helpers.

## Edges and gotchas

- The trailing semicolon after the closing brace is grammatical syntactic sugar; it eases C++ habits but is not required.
- The default visibility before the first access section is `private`. Programs that rely on the default should still write `private:` explicitly for clarity.
- The frontend rejects forward references to fields from within initializer expressions of earlier fields. Field initializers are evaluated in declaration order during construction.
- Generic classes are instantiated per type-argument set. Two `Box<int>` instances share the same lowered struct; `Box<int>` and `Box<str>` produce distinct lowered types.
- Methods that capture `self` into a closure capture the receiver pointer, not a copy of the class. Holding such a closure beyond the receiver's lifetime is rejected by the borrow checker.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`classDecl`, `classBody`, `accessSection`, `memberDecl`, `fieldDecl`, `methodDecl`)
- Frontend validation: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
- Runtime / dispatch: `Apollo-Main/compiler/runtime_support/`
