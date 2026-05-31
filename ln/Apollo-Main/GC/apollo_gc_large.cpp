// =============================================================================
// LargeAllocator implementation.
// =============================================================================

#include "apollo_gc_large.hpp"
#include "apollo_gc_cards.hpp"

#include <cstdlib>
#include <cstring>
#include <new>

namespace apollo {
namespace gc {

LargeAllocator& global_large_allocator() noexcept {
    static LargeAllocator inst;
    return inst;
}

Box* LargeAllocator::allocate(Mutator& m, std::size_t payload_bytes,
                              TraceFn trace_fn, std::uint16_t type_id) noexcept {
    const std::size_t span_bytes = sizeof(Box) + payload_bytes;
    // Use posix_memalign / _aligned_malloc to guarantee Box alignment.
    void* raw = nullptr;
#if defined(_WIN32)
    raw = _aligned_malloc(span_bytes, alignof(std::max_align_t));
#else
    if (posix_memalign(&raw, alignof(std::max_align_t), span_bytes) != 0) raw = nullptr;
#endif
    if (!raw) return nullptr;
    std::memset(raw, 0, sizeof(Box));

    auto* box = ::new (raw) Box();
    box->bytes = static_cast<std::uint32_t>(span_bytes);
    box->trace_fn = trace_fn;
    box->type_id = type_id;
    box->page = nullptr; // not page-resident
    // Mark as pinned so any future moving collector knows not to
    // relocate this span. (Large objects are typically left in place
    // even in moving collectors.)
    box->set_color(m.runtime().allocation_color(), std::memory_order_release);
    auto h = box->header.load(std::memory_order_relaxed);
    box->header.store(h | 0x8u /* kPinnedBit */, std::memory_order_release);

    auto* span = new LargeSpan{};
    span->box = box;
    span->span_bytes = span_bytes;
    span->os_block = raw;

    {
        std::lock_guard<std::mutex> lk(mtx_);
        spans_.push_back(span);
    }

    // Register the span's memory with the card table so future stores
    // through it dirty the right card.
    auto* lo = static_cast<unsigned char*>(raw);
    auto* hi = lo + span_bytes;
    global_card_table().register_range(lo, hi);

    return box;
}

std::size_t LargeAllocator::sweep(Color white) noexcept {
    std::size_t freed = 0;
    std::lock_guard<std::mutex> lk(mtx_);
    std::vector<LargeSpan*> survivors;
    survivors.reserve(spans_.size());
    for (auto* span : spans_) {
        if (!span || !span->box) continue;
        Color c = span->box->color();
        if (c == white) {
            freed += span->span_bytes;
            // Run finalizer if attached. We deliberately do this in
            // the sweeper context — same constraints as Go.
            // (Currently no finalizer hook is wired in; once
            // apollo_gc_typedesc.hpp's apollo_gc_run_finalizer is the
            // canonical entry, we'll call it here.)
#if defined(_WIN32)
            _aligned_free(span->os_block);
#else
            std::free(span->os_block);
#endif
            delete span;
        } else {
            survivors.push_back(span);
        }
    }
    spans_ = std::move(survivors);
    return freed;
}

std::size_t LargeAllocator::live_bytes() const noexcept {
    std::lock_guard<std::mutex> lk(mtx_);
    std::size_t n = 0;
    for (auto* s : spans_) if (s) n += s->span_bytes;
    return n;
}

std::size_t LargeAllocator::live_span_count() const noexcept {
    std::lock_guard<std::mutex> lk(mtx_);
    std::size_t n = 0;
    for (auto* s : spans_) if (s) ++n;
    return n;
}

Box* try_large_allocate(Mutator& m, std::size_t payload_bytes,
                        TraceFn trace_fn, std::uint16_t type_id) noexcept {
    if (payload_bytes < kLargeObjectThreshold) return nullptr;
    return global_large_allocator().allocate(m, payload_bytes, trace_fn, type_id);
}

} // namespace gc
} // namespace apollo
