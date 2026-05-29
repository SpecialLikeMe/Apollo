// Apollo MIR builder — HIR -> MIR lowering.
//
// `MirBuilder` is single-shot: construct with the HIR Body and TyCtxt,
// call `finish()` exactly once. The lowering is single-pass and
// O(N) in AST node count.
//
// Lowering choices worth noting:
//   * If-else lowers to a `SwitchInt(cond, [0], [else_bb, then_bb])` plus a
//     join block. The result of the if is materialised in a temp; both
//     branches assign to it; the join reads from it.
//   * While/Loop introduce header+body+exit BBs. `break v` and `continue`
//     reach the enclosing loop via the `LoopFrame` stack.
//   * `return e` evaluates `e`, writes it to `_0`, and emits `TermReturn`.
//     The current_block is invalidated; callers must check `cur_invalid()`
//     before pushing further statements.
//   * Place expressions (Var, Deref, Ref operand) are lowered via
//     `lowerExprAsPlace`. Non-place expressions in a place context fall
//     back to unit constants — the borrow checker treats such Places as
//     definitionally-uninteresting.

#ifndef APOLLO_MIR_BUILD_BUILDER_H
#define APOLLO_MIR_BUILD_BUILDER_H

#include "../../hir/hir.h"
#include "../mir.h"

#include <unordered_map>

namespace apollo::mir::build {

struct LoopFrame {
    BbId header_bb = kInvalidBb;
    BbId exit_bb   = kInvalidBb;
    LocalId result_local = 0;  // the local that `break value` writes to
    bool has_result = false;
};

class MirBuilder {
public:
    MirBuilder(TyCtxt& tcx, const hir::Body& src);

    Body finish();

    // ---- Public helpers used by the build_* translation units. ----
    Body&  body()  noexcept { return body_; }
    TyCtxt& tcx()  noexcept { return tcx_; }
    const hir::Body& source() const noexcept { return src_; }

    BbId  current() const noexcept { return cur_; }
    bool  cur_invalid() const noexcept { return cur_ == kInvalidBb; }
    void  set_current(BbId b) noexcept { cur_ = b; }
    BbId  newBlock();

    LocalId newTemp(Ty ty, Mutability m = Mutability::Mut);
    LocalId resolveLocal(hir::LocalVarId hid);

    void pushAssign(Place lhs, Rvalue rv, SourceInfo si);
    void pushStorageLive(LocalId l, SourceInfo si);
    void pushStorageDead(LocalId l, SourceInfo si);
    void terminate(Terminator t);

    Operand unitConst() const;
    Operand loadOperand(Ty ty, Place p, SourceInfo si);
    Operand assignTemp(Ty ty, Rvalue rv, SourceInfo si);

    void pushLoop(LoopFrame f) { loops_.push_back(f); }
    void popLoop() { loops_.pop_back(); }
    LoopFrame* topLoop() { return loops_.empty() ? nullptr : &loops_.back(); }

private:
    TyCtxt& tcx_;
    const hir::Body& src_;
    Body body_;
    BbId cur_ = kInvalidBb;
    std::unordered_map<hir::LocalVarId, LocalId> local_map_;
    std::vector<LoopFrame> loops_;
    bool finished_ = false;
};

// Lowering entry points (implemented in build_expr.cpp / build_stmt.cpp).
Operand lowerExpr(MirBuilder& b, const hir::Expr& e);
void    lowerStmt(MirBuilder& b, const hir::Stmt& s);
std::optional<Place> lowerExprAsPlace(MirBuilder& b, const hir::Expr& e);

} // namespace apollo::mir::build

#endif
