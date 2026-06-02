# How to code Apollo:

### The basics

Apollo is explicitly typed. Everything must have a type or an inference marker like ato.

Apollo uses braces and semicolons in almost every single case. The only whitespace sensitive Apollo features are closures, but those are more advanced then what is to be covered right now.

The main Apollo types are:

Integers:

int
i8/u8
i16/u16
i32/u32
i64/u64

Functions are declared by stating a return type, name, and params followed by a code block.

Here is an example to showcase such:

int three(int num) {
    return num + 3;
}

Some other types are:

char for a character,
str for a string of chars,
vector<TYPE> for an array,
ato for automatic type inference.

All variables in Apollo are immutable unless explicity declared with a mutability modifier.
The syntax for mutability is [nconst|stt|nst] TYPE name (nconst is a deprecated legacy keyword, but will still compile).

eg.

nst int x = 0;

Apollo is a borrow checked language.

Examples live under `Apollo-Main/examples/`.
`readonly_alias.apollo` shows the new read-only reference rules: the alias is read-only and exclusive while live, but the root becomes writable again after the alias's last use.
`mutable_reborrow.apollo` shows mutable reborrow chaining through helper calls.

### Running a program

Use `apollo run` from the project directory you want Apollo to treat as the root.

- `apollo run` looks for `main.apollo` in the current working directory.
- `apollo run path\to\entry.apollo` uses the path you pass, but still treats the current working directory as the project root for build output and bundled sources.
- The launcher writes bundled sources under `build/.apollo-bundles/` and the produced executable under `build/`, then runs that executable from the same working directory.
- Add `--notree` to suppress AST streaming while keeping the same compile-and-run behavior.

Examples:

- `apollo run`
- `apollo run src\main.apollo`
- `apollo run --notree`