To increase compatibility between languages, we will implement a linker of such to be able to use inline code of the language below. How this will work is because each one of the languages uses an LLVM backend. We can take advantage of this by building and integrating with the language a tool which will link together the LLVM lowerings of each of these so that they achieve cross compatibility. The syntax for such should be inline::LANGUAGENAME {}.

Eg.
inline::rs {
    let mut x: i32 = 4;
}
int main() {
    //should print 4.
    sys.println(x);
    return 0;
}

-Python through LPython, C, C++, Objective C, Objective C++, Rust, Swift, Go through TangoLLVM.

For name mangling:
C / Objective-C: These languages typically do not mangle names by default. The symbol in the compiled object file matches the function name in the source.C++ / Objective-C++: Use the extern "C" linkage specifier. This tells the compiler to use C-style linkage, which disables the complex mangling used for function overloading.Example: extern "C" void my_function() { ... }Rust: Use the #[no_mangle] attribute. This is commonly paired with pub extern "C" to ensure both a stable calling convention and a human-readable symbol name.Example: #[no_mangle] pub extern "C" fn my_function() { ... }Swift: Use the (currently unofficial but widely used) @_cdecl attribute. This allows you to specify the exact symbol name for a function when compiled.Example: @_cdecl("my_function") func swift_func() { ... }Python (via LPython): LPython uses an @extern or similar mechanism to interface with C, though for exporting functions without mangling, it typically relies on its C-backend generation or specific type annotations that map directly to LLVM symbols.Go (via TangoLLVM): As a LLVM-based compiler for Go, it follows Go's standard CGO-style patterns. You can use the //export directive in comments above a function, which tells the toolchain to make the symbol available to the linker without Go's internal mangling. Note that for languages like C++, #include <xyz> is not compatible with extern "C". In this case, a wrapper should be generated. All required attributes to prevent name mangling should be inserted automatically so a user doesn't have to type extern "C" or #[repr(C)] every time.

Some things to work on:
Performance: Mature the LLVM backends and AOT/JIT pipelines (PGO/LTO), add SIMD/vectorization intrinsics, tune the runtime allocator, and run continuous microbenchmarks with regression tracking.
Safety & Memory Management: Ship a provably sound ownership/borrow system or formally-specified memory model, integrated lifetime inference, a MIRI-like checker, and static/dynamic sanitizers + safe FFI shims.
Tooling & IDE Support: Provide a full LSP (completion/hover/diagnostics/refactor), DAP debugger integrations, official VSCode/IntelliJ plugins, fast incremental diagnostics, and a polished apollo CLI for project lifecycle.
Ecosystem & Libraries: Build a package manager + central registry, ship a rich, stable stdlib (async/IO, networking, crypto, collections), create curated core packages, and seed strong third-party libs and examples.
Portability & Interop: Add official WASM and embedded backends, hardened cross-compilers, a stable ABI, automatic FFI generators for C/Rust/C++, and CI-tested multi-OS/arch release artifacts.
Concurrency & Parallelism: Define a data-race-free concurrency model, stabilize async/await + executor ecosystem, provide work-stealing schedulers and parallel collections, plus deterministic concurrency testing tools.
Metaprogramming & Macros: Provide hygienic, typed procedural macros with stable APIs, compile-time eval/const-eval and reflection, macro debugging tools, and incremental macro compilation.
Compilation Speed & Toolchain: Implement fast incremental compilation/daemon, parallel codegen, fine-grained caching (artifact + distributed build), faster PCH/incremental link, and profiling for compile hot paths
