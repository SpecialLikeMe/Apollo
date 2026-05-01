// Generated from ./compilerv1.g4 by ANTLR 4.13.2
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link compilerv1Parser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface compilerv1Visitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#program}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitProgram(compilerv1Parser.ProgramContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#directive}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDirective(compilerv1Parser.DirectiveContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#gcDirective}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitGcDirective(compilerv1Parser.GcDirectiveContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#borrowCheckerDirective}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBorrowCheckerDirective(compilerv1Parser.BorrowCheckerDirectiveContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#phase3Directive}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPhase3Directive(compilerv1Parser.Phase3DirectiveContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#settingDirective}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSettingDirective(compilerv1Parser.SettingDirectiveContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#settingValue}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSettingValue(compilerv1Parser.SettingValueContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#importStmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitImportStmt(compilerv1Parser.ImportStmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#instance}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitInstance(compilerv1Parser.InstanceContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#instancepush}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitInstancepush(compilerv1Parser.InstancepushContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#memberaccess}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMemberaccess(compilerv1Parser.MemberaccessContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#accessBase}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAccessBase(compilerv1Parser.AccessBaseContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#instanceValue}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitInstanceValue(compilerv1Parser.InstanceValueContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#allocatorUseSuffix}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAllocatorUseSuffix(compilerv1Parser.AllocatorUseSuffixContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#importPath}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitImportPath(compilerv1Parser.ImportPathContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#headerPath}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitHeaderPath(compilerv1Parser.HeaderPathContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#headerPart}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitHeaderPart(compilerv1Parser.HeaderPartContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#headerPartAtom}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitHeaderPartAtom(compilerv1Parser.HeaderPartAtomContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#function}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFunction(compilerv1Parser.FunctionContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#method}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMethod(compilerv1Parser.MethodContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#field}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitField(compilerv1Parser.FieldContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#params}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitParams(compilerv1Parser.ParamsContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#param}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitParam(compilerv1Parser.ParamContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#borrowExpr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBorrowExpr(compilerv1Parser.BorrowExprContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#block}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBlock(compilerv1Parser.BlockContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#classBody}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitClassBody(compilerv1Parser.ClassBodyContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#templateDecl}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTemplateDecl(compilerv1Parser.TemplateDeclContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#templateParams}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTemplateParams(compilerv1Parser.TemplateParamsContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#dircpp}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDircpp(compilerv1Parser.DircppContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#structBody}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStructBody(compilerv1Parser.StructBodyContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#scheduleDecl}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitScheduleDecl(compilerv1Parser.ScheduleDeclContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#scheduleMember}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitScheduleMember(compilerv1Parser.ScheduleMemberContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#mandatoryScheduleMember}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMandatoryScheduleMember(compilerv1Parser.MandatoryScheduleMemberContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#classMember}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitClassMember(compilerv1Parser.ClassMemberContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#structMember}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStructMember(compilerv1Parser.StructMemberContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#print}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPrint(compilerv1Parser.PrintContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#nativemode}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNativemode(compilerv1Parser.NativemodeContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#asyncCall}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAsyncCall(compilerv1Parser.AsyncCallContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#syscallStmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSyscallStmt(compilerv1Parser.SyscallStmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#globalInit}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitGlobalInit(compilerv1Parser.GlobalInitContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#malloc}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMalloc(compilerv1Parser.MallocContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#mntDecl}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMntDecl(compilerv1Parser.MntDeclContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#delalc}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDelalc(compilerv1Parser.DelalcContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#free}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFree(compilerv1Parser.FreeContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#plcnew}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPlcnew(compilerv1Parser.PlcnewContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#plcnewType}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPlcnewType(compilerv1Parser.PlcnewTypeContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#pointer}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPointer(compilerv1Parser.PointerContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#include}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitInclude(compilerv1Parser.IncludeContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#returnType}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitReturnType(compilerv1Parser.ReturnTypeContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#typeRef}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTypeRef(compilerv1Parser.TypeRefContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#thread}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitThread(compilerv1Parser.ThreadContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#typeAtom}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTypeAtom(compilerv1Parser.TypeAtomContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#typeModifier}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTypeModifier(compilerv1Parser.TypeModifierContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#genericType}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitGenericType(compilerv1Parser.GenericTypeContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#functionType}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFunctionType(compilerv1Parser.FunctionTypeContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#functionTypeArgs}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFunctionTypeArgs(compilerv1Parser.FunctionTypeArgsContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#macro}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMacro(compilerv1Parser.MacroContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#macroQualifier}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMacroQualifier(compilerv1Parser.MacroQualifierContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#stdin}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStdin(compilerv1Parser.StdinContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#stdinExpr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStdinExpr(compilerv1Parser.StdinExprContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#lambda}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLambda(compilerv1Parser.LambdaContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#lambdaDefinition}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLambdaDefinition(compilerv1Parser.LambdaDefinitionContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#lambdaLiteral}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLambdaLiteral(compilerv1Parser.LambdaLiteralContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#srcDecl}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSrcDecl(compilerv1Parser.SrcDeclContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#cscope}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitCscope(compilerv1Parser.CscopeContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#unsafeBlock}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitUnsafeBlock(compilerv1Parser.UnsafeBlockContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#bypassBlock}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBypassBlock(compilerv1Parser.BypassBlockContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#autofmtdeclareScope}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAutofmtdeclareScope(compilerv1Parser.AutofmtdeclareScopeContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#bridgeInit}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBridgeInit(compilerv1Parser.BridgeInitContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#inductStmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitInductStmt(compilerv1Parser.InductStmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#releaseStmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitReleaseStmt(compilerv1Parser.ReleaseStmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#attributeBlock}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAttributeBlock(compilerv1Parser.AttributeBlockContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#attributeEntry}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAttributeEntry(compilerv1Parser.AttributeEntryContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#attributeArgs}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAttributeArgs(compilerv1Parser.AttributeArgsContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#attributeValue}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAttributeValue(compilerv1Parser.AttributeValueContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#unsafeLineStmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitUnsafeLineStmt(compilerv1Parser.UnsafeLineStmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#unsafeLinePayload}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitUnsafeLinePayload(compilerv1Parser.UnsafeLinePayloadContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStatement(compilerv1Parser.StatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#typedefOpstructSession}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTypedefOpstructSession(compilerv1Parser.TypedefOpstructSessionContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#typedefOpstructCreateStmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTypedefOpstructCreateStmt(compilerv1Parser.TypedefOpstructCreateStmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#typedefOpstructPhraseStmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTypedefOpstructPhraseStmt(compilerv1Parser.TypedefOpstructPhraseStmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#typedefOpstructCommand}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTypedefOpstructCommand(compilerv1Parser.TypedefOpstructCommandContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#typedefOpstructCapture}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTypedefOpstructCapture(compilerv1Parser.TypedefOpstructCaptureContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#typedefOpstructWord}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTypedefOpstructWord(compilerv1Parser.TypedefOpstructWordContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#schedulerStartStmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSchedulerStartStmt(compilerv1Parser.SchedulerStartStmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#schedulerStartMode}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSchedulerStartMode(compilerv1Parser.SchedulerStartModeContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#schedulerInsertStmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSchedulerInsertStmt(compilerv1Parser.SchedulerInsertStmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#schedulerVoidStmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSchedulerVoidStmt(compilerv1Parser.SchedulerVoidStmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#ifStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIfStatement(compilerv1Parser.IfStatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#whileStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitWhileStatement(compilerv1Parser.WhileStatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#forStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitForStatement(compilerv1Parser.ForStatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#forInStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitForInStatement(compilerv1Parser.ForInStatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#switchStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSwitchStatement(compilerv1Parser.SwitchStatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#switchCase}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSwitchCase(compilerv1Parser.SwitchCaseContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#switchDefault}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSwitchDefault(compilerv1Parser.SwitchDefaultContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#tryCatchStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTryCatchStatement(compilerv1Parser.TryCatchStatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#autocatchStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAutocatchStatement(compilerv1Parser.AutocatchStatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#assignment}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAssignment(compilerv1Parser.AssignmentContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#assignmentCore}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAssignmentCore(compilerv1Parser.AssignmentCoreContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#assignTarget}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAssignTarget(compilerv1Parser.AssignTargetContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#accessKey}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAccessKey(compilerv1Parser.AccessKeyContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#init}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitInit(compilerv1Parser.InitContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#ltoInit}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLtoInit(compilerv1Parser.LtoInitContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#ltoTypesetStmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLtoTypesetStmt(compilerv1Parser.LtoTypesetStmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#easyInit}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitEasyInit(compilerv1Parser.EasyInitContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#initCore}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitInitCore(compilerv1Parser.InitCoreContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#forInit}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitForInit(compilerv1Parser.ForInitContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#forUpdate}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitForUpdate(compilerv1Parser.ForUpdateContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#assertStmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAssertStmt(compilerv1Parser.AssertStmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpression(compilerv1Parser.ExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#orExpr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitOrExpr(compilerv1Parser.OrExprContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#andExpr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAndExpr(compilerv1Parser.AndExprContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#bitwiseOrExpr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBitwiseOrExpr(compilerv1Parser.BitwiseOrExprContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#bitwiseXorExpr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBitwiseXorExpr(compilerv1Parser.BitwiseXorExprContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#bitwiseAndExpr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBitwiseAndExpr(compilerv1Parser.BitwiseAndExprContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#equalityExpr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitEqualityExpr(compilerv1Parser.EqualityExprContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#shiftExpr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitShiftExpr(compilerv1Parser.ShiftExprContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#relationalExpr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitRelationalExpr(compilerv1Parser.RelationalExprContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#addExpr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAddExpr(compilerv1Parser.AddExprContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#multExpr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMultExpr(compilerv1Parser.MultExprContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#primary}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPrimary(compilerv1Parser.PrimaryContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#templateString}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTemplateString(compilerv1Parser.TemplateStringContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#castExpr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitCastExpr(compilerv1Parser.CastExprContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#castType}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitCastType(compilerv1Parser.CastTypeContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#placementNewExpr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPlacementNewExpr(compilerv1Parser.PlacementNewExprContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#indexedAccess}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIndexedAccess(compilerv1Parser.IndexedAccessContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#compositeLiteral}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitCompositeLiteral(compilerv1Parser.CompositeLiteralContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#functionCall}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFunctionCall(compilerv1Parser.FunctionCallContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#args}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitArgs(compilerv1Parser.ArgsContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#returnStmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitReturnStmt(compilerv1Parser.ReturnStmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#communalQualifier}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitCommunalQualifier(compilerv1Parser.CommunalQualifierContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#class}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitClass(compilerv1Parser.ClassContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#struct}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStruct(compilerv1Parser.StructContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#memstruct}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMemstruct(compilerv1Parser.MemstructContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#typedefStruct}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTypedefStruct(compilerv1Parser.TypedefStructContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#opstruct}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitOpstruct(compilerv1Parser.OpstructContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#opstructBody}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitOpstructBody(compilerv1Parser.OpstructBodyContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#typedefOpstruct}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTypedefOpstruct(compilerv1Parser.TypedefOpstructContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#typedefOpstructDslBody}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTypedefOpstructDslBody(compilerv1Parser.TypedefOpstructDslBodyContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#typedefOpstructDslEntry}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTypedefOpstructDslEntry(compilerv1Parser.TypedefOpstructDslEntryContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#typedefOpstructAsgEntry}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTypedefOpstructAsgEntry(compilerv1Parser.TypedefOpstructAsgEntryContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#typedefOpstructSrcEntry}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTypedefOpstructSrcEntry(compilerv1Parser.TypedefOpstructSrcEntryContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#typedefOpstructTemplateBody}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTypedefOpstructTemplateBody(compilerv1Parser.TypedefOpstructTemplateBodyContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#typedefOpstructTemplateBodyItem}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTypedefOpstructTemplateBodyItem(compilerv1Parser.TypedefOpstructTemplateBodyItemContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#interface}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitInterface(compilerv1Parser.InterfaceContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#inheritanceClause}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitInheritanceClause(compilerv1Parser.InheritanceClauseContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#inheritedType}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitInheritedType(compilerv1Parser.InheritedTypeContext ctx);
	/**
	 * Visit a parse tree produced by {@link compilerv1Parser#virtualMethod}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVirtualMethod(compilerv1Parser.VirtualMethodContext ctx);
}