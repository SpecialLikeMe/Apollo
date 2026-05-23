# How To Add A New Apollo Feature

This workspace's live compiler path is the native frontend under `compiler/cpp/src`. The older Java frontend files referenced in some older notes are not present in this snapshot, so treat the native path as the source of truth.

## 1. Add The Grammar Surface

Edit `compiler/compilerv1.g4` first.

Use this when the feature needs new syntax, a new statement form, a new expression form, or a new declaration shape.

Practical rules:

- Put the rule next to the closest existing construct instead of appending unrelated syntax at the end of the file.
- Reuse existing lexer tokens when the spelling already exists.
- Keep the parse tree shape simple enough that lowering does not need to recover intent from raw token streams.
- If the new syntax is only a semantic restriction on an existing parse form, do not change the grammar. Add validation instead.

After changing `compilerv1.g4`, regenerate and rebuild through the existing harnesses. In this repo the safest path is to run one of the scripts that already refresh generated parser output before building, especially:

- `compiler/run-grammar-tests.ps1`
- `compiler/run-test-suite.ps1`

Those harnesses are the guard against stale generated parser code after a grammar edit.

## 2. Decide Where The Rule Actually Lives

Before writing lowering code, decide which layer owns the behavior.

- Parsing only: `compiler/compilerv1.g4`
- Surface validation and feature gating: `compiler/cpp/src/apollo_runtime.cpp`
- LLVM IR lowering: `compiler/cpp/src/visitor.cpp`
- Runtime support linked into generated binaries: `compiler/runtime_support/*.hpp` or build-driver runtime support in `compiler/cpp/src/apollo_build_driver.cpp`

The correct order is usually:

1. Parse the new form.
2. Validate it in the runtime-surface pass.
3. Lower it in the LLVM visitor.
4. Add runtime support only if LLVM lowering cannot express the behavior directly.

If the new feature is invalid in some contexts, add the diagnostic in `apollo_runtime.cpp` before adding codegen. That keeps failures precise and prevents unsupported syntax from silently lowering into nonsense.

## 3. Add Surface Validation

Add semantic checks in `compiler/cpp/src/apollo_runtime.cpp`.

The normal workflow is:

1. Extend `FrontendSurfaceValidator` if the feature is a source-level rule.
2. Collect any declarations or aliases you need in `collectProgramSurface(...)`.
3. Add a `visit...(...)` override for the new parse node and emit diagnostics with `addDiagnostic(...)`.

Use this layer for checks like:

- "this construct is only valid inside X"
- "this name must refer to a declared Y"
- "this DSL phrase must match a declared pattern"
- "this feature requires a runtime capability or directive"

Do not wait until LLVM lowering to reject malformed source when the source rule can be diagnosed earlier.

## 4. Link The Runtime Override To The LLVM Lowering

The runtime-surface override in `apollo_runtime.cpp` and the lowering code in `visitor.cpp` are usually not linked by calling each other directly. They are linked by handling the same parse-tree node and the same feature contract.

The practical pattern is:

1. Add or reuse a grammar rule in `compilerv1.g4`.
2. Add a `FrontendSurfaceValidator::visit...(...)` override in `apollo_runtime.cpp` for that rule.
3. Add the matching `visit...(...)` or `lower...(...)` path in `visitor.cpp` for that same rule.
4. Make the validator reject malformed cases so the lowering code can assume the feature shape is already valid.

That means the connection is structural, not a function call from one file into the other.

For example, if a feature is parsed as `SomeFeatureStmtContext`, the wiring usually looks like this:

```cpp
// apollo_runtime.cpp
std::any FrontendSurfaceValidator::visitSomeFeatureStmt(
    compilerv1Parser::SomeFeatureStmtContext* ctx) {
    if (/* invalid source contract */) {
        addDiagnostic(ctx, "explain what is invalid");
    }
    return visitChildren(ctx);
}
```

```cpp
// visitor.cpp
std::any CodegenVisitor::visitSomeFeatureStmt(
    compilerv1Parser::SomeFeatureStmtContext* ctx) {
    lowerSomeFeatureStatement(ctx);
    return {};
}
```

In other words:

- `apollo_runtime.cpp` owns "is this source form legal?"
- `visitor.cpp` owns "what IR do we emit for the legal form?"

Use the same parser context type in both places. That is the main link.

If the lowering needs a runtime helper call, then there is a second link:

1. `visitor.cpp` declares or fetches the callee with a `get...Declaration(...)` helper.
2. Lowering emits `builder.CreateCall(...)` to that helper.
3. The implementation of that runtime symbol lives in `runtime_support/...` or build-driver runtime support.

For a feature like the typedef-opstruct matcher work, the validator override lives in `FrontendSurfaceValidator` in `apollo_runtime.cpp`, while `visitor.cpp` continues lowering the already-validated phrase/session statement through its existing typedef-opstruct lowering helpers. The validator and lowering stay aligned because they both operate on the same typedef-opstruct parse nodes.

## 5. Lower The New Node To LLVM

Most feature lowering belongs in `compiler/cpp/src/visitor.cpp`.

Typical steps:

1. Find the closest existing `visit...` or `lower...` helper for the same kind of construct.
2. Add a new helper if the logic is more than a few lines.
3. Lower child expressions first.
4. Create or fetch any external/runtime function declaration.
5. Emit the call or IR sequence with `llvm::IRBuilder<>`.

Keep lowering structured around existing helpers such as:

- `lowerExpressionValue(...)`
- `lowerExpressionForExpectedType(...)`
- feature-specific `lower...Statement(...)` helpers
- `get...Declaration(...)` helpers near the bottom of `visitor.cpp`

When the feature needs a call into a helper function, prefer this pattern:

1. Add a forward declaration near the existing declaration helpers near the top of `visitor.cpp`.
2. Define the helper near the other `get...Declaration(...)` functions near the bottom of the file.
3. Call it from the lowering site with `builder.CreateCall(...)`.

## 6. Add A Declaration Helper For `llvm::PLACEHOLDER`

If you want lowering to call a function named `llvm::PLACEHOLDER`, copy the existing declaration-helper pattern.

The shape is:

```cpp
llvm::FunctionCallee getLLVMPlaceholderDeclaration(llvm::Module& module) {
    llvm::LLVMContext& context = module.getContext();
    return module.getOrInsertFunction(
        "llvm.PLACEHOLDER",
        llvm::FunctionType::get(
            llvm::Type::getVoidTy(context),
            {
                llvm::Type::getInt8PtrTy(context)
            },
            false));
}
```

Then call it from lowering code:

```cpp
llvm::Module* module = builder.GetInsertBlock() != nullptr ? builder.GetInsertBlock()->getModule() : nullptr;
if (module == nullptr) {
    throw std::runtime_error("missing LLVM module while lowering PLACEHOLDER feature");
}

llvm::Value* argument = lowerExpressionValue(builder, ctx->expression(), values, true);
builder.CreateCall(getLLVMPlaceholderDeclaration(*module), {argument});
```

If `PLACEHOLDER` is a real LLVM intrinsic rather than a normal symbol, use `llvm::Intrinsic::getDeclaration(...)` instead of `getOrInsertFunction(...)`. The wrapper function pattern still stays the same: one helper that returns the declaration, one lowering site that builds the call.

When you need to connect that LLVM helper back to the validation side, the flow is:

1. `apollo_runtime.cpp` validates that the source form is allowed.
2. `visitor.cpp` reaches the matching parse node.
3. The lowering helper calls `getLLVMPlaceholderDeclaration(...)`.
4. The emitted IR now references `llvm.PLACEHOLDER`.

So the runtime override does not invoke `getLLVMPlaceholderDeclaration(...)` itself. It only guarantees that when lowering reaches that node, the call is semantically allowed.

## 7. If The Feature Needs A Runtime Helper

Only add runtime support if the behavior cannot be expressed cleanly in direct IR.

Possible locations:

- `compiler/runtime_support/apo_ir_runtime.hpp` for direct IR runtime helpers
- `compiler/cpp/src/apollo_build_driver.cpp` if the direct-IR build driver must embed or link helper code
- one of the other `compiler/runtime_support/apo_*_runtime.hpp` headers if the feature is domain-specific

When you add a runtime helper, make sure the runtime requirement scanner marks the program as needing that support. Otherwise the helper might never be linked.

## 8. Test The Feature

Use the smallest test that can prove the rule works.

For syntax and surface validation:

- add a pass fixture under `compiler/tests/grammar/pass`
- add a fail fixture under `compiler/tests/grammar/fail`
- register both in `compiler/run-grammar-tests.ps1`

For LLVM lowering or end-to-end execution:

- build with `make compile-core`
- run `compiler/run-grammar-tests.ps1`
- compile a focused sample through `compiler/exec.bat`

Useful commands:

- `Set-Location compiler; make compile-core`
- `Set-Location compiler; .\run-grammar-tests.ps1`
- `cmd /d /c "call compiler\exec.bat -W path\to\sample.apollo"`

## 9. Sanity Checklist

Before calling the feature done, check all of these:

- grammar changed only if the feature truly needs new syntax
- `apollo_runtime.cpp` rejects malformed or unsupported forms early
- `visitor.cpp` has a single obvious lowering path
- declaration helpers live with the other `get...Declaration(...)` helpers
- runtime support is linked only when the feature actually requires it
- at least one pass and one fail test cover the new behavior

That path keeps new features from getting trapped halfway between syntax, validation, and lowering.