# Apollo Runtime Contribution Guide

Scope: this document covers the current execution path for the Apollo compiler/build pipeline under `ln/Apollo-Main`. It focuses on the code that runs when Apollo source is bundled, compiled, analyzed, linked, or JIT-executed. It does not try to document installer code or test binaries except where they are on the live runtime path.

## 1. System Purpose

This codebase is a language toolchain for Apollo source files. In the code as it exists now, the practical job is: take Apollo source text, preprocess it, parse it with ANTLR, run a fixed sequence of validation and memory-safety phases, lower supported constructs directly to LLVM IR, optionally optimize and emit bitcode, then either link a native executable or hand the IR to the LLVM JIT runner. On the Windows native launcher path, there is also a project-level bundling layer that collects package exports and emits a temporary bundled Apollo source file before compilation.

## 2. Runtime Entry Points

These are the real entry points that matter for runtime debugging.

| Entry point | What it does | When it is used |
| --- | --- | --- |
| `ln/Apollo-Main/compiler/cpp/src/apollo_build_driver_main.cpp` -> `main` | Starts `ApolloBuildDriver::run(argc, argv)` | This is the true primary native compiler/backend entry point. The normal wrapper scripts eventually end here. |
| `ln/Apollo-Main/compiler/cpp/src/main.cpp` -> `main` | Starts `apollo_frontend_native` and calls `ApolloDriver::compileApollo` directly | Legacy/direct frontend entry. Still built. On POSIX, `compiler/exec.sh` still invokes it in `prepare_codegen` before the build-driver path. |
| `ln/Apollo-Main/compiler/exec.sh` | Shell command dispatcher for `run`, `ctall`, `analyze`, `clean` | Primary POSIX CLI entry. |
| `ln/Apollo-Main/compiler/exec.bat` | Batch command dispatcher for `run`, `ctall`, `analyze`, `clean` | Primary Windows compiler CLI entry. |
| `ln/Apollo-Main/apollo.sh` | Thin POSIX top-level launcher; immediately `exec`s `compiler/exec.sh` | User-facing POSIX launcher. |
| `ln/Apollo-Main/apollo.cpp` -> `main` | Windows native top-level launcher for `build`, `run`, `clean`, `repl`, `test`, `bench`, `apx`, and legacy compiler passthrough | User-facing Windows launcher. It adds bundling/project orchestration before invoking `compiler/exec.bat`. |
| `ln/Apollo-Main/GC/exe _src/apollo_jit.cpp` -> `main` | LLVM ORC JIT runner that loads emitted `.ll`, looks up `main`, and calls it | Only used on the JIT execution path. |
| `ln/Apollo-Main/apx/main.ts` -> `main(args)` | Node CLI for `init`, `install`, `uninstall`, `deinit`, `bundle` | Used by the Windows native launcher when it bundles a project before compiling it. |
| `ln/Apollo-Main/compiler/cpp/src/apollo_runtime.cpp` -> `ApolloCompilerRuntimeCycle::runPreCodegenPhases()` | Internal phase dispatcher over the parsed program | This is the true primary internal dispatch point after parsing. Most semantic/runtime-surface/memory-safety decisions happen here, before codegen. |

True primary entry point: for the compiler/backend itself, start from `apollo_build_driver_main.cpp` / `ApolloBuildDriver::run`. The top-level launchers and shell scripts are real entry points, but they mostly normalize arguments, select a mode, and shell out. The process that actually controls preprocessing, parsing, validation, codegen, linking, and analysis is the build driver.

## 3. Exact Execution Flow

### Path A: direct compiler wrapper -> native AOT build

This is the core production path once control reaches `compiler/exec.sh` or `compiler/exec.bat`.

1. Input first enters the wrapper as a command plus an Apollo file path.
   Data shape: shell/batch arguments.
   Routing point: `compiler/exec.sh` uses a `case` on `COMMAND`; `compiler/exec.bat` uses labels and `if /I` checks.

2. The wrapper classifies the request into one of these modes:
   `run`, `ctall`, `analyze`, `clean`, plus implicit cross-target forms like `file.apollo -W output`.
   Routing point: the command string and flags decide the branch.

3. The wrapper resolves toolchain/build state.
   Data shape: environment variables and resolved executable paths.
   Work happens in `ensure_native_targets` in both wrappers. This may configure CMake, rebuild native targets, or reuse existing binaries.

4. The wrapper resolves the execution mode.
   Data shape: `jit` or `aot`.
   Routing point: `compiler/exec.sh` reads `apollo-config.sh get-mode`; `compiler/exec.bat` reads `CONFIG_EXE get-mode`. Default is `aot`.

5. The wrapper calls `apollo_build_driver_native` with a subcommand.
   Normal AOT path: `build-aot <input> <output>`.
   Analyze path: `analyze <input> <output>`.
   JIT path: `emit-ll <input>` first, then `apollo_jit` runs the emitted IR.

6. `ApolloBuildDriver::run` reads `argv[1]` and dispatches by string.
   Data shape: `command`, `input-file`, optional `output-file`.
   Routing point: `if (command == "emit-ll")`, `build-aot`, `build-aot-direct-prototype`, `analyze`, `emit-direct-ir-prototype`.

7. `BuildEnvironment::load` materializes the compile environment.
   Data shape: absolute source/output paths, compiler executable names, optimization level, target triple, sysroot, PCH paths, output locations.
   Routing point: environment variables such as `APOLLO_TARGET_TRIPLE`, `APOLLO_OPT_LEVEL`, `APOLLO_ZIG_EXE`, `APOLLO_USE_PCH`.

8. For `emit-ll` and the first stage of `build-aot` / `analyze`, the build driver calls `emitLl(env, outputPath)`.
   Data shape: a configured `apollo::codegen::OptConfig` plus an input file path.
   Real work: `emitLl` sets optimizer/bitcode settings on `ApolloIrCodegen`, then calls `ApolloDriver::compileApollo`.

9. `ApolloDriver::compileApollo` normalizes the source path, determines the import root, computes the dependency output directory, and calls `compileApolloRecursive`.
   Data shape: source path, output path, import root, dependency root, generated-files set, active-sources set.

10. `compileApolloRecursive` first checks the compile cache.
   Routing point: `tryLoadCompileCache`.
   If the cache is valid, it restores the cached IR artifact and still recursively compiles dependencies listed in the cache metadata.
   Hidden or non-obvious control flow point: you may not hit preprocessing, parsing, or codegen at all if the cache matches.

11. If there is no usable compile cache, the source text is read and preprocessed by `preprocessApolloSource`.
   Data shape change: raw source text -> rewritten source text.
   Exact preprocessing stages, in order:
   `expandStdImportsRecursive`: replaces `extern std <module>` with the contents of `ln/Apollo-Main/include/<module>.apollo`, recursively.
   `collectProcMacroDefinitions`: removes proc-macro declarations from the source and stores them.
   `expandProcMacroInvocations`: applies `#idio` and `#derive` directives to the following top-level item.
   `rewriteReservedLoopIdentifiers`: rewrites identifier uses of `loop` when they are not the `loop { ... }` construct.
   `flattenNamespaceBlocks` and `rewriteQualifiedNamespaceAccess`: flatten namespace blocks and rewrite qualified names to prefixed symbols.
   Hidden or non-obvious control flow point: the parser never sees the original file text; it sees the rewritten text from this function.

12. `ApolloCompilerRuntimeCycle::create(displayPath, program)` creates the ANTLR input stream, lexer, token stream, parser, and parse tree.
   Data shape change: preprocessed source text -> `compilerv1Parser::ProgramContext*` plus runtime-feature metadata.
   It also calls `ApolloRuntimeFeatureManifest::analyze(tree)` immediately after parsing.

13. `ApolloCompilerRuntimeCycle::runPreCodegenPhases()` executes the pre-codegen pipeline.
   Data shape: the ANTLR parse tree is not replaced; phases inspect it and record diagnostics/warnings on the cycle.
   Exact default phase order is asserted by `apollo_runtime_tests.cpp`:
   `runtime-extension-surface`
   `frontend-surface`
   `unsafe-boundary`
   `ownership`
   `borrow`
   `memory-safety-finalize`
   `memory-leak`
   `mir-borrow-check`

14. The phase behaviors are:
   `runtime-extension-surface`: `RuntimeExtensionSurfacePhase::execute` scans top-level parser children and directives. Example: it aborts if `@communal` types exist without `#[scheduler(eevf)]`.
   `frontend-surface`: `FrontendSurfaceValidator::validate` walks the parse tree and rejects runtime-surface misuse such as invalid policy combinations and invalid fallback/runtime DSL shapes.
   `unsafe-boundary`: `UnsafeBoundaryValidator::validate` enforces that raw pointers, inline foreign code, `malloc`/`free`, and related constructs only appear inside allowed unsafe contexts.
   `ownership`, `borrow`, `memory-safety-finalize`, `memory-leak`: these are the current production legacy borrow-checker phases from `borrowck/legacy/borrow_checker.cpp`.
   `mir-borrow-check`: `MirBorrowCheckPhase::execute` is wired into the same pipeline, but it returns immediately unless `APOLLO_ENABLE_MIR_BORROWCK=1` is set.
   Hidden or non-obvious control flow point: the MIR phase exists in the default phase list even when it is effectively inactive.

15. After phases pass, `compileApolloRecursive` optionally prints the AST with `streamApolloAst`.
   Routing point: AST streaming is enabled by the launcher/wrapper path, not by the compiler core itself.

16. The driver extracts dependencies from the parse tree with `collectDependencyMetadata(tree)` and recursively compiles them.
   Data shape: parse tree -> vector of dependency strings.
   Exact dependency sources inspected:
   `importStmt()->STRING()`
   `importStmt()->headerPath()`
   `importStmt()->importPath()` without wildcards
   `include()->importPath()` rewritten to `<path>.apollo`

17. `resolveApolloDependencySource` classifies each dependency string into a source path.
   Routing point: path heuristics.
   Rules in code:
   If it already has `.apollo` or `.aph`, try that path.
   If it contains dots, map dots to `/` and add `.apollo`.
   If it contains path separators and no extension, add `.apollo`.
   Wildcard imports are skipped here.
   Hidden or non-obvious control flow point: dependency recursion is a second routing system after preprocessing; it is not the same mechanism as `extern std` expansion.

18. The compiler computes two analysis products before codegen.
   `ApolloCodegenOptimizationPlan::analyze(tree)`: scans for SoA-eligible classes/structs.
   `ApolloIrLayoutPlan::analyze(tree, optimizationPlan)`: computes aggregate layouts and chooses AoS vs full SoA per aggregate.
   Data shape change: parse tree -> optimization plan -> layout plan.

19. `ApolloIrCodegen::emitModule(...)` performs the real LLVM lowering.
   Data shape change: parse tree + runtime features + layout plan -> `llvm::Module` -> text LLVM IR file.
   Exact work order inside `emitModule`:
   Create `llvm::Module` and set target triple.
   Attach backend/runtime/layout/dependency/primitive-type metadata.
   Collect inline foreign blocks.
   Link inline foreign modules.
   Declare imported dependency prototypes.
   Build aggregate and template-function registries.
   Lower globals with `lowerGlobalVariables`.
   Lower aggregate method bodies.
   Lower supported macro bodies.
   Lower supported top-level closures.
   Lower supported function bodies.
   Reject unsupported functions unless `allowPartialLowering` is true.
   Run the LLVM verifier unless `APOLLO_SKIP_VERIFY` is set.
   Run `apollo::codegen::runOptPipeline(module, cfg, err)`.
   Optionally write bitcode with `writeBitcode`.
   Print the module to the requested IR output path.

20. `build-aot` continues past IR.
   `lowerLlToObject` runs `llc` on the emitted `.ll`.
   `linkStandaloneObject` links the object using `clang++` or `zig c++`, runtime requirements, and link flags.
   The build driver then caches the final linked artifact.

21. `analyze` is the same front half, but after IR emission it builds an AddressSanitizer-enabled executable instead of a normal one.

22. `emit-direct-ir-prototype` and `build-aot-direct-prototype` use `ApolloDriver::emitDirectIrPrototype`, which calls `ApolloIrCodegen::emitPrototypeModule` with `allowPartialLowering=true`.
   Hidden or non-obvious control flow point: these prototype paths tolerate unsupported backend lowering that the normal production path rejects.

23. The wrapper either stops with a binary path (`ctall -bin`, build modes), runs the produced executable (`run`), or hands the emitted `.ll` to the JIT runner (`jit` mode).

### Path B: Windows native launcher project flow

This path exists only in `ln/Apollo-Main/apollo.cpp`; `apollo.sh` does not do this project-level orchestration.

1. `apollo.cpp::main` parses the top-level command.
   Routing point: `build`, `run`, `clean`, `repl`, `test`, `bench`, `apx`, or legacy compiler passthrough.

2. For `build`, `run`, `test`, and `bench`, it first bundles source through `apx`.
   Real work: `bundleSource(...)` -> `runNodeApx(...)` -> `apx/main.ts` `bundle` -> `bundleProject(...)` in `apx/write.ts`.

3. `bundleProject` collects input files by reading `apx_modules/manifest.json`, taking every installed package `src_exports`, then appending the entry file.
   It passes that file list to the cached Rust helper built from `apx/bundle.rs`.
   Data shape change: project tree + package manifest -> bundled `.apollo` file under `build/.apollo-bundles`.

4. After bundling, `apollo.cpp` calls `compileBinary(...)`, which shells into `compiler/exec.bat`.

5. From that point onward, the path rejoins Path A.

Hidden or non-obvious control flow point: if you debug `apollo build` or `apollo run` on Windows and ignore the bundler, you may be debugging the wrong input file. The compiler may be consuming a generated bundle, not the original entry file.

### Path C: JIT execution path

1. The wrapper resolves execution mode as `jit`.
2. It calls `apollo_build_driver_native emit-ll <input>`.
3. It launches `apollo_jit` with the emitted `output.ll`.
4. `apollo_jit.cpp::main` creates an ORC JIT, loads the module, adds it to the JIT, initializes the JITDylib, looks up symbol `main`, calls it through `runMain`, then deinitializes the JIT.

### Path D: POSIX-only preflight compile path

`compiler/exec.sh` has a real `prepare_codegen()` step that runs:

`apollo_frontend_native "$INPUT_FILE" output/output.cpp`

before it invokes the build driver.

That means the normal POSIX wrapper path compiles once through `apollo_frontend_native` and then compiles again through `apollo_build_driver_native`.

Hidden or non-obvious control flow point: this extra compile does not exist in `compiler/exec.bat`. If behavior differs between Windows and POSIX wrappers, start by checking this difference.

## 4. Dispatch / Routing Model

The system does not use one central virtual override tree to control end-to-end execution. It uses several smaller routing systems.

1. CLI routing is string-based.
   `apollo.cpp`, `compiler/exec.sh`, `compiler/exec.bat`, and `ApolloBuildDriver::run` all dispatch by command strings and flags.

2. Pre-codegen routing is phase-list based.
   `apollo_runtime.cpp` builds a vector of `std::shared_ptr<const ApolloRuntimePhase>` in `defaultPhases()`, then `runPreCodegenPhases()` executes them in order.
   Handlers are selected by list position, not by subclass discovery.

3. Borrow-check routing is registry-based.
   `defaultPhases()` appends the legacy list from `borrowCheckerPhases()` and then appends the MIR list from `mirBorrowCheckerPhases()`.
   Runtime feature flags and environment variables decide whether those phases actually do work.

4. Parse-tree routing is visitor and type-check based.
   Validators use ANTLR visitors plus checks like `dynamic_cast<compilerv1Parser::StructContext*>(child)` and parser-context-specific overrides.
   Control flow is determined by grammar node type and local condition checks, not by a separate dispatcher table.

5. Dependency routing is heuristic path resolution.
   `collectDependencyMetadata` extracts import/include strings from the parse tree, then `resolveApolloDependencySource` converts them to files using extension, dotted-name, and path-separator heuristics.

6. Backend lowering uses registries and explicit lowering helpers.
   `emitModule` builds an `AggregateRegistry` and a `TemplateFunctionRegistry`, installs them into scope helpers, then calls explicit lowerers such as `lowerAggregateMethodBodies` and `lowerSupportedFunctionBodies`.

7. Runtime-mode routing is external-state based.
   JIT vs AOT is chosen by the persisted mode file or config executable, not by the source file itself.

8. Cache routing can bypass whole stages.
   Compile cache can skip preprocessing/parse/codegen for a source file.
   Artifact cache can skip `llc` and link for the final executable.

If you are looking for a single “who overrides what?” answer, the closest current answer is: the outer system is routed by command strings and explicit helper functions, and the compiler core is routed by a fixed vector of `ApolloRuntimePhase` objects plus parser-context visitors.

## 5. Legacy vs Current Design Mapping

| Old mental model | Current code reality |
| --- | --- |
| “`apollo` directly compiles my file.” | On Windows, `apollo.cpp` may first bundle source through `apx`, then shell into `compiler/exec.bat`, which then shells into `apollo_build_driver_native`. |
| “The compiler starts in `compiler/cpp/src/main.cpp`.” | `main.cpp` still exists, but the production native entry point is `apollo_build_driver_main.cpp`. `main.cpp` is a direct frontend binary and a POSIX preflight step, not the normal final driver. |
| “Parsing goes straight into backend lowering.” | Parsing is followed by `runPreCodegenPhases()`, then SoA/layout analysis, then backend lowering in `visitor.cpp`. |
| “Borrow checking is one pass.” | The production legacy borrow checker is split into `ownership`, `borrow`, `memory-safety-finalize`, and `memory-leak` phases. There is also an opt-in MIR borrow-check phase after them. |
| “Imports are all handled the same way.” | `extern std` is handled in the source preprocessor before parsing. Project package bundling is handled in `apx` before the compiler sees the file. Dependency recursion for imports/includes happens later from parse-tree metadata. |
| “If codegen fails, the bug is in the visitor.” | Not necessarily. Failure may be in preprocessing, runtime-surface validation, unsafe-boundary checks, legacy borrow checking, dependency resolution, LLVM verification, optimizer passes, or link/JIT steps before or after the visitor code. |

## 6. Where Things Actually Happen

These are the places to start when you need the code that performs the real work rather than a wrapper.

| Concern | Real function/class |
| --- | --- |
| Top-level native compiler dispatch | `ApolloBuildDriver::run` in `compiler/cpp/src/apollo_build_driver.cpp` |
| Source preprocessing | `preprocessApolloSource` in `compiler/cpp/src/apollo_source_preprocessor.cpp` |
| ANTLR parse setup | `ApolloCompilerRuntimeCycle::create` in `compiler/cpp/src/apollo_runtime.cpp` |
| Pre-codegen phase dispatch | `ApolloCompilerRuntimeCycle::runPreCodegenPhases` in `compiler/cpp/src/apollo_runtime.cpp` |
| Runtime-surface validation | `FrontendSurfaceValidator::validate` and `FrontendSurfacePhase::execute` in `compiler/cpp/src/apollo_runtime.cpp` |
| Unsafe-boundary enforcement | `UnsafeBoundaryValidator::validate` and `UnsafeBoundaryPhase::execute` in `compiler/cpp/src/apollo_runtime.cpp` |
| Legacy borrow checking | `OwnershipValidator::analyze` and phase classes in `compiler/cpp/src/borrowck/legacy/borrow_checker.cpp` |
| MIR borrow-check integration | `MirBorrowCheckPhase::execute` in `compiler/cpp/src/borrowck/mir_pipeline.cpp` |
| Recursive compile, compile cache, dependency compile order | `compileApolloRecursive` in `compiler/cpp/src/apollo_driver.cpp` |
| Import/include dependency extraction | `collectDependencyMetadata` in `compiler/cpp/src/apollo_driver.cpp` |
| Dependency path resolution | `resolveApolloDependencySource` in `compiler/cpp/src/apollo_driver.cpp` |
| SoA eligibility analysis | `ApolloCodegenOptimizationPlan::analyze` in `compiler/cpp/src/apollo_codegen_optimization_plan.cpp` |
| Layout decision (AoS vs SoA) | `ApolloIrLayoutPlan::analyze` in `compiler/cpp/src/apollo_ir_layout_plan.cpp` |
| LLVM IR generation | `ApolloIrCodegen::emitModule` in `compiler/cpp/src/visitor.cpp` |
| Function/body lowering | `lowerAggregateMethodBodies`, `lowerSupportedMacroBodies`, `lowerSupportedTopLevelClosures`, `lowerSupportedFunctionBodies` in `compiler/cpp/src/visitor.cpp` |
| LLVM pass pipeline | `apollo::codegen::runOptPipeline` in `compiler/cpp/src/codegen/optimizer.cpp` |
| AOT object generation and link | `lowerLlToObject`, `linkStandaloneObject`, `buildAot` in `compiler/cpp/src/apollo_build_driver.cpp` |
| ASan analyze build | `analyze` in `compiler/cpp/src/apollo_build_driver.cpp` |
| JIT execution | `main`, `loadModule`, and `runMain` in `GC/exe _src/apollo_jit.cpp` |
| Windows project bundling | `bundleProject` in `apx/write.ts` |

## 7. Debugging Guide

Use this when tracing one input from start to finish.

1. Identify which outer path you are actually on.
   If the user ran `apollo build`, `apollo run`, `apollo test`, or `apollo bench` on Windows, start in `ln/Apollo-Main/apollo.cpp`.
   If the user ran `compiler/exec.bat` or `compiler/exec.sh` directly, start there.
   If the issue is JIT-only, jump straight to the JIT branch after wrapper mode selection.

2. Log first at the outer dispatcher, not deep in the backend.
   Good first logs:
   selected command
   normalized input path
   output path
   execution mode (`jit` vs `aot`)
   whether the Windows launcher created a bundled file
   whether the build driver subcommand is `build-aot`, `emit-ll`, or `analyze`

3. If the source seems wrong, log before and after preprocessing.
   Start in `preprocessApolloSource`.
   Print or dump:
   original source path
   whether `extern std` expansion fired
   whether proc-macro definitions/invocations were found
   whether namespace flattening changed symbol names
   This isolates “input was changed before parse” bugs quickly.

4. If the error appears before IR generation, trace `ApolloCompilerRuntimeCycle` next.
   Start at `ApolloCompilerRuntimeCycle::create` and `runPreCodegenPhases`.
   If the message says `syntax error`, stay in parse setup.
   If it says `runtime-surface`, stay in `FrontendSurfaceValidator`.
   If it says `memory-safety`, check `UnsafeBoundaryValidator` and the legacy borrow-check phases.

5. If the bug is import/include related, trace dependency extraction and resolution.
   Log `collectDependencyMetadata` output.
   Then log `resolveApolloDependencySource` and `dependencyOutputPath`.
   This tells you whether the compiler even found the file it thinks it should compile.

6. If phases pass but the backend fails, go to `ApolloIrCodegen::emitModule`.
   Log or breakpoint on:
   `unsupportedFunctions`
   `collectInlineForeignBlocks`
   `declareImportedDependencyPrototypes`
   `lowerSupportedFunctionBodies`
   If the thrown message is `backend could not compile module ...`, this is the slice you want.

7. If IR exists but the final binary is wrong, move one stage later.
   AOT path: `buildAot`, `lowerLlToObject`, `linkStandaloneObject`.
   JIT path: `apollo_jit.cpp::loadModule`, `lookup("main")`, `runMain`.

8. If behavior seems stale or impossible, check both caches.
   Compile cache lives under `ApolloDriver::cacheEntryPath` / `cacheArtifactPath`.
   Final linked artifact cache lives in the build driver.
   A cache hit can make it look like your instrumentation is not running.

9. To determine which stage caused a bug, classify by symptom.
   Source text mismatch or missing stdlib/package content: preprocessing or bundling.
   Parser diagnostics: ANTLR setup.
   `runtime-surface` errors: frontend-surface phase.
   `memory-safety` errors before IR: unsafe-boundary or legacy borrow-check phases.
   `backend could not compile module`: unsupported lowering in `visitor.cpp`.
   LLVM verifier or optimizer failure: `emitModule` or `runOptPipeline`.
   Linked binary wrong but IR looks right: `buildAot`/link or the JIT runner.

## 8. Common Failure Points

1. Preprocessing hides the real input.
   `extern std` physically injects stdlib source text.
   Proc macros remove declarations and rewrite later items.
   Namespace flattening rewrites names.
   Reserved `loop` identifier rewriting changes tokens before parse.

2. The Windows launcher may not compile the file you think it is compiling.
   `apollo.cpp` bundles package exports and the entry file into `build/.apollo-bundles/*.apollo` first.

3. POSIX and Windows wrappers do not follow the same path.
   `exec.sh` still runs `apollo_frontend_native` in `prepare_codegen`.
   `exec.bat` does not; it only ensures the build-driver target is available.

4. JIT vs AOT is hidden state.
   The wrapper reads stored config to choose the mode. If you forget that, you can debug the wrong branch entirely.

5. The fast Windows `-W` path can bypass part of the normal wrapper flow.
   `exec.bat :try_fast_windows_bin` can call `apollo_build_driver_native build-aot` directly for Windows binary output.
   Hidden or non-obvious control flow point: this is an alternate compilation branch inside the same wrapper.

6. Two different import systems exist.
   `extern std` is preprocessor-time source injection.
   `import` / `include` dependency recursion is compiler-driver-time file discovery.
   Bugs often come from confusing these two systems.

7. Legacy borrow checking is still the production memory-safety path.
   The MIR borrow checker is present in the phase list, but it is opt-in and its own header documents lowering as scaffolded.

8. Backend rejection is delayed.
   `visitor.cpp` collects unsupported items into `unsupportedFunctions` and throws later. The visible failure site may be after the actual unsupported construct was first encountered.

9. Verification and optimization can fail after lowering succeeds.
   A successful phase run does not mean the module is valid. `llvm::verifyModule` and `runOptPipeline` are separate failure points.

10. Caches can hide control flow.
   If a cache hit restores a prior artifact, none of the expected parser/phase/codegen code will run.

11. Prototype paths are easier to misread than production paths.
   `emit-direct-ir-prototype` and `build-aot-direct-prototype` allow partial lowering. If a bug only reproduces on the normal path, check whether the prototype path is masking unsupported backend work.