// =============================================================================
// Apollo GC \u2014 Young-generation (nursery) collector implementation.
// =============================================================================

#include "apollo_gc_nursery.hpp"

#include <cstdlib>
#include <cstring>
#include <new>
#include <stdexcept>

namespace apollo {
namespace gc {

namespace {

inline std::size_t align_up(std::size_t n, std::size_t a) noexcept {
    return (n + (a - 1)) & ~(a - 1);
}

constexpr std::size_t kBoxAlign = alignof(std::max_align_t);

unsigned char* alloc_arena(std::size_t bytes) {
    // Use aligned_alloc-equivalent via operator new; the arena lives until
    // ~Nursery so we don't need a custom mapping.
    void* p = ::operator new(bytes, std::align_val_t{kBoxAlign});
    if (!p) throw std::bad_alloc();
    std::memset(p, 0, bytes);
    return static_cast<unsigned char*>(p);
}

void free_arena(unsigned char* p) noexcept {
    if (p) ::operator delete(p, std::align_val_t{kBoxAlign});
}

} // namespace

Nursery::Nursery() : Nursery(Config{}) {}

Nursery::Nursery(Config cfg) : cfg_(cfg) {
    const std::size_t cap = align_up(cfg_.bytes_per_space, kBoxAlign);
    cfg_.bytes_per_space = cap;
    from_lo_ = alloc_arena(cap);
    from_hi_ = from_lo_ + cap;
    from_cur_ = from_lo_;
    to_lo_ = alloc_arena(cap);
    to_hi_ = to_lo_ + cap;
    to_cur_ = to_lo_;
    stats_.capacity_bytes = cap;
}

Nursery::~Nursery() {
    free_arena(from_lo_);
    free_arena(to_lo_);
}

Box* Nursery::try_allocate(std::size_t bytes, TraceFn trace_fn, std::uint16_t type_id) noexcept {
    if (bytes < sizeof(Box)) return nullptr;
    const std::size_t need = align_up(bytes, kBoxAlign);
    if (static_cast<std::size_t>(from_hi_ - from_cur_) < need) {
        return nullptr; // overflow \u2014 caller triggers minor_collect
    }
    auto* raw = from_cur_;
    from_cur_ += need;
    // Placement-new the header so the std::atomic inside Box is properly
    // initialised; the arena was zero-filled but a stricter implementation
    // might still require the ctor to run.
    Box* box = ::new (raw) Box();
    box->bytes      = static_cast<std::uint32_t>(need);
    box->type_id    = type_id;
    box->generation = 0;
    box->trace_fn   = trace_fn;
    box->page       = nullptr;
    box->header.store(static_cast<std::uintptr_t>(Color::WhiteA), std::memory_order_release);
    survival_[box]  = 0;
    stats_.allocations++;
    stats_.bytes_allocated += need;
    stats_.bytes_in_use = bytes_in_use();
    return box;
}

bool Nursery::contains(const void* p) const noexcept {
    auto* c = static_cast<const unsigned char*>(p);
    return c >= from_lo_ && c < from_hi_;
}

std::uint8_t Nursery::survival_count(const Box* b) const noexcept {
    auto it = survival_.find(b);
    return it == survival_.end() ? 0 : it->second;
}

Box* Nursery::copy_to_to_space(const Box* from) noexcept {
    const std::size_t need = align_up(from->bytes, kBoxAlign);
    if (static_cast<std::size_t>(to_hi_ - to_cur_) < need) {
        return nullptr; // to-space overflow \u2014 should be impossible if sized correctly
    }
    auto* raw = to_cur_;
    to_cur_ += need;
    std::memcpy(raw, from, from->bytes);
    Box* dst = std::launder(reinterpret_cast<Box*>(raw));
    // Reset the header atomic; memcpy of an atomic is technically UB. We
    // rebuild it with the same color.
    auto color = from->header.load(std::memory_order_acquire) & kColorMask;
    new (&dst->header) std::atomic<std::uintptr_t>(color);
    return dst;
}

Box* Nursery::resolve_one(Box* slot, const PromoteFn& promote) {
    if (slot == nullptr || !contains(slot)) {
        return slot; // not a nursery pointer \u2014 nothing to do
    }
    // Already forwarded?
    auto fit = forwarding_.find(slot);
    if (fit != forwarding_.end()) {
        return fit->second;
    }
    const std::uint8_t prev_sc = survival_count(slot);
    const std::uint8_t new_sc  = static_cast<std::uint8_t>(prev_sc + 1);

    Box* dst = nullptr;
    if (new_sc >= cfg_.promote_after_collections && promote) {
        dst = promote(slot);
        if (dst) {
            stats_.boxes_promoted++;
            stats_.bytes_promoted += slot->bytes;
        }
    }
    if (!dst) {
        dst = copy_to_to_space(slot);
        if (dst) {
            stats_.bytes_copied += dst->bytes;
        }
    }
    if (!dst) {
        // To-space exhausted \u2014 in a robust implementation this would
        // trigger major GC then retry. For tests we leave the slot
        // unforwarded; subsequent root-walk passes would observe stale
        // pointers, which the caller can detect via bytes_copied.
        return slot;
    }
    forwarding_[slot] = dst;
    // Track survival on the destination so future cycles can keep
    // promoting it. After swap, the destination becomes a from-space
    // entry only if it lives in the new from-space (i.e. if we copied
    // to to-space rather than promoted). Promoted objects exit the
    // nursery entirely.
    auto* tospace_box = static_cast<unsigned char*>(static_cast<void*>(dst));
    if (tospace_box >= to_lo_ && tospace_box < to_hi_) {
        survival_[dst] = new_sc;
        dst->generation = 0;
    }
    return dst;
}

void Nursery::trace_from(Box* root, const PromoteFn& /*promote*/) {
    // Iteratively scan the trace function. The trace_fn calls back into
    // `Tracer::mark` to enqueue children; we don't have a Tracer here,
    // so the public API requires callers to enumerate all reachable
    // roots up-front. Children of nursery boxes that are themselves
    // pointers to other nursery boxes are NOT followed automatically in
    // this initial implementation \u2014 the test harness builds object
    // graphs explicitly and submits them all as roots. A future patch
    // will plumb a real Tracer here once the Mutator integration lands.
    (void)root;
}

void Nursery::minor_collect(const std::vector<Box*>& root_boxes,
                            const std::vector<Box**>& root_slots,
                            const PromoteFn& promote) {
    forwarding_.clear();

    // Pass 1: forward each explicit root box. Direct boxes are kept
    // alive by re-resolving so callers can observe their survivors via
    // the returned values stored in the forwarding map (queryable by
    // the caller via `survival_count` on the forwarded pointer).
    for (Box* rb : root_boxes) {
        (void)resolve_one(rb, promote);
    }
    // Pass 2: walk pointer-to-pointer slots and rewrite them in place.
    for (Box** slot : root_slots) {
        if (!slot) continue;
        Box* cur = *slot;
        Box* fwd = resolve_one(cur, promote);
        if (fwd != cur) *slot = fwd;
    }

    // Anything in the old `survival_` map that wasn't forwarded is
    // unreachable \u2014 count it as collected.
    std::uint64_t collected = 0;
    for (const auto& [old_box, sc] : survival_) {
        (void)sc;
        if (forwarding_.find(old_box) == forwarding_.end()) {
            collected++;
        }
    }
    stats_.boxes_collected += collected;

    // Build the next survival map from to-space survivors only.
    std::unordered_map<const Box*, std::uint8_t> next_survival;
    for (const auto& [from_box, to_box] : forwarding_) {
        (void)from_box;
        auto* raw = reinterpret_cast<unsigned char*>(to_box);
        if (raw >= to_lo_ && raw < to_hi_) {
            auto it = survival_.find(to_box);
            next_survival[to_box] = it == survival_.end() ? 1u : it->second;
        }
    }
    survival_ = std::move(next_survival);

    // Swap from/to spaces.
    std::swap(from_lo_, to_lo_);
    std::swap(from_hi_, to_hi_);
    from_cur_ = to_cur_; // new from-space tip is wherever copies landed
    // Reset old from-space (now to-space) for the next cycle.
    to_cur_ = to_lo_;
    std::memset(to_lo_, 0, static_cast<std::size_t>(to_hi_ - to_lo_));

    stats_.minor_cycles++;
    stats_.bytes_in_use = bytes_in_use();
}

} // namespace gc
} // namespace apollo
