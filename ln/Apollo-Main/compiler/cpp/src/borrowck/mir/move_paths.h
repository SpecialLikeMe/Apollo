// =============================================================================
// Apollo MIR borrow checker — Move paths.
// =============================================================================
//
// A "move path" identifies a *tracked location* in the body. For local
// `s : Pair { x: i32, y: i32 }` we want to track `s`, `s.x`, and `s.y`
// independently so that `move s.x` does not poison reads of `s.y`. This
// is the rustc-equivalent precision boost over the previous
// local-granular tracker.
//
// Conceptual model
// ----------------
// Move paths form a forest, one tree per `LocalId`. The root of each
// tree corresponds to the bare local; children correspond to one
// projection step (`Field`, `Downcast`, `ConstantIndex` for tuples and
// arrays-of-known-length, and `Deref` which we treat as opaque — see
// note below). `Index` and `Subslice` projections collapse to their
// parent path because dynamic indices can alias any element; this is
// sound but slightly imprecise (rustc handles them the same way for
// most analyses, switching to a separate "may overlap" check for
// dynamic indexing).
//
// Conflict semantics
// ------------------
// Two move paths P and Q *conflict* iff one is an ancestor of the other
// (including equality). This is the standard rustc rule:
//
//   borrow(P) conflicts with access(Q) iff P is-ancestor-of Q or
//                                          Q is-ancestor-of P
//
// Equivalent statement: the borrowed memory region for a path covers
// the path itself + everything underneath. A loan over `s` shadows
// every access to `s.x`; a loan over `s.x` blocks accesses to `s` (the
// whole would observe the loaned half) but does *not* block `s.y`.
//
// Deref handling
// --------------
// We treat `*p.foo` as borrowing through the *pointer* `p`, NOT as
// drilling into `*p`'s pointee tree. That keeps move paths anchored to
// statically-known storage. Reborrow chains are handled separately by
// `ReborrowTable` in borrowck.cpp by remembering "local L was last
// bound from a Ref over path P", so a fresh `&*L` is rewritten to a
// fresh borrow over P. This is a flow-insensitive approximation that
// works for straight-line code and most loops.
//
// Storage
// -------
// MovePathIdx is a 32-bit dense index. The table stores one entry per
// path plus a small lookup map per local-root for fast Place→Idx
// resolution. Construction is O(total projection length across all
// Places in the body).

#ifndef APOLLO_MIR_BORROWCK_MOVE_PATHS_H
#define APOLLO_MIR_BORROWCK_MOVE_PATHS_H

#include "../../mir/mir.h"

#include <cstdint>
#include <string>
#include <unordered_map>
#include <vector>

namespace apollo::mir::borrowck {

using MovePathIdx = std::uint32_t;
constexpr MovePathIdx kInvalidMovePath = static_cast<MovePathIdx>(-1);

// One node in the move-path forest.
struct MovePath {
    LocalId       root_local;          // The owning LocalId for this tree
    MovePathIdx   parent;              // kInvalidMovePath for tree roots
    MovePathIdx   first_child;         // kInvalidMovePath if leaf
    MovePathIdx   next_sibling;        // kInvalidMovePath at end of list

    // The projection element that distinguishes this path from its
    // parent. Only meaningful when parent != kInvalidMovePath. We store
    // a copy (not a reference) so the table is self-contained.
    PlaceElem     elem{};

    // Pretty-printed debug suffix relative to the root (e.g. ".x.0").
    // Built once at insert time so diagnostics can echo
    // `local _3 (.field_1.field_0)` cheaply.
    std::string   debug_suffix;
};

class MovePathTable {
public:
    // Get or create the path corresponding to `place`. Walks the
    // projection one element at a time, creating intermediate nodes
    // as needed. Index/Subslice projections collapse into the parent
    // (we return the parent index unchanged) — this is documented as a
    // soundness-but-imprecision tradeoff in the header comment.
    MovePathIdx getOrCreate(const Place& place);

    // Pure lookup: returns kInvalidMovePath if the place has no
    // corresponding node yet.
    MovePathIdx find(const Place& place) const;

    // Path for the bare local (no projection).
    MovePathIdx forLocal(LocalId l);

    // Build a path for the root of a place, ignoring projection. Used
    // by analyses that need "the root local's path" without walking
    // projections (e.g. mutability checks key on root).
    MovePathIdx rootOf(const Place& place) { return forLocal(place.local); }

    // Iterate ancestors of `p` including `p` itself, calling `f(idx)`.
    // Used by the "any ancestor conflicts" overlap check.
    template <typename F>
    void forEachAncestor(MovePathIdx p, F&& f) const {
        while (p != kInvalidMovePath) {
            f(p);
            p = paths_[p].parent;
        }
    }

    // Iterate `p` and every descendant in subtree order. Used by
    // accessConflict to invalidate sub-paths when a parent is touched.
    template <typename F>
    void forEachInSubtree(MovePathIdx p, F&& f) const {
        if (p == kInvalidMovePath) return;
        f(p);
        MovePathIdx c = paths_[p].first_child;
        while (c != kInvalidMovePath) {
            forEachInSubtree(c, f);
            c = paths_[c].next_sibling;
        }
    }

    // `a` and `b` *overlap* iff one is an ancestor of the other.
    // O(depth(a) + depth(b)) in the worst case.
    bool overlaps(MovePathIdx a, MovePathIdx b) const;

    // Read-only access to a path node.
    const MovePath& operator[](MovePathIdx i) const { return paths_[i]; }
    std::size_t size() const { return paths_.size(); }

    // Pretty-prints "_3.field_2.variant_1" style debug name for diags.
    std::string debugName(MovePathIdx p) const;

private:
    std::vector<MovePath> paths_;
    // Per-root-local: list of (PlaceElem-key, child-idx). PlaceElem
    // comparison is by (kind, field, variant, offset, from, to) — see
    // `elemKey`.
    std::vector<std::vector<MovePathIdx>> children_by_root_;

    // Stable integer key for a PlaceElem distinguishing siblings under
    // the same parent. Two elements compare-equal iff they refer to
    // the same projected location.
    static std::uint64_t elemKey(const PlaceElem& e);

    // Find an existing child of `parent` whose elem matches `e`, or
    // kInvalidMovePath if none.
    MovePathIdx findChild(MovePathIdx parent, const PlaceElem& e) const;

    // Append a new child node under `parent`.
    MovePathIdx makeChild(MovePathIdx parent, const PlaceElem& e);
};

} // namespace apollo::mir::borrowck

#endif
