
// Generated from compilerv1.g4 by ANTLR 4.13.2

#pragma once


#include "antlr4-runtime.h"
#include "compilerv1Parser.h"


/**
 * This interface defines an abstract listener for a parse tree produced by compilerv1Parser.
 */
class  compilerv1Listener : public antlr4::tree::ParseTreeListener {
public:

  virtual void enterProgram(compilerv1Parser::ProgramContext *ctx) = 0;
  virtual void exitProgram(compilerv1Parser::ProgramContext *ctx) = 0;

  virtual void enterStdimport(compilerv1Parser::StdimportContext *ctx) = 0;
  virtual void exitStdimport(compilerv1Parser::StdimportContext *ctx) = 0;

  virtual void enterDirective(compilerv1Parser::DirectiveContext *ctx) = 0;
  virtual void exitDirective(compilerv1Parser::DirectiveContext *ctx) = 0;

  virtual void enterGcDirective(compilerv1Parser::GcDirectiveContext *ctx) = 0;
  virtual void exitGcDirective(compilerv1Parser::GcDirectiveContext *ctx) = 0;

  virtual void enterBorrowCheckerDirective(compilerv1Parser::BorrowCheckerDirectiveContext *ctx) = 0;
  virtual void exitBorrowCheckerDirective(compilerv1Parser::BorrowCheckerDirectiveContext *ctx) = 0;

  virtual void enterRuntimeDirective(compilerv1Parser::RuntimeDirectiveContext *ctx) = 0;
  virtual void exitRuntimeDirective(compilerv1Parser::RuntimeDirectiveContext *ctx) = 0;

  virtual void enterSettingDirective(compilerv1Parser::SettingDirectiveContext *ctx) = 0;
  virtual void exitSettingDirective(compilerv1Parser::SettingDirectiveContext *ctx) = 0;

  virtual void enterSettingValue(compilerv1Parser::SettingValueContext *ctx) = 0;
  virtual void exitSettingValue(compilerv1Parser::SettingValueContext *ctx) = 0;

  virtual void enterImportStmt(compilerv1Parser::ImportStmtContext *ctx) = 0;
  virtual void exitImportStmt(compilerv1Parser::ImportStmtContext *ctx) = 0;

  virtual void enterInstance(compilerv1Parser::InstanceContext *ctx) = 0;
  virtual void exitInstance(compilerv1Parser::InstanceContext *ctx) = 0;

  virtual void enterInstancepush(compilerv1Parser::InstancepushContext *ctx) = 0;
  virtual void exitInstancepush(compilerv1Parser::InstancepushContext *ctx) = 0;

  virtual void enterMemberaccess(compilerv1Parser::MemberaccessContext *ctx) = 0;
  virtual void exitMemberaccess(compilerv1Parser::MemberaccessContext *ctx) = 0;

  virtual void enterAccessBase(compilerv1Parser::AccessBaseContext *ctx) = 0;
  virtual void exitAccessBase(compilerv1Parser::AccessBaseContext *ctx) = 0;

  virtual void enterInstanceValue(compilerv1Parser::InstanceValueContext *ctx) = 0;
  virtual void exitInstanceValue(compilerv1Parser::InstanceValueContext *ctx) = 0;

  virtual void enterAllocatorUseSuffix(compilerv1Parser::AllocatorUseSuffixContext *ctx) = 0;
  virtual void exitAllocatorUseSuffix(compilerv1Parser::AllocatorUseSuffixContext *ctx) = 0;

  virtual void enterImportPath(compilerv1Parser::ImportPathContext *ctx) = 0;
  virtual void exitImportPath(compilerv1Parser::ImportPathContext *ctx) = 0;

  virtual void enterHeaderPath(compilerv1Parser::HeaderPathContext *ctx) = 0;
  virtual void exitHeaderPath(compilerv1Parser::HeaderPathContext *ctx) = 0;

  virtual void enterHeaderPart(compilerv1Parser::HeaderPartContext *ctx) = 0;
  virtual void exitHeaderPart(compilerv1Parser::HeaderPartContext *ctx) = 0;

  virtual void enterHeaderPartAtom(compilerv1Parser::HeaderPartAtomContext *ctx) = 0;
  virtual void exitHeaderPartAtom(compilerv1Parser::HeaderPartAtomContext *ctx) = 0;

  virtual void enterFunction(compilerv1Parser::FunctionContext *ctx) = 0;
  virtual void exitFunction(compilerv1Parser::FunctionContext *ctx) = 0;

  virtual void enterMethod(compilerv1Parser::MethodContext *ctx) = 0;
  virtual void exitMethod(compilerv1Parser::MethodContext *ctx) = 0;

  virtual void enterField(compilerv1Parser::FieldContext *ctx) = 0;
  virtual void exitField(compilerv1Parser::FieldContext *ctx) = 0;

  virtual void enterParams(compilerv1Parser::ParamsContext *ctx) = 0;
  virtual void exitParams(compilerv1Parser::ParamsContext *ctx) = 0;

  virtual void enterParam(compilerv1Parser::ParamContext *ctx) = 0;
  virtual void exitParam(compilerv1Parser::ParamContext *ctx) = 0;

  virtual void enterBorrowExpr(compilerv1Parser::BorrowExprContext *ctx) = 0;
  virtual void exitBorrowExpr(compilerv1Parser::BorrowExprContext *ctx) = 0;

  virtual void enterBlock(compilerv1Parser::BlockContext *ctx) = 0;
  virtual void exitBlock(compilerv1Parser::BlockContext *ctx) = 0;

  virtual void enterClassBody(compilerv1Parser::ClassBodyContext *ctx) = 0;
  virtual void exitClassBody(compilerv1Parser::ClassBodyContext *ctx) = 0;

  virtual void enterTemplateDecl(compilerv1Parser::TemplateDeclContext *ctx) = 0;
  virtual void exitTemplateDecl(compilerv1Parser::TemplateDeclContext *ctx) = 0;

  virtual void enterTemplateParams(compilerv1Parser::TemplateParamsContext *ctx) = 0;
  virtual void exitTemplateParams(compilerv1Parser::TemplateParamsContext *ctx) = 0;

  virtual void enterInlineForeignBlock(compilerv1Parser::InlineForeignBlockContext *ctx) = 0;
  virtual void exitInlineForeignBlock(compilerv1Parser::InlineForeignBlockContext *ctx) = 0;

  virtual void enterStructBody(compilerv1Parser::StructBodyContext *ctx) = 0;
  virtual void exitStructBody(compilerv1Parser::StructBodyContext *ctx) = 0;

  virtual void enterScheduleDecl(compilerv1Parser::ScheduleDeclContext *ctx) = 0;
  virtual void exitScheduleDecl(compilerv1Parser::ScheduleDeclContext *ctx) = 0;

  virtual void enterScheduleMember(compilerv1Parser::ScheduleMemberContext *ctx) = 0;
  virtual void exitScheduleMember(compilerv1Parser::ScheduleMemberContext *ctx) = 0;

  virtual void enterMandatoryScheduleMember(compilerv1Parser::MandatoryScheduleMemberContext *ctx) = 0;
  virtual void exitMandatoryScheduleMember(compilerv1Parser::MandatoryScheduleMemberContext *ctx) = 0;

  virtual void enterClassMember(compilerv1Parser::ClassMemberContext *ctx) = 0;
  virtual void exitClassMember(compilerv1Parser::ClassMemberContext *ctx) = 0;

  virtual void enterStructMember(compilerv1Parser::StructMemberContext *ctx) = 0;
  virtual void exitStructMember(compilerv1Parser::StructMemberContext *ctx) = 0;

  virtual void enterPrint(compilerv1Parser::PrintContext *ctx) = 0;
  virtual void exitPrint(compilerv1Parser::PrintContext *ctx) = 0;

  virtual void enterNativemode(compilerv1Parser::NativemodeContext *ctx) = 0;
  virtual void exitNativemode(compilerv1Parser::NativemodeContext *ctx) = 0;

  virtual void enterAsyncCall(compilerv1Parser::AsyncCallContext *ctx) = 0;
  virtual void exitAsyncCall(compilerv1Parser::AsyncCallContext *ctx) = 0;

  virtual void enterSyscallStmt(compilerv1Parser::SyscallStmtContext *ctx) = 0;
  virtual void exitSyscallStmt(compilerv1Parser::SyscallStmtContext *ctx) = 0;

  virtual void enterGlobalInit(compilerv1Parser::GlobalInitContext *ctx) = 0;
  virtual void exitGlobalInit(compilerv1Parser::GlobalInitContext *ctx) = 0;

  virtual void enterMalloc(compilerv1Parser::MallocContext *ctx) = 0;
  virtual void exitMalloc(compilerv1Parser::MallocContext *ctx) = 0;

  virtual void enterMntDecl(compilerv1Parser::MntDeclContext *ctx) = 0;
  virtual void exitMntDecl(compilerv1Parser::MntDeclContext *ctx) = 0;

  virtual void enterDelalc(compilerv1Parser::DelalcContext *ctx) = 0;
  virtual void exitDelalc(compilerv1Parser::DelalcContext *ctx) = 0;

  virtual void enterFree(compilerv1Parser::FreeContext *ctx) = 0;
  virtual void exitFree(compilerv1Parser::FreeContext *ctx) = 0;

  virtual void enterPlcnew(compilerv1Parser::PlcnewContext *ctx) = 0;
  virtual void exitPlcnew(compilerv1Parser::PlcnewContext *ctx) = 0;

  virtual void enterPlcnewType(compilerv1Parser::PlcnewTypeContext *ctx) = 0;
  virtual void exitPlcnewType(compilerv1Parser::PlcnewTypeContext *ctx) = 0;

  virtual void enterPointer(compilerv1Parser::PointerContext *ctx) = 0;
  virtual void exitPointer(compilerv1Parser::PointerContext *ctx) = 0;

  virtual void enterInclude(compilerv1Parser::IncludeContext *ctx) = 0;
  virtual void exitInclude(compilerv1Parser::IncludeContext *ctx) = 0;

  virtual void enterReturnType(compilerv1Parser::ReturnTypeContext *ctx) = 0;
  virtual void exitReturnType(compilerv1Parser::ReturnTypeContext *ctx) = 0;

  virtual void enterTypeRef(compilerv1Parser::TypeRefContext *ctx) = 0;
  virtual void exitTypeRef(compilerv1Parser::TypeRefContext *ctx) = 0;

  virtual void enterThread(compilerv1Parser::ThreadContext *ctx) = 0;
  virtual void exitThread(compilerv1Parser::ThreadContext *ctx) = 0;

  virtual void enterTypeAtom(compilerv1Parser::TypeAtomContext *ctx) = 0;
  virtual void exitTypeAtom(compilerv1Parser::TypeAtomContext *ctx) = 0;

  virtual void enterTypeModifier(compilerv1Parser::TypeModifierContext *ctx) = 0;
  virtual void exitTypeModifier(compilerv1Parser::TypeModifierContext *ctx) = 0;

  virtual void enterGenericType(compilerv1Parser::GenericTypeContext *ctx) = 0;
  virtual void exitGenericType(compilerv1Parser::GenericTypeContext *ctx) = 0;

  virtual void enterFunctionType(compilerv1Parser::FunctionTypeContext *ctx) = 0;
  virtual void exitFunctionType(compilerv1Parser::FunctionTypeContext *ctx) = 0;

  virtual void enterFunctionTypeArgs(compilerv1Parser::FunctionTypeArgsContext *ctx) = 0;
  virtual void exitFunctionTypeArgs(compilerv1Parser::FunctionTypeArgsContext *ctx) = 0;

  virtual void enterMacro(compilerv1Parser::MacroContext *ctx) = 0;
  virtual void exitMacro(compilerv1Parser::MacroContext *ctx) = 0;

  virtual void enterMacroQualifier(compilerv1Parser::MacroQualifierContext *ctx) = 0;
  virtual void exitMacroQualifier(compilerv1Parser::MacroQualifierContext *ctx) = 0;

  virtual void enterStdinStmt(compilerv1Parser::StdinStmtContext *ctx) = 0;
  virtual void exitStdinStmt(compilerv1Parser::StdinStmtContext *ctx) = 0;

  virtual void enterStdinValue(compilerv1Parser::StdinValueContext *ctx) = 0;
  virtual void exitStdinValue(compilerv1Parser::StdinValueContext *ctx) = 0;

  virtual void enterLambda(compilerv1Parser::LambdaContext *ctx) = 0;
  virtual void exitLambda(compilerv1Parser::LambdaContext *ctx) = 0;

  virtual void enterLambdaDefinition(compilerv1Parser::LambdaDefinitionContext *ctx) = 0;
  virtual void exitLambdaDefinition(compilerv1Parser::LambdaDefinitionContext *ctx) = 0;

  virtual void enterLambdaLiteral(compilerv1Parser::LambdaLiteralContext *ctx) = 0;
  virtual void exitLambdaLiteral(compilerv1Parser::LambdaLiteralContext *ctx) = 0;

  virtual void enterSrcDecl(compilerv1Parser::SrcDeclContext *ctx) = 0;
  virtual void exitSrcDecl(compilerv1Parser::SrcDeclContext *ctx) = 0;

  virtual void enterCscope(compilerv1Parser::CscopeContext *ctx) = 0;
  virtual void exitCscope(compilerv1Parser::CscopeContext *ctx) = 0;

  virtual void enterUnsafeBlock(compilerv1Parser::UnsafeBlockContext *ctx) = 0;
  virtual void exitUnsafeBlock(compilerv1Parser::UnsafeBlockContext *ctx) = 0;

  virtual void enterBypassBlock(compilerv1Parser::BypassBlockContext *ctx) = 0;
  virtual void exitBypassBlock(compilerv1Parser::BypassBlockContext *ctx) = 0;

  virtual void enterAutofmtdeclareScope(compilerv1Parser::AutofmtdeclareScopeContext *ctx) = 0;
  virtual void exitAutofmtdeclareScope(compilerv1Parser::AutofmtdeclareScopeContext *ctx) = 0;

  virtual void enterBridgeInit(compilerv1Parser::BridgeInitContext *ctx) = 0;
  virtual void exitBridgeInit(compilerv1Parser::BridgeInitContext *ctx) = 0;

  virtual void enterInductStmt(compilerv1Parser::InductStmtContext *ctx) = 0;
  virtual void exitInductStmt(compilerv1Parser::InductStmtContext *ctx) = 0;

  virtual void enterReleaseStmt(compilerv1Parser::ReleaseStmtContext *ctx) = 0;
  virtual void exitReleaseStmt(compilerv1Parser::ReleaseStmtContext *ctx) = 0;

  virtual void enterAttributeBlock(compilerv1Parser::AttributeBlockContext *ctx) = 0;
  virtual void exitAttributeBlock(compilerv1Parser::AttributeBlockContext *ctx) = 0;

  virtual void enterAttributeEntry(compilerv1Parser::AttributeEntryContext *ctx) = 0;
  virtual void exitAttributeEntry(compilerv1Parser::AttributeEntryContext *ctx) = 0;

  virtual void enterAttributeArgs(compilerv1Parser::AttributeArgsContext *ctx) = 0;
  virtual void exitAttributeArgs(compilerv1Parser::AttributeArgsContext *ctx) = 0;

  virtual void enterAttributeValue(compilerv1Parser::AttributeValueContext *ctx) = 0;
  virtual void exitAttributeValue(compilerv1Parser::AttributeValueContext *ctx) = 0;

  virtual void enterUnsafeLineStmt(compilerv1Parser::UnsafeLineStmtContext *ctx) = 0;
  virtual void exitUnsafeLineStmt(compilerv1Parser::UnsafeLineStmtContext *ctx) = 0;

  virtual void enterUnsafeLinePayload(compilerv1Parser::UnsafeLinePayloadContext *ctx) = 0;
  virtual void exitUnsafeLinePayload(compilerv1Parser::UnsafeLinePayloadContext *ctx) = 0;

  virtual void enterStatement(compilerv1Parser::StatementContext *ctx) = 0;
  virtual void exitStatement(compilerv1Parser::StatementContext *ctx) = 0;

  virtual void enterTypedefOpstructSession(compilerv1Parser::TypedefOpstructSessionContext *ctx) = 0;
  virtual void exitTypedefOpstructSession(compilerv1Parser::TypedefOpstructSessionContext *ctx) = 0;

  virtual void enterTypedefOpstructCreateStmt(compilerv1Parser::TypedefOpstructCreateStmtContext *ctx) = 0;
  virtual void exitTypedefOpstructCreateStmt(compilerv1Parser::TypedefOpstructCreateStmtContext *ctx) = 0;

  virtual void enterTypedefOpstructPhraseStmt(compilerv1Parser::TypedefOpstructPhraseStmtContext *ctx) = 0;
  virtual void exitTypedefOpstructPhraseStmt(compilerv1Parser::TypedefOpstructPhraseStmtContext *ctx) = 0;

  virtual void enterTypedefOpstructCommand(compilerv1Parser::TypedefOpstructCommandContext *ctx) = 0;
  virtual void exitTypedefOpstructCommand(compilerv1Parser::TypedefOpstructCommandContext *ctx) = 0;

  virtual void enterTypedefOpstructCapture(compilerv1Parser::TypedefOpstructCaptureContext *ctx) = 0;
  virtual void exitTypedefOpstructCapture(compilerv1Parser::TypedefOpstructCaptureContext *ctx) = 0;

  virtual void enterTypedefOpstructWord(compilerv1Parser::TypedefOpstructWordContext *ctx) = 0;
  virtual void exitTypedefOpstructWord(compilerv1Parser::TypedefOpstructWordContext *ctx) = 0;

  virtual void enterRdwindowStmt(compilerv1Parser::RdwindowStmtContext *ctx) = 0;
  virtual void exitRdwindowStmt(compilerv1Parser::RdwindowStmtContext *ctx) = 0;

  virtual void enterEventHandlerStmt(compilerv1Parser::EventHandlerStmtContext *ctx) = 0;
  virtual void exitEventHandlerStmt(compilerv1Parser::EventHandlerStmtContext *ctx) = 0;

  virtual void enterSchedulerStartStmt(compilerv1Parser::SchedulerStartStmtContext *ctx) = 0;
  virtual void exitSchedulerStartStmt(compilerv1Parser::SchedulerStartStmtContext *ctx) = 0;

  virtual void enterSchedulerStartMode(compilerv1Parser::SchedulerStartModeContext *ctx) = 0;
  virtual void exitSchedulerStartMode(compilerv1Parser::SchedulerStartModeContext *ctx) = 0;

  virtual void enterSchedulerInsertStmt(compilerv1Parser::SchedulerInsertStmtContext *ctx) = 0;
  virtual void exitSchedulerInsertStmt(compilerv1Parser::SchedulerInsertStmtContext *ctx) = 0;

  virtual void enterSchedulerVoidStmt(compilerv1Parser::SchedulerVoidStmtContext *ctx) = 0;
  virtual void exitSchedulerVoidStmt(compilerv1Parser::SchedulerVoidStmtContext *ctx) = 0;

  virtual void enterIfStatement(compilerv1Parser::IfStatementContext *ctx) = 0;
  virtual void exitIfStatement(compilerv1Parser::IfStatementContext *ctx) = 0;

  virtual void enterWhileStatement(compilerv1Parser::WhileStatementContext *ctx) = 0;
  virtual void exitWhileStatement(compilerv1Parser::WhileStatementContext *ctx) = 0;

  virtual void enterForStatement(compilerv1Parser::ForStatementContext *ctx) = 0;
  virtual void exitForStatement(compilerv1Parser::ForStatementContext *ctx) = 0;

  virtual void enterForInStatement(compilerv1Parser::ForInStatementContext *ctx) = 0;
  virtual void exitForInStatement(compilerv1Parser::ForInStatementContext *ctx) = 0;

  virtual void enterSwitchStatement(compilerv1Parser::SwitchStatementContext *ctx) = 0;
  virtual void exitSwitchStatement(compilerv1Parser::SwitchStatementContext *ctx) = 0;

  virtual void enterSwitchCase(compilerv1Parser::SwitchCaseContext *ctx) = 0;
  virtual void exitSwitchCase(compilerv1Parser::SwitchCaseContext *ctx) = 0;

  virtual void enterSwitchDefault(compilerv1Parser::SwitchDefaultContext *ctx) = 0;
  virtual void exitSwitchDefault(compilerv1Parser::SwitchDefaultContext *ctx) = 0;

  virtual void enterTryCatchStatement(compilerv1Parser::TryCatchStatementContext *ctx) = 0;
  virtual void exitTryCatchStatement(compilerv1Parser::TryCatchStatementContext *ctx) = 0;

  virtual void enterAutocatchStatement(compilerv1Parser::AutocatchStatementContext *ctx) = 0;
  virtual void exitAutocatchStatement(compilerv1Parser::AutocatchStatementContext *ctx) = 0;

  virtual void enterAssignment(compilerv1Parser::AssignmentContext *ctx) = 0;
  virtual void exitAssignment(compilerv1Parser::AssignmentContext *ctx) = 0;

  virtual void enterAssignmentCore(compilerv1Parser::AssignmentCoreContext *ctx) = 0;
  virtual void exitAssignmentCore(compilerv1Parser::AssignmentCoreContext *ctx) = 0;

  virtual void enterAssignTarget(compilerv1Parser::AssignTargetContext *ctx) = 0;
  virtual void exitAssignTarget(compilerv1Parser::AssignTargetContext *ctx) = 0;

  virtual void enterAccessKey(compilerv1Parser::AccessKeyContext *ctx) = 0;
  virtual void exitAccessKey(compilerv1Parser::AccessKeyContext *ctx) = 0;

  virtual void enterInit(compilerv1Parser::InitContext *ctx) = 0;
  virtual void exitInit(compilerv1Parser::InitContext *ctx) = 0;

  virtual void enterLtoInit(compilerv1Parser::LtoInitContext *ctx) = 0;
  virtual void exitLtoInit(compilerv1Parser::LtoInitContext *ctx) = 0;

  virtual void enterLtoTypesetStmt(compilerv1Parser::LtoTypesetStmtContext *ctx) = 0;
  virtual void exitLtoTypesetStmt(compilerv1Parser::LtoTypesetStmtContext *ctx) = 0;

  virtual void enterEasyInit(compilerv1Parser::EasyInitContext *ctx) = 0;
  virtual void exitEasyInit(compilerv1Parser::EasyInitContext *ctx) = 0;

  virtual void enterInitCore(compilerv1Parser::InitCoreContext *ctx) = 0;
  virtual void exitInitCore(compilerv1Parser::InitCoreContext *ctx) = 0;

  virtual void enterForInit(compilerv1Parser::ForInitContext *ctx) = 0;
  virtual void exitForInit(compilerv1Parser::ForInitContext *ctx) = 0;

  virtual void enterForUpdate(compilerv1Parser::ForUpdateContext *ctx) = 0;
  virtual void exitForUpdate(compilerv1Parser::ForUpdateContext *ctx) = 0;

  virtual void enterAssertStmt(compilerv1Parser::AssertStmtContext *ctx) = 0;
  virtual void exitAssertStmt(compilerv1Parser::AssertStmtContext *ctx) = 0;

  virtual void enterExpression(compilerv1Parser::ExpressionContext *ctx) = 0;
  virtual void exitExpression(compilerv1Parser::ExpressionContext *ctx) = 0;

  virtual void enterOrExpr(compilerv1Parser::OrExprContext *ctx) = 0;
  virtual void exitOrExpr(compilerv1Parser::OrExprContext *ctx) = 0;

  virtual void enterAndExpr(compilerv1Parser::AndExprContext *ctx) = 0;
  virtual void exitAndExpr(compilerv1Parser::AndExprContext *ctx) = 0;

  virtual void enterBitwiseOrExpr(compilerv1Parser::BitwiseOrExprContext *ctx) = 0;
  virtual void exitBitwiseOrExpr(compilerv1Parser::BitwiseOrExprContext *ctx) = 0;

  virtual void enterBitwiseXorExpr(compilerv1Parser::BitwiseXorExprContext *ctx) = 0;
  virtual void exitBitwiseXorExpr(compilerv1Parser::BitwiseXorExprContext *ctx) = 0;

  virtual void enterBitwiseAndExpr(compilerv1Parser::BitwiseAndExprContext *ctx) = 0;
  virtual void exitBitwiseAndExpr(compilerv1Parser::BitwiseAndExprContext *ctx) = 0;

  virtual void enterEqualityExpr(compilerv1Parser::EqualityExprContext *ctx) = 0;
  virtual void exitEqualityExpr(compilerv1Parser::EqualityExprContext *ctx) = 0;

  virtual void enterShiftExpr(compilerv1Parser::ShiftExprContext *ctx) = 0;
  virtual void exitShiftExpr(compilerv1Parser::ShiftExprContext *ctx) = 0;

  virtual void enterRightShiftOperator(compilerv1Parser::RightShiftOperatorContext *ctx) = 0;
  virtual void exitRightShiftOperator(compilerv1Parser::RightShiftOperatorContext *ctx) = 0;

  virtual void enterRelationalExpr(compilerv1Parser::RelationalExprContext *ctx) = 0;
  virtual void exitRelationalExpr(compilerv1Parser::RelationalExprContext *ctx) = 0;

  virtual void enterAddExpr(compilerv1Parser::AddExprContext *ctx) = 0;
  virtual void exitAddExpr(compilerv1Parser::AddExprContext *ctx) = 0;

  virtual void enterMultExpr(compilerv1Parser::MultExprContext *ctx) = 0;
  virtual void exitMultExpr(compilerv1Parser::MultExprContext *ctx) = 0;

  virtual void enterPrimary(compilerv1Parser::PrimaryContext *ctx) = 0;
  virtual void exitPrimary(compilerv1Parser::PrimaryContext *ctx) = 0;

  virtual void enterTemplateString(compilerv1Parser::TemplateStringContext *ctx) = 0;
  virtual void exitTemplateString(compilerv1Parser::TemplateStringContext *ctx) = 0;

  virtual void enterCastExpr(compilerv1Parser::CastExprContext *ctx) = 0;
  virtual void exitCastExpr(compilerv1Parser::CastExprContext *ctx) = 0;

  virtual void enterCastType(compilerv1Parser::CastTypeContext *ctx) = 0;
  virtual void exitCastType(compilerv1Parser::CastTypeContext *ctx) = 0;

  virtual void enterPlacementNewExpr(compilerv1Parser::PlacementNewExprContext *ctx) = 0;
  virtual void exitPlacementNewExpr(compilerv1Parser::PlacementNewExprContext *ctx) = 0;

  virtual void enterIndexedAccess(compilerv1Parser::IndexedAccessContext *ctx) = 0;
  virtual void exitIndexedAccess(compilerv1Parser::IndexedAccessContext *ctx) = 0;

  virtual void enterCompositeLiteral(compilerv1Parser::CompositeLiteralContext *ctx) = 0;
  virtual void exitCompositeLiteral(compilerv1Parser::CompositeLiteralContext *ctx) = 0;

  virtual void enterBraceInitializer(compilerv1Parser::BraceInitializerContext *ctx) = 0;
  virtual void exitBraceInitializer(compilerv1Parser::BraceInitializerContext *ctx) = 0;

  virtual void enterBraceInitializerElement(compilerv1Parser::BraceInitializerElementContext *ctx) = 0;
  virtual void exitBraceInitializerElement(compilerv1Parser::BraceInitializerElementContext *ctx) = 0;

  virtual void enterFunctionCall(compilerv1Parser::FunctionCallContext *ctx) = 0;
  virtual void exitFunctionCall(compilerv1Parser::FunctionCallContext *ctx) = 0;

  virtual void enterArgs(compilerv1Parser::ArgsContext *ctx) = 0;
  virtual void exitArgs(compilerv1Parser::ArgsContext *ctx) = 0;

  virtual void enterReturnStmt(compilerv1Parser::ReturnStmtContext *ctx) = 0;
  virtual void exitReturnStmt(compilerv1Parser::ReturnStmtContext *ctx) = 0;

  virtual void enterCommunalQualifier(compilerv1Parser::CommunalQualifierContext *ctx) = 0;
  virtual void exitCommunalQualifier(compilerv1Parser::CommunalQualifierContext *ctx) = 0;

  virtual void enterClass(compilerv1Parser::ClassContext *ctx) = 0;
  virtual void exitClass(compilerv1Parser::ClassContext *ctx) = 0;

  virtual void enterStruct(compilerv1Parser::StructContext *ctx) = 0;
  virtual void exitStruct(compilerv1Parser::StructContext *ctx) = 0;

  virtual void enterMemstruct(compilerv1Parser::MemstructContext *ctx) = 0;
  virtual void exitMemstruct(compilerv1Parser::MemstructContext *ctx) = 0;

  virtual void enterTypedefStruct(compilerv1Parser::TypedefStructContext *ctx) = 0;
  virtual void exitTypedefStruct(compilerv1Parser::TypedefStructContext *ctx) = 0;

  virtual void enterOpstruct(compilerv1Parser::OpstructContext *ctx) = 0;
  virtual void exitOpstruct(compilerv1Parser::OpstructContext *ctx) = 0;

  virtual void enterOpstructBody(compilerv1Parser::OpstructBodyContext *ctx) = 0;
  virtual void exitOpstructBody(compilerv1Parser::OpstructBodyContext *ctx) = 0;

  virtual void enterTypedefOpstruct(compilerv1Parser::TypedefOpstructContext *ctx) = 0;
  virtual void exitTypedefOpstruct(compilerv1Parser::TypedefOpstructContext *ctx) = 0;

  virtual void enterTypedefOpstructDslBody(compilerv1Parser::TypedefOpstructDslBodyContext *ctx) = 0;
  virtual void exitTypedefOpstructDslBody(compilerv1Parser::TypedefOpstructDslBodyContext *ctx) = 0;

  virtual void enterTypedefOpstructDslEntry(compilerv1Parser::TypedefOpstructDslEntryContext *ctx) = 0;
  virtual void exitTypedefOpstructDslEntry(compilerv1Parser::TypedefOpstructDslEntryContext *ctx) = 0;

  virtual void enterTypedefOpstructAsgEntry(compilerv1Parser::TypedefOpstructAsgEntryContext *ctx) = 0;
  virtual void exitTypedefOpstructAsgEntry(compilerv1Parser::TypedefOpstructAsgEntryContext *ctx) = 0;

  virtual void enterTypedefOpstructSrcEntry(compilerv1Parser::TypedefOpstructSrcEntryContext *ctx) = 0;
  virtual void exitTypedefOpstructSrcEntry(compilerv1Parser::TypedefOpstructSrcEntryContext *ctx) = 0;

  virtual void enterTypedefOpstructTemplateBody(compilerv1Parser::TypedefOpstructTemplateBodyContext *ctx) = 0;
  virtual void exitTypedefOpstructTemplateBody(compilerv1Parser::TypedefOpstructTemplateBodyContext *ctx) = 0;

  virtual void enterTypedefOpstructTemplateBodyItem(compilerv1Parser::TypedefOpstructTemplateBodyItemContext *ctx) = 0;
  virtual void exitTypedefOpstructTemplateBodyItem(compilerv1Parser::TypedefOpstructTemplateBodyItemContext *ctx) = 0;

  virtual void enterInterfaceDecl(compilerv1Parser::InterfaceDeclContext *ctx) = 0;
  virtual void exitInterfaceDecl(compilerv1Parser::InterfaceDeclContext *ctx) = 0;

  virtual void enterInheritanceClause(compilerv1Parser::InheritanceClauseContext *ctx) = 0;
  virtual void exitInheritanceClause(compilerv1Parser::InheritanceClauseContext *ctx) = 0;

  virtual void enterInheritedType(compilerv1Parser::InheritedTypeContext *ctx) = 0;
  virtual void exitInheritedType(compilerv1Parser::InheritedTypeContext *ctx) = 0;

  virtual void enterVirtualMethod(compilerv1Parser::VirtualMethodContext *ctx) = 0;
  virtual void exitVirtualMethod(compilerv1Parser::VirtualMethodContext *ctx) = 0;


};

