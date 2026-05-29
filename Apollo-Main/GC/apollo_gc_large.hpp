// =============================================================================
// Apollo GC — Large-object allocator.
// =============================================================================
//
// Allocations at or above `kLargeObjectThreshold` are too big to live
// inside a normal page (a single page is 64 KiB by default). They get
// their own dedicated "large span" — a virtual allocation sized
// exactly for the object plus its Box header, mmap'd / VirtualAlloc'd
// directly from the OS.
//
// Large spans are tracked in a flat vector inside the runtime and
// share the same mark/sweep semantics as page-resident boxes: the
// marker walks the span (which contains exactly one Box*) and
// shade-promotes; the sweeper observes the survived color and either
// frees the span (color == sweep_white) or keeps it.
//
// Choosing the threshold: 32 KiB matches Go's `_MaxSmallSize` and
// strikes a balance between "small enough that the size class still
// fits a page" and "large enough that direct OS allocation makes sense".

#ifndef APOLLO_GC_LARGE_HPP
#define APOLLO_GC_LARGE_HPP

#include "apollo_gc_concurrent.hpp"

#include <atomic>
#include <cstddef>
#include <cstdint>
#include <mutex>
#include <vector>

namespace apollo {
namespace gc {

// Threshold at which we switch from "small allocation in a page" to
// "dedicated large span".
constexpr std::size_t kLargeObjectThreshold = 32 * 1024;

// A LargeSpan owns exactly one Box (plus its payload). Lifetime is
// tied to the Box's GC color: when sweep observes a white large span,
// it frees the span.
struct LargeSpan {
    Box*        box        = nullptr;     // payload start = (Box*)(box+1)
    std::size_t span_bytes = 0;            // total OS allocation, including Box header
    void*       os_block   = nullptr;     // pointer returned by aligned_alloc / VirtualAlloc
    std::atomic<bool> swept{false};
};

class LargeAllocator {
public:
    // Allocate a large object. Returns the Box* or nullptr on OOM.
    // The Box is registered with the runtime's allocation color so
    // marks/sweeps see it like any other heap object.
    Box* allocate(Mutator& m, std::size_t payload_bytes,
                  TraceFn trace_fn, std::uint16_t type_id) noexcept;

    // Sweep: walks every large span, frees the ones whose box matches
    // `white`. Returns the number of bytes freed.
    std::size_t sweep(Color white) noexcept;

    // Iterate every live large span (for stats / heap walking).
    template <typename Fn>
    void for_each(Fn&& fn) const {
        std::lock_guard<std::mutex> lk(mtx_);
        for (auto* s : spans_) if (s) fn(s);
    }

    std::size_t live_bytes() const noexcept;
    std::size_t live_span_count() const noexcept;

private:
    mutable std::mutex mtx_;
    std::vector<LargeSpan*> spans_;
};

// Process-global instance used by the C ABI.
LargeAllocator& global_large_allocator() noexcept;

// Helper used by `Mutator::allocate` to route large requests to the
// dedicated allocator. Returns nullptr if `payload_bytes` is below
// the threshold (caller should keep its TLAB path).
Box* try_large_allocate(Mutator& m, std::size_t payload_bytes,
                        TraceFn trace_fn, std::uint16_t type_id) noexcept;

} // namespace gc
} // namespace apollo

#endif // APOLLO_GC_LARGE_HPP
