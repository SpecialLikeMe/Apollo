#include "builder.h"

namespace apollo::mir::build {

MirBuilder::MirBuilder(TyCtxt& tcx, const hir::Body& src) : tcx_(tcx), src_(src) {
    body_.name = src.name;
    body_.span = src.span;
    // Root scope.
    SourceScope root{};
    body_.scopes.push_back(root);
    // _0 = return pointer
    LocalDecl ret{};
    ret.ty = src.return_ty ? src.return_ty : tcx_.mkUnit();
    ret.kind = LocalKind::ReturnPointer;
    ret.mutability = Mutability::Mut;
    body_.locals.push_back(ret);
    // _1.._N = args
    for (std::uint32_t i = 0; i < src.param_count; ++i) {
        LocalDecl d{};
        d.ty = src.locals[i].ty;
        d.kind = LocalKind::Arg;
        d.mutability = src.locals[i].mutable_ ? Mutability::Mut : Mutability::Not;
        d.debug_name = src.locals[i].name;
        body_.locals.push_back(d);
        local_map_[i] = static_cast<LocalId>(body_.locals.size() - 1);
    }
    body_.arg_count = src.param_count;
    // Entry block.
    cur_ = body_.addBlock();
}

BbId MirBuilder::newBlock() {
    return body_.addBlock();
}

LocalId MirBuilder::newTemp(Ty ty, Mutability m) {
    LocalDecl d{};
    d.ty = ty;
    d.kind = LocalKind::Temp;
    d.mutability = m;
    body_.locals.push_back(d);
    return static_cast<LocalId>(body_.locals.size() - 1);
}

LocalId MirBuilder::resolveLocal(hir::LocalVarId hid) {
    auto it = local_map_.find(hid);
    if (it != local_map_.end()) return it->second;
    // Lazily materialise: HIR local has not been seen by a Let yet (e.g.
    // an argument referenced from inside the body — already mapped — or a
    // forward reference that the resolver should never have produced).
    const auto& src = src_.locals[hid];
    LocalDecl d{};
    d.ty = src.ty;
    d.kind = LocalKind::Var;
    d.mutability = src.mutable_ ? Mutability::Mut : Mutability::Not;
    d.debug_name = src.name;
    d.source_info = src.source_info;
    body_.locals.push_back(d);
    LocalId out = static_cast<LocalId>(body_.locals.size() - 1);
    local_map_[hid] = out;
    return out;
}

void MirBuilder::pushAssign(Place lhs, Rvalue rv, SourceInfo si) {
    if (cur_invalid()) return;
    Statement s;
    s.kind = StatementKind::Assign;
    s.place = std::move(lhs);
    s.rvalue = std::move(rv);
    s.source_info = si;
    body_.blocks[cur_].statements.push_back(std::move(s));
}

void MirBuilder::pushStorageLive(LocalId l, SourceInfo si) {
    if (cur_invalid()) return;
    Statement s; s.kind = StatementKind::StorageLive; s.local = l; s.source_info = si;
    body_.blocks[cur_].statements.push_back(std::move(s));
}

void MirBuilder::pushStorageDead(LocalId l, SourceInfo si) {
    if (cur_invalid()) return;
    Statement s; s.kind = StatementKind::StorageDead; s.local = l; s.source_info = si;
    body_.blocks[cur_].statements.push_back(std::move(s));
}

void MirBuilder::terminate(Terminator t) {
    if (cur_invalid()) return;
    body_.blocks[cur_].terminator = std::move(t);
    cur_ = kInvalidBb;
}

Operand MirBuilder::unitConst() const {
    Operand o;
    o.kind = OperandKind::Constant;
    o.constant.kind = ConstKind::Unit;
    o.constant.ty = tcx_.mkUnit();
    return o;
}

Operand MirBuilder::loadOperand(Ty /*ty*/, Place p, SourceInfo /*si*/) {
    Operand o;
    o.kind = OperandKind::Copy;
    o.place = std::move(p);
    return o;
}

Operand MirBuilder::assignTemp(Ty ty, Rvalue rv, SourceInfo si) {
    LocalId tmp = newTemp(ty);
    pushAssign(Place{tmp, {}}, std::move(rv), si);
    Operand o;
    o.kind = OperandKind::Copy;
    o.place.local = tmp;
    return o;
}

Body MirBuilder::finish() {
    if (finished_) return std::move(body_);
    finished_ = true;
    if (src_.root_block) {
        Operand result = lowerExpr(*this, *src_.root_block);
        if (!cur_invalid()) {
            // Assign result into _0 and emit Return.
            pushAssign(Place{kReturnLocal, {}},
                       Rvalue{ .kind = RvalueKind::Use, .a = result },
                       SourceInfo{src_.span, kRootScope});
            Terminator t; t.kind = TerminatorKind::Return;
            t.source_info = SourceInfo{src_.span, kRootScope};
            terminate(std::move(t));
        }
    } else {
        Terminator t; t.kind = TerminatorKind::Return;
        terminate(std::move(t));
    }
    return std::move(body_);
}

} // namespace apollo::mir::build
