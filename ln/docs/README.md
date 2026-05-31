# Apollo documentation

This is the hand-written reference for the Apollo language and its standard library.

## How this tree is organized

The tree mirrors the language by category. Each leaf category has two folders:

- `docs/` is the user-facing reference. Each file explains one accepted syntax slice or one stdlib module, in plain language, with five or more working examples.
- `impl/` is the under-the-hood companion. Each file walks through how that same slice is parsed, validated, lowered, and (when relevant) executed at runtime, with references to the actual source files in `Apollo-Main/`.

If a docs file exists, the matching impl file also exists with the same name.

## Layout

```text
docs/
├── language/
│   ├── imports/              extern std and extern package surfaces
│   ├── declarations/         functions, methods, classes, structs, templates, enums
│   ├── types/                type references, generics, function types
│   ├── memory-and-storage/   bindings, mutability, borrow, allocation
│   ├── control-flow/         if, while, for, switch, try
│   ├── functions-and-interop/lambdas, closures, async, inline foreign
│   ├── expressions/          operators, literals, calls, member access
│   ├── directives/           #[gc(...)], #[borrow_checker(...)], settings
│   └── lexical/              tokens, comments, whitespace
└── stdlib/
    ├── foundations/          core, math, bits, result, assertions, allocators
    ├── io/                   io
    ├── data/                 buffer, collections, ranges, hash, json
    ├── text/                 strings, encoding, regex
    ├── concurrency/          sync, task, thread
    ├── system/               fs, process, portability, random, time
    └── network/              net
```

## How to read a docs file

Every docs file follows the same structure so you can scan them quickly:

1. **What it is** — one or two sentences.
2. **When you use it** — concrete situations.
3. **Syntax** — the accepted shapes in plain form.
4. **Semantics** — what the program actually does, including ownership, mutability, evaluation order, and error behavior.
5. **Examples** — at least five complete, compilable Apollo snippets, each with commentary.
6. **Common mistakes** — what the compiler rejects and why.
7. **See also** — sibling syntax that pairs with this one.

## How to read an impl file

Every impl file follows a parallel structure:

1. **Grammar surface** — the rule from `Apollo-Main/compiler/compilerv1.g4` and what tokens it produces.
2. **Parse tree shape** — what the surrounding tree looks like after parsing.
3. **Frontend validation** — the checks `apollo_runtime.cpp` enforces before lowering touches the node.
4. **Lowering** — what `visitor.cpp` and friends turn the node into.
5. **Runtime support** — when the lowered code needs help from `runtime_support/` or the build driver.
6. **Edges and gotchas** — non-obvious behavior, special cases, and historical reasons for the current shape.

## Status

This documentation is being filled in by hand. Surfaces with completed pages are listed in their category README. Surfaces without a page yet are still parsed and lowered by the compiler — they just do not have prose yet.

## Contributing a page

When you add a page, keep these rules:

- Use real Apollo. Every example must compile against the current grammar.
- Examples should look like code people actually write, not minimal token soup.
- When a feature interacts with mutability, ownership, or the borrow checker, say so explicitly — those are the rules most often misunderstood.
- Pair every docs file with an impl file, even if the impl file is short.
- Reference source files using workspace-relative paths so the docs survive across machines.
