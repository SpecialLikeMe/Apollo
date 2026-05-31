#include "builder.h"

namespace apollo::mir::build {

namespace {

Operand intConstOp(TyCtxt& tcx, std::uint64_t v, Ty ty) {
    Operand o;
    o.kind = OperandKind::Constant;
    o.constant.kind = ConstKind::ScalarInt;
    o.constant.scalar = v;
    o.constant.ty = ty ? ty : tcx.mkInt(IntTy::I64);
    return o;
}

Operand boolConstOp(TyCtxt& tcx, bool v) {
    Operand o;
    o.kind = OperandKind::Constant;
    o.constant.kind = ConstKind::ScalarBool;
    o.constant.scalar = v ? 1 : 0;
    o.constant.ty = tcx.mkBool();
    return o;
}

BinOp mapBinOp(hir::BinOp op) {
    using H = hir::BinOp;
    switch (op) {
        case H::Add: return BinOp::Add; case H::Sub: return BinOp::Sub;
        case H::Mul: return BinOp::Mul; case H::Div: return BinOp::Div;
        case H::Rem: return BinOp::Rem;
        case H::BitAnd: return BinOp::BitAnd; case H::BitOr: return BinOp::BitOr;
        case H::BitXor: return BinOp::BitXor; case H::Shl: return BinOp::Shl;
        case H::Shr: return BinOp::Shr;
        case H::And: return BinOp::BitAnd; // logical-and assumed desugared
        case H::Or:  return BinOp::BitOr;
        case H::Eq: return BinOp::Eq; case H::Ne: return BinOp::Ne;
        case H::Lt: return BinOp::Lt; case H::Le: return BinOp::Le;
        case H::Gt: return BinOp::Gt; case H::Ge: return BinOp::Ge;
    }
    return BinOp::Add;
}

} // namespace

std::optional<Place> lowerExprAsPlace(MirBuilder& b, const hir::Expr& e) {
    switch (e.kind) {
        case hir::ExprKind::Var: {
            LocalId l = b.resolveLocal(e.local);
            return Place{l, {}};
        }
        case hir::ExprKind::Deref: {
            if (!e.operand_place) {
                return std::nullopt;
            }
            Operand base = lowerExpr(b, *e.operand_place);
            if (base.kind != OperandKind::Copy && base.kind != OperandKind::Move) {
                return std::nullopt;
            }
            Place out = base.place;
            PlaceElem el;
            el.kind = PlaceElemKind::Deref;
            el.ty = e.ty;
            out.projection.push_back(el);
            return out;
        }
        case hir::ExprKind::Field: {
            if (!e.operand_place) return std::nullopt;
            auto base = lowerExprAsPlace(b, *e.operand_place);
            if (!base) return std::nullopt;
            PlaceElem el; el.kind = PlaceElemKind::Field;
            el.field = e.field_index;
            el.ty = e.ty;
            base->projection.push_back(el);
            return base;
        }
        case hir::ExprKind::Index: {
            if (!e.operand_place || !e.a) return std::nullopt;
            auto base = lowerExprAsPlace(b, *e.operand_place);
            if (!base) return std::nullopt;
            // Evaluate the index into a temp local so we can encode it as
            // PlaceElemKind::Index (which takes a LocalId, not an Operand).
            Operand idx = lowerExpr(b, *e.a);
            LocalId idx_local;
            if (idx.kind == OperandKind::Copy || idx.kind == OperandKind::Move) {
                idx_local = idx.place.local;
            } else {
                idx_local = b.newTemp(idx.constant.ty);
                b.pushAssign(Place{idx_local, {}},
                             Rvalue{ .kind = RvalueKind::Use, .a = idx },
                             e.source_info);
            }
            PlaceElem el; el.kind = PlaceElemKind::Index;
            el.index_local = idx_local;
            el.ty = e.ty;
            base->projection.push_back(el);
            return base;
        }
        // Future: Deref, etc.
        default: return std::nullopt;
    }
}

namespace {
CastKind mapCastKind(hir::CastKind k) {
    switch (k) {
        case hir::CastKind::IntToInt:       return CastKind::IntToInt;
        case hir::CastKind::IntToFloat:     return CastKind::IntToFloat;
        case hir::CastKind::FloatToInt:     return CastKind::FloatToInt;
        case hir::CastKind::FloatToFloat:   return CastKind::FloatToFloat;
        case hir::CastKind::PtrToInt:       return CastKind::PtrToInt;
        case hir::CastKind::IntToPtr:       return CastKind::IntToPtr;
        case hir::CastKind::PtrToPtr:       return CastKind::PtrToPtr;
    }
    return CastKind::IntToInt;
}
AggregateKind mapAggKind(hir::AggregateKind k) {
    switch (k) {
        case hir::AggregateKind::Tuple:  return AggregateKind::Tuple;
        case hir::AggregateKind::Array:  return AggregateKind::Array;
        case hir::AggregateKind::Struct: return AggregateKind::Adt;
    }
    return AggregateKind::Tuple;
}
} // namespace

Operand lowerExpr(MirBuilder& b, const hir::Expr& e) {
    auto& tcx = b.tcx();
    SourceInfo si = e.source_info;
    switch (e.kind) {
        case hir::ExprKind::LitInt:
            return intConstOp(tcx, e.scalar, e.ty);
        case hir::ExprKind::LitBool:
            return boolConstOp(tcx, e.scalar != 0);
        case hir::ExprKind::LitChar: {
            Operand o; o.kind = OperandKind::Constant;
            o.constant.kind = ConstKind::ScalarChar;
            o.constant.scalar = e.scalar; o.constant.ty = tcx.mkChar();
            return o;
        }
        case hir::ExprKind::LitStr: {
            Operand o; o.kind = OperandKind::Constant;
            o.constant.kind = ConstKind::Str;
            o.constant.str_value = e.str_value; o.constant.ty = tcx.mkStr();
            return o;
        }
        case hir::ExprKind::LitUnit:
            return b.unitConst();

        case hir::ExprKind::Var: {
            LocalId l = b.resolveLocal(e.local);
            Operand o; o.kind = OperandKind::Copy; o.place.local = l;
            return o;
        }

        case hir::ExprKind::Deref: {
            auto p = lowerExprAsPlace(b, e);
            if (!p) {
                return b.unitConst();
            }
            Operand o;
            o.kind = OperandKind::Copy;
            o.place = *p;
            return o;
        }

        case hir::ExprKind::Assign: {
            auto lhs = lowerExprAsPlace(b, *e.a);
            Operand rhs = lowerExpr(b, *e.b);
            if (lhs) {
                b.pushAssign(*lhs, Rvalue{ .kind = RvalueKind::Use, .a = rhs }, si);
            }
            return b.unitConst();
        }

        case hir::ExprKind::Binary: {
            Operand l = lowerExpr(b, *e.a);
            Operand r = lowerExpr(b, *e.b);
            Rvalue rv; rv.kind = RvalueKind::BinaryOp; rv.bin_op = mapBinOp(e.bin);
            rv.a = l; rv.b = r;
            return b.assignTemp(e.ty, std::move(rv), si);
        }

        case hir::ExprKind::Unary: {
            Operand a = lowerExpr(b, *e.a);
            Rvalue rv; rv.kind = RvalueKind::UnaryOp;
            rv.un_op = (e.un == hir::UnOp::Not) ? UnOp::Not : UnOp::Neg;
            rv.a = a;
            return b.assignTemp(e.ty, std::move(rv), si);
        }

        case hir::ExprKind::Ref: case hir::ExprKind::AddrOf: {
            auto place = e.operand_place ? lowerExprAsPlace(b, *e.operand_place) : std::nullopt;
            Place p = place.value_or(Place{});
            Rvalue rv;
            if (e.kind == hir::ExprKind::Ref) {
                rv.kind = RvalueKind::Ref;
                rv.borrow_kind = (e.ref_mut == hir::RefMut::Mut) ? BorrowKind::Mut : BorrowKind::Shared;
            } else {
                rv.kind = RvalueKind::AddressOf;
                rv.mutability = (e.ref_mut == hir::RefMut::Mut) ? Mutability::Mut : Mutability::Not;
            }
            rv.place = p;
            return b.assignTemp(e.ty, std::move(rv), si);
        }

        case hir::ExprKind::Block: {
            for (const auto& s : e.stmts) lowerStmt(b, *s);
            if (e.tail) return lowerExpr(b, *e.tail);
            return b.unitConst();
        }

        case hir::ExprKind::If: {
            Operand cond = lowerExpr(b, *e.cond);
            BbId then_bb = b.newBlock();
            BbId else_bb = b.newBlock();
            BbId join_bb = b.newBlock();
            LocalId result = b.newTemp(e.ty);
            Terminator sw; sw.kind = TerminatorKind::SwitchInt;
            sw.switch_discr = cond;
            sw.switch_targets.values = {0};
            sw.switch_targets.targets = {else_bb, then_bb};
            sw.source_info = si;
            b.terminate(std::move(sw));

            b.set_current(then_bb);
            Operand t = lowerExpr(b, *e.then_branch);
            if (!b.cur_invalid()) {
                b.pushAssign(Place{result, {}}, Rvalue{ .kind = RvalueKind::Use, .a = t }, si);
                Terminator g; g.kind = TerminatorKind::Goto; g.goto_target = join_bb; g.source_info = si;
                b.terminate(std::move(g));
            }
            b.set_current(else_bb);
            if (e.else_branch) {
                Operand el = lowerExpr(b, *e.else_branch);
                if (!b.cur_invalid()) {
                    b.pushAssign(Place{result, {}}, Rvalue{ .kind = RvalueKind::Use, .a = el }, si);
                    Terminator g; g.kind = TerminatorKind::Goto; g.goto_target = join_bb; g.source_info = si;
                    b.terminate(std::move(g));
                }
            } else {
                b.pushAssign(Place{result, {}}, Rvalue{ .kind = RvalueKind::Use, .a = b.unitConst() }, si);
                Terminator g; g.kind = TerminatorKind::Goto; g.goto_target = join_bb; g.source_info = si;
                b.terminate(std::move(g));
            }
            b.set_current(join_bb);
            Operand o; o.kind = OperandKind::Copy; o.place.local = result; return o;
        }

        case hir::ExprKind::While: {
            BbId header = b.newBlock();
            BbId body_b = b.newBlock();
            BbId exit_b = b.newBlock();
            Terminator g; g.kind = TerminatorKind::Goto; g.goto_target = header; g.source_info = si;
            b.terminate(std::move(g));

            b.set_current(header);
            Operand cond = lowerExpr(b, *e.cond);
            Terminator sw; sw.kind = TerminatorKind::SwitchInt;
            sw.switch_discr = cond;
            sw.switch_targets.values = {0};
            sw.switch_targets.targets = {exit_b, body_b};
            sw.source_info = si;
            b.terminate(std::move(sw));

            b.pushLoop({header, exit_b, 0, false});
            b.set_current(body_b);
            (void)lowerExpr(b, *e.body);
            if (!b.cur_invalid()) {
                Terminator gg; gg.kind = TerminatorKind::Goto; gg.goto_target = header; gg.source_info = si;
                b.terminate(std::move(gg));
            }
            b.popLoop();
            b.set_current(exit_b);
            return b.unitConst();
        }

        case hir::ExprKind::Loop: {
            BbId header = b.newBlock();
            BbId exit_b = b.newBlock();
            Terminator g; g.kind = TerminatorKind::Goto; g.goto_target = header; g.source_info = si;
            b.terminate(std::move(g));
            LocalId result = b.newTemp(e.ty);
            b.pushLoop({header, exit_b, result, true});
            b.set_current(header);
            (void)lowerExpr(b, *e.body);
            if (!b.cur_invalid()) {
                Terminator gg; gg.kind = TerminatorKind::Goto; gg.goto_target = header; gg.source_info = si;
                b.terminate(std::move(gg));
            }
            b.popLoop();
            b.set_current(exit_b);
            Operand o; o.kind = OperandKind::Copy; o.place.local = result; return o;
        }

        case hir::ExprKind::Break: {
            auto* f = b.topLoop();
            if (!f) {
                Terminator u; u.kind = TerminatorKind::Unreachable; b.terminate(std::move(u));
                return b.unitConst();
            }
            if (e.a) {
                Operand v = lowerExpr(b, *e.a);
                if (f->has_result) {
                    b.pushAssign(Place{f->result_local, {}}, Rvalue{ .kind = RvalueKind::Use, .a = v }, si);
                }
            }
            Terminator g; g.kind = TerminatorKind::Goto; g.goto_target = f->exit_bb; g.source_info = si;
            b.terminate(std::move(g));
            return b.unitConst();
        }
        case hir::ExprKind::Continue: {
            auto* f = b.topLoop();
            if (!f) {
                Terminator u; u.kind = TerminatorKind::Unreachable; b.terminate(std::move(u));
                return b.unitConst();
            }
            Terminator g; g.kind = TerminatorKind::Goto; g.goto_target = f->header_bb; g.source_info = si;
            b.terminate(std::move(g));
            return b.unitConst();
        }
        case hir::ExprKind::Return: {
            Operand v = e.a ? lowerExpr(b, *e.a) : b.unitConst();
            b.pushAssign(Place{kReturnLocal, {}}, Rvalue{ .kind = RvalueKind::Use, .a = v }, si);
            Terminator t; t.kind = TerminatorKind::Return; t.source_info = si;
            b.terminate(std::move(t));
            return b.unitConst();
        }

        case hir::ExprKind::Match: {
            Operand discr = lowerExpr(b, *e.scrutinee);
            BbId join_bb = b.newBlock();
            LocalId result = b.newTemp(e.ty);
            SwitchTargets st;
            std::vector<BbId> arm_bbs;
            arm_bbs.reserve(e.arms.size());
            for (auto& arm : e.arms) {
                arm_bbs.push_back(b.newBlock());
                st.values.push_back(static_cast<std::uint64_t>(arm.discriminant));
                st.targets.push_back(arm_bbs.back());
                (void)arm;
            }
            BbId default_bb = b.newBlock();
            st.targets.push_back(default_bb);
            Terminator sw; sw.kind = TerminatorKind::SwitchInt; sw.switch_discr = discr;
            sw.switch_targets = std::move(st); sw.source_info = si;
            b.terminate(std::move(sw));

            for (std::size_t i = 0; i < e.arms.size(); ++i) {
                b.set_current(arm_bbs[i]);
                Operand v = lowerExpr(b, *e.arms[i].body);
                if (!b.cur_invalid()) {
                    b.pushAssign(Place{result, {}}, Rvalue{ .kind = RvalueKind::Use, .a = v }, si);
                    Terminator g; g.kind = TerminatorKind::Goto; g.goto_target = join_bb; g.source_info = si;
                    b.terminate(std::move(g));
                }
            }
            b.set_current(default_bb);
            if (e.default_arm) {
                Operand v = lowerExpr(b, *e.default_arm);
                if (!b.cur_invalid()) {
                    b.pushAssign(Place{result, {}}, Rvalue{ .kind = RvalueKind::Use, .a = v }, si);
                    Terminator g; g.kind = TerminatorKind::Goto; g.goto_target = join_bb; g.source_info = si;
                    b.terminate(std::move(g));
                }
            } else {
                Terminator u; u.kind = TerminatorKind::Unreachable; u.source_info = si;
                b.terminate(std::move(u));
            }
            b.set_current(join_bb);
            Operand o; o.kind = OperandKind::Copy; o.place.local = result; return o;
        }

        case hir::ExprKind::Field: {
            auto p = lowerExprAsPlace(b, e);
            if (!p) return b.unitConst();
            Operand o; o.kind = OperandKind::Copy; o.place = *p; return o;
        }

        case hir::ExprKind::Index: {
            auto p = lowerExprAsPlace(b, e);
            if (!p) return b.unitConst();
            Operand o; o.kind = OperandKind::Copy; o.place = *p; return o;
        }

        case hir::ExprKind::Cast: {
            Operand src = lowerExpr(b, *e.a);
            Rvalue rv; rv.kind = RvalueKind::Cast;
            rv.a = src; rv.cast_kind = mapCastKind(e.cast_kind);
            rv.cast_ty = e.ty;
            return b.assignTemp(e.ty, std::move(rv), si);
        }

        case hir::ExprKind::Aggregate: {
            Rvalue rv; rv.kind = RvalueKind::Aggregate;
            rv.agg_kind = mapAggKind(e.agg_kind);
            rv.agg_ty = e.ty;
            rv.operands.reserve(e.args.size());
            for (auto& a : e.args) rv.operands.push_back(lowerExpr(b, *a));
            return b.assignTemp(e.ty, std::move(rv), si);
        }

        case hir::ExprKind::Call: {
            std::vector<Operand> args;
            args.reserve(e.args.size());
            for (auto& a : e.args) args.push_back(lowerExpr(b, *a));
            LocalId result = b.newTemp(e.ty);
            BbId next = b.newBlock();
            Terminator t; t.kind = TerminatorKind::Call;
            Operand callee; callee.kind = OperandKind::Constant;
            callee.constant.kind = ConstKind::ScalarInt; // placeholder: callee resolved by codegen
            callee.constant.scalar = e.callee;
            callee.constant.ty = tcx.mkFnDef(e.callee, {});
            t.call_func = std::move(callee);
            t.call_args = std::move(args);
            t.call_dest = Place{result, {}};
            t.call_target = next;
            t.source_info = si;
            b.terminate(std::move(t));
            b.set_current(next);
            Operand o; o.kind = OperandKind::Copy; o.place.local = result; return o;
        }
    }
    return b.unitConst();
}

void lowerStmt(MirBuilder& b, const hir::Stmt& s) {
    SourceInfo si = s.source_info;
    if (s.kind == hir::StmtKind::Let) {
        LocalId l = b.resolveLocal(s.let_local);
        b.pushStorageLive(l, si);
        if (s.init) {
            Operand init = lowerExpr(b, *s.init);
            b.pushAssign(Place{l, {}}, Rvalue{ .kind = RvalueKind::Use, .a = init }, si);
        }
    } else {
        if (s.expr) (void)lowerExpr(b, *s.expr);
    }
}

} // namespace apollo::mir::build
