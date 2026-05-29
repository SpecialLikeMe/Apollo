// =============================================================================
// Apollo GC \u2014 Young-generation (nursery) collector.
// =============================================================================
//
// This is the Workstream A landing point: a self-contained semi-space copying
// nursery that allocates small managed boxes via a bump pointer, copies
// survivors to to-space on a minor collection, and "promotes" objects to a
// caller-supplied old-generation allocator after they survive
// `Config::promote_after_collections` minor cycles.
//
// The nursery is intentionally decoupled from `apollo_gc_concurrent` so it
// can be tested in isolation and integrated incrementally. It reuses the
// public `Box` header (color + generation + trace_fn) from
// `apollo_gc_concurrent.hpp` so future integration is a matter of wiring the
// Mutator allocator and the existing card table's remembered set, not a
// header redesign.
//
// Concurrency
// -----------
// The nursery is currently single-threaded: callers serialise allocation and
// collection. Multi-mutator nursery support (per-mutator TLABs carved off
// the shared arena) is left for future work; the current shape is a 1-thread
// arena with explicit `minor_collect` entry points, which is sufficient for
// correctness tests and for codegen experiments.
//
// Forwarding
// ----------
// Forwarding pointers are stored in a side table (open-addressed hash from
// from-space `Box*` to to-space/tenured `Box*`) so we do not need to widen
// the existing `Box` header. This trades cache-locality for zero impact on
// the concurrent collector's hot-path code.

#ifndef APOLLO_GC_NURSERY_HPP
#define APOLLO_GC_NURSERY_HPP

#include "apollo_gc_concurrent.hpp"

#include <cstddef>
#include <cstdint>
#include <functional>
#include <unordered_map>
#include <vector>

namespace apollo {
namespace gc {

// User-supplied "promote me to the old generation" callback. The nursery
// invokes this when a surviving box has met or exceeded the promotion
// threshold. The callback is responsible for allocating `bytes` of
// managed storage in the old generation, copying the payload, and
// returning the new `Box*` (with `generation = 1` already set by the
// callback). Returning `nullptr` causes the nursery to keep the object
// in to-space for one more cycle.
using PromoteFn = std::function<Box*(const Box* from)>;

struct NurseryStats {
    std::uint64_t allocations            = 0;
    std::uint64_t minor_cycles           = 0;
    std::uint64_t bytes_allocated        = 0;
    std::uint64_t bytes_copied           = 0;
    std::uint64_t bytes_promoted         = 0;
    std::uint64_t boxes_promoted         = 0;
    std::uint64_t boxes_collected        = 0;
    std::size_t   bytes_in_use           = 0; // current from-space high-water
    std::size_t   capacity_bytes         = 0; // per-space arena size
};

class Nursery {
public:
    struct Config {
        // Bytes per semi-space (so the total nursery footprint is 2x).
        std::size_t bytes_per_space = 256 * 1024;
        // Promotion threshold: survivors with `survival_count >=
        // promote_after_collections` are handed to `PromoteFn` on the
        // next minor cycle.
        std::uint8_t promote_after_collections = 2;
    };

    Nursery();
    explicit Nursery(Config cfg);
    ~Nursery();

    Nursery(const Nursery&) = delete;
    Nursery& operator=(const Nursery&) = delete;

    // Bump-pointer allocate `bytes` (must include the Box header). Returns
    // nullptr on overflow; the caller is expected to trigger
    // `minor_collect` and retry.
    Box* try_allocate(std::size_t bytes, TraceFn trace_fn, std::uint16_t type_id) noexcept;

    // Returns true if `p` falls inside the current from-space arena.
    bool contains(const void* p) const noexcept;

    // Run a minor collection. The caller passes the root set (boxes and
    // pointer-to-pointer slots inside non-nursery objects). For each
    // surviving from-space box we either:
    //   (a) copy into to-space, bump survival_count, or
    //   (b) call `promote` and store the returned old-gen pointer.
    // The original slot pointers in `root_slots` are updated in place so
    // they continue to refer to the survivor after the swap.
    void minor_collect(const std::vector<Box*>& root_boxes,
                       const std::vector<Box**>& root_slots,
                       const PromoteFn& promote);

    // Total bytes currently allocated in the live (from-space) arena.
    std::size_t bytes_in_use() const noexcept { return static_cast<std::size_t>(from_cur_ - from_lo_); }

    // Per-space capacity. Total nursery footprint is `2 * capacity()`.
    std::size_t capacity() const noexcept { return cfg_.bytes_per_space; }

    NurseryStats stats() const noexcept { return stats_; }

    // Inspect the survival count of a box (0 for objects that haven't yet
    // survived a minor cycle). Useful for tests; returns 0 if `b` is not
    // currently a nursery box.
    std::uint8_t survival_count(const Box* b) const noexcept;

private:
    Config cfg_;
    unsigned char* from_lo_ = nullptr;
    unsigned char* from_hi_ = nullptr;
    unsigned char* from_cur_ = nullptr;
    unsigned char* to_lo_ = nullptr;
    unsigned char* to_hi_ = nullptr;
    unsigned char* to_cur_ = nullptr;

    // Per-box survival counter \u2014 sized to from-space; cleared on each cycle.
    // Keyed by from-space `Box*` (a hash map keeps the index sparse so a
    // partly-populated nursery costs nothing extra).
    std::unordered_map<const Box*, std::uint8_t> survival_;
    // Forwarding map populated during minor_collect. Cleared between cycles.
    std::unordered_map<const Box*, Box*> forwarding_;

    NurseryStats stats_{};

    Box* copy_to_to_space(const Box* from) noexcept;
    void trace_from(Box* root, const PromoteFn& promote);
    Box* resolve_one(Box* slot, const PromoteFn& promote);
};

} // namespace gc
} // namespace apollo

#endif // APOLLO_GC_NURSERY_HPP
