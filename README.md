# Apollo Language Guide

This document describes the Apollo language surface currently implemented in this repository.

Apollo is a compiled systems language with:

- C-style braces and semicolons
- static typing
- a direct Apollo-to-LLVM IR lowering pipeline
- ownership and borrow-analysis features
- optional whole-program GC mode
- native C++ interop surfaces
- experimental DSL surfaces such as `typedef opstruct` and `schedule`

This guide is language-focused. Compiler pipeline notes and backend details still live under `Apollo-Main/compiler/readme.md`. 

!Note that in some versions, the other readme may be gone.

## Quick Start

Hello world:

```apollo
extern iostream;

int main() {
    sys.println("Hello, world");
    return 0;
}
```

Common commands:

```powershell
apollo ctall hello.apollo
apollo hello.apollo -W dist\hello.exe
apollo hello.apollo -L dist/hello
apollo hello.apollo -M dist/hello
apollo -analyze hello.apollo
```

`ctall` compiles and runs immediately. `-W`, `-L`, and `-M` produce standalone binaries for Windows, Linux, and macOS targets respectively. `-analyze` builds with AddressSanitizer instrumentation.

## Core Syntax

Apollo uses braces for blocks and semicolons for statements.

```apollo
int main() {
    i32 value = 4;
    if (value > 0) {
        sys.println(value);
    }
    return 0;
}
```

Observed syntax rules in the current implementation:

- Blocks use `{ ... }`.
- Statements end with `;`.
- `return;` is valid in `void` contexts.
- Casts use C-style syntax such as `(i32)local`.

## Entry Point

The program entry point is a function named `main`.

```apollo
int main() {
    return 0;
}
```

Apollo examples in this repository use both `int` and `i32` as integer spellings.

## Imports And Native Interop

Apollo supports import-like `extern` declarations for native headers, packages, and helper surfaces.

Header-style imports:

```apollo
extern iostream;
extern vector;
extern "array";
```

Extern helper body:

```apollo
extern [&macro] announce(str message) {
    sys.println(message);
}
```

Native C++ header injection is also supported inside bypass/native blocks:

```apollo
std -hres {
    #include <memory>
}
```

Apollo resolves `extern {package.name}` style imports relative to the entry `.apollo` file directory.

## Built-In Types And Aliases

Common surface types used throughout the repo:

- `int`, `i32` for integers
- `f64` for 64-bit floating point values
- `str` for strings
- `void` for no return value
- `auto` for inferred local bindings in some surfaces

Reference and pointer forms are also supported:

```apollo
str& keep(str& value) {
    return value;
}

@unsafe {
    Dog* dogPtr _&direct;
    dogPtr.speak();
}
```

## Variables And Binding Qualifiers

Basic declarations are typed.

```apollo
i32 counter = 1;
str name = "apollo";
```

Immutable bindings use `const`.

```apollo
const i32 answer = 42;
const int& alias = value;
```

Newer fixtures also use `nconst` to mark non-const bindings explicitly:

```apollo
nconst i32 local = plusOne(globalCounter);
nconst vector<str> names;
```

Current repo state note: the project still has open work around const-default semantics, so use the syntax already exercised by the grammar fixtures when adding new code.

## Globals

Apollo supports top-level globals.

```apollo
global i32 globalCounter = 1;
i32 plainGlobal = 2;
```

There is also a codegen/global-bridge attribute surface for shared/native-facing declarations:

```apollo
@cmglobal struct SharedState.att{packed} {
    i32 mask;
}
```

## Functions

Functions are declared with a return type, name, parameter list, and block body.

```apollo
i32 plusOne(nconst i32 value) {
    if (value < 10) {
        value = value + 1;
    } else {
        value = value - 1;
    }
    return value;
}

void ping() {
    return;
}
```

Attributes can be attached after the signature using `.att{...}`:

```apollo
i32 decorate(i32 value).att{aligned(16)} {
    i32 shifted = value << 1;
    i32 mixed = shifted | 3;
    i32 toggled = mixed ^ 2;
    return toggled & 7;
}
```

## Expressions And Operators

The implemented language surface includes:

- arithmetic operators such as `+`, `-`, `*`
- comparisons such as `<`
- assignment with `=`
- member access with `.`
- indexing with `[]`
- bitwise operators such as `<<`, `|`, `^`, `&`
- function and method calls

Example:

```apollo
i32 shifted = value << 1;
i32 mixed = shifted | 3;
i32 toggled = mixed ^ 2;
return toggled & 7;
```

## Control Flow

Standard structured control flow is supported.

```apollo
if (value < 10) {
    value = value + 1;
} else {
    value = value - 1;
}

while (local < 3) {
    local = local + 1;
}
```

Nested scopes are ordinary brace blocks:

```apollo
{
    i32 scoped = local;
    sys.println(scoped);
}
```

## Standard Console I/O

The repo examples use the `sys` namespace for common console operations.

```apollo
sys.println("hello");
sys.stdout(scores["dog"]);

nconst str input;
sys.stdin(input);
```

`sys.stdin()` also participates in newer expression-capture surfaces inside `typedef opstruct` commands.

## Lambdas And Function Types

Apollo supports inline lambdas with `lmd->`.

Anonymous lambda:

```apollo
fn<i32(i32, i32)> add = lmd-> (i32 left, i32 right) {
    return left + right;
}
```

Explicit return type with an internal name:

```apollo
fn<i32(i32)> promote = lmd-> i32 named(i32 input) {
    return input;
}
```

Function-typed values use `fn<returnType(paramTypes...)>`.

## Containers

The currently exercised container surfaces include vectors and hash maps.

```apollo
nconst vector<str> names;
names[apnd] = templ;

nconst hsh<str, i32> scores;
scores["dog"] = promoted;
```

Nested containers are supported:

```apollo
nconst hsh<hsh<i32, str>, hsh<str, i32>> nested;
nested[<23, "hello">] = <"world", 9>;
sys.println(nested[<23, "hello">]["world"]);
```

Container notes based on implemented fixtures:

- `name[key]` works for lookup and assignment.
- `name[apnd] = value;` appends to a vector.
- Composite literals such as `<"world", 9>` are typed from context.
- Composite keys also work when the key type is itself a container or structured value.

## Templates

Apollo supports generic templates.

```apollo
template Box(T) {
    public T fetch(T value) {
        return value;
    }
}

nconst Box<int> box;
box.fetch(4);
```

The grammar also supports multi-parameter template declarations like `template Name(T, U) { ... }`.

## Structs

Structs support fields and methods.

```apollo
struct Pair {
    public i32 left;
    public i32 right;

    public i32 sum() {
        return left + right;
    }
}

Pair point = Pair{};
point.sum();
```

Struct-level attributes are supported:

```apollo
@cmglobal struct SharedState.att{packed} {
    i32 mask;
}
```

## Interfaces, Classes, And Inheritance

Interfaces use `itr` and declare virtual members.

```apollo
itr Speaker {
    virtual void speak();
}

itr Walker {
    virtual void walk();
}
```

Classes support inheritance, virtual methods, overrides, fields, and static methods.

```apollo
class Animal * public Speaker; public Walker {
    public i32 value;

    public virtual void speak() {
        sys.println("animal");
        return;
    }

    public virtual void walk() {
        sys.println("walk");
        return;
    }
}

class Dog * public Animal {
    public static void tag() {
        sys.println("dog-tag");
        return;
    }

    @Override
    public void speak() {
        sys.println("dog");
        return;
    }
}
```

Inheritance syntax uses `*` followed by one or more `public` parents separated by semicolons.

## Instances

Apollo has dedicated instance surfaces used heavily by class/object codegen.

Populate after declaration:

```apollo
crt instance pack;
pack.push(Dog{});
pack.speak();
```

Direct instance initialization:

```apollo
staticx instance direct = Dog{};
direct.speak();
Dog.tag();
```

## Ownership, Borrowing, And Safety

Apollo includes ownership-oriented runtime phases and safety checks.

Important current behavior:

- passing a non-copy value by value can move it at the call site
- mutable references require exclusive borrowable bindings
- reference-returning helpers can propagate the lifetime of reference parameters
- local reference aliases use a last-use style rule in the current analyzer

Example reference-returning helper:

```apollo
str& keep(str& value) {
    return value;
}

str borrowed = keep(templ);
announce(borrowed);
```

Owner-scope helpers:

```apollo
@autofmtdeclare {
    @induct resource;
    @release resource;
}
```

Current repo behavior for these surfaces:

- `@autofmtdeclare { ... }` creates an owner-managed scope scaffold
- `@induct name;` moves an eligible binding into the owner scope
- `@release name;` releases it back out
- returning an inducted binding without release is rejected
- using an inducted binding after the owner scope exits unreleased is rejected

## Unsafe And Bypass Blocks

Apollo distinguishes between two escape hatches.

`@unsafe { ... }` keeps Apollo ownership rules for safe bindings but allows low-level/native operations in a controlled region.

```apollo
@unsafe {
    Dog* dogPtr _&direct;
    dogPtr.speak();
}
```

`@bypass { ... }` is the full escape hatch and suppresses Apollo borrow/ownership analysis inside the block.

```apollo
@bypass {
    void* heap.alc(2) int;
    i32* alias _&base;
    * slot = i32[] *;
    crt null slot;
    std -hres {
        #include <memory>
    }
    void heap;
}
```

Use `@bypass` sparingly. It is intended for manual memory work and native interop that cannot be represented in the checked surface.

## Directives

Top-level compiler/runtime directives use attribute syntax:

```apollo
#[setting(scheduler, eevf)]
#[gcmode(total)]
#[borrow_check(none)]
```

Alias forms currently supported in the repo:

- `#[gc(total)]` and `#[gcmode(total)]`
- `#[borrow_checker(off)]` and `#[borrow_check(none)]`

Behavior:

- whole-program GC mode injects Boehm GC support and routes managed heap surfaces through the GC runtime
- borrow-checker-off mode disables ownership/borrow phases while still keeping unsafe-boundary checks in place
- scheduler settings influence the scheduler DSL/runtime backend

## Whole-Program GC Surface

In total-GC mode, Apollo can route low-level heap surfaces through the GC runtime.

```apollo
#[gcmode(total)]

int main() {
    %void* raw.alc(i32);
    %mnt i32 value = 4;
    %void value;
    %void raw;
    return 0;
}
```

Current implementation behavior includes:

- adding GC headers so `main` emits `GC_INIT();`
- rerouting certain percent-prefixed allocation forms through `GC_MALLOC(...)`
- lowering manual free/delete on those GC-managed bindings to no-ops
- lifting ordinary non-primitive managed declarations and selected globals onto the managed-handle runtime

## Raw Memory Surface

Apollo exposes raw-memory syntax for low-level work.

Examples seen in the grammar fixtures:

```apollo
void* heap.alc(2) int;
%void* raw.alc(i32);
%mnt i32 value = 4;
%void value;
```

These forms are tightly coupled to the compiler runtime and safety phases. Prefer ordinary Apollo values unless you explicitly need unmanaged or GC-directed storage behavior.

## Typedef Opstruct DSL

Apollo includes an experimental `typedef opstruct` DSL surface.

Example:

```apollo
typedef opstruct run {
    asg("eval new ${name}") -> {
    }
    src("${name} do ${CODE}") -> {
        CODE
    }
}

int main() {
    str i = `sys.stdout("Hello, world!");`;
    eval new memem;
    memem do [i];
    return 0;
}
```

Implemented surfaces include:

- block-bodied `typedef opstruct Name { ... }`
- command definitions such as `asg("...") -> { ... }` and `src("...") -> { ... }`
- phrase sessions that create a named DSL instance and then accept commands
- capture blocks such as `[expr]`
- runtime Apollo-source payload execution for `src(...)`

Important note: the old public `.inf` surface has been removed. Generated typedef-opstruct state is internal now.

## Scheduler DSL

Apollo also includes a scheduler DSL.

Example:

```apollo
schedule Pipeline {
    mandatory heartbeat {
        sys.println("tick");
    }
}

Pipeline.new(runner).detatch();
runner.ins(heartbeat, 5) {
    sys.println("run");
}
runner.schvoid();
```

Implemented scheduler operations include:

- `schedule Name { ... }` declarations
- `mandatory taskName { ... }` task registration
- `Name.new(instance).detatch();`
- `instance.ins(taskName, weight) { ... }`
- `instance.schvoid();`

The current runtime uses a weighted queue and runs mandatory tasks when the schedule instance starts.

## Attributes And Extended Surface Syntax

The newer grammar surfaces include attribute and setting forms such as:

```apollo
#[setting(scheduler, eevf)]

@cmglobal struct SharedState.att{packed} {
    i32 mask;
}

i32 decorate(i32 value).att{aligned(16)} {
    return value;
}
```

This is the preferred syntax when attaching codegen-facing metadata to declarations.

## Current Best Practices

- Follow the syntax already used in `Apollo-Main/compiler/tests/grammar/pass` when trying a new surface.
- Use safe Apollo bindings first; reserve `@unsafe` and especially `@bypass` for edges.
- Prefer normal declarations and containers over raw heap forms unless you need explicit runtime behavior.
- When using advanced surfaces such as `typedef opstruct` or `schedule`, start from an existing passing fixture and adapt it.
- If you enable whole-program GC, keep your examples aligned with the GC-specific grammar fixtures.

## Known Scope Of This Guide

This file documents the language surface that is exercised by the repository today. Some semantics are still evolving, especially around const-default behavior and more aggressive lowering/optimization work. If a construct is critical, verify it against the grammar fixtures under `Apollo-Main/compiler/tests/grammar/pass` and the safety fixtures under `Apollo-Main/compiler/tests/safety`.