#include "validator.h"

#include <sstream>

namespace apollo::mir {

namespace {

struct Validator {
    const Body& body;
    const TyCtxt& tcx;
    ValidationPhase phase;
    std::vector<ValidationError> errs;

    void emit(Span s, std::string msg) { errs.push_back({s, std::move(msg)}); }

    bool localOk(LocalId l) const { return l < body.locals.size(); }
    bool bbOk(BbId b) const { return b < body.blocks.size(); }

    void checkPlace(const Place& p, Span where) {
        if (!localOk(p.local)) {
            emit(where, "Place::local out of range");
            return;
        }
        if (!placeTy(p, body, tcx)) {
            emit(where, "Place projection inconsistent with local type");
        }
    }

    void checkOperand(const Operand& o, Span where) {
        if (o.kind == OperandKind::Copy || o.kind == OperandKind::Move) {
            checkPlace(o.place, where);
        }
    }

    void checkRvalue(const Rvalue& rv, Span where) {
        switch (rv.kind) {
            case RvalueKind::Use: case RvalueKind::Repeat:
            case RvalueKind::Cast: case RvalueKind::UnaryOp:
                checkOperand(rv.a, where); break;
            case RvalueKind::BinaryOp: case RvalueKind::CheckedBinaryOp:
                checkOperand(rv.a, where); checkOperand(rv.b, where); break;
            case RvalueKind::Ref: case RvalueKind::AddressOf:
            case RvalueKind::Len: case RvalueKind::Discriminant:
            case RvalueKind::CopyForDeref:
                checkPlace(rv.place, where); break;
            case RvalueKind::Aggregate:
                for (const auto& op : rv.operands) checkOperand(op, where);
                break;
            case RvalueKind::ShallowInitBox:
                checkOperand(rv.a, where); break;
        }
    }

    void checkStatement(const Statement& s) {
        switch (s.kind) {
            case StatementKind::Assign:
                checkPlace(s.place, s.source_info.span);
                checkRvalue(s.rvalue, s.source_info.span);
                break;
            case StatementKind::StorageLive: case StatementKind::StorageDead:
                if (!localOk(s.local)) emit(s.source_info.span, "Storage*: local out of range");
                break;
            case StatementKind::SetDiscriminant:
            case StatementKind::Deinit:
            case StatementKind::Retag:
            case StatementKind::FakeRead:
            case StatementKind::PlaceMention:
                checkPlace(s.place, s.source_info.span);
                break;
            case StatementKind::Nop: break;
        }
    }

    void checkTerminator(const Terminator& t) {
        switch (t.kind) {
            case TerminatorKind::Goto:
                if (!bbOk(t.goto_target)) emit(t.source_info.span, "Goto: target out of range");
                break;
            case TerminatorKind::SwitchInt: {
                checkOperand(t.switch_discr, t.source_info.span);
                const auto& st = t.switch_targets;
                if (st.targets.size() != st.values.size() + 1) {
                    emit(t.source_info.span, "SwitchInt: targets.size != values.size + 1");
                }
                for (auto b : st.targets) {
                    if (!bbOk(b)) emit(t.source_info.span, "SwitchInt: target out of range");
                }
                break;
            }
            case TerminatorKind::Return: case TerminatorKind::Unreachable:
                break;
            case TerminatorKind::Drop:
                checkPlace(t.drop_place, t.source_info.span);
                if (!bbOk(t.drop_target)) emit(t.source_info.span, "Drop: target out of range");
                if (phase == ValidationPhase::PreCodegen) {
                    // Invariant #6: after drop elaboration every Drop must be guarded.
                    // The validator can't see the SwitchInt guard from here alone,
                    // so we only emit if the body has no drop flags. Skipped for now.
                }
                break;
            case TerminatorKind::Call:
                checkOperand(t.call_func, t.source_info.span);
                for (const auto& a : t.call_args) checkOperand(a, t.source_info.span);
                checkPlace(t.call_dest, t.source_info.span);
                if (t.call_target != kInvalidBb && !bbOk(t.call_target))
                    emit(t.source_info.span, "Call: target out of range");
                break;
            case TerminatorKind::Assert:
                checkOperand(t.assert_cond, t.source_info.span);
                if (!bbOk(t.assert_target)) emit(t.source_info.span, "Assert: target out of range");
                break;
            case TerminatorKind::FalseEdge:
                if (!bbOk(t.false_real_target)) emit(t.source_info.span, "FalseEdge: real target out of range");
                if (!bbOk(t.false_imaginary_target)) emit(t.source_info.span, "FalseEdge: imaginary target out of range");
                break;
            case TerminatorKind::FalseUnwind:
                if (!bbOk(t.false_real_target)) emit(t.source_info.span, "FalseUnwind: target out of range");
                break;
        }
    }

    void run() {
        if (body.locals.empty()) {
            emit(body.span, "Body must have at least a return local");
            return;
        }
        if (body.locals[kReturnLocal].kind != LocalKind::ReturnPointer) {
            emit(body.span, "Local 0 must be the return pointer");
        }
        for (std::uint32_t i = 0; i < body.arg_count; ++i) {
            if (i + 1 >= body.locals.size()) { emit(body.span, "arg_count exceeds locals"); break; }
            if (body.locals[i + 1].kind != LocalKind::Arg) {
                emit(body.span, "Local _" + std::to_string(i + 1) + " must be Arg");
            }
        }
        for (const auto& bb : body.blocks) {
            for (const auto& s : bb.statements) checkStatement(s);
            checkTerminator(bb.terminator);
        }
    }
};

} // namespace

std::vector<ValidationError> validateBody(const Body& body,
                                          const TyCtxt& tcx,
                                          ValidationPhase phase) {
    Validator v{body, tcx, phase, {}};
    v.run();
    return std::move(v.errs);
}

} // namespace apollo::mir
