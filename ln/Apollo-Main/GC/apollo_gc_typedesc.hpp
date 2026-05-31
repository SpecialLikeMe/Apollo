// =============================================================================
// Apollo GC — Type descriptors.
// =============================================================================
//
// Codegen needs to tell the GC how to trace the managed-pointer fields
// of every composite Apollo type. The historical path baked the trace
// function directly into each allocation site (`trace_fn` argument to
// `apollo_gc_concurrent_alloc`). That works, but means:
//
//   * Every allocation site emits a fresh per-type trace function.
//   * The GC can't query the layout of an object after the fact (e.g.
//     when scanning a card or supporting object motion).
//   * Reflection / serialization layers have no way to discover
//     pointer offsets at runtime.
//
// A *TypeDescriptor* solves all three. Every Apollo composite type with
// a non-zero number of managed fields gets exactly one descriptor,
// registered once at module initialization. Allocations then pass
// `type_id` to the GC, which looks up the descriptor and uses its
// pointer-offset table to drive a generic trace function.
//
// Descriptors are immutable after registration. The registry is a
// monotonic flat array indexed by `type_id`; lookups are a single
// branch + load.

#ifndef APOLLO_GC_TYPEDESC_HPP
#define APOLLO_GC_TYPEDESC_HPP

#include "apollo_gc_concurrent.hpp"

#include <atomic>
#include <cstddef>
#include <cstdint>
#include <mutex>
#include <vector>

namespace apollo {
namespace gc {

// A finalizer runs at the start of sweep on any object that has
// `kFinalizerBit` set in its header. Finalizers are called from the
// sweeper thread on a single object at a time; they must not allocate
// or call back into Apollo code that allocates. (This matches Go's
// finalizer contract.) Set `finalizer = nullptr` for types without one.
using FinalizeFn = void (*)(void* payload);

struct TypeDescriptor {
    std::uint16_t type_id        = 0;
    std::uint32_t size_bytes     = 0;   // payload size (NOT including Box header)
    std::uint32_t align_bytes    = 1;
    std::uint16_t pointer_offset_count = 0;
    // Offsets (in bytes, from the start of the payload) at which a
    // managed `Box*` lives. The generic trace function walks this
    // list and shades each child.
    const std::uint32_t* pointer_offsets = nullptr;
    FinalizeFn finalizer         = nullptr;
    // Optional user-supplied trace override. If null, the GC uses
    // `generic_trace`. Useful for variable-length types (vec/array)
    // that must walk their elements dynamically.
    TraceFn custom_trace          = nullptr;
    // Optional human-readable name for diagnostics.
    const char* name             = nullptr;
};

// Process-wide registry. Thread-safe registration; lock-free lookup
// once the registry has been frozen.
class TypeRegistry {
public:
    // Register a descriptor. `desc.type_id` must be unique. Returns
    // false if a descriptor with the same type_id is already present.
    bool register_type(const TypeDescriptor& desc);

    // Look up by id. Returns nullptr if no descriptor exists.
    const TypeDescriptor* lookup(std::uint16_t type_id) const noexcept;

    // Number of registered types.
    std::size_t size() const noexcept;

private:
    mutable std::mutex mtx_;
    // Sparse table: indexed by type_id. We tolerate gaps because most
    // Apollo modules use a dense numbering anyway.
    std::vector<const TypeDescriptor*> table_;
};

TypeRegistry& global_type_registry() noexcept;

// Generic trace function. Looks up the box's `type_id`, then walks
// the descriptor's pointer_offsets calling `tracer->mark(child)` on
// each non-null slot. Safe to assign as `Box::trace_fn`.
void generic_trace(Box* self, void* visitor) noexcept;

// Convenience: allocate a managed box for `type_id`, using its
// registered size and trace function. Returns nullptr on OOM.
// This is the entry point codegen should prefer over manually-built
// trace_fn arguments.
Box* allocate_typed(Mutator& m, std::uint16_t type_id) noexcept;

extern "C" {
    // C ABI for codegen.
    void  apollo_gc_register_type(const TypeDescriptor* desc);
    void* apollo_gc_alloc_typed(void* mutator, std::uint16_t type_id);
    void  apollo_gc_run_finalizer(void* box); // used by the sweeper
}

} // namespace gc
} // namespace apollo

#endif // APOLLO_GC_TYPEDESC_HPP
