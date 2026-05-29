// =============================================================================
// Apollo codegen — barrier intrinsic emission (LLVM backend).
// =============================================================================
//
// Thin wrappers that emit `call` instructions to the concurrent-GC
// runtime entry points. We declare each entry point exactly once per
// Module via `declareGcRuntimeIntrinsics`, then `emit_*` calls grab
// the FunctionCallee and emit a CallInst.
//
// IMPORTANT: this file deliberately uses ONLY the LLVM C++ API and
// nothing from the rest of the Apollo compiler. The point is that
// downstream codegen passes can pull in `barriers.h` and not have to
// drag any state through. The runtime ABI is declared in
// `apollo_gc_concurrent.hpp` and *must* match the signatures we
// declare below; if you change one you must change both.

#include "barriers.h"

#include <llvm/IR/Function.h>
#include <llvm/IR/IRBuilder.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/Type.h>

namespace apollo::codegen {

namespace {

// Get a function declaration by name, inserting a declaration if
// missing. Centralised so signature drift is a single-point edit.
llvm::FunctionCallee getOrDeclare(llvm::Module* mod, const char* name,
                                  llvm::FunctionType* fty) {
    return mod->getOrInsertFunction(name, fty);
}

// Construct the FunctionType for each runtime ABI symbol. Kept in one
// place so the layout in the comment matches the layout in code.
llvm::FunctionType* tyAttach(llvm::LLVMContext& ctx) {
    // void* apollo_gc_concurrent_attach();
    return llvm::FunctionType::get(llvm::PointerType::getUnqual(ctx), {}, false);
}

llvm::FunctionType* tySafepoint(llvm::LLVMContext& ctx) {
    // void apollo_gc_concurrent_safepoint(void* mutator);
    return llvm::FunctionType::get(
        llvm::Type::getVoidTy(ctx),
        {llvm::PointerType::getUnqual(ctx)},
        false);
}

llvm::FunctionType* tyWriteBarrier(llvm::LLVMContext& ctx) {
    // void apollo_gc_concurrent_write_barrier(void* mutator, void** slot, void* value);
    auto* ptr = llvm::PointerType::getUnqual(ctx);
    return llvm::FunctionType::get(llvm::Type::getVoidTy(ctx), {ptr, ptr, ptr}, false);
}

} // namespace

ModuleHandle declareGcRuntimeIntrinsics(ModuleHandle mod_h) {
    auto* mod = static_cast<llvm::Module*>(mod_h);
    if (!mod) return mod_h;
    auto& ctx = mod->getContext();
    // Force-declare all three entry points. Subsequent emits hit the
    // cache fast path inside Module::getOrInsertFunction.
    (void)getOrDeclare(mod, "apollo_gc_concurrent_attach",        tyAttach(ctx));
    (void)getOrDeclare(mod, "apollo_gc_concurrent_safepoint",     tySafepoint(ctx));
    (void)getOrDeclare(mod, "apollo_gc_concurrent_write_barrier", tyWriteBarrier(ctx));
    return mod_h;
}

ValueHandle emit_attach_mutator(IRBuilderHandle builder_h) {
    auto* b = static_cast<llvm::IRBuilder<>*>(builder_h);
    auto* mod = b->GetInsertBlock()->getParent()->getParent();
    auto callee = getOrDeclare(mod, "apollo_gc_concurrent_attach", tyAttach(mod->getContext()));
    return b->CreateCall(callee, {}, "apollo.gc.mutator");
}

void emit_safepoint_poll(IRBuilderHandle builder_h, ValueHandle mutator_or_null) {
    auto* b = static_cast<llvm::IRBuilder<>*>(builder_h);
    auto* mod = b->GetInsertBlock()->getParent()->getParent();
    auto& ctx = mod->getContext();
    llvm::Value* m = static_cast<llvm::Value*>(mutator_or_null);
    if (!m) m = static_cast<llvm::Value*>(emit_attach_mutator(builder_h));
    auto callee = getOrDeclare(mod, "apollo_gc_concurrent_safepoint", tySafepoint(ctx));
    b->CreateCall(callee, {m});
}

void emit_write_barrier(IRBuilderHandle builder_h, ValueHandle mutator_or_null,
                        ValueHandle slot, ValueHandle value) {
    auto* b = static_cast<llvm::IRBuilder<>*>(builder_h);
    auto* mod = b->GetInsertBlock()->getParent()->getParent();
    auto& ctx = mod->getContext();
    llvm::Value* m = static_cast<llvm::Value*>(mutator_or_null);
    if (!m) m = static_cast<llvm::Value*>(emit_attach_mutator(builder_h));
    auto callee = getOrDeclare(mod, "apollo_gc_concurrent_write_barrier", tyWriteBarrier(ctx));
    b->CreateCall(callee,
                  {m,
                   static_cast<llvm::Value*>(slot),
                   static_cast<llvm::Value*>(value)});
}

} // namespace apollo::codegen
