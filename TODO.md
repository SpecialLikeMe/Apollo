-MLIR
-NEW PARSER

Some things to work on:
Performance: Mature the LLVM backends and AOT/JIT pipelines (PGO/LTO), add SIMD/vectorization intrinsics, tune the runtime allocator, and run continuous microbenchmarks with regression tracking.
Safety & Memory Management: Ship a provably sound ownership/borrow system or formally-specified memory model, integrated lifetime inference, a MIRI-like checker, and static/dynamic sanitizers + safe FFI shims.
Tooling & IDE Support: Provide a full LSP (completion/hover/diagnostics/refactor), DAP debugger integrations, official VSCode/IntelliJ plugins, fast incremental diagnostics, and a polished apollo CLI for project lifecycle.
Ecosystem & Libraries: Build a package manager + central registry, ship a rich, stable stdlib (async/IO, networking, crypto, collections), create curated core packages, and seed strong third-party libs and examples.
Portability & Interop: Add official WASM and embedded backends, hardened cross-compilers, a stable ABI, automatic FFI generators for C/Rust/C++, and CI-tested multi-OS/arch release artifacts.
Concurrency & Parallelism: Define a data-race-free concurrency model, stabilize async/await + executor ecosystem, provide work-stealing schedulers and parallel collections, plus deterministic concurrency testing tools.
Metaprogramming & Macros: Provide hygienic, typed procedural macros with stable APIs, compile-time eval/const-eval and reflection, macro debugging tools, and incremental macro compilation.
Compilation Speed & Toolchain: Implement fast incremental compilation/daemon, parallel codegen, fine-grained caching (artifact + distributed build), faster PCH/incremental link, and profiling for compile hot paths

