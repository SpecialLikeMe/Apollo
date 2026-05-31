# Interface declaration — implementation

## Grammar surface

From `Apollo-Main/compiler/compilerv1.g4`:

```antlr
interfaceDecl
    : 'interface' ID genericParams? '{' interfaceMember* '}' ';'?
    ;
interfaceMember : returnType ID '(' params? ')' ';' ;
```

Interface bodies hold only method signatures. Fields, access sections, and method bodies are not part of the grammar at this position.

## Parse tree shape

An `InterfaceDeclContext` exposes:

- `ID()` — the interface name.
- `genericParams()` — optional generic parameters.
- `interfaceMember()` as a list — one per method signature.

Each `InterfaceMemberContext` carries `returnType()`, `ID()`, and `params()`.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp` validates an interface by:

1. Registering the interface name as a new type. Interface values may appear only as references; the frontend rejects bare interface-typed bindings.
2. Validating each method signature's parameter and return types.
3. Building the interface's method table: an ordered list of `(name, parameter types, return type)` triples. The order is the source-declaration order and determines vtable slot indices.
4. When another class is being validated, checking it against any interface its borrows are coerced to. A class satisfies an interface when, for every signature in the interface, the class has a public method with the same name and exactly matching signature.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

1. The interface lowers to a two-pointer structure: `{ instance, vtable }`. The instance pointer is the underlying class instance; the vtable pointer is a static array of function pointers in the same slot order as the interface's method table.
2. For each class satisfying the interface, the lowering pass emits a static vtable initialized with pointers to the class's matching methods.
3. A borrow expression `&nconst classInstance` coerced to an interface reference lowers to a two-pointer literal: `{ &classInstance, &VTable_for_ClassName_in_InterfaceName }`.
4. A method call through the interface reference lowers to: load the function pointer from the vtable slot, then call it with the instance pointer prepended to the source-level arguments.

## Runtime support

Vtables are static data. Dispatch is a single indirect call per method invocation. The runtime objects under `Apollo-Main/compiler/runtime_support/` provide a few helpers for diagnostics (printing the concrete class name behind an interface reference, for example) but the dispatch itself needs no runtime help.

## Edges and gotchas

- The grammar does not allow default method implementations. Every method must be implemented by every satisfying class.
- Interface satisfaction is structural-at-coercion-time, not declared up-front. A class does not list which interfaces it satisfies; the compiler checks satisfaction whenever a borrow of the class is coerced to an interface reference.
- Two interfaces with identical method tables are distinct types. Coercing a borrow of a satisfying class to either is fine, but the two interface references are not interchangeable.
- Generic interfaces are instantiated per type-argument tuple, the same way generic classes are. Each instantiation produces a distinct interface type with its own vtables.
- An interface method whose signature includes the interface type itself (e.g. `Comparator<T>& clone();`) is allowed and uses the same vtable pointer mechanism for the return value.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`interfaceDecl`, `interfaceMember`)
- Frontend validation: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
- Dispatch runtime: `Apollo-Main/compiler/runtime_support/`
