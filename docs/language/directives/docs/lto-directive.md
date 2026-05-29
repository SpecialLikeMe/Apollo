# LTO directive

## What it is

The `lto` directive marks a function, type, or file for link-time optimization. With LTO enabled, the compiler defers some optimizations to link time, where the optimizer can see across translation units. Cross-module inlining, dead-code elimination, and devirtualization all benefit.

LTO is normally a build-system setting, but the directive lets a program request it for specific declarations even when the overall build is not LTO-enabled.

## When you use it

- Hot functions that benefit from cross-module inlining.
- Types whose methods are used heavily by external callers.
- Cases where you've measured a meaningful win from LTO and want to opt in selectively.

For most code, LTO at the build-system level is the better lever. The directive is for fine-grained opt-in.

## Syntax

```
ltoDirective : '#[lto' (':' ltoMode)? ']' ;
ltoMode      : 'full' | 'thin' | 'off' ;
```

The directive applies to the immediately-following declaration or, at file scope, to the whole file.

## Semantics

`full`: full LTO — the compiler emits LLVM bitcode for the target and the linker performs whole-program optimization.

`thin`: thin LTO — per-module summaries enable cross-module inlining with much lower memory and time cost than full LTO.

`off`: explicitly disable LTO for the target even when the build configuration enables it.

LTO directives do not change source-level semantics; they only adjust how the compiler emits and processes object code.

## Examples

### Mark a hot function for full LTO

```apollo
#[lto:full]
int fast_path(int a, int b) {
    return a * a + b * b;
}

int main() {
    nconst int total = 0;
    for (nconst i := 0; i < 10000; i = i + 1) {
        total = total + fast_path(i, i + 1);
    }
    sys.println(total);
    return 0;
}
```

The hot function gets full LTO; the rest of the file uses default settings.

### File-scope thin LTO

```apollo
#[lto:thin];

int helper_a(int x) { return x + 1; }
int helper_b(int x) { return x * 2; }
int helper_c(int x) { return helper_a(helper_b(x)); }

int main() {
    sys.println(helper_c(7));
    return 0;
}
```

Every function in the file gets thin LTO treatment.

### Opt one function out

```apollo
#[lto:full];

int normal_function() { return 1; }

#[lto:off]
int debug_only() {
    // ensure this function is preserved without LTO inlining hiding it
    return 42;
}

int main() {
    sys.println(normal_function());
    sys.println(debug_only());
    return 0;
}
```

The file uses full LTO; one function opts out to remain a distinct symbol in the binary.

### LTO on a type's methods

```apollo
#[lto:thin]
class Hot {
    public:
    nconst i32 value;
    void bump() { self.value = self.value + 1; }
    i32 read() { return self.value; }
};

int main() {
    nconst Hot h = Hot(0);
    for (nconst i := 0; i < 1000; i = i + 1) {
        h.bump();
    }
    sys.println(h.read());
    return 0;
}
```

All methods on the class inherit the thin-LTO marking.

### LTO with template instantiations

```apollo
template T sum<T>(nconst T& a, nconst T& b) {
    return *a + *b;
}

#[lto:full]
int hot_sum_i32(int a, int b) {
    return sum<int>(&a, &b);
}

int main() {
    sys.println(hot_sum_i32(3, 4));
    return 0;
}
```

The full-LTO marking on the calling function helps the optimizer see across the template instantiation.

### Combined with nativemode

```apollo
nativemode;

#[lto:full]
i32 raw_kernel(i32 a, i32 b) {
    return a ^ b + (a & b) * 2;
}

int main() {
    sys.println(raw_kernel(7, 3));
    return 0;
}
```

LTO and nativemode are independent and can combine.

## Common mistakes

- **Expecting LTO to change behavior.** It only changes performance. If LTO produces different output, that's a bug.
- **Marking everything for full LTO.** Full LTO is expensive in compile time and memory. Use thin LTO as the default; opt into full only for measured wins.
- **Forgetting the build must support LTO.** If the linker doesn't support LTO, the directive is silently ignored.
- **Combining `lto:off` with a build-level LTO enabled and expecting size benefits.** The opt-out only changes whether LTO sees that declaration; size impact is minimal.
- **Treating LTO as a substitute for inlining hints.** They are complementary; `inline` controls compile-time inlining, LTO enables link-time inlining.

## See also

- `docs/language/directives/docs/typeset-directive.md` — related compile-time directives.
- `docs/language/declarations/docs/template.md` — templates benefit greatly from LTO.
- `Apollo-Main/compiler/cpp/src/apollo_build_driver.cpp` — driver flag handling.
- `Apollo-Main/output/` — typical artifact directory.
