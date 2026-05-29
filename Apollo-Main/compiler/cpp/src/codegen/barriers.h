// =============================================================================
// Apollo codegen — write-barrier and safepoint helpers.
// =============================================================================
//
// These are the *only* two ABI surfaces the production-grade Apollo
// codegen pipeline needs in order to integrate with the concurrent
// tri-color GC defined in `Apollo-Main/GC/apollo_gc_concurrent.hpp`:
//
//   1. A Dijkstra-style write barrier on every store of a managed
//      pointer slot. This is the source-language semantic invariant
//      that lets the mark phase avoid black→white edges.
//
//   2. A safepoint poll inserted at every loop back-edge and after
//      every function call return. The poll is what allows the
//      collector to coordinate STW phases without descheduling threads.
//
// The actual implementations live in `apollo_gc_concurrent.{hpp,cpp}`.
// This header is the C++ interface used by the LLVM IR emitter to
// generate calls to those runtime entry points. We keep it isolated
// here (rather than scattered through the existing codegen files) so
// that future codegen backends (Cranelift, direct-x86, MIR
// interpreter, etc.) can all share the same intrinsic surface.
//
// We use a `void*` typed `IRBuilderHandle` rather than an LLVM type so
// this header has *zero* LLVM include dependency. The .cpp file casts
// the handle back to `llvm::IRBuilder<>*`. If a non-LLVM backend ever
// shows up, it only needs to provide its own implementation file.

#ifndef APOLLO_CODEGEN_BARRIERS_H
#define APOLLO_CODEGEN_BARRIERS_H

namespace apollo::codegen {

// Opaque handle around `llvm::IRBuilder<>*`. The .cpp casts.
using IRBuilderHandle = void*;
using ValueHandle     = void*;   // llvm::Value*
using ModuleHandle    = void*;   // llvm::Module*

// One-time setup: declare the runtime entry points in `mod` if they
// don't already exist. Idempotent. Returns the module handle for
// chaining.
ModuleHandle declareGcRuntimeIntrinsics(ModuleHandle mod);

// Emit a call to the concurrent-GC write barrier:
//
//    apollo_gc_concurrent_write_barrier(mutator_tls, slot, value)
//
// before the actual `store` that the caller will emit. `mutator` is
// optional — if nullptr we look it up via the thread-local helper
// `apollo_gc_concurrent_attach()`. The barrier marks `value` grey if
// the GC is in the mark phase; otherwise it's a single relaxed read +
// branch, so the cost outside collection is roughly one cache line.
void emit_write_barrier(IRBuilderHandle builder,
                        ValueHandle mutator_or_null,
                        ValueHandle slot,
                        ValueHandle value);

// Emit a soft safepoint poll:
//
//    apollo_gc_concurrent_safepoint(mutator_tls)
//
// at the current IRBuilder insertion point. Backend should insert
// these at:
//   * each loop header (or back-edge),
//   * after every Call terminator,
//   * function entry of any function that doesn't return immediately.
void emit_safepoint_poll(IRBuilderHandle builder,
                         ValueHandle mutator_or_null);

// Convenience: emit the "attach this thread" call returning a Mutator*.
// Caller can stash this in an SSA value for use by subsequent barrier
// emits, avoiding TLS lookups in hot loops.
ValueHandle emit_attach_mutator(IRBuilderHandle builder);

} // namespace apollo::codegen

#endif
