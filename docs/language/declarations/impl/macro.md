# Macro declaration — implementation

This page covers `extern [&macro]` and `__preprocess [&macro]` callable macros.
For the new `attr` / `derive` proc-macro surface, see `proc-macro.md` in the same directory.

## Grammar surface

From `Apollo-Main/compiler/compilerv1.g4`:

```antlr
macroDecl
    : 'macro' ID '(' macroParams? ')' '{' macroBody '}' ';'?
    ;
macroParams : macroParam (',' macroParam)* ;
macroParam  : ('expr' | 'type' | 'ident' | 'stmt' | 'block') ID ;
macroBody   : (statement | declaration)* ;
```

`macroDecl` is reachable from `program`. The body is grammar-equivalent to a function body plus declarations, but it is held as an unanalyzed template until expansion.

## Parse tree shape

A `MacroDeclContext` exposes:

- `ID()` — the macro name.
- `macroParams()` — optional parameter list.
- `macroBody()` — the body context, preserved verbatim until expansion.

Each `MacroParamContext` exposes the kind keyword (`expr`/`type`/`ident`/`stmt`/`block`) and the parameter name.

## Frontend validation (declaration site)

At declaration time, `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`:

1. Registers the macro name in the macro namespace.
2. Records the parameter list with kinds.
3. Records the body AST without type-checking it. Type checking is deferred to expansion sites because the body contains parameter splices whose meaning depends on the call-site arguments.
4. Performs lightweight checks: parameter names are unique, the body only references parameters via their declared kinds, hygiene rewrites do not collide with reserved identifiers.

## Expansion

At each call site `macro_name(arg1, arg2, ...)`:

1. The frontend parses each argument according to its parameter's kind. An `expr` argument is parsed as an expression; a `block` argument is parsed as a brace block; and so on.
2. The macro body is cloned and the parameter splices are replaced with the parsed argument ASTs.
3. Identifiers introduced *inside* the macro body (locals, labels) are renamed with a fresh suffix so they cannot collide with any identifier at the call site.
4. The expanded AST is spliced into the call site and validated as ordinary code. Any type errors point to the expanded form, with both the call site and the macro declaration referenced in the diagnostic.

## Lowering

The expanded AST flows through the standard lowering in `Apollo-Main/compiler/cpp/src/visitor.cpp`. Macros leave no trace in the lowered IR — every macro use becomes the equivalent expanded code.

## Runtime support

None. Macros are a compile-time construct.

## Edges and gotchas

- A macro that short-circuits control flow with `return`/`break`/`continue` operates in the enclosing function's scope after expansion. That is what makes patterns like `try_or_return` work.
- Macro parameters of kind `expr` are evaluated once per appearance in the expansion. If the body splices `value` twice and the caller passes a side-effecting expression, that expression runs twice. The macro author can bind the parameter to a local first to evaluate it once.
- Hygiene renames apply only to identifiers introduced by the macro body. Parameter splices preserve their original names, so passing an `ident` argument captures the caller-supplied name.
- Macros cannot recurse without bound. The expansion engine enforces a depth limit and reports a diagnostic naming the recursion point if it is exceeded.
- The grammar makes macros parse-time constructs. They cannot consult run-time values or types.

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4` (`macroDecl`, `macroParams`, `macroParam`, `macroBody`)
- Frontend validation and expansion: `Apollo-Main/compiler/cpp/src/apollo_runtime.cpp`
- Lowering of expanded forms: `Apollo-Main/compiler/cpp/src/visitor.cpp`
- Example macros: `Apollo-Main/include/assertions.apollo`
