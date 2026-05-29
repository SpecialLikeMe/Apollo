// Apollo MIR test driver.
//
// Builds a couple of tiny HIR bodies, lowers them to MIR, validates the
// result, and prints them. Failure = nonzero exit + diagnostic on stderr.

#include "../hir/hir.h"
#include "build/builder.h"
#include "opt/pipeline.h"
#include "printer.h"
#include "validator.h"

#include <iostream>
#include <memory>

using namespace apollo;
namespace H = apollo::hir;
namespace M = apollo::mir;
namespace MB = apollo::mir::build;

namespace {

H::ExprPtr e(H::ExprKind k, M::Ty ty) {
    auto p = std::make_unique<H::Expr>();
    p->kind = k; p->ty = ty; return p;
}
H::StmtPtr stLet(H::LocalVarId l, H::ExprPtr init) {
    auto p = std::make_unique<H::Stmt>();
    p->kind = H::StmtKind::Let; p->let_local = l; p->init = std::move(init); return p;
}
H::StmtPtr stExpr(H::ExprPtr ex) {
    auto p = std::make_unique<H::Stmt>();
    p->kind = H::StmtKind::ExprStmt; p->expr = std::move(ex); return p;
}

int failures = 0;
#define CHECK(cond, msg) do { if (!(cond)) { ++failures; std::cerr << "FAIL: " << msg << "\n"; } } while (0)

// Test 1: identity int function: fn id(x:i64) -> i64 { x }
void test_identity_fn(M::TyCtxt& tcx) {
    H::Body src;
    src.name = "id";
    src.return_ty = tcx.mkInt(M::IntTy::I64);
    src.param_count = 1;
    src.locals.push_back({"x", tcx.mkInt(M::IntTy::I64), false, {}});

    auto root = e(H::ExprKind::Block, src.return_ty);
    auto tail = e(H::ExprKind::Var, src.return_ty);
    tail->local = 0;
    root->tail = std::move(tail);
    src.root_block = std::move(root);

    MB::MirBuilder b(tcx, src);
    auto body = b.finish();
    auto errs = M::validateBody(body, tcx);
    CHECK(errs.empty(), "id: validator emitted errors");
    CHECK(body.blocks.size() >= 1, "id: missing blocks");
    CHECK(body.blocks.back().terminator.kind == M::TerminatorKind::Return, "id: last block must return");
    std::cout << "--- id ---\n" << M::bodyToString(body, tcx) << '\n';
}

// Test 2: if-expression: fn pick(c:bool) -> i64 { if c { 1 } else { 2 } }
void test_if_expr(M::TyCtxt& tcx) {
    H::Body src;
    src.name = "pick";
    src.return_ty = tcx.mkInt(M::IntTy::I64);
    src.param_count = 1;
    src.locals.push_back({"c", tcx.mkBool(), false, {}});

    auto root = e(H::ExprKind::Block, src.return_ty);

    auto if_e = e(H::ExprKind::If, src.return_ty);
    auto cond = e(H::ExprKind::Var, tcx.mkBool()); cond->local = 0;
    auto th = e(H::ExprKind::LitInt, src.return_ty); th->scalar = 1;
    auto el = e(H::ExprKind::LitInt, src.return_ty); el->scalar = 2;
    if_e->cond = std::move(cond);
    if_e->then_branch = std::move(th);
    if_e->else_branch = std::move(el);

    root->tail = std::move(if_e);
    src.root_block = std::move(root);

    MB::MirBuilder b(tcx, src);
    auto body = b.finish();
    auto errs = M::validateBody(body, tcx);
    CHECK(errs.empty(), "pick: validator emitted errors");

    // Expect at least one SwitchInt terminator.
    bool has_switch = false;
    for (auto& bb : body.blocks)
        if (bb.terminator.kind == M::TerminatorKind::SwitchInt) has_switch = true;
    CHECK(has_switch, "pick: expected a SwitchInt for if-else");
    std::cout << "--- pick ---\n" << M::bodyToString(body, tcx) << '\n';
}

// Test 3: while loop with let + assign:
//   fn count(n:i64) -> i64 { let i = 0; while i < n { i = i + 1; } i }
void test_while_loop(M::TyCtxt& tcx) {
    H::Body src;
    src.name = "count";
    src.return_ty = tcx.mkInt(M::IntTy::I64);
    src.param_count = 1;
    src.locals.push_back({"n", tcx.mkInt(M::IntTy::I64), false, {}});
    src.locals.push_back({"i", tcx.mkInt(M::IntTy::I64), true, {}});

    auto root = e(H::ExprKind::Block, src.return_ty);

    auto zero = e(H::ExprKind::LitInt, src.return_ty); zero->scalar = 0;
    root->stmts.push_back(stLet(1, std::move(zero)));

    auto wh = e(H::ExprKind::While, tcx.mkUnit());
    {
        auto cond = e(H::ExprKind::Binary, tcx.mkBool());
        cond->bin = H::BinOp::Lt;
        auto lhs = e(H::ExprKind::Var, src.return_ty); lhs->local = 1;
        auto rhs = e(H::ExprKind::Var, src.return_ty); rhs->local = 0;
        cond->a = std::move(lhs); cond->b = std::move(rhs);
        wh->cond = std::move(cond);

        auto body_blk = e(H::ExprKind::Block, tcx.mkUnit());
        auto assign = e(H::ExprKind::Assign, tcx.mkUnit());
        auto lhs2 = e(H::ExprKind::Var, src.return_ty); lhs2->local = 1;
        auto plus = e(H::ExprKind::Binary, src.return_ty);
        plus->bin = H::BinOp::Add;
        auto pa = e(H::ExprKind::Var, src.return_ty); pa->local = 1;
        auto pb = e(H::ExprKind::LitInt, src.return_ty); pb->scalar = 1;
        plus->a = std::move(pa); plus->b = std::move(pb);
        assign->a = std::move(lhs2); assign->b = std::move(plus);
        body_blk->stmts.push_back(stExpr(std::move(assign)));
        wh->body = std::move(body_blk);
    }
    root->stmts.push_back(stExpr(std::move(wh)));

    auto tail = e(H::ExprKind::Var, src.return_ty); tail->local = 1;
    root->tail = std::move(tail);
    src.root_block = std::move(root);

    MB::MirBuilder b(tcx, src);
    auto body = b.finish();
    auto errs = M::validateBody(body, tcx);
    for (auto& er : errs) std::cerr << "  err: " << er.message << "\n";
    CHECK(errs.empty(), "count: validator emitted errors");
    std::cout << "--- count ---\n" << M::bodyToString(body, tcx) << '\n';
}

// Test 4: validator catches a malformed body.
void test_validator_catches_bad_local(M::TyCtxt& tcx) {
    M::Body b;
    M::LocalDecl ret{}; ret.ty = tcx.mkUnit(); ret.kind = M::LocalKind::ReturnPointer;
    b.locals.push_back(ret);
    b.addBlock();
    M::Statement s; s.kind = M::StatementKind::Assign;
    s.place.local = 99; // out of range
    s.rvalue.kind = M::RvalueKind::Use; s.rvalue.a = M::Operand{};
    s.rvalue.a.kind = M::OperandKind::Constant;
    s.rvalue.a.constant.kind = M::ConstKind::Unit;
    s.rvalue.a.constant.ty = tcx.mkUnit();
    b.blocks[0].statements.push_back(std::move(s));
    b.blocks[0].terminator.kind = M::TerminatorKind::Return;
    auto errs = M::validateBody(b, tcx);
    CHECK(!errs.empty(), "validator should catch out-of-range local");
}

void test_deref_place_lowering(M::TyCtxt& tcx) {
    H::Body src;
    src.name = "deref_assign";
    src.return_ty = tcx.mkInt(M::IntTy::I64);
    src.param_count = 0;
    const auto valueTy = tcx.mkInt(M::IntTy::I64);
    const auto refTy = tcx.mkRef(M::Region{}, valueTy, M::Mutability::Mut);
    src.locals.push_back({"value", valueTy, true, {}});
    src.locals.push_back({"alias", refTy, true, {}});

    auto root = e(H::ExprKind::Block, src.return_ty);

    auto zero = e(H::ExprKind::LitInt, valueTy);
    zero->scalar = 0;
    root->stmts.push_back(stLet(0, std::move(zero)));

    auto aliasInit = e(H::ExprKind::Ref, refTy);
    aliasInit->ref_mut = H::RefMut::Mut;
    auto aliasTarget = e(H::ExprKind::Var, valueTy);
    aliasTarget->local = 0;
    aliasInit->operand_place = std::move(aliasTarget);
    root->stmts.push_back(stLet(1, std::move(aliasInit)));

    auto assign = e(H::ExprKind::Assign, tcx.mkUnit());
    auto deref = e(H::ExprKind::Deref, valueTy);
    auto aliasUse = e(H::ExprKind::Var, refTy);
    aliasUse->local = 1;
    deref->operand_place = std::move(aliasUse);
    auto fortyTwo = e(H::ExprKind::LitInt, valueTy);
    fortyTwo->scalar = 42;
    assign->a = std::move(deref);
    assign->b = std::move(fortyTwo);
    root->stmts.push_back(stExpr(std::move(assign)));

    auto tail = e(H::ExprKind::Deref, valueTy);
    auto tailAlias = e(H::ExprKind::Var, refTy);
    tailAlias->local = 1;
    tail->operand_place = std::move(tailAlias);
    root->tail = std::move(tail);
    src.root_block = std::move(root);

    MB::MirBuilder b(tcx, src);
    auto body = b.finish();
    auto errs = M::validateBody(body, tcx);
    CHECK(errs.empty(), "deref_assign: validator emitted errors");

    bool saw_deref_assign = false;
    for (const auto& bb : body.blocks) {
        for (const auto& stmt : bb.statements) {
            if (stmt.kind != M::StatementKind::Assign) {
                continue;
            }
            if (!stmt.place.projection.empty()
                && stmt.place.projection.back().kind == M::PlaceElemKind::Deref) {
                saw_deref_assign = true;
            }
        }
    }
    CHECK(saw_deref_assign, "deref_assign: expected an Assign into a deref place");
}

} // namespace

int main() {
    M::TyCtxt tcx;
    test_identity_fn(tcx);
    test_if_expr(tcx);
    test_while_loop(tcx);
    test_validator_catches_bad_local(tcx);
    test_deref_place_lowering(tcx);

    // Test opt: hand-build a body that has a foldable BinaryOp
    // and verify constFold replaces it with a Use(Constant).
    {
        M::Body body;
        body.name = "fold_check";
        M::LocalDecl ret{}; ret.ty = tcx.mkInt(M::IntTy::I64); ret.kind = M::LocalKind::ReturnPointer;
        M::LocalDecl tmp{}; tmp.ty = tcx.mkInt(M::IntTy::I64); tmp.kind = M::LocalKind::Temp;
        body.locals = {ret, tmp};
        body.blocks.push_back({});
        M::Statement s; s.kind = M::StatementKind::Assign;
        s.place.local = 1;
        s.rvalue.kind = M::RvalueKind::BinaryOp;
        s.rvalue.bin_op = M::BinOp::Add;
        s.rvalue.a.kind = M::OperandKind::Constant;
        s.rvalue.a.constant.kind = M::ConstKind::ScalarInt;
        s.rvalue.a.constant.scalar = 2;
        s.rvalue.a.constant.ty = tcx.mkInt(M::IntTy::I64);
        s.rvalue.b = s.rvalue.a; s.rvalue.b.constant.scalar = 3;
        body.blocks[0].statements.push_back(s);
        body.blocks[0].terminator.kind = M::TerminatorKind::Return;

        auto stats = M::opt::runDefault(body);
        CHECK(stats.const_folds >= 1, "opt: constFold did not fire");
        CHECK(body.blocks[0].statements[0].rvalue.kind == M::RvalueKind::Use,
              "opt: folded statement should become Use");
        // After folding, DCE may drop the dead temp; verify either we
        // see the folded constant or the statement is Nop'd out.
        const auto& after = body.blocks[0].statements[0];
        CHECK(after.kind == M::StatementKind::Nop ||
              after.rvalue.a.constant.scalar == 5,
              "opt: 2+3 must fold to 5 (or be DCE'd)");
    }

    if (failures) {
        std::cerr << "apollo_mir_tests: " << failures << " failure(s)\n";
        return 1;
    }
    std::cout << "apollo_mir_tests: all passed\n";
    return 0;
}
