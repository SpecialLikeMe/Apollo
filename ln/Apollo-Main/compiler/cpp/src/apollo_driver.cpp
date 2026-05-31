#include "apollo_driver.h"

#include <algorithm>
#include <cctype>
#include <chrono>
#include <filesystem>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <optional>
#include <sstream>
#include <stdexcept>
#include <string_view>
#include <unordered_set>

#include "antlr4-runtime.h"
#include "apollo_codegen_optimization_plan.h"
#include "apollo_ir_layout_plan.h"
#include "apollo_runtime.h"
#include "apollo_source_preprocessor.h"
#include "compilerv1Lexer.h"
#include "visitor.h"

#ifdef _WIN32
extern "C" __declspec(dllimport) int __stdcall SetConsoleOutputCP(unsigned int codePage);
constexpr unsigned int kConsoleUtf8CodePage = 65001;
#endif

namespace {

constexpr std::string_view kCompilerCacheVersion = "apollo-native-cache-v1";

struct CompileCacheEntry {
    std::string compilerSignature;
    std::string sourceHash;
    std::string outputHash;
    std::filesystem::path cachedOutputPath;
    std::vector<std::string> dependencies;
    std::string sourceSize;
    std::string sourceWriteTime;
    std::string outputSize;
    std::string outputWriteTime;
};

struct FileFingerprint {
    std::string size;
    std::string writeTime;
};

bool envEnabled(const char* name) {
    const char* value = std::getenv(name);
    if (value == nullptr) {
        return false;
    }
    const std::string normalized(value);
    return normalized == "1" || normalized == "true" || normalized == "TRUE"
        || normalized == "yes" || normalized == "YES"
        || normalized == "on" || normalized == "ON";
}

bool incrementalCacheEnabled() {
    static const bool enabled = !envEnabled("APOLLO_DISABLE_INCREMENTAL_CACHE");
    return enabled;
}

bool astStreamingEnabled() {
    static const bool enabled = !envEnabled("APOLLO_HIDE_AST");
    return enabled;
}

void prepareTreeConsole() {
#ifdef _WIN32
    static const bool configured = [] {
        SetConsoleOutputCP(kConsoleUtf8CodePage);
        return true;
    }();
    (void)configured;
#endif
}

struct AstDisplayNode {
    std::string label;
    std::vector<AstDisplayNode> children;
};

std::string truncateDisplayLabel(std::string text, size_t maxLength = 80) {
    if (text.size() <= maxLength) {
        return text;
    }
    if (maxLength <= 3) {
        return text.substr(0, maxLength);
    }
    return text.substr(0, maxLength - 3) + "...";
}

// ---------- forward decls ----------

AstDisplayNode summarizeBlock(compilerv1Parser::BlockContext* block, std::string label);
std::optional<AstDisplayNode> summarizeStatement(compilerv1Parser::StatementContext* statement);
AstDisplayNode summarizeExpression(compilerv1Parser::ExpressionContext* expression);
AstDisplayNode summarizePrimary(compilerv1Parser::PrimaryContext* primary);
AstDisplayNode summarizeMethod(compilerv1Parser::MethodContext* method);
AstDisplayNode summarizeField(compilerv1Parser::FieldContext* field);
AstDisplayNode summarizeFunction(compilerv1Parser::FunctionContext* function);
AstDisplayNode summarizeTemplateFunction(compilerv1Parser::TemplateFunctionContext* function);
AstDisplayNode summarizeEnumDecl(compilerv1Parser::EnumDeclContext* enumDecl);

// ---------- small leaf renderers ----------

std::string renderArgsSummary(compilerv1Parser::ArgsContext* args);

std::string renderFunctionCallSummary(compilerv1Parser::FunctionCallContext* functionCall) {
    if (functionCall == nullptr || functionCall->ID() == nullptr) {
        return "<call>";
    }
    std::string callee = functionCall->ID()->getText();
    if (functionCall->explicitTypeArgs() != nullptr) {
        callee += functionCall->explicitTypeArgs()->getText();
    }
    return truncateDisplayLabel(
        callee + "(" + renderArgsSummary(functionCall->args()) + ")",
        72);
}

std::string renderMemberAccessSummary(compilerv1Parser::MemberaccessContext* memberAccess) {
    if (memberAccess == nullptr) {
        return "<access>";
    }
    const std::string base = memberAccess->accessBase() == nullptr
        ? std::string("<base>")
        : memberAccess->accessBase()->getText();
    if (memberAccess->functionCall() != nullptr) {
        return truncateDisplayLabel(base + "." + renderFunctionCallSummary(memberAccess->functionCall()), 72);
    }
    if (memberAccess->ID() != nullptr) {
        return truncateDisplayLabel(base + "." + memberAccess->ID()->getText(), 72);
    }
    return truncateDisplayLabel(base, 72);
}

std::string renderArgsSummary(compilerv1Parser::ArgsContext* args) {
    if (args == nullptr) {
        return std::string();
    }
    std::ostringstream builder;
    const auto expressions = args->expression();
    for (size_t index = 0; index < expressions.size(); ++index) {
        if (index > 0) {
            builder << ", ";
        }
        if (expressions[index] != nullptr) {
            builder << truncateDisplayLabel(expressions[index]->getText(), 24);
        }
    }
    return builder.str();
}

std::string renderQualifiedTypeSummary(compilerv1Parser::QualifiedTypeContext* qualifiedType) {
    if (qualifiedType == nullptr || qualifiedType->ID() == nullptr || qualifiedType->enumVariantName() == nullptr) {
        return "<qualified>";
    }
    return qualifiedType->ID()->getText() + std::string("::") + qualifiedType->enumVariantName()->getText();
}

// ---------- expression summarization (structural) ----------

// Generic helper: given a chain context like `orExpr` with multiple `andExpr` children
// separated by operator tokens, return a "binop <op>" node with each operand as a child.
// If only one operand, descend directly.
template <typename ChildCtx>
AstDisplayNode summarizeBinopChain(
    antlr4::ParserRuleContext* parent,
    const std::vector<ChildCtx*>& operands,
    const char* nodeLabel,
    AstDisplayNode (*recurse)(ChildCtx*))
{
    if (operands.size() <= 1) {
        return operands.empty()
            ? AstDisplayNode{nodeLabel, {}}
            : recurse(operands[0]);
    }
    // Collect operator tokens that appear between operands.
    std::vector<std::string> ops;
    for (auto* child : parent->children) {
        if (auto* tnode = dynamic_cast<antlr4::tree::TerminalNode*>(child)) {
            ops.push_back(tnode->getText());
        }
    }
    std::string label = nodeLabel;
    if (!ops.empty()) {
        label += " ";
        for (size_t i = 0; i < ops.size(); ++i) {
            if (i > 0) label += ",";
            label += ops[i];
        }
    }
    AstDisplayNode node{truncateDisplayLabel(label, 72), {}};
    for (auto* operand : operands) {
        node.children.push_back(recurse(operand));
    }
    return node;
}

AstDisplayNode summarizeMultExpr(compilerv1Parser::MultExprContext* ctx) {
    if (ctx == nullptr) return {"<multExpr>", {}};
    auto operands = ctx->primary();
    if (operands.size() <= 1) {
        return operands.empty() ? AstDisplayNode{"<multExpr>", {}} : summarizePrimary(operands[0]);
    }
    return summarizeBinopChain<compilerv1Parser::PrimaryContext>(
        ctx, operands, "binop */%", &summarizePrimary);
}

AstDisplayNode summarizeAddExpr(compilerv1Parser::AddExprContext* ctx) {
    if (ctx == nullptr) return {"<addExpr>", {}};
    auto operands = ctx->multExpr();
    if (operands.size() <= 1) {
        return operands.empty() ? AstDisplayNode{"<addExpr>", {}} : summarizeMultExpr(operands[0]);
    }
    return summarizeBinopChain<compilerv1Parser::MultExprContext>(
        ctx, operands, "binop +-", &summarizeMultExpr);
}

AstDisplayNode summarizeRelExpr(compilerv1Parser::RelationalExprContext* ctx) {
    if (ctx == nullptr) return {"<relExpr>", {}};
    auto operands = ctx->addExpr();
    if (operands.size() <= 1) {
        return operands.empty() ? AstDisplayNode{"<relExpr>", {}} : summarizeAddExpr(operands[0]);
    }
    return summarizeBinopChain<compilerv1Parser::AddExprContext>(
        ctx, operands, "cmp", &summarizeAddExpr);
}

AstDisplayNode summarizeShiftExpr(compilerv1Parser::ShiftExprContext* ctx) {
    if (ctx == nullptr) return {"<shiftExpr>", {}};
    auto operands = ctx->relationalExpr();
    if (operands.size() <= 1) {
        return operands.empty() ? AstDisplayNode{"<shiftExpr>", {}} : summarizeRelExpr(operands[0]);
    }
    return summarizeBinopChain<compilerv1Parser::RelationalExprContext>(
        ctx, operands, "shift", &summarizeRelExpr);
}

AstDisplayNode summarizeEqExpr(compilerv1Parser::EqualityExprContext* ctx) {
    if (ctx == nullptr) return {"<eqExpr>", {}};
    auto operands = ctx->shiftExpr();
    if (operands.size() <= 1) {
        return operands.empty() ? AstDisplayNode{"<eqExpr>", {}} : summarizeShiftExpr(operands[0]);
    }
    return summarizeBinopChain<compilerv1Parser::ShiftExprContext>(
        ctx, operands, "eq", &summarizeShiftExpr);
}

AstDisplayNode summarizeBitAndExpr(compilerv1Parser::BitwiseAndExprContext* ctx) {
    if (ctx == nullptr) return {"<bitAnd>", {}};
    auto operands = ctx->equalityExpr();
    if (operands.size() <= 1) {
        return operands.empty() ? AstDisplayNode{"<bitAnd>", {}} : summarizeEqExpr(operands[0]);
    }
    return summarizeBinopChain<compilerv1Parser::EqualityExprContext>(
        ctx, operands, "bitand &", &summarizeEqExpr);
}

AstDisplayNode summarizeBitXorExpr(compilerv1Parser::BitwiseXorExprContext* ctx) {
    if (ctx == nullptr) return {"<bitXor>", {}};
    auto operands = ctx->bitwiseAndExpr();
    if (operands.size() <= 1) {
        return operands.empty() ? AstDisplayNode{"<bitXor>", {}} : summarizeBitAndExpr(operands[0]);
    }
    return summarizeBinopChain<compilerv1Parser::BitwiseAndExprContext>(
        ctx, operands, "bitxor ^", &summarizeBitAndExpr);
}

AstDisplayNode summarizeBitOrExpr(compilerv1Parser::BitwiseOrExprContext* ctx) {
    if (ctx == nullptr) return {"<bitOr>", {}};
    auto operands = ctx->bitwiseXorExpr();
    if (operands.size() <= 1) {
        return operands.empty() ? AstDisplayNode{"<bitOr>", {}} : summarizeBitXorExpr(operands[0]);
    }
    return summarizeBinopChain<compilerv1Parser::BitwiseXorExprContext>(
        ctx, operands, "bitor |", &summarizeBitXorExpr);
}

AstDisplayNode summarizeAndExpr(compilerv1Parser::AndExprContext* ctx) {
    if (ctx == nullptr) return {"<and>", {}};
    auto operands = ctx->bitwiseOrExpr();
    if (operands.size() <= 1) {
        return operands.empty() ? AstDisplayNode{"<and>", {}} : summarizeBitOrExpr(operands[0]);
    }
    return summarizeBinopChain<compilerv1Parser::BitwiseOrExprContext>(
        ctx, operands, "and &&", &summarizeBitOrExpr);
}

AstDisplayNode summarizeOrExpr(compilerv1Parser::OrExprContext* ctx) {
    if (ctx == nullptr) return {"<or>", {}};
    auto operands = ctx->andExpr();
    if (operands.size() <= 1) {
        return operands.empty() ? AstDisplayNode{"<or>", {}} : summarizeAndExpr(operands[0]);
    }
    return summarizeBinopChain<compilerv1Parser::AndExprContext>(
        ctx, operands, "or ||", &summarizeAndExpr);
}

AstDisplayNode summarizeExpression(compilerv1Parser::ExpressionContext* expression) {
    if (expression == nullptr) {
        return {"<expr>", {}};
    }
    auto ternaryParts = expression->expression();
    if (ternaryParts.size() == 2) {
        AstDisplayNode node{"ternary ?:", {}};
        node.children.push_back([&]{
            auto cond = summarizeOrExpr(expression->orExpr());
            cond.label = "cond: " + cond.label;
            return cond;
        }());
        auto t = summarizeExpression(ternaryParts[0]);
        t.label = "then: " + t.label;
        node.children.push_back(t);
        auto e = summarizeExpression(ternaryParts[1]);
        e.label = "else: " + e.label;
        node.children.push_back(e);
        return node;
    }
    return summarizeOrExpr(expression->orExpr());
}

AstDisplayNode summarizePrimary(compilerv1Parser::PrimaryContext* primary) {
    if (primary == nullptr) {
        return {"<primary>", {}};
    }
    if (primary->INT() != nullptr)         return {"int " + primary->INT()->getText(), {}};
    if (primary->FLOAT() != nullptr)       return {"float " + primary->FLOAT()->getText(), {}};
    if (primary->TRUE() != nullptr)        return {"bool true", {}};
    if (primary->FALSE() != nullptr)       return {"bool false", {}};
    if (primary->NULL_LITERAL() != nullptr) return {"null", {}};
    if (primary->SUCCESS() != nullptr)     return {"success", {}};
    if (primary->CHAR() != nullptr)        return {"char " + primary->CHAR()->getText(), {}};
    if (primary->BYTE() != nullptr)        return {"byte " + primary->BYTE()->getText(), {}};
    if (primary->STRING() != nullptr)      return {truncateDisplayLabel("string " + primary->STRING()->getText(), 72), {}};
    if (primary->templateString() != nullptr) {
        return {truncateDisplayLabel("template-string " + primary->templateString()->getText(), 72), {}};
    }
    if (primary->stdinValue() != nullptr)  return {"sys.stdin()", {}};
    if (primary->INDEF() != nullptr)       return {"indef", {}};
    if (primary->ID() != nullptr)          return {"id " + primary->ID()->getText(), {}};
    if (primary->enumConstructor() != nullptr) {
        AstDisplayNode node{truncateDisplayLabel("enum " + renderQualifiedTypeSummary(primary->enumConstructor()->qualifiedType()), 72), {}};
        if (primary->enumConstructor()->args() != nullptr) {
            for (auto* expr : primary->enumConstructor()->args()->expression()) {
                node.children.push_back(summarizeExpression(expr));
            }
        }
        if (primary->enumConstructor()->braceInitializer() != nullptr) {
            node.children.push_back({truncateDisplayLabel("brace " + primary->enumConstructor()->braceInitializer()->getText(), 72), {}});
        }
        return node;
    }
    if (primary->functionCall() != nullptr) {
        return {"call " + renderFunctionCallSummary(primary->functionCall()), {}};
    }
    if (primary->memberaccess() != nullptr) {
        return {"access " + renderMemberAccessSummary(primary->memberaccess()), {}};
    }
    if (primary->indexedAccess() != nullptr) {
        return {truncateDisplayLabel("index " + primary->indexedAccess()->getText(), 72), {}};
    }
    if (primary->compositeLiteral() != nullptr) {
        AstDisplayNode node{"shape", {}};
        for (auto* expr : primary->compositeLiteral()->expression()) {
            node.children.push_back(summarizeExpression(expr));
        }
        return node;
    }
    if (primary->braceInitializer() != nullptr) {
        return {truncateDisplayLabel("brace " + primary->braceInitializer()->getText(), 72), {}};
    }
    if (primary->instanceValue() != nullptr) {
        return {truncateDisplayLabel("instance " + primary->instanceValue()->getText(), 72), {}};
    }
    if (primary->borrowExpr() != nullptr) {
        return {truncateDisplayLabel("borrow " + primary->borrowExpr()->getText(), 72), {}};
    }
    if (primary->unaryExpr() != nullptr) {
        auto* u = primary->unaryExpr();
        std::string op;
        if (!u->children.empty()) {
            if (auto* tnode = dynamic_cast<antlr4::tree::TerminalNode*>(u->children[0])) {
                op = tnode->getText();
            }
        }
        AstDisplayNode node{"unary " + op, {}};
        if (u->primary() != nullptr) {
            node.children.push_back(summarizePrimary(u->primary()));
        }
        return node;
    }
    if (primary->castExpr() != nullptr) {
        auto* c = primary->castExpr();
        std::string label = "cast";
        if (c->castType() != nullptr) {
            label += " (" + c->castType()->getText() + ")";
        }
        AstDisplayNode node{truncateDisplayLabel(label, 72), {}};
        if (c->primary() != nullptr) {
            node.children.push_back(summarizePrimary(c->primary()));
        }
        return node;
    }
    if (primary->placementNewExpr() != nullptr) {
        auto* p = primary->placementNewExpr();
        AstDisplayNode node{"plcnew", {}};
        if (p->expression() != nullptr) {
            auto e = summarizeExpression(p->expression());
            e.label = "size: " + e.label;
            node.children.push_back(e);
        }
        if (p->typeRef() != nullptr) {
            node.children.push_back({"type " + p->typeRef()->getText(), {}});
        }
        return node;
    }
    if (primary->expression() != nullptr) {
        AstDisplayNode node{"paren", {}};
        node.children.push_back(summarizeExpression(primary->expression()));
        return node;
    }
    return {truncateDisplayLabel("primary " + primary->getText(), 72), {}};
}

// ---------- structural helpers ----------

AstDisplayNode summarizeReturn(compilerv1Parser::ReturnStmtContext* returnStmt) {
    AstDisplayNode node{"return", {}};
    if (returnStmt != nullptr && returnStmt->expression() != nullptr) {
        node.children.push_back(summarizeExpression(returnStmt->expression()));
    }
    return node;
}

AstDisplayNode summarizeInitCore(compilerv1Parser::InitCoreContext* init) {
    if (init == nullptr) return {"init", {}};
    std::string label = "init";
    if (init->LET() != nullptr) label = "init let";
    if (init->CONST() != nullptr) label += " const";
    if (init->NCONST() != nullptr) label += " nconst";
    if (auto* id = init->ID(); id != nullptr) label += " " + id->getText();
    AstDisplayNode node{truncateDisplayLabel(label, 72), {}};
    if (init->typeRef() != nullptr) {
        node.children.push_back({"type " + init->typeRef()->getText(), {}});
    }
    if (init->instanceValue() != nullptr) {
        node.children.push_back({truncateDisplayLabel("instance " + init->instanceValue()->getText(), 72), {}});
    }
    if (init->expression() != nullptr) {
        auto e = summarizeExpression(init->expression());
        e.label = "value: " + e.label;
        node.children.push_back(e);
    }
    if (init->braceInitializer() != nullptr) {
        node.children.push_back({truncateDisplayLabel("brace " + init->braceInitializer()->getText(), 72), {}});
    }
    return node;
}

AstDisplayNode summarizeAssignment(compilerv1Parser::AssignmentContext* assign) {
    if (assign == nullptr || assign->assignmentCore() == nullptr) {
        return {"assign", {}};
    }
    auto* core = assign->assignmentCore();
    std::string targetText = core->assignTarget() != nullptr
        ? core->assignTarget()->getText() : "<target>";
    AstDisplayNode node{truncateDisplayLabel("assign " + targetText, 72), {}};
    if (core->expression() != nullptr) {
        auto e = summarizeExpression(core->expression());
        e.label = "value: " + e.label;
        node.children.push_back(e);
    }
    return node;
}

AstDisplayNode summarizeMemberAssignment(compilerv1Parser::MemberAssignmentContext* ma) {
    if (ma == nullptr) return {"member-assign", {}};
    std::string base = ma->accessBase() != nullptr ? ma->accessBase()->getText() : "<base>";
    std::string field = ma->ID() != nullptr ? ma->ID()->getText() : "<field>";
    AstDisplayNode node{truncateDisplayLabel("member-assign " + base + "." + field, 72), {}};
    if (ma->expression() != nullptr) {
        auto e = summarizeExpression(ma->expression());
        e.label = "value: " + e.label;
        node.children.push_back(e);
    }
    return node;
}

AstDisplayNode summarizeSwitch(compilerv1Parser::SwitchStatementContext* sw) {
    AstDisplayNode node{"switch", {}};
    if (sw == nullptr) return node;
    if (sw->expression() != nullptr) {
        auto e = summarizeExpression(sw->expression());
        e.label = "subject: " + e.label;
        node.children.push_back(e);
    }
    for (auto* c : sw->switchCase()) {
        std::string caseLabel = "case";
        if (c->expression() != nullptr) {
            caseLabel += " " + truncateDisplayLabel(c->expression()->getText(), 32);
        }
        AstDisplayNode caseNode{caseLabel, {}};
        caseNode.children.push_back(summarizeBlock(c->block(), "body"));
        node.children.push_back(caseNode);
    }
    if (sw->switchDefault() != nullptr) {
        AstDisplayNode def{"default", {}};
        def.children.push_back(summarizeBlock(sw->switchDefault()->block(), "body"));
        node.children.push_back(def);
    }
    return node;
}

AstDisplayNode summarizeTryCatch(compilerv1Parser::TryCatchStatementContext* tc) {
    AstDisplayNode node{"try-catch", {}};
    if (tc == nullptr) return node;
    auto blocks = tc->block();
    if (!blocks.empty()) {
        node.children.push_back(summarizeBlock(blocks[0], "try"));
    }
    if (blocks.size() > 1) {
        std::string handler = "catch";
        if (tc->ID() != nullptr) handler += " " + tc->ID()->getText();
        node.children.push_back(summarizeBlock(blocks[1], handler));
    }
    return node;
}

AstDisplayNode summarizeFieldImpl(compilerv1Parser::FieldContext* field) {
    if (field == nullptr) return {"field", {}};
    std::string label = "field";
    if (field->CONST() != nullptr) label += " const";
    if (field->NCONST() != nullptr) label += " nconst";
    if (field->typeRef() != nullptr) label += " " + field->typeRef()->getText();
    if (field->ID() != nullptr) label += " " + field->ID()->getText();
    return {truncateDisplayLabel(label, 72), {}};
}

AstDisplayNode summarizeField(compilerv1Parser::FieldContext* field) {
    return summarizeFieldImpl(field);
}

AstDisplayNode summarizeMethod(compilerv1Parser::MethodContext* method) {
    if (method == nullptr) return {"method", {}};
    std::string label = "method";
    if (method->STATIC() != nullptr) label += " static";
    if (method->VIRTUAL() != nullptr) label += " virtual";
    if (method->returnType() != nullptr) label += " " + method->returnType()->getText();
    if (method->ID() != nullptr) {
        label += " " + method->ID()->getText();
    } else if (!method->children.empty()) {
        // __construct / __destruct keyword is the first child
        if (auto* tnode = dynamic_cast<antlr4::tree::TerminalNode*>(method->children[0])) {
            std::string text = tnode->getText();
            if (text == "__construct" || text == "__destruct") {
                label = "method " + text;
            }
        }
    }
    AstDisplayNode node{truncateDisplayLabel(label, 72), {}};
    if (method->params() != nullptr) {
        AstDisplayNode params{"params", {}};
        for (auto* p : method->params()->param()) {
            std::string pl = "param";
            if (p->typeRef() != nullptr) pl += " " + p->typeRef()->getText();
            if (p->ID() != nullptr) pl += " " + p->ID()->getText();
            params.children.push_back({truncateDisplayLabel(pl, 72), {}});
        }
        if (!params.children.empty()) node.children.push_back(params);
    }
    node.children.push_back(summarizeBlock(method->block(), "body"));
    return node;
}

AstDisplayNode summarizeClassBody(compilerv1Parser::ClassBodyContext* body) {
    AstDisplayNode node{"body", {}};
    if (body == nullptr) return node;
    for (auto* m : body->classMember()) {
        if (m->method() != nullptr)        node.children.push_back(summarizeMethod(m->method()));
        else if (m->field() != nullptr)    node.children.push_back(summarizeField(m->field()));
        else if (m->templateDecl() != nullptr) {
            node.children.push_back({truncateDisplayLabel("template " + m->templateDecl()->ID()->getText(), 72), {}});
        }
        else if (m->class_() != nullptr) {
            std::string nested = "class";
            if (m->class_()->ID() != nullptr) nested += " " + m->class_()->ID()->getText();
            node.children.push_back({truncateDisplayLabel(nested, 72), {}});
        }
        else if (m->struct_() != nullptr) {
            std::string nested = "struct";
            if (m->struct_()->ID() != nullptr) nested += " " + m->struct_()->ID()->getText();
            node.children.push_back({truncateDisplayLabel(nested, 72), {}});
        }
    }
    return node;
}

AstDisplayNode summarizeStructBody(compilerv1Parser::StructBodyContext* body) {
    AstDisplayNode node{"body", {}};
    if (body == nullptr) return node;
    for (auto* m : body->structMember()) {
        if (m->method() != nullptr)        node.children.push_back(summarizeMethod(m->method()));
        else if (m->field() != nullptr)    node.children.push_back(summarizeField(m->field()));
        else if (m->templateDecl() != nullptr) {
            node.children.push_back({truncateDisplayLabel("template " + m->templateDecl()->ID()->getText(), 72), {}});
        }
    }
    return node;
}

AstDisplayNode summarizeClass(compilerv1Parser::ClassContext* cls) {
    if (cls == nullptr) return {"class", {}};
    std::string label = "class";
    if (cls->ID() != nullptr) label += " " + cls->ID()->getText();
    AstDisplayNode node{truncateDisplayLabel(label, 72), {}};
    if (cls->inheritanceClause() != nullptr) {
        node.children.push_back({truncateDisplayLabel("inherits " + cls->inheritanceClause()->getText(), 72), {}});
    }
    node.children.push_back(summarizeClassBody(cls->classBody()));
    return node;
}

AstDisplayNode summarizeStruct(compilerv1Parser::StructContext* st) {
    if (st == nullptr) return {"struct", {}};
    std::string label = "struct";
    if (st->ID() != nullptr) label += " " + st->ID()->getText();
    AstDisplayNode node{truncateDisplayLabel(label, 72), {}};
    if (st->inheritanceClause() != nullptr) {
        node.children.push_back({truncateDisplayLabel("inherits " + st->inheritanceClause()->getText(), 72), {}});
    }
    node.children.push_back(summarizeStructBody(st->structBody()));
    return node;
}

AstDisplayNode summarizeMemstruct(compilerv1Parser::MemstructContext* ms) {
    if (ms == nullptr) return {"memstruct", {}};
    std::string label = "memstruct";
    if (ms->ID() != nullptr) label += " " + ms->ID()->getText();
    AstDisplayNode node{truncateDisplayLabel(label, 72), {}};
    node.children.push_back(summarizeStructBody(ms->structBody()));
    return node;
}

AstDisplayNode summarizeInterface(compilerv1Parser::InterfaceDeclContext* itr) {
    if (itr == nullptr) return {"interface", {}};
    std::string label = "interface";
    if (itr->ID() != nullptr) label += " " + itr->ID()->getText();
    AstDisplayNode node{truncateDisplayLabel(label, 72), {}};
    if (itr->inheritanceClause() != nullptr) {
        node.children.push_back({truncateDisplayLabel("inherits " + itr->inheritanceClause()->getText(), 72), {}});
    }
    for (auto* vm : itr->virtualMethod()) {
        node.children.push_back({truncateDisplayLabel("vmethod " + vm->getText(), 72), {}});
    }
    return node;
}

AstDisplayNode summarizeTemplateDecl(compilerv1Parser::TemplateDeclContext* td) {
    if (td == nullptr) return {"template", {}};
    std::string label = "template";
    if (td->ID() != nullptr) label += " " + td->ID()->getText();
    if (td->templateParams() != nullptr) {
        label += "<" + td->templateParams()->getText() + ">";
    }
    AstDisplayNode node{truncateDisplayLabel(label, 72), {}};
    node.children.push_back(summarizeClassBody(td->classBody()));
    return node;
}

AstDisplayNode summarizeEnumDecl(compilerv1Parser::EnumDeclContext* enumDecl) {
    if (enumDecl == nullptr) return {"enum", {}};
    std::string label = "enum";
    if (enumDecl->ID() != nullptr) label += " " + enumDecl->ID()->getText();
    AstDisplayNode node{truncateDisplayLabel(label, 72), {}};
    for (auto* variant : enumDecl->enumVariant()) {
        if (variant == nullptr || variant->enumVariantName() == nullptr) {
            continue;
        }
        std::string variantLabel = "variant " + variant->enumVariantName()->getText();
        AstDisplayNode variantNode{truncateDisplayLabel(variantLabel, 72), {}};
        if (variant->typeRef() != nullptr) {
            variantNode.children.push_back({"payload " + variant->typeRef()->getText(), {}});
        }
        if (variant->structBody() != nullptr) {
            variantNode.children.push_back(summarizeStructBody(variant->structBody()));
        }
        node.children.push_back(std::move(variantNode));
    }
    return node;
}

AstDisplayNode summarizeMacro(compilerv1Parser::MacroContext* macro) {
    if (macro == nullptr) return {"macro", {}};
    std::string label = "macro";
    if (macro->ID() != nullptr) label += " " + macro->ID()->getText();
    AstDisplayNode node{truncateDisplayLabel(label, 72), {}};
    node.children.push_back(summarizeBlock(macro->block(), "body"));
    return node;
}

AstDisplayNode summarizeBlock(compilerv1Parser::BlockContext* block, std::string label) {
    AstDisplayNode node{std::move(label), {}};
    if (block == nullptr) return node;
    for (antlr4::tree::ParseTree* child : block->children) {
        if (auto* statement = dynamic_cast<compilerv1Parser::StatementContext*>(child)) {
            auto summary = summarizeStatement(statement);
            if (summary.has_value()) node.children.push_back(*summary);
            continue;
        }
        if (auto* returnStmt = dynamic_cast<compilerv1Parser::ReturnStmtContext*>(child)) {
            node.children.push_back(summarizeReturn(returnStmt));
        }
    }
    if (node.children.empty()) {
        node.children.push_back({"empty", {}});
    }
    return node;
}

std::optional<AstDisplayNode> summarizeStatement(compilerv1Parser::StatementContext* s) {
    if (s == nullptr) return std::nullopt;

    if (s->init() != nullptr)              return summarizeInitCore(s->init()->initCore());
    if (s->globalInit() != nullptr) {
        AstDisplayNode n{"global", {}};
        if (s->globalInit()->init() != nullptr) {
            n.children.push_back(summarizeInitCore(s->globalInit()->init()->initCore()));
        }
        return n;
    }
    if (s->bridgeInit() != nullptr) {
        AstDisplayNode n{"bridge", {}};
        if (s->bridgeInit()->init() != nullptr) {
            n.children.push_back(summarizeInitCore(s->bridgeInit()->init()->initCore()));
        }
        return n;
    }
    if (s->ltoInit() != nullptr) {
        std::string label = "lto-init";
        if (s->ltoInit()->ID() != nullptr) label += " " + s->ltoInit()->ID()->getText();
        AstDisplayNode n{truncateDisplayLabel(label, 72), {}};
        if (s->ltoInit()->expression() != nullptr) {
            n.children.push_back(summarizeExpression(s->ltoInit()->expression()));
        }
        return n;
    }
    if (s->easyInit() != nullptr) {
        return AstDisplayNode{truncateDisplayLabel("easy-init " + s->easyInit()->getText(), 72), {}};
    }
    if (s->nrcDecl() != nullptr) {
        std::string label = "nrc";
        if (s->nrcDecl()->ID() != nullptr) label += " " + s->nrcDecl()->ID()->getText();
        if (s->nrcDecl()->typeRef() != nullptr) label += " = " + s->nrcDecl()->typeRef()->getText();
        return AstDisplayNode{truncateDisplayLabel(label, 72), {}};
    }
    if (s->assignment() != nullptr)        return summarizeAssignment(s->assignment());
    if (s->memberAssignment() != nullptr)  return summarizeMemberAssignment(s->memberAssignment());
    if (s->memberaccess() != nullptr)      return AstDisplayNode{"call " + renderMemberAccessSummary(s->memberaccess()), {}};
    if (s->functionCall() != nullptr)      return AstDisplayNode{"call " + renderFunctionCallSummary(s->functionCall()), {}};
    if (s->asyncCall() != nullptr && s->asyncCall()->functionCall() != nullptr) {
        return AstDisplayNode{"async " + renderFunctionCallSummary(s->asyncCall()->functionCall()), {}};
    }
    if (s->syscallStmt() != nullptr)       return AstDisplayNode{"syscall", {}};
    if (s->ifStatement() != nullptr) {
        AstDisplayNode node{"if", {}};
        if (s->ifStatement()->expression() != nullptr) {
            auto c = summarizeExpression(s->ifStatement()->expression());
            c.label = "cond: " + c.label;
            node.children.push_back(c);
        }
        const auto blocks = s->ifStatement()->block();
        if (!blocks.empty())       node.children.push_back(summarizeBlock(blocks[0], "then"));
        if (blocks.size() > 1)     node.children.push_back(summarizeBlock(blocks[1], "else"));
        return node;
    }
    if (s->whileStatement() != nullptr) {
        AstDisplayNode node{"while", {}};
        if (s->whileStatement()->expression() != nullptr) {
            auto c = summarizeExpression(s->whileStatement()->expression());
            c.label = "cond: " + c.label;
            node.children.push_back(c);
        }
        node.children.push_back(summarizeBlock(s->whileStatement()->block(), "body"));
        return node;
    }
    if (s->forStatement() != nullptr) {
        AstDisplayNode node{"for", {}};
        node.children.push_back(summarizeBlock(s->forStatement()->block(), "body"));
        return node;
    }
    if (s->forInStatement() != nullptr) {
        std::string label = "for-in";
        if (s->forInStatement()->ID() != nullptr) label += " " + s->forInStatement()->ID()->getText();
        AstDisplayNode node{truncateDisplayLabel(label, 72), {}};
        node.children.push_back(summarizeBlock(s->forInStatement()->block(), "body"));
        return node;
    }
    if (s->loopStatement() != nullptr) {
        AstDisplayNode node{"loop", {}};
        node.children.push_back(summarizeBlock(s->loopStatement()->block(), "body"));
        return node;
    }
    if (s->switchStatement() != nullptr)   return summarizeSwitch(s->switchStatement());
    if (s->tryCatchStatement() != nullptr) return summarizeTryCatch(s->tryCatchStatement());
    if (s->autocatchStatement() != nullptr) {
        std::string label = "autocatch";
        if (s->autocatchStatement()->ID() != nullptr) label += " " + s->autocatchStatement()->ID()->getText();
        AstDisplayNode node{truncateDisplayLabel(label, 72), {}};
        node.children.push_back(summarizeBlock(s->autocatchStatement()->block(), "body"));
        return node;
    }
    if (s->assertStmt() != nullptr) {
        AstDisplayNode node{"assert", {}};
        if (s->assertStmt()->expression() != nullptr) {
            node.children.push_back(summarizeExpression(s->assertStmt()->expression()));
        }
        return node;
    }
    if (s->print() != nullptr) {
        AstDisplayNode node{"print", {}};
        if (s->print()->expression() != nullptr) {
            node.children.push_back(summarizeExpression(s->print()->expression()));
        }
        return node;
    }
    if (s->stdinStmt() != nullptr)         return AstDisplayNode{"stdin " + s->stdinStmt()->getText(), {}};
    if (s->instance() != nullptr) {
        std::string label = "instance";
        if (s->instance()->ID() != nullptr) label += " " + s->instance()->ID()->getText();
        return AstDisplayNode{truncateDisplayLabel(label, 72), {}};
    }
    if (s->instancepush() != nullptr)      return AstDisplayNode{truncateDisplayLabel("instance.push " + s->instancepush()->getText(), 72), {}};
    if (s->nativemode() != nullptr)        return AstDisplayNode{"nativemode", {}};
    if (s->inlineForeignBlock() != nullptr) {
        std::string label = "inline-foreign";
        // 3rd child is the language token
        if (s->inlineForeignBlock()->children.size() >= 3) {
            if (auto* t = dynamic_cast<antlr4::tree::TerminalNode*>(s->inlineForeignBlock()->children[2])) {
                label += " " + t->getText();
            }
        }
        return AstDisplayNode{truncateDisplayLabel(label, 72), {}};
    }
    if (s->malloc() != nullptr)            return AstDisplayNode{truncateDisplayLabel("malloc " + s->malloc()->getText(), 72), {}};
    if (s->mntDecl() != nullptr)           return AstDisplayNode{truncateDisplayLabel("mnt " + s->mntDecl()->getText(), 72), {}};
    if (s->delalc() != nullptr)            return AstDisplayNode{truncateDisplayLabel("delalc " + s->delalc()->getText(), 72), {}};
    if (s->free() != nullptr)              return AstDisplayNode{truncateDisplayLabel("free " + s->free()->getText(), 72), {}};
    if (s->plcnew() != nullptr)            return AstDisplayNode{truncateDisplayLabel("plcnew " + s->plcnew()->getText(), 72), {}};
    if (s->pointer() != nullptr)           return AstDisplayNode{truncateDisplayLabel("pointer " + s->pointer()->getText(), 72), {}};
    if (s->thread() != nullptr)            return AstDisplayNode{truncateDisplayLabel("thread " + s->thread()->getText(), 72), {}};
    if (s->lambda() != nullptr) {
        std::string label = "lambda";
        if (s->lambda()->ID() != nullptr) label += " " + s->lambda()->ID()->getText();
        return AstDisplayNode{truncateDisplayLabel(label, 72), {}};
    }
    if (s->closure() != nullptr) {
        std::string label = "closure";
        if (s->closure()->ID() != nullptr) label += " " + s->closure()->ID()->getText();
        return AstDisplayNode{truncateDisplayLabel(label, 72), {}};
    }
    if (s->srcDecl() != nullptr) {
        std::string label = "src";
        if (s->srcDecl()->ID() != nullptr) label += " " + s->srcDecl()->ID()->getText();
        return AstDisplayNode{truncateDisplayLabel(label, 72), {}};
    }
    if (s->inductStmt() != nullptr)        return AstDisplayNode{"induct " + s->inductStmt()->ID()->getText(), {}};
    if (s->releaseStmt() != nullptr)       return AstDisplayNode{"release " + s->releaseStmt()->ID()->getText(), {}};
    if (s->cscope() != nullptr) {
        AstDisplayNode n{"autoreleasepool", {}};
        n.children.push_back(summarizeBlock(s->cscope()->block(), "body"));
        return n;
    }
    if (s->unsafeBlock() != nullptr) {
        AstDisplayNode n{"unsafe", {}};
        n.children.push_back(summarizeBlock(s->unsafeBlock()->block(), "body"));
        return n;
    }
    if (s->bypassBlock() != nullptr) {
        AstDisplayNode n{"bypass", {}};
        n.children.push_back(summarizeBlock(s->bypassBlock()->block(), "body"));
        return n;
    }
    if (s->autofmtdeclareScope() != nullptr) {
        AstDisplayNode n{"autofmt-declare", {}};
        n.children.push_back(summarizeBlock(s->autofmtdeclareScope()->block(), "body"));
        return n;
    }
    if (s->templateDecl() != nullptr)      return summarizeTemplateDecl(s->templateDecl());
    if (s->class_() != nullptr)            return summarizeClass(s->class_());
    if (s->struct_() != nullptr)           return summarizeStruct(s->struct_());
    if (s->interfaceDecl() != nullptr)     return summarizeInterface(s->interfaceDecl());
    if (s->block() != nullptr)             return summarizeBlock(s->block(), "block");

    // Last-resort: report unknown rule, not raw source dump.
    return AstDisplayNode{"<unhandled-stmt>", {}};
}

AstDisplayNode summarizeFunction(compilerv1Parser::FunctionContext* function) {
    std::string label = function != nullptr && function->ID() != nullptr
        ? "fn " + function->ID()->getText()
        : "fn <anonymous>";
    if (function != nullptr && function->returnType() != nullptr) {
        label += " -> " + function->returnType()->getText();
    }

    AstDisplayNode node{truncateDisplayLabel(label, 72), {}};
    if (function != nullptr && function->params() != nullptr) {
        AstDisplayNode params{"params", {}};
        for (auto* p : function->params()->param()) {
            std::string pl = "param";
            if (p->CONST() != nullptr) pl += " const";
            if (p->NCONST() != nullptr) pl += " nconst";
            if (p->typeRef() != nullptr) pl += " " + p->typeRef()->getText();
            if (p->ID() != nullptr) pl += " " + p->ID()->getText();
            params.children.push_back({truncateDisplayLabel(pl, 72), {}});
        }
        if (!params.children.empty()) node.children.push_back(params);
    }
    node.children.push_back(summarizeBlock(function == nullptr ? nullptr : function->block(), "body"));
    return node;
}

AstDisplayNode summarizeTemplateFunction(compilerv1Parser::TemplateFunctionContext* function) {
    std::string label = function != nullptr && function->ID() != nullptr
        ? "template fn " + function->ID()->getText()
        : "template fn <anonymous>";
    if (function != nullptr && function->returnType() != nullptr) {
        label += " -> " + function->returnType()->getText();
    }

    AstDisplayNode node{truncateDisplayLabel(label, 72), {}};
    if (function != nullptr && function->params() != nullptr) {
        AstDisplayNode params{"params", {}};
        for (auto* p : function->params()->param()) {
            std::string pl = "param";
            if (p->CONST() != nullptr) pl += " const";
            if (p->NCONST() != nullptr) pl += " nconst";
            if (p->typeRef() != nullptr) pl += " " + p->typeRef()->getText();
            if (p->ID() != nullptr) pl += " " + p->ID()->getText();
            params.children.push_back({truncateDisplayLabel(pl, 72), {}});
        }
        if (!params.children.empty()) node.children.push_back(params);
    }
    node.children.push_back(summarizeBlock(function == nullptr ? nullptr : function->block(), "body"));
    return node;
}

AstDisplayNode summarizeProgram(compilerv1Parser::ProgramContext* tree) {
    AstDisplayNode root{"program", {}};
    if (tree == nullptr) return root;

    for (antlr4::tree::ParseTree* child : tree->children) {
        if (auto* stdImport = dynamic_cast<compilerv1Parser::StdimportContext*>(child)) {
            const std::string importName = stdImport->ID() == nullptr ? std::string("std") : stdImport->ID()->getText();
            root.children.push_back({"import std " + importName, {}});
            continue;
        }
        if (auto* importStmt = dynamic_cast<compilerv1Parser::ImportStmtContext*>(child)) {
            if (importStmt->STRING() != nullptr) {
                root.children.push_back({"import " + importStmt->STRING()->getText(), {}});
            } else if (importStmt->headerPath() != nullptr) {
                root.children.push_back({"import " + importStmt->headerPath()->getText(), {}});
            } else if (importStmt->importPath() != nullptr) {
                root.children.push_back({"import " + importStmt->importPath()->getText(), {}});
            }
            continue;
        }
        if (auto* includeStmt = dynamic_cast<compilerv1Parser::IncludeContext*>(child)) {
            if (includeStmt->importPath() != nullptr) {
                root.children.push_back({"include " + includeStmt->importPath()->getText(), {}});
            }
            continue;
        }
        if (auto* directive = dynamic_cast<compilerv1Parser::DirectiveContext*>(child)) {
            root.children.push_back({truncateDisplayLabel("directive " + directive->getText(), 72), {}});
            continue;
        }
        if (auto* function = dynamic_cast<compilerv1Parser::FunctionContext*>(child)) {
            root.children.push_back(summarizeFunction(function));
            continue;
        }
        if (auto* templateFunction = dynamic_cast<compilerv1Parser::TemplateFunctionContext*>(child)) {
            root.children.push_back(summarizeTemplateFunction(templateFunction));
            continue;
        }
        if (auto* macro = dynamic_cast<compilerv1Parser::MacroContext*>(child)) {
            root.children.push_back(summarizeMacro(macro));
            continue;
        }
        if (auto* templateDecl = dynamic_cast<compilerv1Parser::TemplateDeclContext*>(child)) {
            root.children.push_back(summarizeTemplateDecl(templateDecl));
            continue;
        }
        if (auto* cls = dynamic_cast<compilerv1Parser::ClassContext*>(child)) {
            root.children.push_back(summarizeClass(cls));
            continue;
        }
        if (auto* st = dynamic_cast<compilerv1Parser::StructContext*>(child)) {
            root.children.push_back(summarizeStruct(st));
            continue;
        }
        if (auto* ms = dynamic_cast<compilerv1Parser::MemstructContext*>(child)) {
            root.children.push_back(summarizeMemstruct(ms));
            continue;
        }
        if (auto* enumDecl = dynamic_cast<compilerv1Parser::EnumDeclContext*>(child)) {
            root.children.push_back(summarizeEnumDecl(enumDecl));
            continue;
        }
        if (auto* itr = dynamic_cast<compilerv1Parser::InterfaceDeclContext*>(child)) {
            root.children.push_back(summarizeInterface(itr));
            continue;
        }
        if (auto* op = dynamic_cast<compilerv1Parser::OpstructContext*>(child)) {
            std::string label = "opstruct";
            if (op->ID() != nullptr) label += " " + op->ID()->getText();
            root.children.push_back({truncateDisplayLabel(label, 72), {}});
            continue;
        }
        if (auto* td = dynamic_cast<compilerv1Parser::TypedefStructContext*>(child)) {
            root.children.push_back({truncateDisplayLabel("typedef-struct " + td->getText(), 72), {}});
            continue;
        }
        if (auto* tdo = dynamic_cast<compilerv1Parser::TypedefOpstructContext*>(child)) {
            std::string label = "typedef-opstruct";
            auto ids = tdo->ID();
            if (!ids.empty()) label += " " + ids[0]->getText();
            root.children.push_back({truncateDisplayLabel(label, 72), {}});
            continue;
        }
        if (auto* sched = dynamic_cast<compilerv1Parser::ScheduleDeclContext*>(child)) {
            std::string label = "schedule";
            if (sched->ID() != nullptr) label += " " + sched->ID()->getText();
            root.children.push_back({truncateDisplayLabel(label, 72), {}});
            continue;
        }
        if (auto* gi = dynamic_cast<compilerv1Parser::GlobalInitContext*>(child)) {
            AstDisplayNode n{"global", {}};
            if (gi->init() != nullptr) {
                n.children.push_back(summarizeInitCore(gi->init()->initCore()));
            }
            root.children.push_back(n);
            continue;
        }
        if (auto* init = dynamic_cast<compilerv1Parser::InitContext*>(child)) {
            root.children.push_back(summarizeInitCore(init->initCore()));
            continue;
        }
        if (auto* lto = dynamic_cast<compilerv1Parser::LtoInitContext*>(child)) {
            std::string label = "lto-init";
            if (lto->ID() != nullptr) label += " " + lto->ID()->getText();
            root.children.push_back({truncateDisplayLabel(label, 72), {}});
            continue;
        }
        if (auto* easy = dynamic_cast<compilerv1Parser::EasyInitContext*>(child)) {
            root.children.push_back({truncateDisplayLabel("easy-init " + easy->getText(), 72), {}});
            continue;
        }
        if (auto* nrcDecl = dynamic_cast<compilerv1Parser::NrcDeclContext*>(child)) {
            std::string label = "nrc";
            if (nrcDecl->ID() != nullptr) label += " " + nrcDecl->ID()->getText();
            if (nrcDecl->typeRef() != nullptr) label += " = " + nrcDecl->typeRef()->getText();
            root.children.push_back({truncateDisplayLabel(label, 72), {}});
            continue;
        }
        if (auto* lam = dynamic_cast<compilerv1Parser::LambdaContext*>(child)) {
            std::string label = "lambda";
            if (lam->ID() != nullptr) label += " " + lam->ID()->getText();
            root.children.push_back({truncateDisplayLabel(label, 72), {}});
            continue;
        }
        if (auto* cl = dynamic_cast<compilerv1Parser::ClosureContext*>(child)) {
            std::string label = "closure";
            if (cl->ID() != nullptr) label += " " + cl->ID()->getText();
            root.children.push_back({truncateDisplayLabel(label, 72), {}});
            continue;
        }
        if (auto* inst = dynamic_cast<compilerv1Parser::InstanceContext*>(child)) {
            std::string label = "instance";
            if (inst->ID() != nullptr) label += " " + inst->ID()->getText();
            root.children.push_back({truncateDisplayLabel(label, 72), {}});
            continue;
        }
        if (auto* src = dynamic_cast<compilerv1Parser::SrcDeclContext*>(child)) {
            std::string label = "src";
            if (src->ID() != nullptr) label += " " + src->ID()->getText();
            root.children.push_back({truncateDisplayLabel(label, 72), {}});
            continue;
        }
        if (dynamic_cast<compilerv1Parser::NativemodeContext*>(child)) {
            root.children.push_back({"nativemode", {}});
            continue;
        }
        if (auto* inl = dynamic_cast<compilerv1Parser::InlineForeignBlockContext*>(child)) {
            std::string label = "inline-foreign";
            if (inl->children.size() >= 3) {
                if (auto* t = dynamic_cast<antlr4::tree::TerminalNode*>(inl->children[2])) {
                    label += " " + t->getText();
                }
            }
            root.children.push_back({truncateDisplayLabel(label, 72), {}});
            continue;
        }
        if (dynamic_cast<compilerv1Parser::AsyncCallContext*>(child)) {
            root.children.push_back({"async-call", {}});
            continue;
        }
        if (dynamic_cast<compilerv1Parser::UnsafeBlockContext*>(child)) {
            root.children.push_back({"unsafe-block", {}});
            continue;
        }
        // Anything we did not classify — report kind, not raw source.
        if (auto* prc = dynamic_cast<antlr4::ParserRuleContext*>(child)) {
            (void)prc;
            root.children.push_back({"<unhandled-decl>", {}});
        }
    }
    return root;
}

void streamDisplayTree(const AstDisplayNode& node,
    std::string_view prefix,
    bool lastChild,
    bool rootNode) {
    std::cout << prefix;
    if (!rootNode) {
        std::cout << (lastChild ? "└───" : "├───");
    }
    std::cout << node.label << '\n';
    std::cout.flush();

    const std::string childPrefix = std::string(prefix) + (rootNode ? "" : (lastChild ? "    " : "│   "));
    for (size_t index = 0; index < node.children.size(); ++index) {
        streamDisplayTree(node.children[index], childPrefix, index + 1 == node.children.size(), false);
    }
}

void streamApolloAst(const std::string& displayPath, compilerv1Parser::ProgramContext* tree) {
    if (!astStreamingEnabled() || tree == nullptr) {
        return;
    }

    prepareTreeConsole();
    std::cout << "=== Apollo AST: " << displayPath << " ===\n";
    std::cout.flush();
    streamDisplayTree(summarizeProgram(tree), "", true, true);
    std::cout << "=== End Apollo AST ===\n";
    std::cout.flush();
}

std::string toPackageSourcePath(const std::string& importPath) {
    std::string path = importPath;
    std::replace(path.begin(), path.end(), '.', '/');
    path += ".apollo";
    return path;
}

std::vector<std::string> collectDependencyMetadata(compilerv1Parser::ProgramContext* tree) {
    std::vector<std::string> dependencies;
    if (tree == nullptr) {
        return dependencies;
    }

    for (auto* importStmt : tree->importStmt()) {
        if (importStmt->STRING() != nullptr) {
            std::string text = importStmt->STRING()->getText();
            if (text.size() >= 2 && text.front() == '"' && text.back() == '"') {
                text = text.substr(1, text.size() - 2);
            }
            dependencies.push_back(text);
            continue;
        }
        if (importStmt->headerPath() != nullptr) {
            dependencies.push_back(importStmt->headerPath()->getText());
            continue;
        }
        if (importStmt->importPath() != nullptr) {
            const std::string importPath = importStmt->importPath()->getText();
            if (importPath.find('*') == std::string::npos) {
                dependencies.push_back(importPath);
            }
        }
    }

    for (auto* includeStmt : tree->include()) {
        if (includeStmt->importPath() != nullptr) {
            dependencies.push_back(toPackageSourcePath(includeStmt->importPath()->getText()));
        }
    }

    return dependencies;
}

std::string stableHashHex(std::string_view text) {
    constexpr unsigned long long fnvOffset = 1469598103934665603ull;
    constexpr unsigned long long fnvPrime = 1099511628211ull;
    unsigned long long value = fnvOffset;
    for (const unsigned char ch : text) {
        value ^= ch;
        value *= fnvPrime;
    }
    std::ostringstream builder;
    builder << std::hex << std::setw(16) << std::setfill('0') << value;
    return builder.str();
}

std::string formatDisplayPath(const std::filesystem::path& path) {
    const std::string generic = path.generic_string();
#ifdef _WIN32
    return generic;
#else
    if (generic.size() > 7
        && generic.rfind("/mnt/", 0) == 0
        && std::isalpha(static_cast<unsigned char>(generic[5]))
        && generic[6] == '/') {
        std::string converted;
        converted.push_back(static_cast<char>(std::toupper(static_cast<unsigned char>(generic[5]))));
        converted.push_back(':');
        converted.append(generic.substr(6));
        return converted;
    }
    return generic;
#endif
}

std::string buildModuleKeyForImportRoot(const std::filesystem::path& importRoot, const std::filesystem::path& sourcePath) {
    const auto normalizedImportRoot = std::filesystem::absolute(importRoot).lexically_normal();
    const auto normalizedSourcePath = std::filesystem::absolute(sourcePath).lexically_normal();
    std::filesystem::path modulePath;
    if (normalizedSourcePath.string().starts_with(normalizedImportRoot.string())) {
        modulePath = std::filesystem::relative(normalizedSourcePath, normalizedImportRoot);
    } else {
        modulePath = normalizedSourcePath.filename();
    }

    std::string moduleKey = modulePath.generic_string();
    if (moduleKey.size() >= 7 && moduleKey.ends_with(".apollo")) {
        moduleKey.resize(moduleKey.size() - 7);
    } else if (moduleKey.size() >= 4 && moduleKey.ends_with(".aph")) {
        moduleKey.resize(moduleKey.size() - 4);
    }
    return moduleKey;
}

std::string readTextFile(const std::filesystem::path& path) {
    std::ifstream input(path, std::ios::binary);
    if (!input) {
        throw std::runtime_error("failed to open source file: " + path.string());
    }
    std::ostringstream builder;
    builder << input.rdbuf();
    return builder.str();
}

std::vector<std::string> readLines(const std::filesystem::path& path) {
    std::ifstream input(path, std::ios::binary);
    if (!input) {
        throw std::runtime_error("failed to open file: " + path.string());
    }
    std::vector<std::string> lines;
    std::string line;
    while (std::getline(input, line)) {
        if (!line.empty() && line.back() == '\r') {
            line.pop_back();
        }
        lines.push_back(line);
    }
    return lines;
}

std::optional<FileFingerprint> captureFileFingerprint(const std::filesystem::path& path) {
    std::error_code error;
    const auto size = std::filesystem::file_size(path, error);
    if (error) {
        return std::nullopt;
    }

    error.clear();
    const auto writeTime = std::filesystem::last_write_time(path, error);
    if (error) {
        return std::nullopt;
    }

    return FileFingerprint{
        std::to_string(size),
        std::to_string(static_cast<long long>(writeTime.time_since_epoch().count()))
    };
}

bool matchesFileFingerprint(const std::filesystem::path& path,
    std::string_view expectedSize,
    std::string_view expectedWriteTime) {
    if (expectedSize.empty() || expectedWriteTime.empty()) {
        return false;
    }

    const auto fingerprint = captureFileFingerprint(path);
    return fingerprint.has_value()
        && fingerprint->size == expectedSize
        && fingerprint->writeTime == expectedWriteTime;
}

std::optional<CompileCacheEntry> tryLoadCompileCache(const std::filesystem::path& sourcePath, const std::filesystem::path& outputPath) {
    if (!incrementalCacheEnabled()) {
        return std::nullopt;
    }

    const auto metadataPath = ApolloDriver::cacheEntryPath(sourcePath, outputPath);
    if (!std::filesystem::exists(metadataPath)) {
        return std::nullopt;
    }

    std::string version;
    std::string compilerSignature;
    std::string sourceHash;
    std::string outputHash;
    std::string sourceSize;
    std::string sourceWriteTime;
    std::string outputSize;
    std::string outputWriteTime;
    std::vector<std::string> dependencies;
    for (const auto& line : readLines(metadataPath)) {
        if (line.rfind("version=", 0) == 0) {
            version = line.substr(8);
        } else if (line.rfind("compilerSignature=", 0) == 0) {
            compilerSignature = line.substr(18);
        } else if (line.rfind("sourceHash=", 0) == 0) {
            sourceHash = line.substr(11);
        } else if (line.rfind("outputHash=", 0) == 0) {
            outputHash = line.substr(11);
        } else if (line.rfind("sourceSize=", 0) == 0) {
            sourceSize = line.substr(11);
        } else if (line.rfind("sourceWriteTime=", 0) == 0) {
            sourceWriteTime = line.substr(16);
        } else if (line.rfind("outputSize=", 0) == 0) {
            outputSize = line.substr(11);
        } else if (line.rfind("outputWriteTime=", 0) == 0) {
            outputWriteTime = line.substr(16);
        } else if (line.rfind("dependency=", 0) == 0) {
            dependencies.push_back(line.substr(11));
        }
    }

    if (version != kCompilerCacheVersion) {
        return std::nullopt;
    }
    if (compilerSignature.empty() || compilerSignature != ApolloDriver::currentCompilerSignature()) {
        return std::nullopt;
    }
    if (sourceHash.empty()) {
        return std::nullopt;
    }
    if (!matchesFileFingerprint(sourcePath, sourceSize, sourceWriteTime)
        && sourceHash != stableHashHex(ApolloDriver::preprocessSourceFromFile(sourcePath))) {
        return std::nullopt;
    }

    const auto artifactPath = ApolloDriver::cacheArtifactPath(sourcePath, outputPath);
    if (outputHash.empty() || !std::filesystem::exists(artifactPath)) {
        return std::nullopt;
    }

    return CompileCacheEntry{ compilerSignature, sourceHash, outputHash, artifactPath, dependencies, sourceSize, sourceWriteTime, outputSize, outputWriteTime };
}

void restoreCachedOutputIfNeeded(const CompileCacheEntry& cacheEntry, const std::filesystem::path& outputPath) {
    const auto normalizedOutput = std::filesystem::absolute(outputPath).lexically_normal();
    if (std::filesystem::exists(normalizedOutput)) {
        if (matchesFileFingerprint(normalizedOutput, cacheEntry.outputSize, cacheEntry.outputWriteTime)
            || stableHashHex(readTextFile(normalizedOutput)) == cacheEntry.outputHash) {
            return;
        }
    }

    if (normalizedOutput.has_parent_path()) {
        std::filesystem::create_directories(normalizedOutput.parent_path());
    }
    std::filesystem::copy_file(cacheEntry.cachedOutputPath, normalizedOutput, std::filesystem::copy_options::overwrite_existing);
}

void writeCompileCache(const std::filesystem::path& sourcePath, const std::filesystem::path& outputPath,
    const std::vector<std::string>& dependencies,
    std::string_view sourceHash) {
    if (!incrementalCacheEnabled()) {
        return;
    }

    const auto metadataPath = ApolloDriver::cacheEntryPath(sourcePath, outputPath);
    const auto artifactPath = ApolloDriver::cacheArtifactPath(sourcePath, outputPath);
    if (metadataPath.has_parent_path()) {
        std::filesystem::create_directories(metadataPath.parent_path());
    }
    std::filesystem::copy_file(outputPath, artifactPath, std::filesystem::copy_options::overwrite_existing);

    std::ofstream output(metadataPath, std::ios::binary | std::ios::trunc);
    if (!output) {
        throw std::runtime_error("failed to write cache metadata: " + metadataPath.string());
    }
    const auto sourceFingerprint = captureFileFingerprint(sourcePath);
    const auto outputFingerprint = captureFileFingerprint(outputPath);
    output << "version=" << kCompilerCacheVersion << '\n';
    output << "compilerSignature=" << ApolloDriver::currentCompilerSignature() << '\n';
    output << "sourceHash=" << sourceHash << '\n';
    output << "outputHash=" << stableHashHex(readTextFile(outputPath)) << '\n';
    if (sourceFingerprint.has_value()) {
        output << "sourceSize=" << sourceFingerprint->size << '\n';
        output << "sourceWriteTime=" << sourceFingerprint->writeTime << '\n';
    }
    if (outputFingerprint.has_value()) {
        output << "outputSize=" << outputFingerprint->size << '\n';
        output << "outputWriteTime=" << outputFingerprint->writeTime << '\n';
    }
    for (const auto& dependency : dependencies) {
        output << "dependency=" << dependency << '\n';
    }
}

bool hasApolloSourceExtension(const std::filesystem::path& path) {
    const auto extension = path.extension().string();
    return extension == ".apollo" || extension == ".aph";
}

std::optional<std::filesystem::path> normalizeApolloDependencyPath(const std::filesystem::path& importRoot,
    const std::filesystem::path& candidate) {
    const auto resolved = std::filesystem::absolute(candidate.is_absolute() ? candidate : (importRoot / candidate)).lexically_normal();
    if (!hasApolloSourceExtension(resolved) || !std::filesystem::exists(resolved)) {
        return std::nullopt;
    }
    return resolved;
}

std::optional<std::filesystem::path> resolveApolloDependencySource(const std::filesystem::path& importRoot,
    std::string_view dependency) {
    if (dependency.empty() || dependency.find('*') != std::string_view::npos) {
        return std::nullopt;
    }

    const std::string dependencyText(dependency);
    const std::filesystem::path dependencyPath(dependencyText);
    if (hasApolloSourceExtension(dependencyPath)) {
        if (auto resolved = normalizeApolloDependencyPath(importRoot, dependencyPath)) {
            return resolved;
        }
    }

    if (dependencyText.find('.') != std::string::npos) {
        if (auto resolved = normalizeApolloDependencyPath(importRoot, toPackageSourcePath(dependencyText))) {
            return resolved;
        }
    }

    if (dependencyText.find_first_of("/\\") != std::string::npos) {
        std::filesystem::path withApolloExtension = dependencyPath;
        if (!withApolloExtension.has_extension()) {
            withApolloExtension.replace_extension(".apollo");
        }
        if (auto resolved = normalizeApolloDependencyPath(importRoot, withApolloExtension)) {
            return resolved;
        }
    }

    return std::nullopt;
}

std::filesystem::path dependencyOutputPath(const std::filesystem::path& dependencyRoot,
    const std::filesystem::path& importRoot,
    const std::filesystem::path& sourcePath) {
    std::error_code error;
    std::filesystem::path relativePath = std::filesystem::relative(sourcePath, importRoot, error);
    if (error || relativePath.empty() || relativePath.string().starts_with("..")) {
        relativePath = sourcePath.filename();
    }
    relativePath.replace_extension(".ll");
    return std::filesystem::absolute(dependencyRoot / relativePath).lexically_normal();
}

void compileApolloRecursive(const std::filesystem::path& sourcePath,
    const std::filesystem::path& outputPath,
    const std::filesystem::path& importRoot,
    const std::filesystem::path& dependencyRoot,
    std::set<std::string>& generatedFiles,
    std::unordered_set<std::string>& activeSources) {
    const auto normalizedSource = std::filesystem::absolute(sourcePath).lexically_normal();
    const auto normalizedOutput = std::filesystem::absolute(outputPath).lexically_normal();
    if (!activeSources.insert(normalizedSource.string()).second) {
        return;
    }

    auto releaseActive = [&]() {
        activeSources.erase(normalizedSource.string());
    };

    try {
        if (const auto cacheEntry = tryLoadCompileCache(normalizedSource, normalizedOutput)) {
            restoreCachedOutputIfNeeded(*cacheEntry, normalizedOutput);
            generatedFiles.insert(normalizedOutput.string());
            for (const auto& dependency : cacheEntry->dependencies) {
                const auto dependencySource = resolveApolloDependencySource(importRoot, dependency);
                if (!dependencySource.has_value()) {
                    continue;
                }
                compileApolloRecursive(*dependencySource,
                    dependencyOutputPath(dependencyRoot, importRoot, *dependencySource),
                    importRoot,
                    dependencyRoot,
                    generatedFiles,
                    activeSources);
            }
            releaseActive();
            return;
        }

        const std::string program = ApolloDriver::preprocessSource(normalizedSource, readTextFile(normalizedSource));
        const std::string displayPath = ApolloDriver::displaySourcePath(importRoot, normalizedSource);

        ApolloCompilerRuntimeCycle runtimeCycle = ApolloCompilerRuntimeCycle::create(displayPath, program);
        runtimeCycle.runPreCodegenPhases();
        streamApolloAst(displayPath, runtimeCycle.tree());

        const std::vector<std::string> dependencies = collectDependencyMetadata(runtimeCycle.tree());
        for (const auto& dependency : dependencies) {
            const auto dependencySource = resolveApolloDependencySource(importRoot, dependency);
            if (!dependencySource.has_value()) {
                continue;
            }
            compileApolloRecursive(*dependencySource,
                dependencyOutputPath(dependencyRoot, importRoot, *dependencySource),
                importRoot,
                dependencyRoot,
                generatedFiles,
                activeSources);
        }

        const ApolloCodegenOptimizationPlan optimizationPlan = ApolloCodegenOptimizationPlan::analyze(runtimeCycle.tree());
        const ApolloIrLayoutPlan layoutPlan = ApolloIrLayoutPlan::analyze(runtimeCycle.tree(), optimizationPlan);
        ApolloIrCodegen::emitModule(normalizedOutput,
            buildModuleKeyForImportRoot(importRoot, normalizedSource),
            displayPath,
            normalizedSource,
            runtimeCycle.tree(),
            runtimeCycle.runtimeFeatures(),
            layoutPlan,
            false);

        writeCompileCache(normalizedSource, normalizedOutput, dependencies, stableHashHex(program));
        generatedFiles.insert(normalizedOutput.string());
        releaseActive();
    } catch (...) {
        releaseActive();
        throw;
    }
}

} // namespace

void ApolloDriver::compileApollo(const std::string& inputPath, const std::string& outputPath) {
    const auto sourcePath = std::filesystem::absolute(inputPath).lexically_normal();
    const auto importRoot = determineImportRoot(sourcePath);
    const auto normalizedOutput = std::filesystem::absolute(std::filesystem::path(outputPath)).lexically_normal();
    const auto dependencyRoot = normalizedOutput.has_parent_path()
        ? (normalizedOutput.parent_path() / "deps").lexically_normal()
        : (std::filesystem::current_path() / "deps").lexically_normal();

    std::set<std::string> generatedFiles;
    std::unordered_set<std::string> activeSources;
    compileApolloRecursive(sourcePath, normalizedOutput, importRoot, dependencyRoot, generatedFiles, activeSources);
    writeCleanupManifest(generatedFiles);
}

void ApolloDriver::emitDirectIrPrototype(const std::string& inputPath, const std::string& outputPath) {
    const auto sourcePath = std::filesystem::absolute(inputPath).lexically_normal();
    const auto importRoot = determineImportRoot(sourcePath);
    const std::string program = preprocessSource(sourcePath, readTextFile(sourcePath));
    const std::string displayPath = displaySourcePath(importRoot, sourcePath);

    ApolloCompilerRuntimeCycle runtimeCycle = ApolloCompilerRuntimeCycle::create(displayPath, program);
    runtimeCycle.runPreCodegenPhases();
    streamApolloAst(displayPath, runtimeCycle.tree());

    const ApolloCodegenOptimizationPlan optimizationPlan = ApolloCodegenOptimizationPlan::analyze(runtimeCycle.tree());
    const ApolloIrLayoutPlan layoutPlan = ApolloIrLayoutPlan::analyze(runtimeCycle.tree(), optimizationPlan);
    ApolloIrCodegen::emitPrototypeModule(std::filesystem::path(outputPath),
        buildModuleKey(importRoot, sourcePath),
        displayPath,
        sourcePath,
        runtimeCycle.tree(),
        runtimeCycle.runtimeFeatures(),
        layoutPlan);

    writeCleanupManifest({ std::filesystem::absolute(std::filesystem::path(outputPath)).lexically_normal().string() });
}

std::string ApolloDriver::preprocessSource(const std::filesystem::path& sourcePath, const std::string& sourceText) {
    return preprocessApolloSource(sourcePath, sourceText);
}

std::string ApolloDriver::preprocessSourceFromFile(const std::filesystem::path& sourcePath) {
    return preprocessApolloSourceFromFile(sourcePath);
}

std::filesystem::path ApolloDriver::determineImportRoot(const std::filesystem::path& sourcePath) {
    const auto absolute = std::filesystem::absolute(sourcePath).lexically_normal();
    return absolute.has_parent_path() ? absolute.parent_path() : std::filesystem::current_path();
}

std::string ApolloDriver::displaySourcePath(const std::filesystem::path& importRoot, const std::filesystem::path& sourcePath) {
    const auto normalizedImportRoot = std::filesystem::absolute(importRoot).lexically_normal();
    const auto normalizedSourcePath = std::filesystem::absolute(sourcePath).lexically_normal();

    std::error_code error;
    const auto relativePath = std::filesystem::relative(normalizedSourcePath, normalizedImportRoot, error);
    if (!error && !relativePath.empty()) {
        const std::string relativeText = relativePath.generic_string();
        if (!relativeText.starts_with("..")) {
            return relativeText;
        }
    }

    return formatDisplayPath(normalizedSourcePath);
}

std::string ApolloDriver::buildModuleKey(const std::filesystem::path& importRoot, const std::filesystem::path& sourcePath) {
    return buildModuleKeyForImportRoot(importRoot, sourcePath);
}

std::filesystem::path ApolloDriver::cacheEntryPath(const std::filesystem::path& sourcePath, const std::filesystem::path& outputPath) {
    const auto cacheRoot = std::filesystem::absolute(std::filesystem::path("output") / "cache").lexically_normal();
    const std::string cacheKey = stableHashHex(std::filesystem::absolute(sourcePath).lexically_normal().string()
        + "|" + std::filesystem::absolute(outputPath).lexically_normal().string());
    return cacheRoot / (cacheKey + ".meta");
}

std::filesystem::path ApolloDriver::cacheArtifactPath(const std::filesystem::path& sourcePath, const std::filesystem::path& outputPath) {
    const auto cacheRoot = std::filesystem::absolute(std::filesystem::path("output") / "cache").lexically_normal();
    const std::string cacheKey = stableHashHex(std::filesystem::absolute(sourcePath).lexically_normal().string()
        + "|" + std::filesystem::absolute(outputPath).lexically_normal().string());
    return cacheRoot / (cacheKey + ".artifact");
}

std::string ApolloDriver::currentCompilerSignature() {
    static const std::string signature = []() {
        const auto cppRoot = std::filesystem::path(__FILE__).lexically_normal().parent_path().parent_path();
        const auto compilerRoot = cppRoot.parent_path();
        const std::vector<std::filesystem::path> inputs = {
            cppRoot / "src" / "apollo_driver.cpp",
            cppRoot / "src" / "apollo_driver.h",
            cppRoot / "src" / "apollo_inline_foreign.cpp",
            cppRoot / "src" / "apollo_inline_foreign.h",
            cppRoot / "src" / "visitor.cpp",
            cppRoot / "src" / "visitor.h",
            cppRoot / "src" / "apollo_ir_layout_plan.cpp",
            cppRoot / "src" / "apollo_ir_layout_plan.h",
            cppRoot / "src" / "apollo_runtime.cpp",
            cppRoot / "src" / "apollo_runtime.h",
            cppRoot / "src" / "apollo_source_preprocessor.cpp",
            cppRoot / "src" / "apollo_source_preprocessor.h",
            cppRoot / "src" / "apollo_codegen_optimization_plan.cpp",
            cppRoot / "src" / "apollo_codegen_optimization_plan.h",
            compilerRoot / "compilerv1.g4"
        };

        std::string combined(kCompilerCacheVersion);
        for (const auto& input : inputs) {
            if (!std::filesystem::exists(input)) {
                continue;
            }
            combined += "|" + input.filename().string() + "|" + stableHashHex(readTextFile(input));
        }
        return stableHashHex(combined);
    }();

    return signature;
}

void ApolloDriver::writeCleanupManifest(const std::set<std::string>& generatedFiles) {
    const auto manifestPath = std::filesystem::absolute(std::filesystem::path("output") / "cleanup-manifest.txt").lexically_normal();
    if (manifestPath.has_parent_path()) {
        std::filesystem::create_directories(manifestPath.parent_path());
    }
    std::ofstream output(manifestPath, std::ios::binary | std::ios::trunc);
    if (!output) {
        throw std::runtime_error("failed to write cleanup manifest: " + manifestPath.string());
    }
    for (const auto& file : generatedFiles) {
        output << file << '\n';
    }
}