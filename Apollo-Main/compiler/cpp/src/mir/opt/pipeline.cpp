// Apollo MIR — optimization pipeline implementation.
//
// Conservative, semantics-preserving transforms. None of the passes
// mutate LocalIds or BbIds: they may set a block's terminator to Goto
// and may overwrite a statement with `Nop`, but the indexing scheme
// the borrow checker observes stays identical.

#include "pipeline.h"

#include <algorithm>
#include <cstdint>
#include <unordered_map>
#include <unordered_set>
#include <vector>

namespace apollo::mir::opt {

namespace {

bool isPlainLocal(const Place& p) {
    return p.projection.empty();
}

bool operandIsConstantInt(const Operand& op, std::uint64_t& v) {
    if (op.kind != OperandKind::Constant) return false;
    const auto k = op.constant.kind;
    if (k != ConstKind::ScalarInt && k != ConstKind::ScalarBool &&
        k != ConstKind::ScalarChar) {
        return false;
    }
    v = op.constant.scalar;
    return true;
}

// Evaluate `lhs op rhs` for integer scalars. Returns true on success.
bool foldBinop(BinOp op, std::uint64_t lhs, std::uint64_t rhs,
               std::uint64_t& out) {
    auto sl = static_cast<std::int64_t>(lhs);
    auto sr = static_cast<std::int64_t>(rhs);
    switch (op) {
        case BinOp::Add:    out = lhs + rhs; return true;
        case BinOp::Sub:    out = lhs - rhs; return true;
        case BinOp::Mul:    out = lhs * rhs; return true;
        case BinOp::Div:    if (rhs == 0) return false;
                            out = static_cast<std::uint64_t>(sl / sr); return true;
        case BinOp::Rem:    if (rhs == 0) return false;
                            out = static_cast<std::uint64_t>(sl % sr); return true;
        case BinOp::BitXor: out = lhs ^ rhs; return true;
        case BinOp::BitAnd: out = lhs & rhs; return true;
        case BinOp::BitOr:  out = lhs | rhs; return true;
        case BinOp::Shl:    out = lhs << (rhs & 63); return true;
        case BinOp::Shr:    out = lhs >> (rhs & 63); return true;
        case BinOp::Eq:     out = (lhs == rhs) ? 1u : 0u; return true;
        case BinOp::Ne:     out = (lhs != rhs) ? 1u : 0u; return true;
        case BinOp::Lt:     out = (sl <  sr) ? 1u : 0u; return true;
        case BinOp::Le:     out = (sl <= sr) ? 1u : 0u; return true;
        case BinOp::Gt:     out = (sl >  sr) ? 1u : 0u; return true;
        case BinOp::Ge:     out = (sl >= sr) ? 1u : 0u; return true;
        default:            return false;
    }
}

bool foldUnop(UnOp op, std::uint64_t v, std::uint64_t& out) {
    switch (op) {
        case UnOp::Not: out = ~v;                                           return true;
        case UnOp::Neg: out = static_cast<std::uint64_t>(-static_cast<std::int64_t>(v));
                        return true;
    }
    return false;
}

bool isCmpOp(BinOp op) {
    switch (op) {
        case BinOp::Eq: case BinOp::Ne:
        case BinOp::Lt: case BinOp::Le:
        case BinOp::Gt: case BinOp::Ge: return true;
        default: return false;
    }
}

} // namespace

bool constFold(Body& body, PassStats& stats) {
    bool changed = false;
    for (auto& bb : body.blocks) {
        for (auto& s : bb.statements) {
            if (s.kind != StatementKind::Assign) continue;
            auto& rv = s.rvalue;
            std::uint64_t a = 0, b = 0, out = 0;
            if (rv.kind == RvalueKind::BinaryOp &&
                operandIsConstantInt(rv.a, a) &&
                operandIsConstantInt(rv.b, b) &&
                foldBinop(rv.bin_op, a, b, out)) {
                Operand replacement;
                replacement.kind = OperandKind::Constant;
                replacement.constant.kind =
                    isCmpOp(rv.bin_op) ? ConstKind::ScalarBool : rv.a.constant.kind;
                replacement.constant.scalar = out;
                replacement.constant.ty = rv.a.constant.ty;
                rv = Rvalue{};
                rv.kind = RvalueKind::Use;
                rv.a = replacement;
                ++stats.const_folds;
                changed = true;
            } else if (rv.kind == RvalueKind::UnaryOp &&
                       operandIsConstantInt(rv.a, a) &&
                       foldUnop(rv.un_op, a, out)) {
                Operand replacement;
                replacement.kind = OperandKind::Constant;
                replacement.constant.kind = rv.a.constant.kind;
                replacement.constant.scalar = out;
                replacement.constant.ty = rv.a.constant.ty;
                rv = Rvalue{};
                rv.kind = RvalueKind::Use;
                rv.a = replacement;
                ++stats.const_folds;
                changed = true;
            }
        }
    }
    return changed;
}

bool copyProp(Body& body, PassStats& stats) {
    bool changed = false;
    // Per-block: map local -> constant-operand replacement when the
    // local is assigned exactly once by an Rvalue::Use of a Constant
    // and never re-assigned in the same block.
    for (auto& bb : body.blocks) {
        std::unordered_map<LocalId, Operand> defs;
        std::unordered_set<LocalId> killed;
        auto kill = [&](LocalId l) {
            killed.insert(l);
            defs.erase(l);
        };
        auto subst = [&](Operand& op) {
            if (op.kind == OperandKind::Constant) return;
            if (!isPlainLocal(op.place)) return;
            auto it = defs.find(op.place.local);
            if (it == defs.end()) return;
            op = it->second;
            ++stats.copy_props;
            changed = true;
        };
        for (auto& s : bb.statements) {
            if (s.kind == StatementKind::Assign) {
                auto& rv = s.rvalue;
                // Substitute uses inside operands first.
                subst(rv.a);
                subst(rv.b);
                for (auto& o : rv.operands) subst(o);
                if (isPlainLocal(s.place) && rv.kind == RvalueKind::Use &&
                    rv.a.kind == OperandKind::Constant && !killed.count(s.place.local)) {
                    defs[s.place.local] = rv.a;
                } else if (isPlainLocal(s.place)) {
                    kill(s.place.local);
                }
            } else if (s.kind == StatementKind::StorageDead ||
                       s.kind == StatementKind::Deinit ||
                       s.kind == StatementKind::SetDiscriminant) {
                kill(s.local ? s.local : s.place.local);
            }
        }
        // Terminator operands.
        subst(bb.terminator.switch_discr);
        subst(bb.terminator.call_func);
        for (auto& o : bb.terminator.call_args) subst(o);
        subst(bb.terminator.assert_cond);
    }
    return changed;
}

bool dce(Body& body, PassStats& stats) {
    // Collect every local that is read anywhere (operands or non-trivial
    // place projections). Anything written but never read becomes Nop.
    std::unordered_set<LocalId> read;
    auto visitOperand = [&](const Operand& op) {
        if (op.kind == OperandKind::Constant) return;
        read.insert(op.place.local);
        for (const auto& e : op.place.projection) {
            if (e.kind == PlaceElemKind::Index) read.insert(e.index_local);
        }
    };
    auto visitPlaceRead = [&](const Place& p) {
        // A non-empty projection on the LHS still reads the base.
        if (!p.projection.empty()) read.insert(p.local);
        for (const auto& e : p.projection) {
            if (e.kind == PlaceElemKind::Index) read.insert(e.index_local);
        }
    };
    // Return value is implicitly read.
    read.insert(kReturnLocal);

    for (const auto& bb : body.blocks) {
        for (const auto& s : bb.statements) {
            if (s.kind == StatementKind::Assign) {
                const auto& rv = s.rvalue;
                visitOperand(rv.a);
                visitOperand(rv.b);
                for (const auto& o : rv.operands) visitOperand(o);
                read.insert(rv.place.local);
                visitPlaceRead(s.place);
            } else if (s.kind != StatementKind::Nop) {
                read.insert(s.local);
                read.insert(s.place.local);
            }
        }
        visitOperand(bb.terminator.switch_discr);
        visitOperand(bb.terminator.call_func);
        for (const auto& o : bb.terminator.call_args) visitOperand(o);
        visitOperand(bb.terminator.assert_cond);
        read.insert(bb.terminator.drop_place.local);
        // Call dest is the def, not a read.
    }

    bool changed = false;
    for (auto& bb : body.blocks) {
        for (auto& s : bb.statements) {
            if (s.kind != StatementKind::Assign) continue;
            if (!isPlainLocal(s.place)) continue;
            // Side-effecting rvalues are not safe to drop.
            const auto k = s.rvalue.kind;
            const bool side_effect_free =
                k == RvalueKind::Use || k == RvalueKind::BinaryOp ||
                k == RvalueKind::UnaryOp || k == RvalueKind::Cast ||
                k == RvalueKind::Aggregate || k == RvalueKind::Len ||
                k == RvalueKind::Discriminant;
            if (!side_effect_free) continue;
            if (read.count(s.place.local)) continue;
            // Internal/temp locals only — never touch named user vars.
            if (s.place.local < body.locals.size()) {
                const auto kind = body.locals[s.place.local].kind;
                if (kind != LocalKind::Temp) continue;
            }
            s = Statement{};
            s.kind = StatementKind::Nop;
            ++stats.dead_stmts;
            changed = true;
        }
    }
    return changed;
}

bool simplifyCfg(Body& body, PassStats& stats) {
    bool changed = false;
    // (1) Fold SwitchInt with a constant discriminant into Goto.
    for (auto& bb : body.blocks) {
        auto& term = bb.terminator;
        if (term.kind != TerminatorKind::SwitchInt) continue;
        std::uint64_t v = 0;
        if (!operandIsConstantInt(term.switch_discr, v)) continue;
        BbId target = kInvalidBb;
        const auto& st = term.switch_targets;
        for (std::size_t i = 0; i < st.values.size(); ++i) {
            if (st.values[i] == v) { target = st.targets[i]; break; }
        }
        if (target == kInvalidBb && !st.targets.empty()) {
            target = st.targets.back(); // otherwise
        }
        if (target == kInvalidBb) continue;
        term = Terminator{};
        term.kind = TerminatorKind::Goto;
        term.goto_target = target;
        ++stats.switch_to_goto;
        changed = true;
    }
    // (2) Skip through Goto-only blocks: A -goto-> B where B is empty +
    //     B's terminator is Goto, redirect A directly to B's target.
    auto isEmptyGoto = [&](BbId b) -> BbId {
        if (b >= body.blocks.size()) return kInvalidBb;
        const auto& blk = body.blocks[b];
        bool all_nop = std::all_of(blk.statements.begin(), blk.statements.end(),
            [](const Statement& s){ return s.kind == StatementKind::Nop; });
        if (!all_nop) return kInvalidBb;
        if (blk.terminator.kind != TerminatorKind::Goto) return kInvalidBb;
        return blk.terminator.goto_target;
    };
    for (auto& bb : body.blocks) {
        if (bb.terminator.kind != TerminatorKind::Goto) continue;
        // Bound the chase to avoid infinite loops on self-cycles.
        BbId cur = bb.terminator.goto_target;
        std::unordered_set<BbId> seen{cur};
        for (int i = 0; i < 16; ++i) {
            BbId nxt = isEmptyGoto(cur);
            if (nxt == kInvalidBb || nxt == cur || !seen.insert(nxt).second) break;
            cur = nxt;
        }
        if (cur != bb.terminator.goto_target) {
            bb.terminator.goto_target = cur;
            ++stats.goto_collapses;
            changed = true;
        }
    }
    return changed;
}

// ---------------------------------------------------------------------------
// CSE — per-basic-block common-subexpression elimination.
//
// Hashes side-effect-free Rvalues (BinaryOp/UnaryOp/Cast/Use of constant)
// whose operand locals are all plain (no projection) and replaces a
// repeat occurrence with a Use of the prior destination. Conservative:
// any non-plain place definition or statement with side effects clears
// the table. This is intentionally simple — the LLVM backend's GVN
// will catch more, but cheap MIR-level CSE shrinks the IR fed to LLVM
// and exposes more opportunities to DCE.

namespace {

struct CseKey {
    int kind = 0;          // 0=BinaryOp, 1=UnaryOp, 2=Cast
    int op   = 0;          // BinOp/UnOp/CastKind cast to int
    // Two operands encoded as (is_const, value-or-local).
    bool a_const = false;  std::uint64_t a_val = 0;
    bool b_const = false;  std::uint64_t b_val = 0;
    Ty   ty = nullptr;

    bool operator==(const CseKey& o) const = default;
};

struct CseKeyHash {
    std::size_t operator()(const CseKey& k) const noexcept {
        std::size_t h = std::hash<int>{}(k.kind);
        auto mix = [&h](std::size_t v) {
            h ^= v + 0x9e3779b97f4a7c15ULL + (h << 6) + (h >> 2);
        };
        mix(std::hash<int>{}(k.op));
        mix(std::hash<std::uint64_t>{}(k.a_val));
        mix(std::hash<std::uint64_t>{}(k.b_val));
        mix(std::hash<std::uintptr_t>{}(reinterpret_cast<std::uintptr_t>(k.ty)));
        mix(static_cast<std::size_t>(k.a_const) << 1 | static_cast<std::size_t>(k.b_const));
        return h;
    }
};

bool encodeOperand(const Operand& op, bool& is_const, std::uint64_t& val) {
    if (op.kind == OperandKind::Constant) {
        if (op.constant.kind != ConstKind::ScalarInt &&
            op.constant.kind != ConstKind::ScalarBool &&
            op.constant.kind != ConstKind::ScalarChar) {
            return false;
        }
        is_const = true;
        val = op.constant.scalar;
        return true;
    }
    if (!op.place.projection.empty()) return false;
    is_const = false;
    val = op.place.local;
    return true;
}

} // namespace

bool cse(Body& body, PassStats& stats) {
    bool changed = false;
    for (auto& bb : body.blocks) {
        std::unordered_map<CseKey, LocalId, CseKeyHash> table;
        std::unordered_set<LocalId> invalidated;
        auto kill = [&](LocalId l) {
            invalidated.insert(l);
            // Drop any table entry whose value local is l, or whose
            // operand encoding references l.
            for (auto it = table.begin(); it != table.end(); ) {
                if (it->second == l ||
                    (!it->first.a_const && it->first.a_val == l) ||
                    (!it->first.b_const && it->first.b_val == l)) {
                    it = table.erase(it);
                } else {
                    ++it;
                }
            }
        };
        for (auto& s : bb.statements) {
            if (s.kind != StatementKind::Assign) {
                // Conservative: clear the table on any other kind of
                // statement except StorageLive/Dead/Nop.
                if (s.kind != StatementKind::StorageLive &&
                    s.kind != StatementKind::StorageDead &&
                    s.kind != StatementKind::Nop) {
                    table.clear();
                }
                continue;
            }
            if (!isPlainLocal(s.place)) {
                // Writing through a projection invalidates everything
                // that could alias the base.
                table.clear();
                continue;
            }
            CseKey key;
            bool keyed = false;
            const auto& rv = s.rvalue;
            if (rv.kind == RvalueKind::BinaryOp) {
                key.kind = 0; key.op = static_cast<int>(rv.bin_op);
                if (encodeOperand(rv.a, key.a_const, key.a_val) &&
                    encodeOperand(rv.b, key.b_const, key.b_val)) {
                    keyed = true;
                }
            } else if (rv.kind == RvalueKind::UnaryOp) {
                key.kind = 1; key.op = static_cast<int>(rv.un_op);
                if (encodeOperand(rv.a, key.a_const, key.a_val)) {
                    keyed = true;
                }
            } else if (rv.kind == RvalueKind::Cast) {
                key.kind = 2; key.op = static_cast<int>(rv.cast_kind);
                key.ty = rv.cast_ty;
                if (encodeOperand(rv.a, key.a_const, key.a_val)) {
                    keyed = true;
                }
            }
            if (keyed) {
                auto it = table.find(key);
                if (it != table.end()) {
                    // Replace the Rvalue with a copy from the prior def.
                    Rvalue use{};
                    use.kind = RvalueKind::Use;
                    use.a.kind = OperandKind::Copy;
                    use.a.place.local = it->second;
                    s.rvalue = std::move(use);
                    ++stats.cse_replaced;
                    changed = true;
                } else {
                    table.emplace(key, s.place.local);
                }
            }
            // The destination is now redefined; invalidate prior entries
            // that referenced its previous value.
            kill(s.place.local);
        }
    }
    return changed;
}

PassStats runDefault(Body& body, std::uint32_t max_iters) {
    PassStats stats;
    for (std::uint32_t i = 0; i < max_iters; ++i) {
        bool any = false;
        any |= simplifyCfg(body, stats);
        any |= constFold  (body, stats);
        any |= copyProp   (body, stats);
        any |= cse        (body, stats);
        any |= dce        (body, stats);
        any |= simplifyCfg(body, stats);
        if (!any) break;
    }
    return stats;
}

} // namespace apollo::mir::opt
