# Template declaration — implementation

## Grammar surface

From `Apollo-Main/compiler/compilerv1.g4`:

```antlr
genericParams : '<' genericParam (',' genericParam)* '>' ;
genericParam
    : ID (':' typeRef)?           // type parameter with optional interface constraint
    | typeRef ID                  // value parameter (compile-time constant)
    ;
```

The parameter list attaches to `function`, `classDecl`, `structDecl`, `interfaceDecl`, and `memstructDecl` rules through optional `genericParams?` slots.

## Parse tree shape

A `GenericParamsContext` carries a list of `GenericParamContext` entries. Each entry has either:

- `ID()` plus an optional `typeRef()` constraint (type-parameter form), or
- A `typeRef()` plus an `ID()` (value-parameter form).

The parent declaration's context (e.g. `FunctionContext`, `ClassDeclContext`) exposes `genericParams()` for the optional list.

## Frontend validation

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp` validates generic parameters by:

1. Registering each type parameter in a per-declaration scope. References to the parameter name inside the body resolve to the parameter.
2. For constrained type parameters, recording the constraint interface so body validation can resolve interface methods called through a parameter-typed value.
3. For value parameters, validating that the declared type is a compile-time-constant-capable type (integer types primarily) and recording the parameter as an immutable compile-time binding.
4. Deferring full body validation until each instantiation arrives.

## Instantiation

Instantiation happens at the use site:

1. The frontend records the concrete argument list.
2. A specialized AST is materialized with the type parameters replaced by the concrete arguments and value parameters replaced by their constant values.
3. The specialized AST is validated as if it were a non-generic declaration. Errors at this stage refer to the use site that triggered the instantiation.
4. The specialized declaration is cached by `(declaration name, argument tuple)`. Subsequent uses with the same arguments reuse the cached instantiation.

Constraint checking is performed once per instantiation. If a constraint fails — e.g. the argument type does not satisfy the named interface — the diagnostic points at the use site and lists the failing interface methods.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

1. Each instantiation lowers as if it were a hand-written non-generic declaration with the parameters baked in.
2. The lowered symbol name encodes both the declaration name and the argument tuple, so different instantiations produce distinct symbols.
3. Code is monomorphized: no shared runtime polymorphism, no boxing, no per-call type tags. Each specialization is its own concrete code.
4. Value parameters fold into the lowered IR as compile-time constants; downstream optimization passes typically remove all trace of the parameter.

## Runtime support

None. Templates are entirely a compile-time construct. The lowered IR contains only concrete instantiations.

## Edges and gotchas

- The frontend does not attempt to infer type arguments from constructor or call arguments today. Argument lists must be explicit at the use site.
- Constraint satisfaction is checked structurally — the argument type must have public methods matching the constraint interface's signatures.
- Value parameters must be compile-time constants. Runtime expressions are rejected even if their value is known to the programmer.
- Two instantiations are considered the same if and only if their argument tuples are equal (type identity plus value equality). Two different type expressions that happen to denote the same lowered type are still recognized as equal because identity is canonicalized before comparison.
- Errors inside an instantiation are reported at the use site, not at the template declaration. If the body uses a type-parameter method that the constraint does not declare, validation fails at the call.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`genericParams`, `genericParam`)
- Frontend validation and instantiation: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
