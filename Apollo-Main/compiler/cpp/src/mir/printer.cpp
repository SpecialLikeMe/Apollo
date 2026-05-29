#include "printer.h"

#include <sstream>

namespace apollo::mir {

namespace {

const char* binOpToken(BinOp op) {
    switch (op) {
        case BinOp::Add: return "Add"; case BinOp::Sub: return "Sub";
        case BinOp::Mul: return "Mul"; case BinOp::Div: return "Div";
        case BinOp::Rem: return "Rem";
        case BinOp::BitXor: return "BitXor"; case BinOp::BitAnd: return "BitAnd";
        case BinOp::BitOr: return "BitOr";
        case BinOp::Shl: return "Shl"; case BinOp::Shr: return "Shr";
        case BinOp::Eq: return "Eq"; case BinOp::Lt: return "Lt";
        case BinOp::Le: return "Le"; case BinOp::Ne: return "Ne";
        case BinOp::Ge: return "Ge"; case BinOp::Gt: return "Gt";
        case BinOp::Offset: return "Offset";
    }
    return "?";
}

void renderPlace(std::ostream& os, const Place& p) {
    // Projections that wrap the base get printed outside-in: deref → "(*X)".
    // We use an inside-out cumulative string and wrap as we go.
    std::ostringstream inner;
    inner << '_' << p.local;
    std::string s = inner.str();
    for (const auto& e : p.projection) {
        switch (e.kind) {
            case PlaceElemKind::Deref: s = "(*" + s + ")"; break;
            case PlaceElemKind::Field: {
                std::ostringstream f; f << s << '.' << e.field; s = f.str();
                break;
            }
            case PlaceElemKind::Index: {
                std::ostringstream f; f << s << "[_" << e.index_local << ']'; s = f.str();
                break;
            }
            case PlaceElemKind::ConstantIndex: {
                std::ostringstream f; f << s << "[const " << e.offset << ']'; s = f.str();
                break;
            }
            case PlaceElemKind::Subslice: {
                std::ostringstream f; f << s << '[' << e.from << ".." << e.to << ']'; s = f.str();
                break;
            }
            case PlaceElemKind::Downcast: {
                std::ostringstream f; f << '(' << s << " as variant#" << e.variant << ')'; s = f.str();
                break;
            }
            case PlaceElemKind::OpaqueCast: case PlaceElemKind::Subtype:
                s = "(" + s + " as _)"; break;
        }
    }
    os << s;
}

void renderConstant(std::ostream& os, const Constant& c, const TyCtxt& tcx) {
    switch (c.kind) {
        case ConstKind::ScalarInt:
            os << "const " << c.scalar << '_' << tcx.render(c.ty); return;
        case ConstKind::ScalarBool:
            os << (c.scalar ? "const true" : "const false"); return;
        case ConstKind::ScalarChar:
            os << "const '\\u{" << std::hex << c.scalar << std::dec << "}'"; return;
        case ConstKind::Unit: os << "const ()"; return;
        case ConstKind::Str:  os << "const \"" << c.str_value << "\""; return;
    }
}

void renderOperand(std::ostream& os, const Operand& o, const TyCtxt& tcx) {
    switch (o.kind) {
        case OperandKind::Copy: os << "copy ";   renderPlace(os, o.place); return;
        case OperandKind::Move: os << "move ";   renderPlace(os, o.place); return;
        case OperandKind::Constant: renderConstant(os, o.constant, tcx); return;
    }
}

void renderRvalue(std::ostream& os, const Rvalue& rv, const TyCtxt& tcx) {
    switch (rv.kind) {
        case RvalueKind::Use:    renderOperand(os, rv.a, tcx); return;
        case RvalueKind::Repeat:
            os << '['; renderOperand(os, rv.a, tcx);
            os << "; " << rv.repeat_count << ']'; return;
        case RvalueKind::Ref:
            os << '&';
            if (rv.borrow_kind == BorrowKind::Mut || rv.borrow_kind == BorrowKind::MutTwoPhase) os << "mut ";
            renderPlace(os, rv.place); return;
        case RvalueKind::AddressOf:
            os << "&raw " << (rv.mutability == Mutability::Mut ? "mut " : "const ");
            renderPlace(os, rv.place); return;
        case RvalueKind::Len:
            os << "Len("; renderPlace(os, rv.place); os << ')'; return;
        case RvalueKind::Cast:
            renderOperand(os, rv.a, tcx);
            os << " as " << tcx.render(rv.cast_ty); return;
        case RvalueKind::BinaryOp:
        case RvalueKind::CheckedBinaryOp:
            os << binOpToken(rv.bin_op) << '(';
            renderOperand(os, rv.a, tcx); os << ", ";
            renderOperand(os, rv.b, tcx); os << ')'; return;
        case RvalueKind::UnaryOp:
            os << (rv.un_op == UnOp::Not ? "Not(" : "Neg(");
            renderOperand(os, rv.a, tcx); os << ')'; return;
        case RvalueKind::Discriminant:
            os << "discriminant("; renderPlace(os, rv.place); os << ')'; return;
        case RvalueKind::Aggregate:
            os << "Aggregate(";
            for (std::size_t i = 0; i < rv.operands.size(); ++i) {
                if (i) os << ", ";
                renderOperand(os, rv.operands[i], tcx);
            }
            os << ')'; return;
        case RvalueKind::ShallowInitBox:
            os << "ShallowInitBox("; renderOperand(os, rv.a, tcx);
            os << ", " << tcx.render(rv.cast_ty) << ')'; return;
        case RvalueKind::CopyForDeref:
            os << "CopyForDeref("; renderPlace(os, rv.place); os << ')'; return;
    }
}

void renderStatement(std::ostream& os, const Statement& s, const TyCtxt& tcx) {
    switch (s.kind) {
        case StatementKind::Assign:
            renderPlace(os, s.place); os << " = "; renderRvalue(os, s.rvalue, tcx); os << ';'; return;
        case StatementKind::StorageLive: os << "StorageLive(_" << s.local << ");"; return;
        case StatementKind::StorageDead: os << "StorageDead(_" << s.local << ");"; return;
        case StatementKind::SetDiscriminant:
            os << "SetDiscriminant("; renderPlace(os, s.place);
            os << ", variant#" << s.variant << ");"; return;
        case StatementKind::Deinit:
            os << "Deinit("; renderPlace(os, s.place); os << ");"; return;
        case StatementKind::Retag:
            os << "Retag("; renderPlace(os, s.place); os << ");"; return;
        case StatementKind::FakeRead:
            os << "FakeRead("; renderPlace(os, s.place); os << ");"; return;
        case StatementKind::PlaceMention:
            os << "PlaceMention("; renderPlace(os, s.place); os << ");"; return;
        case StatementKind::Nop:
            os << "nop;"; return;
    }
}

void renderTerminator(std::ostream& os, const Terminator& t, const TyCtxt& tcx) {
    switch (t.kind) {
        case TerminatorKind::Goto:        os << "goto -> bb" << t.goto_target << ';'; return;
        case TerminatorKind::Return:      os << "return;"; return;
        case TerminatorKind::Unreachable: os << "unreachable;"; return;
        case TerminatorKind::SwitchInt:
            os << "switchInt("; renderOperand(os, t.switch_discr, tcx);
            os << ") -> [";
            for (std::size_t i = 0; i < t.switch_targets.values.size(); ++i) {
                if (i) os << ", ";
                os << t.switch_targets.values[i] << ": bb" << t.switch_targets.targets[i];
            }
            os << ", otherwise: bb" << t.switch_targets.targets.back() << "];";
            return;
        case TerminatorKind::Drop:
            os << "drop("; renderPlace(os, t.drop_place);
            os << ") -> bb" << t.drop_target << ';'; return;
        case TerminatorKind::Call:
            renderPlace(os, t.call_dest); os << " = ";
            renderOperand(os, t.call_func, tcx); os << '(';
            for (std::size_t i = 0; i < t.call_args.size(); ++i) {
                if (i) os << ", ";
                renderOperand(os, t.call_args[i], tcx);
            }
            os << ") -> bb" << t.call_target << ';'; return;
        case TerminatorKind::Assert:
            os << "assert("; renderOperand(os, t.assert_cond, tcx);
            os << ", \"" << t.assert_msg << "\") -> bb" << t.assert_target << ';'; return;
        case TerminatorKind::FalseEdge:
            os << "falseEdge -> [real: bb" << t.false_real_target
               << ", imaginary: bb" << t.false_imaginary_target << "];"; return;
        case TerminatorKind::FalseUnwind:
            os << "falseUnwind -> bb" << t.false_real_target << ';'; return;
    }
}

} // namespace

std::string placeToString(const Place& p) {
    std::ostringstream os; renderPlace(os, p); return os.str();
}

std::string bodyToString(const Body& body, const TyCtxt& tcx) {
    std::ostringstream os;
    // Signature.
    os << "fn " << (body.name.empty() ? std::string("<anon>") : body.name) << '(';
    for (std::uint32_t i = 0; i < body.arg_count; ++i) {
        if (i) os << ", ";
        os << '_' << (i + 1) << ": " << tcx.render(body.locals[i + 1].ty);
    }
    os << ") -> ";
    os << tcx.render(body.locals[kReturnLocal].ty) << " {\n";

    // Locals.
    for (LocalId i = 0; i < body.locals.size(); ++i) {
        const auto& d = body.locals[i];
        os << "    let ";
        if (d.mutability == Mutability::Mut) os << "mut ";
        os << '_' << i << ": " << tcx.render(d.ty);
        if (!d.debug_name.empty()) os << " // " << d.debug_name;
        os << ";\n";
    }
    os << '\n';

    // Blocks.
    for (BbId i = 0; i < body.blocks.size(); ++i) {
        os << "    bb" << i << ": {\n";
        for (const auto& s : body.blocks[i].statements) {
            os << "        "; renderStatement(os, s, tcx); os << '\n';
        }
        os << "        "; renderTerminator(os, body.blocks[i].terminator, tcx); os << '\n';
        os << "    }\n";
    }
    os << "}\n";
    return os.str();
}

} // namespace apollo::mir
