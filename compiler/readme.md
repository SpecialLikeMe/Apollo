Welcome to the Apollo language!

This is a quick documentation on how to use it.


DEVELOPER NOTES (REMOVE BEFORE PUBLISH):
  INCLUDES ARE AT LINE ~2250


Windows compiler pipeline:
    `apollo ctall file.apollo` now emits `output/output.ll` with `clang` first.
    In `aot` mode, Apollo lowers that IR to `output/output.obj` with `llc`, links it with `clang++`, and runs it.
    In `jit` mode, Apollo runs `output/output.ll` through `apollo_jit.exe`, a custom LLVM ORC runner.
    If generated code includes Boehm GC headers such as `extern gc/gc_cpp.h;`, Apollo injects `GC_INIT()` into `main` and links `libgccpp` and `libgc` automatically.
    The mode is controlled by `apollo-config.exe` in the repo root.
    Apollo `extern {package.name}` imports are resolved from the directory containing the entry `.apollo` file.
    Apollo cleans generated temp output after each run using `compiler/cleanup-output.ps1`.

Windows mode commands:
    `apollo-config.exe` shows the current mode and JIT availability.
    `apollo-config.exe aot` selects the LLVM IR -> object -> executable flow.
    `apollo-config.exe jit` selects the LLVM JIT flow backed by `apollo_jit.exe`.
    Immediate execution stays `apollo ctall file.apollo`.
    Standalone AOT output now uses `apollo file.apollo -W outputname` for Windows, `apollo file.apollo -L outputname` for Linux, and `apollo file.apollo -M outputname` for macOS.

Binary output:
    `apollo file.apollo -W dist\program.exe` builds a Windows binary at the destination and does not run it.
    `apollo file.apollo -L dist\program` builds a Linux binary at the destination and does not run it.
    `apollo file.apollo -M dist\program` builds a macOS binary at the destination and does not run it.
    The older `apollo -bin ctall file.apollo dist\program.exe` form is still accepted.
    `-bin` always uses the AOT path because JIT does not produce a standalone executable.
    Cross-target outputs require a matching cross-compilation toolchain and, when needed, an appropriate `APOLLO_SYSROOT`.

AddressSanitizer analysis:
    `apollo -analyze file.apollo` generates `output.cpp`, builds it with `clang++ -fsanitize=address`, runs the instrumented executable, and prints the ASan report to the console.
    ASan report lines are colorized by severity: green for clean completion, yellow for warnings and summaries, red for hard sanitizer errors, and magenta for detailed stack or memory-region context.
    The Windows Clang toolchain must include `libclang_rt.asan` runtime libraries; Apollo's installer now provisions this through `mingw-w64-x86_64-compiler-rt`.
    The dedicated analyzer fixtures live under `compiler\tests\analyze\`, for example `apollo -analyze tests\analyze\asan_clean.apollo`.

Windows launcher note:
    On managed Windows machines, application control can block `apollo.exe` directly.
    Apollo's installer now registers `apollo` through `%LOCALAPPDATA%\Microsoft\WindowsApps\apollo.cmd`, which calls `compiler\exec.bat` without going through `apollo.exe`.
    `install.exe` also bootstraps the Windows toolchain Apollo needs: Java, MSYS2, clang64 clang, compiler-rt, llvm, make, and Boehm GC. It writes `compiler\toolchain-env.bat` so the launcher can use those tools without requiring a manual PATH setup, then runs the validation suite under `compiler\tests\` to confirm the language is working.
    If the installed shim is not available yet, run `compiler\exec.bat ctall file.apollo` from the Apollo repo as a fallback.

Test suite:
    Apollo regression fixtures live under `compiler\tests\`.
    `compiler\tests\grammar\` covers parser and semantic rule surfaces.
    `compiler\tests\safety\` covers borrow-checker and raw-memory safety diagnostics.
    `compiler\tests\analyze\` holds AddressSanitizer validation programs.
    `compiler\tests\manual\` is reserved for exploratory cases that are intentionally not part of installer validation.
    Run `powershell -File compiler\run-grammar-tests.ps1` for the compile-only suite or `powershell -File compiler\run-test-suite.ps1` for the installer-equivalent validation run.

Compiler runtime cycle:
    `compiler\Main.java` now handles file orchestration and dependency compilation only.
    `compiler\runtime.java` owns the compile-time runtime cycle: parse source, validate syntax, run runtime phases, then hand the checked tree to codegen.
    The runtime phases are registered in one place inside `runtime.CompilerRuntimeCycle`, so new helpers such as safety passes, diagnostics, or analysis tools can be added without growing `Main.java` again.
    The default phase order is locked by `compiler\RuntimePhaseOrderTest.java` and validated by `compiler\run-grammar-tests.ps1` before fixture compilation starts.
    To add a new runtime device, create a device/helper in `runtime.java`, expose it through `RuntimeSession`, add a `RuntimePhase` that calls it, then register that phase in `CompilerRuntimeCycle.defaultPhases()` and update `RuntimePhaseOrderTest.java` if the order changed intentionally.

Autofmtdeclare owner scopes:
    Apollo now parses `@autofmtdeclare { ... }`, `@induct name;`, and `@release name;`.
    The current implementation treats `@autofmtdeclare` as an owner scope scaffold: managed declarations inside the block are tracked automatically, `@induct` moves an eligible binding into that owner, and `@release` moves it back out.
    The runtime checker already rejects `@release` outside an owner scope, returning an owner-managed binding without release, and using an inducted binding after the owner scope exits unreleased.
    Function calls now honor declared parameter contracts during safety analysis: passing a non-copy value by value moves it at the call site, mutable reference parameters require an exclusive borrowable binding, and reference-returning helper functions can propagate the caller binding lifetime when they return one of their reference parameters.
    Local reference aliases now use a simple non-lexical lifetime rule: if a local borrow binding is not used again later in the current block, Apollo releases that borrow after its last use instead of waiting for the closing brace.
    Nested blocks and conditional branches now use the same last-use rule for outer local reference aliases: if a path does not use the alias and nothing after the statement needs it, Apollo can end that borrow before entering the nested path.
    If control flow rebinds the same outer reference alias to incompatible origins, Apollo now treats the merged alias as unusable after the merge unless later analysis can prove the alias is dead.
    `@unsafe { ... }` still enforces Apollo ownership and borrow rules for safe bindings; it only relaxes the raw-pointer and native interop surface checks.
    `@bypass { ... }` is the full escape hatch: it allows manual memory and native unsafe operations and suppresses Apollo borrow/ownership analysis for code inside the block.
    The generated C++ runtime now includes an owner-local mark/sweep collector with lock-based runtime coordination, root tracking, adaptive collection thresholds, invalidation after collection or release, and per-type trace helpers for classes, structs, templates, and standard Apollo container shapes.

Performance note:
    Normal Apollo AOT and JIT lowering now emits optimized LLVM IR/object code (`-O2`) on the standard execution path. The ASan analyzer still uses `-O0` so sanitizer diagnostics remain precise.
    The Windows driver also now supports opt-in PGO on the normal backend path through `APOLLO_PGO_MODE=generate` or `APOLLO_PGO_MODE=use` with `APOLLO_PGO_PROFILE=...`. The ASan path deliberately ignores those switches.

Output policy:
    Normal `apollo ctall file.apollo` runs are quiet on success and print only the Apollo program's stdout.
    `apollo -bin ...` and `apollo -analyze ...` keep file-detail diagnostics enabled because they are build-oriented commands.

Important notes:
    Apollo is semicolon seperated
    Apollo requires the use of curly braces

Type aliases used by Apollo:

- `i32` for 32-bit integers
- `f64` for 64-bit floating point values
- `str` for strings

Container notes:

- `vector<T>` and `hsh<K,V>` support recursive nesting.
- `name[key]` works for lookup and assignment.
- `name[apnd] = value;` appends to a vector.
- If the target type is a nested container, composite literals like `<"key", 7>` are typed from context, so `tester["hello"] = <"world", 7>;` works for `hsh<str, hsh<str, int>>`.
- Composite lookup keys also work when the map key type is itself a container, for example `keyed[<"alpha", "beta">]` for `hsh<vector<str>, int>`.

Functions:

Functions are declared with a return type, name and paramaters with the contents parsed by semicolons.

returntype name(paramaters) {
    code to execute
}

A function with the name main and return type i32 is the entry point for the system. The return value is the status code of execution.
i32 main() {
    sys.println("Hello, world");
    return 0;
}

Here are the equivalents in other languages:

C++:
int main() {
    std::cout<<"Hello, world";
    return 0;
}

Java:
public class main {
    public static void main(String[] args) {
        System.out.println("Hello, world");
        //void return type
    }
}

Rust:
fn main() {
    println!("Hello, world");
}

Lambda functions:

Apollo supports inline lambdas with a simplified syntax that does not require an inner function name.

auto add = lmd-> (i32 left, i32 right) {
    return left + right;
}

If you want an explicit return type, you can write it directly after `lmd->`.

auto add = lmd-> i32(i32 left, i32 right) {
    return left + right;
}

Apollo also supports first-class function types using `fn<returnType(paramTypes...)>`.

fn<i32(i32, i32)> multiply = lmd-> (i32 left, i32 right) {
    return left * right;
}

sys.println(add(2, 3));
sys.println(multiply(3, 4));

Declarations:

Apollo variable declarations are typed, and `const` can be used to make a binding immutable. Const declarations must include an initializer.

const i32 answer = 42;
str name = "apollo";

Interfaces, inheritance, and instances:

Apollo supports interface declarations with `itr`, parent lists using `* public Parent; public OtherParent`, virtual methods in base classes, and `@Override` on derived methods. Both direct instance initialization and `.push(Type{})` instance population are supported.

itr Speaker {
    virtual void speak();
}

itr Walker {
    virtual void walk();
}

class Animal * public Speaker; public Walker {
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
    @Override
    public void speak() {
        sys.println("dog");
        return;
    }

    @Override
    public void walk() {
        sys.println("walk");
        return;
    }
}

crt instance dog;
dog.push(Dog{});
dog.speak();

staticx instance direct = Dog{};
direct.walk();

Built in functions:

console output:
sys.println(arg);
