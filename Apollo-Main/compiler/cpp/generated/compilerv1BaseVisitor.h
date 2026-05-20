
// Generated from compilerv1.g4 by ANTLR 4.13.2

#pragma once


#include "antlr4-runtime.h"
#include "compilerv1Visitor.h"


/**
 * This class provides an empty implementation of compilerv1Visitor, which can be
 * extended to create a visitor which only needs to handle a subset of the available methods.
 */
class  compilerv1BaseVisitor : public compilerv1Visitor {
public:

  virtual std::any visitProgram(compilerv1Parser::ProgramContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitStdimport(compilerv1Parser::StdimportContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitDirective(compilerv1Parser::DirectiveContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitGcDirective(compilerv1Parser::GcDirectiveContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitBorrowCheckerDirective(compilerv1Parser::BorrowCheckerDirectiveContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitRuntimeDirective(compilerv1Parser::RuntimeDirectiveContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitSettingDirective(compilerv1Parser::SettingDirectiveContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitSettingValue(compilerv1Parser::SettingValueContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitImportStmt(compilerv1Parser::ImportStmtContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitInstance(compilerv1Parser::InstanceContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitInstancepush(compilerv1Parser::InstancepushContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitMemberaccess(compilerv1Parser::MemberaccessContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitAccessBase(compilerv1Parser::AccessBaseContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitInstanceValue(compilerv1Parser::InstanceValueContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitAllocatorUseSuffix(compilerv1Parser::AllocatorUseSuffixContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitImportPath(compilerv1Parser::ImportPathContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitHeaderPath(compilerv1Parser::HeaderPathContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitHeaderPart(compilerv1Parser::HeaderPartContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitHeaderPartAtom(compilerv1Parser::HeaderPartAtomContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitFunction(compilerv1Parser::FunctionContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitMethod(compilerv1Parser::MethodContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitField(compilerv1Parser::FieldContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitParams(compilerv1Parser::ParamsContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitParam(compilerv1Parser::ParamContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitBorrowExpr(compilerv1Parser::BorrowExprContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitBlock(compilerv1Parser::BlockContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitClassBody(compilerv1Parser::ClassBodyContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitTemplateDecl(compilerv1Parser::TemplateDeclContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitTemplateParams(compilerv1Parser::TemplateParamsContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitInlineForeignBlock(compilerv1Parser::InlineForeignBlockContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitStructBody(compilerv1Parser::StructBodyContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitScheduleDecl(compilerv1Parser::ScheduleDeclContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitScheduleMember(compilerv1Parser::ScheduleMemberContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitMandatoryScheduleMember(compilerv1Parser::MandatoryScheduleMemberContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitClassMember(compilerv1Parser::ClassMemberContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitStructMember(compilerv1Parser::StructMemberContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitPrint(compilerv1Parser::PrintContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitNativemode(compilerv1Parser::NativemodeContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitAsyncCall(compilerv1Parser::AsyncCallContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitSyscallStmt(compilerv1Parser::SyscallStmtContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitGlobalInit(compilerv1Parser::GlobalInitContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitMalloc(compilerv1Parser::MallocContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitMntDecl(compilerv1Parser::MntDeclContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitDelalc(compilerv1Parser::DelalcContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitFree(compilerv1Parser::FreeContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitPlcnew(compilerv1Parser::PlcnewContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitPlcnewType(compilerv1Parser::PlcnewTypeContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitPointer(compilerv1Parser::PointerContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitInclude(compilerv1Parser::IncludeContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitReturnType(compilerv1Parser::ReturnTypeContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitTypeRef(compilerv1Parser::TypeRefContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitThread(compilerv1Parser::ThreadContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitTypeAtom(compilerv1Parser::TypeAtomContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitTypeModifier(compilerv1Parser::TypeModifierContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitGenericType(compilerv1Parser::GenericTypeContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitShapeType(compilerv1Parser::ShapeTypeContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitFunctionType(compilerv1Parser::FunctionTypeContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitFunctionTypeArgs(compilerv1Parser::FunctionTypeArgsContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitMacro(compilerv1Parser::MacroContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitMacroQualifier(compilerv1Parser::MacroQualifierContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitStdinStmt(compilerv1Parser::StdinStmtContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitStdinValue(compilerv1Parser::StdinValueContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitLambda(compilerv1Parser::LambdaContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitLambdaDefinition(compilerv1Parser::LambdaDefinitionContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitLambdaLiteral(compilerv1Parser::LambdaLiteralContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitSrcDecl(compilerv1Parser::SrcDeclContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitCscope(compilerv1Parser::CscopeContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitUnsafeBlock(compilerv1Parser::UnsafeBlockContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitBypassBlock(compilerv1Parser::BypassBlockContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitAutofmtdeclareScope(compilerv1Parser::AutofmtdeclareScopeContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitBridgeInit(compilerv1Parser::BridgeInitContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitInductStmt(compilerv1Parser::InductStmtContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitReleaseStmt(compilerv1Parser::ReleaseStmtContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitAttributeBlock(compilerv1Parser::AttributeBlockContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitAttributeEntry(compilerv1Parser::AttributeEntryContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitAttributeArgs(compilerv1Parser::AttributeArgsContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitAttributeValue(compilerv1Parser::AttributeValueContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitUnsafeLineStmt(compilerv1Parser::UnsafeLineStmtContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitUnsafeLinePayload(compilerv1Parser::UnsafeLinePayloadContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitStatement(compilerv1Parser::StatementContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitTypedefOpstructSession(compilerv1Parser::TypedefOpstructSessionContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitTypedefOpstructCreateStmt(compilerv1Parser::TypedefOpstructCreateStmtContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitTypedefOpstructPhraseStmt(compilerv1Parser::TypedefOpstructPhraseStmtContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitTypedefOpstructCommand(compilerv1Parser::TypedefOpstructCommandContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitTypedefOpstructCapture(compilerv1Parser::TypedefOpstructCaptureContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitTypedefOpstructWord(compilerv1Parser::TypedefOpstructWordContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitRdwindowStmt(compilerv1Parser::RdwindowStmtContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitEventHandlerStmt(compilerv1Parser::EventHandlerStmtContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitSchedulerStartStmt(compilerv1Parser::SchedulerStartStmtContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitSchedulerStartMode(compilerv1Parser::SchedulerStartModeContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitSchedulerInsertStmt(compilerv1Parser::SchedulerInsertStmtContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitSchedulerVoidStmt(compilerv1Parser::SchedulerVoidStmtContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitIfStatement(compilerv1Parser::IfStatementContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitWhileStatement(compilerv1Parser::WhileStatementContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitForStatement(compilerv1Parser::ForStatementContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitForInStatement(compilerv1Parser::ForInStatementContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitSwitchStatement(compilerv1Parser::SwitchStatementContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitSwitchCase(compilerv1Parser::SwitchCaseContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitSwitchDefault(compilerv1Parser::SwitchDefaultContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitTryCatchStatement(compilerv1Parser::TryCatchStatementContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitAutocatchStatement(compilerv1Parser::AutocatchStatementContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitAssignment(compilerv1Parser::AssignmentContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitAssignmentCore(compilerv1Parser::AssignmentCoreContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitAssignTarget(compilerv1Parser::AssignTargetContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitAccessKey(compilerv1Parser::AccessKeyContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitInit(compilerv1Parser::InitContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitLtoInit(compilerv1Parser::LtoInitContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitLtoTypesetStmt(compilerv1Parser::LtoTypesetStmtContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitEasyInit(compilerv1Parser::EasyInitContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitInitCore(compilerv1Parser::InitCoreContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitForInit(compilerv1Parser::ForInitContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitForUpdate(compilerv1Parser::ForUpdateContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitAssertStmt(compilerv1Parser::AssertStmtContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitExpression(compilerv1Parser::ExpressionContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitOrExpr(compilerv1Parser::OrExprContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitAndExpr(compilerv1Parser::AndExprContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitBitwiseOrExpr(compilerv1Parser::BitwiseOrExprContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitBitwiseXorExpr(compilerv1Parser::BitwiseXorExprContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitBitwiseAndExpr(compilerv1Parser::BitwiseAndExprContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitEqualityExpr(compilerv1Parser::EqualityExprContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitShiftExpr(compilerv1Parser::ShiftExprContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitRightShiftOperator(compilerv1Parser::RightShiftOperatorContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitRelationalExpr(compilerv1Parser::RelationalExprContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitAddExpr(compilerv1Parser::AddExprContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitMultExpr(compilerv1Parser::MultExprContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitPrimary(compilerv1Parser::PrimaryContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitTemplateString(compilerv1Parser::TemplateStringContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitCastExpr(compilerv1Parser::CastExprContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitCastType(compilerv1Parser::CastTypeContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitPlacementNewExpr(compilerv1Parser::PlacementNewExprContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitIndexedAccess(compilerv1Parser::IndexedAccessContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitCompositeLiteral(compilerv1Parser::CompositeLiteralContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitBraceInitializer(compilerv1Parser::BraceInitializerContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitBraceInitializerElement(compilerv1Parser::BraceInitializerElementContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitFunctionCall(compilerv1Parser::FunctionCallContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitArgs(compilerv1Parser::ArgsContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitReturnStmt(compilerv1Parser::ReturnStmtContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitCommunalQualifier(compilerv1Parser::CommunalQualifierContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitClass(compilerv1Parser::ClassContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitStruct(compilerv1Parser::StructContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitMemstruct(compilerv1Parser::MemstructContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitTypedefStruct(compilerv1Parser::TypedefStructContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitOpstruct(compilerv1Parser::OpstructContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitOpstructBody(compilerv1Parser::OpstructBodyContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitTypedefOpstruct(compilerv1Parser::TypedefOpstructContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitTypedefOpstructDslBody(compilerv1Parser::TypedefOpstructDslBodyContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitTypedefOpstructDslEntry(compilerv1Parser::TypedefOpstructDslEntryContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitTypedefOpstructAsgEntry(compilerv1Parser::TypedefOpstructAsgEntryContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitTypedefOpstructSrcEntry(compilerv1Parser::TypedefOpstructSrcEntryContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitTypedefOpstructTemplateBody(compilerv1Parser::TypedefOpstructTemplateBodyContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitTypedefOpstructTemplateBodyItem(compilerv1Parser::TypedefOpstructTemplateBodyItemContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitInterfaceDecl(compilerv1Parser::InterfaceDeclContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitInheritanceClause(compilerv1Parser::InheritanceClauseContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitInheritedType(compilerv1Parser::InheritedTypeContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitVirtualMethod(compilerv1Parser::VirtualMethodContext *ctx) override {
    return visitChildren(ctx);
  }


};

