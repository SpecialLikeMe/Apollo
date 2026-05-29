# Attribute block — implementation

## Grammar surface

```antlr
attributeBlock : '#[' attribute (',' attribute)* ']' ;
attribute      : attrName (':' attrArg)? ('(' attrParams? ')')? ;
attrName       : ID ('.' ID)* ;
attrArg        : ID | INT_LIT | STRING ;
attrParams     : attrParam (',' attrParam)* ;
attrParam      : ID | INT_LIT | STRING | attrName '=' attrArg ;
```

The block may appear directly before any declaration, or at file scope terminated with `;`.

## Parse tree shape

An `AttributeBlockContext` exposes the list of `attribute()` entries. Each `AttributeContext` exposes its name, optional `attrArg`, and optional `attrParams`.

## Frontend handling

`Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Collects attribute blocks during AST construction.
2. Attaches the parsed attribute set to the immediately-following declaration (or to the file scope for the semicolon form).
3. Dispatches each attribute to its handler:
   - `gc`, `lto`, `borrow_checker`, `typeset`, `target` — built-in handlers.
   - `packed`, `c_layout`, `align` — layout handlers.
   - Unknown names — diagnostic.
4. Validates that each attribute is acceptable for the declaration kind.

## Lowering

In `Apollo-Main/compiler/cpp/src/visitor.cpp`:

- Most attributes influence lowering indirectly through frontend state changes (mode flags, layout overrides).
- Layout attributes (`packed`, `align`) directly affect the LLVM struct's packing/alignment.
- Target attributes are consumed by the build driver to control inclusion in the active target's translation set.

## Runtime support

None at the attribute level. Specific attributes may pull in runtime support (e.g., `gc:tracing` activates the tracing collector).

## Edges and gotchas

- Attribute names are case-sensitive.
- The parser permits up to a configurable nesting depth on attribute parameters; very deep nesting is rejected.
- Stacked blocks accumulate; the frontend treats them as if one combined block.
- Some attributes are stable (`gc`, `lto`), some are experimental and may change. The reference catalog tracks status.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`attributeBlock`, `attribute`, related)
- Frontend: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Build driver: `Apollo-Main/compiler/cpp/src/apollo_build_driver.cpp`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
