// =============================================================================
// MovePathTable implementation.
// =============================================================================
//
// Mostly mechanical tree-building. The only subtle bits are:
//
//   * `Index` and `Subslice` projections do NOT create children; we
//     collapse them into their parent. This means `arr[i]` is treated
//     as accessing all of `arr`. Sound for borrow checking but coarse.
//     A precise array-index analysis would require value-range
//     reasoning, which is out of scope for a single-pass NLL check.
//
//   * `Deref` does NOT create a child either: dereferencing a reference
//     produces an alias for the loan's target, not a sub-path of the
//     reference local. See header for the reborrow story.
//
//   * `Downcast` (enum variant cast) DOES create a child keyed on the
//     variant id. This is required for "match v { Variant::A(x) => ..,
//     Variant::B(y) => .. }" to track per-variant fields independently.

#include "move_paths.h"

#include <cassert>
#include <sstream>

namespace apollo::mir::borrowck {

std::uint64_t MovePathTable::elemKey(const PlaceElem& e) {
    // Combine (kind, field, variant, offset) into a stable 64-bit key.
    // ConstantIndex distinguishes by offset; Field by field id;
    // Downcast by variant id. Index/Subslice/Deref never reach here
    // because we collapse them before creating a child.
    std::uint64_t k = static_cast<std::uint64_t>(e.kind) << 56;
    switch (e.kind) {
        case PlaceElemKind::Field:
            k |= static_cast<std::uint64_t>(e.field) & 0x00FF'FFFF'FFFF'FFFFULL;
            break;
        case PlaceElemKind::Downcast:
            k |= static_cast<std::uint64_t>(e.variant) & 0x00FF'FFFF'FFFF'FFFFULL;
            break;
        case PlaceElemKind::ConstantIndex:
            k |= static_cast<std::uint64_t>(e.offset) & 0x00FF'FFFF'FFFF'FFFFULL;
            break;
        default:
            // OpaqueCast / Subtype tracked by type pointer bits.
            k |= reinterpret_cast<std::uintptr_t>(e.ty) & 0x00FF'FFFF'FFFF'FFFFULL;
            break;
    }
    return k;
}

MovePathIdx MovePathTable::findChild(MovePathIdx parent, const PlaceElem& e) const {
    if (parent == kInvalidMovePath) return kInvalidMovePath;
    std::uint64_t want = elemKey(e);
    MovePathIdx c = paths_[parent].first_child;
    while (c != kInvalidMovePath) {
        if (elemKey(paths_[c].elem) == want) return c;
        c = paths_[c].next_sibling;
    }
    return kInvalidMovePath;
}

MovePathIdx MovePathTable::makeChild(MovePathIdx parent, const PlaceElem& e) {
    MovePathIdx idx = static_cast<MovePathIdx>(paths_.size());
    MovePath node{};
    node.root_local = paths_[parent].root_local;
    node.parent = parent;
    node.first_child = kInvalidMovePath;
    node.next_sibling = paths_[parent].first_child;
    node.elem = e;

    // Build the debug suffix once.
    std::ostringstream sfx;
    sfx << paths_[parent].debug_suffix;
    switch (e.kind) {
        case PlaceElemKind::Field:    sfx << ".f" << e.field; break;
        case PlaceElemKind::Downcast: sfx << "@v" << e.variant; break;
        case PlaceElemKind::ConstantIndex: sfx << "[" << e.offset << "]"; break;
        case PlaceElemKind::Deref:    sfx << ".*"; break;
        default:                      sfx << ".?"; break;
    }
    node.debug_suffix = sfx.str();

    paths_.push_back(std::move(node));
    paths_[parent].first_child = idx;
    return idx;
}

MovePathIdx MovePathTable::forLocal(LocalId l) {
    if (children_by_root_.size() <= l) children_by_root_.resize(l + 1);
    // Linear scan acceptable: there's at most one root per local.
    for (MovePathIdx i = 0; i < paths_.size(); ++i) {
        if (paths_[i].parent == kInvalidMovePath && paths_[i].root_local == l) return i;
    }
    MovePathIdx idx = static_cast<MovePathIdx>(paths_.size());
    MovePath node{};
    node.root_local = l;
    node.parent = kInvalidMovePath;
    node.first_child = kInvalidMovePath;
    node.next_sibling = kInvalidMovePath;
    std::ostringstream sfx; sfx << "_" << l;
    node.debug_suffix = sfx.str();
    paths_.push_back(std::move(node));
    return idx;
}

MovePathIdx MovePathTable::getOrCreate(const Place& place) {
    MovePathIdx cur = forLocal(place.local);
    for (const auto& elem : place.projection) {
        // Collapse imprecise projections.
        if (elem.kind == PlaceElemKind::Index ||
            elem.kind == PlaceElemKind::Subslice ||
            elem.kind == PlaceElemKind::Deref) {
            // Deref is the boundary at which we stop drilling; the
            // borrowed-from reference is itself the tracked unit.
            // Subsequent projections after a deref (e.g. `*p.x`) are
            // also collapsed into `*p`'s path, which we represent as
            // the root local. The reborrow rewriter in borrowck.cpp
            // is responsible for redirecting `&(*p.x)` to a borrow
            // over the real owner of `*p.x` when known.
            return cur;
        }
        MovePathIdx existing = findChild(cur, elem);
        if (existing == kInvalidMovePath) {
            existing = makeChild(cur, elem);
        }
        cur = existing;
    }
    return cur;
}

MovePathIdx MovePathTable::find(const Place& place) const {
    // Walk like getOrCreate but return kInvalidMovePath on miss.
    // First find the root.
    MovePathIdx cur = kInvalidMovePath;
    for (MovePathIdx i = 0; i < paths_.size(); ++i) {
        if (paths_[i].parent == kInvalidMovePath && paths_[i].root_local == place.local) {
            cur = i;
            break;
        }
    }
    if (cur == kInvalidMovePath) return cur;
    for (const auto& elem : place.projection) {
        if (elem.kind == PlaceElemKind::Index ||
            elem.kind == PlaceElemKind::Subslice ||
            elem.kind == PlaceElemKind::Deref) return cur;
        MovePathIdx child = findChild(cur, elem);
        if (child == kInvalidMovePath) return kInvalidMovePath;
        cur = child;
    }
    return cur;
}

bool MovePathTable::overlaps(MovePathIdx a, MovePathIdx b) const {
    if (a == kInvalidMovePath || b == kInvalidMovePath) return false;
    // Quick equality.
    if (a == b) return true;
    // a-ancestor-of-b ?
    for (MovePathIdx p = b; p != kInvalidMovePath; p = paths_[p].parent) {
        if (p == a) return true;
    }
    // b-ancestor-of-a ?
    for (MovePathIdx p = a; p != kInvalidMovePath; p = paths_[p].parent) {
        if (p == b) return true;
    }
    return false;
}

std::string MovePathTable::debugName(MovePathIdx p) const {
    if (p == kInvalidMovePath) return "<invalid>";
    return paths_[p].debug_suffix;
}

} // namespace apollo::mir::borrowck
