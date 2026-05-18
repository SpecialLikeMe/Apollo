
// Generated from compilerv1.g4 by ANTLR 4.13.2

#pragma once


#include "antlr4-runtime.h"




class  compilerv1Parser : public antlr4::Parser {
public:
  enum {
    T__0 = 1, T__1 = 2, T__2 = 3, T__3 = 4, T__4 = 5, T__5 = 6, T__6 = 7, 
    T__7 = 8, T__8 = 9, T__9 = 10, T__10 = 11, T__11 = 12, T__12 = 13, T__13 = 14, 
    T__14 = 15, T__15 = 16, T__16 = 17, T__17 = 18, T__18 = 19, T__19 = 20, 
    T__20 = 21, T__21 = 22, T__22 = 23, T__23 = 24, T__24 = 25, T__25 = 26, 
    T__26 = 27, T__27 = 28, T__28 = 29, T__29 = 30, T__30 = 31, T__31 = 32, 
    T__32 = 33, T__33 = 34, T__34 = 35, T__35 = 36, T__36 = 37, T__37 = 38, 
    T__38 = 39, T__39 = 40, T__40 = 41, T__41 = 42, T__42 = 43, T__43 = 44, 
    T__44 = 45, T__45 = 46, T__46 = 47, T__47 = 48, T__48 = 49, T__49 = 50, 
    T__50 = 51, T__51 = 52, T__52 = 53, T__53 = 54, T__54 = 55, T__55 = 56, 
    T__56 = 57, T__57 = 58, T__58 = 59, T__59 = 60, T__60 = 61, T__61 = 62, 
    T__62 = 63, T__63 = 64, T__64 = 65, T__65 = 66, T__66 = 67, T__67 = 68, 
    T__68 = 69, T__69 = 70, T__70 = 71, IF = 72, ELSE = 73, WHILE = 74, 
    FOR = 75, IN = 76, SWITCH = 77, CASE = 78, DEFAULT = 79, TRY = 80, CATCH = 81, 
    TERMINALEXCEPTION = 82, AUTOCATCH = 83, SUCCESS = 84, TYPE = 85, FTYPE = 86, 
    CLSTYPE = 87, STATIC = 88, VIRTUAL = 89, INSTANCE_MODE = 90, INS = 91, 
    STAT = 92, ATO = 93, SRC = 94, ASG = 95, LTO = 96, MNT = 97, INDEF = 98, 
    ANNOT_OVERRIDE = 99, INLINE = 100, ASYNC = 101, INLINE_SEP = 102, OVERRIDE = 103, 
    SYSCALL = 104, ALL = 105, LET = 106, APND = 107, CONST = 108, NCONST = 109, 
    THREADMODE = 110, JOIN = 111, GLOBAL = 112, BRIDGE = 113, UNSAFE = 114, 
    BYPASS = 115, AUTOFMTDECLARE = 116, INDUCT = 117, RELEASE = 118, COMMUNAL = 119, 
    CMGLOBAL = 120, STDEF = 121, OPSTRUCT = 122, MEMSTRUCT = 123, SCHEDULE = 124, 
    MANDATORY = 125, DETATCH = 126, DETACH = 127, SCHVOID = 128, GC_NAME = 129, 
    GCMODE_NAME = 130, BORROW_CHECKER_NAME = 131, BORROW_CHECK_NAME = 132, 
    ID = 133, NATIVE = 134, INCLUSIVE = 135, LBRACE = 136, RBRACE = 137, 
    STRING = 138, TEMPLATE_STRING = 139, INT = 140, WS = 141, COMMENT = 142
  };

  enum {
    RuleProgram = 0, RuleStdimport = 1, RuleDirective = 2, RuleGcDirective = 3, 
    RuleBorrowCheckerDirective = 4, RuleRuntimeDirective = 5, RuleSettingDirective = 6, 
    RuleSettingValue = 7, RuleImportStmt = 8, RuleInstance = 9, RuleInstancepush = 10, 
    RuleMemberaccess = 11, RuleAccessBase = 12, RuleInstanceValue = 13, 
    RuleAllocatorUseSuffix = 14, RuleImportPath = 15, RuleHeaderPath = 16, 
    RuleHeaderPart = 17, RuleHeaderPartAtom = 18, RuleFunction = 19, RuleMethod = 20, 
    RuleField = 21, RuleParams = 22, RuleParam = 23, RuleBorrowExpr = 24, 
    RuleBlock = 25, RuleClassBody = 26, RuleTemplateDecl = 27, RuleTemplateParams = 28, 
    RuleInlineForeignBlock = 29, RuleStructBody = 30, RuleScheduleDecl = 31, 
    RuleScheduleMember = 32, RuleMandatoryScheduleMember = 33, RuleClassMember = 34, 
    RuleStructMember = 35, RulePrint = 36, RuleNativemode = 37, RuleAsyncCall = 38, 
    RuleSyscallStmt = 39, RuleGlobalInit = 40, RuleMalloc = 41, RuleMntDecl = 42, 
    RuleDelalc = 43, RuleFree = 44, RulePlcnew = 45, RulePlcnewType = 46, 
    RulePointer = 47, RuleInclude = 48, RuleReturnType = 49, RuleTypeRef = 50, 
    RuleThread = 51, RuleTypeAtom = 52, RuleTypeModifier = 53, RuleGenericType = 54, 
    RuleFunctionType = 55, RuleFunctionTypeArgs = 56, RuleMacro = 57, RuleMacroQualifier = 58, 
    RuleStdinStmt = 59, RuleStdinValue = 60, RuleLambda = 61, RuleLambdaDefinition = 62, 
    RuleLambdaLiteral = 63, RuleSrcDecl = 64, RuleCscope = 65, RuleUnsafeBlock = 66, 
    RuleBypassBlock = 67, RuleAutofmtdeclareScope = 68, RuleBridgeInit = 69, 
    RuleInductStmt = 70, RuleReleaseStmt = 71, RuleAttributeBlock = 72, 
    RuleAttributeEntry = 73, RuleAttributeArgs = 74, RuleAttributeValue = 75, 
    RuleUnsafeLineStmt = 76, RuleUnsafeLinePayload = 77, RuleStatement = 78, 
    RuleTypedefOpstructSession = 79, RuleTypedefOpstructCreateStmt = 80, 
    RuleTypedefOpstructPhraseStmt = 81, RuleTypedefOpstructCommand = 82, 
    RuleTypedefOpstructCapture = 83, RuleTypedefOpstructWord = 84, RuleRdwindowStmt = 85, 
    RuleEventHandlerStmt = 86, RuleSchedulerStartStmt = 87, RuleSchedulerStartMode = 88, 
    RuleSchedulerInsertStmt = 89, RuleSchedulerVoidStmt = 90, RuleIfStatement = 91, 
    RuleWhileStatement = 92, RuleForStatement = 93, RuleForInStatement = 94, 
    RuleSwitchStatement = 95, RuleSwitchCase = 96, RuleSwitchDefault = 97, 
    RuleTryCatchStatement = 98, RuleAutocatchStatement = 99, RuleAssignment = 100, 
    RuleAssignmentCore = 101, RuleAssignTarget = 102, RuleAccessKey = 103, 
    RuleInit = 104, RuleLtoInit = 105, RuleLtoTypesetStmt = 106, RuleEasyInit = 107, 
    RuleInitCore = 108, RuleForInit = 109, RuleForUpdate = 110, RuleAssertStmt = 111, 
    RuleExpression = 112, RuleOrExpr = 113, RuleAndExpr = 114, RuleBitwiseOrExpr = 115, 
    RuleBitwiseXorExpr = 116, RuleBitwiseAndExpr = 117, RuleEqualityExpr = 118, 
    RuleShiftExpr = 119, RuleRightShiftOperator = 120, RuleRelationalExpr = 121, 
    RuleAddExpr = 122, RuleMultExpr = 123, RulePrimary = 124, RuleTemplateString = 125, 
    RuleCastExpr = 126, RuleCastType = 127, RulePlacementNewExpr = 128, 
    RuleIndexedAccess = 129, RuleCompositeLiteral = 130, RuleBraceInitializer = 131, 
    RuleBraceInitializerElement = 132, RuleFunctionCall = 133, RuleArgs = 134, 
    RuleReturnStmt = 135, RuleCommunalQualifier = 136, RuleClass = 137, 
    RuleStruct = 138, RuleMemstruct = 139, RuleTypedefStruct = 140, RuleOpstruct = 141, 
    RuleOpstructBody = 142, RuleTypedefOpstruct = 143, RuleTypedefOpstructDslBody = 144, 
    RuleTypedefOpstructDslEntry = 145, RuleTypedefOpstructAsgEntry = 146, 
    RuleTypedefOpstructSrcEntry = 147, RuleTypedefOpstructTemplateBody = 148, 
    RuleTypedefOpstructTemplateBodyItem = 149, RuleInterfaceDecl = 150, 
    RuleInheritanceClause = 151, RuleInheritedType = 152, RuleVirtualMethod = 153
  };

  explicit compilerv1Parser(antlr4::TokenStream *input);

  compilerv1Parser(antlr4::TokenStream *input, const antlr4::atn::ParserATNSimulatorOptions &options);

  ~compilerv1Parser() override;

  std::string getGrammarFileName() const override;

  const antlr4::atn::ATN& getATN() const override;

  const std::vector<std::string>& getRuleNames() const override;

  const antlr4::dfa::Vocabulary& getVocabulary() const override;

  antlr4::atn::SerializedATNView getSerializedATN() const override;


  class ProgramContext;
  class StdimportContext;
  class DirectiveContext;
  class GcDirectiveContext;
  class BorrowCheckerDirectiveContext;
  class RuntimeDirectiveContext;
  class SettingDirectiveContext;
  class SettingValueContext;
  class ImportStmtContext;
  class InstanceContext;
  class InstancepushContext;
  class MemberaccessContext;
  class AccessBaseContext;
  class InstanceValueContext;
  class AllocatorUseSuffixContext;
  class ImportPathContext;
  class HeaderPathContext;
  class HeaderPartContext;
  class HeaderPartAtomContext;
  class FunctionContext;
  class MethodContext;
  class FieldContext;
  class ParamsContext;
  class ParamContext;
  class BorrowExprContext;
  class BlockContext;
  class ClassBodyContext;
  class TemplateDeclContext;
  class TemplateParamsContext;
  class InlineForeignBlockContext;
  class StructBodyContext;
  class ScheduleDeclContext;
  class ScheduleMemberContext;
  class MandatoryScheduleMemberContext;
  class ClassMemberContext;
  class StructMemberContext;
  class PrintContext;
  class NativemodeContext;
  class AsyncCallContext;
  class SyscallStmtContext;
  class GlobalInitContext;
  class MallocContext;
  class MntDeclContext;
  class DelalcContext;
  class FreeContext;
  class PlcnewContext;
  class PlcnewTypeContext;
  class PointerContext;
  class IncludeContext;
  class ReturnTypeContext;
  class TypeRefContext;
  class ThreadContext;
  class TypeAtomContext;
  class TypeModifierContext;
  class GenericTypeContext;
  class FunctionTypeContext;
  class FunctionTypeArgsContext;
  class MacroContext;
  class MacroQualifierContext;
  class StdinStmtContext;
  class StdinValueContext;
  class LambdaContext;
  class LambdaDefinitionContext;
  class LambdaLiteralContext;
  class SrcDeclContext;
  class CscopeContext;
  class UnsafeBlockContext;
  class BypassBlockContext;
  class AutofmtdeclareScopeContext;
  class BridgeInitContext;
  class InductStmtContext;
  class ReleaseStmtContext;
  class AttributeBlockContext;
  class AttributeEntryContext;
  class AttributeArgsContext;
  class AttributeValueContext;
  class UnsafeLineStmtContext;
  class UnsafeLinePayloadContext;
  class StatementContext;
  class TypedefOpstructSessionContext;
  class TypedefOpstructCreateStmtContext;
  class TypedefOpstructPhraseStmtContext;
  class TypedefOpstructCommandContext;
  class TypedefOpstructCaptureContext;
  class TypedefOpstructWordContext;
  class RdwindowStmtContext;
  class EventHandlerStmtContext;
  class SchedulerStartStmtContext;
  class SchedulerStartModeContext;
  class SchedulerInsertStmtContext;
  class SchedulerVoidStmtContext;
  class IfStatementContext;
  class WhileStatementContext;
  class ForStatementContext;
  class ForInStatementContext;
  class SwitchStatementContext;
  class SwitchCaseContext;
  class SwitchDefaultContext;
  class TryCatchStatementContext;
  class AutocatchStatementContext;
  class AssignmentContext;
  class AssignmentCoreContext;
  class AssignTargetContext;
  class AccessKeyContext;
  class InitContext;
  class LtoInitContext;
  class LtoTypesetStmtContext;
  class EasyInitContext;
  class InitCoreContext;
  class ForInitContext;
  class ForUpdateContext;
  class AssertStmtContext;
  class ExpressionContext;
  class OrExprContext;
  class AndExprContext;
  class BitwiseOrExprContext;
  class BitwiseXorExprContext;
  class BitwiseAndExprContext;
  class EqualityExprContext;
  class ShiftExprContext;
  class RightShiftOperatorContext;
  class RelationalExprContext;
  class AddExprContext;
  class MultExprContext;
  class PrimaryContext;
  class TemplateStringContext;
  class CastExprContext;
  class CastTypeContext;
  class PlacementNewExprContext;
  class IndexedAccessContext;
  class CompositeLiteralContext;
  class BraceInitializerContext;
  class BraceInitializerElementContext;
  class FunctionCallContext;
  class ArgsContext;
  class ReturnStmtContext;
  class CommunalQualifierContext;
  class ClassContext;
  class StructContext;
  class MemstructContext;
  class TypedefStructContext;
  class OpstructContext;
  class OpstructBodyContext;
  class TypedefOpstructContext;
  class TypedefOpstructDslBodyContext;
  class TypedefOpstructDslEntryContext;
  class TypedefOpstructAsgEntryContext;
  class TypedefOpstructSrcEntryContext;
  class TypedefOpstructTemplateBodyContext;
  class TypedefOpstructTemplateBodyItemContext;
  class InterfaceDeclContext;
  class InheritanceClauseContext;
  class InheritedTypeContext;
  class VirtualMethodContext; 

  class  ProgramContext : public antlr4::ParserRuleContext {
  public:
    ProgramContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *EOF();
    std::vector<StdimportContext *> stdimport();
    StdimportContext* stdimport(size_t i);
    std::vector<DirectiveContext *> directive();
    DirectiveContext* directive(size_t i);
    std::vector<ImportStmtContext *> importStmt();
    ImportStmtContext* importStmt(size_t i);
    std::vector<IncludeContext *> include();
    IncludeContext* include(size_t i);
    std::vector<FunctionContext *> function();
    FunctionContext* function(size_t i);
    std::vector<MacroContext *> macro();
    MacroContext* macro(size_t i);
    std::vector<TemplateDeclContext *> templateDecl();
    TemplateDeclContext* templateDecl(size_t i);
    std::vector<ClassContext *> class_();
    ClassContext* class_(size_t i);
    std::vector<StructContext *> struct_();
    StructContext* struct_(size_t i);
    std::vector<MemstructContext *> memstruct();
    MemstructContext* memstruct(size_t i);
    std::vector<ScheduleDeclContext *> scheduleDecl();
    ScheduleDeclContext* scheduleDecl(size_t i);
    std::vector<TypedefStructContext *> typedefStruct();
    TypedefStructContext* typedefStruct(size_t i);
    std::vector<OpstructContext *> opstruct();
    OpstructContext* opstruct(size_t i);
    std::vector<TypedefOpstructContext *> typedefOpstruct();
    TypedefOpstructContext* typedefOpstruct(size_t i);
    std::vector<InterfaceDeclContext *> interfaceDecl();
    InterfaceDeclContext* interfaceDecl(size_t i);
    std::vector<RdwindowStmtContext *> rdwindowStmt();
    RdwindowStmtContext* rdwindowStmt(size_t i);
    std::vector<EventHandlerStmtContext *> eventHandlerStmt();
    EventHandlerStmtContext* eventHandlerStmt(size_t i);
    std::vector<GlobalInitContext *> globalInit();
    GlobalInitContext* globalInit(size_t i);
    std::vector<InitContext *> init();
    InitContext* init(size_t i);
    std::vector<LtoInitContext *> ltoInit();
    LtoInitContext* ltoInit(size_t i);
    std::vector<EasyInitContext *> easyInit();
    EasyInitContext* easyInit(size_t i);
    std::vector<LambdaContext *> lambda();
    LambdaContext* lambda(size_t i);
    std::vector<SrcDeclContext *> srcDecl();
    SrcDeclContext* srcDecl(size_t i);
    std::vector<InstanceContext *> instance();
    InstanceContext* instance(size_t i);
    std::vector<InstancepushContext *> instancepush();
    InstancepushContext* instancepush(size_t i);
    std::vector<MemberaccessContext *> memberaccess();
    MemberaccessContext* memberaccess(size_t i);
    std::vector<NativemodeContext *> nativemode();
    NativemodeContext* nativemode(size_t i);
    std::vector<InlineForeignBlockContext *> inlineForeignBlock();
    InlineForeignBlockContext* inlineForeignBlock(size_t i);
    std::vector<AsyncCallContext *> asyncCall();
    AsyncCallContext* asyncCall(size_t i);
    std::vector<SyscallStmtContext *> syscallStmt();
    SyscallStmtContext* syscallStmt(size_t i);
    std::vector<MallocContext *> malloc();
    MallocContext* malloc(size_t i);
    std::vector<MntDeclContext *> mntDecl();
    MntDeclContext* mntDecl(size_t i);
    std::vector<DelalcContext *> delalc();
    DelalcContext* delalc(size_t i);
    std::vector<FreeContext *> free();
    FreeContext* free(size_t i);
    std::vector<PlcnewContext *> plcnew();
    PlcnewContext* plcnew(size_t i);
    std::vector<UnsafeBlockContext *> unsafeBlock();
    UnsafeBlockContext* unsafeBlock(size_t i);
    std::vector<BypassBlockContext *> bypassBlock();
    BypassBlockContext* bypassBlock(size_t i);
    std::vector<AutofmtdeclareScopeContext *> autofmtdeclareScope();
    AutofmtdeclareScopeContext* autofmtdeclareScope(size_t i);
    std::vector<InductStmtContext *> inductStmt();
    InductStmtContext* inductStmt(size_t i);
    std::vector<ReleaseStmtContext *> releaseStmt();
    ReleaseStmtContext* releaseStmt(size_t i);
    std::vector<SchedulerStartStmtContext *> schedulerStartStmt();
    SchedulerStartStmtContext* schedulerStartStmt(size_t i);
    std::vector<SchedulerInsertStmtContext *> schedulerInsertStmt();
    SchedulerInsertStmtContext* schedulerInsertStmt(size_t i);
    std::vector<SchedulerVoidStmtContext *> schedulerVoidStmt();
    SchedulerVoidStmtContext* schedulerVoidStmt(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  ProgramContext* program();

  class  StdimportContext : public antlr4::ParserRuleContext {
  public:
    StdimportContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *ID();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  StdimportContext* stdimport();

  class  DirectiveContext : public antlr4::ParserRuleContext {
  public:
    DirectiveContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    GcDirectiveContext *gcDirective();
    BorrowCheckerDirectiveContext *borrowCheckerDirective();
    RuntimeDirectiveContext *runtimeDirective();
    SettingDirectiveContext *settingDirective();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  DirectiveContext* directive();

  class  GcDirectiveContext : public antlr4::ParserRuleContext {
  public:
    GcDirectiveContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *ID();
    antlr4::tree::TerminalNode *GC_NAME();
    antlr4::tree::TerminalNode *GCMODE_NAME();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  GcDirectiveContext* gcDirective();

  class  BorrowCheckerDirectiveContext : public antlr4::ParserRuleContext {
  public:
    BorrowCheckerDirectiveContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *ID();
    antlr4::tree::TerminalNode *BORROW_CHECKER_NAME();
    antlr4::tree::TerminalNode *BORROW_CHECK_NAME();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  BorrowCheckerDirectiveContext* borrowCheckerDirective();

  class  RuntimeDirectiveContext : public antlr4::ParserRuleContext {
  public:
    RuntimeDirectiveContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    std::vector<antlr4::tree::TerminalNode *> ID();
    antlr4::tree::TerminalNode* ID(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  RuntimeDirectiveContext* runtimeDirective();

  class  SettingDirectiveContext : public antlr4::ParserRuleContext {
  public:
    SettingDirectiveContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *ID();
    SettingValueContext *settingValue();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  SettingDirectiveContext* settingDirective();

  class  SettingValueContext : public antlr4::ParserRuleContext {
  public:
    SettingValueContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *ID();
    antlr4::tree::TerminalNode *INT();
    antlr4::tree::TerminalNode *STRING();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  SettingValueContext* settingValue();

  class  ImportStmtContext : public antlr4::ParserRuleContext {
  public:
    ImportStmtContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *STRING();
    HeaderPathContext *headerPath();
    ImportPathContext *importPath();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  ImportStmtContext* importStmt();

  class  InstanceContext : public antlr4::ParserRuleContext {
  public:
    InstanceContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *ID();
    antlr4::tree::TerminalNode *INS();
    antlr4::tree::TerminalNode *STAT();
    InstanceValueContext *instanceValue();
    antlr4::tree::TerminalNode *INSTANCE_MODE();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  InstanceContext* instance();

  class  InstancepushContext : public antlr4::ParserRuleContext {
  public:
    InstancepushContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *ID();
    InstanceValueContext *instanceValue();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  InstancepushContext* instancepush();

  class  MemberaccessContext : public antlr4::ParserRuleContext {
  public:
    MemberaccessContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    AccessBaseContext *accessBase();
    FunctionCallContext *functionCall();
    antlr4::tree::TerminalNode *ID();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  MemberaccessContext* memberaccess();

  class  AccessBaseContext : public antlr4::ParserRuleContext {
  public:
    AccessBaseContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *ID();
    antlr4::tree::TerminalNode *INDEF();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  AccessBaseContext* accessBase();

  class  InstanceValueContext : public antlr4::ParserRuleContext {
  public:
    InstanceValueContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *ID();
    antlr4::tree::TerminalNode *LBRACE();
    antlr4::tree::TerminalNode *RBRACE();
    ArgsContext *args();
    AllocatorUseSuffixContext *allocatorUseSuffix();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  InstanceValueContext* instanceValue();

  class  AllocatorUseSuffixContext : public antlr4::ParserRuleContext {
  public:
    AllocatorUseSuffixContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    ExpressionContext *expression();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  AllocatorUseSuffixContext* allocatorUseSuffix();

  class  ImportPathContext : public antlr4::ParserRuleContext {
  public:
    ImportPathContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    std::vector<antlr4::tree::TerminalNode *> ID();
    antlr4::tree::TerminalNode* ID(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  ImportPathContext* importPath();

  class  HeaderPathContext : public antlr4::ParserRuleContext {
  public:
    HeaderPathContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    std::vector<HeaderPartContext *> headerPart();
    HeaderPartContext* headerPart(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  HeaderPathContext* headerPath();

  class  HeaderPartContext : public antlr4::ParserRuleContext {
  public:
    HeaderPartContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    std::vector<HeaderPartAtomContext *> headerPartAtom();
    HeaderPartAtomContext* headerPartAtom(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  HeaderPartContext* headerPart();

  class  HeaderPartAtomContext : public antlr4::ParserRuleContext {
  public:
    HeaderPartAtomContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *ID();
    antlr4::tree::TerminalNode *GC_NAME();
    antlr4::tree::TerminalNode *BORROW_CHECKER_NAME();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  HeaderPartAtomContext* headerPartAtom();

  class  FunctionContext : public antlr4::ParserRuleContext {
  public:
    FunctionContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    ReturnTypeContext *returnType();
    antlr4::tree::TerminalNode *ID();
    BlockContext *block();
    ParamsContext *params();
    AttributeBlockContext *attributeBlock();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  FunctionContext* function();

  class  MethodContext : public antlr4::ParserRuleContext {
  public:
    MethodContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    ReturnTypeContext *returnType();
    antlr4::tree::TerminalNode *ID();
    BlockContext *block();
    antlr4::tree::TerminalNode *ANNOT_OVERRIDE();
    antlr4::tree::TerminalNode *CLSTYPE();
    antlr4::tree::TerminalNode *STATIC();
    antlr4::tree::TerminalNode *VIRTUAL();
    ParamsContext *params();
    AttributeBlockContext *attributeBlock();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  MethodContext* method();

  class  FieldContext : public antlr4::ParserRuleContext {
  public:
    FieldContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    TypeRefContext *typeRef();
    antlr4::tree::TerminalNode *ID();
    antlr4::tree::TerminalNode *CLSTYPE();
    AttributeBlockContext *attributeBlock();
    antlr4::tree::TerminalNode *CONST();
    antlr4::tree::TerminalNode *NCONST();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  FieldContext* field();

  class  ParamsContext : public antlr4::ParserRuleContext {
  public:
    ParamsContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    std::vector<ParamContext *> param();
    ParamContext* param(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  ParamsContext* params();

  class  ParamContext : public antlr4::ParserRuleContext {
  public:
    ParamContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *ID();
    TypeRefContext *typeRef();
    antlr4::tree::TerminalNode *CONST();
    antlr4::tree::TerminalNode *NCONST();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  ParamContext* param();

  class  BorrowExprContext : public antlr4::ParserRuleContext {
  public:
    BorrowExprContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *ID();
    antlr4::tree::TerminalNode *NCONST();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  BorrowExprContext* borrowExpr();

  class  BlockContext : public antlr4::ParserRuleContext {
  public:
    BlockContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *LBRACE();
    antlr4::tree::TerminalNode *RBRACE();
    std::vector<StatementContext *> statement();
    StatementContext* statement(size_t i);
    std::vector<ReturnStmtContext *> returnStmt();
    ReturnStmtContext* returnStmt(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  BlockContext* block();

  class  ClassBodyContext : public antlr4::ParserRuleContext {
  public:
    ClassBodyContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *LBRACE();
    antlr4::tree::TerminalNode *RBRACE();
    std::vector<ClassMemberContext *> classMember();
    ClassMemberContext* classMember(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  ClassBodyContext* classBody();

  class  TemplateDeclContext : public antlr4::ParserRuleContext {
  public:
    TemplateDeclContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *ID();
    TemplateParamsContext *templateParams();
    ClassBodyContext *classBody();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  TemplateDeclContext* templateDecl();

  class  TemplateParamsContext : public antlr4::ParserRuleContext {
  public:
    TemplateParamsContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    std::vector<antlr4::tree::TerminalNode *> ID();
    antlr4::tree::TerminalNode* ID(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  TemplateParamsContext* templateParams();

  class  InlineForeignBlockContext : public antlr4::ParserRuleContext {
  public:
    InlineForeignBlockContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *INLINE();
    antlr4::tree::TerminalNode *INLINE_SEP();
    antlr4::tree::TerminalNode *INCLUSIVE();
    antlr4::tree::TerminalNode *NATIVE();
    antlr4::tree::TerminalNode *ID();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  InlineForeignBlockContext* inlineForeignBlock();

  class  StructBodyContext : public antlr4::ParserRuleContext {
  public:
    StructBodyContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *LBRACE();
    antlr4::tree::TerminalNode *RBRACE();
    std::vector<StructMemberContext *> structMember();
    StructMemberContext* structMember(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  StructBodyContext* structBody();

  class  ScheduleDeclContext : public antlr4::ParserRuleContext {
  public:
    ScheduleDeclContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *SCHEDULE();
    antlr4::tree::TerminalNode *ID();
    antlr4::tree::TerminalNode *LBRACE();
    antlr4::tree::TerminalNode *RBRACE();
    std::vector<ScheduleMemberContext *> scheduleMember();
    ScheduleMemberContext* scheduleMember(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  ScheduleDeclContext* scheduleDecl();

  class  ScheduleMemberContext : public antlr4::ParserRuleContext {
  public:
    ScheduleMemberContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    MandatoryScheduleMemberContext *mandatoryScheduleMember();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  ScheduleMemberContext* scheduleMember();

  class  MandatoryScheduleMemberContext : public antlr4::ParserRuleContext {
  public:
    MandatoryScheduleMemberContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *MANDATORY();
    antlr4::tree::TerminalNode *ID();
    BlockContext *block();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  MandatoryScheduleMemberContext* mandatoryScheduleMember();

  class  ClassMemberContext : public antlr4::ParserRuleContext {
  public:
    ClassMemberContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    MethodContext *method();
    FieldContext *field();
    TemplateDeclContext *templateDecl();
    ClassContext *class_();
    StructContext *struct_();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  ClassMemberContext* classMember();

  class  StructMemberContext : public antlr4::ParserRuleContext {
  public:
    StructMemberContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    MethodContext *method();
    FieldContext *field();
    TemplateDeclContext *templateDecl();
    ClassContext *class_();
    StructContext *struct_();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  StructMemberContext* structMember();

  class  PrintContext : public antlr4::ParserRuleContext {
  public:
    PrintContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    ExpressionContext *expression();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  PrintContext* print();

  class  NativemodeContext : public antlr4::ParserRuleContext {
  public:
    NativemodeContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *ASYNC();
    antlr4::tree::TerminalNode *INCLUSIVE();
    antlr4::tree::TerminalNode *NATIVE();
    antlr4::tree::TerminalNode *ID();
    antlr4::tree::TerminalNode *OVERRIDE();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  NativemodeContext* nativemode();

  class  AsyncCallContext : public antlr4::ParserRuleContext {
  public:
    AsyncCallContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *ASYNC();
    FunctionCallContext *functionCall();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  AsyncCallContext* asyncCall();

  class  SyscallStmtContext : public antlr4::ParserRuleContext {
  public:
    SyscallStmtContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *SYSCALL();
    antlr4::tree::TerminalNode *ALL();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  SyscallStmtContext* syscallStmt();

  class  GlobalInitContext : public antlr4::ParserRuleContext {
  public:
    GlobalInitContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *GLOBAL();
    InitContext *init();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  GlobalInitContext* globalInit();

  class  MallocContext : public antlr4::ParserRuleContext {
  public:
    MallocContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *ID();
    TypeRefContext *typeRef();
    ExpressionContext *expression();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  MallocContext* malloc();

  class  MntDeclContext : public antlr4::ParserRuleContext {
  public:
    MntDeclContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *MNT();
    TypeRefContext *typeRef();
    antlr4::tree::TerminalNode *ID();
    ExpressionContext *expression();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  MntDeclContext* mntDecl();

  class  DelalcContext : public antlr4::ParserRuleContext {
  public:
    DelalcContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *ID();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  DelalcContext* delalc();

  class  FreeContext : public antlr4::ParserRuleContext {
  public:
    FreeContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *ID();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  FreeContext* free();

  class  PlcnewContext : public antlr4::ParserRuleContext {
  public:
    PlcnewContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    std::vector<PlcnewTypeContext *> plcnewType();
    PlcnewTypeContext* plcnewType(size_t i);
    antlr4::tree::TerminalNode *ID();
    TypeRefContext *typeRef();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  PlcnewContext* plcnew();

  class  PlcnewTypeContext : public antlr4::ParserRuleContext {
  public:
    PlcnewTypeContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    TypeRefContext *typeRef();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  PlcnewTypeContext* plcnewType();

  class  PointerContext : public antlr4::ParserRuleContext {
  public:
    PointerContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    TypeRefContext *typeRef();
    std::vector<antlr4::tree::TerminalNode *> ID();
    antlr4::tree::TerminalNode* ID(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  PointerContext* pointer();

  class  IncludeContext : public antlr4::ParserRuleContext {
  public:
    IncludeContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *LBRACE();
    ImportPathContext *importPath();
    antlr4::tree::TerminalNode *RBRACE();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  IncludeContext* include();

  class  ReturnTypeContext : public antlr4::ParserRuleContext {
  public:
    ReturnTypeContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    TypeRefContext *typeRef();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  ReturnTypeContext* returnType();

  class  TypeRefContext : public antlr4::ParserRuleContext {
  public:
    TypeRefContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    TypeAtomContext *typeAtom();
    std::vector<TypeModifierContext *> typeModifier();
    TypeModifierContext* typeModifier(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  TypeRefContext* typeRef();

  class  ThreadContext : public antlr4::ParserRuleContext {
  public:
    ThreadContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *ID();
    FunctionCallContext *functionCall();
    antlr4::tree::TerminalNode *THREADMODE();
    antlr4::tree::TerminalNode *JOIN();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  ThreadContext* thread();

  class  TypeAtomContext : public antlr4::ParserRuleContext {
  public:
    TypeAtomContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    GenericTypeContext *genericType();
    FunctionTypeContext *functionType();
    antlr4::tree::TerminalNode *TYPE();
    antlr4::tree::TerminalNode *FTYPE();
    antlr4::tree::TerminalNode *ID();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  TypeAtomContext* typeAtom();

  class  TypeModifierContext : public antlr4::ParserRuleContext {
  public:
    TypeModifierContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  TypeModifierContext* typeModifier();

  class  GenericTypeContext : public antlr4::ParserRuleContext {
  public:
    GenericTypeContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *ID();
    std::vector<TypeRefContext *> typeRef();
    TypeRefContext* typeRef(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  GenericTypeContext* genericType();

  class  FunctionTypeContext : public antlr4::ParserRuleContext {
  public:
    FunctionTypeContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    ReturnTypeContext *returnType();
    FunctionTypeArgsContext *functionTypeArgs();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  FunctionTypeContext* functionType();

  class  FunctionTypeArgsContext : public antlr4::ParserRuleContext {
  public:
    FunctionTypeArgsContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    std::vector<TypeRefContext *> typeRef();
    TypeRefContext* typeRef(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  FunctionTypeArgsContext* functionTypeArgs();

  class  MacroContext : public antlr4::ParserRuleContext {
  public:
    MacroContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    MacroQualifierContext *macroQualifier();
    antlr4::tree::TerminalNode *ID();
    BlockContext *block();
    ParamsContext *params();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  MacroContext* macro();

  class  MacroQualifierContext : public antlr4::ParserRuleContext {
  public:
    MacroQualifierContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  MacroQualifierContext* macroQualifier();

  class  StdinStmtContext : public antlr4::ParserRuleContext {
  public:
    StdinStmtContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *ID();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  StdinStmtContext* stdinStmt();

  class  StdinValueContext : public antlr4::ParserRuleContext {
  public:
    StdinValueContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  StdinValueContext* stdinValue();

  class  LambdaContext : public antlr4::ParserRuleContext {
  public:
    LambdaContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    TypeRefContext *typeRef();
    antlr4::tree::TerminalNode *ID();
    LambdaDefinitionContext *lambdaDefinition();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  LambdaContext* lambda();

  class  LambdaDefinitionContext : public antlr4::ParserRuleContext {
  public:
    LambdaDefinitionContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    FunctionContext *function();
    LambdaLiteralContext *lambdaLiteral();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  LambdaDefinitionContext* lambdaDefinition();

  class  LambdaLiteralContext : public antlr4::ParserRuleContext {
  public:
    LambdaLiteralContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    BlockContext *block();
    ReturnTypeContext *returnType();
    ParamsContext *params();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  LambdaLiteralContext* lambdaLiteral();

  class  SrcDeclContext : public antlr4::ParserRuleContext {
  public:
    SrcDeclContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *SRC();
    antlr4::tree::TerminalNode *ID();
    BlockContext *block();
    ReturnTypeContext *returnType();
    antlr4::tree::TerminalNode *CONST();
    antlr4::tree::TerminalNode *NCONST();
    ParamsContext *params();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  SrcDeclContext* srcDecl();

  class  CscopeContext : public antlr4::ParserRuleContext {
  public:
    CscopeContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    BlockContext *block();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  CscopeContext* cscope();

  class  UnsafeBlockContext : public antlr4::ParserRuleContext {
  public:
    UnsafeBlockContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *UNSAFE();
    BlockContext *block();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  UnsafeBlockContext* unsafeBlock();

  class  BypassBlockContext : public antlr4::ParserRuleContext {
  public:
    BypassBlockContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *BYPASS();
    BlockContext *block();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  BypassBlockContext* bypassBlock();

  class  AutofmtdeclareScopeContext : public antlr4::ParserRuleContext {
  public:
    AutofmtdeclareScopeContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *AUTOFMTDECLARE();
    BlockContext *block();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  AutofmtdeclareScopeContext* autofmtdeclareScope();

  class  BridgeInitContext : public antlr4::ParserRuleContext {
  public:
    BridgeInitContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *BRIDGE();
    InitContext *init();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  BridgeInitContext* bridgeInit();

  class  InductStmtContext : public antlr4::ParserRuleContext {
  public:
    InductStmtContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *INDUCT();
    antlr4::tree::TerminalNode *ID();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  InductStmtContext* inductStmt();

  class  ReleaseStmtContext : public antlr4::ParserRuleContext {
  public:
    ReleaseStmtContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *RELEASE();
    antlr4::tree::TerminalNode *ID();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  ReleaseStmtContext* releaseStmt();

  class  AttributeBlockContext : public antlr4::ParserRuleContext {
  public:
    AttributeBlockContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *LBRACE();
    std::vector<AttributeEntryContext *> attributeEntry();
    AttributeEntryContext* attributeEntry(size_t i);
    antlr4::tree::TerminalNode *RBRACE();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  AttributeBlockContext* attributeBlock();

  class  AttributeEntryContext : public antlr4::ParserRuleContext {
  public:
    AttributeEntryContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *ID();
    AttributeArgsContext *attributeArgs();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  AttributeEntryContext* attributeEntry();

  class  AttributeArgsContext : public antlr4::ParserRuleContext {
  public:
    AttributeArgsContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    std::vector<AttributeValueContext *> attributeValue();
    AttributeValueContext* attributeValue(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  AttributeArgsContext* attributeArgs();

  class  AttributeValueContext : public antlr4::ParserRuleContext {
  public:
    AttributeValueContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *ID();
    antlr4::tree::TerminalNode *STRING();
    antlr4::tree::TerminalNode *INT();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  AttributeValueContext* attributeValue();

  class  UnsafeLineStmtContext : public antlr4::ParserRuleContext {
  public:
    UnsafeLineStmtContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    UnsafeLinePayloadContext *unsafeLinePayload();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  UnsafeLineStmtContext* unsafeLineStmt();

  class  UnsafeLinePayloadContext : public antlr4::ParserRuleContext {
  public:
    UnsafeLinePayloadContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    PointerContext *pointer();
    MallocContext *malloc();
    MntDeclContext *mntDecl();
    DelalcContext *delalc();
    FreeContext *free();
    PlcnewContext *plcnew();
    NativemodeContext *nativemode();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  UnsafeLinePayloadContext* unsafeLinePayload();

  class  StatementContext : public antlr4::ParserRuleContext {
  public:
    StatementContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    PointerContext *pointer();
    InitContext *init();
    TypedefOpstructSessionContext *typedefOpstructSession();
    TypedefOpstructCreateStmtContext *typedefOpstructCreateStmt();
    TypedefOpstructPhraseStmtContext *typedefOpstructPhraseStmt();
    RdwindowStmtContext *rdwindowStmt();
    EventHandlerStmtContext *eventHandlerStmt();
    UnsafeLineStmtContext *unsafeLineStmt();
    UnsafeBlockContext *unsafeBlock();
    BypassBlockContext *bypassBlock();
    AutofmtdeclareScopeContext *autofmtdeclareScope();
    MallocContext *malloc();
    MntDeclContext *mntDecl();
    DelalcContext *delalc();
    FreeContext *free();
    ThreadContext *thread();
    GlobalInitContext *globalInit();
    BridgeInitContext *bridgeInit();
    InductStmtContext *inductStmt();
    ReleaseStmtContext *releaseStmt();
    CscopeContext *cscope();
    PlcnewContext *plcnew();
    AssignmentContext *assignment();
    LambdaContext *lambda();
    FunctionCallContext *functionCall();
    MemberaccessContext *memberaccess();
    IfStatementContext *ifStatement();
    WhileStatementContext *whileStatement();
    ForStatementContext *forStatement();
    ForInStatementContext *forInStatement();
    SwitchStatementContext *switchStatement();
    TryCatchStatementContext *tryCatchStatement();
    AutocatchStatementContext *autocatchStatement();
    LtoInitContext *ltoInit();
    LtoTypesetStmtContext *ltoTypesetStmt();
    EasyInitContext *easyInit();
    InstanceContext *instance();
    InstancepushContext *instancepush();
    SrcDeclContext *srcDecl();
    SchedulerStartStmtContext *schedulerStartStmt();
    SchedulerInsertStmtContext *schedulerInsertStmt();
    SchedulerVoidStmtContext *schedulerVoidStmt();
    NativemodeContext *nativemode();
    InlineForeignBlockContext *inlineForeignBlock();
    AsyncCallContext *asyncCall();
    SyscallStmtContext *syscallStmt();
    TemplateDeclContext *templateDecl();
    ClassContext *class_();
    StructContext *struct_();
    InterfaceDeclContext *interfaceDecl();
    PrintContext *print();
    StdinStmtContext *stdinStmt();
    AssertStmtContext *assertStmt();
    BlockContext *block();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  StatementContext* statement();

  class  TypedefOpstructSessionContext : public antlr4::ParserRuleContext {
  public:
    TypedefOpstructSessionContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    std::vector<antlr4::tree::TerminalNode *> ID();
    antlr4::tree::TerminalNode* ID(size_t i);
    std::vector<TypedefOpstructCommandContext *> typedefOpstructCommand();
    TypedefOpstructCommandContext* typedefOpstructCommand(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  TypedefOpstructSessionContext* typedefOpstructSession();

  class  TypedefOpstructCreateStmtContext : public antlr4::ParserRuleContext {
  public:
    TypedefOpstructCreateStmtContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    std::vector<TypedefOpstructWordContext *> typedefOpstructWord();
    TypedefOpstructWordContext* typedefOpstructWord(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  TypedefOpstructCreateStmtContext* typedefOpstructCreateStmt();

  class  TypedefOpstructPhraseStmtContext : public antlr4::ParserRuleContext {
  public:
    TypedefOpstructPhraseStmtContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    TypedefOpstructCaptureContext *typedefOpstructCapture();
    std::vector<TypedefOpstructWordContext *> typedefOpstructWord();
    TypedefOpstructWordContext* typedefOpstructWord(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  TypedefOpstructPhraseStmtContext* typedefOpstructPhraseStmt();

  class  TypedefOpstructCommandContext : public antlr4::ParserRuleContext {
  public:
    TypedefOpstructCommandContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    TypedefOpstructCaptureContext *typedefOpstructCapture();
    std::vector<TypedefOpstructWordContext *> typedefOpstructWord();
    TypedefOpstructWordContext* typedefOpstructWord(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  TypedefOpstructCommandContext* typedefOpstructCommand();

  class  TypedefOpstructCaptureContext : public antlr4::ParserRuleContext {
  public:
    TypedefOpstructCaptureContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    ExpressionContext *expression();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  TypedefOpstructCaptureContext* typedefOpstructCapture();

  class  TypedefOpstructWordContext : public antlr4::ParserRuleContext {
  public:
    TypedefOpstructWordContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *ID();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  TypedefOpstructWordContext* typedefOpstructWord();

  class  RdwindowStmtContext : public antlr4::ParserRuleContext {
  public:
    RdwindowStmtContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *ID();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  RdwindowStmtContext* rdwindowStmt();

  class  EventHandlerStmtContext : public antlr4::ParserRuleContext {
  public:
    EventHandlerStmtContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *ID();
    ExpressionContext *expression();
    BlockContext *block();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  EventHandlerStmtContext* eventHandlerStmt();

  class  SchedulerStartStmtContext : public antlr4::ParserRuleContext {
  public:
    SchedulerStartStmtContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    std::vector<antlr4::tree::TerminalNode *> ID();
    antlr4::tree::TerminalNode* ID(size_t i);
    SchedulerStartModeContext *schedulerStartMode();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  SchedulerStartStmtContext* schedulerStartStmt();

  class  SchedulerStartModeContext : public antlr4::ParserRuleContext {
  public:
    SchedulerStartModeContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *DETATCH();
    antlr4::tree::TerminalNode *DETACH();
    antlr4::tree::TerminalNode *JOIN();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  SchedulerStartModeContext* schedulerStartMode();

  class  SchedulerInsertStmtContext : public antlr4::ParserRuleContext {
  public:
    SchedulerInsertStmtContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    std::vector<antlr4::tree::TerminalNode *> ID();
    antlr4::tree::TerminalNode* ID(size_t i);
    antlr4::tree::TerminalNode *INS();
    ExpressionContext *expression();
    BlockContext *block();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  SchedulerInsertStmtContext* schedulerInsertStmt();

  class  SchedulerVoidStmtContext : public antlr4::ParserRuleContext {
  public:
    SchedulerVoidStmtContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *ID();
    antlr4::tree::TerminalNode *SCHVOID();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  SchedulerVoidStmtContext* schedulerVoidStmt();

  class  IfStatementContext : public antlr4::ParserRuleContext {
  public:
    IfStatementContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *IF();
    ExpressionContext *expression();
    std::vector<BlockContext *> block();
    BlockContext* block(size_t i);
    antlr4::tree::TerminalNode *ELSE();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  IfStatementContext* ifStatement();

  class  WhileStatementContext : public antlr4::ParserRuleContext {
  public:
    WhileStatementContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *WHILE();
    ExpressionContext *expression();
    BlockContext *block();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  WhileStatementContext* whileStatement();

  class  ForStatementContext : public antlr4::ParserRuleContext {
  public:
    ForStatementContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *FOR();
    BlockContext *block();
    ForInitContext *forInit();
    ExpressionContext *expression();
    ForUpdateContext *forUpdate();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  ForStatementContext* forStatement();

  class  ForInStatementContext : public antlr4::ParserRuleContext {
  public:
    ForInStatementContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *FOR();
    TypeRefContext *typeRef();
    antlr4::tree::TerminalNode *ID();
    antlr4::tree::TerminalNode *IN();
    ExpressionContext *expression();
    BlockContext *block();
    antlr4::tree::TerminalNode *CONST();
    antlr4::tree::TerminalNode *NCONST();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  ForInStatementContext* forInStatement();

  class  SwitchStatementContext : public antlr4::ParserRuleContext {
  public:
    SwitchStatementContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *SWITCH();
    ExpressionContext *expression();
    antlr4::tree::TerminalNode *LBRACE();
    antlr4::tree::TerminalNode *RBRACE();
    std::vector<SwitchCaseContext *> switchCase();
    SwitchCaseContext* switchCase(size_t i);
    SwitchDefaultContext *switchDefault();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  SwitchStatementContext* switchStatement();

  class  SwitchCaseContext : public antlr4::ParserRuleContext {
  public:
    SwitchCaseContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *CASE();
    ExpressionContext *expression();
    BlockContext *block();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  SwitchCaseContext* switchCase();

  class  SwitchDefaultContext : public antlr4::ParserRuleContext {
  public:
    SwitchDefaultContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *DEFAULT();
    BlockContext *block();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  SwitchDefaultContext* switchDefault();

  class  TryCatchStatementContext : public antlr4::ParserRuleContext {
  public:
    TryCatchStatementContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *TRY();
    std::vector<BlockContext *> block();
    BlockContext* block(size_t i);
    antlr4::tree::TerminalNode *CATCH();
    antlr4::tree::TerminalNode *TERMINALEXCEPTION();
    antlr4::tree::TerminalNode *ID();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  TryCatchStatementContext* tryCatchStatement();

  class  AutocatchStatementContext : public antlr4::ParserRuleContext {
  public:
    AutocatchStatementContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *AUTOCATCH();
    antlr4::tree::TerminalNode *ID();
    BlockContext *block();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  AutocatchStatementContext* autocatchStatement();

  class  AssignmentContext : public antlr4::ParserRuleContext {
  public:
    AssignmentContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    AssignmentCoreContext *assignmentCore();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  AssignmentContext* assignment();

  class  AssignmentCoreContext : public antlr4::ParserRuleContext {
  public:
    AssignmentCoreContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    AssignTargetContext *assignTarget();
    ExpressionContext *expression();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  AssignmentCoreContext* assignmentCore();

  class  AssignTargetContext : public antlr4::ParserRuleContext {
  public:
    AssignTargetContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *ID();
    std::vector<AccessKeyContext *> accessKey();
    AccessKeyContext* accessKey(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  AssignTargetContext* assignTarget();

  class  AccessKeyContext : public antlr4::ParserRuleContext {
  public:
    AccessKeyContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    ExpressionContext *expression();
    antlr4::tree::TerminalNode *APND();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  AccessKeyContext* accessKey();

  class  InitContext : public antlr4::ParserRuleContext {
  public:
    InitContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    InitCoreContext *initCore();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  InitContext* init();

  class  LtoInitContext : public antlr4::ParserRuleContext {
  public:
    LtoInitContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *LTO();
    antlr4::tree::TerminalNode *ID();
    ExpressionContext *expression();
    antlr4::tree::TerminalNode *CONST();
    antlr4::tree::TerminalNode *NCONST();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  LtoInitContext* ltoInit();

  class  LtoTypesetStmtContext : public antlr4::ParserRuleContext {
  public:
    LtoTypesetStmtContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *ID();
    TypeRefContext *typeRef();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  LtoTypesetStmtContext* ltoTypesetStmt();

  class  EasyInitContext : public antlr4::ParserRuleContext {
  public:
    EasyInitContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *ATO();
    antlr4::tree::TerminalNode *ID();
    ExpressionContext *expression();
    antlr4::tree::TerminalNode *CONST();
    antlr4::tree::TerminalNode *NCONST();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  EasyInitContext* easyInit();

  class  InitCoreContext : public antlr4::ParserRuleContext {
  public:
    InitCoreContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    TypeRefContext *typeRef();
    antlr4::tree::TerminalNode *ID();
    ExpressionContext *expression();
    antlr4::tree::TerminalNode *CONST();
    antlr4::tree::TerminalNode *NCONST();
    antlr4::tree::TerminalNode *LET();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  InitCoreContext* initCore();

  class  ForInitContext : public antlr4::ParserRuleContext {
  public:
    ForInitContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    InitCoreContext *initCore();
    AssignmentCoreContext *assignmentCore();
    ExpressionContext *expression();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  ForInitContext* forInit();

  class  ForUpdateContext : public antlr4::ParserRuleContext {
  public:
    ForUpdateContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    AssignmentCoreContext *assignmentCore();
    ExpressionContext *expression();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  ForUpdateContext* forUpdate();

  class  AssertStmtContext : public antlr4::ParserRuleContext {
  public:
    AssertStmtContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    ExpressionContext *expression();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  AssertStmtContext* assertStmt();

  class  ExpressionContext : public antlr4::ParserRuleContext {
  public:
    ExpressionContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    OrExprContext *orExpr();
    std::vector<ExpressionContext *> expression();
    ExpressionContext* expression(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  ExpressionContext* expression();

  class  OrExprContext : public antlr4::ParserRuleContext {
  public:
    OrExprContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    std::vector<AndExprContext *> andExpr();
    AndExprContext* andExpr(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  OrExprContext* orExpr();

  class  AndExprContext : public antlr4::ParserRuleContext {
  public:
    AndExprContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    std::vector<BitwiseOrExprContext *> bitwiseOrExpr();
    BitwiseOrExprContext* bitwiseOrExpr(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  AndExprContext* andExpr();

  class  BitwiseOrExprContext : public antlr4::ParserRuleContext {
  public:
    BitwiseOrExprContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    std::vector<BitwiseXorExprContext *> bitwiseXorExpr();
    BitwiseXorExprContext* bitwiseXorExpr(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  BitwiseOrExprContext* bitwiseOrExpr();

  class  BitwiseXorExprContext : public antlr4::ParserRuleContext {
  public:
    BitwiseXorExprContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    std::vector<BitwiseAndExprContext *> bitwiseAndExpr();
    BitwiseAndExprContext* bitwiseAndExpr(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  BitwiseXorExprContext* bitwiseXorExpr();

  class  BitwiseAndExprContext : public antlr4::ParserRuleContext {
  public:
    BitwiseAndExprContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    std::vector<EqualityExprContext *> equalityExpr();
    EqualityExprContext* equalityExpr(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  BitwiseAndExprContext* bitwiseAndExpr();

  class  EqualityExprContext : public antlr4::ParserRuleContext {
  public:
    EqualityExprContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    std::vector<ShiftExprContext *> shiftExpr();
    ShiftExprContext* shiftExpr(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  EqualityExprContext* equalityExpr();

  class  ShiftExprContext : public antlr4::ParserRuleContext {
  public:
    ShiftExprContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    std::vector<RelationalExprContext *> relationalExpr();
    RelationalExprContext* relationalExpr(size_t i);
    std::vector<RightShiftOperatorContext *> rightShiftOperator();
    RightShiftOperatorContext* rightShiftOperator(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  ShiftExprContext* shiftExpr();

  class  RightShiftOperatorContext : public antlr4::ParserRuleContext {
  public:
    RightShiftOperatorContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  RightShiftOperatorContext* rightShiftOperator();

  class  RelationalExprContext : public antlr4::ParserRuleContext {
  public:
    RelationalExprContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    std::vector<AddExprContext *> addExpr();
    AddExprContext* addExpr(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  RelationalExprContext* relationalExpr();

  class  AddExprContext : public antlr4::ParserRuleContext {
  public:
    AddExprContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    std::vector<MultExprContext *> multExpr();
    MultExprContext* multExpr(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  AddExprContext* addExpr();

  class  MultExprContext : public antlr4::ParserRuleContext {
  public:
    MultExprContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    std::vector<PrimaryContext *> primary();
    PrimaryContext* primary(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  MultExprContext* multExpr();

  class  PrimaryContext : public antlr4::ParserRuleContext {
  public:
    PrimaryContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *INT();
    antlr4::tree::TerminalNode *SUCCESS();
    antlr4::tree::TerminalNode *STRING();
    TemplateStringContext *templateString();
    StdinValueContext *stdinValue();
    CastExprContext *castExpr();
    PlacementNewExprContext *placementNewExpr();
    FunctionCallContext *functionCall();
    MemberaccessContext *memberaccess();
    IndexedAccessContext *indexedAccess();
    CompositeLiteralContext *compositeLiteral();
    BraceInitializerContext *braceInitializer();
    InstanceValueContext *instanceValue();
    BorrowExprContext *borrowExpr();
    antlr4::tree::TerminalNode *INDEF();
    antlr4::tree::TerminalNode *ID();
    ExpressionContext *expression();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  PrimaryContext* primary();

  class  TemplateStringContext : public antlr4::ParserRuleContext {
  public:
    TemplateStringContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *TEMPLATE_STRING();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  TemplateStringContext* templateString();

  class  CastExprContext : public antlr4::ParserRuleContext {
  public:
    CastExprContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    CastTypeContext *castType();
    PrimaryContext *primary();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  CastExprContext* castExpr();

  class  CastTypeContext : public antlr4::ParserRuleContext {
  public:
    CastTypeContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    TypeRefContext *typeRef();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  CastTypeContext* castType();

  class  PlacementNewExprContext : public antlr4::ParserRuleContext {
  public:
    PlacementNewExprContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    ExpressionContext *expression();
    TypeRefContext *typeRef();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  PlacementNewExprContext* placementNewExpr();

  class  IndexedAccessContext : public antlr4::ParserRuleContext {
  public:
    IndexedAccessContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *ID();
    std::vector<AccessKeyContext *> accessKey();
    AccessKeyContext* accessKey(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  IndexedAccessContext* indexedAccess();

  class  CompositeLiteralContext : public antlr4::ParserRuleContext {
  public:
    CompositeLiteralContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    std::vector<ExpressionContext *> expression();
    ExpressionContext* expression(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  CompositeLiteralContext* compositeLiteral();

  class  BraceInitializerContext : public antlr4::ParserRuleContext {
  public:
    BraceInitializerContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *LBRACE();
    antlr4::tree::TerminalNode *RBRACE();
    std::vector<BraceInitializerElementContext *> braceInitializerElement();
    BraceInitializerElementContext* braceInitializerElement(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  BraceInitializerContext* braceInitializer();

  class  BraceInitializerElementContext : public antlr4::ParserRuleContext {
  public:
    BraceInitializerElementContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *ID();
    ExpressionContext *expression();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  BraceInitializerElementContext* braceInitializerElement();

  class  FunctionCallContext : public antlr4::ParserRuleContext {
  public:
    FunctionCallContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *ID();
    ArgsContext *args();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  FunctionCallContext* functionCall();

  class  ArgsContext : public antlr4::ParserRuleContext {
  public:
    ArgsContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    std::vector<ExpressionContext *> expression();
    ExpressionContext* expression(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  ArgsContext* args();

  class  ReturnStmtContext : public antlr4::ParserRuleContext {
  public:
    ReturnStmtContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    ExpressionContext *expression();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  ReturnStmtContext* returnStmt();

  class  CommunalQualifierContext : public antlr4::ParserRuleContext {
  public:
    CommunalQualifierContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *COMMUNAL();
    antlr4::tree::TerminalNode *CMGLOBAL();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  CommunalQualifierContext* communalQualifier();

  class  ClassContext : public antlr4::ParserRuleContext {
  public:
    ClassContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *ID();
    ClassBodyContext *classBody();
    InheritanceClauseContext *inheritanceClause();
    AttributeBlockContext *attributeBlock();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  ClassContext* class_();

  class  StructContext : public antlr4::ParserRuleContext {
  public:
    StructContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *ID();
    StructBodyContext *structBody();
    CommunalQualifierContext *communalQualifier();
    InheritanceClauseContext *inheritanceClause();
    AttributeBlockContext *attributeBlock();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  StructContext* struct_();

  class  MemstructContext : public antlr4::ParserRuleContext {
  public:
    MemstructContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *MEMSTRUCT();
    antlr4::tree::TerminalNode *ID();
    StructBodyContext *structBody();
    CommunalQualifierContext *communalQualifier();
    InheritanceClauseContext *inheritanceClause();
    AttributeBlockContext *attributeBlock();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  MemstructContext* memstruct();

  class  TypedefStructContext : public antlr4::ParserRuleContext {
  public:
    TypedefStructContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    StructContext *struct_();
    antlr4::tree::TerminalNode *ID();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  TypedefStructContext* typedefStruct();

  class  OpstructContext : public antlr4::ParserRuleContext {
  public:
    OpstructContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *STDEF();
    antlr4::tree::TerminalNode *OPSTRUCT();
    antlr4::tree::TerminalNode *ID();
    OpstructBodyContext *opstructBody();
    AttributeBlockContext *attributeBlock();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  OpstructContext* opstruct();

  class  OpstructBodyContext : public antlr4::ParserRuleContext {
  public:
    OpstructBodyContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *LBRACE();
    antlr4::tree::TerminalNode *RBRACE();
    std::vector<FieldContext *> field();
    FieldContext* field(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  OpstructBodyContext* opstructBody();

  class  TypedefOpstructContext : public antlr4::ParserRuleContext {
  public:
    TypedefOpstructContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *OPSTRUCT();
    std::vector<antlr4::tree::TerminalNode *> ID();
    antlr4::tree::TerminalNode* ID(size_t i);
    TypedefOpstructDslBodyContext *typedefOpstructDslBody();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  TypedefOpstructContext* typedefOpstruct();

  class  TypedefOpstructDslBodyContext : public antlr4::ParserRuleContext {
  public:
    TypedefOpstructDslBodyContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *LBRACE();
    antlr4::tree::TerminalNode *RBRACE();
    std::vector<TypedefOpstructDslEntryContext *> typedefOpstructDslEntry();
    TypedefOpstructDslEntryContext* typedefOpstructDslEntry(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  TypedefOpstructDslBodyContext* typedefOpstructDslBody();

  class  TypedefOpstructDslEntryContext : public antlr4::ParserRuleContext {
  public:
    TypedefOpstructDslEntryContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    TypedefOpstructAsgEntryContext *typedefOpstructAsgEntry();
    TypedefOpstructSrcEntryContext *typedefOpstructSrcEntry();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  TypedefOpstructDslEntryContext* typedefOpstructDslEntry();

  class  TypedefOpstructAsgEntryContext : public antlr4::ParserRuleContext {
  public:
    TypedefOpstructAsgEntryContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *ASG();
    antlr4::tree::TerminalNode *STRING();
    BlockContext *block();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  TypedefOpstructAsgEntryContext* typedefOpstructAsgEntry();

  class  TypedefOpstructSrcEntryContext : public antlr4::ParserRuleContext {
  public:
    TypedefOpstructSrcEntryContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *SRC();
    antlr4::tree::TerminalNode *STRING();
    TypedefOpstructTemplateBodyContext *typedefOpstructTemplateBody();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  TypedefOpstructSrcEntryContext* typedefOpstructSrcEntry();

  class  TypedefOpstructTemplateBodyContext : public antlr4::ParserRuleContext {
  public:
    TypedefOpstructTemplateBodyContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *LBRACE();
    antlr4::tree::TerminalNode *RBRACE();
    std::vector<TypedefOpstructTemplateBodyItemContext *> typedefOpstructTemplateBodyItem();
    TypedefOpstructTemplateBodyItemContext* typedefOpstructTemplateBodyItem(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  TypedefOpstructTemplateBodyContext* typedefOpstructTemplateBody();

  class  TypedefOpstructTemplateBodyItemContext : public antlr4::ParserRuleContext {
  public:
    TypedefOpstructTemplateBodyItemContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    StatementContext *statement();
    ReturnStmtContext *returnStmt();
    antlr4::tree::TerminalNode *ID();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  TypedefOpstructTemplateBodyItemContext* typedefOpstructTemplateBodyItem();

  class  InterfaceDeclContext : public antlr4::ParserRuleContext {
  public:
    InterfaceDeclContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *ID();
    antlr4::tree::TerminalNode *LBRACE();
    antlr4::tree::TerminalNode *RBRACE();
    InheritanceClauseContext *inheritanceClause();
    AttributeBlockContext *attributeBlock();
    std::vector<VirtualMethodContext *> virtualMethod();
    VirtualMethodContext* virtualMethod(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  InterfaceDeclContext* interfaceDecl();

  class  InheritanceClauseContext : public antlr4::ParserRuleContext {
  public:
    InheritanceClauseContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    std::vector<InheritedTypeContext *> inheritedType();
    InheritedTypeContext* inheritedType(size_t i);

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  InheritanceClauseContext* inheritanceClause();

  class  InheritedTypeContext : public antlr4::ParserRuleContext {
  public:
    InheritedTypeContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    TypeRefContext *typeRef();
    antlr4::tree::TerminalNode *CLSTYPE();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  InheritedTypeContext* inheritedType();

  class  VirtualMethodContext : public antlr4::ParserRuleContext {
  public:
    VirtualMethodContext(antlr4::ParserRuleContext *parent, size_t invokingState);
    virtual size_t getRuleIndex() const override;
    antlr4::tree::TerminalNode *VIRTUAL();
    ReturnTypeContext *returnType();
    antlr4::tree::TerminalNode *ID();
    ParamsContext *params();

    virtual void enterRule(antlr4::tree::ParseTreeListener *listener) override;
    virtual void exitRule(antlr4::tree::ParseTreeListener *listener) override;

    virtual std::any accept(antlr4::tree::ParseTreeVisitor *visitor) override;
   
  };

  VirtualMethodContext* virtualMethod();


  // By default the static state used to implement the parser is lazily initialized during the first
  // call to the constructor. You can call this function if you wish to initialize the static state
  // ahead of time.
  static void initialize();

private:
};

