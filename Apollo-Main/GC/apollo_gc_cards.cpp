// =============================================================================
// CardTable implementation.
// =============================================================================

#include "apollo_gc_cards.hpp"
#include "apollo_gc_concurrent.hpp"

#include <algorithm>
#include <cstdlib>

namespace apollo {
namespace gc {

namespace {
constexpr std::size_t kInitialCards = 1024; // 1024 × 512 B = 512 KiB
} // namespace

CardTable& global_card_table() noexcept {
    // Function-local static: zero-init guaranteed, thread-safe in C++20.
    static CardTable inst;
    return inst;
}

std::size_t CardTable::index_of(const void* addr) const noexcept {
    auto a = reinterpret_cast<std::uintptr_t>(addr);
    if (a < lo_) return SIZE_MAX;
    std::size_t idx = (a - lo_) >> kCardShift;
    if (idx >= cards_.size()) return SIZE_MAX;
    return idx;
}

void CardTable::grow_to(std::uintptr_t new_hi) {
    if (new_hi <= hi_) return;
    std::size_t want_cards = (new_hi - lo_ + kCardBytes - 1) >> kCardShift;
    want_cards = std::max<std::size_t>(want_cards, kInitialCards);
    if (cards_.size() < want_cards) {
        std::vector<std::atomic<std::uint8_t>> bigger(want_cards);
        for (std::size_t i = 0; i < cards_.size(); ++i) {
            bigger[i].store(cards_[i].load(std::memory_order_relaxed),
                            std::memory_order_relaxed);
        }
        cards_ = std::move(bigger);
    }
    hi_ = lo_ + (static_cast<std::uintptr_t>(want_cards) << kCardShift);
}

void CardTable::register_range(const void* lo_p, const void* hi_p) {
    auto lo = reinterpret_cast<std::uintptr_t>(lo_p);
    auto hi = reinterpret_cast<std::uintptr_t>(hi_p);
    std::lock_guard<std::mutex> lk(table_mtx_);
    if (cards_.empty()) {
        lo_ = lo;
        hi_ = lo;
        grow_to(hi);
        return;
    }
    if (lo < lo_) {
        // Caller registered a lower region than the original base —
        // not currently supported; ignore. (Could rebuild the table.)
        return;
    }
    if (hi > hi_) grow_to(hi);
}

bool CardTable::covers(const void* addr) const noexcept {
    auto a = reinterpret_cast<std::uintptr_t>(addr);
    return a >= lo_ && a < hi_;
}

void CardTable::mark_dirty(const void* addr) noexcept {
    std::size_t i = index_of(addr);
    if (i == SIZE_MAX) return;
    cards_[i].store(kDirty, std::memory_order_relaxed);
}

bool CardTable::is_dirty(const void* addr) const noexcept {
    std::size_t i = index_of(addr);
    if (i == SIZE_MAX) return false;
    return cards_[i].load(std::memory_order_relaxed) == kDirty;
}

void CardTable::clear_all() noexcept {
    std::lock_guard<std::mutex> lk(table_mtx_);
    for (auto& c : cards_) c.store(kClean, std::memory_order_relaxed);
}

std::size_t CardTable::dirty_count() const noexcept {
    std::lock_guard<std::mutex> lk(table_mtx_);
    std::size_t n = 0;
    for (auto& c : cards_) if (c.load(std::memory_order_relaxed) == kDirty) ++n;
    return n;
}

// Out-of-line stub called by the inline write_barrier in
// apollo_gc_concurrent.hpp. Kept here so the inline barrier doesn't
// need to include the full CardTable interface (and so the call
// stays a single instruction at the use site).
void note_card_dirty(const void* slot) noexcept {
    if (!slot) return;
    auto& t = global_card_table();
    if (t.covers(slot)) t.mark_dirty(slot);
}

} // namespace gc
} // namespace apollo
