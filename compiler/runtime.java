import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;

import java.nio.file.Path;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Deque;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

public final class runtime {
    private static final String ANSI_YELLOW = "\u001B[33m";
    private static final String ANSI_RESET = "\u001B[0m";

    private runtime() {
    }

    interface RuntimePhase {
        String phaseName();

        void execute(RuntimeSession session);
    }

    static final class RuntimeSession {
        private final SourceFileContext source;
        private final compilerv1Parser.ProgramContext tree;
        private MemorySafetyDevice memorySafetyDevice;
        private RuntimeFeatureManifest runtimeFeatureManifest;
        private CodegenOptimizationManifest codegenOptimizationManifest;

        private RuntimeSession(SourceFileContext source, compilerv1Parser.ProgramContext tree) {
            this.source = source;
            this.tree = tree;
        }

        private SourceFileContext source() {
            return source;
        }

        private compilerv1Parser.ProgramContext tree() {
            return tree;
        }

        private MemorySafetyDevice memorySafetyDevice() {
            if (memorySafetyDevice == null) {
                memorySafetyDevice = new MemorySafetyDevice(source);
            }
            return memorySafetyDevice;
        }

        private RuntimeFeatureManifest runtimeFeatures() {
            if (runtimeFeatureManifest == null) {
                runtimeFeatureManifest = RuntimeFeatureManifest.analyze(tree);
            }
            return runtimeFeatureManifest;
        }

        private CodegenOptimizationManifest codegenOptimizations() {
            if (codegenOptimizationManifest == null) {
                codegenOptimizationManifest = CodegenOptimizationManifest.analyze(source, tree);
            }
            return codegenOptimizationManifest;
        }
    }

    static final class RuntimeFeatureManifest {
        private final boolean usesAutofmtRuntime;
        private final boolean usesGoAsyncRuntime;
        private final boolean usesIrRuntime;
        private final boolean usesIscRuntime;
        private final boolean usesFileRuntime;
        private final boolean usesMemstructRuntime;
        private final boolean usesSchedulerRuntime;
        private final boolean usesPhase3Runtime;
        private final boolean totalProgramGc;
        private final boolean borrowCheckerOff;

        private RuntimeFeatureManifest(boolean usesAutofmtRuntime,
                                       boolean usesGoAsyncRuntime,
                                       boolean usesIrRuntime,
                                       boolean usesIscRuntime,
                                       boolean usesFileRuntime,
                                       boolean usesMemstructRuntime,
                                       boolean usesSchedulerRuntime,
                                       boolean usesPhase3Runtime,
                                       boolean totalProgramGc,
                                       boolean borrowCheckerOff) {
            this.usesAutofmtRuntime = usesAutofmtRuntime;
            this.usesGoAsyncRuntime = usesGoAsyncRuntime;
            this.usesIrRuntime = usesIrRuntime;
            this.usesIscRuntime = usesIscRuntime;
            this.usesFileRuntime = usesFileRuntime;
            this.usesMemstructRuntime = usesMemstructRuntime;
            this.usesSchedulerRuntime = usesSchedulerRuntime;
            this.usesPhase3Runtime = usesPhase3Runtime;
            this.totalProgramGc = totalProgramGc;
            this.borrowCheckerOff = borrowCheckerOff;
        }

        boolean usesAutofmtRuntime() {
            return usesAutofmtRuntime;
        }

        boolean usesGoAsyncRuntime() {
            return usesGoAsyncRuntime;
        }

        boolean usesIrRuntime() {
            return usesIrRuntime;
        }

        boolean usesIscRuntime() {
            return usesIscRuntime;
        }

        boolean usesFileRuntime() {
            return usesFileRuntime;
        }

        boolean usesMemstructRuntime() {
            return usesMemstructRuntime;
        }

        boolean usesSchedulerRuntime() {
            return usesSchedulerRuntime;
        }

        boolean usesPhase3Runtime() {
            return usesPhase3Runtime;
        }

        boolean totalProgramGc() {
            return totalProgramGc;
        }

        boolean borrowCheckerOff() {
            return borrowCheckerOff;
        }

        static RuntimeFeatureManifest analyze(compilerv1Parser.ProgramContext tree) {
            RuntimeFeatureScanner scanner = new RuntimeFeatureScanner();
            scanner.visit(tree);
            return new RuntimeFeatureManifest(scanner.usesAutofmtRuntime,
                    scanner.usesGoAsyncRuntime,
                    scanner.usesIrRuntime,
                    scanner.usesIscRuntime,
                    scanner.usesFileRuntime,
                    scanner.usesMemstructRuntime,
                    scanner.usesSchedulerRuntime,
                    scanner.usesPhase3Runtime,
                    scanner.totalProgramGc,
                    scanner.borrowCheckerOff);
        }

        private static final class RuntimeFeatureScanner extends compilerv1BaseVisitor<Void> {
            private boolean usesAutofmtRuntime;
            private boolean usesGoAsyncRuntime;
            private boolean usesIrRuntime;
            private boolean usesIscRuntime;
            private boolean usesFileRuntime;
            private boolean usesMemstructRuntime;
            private boolean usesSchedulerRuntime;
            private boolean usesPhase3Runtime;
            private boolean totalProgramGc;
            private boolean borrowCheckerOff;

            @Override
            public Void visitTypeRef(compilerv1Parser.TypeRefContext ctx) {
                if (ctx != null && ctx.typeAtom() != null) {
                    String typeName = ctx.typeAtom().getText();
                    if ("isc".equals(typeName)) {
                        usesIscRuntime = true;
                    }
                    if ("file".equals(typeName)) {
                        usesFileRuntime = true;
                    }
                }
                return super.visitTypeRef(ctx);
            }

            @Override
            public Void visitPrimary(compilerv1Parser.PrimaryContext ctx) {
                if (ctx != null && ctx.SUCCESS() != null) {
                    usesIscRuntime = true;
                }
                return super.visitPrimary(ctx);
            }

            @Override
            public Void visitFunctionCall(compilerv1Parser.FunctionCallContext ctx) {
                if (ctx != null && ctx.ID() != null) {
                    String functionName = ctx.ID().getText();
                    if ("cerr".equals(functionName) || "terminalcerr".equals(functionName)) {
                        usesIscRuntime = true;
                    }
                    if ("open".equals(functionName)) {
                        usesFileRuntime = true;
                    }
                }
                return super.visitFunctionCall(ctx);
            }

            @Override
            public Void visitOpstruct(compilerv1Parser.OpstructContext ctx) {
                usesPhase3Runtime = true;
                return super.visitOpstruct(ctx);
            }

            @Override
            public Void visitMemstruct(compilerv1Parser.MemstructContext ctx) {
                usesMemstructRuntime = true;
                if (ctx != null && ctx.communalQualifier() != null) {
                    usesSchedulerRuntime = true;
                }
                return super.visitMemstruct(ctx);
            }

            @Override
            public Void visitStruct(compilerv1Parser.StructContext ctx) {
                if (ctx != null && ctx.communalQualifier() != null) {
                    usesSchedulerRuntime = true;
                }
                return super.visitStruct(ctx);
            }

            @Override
            public Void visitTypedefOpstruct(compilerv1Parser.TypedefOpstructContext ctx) {
                usesPhase3Runtime = true;
                return super.visitTypedefOpstruct(ctx);
            }

            @Override
            public Void visitTypedefOpstructSession(compilerv1Parser.TypedefOpstructSessionContext ctx) {
                usesPhase3Runtime = true;
                usesIrRuntime = true;
                return super.visitTypedefOpstructSession(ctx);
            }

            @Override
            public Void visitTypedefOpstructPhraseStmt(compilerv1Parser.TypedefOpstructPhraseStmtContext ctx) {
                usesPhase3Runtime = true;
                usesIrRuntime = true;
                return super.visitTypedefOpstructPhraseStmt(ctx);
            }

            @Override
            public Void visitScheduleDecl(compilerv1Parser.ScheduleDeclContext ctx) {
                usesSchedulerRuntime = true;
                return super.visitScheduleDecl(ctx);
            }

            @Override
            public Void visitSchedulerStartStmt(compilerv1Parser.SchedulerStartStmtContext ctx) {
                usesSchedulerRuntime = true;
                return super.visitSchedulerStartStmt(ctx);
            }

            @Override
            public Void visitSchedulerInsertStmt(compilerv1Parser.SchedulerInsertStmtContext ctx) {
                usesSchedulerRuntime = true;
                return super.visitSchedulerInsertStmt(ctx);
            }

            @Override
            public Void visitSchedulerVoidStmt(compilerv1Parser.SchedulerVoidStmtContext ctx) {
                usesSchedulerRuntime = true;
                return super.visitSchedulerVoidStmt(ctx);
            }

            @Override
            public Void visitPhase3Directive(compilerv1Parser.Phase3DirectiveContext ctx) {
                usesPhase3Runtime = true;
                if (ctx != null && ctx.ID().size() > 1
                        && "scheduler".equals(ctx.ID(0).getText())
                        && "eevf".equals(ctx.ID(1).getText())) {
                    usesSchedulerRuntime = true;
                }
                return super.visitPhase3Directive(ctx);
            }

            @Override
            public Void visitSettingDirective(compilerv1Parser.SettingDirectiveContext ctx) {
                if (ctx == null || ctx.ID() == null || ctx.settingValue() == null) {
                    return super.visitSettingDirective(ctx);
                }
                String key = ctx.ID().getText();
                String value = normalizeSettingValue(ctx.settingValue().getText());
                if ("scheduler".equals(key)) {
                    usesPhase3Runtime = true;
                    if ("eevf".equals(value)) {
                        usesSchedulerRuntime = true;
                    }
                } else if ("fallback".equals(key) || "macro_mode".equals(key)) {
                    usesPhase3Runtime = true;
                } else if (("gc".equals(key) || "gcmode".equals(key)) && "total".equals(value)) {
                    totalProgramGc = true;
                } else if (("borrow_checker".equals(key) || "borrow_check".equals(key))
                        && ("off".equals(value) || "none".equals(value))) {
                    borrowCheckerOff = true;
                }
                return super.visitSettingDirective(ctx);
            }

            private String normalizeSettingValue(String rawValue) {
                if (rawValue == null || rawValue.length() < 2) {
                    return rawValue;
                }
                if ((rawValue.startsWith("\"") && rawValue.endsWith("\""))
                        || (rawValue.startsWith("'") && rawValue.endsWith("'"))) {
                    return rawValue.substring(1, rawValue.length() - 1);
                }
                return rawValue;
            }

            @Override
            public Void visitInstanceValue(compilerv1Parser.InstanceValueContext ctx) {
                if (ctx != null && ctx.allocatorUseSuffix() != null) {
                    usesMemstructRuntime = true;
                }
                return super.visitInstanceValue(ctx);
            }

            @Override
            public Void visitMacro(compilerv1Parser.MacroContext ctx) {
                if (ctx != null && ctx.macroQualifier() != null && ctx.macroQualifier().getText().contains("dynamic_macro")) {
                    usesPhase3Runtime = true;
                }
                return super.visitMacro(ctx);
            }

            @Override
            public Void visitAutocatchStatement(compilerv1Parser.AutocatchStatementContext ctx) {
                usesIscRuntime = true;
                return super.visitAutocatchStatement(ctx);
            }

            @Override
            public Void visitGcDirective(compilerv1Parser.GcDirectiveContext ctx) {
                if (ctx.ID() != null && "total".equals(ctx.ID().getText())) {
                    totalProgramGc = true;
                }
                return super.visitGcDirective(ctx);
            }

            @Override
            public Void visitBorrowCheckerDirective(compilerv1Parser.BorrowCheckerDirectiveContext ctx) {
                if (ctx.ID() != null && ("off".equals(ctx.ID().getText()) || "none".equals(ctx.ID().getText()))) {
                    borrowCheckerOff = true;
                }
                return super.visitBorrowCheckerDirective(ctx);
            }

            @Override
            public Void visitAutofmtdeclareScope(compilerv1Parser.AutofmtdeclareScopeContext ctx) {
                usesAutofmtRuntime = true;
                return super.visitAutofmtdeclareScope(ctx);
            }

            @Override
            public Void visitAsyncCall(compilerv1Parser.AsyncCallContext ctx) {
                usesGoAsyncRuntime = true;
                return super.visitAsyncCall(ctx);
            }

            @Override
            public Void visitNativemode(compilerv1Parser.NativemodeContext ctx) {
                usesIrRuntime = true;
                return super.visitNativemode(ctx);
            }

            @Override
            public Void visitSyscallStmt(compilerv1Parser.SyscallStmtContext ctx) {
                usesIrRuntime = true;
                return super.visitSyscallStmt(ctx);
            }
        }
    }

    static final class CodegenOptimizationManifest {
        private final Map<String, FunctionCodegenSummary> functionSummaries;

        private CodegenOptimizationManifest(Map<String, FunctionCodegenSummary> functionSummaries) {
            this.functionSummaries = Map.copyOf(functionSummaries);
        }

        FunctionCodegenSummary functionSummary(String name) {
            return functionSummaries.get(name);
        }

        static CodegenOptimizationManifest analyze(SourceFileContext source, compilerv1Parser.ProgramContext tree) {
            MemorySafetyChecker checker = new MemorySafetyChecker(source);
            checker.collectGlobalSymbols(tree);
            checker.collectFunctionSummaries(tree);

            Map<String, FunctionCodegenSummary> summaries = new LinkedHashMap<>();
            for (Map.Entry<String, MemorySafetyChecker.FunctionSummary> entry : checker.functionSummaries.entrySet()) {
                summaries.put(entry.getKey(), FunctionCodegenSummary.from(entry.getValue()));
            }
            return new CodegenOptimizationManifest(summaries);
        }

        static final class FunctionCodegenSummary {
            private final Set<Integer> restrictParameterIndices;

            private FunctionCodegenSummary(Set<Integer> restrictParameterIndices) {
                this.restrictParameterIndices = Set.copyOf(restrictParameterIndices);
            }

            boolean shouldEmitRestrict(int parameterIndex) {
                return restrictParameterIndices.contains(parameterIndex);
            }

            private static FunctionCodegenSummary from(MemorySafetyChecker.FunctionSummary summary) {
                Set<Integer> restrictIndices = new LinkedHashSet<>();
                if (!summary.hasUnknownReturnedReferenceOrigin()) {
                    for (Integer index : summary.mutableBorrowParameters) {
                        if (index == null || index < 0 || index >= summary.parameters.size()) {
                            continue;
                        }
                        MemorySafetyChecker.ParameterModel parameter = summary.parameters.get(index);
                        if (parameter.type == null || !parameter.type.isReference()) {
                            continue;
                        }
                        if (summary.returnedReferenceParameterIndices.contains(index)) {
                            continue;
                        }
                        Set<MemorySafetyChecker.ParameterEscapeKind> escapes = summary.escapingParameters.get(index);
                        if (escapes != null && !escapes.isEmpty()) {
                            continue;
                        }
                        restrictIndices.add(index);
                    }
                }
                return new FunctionCodegenSummary(restrictIndices);
            }
        }
    }

    static final class CompilerRuntimeCycle {
        private final RuntimeSession session;
        private final FormattingErrorListener formattingErrorListener;
        private final int syntaxErrorCount;
        private final List<RuntimePhase> phases;

        private CompilerRuntimeCycle(RuntimeSession session, FormattingErrorListener formattingErrorListener,
                int syntaxErrorCount, List<RuntimePhase> phases) {
            this.session = session;
            this.formattingErrorListener = formattingErrorListener;
            this.syntaxErrorCount = syntaxErrorCount;
            this.phases = phases;
        }

        static CompilerRuntimeCycle create(Path sourcePath, String program) {
            return create(sourcePath, program, defaultPhases());
        }

        static CompilerRuntimeCycle create(Path sourcePath, String program, List<RuntimePhase> phases) {
            SourceFileContext source = new SourceFileContext(sourcePath, program);
            CharStream input = CharStreams.fromString(program);
            compilerv1Lexer lexer = new compilerv1Lexer(input);
            CommonTokenStream tokens = new CommonTokenStream(lexer);
            tokens.fill();
            compilerv1Parser parser = new compilerv1Parser(tokens);
            parser.removeErrorListeners();
            FormattingErrorListener errorListener = new FormattingErrorListener(source);
            parser.addErrorListener(errorListener);
            compilerv1Parser.ProgramContext tree = parser.program();
            RuntimeSession session = new RuntimeSession(source, tree);
            return new CompilerRuntimeCycle(session, errorListener, parser.getNumberOfSyntaxErrors(), List.copyOf(phases));
        }

        compilerv1Parser.ProgramContext tree() {
            return session.tree();
        }

        RuntimeFeatureManifest runtimeFeatures() {
            return session.runtimeFeatures();
        }

        CodegenOptimizationManifest codegenOptimizations() {
            return session.codegenOptimizations();
        }

        void runPreCodegenPhases() {
            validateSyntax();
            for (RuntimePhase phase : phases) {
                try {
                    phase.execute(session);
                } catch (ApolloCompilationFailure ex) {
                    throw ex;
                } catch (RuntimeException ex) {
                    throw wrapCompilerFailure(phase.phaseName(), ex);
                }
            }
        }

        ApolloCompilationFailure wrapCompilerFailure(RuntimeException ex) {
            return new ApolloCompilationFailure(session.source().formatCompilerFailure(ex), ex);
        }

        ApolloCompilationFailure wrapCompilerFailure(String stage, RuntimeException ex) {
            return new ApolloCompilationFailure(session.source().formatCompilerFailure(stage, ex), ex);
        }

        private void validateSyntax() {
            if (syntaxErrorCount > 0) {
                throw new ApolloCompilationFailure(formattingErrorListener.buildFailureMessage(syntaxErrorCount));
            }
        }

        static List<String> defaultPhaseNames() {
            List<String> names = new ArrayList<>();
            for (RuntimePhase phase : defaultPhases()) {
                names.add(phase.phaseName());
            }
            return List.copyOf(names);
        }

        private static List<RuntimePhase> defaultPhases() {
            return List.of(
                    new Phase3SurfacePhase(),
                    new UnsafeBoundaryPhase(),
                    new OwnershipPhase(),
                    new BorrowPhase(),
                    new MemorySafetyFinalizePhase(),
                    new MemoryLeakPhase());
        }
    }

    private static final class Phase3SurfacePhase implements RuntimePhase {
        @Override
        public String phaseName() {
            return "phase3-surface";
        }

        @Override
        public void execute(RuntimeSession session) {
            new Phase3SurfaceValidator(session.source()).validate(session.tree());
        }
    }

    private static final class MemorySafetyDevice {
        private final MemorySafetyChecker checker;

        private MemorySafetyDevice(SourceFileContext source) {
            this.checker = new MemorySafetyChecker(source);
        }

        private void runUnsafeBoundaryChecks(compilerv1Parser.ProgramContext tree) {
            checker.runUnsafeBoundaryChecks(tree);
        }

        private void runOwnershipChecks(compilerv1Parser.ProgramContext tree) {
            checker.runOwnershipChecks(tree);
        }

        private void runBorrowChecks(compilerv1Parser.ProgramContext tree) {
            checker.runBorrowChecks(tree);
        }

        private void throwIfErrors() {
            checker.throwIfErrors();
        }
    }

    private static final class Phase3SurfaceValidator extends compilerv1BaseVisitor<Void> {
        private final SourceFileContext source;
        private final List<String> diagnostics = new ArrayList<>();
        private final Set<String> declaredOpstructs = new LinkedHashSet<>();
        private final Set<String> declaredOpstructAliases = new LinkedHashSet<>();
        private final List<ParserRuleContext> communalTypeContexts = new ArrayList<>();
        private boolean schedulerDirectiveEnabled;

        private Phase3SurfaceValidator(SourceFileContext source) {
            this.source = source;
        }

        private void validate(compilerv1Parser.ProgramContext tree) {
            collectOpstructNames(tree);
            collectCommunalTypes(tree);
            visit(tree);
            if (!communalTypeContexts.isEmpty() && !schedulerDirectiveEnabled) {
                addDiagnostic(communalTypeContexts.get(0), "communal types require `#[scheduler(eevf)]`"
                        + System.lineSeparator() + "suggested fix: add `#[scheduler(eevf)]` before declaring `@communal` types");
            }
            throwIfErrors();
        }

        private void collectOpstructNames(compilerv1Parser.ProgramContext tree) {
            if (tree == null || tree.children == null) {
                return;
            }
            for (ParseTree child : tree.children) {
                if (child instanceof compilerv1Parser.OpstructContext) {
                    declaredOpstructs.add(((compilerv1Parser.OpstructContext) child).ID().getText());
                } else if (child instanceof compilerv1Parser.TypedefOpstructContext) {
                    compilerv1Parser.TypedefOpstructContext typedefCtx = (compilerv1Parser.TypedefOpstructContext) child;
                    if (typedefCtx.typedefOpstructDslBody() != null) {
                        declaredOpstructAliases.add(typedefCtx.ID(0).getText());
                    } else if (typedefCtx.ID().size() > 1 && typedefCtx.ID(1) != null) {
                        declaredOpstructAliases.add(typedefCtx.ID(1).getText());
                    }
                }
            }
        }

        private void collectCommunalTypes(compilerv1Parser.ProgramContext tree) {
            if (tree == null || tree.children == null) {
                return;
            }
            for (ParseTree child : tree.children) {
                if (child instanceof compilerv1Parser.StructContext) {
                    compilerv1Parser.StructContext structCtx = (compilerv1Parser.StructContext) child;
                    if (structCtx.communalQualifier() != null) {
                        communalTypeContexts.add(structCtx);
                    }
                } else if (child instanceof compilerv1Parser.MemstructContext) {
                    compilerv1Parser.MemstructContext memstructCtx = (compilerv1Parser.MemstructContext) child;
                    if (memstructCtx.communalQualifier() != null) {
                        communalTypeContexts.add(memstructCtx);
                    }
                }
            }
        }

        @Override
        public Void visitPhase3Directive(compilerv1Parser.Phase3DirectiveContext ctx) {
            String key = ctx.ID(0).getText();
            String value = ctx.ID(1).getText();
            validatePhase3Setting(ctx, key, value, false);
            return super.visitPhase3Directive(ctx);
        }

        @Override
        public Void visitSettingDirective(compilerv1Parser.SettingDirectiveContext ctx) {
            if (ctx == null || ctx.ID() == null || ctx.settingValue() == null) {
                return super.visitSettingDirective(ctx);
            }
            String key = ctx.ID().getText();
            String value = normalizeSettingValue(ctx.settingValue().getText());
            if ("gc".equals(key) || "gcmode".equals(key)) {
                if (!"total".equals(value)) {
                    addDiagnostic(ctx, "unsupported gc setting value `" + value + "`"
                            + System.lineSeparator() + "suggested fix: use `#[setting(gc, total)]` or `#[setting(gcmode, total)]`");
                }
            } else if ("borrow_checker".equals(key) || "borrow_check".equals(key)) {
                if (!"off".equals(value) && !"none".equals(value)) {
                    addDiagnostic(ctx, "unsupported borrow checker setting value `" + value + "`"
                            + System.lineSeparator() + "suggested fix: use `#[setting(borrow_checker, off)]` or `#[setting(borrow_check, none)]`");
                }
            } else {
                validatePhase3Setting(ctx, key, value, true);
            }
            return super.visitSettingDirective(ctx);
        }

        private void validatePhase3Setting(ParserRuleContext ctx, String key, String value, boolean settingForm) {
            if ("fallback".equals(key)) {
                if (!"allow".equals(value) && !"deny".equals(value)) {
                    addDiagnostic(ctx, "unsupported fallback policy `" + value + "`"
                            + System.lineSeparator() + suggestedSettingUsage(settingForm,
                            "use `#[fallback(allow)]` or `#[fallback(deny)]`",
                            "use `#[setting(fallback, allow)]` or `#[setting(fallback, deny)]`"));
                }
                return;
            }
            if ("macro_mode".equals(key)) {
                if (!"runtime".equals(value) && !"static".equals(value)) {
                    addDiagnostic(ctx, "unsupported macro_mode `" + value + "`"
                            + System.lineSeparator() + suggestedSettingUsage(settingForm,
                            "use `#[macro_mode(runtime)]` or `#[macro_mode(static)]`",
                            "use `#[setting(macro_mode, runtime)]` or `#[setting(macro_mode, static)]`"));
                }
                return;
            }
            if ("scheduler".equals(key)) {
                if (!"eevf".equals(value)) {
                    addDiagnostic(ctx, "unsupported scheduler `" + value + "`"
                            + System.lineSeparator() + suggestedSettingUsage(settingForm,
                            "use `#[scheduler(eevf)]`",
                            "use `#[setting(scheduler, eevf)]`"));
                } else {
                    schedulerDirectiveEnabled = true;
                }
                return;
            }
            addDiagnostic(ctx, (settingForm ? "unknown setting `" : "unknown Phase 3 directive `") + key + "`"
                    + System.lineSeparator() + (settingForm
                    ? "suggested fix: use a supported setting such as `gc`, `gcmode`, `borrow_checker`, `borrow_check`, `fallback`, `macro_mode`, or `scheduler`"
                    : "suggested fix: remove the directive or use a supported key such as `fallback`, `macro_mode`, or `scheduler`"));
        }

        private String suggestedSettingUsage(boolean settingForm, String directiveSuggestion, String settingSuggestion) {
            return "suggested fix: " + (settingForm ? settingSuggestion : directiveSuggestion);
        }

        private String normalizeSettingValue(String rawValue) {
            if (rawValue == null || rawValue.length() < 2) {
                return rawValue;
            }
            if ((rawValue.startsWith("\"") && rawValue.endsWith("\""))
                    || (rawValue.startsWith("'") && rawValue.endsWith("'"))) {
                return rawValue.substring(1, rawValue.length() - 1);
            }
            return rawValue;
        }

        @Override
        public Void visitGcDirective(compilerv1Parser.GcDirectiveContext ctx) {
            if (ctx.ID() == null || !"total".equals(ctx.ID().getText())) {
                String value = ctx.ID() != null ? ctx.ID().getText() : "<missing>";
                addDiagnostic(ctx, "unsupported gc directive value `" + value + "`"
                        + System.lineSeparator() + "suggested fix: use `#[gc(total)]` or `#[gcmode(total)]`");
            }
            return super.visitGcDirective(ctx);
        }

        @Override
        public Void visitBorrowCheckerDirective(compilerv1Parser.BorrowCheckerDirectiveContext ctx) {
            if (ctx.ID() == null || (!"off".equals(ctx.ID().getText()) && !"none".equals(ctx.ID().getText()))) {
                String value = ctx.ID() != null ? ctx.ID().getText() : "<missing>";
                addDiagnostic(ctx, "unsupported borrow_checker directive value `" + value + "`"
                        + System.lineSeparator() + "suggested fix: use `#[borrow_checker(off)]` or `#[borrow_check(none)]`");
            }
            return super.visitBorrowCheckerDirective(ctx);
        }

        @Override
        public Void visitTypedefOpstruct(compilerv1Parser.TypedefOpstructContext ctx) {
            if (ctx.typedefOpstructDslBody() != null) {
                return super.visitTypedefOpstruct(ctx);
            }
            String target = ctx.ID(0).getText();
            if (!declaredOpstructs.contains(target) && !declaredOpstructAliases.contains(target)) {
                addDiagnostic(ctx, "typedef opstruct target `" + target + "` is not declared");
            }
            return super.visitTypedefOpstruct(ctx);
        }

        @Override
        public Void visitOpstruct(compilerv1Parser.OpstructContext ctx) {
            Set<String> fieldNames = new LinkedHashSet<>();
            for (compilerv1Parser.FieldContext field : ctx.opstructBody().field()) {
                String fieldName = field.ID().getText();
                if (!fieldNames.add(fieldName)) {
                    addDiagnostic(field, "duplicate opstruct field `" + fieldName + "`");
                }
            }
            return super.visitOpstruct(ctx);
        }

        private void addDiagnostic(ParserRuleContext ctx, String message) {
            diagnostics.add(source.formatRuleDiagnostic("error", "phase3-surface", ctx, message));
        }

        private void throwIfErrors() {
            if (diagnostics.isEmpty()) {
                return;
            }
            StringBuilder builder = new StringBuilder();
            builder.append("Compilation aborted with ").append(diagnostics.size()).append(" Phase 3 surface error");
            if (diagnostics.size() != 1) {
                builder.append("s");
            }
            builder.append(":").append(System.lineSeparator());
            for (int index = 0; index < diagnostics.size(); index++) {
                if (index > 0) {
                    builder.append(System.lineSeparator()).append(System.lineSeparator());
                }
                builder.append(diagnostics.get(index));
            }
            throw new ApolloCompilationFailure(builder.toString());
        }
    }

    private static final class UnsafeBoundaryPhase implements RuntimePhase {
        @Override
        public String phaseName() {
            return "unsafe-boundary";
        }

        @Override
        public void execute(RuntimeSession session) {
            session.memorySafetyDevice().runUnsafeBoundaryChecks(session.tree());
        }
    }

    private static final class OwnershipPhase implements RuntimePhase {
        @Override
        public String phaseName() {
            return "ownership";
        }

        @Override
        public void execute(RuntimeSession session) {
            if (session.runtimeFeatures().borrowCheckerOff()) {
                return;
            }
            session.memorySafetyDevice().runOwnershipChecks(session.tree());
        }
    }

    private static final class BorrowPhase implements RuntimePhase {
        @Override
        public String phaseName() {
            return "borrow";
        }

        @Override
        public void execute(RuntimeSession session) {
            if (session.runtimeFeatures().borrowCheckerOff()) {
                return;
            }
            session.memorySafetyDevice().runBorrowChecks(session.tree());
        }
    }

    private static final class MemorySafetyFinalizePhase implements RuntimePhase {
        @Override
        public String phaseName() {
            return "memory-safety-finalize";
        }

        @Override
        public void execute(RuntimeSession session) {
            session.memorySafetyDevice().throwIfErrors();
        }
    }

    private static final class MemoryLeakPhase implements RuntimePhase {
        @Override
        public String phaseName() {
            return "memory-leak";
        }

        @Override
        public void execute(RuntimeSession session) {
            MemoryLeakChecker leakChecker = new MemoryLeakChecker(session.source());
            leakChecker.visit(session.tree());
            leakChecker.printWarnings();
        }
    }

    static final class SourceFileContext {
        private final Path sourcePath;
        private final String[] lines;

        private SourceFileContext(Path sourcePath, String program) {
            this.sourcePath = sourcePath.toAbsolutePath().normalize();
            this.lines = program.split("\\R", -1);
        }

        private String buildSourceExcerpt(int line, int column, int width) {
            if (line < 1 || line > lines.length) {
                return "";
            }
            String sourceLine = lines[line - 1];
            String lineNumber = Integer.toString(line);
            String gutter = "  " + lineNumber + " | ";
            int safeColumn = Math.max(1, column);
            int pointerWidth = Math.max(1, Math.min(width, Math.max(1, sourceLine.length() - safeColumn + 2)));
            return gutter + sourceLine + System.lineSeparator()
                    + "  " + " ".repeat(lineNumber.length()) + " | " + " ".repeat(safeColumn - 1) + "^"
                    + "~".repeat(Math.max(0, pointerWidth - 1));
        }

        private String formatDiagnostic(String severity, String category, int line, int column, String message, String offendingText) {
            StringBuilder builder = new StringBuilder();
            builder.append(severity).append(" [").append(category).append("] ")
                    .append(sourcePath).append(":").append(line).append(":").append(column)
                    .append(System.lineSeparator())
                    .append(message);
            if (offendingText != null && !offendingText.isEmpty()) {
                builder.append(System.lineSeparator()).append("offending token: ").append(offendingText);
            }
            String excerpt = buildSourceExcerpt(line, column, offendingText == null ? 1 : offendingText.length());
            if (!excerpt.isEmpty()) {
                builder.append(System.lineSeparator()).append(excerpt);
            }
            return builder.toString();
        }

        private String formatRuleDiagnostic(String severity, String category, ParserRuleContext ctx, String message) {
            Token token = ctx != null ? ctx.getStart() : null;
            int line = token != null ? token.getLine() : 1;
            int column = token != null ? token.getCharPositionInLine() + 1 : 1;
            String offendingText = token != null && token.getText() != null ? token.getText() : (ctx != null ? ctx.getText() : "");
            return formatDiagnostic(severity, category, line, column, message, offendingText);
        }

        private String formatCompilerFailure(RuntimeException ex) {
            if (ex.getMessage() != null && ex.getMessage().contains(sourcePath.toString() + ":")) {
                return ex.getMessage();
            }
            String message = ex.getMessage() != null ? ex.getMessage() : ex.getClass().getSimpleName();
            return "error [semantic] " + sourcePath + System.lineSeparator() + message;
        }

        private String formatCompilerFailure(String stage, RuntimeException ex) {
            if (ex.getMessage() != null && ex.getMessage().contains(sourcePath.toString() + ":")) {
                return ex.getMessage();
            }
            String message = ex.getMessage() != null ? ex.getMessage() : ex.getClass().getSimpleName();
            return "error [semantic] " + sourcePath + System.lineSeparator()
                    + "compiler runtime phase `" + stage + "` failed: " + message;
        }

        private String formatLeakWarning(String kind, ParserRuleContext ctx, String detail, String releaseHint) {
            Token token = ctx.getStart();
            int line = token != null ? token.getLine() : 1;
            int column = token != null ? token.getCharPositionInLine() + 1 : 1;
            String offendingText = token != null && token.getText() != null ? token.getText() : ctx.getText();
            StringBuilder builder = new StringBuilder();
            builder.append("warning [memory-leak] ")
                    .append(sourcePath).append(":").append(line).append(":").append(column)
                    .append(System.lineSeparator())
                    .append(detail);
            if (releaseHint != null && !releaseHint.isEmpty()) {
                builder.append(System.lineSeparator()).append("suggested fix: ").append(releaseHint);
            }
            String excerpt = buildSourceExcerpt(line, column, offendingText == null ? 1 : offendingText.length());
            if (!excerpt.isEmpty()) {
                builder.append(System.lineSeparator()).append(excerpt);
            }
            return builder.toString();
        }
    }

    private static final class FormattingErrorListener extends BaseErrorListener {
        private final SourceFileContext source;
        private final List<String> diagnostics = new ArrayList<>();

        private FormattingErrorListener(SourceFileContext source) {
            this.source = source;
        }

        @Override
        public void syntaxError(Recognizer<?, ?> recognizer, Object offendingSymbol, int line, int charPositionInLine,
                                String msg, RecognitionException e) {
            String offendingText = null;
            if (offendingSymbol instanceof Token) {
                Token token = (Token) offendingSymbol;
                offendingText = token.getText();
                if (recognizer instanceof Parser) {
                    Parser parser = (Parser) recognizer;
                    String expected = parser.getExpectedTokens().toString(parser.getVocabulary());
                    if (expected != null && !expected.isEmpty()) {
                        msg = msg + System.lineSeparator() + "expected one of: " + expected;
                    }
                }
            }
            diagnostics.add(source.formatDiagnostic("error", "syntax", line, charPositionInLine + 1, msg, offendingText));
        }

        private String buildFailureMessage(int errorCount) {
            StringBuilder builder = new StringBuilder();
            builder.append("Compilation aborted with ").append(errorCount).append(" syntax error");
            if (errorCount != 1) {
                builder.append("s");
            }
            builder.append(":").append(System.lineSeparator());
            for (int index = 0; index < diagnostics.size(); index++) {
                if (index > 0) {
                    builder.append(System.lineSeparator()).append(System.lineSeparator());
                }
                builder.append(diagnostics.get(index));
            }
            return builder.toString();
        }
    }

    private static final class MemorySafetyChecker extends compilerv1BaseVisitor<Void> {
        private final SourceFileContext source;
        private final List<String> diagnostics = new ArrayList<>();
        private final Map<String, GlobalSymbol> globalSymbols = new LinkedHashMap<>();
        private final Map<String, FunctionModel> functionModels = new LinkedHashMap<>();
        private final Map<String, FunctionSummary> functionSummaries = new LinkedHashMap<>();
        private final Set<String> communalTypes = new LinkedHashSet<>();
        private final Set<String> scheduledEntryFunctions = new LinkedHashSet<>();
        private final Set<String> scheduledReachableFunctions = new LinkedHashSet<>();
        private boolean unsafeBoundaryMode;
        private boolean ownershipMode;
        private boolean borrowMode;
        private int unsafeDepth = 0;
        private int bypassDepth = 0;

        private MemorySafetyChecker(SourceFileContext source) {
            this.source = source;
        }

        private void runUnsafeBoundaryChecks(compilerv1Parser.ProgramContext tree) {
            configureModes(true, false, false);
            visit(tree);
        }

        private void runOwnershipChecks(compilerv1Parser.ProgramContext tree) {
            configureModes(false, true, false);
            collectGlobalSymbols(tree);
            collectCommunalTypes(tree);
            collectScheduledEntryFunctions(tree);
            collectFunctionSummaries(tree);
            buildScheduledFunctionClosure();
            visit(tree);
        }

        private void runBorrowChecks(compilerv1Parser.ProgramContext tree) {
            configureModes(false, false, true);
            collectGlobalSymbols(tree);
            collectCommunalTypes(tree);
            collectScheduledEntryFunctions(tree);
            collectFunctionSummaries(tree);
            buildScheduledFunctionClosure();
            visit(tree);
        }

        private void configureModes(boolean unsafeBoundaryMode, boolean ownershipMode, boolean borrowMode) {
            this.unsafeBoundaryMode = unsafeBoundaryMode;
            this.ownershipMode = ownershipMode;
            this.borrowMode = borrowMode;
            this.globalSymbols.clear();
            this.functionModels.clear();
            this.functionSummaries.clear();
            this.communalTypes.clear();
            this.scheduledEntryFunctions.clear();
            this.scheduledReachableFunctions.clear();
            this.unsafeDepth = 0;
            this.bypassDepth = 0;
        }

        @Override
        public Void visitProgram(compilerv1Parser.ProgramContext ctx) {
            if (unsafeBoundaryMode) {
                collectGlobalSymbols(ctx);
            }
            return super.visitProgram(ctx);
        }

        @Override
        public Void visitUnsafeBlock(compilerv1Parser.UnsafeBlockContext ctx) {
            unsafeDepth++;
            try {
                return super.visitUnsafeBlock(ctx);
            } finally {
                unsafeDepth--;
            }
        }

        @Override
        public Void visitUnsafeLineStmt(compilerv1Parser.UnsafeLineStmtContext ctx) {
            unsafeDepth++;
            try {
                return super.visitUnsafeLineStmt(ctx);
            } finally {
                unsafeDepth--;
            }
        }

        @Override
        public Void visitBypassBlock(compilerv1Parser.BypassBlockContext ctx) {
            bypassDepth++;
            try {
                return super.visitBypassBlock(ctx);
            } finally {
                bypassDepth--;
            }
        }

        @Override
        public Void visitFunction(compilerv1Parser.FunctionContext ctx) {
            if (unsafeBoundaryMode) {
                checkRawPointerReturnType(ctx.returnType(), ctx, "function");
            }
            if (ownershipMode || borrowMode) {
                analyzeFunction(buildFunctionModel(ctx.ID().getText(), semanticTypeFromReturn(ctx.returnType()), ctx.params(), ctx.block(), ctx));
            }
            return super.visitFunction(ctx);
        }

        @Override
        public Void visitMethod(compilerv1Parser.MethodContext ctx) {
            if (unsafeBoundaryMode) {
                checkRawPointerReturnType(ctx.returnType(), ctx, "method");
            }
            if (ownershipMode || borrowMode) {
                String methodName = ctx.ID() != null ? ctx.ID().getText() : (ctx.getText().contains("__construct") ? "__construct" : "__destruct");
                analyzeFunction(buildFunctionModel(methodName, semanticTypeFromReturn(ctx.returnType()), ctx.params(), ctx.block(), ctx));
            }
            return super.visitMethod(ctx);
        }

        @Override
        public Void visitInit(compilerv1Parser.InitContext ctx) {
            if (!unsafeBoundaryMode) {
                return super.visitInit(ctx);
            }
            requireUnsafeType(ctx.initCore().typeRef(), ctx, "raw pointer declarations are only allowed inside `@unsafe {}` blocks",
                    "replace the raw pointer with a safe reference or move the declaration into `@unsafe { ... }`");
            return super.visitInit(ctx);
        }

        @Override
        public Void visitGlobalInit(compilerv1Parser.GlobalInitContext ctx) {
            if (!unsafeBoundaryMode) {
                return super.visitGlobalInit(ctx);
            }
            compilerv1Parser.InitCoreContext init = ctx.init().initCore();
            requireUnsafeType(init.typeRef(), ctx.init(), "raw pointer globals are not allowed in safe Apollo code",
                    "replace the global raw pointer with a safe type or isolate raw memory access inside `@unsafe {}` code paths");
            return super.visitGlobalInit(ctx);
        }

        @Override
        public Void visitField(compilerv1Parser.FieldContext ctx) {
            if (!unsafeBoundaryMode) {
                return super.visitField(ctx);
            }
            requireUnsafeType(ctx.typeRef(), ctx, "raw pointer fields are not allowed in safe Apollo type definitions",
                    "use a reference or safe owning type instead of a raw pointer field");
            return super.visitField(ctx);
        }

        @Override
        public Void visitParam(compilerv1Parser.ParamContext ctx) {
            if (!unsafeBoundaryMode) {
                return super.visitParam(ctx);
            }
            if (ctx.typeRef() != null) {
                SemanticType type = semanticTypeFromTypeRef(ctx.typeRef());
                if (type != null && type.isRawPointer()) {
                    addDiagnostic(ctx, "raw pointer parameters are not allowed in safe Apollo function signatures"
                            + System.lineSeparator() + "suggested fix: use a safe reference type or contain raw pointer interop inside `@unsafe {}` code");
                }
            }
            return super.visitParam(ctx);
        }

        @Override
        public Void visitMalloc(compilerv1Parser.MallocContext ctx) {
            if (!unsafeBoundaryMode) {
                return super.visitMalloc(ctx);
            }
            requireUnsafe(ctx, "manual allocation is only allowed inside `@unsafe {}` blocks",
                    "wrap this allocation in `@unsafe { ... }` or switch to a safe managed value");
            return super.visitMalloc(ctx);
        }

        @Override
        public Void visitMntDecl(compilerv1Parser.MntDeclContext ctx) {
            if (!unsafeBoundaryMode) {
                return super.visitMntDecl(ctx);
            }
            requireUnsafe(ctx, "`mnt` allocation is only allowed inside `@unsafe {}` blocks",
                    "wrap this allocation in `@unsafe { ... }` or switch to a safe managed value");
            return super.visitMntDecl(ctx);
        }

        @Override
        public Void visitFree(compilerv1Parser.FreeContext ctx) {
            if (!unsafeBoundaryMode) {
                return super.visitFree(ctx);
            }
            requireUnsafe(ctx, "manual release is only allowed inside `@unsafe {}` blocks",
                    "wrap this release in `@unsafe { ... }`");
            return super.visitFree(ctx);
        }

        @Override
        public Void visitDelalc(compilerv1Parser.DelalcContext ctx) {
            if (!unsafeBoundaryMode) {
                return super.visitDelalc(ctx);
            }
            requireUnsafe(ctx, "placement reset is only allowed inside `@unsafe {}` blocks",
                    "wrap this reset in `@unsafe { ... }`");
            return super.visitDelalc(ctx);
        }

        @Override
        public Void visitPlcnew(compilerv1Parser.PlcnewContext ctx) {
            if (!unsafeBoundaryMode) {
                return super.visitPlcnew(ctx);
            }
            requireUnsafe(ctx, "placement allocation is only allowed inside `@unsafe {}` blocks",
                    "wrap this placement allocation in `@unsafe { ... }`");
            return super.visitPlcnew(ctx);
        }

        @Override
        public Void visitPointer(compilerv1Parser.PointerContext ctx) {
            if (!unsafeBoundaryMode) {
                return super.visitPointer(ctx);
            }
            requireUnsafe(ctx, "raw pointer aliasing is only allowed inside `@unsafe {}` blocks",
                    "wrap this pointer operation in `@unsafe { ... }`");
            return super.visitPointer(ctx);
        }

        @Override
        public Void visitNativemode(compilerv1Parser.NativemodeContext ctx) {
            if (!unsafeBoundaryMode) {
                return super.visitNativemode(ctx);
            }
            requireUnsafe(ctx, "native inline interop is only allowed inside `@unsafe {}` blocks",
                    "wrap this native block in `@unsafe { ... }`");
            return super.visitNativemode(ctx);
        }

        @Override
        public Void visitDircpp(compilerv1Parser.DircppContext ctx) {
            if (!unsafeBoundaryMode) {
                return super.visitDircpp(ctx);
            }
            requireUnsafe(ctx, "raw native code injection is only allowed inside `@unsafe {}` blocks",
                    "wrap this native code block in `@unsafe { ... }`");
            return super.visitDircpp(ctx);
        }

        @Override
        public Void visitPlacementNewExpr(compilerv1Parser.PlacementNewExprContext ctx) {
            if (!unsafeBoundaryMode) {
                return super.visitPlacementNewExpr(ctx);
            }
            requireUnsafe(ctx, "placement new is only allowed inside `@unsafe {}` blocks",
                    "wrap this placement construction in `@unsafe { ... }`");
            return super.visitPlacementNewExpr(ctx);
        }

        private void collectGlobalSymbols(compilerv1Parser.ProgramContext ctx) {
            for (ParseTree child : ctx.children) {
                if (child instanceof compilerv1Parser.InitContext) {
                    compilerv1Parser.InitContext init = (compilerv1Parser.InitContext) child;
                    compilerv1Parser.InitCoreContext initCore = init.initCore();
                    globalSymbols.put(initCore.ID().getText(), new GlobalSymbol(
                            semanticTypeFromTypeRef(initCore.typeRef()),
                            isMutableQualifier(initCore),
                            init));
                } else if (child instanceof compilerv1Parser.GlobalInitContext) {
                    compilerv1Parser.InitContext init = ((compilerv1Parser.GlobalInitContext) child).init();
                    compilerv1Parser.InitCoreContext initCore = init.initCore();
                    globalSymbols.put(initCore.ID().getText(), new GlobalSymbol(
                            semanticTypeFromTypeRef(initCore.typeRef()),
                            isMutableQualifier(initCore),
                            init));
                } else if (child instanceof compilerv1Parser.EasyInitContext) {
                    compilerv1Parser.EasyInitContext init = (compilerv1Parser.EasyInitContext) child;
                    globalSymbols.put(init.ID().getText(), new GlobalSymbol(
                            autoSemanticType(),
                            isMutableQualifier(init),
                            init));
                }
            }
        }

        private void collectCommunalTypes(compilerv1Parser.ProgramContext ctx) {
            if (ctx == null || ctx.children == null) {
                return;
            }
            for (ParseTree child : ctx.children) {
                if (child instanceof compilerv1Parser.StructContext) {
                    compilerv1Parser.StructContext structCtx = (compilerv1Parser.StructContext) child;
                    if (structCtx.communalQualifier() != null) {
                        communalTypes.add(structCtx.ID().getText());
                    }
                } else if (child instanceof compilerv1Parser.MemstructContext) {
                    compilerv1Parser.MemstructContext memstructCtx = (compilerv1Parser.MemstructContext) child;
                    if (memstructCtx.communalQualifier() != null) {
                        communalTypes.add(memstructCtx.ID().getText());
                    }
                }
            }
        }

        private void collectScheduledEntryFunctions(compilerv1Parser.ProgramContext ctx) {
            if (ctx == null) {
                return;
            }
            new compilerv1BaseVisitor<Void>() {
                @Override
                public Void visitAsyncCall(compilerv1Parser.AsyncCallContext visitCtx) {
                    scheduledEntryFunctions.add(visitCtx.functionCall().ID().getText());
                    return super.visitAsyncCall(visitCtx);
                }

                @Override
                public Void visitThread(compilerv1Parser.ThreadContext visitCtx) {
                    scheduledEntryFunctions.add(visitCtx.functionCall().ID().getText());
                    return super.visitThread(visitCtx);
                }
            }.visit(ctx);
        }

        private void collectFunctionSummaries(compilerv1Parser.ProgramContext ctx) {
            for (ParseTree child : ctx.children) {
                if (child instanceof compilerv1Parser.FunctionContext) {
                    compilerv1Parser.FunctionContext functionCtx = (compilerv1Parser.FunctionContext) child;
                    FunctionModel function = buildFunctionModel(functionCtx.ID().getText(),
                            semanticTypeFromReturn(functionCtx.returnType()), functionCtx.params(), functionCtx.block(), functionCtx);
                    functionModels.put(function.name, function);
                    functionSummaries.put(function.name, summarizeFunction(function));
                }
            }
        }

        private void buildScheduledFunctionClosure() {
            scheduledReachableFunctions.clear();
            Deque<String> queue = new ArrayDeque<>(scheduledEntryFunctions);
            while (!queue.isEmpty()) {
                String functionName = queue.removeFirst();
                if (!scheduledReachableFunctions.add(functionName)) {
                    continue;
                }
                FunctionModel function = functionModels.get(functionName);
                if (function == null || function.body == null) {
                    continue;
                }
                Set<String> callees = new LinkedHashSet<>();
                collectCalledFunctions(function.body, callees);
                for (String callee : callees) {
                    if (!scheduledReachableFunctions.contains(callee)) {
                        queue.addLast(callee);
                    }
                }
            }
        }

        private void collectCalledFunctions(BlockModel block, Set<String> callees) {
            if (block == null) {
                return;
            }
            for (StatementModel statement : block.statements) {
                collectCalledFunctions(statement, callees);
            }
        }

        private void collectCalledFunctions(StatementModel statement, Set<String> callees) {
            if (statement == null) {
                return;
            }
            collectCalledFunctions(statement.expression, callees);
            collectCalledFunctions(statement.block, callees);
            collectCalledFunctions(statement.elseBlock, callees);
            if (statement.function != null) {
                collectCalledFunctions(statement.function.body, callees);
            }
        }

        private void collectCalledFunctions(ExpressionModel expression, Set<String> callees) {
            if (expression == null) {
                return;
            }
            if (expression.kind == ExpressionKind.CALL && functionModels.containsKey(expression.text)) {
                callees.add(expression.text);
            }
            for (ExpressionModel child : expression.children) {
                collectCalledFunctions(child, callees);
            }
        }

        private void analyzeFunction(FunctionModel function) {
            new BorrowChecker(function, ownershipMode, borrowMode, scheduledReachableFunctions.contains(function.name)).analyze();
        }

        private FunctionSummary summarizeFunction(FunctionModel function) {
            Map<String, Integer> parameterIndices = new LinkedHashMap<>();
            Set<Integer> sharedBorrowParameters = new LinkedHashSet<>();
            Set<Integer> mutableBorrowParameters = new LinkedHashSet<>();
            Set<Integer> consumedParameters = new LinkedHashSet<>();
            for (int index = 0; index < function.parameters.size(); index++) {
                ParameterModel parameter = function.parameters.get(index);
                parameterIndices.put(parameter.name, index);
                if (parameter.type != null && parameter.type.isReference()) {
                    if (parameter.isMutable) {
                        mutableBorrowParameters.add(index);
                    } else {
                        sharedBorrowParameters.add(index);
                    }
                } else if (parameter.type != null && !parameter.type.isCopyType()) {
                    consumedParameters.add(index);
                }
            }

            Map<Integer, Set<ParameterEscapeKind>> escapingParameters = new LinkedHashMap<>();
            collectParameterEscapes(function.body, parameterIndices, escapingParameters);

            ReturnedReferenceSummary returnedReferenceSummary = summarizeReturnedReferenceParameters(function, parameterIndices);
            return new FunctionSummary(function.name, function.parameters, function.returnType,
                    returnedReferenceSummary.parameterIndices, returnedReferenceSummary.unknown,
                    sharedBorrowParameters, mutableBorrowParameters, consumedParameters, escapingParameters);
        }

        private ReturnedReferenceSummary summarizeReturnedReferenceParameters(FunctionModel function, Map<String, Integer> parameterIndices) {
            if (function.returnType == null || !function.returnType.isReference() || function.body == null) {
                return new ReturnedReferenceSummary(Set.of(), false);
            }

            Deque<Map<String, Integer>> aliasScopes = new ArrayDeque<>();
            aliasScopes.push(new LinkedHashMap<>());
            for (int index = 0; index < function.parameters.size(); index++) {
                ParameterModel parameter = function.parameters.get(index);
                if (parameter.type != null && parameter.type.isReference()) {
                    aliasScopes.peek().put(parameter.name, index);
                }
            }

            Set<Integer> returnedParameters = new LinkedHashSet<>();
            if (!collectReturnedReferenceParameters(function.body, aliasScopes, returnedParameters)) {
                return new ReturnedReferenceSummary(returnedParameters, true);
            }
            return new ReturnedReferenceSummary(returnedParameters, false);
        }

        private boolean collectReturnedReferenceParameters(BlockModel block, Deque<Map<String, Integer>> aliasScopes,
                Set<Integer> returnedParameters) {
            if (block == null) {
                return true;
            }

            aliasScopes.push(new LinkedHashMap<>());
            try {
                for (StatementModel statement : block.statements) {
                    if (!collectReturnedReferenceParameters(statement, aliasScopes, returnedParameters)) {
                        return false;
                    }
                }
                return true;
            } finally {
                aliasScopes.pop();
            }
        }

        private boolean collectReturnedReferenceParameters(StatementModel statement, Deque<Map<String, Integer>> aliasScopes,
                Set<Integer> returnedParameters) {
            if (statement == null) {
                return true;
            }

            switch (statement.kind) {
                case INIT:
                    if (statement.type != null && statement.type.isReference()) {
                        Integer originIndex = resolveReferenceParameterIndex(statement.expression, aliasScopes);
                        if (originIndex != null) {
                            aliasScopes.peek().put(statement.name, originIndex);
                        }
                    }
                    return true;
                case ASSIGNMENT:
                    if (resolveAliasOrigin(statement.name, aliasScopes) != null) {
                        assignAliasOrigin(statement.name, resolveReferenceParameterIndex(statement.expression, aliasScopes), aliasScopes);
                    }
                    return true;
                case RETURN:
                    Integer returnedIndex = resolveReferenceParameterIndex(statement.expression, aliasScopes);
                    if (returnedIndex == null) {
                        return false;
                    }
                    returnedParameters.add(returnedIndex);
                    return true;
                case BLOCK:
                case UNSAFE_BLOCK:
                case AUTOFMT_SCOPE:
                    return collectReturnedReferenceParameters(statement.block, aliasScopes, returnedParameters);
                case BYPASS_BLOCK:
                    return true;
                case IF:
                    if (!collectReturnedReferenceParameters(statement.block, aliasScopes, returnedParameters)) {
                        return false;
                    }
                    return statement.elseBlock == null
                            || collectReturnedReferenceParameters(statement.elseBlock, aliasScopes, returnedParameters);
                case WHILE:
                    return collectReturnedReferenceParameters(statement.block, aliasScopes, returnedParameters);
                case LAMBDA_DECL:
                    return true;
                default:
                    return true;
            }
        }

        private Integer resolveReferenceParameterIndex(ExpressionModel expression, Deque<Map<String, Integer>> aliasScopes) {
            String variableName = directExpressionVariableName(expression);
            if (variableName == null) {
                return null;
            }
            return resolveAliasOrigin(variableName, aliasScopes);
        }

        private Integer resolveAliasOrigin(String name, Deque<Map<String, Integer>> aliasScopes) {
            for (Map<String, Integer> scope : aliasScopes) {
                if (scope.containsKey(name)) {
                    return scope.get(name);
                }
            }
            return null;
        }

        private void assignAliasOrigin(String name, Integer originIndex, Deque<Map<String, Integer>> aliasScopes) {
            for (Map<String, Integer> scope : aliasScopes) {
                if (!scope.containsKey(name)) {
                    continue;
                }
                if (originIndex == null) {
                    scope.remove(name);
                } else {
                    scope.put(name, originIndex);
                }
                return;
            }

            if (originIndex != null && !aliasScopes.isEmpty()) {
                aliasScopes.peek().put(name, originIndex);
            }
        }

        private void collectParameterEscapes(BlockModel block, Map<String, Integer> parameterIndices,
                Map<Integer, Set<ParameterEscapeKind>> escapingParameters) {
            if (block == null) {
                return;
            }
            for (StatementModel statement : block.statements) {
                collectParameterEscapes(statement, parameterIndices, escapingParameters);
            }
        }

        private void collectParameterEscapes(StatementModel statement, Map<String, Integer> parameterIndices,
                Map<Integer, Set<ParameterEscapeKind>> escapingParameters) {
            if (statement == null) {
                return;
            }

            switch (statement.kind) {
                case ASSIGNMENT:
                    String directSource = directExpressionVariableName(statement.expression);
                    Integer parameterIndex = directSource != null ? parameterIndices.get(directSource) : null;
                    if (parameterIndex != null) {
                        if (globalSymbols.containsKey(statement.name)) {
                            recordParameterEscape(escapingParameters, parameterIndex, ParameterEscapeKind.GLOBAL_ASSIGN);
                        } else if (statement.indexedAssignment) {
                            recordParameterEscape(escapingParameters, parameterIndex, ParameterEscapeKind.INDEXED_STORE);
                        }
                    }
                    return;
                case THREAD_CALL:
                    collectParameterReferences(statement.expression, parameterIndices, escapingParameters,
                            ParameterEscapeKind.THREAD_BOUNDARY);
                    return;
                case ASYNC_CALL:
                    collectParameterReferences(statement.expression, parameterIndices, escapingParameters,
                            ParameterEscapeKind.ASYNC_BOUNDARY);
                    return;
                case LAMBDA_DECL:
                    collectLambdaParameterCaptures(statement.function, parameterIndices, escapingParameters);
                    return;
                case BLOCK:
                case SCHEDULED_BLOCK:
                case UNSAFE_BLOCK:
                case AUTOFMT_SCOPE:
                    collectParameterEscapes(statement.block, parameterIndices, escapingParameters);
                    return;
                case BYPASS_BLOCK:
                    return;
                case IF:
                    collectParameterEscapes(statement.block, parameterIndices, escapingParameters);
                    if (statement.elseBlock != null) {
                        collectParameterEscapes(statement.elseBlock, parameterIndices, escapingParameters);
                    }
                    return;
                case WHILE:
                    collectParameterEscapes(statement.block, parameterIndices, escapingParameters);
                    return;
                default:
                    return;
            }
        }

        private void collectLambdaParameterCaptures(FunctionModel lambda, Map<String, Integer> parameterIndices,
                Map<Integer, Set<ParameterEscapeKind>> escapingParameters) {
            if (lambda == null || lambda.body == null) {
                return;
            }

            Deque<Set<String>> localScopes = new ArrayDeque<>();
            localScopes.push(new LinkedHashSet<>());
            for (ParameterModel parameter : lambda.parameters) {
                localScopes.peek().add(parameter.name);
            }
            collectLambdaParameterCaptures(lambda.body, parameterIndices, localScopes, escapingParameters);
        }

        private void collectLambdaParameterCaptures(BlockModel block, Map<String, Integer> parameterIndices,
                Deque<Set<String>> localScopes, Map<Integer, Set<ParameterEscapeKind>> escapingParameters) {
            if (block == null) {
                return;
            }

            localScopes.push(new LinkedHashSet<>());
            try {
                for (StatementModel statement : block.statements) {
                    collectLambdaParameterCaptures(statement, parameterIndices, localScopes, escapingParameters);
                }
            } finally {
                localScopes.pop();
            }
        }

        private void collectLambdaParameterCaptures(StatementModel statement, Map<String, Integer> parameterIndices,
                Deque<Set<String>> localScopes, Map<Integer, Set<ParameterEscapeKind>> escapingParameters) {
            if (statement == null) {
                return;
            }

            switch (statement.kind) {
                case INIT:
                    collectLambdaParameterCaptures(statement.expression, parameterIndices, localScopes, escapingParameters);
                    localScopes.peek().add(statement.name);
                    return;
                case ASSIGNMENT:
                case LTO_TYPESET:
                    if (!isLocalToLambda(statement.name, localScopes)) {
                        Integer parameterIndex = parameterIndices.get(statement.name);
                        if (parameterIndex != null) {
                            recordParameterEscape(escapingParameters, parameterIndex, ParameterEscapeKind.LAMBDA_CAPTURE);
                        }
                    }
                    collectLambdaParameterCaptures(statement.expression, parameterIndices, localScopes, escapingParameters);
                    return;
                case RETURN:
                case EXPRESSION:
                case THREAD_CALL:
                case ASYNC_CALL:
                    collectLambdaParameterCaptures(statement.expression, parameterIndices, localScopes, escapingParameters);
                    return;
                case INDUCT:
                case RELEASE:
                    if (!isLocalToLambda(statement.name, localScopes)) {
                        Integer parameterIndex = parameterIndices.get(statement.name);
                        if (parameterIndex != null) {
                            recordParameterEscape(escapingParameters, parameterIndex, ParameterEscapeKind.LAMBDA_CAPTURE);
                        }
                    }
                    return;
                case BLOCK:
                case SCHEDULED_BLOCK:
                case UNSAFE_BLOCK:
                case AUTOFMT_SCOPE:
                    collectLambdaParameterCaptures(statement.block, parameterIndices, localScopes, escapingParameters);
                    return;
                case BYPASS_BLOCK:
                    return;
                case IF:
                    collectLambdaParameterCaptures(statement.expression, parameterIndices, localScopes, escapingParameters);
                    collectLambdaParameterCaptures(statement.block, parameterIndices, localScopes, escapingParameters);
                    if (statement.elseBlock != null) {
                        collectLambdaParameterCaptures(statement.elseBlock, parameterIndices, localScopes, escapingParameters);
                    }
                    return;
                case WHILE:
                    collectLambdaParameterCaptures(statement.expression, parameterIndices, localScopes, escapingParameters);
                    collectLambdaParameterCaptures(statement.block, parameterIndices, localScopes, escapingParameters);
                    return;
                case LAMBDA_DECL:
                    return;
                default:
                    return;
            }
        }

        private void collectLambdaParameterCaptures(ExpressionModel expression, Map<String, Integer> parameterIndices,
                Deque<Set<String>> localScopes, Map<Integer, Set<ParameterEscapeKind>> escapingParameters) {
            if (expression == null) {
                return;
            }

            if (expression.variableName != null && !isLocalToLambda(expression.variableName, localScopes)) {
                Integer parameterIndex = parameterIndices.get(expression.variableName);
                if (parameterIndex != null) {
                    recordParameterEscape(escapingParameters, parameterIndex, ParameterEscapeKind.LAMBDA_CAPTURE);
                }
            }

            for (ExpressionModel child : expression.children) {
                collectLambdaParameterCaptures(child, parameterIndices, localScopes, escapingParameters);
            }
        }

        private boolean isLocalToLambda(String name, Deque<Set<String>> localScopes) {
            for (Set<String> scope : localScopes) {
                if (scope.contains(name)) {
                    return true;
                }
            }
            return false;
        }

        private void collectParameterReferences(ExpressionModel expression, Map<String, Integer> parameterIndices,
                Map<Integer, Set<ParameterEscapeKind>> escapingParameters, ParameterEscapeKind kind) {
            if (expression == null) {
                return;
            }

            if (expression.variableName != null) {
                Integer parameterIndex = parameterIndices.get(expression.variableName);
                if (parameterIndex != null) {
                    recordParameterEscape(escapingParameters, parameterIndex, kind);
                }
            }

            for (ExpressionModel child : expression.children) {
                collectParameterReferences(child, parameterIndices, escapingParameters, kind);
            }
        }

        private void recordParameterEscape(Map<Integer, Set<ParameterEscapeKind>> escapingParameters,
                Integer parameterIndex, ParameterEscapeKind kind) {
            if (parameterIndex == null || kind == null) {
                return;
            }
            escapingParameters.computeIfAbsent(parameterIndex, ignored -> new LinkedHashSet<>()).add(kind);
        }

        private String directExpressionVariableName(ExpressionModel expression) {
            if (expression == null) {
                return null;
            }
            if (expression.kind == ExpressionKind.VARIABLE
                    || expression.kind == ExpressionKind.SHARED_BORROW
                    || expression.kind == ExpressionKind.MUTABLE_BORROW) {
                return expression.variableName;
            }
            if (expression.kind == ExpressionKind.GROUP && expression.children.size() == 1) {
                return directExpressionVariableName(expression.children.get(0));
            }
            return null;
        }

        private boolean isMutableQualifier(compilerv1Parser.InitCoreContext ctx) {
            return ctx != null && ctx.NCONST() != null;
        }

        private boolean isMutableQualifier(compilerv1Parser.InitContext ctx) {
            return ctx != null && isMutableQualifier(ctx.initCore());
        }

        private boolean isMutableQualifier(compilerv1Parser.ParamContext ctx) {
            return ctx != null && ctx.NCONST() != null;
        }

        private boolean isMutableQualifier(compilerv1Parser.EasyInitContext ctx) {
            return ctx != null && ctx.NCONST() != null;
        }

        private boolean isMutableQualifier(compilerv1Parser.LtoInitContext ctx) {
            return ctx != null && ctx.NCONST() != null;
        }

        private SemanticType autoSemanticType() {
            return new SemanticType("auto", List.of(), 0, false);
        }

        private SemanticType ltoSemanticType() {
            return new SemanticType("lto", List.of(), 0, false);
        }

        private FunctionModel buildFunctionModel(String name, SemanticType returnType,
                compilerv1Parser.ParamsContext params, compilerv1Parser.BlockContext block, ParserRuleContext ctx) {
            List<ParameterModel> parameters = new ArrayList<>();
            if (params != null) {
                for (compilerv1Parser.ParamContext param : params.param()) {
                    parameters.add(new ParameterModel(param.ID().getText(), semanticTypeFromTypeRef(param.typeRef()),
                            isMutableQualifier(param), param));
                }
            }
            return new FunctionModel(name, returnType, parameters, buildBlockModel(block), ctx);
        }

        private FunctionModel buildLambdaFunctionModel(compilerv1Parser.LambdaContext ctx) {
            compilerv1Parser.ParamsContext params;
            compilerv1Parser.BlockContext block;
            SemanticType returnType;
            if (ctx.lambdaDefinition().function() != null) {
                compilerv1Parser.FunctionContext functionCtx = ctx.lambdaDefinition().function();
                params = functionCtx.params();
                block = functionCtx.block();
                returnType = semanticTypeFromReturn(functionCtx.returnType());
            } else {
                compilerv1Parser.LambdaLiteralContext literalCtx = ctx.lambdaDefinition().lambdaLiteral();
                params = literalCtx.params();
                block = literalCtx.block();
                returnType = semanticTypeFromReturn(literalCtx.returnType());
            }
            return buildFunctionModel(ctx.ID().getText(), returnType, params, block, ctx);
        }

        private FunctionModel buildSrcFunctionModel(compilerv1Parser.SrcDeclContext ctx) {
            return buildFunctionModel(ctx.ID().getText(), semanticTypeFromReturn(ctx.returnType()), ctx.params(), ctx.block(), ctx);
        }

        private BlockModel buildBlockModel(compilerv1Parser.BlockContext ctx) {
            List<StatementModel> statements = new ArrayList<>();
            if (ctx != null && ctx.children != null) {
                for (ParseTree child : ctx.children) {
                    if (child instanceof compilerv1Parser.StatementContext) {
                        StatementModel statement = buildStatementModel((compilerv1Parser.StatementContext) child);
                        if (statement != null) {
                            statements.add(statement);
                        }
                    } else if (child instanceof compilerv1Parser.ReturnStmtContext) {
                        compilerv1Parser.ReturnStmtContext returnCtx = (compilerv1Parser.ReturnStmtContext) child;
                        statements.add(StatementModel.returnStatement(buildExpression(returnCtx.expression()), returnCtx));
                    }
                }
            }
            return new BlockModel(statements, ctx);
        }

        private StatementModel buildStatementModel(compilerv1Parser.StatementContext ctx) {
            if (ctx == null) {
                return null;
            }
            if (ctx.init() != null) {
                return buildInitStatementModel(ctx.init().initCore(), ctx.init());
            }
            if (ctx.ltoInit() != null) {
                return StatementModel.init(ctx.ltoInit().ID().getText(), ltoSemanticType(), isMutableQualifier(ctx.ltoInit()),
                        buildExpression(ctx.ltoInit().expression()), ctx.ltoInit());
            }
            if (ctx.ltoTypesetStmt() != null) {
                return StatementModel.ltoTypeset(ctx.ltoTypesetStmt().ID().getText(),
                        semanticTypeFromTypeRef(ctx.ltoTypesetStmt().typeRef()),
                        ctx.ltoTypesetStmt().getText().contains(".cast()"),
                        ctx.ltoTypesetStmt());
            }
            if (ctx.easyInit() != null) {
                return StatementModel.init(ctx.easyInit().ID().getText(), autoSemanticType(), isMutableQualifier(ctx.easyInit()),
                        buildExpression(ctx.easyInit().expression()), ctx.easyInit());
            }
            if (ctx.assignment() != null) {
                return buildAssignmentStatementModel(ctx.assignment().assignmentCore(), ctx.assignment());
            }
            if (ctx.print() != null) {
                return StatementModel.expression(buildExpression(ctx.print().expression()), ctx.print());
            }
            if (ctx.assertStmt() != null) {
                return StatementModel.expression(buildExpression(ctx.assertStmt().expression()), ctx.assertStmt());
            }
            if (ctx.typedefOpstructSession() != null) {
                return buildTypedefOpstructSessionModel(ctx.typedefOpstructSession());
            }
            if (ctx.typedefOpstructPhraseStmt() != null) {
                return StatementModel.expression(buildExpression(ctx.typedefOpstructPhraseStmt().typedefOpstructCapture().expression()), ctx.typedefOpstructPhraseStmt());
            }
            if (ctx.schedulerInsertStmt() != null) {
                return StatementModel.scheduledBlock(buildBlockModel(ctx.schedulerInsertStmt().block()), ctx.schedulerInsertStmt());
            }
            if (ctx.functionCall() != null) {
                return StatementModel.expression(buildFunctionCallExpression(ctx.functionCall()), ctx.functionCall());
            }
            if (ctx.memberaccess() != null) {
                return StatementModel.expression(buildMemberAccessExpression(ctx.memberaccess()), ctx.memberaccess());
            }
            if (ctx.lambda() != null) {
                return StatementModel.lambdaDeclaration(buildLambdaFunctionModel(ctx.lambda()), ctx.lambda());
            }
            if (ctx.srcDecl() != null) {
                return StatementModel.lambdaDeclaration(buildSrcFunctionModel(ctx.srcDecl()), ctx.srcDecl());
            }
            if (ctx.thread() != null) {
                return StatementModel.threadCall(buildFunctionCallExpression(ctx.thread().functionCall()), ctx.thread());
            }
            if (ctx.asyncCall() != null) {
                return StatementModel.asyncCall(buildFunctionCallExpression(ctx.asyncCall().functionCall()), ctx.asyncCall());
            }
            if (ctx.ifStatement() != null) {
                BlockModel elseBlock = ctx.ifStatement().ELSE() != null ? buildBlockModel(ctx.ifStatement().block(1)) : null;
                return StatementModel.ifStatement(buildExpression(ctx.ifStatement().expression()),
                        buildBlockModel(ctx.ifStatement().block(0)), elseBlock, ctx.ifStatement());
            }
            if (ctx.whileStatement() != null) {
                return StatementModel.whileStatement(buildExpression(ctx.whileStatement().expression()),
                        buildBlockModel(ctx.whileStatement().block()), ctx.whileStatement());
            }
            if (ctx.forStatement() != null) {
                return buildForStatementModel(ctx.forStatement());
            }
            if (ctx.forInStatement() != null) {
                return buildForInStatementModel(ctx.forInStatement());
            }
            if (ctx.switchStatement() != null) {
                return buildSwitchStatementModel(ctx.switchStatement());
            }
            if (ctx.tryCatchStatement() != null) {
                return StatementModel.ifStatement(null,
                        buildBlockModel(ctx.tryCatchStatement().block(0)),
                        buildBlockModel(ctx.tryCatchStatement().block(1)),
                        ctx.tryCatchStatement());
            }
            if (ctx.block() != null) {
                return StatementModel.block(buildBlockModel(ctx.block()), ctx.block());
            }
            if (ctx.unsafeBlock() != null) {
                return StatementModel.unsafeBlock(buildBlockModel(ctx.unsafeBlock().block()), ctx.unsafeBlock());
            }
            if (ctx.bypassBlock() != null) {
                return StatementModel.bypassBlock(buildBlockModel(ctx.bypassBlock().block()), ctx.bypassBlock());
            }
            if (ctx.autofmtdeclareScope() != null) {
                return StatementModel.autofmtScope(buildBlockModel(ctx.autofmtdeclareScope().block()), ctx.autofmtdeclareScope());
            }
            if (ctx.autocatchStatement() != null) {
                return StatementModel.autocatch(ctx.autocatchStatement().ID().getText(),
                        buildBlockModel(ctx.autocatchStatement().block()), ctx.autocatchStatement());
            }
            if (ctx.inductStmt() != null) {
                return StatementModel.induct(ctx.inductStmt().ID().getText(), ctx.inductStmt());
            }
            if (ctx.releaseStmt() != null) {
                return StatementModel.release(ctx.releaseStmt().ID().getText(), ctx.releaseStmt());
            }
            return null;
        }

        private StatementModel buildInitStatementModel(compilerv1Parser.InitCoreContext init, ParserRuleContext ctx) {
            if (init == null) {
                return null;
            }
            return StatementModel.init(init.ID().getText(), semanticTypeFromTypeRef(init.typeRef()), isMutableQualifier(init),
                    buildExpression(init.expression()), ctx);
        }

        private StatementModel buildAssignmentStatementModel(compilerv1Parser.AssignmentCoreContext assignment, ParserRuleContext ctx) {
            if (assignment == null) {
                return null;
            }
            return StatementModel.assignment(assignment.assignTarget().ID().getText(), buildExpression(assignment.expression()),
                    assignment.assignTarget().accessKey() != null && !assignment.assignTarget().accessKey().isEmpty(), ctx);
        }

        private StatementModel buildForInitStatementModel(compilerv1Parser.ForInitContext ctx) {
            if (ctx == null) {
                return null;
            }
            if (ctx.initCore() != null) {
                return buildInitStatementModel(ctx.initCore(), ctx);
            }
            if (ctx.assignmentCore() != null) {
                return buildAssignmentStatementModel(ctx.assignmentCore(), ctx);
            }
            if (ctx.expression() != null) {
                return StatementModel.expression(buildExpression(ctx.expression()), ctx);
            }
            return null;
        }

        private StatementModel buildTypedefOpstructSessionModel(compilerv1Parser.TypedefOpstructSessionContext ctx) {
            List<StatementModel> statements = new ArrayList<>();
            for (compilerv1Parser.TypedefOpstructCommandContext command : ctx.typedefOpstructCommand()) {
                statements.add(StatementModel.expression(buildExpression(command.typedefOpstructCapture().expression()), command));
            }
            return StatementModel.block(new BlockModel(statements, ctx), ctx);
        }

        private StatementModel buildForUpdateStatementModel(compilerv1Parser.ForUpdateContext ctx) {
            if (ctx == null) {
                return null;
            }
            if (ctx.assignmentCore() != null) {
                return buildAssignmentStatementModel(ctx.assignmentCore(), ctx);
            }
            if (ctx.expression() != null) {
                return StatementModel.expression(buildExpression(ctx.expression()), ctx);
            }
            return null;
        }

        private StatementModel buildForStatementModel(compilerv1Parser.ForStatementContext ctx) {
            List<StatementModel> scopedStatements = new ArrayList<>();
            StatementModel init = buildForInitStatementModel(ctx.forInit());
            if (init != null) {
                scopedStatements.add(init);
            }

            List<StatementModel> loopStatements = new ArrayList<>(buildBlockModel(ctx.block()).statements);
            StatementModel update = buildForUpdateStatementModel(ctx.forUpdate());
            if (update != null) {
                loopStatements.add(update);
            }

            ExpressionModel condition = ctx.expression() != null
                    ? buildExpression(ctx.expression())
                    : ExpressionModel.literal("true", ctx);
            scopedStatements.add(StatementModel.whileStatement(condition, new BlockModel(loopStatements, ctx.block()), ctx));
            return StatementModel.block(new BlockModel(scopedStatements, ctx), ctx);
        }

        private StatementModel buildForInStatementModel(compilerv1Parser.ForInStatementContext ctx) {
            List<StatementModel> loopStatements = new ArrayList<>();
            loopStatements.add(StatementModel.init(ctx.ID().getText(), semanticTypeFromTypeRef(ctx.typeRef()), ctx.NCONST() != null, null, ctx));
            loopStatements.addAll(buildBlockModel(ctx.block()).statements);

            BlockModel loopBlock = new BlockModel(loopStatements, ctx.block());
            StatementModel loop = StatementModel.whileStatement(buildExpression(ctx.expression()), loopBlock, ctx);
            return StatementModel.block(new BlockModel(List.of(loop), ctx), ctx);
        }

        private StatementModel buildSwitchStatementModel(compilerv1Parser.SwitchStatementContext ctx) {
            ExpressionModel switchExpression = buildExpression(ctx.expression());
            BlockModel defaultBlock = ctx.switchDefault() != null ? buildBlockModel(ctx.switchDefault().block()) : null;
            StatementModel chain = buildSwitchCaseChain(ctx, switchExpression, defaultBlock, 0);
            if (chain == null) {
                if (defaultBlock != null) {
                    return StatementModel.block(defaultBlock, ctx);
                }
                return StatementModel.block(new BlockModel(List.of(), ctx), ctx);
            }
            return StatementModel.block(new BlockModel(List.of(chain), ctx), ctx);
        }

        private StatementModel buildSwitchCaseChain(compilerv1Parser.SwitchStatementContext ctx, ExpressionModel switchExpression,
                BlockModel defaultBlock, int index) {
            if (index >= ctx.switchCase().size()) {
                return defaultBlock != null ? StatementModel.block(defaultBlock, ctx.switchDefault()) : null;
            }

            compilerv1Parser.SwitchCaseContext switchCase = ctx.switchCase(index);
            StatementModel next = buildSwitchCaseChain(ctx, switchExpression, defaultBlock, index + 1);
            BlockModel elseBlock = null;
            if (next != null) {
                elseBlock = new BlockModel(List.of(next), next.ctx);
            }

            ExpressionModel condition = ExpressionModel.composite(ExpressionKind.BINARY,
                    List.of(switchExpression, buildExpression(switchCase.expression())), switchCase);
            return StatementModel.ifStatement(condition, buildBlockModel(switchCase.block()), elseBlock, switchCase);
        }

        private ExpressionModel buildExpression(compilerv1Parser.ExpressionContext ctx) {
            if (ctx == null) {
                return null;
            }
            if (ctx.getChildCount() > 1 && ctx.expression().size() == 2) {
                return ExpressionModel.composite(ExpressionKind.BINARY,
                        List.of(buildOrExpression(ctx.orExpr()), buildExpression(ctx.expression(0)), buildExpression(ctx.expression(1))),
                        ctx);
            }
            return buildOrExpression(ctx.orExpr());
        }

        private ExpressionModel buildOrExpression(compilerv1Parser.OrExprContext ctx) {
            if (ctx.andExpr().size() == 1) {
                return buildAndExpression(ctx.andExpr(0));
            }
            List<ExpressionModel> children = new ArrayList<>();
            for (compilerv1Parser.AndExprContext entry : ctx.andExpr()) {
                children.add(buildAndExpression(entry));
            }
            return ExpressionModel.composite(ExpressionKind.BINARY, children, ctx);
        }

        private ExpressionModel buildAndExpression(compilerv1Parser.AndExprContext ctx) {
            if (ctx.bitwiseOrExpr().size() == 1) {
                return buildBitwiseOrExpression(ctx.bitwiseOrExpr(0));
            }
            List<ExpressionModel> children = new ArrayList<>();
            for (compilerv1Parser.BitwiseOrExprContext entry : ctx.bitwiseOrExpr()) {
                children.add(buildBitwiseOrExpression(entry));
            }
            return ExpressionModel.composite(ExpressionKind.BINARY, children, ctx);
        }

        private ExpressionModel buildBitwiseOrExpression(compilerv1Parser.BitwiseOrExprContext ctx) {
            if (ctx.bitwiseXorExpr().size() == 1) {
                return buildBitwiseXorExpression(ctx.bitwiseXorExpr(0));
            }
            List<ExpressionModel> children = new ArrayList<>();
            for (compilerv1Parser.BitwiseXorExprContext entry : ctx.bitwiseXorExpr()) {
                children.add(buildBitwiseXorExpression(entry));
            }
            return ExpressionModel.composite(ExpressionKind.BINARY, children, ctx);
        }

        private ExpressionModel buildBitwiseXorExpression(compilerv1Parser.BitwiseXorExprContext ctx) {
            if (ctx.bitwiseAndExpr().size() == 1) {
                return buildBitwiseAndExpression(ctx.bitwiseAndExpr(0));
            }
            List<ExpressionModel> children = new ArrayList<>();
            for (compilerv1Parser.BitwiseAndExprContext entry : ctx.bitwiseAndExpr()) {
                children.add(buildBitwiseAndExpression(entry));
            }
            return ExpressionModel.composite(ExpressionKind.BINARY, children, ctx);
        }

        private ExpressionModel buildBitwiseAndExpression(compilerv1Parser.BitwiseAndExprContext ctx) {
            if (ctx.equalityExpr().size() == 1) {
                return buildEqualityExpression(ctx.equalityExpr(0));
            }
            List<ExpressionModel> children = new ArrayList<>();
            for (compilerv1Parser.EqualityExprContext entry : ctx.equalityExpr()) {
                children.add(buildEqualityExpression(entry));
            }
            return ExpressionModel.composite(ExpressionKind.BINARY, children, ctx);
        }

        private ExpressionModel buildEqualityExpression(compilerv1Parser.EqualityExprContext ctx) {
            if (ctx.shiftExpr().size() == 1) {
                return buildShiftExpression(ctx.shiftExpr(0));
            }
            List<ExpressionModel> children = new ArrayList<>();
            for (compilerv1Parser.ShiftExprContext entry : ctx.shiftExpr()) {
                children.add(buildShiftExpression(entry));
            }
            return ExpressionModel.composite(ExpressionKind.BINARY, children, ctx);
        }

        private ExpressionModel buildShiftExpression(compilerv1Parser.ShiftExprContext ctx) {
            if (ctx.relationalExpr().size() == 1) {
                return buildRelationalExpression(ctx.relationalExpr(0));
            }
            List<ExpressionModel> children = new ArrayList<>();
            for (compilerv1Parser.RelationalExprContext entry : ctx.relationalExpr()) {
                children.add(buildRelationalExpression(entry));
            }
            return ExpressionModel.composite(ExpressionKind.BINARY, children, ctx);
        }

        private ExpressionModel buildRelationalExpression(compilerv1Parser.RelationalExprContext ctx) {
            if (ctx.addExpr().size() == 1) {
                return buildAddExpression(ctx.addExpr(0));
            }
            List<ExpressionModel> children = new ArrayList<>();
            for (compilerv1Parser.AddExprContext entry : ctx.addExpr()) {
                children.add(buildAddExpression(entry));
            }
            return ExpressionModel.composite(ExpressionKind.BINARY, children, ctx);
        }

        private ExpressionModel buildAddExpression(compilerv1Parser.AddExprContext ctx) {
            if (ctx.multExpr().size() == 1) {
                return buildMultExpression(ctx.multExpr(0));
            }
            List<ExpressionModel> children = new ArrayList<>();
            for (compilerv1Parser.MultExprContext entry : ctx.multExpr()) {
                children.add(buildMultExpression(entry));
            }
            return ExpressionModel.composite(ExpressionKind.BINARY, children, ctx);
        }

        private ExpressionModel buildMultExpression(compilerv1Parser.MultExprContext ctx) {
            if (ctx.primary().size() == 1) {
                return buildPrimaryExpression(ctx.primary(0));
            }
            List<ExpressionModel> children = new ArrayList<>();
            for (compilerv1Parser.PrimaryContext entry : ctx.primary()) {
                children.add(buildPrimaryExpression(entry));
            }
            return ExpressionModel.composite(ExpressionKind.BINARY, children, ctx);
        }

        private ExpressionModel buildPrimaryExpression(compilerv1Parser.PrimaryContext ctx) {
            if (ctx == null) {
                return null;
            }
            if (ctx.borrowExpr() != null) {
                compilerv1Parser.BorrowExprContext borrowCtx = ctx.borrowExpr();
                return borrowCtx.NCONST() != null
                        ? ExpressionModel.mutableBorrow(borrowCtx.ID().getText(), borrowCtx)
                        : ExpressionModel.sharedBorrow(borrowCtx.ID().getText(), borrowCtx);
            }
            if (ctx.INDEF() != null) {
                return ExpressionModel.literal("this", ctx);
            }
            if (ctx.SUCCESS() != null) {
                return ExpressionModel.literal("success", ctx);
            }
            if (ctx.ID() != null) {
                return ExpressionModel.variable(ctx.ID().getText(), ctx);
            }
            if (ctx.INT() != null || ctx.STRING() != null || ctx.templateString() != null) {
                return ExpressionModel.literal(ctx.getText(), ctx);
            }
            if (ctx.stdinExpr() != null) {
                return ExpressionModel.call("sys.stdin", List.of(), ctx.stdinExpr());
            }
            if (ctx.functionCall() != null) {
                return buildFunctionCallExpression(ctx.functionCall());
            }
            if (ctx.memberaccess() != null) {
                return buildMemberAccessExpression(ctx.memberaccess());
            }
            if (ctx.indexedAccess() != null) {
                List<ExpressionModel> children = new ArrayList<>();
                children.add(ExpressionModel.variable(ctx.indexedAccess().ID().getText(), ctx.indexedAccess()));
                for (compilerv1Parser.AccessKeyContext key : ctx.indexedAccess().accessKey()) {
                    if (key.expression() != null) {
                        children.add(buildExpression(key.expression()));
                    }
                }
                return ExpressionModel.composite(ExpressionKind.INDEXED_ACCESS, children, ctx.indexedAccess());
            }
            if (ctx.compositeLiteral() != null) {
                List<ExpressionModel> children = new ArrayList<>();
                for (compilerv1Parser.ExpressionContext value : ctx.compositeLiteral().expression()) {
                    children.add(buildExpression(value));
                }
                return ExpressionModel.composite(ExpressionKind.COMPOSITE, children, ctx.compositeLiteral());
            }
            if (ctx.instanceValue() != null) {
                List<ExpressionModel> children = new ArrayList<>();
                if (ctx.instanceValue().args() != null) {
                    for (compilerv1Parser.ExpressionContext value : ctx.instanceValue().args().expression()) {
                        children.add(buildExpression(value));
                    }
                }
                if (ctx.instanceValue().allocatorUseSuffix() != null) {
                    children.add(buildExpression(ctx.instanceValue().allocatorUseSuffix().expression()));
                }
                return ExpressionModel.composite(ExpressionKind.INSTANCE_VALUE, children, ctx.instanceValue());
            }
            if (ctx.castExpr() != null) {
                return ExpressionModel.composite(ExpressionKind.CAST,
                        List.of(buildPrimaryExpression(ctx.castExpr().primary())), ctx.castExpr());
            }
            if (ctx.placementNewExpr() != null) {
                return ExpressionModel.composite(ExpressionKind.PLACEMENT_NEW,
                        List.of(buildExpression(ctx.placementNewExpr().expression())), ctx.placementNewExpr());
            }
            if (ctx.expression() != null) {
                return ExpressionModel.composite(ExpressionKind.GROUP, List.of(buildExpression(ctx.expression())), ctx.expression());
            }
            return ExpressionModel.literal(ctx.getText(), ctx);
        }

        private ExpressionModel buildFunctionCallExpression(compilerv1Parser.FunctionCallContext ctx) {
            List<ExpressionModel> children = new ArrayList<>();
            if (ctx.args() != null) {
                for (compilerv1Parser.ExpressionContext argument : ctx.args().expression()) {
                    children.add(buildExpression(argument));
                }
            }
            return ExpressionModel.call(ctx.ID().getText(), children, ctx);
        }

        private ExpressionModel buildMemberAccessExpression(compilerv1Parser.MemberaccessContext ctx) {
            List<ExpressionModel> children = new ArrayList<>();
            String objectName = ctx.accessBase().getText();
            if (!"indef".equals(objectName)) {
                children.add(ExpressionModel.variable(objectName, ctx));
            }
            if (ctx.functionCall() != null) {
                children.add(buildFunctionCallExpression(ctx.functionCall()));
            }
            return ExpressionModel.composite(ExpressionKind.MEMBER_ACCESS, children, ctx);
        }

        private SemanticType semanticTypeFromTypeRef(compilerv1Parser.TypeRefContext ctx) {
            if (ctx == null) {
                return null;
            }
            SemanticType baseType;
            compilerv1Parser.TypeAtomContext atom = ctx.typeAtom();
            if (atom.functionType() != null) {
                List<SemanticType> arguments = new ArrayList<>();
                arguments.add(semanticTypeFromReturn(atom.functionType().returnType()));
                if (atom.functionType().functionTypeArgs() != null) {
                    for (compilerv1Parser.TypeRefContext argument : atom.functionType().functionTypeArgs().typeRef()) {
                        arguments.add(semanticTypeFromTypeRef(argument));
                    }
                }
                baseType = new SemanticType("fn", arguments, 0, false);
            } else if (atom.genericType() != null) {
                List<SemanticType> arguments = new ArrayList<>();
                for (compilerv1Parser.TypeRefContext argument : atom.genericType().typeRef()) {
                    arguments.add(semanticTypeFromTypeRef(argument));
                }
                baseType = new SemanticType(atom.genericType().ID().getText(), arguments, 0, false);
            } else if (atom.TYPE() != null) {
                baseType = new SemanticType(atom.TYPE().getText(), List.of(), 0, false);
            } else if (atom.FTYPE() != null) {
                baseType = new SemanticType(atom.FTYPE().getText(), List.of(), 0, false);
            } else if (atom.ID() != null) {
                baseType = new SemanticType(atom.ID().getText(), List.of(), 0, false);
            } else {
                return null;
            }

            int pointerDepth = baseType.pointerDepth;
            boolean reference = baseType.reference;
            for (compilerv1Parser.TypeModifierContext modifier : ctx.typeModifier()) {
                String text = modifier.getText();
                if ("*".equals(text)) {
                    pointerDepth++;
                } else if ("&".equals(text)) {
                    reference = true;
                }
            }
            return new SemanticType(baseType.name, baseType.arguments, pointerDepth, reference);
        }

        private SemanticType semanticTypeFromReturn(compilerv1Parser.ReturnTypeContext ctx) {
            if (ctx == null || "void".equals(ctx.getText())) {
                return SemanticType.voidType();
            }
            return semanticTypeFromTypeRef(ctx.typeRef());
        }

        private void checkRawPointerReturnType(compilerv1Parser.ReturnTypeContext returnType, ParserRuleContext ctx, String ownerKind) {
            SemanticType type = semanticTypeFromReturn(returnType);
            if (type != null && type.isRawPointer()) {
                addDiagnostic(ctx, "raw pointer return types are not allowed in safe Apollo " + ownerKind + " signatures"
                        + System.lineSeparator() + "suggested fix: return a safe reference or owning type instead of a raw pointer");
            }
        }

        private void requireUnsafeType(compilerv1Parser.TypeRefContext typeRef, ParserRuleContext ctx, String detail, String fixHint) {
            SemanticType type = semanticTypeFromTypeRef(typeRef);
            if (type == null || !type.isRawPointer() || unsafeDepth > 0 || bypassDepth > 0) {
                return;
            }
            addDiagnostic(ctx, detail + System.lineSeparator() + "suggested fix: " + fixHint);
        }

        private void requireUnsafe(ParserRuleContext ctx, String detail, String fixHint) {
            if (unsafeDepth > 0 || bypassDepth > 0) {
                return;
            }
            addDiagnostic(ctx, detail + System.lineSeparator() + "suggested fix: " + fixHint);
        }

        private void addDiagnostic(ParserRuleContext ctx, String message) {
            diagnostics.add(source.formatRuleDiagnostic("error", "memory-safety", ctx, message));
        }

        private void throwIfErrors() {
            if (diagnostics.isEmpty()) {
                return;
            }
            StringBuilder builder = new StringBuilder();
            builder.append("Compilation aborted with ").append(diagnostics.size()).append(" memory-safety error");
            if (diagnostics.size() != 1) {
                builder.append("s");
            }
            builder.append(":").append(System.lineSeparator());
            for (int index = 0; index < diagnostics.size(); index++) {
                if (index > 0) {
                    builder.append(System.lineSeparator()).append(System.lineSeparator());
                }
                builder.append(diagnostics.get(index));
            }
            throw new ApolloCompilationFailure(builder.toString());
        }

        private static final class SemanticType {
            private final String name;
            private final List<SemanticType> arguments;
            private final int pointerDepth;
            private final boolean reference;

            private SemanticType(String name, List<SemanticType> arguments, int pointerDepth, boolean reference) {
                this.name = name;
                this.arguments = arguments;
                this.pointerDepth = pointerDepth;
                this.reference = reference;
            }

            private static SemanticType voidType() {
                return new SemanticType("void", List.of(), 0, false);
            }

            private boolean isRawPointer() {
                return pointerDepth > 0;
            }

            private boolean isReference() {
                return reference;
            }

            private boolean isCopyType() {
                if (reference || pointerDepth > 0) {
                    return true;
                }
                return "i16".equals(name)
                        || "i32".equals(name)
                        || "i64".equals(name)
                    || "lto".equals(name)
                        || "isc".equals(name)
                        || "file".equals(name)
                        || "int".equals(name)
                        || "short".equals(name)
                        || "long".equals(name)
                        || "float".equals(name)
                        || "double".equals(name)
                        || "f64".equals(name);
            }
        }

        private enum SymbolKind {
            PARAMETER,
            LOCAL,
            GLOBAL
        }

        private enum StatementKind {
            INIT,
            ASSIGNMENT,
            LTO_TYPESET,
            RETURN,
            EXPRESSION,
            BLOCK,
            SCHEDULED_BLOCK,
            UNSAFE_BLOCK,
            BYPASS_BLOCK,
            AUTOFMT_SCOPE,
            AUTOCATCH,
            INDUCT,
            RELEASE,
            LAMBDA_DECL,
            THREAD_CALL,
            ASYNC_CALL,
            IF,
            WHILE
        }

        private enum ExpressionKind {
            VARIABLE,
            SHARED_BORROW,
            MUTABLE_BORROW,
            LITERAL,
            CALL,
            INDEXED_ACCESS,
            COMPOSITE,
            INSTANCE_VALUE,
            CAST,
            PLACEMENT_NEW,
            BINARY,
            GROUP,
            MEMBER_ACCESS
        }

        private enum ParameterEscapeKind {
            GLOBAL_ASSIGN,
            INDEXED_STORE,
            ASYNC_BOUNDARY,
            THREAD_BOUNDARY,
            LAMBDA_CAPTURE
        }

        private static final class ReturnedReferenceSummary {
            private final Set<Integer> parameterIndices;
            private final boolean unknown;

            private ReturnedReferenceSummary(Set<Integer> parameterIndices, boolean unknown) {
                this.parameterIndices = Set.copyOf(parameterIndices);
                this.unknown = unknown;
            }
        }

        private static final class GlobalSymbol {
            private final SemanticType type;
            private final boolean isMutable;
            private final ParserRuleContext ctx;

            private GlobalSymbol(SemanticType type, boolean isMutable, ParserRuleContext ctx) {
                this.type = type;
                this.isMutable = isMutable;
                this.ctx = ctx;
            }
        }

        private static final class ParameterModel {
            private final String name;
            private final SemanticType type;
            private final boolean isMutable;
            private final ParserRuleContext ctx;

            private ParameterModel(String name, SemanticType type, boolean isMutable, ParserRuleContext ctx) {
                this.name = name;
                this.type = type;
                this.isMutable = isMutable;
                this.ctx = ctx;
            }
        }

        private static final class FunctionModel {
            private final String name;
            private final SemanticType returnType;
            private final List<ParameterModel> parameters;
            private final BlockModel body;
            private final ParserRuleContext ctx;

            private FunctionModel(String name, SemanticType returnType, List<ParameterModel> parameters, BlockModel body, ParserRuleContext ctx) {
                this.name = name;
                this.returnType = returnType;
                this.parameters = parameters;
                this.body = body;
                this.ctx = ctx;
            }
        }

        private static final class FunctionSummary {
            private final String name;
            private final List<ParameterModel> parameters;
            private final SemanticType returnType;
            private final Set<Integer> returnedReferenceParameterIndices;
            private final boolean returnedReferenceUnknown;
            private final Set<Integer> sharedBorrowParameters;
            private final Set<Integer> mutableBorrowParameters;
            private final Set<Integer> consumedParameters;
            private final Map<Integer, Set<ParameterEscapeKind>> escapingParameters;

            private FunctionSummary(String name, List<ParameterModel> parameters, SemanticType returnType,
                    Set<Integer> returnedReferenceParameterIndices, boolean returnedReferenceUnknown,
                    Set<Integer> sharedBorrowParameters, Set<Integer> mutableBorrowParameters,
                    Set<Integer> consumedParameters, Map<Integer, Set<ParameterEscapeKind>> escapingParameters) {
                this.name = name;
                this.parameters = List.copyOf(parameters);
                this.returnType = returnType;
                this.returnedReferenceParameterIndices = Set.copyOf(returnedReferenceParameterIndices);
                this.returnedReferenceUnknown = returnedReferenceUnknown;
                this.sharedBorrowParameters = Set.copyOf(sharedBorrowParameters);
                this.mutableBorrowParameters = Set.copyOf(mutableBorrowParameters);
                this.consumedParameters = Set.copyOf(consumedParameters);
                Map<Integer, Set<ParameterEscapeKind>> escapingCopy = new LinkedHashMap<>();
                for (Map.Entry<Integer, Set<ParameterEscapeKind>> entry : escapingParameters.entrySet()) {
                    escapingCopy.put(entry.getKey(), Set.copyOf(entry.getValue()));
                }
                this.escapingParameters = Map.copyOf(escapingCopy);
            }

            private Integer singleReturnedReferenceParameterIndex() {
                if (returnedReferenceUnknown || returnedReferenceParameterIndices.size() != 1) {
                    return null;
                }
                return returnedReferenceParameterIndices.iterator().next();
            }

            private boolean hasAmbiguousReturnedReferenceOrigin() {
                return !returnedReferenceUnknown && returnedReferenceParameterIndices.size() > 1;
            }

            private boolean hasUnknownReturnedReferenceOrigin() {
                return returnedReferenceUnknown;
            }
        }

        private static final class BlockModel {
            private final List<StatementModel> statements;
            private final ParserRuleContext ctx;

            private BlockModel(List<StatementModel> statements, ParserRuleContext ctx) {
                this.statements = statements;
                this.ctx = ctx;
            }
        }

        private static final class StatementModel {
            private final StatementKind kind;
            private final String name;
            private final SemanticType type;
            private final boolean isMutable;
            private final boolean indexedAssignment;
            private final ExpressionModel expression;
            private final FunctionModel function;
            private final BlockModel block;
            private final BlockModel elseBlock;
            private final ParserRuleContext ctx;

            private StatementModel(StatementKind kind, String name, SemanticType type, boolean isMutable, boolean indexedAssignment,
                    ExpressionModel expression, FunctionModel function, BlockModel block, BlockModel elseBlock, ParserRuleContext ctx) {
                this.kind = kind;
                this.name = name;
                this.type = type;
                this.isMutable = isMutable;
                this.indexedAssignment = indexedAssignment;
                this.expression = expression;
                this.function = function;
                this.block = block;
                this.elseBlock = elseBlock;
                this.ctx = ctx;
            }

            private static StatementModel init(String name, SemanticType type, boolean isMutable, ExpressionModel expression, ParserRuleContext ctx) {
                return new StatementModel(StatementKind.INIT, name, type, isMutable, false, expression, null, null, null, ctx);
            }

            private static StatementModel assignment(String name, ExpressionModel expression, boolean indexedAssignment, ParserRuleContext ctx) {
                return new StatementModel(StatementKind.ASSIGNMENT, name, null, false, indexedAssignment, expression, null, null, null, ctx);
            }

            private static StatementModel ltoTypeset(String name, SemanticType targetType, boolean castExistingValue, ParserRuleContext ctx) {
                ExpressionModel expression = castExistingValue ? ExpressionModel.variable(name, ctx) : null;
                return new StatementModel(StatementKind.LTO_TYPESET, name, targetType, false, false, expression, null, null, null, ctx);
            }

            private static StatementModel returnStatement(ExpressionModel expression, ParserRuleContext ctx) {
                return new StatementModel(StatementKind.RETURN, null, null, false, false, expression, null, null, null, ctx);
            }

            private static StatementModel expression(ExpressionModel expression, ParserRuleContext ctx) {
                return new StatementModel(StatementKind.EXPRESSION, null, null, false, false, expression, null, null, null, ctx);
            }

            private static StatementModel lambdaDeclaration(FunctionModel function, ParserRuleContext ctx) {
                return new StatementModel(StatementKind.LAMBDA_DECL, null, null, false, false, null, function, null, null, ctx);
            }

            private static StatementModel block(BlockModel block, ParserRuleContext ctx) {
                return new StatementModel(StatementKind.BLOCK, null, null, false, false, null, null, block, null, ctx);
            }

            private static StatementModel scheduledBlock(BlockModel block, ParserRuleContext ctx) {
                return new StatementModel(StatementKind.SCHEDULED_BLOCK, null, null, false, false, null, null, block, null, ctx);
            }

            private static StatementModel unsafeBlock(BlockModel block, ParserRuleContext ctx) {
                return new StatementModel(StatementKind.UNSAFE_BLOCK, null, null, false, false, null, null, block, null, ctx);
            }

            private static StatementModel bypassBlock(BlockModel block, ParserRuleContext ctx) {
                return new StatementModel(StatementKind.BYPASS_BLOCK, null, null, false, false, null, null, block, null, ctx);
            }

            private static StatementModel autofmtScope(BlockModel block, ParserRuleContext ctx) {
                return new StatementModel(StatementKind.AUTOFMT_SCOPE, null, null, false, false, null, null, block, null, ctx);
            }

            private static StatementModel autocatch(String name, BlockModel block, ParserRuleContext ctx) {
                return new StatementModel(StatementKind.AUTOCATCH, name, null, false, false, null, null, block, null, ctx);
            }

            private static StatementModel induct(String name, ParserRuleContext ctx) {
                return new StatementModel(StatementKind.INDUCT, name, null, false, false, null, null, null, null, ctx);
            }

            private static StatementModel release(String name, ParserRuleContext ctx) {
                return new StatementModel(StatementKind.RELEASE, name, null, false, false, null, null, null, null, ctx);
            }

            private static StatementModel threadCall(ExpressionModel expression, ParserRuleContext ctx) {
                return new StatementModel(StatementKind.THREAD_CALL, null, null, false, false, expression, null, null, null, ctx);
            }

            private static StatementModel asyncCall(ExpressionModel expression, ParserRuleContext ctx) {
                return new StatementModel(StatementKind.ASYNC_CALL, null, null, false, false, expression, null, null, null, ctx);
            }

            private static StatementModel ifStatement(ExpressionModel condition, BlockModel block, BlockModel elseBlock, ParserRuleContext ctx) {
                return new StatementModel(StatementKind.IF, null, null, false, false, condition, null, block, elseBlock, ctx);
            }

            private static StatementModel whileStatement(ExpressionModel condition, BlockModel block, ParserRuleContext ctx) {
                return new StatementModel(StatementKind.WHILE, null, null, false, false, condition, null, block, null, ctx);
            }
        }

        private static final class ExpressionModel {
            private final ExpressionKind kind;
            private final String variableName;
            private final String text;
            private final List<ExpressionModel> children;
            private final ParserRuleContext ctx;

            private ExpressionModel(ExpressionKind kind, String variableName, String text, List<ExpressionModel> children, ParserRuleContext ctx) {
                this.kind = kind;
                this.variableName = variableName;
                this.text = text;
                this.children = children;
                this.ctx = ctx;
            }

            private static ExpressionModel variable(String name, ParserRuleContext ctx) {
                return new ExpressionModel(ExpressionKind.VARIABLE, name, name, List.of(), ctx);
            }

            private static ExpressionModel sharedBorrow(String name, ParserRuleContext ctx) {
                return new ExpressionModel(ExpressionKind.SHARED_BORROW, name, name, List.of(), ctx);
            }

            private static ExpressionModel mutableBorrow(String name, ParserRuleContext ctx) {
                return new ExpressionModel(ExpressionKind.MUTABLE_BORROW, name, name, List.of(), ctx);
            }

            private static ExpressionModel literal(String text, ParserRuleContext ctx) {
                return new ExpressionModel(ExpressionKind.LITERAL, null, text, List.of(), ctx);
            }

            private static ExpressionModel call(String name, List<ExpressionModel> children, ParserRuleContext ctx) {
                return new ExpressionModel(ExpressionKind.CALL, null, name, children, ctx);
            }

            private static ExpressionModel composite(ExpressionKind kind, List<ExpressionModel> children, ParserRuleContext ctx) {
                return new ExpressionModel(kind, null, ctx != null ? ctx.getText() : "", children, ctx);
            }
        }

        private static final class BindingState {
            private final String name;
            private final SemanticType type;
            private final boolean isMutable;
            private final SymbolKind kind;
            private final ParserRuleContext ctx;
            private boolean moved;
            private int sharedBorrowCount;
            private String mutableBorrowHolder;
            private String borrowedFrom;
            private boolean mutablyBorrowedFrom;
            private boolean ambiguousBorrowOrigin;
            private AutofmtOwnerScope managedOwnerScope;
            private boolean inductedIntoManagedOwner;
            private String allocatorBindingName;

            private BindingState(String name, SemanticType type, boolean isMutable, SymbolKind kind, ParserRuleContext ctx) {
                this.name = name;
                this.type = type;
                this.isMutable = isMutable;
                this.kind = kind;
                this.ctx = ctx;
            }

            private BindingState(BindingState other) {
                this.name = other.name;
                this.type = other.type;
                this.isMutable = other.isMutable;
                this.kind = other.kind;
                this.ctx = other.ctx;
                this.moved = other.moved;
                this.sharedBorrowCount = other.sharedBorrowCount;
                this.mutableBorrowHolder = other.mutableBorrowHolder;
                this.borrowedFrom = other.borrowedFrom;
                this.mutablyBorrowedFrom = other.mutablyBorrowedFrom;
                this.ambiguousBorrowOrigin = other.ambiguousBorrowOrigin;
                this.managedOwnerScope = other.managedOwnerScope;
                this.inductedIntoManagedOwner = other.inductedIntoManagedOwner;
                this.allocatorBindingName = other.allocatorBindingName;
            }
        }

        private static final class AutofmtOwnerScope {
            private final Set<BindingState> ownedBindings = new LinkedHashSet<>();

            private void track(BindingState binding, boolean inducted) {
                ownedBindings.add(binding);
                binding.managedOwnerScope = this;
                binding.inductedIntoManagedOwner = inducted;
            }

            private void release(BindingState binding) {
                ownedBindings.remove(binding);
                binding.managedOwnerScope = null;
                binding.inductedIntoManagedOwner = false;
            }
        }

        private static final class BorrowState {
            private final Deque<Map<String, BindingState>> scopes = new ArrayDeque<>();

            private BorrowState() {
                scopes.push(new LinkedHashMap<>());
            }

            private BorrowState(BorrowState other) {
                List<Map<String, BindingState>> copies = new ArrayList<>();
                for (Map<String, BindingState> scope : other.scopes) {
                    Map<String, BindingState> copy = new LinkedHashMap<>();
                    for (Map.Entry<String, BindingState> entry : scope.entrySet()) {
                        copy.put(entry.getKey(), new BindingState(entry.getValue()));
                    }
                    copies.add(copy);
                }
                for (int index = copies.size() - 1; index >= 0; index--) {
                    scopes.push(copies.get(index));
                }
            }

            private void pushScope() {
                scopes.push(new LinkedHashMap<>());
            }

            private Map<String, BindingState> currentScope() {
                return scopes.peek();
            }

            private Map<String, BindingState> outerVisibleBindings() {
                Map<String, BindingState> visible = new LinkedHashMap<>();
                List<Map<String, BindingState>> ordered = new ArrayList<>(scopes);
                for (int index = ordered.size() - 1; index >= 1; index--) {
                    visible.putAll(ordered.get(index));
                }
                return visible;
            }

            private void popScope() {
                Map<String, BindingState> scope = scopes.pop();
                for (BindingState binding : scope.values()) {
                    if (binding.borrowedFrom == null) {
                        continue;
                    }
                    BindingState source = resolve(binding.borrowedFrom);
                    if (source == null) {
                        continue;
                    }
                    if (binding.mutablyBorrowedFrom) {
                        if (binding.name.equals(source.mutableBorrowHolder)) {
                            source.mutableBorrowHolder = null;
                        }
                    } else if (source.sharedBorrowCount > 0) {
                        source.sharedBorrowCount--;
                    }
                }
            }

            private void define(BindingState binding) {
                scopes.peek().put(binding.name, binding);
            }

            private BindingState resolve(String name) {
                for (Map<String, BindingState> scope : scopes) {
                    BindingState binding = scope.get(name);
                    if (binding != null) {
                        return binding;
                    }
                }
                return null;
            }

            private Map<String, BindingState> visibleBindings() {
                Map<String, BindingState> visible = new LinkedHashMap<>();
                List<Map<String, BindingState>> ordered = new ArrayList<>(scopes);
                for (int index = ordered.size() - 1; index >= 0; index--) {
                    visible.putAll(ordered.get(index));
                }
                return visible;
            }
        }

        private final class BorrowChecker {
            private final FunctionModel function;
            private final boolean enforceOwnership;
            private final boolean enforceBorrows;
            private boolean scheduledTaskContext;
            private final Deque<AutofmtOwnerScope> ownerScopes = new ArrayDeque<>();

            private BorrowChecker(FunctionModel function, boolean enforceOwnership, boolean enforceBorrows, boolean scheduledTaskContext) {
                this.function = function;
                this.enforceOwnership = enforceOwnership;
                this.enforceBorrows = enforceBorrows;
                this.scheduledTaskContext = scheduledTaskContext;
            }

            private void analyze() {
                BorrowState state = new BorrowState();
                for (Map.Entry<String, GlobalSymbol> entry : globalSymbols.entrySet()) {
                    state.define(new BindingState(entry.getKey(), entry.getValue().type, entry.getValue().isMutable,
                            SymbolKind.GLOBAL, entry.getValue().ctx));
                }
                for (ParameterModel parameter : function.parameters) {
                    state.define(new BindingState(parameter.name, parameter.type, parameter.isMutable, SymbolKind.PARAMETER, parameter.ctx));
                }
                analyzeBlock(function.body, state);
            }

            private void analyzeScheduledBlock(BlockModel block, BorrowState state) {
                boolean previousScheduledTaskContext = scheduledTaskContext;
                scheduledTaskContext = true;
                try {
                    analyzeBlock(block, state);
                } finally {
                    scheduledTaskContext = previousScheduledTaskContext;
                }
            }

            private void analyzeBlock(BlockModel block, BorrowState state) {
                state.pushScope();
                try {
                    for (int index = 0; index < block.statements.size(); index++) {
                        StatementModel statement = block.statements.get(index);
                        Set<String> futureNames = collectUsedNames(block.statements, index + 1);
                        analyzeStatement(statement, state, futureNames);
                        releaseInactiveLocalBorrows(futureNames, state);
                    }
                } finally {
                    validateAllocatorDependenciesLeavingScope(state);
                    state.popScope();
                }
            }

            private void releaseInactiveLocalBorrows(Set<String> futureNames, BorrowState state) {
                if (!enforceBorrows) {
                    return;
                }
                Map<String, BindingState> visibleBindings = state.visibleBindings();
                if (visibleBindings.isEmpty()) {
                    return;
                }
                for (BindingState binding : new ArrayList<>(visibleBindings.values())) {
                    if (!canDeactivateAfterLastUse(binding)) {
                        continue;
                    }
                    if (futureNames.contains(binding.name)) {
                        continue;
                    }
                    deactivateReferenceBinding(binding, state);
                }
            }

            private void releaseNestedBlockInactiveBorrows(BlockModel nestedBlock, Set<String> futureNames, BorrowState state) {
                if (!enforceBorrows || nestedBlock == null) {
                    return;
                }
                Set<String> nestedNames = collectUsedNames(nestedBlock);
                for (BindingState binding : new ArrayList<>(state.visibleBindings().values())) {
                    if (!canDeactivateAfterLastUse(binding)) {
                        continue;
                    }
                    if (nestedNames.contains(binding.name) || futureNames.contains(binding.name)) {
                        continue;
                    }
                    deactivateReferenceBinding(binding, state);
                }
            }

            private boolean canDeactivateAfterLastUse(BindingState binding) {
                return binding != null
                        && binding.kind == SymbolKind.LOCAL
                        && binding.type != null
                        && binding.type.isReference();
            }

            private void deactivateReferenceBinding(BindingState binding, BorrowState state) {
                if (binding == null || binding.type == null || !binding.type.isReference()) {
                    return;
                }
                if (binding.borrowedFrom != null) {
                    releaseBorrow(binding, state);
                    return;
                }
                clearReferenceBinding(binding);
            }

            private Set<String> collectUsedNames(List<StatementModel> statements, int startIndex) {
                Set<String> names = new LinkedHashSet<>();
                for (int index = startIndex; index < statements.size(); index++) {
                    collectUsedNames(statements.get(index), names);
                }
                return names;
            }

            private Set<String> collectUsedNames(BlockModel block) {
                Set<String> names = new LinkedHashSet<>();
                if (block == null) {
                    return names;
                }
                for (StatementModel statement : block.statements) {
                    collectUsedNames(statement, names);
                }
                return names;
            }

            private void collectUsedNames(BlockModel block, Set<String> names) {
                if (block == null) {
                    return;
                }
                for (StatementModel statement : block.statements) {
                    collectUsedNames(statement, names);
                }
            }

            private void collectUsedNames(StatementModel statement, Set<String> names) {
                if (statement == null) {
                    return;
                }
                switch (statement.kind) {
                    case INIT:
                        collectUsedNames(statement.expression, names);
                        return;
                    case ASSIGNMENT:
                    case LTO_TYPESET:
                        if (statement.indexedAssignment && statement.name != null) {
                            names.add(statement.name);
                        }
                        if (statement.name != null) {
                            names.add(statement.name);
                        }
                        collectUsedNames(statement.expression, names);
                        return;
                    case RETURN:
                    case EXPRESSION:
                    case THREAD_CALL:
                    case ASYNC_CALL:
                        collectUsedNames(statement.expression, names);
                        return;
                    case INDUCT:
                    case RELEASE:
                        if (statement.name != null) {
                            names.add(statement.name);
                        }
                        return;
                    case BLOCK:
                    case SCHEDULED_BLOCK:
                    case UNSAFE_BLOCK:
                    case BYPASS_BLOCK:
                    case AUTOFMT_SCOPE:
                        collectUsedNames(statement.block, names);
                        return;
                    case IF:
                        collectUsedNames(statement.expression, names);
                        collectUsedNames(statement.block, names);
                        collectUsedNames(statement.elseBlock, names);
                        return;
                    case WHILE:
                        collectUsedNames(statement.expression, names);
                        collectUsedNames(statement.block, names);
                        return;
                    case LAMBDA_DECL:
                        if (statement.function != null) {
                            collectUsedNames(statement.function.body, names);
                        }
                        return;
                    default:
                        return;
                }
            }

            private void collectUsedNames(ExpressionModel expression, Set<String> names) {
                if (expression == null) {
                    return;
                }
                if (expression.variableName != null) {
                    names.add(expression.variableName);
                }
                for (ExpressionModel child : expression.children) {
                    collectUsedNames(child, names);
                }
            }

            private void analyzeStatement(StatementModel statement, BorrowState state, Set<String> futureNames) {
                switch (statement.kind) {
                    case INIT:
                        analyzeInit(statement, state);
                        return;
                    case ASSIGNMENT:
                        analyzeAssignment(statement, state);
                        return;
                    case LTO_TYPESET:
                        analyzeLtoTypeset(statement, state);
                        return;
                    case RETURN:
                        analyzeReturn(statement, state);
                        return;
                    case EXPRESSION:
                        analyzeExpressionReads(statement.expression, state);
                        return;
                    case LAMBDA_DECL:
                        analyzeLambdaCapture(statement.function, state, statement.ctx);
                        return;
                    case BLOCK:
                        releaseNestedBlockInactiveBorrows(statement.block, futureNames, state);
                        analyzeBlock(statement.block, state);
                        return;
                    case SCHEDULED_BLOCK:
                        releaseNestedBlockInactiveBorrows(statement.block, futureNames, state);
                        analyzeScheduledBlock(statement.block, state);
                        return;
                    case UNSAFE_BLOCK:
                        releaseNestedBlockInactiveBorrows(statement.block, futureNames, state);
                        analyzeBlock(statement.block, state);
                        return;
                    case BYPASS_BLOCK:
                        return;
                    case AUTOFMT_SCOPE:
                        releaseNestedBlockInactiveBorrows(statement.block, futureNames, state);
                        analyzeAutofmtScope(statement.block, state);
                        return;
                    case AUTOCATCH:
                        releaseNestedBlockInactiveBorrows(statement.block, futureNames, state);
                        analyzeBlock(statement.block, state);
                        return;
                    case INDUCT:
                        analyzeInduct(statement, state);
                        return;
                    case RELEASE:
                        analyzeRelease(statement, state);
                        return;
                    case THREAD_CALL:
                        analyzeAsyncEscape(statement.expression, state, statement.ctx, "thread");
                        return;
                    case ASYNC_CALL:
                        analyzeAsyncEscape(statement.expression, state, statement.ctx, "async call");
                        return;
                    case IF:
                        analyzeExpressionReads(statement.expression, state);
                        BorrowState thenState = new BorrowState(state);
                        releaseNestedBlockInactiveBorrows(statement.block, futureNames, thenState);
                        analyzeBlock(statement.block, thenState);
                        BorrowState elseState = statement.elseBlock != null ? new BorrowState(state) : new BorrowState(state);
                        if (statement.elseBlock != null) {
                            releaseNestedBlockInactiveBorrows(statement.elseBlock, futureNames, elseState);
                            analyzeBlock(statement.elseBlock, elseState);
                        }
                        mergeMovedState(state, thenState, elseState);
                        return;
                    case WHILE:
                        analyzeExpressionReads(statement.expression, state);
                        BorrowState loopState = new BorrowState(state);
                        releaseNestedBlockInactiveBorrows(statement.block, futureNames, loopState);
                        analyzeBlock(statement.block, loopState);
                        mergeMovedState(state, loopState, state);
                        return;
                    default:
                        return;
                }
            }

            private void analyzeInit(StatementModel statement, BorrowState state) {
                BindingState binding = new BindingState(statement.name, statement.type, statement.isMutable, SymbolKind.LOCAL, statement.ctx);
                if (statement.type != null && statement.type.isReference()) {
                    bindReference(statement.expression, binding, state, statement.ctx);
                } else {
                    analyzeExpressionReads(statement.expression, state);
                    if (isBorrowExpression(statement.expression)) {
                        addDiagnostic(statement.ctx, "borrow expressions require a reference binding");
                    } else {
                        rejectManagedEscape(statement.expression, binding, statement.ctx, state, "initialize");
                        consumeMoveSourceIfNeeded(statement.expression, state, statement.ctx);
                        bindAllocatorDependency(statement.expression, binding, state);
                    }
                }
                state.define(binding);
                AutofmtOwnerScope currentOwner = currentOwnerScope();
                if (enforceOwnership && currentOwner != null && shouldAutoTrackManaged(binding.type)) {
                    currentOwner.track(binding, false);
                }
            }

            private void analyzeAssignment(StatementModel statement, BorrowState state) {
                BindingState target = state.resolve(statement.name);
                if (target == null) {
                    analyzeExpressionReads(statement.expression, state);
                    return;
                }
                ensureCommunalMutationAllowed(target, statement.ctx);
                ensureAssignable(target, statement.ctx);
                if (enforceBorrows && target.sharedBorrowCount > 0) {
                    addDiagnostic(statement.ctx, "cannot assign to `" + target.name + "` while it is still borrowed");
                }
                if (enforceBorrows && target.mutableBorrowHolder != null) {
                    addDiagnostic(statement.ctx, "cannot assign to `" + target.name + "` while it is mutably borrowed");
                }
                rejectManagedEscape(statement.expression, target, statement.ctx, state, statement.indexedAssignment ? "store" : "assign");
                if (statement.indexedAssignment) {
                    rejectAllocatorEscape(statement.expression, statement.ctx, state,
                            "store allocator-backed value through indexed assignment");
                    analyzeExpressionReads(statement.expression, state);
                    return;
                }
                if (target.type != null && target.type.isReference()) {
                    releaseBorrow(target, state);
                    bindReference(statement.expression, target, state, statement.ctx);
                    if (enforceOwnership) {
                        target.moved = false;
                    }
                    return;
                }
                analyzeExpressionReads(statement.expression, state);
                if (isBorrowExpression(statement.expression)) {
                    addDiagnostic(statement.ctx, "borrow expressions require a reference binding");
                    return;
                }
                String directSource = directVariableName(statement.expression);
                if (target.kind == SymbolKind.GLOBAL && directSource != null) {
                    BindingState sourceBinding = state.resolve(directSource);
                    if (sourceBinding != null && sourceBinding.managedOwnerScope != null) {
                        addDiagnostic(statement.ctx, "cannot assign owner-managed binding `" + sourceBinding.name
                                + "` to global `" + target.name + "` without `@release " + sourceBinding.name + ";`");
                    }
                }
                if (directSource == null || !directSource.equals(target.name)) {
                    consumeMoveSourceIfNeeded(statement.expression, state, statement.ctx);
                }
                bindAllocatorDependency(statement.expression, target, state);
                if (enforceOwnership) {
                    target.moved = false;
                }
            }

            private void analyzeLtoTypeset(StatementModel statement, BorrowState state) {
                BindingState target = state.resolve(statement.name);
                if (target == null) {
                    analyzeExpressionReads(statement.expression, state);
                    return;
                }
                ensureCommunalMutationAllowed(target, statement.ctx);
                ensureAssignable(target, statement.ctx);
                if (enforceBorrows && target.sharedBorrowCount > 0) {
                    addDiagnostic(statement.ctx, "cannot assign to `" + target.name + "` while it is still borrowed");
                }
                if (enforceBorrows && target.mutableBorrowHolder != null) {
                    addDiagnostic(statement.ctx, "cannot assign to `" + target.name + "` while it is mutably borrowed");
                }
                analyzeExpressionReads(statement.expression, state);
                if (enforceOwnership) {
                    target.moved = false;
                }
            }

            private void analyzeReturn(StatementModel statement, BorrowState state) {
                if (statement.expression == null) {
                    return;
                }
                String directVariable = directVariableName(statement.expression);
                if (enforceOwnership && directVariable != null) {
                    BindingState directBinding = state.resolve(directVariable);
                    if (directBinding != null && directBinding.managedOwnerScope != null) {
                        addDiagnostic(statement.ctx, "cannot return owner-managed binding `" + directBinding.name
                                + "` from `@autofmtdeclare` scope without `@release " + directBinding.name + ";`");
                        return;
                    }
                }
                if (function.returnType != null && function.returnType.isReference()) {
                    String variableName = referenceSourceVariableName(statement.expression, state);
                    if (variableName == null) {
                        reportReferenceSourceFailure(statement.expression, statement.ctx,
                                "reference returns must return a named binding so lifetimes can be verified");
                        return;
                    }
                    BindingState binding = state.resolve(variableName);
                    if (binding != null) {
                        BindingState origin = resolveBorrowOrigin(binding, state);
                        BindingState lifetimeSource = origin != null ? origin : binding;
                        if (lifetimeSource != null && lifetimeSource.kind == SymbolKind.LOCAL) {
                            addDiagnostic(statement.ctx, "cannot return a reference to local binding `" + lifetimeSource.name + "` because it does not live long enough");
                            return;
                        }
                        if (lifetimeSource != null
                                && lifetimeSource.kind == SymbolKind.PARAMETER
                                && (lifetimeSource.type == null || !lifetimeSource.type.isReference())) {
                            addDiagnostic(statement.ctx, "cannot return a reference to by-value parameter `" + lifetimeSource.name + "` because it does not live long enough");
                            return;
                        }
                        ensureReadable(lifetimeSource, statement.ctx);
                    }
                    return;
                }
                if (isBorrowExpression(statement.expression)) {
                    addDiagnostic(statement.ctx, "borrow expressions can only be returned from reference-returning functions");
                    return;
                }
                rejectAllocatorEscape(statement.expression, statement.ctx, state,
                        "return allocator-backed value from this function");
                analyzeExpressionReads(statement.expression, state);
                consumeMoveSourceIfNeeded(statement.expression, state, statement.ctx);
            }

            private void analyzeAutofmtScope(BlockModel block, BorrowState state) {
                if (!enforceOwnership) {
                    analyzeBlock(block, state);
                    return;
                }
                AutofmtOwnerScope ownerScope = new AutofmtOwnerScope();
                ownerScopes.push(ownerScope);
                try {
                    analyzeBlock(block, state);
                } finally {
                    ownerScopes.pop();
                    for (BindingState binding : new ArrayList<>(ownerScope.ownedBindings)) {
                        if (binding.managedOwnerScope != ownerScope) {
                            continue;
                        }
                        if (binding.inductedIntoManagedOwner) {
                            binding.moved = true;
                        }
                        ownerScope.release(binding);
                    }
                }
            }

            private void analyzeInduct(StatementModel statement, BorrowState state) {
                if (!enforceOwnership) {
                    return;
                }
                AutofmtOwnerScope currentOwner = currentOwnerScope();
                if (currentOwner == null) {
                    addDiagnostic(statement.ctx, "`@induct` is only valid inside `@autofmtdeclare {}` blocks");
                    return;
                }
                BindingState binding = state.resolve(statement.name);
                if (binding == null) {
                    addDiagnostic(statement.ctx, "cannot induct unknown binding `" + statement.name + "`");
                    return;
                }
                if (!canInductManaged(binding.type)) {
                    addDiagnostic(statement.ctx, "binding `" + binding.name + "` cannot be inducted because its type is not owner-managed in the current implementation");
                    return;
                }
                ensureReadable(binding, statement.ctx);
                if (binding.sharedBorrowCount > 0) {
                    addDiagnostic(statement.ctx, "cannot induct `" + binding.name + "` while shared borrows are active");
                    return;
                }
                if (binding.mutableBorrowHolder != null) {
                    addDiagnostic(statement.ctx, "cannot induct `" + binding.name + "` while it is mutably borrowed");
                    return;
                }
                if (binding.managedOwnerScope == currentOwner) {
                    return;
                }
                if (binding.managedOwnerScope != null) {
                    addDiagnostic(statement.ctx, "binding `" + binding.name + "` is already owned by another `@autofmtdeclare` scope");
                    return;
                }
                currentOwner.track(binding, true);
            }

            private void analyzeRelease(StatementModel statement, BorrowState state) {
                if (!enforceOwnership) {
                    return;
                }
                AutofmtOwnerScope currentOwner = currentOwnerScope();
                if (currentOwner == null) {
                    addDiagnostic(statement.ctx, "`@release` is only valid inside `@autofmtdeclare {}` blocks");
                    return;
                }
                BindingState binding = state.resolve(statement.name);
                if (binding == null) {
                    addDiagnostic(statement.ctx, "cannot release unknown binding `" + statement.name + "`");
                    return;
                }
                if (binding.managedOwnerScope != currentOwner) {
                    addDiagnostic(statement.ctx, "binding `" + binding.name + "` is not currently owned by this `@autofmtdeclare` scope");
                    return;
                }
                if (binding.sharedBorrowCount > 0) {
                    addDiagnostic(statement.ctx, "cannot release `" + binding.name + "` while shared borrows are active");
                    return;
                }
                if (binding.mutableBorrowHolder != null) {
                    addDiagnostic(statement.ctx, "cannot release `" + binding.name + "` while it is mutably borrowed");
                    return;
                }
                currentOwner.release(binding);
            }

            private void analyzeAsyncEscape(ExpressionModel expression, BorrowState state, ParserRuleContext ctx, String boundary) {
                if (!enforceOwnership) {
                    analyzeExpressionReads(expression, state);
                    return;
                }
                analyzeExpressionReads(expression, state);
                rejectAllocatorEscape(expression, ctx, state,
                        "pass allocator-backed value across " + boundary + " boundary");
                List<String> managedNames = collectManagedVariableReferences(expression, state);
                if (managedNames.isEmpty()) {
                    return;
                }
                String bindingName = managedNames.get(0);
                addDiagnostic(ctx, "cannot pass owner-managed binding `" + bindingName
                        + "` across " + boundary + " boundary without `@release " + bindingName + ";`");
            }

            private void analyzeLambdaCapture(FunctionModel lambda, BorrowState state, ParserRuleContext ctx) {
                if (!enforceOwnership || lambda == null || lambda.body == null) {
                    return;
                }
                Deque<Set<String>> localScopes = new ArrayDeque<>();
                localScopes.push(new LinkedHashSet<>());
                for (ParameterModel parameter : lambda.parameters) {
                    localScopes.peek().add(parameter.name);
                }
                List<String> capturedManaged = new ArrayList<>();
                List<String> capturedAllocatorBacked = new ArrayList<>();
                collectLambdaManagedCaptures(lambda.body, state, localScopes, capturedManaged);
                collectLambdaAllocatorCaptures(lambda.body, state, localScopes, capturedAllocatorBacked);
                if (!capturedManaged.isEmpty()) {
                    String bindingName = capturedManaged.get(0);
                    addDiagnostic(ctx, "lambda `" + lambda.name + "` cannot capture owner-managed binding `" + bindingName
                            + "` without `@release " + bindingName + ";`");
                    return;
                }
                if (!capturedAllocatorBacked.isEmpty()) {
                    String bindingName = capturedAllocatorBacked.get(0);
                    BindingState binding = state.resolve(bindingName);
                    BindingState allocatorBinding = binding != null && binding.allocatorBindingName != null
                            ? state.resolve(binding.allocatorBindingName)
                            : null;
                    if (allocatorBinding != null) {
                        addDiagnostic(ctx, "lambda `" + lambda.name + "` cannot capture allocator-backed binding `"
                                + bindingName + "` because allocator `" + allocatorBinding.name + "` does not live long enough");
                    }
                }
            }

            private void rejectManagedEscape(ExpressionModel expression, BindingState target, ParserRuleContext ctx,
                    BorrowState state, String action) {
                if (!enforceOwnership) {
                    return;
                }
                String directSource = directVariableName(expression);
                if (directSource == null) {
                    return;
                }
                BindingState sourceBinding = state.resolve(directSource);
                if (sourceBinding == null || sourceBinding.managedOwnerScope == null) {
                    return;
                }
                if (target != null && target.managedOwnerScope != null && target.managedOwnerScope != sourceBinding.managedOwnerScope) {
                    addDiagnostic(ctx, "cannot move owner-managed binding `" + sourceBinding.name
                            + "` into binding `" + target.name + "` owned by a different `@autofmtdeclare` scope");
                    return;
                }
                if ("store".equals(action)) {
                    addDiagnostic(ctx, "cannot store owner-managed binding `" + sourceBinding.name
                            + "` through indexed assignment without `@release " + sourceBinding.name + ";`");
                    return;
                }
                if (target != null && target.managedOwnerScope == sourceBinding.managedOwnerScope) {
                    return;
                }
                String targetName = target != null ? target.name : "destination";
                addDiagnostic(ctx, "cannot " + action + " owner-managed binding `" + sourceBinding.name
                        + "` into `" + targetName + "` without `@release " + sourceBinding.name + ";`");
            }

            private void collectLambdaManagedCaptures(BlockModel block, BorrowState state, Deque<Set<String>> localScopes,
                    List<String> capturedManaged) {
                if (block == null) {
                    return;
                }
                localScopes.push(new LinkedHashSet<>());
                try {
                    for (StatementModel statement : block.statements) {
                        collectLambdaManagedCaptures(statement, state, localScopes, capturedManaged);
                    }
                } finally {
                    localScopes.pop();
                }
            }

            private void collectLambdaManagedCaptures(StatementModel statement, BorrowState state, Deque<Set<String>> localScopes,
                    List<String> capturedManaged) {
                if (statement == null) {
                    return;
                }
                switch (statement.kind) {
                    case INIT:
                        collectLambdaManagedCaptures(statement.expression, state, localScopes, capturedManaged);
                        localScopes.peek().add(statement.name);
                        return;
                    case ASSIGNMENT:
                        if (!isLambdaLocal(statement.name, localScopes)) {
                            collectManagedCaptureName(statement.name, state, capturedManaged);
                        }
                        collectLambdaManagedCaptures(statement.expression, state, localScopes, capturedManaged);
                        return;
                    case RETURN:
                    case EXPRESSION:
                    case THREAD_CALL:
                    case ASYNC_CALL:
                        collectLambdaManagedCaptures(statement.expression, state, localScopes, capturedManaged);
                        return;
                    case INDUCT:
                    case RELEASE:
                        if (!isLambdaLocal(statement.name, localScopes)) {
                            collectManagedCaptureName(statement.name, state, capturedManaged);
                        }
                        return;
                    case BLOCK:
                    case SCHEDULED_BLOCK:
                    case UNSAFE_BLOCK:
                    case AUTOFMT_SCOPE:
                        collectLambdaManagedCaptures(statement.block, state, localScopes, capturedManaged);
                        return;
                    case BYPASS_BLOCK:
                        return;
                    case IF:
                        collectLambdaManagedCaptures(statement.expression, state, localScopes, capturedManaged);
                        collectLambdaManagedCaptures(statement.block, state, localScopes, capturedManaged);
                        if (statement.elseBlock != null) {
                            collectLambdaManagedCaptures(statement.elseBlock, state, localScopes, capturedManaged);
                        }
                        return;
                    case WHILE:
                        collectLambdaManagedCaptures(statement.expression, state, localScopes, capturedManaged);
                        collectLambdaManagedCaptures(statement.block, state, localScopes, capturedManaged);
                        return;
                    case LAMBDA_DECL:
                        return;
                    default:
                        return;
                }
            }

            private void collectLambdaManagedCaptures(ExpressionModel expression, BorrowState state, Deque<Set<String>> localScopes,
                    List<String> capturedManaged) {
                if (expression == null) {
                    return;
                }
                if (expression.variableName != null && !isLambdaLocal(expression.variableName, localScopes)) {
                    collectManagedCaptureName(expression.variableName, state, capturedManaged);
                }
                for (ExpressionModel child : expression.children) {
                    collectLambdaManagedCaptures(child, state, localScopes, capturedManaged);
                }
            }

            private void collectManagedCaptureName(String name, BorrowState state, List<String> capturedManaged) {
                BindingState binding = state.resolve(name);
                if (binding != null && binding.managedOwnerScope != null && !capturedManaged.contains(binding.name)) {
                    capturedManaged.add(binding.name);
                }
            }

            private void collectLambdaAllocatorCaptures(BlockModel block, BorrowState state, Deque<Set<String>> localScopes,
                    List<String> capturedAllocatorBacked) {
                if (block == null) {
                    return;
                }
                localScopes.push(new LinkedHashSet<>());
                try {
                    for (StatementModel statement : block.statements) {
                        collectLambdaAllocatorCaptures(statement, state, localScopes, capturedAllocatorBacked);
                    }
                } finally {
                    localScopes.pop();
                }
            }

            private void collectLambdaAllocatorCaptures(StatementModel statement, BorrowState state, Deque<Set<String>> localScopes,
                    List<String> capturedAllocatorBacked) {
                if (statement == null) {
                    return;
                }
                switch (statement.kind) {
                    case INIT:
                        collectLambdaAllocatorCaptures(statement.expression, state, localScopes, capturedAllocatorBacked);
                        localScopes.peek().add(statement.name);
                        return;
                    case ASSIGNMENT:
                        if (!isLambdaLocal(statement.name, localScopes)) {
                            collectAllocatorCaptureName(statement.name, state, capturedAllocatorBacked);
                        }
                        collectLambdaAllocatorCaptures(statement.expression, state, localScopes, capturedAllocatorBacked);
                        return;
                    case RETURN:
                    case EXPRESSION:
                    case THREAD_CALL:
                    case ASYNC_CALL:
                        collectLambdaAllocatorCaptures(statement.expression, state, localScopes, capturedAllocatorBacked);
                        return;
                    case INDUCT:
                    case RELEASE:
                        if (!isLambdaLocal(statement.name, localScopes)) {
                            collectAllocatorCaptureName(statement.name, state, capturedAllocatorBacked);
                        }
                        return;
                    case BLOCK:
                    case SCHEDULED_BLOCK:
                    case UNSAFE_BLOCK:
                    case AUTOFMT_SCOPE:
                        collectLambdaAllocatorCaptures(statement.block, state, localScopes, capturedAllocatorBacked);
                        return;
                    case BYPASS_BLOCK:
                        return;
                    case IF:
                        collectLambdaAllocatorCaptures(statement.expression, state, localScopes, capturedAllocatorBacked);
                        collectLambdaAllocatorCaptures(statement.block, state, localScopes, capturedAllocatorBacked);
                        if (statement.elseBlock != null) {
                            collectLambdaAllocatorCaptures(statement.elseBlock, state, localScopes, capturedAllocatorBacked);
                        }
                        return;
                    case WHILE:
                        collectLambdaAllocatorCaptures(statement.expression, state, localScopes, capturedAllocatorBacked);
                        collectLambdaAllocatorCaptures(statement.block, state, localScopes, capturedAllocatorBacked);
                        return;
                    case LAMBDA_DECL:
                        return;
                    default:
                        return;
                }
            }

            private void collectLambdaAllocatorCaptures(ExpressionModel expression, BorrowState state, Deque<Set<String>> localScopes,
                    List<String> capturedAllocatorBacked) {
                if (expression == null) {
                    return;
                }
                if (expression.variableName != null && !isLambdaLocal(expression.variableName, localScopes)) {
                    collectAllocatorCaptureName(expression.variableName, state, capturedAllocatorBacked);
                }
                for (ExpressionModel child : expression.children) {
                    collectLambdaAllocatorCaptures(child, state, localScopes, capturedAllocatorBacked);
                }
            }

            private void collectAllocatorCaptureName(String name, BorrowState state, List<String> capturedAllocatorBacked) {
                BindingState binding = state.resolve(name);
                if (binding == null || binding.allocatorBindingName == null || capturedAllocatorBacked.contains(binding.name)) {
                    return;
                }
                BindingState allocatorBinding = state.resolve(binding.allocatorBindingName);
                if (requiresAllocatorLifetimeCheck(allocatorBinding)) {
                    capturedAllocatorBacked.add(binding.name);
                }
            }

            private boolean isLambdaLocal(String name, Deque<Set<String>> localScopes) {
                for (Set<String> scope : localScopes) {
                    if (scope.contains(name)) {
                        return true;
                    }
                }
                return false;
            }

            private List<String> collectManagedVariableReferences(ExpressionModel expression, BorrowState state) {
                List<String> names = new ArrayList<>();
                collectManagedVariableReferences(expression, state, names);
                return names;
            }

            private void collectManagedVariableReferences(ExpressionModel expression, BorrowState state, List<String> names) {
                if (expression == null) {
                    return;
                }
                if ((expression.kind == ExpressionKind.VARIABLE
                        || expression.kind == ExpressionKind.SHARED_BORROW
                        || expression.kind == ExpressionKind.MUTABLE_BORROW)
                        && expression.variableName != null) {
                    BindingState binding = state.resolve(expression.variableName);
                    if (binding != null && binding.managedOwnerScope != null && !names.contains(binding.name)) {
                        names.add(binding.name);
                    }
                }
                for (ExpressionModel child : expression.children) {
                    collectManagedVariableReferences(child, state, names);
                }
            }

            private void bindReference(ExpressionModel expression, BindingState binding, BorrowState state, ParserRuleContext ctx) {
                String variableName = referenceSourceVariableName(expression, state);
                if (variableName == null) {
                    reportReferenceSourceFailure(expression, ctx,
                            "reference bindings must be initialized from a named binding in the current implementation");
                    return;
                }
                BindingState sourceBinding = state.resolve(variableName);
                if (sourceBinding == null) {
                    return;
                }
                BindingState borrowSource = sourceBinding;
                if (sourceBinding.type == null || !sourceBinding.type.isReference()) {
                    BindingState origin = resolveBorrowOrigin(sourceBinding, state);
                    borrowSource = origin != null ? origin : sourceBinding;
                }
                boolean explicitSharedBorrow = expression.kind == ExpressionKind.SHARED_BORROW;
                boolean explicitMutableBorrow = expression.kind == ExpressionKind.MUTABLE_BORROW;
                boolean mutableBorrow = explicitMutableBorrow || (!explicitSharedBorrow && binding.isMutable);
                binding.ambiguousBorrowOrigin = false;
                if (mutableBorrow) {
                    if (enforceBorrows) {
                        ensureMutableBorrowable(borrowSource, ctx);
                        borrowSource.mutableBorrowHolder = binding.name;
                    }
                    binding.borrowedFrom = borrowSource.name;
                    binding.mutablyBorrowedFrom = true;
                    return;
                }
                if (enforceBorrows) {
                    ensureSharedBorrowable(borrowSource, ctx);
                    borrowSource.sharedBorrowCount++;
                }
                binding.borrowedFrom = borrowSource.name;
                binding.mutablyBorrowedFrom = false;
            }

            private void consumeMoveSourceIfNeeded(ExpressionModel expression, BorrowState state, ParserRuleContext ctx) {
                if (!enforceOwnership) {
                    return;
                }
                if (isBorrowExpression(expression)) {
                    return;
                }
                String variableName = directVariableName(expression);
                if (variableName == null) {
                    return;
                }
                BindingState sourceBinding = state.resolve(variableName);
                if (sourceBinding == null || sourceBinding.kind == SymbolKind.GLOBAL) {
                    return;
                }
                ensureReadable(sourceBinding, ctx);
                if (sourceBinding.type != null && (sourceBinding.type.isCopyType() || sourceBinding.type.isReference())) {
                    return;
                }
                if (sourceBinding.sharedBorrowCount > 0) {
                    addDiagnostic(ctx, "cannot move `" + sourceBinding.name + "` while it is borrowed");
                    return;
                }
                if (sourceBinding.mutableBorrowHolder != null) {
                    addDiagnostic(ctx, "cannot move `" + sourceBinding.name + "` while it is mutably borrowed");
                    return;
                }
                sourceBinding.moved = true;
            }

            private void analyzeExpressionReads(ExpressionModel expression, BorrowState state) {
                if (expression == null) {
                    return;
                }
                if (expression.kind == ExpressionKind.VARIABLE) {
                    BindingState binding = state.resolve(expression.variableName);
                    if (binding != null) {
                        ensureReadable(binding, expression.ctx);
                    }
                } else if (expression.kind == ExpressionKind.SHARED_BORROW) {
                    BindingState binding = state.resolve(expression.variableName);
                    if (binding != null) {
                        BindingState origin = resolveBorrowOrigin(binding, state);
                        ensureSharedBorrowable(origin != null ? origin : binding, expression.ctx);
                    }
                } else if (expression.kind == ExpressionKind.MUTABLE_BORROW) {
                    BindingState binding = state.resolve(expression.variableName);
                    if (binding != null) {
                        BindingState origin = resolveBorrowOrigin(binding, state);
                        ensureMutableBorrowable(origin != null ? origin : binding, expression.ctx);
                    }
                } else if (expression.kind == ExpressionKind.CALL) {
                    analyzeCallExpression(expression, state);
                    return;
                } else if (expression.kind == ExpressionKind.MEMBER_ACCESS) {
                    analyzeMemberAccessExpression(expression, state);
                    return;
                }
                for (ExpressionModel child : expression.children) {
                    analyzeExpressionReads(child, state);
                }
            }

            private void analyzeCallExpression(ExpressionModel expression, BorrowState state) {
                FunctionSummary summary = functionSummaries.get(expression.text);
                for (int index = 0; index < expression.children.size(); index++) {
                    ExpressionModel argument = expression.children.get(index);
                    analyzeExpressionReads(argument, state);
                    if (summary == null || index >= summary.parameters.size()) {
                        continue;
                    }
                    applyCallParameterContract(summary, index, argument, state, expression.ctx);
                }
            }

            private void analyzeMemberAccessExpression(ExpressionModel expression, BorrowState state) {
                if (!expression.children.isEmpty()) {
                    BindingState binding = expression.children.get(0).variableName != null
                            ? state.resolve(expression.children.get(0).variableName)
                            : null;
                    if (binding != null) {
                        ensureCommunalReadAllowed(binding, expression.ctx);
                    }
                    analyzeExpressionReads(expression.children.get(0), state);
                }
                if (expression.children.size() < 2) {
                    return;
                }
                ExpressionModel member = expression.children.get(1);
                if (member.kind == ExpressionKind.CALL) {
                    for (ExpressionModel argument : member.children) {
                        analyzeExpressionReads(argument, state);
                    }
                    return;
                }
                analyzeExpressionReads(member, state);
            }

            private void applyCallParameterContract(FunctionSummary summary, int index, ExpressionModel argument,
                    BorrowState state, ParserRuleContext ctx) {
                ParameterModel parameter = summary.parameters.get(index);
                if (parameter.type != null && parameter.type.isReference()) {
                    String sourceName = referenceSourceVariableName(argument, state);
                    if (sourceName != null) {
                        BindingState sourceBinding = state.resolve(sourceName);
                        if (sourceBinding != null) {
                            BindingState borrowSource = sourceBinding;
                            if (sourceBinding.type == null || !sourceBinding.type.isReference()) {
                                BindingState origin = resolveBorrowOrigin(sourceBinding, state);
                                borrowSource = origin != null ? origin : sourceBinding;
                            }
                            if (parameter.isMutable) {
                                ensureMutableBorrowable(borrowSource, ctx);
                            } else {
                                ensureSharedBorrowable(borrowSource, ctx);
                            }
                        }
                    }
                } else if (isBorrowExpression(argument)) {
                    addDiagnostic(ctx, "borrow expression cannot be passed to by-value parameter `" + parameter.name + "`");
                    return;
                } else if (parameter.type != null && !parameter.type.isCopyType()) {
                    consumeMoveSourceIfNeeded(argument, state, ctx);
                }

                Set<ParameterEscapeKind> escapeKinds = summary.escapingParameters.get(index);
                if (escapeKinds == null || escapeKinds.isEmpty()) {
                    return;
                }

                rejectAllocatorEscape(argument, ctx, state,
                        "pass allocator-backed value to `" + summary.name + "` because it may escape the current allocator lifetime");

                String directSource = directVariableName(argument);
                if (directSource == null) {
                    return;
                }
                BindingState sourceBinding = state.resolve(directSource);
                if (sourceBinding == null || sourceBinding.managedOwnerScope == null) {
                    return;
                }

                switch (selectPreferredEscapeKind(escapeKinds)) {
                    case GLOBAL_ASSIGN:
                        addDiagnostic(ctx, "cannot pass owner-managed binding `" + sourceBinding.name
                                + "` to `" + summary.name + "` because it may assign the value to a global without `@release "
                                + sourceBinding.name + ";`");
                        return;
                    case INDEXED_STORE:
                        addDiagnostic(ctx, "cannot pass owner-managed binding `" + sourceBinding.name
                                + "` to `" + summary.name + "` because it may store the value through indexed assignment without `@release "
                                + sourceBinding.name + ";`");
                        return;
                    case ASYNC_BOUNDARY:
                        addDiagnostic(ctx, "cannot pass owner-managed binding `" + sourceBinding.name
                                + "` to `" + summary.name + "` because it may pass the value across async call boundary without `@release "
                                + sourceBinding.name + ";`");
                        return;
                    case THREAD_BOUNDARY:
                        addDiagnostic(ctx, "cannot pass owner-managed binding `" + sourceBinding.name
                                + "` to `" + summary.name + "` because it may pass the value across thread boundary without `@release "
                                + sourceBinding.name + ";`");
                        return;
                    case LAMBDA_CAPTURE:
                        addDiagnostic(ctx, "cannot pass owner-managed binding `" + sourceBinding.name
                                + "` to `" + summary.name + "` because it may capture the value in a lambda without `@release "
                                + sourceBinding.name + ";`");
                        return;
                    default:
                        return;
                }
            }

            private ParameterEscapeKind selectPreferredEscapeKind(Set<ParameterEscapeKind> escapeKinds) {
                if (escapeKinds.contains(ParameterEscapeKind.GLOBAL_ASSIGN)) {
                    return ParameterEscapeKind.GLOBAL_ASSIGN;
                }
                if (escapeKinds.contains(ParameterEscapeKind.INDEXED_STORE)) {
                    return ParameterEscapeKind.INDEXED_STORE;
                }
                if (escapeKinds.contains(ParameterEscapeKind.ASYNC_BOUNDARY)) {
                    return ParameterEscapeKind.ASYNC_BOUNDARY;
                }
                if (escapeKinds.contains(ParameterEscapeKind.THREAD_BOUNDARY)) {
                    return ParameterEscapeKind.THREAD_BOUNDARY;
                }
                return ParameterEscapeKind.LAMBDA_CAPTURE;
            }

            private void reportReferenceSourceFailure(ExpressionModel expression, ParserRuleContext ctx, String fallbackMessage) {
                if (expression != null && expression.kind == ExpressionKind.CALL) {
                    FunctionSummary summary = functionSummaries.get(expression.text);
                    if (summary != null && summary.returnType != null && summary.returnType.isReference()) {
                        if (summary.hasAmbiguousReturnedReferenceOrigin()) {
                            addDiagnostic(ctx, "reference call `" + summary.name + "` can return multiple parameter-backed origins in the current analysis");
                            return;
                        }
                        if (summary.hasUnknownReturnedReferenceOrigin()) {
                            addDiagnostic(ctx, "reference call `" + summary.name + "` does not resolve to a stable parameter-backed origin in the current analysis");
                            return;
                        }
                    }
                }
                addDiagnostic(ctx, fallbackMessage);
            }

            private void ensureReadable(BindingState binding, ParserRuleContext ctx) {
                if (binding == null) {
                    return;
                }
                if (binding.type != null && binding.type.isReference() && binding.ambiguousBorrowOrigin) {
                    addDiagnostic(ctx, "cannot use reference binding `" + binding.name + "` after control-flow merge with incompatible borrow origins");
                    return;
                }
                if (enforceOwnership && binding.moved) {
                    addDiagnostic(ctx, "cannot use `" + binding.name + "` after it has been moved");
                }
                if (enforceBorrows && binding.mutableBorrowHolder != null) {
                    addDiagnostic(ctx, "cannot use `" + binding.name + "` while it is mutably borrowed");
                }
            }

            private void ensureAssignable(BindingState binding, ParserRuleContext ctx) {
                if (binding == null) {
                    return;
                }
                if (enforceOwnership && !binding.isMutable) {
                    addDiagnostic(ctx, "cannot assign to immutable binding `" + binding.name + "`"
                            + System.lineSeparator() + "suggested fix: mark `" + binding.name + "` as `nconst` if reassignment is required");
                }
            }

            private void ensureCommunalReadAllowed(BindingState binding, ParserRuleContext ctx) {
                if (binding == null || !isCommunalType(binding.type) || scheduledTaskContext) {
                    return;
                }
                addDiagnostic(ctx, "cannot access communal binding `" + binding.name + "` outside scheduled task context");
            }

            private void ensureCommunalMutationAllowed(BindingState binding, ParserRuleContext ctx) {
                if (binding == null || !isCommunalType(binding.type) || scheduledTaskContext) {
                    return;
                }
                addDiagnostic(ctx, "cannot mutate communal binding `" + binding.name + "` outside scheduled task context");
            }

            private void ensureSharedBorrowable(BindingState binding, ParserRuleContext ctx) {
                ensureReadable(binding, ctx);
                if (enforceBorrows && binding != null && binding.mutableBorrowHolder != null) {
                    addDiagnostic(ctx, "cannot immutably borrow `" + binding.name + "` while it is mutably borrowed");
                }
            }

            private void ensureMutableBorrowable(BindingState binding, ParserRuleContext ctx) {
                if (!enforceBorrows) {
                    return;
                }
                if (binding == null) {
                    return;
                }
                ensureReadable(binding, ctx);
                if (!binding.isMutable) {
                    addDiagnostic(ctx, "cannot mutably borrow immutable binding `" + binding.name + "`"
                            + System.lineSeparator() + "suggested fix: mark `" + binding.name + "` as `nconst` before binding a mutable reference to it");
                }
                if (binding.sharedBorrowCount > 0) {
                    addDiagnostic(ctx, "cannot mutably borrow `" + binding.name + "` while shared borrows are active");
                }
                if (binding.mutableBorrowHolder != null) {
                    addDiagnostic(ctx, "cannot mutably borrow `" + binding.name + "` more than once at a time");
                }
            }

            private void releaseBorrow(BindingState binding, BorrowState state) {
                if (binding == null || binding.borrowedFrom == null) {
                    return;
                }
                BindingState source = state.resolve(binding.borrowedFrom);
                if (source != null) {
                    if (binding.mutablyBorrowedFrom) {
                        if (binding.name.equals(source.mutableBorrowHolder)) {
                            source.mutableBorrowHolder = null;
                        }
                    } else if (source.sharedBorrowCount > 0) {
                        source.sharedBorrowCount--;
                    }
                }
                clearReferenceBinding(binding);
            }

            private void clearReferenceBinding(BindingState binding) {
                if (binding == null) {
                    return;
                }
                binding.borrowedFrom = null;
                binding.mutablyBorrowedFrom = false;
                binding.ambiguousBorrowOrigin = false;
            }

            private BindingState resolveBorrowOrigin(BindingState binding, BorrowState state) {
                BindingState current = binding;
                while (current != null && current.borrowedFrom != null) {
                    BindingState next = state.resolve(current.borrowedFrom);
                    if (next == null || next == current) {
                        break;
                    }
                    current = next;
                }
                return current;
            }

            private String directVariableName(ExpressionModel expression) {
                if (expression == null) {
                    return null;
                }
                if (expression.kind == ExpressionKind.VARIABLE
                        || expression.kind == ExpressionKind.SHARED_BORROW
                        || expression.kind == ExpressionKind.MUTABLE_BORROW) {
                    return expression.variableName;
                }
                if (expression.kind == ExpressionKind.GROUP && expression.children.size() == 1) {
                    return directVariableName(expression.children.get(0));
                }
                return null;
            }

            private boolean isBorrowExpression(ExpressionModel expression) {
                if (expression == null) {
                    return false;
                }
                if (expression.kind == ExpressionKind.SHARED_BORROW
                        || expression.kind == ExpressionKind.MUTABLE_BORROW) {
                    return true;
                }
                return expression.kind == ExpressionKind.GROUP
                        && expression.children.size() == 1
                        && isBorrowExpression(expression.children.get(0));
            }

            private void bindAllocatorDependency(ExpressionModel expression, BindingState target, BorrowState state) {
                if (target == null) {
                    return;
                }
                target.allocatorBindingName = allocatorDependencyName(expression, state);
            }

            private void validateAllocatorDependenciesLeavingScope(BorrowState state) {
                Map<String, BindingState> exitingScope = state.currentScope();
                if (exitingScope == null || exitingScope.isEmpty()) {
                    return;
                }
                Map<String, BindingState> outerBindings = state.outerVisibleBindings();
                if (outerBindings.isEmpty()) {
                    return;
                }
                for (BindingState exitingBinding : exitingScope.values()) {
                    if (!requiresAllocatorLifetimeCheck(exitingBinding)) {
                        continue;
                    }
                    for (BindingState outerBinding : outerBindings.values()) {
                        if (outerBinding == null || outerBinding.moved || !exitingBinding.name.equals(outerBinding.allocatorBindingName)) {
                            continue;
                        }
                        addDiagnostic(outerBinding.ctx, "allocator-backed binding `" + outerBinding.name
                                + "` cannot outlive allocator `" + exitingBinding.name + "`");
                    }
                }
            }

            private void rejectAllocatorEscape(ExpressionModel expression, ParserRuleContext ctx, BorrowState state, String action) {
                if (!enforceOwnership) {
                    return;
                }
                String allocatorName = allocatorDependencyName(expression, state);
                if (allocatorName == null) {
                    return;
                }
                BindingState allocatorBinding = state.resolve(allocatorName);
                if (!requiresAllocatorLifetimeCheck(allocatorBinding)) {
                    return;
                }
                addDiagnostic(ctx, "cannot " + action + " because allocator `" + allocatorBinding.name + "` does not live long enough");
            }

            private boolean requiresAllocatorLifetimeCheck(BindingState allocatorBinding) {
                if (allocatorBinding == null) {
                    return false;
                }
                if (allocatorBinding.kind == SymbolKind.LOCAL) {
                    return true;
                }
                return allocatorBinding.kind == SymbolKind.PARAMETER
                        && (allocatorBinding.type == null || !allocatorBinding.type.isReference());
            }

            private String allocatorDependencyName(ExpressionModel expression, BorrowState state) {
                if (expression == null) {
                    return null;
                }
                if (expression.kind == ExpressionKind.GROUP && expression.children.size() == 1) {
                    return allocatorDependencyName(expression.children.get(0), state);
                }
                String directSource = directVariableName(expression);
                if (directSource != null) {
                    BindingState sourceBinding = state.resolve(directSource);
                    if (sourceBinding != null && sourceBinding.allocatorBindingName != null) {
                        return sourceBinding.allocatorBindingName;
                    }
                }
                if (expression.kind == ExpressionKind.INSTANCE_VALUE
                        && expression.ctx instanceof compilerv1Parser.InstanceValueContext
                        && ((compilerv1Parser.InstanceValueContext) expression.ctx).allocatorUseSuffix() != null
                        && !expression.children.isEmpty()) {
                    return directVariableName(expression.children.get(expression.children.size() - 1));
                }
                for (ExpressionModel child : expression.children) {
                    String dependency = allocatorDependencyName(child, state);
                    if (dependency != null) {
                        return dependency;
                    }
                }
                return null;
            }

            private String referenceSourceVariableName(ExpressionModel expression, BorrowState state) {
                if (expression == null) {
                    return null;
                }
                if (expression.kind == ExpressionKind.VARIABLE
                        || expression.kind == ExpressionKind.SHARED_BORROW
                        || expression.kind == ExpressionKind.MUTABLE_BORROW) {
                    return expression.variableName;
                }
                if (expression.kind == ExpressionKind.GROUP && expression.children.size() == 1) {
                    return referenceSourceVariableName(expression.children.get(0), state);
                }
                if (expression.kind != ExpressionKind.CALL) {
                    return null;
                }

                FunctionSummary summary = functionSummaries.get(expression.text);
                if (summary == null || summary.returnType == null || !summary.returnType.isReference()) {
                    return null;
                }
                Integer returnedIndex = summary.singleReturnedReferenceParameterIndex();
                if (returnedIndex == null) {
                    return null;
                }
                int index = returnedIndex;
                if (index < 0 || index >= expression.children.size()) {
                    return null;
                }
                return referenceSourceVariableName(expression.children.get(index), state);
            }

            private void mergeMovedState(BorrowState target, BorrowState left, BorrowState right) {
                Map<String, BindingState> targetBindings = target.visibleBindings();
                for (Map.Entry<String, BindingState> entry : targetBindings.entrySet()) {
                    BindingState targetBinding = entry.getValue();
                    BindingState leftBinding = left.resolve(entry.getKey());
                    BindingState rightBinding = right.resolve(entry.getKey());
                    boolean leftMoved = leftBinding != null && leftBinding.moved;
                    boolean rightMoved = rightBinding != null && rightBinding.moved;
                    targetBinding.moved = targetBinding.moved || leftMoved || rightMoved;
                    if (targetBinding.type != null && targetBinding.type.isReference()) {
                        mergeReferenceBindingState(targetBinding, leftBinding, rightBinding);
                    } else {
                        targetBinding.ambiguousBorrowOrigin = false;
                    }
                }
                rebuildBorrowRelationships(target, targetBindings.values());
            }

            private void mergeReferenceBindingState(BindingState targetBinding, BindingState leftBinding, BindingState rightBinding) {
                boolean leftAmbiguous = leftBinding != null && leftBinding.ambiguousBorrowOrigin;
                boolean rightAmbiguous = rightBinding != null && rightBinding.ambiguousBorrowOrigin;
                if (leftAmbiguous || rightAmbiguous) {
                    clearReferenceBinding(targetBinding);
                    targetBinding.ambiguousBorrowOrigin = true;
                    return;
                }

                String leftBorrowedFrom = leftBinding != null ? leftBinding.borrowedFrom : null;
                String rightBorrowedFrom = rightBinding != null ? rightBinding.borrowedFrom : null;
                boolean leftMutableBorrow = leftBinding != null && leftBinding.mutablyBorrowedFrom;
                boolean rightMutableBorrow = rightBinding != null && rightBinding.mutablyBorrowedFrom;

                if (Objects.equals(leftBorrowedFrom, rightBorrowedFrom)
                        && (leftBorrowedFrom == null || leftMutableBorrow == rightMutableBorrow)) {
                    targetBinding.borrowedFrom = leftBorrowedFrom;
                    targetBinding.mutablyBorrowedFrom = leftBorrowedFrom != null && leftMutableBorrow;
                    targetBinding.ambiguousBorrowOrigin = false;
                    return;
                }

                clearReferenceBinding(targetBinding);
                targetBinding.ambiguousBorrowOrigin = true;
            }

            private void rebuildBorrowRelationships(BorrowState target, Collection<BindingState> bindings) {
                for (BindingState binding : bindings) {
                    binding.sharedBorrowCount = 0;
                    binding.mutableBorrowHolder = null;
                }
                for (BindingState binding : bindings) {
                    if (binding.borrowedFrom == null || binding.ambiguousBorrowOrigin) {
                        continue;
                    }
                    BindingState source = target.resolve(binding.borrowedFrom);
                    if (source == null) {
                        continue;
                    }
                    if (binding.mutablyBorrowedFrom) {
                        source.mutableBorrowHolder = binding.name;
                    } else {
                        source.sharedBorrowCount++;
                    }
                }
            }

            private AutofmtOwnerScope currentOwnerScope() {
                return ownerScopes.peek();
            }

            private boolean shouldAutoTrackManaged(SemanticType type) {
                if (type == null || type.isRawPointer() || type.isReference()) {
                    return false;
                }
                if ("fn".equals(type.name)) {
                    return false;
                }
                return !type.isCopyType();
            }

            private boolean canInductManaged(SemanticType type) {
                if (type == null || type.isRawPointer() || type.isReference()) {
                    return false;
                }
                return !"fn".equals(type.name) && !"void".equals(type.name);
            }

            private boolean isCommunalType(SemanticType type) {
                return type != null && communalTypes.contains(type.name);
            }
        }
    }

    private static final class MemoryLeakChecker extends compilerv1BaseVisitor<Void> {
        private final SourceFileContext source;
        private final Deque<Map<String, AllocationRecord>> scopes = new ArrayDeque<>();
        private final List<String> warnings = new ArrayList<>();

        private MemoryLeakChecker(SourceFileContext source) {
            this.source = source;
            scopes.push(new LinkedHashMap<>());
        }

        @Override
        public Void visitProgram(compilerv1Parser.ProgramContext ctx) {
            return super.visitProgram(ctx);
        }

        @Override
        public Void visitBlock(compilerv1Parser.BlockContext ctx) {
            scopes.push(new LinkedHashMap<>());
            super.visitBlock(ctx);
            flushScope();
            return null;
        }

        @Override
        public Void visitMalloc(compilerv1Parser.MallocContext ctx) {
            String name = ctx.ID().getText();
            String detail = "allocation `" + name + "` may leak because it is not released before leaving scope";
            String releaseHint = "release it with `void " + name + ";`";
            trackAllocation(name, ctx, "malloc", detail, releaseHint);
            return null;
        }

        @Override
        public Void visitMntDecl(compilerv1Parser.MntDeclContext ctx) {
            String name = ctx.ID().getText();
            String detail = "`mnt` allocation `" + name + "` may leak because it is not released before leaving scope";
            String releaseHint = "release it with `void " + name + ";`";
            trackAllocation(name, ctx, "mnt", detail, releaseHint);
            return null;
        }

        @Override
        public Void visitPlcnew(compilerv1Parser.PlcnewContext ctx) {
            String name = ctx.ID().getText();
            String detail = "placement allocation `" + name + "` may leak or be reused unsafely because it is not reset before leaving scope";
            String releaseHint = "reset or release it with `crt null " + name + ";` when the storage is no longer needed";
            trackAllocation(name, ctx, "plcnew", detail, releaseHint);
            return null;
        }

        @Override
        public Void visitFree(compilerv1Parser.FreeContext ctx) {
            release(ctx.ID().getText());
            return null;
        }

        @Override
        public Void visitDelalc(compilerv1Parser.DelalcContext ctx) {
            release(ctx.ID().getText());
            return null;
        }

        private void trackAllocation(String name, ParserRuleContext ctx, String kind, String detail, String releaseHint) {
            Map<String, AllocationRecord> scope = scopes.peek();
            if (scope == null) {
                return;
            }
            AllocationRecord previous = scope.put(name, new AllocationRecord(name, kind, ctx, detail, releaseHint));
            if (previous != null) {
                warnings.add(source.formatLeakWarning(previous.kind, previous.ctx,
                        previous.detail + " and is overwritten by a new allocation before being released",
                        previous.releaseHint));
            }
        }

        private void release(String name) {
            for (Map<String, AllocationRecord> scope : scopes) {
                if (scope.remove(name) != null) {
                    return;
                }
            }
        }

        private void flushScope() {
            Map<String, AllocationRecord> scope = scopes.pop();
            for (AllocationRecord record : scope.values()) {
                warnings.add(source.formatLeakWarning(record.kind, record.ctx, record.detail, record.releaseHint));
            }
        }

        private void printWarnings() {
            flushScope();
            for (String warning : warnings) {
                System.err.println(ANSI_YELLOW + warning + ANSI_RESET);
                System.err.println();
            }
        }
    }

    private static final class AllocationRecord {
        private final String name;
        private final String kind;
        private final ParserRuleContext ctx;
        private final String detail;
        private final String releaseHint;

        private AllocationRecord(String name, String kind, ParserRuleContext ctx, String detail, String releaseHint) {
            this.name = name;
            this.kind = kind;
            this.ctx = ctx;
            this.detail = detail;
            this.releaseHint = releaseHint;
        }
    }

    static final class ApolloCompilationFailure extends RuntimeException {
        private ApolloCompilationFailure(String message) {
            super(message);
        }

        private ApolloCompilationFailure(String message, Throwable cause) {
            super(message, cause);
        }
    }
}