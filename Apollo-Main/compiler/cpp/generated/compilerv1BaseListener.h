
// Generated from compilerv1.g4 by ANTLR 4.13.2

#pragma once


#include "antlr4-runtime.h"
#include "compilerv1Listener.h"


/**
 * This class provides an empty implementation of compilerv1Listener,
 * which can be extended to create a listener which only needs to handle a subset
 * of the available methods.
 */
class  compilerv1BaseListener : public compilerv1Listener {
public:

  virtual void enterProgram(compilerv1Parser::ProgramContext * /*ctx*/) override { }
  virtual void exitProgram(compilerv1Parser::ProgramContext * /*ctx*/) override { }

  virtual void enterStdimport(compilerv1Parser::StdimportContext * /*ctx*/) override { }
  virtual void exitStdimport(compilerv1Parser::StdimportContext * /*ctx*/) override { }

  virtual void enterDirective(compilerv1Parser::DirectiveContext * /*ctx*/) override { }
  virtual void exitDirective(compilerv1Parser::DirectiveContext * /*ctx*/) override { }

  virtual void enterGcDirective(compilerv1Parser::GcDirectiveContext * /*ctx*/) override { }
  virtual void exitGcDirective(compilerv1Parser::GcDirectiveContext * /*ctx*/) override { }

  virtual void enterBorrowCheckerDirective(compilerv1Parser::BorrowCheckerDirectiveContext * /*ctx*/) override { }
  virtual void exitBorrowCheckerDirective(compilerv1Parser::BorrowCheckerDirectiveContext * /*ctx*/) override { }

  virtual void enterRuntimeDirective(compilerv1Parser::RuntimeDirectiveContext * /*ctx*/) override { }
  virtual void exitRuntimeDirective(compilerv1Parser::RuntimeDirectiveContext * /*ctx*/) override { }

  virtual void enterSettingDirective(compilerv1Parser::SettingDirectiveContext * /*ctx*/) override { }
  virtual void exitSettingDirective(compilerv1Parser::SettingDirectiveContext * /*ctx*/) override { }

  virtual void enterSettingValue(compilerv1Parser::SettingValueContext * /*ctx*/) override { }
  virtual void exitSettingValue(compilerv1Parser::SettingValueContext * /*ctx*/) override { }

  virtual void enterImportStmt(compilerv1Parser::ImportStmtContext * /*ctx*/) override { }
  virtual void exitImportStmt(compilerv1Parser::ImportStmtContext * /*ctx*/) override { }

  virtual void enterInstance(compilerv1Parser::InstanceContext * /*ctx*/) override { }
  virtual void exitInstance(compilerv1Parser::InstanceContext * /*ctx*/) override { }

  virtual void enterInstancepush(compilerv1Parser::InstancepushContext * /*ctx*/) override { }
  virtual void exitInstancepush(compilerv1Parser::InstancepushContext * /*ctx*/) override { }

  virtual void enterMemberaccess(compilerv1Parser::MemberaccessContext * /*ctx*/) override { }
  virtual void exitMemberaccess(compilerv1Parser::MemberaccessContext * /*ctx*/) override { }

  virtual void enterAccessBase(compilerv1Parser::AccessBaseContext * /*ctx*/) override { }
  virtual void exitAccessBase(compilerv1Parser::AccessBaseContext * /*ctx*/) override { }

  virtual void enterInstanceValue(compilerv1Parser::InstanceValueContext * /*ctx*/) override { }
  virtual void exitInstanceValue(compilerv1Parser::InstanceValueContext * /*ctx*/) override { }

  virtual void enterAllocatorUseSuffix(compilerv1Parser::AllocatorUseSuffixContext * /*ctx*/) override { }
  virtual void exitAllocatorUseSuffix(compilerv1Parser::AllocatorUseSuffixContext * /*ctx*/) override { }

  virtual void enterImportPath(compilerv1Parser::ImportPathContext * /*ctx*/) override { }
  virtual void exitImportPath(compilerv1Parser::ImportPathContext * /*ctx*/) override { }

  virtual void enterHeaderPath(compilerv1Parser::HeaderPathContext * /*ctx*/) override { }
  virtual void exitHeaderPath(compilerv1Parser::HeaderPathContext * /*ctx*/) override { }

  virtual void enterHeaderPart(compilerv1Parser::HeaderPartContext * /*ctx*/) override { }
  virtual void exitHeaderPart(compilerv1Parser::HeaderPartContext * /*ctx*/) override { }

  virtual void enterHeaderPartAtom(compilerv1Parser::HeaderPartAtomContext * /*ctx*/) override { }
  virtual void exitHeaderPartAtom(compilerv1Parser::HeaderPartAtomContext * /*ctx*/) override { }

  virtual void enterFunction(compilerv1Parser::FunctionContext * /*ctx*/) override { }
  virtual void exitFunction(compilerv1Parser::FunctionContext * /*ctx*/) override { }

  virtual void enterMethod(compilerv1Parser::MethodContext * /*ctx*/) override { }
  virtual void exitMethod(compilerv1Parser::MethodContext * /*ctx*/) override { }

  virtual void enterField(compilerv1Parser::FieldContext * /*ctx*/) override { }
  virtual void exitField(compilerv1Parser::FieldContext * /*ctx*/) override { }

  virtual void enterParams(compilerv1Parser::ParamsContext * /*ctx*/) override { }
  virtual void exitParams(compilerv1Parser::ParamsContext * /*ctx*/) override { }

  virtual void enterParam(compilerv1Parser::ParamContext * /*ctx*/) override { }
  virtual void exitParam(compilerv1Parser::ParamContext * /*ctx*/) override { }

  virtual void enterBorrowExpr(compilerv1Parser::BorrowExprContext * /*ctx*/) override { }
  virtual void exitBorrowExpr(compilerv1Parser::BorrowExprContext * /*ctx*/) override { }

  virtual void enterBlock(compilerv1Parser::BlockContext * /*ctx*/) override { }
  virtual void exitBlock(compilerv1Parser::BlockContext * /*ctx*/) override { }

  virtual void enterClassBody(compilerv1Parser::ClassBodyContext * /*ctx*/) override { }
  virtual void exitClassBody(compilerv1Parser::ClassBodyContext * /*ctx*/) override { }

  virtual void enterTemplateDecl(compilerv1Parser::TemplateDeclContext * /*ctx*/) override { }
  virtual void exitTemplateDecl(compilerv1Parser::TemplateDeclContext * /*ctx*/) override { }

  virtual void enterTemplateParams(compilerv1Parser::TemplateParamsContext * /*ctx*/) override { }
  virtual void exitTemplateParams(compilerv1Parser::TemplateParamsContext * /*ctx*/) override { }

  virtual void enterInlineForeignBlock(compilerv1Parser::InlineForeignBlockContext * /*ctx*/) override { }
  virtual void exitInlineForeignBlock(compilerv1Parser::InlineForeignBlockContext * /*ctx*/) override { }

  virtual void enterStructBody(compilerv1Parser::StructBodyContext * /*ctx*/) override { }
  virtual void exitStructBody(compilerv1Parser::StructBodyContext * /*ctx*/) override { }

  virtual void enterScheduleDecl(compilerv1Parser::ScheduleDeclContext * /*ctx*/) override { }
  virtual void exitScheduleDecl(compilerv1Parser::ScheduleDeclContext * /*ctx*/) override { }

  virtual void enterScheduleMember(compilerv1Parser::ScheduleMemberContext * /*ctx*/) override { }
  virtual void exitScheduleMember(compilerv1Parser::ScheduleMemberContext * /*ctx*/) override { }

  virtual void enterMandatoryScheduleMember(compilerv1Parser::MandatoryScheduleMemberContext * /*ctx*/) override { }
  virtual void exitMandatoryScheduleMember(compilerv1Parser::MandatoryScheduleMemberContext * /*ctx*/) override { }

  virtual void enterClassMember(compilerv1Parser::ClassMemberContext * /*ctx*/) override { }
  virtual void exitClassMember(compilerv1Parser::ClassMemberContext * /*ctx*/) override { }

  virtual void enterStructMember(compilerv1Parser::StructMemberContext * /*ctx*/) override { }
  virtual void exitStructMember(compilerv1Parser::StructMemberContext * /*ctx*/) override { }

  virtual void enterPrint(compilerv1Parser::PrintContext * /*ctx*/) override { }
  virtual void exitPrint(compilerv1Parser::PrintContext * /*ctx*/) override { }

  virtual void enterNativemode(compilerv1Parser::NativemodeContext * /*ctx*/) override { }
  virtual void exitNativemode(compilerv1Parser::NativemodeContext * /*ctx*/) override { }

  virtual void enterAsyncCall(compilerv1Parser::AsyncCallContext * /*ctx*/) override { }
  virtual void exitAsyncCall(compilerv1Parser::AsyncCallContext * /*ctx*/) override { }

  virtual void enterSyscallStmt(compilerv1Parser::SyscallStmtContext * /*ctx*/) override { }
  virtual void exitSyscallStmt(compilerv1Parser::SyscallStmtContext * /*ctx*/) override { }

  virtual void enterGlobalInit(compilerv1Parser::GlobalInitContext * /*ctx*/) override { }
  virtual void exitGlobalInit(compilerv1Parser::GlobalInitContext * /*ctx*/) override { }

  virtual void enterMalloc(compilerv1Parser::MallocContext * /*ctx*/) override { }
  virtual void exitMalloc(compilerv1Parser::MallocContext * /*ctx*/) override { }

  virtual void enterMntDecl(compilerv1Parser::MntDeclContext * /*ctx*/) override { }
  virtual void exitMntDecl(compilerv1Parser::MntDeclContext * /*ctx*/) override { }

  virtual void enterDelalc(compilerv1Parser::DelalcContext * /*ctx*/) override { }
  virtual void exitDelalc(compilerv1Parser::DelalcContext * /*ctx*/) override { }

  virtual void enterFree(compilerv1Parser::FreeContext * /*ctx*/) override { }
  virtual void exitFree(compilerv1Parser::FreeContext * /*ctx*/) override { }

  virtual void enterPlcnew(compilerv1Parser::PlcnewContext * /*ctx*/) override { }
  virtual void exitPlcnew(compilerv1Parser::PlcnewContext * /*ctx*/) override { }

  virtual void enterPlcnewType(compilerv1Parser::PlcnewTypeContext * /*ctx*/) override { }
  virtual void exitPlcnewType(compilerv1Parser::PlcnewTypeContext * /*ctx*/) override { }

  virtual void enterPointer(compilerv1Parser::PointerContext * /*ctx*/) override { }
  virtual void exitPointer(compilerv1Parser::PointerContext * /*ctx*/) override { }

  virtual void enterInclude(compilerv1Parser::IncludeContext * /*ctx*/) override { }
  virtual void exitInclude(compilerv1Parser::IncludeContext * /*ctx*/) override { }

  virtual void enterReturnType(compilerv1Parser::ReturnTypeContext * /*ctx*/) override { }
  virtual void exitReturnType(compilerv1Parser::ReturnTypeContext * /*ctx*/) override { }

  virtual void enterTypeRef(compilerv1Parser::TypeRefContext * /*ctx*/) override { }
  virtual void exitTypeRef(compilerv1Parser::TypeRefContext * /*ctx*/) override { }

  virtual void enterThread(compilerv1Parser::ThreadContext * /*ctx*/) override { }
  virtual void exitThread(compilerv1Parser::ThreadContext * /*ctx*/) override { }

  virtual void enterTypeAtom(compilerv1Parser::TypeAtomContext * /*ctx*/) override { }
  virtual void exitTypeAtom(compilerv1Parser::TypeAtomContext * /*ctx*/) override { }

  virtual void enterTypeModifier(compilerv1Parser::TypeModifierContext * /*ctx*/) override { }
  virtual void exitTypeModifier(compilerv1Parser::TypeModifierContext * /*ctx*/) override { }

  virtual void enterGenericType(compilerv1Parser::GenericTypeContext * /*ctx*/) override { }
  virtual void exitGenericType(compilerv1Parser::GenericTypeContext * /*ctx*/) override { }

  virtual void enterFunctionType(compilerv1Parser::FunctionTypeContext * /*ctx*/) override { }
  virtual void exitFunctionType(compilerv1Parser::FunctionTypeContext * /*ctx*/) override { }

  virtual void enterFunctionTypeArgs(compilerv1Parser::FunctionTypeArgsContext * /*ctx*/) override { }
  virtual void exitFunctionTypeArgs(compilerv1Parser::FunctionTypeArgsContext * /*ctx*/) override { }

  virtual void enterMacro(compilerv1Parser::MacroContext * /*ctx*/) override { }
  virtual void exitMacro(compilerv1Parser::MacroContext * /*ctx*/) override { }

  virtual void enterMacroQualifier(compilerv1Parser::MacroQualifierContext * /*ctx*/) override { }
  virtual void exitMacroQualifier(compilerv1Parser::MacroQualifierContext * /*ctx*/) override { }

  virtual void enterStdinStmt(compilerv1Parser::StdinStmtContext * /*ctx*/) override { }
  virtual void exitStdinStmt(compilerv1Parser::StdinStmtContext * /*ctx*/) override { }

  virtual void enterStdinValue(compilerv1Parser::StdinValueContext * /*ctx*/) override { }
  virtual void exitStdinValue(compilerv1Parser::StdinValueContext * /*ctx*/) override { }

  virtual void enterLambda(compilerv1Parser::LambdaContext * /*ctx*/) override { }
  virtual void exitLambda(compilerv1Parser::LambdaContext * /*ctx*/) override { }

  virtual void enterLambdaDefinition(compilerv1Parser::LambdaDefinitionContext * /*ctx*/) override { }
  virtual void exitLambdaDefinition(compilerv1Parser::LambdaDefinitionContext * /*ctx*/) override { }

  virtual void enterLambdaLiteral(compilerv1Parser::LambdaLiteralContext * /*ctx*/) override { }
  virtual void exitLambdaLiteral(compilerv1Parser::LambdaLiteralContext * /*ctx*/) override { }

  virtual void enterSrcDecl(compilerv1Parser::SrcDeclContext * /*ctx*/) override { }
  virtual void exitSrcDecl(compilerv1Parser::SrcDeclContext * /*ctx*/) override { }

  virtual void enterCscope(compilerv1Parser::CscopeContext * /*ctx*/) override { }
  virtual void exitCscope(compilerv1Parser::CscopeContext * /*ctx*/) override { }

  virtual void enterUnsafeBlock(compilerv1Parser::UnsafeBlockContext * /*ctx*/) override { }
  virtual void exitUnsafeBlock(compilerv1Parser::UnsafeBlockContext * /*ctx*/) override { }

  virtual void enterBypassBlock(compilerv1Parser::BypassBlockContext * /*ctx*/) override { }
  virtual void exitBypassBlock(compilerv1Parser::BypassBlockContext * /*ctx*/) override { }

  virtual void enterAutofmtdeclareScope(compilerv1Parser::AutofmtdeclareScopeContext * /*ctx*/) override { }
  virtual void exitAutofmtdeclareScope(compilerv1Parser::AutofmtdeclareScopeContext * /*ctx*/) override { }

  virtual void enterBridgeInit(compilerv1Parser::BridgeInitContext * /*ctx*/) override { }
  virtual void exitBridgeInit(compilerv1Parser::BridgeInitContext * /*ctx*/) override { }

  virtual void enterInductStmt(compilerv1Parser::InductStmtContext * /*ctx*/) override { }
  virtual void exitInductStmt(compilerv1Parser::InductStmtContext * /*ctx*/) override { }

  virtual void enterReleaseStmt(compilerv1Parser::ReleaseStmtContext * /*ctx*/) override { }
  virtual void exitReleaseStmt(compilerv1Parser::ReleaseStmtContext * /*ctx*/) override { }

  virtual void enterAttributeBlock(compilerv1Parser::AttributeBlockContext * /*ctx*/) override { }
  virtual void exitAttributeBlock(compilerv1Parser::AttributeBlockContext * /*ctx*/) override { }

  virtual void enterAttributeEntry(compilerv1Parser::AttributeEntryContext * /*ctx*/) override { }
  virtual void exitAttributeEntry(compilerv1Parser::AttributeEntryContext * /*ctx*/) override { }

  virtual void enterAttributeArgs(compilerv1Parser::AttributeArgsContext * /*ctx*/) override { }
  virtual void exitAttributeArgs(compilerv1Parser::AttributeArgsContext * /*ctx*/) override { }

  virtual void enterAttributeValue(compilerv1Parser::AttributeValueContext * /*ctx*/) override { }
  virtual void exitAttributeValue(compilerv1Parser::AttributeValueContext * /*ctx*/) override { }

  virtual void enterUnsafeLineStmt(compilerv1Parser::UnsafeLineStmtContext * /*ctx*/) override { }
  virtual void exitUnsafeLineStmt(compilerv1Parser::UnsafeLineStmtContext * /*ctx*/) override { }

  virtual void enterUnsafeLinePayload(compilerv1Parser::UnsafeLinePayloadContext * /*ctx*/) override { }
  virtual void exitUnsafeLinePayload(compilerv1Parser::UnsafeLinePayloadContext * /*ctx*/) override { }

  virtual void enterStatement(compilerv1Parser::StatementContext * /*ctx*/) override { }
  virtual void exitStatement(compilerv1Parser::StatementContext * /*ctx*/) override { }

  virtual void enterTypedefOpstructSession(compilerv1Parser::TypedefOpstructSessionContext * /*ctx*/) override { }
  virtual void exitTypedefOpstructSession(compilerv1Parser::TypedefOpstructSessionContext * /*ctx*/) override { }

  virtual void enterTypedefOpstructCreateStmt(compilerv1Parser::TypedefOpstructCreateStmtContext * /*ctx*/) override { }
  virtual void exitTypedefOpstructCreateStmt(compilerv1Parser::TypedefOpstructCreateStmtContext * /*ctx*/) override { }

  virtual void enterTypedefOpstructPhraseStmt(compilerv1Parser::TypedefOpstructPhraseStmtContext * /*ctx*/) override { }
  virtual void exitTypedefOpstructPhraseStmt(compilerv1Parser::TypedefOpstructPhraseStmtContext * /*ctx*/) override { }

  virtual void enterTypedefOpstructCommand(compilerv1Parser::TypedefOpstructCommandContext * /*ctx*/) override { }
  virtual void exitTypedefOpstructCommand(compilerv1Parser::TypedefOpstructCommandContext * /*ctx*/) override { }

  virtual void enterTypedefOpstructCapture(compilerv1Parser::TypedefOpstructCaptureContext * /*ctx*/) override { }
  virtual void exitTypedefOpstructCapture(compilerv1Parser::TypedefOpstructCaptureContext * /*ctx*/) override { }

  virtual void enterTypedefOpstructWord(compilerv1Parser::TypedefOpstructWordContext * /*ctx*/) override { }
  virtual void exitTypedefOpstructWord(compilerv1Parser::TypedefOpstructWordContext * /*ctx*/) override { }

  virtual void enterRdwindowStmt(compilerv1Parser::RdwindowStmtContext * /*ctx*/) override { }
  virtual void exitRdwindowStmt(compilerv1Parser::RdwindowStmtContext * /*ctx*/) override { }

  virtual void enterEventHandlerStmt(compilerv1Parser::EventHandlerStmtContext * /*ctx*/) override { }
  virtual void exitEventHandlerStmt(compilerv1Parser::EventHandlerStmtContext * /*ctx*/) override { }

  virtual void enterSchedulerStartStmt(compilerv1Parser::SchedulerStartStmtContext * /*ctx*/) override { }
  virtual void exitSchedulerStartStmt(compilerv1Parser::SchedulerStartStmtContext * /*ctx*/) override { }

  virtual void enterSchedulerStartMode(compilerv1Parser::SchedulerStartModeContext * /*ctx*/) override { }
  virtual void exitSchedulerStartMode(compilerv1Parser::SchedulerStartModeContext * /*ctx*/) override { }

  virtual void enterSchedulerInsertStmt(compilerv1Parser::SchedulerInsertStmtContext * /*ctx*/) override { }
  virtual void exitSchedulerInsertStmt(compilerv1Parser::SchedulerInsertStmtContext * /*ctx*/) override { }

  virtual void enterSchedulerVoidStmt(compilerv1Parser::SchedulerVoidStmtContext * /*ctx*/) override { }
  virtual void exitSchedulerVoidStmt(compilerv1Parser::SchedulerVoidStmtContext * /*ctx*/) override { }

  virtual void enterIfStatement(compilerv1Parser::IfStatementContext * /*ctx*/) override { }
  virtual void exitIfStatement(compilerv1Parser::IfStatementContext * /*ctx*/) override { }

  virtual void enterWhileStatement(compilerv1Parser::WhileStatementContext * /*ctx*/) override { }
  virtual void exitWhileStatement(compilerv1Parser::WhileStatementContext * /*ctx*/) override { }

  virtual void enterForStatement(compilerv1Parser::ForStatementContext * /*ctx*/) override { }
  virtual void exitForStatement(compilerv1Parser::ForStatementContext * /*ctx*/) override { }

  virtual void enterForInStatement(compilerv1Parser::ForInStatementContext * /*ctx*/) override { }
  virtual void exitForInStatement(compilerv1Parser::ForInStatementContext * /*ctx*/) override { }

  virtual void enterSwitchStatement(compilerv1Parser::SwitchStatementContext * /*ctx*/) override { }
  virtual void exitSwitchStatement(compilerv1Parser::SwitchStatementContext * /*ctx*/) override { }

  virtual void enterSwitchCase(compilerv1Parser::SwitchCaseContext * /*ctx*/) override { }
  virtual void exitSwitchCase(compilerv1Parser::SwitchCaseContext * /*ctx*/) override { }

  virtual void enterSwitchDefault(compilerv1Parser::SwitchDefaultContext * /*ctx*/) override { }
  virtual void exitSwitchDefault(compilerv1Parser::SwitchDefaultContext * /*ctx*/) override { }

  virtual void enterTryCatchStatement(compilerv1Parser::TryCatchStatementContext * /*ctx*/) override { }
  virtual void exitTryCatchStatement(compilerv1Parser::TryCatchStatementContext * /*ctx*/) override { }

  virtual void enterAutocatchStatement(compilerv1Parser::AutocatchStatementContext * /*ctx*/) override { }
  virtual void exitAutocatchStatement(compilerv1Parser::AutocatchStatementContext * /*ctx*/) override { }

  virtual void enterAssignment(compilerv1Parser::AssignmentContext * /*ctx*/) override { }
  virtual void exitAssignment(compilerv1Parser::AssignmentContext * /*ctx*/) override { }

  virtual void enterAssignmentCore(compilerv1Parser::AssignmentCoreContext * /*ctx*/) override { }
  virtual void exitAssignmentCore(compilerv1Parser::AssignmentCoreContext * /*ctx*/) override { }

  virtual void enterAssignTarget(compilerv1Parser::AssignTargetContext * /*ctx*/) override { }
  virtual void exitAssignTarget(compilerv1Parser::AssignTargetContext * /*ctx*/) override { }

  virtual void enterAccessKey(compilerv1Parser::AccessKeyContext * /*ctx*/) override { }
  virtual void exitAccessKey(compilerv1Parser::AccessKeyContext * /*ctx*/) override { }

  virtual void enterInit(compilerv1Parser::InitContext * /*ctx*/) override { }
  virtual void exitInit(compilerv1Parser::InitContext * /*ctx*/) override { }

  virtual void enterLtoInit(compilerv1Parser::LtoInitContext * /*ctx*/) override { }
  virtual void exitLtoInit(compilerv1Parser::LtoInitContext * /*ctx*/) override { }

  virtual void enterLtoTypesetStmt(compilerv1Parser::LtoTypesetStmtContext * /*ctx*/) override { }
  virtual void exitLtoTypesetStmt(compilerv1Parser::LtoTypesetStmtContext * /*ctx*/) override { }

  virtual void enterEasyInit(compilerv1Parser::EasyInitContext * /*ctx*/) override { }
  virtual void exitEasyInit(compilerv1Parser::EasyInitContext * /*ctx*/) override { }

  virtual void enterInitCore(compilerv1Parser::InitCoreContext * /*ctx*/) override { }
  virtual void exitInitCore(compilerv1Parser::InitCoreContext * /*ctx*/) override { }

  virtual void enterForInit(compilerv1Parser::ForInitContext * /*ctx*/) override { }
  virtual void exitForInit(compilerv1Parser::ForInitContext * /*ctx*/) override { }

  virtual void enterForUpdate(compilerv1Parser::ForUpdateContext * /*ctx*/) override { }
  virtual void exitForUpdate(compilerv1Parser::ForUpdateContext * /*ctx*/) override { }

  virtual void enterAssertStmt(compilerv1Parser::AssertStmtContext * /*ctx*/) override { }
  virtual void exitAssertStmt(compilerv1Parser::AssertStmtContext * /*ctx*/) override { }

  virtual void enterExpression(compilerv1Parser::ExpressionContext * /*ctx*/) override { }
  virtual void exitExpression(compilerv1Parser::ExpressionContext * /*ctx*/) override { }

  virtual void enterOrExpr(compilerv1Parser::OrExprContext * /*ctx*/) override { }
  virtual void exitOrExpr(compilerv1Parser::OrExprContext * /*ctx*/) override { }

  virtual void enterAndExpr(compilerv1Parser::AndExprContext * /*ctx*/) override { }
  virtual void exitAndExpr(compilerv1Parser::AndExprContext * /*ctx*/) override { }

  virtual void enterBitwiseOrExpr(compilerv1Parser::BitwiseOrExprContext * /*ctx*/) override { }
  virtual void exitBitwiseOrExpr(compilerv1Parser::BitwiseOrExprContext * /*ctx*/) override { }

  virtual void enterBitwiseXorExpr(compilerv1Parser::BitwiseXorExprContext * /*ctx*/) override { }
  virtual void exitBitwiseXorExpr(compilerv1Parser::BitwiseXorExprContext * /*ctx*/) override { }

  virtual void enterBitwiseAndExpr(compilerv1Parser::BitwiseAndExprContext * /*ctx*/) override { }
  virtual void exitBitwiseAndExpr(compilerv1Parser::BitwiseAndExprContext * /*ctx*/) override { }

  virtual void enterEqualityExpr(compilerv1Parser::EqualityExprContext * /*ctx*/) override { }
  virtual void exitEqualityExpr(compilerv1Parser::EqualityExprContext * /*ctx*/) override { }

  virtual void enterShiftExpr(compilerv1Parser::ShiftExprContext * /*ctx*/) override { }
  virtual void exitShiftExpr(compilerv1Parser::ShiftExprContext * /*ctx*/) override { }

  virtual void enterRightShiftOperator(compilerv1Parser::RightShiftOperatorContext * /*ctx*/) override { }
  virtual void exitRightShiftOperator(compilerv1Parser::RightShiftOperatorContext * /*ctx*/) override { }

  virtual void enterRelationalExpr(compilerv1Parser::RelationalExprContext * /*ctx*/) override { }
  virtual void exitRelationalExpr(compilerv1Parser::RelationalExprContext * /*ctx*/) override { }

  virtual void enterAddExpr(compilerv1Parser::AddExprContext * /*ctx*/) override { }
  virtual void exitAddExpr(compilerv1Parser::AddExprContext * /*ctx*/) override { }

  virtual void enterMultExpr(compilerv1Parser::MultExprContext * /*ctx*/) override { }
  virtual void exitMultExpr(compilerv1Parser::MultExprContext * /*ctx*/) override { }

  virtual void enterPrimary(compilerv1Parser::PrimaryContext * /*ctx*/) override { }
  virtual void exitPrimary(compilerv1Parser::PrimaryContext * /*ctx*/) override { }

  virtual void enterTemplateString(compilerv1Parser::TemplateStringContext * /*ctx*/) override { }
  virtual void exitTemplateString(compilerv1Parser::TemplateStringContext * /*ctx*/) override { }

  virtual void enterCastExpr(compilerv1Parser::CastExprContext * /*ctx*/) override { }
  virtual void exitCastExpr(compilerv1Parser::CastExprContext * /*ctx*/) override { }

  virtual void enterCastType(compilerv1Parser::CastTypeContext * /*ctx*/) override { }
  virtual void exitCastType(compilerv1Parser::CastTypeContext * /*ctx*/) override { }

  virtual void enterPlacementNewExpr(compilerv1Parser::PlacementNewExprContext * /*ctx*/) override { }
  virtual void exitPlacementNewExpr(compilerv1Parser::PlacementNewExprContext * /*ctx*/) override { }

  virtual void enterIndexedAccess(compilerv1Parser::IndexedAccessContext * /*ctx*/) override { }
  virtual void exitIndexedAccess(compilerv1Parser::IndexedAccessContext * /*ctx*/) override { }

  virtual void enterCompositeLiteral(compilerv1Parser::CompositeLiteralContext * /*ctx*/) override { }
  virtual void exitCompositeLiteral(compilerv1Parser::CompositeLiteralContext * /*ctx*/) override { }

  virtual void enterBraceInitializer(compilerv1Parser::BraceInitializerContext * /*ctx*/) override { }
  virtual void exitBraceInitializer(compilerv1Parser::BraceInitializerContext * /*ctx*/) override { }

  virtual void enterBraceInitializerElement(compilerv1Parser::BraceInitializerElementContext * /*ctx*/) override { }
  virtual void exitBraceInitializerElement(compilerv1Parser::BraceInitializerElementContext * /*ctx*/) override { }

  virtual void enterFunctionCall(compilerv1Parser::FunctionCallContext * /*ctx*/) override { }
  virtual void exitFunctionCall(compilerv1Parser::FunctionCallContext * /*ctx*/) override { }

  virtual void enterArgs(compilerv1Parser::ArgsContext * /*ctx*/) override { }
  virtual void exitArgs(compilerv1Parser::ArgsContext * /*ctx*/) override { }

  virtual void enterReturnStmt(compilerv1Parser::ReturnStmtContext * /*ctx*/) override { }
  virtual void exitReturnStmt(compilerv1Parser::ReturnStmtContext * /*ctx*/) override { }

  virtual void enterCommunalQualifier(compilerv1Parser::CommunalQualifierContext * /*ctx*/) override { }
  virtual void exitCommunalQualifier(compilerv1Parser::CommunalQualifierContext * /*ctx*/) override { }

  virtual void enterClass(compilerv1Parser::ClassContext * /*ctx*/) override { }
  virtual void exitClass(compilerv1Parser::ClassContext * /*ctx*/) override { }

  virtual void enterStruct(compilerv1Parser::StructContext * /*ctx*/) override { }
  virtual void exitStruct(compilerv1Parser::StructContext * /*ctx*/) override { }

  virtual void enterMemstruct(compilerv1Parser::MemstructContext * /*ctx*/) override { }
  virtual void exitMemstruct(compilerv1Parser::MemstructContext * /*ctx*/) override { }

  virtual void enterTypedefStruct(compilerv1Parser::TypedefStructContext * /*ctx*/) override { }
  virtual void exitTypedefStruct(compilerv1Parser::TypedefStructContext * /*ctx*/) override { }

  virtual void enterOpstruct(compilerv1Parser::OpstructContext * /*ctx*/) override { }
  virtual void exitOpstruct(compilerv1Parser::OpstructContext * /*ctx*/) override { }

  virtual void enterOpstructBody(compilerv1Parser::OpstructBodyContext * /*ctx*/) override { }
  virtual void exitOpstructBody(compilerv1Parser::OpstructBodyContext * /*ctx*/) override { }

  virtual void enterTypedefOpstruct(compilerv1Parser::TypedefOpstructContext * /*ctx*/) override { }
  virtual void exitTypedefOpstruct(compilerv1Parser::TypedefOpstructContext * /*ctx*/) override { }

  virtual void enterTypedefOpstructDslBody(compilerv1Parser::TypedefOpstructDslBodyContext * /*ctx*/) override { }
  virtual void exitTypedefOpstructDslBody(compilerv1Parser::TypedefOpstructDslBodyContext * /*ctx*/) override { }

  virtual void enterTypedefOpstructDslEntry(compilerv1Parser::TypedefOpstructDslEntryContext * /*ctx*/) override { }
  virtual void exitTypedefOpstructDslEntry(compilerv1Parser::TypedefOpstructDslEntryContext * /*ctx*/) override { }

  virtual void enterTypedefOpstructAsgEntry(compilerv1Parser::TypedefOpstructAsgEntryContext * /*ctx*/) override { }
  virtual void exitTypedefOpstructAsgEntry(compilerv1Parser::TypedefOpstructAsgEntryContext * /*ctx*/) override { }

  virtual void enterTypedefOpstructSrcEntry(compilerv1Parser::TypedefOpstructSrcEntryContext * /*ctx*/) override { }
  virtual void exitTypedefOpstructSrcEntry(compilerv1Parser::TypedefOpstructSrcEntryContext * /*ctx*/) override { }

  virtual void enterTypedefOpstructTemplateBody(compilerv1Parser::TypedefOpstructTemplateBodyContext * /*ctx*/) override { }
  virtual void exitTypedefOpstructTemplateBody(compilerv1Parser::TypedefOpstructTemplateBodyContext * /*ctx*/) override { }

  virtual void enterTypedefOpstructTemplateBodyItem(compilerv1Parser::TypedefOpstructTemplateBodyItemContext * /*ctx*/) override { }
  virtual void exitTypedefOpstructTemplateBodyItem(compilerv1Parser::TypedefOpstructTemplateBodyItemContext * /*ctx*/) override { }

  virtual void enterInterfaceDecl(compilerv1Parser::InterfaceDeclContext * /*ctx*/) override { }
  virtual void exitInterfaceDecl(compilerv1Parser::InterfaceDeclContext * /*ctx*/) override { }

  virtual void enterInheritanceClause(compilerv1Parser::InheritanceClauseContext * /*ctx*/) override { }
  virtual void exitInheritanceClause(compilerv1Parser::InheritanceClauseContext * /*ctx*/) override { }

  virtual void enterInheritedType(compilerv1Parser::InheritedTypeContext * /*ctx*/) override { }
  virtual void exitInheritedType(compilerv1Parser::InheritedTypeContext * /*ctx*/) override { }

  virtual void enterVirtualMethod(compilerv1Parser::VirtualMethodContext * /*ctx*/) override { }
  virtual void exitVirtualMethod(compilerv1Parser::VirtualMethodContext * /*ctx*/) override { }


  virtual void enterEveryRule(antlr4::ParserRuleContext * /*ctx*/) override { }
  virtual void exitEveryRule(antlr4::ParserRuleContext * /*ctx*/) override { }
  virtual void visitTerminal(antlr4::tree::TerminalNode * /*node*/) override { }
  virtual void visitErrorNode(antlr4::tree::ErrorNode * /*node*/) override { }

};

