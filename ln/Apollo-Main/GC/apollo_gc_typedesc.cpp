// =============================================================================
// TypeDescriptor / TypeRegistry implementation.
// =============================================================================

#include "apollo_gc_typedesc.hpp"

#include <cstring>

namespace apollo {
namespace gc {

TypeRegistry& global_type_registry() noexcept {
    static TypeRegistry inst;
    return inst;
}

bool TypeRegistry::register_type(const TypeDescriptor& desc) {
    std::lock_guard<std::mutex> lk(mtx_);
    if (table_.size() <= desc.type_id) table_.resize(desc.type_id + 1, nullptr);
    if (table_[desc.type_id] != nullptr) return false;
    // We assume the descriptor passed in has static lifetime. Codegen
    // emits descriptors in `.rodata` so this is fine; tests must pass
    // file/global descriptors too.
    table_[desc.type_id] = &desc;
    return true;
}

const TypeDescriptor* TypeRegistry::lookup(std::uint16_t type_id) const noexcept {
    std::lock_guard<std::mutex> lk(mtx_);
    if (type_id >= table_.size()) return nullptr;
    return table_[type_id];
}

std::size_t TypeRegistry::size() const noexcept {
    std::lock_guard<std::mutex> lk(mtx_);
    std::size_t n = 0;
    for (auto* p : table_) if (p) ++n;
    return n;
}

void generic_trace(Box* self, void* visitor) noexcept {
    if (!self || !visitor) return;
    auto* desc = global_type_registry().lookup(self->type_id);
    if (!desc) return;
    if (desc->custom_trace) { desc->custom_trace(self, visitor); return; }
    auto* tracer = static_cast<Tracer*>(visitor);
    // The payload starts immediately after the Box header. Note that
    // `TypedBox<T>` stores its payload with the same offset, so the
    // computation is the same.
    auto* payload = reinterpret_cast<unsigned char*>(self) + sizeof(Box);
    for (std::uint16_t i = 0; i < desc->pointer_offset_count; ++i) {
        std::uint32_t off = desc->pointer_offsets[i];
        Box** slot = reinterpret_cast<Box**>(payload + off);
        Box* child = *slot;
        if (child) tracer->mark(child);
    }
}

Box* allocate_typed(Mutator& m, std::uint16_t type_id) noexcept {
    auto* desc = global_type_registry().lookup(type_id);
    if (!desc) return nullptr;
    TraceFn tf = desc->custom_trace ? desc->custom_trace : generic_trace;
    return m.allocate(desc->size_bytes, tf, type_id);
}

extern "C" {

void apollo_gc_register_type(const TypeDescriptor* desc) {
    if (!desc) return;
    global_type_registry().register_type(*desc);
}

void* apollo_gc_alloc_typed(void* mutator, std::uint16_t type_id) {
    if (!mutator) return nullptr;
    auto* m = static_cast<Mutator*>(mutator);
    return allocate_typed(*m, type_id);
}

void apollo_gc_run_finalizer(void* box) {
    auto* b = static_cast<Box*>(box);
    if (!b) return;
    auto* desc = global_type_registry().lookup(b->type_id);
    if (!desc || !desc->finalizer) return;
    auto* payload = reinterpret_cast<unsigned char*>(b) + sizeof(Box);
    desc->finalizer(payload);
}

} // extern "C"

} // namespace gc
} // namespace apollo
