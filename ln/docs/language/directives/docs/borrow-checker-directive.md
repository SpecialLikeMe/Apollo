# Borrow checker directive

## What it is

The `borrow_checker` directive lets a program tune or disable Apollo's borrow-checking pass for a region. The default is strict checking; the directive can relax to advisory, disable entirely, or — useful during refactors — escalate specific warnings to errors.

This is meant for unusual situations: bridging to GC-managed code, debugging false positives, or temporarily quieting the checker during a migration. Most programs leave it alone.

## When you use it

- Disabling borrow checks for a single function that does unusual things with pointers.
- Marking a file as advisory while modeling work proceeds.
- Promoting a specific diagnostic from warning to error for an audit.
- Bridging an FFI-heavy module where borrow tracking would be unsound anyway.

## Syntax

```
borrowDirective
    : '#[borrow_checker' '(' borrowFlag (',' borrowFlag)* ')' ']'
    ;
borrowFlag
    : 'strict' | 'advisory' | 'off'
    | 'promote' '(' ID (',' ID)* ')'
    | 'demote' '(' ID (',' ID)* ')'
    ;
```

The directive may appear at file scope or on a function declaration.

## Semantics

`strict`: all borrow rules enforced as errors (default).

`advisory`: borrow violations become warnings; compilation continues.

`off`: borrow checking is skipped entirely for the targeted scope.

`promote(name, ...)`: listed warning categories become errors.

`demote(name, ...)`: listed error categories become warnings.

The directive on a function overrides the file-scope directive for that function. Nested directives are not allowed.

## Examples

### File-scope strict (explicit default)

```apollo
#[borrow_checker(strict)];

int main() {
    nconst int x = 7;
    nconst int& ref = &x;
    sys.println(*ref);
    return 0;
}
```

Explicit strict mode — same as the default but documented.

### Advisory at file scope during refactor

```apollo
#[borrow_checker(advisory)];

void experimental(nconst int& a, nconst int& b) {
    // overlapping mutable borrows here would normally be an error;
    // in advisory mode they produce warnings.
    *a = *a + *b;
}

int main() {
    int x = 1;
    int y = 2;
    experimental(&x, &y);
    sys.println(x);
    return 0;
}
```

The migration continues while diagnostics remain visible.

### Disable for one FFI function

```apollo
#[borrow_checker(off)]
void unsafe_ffi_helper(nconst i8* buf, i64 len) {
    // arbitrary pointer fiddling that borrow tracking can't model
}

int main() {
    nconst i8* data = "hello";
    unsafe_ffi_helper(data, 5);
    return 0;
}
```

Just this function bypasses borrow checking.

### Promote a category to error

```apollo
#[borrow_checker(strict, promote(possibly_dangling))];

int main() {
    // the 'possibly_dangling' category is escalated to error in this file
    int x = 0;
    nconst int& ref = &x;
    sys.println(*ref);
    return 0;
}
```

Useful when you want to ensure a specific category never slips through.

### Demote an error during a known-broken phase

```apollo
#[borrow_checker(strict, demote(escape_through_closure))];

extern std collections;

int main() {
    // this category becomes a warning instead of an error temporarily
    nconst vector<int> v = <1, 2, 3>;
    sys.println(v[0]);
    return 0;
}
```

Lets a build keep moving while a specific class of error is being fixed in a follow-up.

### Per-function override

```apollo
#[borrow_checker(strict)];

void normal_function() {
    nconst int x = 7;
    sys.println(x);
}

#[borrow_checker(advisory)]
void experimental_function() {
    // advisory only, doesn't affect the rest of the file
}

int main() {
    normal_function();
    experimental_function();
    return 0;
}
```

The function-level directive overrides the file-level setting just for that function.

## Common mistakes

- **Disabling broadly when only one site needs it.** Use per-function `off`, not file-scope `off`.
- **Leaving advisory mode permanent.** It's intended as a transitional state; reset to strict after the migration.
- **Using `off` to hide a real bug.** The bug is still there; the directive only silences the messenger.
- **Confusing borrow_checker directives with GC directives.** They are independent. GC controls allocation lifetime; borrow_checker controls reference safety.
- **Misspelling a category name in `promote`/`demote`.** Unknown categories produce a warning; the directive then does nothing.

## See also

- `docs/language/memory-and-storage/docs/borrow-expression.md` — what the checker checks.
- `docs/language/directives/docs/gc-directive.md` — companion GC directive.
- `Apollo-Main/brc/borrow_checker.h` — checker internals.
- `docs/language/functions-and-interop/docs/nativemode.md` — broader systems-mode escape hatch.
