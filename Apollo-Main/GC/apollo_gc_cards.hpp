// =============================================================================
// Apollo GC — Card table (write-barrier remembered set).
// =============================================================================
//
// A card table is the cheapest known way to remember "which heap regions
// contain pointers that were written during the last cycle". Each card
// covers `kCardBytes` of address space; the card table is a flat byte
// array indexed by `(slot_address >> kCardShift)`. The write barrier
// dirties one byte per store; the collector scans dirty cards to find
// candidate roots.
//
// In a generational collector, dirty cards are the *only* old-generation
// regions the minor GC scans (it does not walk the whole old heap). We
// don't yet have a nursery in Apollo, so cards are currently an *unused*
// data point — but they're populated and visible to instrumentation,
// and the future minor collector will consume them.
//
// Design choices
// --------------
// * Byte-granular ("clean" = 0, "dirty" = 1) instead of bit-granular,
//   because a single byte write is faster than RMW and avoids
//   false-sharing risk on adjacent cards.
// * 512-byte card size — Go's choice. Wider cards reduce table size at
//   the cost of more scan work per dirty card; 512 B is the sweet spot.
// * The table is allocated lazily once we know the heap's address
//   range. We use a single contiguous virtual-address-space region as
//   the heap so the table is a flat array; if the heap ever becomes
//   discontiguous we'll need a two-level (chunk-of-cards) table.
//
// Concurrency
// -----------
// Card writes are atomic-relaxed byte stores. There is *no* ordering
// guarantee between the slot store and the card mark — the runtime
// inserts a fence on the way out of any GC phase so a marker that
// observes a phase transition also observes both. Outside of GC,
// card-table writes are pure noise that nobody reads.

#ifndef APOLLO_GC_CARDS_HPP
#define APOLLO_GC_CARDS_HPP

#include <atomic>
#include <cstddef>
#include <cstdint>
#include <mutex>
#include <vector>

namespace apollo {
namespace gc {

class CardTable {
public:
    // Card geometry. Configurable at compile time only; runtime would
    // require re-sizing the table.
    static constexpr std::uint32_t kCardShift = 9;       // log2(512)
    static constexpr std::uint32_t kCardBytes = 1u << kCardShift;
    static constexpr std::uint8_t  kClean    = 0;
    static constexpr std::uint8_t  kDirty    = 1;

    CardTable() = default;

    // Register a heap region the table should cover. The region [lo, hi)
    // must be contiguous. May be called multiple times to grow the
    // covered range; subsequent registrations extend `hi_` upward
    // (gaps before `lo_` are not currently supported — the lowest
    // registered address pins the base).
    void register_range(const void* lo, const void* hi);

    // Returns true if `addr` falls inside a registered region.
    bool covers(const void* addr) const noexcept;

    // Mark the card that contains `addr` as dirty.
    void mark_dirty(const void* addr) noexcept;

    // True iff the card for `addr` is currently dirty.
    bool is_dirty(const void* addr) const noexcept;

    // Clear all dirty bits. Called by the collector at the end of a
    // cycle once the dirty regions have been scanned.
    void clear_all() noexcept;

    // Iterate every dirty card and pass its base address to `fn`.
    // O(table size) — should be called from a single thread.
    template <typename Fn>
    void for_each_dirty(Fn&& fn) const {
        std::lock_guard<std::mutex> lk(table_mtx_);
        if (cards_.empty()) return;
        std::uintptr_t base = lo_;
        for (std::size_t i = 0; i < cards_.size(); ++i) {
            if (cards_[i].load(std::memory_order_relaxed) == kDirty) {
                fn(reinterpret_cast<const void*>(base + (i << kCardShift)));
            }
        }
    }

    // Diagnostic: number of dirty cards.
    std::size_t dirty_count() const noexcept;

private:
    mutable std::mutex table_mtx_;
    std::uintptr_t lo_ = 0;
    std::uintptr_t hi_ = 0;
    // Atomic so the write barrier's relaxed stores are well-defined
    // when interleaved with the collector's reads. We do not bother
    // with stronger orderings — a missed dirty-bit only delays
    // recognition by one cycle, never produces a soundness bug.
    std::vector<std::atomic<std::uint8_t>> cards_;

    std::size_t index_of(const void* addr) const noexcept;
    void grow_to(std::uintptr_t new_hi);
};

// Process-global card table used by the runtime's write barrier.
// Lazily initialised on first use.
CardTable& global_card_table() noexcept;

} // namespace gc
} // namespace apollo

#endif // APOLLO_GC_CARDS_HPP
