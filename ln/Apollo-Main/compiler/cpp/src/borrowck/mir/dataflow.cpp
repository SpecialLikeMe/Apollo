// =============================================================================
// CFG utilities — predecessors, reverse-postorder, successor walking.
// =============================================================================
//
// All read-only helpers for stepping over a `mir::Body` graph during
// dataflow. None of these allocate beyond `vector` chunks, so they're
// cheap enough to call once per analysis.

#include "dataflow.h"

#include <algorithm>

namespace apollo::mir::borrowck {

// -----------------------------------------------------------------------------
// terminatorSuccessors
// -----------------------------------------------------------------------------
//
// For each terminator kind, decide which basic blocks could be executed
// next. `kInvalidBb` targets are silently skipped because they appear in
// well-formed bodies (e.g. a `Call` with no return path).
std::vector<BbId> terminatorSuccessors(const Terminator& t) {
    std::vector<BbId> out;
    auto add = [&](BbId b) { if (b != kInvalidBb) out.push_back(b); };
    switch (t.kind) {
        case TerminatorKind::Goto:
            add(t.goto_target); break;
        case TerminatorKind::SwitchInt:
            // The last target in `targets` is the implicit "otherwise" arm.
            for (auto b : t.switch_targets.targets) add(b);
            break;
        case TerminatorKind::Return:
        case TerminatorKind::Unreachable:
            // No successors — these terminate the function or are dead.
            break;
        case TerminatorKind::Drop:
            add(t.drop_target);
            // Drop also has an unwind edge but we don't model it yet.
            break;
        case TerminatorKind::Call:
            add(t.call_target);
            break;
        case TerminatorKind::Assert:
            add(t.assert_target);
            break;
        case TerminatorKind::FalseEdge:
            // The "imaginary" edge exists for borrow-checking purposes:
            // it makes the borrow checker pessimistic about flow into
            // the imaginary branch. We treat both as successors.
            add(t.false_real_target);
            add(t.false_imaginary_target);
            break;
        case TerminatorKind::FalseUnwind:
            add(t.false_real_target);
            break;
    }
    return out;
}

// -----------------------------------------------------------------------------
// Predecessors::build
// -----------------------------------------------------------------------------
//
// For each block B, list every block whose terminator can transfer to
// B. We allocate the predecessor list eagerly and let later analyses
// look up in O(1).
Predecessors Predecessors::build(const Body& body) {
    Predecessors out;
    out.preds.resize(body.blocks.size());
    for (BbId b = 0; b < body.blocks.size(); ++b) {
        for (BbId s : terminatorSuccessors(body.blocks[b].terminator)) {
            if (s < out.preds.size()) out.preds[s].push_back(b);
        }
    }
    return out;
}

// -----------------------------------------------------------------------------
// reversePostorder
// -----------------------------------------------------------------------------
//
// Standard iterative DFS that emits each block once its successors are
// done. We reverse the result to get RPO. For a body with N blocks the
// allocation cost is O(N) — no recursion to blow the stack.
std::vector<BbId> reversePostorder(const Body& body) {
    std::vector<BbId> order;
    if (body.blocks.empty()) return order;

    // Tri-state DFS marker. White = unseen, Grey = on stack, Black = popped.
    enum Color : std::uint8_t { White, Grey, Black };
    std::vector<Color> color(body.blocks.size(), White);

    // Manual stack frame: a block plus how many successors have been
    // explored so far. We push frames for each new block we descend into.
    struct Frame { BbId b; std::size_t i; };
    std::vector<Frame> stack;
    stack.push_back({0, 0});
    color[0] = Grey;

    while (!stack.empty()) {
        Frame& fr = stack.back();
        auto succs = terminatorSuccessors(body.blocks[fr.b].terminator);
        bool descended = false;
        while (fr.i < succs.size()) {
            BbId s = succs[fr.i++];
            if (s < color.size() && color[s] == White) {
                color[s] = Grey;
                stack.push_back({s, 0});
                descended = true;
                break;
            }
        }
        if (!descended) {
            color[fr.b] = Black;
            order.push_back(fr.b);
            stack.pop_back();
        }
    }
    // DFS post-order; reverse to get RPO.
    std::reverse(order.begin(), order.end());
    return order;
}

} // namespace apollo::mir::borrowck
