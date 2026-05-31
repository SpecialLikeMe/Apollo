// =============================================================================
// Generic dataflow framework for the MIR borrow checker.
// =============================================================================
//
// This is a small, dependency-free gen-kill dataflow engine. It supports
// both forward and backward analyses over the MIR CFG. The domain is a
// "bit set" — a `std::vector<std::uint64_t>` of chunks. Analyses choose
// the join operator (union for "may", intersection for "must") via the
// `JoinKind` enum.
//
// We use this for three concrete analyses:
//
//   1. MaybeInitialized   — forward, "may", over MovePath bits.
//                           Used to ask "could this place be reading
//                           garbage right now?".
//   2. DefinitelyInit     — forward, "must", over MovePath bits.
//                           Used to ask "is this place guaranteed to
//                           hold a valid value here?". The complement
//                           detects use-after-move.
//   3. LoansLive          — forward, "may", over Loan bits.
//                           At each program point gives the set of
//                           loans that are still in scope. Drives
//                           every conflict check.
//
// The engine is "block-granular" — gen/kill sets are computed per
// basic block by walking statements + terminator once. We then iterate
// over the CFG until the per-block in/out sets stabilise. For Apollo
// MIR bodies (a few dozen blocks at most) plain worklist iteration is
// optimal; we don't bother with RPO ordering tricks.

#ifndef APOLLO_MIR_BORROWCK_DATAFLOW_H
#define APOLLO_MIR_BORROWCK_DATAFLOW_H

#include "../../mir/mir.h"

#include <cstdint>
#include <vector>

namespace apollo::mir::borrowck {

// -----------------------------------------------------------------------------
// BitSet — fixed-size, value-typed bit container.
// -----------------------------------------------------------------------------
//
// We use a vector of 64-bit chunks. The number of bits is fixed at
// construction time and stored explicitly so iteration / popcount can
// be precise about trailing bits. Operations are intentionally simple
// and inlineable.
class BitSet {
public:
    BitSet() = default;
    explicit BitSet(std::size_t n_bits)
        : n_(n_bits), chunks_((n_bits + 63) / 64, 0ULL) {}

    std::size_t size() const noexcept { return n_; }

    void set(std::size_t i) {
        chunks_[i >> 6] |= (1ULL << (i & 63));
    }
    void clear(std::size_t i) {
        chunks_[i >> 6] &= ~(1ULL << (i & 63));
    }
    bool test(std::size_t i) const {
        return (chunks_[i >> 6] >> (i & 63)) & 1ULL;
    }

    // OR-in another set; return true iff this set changed. Used as the
    // fixed-point convergence signal for "may" analyses.
    bool union_inplace(const BitSet& other) {
        bool changed = false;
        for (std::size_t i = 0; i < chunks_.size(); ++i) {
            auto before = chunks_[i];
            auto after  = before | other.chunks_[i];
            chunks_[i] = after;
            changed |= (before != after);
        }
        return changed;
    }
    // AND-in another set; return true iff this set changed. Used for
    // "must" analyses (definitely-initialised).
    bool intersect_inplace(const BitSet& other) {
        bool changed = false;
        for (std::size_t i = 0; i < chunks_.size(); ++i) {
            auto before = chunks_[i];
            auto after  = before & other.chunks_[i];
            chunks_[i] = after;
            changed |= (before != after);
        }
        return changed;
    }
    // Subtract bits set in `kill`. Used by the per-statement transfer
    // function: `out = (in - kill) | gen`.
    void subtract_inplace(const BitSet& kill) {
        for (std::size_t i = 0; i < chunks_.size(); ++i)
            chunks_[i] &= ~kill.chunks_[i];
    }
    void fill() {
        for (auto& c : chunks_) c = ~0ULL;
        // Clear trailing bits past n_ so popcount/iteration stays honest.
        if (n_ % 64) chunks_.back() &= (1ULL << (n_ % 64)) - 1ULL;
    }
    void reset() { for (auto& c : chunks_) c = 0ULL; }

    bool operator==(const BitSet& o) const noexcept {
        return n_ == o.n_ && chunks_ == o.chunks_;
    }

private:
    std::size_t n_ = 0;
    std::vector<std::uint64_t> chunks_;
};

// -----------------------------------------------------------------------------
// CFG predecessors.
// -----------------------------------------------------------------------------
//
// We re-derive predecessors from terminator successors instead of
// storing them on `BasicBlockData` — the MIR is read-only at this
// point so a one-shot scan is fine and keeps `mir.h` clean.
struct Predecessors {
    // preds[bb] = list of basic blocks whose terminator targets bb.
    std::vector<std::vector<BbId>> preds;

    static Predecessors build(const Body& body);
};

// Reverse postorder is computed via a simple iterative DFS. Used for
// efficient forward dataflow (visit a block only after all of its
// predecessors have been visited at least once).
std::vector<BbId> reversePostorder(const Body& body);

// Compute the list of basic block successors for a terminator. We don't
// look at unwind edges yet — Apollo MIR doesn't materialise them until
// drop elaboration runs.
std::vector<BbId> terminatorSuccessors(const Terminator& t);

} // namespace apollo::mir::borrowck

#endif
