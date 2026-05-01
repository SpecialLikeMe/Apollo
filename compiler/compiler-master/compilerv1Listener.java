// Generated from compilerv1.g4 by ANTLR 4.13.2
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link compilerv1Parser}.
 */
public interface compilerv1Listener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(compilerv1Parser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(compilerv1Parser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#directive}.
	 * @param ctx the parse tree
	 */
	void enterDirective(compilerv1Parser.DirectiveContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#directive}.
	 * @param ctx the parse tree
	 */
	void exitDirective(compilerv1Parser.DirectiveContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#gcDirective}.
	 * @param ctx the parse tree
	 */
	void enterGcDirective(compilerv1Parser.GcDirectiveContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#gcDirective}.
	 * @param ctx the parse tree
	 */
	void exitGcDirective(compilerv1Parser.GcDirectiveContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#borrowCheckerDirective}.
	 * @param ctx the parse tree
	 */
	void enterBorrowCheckerDirective(compilerv1Parser.BorrowCheckerDirectiveContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#borrowCheckerDirective}.
	 * @param ctx the parse tree
	 */
	void exitBorrowCheckerDirective(compilerv1Parser.BorrowCheckerDirectiveContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#phase3Directive}.
	 * @param ctx the parse tree
	 */
	void enterPhase3Directive(compilerv1Parser.Phase3DirectiveContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#phase3Directive}.
	 * @param ctx the parse tree
	 */
	void exitPhase3Directive(compilerv1Parser.Phase3DirectiveContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#settingDirective}.
	 * @param ctx the parse tree
	 */
	void enterSettingDirective(compilerv1Parser.SettingDirectiveContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#settingDirective}.
	 * @param ctx the parse tree
	 */
	void exitSettingDirective(compilerv1Parser.SettingDirectiveContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#settingValue}.
	 * @param ctx the parse tree
	 */
	void enterSettingValue(compilerv1Parser.SettingValueContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#settingValue}.
	 * @param ctx the parse tree
	 */
	void exitSettingValue(compilerv1Parser.SettingValueContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#importStmt}.
	 * @param ctx the parse tree
	 */
	void enterImportStmt(compilerv1Parser.ImportStmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#importStmt}.
	 * @param ctx the parse tree
	 */
	void exitImportStmt(compilerv1Parser.ImportStmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#instance}.
	 * @param ctx the parse tree
	 */
	void enterInstance(compilerv1Parser.InstanceContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#instance}.
	 * @param ctx the parse tree
	 */
	void exitInstance(compilerv1Parser.InstanceContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#instancepush}.
	 * @param ctx the parse tree
	 */
	void enterInstancepush(compilerv1Parser.InstancepushContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#instancepush}.
	 * @param ctx the parse tree
	 */
	void exitInstancepush(compilerv1Parser.InstancepushContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#memberaccess}.
	 * @param ctx the parse tree
	 */
	void enterMemberaccess(compilerv1Parser.MemberaccessContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#memberaccess}.
	 * @param ctx the parse tree
	 */
	void exitMemberaccess(compilerv1Parser.MemberaccessContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#accessBase}.
	 * @param ctx the parse tree
	 */
	void enterAccessBase(compilerv1Parser.AccessBaseContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#accessBase}.
	 * @param ctx the parse tree
	 */
	void exitAccessBase(compilerv1Parser.AccessBaseContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#instanceValue}.
	 * @param ctx the parse tree
	 */
	void enterInstanceValue(compilerv1Parser.InstanceValueContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#instanceValue}.
	 * @param ctx the parse tree
	 */
	void exitInstanceValue(compilerv1Parser.InstanceValueContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#allocatorUseSuffix}.
	 * @param ctx the parse tree
	 */
	void enterAllocatorUseSuffix(compilerv1Parser.AllocatorUseSuffixContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#allocatorUseSuffix}.
	 * @param ctx the parse tree
	 */
	void exitAllocatorUseSuffix(compilerv1Parser.AllocatorUseSuffixContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#importPath}.
	 * @param ctx the parse tree
	 */
	void enterImportPath(compilerv1Parser.ImportPathContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#importPath}.
	 * @param ctx the parse tree
	 */
	void exitImportPath(compilerv1Parser.ImportPathContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#headerPath}.
	 * @param ctx the parse tree
	 */
	void enterHeaderPath(compilerv1Parser.HeaderPathContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#headerPath}.
	 * @param ctx the parse tree
	 */
	void exitHeaderPath(compilerv1Parser.HeaderPathContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#headerPart}.
	 * @param ctx the parse tree
	 */
	void enterHeaderPart(compilerv1Parser.HeaderPartContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#headerPart}.
	 * @param ctx the parse tree
	 */
	void exitHeaderPart(compilerv1Parser.HeaderPartContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#headerPartAtom}.
	 * @param ctx the parse tree
	 */
	void enterHeaderPartAtom(compilerv1Parser.HeaderPartAtomContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#headerPartAtom}.
	 * @param ctx the parse tree
	 */
	void exitHeaderPartAtom(compilerv1Parser.HeaderPartAtomContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#function}.
	 * @param ctx the parse tree
	 */
	void enterFunction(compilerv1Parser.FunctionContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#function}.
	 * @param ctx the parse tree
	 */
	void exitFunction(compilerv1Parser.FunctionContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#method}.
	 * @param ctx the parse tree
	 */
	void enterMethod(compilerv1Parser.MethodContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#method}.
	 * @param ctx the parse tree
	 */
	void exitMethod(compilerv1Parser.MethodContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#field}.
	 * @param ctx the parse tree
	 */
	void enterField(compilerv1Parser.FieldContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#field}.
	 * @param ctx the parse tree
	 */
	void exitField(compilerv1Parser.FieldContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#params}.
	 * @param ctx the parse tree
	 */
	void enterParams(compilerv1Parser.ParamsContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#params}.
	 * @param ctx the parse tree
	 */
	void exitParams(compilerv1Parser.ParamsContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#param}.
	 * @param ctx the parse tree
	 */
	void enterParam(compilerv1Parser.ParamContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#param}.
	 * @param ctx the parse tree
	 */
	void exitParam(compilerv1Parser.ParamContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#borrowExpr}.
	 * @param ctx the parse tree
	 */
	void enterBorrowExpr(compilerv1Parser.BorrowExprContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#borrowExpr}.
	 * @param ctx the parse tree
	 */
	void exitBorrowExpr(compilerv1Parser.BorrowExprContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#block}.
	 * @param ctx the parse tree
	 */
	void enterBlock(compilerv1Parser.BlockContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#block}.
	 * @param ctx the parse tree
	 */
	void exitBlock(compilerv1Parser.BlockContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#classBody}.
	 * @param ctx the parse tree
	 */
	void enterClassBody(compilerv1Parser.ClassBodyContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#classBody}.
	 * @param ctx the parse tree
	 */
	void exitClassBody(compilerv1Parser.ClassBodyContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#templateDecl}.
	 * @param ctx the parse tree
	 */
	void enterTemplateDecl(compilerv1Parser.TemplateDeclContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#templateDecl}.
	 * @param ctx the parse tree
	 */
	void exitTemplateDecl(compilerv1Parser.TemplateDeclContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#templateParams}.
	 * @param ctx the parse tree
	 */
	void enterTemplateParams(compilerv1Parser.TemplateParamsContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#templateParams}.
	 * @param ctx the parse tree
	 */
	void exitTemplateParams(compilerv1Parser.TemplateParamsContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#dircpp}.
	 * @param ctx the parse tree
	 */
	void enterDircpp(compilerv1Parser.DircppContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#dircpp}.
	 * @param ctx the parse tree
	 */
	void exitDircpp(compilerv1Parser.DircppContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#structBody}.
	 * @param ctx the parse tree
	 */
	void enterStructBody(compilerv1Parser.StructBodyContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#structBody}.
	 * @param ctx the parse tree
	 */
	void exitStructBody(compilerv1Parser.StructBodyContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#scheduleDecl}.
	 * @param ctx the parse tree
	 */
	void enterScheduleDecl(compilerv1Parser.ScheduleDeclContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#scheduleDecl}.
	 * @param ctx the parse tree
	 */
	void exitScheduleDecl(compilerv1Parser.ScheduleDeclContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#scheduleMember}.
	 * @param ctx the parse tree
	 */
	void enterScheduleMember(compilerv1Parser.ScheduleMemberContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#scheduleMember}.
	 * @param ctx the parse tree
	 */
	void exitScheduleMember(compilerv1Parser.ScheduleMemberContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#mandatoryScheduleMember}.
	 * @param ctx the parse tree
	 */
	void enterMandatoryScheduleMember(compilerv1Parser.MandatoryScheduleMemberContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#mandatoryScheduleMember}.
	 * @param ctx the parse tree
	 */
	void exitMandatoryScheduleMember(compilerv1Parser.MandatoryScheduleMemberContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#classMember}.
	 * @param ctx the parse tree
	 */
	void enterClassMember(compilerv1Parser.ClassMemberContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#classMember}.
	 * @param ctx the parse tree
	 */
	void exitClassMember(compilerv1Parser.ClassMemberContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#structMember}.
	 * @param ctx the parse tree
	 */
	void enterStructMember(compilerv1Parser.StructMemberContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#structMember}.
	 * @param ctx the parse tree
	 */
	void exitStructMember(compilerv1Parser.StructMemberContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#print}.
	 * @param ctx the parse tree
	 */
	void enterPrint(compilerv1Parser.PrintContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#print}.
	 * @param ctx the parse tree
	 */
	void exitPrint(compilerv1Parser.PrintContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#nativemode}.
	 * @param ctx the parse tree
	 */
	void enterNativemode(compilerv1Parser.NativemodeContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#nativemode}.
	 * @param ctx the parse tree
	 */
	void exitNativemode(compilerv1Parser.NativemodeContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#asyncCall}.
	 * @param ctx the parse tree
	 */
	void enterAsyncCall(compilerv1Parser.AsyncCallContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#asyncCall}.
	 * @param ctx the parse tree
	 */
	void exitAsyncCall(compilerv1Parser.AsyncCallContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#syscallStmt}.
	 * @param ctx the parse tree
	 */
	void enterSyscallStmt(compilerv1Parser.SyscallStmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#syscallStmt}.
	 * @param ctx the parse tree
	 */
	void exitSyscallStmt(compilerv1Parser.SyscallStmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#globalInit}.
	 * @param ctx the parse tree
	 */
	void enterGlobalInit(compilerv1Parser.GlobalInitContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#globalInit}.
	 * @param ctx the parse tree
	 */
	void exitGlobalInit(compilerv1Parser.GlobalInitContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#malloc}.
	 * @param ctx the parse tree
	 */
	void enterMalloc(compilerv1Parser.MallocContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#malloc}.
	 * @param ctx the parse tree
	 */
	void exitMalloc(compilerv1Parser.MallocContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#mntDecl}.
	 * @param ctx the parse tree
	 */
	void enterMntDecl(compilerv1Parser.MntDeclContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#mntDecl}.
	 * @param ctx the parse tree
	 */
	void exitMntDecl(compilerv1Parser.MntDeclContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#delalc}.
	 * @param ctx the parse tree
	 */
	void enterDelalc(compilerv1Parser.DelalcContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#delalc}.
	 * @param ctx the parse tree
	 */
	void exitDelalc(compilerv1Parser.DelalcContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#free}.
	 * @param ctx the parse tree
	 */
	void enterFree(compilerv1Parser.FreeContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#free}.
	 * @param ctx the parse tree
	 */
	void exitFree(compilerv1Parser.FreeContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#plcnew}.
	 * @param ctx the parse tree
	 */
	void enterPlcnew(compilerv1Parser.PlcnewContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#plcnew}.
	 * @param ctx the parse tree
	 */
	void exitPlcnew(compilerv1Parser.PlcnewContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#plcnewType}.
	 * @param ctx the parse tree
	 */
	void enterPlcnewType(compilerv1Parser.PlcnewTypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#plcnewType}.
	 * @param ctx the parse tree
	 */
	void exitPlcnewType(compilerv1Parser.PlcnewTypeContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#pointer}.
	 * @param ctx the parse tree
	 */
	void enterPointer(compilerv1Parser.PointerContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#pointer}.
	 * @param ctx the parse tree
	 */
	void exitPointer(compilerv1Parser.PointerContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#include}.
	 * @param ctx the parse tree
	 */
	void enterInclude(compilerv1Parser.IncludeContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#include}.
	 * @param ctx the parse tree
	 */
	void exitInclude(compilerv1Parser.IncludeContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#returnType}.
	 * @param ctx the parse tree
	 */
	void enterReturnType(compilerv1Parser.ReturnTypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#returnType}.
	 * @param ctx the parse tree
	 */
	void exitReturnType(compilerv1Parser.ReturnTypeContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#typeRef}.
	 * @param ctx the parse tree
	 */
	void enterTypeRef(compilerv1Parser.TypeRefContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#typeRef}.
	 * @param ctx the parse tree
	 */
	void exitTypeRef(compilerv1Parser.TypeRefContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#thread}.
	 * @param ctx the parse tree
	 */
	void enterThread(compilerv1Parser.ThreadContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#thread}.
	 * @param ctx the parse tree
	 */
	void exitThread(compilerv1Parser.ThreadContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#typeAtom}.
	 * @param ctx the parse tree
	 */
	void enterTypeAtom(compilerv1Parser.TypeAtomContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#typeAtom}.
	 * @param ctx the parse tree
	 */
	void exitTypeAtom(compilerv1Parser.TypeAtomContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#typeModifier}.
	 * @param ctx the parse tree
	 */
	void enterTypeModifier(compilerv1Parser.TypeModifierContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#typeModifier}.
	 * @param ctx the parse tree
	 */
	void exitTypeModifier(compilerv1Parser.TypeModifierContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#genericType}.
	 * @param ctx the parse tree
	 */
	void enterGenericType(compilerv1Parser.GenericTypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#genericType}.
	 * @param ctx the parse tree
	 */
	void exitGenericType(compilerv1Parser.GenericTypeContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#functionType}.
	 * @param ctx the parse tree
	 */
	void enterFunctionType(compilerv1Parser.FunctionTypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#functionType}.
	 * @param ctx the parse tree
	 */
	void exitFunctionType(compilerv1Parser.FunctionTypeContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#functionTypeArgs}.
	 * @param ctx the parse tree
	 */
	void enterFunctionTypeArgs(compilerv1Parser.FunctionTypeArgsContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#functionTypeArgs}.
	 * @param ctx the parse tree
	 */
	void exitFunctionTypeArgs(compilerv1Parser.FunctionTypeArgsContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#macro}.
	 * @param ctx the parse tree
	 */
	void enterMacro(compilerv1Parser.MacroContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#macro}.
	 * @param ctx the parse tree
	 */
	void exitMacro(compilerv1Parser.MacroContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#macroQualifier}.
	 * @param ctx the parse tree
	 */
	void enterMacroQualifier(compilerv1Parser.MacroQualifierContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#macroQualifier}.
	 * @param ctx the parse tree
	 */
	void exitMacroQualifier(compilerv1Parser.MacroQualifierContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#stdin}.
	 * @param ctx the parse tree
	 */
	void enterStdin(compilerv1Parser.StdinContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#stdin}.
	 * @param ctx the parse tree
	 */
	void exitStdin(compilerv1Parser.StdinContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#stdinExpr}.
	 * @param ctx the parse tree
	 */
	void enterStdinExpr(compilerv1Parser.StdinExprContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#stdinExpr}.
	 * @param ctx the parse tree
	 */
	void exitStdinExpr(compilerv1Parser.StdinExprContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#lambda}.
	 * @param ctx the parse tree
	 */
	void enterLambda(compilerv1Parser.LambdaContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#lambda}.
	 * @param ctx the parse tree
	 */
	void exitLambda(compilerv1Parser.LambdaContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#lambdaDefinition}.
	 * @param ctx the parse tree
	 */
	void enterLambdaDefinition(compilerv1Parser.LambdaDefinitionContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#lambdaDefinition}.
	 * @param ctx the parse tree
	 */
	void exitLambdaDefinition(compilerv1Parser.LambdaDefinitionContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#lambdaLiteral}.
	 * @param ctx the parse tree
	 */
	void enterLambdaLiteral(compilerv1Parser.LambdaLiteralContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#lambdaLiteral}.
	 * @param ctx the parse tree
	 */
	void exitLambdaLiteral(compilerv1Parser.LambdaLiteralContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#srcDecl}.
	 * @param ctx the parse tree
	 */
	void enterSrcDecl(compilerv1Parser.SrcDeclContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#srcDecl}.
	 * @param ctx the parse tree
	 */
	void exitSrcDecl(compilerv1Parser.SrcDeclContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#cscope}.
	 * @param ctx the parse tree
	 */
	void enterCscope(compilerv1Parser.CscopeContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#cscope}.
	 * @param ctx the parse tree
	 */
	void exitCscope(compilerv1Parser.CscopeContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#unsafeBlock}.
	 * @param ctx the parse tree
	 */
	void enterUnsafeBlock(compilerv1Parser.UnsafeBlockContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#unsafeBlock}.
	 * @param ctx the parse tree
	 */
	void exitUnsafeBlock(compilerv1Parser.UnsafeBlockContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#bypassBlock}.
	 * @param ctx the parse tree
	 */
	void enterBypassBlock(compilerv1Parser.BypassBlockContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#bypassBlock}.
	 * @param ctx the parse tree
	 */
	void exitBypassBlock(compilerv1Parser.BypassBlockContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#autofmtdeclareScope}.
	 * @param ctx the parse tree
	 */
	void enterAutofmtdeclareScope(compilerv1Parser.AutofmtdeclareScopeContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#autofmtdeclareScope}.
	 * @param ctx the parse tree
	 */
	void exitAutofmtdeclareScope(compilerv1Parser.AutofmtdeclareScopeContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#bridgeInit}.
	 * @param ctx the parse tree
	 */
	void enterBridgeInit(compilerv1Parser.BridgeInitContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#bridgeInit}.
	 * @param ctx the parse tree
	 */
	void exitBridgeInit(compilerv1Parser.BridgeInitContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#inductStmt}.
	 * @param ctx the parse tree
	 */
	void enterInductStmt(compilerv1Parser.InductStmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#inductStmt}.
	 * @param ctx the parse tree
	 */
	void exitInductStmt(compilerv1Parser.InductStmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#releaseStmt}.
	 * @param ctx the parse tree
	 */
	void enterReleaseStmt(compilerv1Parser.ReleaseStmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#releaseStmt}.
	 * @param ctx the parse tree
	 */
	void exitReleaseStmt(compilerv1Parser.ReleaseStmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#attributeBlock}.
	 * @param ctx the parse tree
	 */
	void enterAttributeBlock(compilerv1Parser.AttributeBlockContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#attributeBlock}.
	 * @param ctx the parse tree
	 */
	void exitAttributeBlock(compilerv1Parser.AttributeBlockContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#attributeEntry}.
	 * @param ctx the parse tree
	 */
	void enterAttributeEntry(compilerv1Parser.AttributeEntryContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#attributeEntry}.
	 * @param ctx the parse tree
	 */
	void exitAttributeEntry(compilerv1Parser.AttributeEntryContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#attributeArgs}.
	 * @param ctx the parse tree
	 */
	void enterAttributeArgs(compilerv1Parser.AttributeArgsContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#attributeArgs}.
	 * @param ctx the parse tree
	 */
	void exitAttributeArgs(compilerv1Parser.AttributeArgsContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#attributeValue}.
	 * @param ctx the parse tree
	 */
	void enterAttributeValue(compilerv1Parser.AttributeValueContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#attributeValue}.
	 * @param ctx the parse tree
	 */
	void exitAttributeValue(compilerv1Parser.AttributeValueContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#unsafeLineStmt}.
	 * @param ctx the parse tree
	 */
	void enterUnsafeLineStmt(compilerv1Parser.UnsafeLineStmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#unsafeLineStmt}.
	 * @param ctx the parse tree
	 */
	void exitUnsafeLineStmt(compilerv1Parser.UnsafeLineStmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#unsafeLinePayload}.
	 * @param ctx the parse tree
	 */
	void enterUnsafeLinePayload(compilerv1Parser.UnsafeLinePayloadContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#unsafeLinePayload}.
	 * @param ctx the parse tree
	 */
	void exitUnsafeLinePayload(compilerv1Parser.UnsafeLinePayloadContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#statement}.
	 * @param ctx the parse tree
	 */
	void enterStatement(compilerv1Parser.StatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#statement}.
	 * @param ctx the parse tree
	 */
	void exitStatement(compilerv1Parser.StatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#typedefOpstructSession}.
	 * @param ctx the parse tree
	 */
	void enterTypedefOpstructSession(compilerv1Parser.TypedefOpstructSessionContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#typedefOpstructSession}.
	 * @param ctx the parse tree
	 */
	void exitTypedefOpstructSession(compilerv1Parser.TypedefOpstructSessionContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#typedefOpstructCreateStmt}.
	 * @param ctx the parse tree
	 */
	void enterTypedefOpstructCreateStmt(compilerv1Parser.TypedefOpstructCreateStmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#typedefOpstructCreateStmt}.
	 * @param ctx the parse tree
	 */
	void exitTypedefOpstructCreateStmt(compilerv1Parser.TypedefOpstructCreateStmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#typedefOpstructPhraseStmt}.
	 * @param ctx the parse tree
	 */
	void enterTypedefOpstructPhraseStmt(compilerv1Parser.TypedefOpstructPhraseStmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#typedefOpstructPhraseStmt}.
	 * @param ctx the parse tree
	 */
	void exitTypedefOpstructPhraseStmt(compilerv1Parser.TypedefOpstructPhraseStmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#typedefOpstructCommand}.
	 * @param ctx the parse tree
	 */
	void enterTypedefOpstructCommand(compilerv1Parser.TypedefOpstructCommandContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#typedefOpstructCommand}.
	 * @param ctx the parse tree
	 */
	void exitTypedefOpstructCommand(compilerv1Parser.TypedefOpstructCommandContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#typedefOpstructCapture}.
	 * @param ctx the parse tree
	 */
	void enterTypedefOpstructCapture(compilerv1Parser.TypedefOpstructCaptureContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#typedefOpstructCapture}.
	 * @param ctx the parse tree
	 */
	void exitTypedefOpstructCapture(compilerv1Parser.TypedefOpstructCaptureContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#typedefOpstructWord}.
	 * @param ctx the parse tree
	 */
	void enterTypedefOpstructWord(compilerv1Parser.TypedefOpstructWordContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#typedefOpstructWord}.
	 * @param ctx the parse tree
	 */
	void exitTypedefOpstructWord(compilerv1Parser.TypedefOpstructWordContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#schedulerStartStmt}.
	 * @param ctx the parse tree
	 */
	void enterSchedulerStartStmt(compilerv1Parser.SchedulerStartStmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#schedulerStartStmt}.
	 * @param ctx the parse tree
	 */
	void exitSchedulerStartStmt(compilerv1Parser.SchedulerStartStmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#schedulerStartMode}.
	 * @param ctx the parse tree
	 */
	void enterSchedulerStartMode(compilerv1Parser.SchedulerStartModeContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#schedulerStartMode}.
	 * @param ctx the parse tree
	 */
	void exitSchedulerStartMode(compilerv1Parser.SchedulerStartModeContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#schedulerInsertStmt}.
	 * @param ctx the parse tree
	 */
	void enterSchedulerInsertStmt(compilerv1Parser.SchedulerInsertStmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#schedulerInsertStmt}.
	 * @param ctx the parse tree
	 */
	void exitSchedulerInsertStmt(compilerv1Parser.SchedulerInsertStmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#schedulerVoidStmt}.
	 * @param ctx the parse tree
	 */
	void enterSchedulerVoidStmt(compilerv1Parser.SchedulerVoidStmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#schedulerVoidStmt}.
	 * @param ctx the parse tree
	 */
	void exitSchedulerVoidStmt(compilerv1Parser.SchedulerVoidStmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#ifStatement}.
	 * @param ctx the parse tree
	 */
	void enterIfStatement(compilerv1Parser.IfStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#ifStatement}.
	 * @param ctx the parse tree
	 */
	void exitIfStatement(compilerv1Parser.IfStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#whileStatement}.
	 * @param ctx the parse tree
	 */
	void enterWhileStatement(compilerv1Parser.WhileStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#whileStatement}.
	 * @param ctx the parse tree
	 */
	void exitWhileStatement(compilerv1Parser.WhileStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#forStatement}.
	 * @param ctx the parse tree
	 */
	void enterForStatement(compilerv1Parser.ForStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#forStatement}.
	 * @param ctx the parse tree
	 */
	void exitForStatement(compilerv1Parser.ForStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#forInStatement}.
	 * @param ctx the parse tree
	 */
	void enterForInStatement(compilerv1Parser.ForInStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#forInStatement}.
	 * @param ctx the parse tree
	 */
	void exitForInStatement(compilerv1Parser.ForInStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#switchStatement}.
	 * @param ctx the parse tree
	 */
	void enterSwitchStatement(compilerv1Parser.SwitchStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#switchStatement}.
	 * @param ctx the parse tree
	 */
	void exitSwitchStatement(compilerv1Parser.SwitchStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#switchCase}.
	 * @param ctx the parse tree
	 */
	void enterSwitchCase(compilerv1Parser.SwitchCaseContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#switchCase}.
	 * @param ctx the parse tree
	 */
	void exitSwitchCase(compilerv1Parser.SwitchCaseContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#switchDefault}.
	 * @param ctx the parse tree
	 */
	void enterSwitchDefault(compilerv1Parser.SwitchDefaultContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#switchDefault}.
	 * @param ctx the parse tree
	 */
	void exitSwitchDefault(compilerv1Parser.SwitchDefaultContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#tryCatchStatement}.
	 * @param ctx the parse tree
	 */
	void enterTryCatchStatement(compilerv1Parser.TryCatchStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#tryCatchStatement}.
	 * @param ctx the parse tree
	 */
	void exitTryCatchStatement(compilerv1Parser.TryCatchStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#autocatchStatement}.
	 * @param ctx the parse tree
	 */
	void enterAutocatchStatement(compilerv1Parser.AutocatchStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#autocatchStatement}.
	 * @param ctx the parse tree
	 */
	void exitAutocatchStatement(compilerv1Parser.AutocatchStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#assignment}.
	 * @param ctx the parse tree
	 */
	void enterAssignment(compilerv1Parser.AssignmentContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#assignment}.
	 * @param ctx the parse tree
	 */
	void exitAssignment(compilerv1Parser.AssignmentContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#assignmentCore}.
	 * @param ctx the parse tree
	 */
	void enterAssignmentCore(compilerv1Parser.AssignmentCoreContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#assignmentCore}.
	 * @param ctx the parse tree
	 */
	void exitAssignmentCore(compilerv1Parser.AssignmentCoreContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#assignTarget}.
	 * @param ctx the parse tree
	 */
	void enterAssignTarget(compilerv1Parser.AssignTargetContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#assignTarget}.
	 * @param ctx the parse tree
	 */
	void exitAssignTarget(compilerv1Parser.AssignTargetContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#accessKey}.
	 * @param ctx the parse tree
	 */
	void enterAccessKey(compilerv1Parser.AccessKeyContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#accessKey}.
	 * @param ctx the parse tree
	 */
	void exitAccessKey(compilerv1Parser.AccessKeyContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#init}.
	 * @param ctx the parse tree
	 */
	void enterInit(compilerv1Parser.InitContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#init}.
	 * @param ctx the parse tree
	 */
	void exitInit(compilerv1Parser.InitContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#ltoInit}.
	 * @param ctx the parse tree
	 */
	void enterLtoInit(compilerv1Parser.LtoInitContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#ltoInit}.
	 * @param ctx the parse tree
	 */
	void exitLtoInit(compilerv1Parser.LtoInitContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#ltoTypesetStmt}.
	 * @param ctx the parse tree
	 */
	void enterLtoTypesetStmt(compilerv1Parser.LtoTypesetStmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#ltoTypesetStmt}.
	 * @param ctx the parse tree
	 */
	void exitLtoTypesetStmt(compilerv1Parser.LtoTypesetStmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#easyInit}.
	 * @param ctx the parse tree
	 */
	void enterEasyInit(compilerv1Parser.EasyInitContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#easyInit}.
	 * @param ctx the parse tree
	 */
	void exitEasyInit(compilerv1Parser.EasyInitContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#initCore}.
	 * @param ctx the parse tree
	 */
	void enterInitCore(compilerv1Parser.InitCoreContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#initCore}.
	 * @param ctx the parse tree
	 */
	void exitInitCore(compilerv1Parser.InitCoreContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#forInit}.
	 * @param ctx the parse tree
	 */
	void enterForInit(compilerv1Parser.ForInitContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#forInit}.
	 * @param ctx the parse tree
	 */
	void exitForInit(compilerv1Parser.ForInitContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#forUpdate}.
	 * @param ctx the parse tree
	 */
	void enterForUpdate(compilerv1Parser.ForUpdateContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#forUpdate}.
	 * @param ctx the parse tree
	 */
	void exitForUpdate(compilerv1Parser.ForUpdateContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#assertStmt}.
	 * @param ctx the parse tree
	 */
	void enterAssertStmt(compilerv1Parser.AssertStmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#assertStmt}.
	 * @param ctx the parse tree
	 */
	void exitAssertStmt(compilerv1Parser.AssertStmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExpression(compilerv1Parser.ExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExpression(compilerv1Parser.ExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#orExpr}.
	 * @param ctx the parse tree
	 */
	void enterOrExpr(compilerv1Parser.OrExprContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#orExpr}.
	 * @param ctx the parse tree
	 */
	void exitOrExpr(compilerv1Parser.OrExprContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#andExpr}.
	 * @param ctx the parse tree
	 */
	void enterAndExpr(compilerv1Parser.AndExprContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#andExpr}.
	 * @param ctx the parse tree
	 */
	void exitAndExpr(compilerv1Parser.AndExprContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#bitwiseOrExpr}.
	 * @param ctx the parse tree
	 */
	void enterBitwiseOrExpr(compilerv1Parser.BitwiseOrExprContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#bitwiseOrExpr}.
	 * @param ctx the parse tree
	 */
	void exitBitwiseOrExpr(compilerv1Parser.BitwiseOrExprContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#bitwiseXorExpr}.
	 * @param ctx the parse tree
	 */
	void enterBitwiseXorExpr(compilerv1Parser.BitwiseXorExprContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#bitwiseXorExpr}.
	 * @param ctx the parse tree
	 */
	void exitBitwiseXorExpr(compilerv1Parser.BitwiseXorExprContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#bitwiseAndExpr}.
	 * @param ctx the parse tree
	 */
	void enterBitwiseAndExpr(compilerv1Parser.BitwiseAndExprContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#bitwiseAndExpr}.
	 * @param ctx the parse tree
	 */
	void exitBitwiseAndExpr(compilerv1Parser.BitwiseAndExprContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#equalityExpr}.
	 * @param ctx the parse tree
	 */
	void enterEqualityExpr(compilerv1Parser.EqualityExprContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#equalityExpr}.
	 * @param ctx the parse tree
	 */
	void exitEqualityExpr(compilerv1Parser.EqualityExprContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#shiftExpr}.
	 * @param ctx the parse tree
	 */
	void enterShiftExpr(compilerv1Parser.ShiftExprContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#shiftExpr}.
	 * @param ctx the parse tree
	 */
	void exitShiftExpr(compilerv1Parser.ShiftExprContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#rightShiftOperator}.
	 * @param ctx the parse tree
	 */
	void enterRightShiftOperator(compilerv1Parser.RightShiftOperatorContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#rightShiftOperator}.
	 * @param ctx the parse tree
	 */
	void exitRightShiftOperator(compilerv1Parser.RightShiftOperatorContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#relationalExpr}.
	 * @param ctx the parse tree
	 */
	void enterRelationalExpr(compilerv1Parser.RelationalExprContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#relationalExpr}.
	 * @param ctx the parse tree
	 */
	void exitRelationalExpr(compilerv1Parser.RelationalExprContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#addExpr}.
	 * @param ctx the parse tree
	 */
	void enterAddExpr(compilerv1Parser.AddExprContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#addExpr}.
	 * @param ctx the parse tree
	 */
	void exitAddExpr(compilerv1Parser.AddExprContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#multExpr}.
	 * @param ctx the parse tree
	 */
	void enterMultExpr(compilerv1Parser.MultExprContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#multExpr}.
	 * @param ctx the parse tree
	 */
	void exitMultExpr(compilerv1Parser.MultExprContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#primary}.
	 * @param ctx the parse tree
	 */
	void enterPrimary(compilerv1Parser.PrimaryContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#primary}.
	 * @param ctx the parse tree
	 */
	void exitPrimary(compilerv1Parser.PrimaryContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#templateString}.
	 * @param ctx the parse tree
	 */
	void enterTemplateString(compilerv1Parser.TemplateStringContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#templateString}.
	 * @param ctx the parse tree
	 */
	void exitTemplateString(compilerv1Parser.TemplateStringContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#castExpr}.
	 * @param ctx the parse tree
	 */
	void enterCastExpr(compilerv1Parser.CastExprContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#castExpr}.
	 * @param ctx the parse tree
	 */
	void exitCastExpr(compilerv1Parser.CastExprContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#castType}.
	 * @param ctx the parse tree
	 */
	void enterCastType(compilerv1Parser.CastTypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#castType}.
	 * @param ctx the parse tree
	 */
	void exitCastType(compilerv1Parser.CastTypeContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#placementNewExpr}.
	 * @param ctx the parse tree
	 */
	void enterPlacementNewExpr(compilerv1Parser.PlacementNewExprContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#placementNewExpr}.
	 * @param ctx the parse tree
	 */
	void exitPlacementNewExpr(compilerv1Parser.PlacementNewExprContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#indexedAccess}.
	 * @param ctx the parse tree
	 */
	void enterIndexedAccess(compilerv1Parser.IndexedAccessContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#indexedAccess}.
	 * @param ctx the parse tree
	 */
	void exitIndexedAccess(compilerv1Parser.IndexedAccessContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#compositeLiteral}.
	 * @param ctx the parse tree
	 */
	void enterCompositeLiteral(compilerv1Parser.CompositeLiteralContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#compositeLiteral}.
	 * @param ctx the parse tree
	 */
	void exitCompositeLiteral(compilerv1Parser.CompositeLiteralContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#functionCall}.
	 * @param ctx the parse tree
	 */
	void enterFunctionCall(compilerv1Parser.FunctionCallContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#functionCall}.
	 * @param ctx the parse tree
	 */
	void exitFunctionCall(compilerv1Parser.FunctionCallContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#args}.
	 * @param ctx the parse tree
	 */
	void enterArgs(compilerv1Parser.ArgsContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#args}.
	 * @param ctx the parse tree
	 */
	void exitArgs(compilerv1Parser.ArgsContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#returnStmt}.
	 * @param ctx the parse tree
	 */
	void enterReturnStmt(compilerv1Parser.ReturnStmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#returnStmt}.
	 * @param ctx the parse tree
	 */
	void exitReturnStmt(compilerv1Parser.ReturnStmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#communalQualifier}.
	 * @param ctx the parse tree
	 */
	void enterCommunalQualifier(compilerv1Parser.CommunalQualifierContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#communalQualifier}.
	 * @param ctx the parse tree
	 */
	void exitCommunalQualifier(compilerv1Parser.CommunalQualifierContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#class}.
	 * @param ctx the parse tree
	 */
	void enterClass(compilerv1Parser.ClassContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#class}.
	 * @param ctx the parse tree
	 */
	void exitClass(compilerv1Parser.ClassContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#struct}.
	 * @param ctx the parse tree
	 */
	void enterStruct(compilerv1Parser.StructContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#struct}.
	 * @param ctx the parse tree
	 */
	void exitStruct(compilerv1Parser.StructContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#memstruct}.
	 * @param ctx the parse tree
	 */
	void enterMemstruct(compilerv1Parser.MemstructContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#memstruct}.
	 * @param ctx the parse tree
	 */
	void exitMemstruct(compilerv1Parser.MemstructContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#typedefStruct}.
	 * @param ctx the parse tree
	 */
	void enterTypedefStruct(compilerv1Parser.TypedefStructContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#typedefStruct}.
	 * @param ctx the parse tree
	 */
	void exitTypedefStruct(compilerv1Parser.TypedefStructContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#opstruct}.
	 * @param ctx the parse tree
	 */
	void enterOpstruct(compilerv1Parser.OpstructContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#opstruct}.
	 * @param ctx the parse tree
	 */
	void exitOpstruct(compilerv1Parser.OpstructContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#opstructBody}.
	 * @param ctx the parse tree
	 */
	void enterOpstructBody(compilerv1Parser.OpstructBodyContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#opstructBody}.
	 * @param ctx the parse tree
	 */
	void exitOpstructBody(compilerv1Parser.OpstructBodyContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#typedefOpstruct}.
	 * @param ctx the parse tree
	 */
	void enterTypedefOpstruct(compilerv1Parser.TypedefOpstructContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#typedefOpstruct}.
	 * @param ctx the parse tree
	 */
	void exitTypedefOpstruct(compilerv1Parser.TypedefOpstructContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#typedefOpstructDslBody}.
	 * @param ctx the parse tree
	 */
	void enterTypedefOpstructDslBody(compilerv1Parser.TypedefOpstructDslBodyContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#typedefOpstructDslBody}.
	 * @param ctx the parse tree
	 */
	void exitTypedefOpstructDslBody(compilerv1Parser.TypedefOpstructDslBodyContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#typedefOpstructDslEntry}.
	 * @param ctx the parse tree
	 */
	void enterTypedefOpstructDslEntry(compilerv1Parser.TypedefOpstructDslEntryContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#typedefOpstructDslEntry}.
	 * @param ctx the parse tree
	 */
	void exitTypedefOpstructDslEntry(compilerv1Parser.TypedefOpstructDslEntryContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#typedefOpstructAsgEntry}.
	 * @param ctx the parse tree
	 */
	void enterTypedefOpstructAsgEntry(compilerv1Parser.TypedefOpstructAsgEntryContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#typedefOpstructAsgEntry}.
	 * @param ctx the parse tree
	 */
	void exitTypedefOpstructAsgEntry(compilerv1Parser.TypedefOpstructAsgEntryContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#typedefOpstructSrcEntry}.
	 * @param ctx the parse tree
	 */
	void enterTypedefOpstructSrcEntry(compilerv1Parser.TypedefOpstructSrcEntryContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#typedefOpstructSrcEntry}.
	 * @param ctx the parse tree
	 */
	void exitTypedefOpstructSrcEntry(compilerv1Parser.TypedefOpstructSrcEntryContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#typedefOpstructTemplateBody}.
	 * @param ctx the parse tree
	 */
	void enterTypedefOpstructTemplateBody(compilerv1Parser.TypedefOpstructTemplateBodyContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#typedefOpstructTemplateBody}.
	 * @param ctx the parse tree
	 */
	void exitTypedefOpstructTemplateBody(compilerv1Parser.TypedefOpstructTemplateBodyContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#typedefOpstructTemplateBodyItem}.
	 * @param ctx the parse tree
	 */
	void enterTypedefOpstructTemplateBodyItem(compilerv1Parser.TypedefOpstructTemplateBodyItemContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#typedefOpstructTemplateBodyItem}.
	 * @param ctx the parse tree
	 */
	void exitTypedefOpstructTemplateBodyItem(compilerv1Parser.TypedefOpstructTemplateBodyItemContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#interface}.
	 * @param ctx the parse tree
	 */
	void enterInterface(compilerv1Parser.InterfaceContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#interface}.
	 * @param ctx the parse tree
	 */
	void exitInterface(compilerv1Parser.InterfaceContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#inheritanceClause}.
	 * @param ctx the parse tree
	 */
	void enterInheritanceClause(compilerv1Parser.InheritanceClauseContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#inheritanceClause}.
	 * @param ctx the parse tree
	 */
	void exitInheritanceClause(compilerv1Parser.InheritanceClauseContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#inheritedType}.
	 * @param ctx the parse tree
	 */
	void enterInheritedType(compilerv1Parser.InheritedTypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#inheritedType}.
	 * @param ctx the parse tree
	 */
	void exitInheritedType(compilerv1Parser.InheritedTypeContext ctx);
	/**
	 * Enter a parse tree produced by {@link compilerv1Parser#virtualMethod}.
	 * @param ctx the parse tree
	 */
	void enterVirtualMethod(compilerv1Parser.VirtualMethodContext ctx);
	/**
	 * Exit a parse tree produced by {@link compilerv1Parser#virtualMethod}.
	 * @param ctx the parse tree
	 */
	void exitVirtualMethod(compilerv1Parser.VirtualMethodContext ctx);
}