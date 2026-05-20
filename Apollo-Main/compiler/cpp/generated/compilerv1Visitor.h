
// Generated from compilerv1.g4 by ANTLR 4.13.2

#pragma once


#include "antlr4-runtime.h"
#include "compilerv1Parser.h"



/**
 * This class defines an abstract visitor for a parse tree
 * produced by compilerv1Parser.
 */
class  compilerv1Visitor : public antlr4::tree::AbstractParseTreeVisitor {
public:

  /**
   * Visit parse trees produced by compilerv1Parser.
   */
    virtual std::any visitProgram(compilerv1Parser::ProgramContext *context) = 0;

    virtual std::any visitStdimport(compilerv1Parser::StdimportContext *context) = 0;

    virtual std::any visitDirective(compilerv1Parser::DirectiveContext *context) = 0;

    virtual std::any visitGcDirective(compilerv1Parser::GcDirectiveContext *context) = 0;

    virtual std::any visitBorrowCheckerDirective(compilerv1Parser::BorrowCheckerDirectiveContext *context) = 0;

    virtual std::any visitRuntimeDirective(compilerv1Parser::RuntimeDirectiveContext *context) = 0;

    virtual std::any visitSettingDirective(compilerv1Parser::SettingDirectiveContext *context) = 0;

    virtual std::any visitSettingValue(compilerv1Parser::SettingValueContext *context) = 0;

    virtual std::any visitImportStmt(compilerv1Parser::ImportStmtContext *context) = 0;

    virtual std::any visitInstance(compilerv1Parser::InstanceContext *context) = 0;

    virtual std::any visitInstancepush(compilerv1Parser::InstancepushContext *context) = 0;

    virtual std::any visitMemberaccess(compilerv1Parser::MemberaccessContext *context) = 0;

    virtual std::any visitAccessBase(compilerv1Parser::AccessBaseContext *context) = 0;

    virtual std::any visitInstanceValue(compilerv1Parser::InstanceValueContext *context) = 0;

    virtual std::any visitAllocatorUseSuffix(compilerv1Parser::AllocatorUseSuffixContext *context) = 0;

    virtual std::any visitImportPath(compilerv1Parser::ImportPathContext *context) = 0;

    virtual std::any visitHeaderPath(compilerv1Parser::HeaderPathContext *context) = 0;

    virtual std::any visitHeaderPart(compilerv1Parser::HeaderPartContext *context) = 0;

    virtual std::any visitHeaderPartAtom(compilerv1Parser::HeaderPartAtomContext *context) = 0;

    virtual std::any visitFunction(compilerv1Parser::FunctionContext *context) = 0;

    virtual std::any visitMethod(compilerv1Parser::MethodContext *context) = 0;

    virtual std::any visitField(compilerv1Parser::FieldContext *context) = 0;

    virtual std::any visitParams(compilerv1Parser::ParamsContext *context) = 0;

    virtual std::any visitParam(compilerv1Parser::ParamContext *context) = 0;

    virtual std::any visitBorrowExpr(compilerv1Parser::BorrowExprContext *context) = 0;

    virtual std::any visitBlock(compilerv1Parser::BlockContext *context) = 0;

    virtual std::any visitClassBody(compilerv1Parser::ClassBodyContext *context) = 0;

    virtual std::any visitTemplateDecl(compilerv1Parser::TemplateDeclContext *context) = 0;

    virtual std::any visitTemplateParams(compilerv1Parser::TemplateParamsContext *context) = 0;

    virtual std::any visitInlineForeignBlock(compilerv1Parser::InlineForeignBlockContext *context) = 0;

    virtual std::any visitStructBody(compilerv1Parser::StructBodyContext *context) = 0;

    virtual std::any visitScheduleDecl(compilerv1Parser::ScheduleDeclContext *context) = 0;

    virtual std::any visitScheduleMember(compilerv1Parser::ScheduleMemberContext *context) = 0;

    virtual std::any visitMandatoryScheduleMember(compilerv1Parser::MandatoryScheduleMemberContext *context) = 0;

    virtual std::any visitClassMember(compilerv1Parser::ClassMemberContext *context) = 0;

    virtual std::any visitStructMember(compilerv1Parser::StructMemberContext *context) = 0;

    virtual std::any visitPrint(compilerv1Parser::PrintContext *context) = 0;

    virtual std::any visitNativemode(compilerv1Parser::NativemodeContext *context) = 0;

    virtual std::any visitAsyncCall(compilerv1Parser::AsyncCallContext *context) = 0;

    virtual std::any visitSyscallStmt(compilerv1Parser::SyscallStmtContext *context) = 0;

    virtual std::any visitGlobalInit(compilerv1Parser::GlobalInitContext *context) = 0;

    virtual std::any visitMalloc(compilerv1Parser::MallocContext *context) = 0;

    virtual std::any visitMntDecl(compilerv1Parser::MntDeclContext *context) = 0;

    virtual std::any visitDelalc(compilerv1Parser::DelalcContext *context) = 0;

    virtual std::any visitFree(compilerv1Parser::FreeContext *context) = 0;

    virtual std::any visitPlcnew(compilerv1Parser::PlcnewContext *context) = 0;

    virtual std::any visitPlcnewType(compilerv1Parser::PlcnewTypeContext *context) = 0;

    virtual std::any visitPointer(compilerv1Parser::PointerContext *context) = 0;

    virtual std::any visitInclude(compilerv1Parser::IncludeContext *context) = 0;

    virtual std::any visitReturnType(compilerv1Parser::ReturnTypeContext *context) = 0;

    virtual std::any visitTypeRef(compilerv1Parser::TypeRefContext *context) = 0;

    virtual std::any visitThread(compilerv1Parser::ThreadContext *context) = 0;

    virtual std::any visitTypeAtom(compilerv1Parser::TypeAtomContext *context) = 0;

    virtual std::any visitTypeModifier(compilerv1Parser::TypeModifierContext *context) = 0;

    virtual std::any visitGenericType(compilerv1Parser::GenericTypeContext *context) = 0;

    virtual std::any visitShapeType(compilerv1Parser::ShapeTypeContext *context) = 0;

    virtual std::any visitFunctionType(compilerv1Parser::FunctionTypeContext *context) = 0;

    virtual std::any visitFunctionTypeArgs(compilerv1Parser::FunctionTypeArgsContext *context) = 0;

    virtual std::any visitMacro(compilerv1Parser::MacroContext *context) = 0;

    virtual std::any visitMacroQualifier(compilerv1Parser::MacroQualifierContext *context) = 0;

    virtual std::any visitStdinStmt(compilerv1Parser::StdinStmtContext *context) = 0;

    virtual std::any visitStdinValue(compilerv1Parser::StdinValueContext *context) = 0;

    virtual std::any visitLambda(compilerv1Parser::LambdaContext *context) = 0;

    virtual std::any visitLambdaDefinition(compilerv1Parser::LambdaDefinitionContext *context) = 0;

    virtual std::any visitLambdaLiteral(compilerv1Parser::LambdaLiteralContext *context) = 0;

    virtual std::any visitSrcDecl(compilerv1Parser::SrcDeclContext *context) = 0;

    virtual std::any visitCscope(compilerv1Parser::CscopeContext *context) = 0;

    virtual std::any visitUnsafeBlock(compilerv1Parser::UnsafeBlockContext *context) = 0;

    virtual std::any visitBypassBlock(compilerv1Parser::BypassBlockContext *context) = 0;

    virtual std::any visitAutofmtdeclareScope(compilerv1Parser::AutofmtdeclareScopeContext *context) = 0;

    virtual std::any visitBridgeInit(compilerv1Parser::BridgeInitContext *context) = 0;

    virtual std::any visitInductStmt(compilerv1Parser::InductStmtContext *context) = 0;

    virtual std::any visitReleaseStmt(compilerv1Parser::ReleaseStmtContext *context) = 0;

    virtual std::any visitAttributeBlock(compilerv1Parser::AttributeBlockContext *context) = 0;

    virtual std::any visitAttributeEntry(compilerv1Parser::AttributeEntryContext *context) = 0;

    virtual std::any visitAttributeArgs(compilerv1Parser::AttributeArgsContext *context) = 0;

    virtual std::any visitAttributeValue(compilerv1Parser::AttributeValueContext *context) = 0;

    virtual std::any visitUnsafeLineStmt(compilerv1Parser::UnsafeLineStmtContext *context) = 0;

    virtual std::any visitUnsafeLinePayload(compilerv1Parser::UnsafeLinePayloadContext *context) = 0;

    virtual std::any visitStatement(compilerv1Parser::StatementContext *context) = 0;

    virtual std::any visitTypedefOpstructSession(compilerv1Parser::TypedefOpstructSessionContext *context) = 0;

    virtual std::any visitTypedefOpstructCreateStmt(compilerv1Parser::TypedefOpstructCreateStmtContext *context) = 0;

    virtual std::any visitTypedefOpstructPhraseStmt(compilerv1Parser::TypedefOpstructPhraseStmtContext *context) = 0;

    virtual std::any visitTypedefOpstructCommand(compilerv1Parser::TypedefOpstructCommandContext *context) = 0;

    virtual std::any visitTypedefOpstructCapture(compilerv1Parser::TypedefOpstructCaptureContext *context) = 0;

    virtual std::any visitTypedefOpstructWord(compilerv1Parser::TypedefOpstructWordContext *context) = 0;

    virtual std::any visitRdwindowStmt(compilerv1Parser::RdwindowStmtContext *context) = 0;

    virtual std::any visitEventHandlerStmt(compilerv1Parser::EventHandlerStmtContext *context) = 0;

    virtual std::any visitSchedulerStartStmt(compilerv1Parser::SchedulerStartStmtContext *context) = 0;

    virtual std::any visitSchedulerStartMode(compilerv1Parser::SchedulerStartModeContext *context) = 0;

    virtual std::any visitSchedulerInsertStmt(compilerv1Parser::SchedulerInsertStmtContext *context) = 0;

    virtual std::any visitSchedulerVoidStmt(compilerv1Parser::SchedulerVoidStmtContext *context) = 0;

    virtual std::any visitIfStatement(compilerv1Parser::IfStatementContext *context) = 0;

    virtual std::any visitWhileStatement(compilerv1Parser::WhileStatementContext *context) = 0;

    virtual std::any visitForStatement(compilerv1Parser::ForStatementContext *context) = 0;

    virtual std::any visitForInStatement(compilerv1Parser::ForInStatementContext *context) = 0;

    virtual std::any visitSwitchStatement(compilerv1Parser::SwitchStatementContext *context) = 0;

    virtual std::any visitSwitchCase(compilerv1Parser::SwitchCaseContext *context) = 0;

    virtual std::any visitSwitchDefault(compilerv1Parser::SwitchDefaultContext *context) = 0;

    virtual std::any visitTryCatchStatement(compilerv1Parser::TryCatchStatementContext *context) = 0;

    virtual std::any visitAutocatchStatement(compilerv1Parser::AutocatchStatementContext *context) = 0;

    virtual std::any visitAssignment(compilerv1Parser::AssignmentContext *context) = 0;

    virtual std::any visitAssignmentCore(compilerv1Parser::AssignmentCoreContext *context) = 0;

    virtual std::any visitAssignTarget(compilerv1Parser::AssignTargetContext *context) = 0;

    virtual std::any visitAccessKey(compilerv1Parser::AccessKeyContext *context) = 0;

    virtual std::any visitInit(compilerv1Parser::InitContext *context) = 0;

    virtual std::any visitLtoInit(compilerv1Parser::LtoInitContext *context) = 0;

    virtual std::any visitLtoTypesetStmt(compilerv1Parser::LtoTypesetStmtContext *context) = 0;

    virtual std::any visitEasyInit(compilerv1Parser::EasyInitContext *context) = 0;

    virtual std::any visitInitCore(compilerv1Parser::InitCoreContext *context) = 0;

    virtual std::any visitForInit(compilerv1Parser::ForInitContext *context) = 0;

    virtual std::any visitForUpdate(compilerv1Parser::ForUpdateContext *context) = 0;

    virtual std::any visitAssertStmt(compilerv1Parser::AssertStmtContext *context) = 0;

    virtual std::any visitExpression(compilerv1Parser::ExpressionContext *context) = 0;

    virtual std::any visitOrExpr(compilerv1Parser::OrExprContext *context) = 0;

    virtual std::any visitAndExpr(compilerv1Parser::AndExprContext *context) = 0;

    virtual std::any visitBitwiseOrExpr(compilerv1Parser::BitwiseOrExprContext *context) = 0;

    virtual std::any visitBitwiseXorExpr(compilerv1Parser::BitwiseXorExprContext *context) = 0;

    virtual std::any visitBitwiseAndExpr(compilerv1Parser::BitwiseAndExprContext *context) = 0;

    virtual std::any visitEqualityExpr(compilerv1Parser::EqualityExprContext *context) = 0;

    virtual std::any visitShiftExpr(compilerv1Parser::ShiftExprContext *context) = 0;

    virtual std::any visitRightShiftOperator(compilerv1Parser::RightShiftOperatorContext *context) = 0;

    virtual std::any visitRelationalExpr(compilerv1Parser::RelationalExprContext *context) = 0;

    virtual std::any visitAddExpr(compilerv1Parser::AddExprContext *context) = 0;

    virtual std::any visitMultExpr(compilerv1Parser::MultExprContext *context) = 0;

    virtual std::any visitPrimary(compilerv1Parser::PrimaryContext *context) = 0;

    virtual std::any visitTemplateString(compilerv1Parser::TemplateStringContext *context) = 0;

    virtual std::any visitCastExpr(compilerv1Parser::CastExprContext *context) = 0;

    virtual std::any visitCastType(compilerv1Parser::CastTypeContext *context) = 0;

    virtual std::any visitPlacementNewExpr(compilerv1Parser::PlacementNewExprContext *context) = 0;

    virtual std::any visitIndexedAccess(compilerv1Parser::IndexedAccessContext *context) = 0;

    virtual std::any visitCompositeLiteral(compilerv1Parser::CompositeLiteralContext *context) = 0;

    virtual std::any visitBraceInitializer(compilerv1Parser::BraceInitializerContext *context) = 0;

    virtual std::any visitBraceInitializerElement(compilerv1Parser::BraceInitializerElementContext *context) = 0;

    virtual std::any visitFunctionCall(compilerv1Parser::FunctionCallContext *context) = 0;

    virtual std::any visitArgs(compilerv1Parser::ArgsContext *context) = 0;

    virtual std::any visitReturnStmt(compilerv1Parser::ReturnStmtContext *context) = 0;

    virtual std::any visitCommunalQualifier(compilerv1Parser::CommunalQualifierContext *context) = 0;

    virtual std::any visitClass(compilerv1Parser::ClassContext *context) = 0;

    virtual std::any visitStruct(compilerv1Parser::StructContext *context) = 0;

    virtual std::any visitMemstruct(compilerv1Parser::MemstructContext *context) = 0;

    virtual std::any visitTypedefStruct(compilerv1Parser::TypedefStructContext *context) = 0;

    virtual std::any visitOpstruct(compilerv1Parser::OpstructContext *context) = 0;

    virtual std::any visitOpstructBody(compilerv1Parser::OpstructBodyContext *context) = 0;

    virtual std::any visitTypedefOpstruct(compilerv1Parser::TypedefOpstructContext *context) = 0;

    virtual std::any visitTypedefOpstructDslBody(compilerv1Parser::TypedefOpstructDslBodyContext *context) = 0;

    virtual std::any visitTypedefOpstructDslEntry(compilerv1Parser::TypedefOpstructDslEntryContext *context) = 0;

    virtual std::any visitTypedefOpstructAsgEntry(compilerv1Parser::TypedefOpstructAsgEntryContext *context) = 0;

    virtual std::any visitTypedefOpstructSrcEntry(compilerv1Parser::TypedefOpstructSrcEntryContext *context) = 0;

    virtual std::any visitTypedefOpstructTemplateBody(compilerv1Parser::TypedefOpstructTemplateBodyContext *context) = 0;

    virtual std::any visitTypedefOpstructTemplateBodyItem(compilerv1Parser::TypedefOpstructTemplateBodyItemContext *context) = 0;

    virtual std::any visitInterfaceDecl(compilerv1Parser::InterfaceDeclContext *context) = 0;

    virtual std::any visitInheritanceClause(compilerv1Parser::InheritanceClauseContext *context) = 0;

    virtual std::any visitInheritedType(compilerv1Parser::InheritedTypeContext *context) = 0;

    virtual std::any visitVirtualMethod(compilerv1Parser::VirtualMethodContext *context) = 0;


};

