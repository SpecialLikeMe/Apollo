import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import java.util.ArrayList;

public class CppCodeGenVisitor extends compilerv1BaseVisitor<Void> {
    private static final String NO_ISC_RESULT = "__apo_no_isc_result__";
    private static final String TOTAL_GC_OWNER_NAME = "__apo_total_gc_owner";
    private static final Pattern TYPEDEF_OPSTRUCT_PLACEHOLDER_PATTERN = Pattern.compile("^\\$\\{([A-Za-z_][A-Za-z0-9_]*)\\}$");

    private static final class OpstructFieldInfo {
        private final String name;
        private final ApolloType type;

        private OpstructFieldInfo(String name, ApolloType type) {
            this.name = name;
            this.type = type;
        }
    }

    private static final class TypedefOpstructCommand {
        private final String kind;
        private final List<TypedefOpstructPatternPart> patternParts;
        private final compilerv1Parser.TypedefOpstructTemplateBodyContext templateBody;
        private final compilerv1Parser.BlockContext blockBody;

        private TypedefOpstructCommand(String kind, List<TypedefOpstructPatternPart> patternParts,
                                       compilerv1Parser.TypedefOpstructTemplateBodyContext templateBody,
                                       compilerv1Parser.BlockContext blockBody) {
            this.kind = kind;
            this.patternParts = List.copyOf(patternParts);
            this.templateBody = templateBody;
            this.blockBody = blockBody;
        }
    }

    private static final class TypedefOpstructPatternPart {
        private final String literalWord;
        private final String placeholder;

        private TypedefOpstructPatternPart(String literalWord, String placeholder) {
            this.literalWord = literalWord;
            this.placeholder = placeholder;
        }
    }

    private static final class TypedefOpstructInvocationPart {
        private final boolean capture;
        private final String word;
        private final String renderedExpression;
        private final String displayText;

        private TypedefOpstructInvocationPart(boolean capture, String word, String renderedExpression, String displayText) {
            this.capture = capture;
            this.word = word;
            this.renderedExpression = renderedExpression;
            this.displayText = displayText;
        }
    }

    private static final class TypedefBindingValue {
        private final String codeValue;
        private final String sourceValue;
        private final boolean capture;

        private TypedefBindingValue(String codeValue, String sourceValue, boolean capture) {
            this.codeValue = codeValue;
            this.sourceValue = sourceValue;
            this.capture = capture;
        }
    }

    private static final class ApolloType {
        private final String name;
        private final List<ApolloType> arguments;
        private final int pointerDepth;
        private final boolean reference;
        private final boolean managed;

        private ApolloType(String name, List<ApolloType> arguments) {
            this(name, arguments, 0, false, false);
        }

        private ApolloType(String name, List<ApolloType> arguments, int pointerDepth, boolean reference) {
            this(name, arguments, pointerDepth, reference, false);
        }

        private ApolloType(String name, List<ApolloType> arguments, int pointerDepth, boolean reference, boolean managed) {
            this.name = name;
            this.arguments = arguments;
            this.pointerDepth = pointerDepth;
            this.reference = reference;
            this.managed = managed;
        }
    }

    private static final class AutofmtAliasBinding {
        private final String renderedName;
        private final ApolloType outerType;

        private AutofmtAliasBinding(String renderedName, ApolloType outerType) {
            this.renderedName = renderedName;
            this.outerType = outerType;
        }
    }

    private static final class AssignTargetInfo {
        private final String renderedTarget;
        private final ApolloType valueType;
        private final ApolloType appendReceiverType;

        private AssignTargetInfo(String renderedTarget, ApolloType valueType, ApolloType appendReceiverType) {
            this.renderedTarget = renderedTarget;
            this.valueType = valueType;
            this.appendReceiverType = appendReceiverType;
        }
    }

    private static final class ScheduleTaskInfo {
        private final String name;
        private final compilerv1Parser.BlockContext block;

        private ScheduleTaskInfo(String name, compilerv1Parser.BlockContext block) {
            this.name = name;
            this.block = block;
        }
    }

    private static final class ScheduleInfo {
        private final String name;
        private final List<ScheduleTaskInfo> mandatoryTasks;

        private ScheduleInfo(String name, List<ScheduleTaskInfo> mandatoryTasks) {
            this.name = name;
            this.mandatoryTasks = List.copyOf(mandatoryTasks);
        }
    }

    private final BufferedWriter out;
    private final boolean headerMode;
    private final Deque<ApolloType> returnTypes = new ArrayDeque<>();
    private final Deque<Map<String, ApolloType>> typeScopes = new ArrayDeque<>();
    private final Deque<Map<String, Boolean>> variableConstScopes = new ArrayDeque<>();
    private final Deque<Set<String>> declaredNameScopes = new ArrayDeque<>();
    private final Deque<Set<String>> placementReuseScopes = new ArrayDeque<>();
    private final Deque<String> autofmtOwnerScopes = new ArrayDeque<>();
    private final Deque<Map<String, AutofmtAliasBinding>> autofmtAliasScopes = new ArrayDeque<>();
    private final Deque<Map<String, String>> typedefOpstructInstanceScopes = new ArrayDeque<>();
    private final Deque<Map<String, String>> scheduleInstanceScopes = new ArrayDeque<>();
    private final Deque<String> lastIscResultScopes = new ArrayDeque<>();
    private int indentLevel = 0;
    private int autofmtOwnerCounter = 0;
    private int autofmtRootCounter = 0;
    private int autofmtAliasCounter = 0;
    private int iscResultCounter = 0;
    private int stdinExpressionCounter = 0;
    private int switchCounter = 0;
    private final Set<String> includes = new LinkedHashSet<>();
    private final Set<String> newAllocatedNames = new LinkedHashSet<>();
    private final List<String> wildcardImports = new ArrayList<>();
    private final List<String> dependencies = new ArrayList<>();
    private final String moduleSymbol;
    private final String sourceName;
    private final String[] sourceLines;
    private final Path outputPath;
    private final runtime.RuntimeFeatureManifest runtimeFeatures;
    private final ApolloCodegenOptimizationPlan optimizationPlan;
    private final runtime.CodegenOptimizationManifest codegenOptimizations;

    public List<String> getDependencies() {
        return dependencies;
    }
    private final Map<String, String> instanceModes = new HashMap<>();
    private final Map<String, String> instanceTypes = new HashMap<>();
    private final Map<String, ApolloType> callableTypes = new HashMap<>();
    private final Map<String, List<OpstructFieldInfo>> memstructFields = new LinkedHashMap<>();
    private final Map<String, List<OpstructFieldInfo>> opstructFields = new LinkedHashMap<>();
    private final Map<String, String> opstructAliases = new LinkedHashMap<>();
    private final Map<String, List<TypedefOpstructCommand>> typedefOpstructCommands = new LinkedHashMap<>();
    private final Map<String, ScheduleInfo> schedules = new LinkedHashMap<>();
    private final Map<String, String> phase3Policies = new LinkedHashMap<>();
    private final Set<String> communalTypes = new LinkedHashSet<>();
    private final Set<String> dynamicMacroNames = new LinkedHashSet<>();
    private final Set<String> unsafeFallbackBlockedSymbols = new LinkedHashSet<>();
    private final Set<String> autofmtStorageMutableNames = new LinkedHashSet<>();
    private final Deque<String> enclosingTypes = new ArrayDeque<>();
    private final Set<String> declaredTypes = new LinkedHashSet<>();
    public CppCodeGenVisitor(String filename, String moduleKey, String sourceName, String sourceText,
                             runtime.RuntimeFeatureManifest runtimeFeatures,
                             ApolloCodegenOptimizationPlan optimizationPlan,
                             runtime.CodegenOptimizationManifest codegenOptimizations) {
        try {
            this.outputPath = Paths.get(filename).toAbsolutePath().normalize();
            Path parent = outputPath.getParent();
            if (parent != null) {
                Files.createDirectories(parent);
            }
            out = new BufferedWriter(new FileWriter(outputPath.toString()));
            headerMode = filename.endsWith(".hpp") || filename.endsWith(".h");
            moduleSymbol = sanitizeModuleSymbol(moduleKey);
            this.sourceName = sourceName;
            this.sourceLines = sourceText.split("\\R", -1);
            this.runtimeFeatures = runtimeFeatures;
            this.optimizationPlan = optimizationPlan;
            this.codegenOptimizations = codegenOptimizations;
            typeScopes.push(new HashMap<>());
            variableConstScopes.push(new HashMap<>());
            declaredNameScopes.push(new LinkedHashSet<>());
            placementReuseScopes.push(new LinkedHashSet<>());
            autofmtAliasScopes.push(new HashMap<>());
            typedefOpstructInstanceScopes.push(new HashMap<>());
            scheduleInstanceScopes.push(new HashMap<>());
            lastIscResultScopes.push(NO_ISC_RESULT);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public void close() {
        try {
            out.close();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void write(String s) {
        try {
            out.write(s);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void writeRuntimeInclude(String headerName) {
        Path outputDirectory = outputPath.getParent();
        if (outputDirectory == null) {
            outputDirectory = Paths.get(".").toAbsolutePath().normalize();
        }
        Path runtimeHeader = Paths.get("runtime_support").resolve(headerName).toAbsolutePath().normalize();
        String includePath = outputDirectory.relativize(runtimeHeader).toString().replace('\\', '/');
        writeLine("#include \"" + includePath + "\"");
    }

    private void writeGcTraceStubs() {
        writeLine("struct __apo_gc_tracer {};");
        writeLine("template <typename T>");
        writeLine("inline void __apo_gc_trace_value(__apo_gc_tracer&, const T&) {}");
    }

    public void writec(String s, String filepath) {
        try {
            Path p = Paths.get(filepath);
            Path parent = p.getParent();
            if (parent != null) Files.createDirectories(parent);
            Files.write(p, s.getBytes(StandardCharsets.UTF_8), StandardOpenOption.CREATE, StandardOpenOption.TRUNCATE_EXISTING);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private String indent() {
        return "    ".repeat(Math.max(0, indentLevel));
    }

    private String sourceLineAt(int lineNumber) {
        if (lineNumber < 1 || lineNumber > sourceLines.length) {
            return "";
        }
        return sourceLines[lineNumber - 1];
    }

    private String formatSourceLocation(org.antlr.v4.runtime.Token token, String message) {
        int line = token != null ? token.getLine() : 1;
        int column = token != null ? token.getCharPositionInLine() + 1 : 1;
        String offendingText = token != null && token.getText() != null ? token.getText() : "";
        String sourceLine = sourceLineAt(line);
        int pointerWidth = Math.max(1, Math.min(Math.max(offendingText.length(), 1), Math.max(1, sourceLine.length() - column + 2)));
        String lineNumber = Integer.toString(line);
        StringBuilder builder = new StringBuilder();
        builder.append("error [semantic] ")
               .append(sourceName)
               .append(":")
               .append(line)
               .append(":")
               .append(column)
               .append("\n")
               .append(message);
        if (offendingText != null && !offendingText.isEmpty()) {
            builder.append("\noffending token: ").append(offendingText);
        }
        if (!sourceLine.isEmpty()) {
            builder.append("\n  ").append(lineNumber).append(" | ").append(sourceLine)
                   .append("\n  ").append(" ".repeat(lineNumber.length())).append(" | ").append(" ".repeat(Math.max(0, column - 1)))
                   .append("^").append("~".repeat(Math.max(0, pointerWidth - 1)));
        }
        return builder.toString();
    }

    private RuntimeException error(org.antlr.v4.runtime.ParserRuleContext ctx, String message) {
        return new IllegalArgumentException(formatSourceLocation(ctx != null ? ctx.getStart() : null, message));
    }

    private RuntimeException stateError(org.antlr.v4.runtime.ParserRuleContext ctx, String message) {
        return new IllegalStateException(formatSourceLocation(ctx != null ? ctx.getStart() : null, message));
    }

    private void writeLine(String s) {
        write(indent() + s + "\n");
    }

    private String mapType(String type) {
        if (type == null) {
            return null;
        }
        if ("isc".equals(type)) {
            return "__apo_isc";
        }
        if ("file".equals(type)) {
            return "__apo_file";
        }
        if ("str".equals(type)) {
            return "std::string";
        }
        if ("i16".equals(type)) {
            return "std::int16_t";
        }
        if ("i32".equals(type)) {
            return "std::int32_t";
        }
        if ("i64".equals(type)) {
            return "std::int64_t";
        }
        if ("u16".equals(type)) {
            return "std::uint16_t";
        }
        if ("u32".equals(type)) {
            return "std::uint32_t";
        }
        if ("u64".equals(type)) {
            return "std::uint64_t";
        }
        if ("f64".equals(type)) {
            return "double";
        }
        if (declaredTypes.contains(type)) {
            return "apo_" + type;
        }
        return type;
    }

    private String mapTypeForFunction(String type) {
        if (type == null) return "void";
        if ("isc".equals(type)) return "__apo_isc";
        if ("file".equals(type)) return "__apo_file";
        if ("str".equals(type)) return "std::string";
        if ("i16".equals(type)) return "short";
        if ("i32".equals(type)) return "int";
        if ("i64".equals(type)) return "long long";
        if ("u16".equals(type)) return "unsigned short";
        if ("u32".equals(type)) return "unsigned int";
        if ("u64".equals(type)) return "unsigned long long";
        if ("f64".equals(type)) return "double";
        if (declaredTypes.contains(type)) return "apo_" + type;
        return type;
    }

    private String mapDeclaredType(String typeName) {
        if (typeName == null) {
            return null;
        }
        if (declaredTypes.contains(typeName)) {
            return "apo_" + typeName;
        }
        return typeName;
    }

    private String rewriteRawCppDeclaredTypes(String code) {
        if (code == null || code.isEmpty() || declaredTypes.isEmpty()) {
            return code;
        }
        String rewritten = code;
        for (String declaredType : declaredTypes) {
            String mappedType = mapDeclaredType(declaredType);
            rewritten = rewritten.replaceAll("(?<![A-Za-z0-9_])" + Pattern.quote(declaredType) + "(?![A-Za-z0-9_])",
                    Matcher.quoteReplacement(mappedType));
        }
        return rewritten;
    }

    private void pushTypeScope() {
        typeScopes.push(new HashMap<>());
        variableConstScopes.push(new HashMap<>());
        declaredNameScopes.push(new LinkedHashSet<>());
        placementReuseScopes.push(new LinkedHashSet<>());
        autofmtAliasScopes.push(new HashMap<>());
        typedefOpstructInstanceScopes.push(new HashMap<>());
        scheduleInstanceScopes.push(new HashMap<>());
        lastIscResultScopes.push(lastIscResultScopes.isEmpty() ? NO_ISC_RESULT : lastIscResultScopes.peek());
    }

    private void popTypeScope() {
        if (typeScopes.size() > 1) {
            typeScopes.pop();
            variableConstScopes.pop();
            declaredNameScopes.pop();
            placementReuseScopes.pop();
            autofmtAliasScopes.pop();
            typedefOpstructInstanceScopes.pop();
            scheduleInstanceScopes.pop();
            lastIscResultScopes.pop();
        }
    }

    private void bindTypedefOpstructInstance(String name, String typeName) {
        if (name == null || typeName == null || typedefOpstructInstanceScopes.isEmpty()) {
            return;
        }
        typedefOpstructInstanceScopes.peek().put(name, typeName);
    }

    private String resolveTypedefOpstructTypeName(String instanceName) {
        if (instanceName == null) {
            return null;
        }
        for (Map<String, String> scope : typedefOpstructInstanceScopes) {
            String typeName = scope.get(instanceName);
            if (typeName != null) {
                return typeName;
            }
        }
        return null;
    }

    private void bindScheduleInstance(String name, String scheduleName) {
        if (name == null || scheduleName == null || scheduleInstanceScopes.isEmpty()) {
            return;
        }
        scheduleInstanceScopes.peek().put(name, scheduleName);
    }

    private String resolveScheduleName(String instanceName) {
        if (instanceName == null) {
            return null;
        }
        for (Map<String, String> scope : scheduleInstanceScopes) {
            String scheduleName = scope.get(instanceName);
            if (scheduleName != null) {
                return scheduleName;
            }
        }
        return null;
    }

    private void bindDeclaredName(String name) {
        if (name == null || declaredNameScopes.isEmpty()) {
            return;
        }
        declaredNameScopes.peek().add(name);
    }

    private void bindVariableType(String name, ApolloType type) {
        bindVariableType(name, type, false);
    }

    private void bindVariableType(String name, ApolloType type, boolean isConst) {
        bindDeclaredName(name);
        if (name == null) {
            return;
        }
        if (!variableConstScopes.isEmpty()) {
            variableConstScopes.peek().put(name, isConst);
        }
        if (type == null || typeScopes.isEmpty()) {
            return;
        }
        typeScopes.peek().put(name, type);
    }

    private boolean isImmutableName(String name) {
        if (name == null) {
            return false;
        }
        for (Map<String, Boolean> scope : variableConstScopes) {
            if (scope.containsKey(name)) {
                return Boolean.TRUE.equals(scope.get(name));
            }
        }
        return false;
    }

    private boolean emitConstQualifier(String name, boolean isConst) {
        return isConst && !autofmtStorageMutableNames.contains(name);
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

    private boolean isImmutableQualifier(compilerv1Parser.InitCoreContext ctx) {
        return !isMutableQualifier(ctx);
    }

    private boolean isImmutableQualifier(compilerv1Parser.InitContext ctx) {
        return !isMutableQualifier(ctx);
    }

    private boolean isImmutableQualifier(compilerv1Parser.ParamContext ctx) {
        return !isMutableQualifier(ctx);
    }

    private boolean isNameDeclared(String name) {
        if (name == null) {
            return false;
        }
        for (Set<String> scope : declaredNameScopes) {
            if (scope.contains(name)) {
                return true;
            }
        }
        return false;
    }

    private void markPlacementReusable(String name) {
        if (name == null || placementReuseScopes.isEmpty()) {
            return;
        }
        placementReuseScopes.peek().add(name);
    }

    private boolean isPlacementReusable(String name) {
        if (name == null) {
            return false;
        }
        for (Set<String> scope : placementReuseScopes) {
            if (scope.contains(name)) {
                return true;
            }
        }
        return false;
    }

    private void clearPlacementReusable(String name) {
        if (name == null) {
            return;
        }
        for (Set<String> scope : placementReuseScopes) {
            scope.remove(name);
        }
    }

    private String currentAutofmtOwnerScopeName() {
        return autofmtOwnerScopes.peek();
    }

    private String nextAutofmtOwnerScopeName() {
        return "__apo_autofmt_owner_" + autofmtOwnerCounter++;
    }

    private String nextAutofmtRootName(String name) {
        return "__apo_autofmt_root_" + name + "_" + autofmtRootCounter++;
    }

    private String nextAutofmtAliasName(String name) {
        return "__apo_autofmt_alias_" + name + "_" + autofmtAliasCounter++;
    }

    private String nextIscResultName() {
        return "__apo_isc_result_" + iscResultCounter++;
    }

    private void setLastIscResultName(String name) {
        if (lastIscResultScopes.isEmpty()) {
            return;
        }
        lastIscResultScopes.pop();
        lastIscResultScopes.push(name == null ? NO_ISC_RESULT : name);
    }

    private String currentLastIscResultName() {
        if (lastIscResultScopes.isEmpty()) {
            return null;
        }
        String name = lastIscResultScopes.peek();
        return NO_ISC_RESULT.equals(name) ? null : name;
    }

    private void trackIscBinding(String name, ApolloType type) {
        if (type != null && "isc".equals(type.name)) {
            setLastIscResultName(name);
            return;
        }
        setLastIscResultName(null);
    }

    private boolean isDynamicMacro(compilerv1Parser.MacroContext ctx) {
        return ctx != null && ctx.macroQualifier() != null && ctx.macroQualifier().getText().contains("dynamic_macro");
    }

    private String resolveOpstructBaseName(String typeName) {
        String current = typeName;
        while (current != null && opstructAliases.containsKey(current)) {
            current = opstructAliases.get(current);
        }
        return current;
    }

    private boolean isOpstructType(ApolloType type) {
        if (type == null) {
            return false;
        }
        return opstructFields.containsKey(resolveOpstructBaseName(type.name));
    }

    private List<OpstructFieldInfo> opstructFieldInfo(ApolloType type) {
        if (type == null) {
            return List.of();
        }
        List<OpstructFieldInfo> fields = opstructFields.get(resolveOpstructBaseName(type.name));
        return fields != null ? fields : List.of();
    }

    private ApolloType opstructFieldType(ApolloType opstructType, String fieldName, org.antlr.v4.runtime.ParserRuleContext ctx) {
        for (OpstructFieldInfo field : opstructFieldInfo(opstructType)) {
            if (field.name.equals(fieldName)) {
                return field.type;
            }
        }
        throw error(ctx, "unknown opstruct field `" + fieldName + "` for `" + (opstructType != null ? opstructType.name : "<unknown>") + "`");
    }

    private boolean isMemstructTypeName(String name) {
        return memstructFields.containsKey(name);
    }

    private String renderMemstructRegistration(compilerv1Parser.MemstructContext ctx) {
        StringBuilder builder = new StringBuilder();
        builder.append("__apo_memstruct_runtime::instance().register_memstruct(\"")
                .append(ctx.ID().getText())
                .append("\", {");
        List<OpstructFieldInfo> fields = memstructFields.getOrDefault(ctx.ID().getText(), List.of());
        for (int index = 0; index < fields.size(); index++) {
            if (index > 0) {
                builder.append(", ");
            }
            OpstructFieldInfo field = fields.get(index);
            builder.append("{\"")
                    .append(field.name)
                    .append("\", \"")
                    .append(renderType(field.type))
                    .append("\"}");
        }
        builder.append("});");
        return builder.toString();
    }

    private String renderOpstructRegistration(compilerv1Parser.OpstructContext ctx) {
        StringBuilder builder = new StringBuilder();
        builder.append("__apo_phase3_runtime::instance().register_opstruct(\"")
                .append(ctx.ID().getText())
                .append("\", {");
        List<compilerv1Parser.FieldContext> fields = ctx.opstructBody().field();
        for (int index = 0; index < fields.size(); index++) {
            if (index > 0) {
                builder.append(", ");
            }
            compilerv1Parser.FieldContext field = fields.get(index);
            builder.append("{\"")
                    .append(field.ID().getText())
                    .append("\", \"")
                    .append(renderType(typeFromContext(field.typeRef())))
                    .append("\"}");
        }
        builder.append("});");
        return builder.toString();
    }

    private String renderPhase3Directive(compilerv1Parser.Phase3DirectiveContext ctx) {
        return "__apo_phase3_runtime::instance().set_policy(\"" + ctx.ID(0).getText() + "\", \"" + ctx.ID(1).getText() + "\");";
    }

    private String renderDynamicMacroRegistration(compilerv1Parser.MacroContext ctx) {
        return "__apo_phase3_runtime::instance().register_dynamic_macro(\"" + ctx.ID().getText() + "\");";
    }

    private boolean isDynamicMacroName(String name) {
        return dynamicMacroNames.contains(name);
    }

    private boolean isFallbackPolicyEnabled() {
        return "allow".equals(phase3Policies.get("fallback"));
    }

    private boolean isBlockedFallbackSymbol(String name) {
        return unsafeFallbackBlockedSymbols.contains(name);
    }

    private String renderCallArguments(compilerv1Parser.FunctionCallContext ctx, ApolloType functionType) {
        StringBuilder builder = new StringBuilder();
        if (ctx.args() != null) {
            List<compilerv1Parser.ExpressionContext> expressions = ctx.args().expression();
            for (int i = 0; i < expressions.size(); i++) {
                if (i > 0) {
                    builder.append(", ");
                }
                ApolloType parameterType = null;
                if (isFunctionType(functionType) && functionType.arguments.size() > i + 1) {
                    parameterType = functionType.arguments.get(i + 1);
                }
                builder.append(renderExpression(expressions.get(i), parameterType));
            }
        }
        return builder.toString();
    }

    private String renderDirectCallExpression(String functionName, String renderedArguments) {
        return functionName + "(" + renderedArguments + ")";
    }

    private String renderDynamicMacroCall(String functionName, String renderedArguments) {
        String directCall = renderDirectCallExpression(functionName, renderedArguments);
        return "__apo_phase3_runtime::instance().invoke_dynamic_macro(\"" + functionName + "\", [&]() { return " + directCall + "; })";
    }

    private boolean isTypedefOpstructDsl(compilerv1Parser.TypedefOpstructContext ctx) {
        return ctx != null && ctx.typedefOpstructDslBody() != null;
    }

    private boolean canDefaultInitializeDeclaredType(ApolloType type) {
        return type != null
                && type.pointerDepth == 0
                && !type.reference
                && declaredTypes.contains(type.name);
    }

    private boolean isTypedefOpstructAlias(compilerv1Parser.TypedefOpstructContext ctx) {
        return ctx != null && ctx.typedefOpstructDslBody() == null && ctx.ID().size() > 1;
    }

    private String typedefOpstructPublicName(compilerv1Parser.TypedefOpstructContext ctx) {
        return isTypedefOpstructAlias(ctx) ? ctx.ID(1).getText() : ctx.ID(0).getText();
    }

    private List<TypedefOpstructPatternPart> parseTypedefOpstructPatternParts(String rawPattern,
                                                                              org.antlr.v4.runtime.ParserRuleContext ctx) {
        String text = rawPattern.substring(1, rawPattern.length() - 1);
        String trimmed = text.trim();
        if (trimmed.isEmpty()) {
            throw error(ctx, "typedef opstruct command patterns cannot be empty");
        }

        List<TypedefOpstructPatternPart> parts = new ArrayList<>();
        boolean sawPlaceholder = false;
        for (String token : trimmed.split("\\s+")) {
            Matcher matcher = TYPEDEF_OPSTRUCT_PLACEHOLDER_PATTERN.matcher(token);
            if (matcher.matches()) {
                sawPlaceholder = true;
                parts.add(new TypedefOpstructPatternPart(null, matcher.group(1)));
                continue;
            }
            if (token.contains("${")) {
                throw error(ctx, "typedef opstruct command placeholders must occupy a full phrase segment for now");
            }
            parts.add(new TypedefOpstructPatternPart(token, null));
        }
        if (!sawPlaceholder) {
            throw error(ctx, "typedef opstruct command patterns require at least one placeholder like `${name}`");
        }
        return List.copyOf(parts);
    }

    private List<TypedefOpstructInvocationPart> buildTypedefOpstructInvocationParts(
            List<org.antlr.v4.runtime.tree.TerminalNode> words,
            compilerv1Parser.TypedefOpstructCaptureContext captureCtx) {
        List<TypedefOpstructInvocationPart> parts = new ArrayList<>();
        for (org.antlr.v4.runtime.tree.TerminalNode node : words) {
            String word = node.getText();
            parts.add(new TypedefOpstructInvocationPart(false, word, word, word));
        }
        if (captureCtx != null) {
            String renderedExpression = renderExpression(captureCtx.expression());
            parts.add(new TypedefOpstructInvocationPart(true, null, renderedExpression, captureCtx.getText()));
        }
        return List.copyOf(parts);
    }

    private List<TypedefOpstructInvocationPart> buildTypedefOpstructInvocationPartsFromWords(
            List<compilerv1Parser.TypedefOpstructWordContext> words,
            compilerv1Parser.TypedefOpstructCaptureContext captureCtx) {
        List<TypedefOpstructInvocationPart> parts = new ArrayList<>();
        for (compilerv1Parser.TypedefOpstructWordContext wordCtx : words) {
            String word = wordCtx.getText();
            parts.add(new TypedefOpstructInvocationPart(false, word, word, word));
        }
        if (captureCtx != null) {
            String renderedExpression = renderExpression(captureCtx.expression());
            parts.add(new TypedefOpstructInvocationPart(true, null, renderedExpression, captureCtx.getText()));
        }
        return List.copyOf(parts);
    }

    private String renderTypedefOpstructInvocationDisplay(List<TypedefOpstructInvocationPart> parts) {
        List<String> displayParts = new ArrayList<>();
        for (TypedefOpstructInvocationPart part : parts) {
            displayParts.add(part.displayText);
        }
        return String.join(" ", displayParts);
    }

    private TypedefBindingValue bindTypedefInvocationPart(TypedefOpstructInvocationPart part) {
        if (part.capture) {
            return new TypedefBindingValue(part.renderedExpression, part.renderedExpression, true);
        }
        String sourceValue = "std::string(\"" + escapeCppString(part.word) + "\")";
        return new TypedefBindingValue(part.word, sourceValue, false);
    }

    private Map<String, TypedefBindingValue> matchTypedefOpstructCommand(TypedefOpstructCommand command,
                                                                          List<TypedefOpstructInvocationPart> actualParts) {
        if (command.patternParts.size() != actualParts.size()) {
            return null;
        }

        Map<String, TypedefBindingValue> bindings = new LinkedHashMap<>();
        for (int index = 0; index < command.patternParts.size(); index++) {
            TypedefOpstructPatternPart patternPart = command.patternParts.get(index);
            TypedefOpstructInvocationPart actualPart = actualParts.get(index);
            if (patternPart.literalWord != null) {
                if (actualPart.capture || !patternPart.literalWord.equals(actualPart.word)) {
                    return null;
                }
                continue;
            }

            TypedefBindingValue binding = bindTypedefInvocationPart(actualPart);
            TypedefBindingValue existing = bindings.get(patternPart.placeholder);
            if (existing != null
                    && (!existing.codeValue.equals(binding.codeValue)
                    || !existing.sourceValue.equals(binding.sourceValue)
                    || existing.capture != binding.capture)) {
                return null;
            }
            bindings.put(patternPart.placeholder, binding);
        }
        return bindings;
    }

    private boolean invocationTargetsTypedefInstance(Map<String, TypedefBindingValue> bindings, String instanceName) {
        boolean sawWordBinding = false;
        for (TypedefBindingValue binding : bindings.values()) {
            if (binding.capture) {
                continue;
            }
            sawWordBinding = true;
            if (instanceName.equals(binding.codeValue)) {
                return true;
            }
        }
        return !sawWordBinding;
    }

    private String resolveTypedefOpstructCreatedInstanceName(Map<String, TypedefBindingValue> bindings,
                                                             org.antlr.v4.runtime.ParserRuleContext ctx) {
        String instanceName = null;
        for (TypedefBindingValue binding : bindings.values()) {
            if (!binding.capture) {
                instanceName = binding.codeValue;
            }
        }
        if (instanceName == null || instanceName.isEmpty()) {
            throw error(ctx, "typedef opstruct creation phrases must bind an identifier placeholder for the instance name");
        }
        return instanceName;
    }

    private void collectTypedefOpstructCommands(compilerv1Parser.ProgramContext ctx) {
        typedefOpstructCommands.clear();
        if (ctx == null || ctx.children == null) {
            return;
        }
        for (org.antlr.v4.runtime.tree.ParseTree child : ctx.children) {
            if (!(child instanceof compilerv1Parser.TypedefOpstructContext)) {
                continue;
            }
            compilerv1Parser.TypedefOpstructContext typedefCtx = (compilerv1Parser.TypedefOpstructContext) child;
            if (!isTypedefOpstructDsl(typedefCtx)) {
                continue;
            }
            List<TypedefOpstructCommand> commands = new ArrayList<>();
            for (compilerv1Parser.TypedefOpstructDslEntryContext entry : typedefCtx.typedefOpstructDslBody().typedefOpstructDslEntry()) {
                if (entry.typedefOpstructSrcEntry() != null) {
                    String rawPattern = entry.typedefOpstructSrcEntry().STRING().getText();
                    commands.add(new TypedefOpstructCommand(
                            "src",
                            parseTypedefOpstructPatternParts(rawPattern, entry.typedefOpstructSrcEntry()),
                            entry.typedefOpstructSrcEntry().typedefOpstructTemplateBody(),
                            null));
                } else if (entry.typedefOpstructAsgEntry() != null) {
                    String rawPattern = entry.typedefOpstructAsgEntry().STRING().getText();
                    commands.add(new TypedefOpstructCommand(
                            "asg",
                            parseTypedefOpstructPatternParts(rawPattern, entry.typedefOpstructAsgEntry()),
                            null,
                            entry.typedefOpstructAsgEntry().block()));
                }
            }
            typedefOpstructCommands.put(typedefCtx.ID(0).getText(), List.copyOf(commands));
        }
    }

    private void collectSchedules(compilerv1Parser.ProgramContext ctx) {
        schedules.clear();
        if (ctx == null || ctx.children == null) {
            return;
        }
        for (org.antlr.v4.runtime.tree.ParseTree child : ctx.children) {
            if (!(child instanceof compilerv1Parser.ScheduleDeclContext)) {
                continue;
            }
            compilerv1Parser.ScheduleDeclContext scheduleCtx = (compilerv1Parser.ScheduleDeclContext) child;
            List<ScheduleTaskInfo> mandatoryTasks = new ArrayList<>();
            for (compilerv1Parser.ScheduleMemberContext memberCtx : scheduleCtx.scheduleMember()) {
                compilerv1Parser.MandatoryScheduleMemberContext mandatoryCtx = memberCtx.mandatoryScheduleMember();
                if (mandatoryCtx != null) {
                    mandatoryTasks.add(new ScheduleTaskInfo(mandatoryCtx.ID().getText(), mandatoryCtx.block()));
                }
            }
            schedules.put(scheduleCtx.ID().getText(), new ScheduleInfo(scheduleCtx.ID().getText(), mandatoryTasks));
        }
    }

    private String renderUnsafeFallbackCall(compilerv1Parser.FunctionCallContext ctx, String functionName, String renderedArguments) {
        if (!isFallbackPolicyEnabled()) {
            return renderDirectCallExpression(functionName, renderedArguments);
        }
        if (isBlockedFallbackSymbol(functionName)) {
            throw error(ctx, "fallback call to blocked symbol `" + functionName + "` is not allowed");
        }
        String directCall = renderDirectCallExpression(functionName, renderedArguments);
        return "__apo_phase3_runtime::instance().unsafe_fallback_call(\"" + functionName + "\", [&]() { return " + directCall + "; })";
    }

    private String renderStdinExpression() {
        String tempName = "__apo_stdin_" + stdinExpressionCounter++;
        return "([&]() -> std::string { std::string " + tempName + "; std::getline(std::cin >> std::ws, " + tempName + "); return " + tempName + "; }())";
    }

    private String renderTypedefOpstructRegistration(compilerv1Parser.TypedefOpstructContext ctx) {
        return "__apo_phase3_runtime::instance().register_opstruct(\"" + typedefOpstructPublicName(ctx) + "\", {});";
    }

    private String renderTypedefOpstructTemplateBody(compilerv1Parser.TypedefOpstructTemplateBodyContext ctx,
                                                     Map<String, TypedefBindingValue> bindings) {
        List<String> lines = new ArrayList<>();
        for (compilerv1Parser.TypedefOpstructTemplateBodyItemContext item : ctx.typedefOpstructTemplateBodyItem()) {
            if (item.ID() != null) {
                String placeholder = item.ID().getText();
                TypedefBindingValue replacement = bindings.get(placeholder);
                lines.add((replacement != null ? replacement.codeValue : placeholder) + ";");
            } else if (item.statement() != null) {
                String rendered = renderTopLevelStatement(item.statement());
                if (rendered != null && !rendered.isEmpty()) {
                    lines.add(rendered);
                }
            } else if (item.returnStmt() != null) {
                String expression = item.returnStmt().expression() != null ? " " + renderExpression(item.returnStmt().expression()) : "";
                lines.add("return" + expression + ";");
            }
        }
        return String.join("\n", lines);
    }

    private String renderTypedefOpstructSourceTemplateBody(compilerv1Parser.TypedefOpstructTemplateBodyContext ctx,
                                                           Map<String, TypedefBindingValue> bindings) {
        List<String> parts = new ArrayList<>();
        for (compilerv1Parser.TypedefOpstructTemplateBodyItemContext item : ctx.typedefOpstructTemplateBodyItem()) {
            if (item.ID() != null) {
                String placeholder = item.ID().getText();
                TypedefBindingValue replacement = bindings.get(placeholder);
                if (replacement != null) {
                    parts.add("(" + replacement.sourceValue + ")");
                } else {
                    parts.add("std::string(\"" + escapeCppString(placeholder) + "\")");
                }
            } else if (item.statement() != null) {
                parts.add("std::string(\"" + escapeCppString(item.statement().getText()) + "\\n\")");
            } else if (item.returnStmt() != null) {
                parts.add("std::string(\"" + escapeCppString(item.returnStmt().getText()) + "\\n\")");
            }
        }
        if (parts.isEmpty()) {
            return "std::string()";
        }
        StringBuilder builder = new StringBuilder(parts.get(0));
        for (int index = 1; index < parts.size(); index++) {
            builder.append(" + ").append(parts.get(index));
        }
        return builder.toString();
    }

    private String renderTypedefOpstructCommandExecution(TypedefOpstructCommand command,
                                                         Map<String, TypedefBindingValue> bindings) {
        if (command.templateBody != null) {
            if ("src".equals(command.kind)) {
                String renderedSource = renderTypedefOpstructSourceTemplateBody(command.templateBody, bindings);
                return "__apo_executePayload(std::string(\"apollo\\n\") + " + renderedSource + ");";
            }
            String rendered = renderTypedefOpstructTemplateBody(command.templateBody, bindings);
            return rendered != null ? rendered : "";
        }
        return "";
    }

    private String renderTypedefOpstructSession(compilerv1Parser.TypedefOpstructSessionContext ctx) {
        String typeName = ctx.ID(0).getText();
        String instanceName = ctx.ID(1).getText();
        List<TypedefOpstructCommand> commands = typedefOpstructCommands.get(typeName);
        if (commands == null) {
            throw error(ctx, "unknown typedef opstruct DSL type `" + typeName + "`");
        }

        ApolloType instanceType = new ApolloType(typeName, List.of());
        bindVariableType(instanceName, instanceType, false);
        bindTypedefOpstructInstance(instanceName, typeName);

        List<String> lines = new ArrayList<>();
        lines.add(renderType(instanceType) + " " + instanceName + "{};");
        for (compilerv1Parser.TypedefOpstructCommandContext commandCtx : ctx.typedefOpstructCommand()) {
            List<TypedefOpstructInvocationPart> actualParts = buildTypedefOpstructInvocationPartsFromWords(
                    commandCtx.typedefOpstructWord(),
                    commandCtx.typedefOpstructCapture());
            TypedefOpstructCommand matched = null;
            Map<String, TypedefBindingValue> bindings = null;
            for (TypedefOpstructCommand candidate : commands) {
                Map<String, TypedefBindingValue> candidateBindings = matchTypedefOpstructCommand(candidate, actualParts);
                if (candidateBindings != null && invocationTargetsTypedefInstance(candidateBindings, instanceName)) {
                    matched = candidate;
                    bindings = candidateBindings;
                    break;
                }
            }
            if (matched == null) {
                throw error(commandCtx, "unknown typedef opstruct phrase `" + renderTypedefOpstructInvocationDisplay(actualParts) + "` for `" + typeName + "`");
            }
            String rendered = renderTypedefOpstructCommandExecution(matched, bindings);
            if (!rendered.isEmpty()) {
                lines.add(rendered);
            }
        }
        return String.join("\n", lines);
    }

    private String renderTypedefOpstructCreateStatement(compilerv1Parser.TypedefOpstructCreateStmtContext ctx) {
        List<TypedefOpstructInvocationPart> actualParts = buildTypedefOpstructInvocationPartsFromWords(ctx.typedefOpstructWord(), null);
        String invocationDisplay = renderTypedefOpstructInvocationDisplay(actualParts);
        String matchedTypeName = null;
        TypedefOpstructCommand matchedCommand = null;
        Map<String, TypedefBindingValue> matchedBindings = null;

        for (Map.Entry<String, List<TypedefOpstructCommand>> entry : typedefOpstructCommands.entrySet()) {
            for (TypedefOpstructCommand candidate : entry.getValue()) {
                if (!"asg".equals(candidate.kind)) {
                    continue;
                }
                Map<String, TypedefBindingValue> candidateBindings = matchTypedefOpstructCommand(candidate, actualParts);
                if (candidateBindings == null) {
                    continue;
                }
                if (matchedCommand != null) {
                    throw error(ctx, "ambiguous typedef opstruct creation phrase `" + invocationDisplay + "`");
                }
                matchedTypeName = entry.getKey();
                matchedCommand = candidate;
                matchedBindings = candidateBindings;
            }
        }

        if (matchedCommand == null || matchedTypeName == null || matchedBindings == null) {
            throw error(ctx, "unknown typedef opstruct creation phrase `" + invocationDisplay + "`");
        }

        String instanceName = resolveTypedefOpstructCreatedInstanceName(matchedBindings, ctx);
        ApolloType instanceType = new ApolloType(matchedTypeName, List.of());
        bindVariableType(instanceName, instanceType, false);
        bindTypedefOpstructInstance(instanceName, matchedTypeName);
        return renderType(instanceType) + " " + instanceName + "{};";
    }

    private String renderTypedefOpstructPhraseStatement(compilerv1Parser.TypedefOpstructPhraseStmtContext ctx) {
        if (ctx == null || ctx.typedefOpstructWord().isEmpty()) {
            return "";
        }
        List<TypedefOpstructInvocationPart> actualParts = buildTypedefOpstructInvocationPartsFromWords(
                ctx.typedefOpstructWord(),
                ctx.typedefOpstructCapture());
        String invocationDisplay = renderTypedefOpstructInvocationDisplay(actualParts);
        String instanceName = null;
        String typeName = null;
        TypedefOpstructCommand matchedCommand = null;
        Map<String, TypedefBindingValue> matchedBindings = null;
        for (Map<String, String> scope : typedefOpstructInstanceScopes) {
            for (Map.Entry<String, String> entry : scope.entrySet()) {
                List<TypedefOpstructCommand> commands = typedefOpstructCommands.get(entry.getValue());
                if (commands == null) {
                    continue;
                }
                for (TypedefOpstructCommand command : commands) {
                    Map<String, TypedefBindingValue> candidateBindings = matchTypedefOpstructCommand(command, actualParts);
                    if (candidateBindings != null && invocationTargetsTypedefInstance(candidateBindings, entry.getKey())) {
                        break;
                    }
                }
                for (TypedefOpstructCommand command : commands) {
                    Map<String, TypedefBindingValue> candidateBindings = matchTypedefOpstructCommand(command, actualParts);
                    if (candidateBindings == null || !invocationTargetsTypedefInstance(candidateBindings, entry.getKey())) {
                        continue;
                    }
                    instanceName = entry.getKey();
                    typeName = entry.getValue();
                    matchedCommand = command;
                    matchedBindings = candidateBindings;
                    break;
                }
                if (typeName != null) {
                    break;
                }
            }
            if (typeName != null) {
                break;
            }
        }
        if (typeName == null || instanceName == null) {
            throw error(ctx, "unknown typedef opstruct phrase `" + invocationDisplay + "`; initialize a matching typedef opstruct instance in scope first");
        }

        if (matchedCommand == null || matchedBindings == null) {
            throw error(ctx, "unknown typedef opstruct phrase `" + invocationDisplay + "` for `" + typeName + "`");
        }
        return renderTypedefOpstructCommandExecution(matchedCommand, matchedBindings);
    }

    private void emitOpstructTraceHelper(String typeName, List<compilerv1Parser.FieldContext> fields) {
        writeLine("inline void __apo_gc_trace_value(__apo_gc_tracer& tracer, const " + typeName + "& value) {");
        indentLevel++;
        for (compilerv1Parser.FieldContext field : fields) {
            writeLine("__apo_gc_trace_value(tracer, value." + field.ID().getText() + ");");
        }
        indentLevel--;
        writeLine("}");
        write("\n");
    }

    private boolean isAutofmtManagedType(ApolloType type) {
        if (type == null || type.managed || type.pointerDepth > 0 || type.reference) {
            return false;
        }
        if ("fn".equals(type.name) || "void".equals(type.name)) {
            return false;
        }
        return !"i16".equals(type.name)
                && !"i32".equals(type.name)
                && !"i64".equals(type.name)
            && !"u16".equals(type.name)
            && !"u32".equals(type.name)
            && !"u64".equals(type.name)
                && !"int".equals(type.name)
                && !"short".equals(type.name)
                && !"long".equals(type.name)
                && !"float".equals(type.name)
                && !"double".equals(type.name)
                && !"f64".equals(type.name);
    }

    private boolean isAutofmtInductableType(ApolloType type) {
        if (type == null || type.managed || type.pointerDepth > 0 || type.reference) {
            return false;
        }
        return !"fn".equals(type.name) && !"void".equals(type.name);
    }

    private ApolloType markManaged(ApolloType type) {
        if (type == null) {
            return null;
        }
        return new ApolloType(type.name, type.arguments, type.pointerDepth, type.reference, true);
    }

    private ApolloType withoutManaged(ApolloType type) {
        if (type == null) {
            return null;
        }
        return new ApolloType(type.name, type.arguments, type.pointerDepth, type.reference, false);
    }

    private String renderManagedPayloadType(ApolloType type) {
        return renderType(withoutManaged(type));
    }

    private String renderManagedHandleType(ApolloType type) {
        return "__apo_gc_handle<" + renderManagedPayloadType(type) + ">";
    }

    private void bindAutofmtAlias(String name, String renderedName, ApolloType outerType) {
        if (autofmtAliasScopes.isEmpty()) {
            return;
        }
        autofmtAliasScopes.peek().put(name, new AutofmtAliasBinding(renderedName, outerType));
    }

    private AutofmtAliasBinding resolveAutofmtAlias(String name) {
        for (Map<String, AutofmtAliasBinding> scope : autofmtAliasScopes) {
            AutofmtAliasBinding binding = scope.get(name);
            if (binding != null) {
                return binding;
            }
        }
        return null;
    }

    private void clearAutofmtAlias(String name) {
        for (Map<String, AutofmtAliasBinding> scope : autofmtAliasScopes) {
            if (scope.remove(name) != null) {
                return;
            }
        }
    }

    private String resolveVariableReference(String name) {
        AutofmtAliasBinding alias = resolveAutofmtAlias(name);
        return alias != null ? alias.renderedName : name;
    }

    private String renderAutofmtTrackStatement(String name) {
        ApolloType type = resolveVariableType(name);
        if (type == null || !type.managed) {
            return "";
        }
        String ownerName = currentManagedOwnerName(type);
        if (ownerName == null) {
            return "";
        }
        String rootName = nextAutofmtRootName(name);
        return "__apo_gc_root_slot<" + renderManagedPayloadType(type) + "> " + rootName
                + "(" + ownerName + ", &" + resolveVariableReference(name) + ");";
    }

    private String renderInductStatement(String name, org.antlr.v4.runtime.ParserRuleContext ctx) {
        String ownerName = currentAutofmtOwnerScopeName();
        if (ownerName == null) {
            throw error(ctx, "`@induct` is only valid inside `@autofmtdeclare {}` blocks");
        }
        ApolloType outerType = resolveVariableType(name);
        if (!isAutofmtInductableType(outerType)) {
            throw error(ctx, "`@induct` currently supports non-pointer, non-reference Apollo values only");
        }
        String aliasName = nextAutofmtAliasName(name);
        bindAutofmtAlias(name, aliasName, outerType);
        bindVariableType(name, markManaged(outerType), isImmutableName(name));
        StringBuilder builder = new StringBuilder();
        builder.append(renderManagedHandleType(outerType)).append(" ").append(aliasName)
                .append(" = ").append(ownerName).append(".induct(std::move(").append(name).append("));");
        String root = renderAutofmtTrackStatement(name);
        if (!root.isEmpty()) {
            builder.append("\n").append(root);
        }
        return builder.toString();
    }

    private String renderReleaseStatement(String name, org.antlr.v4.runtime.ParserRuleContext ctx) {
        String ownerName = currentAutofmtOwnerScopeName();
        if (ownerName == null) {
            throw error(ctx, "`@release` is only valid inside `@autofmtdeclare {}` blocks");
        }
        AutofmtAliasBinding alias = resolveAutofmtAlias(name);
        if (alias == null) {
            throw error(ctx, "`@release` currently expects a binding that was inducted in this `@autofmtdeclare` scope");
        }
        bindVariableType(name, alias.outerType, isImmutableName(name));
        clearAutofmtAlias(name);
        return name + " = " + ownerName + ".release(" + alias.renderedName + ");";
    }

    private ApolloType resolveVariableType(String name) {
        for (Map<String, ApolloType> scope : typeScopes) {
            ApolloType type = scope.get(name);
            if (type != null) {
                return type;
            }
        }
        return null;
    }

    private ApolloType resolveCallableType(String name) {
        ApolloType variableType = resolveVariableType(name);
        if (variableType != null) {
            return variableType;
        }
        return callableTypes.get(name);
    }

    private ApolloType callableReturnType(ApolloType callableType) {
        if (!isFunctionType(callableType) || callableType.arguments.isEmpty()) {
            return null;
        }
        return callableType.arguments.get(0);
    }

    private ApolloType adaptWholeProgramManagedType(ApolloType type) {
        if (shouldWholeProgramManageType(type)) {
            return markManaged(type);
        }
        return type;
    }

    private ApolloType buildDeclaredFunctionType(compilerv1Parser.ReturnTypeContext returnType, compilerv1Parser.ParamsContext params) {
        List<ApolloType> arguments = new ArrayList<>();
        arguments.add(adaptWholeProgramManagedType(typeFromReturnContext(returnType)));
        if (params != null) {
            for (compilerv1Parser.ParamContext param : params.param()) {
                arguments.add(adaptWholeProgramManagedType(typeFromContext(param.typeRef())));
            }
        }
        return new ApolloType("fn", arguments);
    }

    private void collectCallableTypes(compilerv1Parser.ProgramContext ctx) {
        callableTypes.clear();
        dynamicMacroNames.clear();
        if (ctx == null || ctx.children == null) {
            return;
        }
        for (org.antlr.v4.runtime.tree.ParseTree child : ctx.children) {
            if (child instanceof compilerv1Parser.FunctionContext) {
                compilerv1Parser.FunctionContext function = (compilerv1Parser.FunctionContext) child;
                callableTypes.put(function.ID().getText(), buildDeclaredFunctionType(function.returnType(), function.params()));
            } else if (child instanceof compilerv1Parser.SrcDeclContext) {
                compilerv1Parser.SrcDeclContext sourceFunction = (compilerv1Parser.SrcDeclContext) child;
                callableTypes.put(sourceFunction.ID().getText(), buildSrcFunctionType(sourceFunction));
            } else if (child instanceof compilerv1Parser.MacroContext) {
                compilerv1Parser.MacroContext macro = (compilerv1Parser.MacroContext) child;
                callableTypes.put(macro.ID().getText(), buildDeclaredFunctionType(null, macro.params()));
                if (isDynamicMacro(macro)) {
                    dynamicMacroNames.add(macro.ID().getText());
                }
            }
        }
    }

    private void collectPhase3Policies(compilerv1Parser.ProgramContext ctx) {
        phase3Policies.clear();
        if (ctx == null) {
            return;
        }
        for (compilerv1Parser.DirectiveContext directiveCtx : ctx.directive()) {
            if (directiveCtx.phase3Directive() != null) {
                phase3Policies.put(directiveCtx.phase3Directive().ID(0).getText(), directiveCtx.phase3Directive().ID(1).getText());
            } else if (directiveCtx.settingDirective() != null) {
                phase3Policies.put(directiveCtx.settingDirective().ID().getText(), normalizeSettingValue(directiveCtx.settingDirective().settingValue().getText()));
            }
        }
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

    private String renderAttributeSpecifier(compilerv1Parser.AttributeBlockContext ctx) {
        if (ctx == null || ctx.attributeEntry().isEmpty()) {
            return "";
        }
        List<String> entries = new ArrayList<>();
        for (compilerv1Parser.AttributeEntryContext entry : ctx.attributeEntry()) {
            StringBuilder builder = new StringBuilder(entry.ID().getText());
            if (entry.attributeArgs() != null && !entry.attributeArgs().attributeValue().isEmpty()) {
                builder.append('(');
                for (int index = 0; index < entry.attributeArgs().attributeValue().size(); index++) {
                    if (index > 0) {
                        builder.append(", ");
                    }
                    builder.append(entry.attributeArgs().attributeValue(index).getText());
                }
                builder.append(')');
            }
            entries.add(builder.toString());
        }
        return "__attribute__((" + String.join(", ", entries) + "))";
    }

    private String renderAttributeSuffix(compilerv1Parser.AttributeBlockContext ctx) {
        String specifier = renderAttributeSpecifier(ctx);
        return specifier.isEmpty() ? "" : " " + specifier;
    }

    private void collectCommunalTypes(compilerv1Parser.ProgramContext ctx) {
        communalTypes.clear();
        if (ctx == null || ctx.children == null) {
            return;
        }
        for (org.antlr.v4.runtime.tree.ParseTree child : ctx.children) {
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

    private boolean schedulerEevfEnabled() {
        return "eevf".equals(phase3Policies.get("scheduler"));
    }

    private void loadUnsafeFallbackDatabase() {
        unsafeFallbackBlockedSymbols.clear();
        Path databasePath = Paths.get("unsafe_fallback_db.json").toAbsolutePath().normalize();
        if (!Files.exists(databasePath)) {
            return;
        }
        try {
            String json = Files.readString(databasePath, StandardCharsets.UTF_8);
            unsafeFallbackBlockedSymbols.addAll(parseUnsafeFallbackArray(json, "blocked"));
        } catch (IOException ex) {
            throw new RuntimeException("failed to read unsafe fallback database: " + ex.getMessage(), ex);
        }
    }

    private List<String> parseUnsafeFallbackArray(String json, String key) {
        Matcher sectionMatcher = Pattern.compile("\"" + key + "\"\\s*:\\s*\\[(.*?)\\]", Pattern.DOTALL).matcher(json);
        if (!sectionMatcher.find()) {
            return List.of();
        }
        List<String> values = new ArrayList<>();
        Matcher valueMatcher = Pattern.compile("\"([^\"]+)\"").matcher(sectionMatcher.group(1));
        while (valueMatcher.find()) {
            values.add(valueMatcher.group(1));
        }
        return values;
    }

    private ApolloType typeFromContext(compilerv1Parser.TypeRefContext ctx) {
        if (ctx == null) {
            return null;
        }
        ApolloType baseType;
        compilerv1Parser.TypeAtomContext atom = ctx.typeAtom();
        if (atom.functionType() != null) {
            List<ApolloType> arguments = new ArrayList<>();
            arguments.add(typeFromReturnContext(atom.functionType().returnType()));
            if (atom.functionType().functionTypeArgs() != null) {
                for (compilerv1Parser.TypeRefContext argument : atom.functionType().functionTypeArgs().typeRef()) {
                    arguments.add(typeFromContext(argument));
                }
            }
            baseType = new ApolloType("fn", arguments);
        } else if (atom.genericType() != null) {
            List<ApolloType> arguments = new ArrayList<>();
            for (compilerv1Parser.TypeRefContext argument : atom.genericType().typeRef()) {
                arguments.add(typeFromContext(argument));
            }
            baseType = new ApolloType(atom.genericType().ID().getText(), arguments);
        } else if (atom.TYPE() != null) {
            baseType = new ApolloType(atom.TYPE().getText(), List.of());
        } else if (atom.FTYPE() != null) {
            baseType = new ApolloType(atom.FTYPE().getText(), List.of());
        } else if (atom.ID() != null) {
            baseType = new ApolloType(atom.ID().getText(), List.of());
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
        return new ApolloType(baseType.name, baseType.arguments, pointerDepth, reference);
    }

    private ApolloType typeFromReturnContext(compilerv1Parser.ReturnTypeContext ctx) {
        if (ctx == null || "void".equals(ctx.getText())) {
            return new ApolloType("void", List.of());
        }
        return typeFromContext(ctx.typeRef());
    }

    private String renderType(ApolloType type) {
        return renderType(type, false);
    }

    private String renderTypeForFunction(ApolloType type) {
        return renderType(type, true);
    }

    private String renderType(ApolloType type, boolean functionSignature) {
        if (type == null) {
            return functionSignature ? "void" : "auto";
        }
        if ("fn".equals(type.name)) {
            if (type.arguments.isEmpty()) {
                throw new IllegalArgumentException("fn<> requires a return type");
            }
            StringBuilder builder = new StringBuilder("std::function<");
            builder.append(renderType(type.arguments.get(0), true)).append("(");
            for (int index = 1; index < type.arguments.size(); index++) {
                if (index > 1) {
                    builder.append(", ");
                }
                builder.append(renderType(type.arguments.get(index), true));
            }
            builder.append(")>");
            return appendTypeQualifiers(builder.toString(), type);
        }
        if ("vector".equals(type.name)) {
            if (type.arguments.size() != 1) {
                throw new IllegalArgumentException("vector<T> expects exactly one type argument");
            }
            if (shouldLowerToSoaVector(type.arguments.get(0))) {
                return appendTypeQualifiers("__apo_soa_vector<" + renderType(type.arguments.get(0), functionSignature) + ">", type);
            }
            return appendTypeQualifiers("std::vector<" + renderType(type.arguments.get(0), functionSignature) + ">", type);
        }
        if ("hsh".equals(type.name)) {
            if (type.arguments.size() != 2) {
                throw new IllegalArgumentException("hsh<K,V> expects exactly two type arguments");
            }
            String keyType = renderType(type.arguments.get(0), functionSignature);
            String valueType = renderType(type.arguments.get(1), functionSignature);
            return appendTypeQualifiers("std::unordered_map<" + keyType + ", " + valueType + ", __apo_hash<" + keyType + ">>", type);
        }
        if ("lto".equals(type.name)) {
            return appendTypeQualifiers("std::any", type);
        }
        if (!type.arguments.isEmpty()) {
            StringBuilder builder = new StringBuilder();
            builder.append(functionSignature ? mapTypeForFunction(type.name) : mapType(type.name)).append("<");
            for (int index = 0; index < type.arguments.size(); index++) {
                if (index > 0) {
                    builder.append(", ");
                }
                builder.append(renderType(type.arguments.get(index), functionSignature));
            }
            builder.append(">");
            return appendTypeQualifiers(builder.toString(), type);
        }
        return appendTypeQualifiers(functionSignature ? mapTypeForFunction(type.name) : mapType(type.name), type);
    }

    private String appendTypeQualifiers(String renderedBase, ApolloType type) {
        StringBuilder builder = new StringBuilder(renderedBase);
        for (int index = 0; index < type.pointerDepth; index++) {
            builder.append("*");
        }
        if (type.reference) {
            builder.append("&");
        }
        return builder.toString();
    }

    private ApolloType withAdditionalPointerDepth(ApolloType type, int extraDepth) {
        if (type == null) {
            return null;
        }
        return new ApolloType(type.name, type.arguments, type.pointerDepth + extraDepth, type.reference);
    }
    private boolean isLtoType(ApolloType type) {
        return type != null && "lto".equals(type.name);
    }
    
    private ApolloType ltoType(ApolloType payloadType) {
        if (payloadType == null) {
            return new ApolloType("lto", List.of());
        }
        return new ApolloType("lto", List.of(payloadType));
    }
    
    private ApolloType ltoPayloadType(ApolloType type) {
        if (!isLtoType(type) || type.arguments.isEmpty()) {
            return null;
        }
        return type.arguments.get(0);
    }
    
    private ApolloType firstConcreteType(List<ApolloType> candidates) {
        for (ApolloType candidate : candidates) {
            if (candidate == null || isLtoType(candidate)) {
                continue;
            }
            return candidate;
        }
        for (ApolloType candidate : candidates) {
            ApolloType payloadType = ltoPayloadType(candidate);
            if (payloadType != null) {
                return payloadType;
            }
        }
        return null;
    }
    
    private ApolloType operandExpectation(List<ApolloType> operandTypes, ApolloType expectedType) {
        if (expectedType != null && !isLtoType(expectedType)) {
            return expectedType;
        }
        return firstConcreteType(operandTypes);
    }
    
    private String renderLtoCast(String expression, ApolloType targetType) {
        if (targetType == null) {
            return expression;
        }
        return "std::any_cast<" + renderType(targetType) + ">(" + expression + ")";
    }

    private boolean shouldLowerToSoaVector(ApolloType elementType) {
        return elementType != null
                && elementType.pointerDepth == 0
                && !elementType.reference
                && !elementType.managed
                && elementType.arguments.isEmpty()
                && optimizationPlan.shouldLowerVectorElement(elementType.name);
    }

    private ApolloType valueTypeForIndexedAccess(ApolloType type) {
        if (type == null || type.arguments.isEmpty()) {
            return null;
        }
        if ("vector".equals(type.name)) {
            return type.arguments.get(0);
        }
        if ("hsh".equals(type.name) && type.arguments.size() > 1) {
            return type.arguments.get(1);
        }
        return null;
    }

    private ApolloType keyTypeForIndexedAccess(ApolloType type) {
        if (type == null) {
            return null;
        }
        if ("vector".equals(type.name)) {
            return new ApolloType("i32", List.of());
        }
        if ("hsh".equals(type.name) && !type.arguments.isEmpty()) {
            return type.arguments.get(0);
        }
        return null;
    }

    private String normalizeNativeLang(String lang) {
        if (lang == null) {
            return null;
        }
        if ("rust".equals(lang)) return "rs";
        if ("csharp".equals(lang)) return "cs";
        if ("python".equals(lang)) return "py";
        if ("javascript".equals(lang)) return "js";
        if ("typescript".equals(lang)) return "ts";
        if ("golang".equals(lang)) return "go";
        if ("ruby".equals(lang)) return "rb";
        if ("kotlin".equals(lang)) return "kt";
        return lang;
    }

    private void collectDeclaredTypes(org.antlr.v4.runtime.tree.ParseTree node) {
        if (node == null) {
            return;
        }
        if (node instanceof compilerv1Parser.TemplateDeclContext) {
            declaredTypes.add(((compilerv1Parser.TemplateDeclContext) node).ID().getText());
        } else if (node instanceof compilerv1Parser.ClassContext) {
            declaredTypes.add(((compilerv1Parser.ClassContext) node).ID().getText());
        } else if (node instanceof compilerv1Parser.StructContext) {
            declaredTypes.add(((compilerv1Parser.StructContext) node).ID().getText());
        } else if (node instanceof compilerv1Parser.MemstructContext) {
            declaredTypes.add(((compilerv1Parser.MemstructContext) node).ID().getText());
        } else if (node instanceof compilerv1Parser.TypedefStructContext) {
            declaredTypes.add(((compilerv1Parser.TypedefStructContext) node).ID().getText());
        } else if (node instanceof compilerv1Parser.OpstructContext) {
            declaredTypes.add(((compilerv1Parser.OpstructContext) node).ID().getText());
        } else if (node instanceof compilerv1Parser.TypedefOpstructContext) {
            compilerv1Parser.TypedefOpstructContext typedefCtx = (compilerv1Parser.TypedefOpstructContext) node;
            declaredTypes.add(typedefOpstructPublicName(typedefCtx));
        } else if (node instanceof compilerv1Parser.InterfaceContext) {
            declaredTypes.add(((compilerv1Parser.InterfaceContext) node).ID().getText());
        }
        for (int i = 0; i < node.getChildCount(); i++) {
            collectDeclaredTypes(node.getChild(i));
        }
    }

    private void collectOpstructMetadata(org.antlr.v4.runtime.tree.ParseTree node) {
        if (node == null) {
            return;
        }
        if (node instanceof compilerv1Parser.OpstructContext) {
            compilerv1Parser.OpstructContext opstructCtx = (compilerv1Parser.OpstructContext) node;
            List<OpstructFieldInfo> fields = new ArrayList<>();
            for (compilerv1Parser.FieldContext field : opstructCtx.opstructBody().field()) {
                fields.add(new OpstructFieldInfo(field.ID().getText(), typeFromContext(field.typeRef())));
            }
            opstructFields.put(opstructCtx.ID().getText(), List.copyOf(fields));
        } else if (node instanceof compilerv1Parser.TypedefOpstructContext) {
            compilerv1Parser.TypedefOpstructContext typedefCtx = (compilerv1Parser.TypedefOpstructContext) node;
            if (isTypedefOpstructAlias(typedefCtx)) {
                opstructAliases.put(typedefCtx.ID(1).getText(), typedefCtx.ID(0).getText());
            } else if (isTypedefOpstructDsl(typedefCtx)) {
                opstructFields.put(typedefCtx.ID(0).getText(), List.of());
            }
        }
        for (int i = 0; i < node.getChildCount(); i++) {
            collectOpstructMetadata(node.getChild(i));
        }
    }

    private void collectMemstructMetadata(org.antlr.v4.runtime.tree.ParseTree node) {
        if (node == null) {
            return;
        }
        if (node instanceof compilerv1Parser.MemstructContext) {
            compilerv1Parser.MemstructContext memstructCtx = (compilerv1Parser.MemstructContext) node;
            List<OpstructFieldInfo> fields = new ArrayList<>();
            for (compilerv1Parser.StructMemberContext member : memstructCtx.structBody().structMember()) {
                if (member.field() != null) {
                    fields.add(new OpstructFieldInfo(member.field().ID().getText(), typeFromContext(member.field().typeRef())));
                }
            }
            memstructFields.put(memstructCtx.ID().getText(), List.copyOf(fields));
        }
        for (int i = 0; i < node.getChildCount(); i++) {
            collectMemstructMetadata(node.getChild(i));
        }
    }

    private void collectIncludes(org.antlr.v4.runtime.tree.ParseTree node) {
        if (node == null) {
            return;
        }
        if (node instanceof compilerv1Parser.ImportStmtContext) {
            visitImportStmt((compilerv1Parser.ImportStmtContext) node);
        } else if (node instanceof compilerv1Parser.IncludeContext) {
            visitInclude((compilerv1Parser.IncludeContext) node);
        } else if (node instanceof compilerv1Parser.AssertStmtContext) {
            includes.add("cassert");
        }
        if (node instanceof compilerv1Parser.InstanceContext) {
            compilerv1Parser.InstanceContext instanceCtx = (compilerv1Parser.InstanceContext) node;
            if (instanceCtx.INS() != null
                    || (instanceCtx.INSTANCE_MODE() != null && "crt".equals(instanceCtx.INSTANCE_MODE().getText()))) {
                includes.add("any");
            }
        }
        for (int i = 0; i < node.getChildCount(); i++) {
            collectIncludes(node.getChild(i));
        }
    }

    private boolean usesGarbageCollector() {
        return includes.contains("gc/gc.h")
                || includes.contains("gc.h")
                || includes.contains("gc/gc_cpp.h")
                || includes.contains("gc_cpp.h");
    }

    private boolean totalProgramGcEnabled() {
        return runtimeFeatures != null && runtimeFeatures.totalProgramGc();
    }

    private boolean shouldWholeProgramManageType(ApolloType type) {
        return totalProgramGcEnabled() && isAutofmtManagedType(type);
    }

    private String currentManagedOwnerName(ApolloType type) {
        String scopedOwner = currentAutofmtOwnerScopeName();
        if (scopedOwner != null) {
            return scopedOwner;
        }
        if (totalProgramGcEnabled() && type != null && (type.managed || isAutofmtManagedType(type))) {
            return TOTAL_GC_OWNER_NAME;
        }
        return null;
    }

    private String toPackageSourcePath(String importPathText) {
        String[] parts = importPathText.split("\\.");
        if (parts.length == 0) {
            return importPathText;
        }
        boolean explicitExtension = "apollo".equals(parts[parts.length - 1]) || "aph".equals(parts[parts.length - 1]);
        int pathPartCount = explicitExtension ? parts.length - 1 : parts.length;
        StringBuilder builder = new StringBuilder();
        for (int i = 0; i < pathPartCount; i++) {
            if (i > 0) {
                builder.append('/');
            }
            builder.append(parts[i]);
        }
        if (builder.length() == 0) {
            return importPathText;
        }
        builder.append(explicitExtension && "aph".equals(parts[parts.length - 1]) ? ".aph" : ".apollo");
        return builder.toString();
    }

    private String toPackageHeaderPath(String sourcePath) {
        if (sourcePath.endsWith(".apollo")) {
            return sourcePath.substring(0, sourcePath.length() - ".apollo".length()) + ".hpp";
        }
        if (sourcePath.endsWith(".aph")) {
            return sourcePath.substring(0, sourcePath.length() - ".aph".length()) + ".hpp";
        }
        return sourcePath + ".hpp";
    }

    private String sanitizeModuleSymbol(String raw) {
        String sanitized = raw.replaceAll("[^A-Za-z0-9]", "_");
        if (sanitized.isEmpty()) {
            return "module";
        }
        if (Character.isDigit(sanitized.charAt(0))) {
            return "module_" + sanitized;
        }
        return sanitized;
    }

    private String toModuleInitName(String sourcePath) {
        String normalized = sourcePath.replace('\\', '/');
        if (normalized.endsWith(".apollo")) {
            normalized = normalized.substring(0, normalized.length() - ".apollo".length());
        } else if (normalized.endsWith(".aph")) {
            normalized = normalized.substring(0, normalized.length() - ".aph".length());
        }
        return "__apo_init_" + sanitizeModuleSymbol(normalized);
    }

    private String currentModuleInitName() {
        return "__apo_init_" + moduleSymbol;
    }

    private String rewriteAsyncInteropCalls(String lang, String code) {
        if ("java".equals(lang)) {
            return code
                    .replace("async_write(", "ApoAsyncIR.async_write(")
                    .replace("async_read(", "ApoAsyncIR.async_read(")
                    .replace("async_exec(", "ApoAsyncIR.async_exec(");
        }
        if ("cs".equals(lang)) {
            return code
                    .replace("async_write(", "ApoAsyncIR.async_write(")
                    .replace("async_read(", "ApoAsyncIR.async_read(")
                    .replace("async_exec(", "ApoAsyncIR.async_exec(");
        }
        if ("rs".equals(lang)) {
            return code
                    .replace("async_write(", "async_write!(")
                    .replace("async_read(", "async_read!(")
                    .replace("async_exec(", "async_exec!(");
        }
        return code;
    }

    private String buildPowerShellExecScript() {
        return String.join("\n",
                "param(",
                "    [string]$Kind = '',",
                "    [string]$Name = ''",
                ")",
                "$outputDir = Join-Path (Get-Location) 'output'",
                "$irPath = Join-Path $outputDir 'apo_ir.txt'",
                "",
                "function Unescape-Field([string]$Value) {",
                "    $builder = New-Object System.Text.StringBuilder",
                "    $escaping = $false",
                "    foreach ($char in $Value.ToCharArray()) {",
                "        if ($escaping) {",
                "            switch ($char) {",
                "                'n' { [void]$builder.Append(\"`n\") }",
                "                'r' { [void]$builder.Append(\"`r\") }",
                "                't' { [void]$builder.Append(\"`t\") }",
                "                default { [void]$builder.Append($char) }",
                "            }",
                "            $escaping = $false",
                "            continue",
                "        }",
                "        if ($char -eq '\\') {",
                "            $escaping = $true",
                "            continue",
                "        }",
                "        [void]$builder.Append($char)",
                "    }",
                "    if ($escaping) { [void]$builder.Append('\\') }",
                "    return $builder.ToString()",
                "}",
                "",
                "function Split-Record([string]$Line) {",
                "    $fields = New-Object System.Collections.Generic.List[string]",
                "    $builder = New-Object System.Text.StringBuilder",
                "    $escaping = $false",
                "    foreach ($char in $Line.ToCharArray()) {",
                "        if ($escaping) {",
                "            switch ($char) {",
                "                'n' { [void]$builder.Append(\"`n\") }",
                "                'r' { [void]$builder.Append(\"`r\") }",
                "                't' { [void]$builder.Append(\"`t\") }",
                "                default { [void]$builder.Append($char) }",
                "            }",
                "            $escaping = $false",
                "            continue",
                "        }",
                "        if ($char -eq '\\') {",
                "            $escaping = $true",
                "            continue",
                "        }",
                "        if ($char -eq \"`t\") {",
                "            $fields.Add($builder.ToString())",
                "            $builder.Clear() | Out-Null",
                "            continue",
                "        }",
                "        [void]$builder.Append($char)",
                "    }",
                "    if ($escaping) { [void]$builder.Append('\\') }",
                "    $fields.Add($builder.ToString())",
                "    return ,$fields.ToArray()",
                "}",
                "",
                "function Find-Record([string]$Kind, [string]$Name) {",
                "    if (-not (Test-Path $irPath)) { return $null }",
                "    $lines = Get-Content -Path $irPath -Encoding UTF8",
                "    for ($index = $lines.Length - 1; $index -ge 0; $index -= 1) {",
                "        $line = $lines[$index]",
                "        if ([string]::IsNullOrEmpty($line)) { continue }",
                "        $fields = Split-Record $line",
                "        if ($fields.Length -lt 5) { continue }",
                "        if ($Kind -and $fields[0] -ne $Kind) { continue }",
                "        if ($fields[1] -ne $Name) { continue }",
                "        return ,$fields",
                "    }",
                "    return $null",
                "}",
                "",
                "function Run-Payload([string]$Lang, [string]$Code) {",
                "    New-Item -ItemType Directory -Force -Path $outputDir | Out-Null",
                "    switch ($Lang) {",
                "        'cpp' { Set-Content -Path (Join-Path $outputDir 'apo_async_cpp.cpp') -Value $Code -Encoding UTF8; cmd /c 'g++ output\\apo_async_cpp.cpp -o output\\apo_async_cpp.exe && .\\output\\apo_async_cpp.exe'; return $LASTEXITCODE }",
                "        'c' { Set-Content -Path (Join-Path $outputDir 'apo_async_c.c') -Value $Code -Encoding UTF8; cmd /c 'gcc output\\apo_async_c.c -o output\\apo_async_c.exe && .\\output\\apo_async_c.exe'; return $LASTEXITCODE }",
                "        'rs' { Set-Content -Path (Join-Path $outputDir 'apo_async_rs.rs') -Value $Code -Encoding UTF8; cmd /c 'rustc output\\apo_async_rs.rs -o output\\apo_async_rs.exe && .\\output\\apo_async_rs.exe'; return $LASTEXITCODE }",
                "        'java' { Set-Content -Path (Join-Path $outputDir 'ApoAsyncTask.java') -Value $Code -Encoding UTF8; cmd /c 'javac output\\ApoAsyncTask.java -d output && java -cp output ApoAsyncTask'; return $LASTEXITCODE }",
                "        'cs' { Set-Content -Path (Join-Path $outputDir 'ApoAsyncTask.cs') -Value $Code -Encoding UTF8; cmd /c 'csc /nologo /out:output\\ApoAsyncTask.exe output\\ApoAsyncTask.cs && .\\output\\ApoAsyncTask.exe'; return $LASTEXITCODE }",
                "        'py' { Set-Content -Path (Join-Path $outputDir 'apo_async.py') -Value $Code -Encoding UTF8; cmd /c 'py output\\apo_async.py || python output\\apo_async.py'; return $LASTEXITCODE }",
                "        'js' { Set-Content -Path (Join-Path $outputDir 'apo_async.js') -Value $Code -Encoding UTF8; cmd /c 'node output\\apo_async.js'; return $LASTEXITCODE }",
                "        'ts' { Set-Content -Path (Join-Path $outputDir 'apo_async.ts') -Value $Code -Encoding UTF8; cmd /c 'tsc output\\apo_async.ts --outDir output && node output\\apo_async.js'; return $LASTEXITCODE }",
                "        'go' { Set-Content -Path (Join-Path $outputDir 'apo_async_go.go') -Value $Code -Encoding UTF8; cmd /c 'go build -o output\\apo_async_go.exe output\\apo_async_go.go && .\\output\\apo_async_go.exe'; return $LASTEXITCODE }",
                "        'php' { Set-Content -Path (Join-Path $outputDir 'apo_async.php') -Value $Code -Encoding UTF8; cmd /c 'php output\\apo_async.php'; return $LASTEXITCODE }",
                "        'rb' { Set-Content -Path (Join-Path $outputDir 'apo_async.rb') -Value $Code -Encoding UTF8; cmd /c 'ruby output\\apo_async.rb'; return $LASTEXITCODE }",
                "        'kt' { Set-Content -Path (Join-Path $outputDir 'ApoAsyncTask.kt') -Value $Code -Encoding UTF8; cmd /c 'kotlinc output\\ApoAsyncTask.kt -include-runtime -d output\\ApoAsyncTask.jar && java -jar output\\ApoAsyncTask.jar'; return $LASTEXITCODE }",
                "        default { Write-Error \"unsupported stored language: $Lang\"; return -1 }",
                "    }",
                "}",
                "",
                "$record = Find-Record $Kind $Name",
                "if ($null -eq $record) {",
                "    Write-Error \"IR entry not found: $Kind $Name\"",
                "    exit 1",
                "}",
                "exit (Run-Payload $record[3] $record[4])") + "\n";
    }

    private String buildCppIrPrelude() {
        return String.join("\n",
                "#include <filesystem>",
                "#include <fstream>",
                "#include <string>",
                "#include <vector>",
                "",
                "static std::string __apo_ir_escape(const std::string& value) {",
                "    std::string escaped;",
                "    for (char ch : value) {",
                "        if (ch == '\\\\') escaped += \"\\\\\\\\\";",
                "        else if (ch == '\\t') escaped += \"\\\\t\";",
                "        else if (ch == '\\n') escaped += \"\\\\n\";",
                "        else if (ch == '\\r') escaped += \"\\\\r\";",
                "        else escaped.push_back(ch);",
                "    }",
                "    return escaped;",
                "}",
                "",
                "static std::vector<std::string> __apo_ir_parse_line(const std::string& line) {",
                "    std::vector<std::string> fields;",
                "    std::string current;",
                "    bool escaping = false;",
                "    for (char ch : line) {",
                "        if (escaping) {",
                "            if (ch == 'n') current.push_back('\\n');",
                "            else if (ch == 'r') current.push_back('\\r');",
                "            else if (ch == 't') current.push_back('\\t');",
                "            else current.push_back(ch);",
                "            escaping = false;",
                "            continue;",
                "        }",
                "        if (ch == '\\\\') {",
                "            escaping = true;",
                "            continue;",
                "        }",
                "        if (ch == '\\t') {",
                "            fields.push_back(current);",
                "            current.clear();",
                "            continue;",
                "        }",
                "        current.push_back(ch);",
                "    }",
                "    if (escaping) current.push_back('\\\\');",
                "    fields.push_back(current);",
                "    return fields;",
                "}",
                "",
                "static void async_write(const std::string& kind, const std::string& name, const std::string& typeName, const std::string& payload, const std::string& sourceLang = \"cpp\") {",
                "    std::filesystem::create_directories(\"output\");",
                "    std::ofstream out(\"output/apo_ir.txt\", std::ios::app);",
                "    out << __apo_ir_escape(kind) << '\\t' << __apo_ir_escape(name) << '\\t' << __apo_ir_escape(typeName) << '\\t' << __apo_ir_escape(sourceLang) << '\\t' << __apo_ir_escape(payload) << '\\n';",
                "}",
                "",
                "static std::string async_read(const std::string& kind, const std::string& name) {",
                "    std::ifstream in(\"output/apo_ir.txt\");",
                "    if (!in) return \"\";",
                "    std::vector<std::string> lines;",
                "    std::string line;",
                "    while (std::getline(in, line)) {",
                "        if (!line.empty()) lines.push_back(line);",
                "    }",
                "    for (auto it = lines.rbegin(); it != lines.rend(); ++it) {",
                "        std::vector<std::string> fields = __apo_ir_parse_line(*it);",
                "        if (fields.size() < 5) continue;",
                "        if (!kind.empty() && fields[0] != kind) continue;",
                "        if (fields[1] != name) continue;",
                "        return fields[4];",
                "    }",
                "    return \"\";",
                "}",
                "",
                "static std::string async_read(const std::string& name) {",
                "    return async_read(\"\", name);",
                "}",
                "",
                "static int async_exec(const std::string& kind, const std::string& name) {",
                "    std::string command = \"powershell -NoProfile -ExecutionPolicy Bypass -File output/apo_ir_exec.ps1 \\\"\" + kind + \"\\\" \\\"\" + name + \"\\\"\";",
                "    return system(command.c_str());",
                "}",
                "",
                "static int async_exec(const std::string& name) {",
                "    return async_exec(\"\", name);",
                "}") + "\n\n";
    }

    private String buildPythonIrPrelude() {
        return String.join("\n",
                "from pathlib import Path",
                "",
                "def _apo_ir_escape(value):",
                "    text = \"\" if value is None else str(value)",
                "    return text.replace('\\\\', '\\\\\\\\').replace('\\t', '\\\\t').replace('\\n', '\\\\n').replace('\\r', '\\\\r')",
                "",
                "def _apo_ir_parse_line(line):",
                "    fields = []",
                "    current = []",
                "    escaping = False",
                "    for ch in line:",
                "        if escaping:",
                "            if ch == 'n':",
                "                current.append('\\n')",
                "            elif ch == 'r':",
                "                current.append('\\r')",
                "            elif ch == 't':",
                "                current.append('\\t')",
                "            else:",
                "                current.append(ch)",
                "            escaping = False",
                "            continue",
                "        if ch == '\\\\':",
                "            escaping = True",
                "            continue",
                "        if ch == '\\t':",
                "            fields.append(''.join(current))",
                "            current = []",
                "            continue",
                "        current.append(ch)",
                "    if escaping:",
                "        current.append('\\\\')",
                "    fields.append(''.join(current))",
                "    return fields",
                "",
                "def async_write(kind, name, type_name, payload, source_lang='py'):",
                "    ir_path = Path('output') / 'apo_ir.txt'",
                "    ir_path.parent.mkdir(parents=True, exist_ok=True)",
                "    record = '\\t'.join([",
                "        _apo_ir_escape(kind),",
                "        _apo_ir_escape(name),",
                "        _apo_ir_escape(type_name),",
                "        _apo_ir_escape(source_lang),",
                "        _apo_ir_escape(payload),",
                "    ]) + '\\n'",
                "    with ir_path.open('a', encoding='utf-8') as handle:",
                "        handle.write(record)",
                "",
                "def async_read(kind_or_name, name=None):",
                "    kind = '' if name is None else str(kind_or_name)",
                "    symbol_name = str(kind_or_name) if name is None else str(name)",
                "    ir_path = Path('output') / 'apo_ir.txt'",
                "    if not ir_path.exists():",
                "        return ''",
                "    lines = ir_path.read_text(encoding='utf-8').splitlines()",
                "    for line in reversed(lines):",
                "        if not line:",
                "            continue",
                "        fields = _apo_ir_parse_line(line)",
                "        if len(fields) < 5:",
                "            continue",
                "        if kind and fields[0] != kind:",
                "            continue",
                "        if fields[1] != symbol_name:",
                "            continue",
                "        return fields[4]",
                "    return ''",
                "",
                "def async_exec(kind_or_name, name=None):",
                "    kind = '' if name is None else str(kind_or_name)",
                "    symbol_name = str(kind_or_name) if name is None else str(name)",
                "    result = subprocess.run([",
                "        'powershell',",
                "        '-NoProfile',",
                "        '-ExecutionPolicy',",
                "        'Bypass',",
                "        '-File',",
                "        'output/apo_ir_exec.ps1',",
                "        kind,",
                "        symbol_name,",
                "    ])",
                "    return result.returncode") + "\n\n";
    }

    private String buildJavaIrPrelude() {
        return String.join("\n",
                "import java.io.IOException;",
                "import java.nio.charset.StandardCharsets;",
                "import java.nio.file.Files;",
                "import java.nio.file.Path;",
                "import java.nio.file.Paths;",
                "import java.nio.file.StandardOpenOption;",
                "import java.util.ArrayList;",
                "import java.util.List;",
                "import java.lang.ProcessBuilder;",
                "",
                "class ApoAsyncIR {",
                "    private static String escape(String value) {",
                "        String text = value == null ? \"\" : value;",
                "        return text.replace(\"\\\\\", \"\\\\\\\\\")",
                "                .replace(\"\\t\", \"\\\\t\")",
                "                .replace(\"\\n\", \"\\\\n\")",
                "                .replace(\"\\r\", \"\\\\r\");",
                "    }",
                "",
                "    private static List<String> parseLine(String line) {",
                "        List<String> fields = new ArrayList<>();",
                "        StringBuilder current = new StringBuilder();",
                "        boolean escaping = false;",
                "        for (int i = 0; i < line.length(); i++) {",
                "            char ch = line.charAt(i);",
                "            if (escaping) {",
                "                if (ch == 'n') current.append('\\n');",
                "                else if (ch == 'r') current.append('\\r');",
                "                else if (ch == 't') current.append('\\t');",
                "                else current.append(ch);",
                "                escaping = false;",
                "                continue;",
                "            }",
                "            if (ch == '\\\\') {",
                "                escaping = true;",
                "                continue;",
                "            }",
                "            if (ch == '\\t') {",
                "                fields.add(current.toString());",
                "                current.setLength(0);",
                "                continue;",
                "            }",
                "            current.append(ch);",
                "        }",
                "        if (escaping) current.append('\\\\');",
                "        fields.add(current.toString());",
                "        return fields;",
                "    }",
                "",
                "    static void async_write(String kind, String name, String typeName, String payload) {",
                "        async_write(kind, name, typeName, payload, \"java\");",
                "    }",
                "",
                "    static void async_write(String kind, String name, String typeName, String payload, String sourceLang) {",
                "        Path irPath = Paths.get(\"output\", \"apo_ir.txt\");",
                "        try {",
                "            Files.createDirectories(irPath.getParent());",
                "            String record = String.join(\"\\t\",",
                "                    escape(kind),",
                "                    escape(name),",
                "                    escape(typeName),",
                "                    escape(sourceLang),",
                "                    escape(payload)) + System.lineSeparator();",
                "            Files.writeString(irPath, record, StandardCharsets.UTF_8, StandardOpenOption.CREATE, StandardOpenOption.APPEND);",
                "        } catch (IOException ex) {",
                "            throw new RuntimeException(ex);",
                "        }",
                "    }",
                "",
                "    static String async_read(String name) {",
                "        return async_read(\"\", name);",
                "    }",
                "",
                "    static String async_read(String kind, String name) {",
                "        Path irPath = Paths.get(\"output\", \"apo_ir.txt\");",
                "        if (!Files.exists(irPath)) {",
                "            return \"\";",
                "        }",
                "        try {",
                "            List<String> lines = Files.readAllLines(irPath, StandardCharsets.UTF_8);",
                "            for (int i = lines.size() - 1; i >= 0; i--) {",
                "                String line = lines.get(i);",
                "                if (line.isEmpty()) continue;",
                "                List<String> fields = parseLine(line);",
                "                if (fields.size() < 5) continue;",
                "                if (!kind.isEmpty() && !fields.get(0).equals(kind)) continue;",
                "                if (!fields.get(1).equals(name)) continue;",
                "                return fields.get(4);",
                "            }",
                "            return \"\";",
                "        } catch (IOException ex) {",
                "            throw new RuntimeException(ex);",
                "        }",
                "    }",
                "",
                "    static int async_exec(String name) {",
                "        return async_exec(\"\", name);",
                "    }",
                "",
                "    static int async_exec(String kind, String name) {",
                "        try {",
                "            Process process = new ProcessBuilder(",
                "                    \"powershell\",",
                "                    \"-NoProfile\",",
                "                    \"-ExecutionPolicy\",",
                "                    \"Bypass\",",
                "                    \"-File\",",
                "                    \"output/apo_ir_exec.ps1\",",
                "                    kind,",
                "                    name)",
                "                    .inheritIO()",
                "                    .start();",
                "            return process.waitFor();",
                "        } catch (IOException ex) {",
                "            throw new RuntimeException(ex);",
                "        } catch (InterruptedException ex) {",
                "            Thread.currentThread().interrupt();",
                "            throw new RuntimeException(ex);",
                "        }",
                "    }",
                "}") + "\n\n";
    }

    private String buildJavaScriptIrPrelude(String sourceLang, boolean typescript) {
        List<String> lines = new ArrayList<>();
        if (typescript) {
            lines.add("declare function require(name: string): any;");
        }
        lines.add("const fs = require(\"fs\");");
        lines.add("const path = require(\"path\");");
        lines.add("");
        lines.add("function __apoIrEscape(value) {");
        lines.add("    const text = value == null ? \"\" : String(value);");
        lines.add("    return text.replace(/\\\\/g, \"\\\\\\\\\").replace(/\\t/g, \"\\\\t\").replace(/\\n/g, \"\\\\n\").replace(/\\r/g, \"\\\\r\");");
        lines.add("}");
        lines.add("");
        lines.add("function __apoIrParseLine(line) {");
        lines.add("    const fields = [];");
        lines.add("    let current = \"\";");
        lines.add("    let escaping = false;");
        lines.add("    for (const ch of line) {");
        lines.add("        if (escaping) {");
        lines.add("            if (ch === \"n\") current += \"\\n\";");
        lines.add("            else if (ch === \"r\") current += \"\\r\";");
        lines.add("            else if (ch === \"t\") current += \"\\t\";");
        lines.add("            else current += ch;");
        lines.add("            escaping = false;");
        lines.add("            continue;");
        lines.add("        }");
        lines.add("        if (ch === \"\\\\\") {");
        lines.add("            escaping = true;");
        lines.add("            continue;");
        lines.add("        }");
        lines.add("        if (ch === \"\\t\") {");
        lines.add("            fields.push(current);");
        lines.add("            current = \"\";");
        lines.add("            continue;");
        lines.add("        }");
        lines.add("        current += ch;");
        lines.add("    }");
        lines.add("    if (escaping) current += \"\\\\\";");
        lines.add("    fields.push(current);");
        lines.add("    return fields;");
        lines.add("}");
        lines.add("");
        lines.add("function async_write(kind, name, typeName, payload, sourceLang = \"" + sourceLang + "\") {");
        lines.add("    const irPath = path.join(\"output\", \"apo_ir.txt\");");
        lines.add("    fs.mkdirSync(path.dirname(irPath), { recursive: true });");
        lines.add("    const record = [kind, name, typeName, sourceLang, payload].map(__apoIrEscape).join(\"\\t\") + \"\\n\";");
        lines.add("    fs.appendFileSync(irPath, record, \"utf8\");");
        lines.add("}");
        lines.add("");
        lines.add("function async_read(kindOrName, maybeName) {");
        lines.add("    const kind = maybeName === undefined ? \"\" : String(kindOrName ?? \"\");");
        lines.add("    const name = maybeName === undefined ? String(kindOrName ?? \"\") : String(maybeName ?? \"\");");
        lines.add("    const irPath = path.join(\"output\", \"apo_ir.txt\");");
        lines.add("    if (!fs.existsSync(irPath)) return \"\";");
        lines.add("    const lines = fs.readFileSync(irPath, \"utf8\").split(/\\r?\\n/);");
        lines.add("    for (let index = lines.length - 1; index >= 0; index -= 1) {");
        lines.add("        const line = lines[index];");
        lines.add("        if (!line) continue;");
        lines.add("        const fields = __apoIrParseLine(line);");
        lines.add("        if (fields.length < 5) continue;");
        lines.add("        if (kind && fields[0] !== kind) continue;");
        lines.add("        if (fields[1] !== name) continue;");
        lines.add("        return fields[4];");
        lines.add("    }");
        lines.add("    return \"\";");
        lines.add("}");
        lines.add("");
        lines.add("function async_exec(kindOrName, maybeName) {");
        lines.add("    const kind = maybeName === undefined ? \"\" : String(kindOrName ?? \"\");");
        lines.add("    const name = maybeName === undefined ? String(kindOrName ?? \"\") : String(maybeName ?? \"\");");
        lines.add("    try {");
        lines.add("        require(\"child_process\").execFileSync(\"powershell\", [\"-NoProfile\", \"-ExecutionPolicy\", \"Bypass\", \"-File\", \"output/apo_ir_exec.ps1\", kind, name], { stdio: \"inherit\" });");
        lines.add("        return 0;");
        lines.add("    } catch (error) {");
        lines.add("        return error && typeof error.status === \"number\" ? error.status : -1;");
        lines.add("    }");
        lines.add("}");
        return String.join("\n", lines) + "\n\n";
    }

    private String buildRustIrPrelude() {
        return String.join("\n",
        "#[allow(unused_macros)]",
                "use std::fs::{self, OpenOptions};",
                "use std::io::Write;",
                "use std::process::Command;",
                "",
                "fn __apo_ir_escape(value: &str) -> String {",
                "    value.replace('\\\\', \"\\\\\\\\\").replace('\\t', \"\\\\t\").replace('\\n', \"\\\\n\").replace('\\r', \"\\\\r\")",
                "}",
                "",
                "fn __apo_ir_parse_line(line: &str) -> Vec<String> {",
                "    let mut fields: Vec<String> = Vec::new();",
                "    let mut current = String::new();",
                "    let mut escaping = false;",
                "    for ch in line.chars() {",
                "        if escaping {",
                "            match ch {",
                "                'n' => current.push('\\n'),",
                "                'r' => current.push('\\r'),",
                "                't' => current.push('\\t'),",
                "                _ => current.push(ch),",
                "            }",
                "            escaping = false;",
                "            continue;",
                "        }",
                "        if ch == '\\\\' { escaping = true; continue; }",
                "        if ch == '\\t' { fields.push(current); current = String::new(); continue; }",
                "        current.push(ch);",
                "    }",
                "    if escaping { current.push('\\\\'); }",
                "    fields.push(current);",
                "    fields",
                "}",
                "",
                "fn __apo_async_write(kind: &str, name: &str, type_name: &str, payload: &str, source_lang: &str) {",
                "    let _ = fs::create_dir_all(\"output\");",
                "    let mut file = OpenOptions::new().create(true).append(true).open(\"output/apo_ir.txt\").unwrap();",
                "    writeln!(file, \"{}\\t{}\\t{}\\t{}\\t{}\", __apo_ir_escape(kind), __apo_ir_escape(name), __apo_ir_escape(type_name), __apo_ir_escape(source_lang), __apo_ir_escape(payload)).unwrap();",
                "}",
                "",
                "fn __apo_async_read(kind: &str, name: &str) -> String {",
                "    let content = fs::read_to_string(\"output/apo_ir.txt\").unwrap_or_default();",
                "    for line in content.lines().rev() {",
                "        if line.is_empty() { continue; }",
                "        let fields = __apo_ir_parse_line(line);",
                "        if fields.len() < 5 { continue; }",
                "        if !kind.is_empty() && fields[0] != kind { continue; }",
                "        if fields[1] != name { continue; }",
                "        return fields[4].clone();",
                "    }",
                "    String::new()",
                "}",
                "",
                "fn __apo_async_exec(kind: &str, name: &str) -> i32 {",
                "    let status = Command::new(\"powershell\")",
                "        .args([\"-NoProfile\", \"-ExecutionPolicy\", \"Bypass\", \"-File\", \"output/apo_ir_exec.ps1\", kind, name])",
                "        .status()",
                "        .unwrap();",
                "    status.code().unwrap_or(-1)",
                "}",
                "",
                "macro_rules! async_write {",
                "    ($kind:expr, $name:expr, $type_name:expr, $payload:expr) => { __apo_async_write($kind, $name, $type_name, $payload, \"rs\") };",
                "    ($kind:expr, $name:expr, $type_name:expr, $payload:expr, $source_lang:expr) => { __apo_async_write($kind, $name, $type_name, $payload, $source_lang) };",
                "}",
                "",
                "macro_rules! async_read {",
                "    ($name:expr) => { __apo_async_read(\"\", $name) };",
                "    ($kind:expr, $name:expr) => { __apo_async_read($kind, $name) };",
                "}",
                "",
                "macro_rules! async_exec {",
                "    ($name:expr) => { __apo_async_exec(\"\", $name) };",
                "    ($kind:expr, $name:expr) => { __apo_async_exec($kind, $name) };",
                "}") + "\n\n";
    }

    private String buildCSharpIrPrelude() {
        return String.join("\n",
                "using System;",
                "using System.Collections.Generic;",
                "using System.Diagnostics;",
                "using System.IO;",
                "using System.Text;",
                "",
                "static class ApoAsyncIR {",
                "    private static string Escape(string value) {",
                "        string text = value ?? string.Empty;",
                "        return text.Replace(\\\"\\\\\\\", \\\"\\\\\\\\\\\\\\\").Replace(\\\"\\t\\\", \\\"\\\\t\\\").Replace(\\\"\\n\\\", \\\"\\\\n\\\").Replace(\\\"\\r\\\", \\\"\\\\r\\\");",
                "    }",
                "",
                "    private static List<string> ParseLine(string line) {",
                "        List<string> fields = new List<string>();",
                "        StringBuilder current = new StringBuilder();",
                "        bool escaping = false;",
                "        foreach (char ch in line) {",
                "            if (escaping) {",
                "                if (ch == 'n') current.Append('\\n');",
                "                else if (ch == 'r') current.Append('\\r');",
                "                else if (ch == 't') current.Append('\\t');",
                "                else current.Append(ch);",
                "                escaping = false;",
                "                continue;",
                "            }",
                "            if (ch == '\\\\') { escaping = true; continue; }",
                "            if (ch == '\\t') { fields.Add(current.ToString()); current.Clear(); continue; }",
                "            current.Append(ch);",
                "        }",
                "        if (escaping) current.Append('\\\\');",
                "        fields.Add(current.ToString());",
                "        return fields;",
                "    }",
                "",
                "    public static void async_write(string kind, string name, string typeName, string payload) {",
                "        async_write(kind, name, typeName, payload, \"cs\");",
                "    }",
                "",
                "    public static void async_write(string kind, string name, string typeName, string payload, string sourceLang) {",
                "        Directory.CreateDirectory(\"output\");",
                "        string record = string.Join(\"\\t\", Escape(kind), Escape(name), Escape(typeName), Escape(sourceLang), Escape(payload)) + Environment.NewLine;",
                "        File.AppendAllText(Path.Combine(\"output\", \"apo_ir.txt\"), record, Encoding.UTF8);",
                "    }",
                "",
                "    public static string async_read(string name) {",
                "        return async_read(\"\", name);",
                "    }",
                "",
                "    public static string async_read(string kind, string name) {",
                "        string path = Path.Combine(\"output\", \"apo_ir.txt\");",
                "        if (!File.Exists(path)) return string.Empty;",
                "        string[] lines = File.ReadAllLines(path, Encoding.UTF8);",
                "        for (int index = lines.Length - 1; index >= 0; index -= 1) {",
                "            string line = lines[index];",
                "            if (string.IsNullOrEmpty(line)) continue;",
                "            List<string> fields = ParseLine(line);",
                "            if (fields.Count < 5) continue;",
                "            if (!string.IsNullOrEmpty(kind) && fields[0] != kind) continue;",
                "            if (fields[1] != name) continue;",
                "            return fields[4];",
                "        }",
                "        return string.Empty;",
                "    }",
                "",
                "    public static int async_exec(string name) {",
                "        return async_exec(\"\", name);",
                "    }",
                "",
                "    public static int async_exec(string kind, string name) {",
                "        Process process = new Process();",
                "        process.StartInfo = new ProcessStartInfo {",
                "            FileName = \"powershell\",",
                "            Arguments = \"-NoProfile -ExecutionPolicy Bypass -File output/apo_ir_exec.ps1 \\\"\" + kind + \"\\\" \\\"\" + name + \"\\\"\",",
                "            UseShellExecute = false",
                "        };",
                "        process.Start();",
                "        process.WaitForExit();",
                "        return process.ExitCode;",
                "    }",
                "}") + "\n\n";
    }

    private String buildGoIrPrelude() {
        return String.join("\n",
                "package main",
                "",
                "import (",
                "    \"os\"",
                "    \"os/exec\"",
                "    \"path/filepath\"",
                "    \"strings\"",
                ")",
                "",
                "func apoIrEscape(value string) string {",
                "    replacer := strings.NewReplacer(\\\"\\\\\\\", \\\"\\\\\\\\\\\\\\\", \\\"\\t\\\", \\\"\\\\t\\\", \\\"\\n\\\", \\\"\\\\n\\\", \\\"\\r\\\", \\\"\\\\r\\\")",
                "    return replacer.Replace(value)",
                "}",
                "",
                "func apoIrParseLine(line string) []string {",
                "    fields := []string{}",
                "    var current strings.Builder",
                "    escaping := false",
                "    for _, ch := range line {",
                "        if escaping {",
                "            switch ch {",
                "            case 'n': current.WriteRune('\\n')",
                "            case 'r': current.WriteRune('\\r')",
                "            case 't': current.WriteRune('\\t')",
                "            default: current.WriteRune(ch)",
                "            }",
                "            escaping = false",
                "            continue",
                "        }",
                "        if ch == '\\\\' { escaping = true; continue }",
                "        if ch == '\\t' { fields = append(fields, current.String()); current.Reset(); continue }",
                "        current.WriteRune(ch)",
                "    }",
                "    if escaping { current.WriteRune('\\\\') }",
                "    fields = append(fields, current.String())",
                "    return fields",
                "}",
                "",
                "func async_write(args ...string) {",
                "    if len(args) < 4 { return }",
                "    kind, name, typeName, payload := args[0], args[1], args[2], args[3]",
                "    sourceLang := \"go\"",
                "    if len(args) > 4 { sourceLang = args[4] }",
                "    _ = os.MkdirAll(\"output\", 0o755)",
                "    record := strings.Join([]string{apoIrEscape(kind), apoIrEscape(name), apoIrEscape(typeName), apoIrEscape(sourceLang), apoIrEscape(payload)}, \"\\t\") + \"\\n\"",
                "    file, _ := os.OpenFile(filepath.Join(\"output\", \"apo_ir.txt\"), os.O_APPEND|os.O_CREATE|os.O_WRONLY, 0o644)",
                "    defer file.Close()",
                "    _, _ = file.WriteString(record)",
                "}",
                "",
                "func async_read(args ...string) string {",
                "    kind := \"\"",
                "    name := \"\"",
                "    if len(args) == 1 { name = args[0] } else if len(args) > 1 { kind = args[0]; name = args[1] }",
                "    content, err := os.ReadFile(filepath.Join(\"output\", \"apo_ir.txt\"))",
                "    if err != nil { return \"\" }",
                "    lines := strings.Split(strings.ReplaceAll(string(content), \"\\r\\n\", \"\\n\"), \"\\n\")",
                "    for index := len(lines) - 1; index >= 0; index -= 1 {",
                "        line := lines[index]",
                "        if line == \"\" { continue }",
                "        fields := apoIrParseLine(line)",
                "        if len(fields) < 5 { continue }",
                "        if kind != \"\" && fields[0] != kind { continue }",
                "        if fields[1] != name { continue }",
                "        return fields[4]",
                "    }",
                "    return \"\"",
                "}",
                "",
                "func async_exec(args ...string) int {",
                "    kind := \"\"",
                "    name := \"\"",
                "    if len(args) == 1 { name = args[0] } else if len(args) > 1 { kind = args[0]; name = args[1] }",
                "    command := exec.Command(\"powershell\", \"-NoProfile\", \"-ExecutionPolicy\", \"Bypass\", \"-File\", \"output/apo_ir_exec.ps1\", kind, name)",
                "    command.Stdout = os.Stdout",
                "    command.Stderr = os.Stderr",
                "    err := command.Run()",
                "    if err == nil { return 0 }",
                "    if exitError, ok := err.(*exec.ExitError); ok { return exitError.ExitCode() }",
                "    return -1",
                "}") + "\n\n";
    }

    private String buildPhpIrPrelude() {
        return String.join("\n",
                "function _apo_ir_escape($value) {",
                "    $text = $value === null ? '' : (string)$value;",
                "    return str_replace([\\\"\\\\\\\", \\\"\\t\\\", \\\"\\n\\\", \\\"\\r\\\"], [\\\"\\\\\\\\\\\\\\\", \\\"\\\\t\\\", \\\"\\\\n\\\", \\\"\\\\r\\\"], $text);",
                "}",
                "",
                "function _apo_ir_parse_line($line) {",
                "    $fields = [];",
                "    $current = '';",
                "    $escaping = false;",
                "    $length = strlen($line);",
                "    for ($index = 0; $index < $length; $index += 1) {",
                "        $ch = $line[$index];",
                "        if ($escaping) {",
                "            if ($ch === 'n') $current .= \"\\n\";",
                "            else if ($ch === 'r') $current .= \"\\r\";",
                "            else if ($ch === 't') $current .= \"\\t\";",
                "            else $current .= $ch;",
                "            $escaping = false;",
                "            continue;",
                "        }",
                "        if ($ch === '\\\\') { $escaping = true; continue; }",
                "        if ($ch === \"\\t\") { $fields[] = $current; $current = ''; continue; }",
                "        $current .= $ch;",
                "    }",
                "    if ($escaping) $current .= '\\\\';",
                "    $fields[] = $current;",
                "    return $fields;",
                "}",
                "",
                "function async_write($kind, $name, $typeName, $payload, $sourceLang = 'php') {",
                "    if (!is_dir('output')) mkdir('output', 0777, true);",
                "    $record = implode(\"\\t\", [_apo_ir_escape($kind), _apo_ir_escape($name), _apo_ir_escape($typeName), _apo_ir_escape($sourceLang), _apo_ir_escape($payload)]) . PHP_EOL;",
                "    file_put_contents('output/apo_ir.txt', $record, FILE_APPEND);",
                "}",
                "",
                "function async_read($kindOrName, $maybeName = null) {",
                "    $kind = $maybeName === null ? '' : (string)$kindOrName;",
                "    $name = $maybeName === null ? (string)$kindOrName : (string)$maybeName;",
                "    if (!file_exists('output/apo_ir.txt')) return '';",
                "    $lines = file('output/apo_ir.txt', FILE_IGNORE_NEW_LINES);",
                "    for ($index = count($lines) - 1; $index >= 0; $index -= 1) {",
                "        $line = $lines[$index];",
                "        if ($line === '') continue;",
                "        $fields = _apo_ir_parse_line($line);",
                "        if (count($fields) < 5) continue;",
                "        if ($kind !== '' && $fields[0] !== $kind) continue;",
                "        if ($fields[1] !== $name) continue;",
                "        return $fields[4];",
                "    }",
                "    return '';",
                "}",
                "",
                "function async_exec($kindOrName, $maybeName = null) {",
                "    $kind = $maybeName === null ? '' : (string)$kindOrName;",
                "    $name = $maybeName === null ? (string)$kindOrName : (string)$maybeName;",
                "    $command = 'powershell -NoProfile -ExecutionPolicy Bypass -File ' . escapeshellarg('output/apo_ir_exec.ps1') . ' ' . escapeshellarg($kind) . ' ' . escapeshellarg($name);",
                "    passthru($command, $exitCode);",
                "    return $exitCode;",
                "}") + "\n\n";
    }

    private String buildRubyIrPrelude() {
        return String.join("\n",
                "require 'fileutils'",
                "",
                "def __apo_ir_escape(value)",
                "  text = value.nil? ? '' : value.to_s",
                "  text.gsub('\\\\', '\\\\\\\\').gsub(\"\\t\", '\\\\t').gsub(\"\\n\", '\\\\n').gsub(\"\\r\", '\\\\r')",
                "end",
                "",
                "def __apo_ir_parse_line(line)",
                "  fields = []",
                "  current = ''",
                "  escaping = false",
                "  line.each_char do |ch|",
                "    if escaping",
                "      current << case ch when 'n' then \"\\n\" when 'r' then \"\\r\" when 't' then \"\\t\" else ch end",
                "      escaping = false",
                "      next",
                "    end",
                "    if ch == '\\\\'",
                "      escaping = true",
                "      next",
                "    end",
                "    if ch == \"\\t\"",
                "      fields << current",
                "      current = ''",
                "      next",
                "    end",
                "    current << ch",
                "  end",
                "  current << '\\\\' if escaping",
                "  fields << current",
                "  fields",
                "end",
                "",
                "def async_write(kind, name, type_name, payload, source_lang = 'rb')",
                "  FileUtils.mkdir_p('output')",
                "  record = [kind, name, type_name, source_lang, payload].map { |value| __apo_ir_escape(value) }.join(\"\\t\") + \"\\n\"",
                "  File.open('output/apo_ir.txt', 'a:utf-8') { |file| file.write(record) }",
                "end",
                "",
                "def async_read(kind_or_name, name = nil)",
                "  kind = name.nil? ? '' : kind_or_name.to_s",
                "  symbol_name = name.nil? ? kind_or_name.to_s : name.to_s",
                "  return '' unless File.exist?('output/apo_ir.txt')",
                "  File.readlines('output/apo_ir.txt', chomp: true).reverse_each do |line|",
                "    next if line.empty?",
                "    fields = __apo_ir_parse_line(line)",
                "    next if fields.length < 5",
                "    next unless kind.empty? || fields[0] == kind",
                "    next unless fields[1] == symbol_name",
                "    return fields[4]",
                "  end",
                "  ''",
                "end",
                "",
                "def async_exec(kind_or_name, name = nil)",
                "  kind = name.nil? ? '' : kind_or_name.to_s",
                "  symbol_name = name.nil? ? kind_or_name.to_s : name.to_s",
                "  system('powershell', '-NoProfile', '-ExecutionPolicy', 'Bypass', '-File', 'output/apo_ir_exec.ps1', kind, symbol_name)",
                "  $?.exitstatus || -1",
                "end") + "\n\n";
    }

    private String buildKotlinIrPrelude() {
        return String.join("\n",
                "import java.nio.charset.StandardCharsets",
                "import java.nio.file.Files",
                "import java.nio.file.Paths",
                "import java.nio.file.StandardOpenOption",
                "",
                "fun apoIrEscape(value: String?): String {",
                "    val text = value ?: \"\"",
                "    return text.replace(\\\"\\\\\\\", \\\"\\\\\\\\\\\\\\\").replace(\\\"\\t\\\", \\\"\\\\t\\\").replace(\\\"\\n\\\", \\\"\\\\n\\\").replace(\\\"\\r\\\", \\\"\\\\r\\\")",
                "}",
                "",
                "fun apoIrParseLine(line: String): List<String> {",
                "    val fields = mutableListOf<String>()",
                "    val current = StringBuilder()",
                "    var escaping = false",
                "    for (ch in line) {",
                "        if (escaping) {",
                "            when (ch) {",
                "                'n' -> current.append('\\n')",
                "                'r' -> current.append('\\r')",
                "                't' -> current.append('\\t')",
                "                else -> current.append(ch)",
                "            }",
                "            escaping = false",
                "            continue",
                "        }",
                "        if (ch == '\\\\') { escaping = true; continue }",
                "        if (ch == '\\t') { fields += current.toString(); current.setLength(0); continue }",
                "        current.append(ch)",
                "    }",
                "    if (escaping) current.append('\\\\')",
                "    fields += current.toString()",
                "    return fields",
                "}",
                "",
                "fun async_write(kind: String, name: String, typeName: String, payload: String, sourceLang: String = \"kt\") {",
                "    val irPath = Paths.get(\"output\", \"apo_ir.txt\")",
                "    Files.createDirectories(irPath.parent)",
                "    val record = listOf(kind, name, typeName, sourceLang, payload).joinToString(\"\\t\") { apoIrEscape(it) } + System.lineSeparator()",
                "    Files.write(irPath, record.toByteArray(StandardCharsets.UTF_8), StandardOpenOption.CREATE, StandardOpenOption.APPEND)",
                "}",
                "",
                "fun async_read(name: String): String = async_read(\"\", name)",
                "",
                "fun async_read(kind: String, name: String): String {",
                "    val irPath = Paths.get(\"output\", \"apo_ir.txt\")",
                "    if (!Files.exists(irPath)) return \"\"",
                "    val lines = Files.readAllLines(irPath, StandardCharsets.UTF_8)",
                "    for (index in lines.indices.reversed()) {",
                "        val line = lines[index]",
                "        if (line.isEmpty()) continue",
                "        val fields = apoIrParseLine(line)",
                "        if (fields.size < 5) continue",
                "        if (kind.isNotEmpty() && fields[0] != kind) continue",
                "        if (fields[1] != name) continue",
                "        return fields[4]",
                "    }",
                "    return \"\"",
                "}",
                "",
                "fun async_exec(name: String): Int = async_exec(\"\", name)",
                "",
                "fun async_exec(kind: String, name: String): Int {",
                "    val process = ProcessBuilder(\"powershell\", \"-NoProfile\", \"-ExecutionPolicy\", \"Bypass\", \"-File\", \"output/apo_ir_exec.ps1\", kind, name)",
                "        .inheritIO()",
                "        .start()",
                "    return process.waitFor()",
                "}") + "\n\n";
    }

    private void writeIrRuntimeSupport() {
        writeRuntimeInclude("apo_ir_runtime.hpp");
        write("\n");
    }

    private String wrapNativeSource(String lang, String code) {
        String normalized = code.strip();
        normalized = rewriteAsyncInteropCalls(lang, normalized);
        if ("cpp".equals(lang)) {
            normalized = rewriteRawCppDeclaredTypes(normalized);
        }
        return normalized + "\n";
    }

    private String escapeCppString(String value) {
        return value
                .replace("\\", "\\\\")
                .replace("\r", "\\r")
                .replace("\n", "\\n")
                .replace("\"", "\\\"");
    }

    private String buildQueuedPayload(compilerv1Parser.NativemodeContext ctx) {
        String langTok = null;
        if (ctx.NATIVE() != null) langTok = ctx.NATIVE().getText();
        else if (ctx.ID() != null) langTok = ctx.ID().getText();
        String lang = normalizeNativeLang(langTok);
        String code = wrapNativeSource(lang, ctx.INCLUSIVE().getText());
        return lang + "\n" + code;
    }

    private String renderEnqueuePayload(compilerv1Parser.NativemodeContext ctx) {
        return "__apo_queuePayload(\"" + escapeCppString(buildQueuedPayload(ctx)) + "\");";
    }

    private String renderImmediatePayload(compilerv1Parser.NativemodeContext ctx) {
        return "__apo_executePayload(\"" + escapeCppString(buildQueuedPayload(ctx)) + "\");";
    }

    private String renderAssertStatement(compilerv1Parser.AssertStmtContext ctx) {
        return "assert(" + renderExpression(ctx.expression()) + ");";
    }

    private String renderUnsafeLinePayload(compilerv1Parser.UnsafeLinePayloadContext ctx) {
        if (ctx.pointer() != null) {
            return renderPointerStatement(ctx.pointer());
        }
        if (ctx.malloc() != null) {
            return renderMalloc(ctx.malloc());
        }
        if (ctx.mntDecl() != null) {
            return renderMntDecl(ctx.mntDecl());
        }
        if (ctx.delalc() != null) {
            markPlacementReusable(ctx.delalc().ID().getText());
            return null;
        }
        if (ctx.free() != null) {
            return renderFree(ctx.free());
        }
        if (ctx.plcnew() != null) {
            return renderPlcnew(ctx.plcnew());
        }
        if (ctx.dircpp() != null) {
            return rewriteRawCppDeclaredTypes(ctx.dircpp().INCLUSIVE().getText());
        }
        if (ctx.nativemode() != null) {
            return ctx.nativemode().OVERRIDE() != null ? renderImmediatePayload(ctx.nativemode()) : renderEnqueuePayload(ctx.nativemode());
        }
        throw error(ctx, "unsupported `%` unsafe-line statement");
    }

    private void writeRenderedLines(String rendered) {
        if (rendered == null || rendered.isEmpty()) {
            return;
        }
        for (String line : rendered.split("\\R", -1)) {
            if (line.isEmpty()) {
                write("\n");
            } else {
                writeLine(line);
            }
        }
    }

    private String renderScopedTopLevelStatement(String rendered) {
        StringBuilder builder = new StringBuilder();
        builder.append("([&]() {\n");
        if (rendered != null && !rendered.isEmpty()) {
            for (String line : rendered.split("\\R", -1)) {
                if (line.isEmpty()) {
                    builder.append("\n");
                } else {
                    builder.append("    ").append(line).append("\n");
                }
            }
        }
        builder.append("})();");
        return builder.toString();
    }

    private String renderTopLevelUnsafeLine(compilerv1Parser.UnsafeLineStmtContext ctx) {
        pushTypeScope();
        try {
            return renderScopedTopLevelStatement(renderUnsafeLinePayload(ctx.unsafeLinePayload()));
        } finally {
            popTypeScope();
        }
    }

    private void collectGlobalInits(org.antlr.v4.runtime.tree.ParseTree node, Map<String, compilerv1Parser.GlobalInitContext> target) {
        if (node == null) {
            return;
        }
        if (node instanceof compilerv1Parser.GlobalInitContext) {
            compilerv1Parser.GlobalInitContext globalInit = (compilerv1Parser.GlobalInitContext) node;
            String name = globalInit.init().initCore().ID().getText();
            compilerv1Parser.GlobalInitContext existing = target.putIfAbsent(name, globalInit);
            if (existing != null && existing != globalInit) {
                throw error(globalInit, "duplicate global declaration for `" + name + "`");
            }
            return;
        }
        for (int index = 0; index < node.getChildCount(); index++) {
            collectGlobalInits(node.getChild(index), target);
        }
    }

    private void emitGlobalForwardDeclarations(compilerv1Parser.ProgramContext ctx) {
        boolean wroteForwardDeclaration = false;
        for (org.antlr.v4.runtime.tree.ParseTree child : ctx.children) {
            if (child instanceof compilerv1Parser.TemplateDeclContext) {
                compilerv1Parser.TemplateDeclContext templateCtx = (compilerv1Parser.TemplateDeclContext) child;
                writeLine("template <" + renderTemplateParameterList(templateCtx.templateParams()) + ">");
                writeLine("class " + mapDeclaredType(templateCtx.ID().getText()) + ";");
                wroteForwardDeclaration = true;
            } else if (child instanceof compilerv1Parser.ClassContext) {
                writeLine("class " + mapDeclaredType(((compilerv1Parser.ClassContext) child).ID().getText()) + ";");
                wroteForwardDeclaration = true;
            } else if (child instanceof compilerv1Parser.StructContext) {
                writeLine("struct " + mapDeclaredType(((compilerv1Parser.StructContext) child).ID().getText()) + ";");
                wroteForwardDeclaration = true;
            } else if (child instanceof compilerv1Parser.MemstructContext) {
                writeLine("struct " + mapDeclaredType(((compilerv1Parser.MemstructContext) child).ID().getText()) + ";");
                wroteForwardDeclaration = true;
            } else if (child instanceof compilerv1Parser.TypedefStructContext) {
                compilerv1Parser.TypedefStructContext typedefCtx = (compilerv1Parser.TypedefStructContext) child;
                writeLine("struct " + mapDeclaredType(typedefCtx.struct().ID().getText()) + ";");
                writeLine("using " + mapDeclaredType(typedefCtx.ID().getText()) + " = " + mapDeclaredType(typedefCtx.struct().ID().getText()) + ";");
                wroteForwardDeclaration = true;
            } else if (child instanceof compilerv1Parser.OpstructContext) {
                writeLine("struct " + mapDeclaredType(((compilerv1Parser.OpstructContext) child).ID().getText()) + ";");
                wroteForwardDeclaration = true;
            } else if (child instanceof compilerv1Parser.TypedefOpstructContext) {
                compilerv1Parser.TypedefOpstructContext typedefCtx = (compilerv1Parser.TypedefOpstructContext) child;
                writeLine("struct " + mapDeclaredType(typedefOpstructPublicName(typedefCtx)) + ";");
                if (isTypedefOpstructAlias(typedefCtx)) {
                    writeLine("using " + mapDeclaredType(typedefCtx.ID(1).getText()) + " = " + mapDeclaredType(typedefCtx.ID(0).getText()) + ";");
                }
                wroteForwardDeclaration = true;
            } else if (child instanceof compilerv1Parser.InterfaceContext) {
                writeLine("class " + mapDeclaredType(((compilerv1Parser.InterfaceContext) child).ID().getText()) + ";");
                wroteForwardDeclaration = true;
            }
        }
        if (wroteForwardDeclaration) {
            write("\n");
        }
    }

    private String renderSyscallExecution(boolean drainAll) {
        if (schedulerEevfEnabled()) {
            return "__apo_scheduler_eevf_runtime::instance().run_process(\"syscall\", [&]() { return __apo_executeQueuedPayload(" + (drainAll ? "true" : "false") + "); });";
        }
        if (drainAll) {
            return "__apo_executeQueuedPayload(true);";
        }
        return "__apo_executeQueuedPayload(false);";
    }

    private String renderGoAsyncCall(compilerv1Parser.AsyncCallContext ctx) {
        String call = renderFunctionCall(ctx.functionCall());
        if (schedulerEevfEnabled()) {
            String taskName = ctx.functionCall().ID().getText();
            return "__apo_scheduler_eevf_runtime::instance().note_task_launch(\"" + escapeCppString(taskName)
                    + "\"); __apo_go_scheduler::instance().spawn([=]() mutable { __apo_scheduler_eevf_runtime::task_scope __apo_task_scope(\""
                    + escapeCppString(taskName) + "\"); " + call + "; });";
        }
        return "__apo_go_scheduler::instance().spawn([=]() mutable { " + call + "; });";
    }

    private void emitGlobalExtern(compilerv1Parser.GlobalInitContext ctx) {
        compilerv1Parser.InitCoreContext initCtx = ctx.init().initCore();
        String name = initCtx.ID().getText();
        boolean isConst = isImmutableQualifier(initCtx);
        ApolloType declaredType = typeFromContext(initCtx.typeRef());
        ApolloType boundType = declaredType;
        if (shouldWholeProgramManageType(declaredType)) {
            boundType = markManaged(declaredType);
            writeLine("extern " + renderManagedHandleType(declaredType) + " " + name + ";");
        } else {
            writeLine("extern " + (emitConstQualifier(name, isConst) ? "const " : "") + renderType(initCtx.typeRef()) + " " + name + ";");
        }
        bindVariableType(name, boundType, isConst);
    }

    private String renderTemplateString(compilerv1Parser.TemplateStringContext ctx) {
        String raw = ctx.TEMPLATE_STRING().getText();
        String body = raw.length() >= 2 ? raw.substring(1, raw.length() - 1) : "";
        Pattern variablePattern = Pattern.compile("\\$\\{([a-zA-Z_][a-zA-Z0-9_]*)\\}");
        Matcher matcher = variablePattern.matcher(body);
        List<String> pieces = new ArrayList<>();
        int cursor = 0;
        while (matcher.find()) {
            String literal = body.substring(cursor, matcher.start());
            if (!literal.isEmpty()) {
                pieces.add("\"" + escapeCppString(literal) + "\"");
            }
            pieces.add("__apo_to_string(" + matcher.group(1) + ")");
            cursor = matcher.end();
        }
        String tail = body.substring(cursor);
        if (!tail.isEmpty()) {
            pieces.add("\"" + escapeCppString(tail) + "\"");
        }
        if (pieces.isEmpty()) {
            return "\"\"";
        }
        StringBuilder builder = new StringBuilder("std::string(\"\")");
        for (String piece : pieces) {
            builder.append(" + ").append(piece);
        }
        return builder.toString();
    }

    private void collectAutofmtStorageMutableNames(org.antlr.v4.runtime.tree.ParseTree node) {
        if (node == null) {
            return;
        }
        if (node instanceof compilerv1Parser.InductStmtContext inductCtx) {
            autofmtStorageMutableNames.add(inductCtx.ID().getText());
        }
        for (int i = 0; i < node.getChildCount(); i++) {
            collectAutofmtStorageMutableNames(node.getChild(i));
        }
    }

    private void writeHashSupport() {
        writeLine("#ifndef __APO_HASH_SUPPORT");
        writeLine("#define __APO_HASH_SUPPORT");
        writeLine("template <typename T>");
        writeLine("inline void __apo_hash_combine(std::size_t& seed, const T& value) {");
        indentLevel++;
        writeLine("seed ^= value + 0x9e3779b97f4a7c15ULL + (seed << 6) + (seed >> 2);");
        indentLevel--;
        writeLine("}");
        writeLine("template <typename T>");
        writeLine("struct __apo_hash {");
        indentLevel++;
        writeLine("std::size_t operator()(const T& value) const { return std::hash<T>{}(value); }");
        indentLevel--;
        writeLine("};");
        writeLine("template <typename T>");
        writeLine("struct __apo_hash<std::vector<T>> {");
        indentLevel++;
        writeLine("std::size_t operator()(const std::vector<T>& values) const {");
        indentLevel++;
        writeLine("std::size_t seed = 0;");
        writeLine("for (const auto& value : values) {");
        indentLevel++;
        writeLine("__apo_hash_combine(seed, __apo_hash<T>{}(value));");
        indentLevel--;
        writeLine("}");
        writeLine("return seed;");
        indentLevel--;
        writeLine("}");
        indentLevel--;
        writeLine("};");
        writeLine("template <typename K, typename V, typename H, typename E, typename A>");
        writeLine("struct __apo_hash<std::unordered_map<K, V, H, E, A>> {");
        indentLevel++;
        writeLine("std::size_t operator()(const std::unordered_map<K, V, H, E, A>& values) const {");
        indentLevel++;
        writeLine("std::size_t seed = 0;");
        writeLine("for (const auto& entry : values) {");
        indentLevel++;
        writeLine("std::size_t entrySeed = __apo_hash<K>{}(entry.first);");
        writeLine("__apo_hash_combine(entrySeed, __apo_hash<V>{}(entry.second));");
        writeLine("seed ^= entrySeed + 0x9e3779b97f4a7c15ULL;");
        indentLevel--;
        writeLine("}");
        writeLine("return seed;");
        indentLevel--;
        writeLine("}");
        indentLevel--;
        writeLine("};");
        writeLine("#endif");
        write("\n");
    }

    private void writeIscRuntimeSupport() {
        writeLine("#ifndef __APO_ISC_RUNTIME_SUPPORT");
        writeLine("#define __APO_ISC_RUNTIME_SUPPORT");
        writeLine("struct __apo_isc {");
        indentLevel++;
        writeLine("bool ok;");
        writeLine("bool terminal;");
        writeLine("std::string message;");
        writeLine("static __apo_isc success() {");
        indentLevel++;
        writeLine("return {true, false, \"\"};");
        indentLevel--;
        writeLine("}");
        writeLine("static __apo_isc error(const std::string& message, bool terminal = false) {");
        indentLevel++;
        writeLine("return {false, terminal, message};");
        indentLevel--;
        writeLine("}");
        writeLine("bool failed() const {");
        indentLevel++;
        writeLine("return !ok;");
        indentLevel--;
        writeLine("}");
        indentLevel--;
        writeLine("};");
        writeLine("#endif");
        write("\n");
    }

    private void writeFileRuntimeSupport() {
        writeLine("#ifndef __APO_FILE_RUNTIME_SUPPORT");
        writeLine("#define __APO_FILE_RUNTIME_SUPPORT");
        writeLine("struct __apo_file {");
        indentLevel++;
        writeLine("std::shared_ptr<std::fstream> stream;");
        writeLine("__apo_file() : stream(std::make_shared<std::fstream>()) {}");
        writeLine("static __apo_file open(const std::string& path, const std::string& mode = \"r\") {");
        indentLevel++;
        writeLine("__apo_file file;");
        writeLine("std::ios::openmode flags = static_cast<std::ios::openmode>(0);");
        writeLine("if (mode.find('a') != std::string::npos) {");
        indentLevel++;
        writeLine("flags |= std::ios::out | std::ios::app;");
        indentLevel--;
        writeLine("} else if (mode.find('w') != std::string::npos) {");
        indentLevel++;
        writeLine("flags |= std::ios::out | std::ios::trunc;");
        indentLevel--;
        writeLine("} else {");
        indentLevel++;
        writeLine("flags |= std::ios::in;");
        indentLevel--;
        writeLine("}");
        writeLine("if (mode.find('+') != std::string::npos) {");
        indentLevel++;
        writeLine("flags |= std::ios::in | std::ios::out;");
        indentLevel--;
        writeLine("}");
        writeLine("if (mode.find('b') != std::string::npos) {");
        indentLevel++;
        writeLine("flags |= std::ios::binary;");
        indentLevel--;
        writeLine("}");
        writeLine("file.stream->open(path, flags);");
        writeLine("return file;");
        indentLevel--;
        writeLine("}");
        writeLine("void write(const std::string& value) const {");
        indentLevel++;
        writeLine("if (stream && stream->is_open()) {");
        indentLevel++;
        writeLine("(*stream) << value;");
        indentLevel--;
        writeLine("}");
        indentLevel--;
        writeLine("}");
        writeLine("std::string read() const {");
        indentLevel++;
        writeLine("if (!stream || !stream->is_open()) {");
        indentLevel++;
        writeLine("return \"\";");
        indentLevel--;
        writeLine("}");
        writeLine("std::ostringstream buffer;");
        writeLine("buffer << stream->rdbuf();");
        writeLine("return buffer.str();");
        indentLevel--;
        writeLine("}");
        writeLine("void close() const {");
        indentLevel++;
        writeLine("if (stream && stream->is_open()) {");
        indentLevel++;
        writeLine("stream->close();");
        indentLevel--;
        writeLine("}");
        indentLevel--;
        writeLine("}");
        indentLevel--;
        writeLine("};");
        writeLine("#endif");
        write("\n");
    }

    private void writeGoAsyncRuntimeSupport() {
        writeRuntimeInclude("apo_go_async_runtime.hpp");
        write("\n");
    }

    private void writeAutofmtOwnerRuntimeSupport() {
        writeRuntimeInclude("apo_autofmt_owner_runtime.hpp");
        write("\n");
    }

    private void writeTemplateLiteralSupport() {
        writeLine("#ifndef __APO_TEMPLATE_LITERAL_SUPPORT");
        writeLine("#define __APO_TEMPLATE_LITERAL_SUPPORT");
        writeLine("template <typename T>");
        writeLine("static std::string __apo_to_string(const T& value) {");
        indentLevel++;
        writeLine("std::ostringstream stream;");
        writeLine("stream << value;");
        writeLine("return stream.str();");
        indentLevel--;
        writeLine("}");
        writeLine("static std::string __apo_to_string(const std::string& value) { return value; }");
        writeLine("static std::string __apo_to_string(const char* value) { return value != nullptr ? std::string(value) : std::string(); }");
        writeLine("static std::string __apo_to_string(bool value) { return value ? \"true\" : \"false\"; }");
        writeLine("#endif");
        write("\n");
    }

    private String renderExpression(compilerv1Parser.ExpressionContext ctx) {
        return renderExpression(ctx, null);
    }

    private String renderExpression(compilerv1Parser.ExpressionContext ctx, ApolloType expectedType) {
        if (ctx == null) {
            return "";
        }
        ApolloType inferredType = inferExpressionApolloType(ctx);
        if (isLtoType(inferredType)) {
            ApolloType castTarget = expectedType != null && !isLtoType(expectedType) ? expectedType : ltoPayloadType(inferredType);
            if (castTarget != null) {
                compilerv1Parser.PrimaryContext primaryCtx = resolveSinglePrimary(ctx);
                if (primaryCtx != null) {
                    return renderLtoPrimary(primaryCtx, castTarget);
                }
            }
        }
        if (ctx.getChildCount() > 1 && ctx.expression().size() == 2) {
            return "(" + renderOrExpr(ctx.orExpr(), expectedType)
                    + " ? " + renderExpression(ctx.expression(0), expectedType)
                    + " : " + renderExpression(ctx.expression(1), expectedType) + ")";
        }
        return renderOrExpr(ctx.orExpr(), expectedType);
    }

    private String renderOrExpr(compilerv1Parser.OrExprContext ctx, ApolloType expectedType) {
        StringBuilder builder = new StringBuilder();
        List<compilerv1Parser.AndExprContext> entries = ctx.andExpr();
        for (int index = 0; index < entries.size(); index++) {
            if (index > 0) {
                builder.append(" || ");
            }
            builder.append(renderAndExpr(entries.get(index), expectedType));
        }
        return builder.toString();
    }

    private String renderAndExpr(compilerv1Parser.AndExprContext ctx, ApolloType expectedType) {
        StringBuilder builder = new StringBuilder();
        List<compilerv1Parser.BitwiseOrExprContext> entries = ctx.bitwiseOrExpr();
        for (int index = 0; index < entries.size(); index++) {
            if (index > 0) {
                builder.append(" && ");
            }
            builder.append(renderBitwiseOrExpr(entries.get(index), expectedType));
        }
        return builder.toString();
    }

    private String renderBitwiseOrExpr(compilerv1Parser.BitwiseOrExprContext ctx, ApolloType expectedType) {
        StringBuilder builder = new StringBuilder();
        List<compilerv1Parser.BitwiseXorExprContext> entries = ctx.bitwiseXorExpr();
        for (int index = 0; index < entries.size(); index++) {
            if (index > 0) {
                builder.append(" | ");
            }
            builder.append(renderBitwiseXorExpr(entries.get(index), expectedType));
        }
        return builder.toString();
    }

    private String renderBitwiseXorExpr(compilerv1Parser.BitwiseXorExprContext ctx, ApolloType expectedType) {
        StringBuilder builder = new StringBuilder();
        List<compilerv1Parser.BitwiseAndExprContext> entries = ctx.bitwiseAndExpr();
        for (int index = 0; index < entries.size(); index++) {
            if (index > 0) {
                builder.append(" ^ ");
            }
            builder.append(renderBitwiseAndExpr(entries.get(index), expectedType));
        }
        return builder.toString();
    }

    private String renderBitwiseAndExpr(compilerv1Parser.BitwiseAndExprContext ctx, ApolloType expectedType) {
        StringBuilder builder = new StringBuilder();
        List<compilerv1Parser.EqualityExprContext> entries = ctx.equalityExpr();
        for (int index = 0; index < entries.size(); index++) {
            if (index > 0) {
                builder.append(" & ");
            }
            builder.append(renderEqualityExpr(entries.get(index), expectedType));
        }
        return builder.toString();
    }

    private String renderEqualityExpr(compilerv1Parser.EqualityExprContext ctx, ApolloType expectedType) {
        StringBuilder builder = new StringBuilder();
        List<compilerv1Parser.ShiftExprContext> entries = ctx.shiftExpr();
        for (int index = 0; index < entries.size(); index++) {
            if (index > 0) {
                builder.append(' ').append(ctx.getChild(index * 2 - 1).getText()).append(' ');
            }
            builder.append(renderShiftExpr(entries.get(index), expectedType));
        }
        return builder.toString();
    }

    private String renderShiftExpr(compilerv1Parser.ShiftExprContext ctx, ApolloType expectedType) {
        StringBuilder builder = new StringBuilder();
        List<compilerv1Parser.RelationalExprContext> entries = ctx.relationalExpr();
        List<ApolloType> operandTypes = new ArrayList<>();
        for (compilerv1Parser.RelationalExprContext entry : entries) {
            operandTypes.add(inferRelationalExprApolloType(entry));
        }
        ApolloType operandType = operandExpectation(operandTypes, expectedType);
        for (int index = 0; index < entries.size(); index++) {
            if (index > 0) {
                builder.append(' ').append(ctx.getChild(index * 2 - 1).getText()).append(' ');
            }
            builder.append(renderRelationalExpr(entries.get(index), operandType));
        }
        return builder.toString();
    }

    private String renderRelationalExpr(compilerv1Parser.RelationalExprContext ctx, ApolloType expectedType) {
        StringBuilder builder = new StringBuilder();
        List<compilerv1Parser.AddExprContext> entries = ctx.addExpr();
        List<ApolloType> operandTypes = new ArrayList<>();
        for (compilerv1Parser.AddExprContext entry : entries) {
            operandTypes.add(inferAddExprApolloType(entry));
        }
        ApolloType operandType = operandExpectation(operandTypes, expectedType);
        for (int index = 0; index < entries.size(); index++) {
            if (index > 0) {
                builder.append(' ').append(ctx.getChild(index * 2 - 1).getText()).append(' ');
            }
            builder.append(renderAddExpr(entries.get(index), operandType));
        }
        return builder.toString();
    }

    private String renderAddExpr(compilerv1Parser.AddExprContext ctx, ApolloType expectedType) {
        StringBuilder builder = new StringBuilder();
        List<compilerv1Parser.MultExprContext> entries = ctx.multExpr();
        List<ApolloType> operandTypes = new ArrayList<>();
        for (compilerv1Parser.MultExprContext entry : entries) {
            operandTypes.add(inferMultExprApolloType(entry));
        }
        ApolloType operandType = operandExpectation(operandTypes, expectedType);
        for (int index = 0; index < entries.size(); index++) {
            if (index > 0) {
                builder.append(' ').append(ctx.getChild(index * 2 - 1).getText()).append(' ');
            }
            builder.append(renderMultExpr(entries.get(index), operandType));
        }
        return builder.toString();
    }

    private String renderMultExpr(compilerv1Parser.MultExprContext ctx, ApolloType expectedType) {
        StringBuilder builder = new StringBuilder();
        List<compilerv1Parser.PrimaryContext> entries = ctx.primary();
        List<ApolloType> operandTypes = new ArrayList<>();
        for (compilerv1Parser.PrimaryContext entry : entries) {
            operandTypes.add(inferPrimaryApolloType(entry));
        }
        ApolloType operandType = operandExpectation(operandTypes, expectedType);
        for (int index = 0; index < entries.size(); index++) {
            if (index > 0) {
                builder.append(' ').append(ctx.getChild(index * 2 - 1).getText()).append(' ');
            }
            builder.append(renderPrimary(entries.get(index), operandType));
        }
        return builder.toString();
    }

    private String renderLtoPrimary(compilerv1Parser.PrimaryContext ctx, ApolloType castTarget) {
        if (ctx != null && ctx.ID() != null) {
            String variableName = ctx.ID().getText();
            if (isLtoType(resolveVariableType(variableName))) {
                return renderLtoCast(resolveVariableReference(variableName), castTarget);
            }
        }
        return renderPrimary(ctx, castTarget);
    }

    private String renderPrimary(compilerv1Parser.PrimaryContext ctx, ApolloType expectedType) {
        if (ctx.INT() != null) {
            return ctx.INT().getText();
        }
        if (ctx.STRING() != null) {
            return ctx.STRING().getText();
        }
        if (ctx.SUCCESS() != null) {
            return "__apo_isc::success()";
        }
        if (ctx.templateString() != null) {
            return renderTemplateString(ctx.templateString());
        }
        if (ctx.stdinExpr() != null) {
            return renderStdinExpression();
        }
        if (ctx.castExpr() != null) {
            return "(" + renderCastType(ctx.castExpr().castType()) + ")" + renderPrimary(ctx.castExpr().primary(), expectedType);
        }
        if (ctx.placementNewExpr() != null) {
            return renderPlacementNew(ctx.placementNewExpr());
        }
        if (ctx.functionCall() != null) {
            return renderFunctionCall(ctx.functionCall());
        }
        if (ctx.memberaccess() != null) {
            return renderMemberAccess(ctx.memberaccess());
        }
        if (ctx.indexedAccess() != null) {
            return renderIndexedAccess(ctx.indexedAccess());
        }
        if (ctx.compositeLiteral() != null) {
            return renderCompositeLiteral(ctx.compositeLiteral(), expectedType);
        }
        if (ctx.instanceValue() != null) {
            return renderInstanceValue(ctx.instanceValue());
        }
        if (ctx.borrowExpr() != null) {
            return renderBorrowExpression(ctx.borrowExpr());
        }
        if (ctx.INDEF() != null) {
            return "this";
        }
        if (ctx.ID() != null) {
            String variableName = ctx.ID().getText();
            if ("null".equals(variableName)) {
                return "nullptr";
            }
            ApolloType resolvedType = resolveVariableType(variableName);
            if (isLtoType(resolvedType)) {
                ApolloType castTarget = expectedType != null && !isLtoType(expectedType) ? expectedType : ltoPayloadType(resolvedType);
                if (castTarget != null) {
                    return renderLtoCast(resolveVariableReference(variableName), castTarget);
                }
            }
            return resolveVariableReference(variableName);
        }
        if (ctx.expression() != null) {
            return "(" + renderExpression(ctx.expression()) + ")";
        }
        return ctx.getText();
    }

    private String renderBorrowExpression(compilerv1Parser.BorrowExprContext ctx) {
        return resolveVariableReference(ctx.ID().getText());
    }

    private String renderCompositeLiteral(compilerv1Parser.CompositeLiteralContext ctx, ApolloType expectedType) {
        List<compilerv1Parser.ExpressionContext> values = ctx.expression();
        if (expectedType != null && "vector".equals(expectedType.name) && expectedType.arguments.size() == 1) {
            StringBuilder builder = new StringBuilder(renderType(expectedType)).append("{");
            for (int index = 0; index < values.size(); index++) {
                if (index > 0) {
                    builder.append(", ");
                }
                builder.append(renderExpression(values.get(index), expectedType.arguments.get(0)));
            }
            builder.append("}");
            return builder.toString();
        }
        if (expectedType != null && "hsh".equals(expectedType.name) && expectedType.arguments.size() == 2) {
            if (values.size() % 2 != 0) {
                throw error(ctx, "hsh composite literals require key/value pairs");
            }
            StringBuilder builder = new StringBuilder(renderType(expectedType)).append("{");
            for (int index = 0; index < values.size(); index += 2) {
                if (index > 0) {
                    builder.append(", ");
                }
                builder.append("{")
                       .append(renderExpression(values.get(index), expectedType.arguments.get(0)))
                       .append(", ")
                       .append(renderExpression(values.get(index + 1), expectedType.arguments.get(1)))
                       .append("}");
            }
            builder.append("}");
            return builder.toString();
        }
        if (expectedType != null) {
            StringBuilder builder = new StringBuilder(renderType(expectedType)).append("{");
            for (int index = 0; index < values.size(); index++) {
                if (index > 0) {
                    builder.append(", ");
                }
                builder.append(renderExpression(values.get(index)));
            }
            builder.append("}");
            return builder.toString();
        }
        StringBuilder builder = new StringBuilder("{");
        for (int index = 0; index < values.size(); index++) {
            if (index > 0) {
                builder.append(", ");
            }
            builder.append(renderExpression(values.get(index)));
        }
        builder.append("}");
        return builder.toString();
    }

    private String renderIndexedAccess(compilerv1Parser.IndexedAccessContext ctx) {
        StringBuilder builder = new StringBuilder(resolveVariableReference(ctx.ID().getText()));
        ApolloType currentType = resolveVariableType(ctx.ID().getText());
        for (compilerv1Parser.AccessKeyContext key : ctx.accessKey()) {
            if (key.APND() != null) {
                throw error(ctx, "apnd cannot be used in an expression");
            }
            ApolloType keyType = keyTypeForIndexedAccess(currentType);
            builder.append("[").append(renderExpression(key.expression(), keyType)).append("]");
            currentType = valueTypeForIndexedAccess(currentType);
        }
        return builder.toString();
    }

    private AssignTargetInfo renderAssignTarget(compilerv1Parser.AssignTargetContext ctx) {
        StringBuilder builder = new StringBuilder(resolveVariableReference(ctx.ID().getText()));
        ApolloType currentType = resolveVariableType(ctx.ID().getText());
        List<compilerv1Parser.AccessKeyContext> keys = ctx.accessKey();
        if (keys == null || keys.isEmpty()) {
            return new AssignTargetInfo(builder.toString(), currentType, null);
        }

        for (int index = 0; index < keys.size(); index++) {
            compilerv1Parser.AccessKeyContext key = keys.get(index);
            if (key.APND() != null) {
                if (index != keys.size() - 1) {
                    throw error(ctx, "apnd can only appear at the end of an assignment target");
                }
                builder.append(".__apollo_append__");
                return new AssignTargetInfo(builder.toString(), valueTypeForIndexedAccess(currentType), currentType);
            }
            ApolloType keyType = keyTypeForIndexedAccess(currentType);
            builder.append("[").append(renderExpression(key.expression(), keyType)).append("]");
            currentType = valueTypeForIndexedAccess(currentType);
        }
        return new AssignTargetInfo(builder.toString(), currentType, null);
    }

    private String renderFunctionCall(compilerv1Parser.FunctionCallContext ctx) {
        String functionName = ctx.ID().getText();
        if ("cerr".equals(functionName) || "terminalcerr".equals(functionName)) {
            if (ctx.args() == null || ctx.args().expression().size() != 1) {
                throw error(ctx, functionName + " expects exactly one message argument");
            }
            String message = renderExpression(ctx.args().expression(0), new ApolloType("str", List.of()));
            return "__apo_isc::error(" + message + ", " + ("terminalcerr".equals(functionName) ? "true" : "false") + ")";
        }
        if ("open".equals(functionName)) {
            if (ctx.args() == null || ctx.args().expression().isEmpty() || ctx.args().expression().size() > 2) {
                throw error(ctx, "open expects a path and optional mode");
            }
            String path = renderExpression(ctx.args().expression(0), new ApolloType("str", List.of()));
            if (ctx.args().expression().size() == 1) {
                return "__apo_file::open(" + path + ")";
            }
            String mode = renderExpression(ctx.args().expression(1), new ApolloType("str", List.of()));
            return "__apo_file::open(" + path + ", " + mode + ")";
        }
        ApolloType functionType = resolveCallableType(functionName);
        String renderedArguments = renderCallArguments(ctx, functionType);
        if (isDynamicMacroName(functionName)) {
            return renderDynamicMacroCall(functionName, renderedArguments);
        }
        if (functionType == null) {
            return renderUnsafeFallbackCall(ctx, functionName, renderedArguments);
        }
        return renderDirectCallExpression(functionName, renderedArguments);
    }

    private ApolloType inferFunctionCallApolloType(compilerv1Parser.FunctionCallContext ctx) {
        if (ctx == null || ctx.ID() == null) {
            return null;
        }
        String functionName = ctx.ID().getText();
        if ("cerr".equals(functionName) || "terminalcerr".equals(functionName)) {
            return new ApolloType("isc", List.of());
        }
        if ("open".equals(functionName)) {
            return new ApolloType("file", List.of());
        }
        return callableReturnType(resolveCallableType(functionName));
    }

    private ApolloType inferMemberAccessApolloType(compilerv1Parser.MemberaccessContext ctx) {
        if (ctx == null) {
            return null;
        }
        ApolloType baseType = "indef".equals(ctx.accessBase().getText()) ? null : resolveVariableType(ctx.accessBase().getText());
        if (ctx.functionCall() != null && baseType != null && "file".equals(baseType.name)) {
            String memberName = ctx.functionCall().ID().getText();
            if ("read".equals(memberName)) {
                return new ApolloType("str", List.of());
            }
            if ("write".equals(memberName) || "close".equals(memberName)) {
                return new ApolloType("void", List.of());
            }
        }
        return null;
    }

    private compilerv1Parser.PrimaryContext resolveSinglePrimary(compilerv1Parser.ExpressionContext ctx) {
        if (ctx == null || ctx.orExpr() == null || ctx.orExpr().andExpr().size() != 1) {
            return null;
        }
        compilerv1Parser.AndExprContext andCtx = ctx.orExpr().andExpr(0);
        if (andCtx.bitwiseOrExpr().size() != 1) {
            return null;
        }
        compilerv1Parser.BitwiseOrExprContext bitwiseOrCtx = andCtx.bitwiseOrExpr(0);
        if (bitwiseOrCtx.bitwiseXorExpr().size() != 1) {
            return null;
        }
        compilerv1Parser.BitwiseXorExprContext bitwiseXorCtx = bitwiseOrCtx.bitwiseXorExpr(0);
        if (bitwiseXorCtx.bitwiseAndExpr().size() != 1) {
            return null;
        }
        compilerv1Parser.BitwiseAndExprContext bitwiseAndCtx = bitwiseXorCtx.bitwiseAndExpr(0);
        if (bitwiseAndCtx.equalityExpr().size() != 1) {
            return null;
        }
        compilerv1Parser.EqualityExprContext equalityCtx = bitwiseAndCtx.equalityExpr(0);
        if (equalityCtx.shiftExpr().size() != 1) {
            return null;
        }
        compilerv1Parser.ShiftExprContext shiftCtx = equalityCtx.shiftExpr(0);
        if (shiftCtx.relationalExpr().size() != 1) {
            return null;
        }
        compilerv1Parser.RelationalExprContext relationalCtx = shiftCtx.relationalExpr(0);
        if (relationalCtx.addExpr().size() != 1) {
            return null;
        }
        compilerv1Parser.AddExprContext addCtx = relationalCtx.addExpr(0);
        if (addCtx.multExpr().size() != 1) {
            return null;
        }
        compilerv1Parser.MultExprContext multCtx = addCtx.multExpr(0);
        if (multCtx.primary().size() != 1) {
            return null;
        }
        compilerv1Parser.PrimaryContext primaryCtx = multCtx.primary(0);
        if (primaryCtx.expression() != null) {
            return resolveSinglePrimary(primaryCtx.expression());
        }
        return primaryCtx;
    }

    private String inferExpressionType(compilerv1Parser.ExpressionContext ctx) {
        compilerv1Parser.PrimaryContext primaryCtx = resolveSinglePrimary(ctx);
        if (primaryCtx == null) {
            return null;
        }
        if (primaryCtx.castExpr() != null) {
            return renderCastType(primaryCtx.castExpr().castType());
        }
        if (primaryCtx.placementNewExpr() != null) {
            ApolloType constructedType = typeFromContext(primaryCtx.placementNewExpr().typeRef());
            return renderType(withAdditionalPointerDepth(constructedType, 1));
        }
        if (primaryCtx.instanceValue() != null) {
            return mapDeclaredType(primaryCtx.instanceValue().ID().getText());
        }
        if (primaryCtx.ID() != null) {
            String variableName = primaryCtx.ID().getText();
            String instanceType = instanceTypes.get(variableName);
            if (instanceType != null) {
                return instanceType;
            }
            ApolloType resolvedType = resolveVariableType(variableName);
            if (resolvedType != null) {
                return renderType(resolvedType);
            }
        }
        return null;
    }

    private ApolloType inferPrimaryApolloType(compilerv1Parser.PrimaryContext primaryCtx) {
        if (primaryCtx == null) {
            return null;
        }
        if (primaryCtx.SUCCESS() != null) {
            return new ApolloType("isc", List.of());
        }
        if (primaryCtx.stdinExpr() != null) {
            return new ApolloType("str", List.of());
        }
        if (primaryCtx.castExpr() != null) {
            return typeFromContext(primaryCtx.castExpr().castType().typeRef());
        }
        if (primaryCtx.placementNewExpr() != null) {
            ApolloType constructedType = typeFromContext(primaryCtx.placementNewExpr().typeRef());
            return withAdditionalPointerDepth(constructedType, 1);
        }
        if (primaryCtx.functionCall() != null) {
            return inferFunctionCallApolloType(primaryCtx.functionCall());
        }
        if (primaryCtx.memberaccess() != null) {
            return inferMemberAccessApolloType(primaryCtx.memberaccess());
        }
        if (primaryCtx.instanceValue() != null) {
            return new ApolloType(primaryCtx.instanceValue().ID().getText(), List.of());
        }
        if (primaryCtx.ID() != null) {
            return resolveVariableType(primaryCtx.ID().getText());
        }
        if (primaryCtx.INT() != null) {
            return new ApolloType("i32", List.of());
        }
        if (primaryCtx.STRING() != null || primaryCtx.templateString() != null) {
            return new ApolloType("str", List.of());
        }
        if (primaryCtx.expression() != null) {
            return inferExpressionApolloType(primaryCtx.expression());
        }
        return null;
    }

    private ApolloType inferMultExprApolloType(compilerv1Parser.MultExprContext ctx) {
        if (ctx == null) {
            return null;
        }
        List<ApolloType> operandTypes = new ArrayList<>();
        for (compilerv1Parser.PrimaryContext primary : ctx.primary()) {
            operandTypes.add(inferPrimaryApolloType(primary));
        }
        ApolloType concreteType = firstConcreteType(operandTypes);
        return concreteType != null ? concreteType : (operandTypes.isEmpty() ? null : operandTypes.get(0));
    }

    private ApolloType inferAddExprApolloType(compilerv1Parser.AddExprContext ctx) {
        if (ctx == null) {
            return null;
        }
        List<ApolloType> operandTypes = new ArrayList<>();
        for (compilerv1Parser.MultExprContext expression : ctx.multExpr()) {
            operandTypes.add(inferMultExprApolloType(expression));
        }
        ApolloType concreteType = firstConcreteType(operandTypes);
        return concreteType != null ? concreteType : (operandTypes.isEmpty() ? null : operandTypes.get(0));
    }

    private ApolloType inferRelationalExprApolloType(compilerv1Parser.RelationalExprContext ctx) {
        if (ctx == null) {
            return null;
        }
        if (ctx.addExpr().size() > 1) {
            return new ApolloType("i32", List.of());
        }
        return inferAddExprApolloType(ctx.addExpr(0));
    }

    private ApolloType inferShiftExprApolloType(compilerv1Parser.ShiftExprContext ctx) {
        if (ctx == null) {
            return null;
        }
        List<ApolloType> operandTypes = new ArrayList<>();
        for (compilerv1Parser.RelationalExprContext expression : ctx.relationalExpr()) {
            operandTypes.add(inferRelationalExprApolloType(expression));
        }
        ApolloType concreteType = firstConcreteType(operandTypes);
        return concreteType != null ? concreteType : (operandTypes.isEmpty() ? null : operandTypes.get(0));
    }

    private ApolloType inferEqualityExprApolloType(compilerv1Parser.EqualityExprContext ctx) {
        if (ctx == null) {
            return null;
        }
        if (ctx.shiftExpr().size() > 1) {
            return new ApolloType("i32", List.of());
        }
        return inferShiftExprApolloType(ctx.shiftExpr(0));
    }

    private ApolloType inferBitwiseAndExprApolloType(compilerv1Parser.BitwiseAndExprContext ctx) {
        if (ctx == null) {
            return null;
        }
        List<ApolloType> operandTypes = new ArrayList<>();
        for (compilerv1Parser.EqualityExprContext expression : ctx.equalityExpr()) {
            operandTypes.add(inferEqualityExprApolloType(expression));
        }
        ApolloType concreteType = firstConcreteType(operandTypes);
        return concreteType != null ? concreteType : (operandTypes.isEmpty() ? null : operandTypes.get(0));
    }

    private ApolloType inferBitwiseXorExprApolloType(compilerv1Parser.BitwiseXorExprContext ctx) {
        if (ctx == null) {
            return null;
        }
        List<ApolloType> operandTypes = new ArrayList<>();
        for (compilerv1Parser.BitwiseAndExprContext expression : ctx.bitwiseAndExpr()) {
            operandTypes.add(inferBitwiseAndExprApolloType(expression));
        }
        ApolloType concreteType = firstConcreteType(operandTypes);
        return concreteType != null ? concreteType : (operandTypes.isEmpty() ? null : operandTypes.get(0));
    }

    private ApolloType inferBitwiseOrExprApolloType(compilerv1Parser.BitwiseOrExprContext ctx) {
        if (ctx == null) {
            return null;
        }
        List<ApolloType> operandTypes = new ArrayList<>();
        for (compilerv1Parser.BitwiseXorExprContext expression : ctx.bitwiseXorExpr()) {
            operandTypes.add(inferBitwiseXorExprApolloType(expression));
        }
        ApolloType concreteType = firstConcreteType(operandTypes);
        return concreteType != null ? concreteType : (operandTypes.isEmpty() ? null : operandTypes.get(0));
    }

    private ApolloType inferExpressionApolloType(compilerv1Parser.ExpressionContext ctx) {
        if (ctx == null) {
            return null;
        }
        if (ctx.getChildCount() > 1 && ctx.expression().size() == 2) {
            ApolloType truthyType = inferExpressionApolloType(ctx.expression(0));
            ApolloType falsyType = inferExpressionApolloType(ctx.expression(1));
            return truthyType != null ? truthyType : falsyType;
        }
        if (ctx.orExpr() == null || ctx.orExpr().andExpr().isEmpty()) {
            return null;
        }
        if (ctx.orExpr().andExpr().size() > 1) {
            return new ApolloType("i32", List.of());
        }
        compilerv1Parser.AndExprContext andCtx = ctx.orExpr().andExpr(0);
        if (andCtx.bitwiseOrExpr().size() > 1) {
            return new ApolloType("i32", List.of());
        }
        return inferBitwiseOrExprApolloType(andCtx.bitwiseOrExpr(0));
    }

    private String renderMemberAccess(compilerv1Parser.MemberaccessContext ctx) {
        String objectName = ctx.accessBase().getText();
        String instanceType = instanceTypes.get(objectName);
        String instanceMode = instanceModes.get(objectName);
        String target = "indef".equals(objectName) ? "this" : resolveVariableReference(objectName);
        String operator = ".";
        if ("indef".equals(objectName)) {
            operator = "->";
        } else if (declaredTypes.contains(objectName) && !isNameDeclared(objectName)) {
            target = mapDeclaredType(objectName);
            operator = "::";
        } else if (instanceType != null && "crt".equals(instanceMode)) {
            target = "std::any_cast<" + instanceType + "&>(" + objectName + ")";
        } else {
            ApolloType resolvedType = resolveVariableType(objectName);
            if (resolvedType != null && resolvedType.managed) {
                operator = "->";
            } else if (resolvedType != null && resolvedType.pointerDepth > 0 && !resolvedType.reference) {
                operator = "->";
            }
        }
        if (ctx.functionCall() != null) {
            return target + operator + renderFunctionCall(ctx.functionCall());
        }
        return target + operator + ctx.ID().getText();
    }

    private String renderInstanceValue(compilerv1Parser.InstanceValueContext ctx) {
        StringBuilder builder = new StringBuilder();
        String sourceTypeName = ctx.ID().getText();
        builder.append(mapDeclaredType(sourceTypeName)).append("{");
        if (ctx.args() != null) {
            List<compilerv1Parser.ExpressionContext> expressions = ctx.args().expression();
            for (int i = 0; i < expressions.size(); i++) {
                if (i > 0) {
                    builder.append(", ");
                }
                builder.append(renderExpression(expressions.get(i)));
            }
        }
        builder.append("}");
        if (ctx.allocatorUseSuffix() != null) {
            if (!isMemstructTypeName(sourceTypeName)) {
                throw error(ctx, ".uses(...) is only valid on memstruct values");
            }
            builder.insert(0, "__apo_memstruct_runtime::instance().materialize<" + mapDeclaredType(sourceTypeName) + ">(");
            builder.append(", ")
                    .append(renderExpression(ctx.allocatorUseSuffix().expression()))
                    .append(", \"")
                    .append(escapeCppString(sourceTypeName))
                    .append("\", \"")
                    .append(escapeCppString(ctx.allocatorUseSuffix().expression().getText()))
                    .append("\")");
        }
        return builder.toString();
    }

    private String renderInstancePush(compilerv1Parser.InstancepushContext ctx) {
        String targetName = ctx.ID().getText();
        String instanceMode = instanceModes.get(targetName);
        if (instanceMode == null) {
            throw error(ctx, "instance must be declared before push");
        }
        String value = renderInstanceValue(ctx.instanceValue());
        String instanceType = mapDeclaredType(ctx.instanceValue().ID().getText());
        if ("crt".equals(instanceMode)) {
            instanceTypes.put(targetName, instanceType);
        } else if ("staticx".equals(instanceMode)) {
            String declaredType = instanceTypes.get(targetName);
            if (declaredType == null) {
                throw stateError(ctx, "staticx instance type is missing for `" + targetName + "`");
            }
            if (!declaredType.equals(instanceType)) {
                throw error(ctx, "cannot push `" + instanceType + "` into staticx instance `" + targetName + "` of type `" + declaredType + "`");
            }
        } else {
            throw error(ctx, "unsupported instance mode for push: `" + instanceMode + "`");
        }
        return targetName + " = " + value + ";";
    }

    private String renderCastType(compilerv1Parser.CastTypeContext ctx) {
        return renderType(ctx.typeRef());
    }

    private String renderPlacementNew(compilerv1Parser.PlacementNewExprContext ctx) {
        return "new (" + renderExpression(ctx.expression()) + ") " + renderType(ctx.typeRef());
    }

    private boolean isPlacementConstructionPrimary(compilerv1Parser.PrimaryContext ctx) {
        if (ctx == null) {
            return false;
        }
        if (ctx.placementNewExpr() != null) {
            return true;
        }
        if (ctx.castExpr() != null) {
            return isPlacementConstructionPrimary(ctx.castExpr().primary());
        }
        if (ctx.expression() != null) {
            compilerv1Parser.PrimaryContext nested = resolveSinglePrimary(ctx.expression());
            return isPlacementConstructionPrimary(nested);
        }
        return false;
    }

    private boolean isPlacementConstructionExpression(compilerv1Parser.ExpressionContext ctx) {
        return isPlacementConstructionPrimary(resolveSinglePrimary(ctx));
    }

    private String renderMalloc(compilerv1Parser.MallocContext ctx) {
        String name = ctx.ID().getText();
        bindDeclaredName(name);
        if (ctx.expression() != null) {
            String elementType = renderType(ctx.typeRef());
            if (totalProgramGcEnabled()) {
                return "void* " + name + " = GC_MALLOC((" + renderExpression(ctx.expression()) + ") * sizeof(" + elementType + "));";
            }
            return "void* " + name + " = malloc((" + renderExpression(ctx.expression()) + ") * sizeof(" + elementType + "));";
        }
        String elementType = renderType(ctx.typeRef());
        if (totalProgramGcEnabled()) {
            return "void* " + name + " = GC_MALLOC(sizeof(" + elementType + "));";
        }
        return "void* " + name + " = malloc(sizeof(" + elementType + "));";
    }

    private String renderMntDecl(compilerv1Parser.MntDeclContext ctx) {
        String name = ctx.ID().getText();
        ApolloType declaredType = typeFromContext(ctx.typeRef());
        bindVariableType(name, withAdditionalPointerDepth(declaredType, 1));
        newAllocatedNames.add(name);
        if (totalProgramGcEnabled()) {
            return renderType(ctx.typeRef()) + "* " + name + " = new (GC_MALLOC(sizeof(" + renderType(ctx.typeRef()) + "))) "
                    + renderType(ctx.typeRef()) + "(" + renderExpression(ctx.expression(), declaredType) + ");";
        }
        return renderType(ctx.typeRef()) + "* " + name + " = new " + renderType(ctx.typeRef()) + "(" + renderExpression(ctx.expression(), declaredType) + ");";
    }

    private String renderFree(compilerv1Parser.FreeContext ctx) {
        String name = ctx.ID().getText();
        if (totalProgramGcEnabled()) {
            newAllocatedNames.remove(name);
            return "(void)" + name + ";";
        }
        if (newAllocatedNames.remove(name)) {
            return "delete " + name + ";";
        }
        return "free(" + name + ");";
    }

    private String renderPointerStatement(compilerv1Parser.PointerContext ctx) {
        String type = renderType(ctx.typeRef());
        String name = ctx.ID(0).getText();
        String inheritor = ctx.ID(1).getText();
        bindVariableType(name, typeFromContext(ctx.typeRef()));
        if ("nullptr".equals(inheritor)) {
            return type + " " + name + " = nullptr;";
        }
        return type + " " + name + " = &" + inheritor + ";";
    }

    private String renderAssignmentCore(compilerv1Parser.AssignmentCoreContext ctx, org.antlr.v4.runtime.ParserRuleContext errorCtx) {
        String targetName = ctx.assignTarget().ID().getText();
        if (isImmutableName(targetName)) {
            throw error(errorCtx, "cannot assign to immutable binding `" + targetName + "`");
        }
        AssignTargetInfo targetInfo = renderAssignTarget(ctx.assignTarget());
        ApolloType expectedType = isLtoType(targetInfo.valueType) ? null : targetInfo.valueType;
        String value = renderExpression(ctx.expression(), expectedType);
        if (targetInfo.appendReceiverType != null) {
            String receiver = targetInfo.renderedTarget.substring(0, targetInfo.renderedTarget.length() - ".__apollo_append__".length());
            return receiver + ".push_back(" + value + ");";
        }
        ApolloType targetType = resolveVariableType(targetName);
        if (isLtoType(targetType) && (ctx.assignTarget().accessKey() == null || ctx.assignTarget().accessKey().isEmpty())) {
            bindVariableType(targetName, ltoType(inferExpressionApolloType(ctx.expression())), false);
        }
        String instanceMode = instanceModes.get(targetName);
        if (instanceMode != null && (ctx.assignTarget().accessKey() == null || ctx.assignTarget().accessKey().isEmpty())) {
            String assignedType = inferExpressionType(ctx.expression());
            if ("crt".equals(instanceMode)) {
                if (assignedType != null) {
                    instanceTypes.put(targetName, assignedType);
                } else {
                    instanceTypes.remove(targetName);
                }
            } else if ("staticx".equals(instanceMode)) {
                String declaredType = instanceTypes.get(targetName);
                if (declaredType == null) {
                    throw stateError(errorCtx, "staticx instance type is missing for `" + targetName + "`");
                }
                if (assignedType != null && !declaredType.equals(assignedType)) {
                    throw error(errorCtx, "cannot assign `" + assignedType + "` to staticx instance `" + targetName + "` of type `" + declaredType + "`");
                }
            }
        }
        if (targetType != null && "isc".equals(targetType.name)
                && (ctx.assignTarget().accessKey() == null || ctx.assignTarget().accessKey().isEmpty())) {
            setLastIscResultName(targetName);
        } else {
            setLastIscResultName(null);
        }
        return targetInfo.renderedTarget + " = " + value + ";";
    }

    private String renderAssignmentStatement(compilerv1Parser.AssignmentContext ctx) {
        return renderAssignmentCore(ctx.assignmentCore(), ctx);
    }

    private String renderInitCore(compilerv1Parser.InitCoreContext ctx, org.antlr.v4.runtime.ParserRuleContext errorCtx, boolean allowManagedTracking) {
        String name = ctx.ID().getText();
        boolean isConst = isImmutableQualifier(ctx);
        ApolloType declaredType = typeFromContext(ctx.typeRef());
        String managedOwnerName = currentManagedOwnerName(declaredType);
        if (isConst && ctx.expression() == null && !canDefaultInitializeDeclaredType(declaredType)) {
            throw error(errorCtx, "immutable declarations require an initializer; use `nconst` for delayed initialization");
        }
        if (!isConst && ctx.expression() != null && isPlacementConstructionExpression(ctx.expression()) && (isPlacementReusable(name) || isNameDeclared(name))) {
            clearPlacementReusable(name);
            return name + " = " + renderExpression(ctx.expression(), declaredType) + ";";
        }
        String initializer = ctx.expression() != null
            ? " = " + renderExpression(ctx.expression(), declaredType)
            : (canDefaultInitializeDeclaredType(declaredType) ? "{}" : "");
        String declarationPrefix = emitConstQualifier(name, isConst) ? "const " : "";
        clearPlacementReusable(name);
        ApolloType boundType = declaredType;
        String statement;
        if (!allowManagedTracking && managedOwnerName != null) {
            throw error(errorCtx, "owner-managed declarations are not supported in `for` initializers");
        }
        if (allowManagedTracking && managedOwnerName != null) {
            boundType = markManaged(declaredType);
            String initialValue = ctx.expression() != null ? renderExpression(ctx.expression(), declaredType) : renderManagedPayloadType(declaredType) + "{}";
            statement = renderManagedHandleType(declaredType) + " " + name + " = " + managedOwnerName + ".make<"
                    + renderManagedPayloadType(declaredType) + ">(" + initialValue + ");";
        } else {
            statement = declarationPrefix + renderType(ctx.typeRef()) + " " + name + initializer + ";";
        }
        bindVariableType(name, boundType, isConst);
        if (canDefaultInitializeDeclaredType(declaredType) && typedefOpstructCommands.containsKey(declaredType.name)) {
            bindTypedefOpstructInstance(name, declaredType.name);
        }
        trackIscBinding(name, boundType);
        if (allowManagedTracking && boundType.managed) {
            statement += "\n" + renderAutofmtTrackStatement(name);
        }
        return statement;
    }

    private String renderInitStatement(compilerv1Parser.InitContext ctx) {
        return renderInitCore(ctx.initCore(), ctx, true);
    }

    private String renderLtoInitStatement(compilerv1Parser.LtoInitContext ctx) {
        String name = ctx.ID().getText();
        boolean isConst = ctx.NCONST() == null;
        ApolloType payloadType = inferExpressionApolloType(ctx.expression());
        bindVariableType(name, ltoType(payloadType), isConst);
        setLastIscResultName(null);
        clearPlacementReusable(name);
        return (emitConstQualifier(name, isConst) ? "const " : "") + "std::any " + name + " = " + renderExpression(ctx.expression()) + ";";
    }

    private String renderLtoTypesetCastValue(String sourceExpression, ApolloType sourceType, ApolloType targetType) {
        if (sourceExpression == null) {
            return "std::any{}";
        }
        if (targetType == null) {
            return sourceExpression;
        }
        if ("str".equals(targetType.name) && targetType.pointerDepth == 0 && !targetType.reference) {
            return "__apo_to_string(" + sourceExpression + ")";
        }
        return renderType(targetType) + "(" + sourceExpression + ")";
    }

    private String renderLtoTypesetStatement(compilerv1Parser.LtoTypesetStmtContext ctx) {
        String name = ctx.ID().getText();
        ApolloType currentType = resolveVariableType(name);
        if (!isLtoType(currentType)) {
            throw error(ctx, "`typeset` requires an `lto` binding");
        }
        if (isImmutableName(name)) {
            throw error(ctx, "cannot assign to immutable binding `" + name + "`");
        }

        ApolloType targetType = typeFromContext(ctx.typeRef());
        ApolloType sourceType = ltoPayloadType(currentType);
        boolean castExistingValue = ctx.getText().contains(".cast()");
        String value = "std::any{}";
        if (castExistingValue) {
            if (sourceType == null) {
                throw error(ctx, "cannot cast `lto` binding `" + name + "` because its current payload type is unknown");
            }
            value = renderLtoTypesetCastValue(renderLtoCast(resolveVariableReference(name), sourceType), sourceType, targetType);
        }

        bindVariableType(name, ltoType(targetType), false);
        setLastIscResultName(null);
        return name + " = " + value + ";";
    }

    private String renderEasyInitStatement(compilerv1Parser.EasyInitContext ctx) {
        String name = ctx.ID().getText();
        boolean isConst = ctx.NCONST() == null;
        ApolloType inferredType = inferExpressionApolloType(ctx.expression());
        ApolloType boundType = inferredType;
        String statement;
        String managedOwnerName = currentManagedOwnerName(inferredType);
        if (managedOwnerName != null) {
            boundType = markManaged(inferredType);
            statement = renderManagedHandleType(inferredType) + " " + name + " = " + managedOwnerName + ".make<"
                    + renderManagedPayloadType(inferredType) + ">(" + renderExpression(ctx.expression(), inferredType) + ");";
        } else {
            statement = (emitConstQualifier(name, isConst) ? "const " : "") + "auto " + name + " = " + renderExpression(ctx.expression(), inferredType) + ";";
        }
        bindVariableType(name, boundType, isConst);
        trackIscBinding(name, inferredType);
        clearPlacementReusable(name);
        if (boundType.managed) {
            statement += "\n" + renderAutofmtTrackStatement(name);
        }
        return statement;
    }

    private ApolloType buildSrcFunctionType(compilerv1Parser.SrcDeclContext ctx) {
        List<ApolloType> arguments = new ArrayList<>();
        arguments.add(ctx.returnType() != null ? typeFromReturnContext(ctx.returnType()) : new ApolloType("auto", List.of()));
        if (ctx.params() != null) {
            for (compilerv1Parser.ParamContext param : ctx.params().param()) {
                ApolloType parameterType = param.typeRef() != null ? typeFromContext(param.typeRef()) : new ApolloType("auto", List.of());
                arguments.add(parameterType);
            }
        }
        return new ApolloType("fn", arguments);
    }

    private String renderForInitClause(compilerv1Parser.ForInitContext ctx) {
        if (ctx == null) {
            return "";
        }
        if (ctx.initCore() != null) {
            String rendered = renderInitCore(ctx.initCore(), ctx, false);
            return rendered.endsWith(";") ? rendered.substring(0, rendered.length() - 1) : rendered;
        }
        if (ctx.assignmentCore() != null) {
            String rendered = renderAssignmentCore(ctx.assignmentCore(), ctx);
            return rendered.endsWith(";") ? rendered.substring(0, rendered.length() - 1) : rendered;
        }
        return renderExpression(ctx.expression());
    }

    private String renderForUpdateClause(compilerv1Parser.ForUpdateContext ctx) {
        if (ctx == null) {
            return "";
        }
        if (ctx.assignmentCore() != null) {
            String rendered = renderAssignmentCore(ctx.assignmentCore(), ctx);
            return rendered.endsWith(";") ? rendered.substring(0, rendered.length() - 1) : rendered;
        }
        return renderExpression(ctx.expression());
    }

    private String renderForInLoopVariable(compilerv1Parser.ForInStatementContext ctx) {
        boolean isConst = ctx.NCONST() == null;
        return (isConst ? "const " : "") + renderType(ctx.typeRef()) + " " + ctx.ID().getText();
    }

    private void writeSwitchStatement(compilerv1Parser.SwitchStatementContext ctx) {
        String switchValueName = "__apo_switch_value_" + switchCounter++;
        writeLine("{");
        indentLevel++;
        pushTypeScope();
        try {
            writeLine("auto " + switchValueName + " = " + renderExpression(ctx.expression()) + ";");
            boolean wroteCondition = false;
            for (compilerv1Parser.SwitchCaseContext switchCase : ctx.switchCase()) {
                write(indent() + (wroteCondition ? "else if (" : "if (") + switchValueName + " == " + renderExpression(switchCase.expression()) + ") ");
                writeBlock(switchCase.block());
                wroteCondition = true;
            }
            if (ctx.switchDefault() != null) {
                write(indent() + (wroteCondition ? "else " : ""));
                writeBlock(ctx.switchDefault().block());
            }
        } finally {
            popTypeScope();
            indentLevel--;
        }
        writeLine("}");
    }

    private String renderInstanceStatement(compilerv1Parser.InstanceContext ctx) {
        String instanceMode;
        if (ctx.INS() != null) {
            instanceMode = "crt";
        } else if (ctx.STAT() != null) {
            instanceMode = "staticx";
        } else {
            instanceMode = ctx.INSTANCE_MODE().getText();
        }
        String name = ctx.ID().getText();
        bindDeclaredName(name);
        instanceModes.put(name, instanceMode);
        if ("crt".equals(instanceMode)) {
            includes.add("any");
            if (ctx.instanceValue() != null) {
                String instanceType = mapDeclaredType(ctx.instanceValue().ID().getText());
                instanceTypes.put(name, instanceType);
                return "std::any " + name + " = " + renderInstanceValue(ctx.instanceValue()) + ";";
            }
            instanceTypes.remove(name);
            return "std::any " + name + ";";
        }
        if (!"staticx".equals(instanceMode)) {
            throw error(ctx, "unsupported instance declaration");
        }
        if (ctx.instanceValue() == null) {
            throw error(ctx, "staticx instances require an initializer");
        }
        String rawType = ctx.instanceValue().ID().getText();
        String mappedType = mapDeclaredType(rawType);
        instanceTypes.put(name, mappedType);
        ApolloType declaredType = new ApolloType(rawType, List.of());
        String managedOwnerName = currentManagedOwnerName(declaredType);
        String statement;
        if (managedOwnerName != null) {
            declaredType = markManaged(declaredType);
            statement = renderManagedHandleType(declaredType) + " " + name + " = " + managedOwnerName + ".make<"
                    + mappedType + ">(" + renderInstanceValue(ctx.instanceValue()) + ");";
        } else {
            statement = mappedType + " " + name + " = " + renderInstanceValue(ctx.instanceValue()) + ";";
        }
        bindVariableType(name, declaredType);
        if (declaredType.managed) {
            statement += "\n" + renderAutofmtTrackStatement(name);
        }
        return statement;
    }

    private String renderPrintStatement(compilerv1Parser.PrintContext ctx) {
        String renderedExpression = renderExpression(ctx.expression());
        String printKind = ctx.getChild(2).getText();
        if ("println".equals(printKind)) {
            return "std::cout<<" + renderedExpression + "<<std::endl;";
        }
        return "std::cout<<" + renderedExpression + ";";
    }

    private String renderStdinStatement(compilerv1Parser.StdinContext ctx) {
        String name = ctx.ID().getText();
        if (isImmutableName(name)) {
            throw error(ctx, "cannot read into immutable binding `" + name + "`");
        }
        return "std::cin>>" + name + ";";
    }

    private String renderTopLevelLambdaBody(compilerv1Parser.BlockContext ctx) {
        String scopedBlock = renderTopLevelScopedBlock(ctx);
        String prefix = "([&]() {\n";
        String suffix = "})();";
        if (!scopedBlock.startsWith(prefix) || !scopedBlock.endsWith(suffix)) {
            throw new IllegalStateException("unexpected scoped block rendering shape");
        }
        return scopedBlock.substring(prefix.length(), scopedBlock.length() - suffix.length());
    }

    private String renderSchedulerStartStatement(compilerv1Parser.SchedulerStartStmtContext ctx) {
        String scheduleName = ctx.ID(0).getText();
        String instanceName = ctx.ID(1).getText();
        if (!schedules.containsKey(scheduleName)) {
            throw error(ctx, "unknown schedule `" + scheduleName + "`");
        }
        boolean alreadyDeclared = isNameDeclared(instanceName);
        bindScheduleInstance(instanceName, scheduleName);
        bindVariableType(instanceName, new ApolloType("__apo_schedule_instance", List.of()));

        StringBuilder builder = new StringBuilder();
        if (alreadyDeclared) {
            builder.append(instanceName).append(" = ");
        } else {
            builder.append("__apo_schedule_instance ").append(instanceName).append(" = ");
        }
        builder.append("__apo_scheduler_eevf_runtime::instance().create_schedule_instance(\"")
                .append(escapeCppString(scheduleName))
                .append("\", \"")
                .append(escapeCppString(instanceName))
                .append("\");\n");
        String mode = ctx.schedulerStartMode().getText();
        boolean join = "join".equals(mode);
        builder.append("__apo_scheduler_eevf_runtime::instance().start_schedule(")
                .append(instanceName)
                .append(", ")
                .append(join ? "true" : "false")
                .append(");");
        return builder.toString();
    }

    private String renderSchedulerInsertStatement(compilerv1Parser.SchedulerInsertStmtContext ctx) {
        String instanceName = ctx.ID(0).getText();
        String taskName = ctx.ID(1).getText();
        String scheduleName = resolveScheduleName(instanceName);
        if (scheduleName != null) {
            ScheduleInfo schedule = schedules.get(scheduleName);
            if (schedule != null) {
                boolean knownTask = false;
                for (ScheduleTaskInfo task : schedule.mandatoryTasks) {
                    if (task.name.equals(taskName)) {
                        knownTask = true;
                        break;
                    }
                }
                if (!knownTask) {
                    throw error(ctx, "unknown schedule task `" + taskName + "` for `" + scheduleName + "`");
                }
            }
        }
        return "__apo_scheduler_eevf_runtime::instance().enqueue_schedule_task("
                + instanceName
                + ", \""
                + escapeCppString(taskName)
                + "\", static_cast<std::int32_t>("
                + renderExpression(ctx.expression())
                + "), [&]() {\n"
                + renderTopLevelLambdaBody(ctx.block())
                + "});";
    }

    private String renderSchedulerVoidStatement(compilerv1Parser.SchedulerVoidStmtContext ctx) {
        return "__apo_scheduler_eevf_runtime::instance().schvoid(" + ctx.ID().getText() + ");";
    }

    private String renderScheduleRegistration(ScheduleInfo schedule) {
        if (schedule == null) {
            return "";
        }
        StringBuilder builder = new StringBuilder();
        builder.append("__apo_scheduler_eevf_runtime::instance().register_schedule(\"")
                .append(escapeCppString(schedule.name))
                .append("\", {");
        for (int index = 0; index < schedule.mandatoryTasks.size(); index++) {
            if (index > 0) {
                builder.append(", ");
            }
            ScheduleTaskInfo task = schedule.mandatoryTasks.get(index);
            builder.append("{\"")
                    .append(escapeCppString(task.name))
                    .append("\", ")
                    .append(scheduleTaskHelperName(schedule, task))
                    .append(", true}");
        }
        builder.append("});");
        return builder.toString();
    }

            private String scheduleTaskHelperName(ScheduleInfo schedule, ScheduleTaskInfo task) {
            return "__apo_schedule_"
                + moduleSymbol
                + "_"
                + sanitizeModuleSymbol(schedule.name)
                + "_"
                + sanitizeModuleSymbol(task.name);
            }

    private void writeRenderedStatement(String rendered) {
        if (rendered == null || rendered.isEmpty()) {
            return;
        }
        for (String line : rendered.split("\\n", -1)) {
            if (line.isEmpty()) {
                write("\n");
            } else {
                writeLine(line);
            }
        }
    }

    private void emitScheduleTaskForwardDeclarations() {
        boolean wroteDeclaration = false;
        for (ScheduleInfo schedule : schedules.values()) {
            for (ScheduleTaskInfo task : schedule.mandatoryTasks) {
                writeLine("static void " + scheduleTaskHelperName(schedule, task) + "();");
                wroteDeclaration = true;
            }
        }
        if (wroteDeclaration) {
            write("\n");
        }
    }

    private void emitScheduleTaskDefinitions() {
        boolean wroteDefinition = false;
        for (ScheduleInfo schedule : schedules.values()) {
            for (ScheduleTaskInfo task : schedule.mandatoryTasks) {
                writeLine("static void " + scheduleTaskHelperName(schedule, task) + "() {");
                indentLevel++;
                String body = renderTopLevelLambdaBody(task.block);
                for (String line : body.split("\\n", -1)) {
                    if (line.isEmpty()) {
                        write("\n");
                    } else {
                        writeLine(line);
                    }
                }
                indentLevel--;
                writeLine("}");
                write("\n");
                wroteDefinition = true;
            }
        }
        if (wroteDefinition) {
            write("\n");
        }
    }

    private void emitBlockContents(compilerv1Parser.BlockContext ctx) {
        pushTypeScope();
        try {
            for (org.antlr.v4.runtime.tree.ParseTree child : ctx.children) {
                if (child instanceof compilerv1Parser.StatementContext) {
                    visitStatement((compilerv1Parser.StatementContext) child);
                } else if (child instanceof compilerv1Parser.ReturnStmtContext) {
                    visitReturnStmt((compilerv1Parser.ReturnStmtContext) child);
                }
            }
        } finally {
            popTypeScope();
        }
    }

    private void emitSchedulerInsertStatement(compilerv1Parser.SchedulerInsertStmtContext ctx) {
        String instanceName = ctx.ID(0).getText();
        String taskName = ctx.ID(1).getText();
        String scheduleName = resolveScheduleName(instanceName);
        if (scheduleName != null) {
            ScheduleInfo schedule = schedules.get(scheduleName);
            if (schedule != null) {
                boolean knownTask = false;
                for (ScheduleTaskInfo task : schedule.mandatoryTasks) {
                    if (task.name.equals(taskName)) {
                        knownTask = true;
                        break;
                    }
                }
                if (!knownTask) {
                    throw error(ctx, "unknown schedule task `" + taskName + "` for `" + scheduleName + "`");
                }
            }
        }
        writeLine("__apo_scheduler_eevf_runtime::instance().enqueue_schedule_task(" + instanceName
                + ", \"" + escapeCppString(taskName) + "\", static_cast<std::int32_t>("
                + renderExpression(ctx.expression()) + "), [&]() {");
        indentLevel++;
        emitBlockContents(ctx.block());
        indentLevel--;
        writeLine("});");
    }

    private String renderTopLevelScopedBlock(compilerv1Parser.BlockContext ctx) {
        List<String> lines = new ArrayList<>();
        pushTypeScope();
        try {
            for (org.antlr.v4.runtime.tree.ParseTree child : ctx.children) {
                if (child instanceof compilerv1Parser.StatementContext) {
                    String rendered = renderTopLevelStatement((compilerv1Parser.StatementContext) child);
                    if (rendered != null && !rendered.isEmpty()) {
                        lines.add(rendered);
                    }
                } else if (child instanceof compilerv1Parser.ReturnStmtContext) {
                    throw error((compilerv1Parser.ReturnStmtContext) child, "return is not supported inside top-level scoped blocks");
                }
            }
        } finally {
            popTypeScope();
        }

        StringBuilder builder = new StringBuilder();
        builder.append("([&]() {\n");
        for (String line : lines) {
            String indented = line.replace("\n", "\n    ");
            builder.append("    ").append(indented).append("\n");
        }
        builder.append("})();");
        return builder.toString();
    }

    private String renderTopLevelAutofmtScope(compilerv1Parser.BlockContext ctx) {
        List<String> lines = new ArrayList<>();
        String ownerName = nextAutofmtOwnerScopeName();
        pushTypeScope();
        autofmtOwnerScopes.push(ownerName);
        try {
            lines.add("__apo_autofmt_owner " + ownerName + ";");
            for (org.antlr.v4.runtime.tree.ParseTree child : ctx.children) {
                if (child instanceof compilerv1Parser.StatementContext) {
                    String rendered = renderTopLevelStatement((compilerv1Parser.StatementContext) child);
                    if (rendered != null && !rendered.isEmpty()) {
                        lines.add(rendered);
                    }
                } else if (child instanceof compilerv1Parser.ReturnStmtContext) {
                    throw error((compilerv1Parser.ReturnStmtContext) child, "return is not supported inside top-level `@autofmtdeclare` blocks");
                }
            }
        } finally {
            autofmtOwnerScopes.pop();
            popTypeScope();
        }

        StringBuilder builder = new StringBuilder();
        builder.append("([&]() {\n");
        for (String line : lines) {
            String indented = line.replace("\n", "\n    ");
            builder.append("    ").append(indented).append("\n");
        }
        builder.append("})();");
        return builder.toString();
    }

    private String renderTopLevelStatement(compilerv1Parser.StatementContext ctx) {
        if (ctx.pointer() != null) {
            return renderPointerStatement(ctx.pointer());
        }
        if (ctx.unsafeLineStmt() != null) {
            return renderTopLevelUnsafeLine(ctx.unsafeLineStmt());
        }
        if (ctx.malloc() != null) {
            return renderMalloc(ctx.malloc());
        }
        if (ctx.mntDecl() != null) {
            return renderMntDecl(ctx.mntDecl());
        }
        if (ctx.delalc() != null) {
            markPlacementReusable(ctx.delalc().ID().getText());
            return null;
        }
        if (ctx.free() != null) {
            return renderFree(ctx.free());
        }
        if (ctx.plcnew() != null) {
            return renderPlcnew(ctx.plcnew());
        }
        if (ctx.assignment() != null) {
            return renderAssignmentStatement(ctx.assignment());
        }
        if (ctx.easyInit() != null) {
            return renderEasyInitStatement(ctx.easyInit());
        }
        if (ctx.ltoInit() != null) {
            return renderLtoInitStatement(ctx.ltoInit());
        }
        if (ctx.ltoTypesetStmt() != null) {
            return renderLtoTypesetStatement(ctx.ltoTypesetStmt());
        }
        if (ctx.functionCall() != null) {
            return renderFunctionCall(ctx.functionCall()) + ";";
        }
        if (ctx.memberaccess() != null) {
            return renderMemberAccess(ctx.memberaccess()) + ";";
        }
        if (ctx.init() != null) {
            return renderInitStatement(ctx.init());
        }
        if (ctx.instance() != null) {
            return renderInstanceStatement(ctx.instance());
        }
        if (ctx.instancepush() != null) {
            return renderInstancePush(ctx.instancepush());
        }
        if (ctx.nativemode() != null) {
            return ctx.nativemode().OVERRIDE() != null ? renderImmediatePayload(ctx.nativemode()) : renderEnqueuePayload(ctx.nativemode());
        }
        if (ctx.asyncCall() != null) {
            return renderGoAsyncCall(ctx.asyncCall());
        }
        if (ctx.syscallStmt() != null) {
            return renderSyscallExecution(ctx.syscallStmt().ALL() != null);
        }
        if (ctx.print() != null) {
            return renderPrintStatement(ctx.print());
        }
        if (ctx.stdin() != null) {
            return renderStdinStatement(ctx.stdin());
        }
        if (ctx.typedefOpstructSession() != null) {
            return renderTypedefOpstructSession(ctx.typedefOpstructSession());
        }
        if (ctx.typedefOpstructCreateStmt() != null) {
            return renderTypedefOpstructCreateStatement(ctx.typedefOpstructCreateStmt());
        }
        if (ctx.typedefOpstructPhraseStmt() != null) {
            return renderTypedefOpstructPhraseStatement(ctx.typedefOpstructPhraseStmt());
        }
        if (ctx.schedulerStartStmt() != null) {
            return renderSchedulerStartStatement(ctx.schedulerStartStmt());
        }
        if (ctx.schedulerInsertStmt() != null) {
            return renderSchedulerInsertStatement(ctx.schedulerInsertStmt());
        }
        if (ctx.schedulerVoidStmt() != null) {
            return renderSchedulerVoidStatement(ctx.schedulerVoidStmt());
        }
        if (ctx.assertStmt() != null) {
            return renderAssertStatement(ctx.assertStmt());
        }
        if (ctx.forStatement() != null) {
            throw error(ctx.forStatement(), "`for` is not supported inside top-level `@unsafe` or `@bypass` blocks yet");
        }
        if (ctx.forInStatement() != null) {
            throw error(ctx.forInStatement(), "`for-in` is not supported inside top-level `@unsafe` or `@bypass` blocks yet");
        }
        if (ctx.switchStatement() != null) {
            throw error(ctx.switchStatement(), "`switch` is not supported inside top-level `@unsafe` or `@bypass` blocks yet");
        }
        if (ctx.tryCatchStatement() != null) {
            throw error(ctx.tryCatchStatement(), "`try/catch` is not supported inside top-level `@unsafe` or `@bypass` blocks yet");
        }
        if (ctx.srcDecl() != null) {
            throw error(ctx.srcDecl(), "`src` declarations are not supported inside top-level `@unsafe` or `@bypass` blocks yet");
        }
        if (ctx.unsafeBlock() != null) {
            return renderTopLevelScopedBlock(ctx.unsafeBlock().block());
        }
        if (ctx.bypassBlock() != null) {
            return renderTopLevelScopedBlock(ctx.bypassBlock().block());
        }
        if (ctx.autofmtdeclareScope() != null) {
            return renderTopLevelAutofmtScope(ctx.autofmtdeclareScope().block());
        }
        if (ctx.inductStmt() != null) {
            return renderInductStatement(ctx.inductStmt().ID().getText(), ctx.inductStmt());
        }
        if (ctx.releaseStmt() != null) {
            return renderReleaseStatement(ctx.releaseStmt().ID().getText(), ctx.releaseStmt());
        }
        if (ctx.block() != null) {
            return renderTopLevelScopedBlock(ctx.block());
        }
        throw error(ctx, "this statement is not supported inside top-level `@unsafe` or `@bypass` blocks yet");
    }

    private String renderPlcnew(compilerv1Parser.PlcnewContext ctx) {
        String declarationHint = ctx.plcnewType(0).getText();
        String name = ctx.ID().getText();
        String placementHint = ctx.plcnewType(1).getText();
        ApolloType constructedType = typeFromContext(ctx.typeRef());
        if (!"*".equals(placementHint) && ctx.plcnewType(1).typeRef() != null) {
            constructedType = typeFromContext(ctx.plcnewType(1).typeRef());
        }

        ApolloType declaredType = null;
        if (!"*".equals(declarationHint) && ctx.plcnewType(0).typeRef() != null) {
            declaredType = typeFromContext(ctx.plcnewType(0).typeRef());
        }
        if (declaredType == null) {
            ApolloType resolvedType = resolveVariableType(name);
            declaredType = resolvedType != null ? resolvedType : constructedType;
        }

        boolean shouldReassign = "*".equals(declarationHint) || isPlacementReusable(name) || isNameDeclared(name);
        String constructorExpression = renderType(constructedType) + "{}";

        clearPlacementReusable(name);
        if (shouldReassign && isNameDeclared(name)) {
            return name + " = " + constructorExpression + ";";
        }

        bindVariableType(name, declaredType);
        return renderType(declaredType) + " " + name + " = " + constructorExpression + ";";
    }

    private String renderType(compilerv1Parser.TypeRefContext ctx) {
        return renderType(typeFromContext(ctx));
    }

    private String renderTypeForFunction(compilerv1Parser.TypeRefContext ctx) {
        return renderTypeForFunction(typeFromContext(ctx));
    }

    private String renderReturnType(compilerv1Parser.ReturnTypeContext ctx) {
        if (ctx == null || "void".equals(ctx.getText())) {
            return "void";
        }
        ApolloType returnType = adaptWholeProgramManagedType(typeFromReturnContext(ctx));
        return returnType.managed ? renderManagedHandleType(returnType) : renderTypeForFunction(returnType);
    }

    private boolean isFunctionType(ApolloType type) {
        return type != null && "fn".equals(type.name);
    }

    private ApolloType lambdaInferredReturnType(ApolloType declaredType) {
        if (isFunctionType(declaredType) && !declaredType.arguments.isEmpty()) {
            return declaredType.arguments.get(0);
        }
        return null;
    }

    private void bindParameters(compilerv1Parser.ParamsContext params) {
        if (params == null) {
            return;
        }
        for (compilerv1Parser.ParamContext param : params.param()) {
            bindVariableType(param.ID().getText(), adaptWholeProgramManagedType(typeFromContext(param.typeRef())), isImmutableQualifier(param));
        }
    }

    private boolean shouldEmitRestrict(String functionName, int parameterIndex, compilerv1Parser.ParamContext param, ApolloType type) {
        if (param == null || isImmutableQualifier(param) || type == null) {
            return false;
        }
        if (type.managed || isFunctionType(type)) {
            return false;
        }
        if (type.pointerDepth > 0) {
            return true;
        }
        if (!type.reference) {
            return false;
        }
        if (functionName == null || functionName.isEmpty()) {
            return false;
        }
        runtime.CodegenOptimizationManifest.FunctionCodegenSummary summary = codegenOptimizations.functionSummary(functionName);
        return summary != null && summary.shouldEmitRestrict(parameterIndex);
    }

    private String renderParameterSignature(compilerv1Parser.ParamsContext params, String functionName) {
        if (params == null) {
            return "";
        }
        StringBuilder builder = new StringBuilder();
        List<compilerv1Parser.ParamContext> entries = params.param();
        for (int i = 0; i < entries.size(); i++) {
            compilerv1Parser.ParamContext param = entries.get(i);
            ApolloType parameterType = adaptWholeProgramManagedType(typeFromContext(param.typeRef()));
            String type = param.typeRef() != null
                    ? (parameterType.managed ? renderManagedHandleType(parameterType) : renderTypeForFunction(parameterType))
                    : "auto";
            if (i > 0) {
                builder.append(", ");
            }
            if (isImmutableQualifier(param)) {
                builder.append("const ");
            }
            builder.append(type).append(" ");
            if (shouldEmitRestrict(functionName, i, param, parameterType)) {
                builder.append("__restrict__ ");
            }
            builder.append(param.ID().getText());
        }
        return builder.toString();
    }

    private void writeSignature(compilerv1Parser.ReturnTypeContext returnType, String name, compilerv1Parser.ParamsContext params,
            boolean isStaticMethod, boolean isVirtualMethod, boolean isOverrideMethod) {
        StringBuilder prefix = new StringBuilder();
        if (isStaticMethod) {
            prefix.append("static ");
        }
        if (isVirtualMethod) {
            prefix.append("virtual ");
        }
        write(indent() + prefix + renderReturnType(returnType) + " " + name + "(" + renderParameterSignature(params, name) + ")");
        if (isOverrideMethod) {
            write(" override");
        }
        write(" ");
    }

    private void writeParameterList(compilerv1Parser.ParamsContext params) {
        write("(" + renderParameterSignature(params, null) + ") ");
    }

    private void writeBlock(compilerv1Parser.BlockContext ctx) {
        writeBlock(ctx, false);
    }

    private void writeBlock(compilerv1Parser.BlockContext ctx, boolean injectGcInit) {
        write("{\n");
        indentLevel++;
        pushTypeScope();
        if (injectGcInit) {
            writeLine("GC_INIT();");
        }
        for (org.antlr.v4.runtime.tree.ParseTree child : ctx.children) {
            if (child instanceof compilerv1Parser.StatementContext) {
                visitStatement((compilerv1Parser.StatementContext) child);
            } else if (child instanceof compilerv1Parser.ReturnStmtContext) {
                visitReturnStmt((compilerv1Parser.ReturnStmtContext) child);
            }
        }
        popTypeScope();
        indentLevel--;
        writeLine("}");
    }

    private void emitAccessLabel(String nextAccess, String[] currentAccess) {
        if (nextAccess != null && !nextAccess.equals(currentAccess[0])) {
            indentLevel--;
            writeLine(nextAccess + ":");
            indentLevel++;
            currentAccess[0] = nextAccess;
        }
    }

    private int methodStartIndex(compilerv1Parser.MethodContext ctx) {
        int methodStartIndex = ctx.ANNOT_OVERRIDE() != null ? 1 : 0;
        if (ctx.CLSTYPE() != null) {
            methodStartIndex++;
        }
        if (ctx.STATIC() != null) {
            methodStartIndex++;
        }
        if (ctx.VIRTUAL() != null) {
            methodStartIndex++;
        }
        return methodStartIndex;
    }

    private void validateMethodModifiers(compilerv1Parser.MethodContext ctx) {
        if (ctx.STATIC() != null && ctx.VIRTUAL() != null) {
            throw error(ctx, "methods cannot be both static and virtual");
        }
        if (ctx.STATIC() != null && ctx.ANNOT_OVERRIDE() != null) {
            throw error(ctx, "methods cannot be both static and override");
        }
        if (ctx.ANNOT_OVERRIDE() != null && ctx.VIRTUAL() != null) {
            throw error(ctx, "override methods should use @Override instead of virtual");
        }
    }

    private String renderInheritanceClause(compilerv1Parser.InheritanceClauseContext ctx) {
        if (ctx == null || ctx.inheritedType() == null || ctx.inheritedType().isEmpty()) {
            return "";
        }
        StringBuilder builder = new StringBuilder(" : ");
        List<compilerv1Parser.InheritedTypeContext> baseTypes = ctx.inheritedType();
        for (int index = 0; index < baseTypes.size(); index++) {
            if (index > 0) {
                builder.append(", ");
            }
            String access = baseTypes.get(index).CLSTYPE() != null ? baseTypes.get(index).CLSTYPE().getText() : "public";
            builder.append(access).append(" ").append(renderType(baseTypes.get(index).typeRef()));
        }
        return builder.toString();
    }

    private boolean isLifecycleMethod(compilerv1Parser.MethodContext ctx) {
        String methodKind = ctx.getChild(methodStartIndex(ctx)).getText();
        return "__construct".equals(methodKind) || "__destruct".equals(methodKind);
    }
    @Override
    public Void visitVirtualMethod(compilerv1Parser.VirtualMethodContext ctx) {
        writeLine("virtual " + renderReturnType(ctx.returnType()) + " " + ctx.ID().getText() + "(" + renderParameterSignature(ctx.params(), ctx.ID().getText()) + ") = 0;");
        return null;
    }

    @Override
    public Void visitInterface(compilerv1Parser.InterfaceContext ctx) {
        String typeName = mapDeclaredType(ctx.ID().getText());
        writeLine("class " + typeName + renderInheritanceClause(ctx.inheritanceClause()) + renderAttributeSuffix(ctx.attributeBlock()) + " {");
        indentLevel++;
        writeLine("public:");
        indentLevel++;
        writeLine("virtual ~" + typeName + "() = default;");
        for (compilerv1Parser.VirtualMethodContext method : ctx.virtualMethod()) {
            visitVirtualMethod(method);
        }
        indentLevel--;
        indentLevel--;
        writeLine("};");
        write("\n");
        return null;
    }

    private void emitClassMembers(List<compilerv1Parser.ClassMemberContext> members) {
        String[] currentAccess = {"private"};
        for (compilerv1Parser.ClassMemberContext member : members) {
            String nextAccess = null;
            if (member.method() != null && member.method().CLSTYPE() != null) {
                nextAccess = member.method().CLSTYPE().getText();
            } else if (member.method() != null && isLifecycleMethod(member.method())) {
                nextAccess = "public";
            }
            if (member.field() != null && member.field().CLSTYPE() != null) {
                nextAccess = member.field().CLSTYPE().getText();
            }
            emitAccessLabel(nextAccess, currentAccess);
            if (member.method() != null) {
                visitMethod(member.method());
            } else if (member.field() != null) {
                visitField(member.field());
            } else if (member.templateDecl() != null) {
                visitTemplateDecl(member.templateDecl());
            } else if (member.class_() != null) {
                visitClass(member.class_());
            } else if (member.struct() != null) {
                visitStruct(member.struct());
            }
        }
    }

    private void emitClassTraceHelper(String typeName, List<compilerv1Parser.ClassMemberContext> members) {
        writeLine("inline void __apo_gc_trace_value(__apo_gc_tracer& tracer, const " + typeName + "& value) {");
        indentLevel++;
        for (compilerv1Parser.ClassMemberContext member : members) {
            if (member.field() == null) {
                continue;
            }
            writeLine("__apo_gc_trace_value(tracer, value." + member.field().ID().getText() + ");");
        }
        indentLevel--;
        writeLine("}");
        write("\n");
    }

    private void emitStructTraceHelper(String typeName, List<compilerv1Parser.StructMemberContext> members) {
        writeLine("inline void __apo_gc_trace_value(__apo_gc_tracer& tracer, const " + typeName + "& value) {");
        indentLevel++;
        for (compilerv1Parser.StructMemberContext member : members) {
            if (member.field() == null) {
                continue;
            }
            writeLine("__apo_gc_trace_value(tracer, value." + member.field().ID().getText() + ");");
        }
        indentLevel--;
        writeLine("}");
        write("\n");
    }

    private void emitClassSoaAdapter(String typeName, List<compilerv1Parser.ClassMemberContext> members) {
        List<compilerv1Parser.FieldContext> fields = new ArrayList<>();
        for (compilerv1Parser.ClassMemberContext member : members) {
            if (member.field() != null) {
                fields.add(member.field());
            }
        }
        emitSoaAdapter(typeName, fields);
    }

    private void emitStructSoaAdapter(String typeName, List<compilerv1Parser.StructMemberContext> members) {
        List<compilerv1Parser.FieldContext> fields = new ArrayList<>();
        for (compilerv1Parser.StructMemberContext member : members) {
            if (member.field() != null) {
                fields.add(member.field());
            }
        }
        emitSoaAdapter(typeName, fields);
    }

    private void emitSoaAdapter(String typeName, List<compilerv1Parser.FieldContext> fields) {
        writeLine("template <>");
        writeLine("struct __apo_soa_adapter<" + typeName + "> {");
        indentLevel++;
        writeLine("struct storage {");
        indentLevel++;
        if (fields.isEmpty()) {
            writeLine("std::size_t size = 0;");
        } else {
            for (compilerv1Parser.FieldContext field : fields) {
                writeLine("std::vector<" + renderType(typeFromContext(field.typeRef())) + "> " + field.ID().getText() + ";");
            }
        }
        indentLevel--;
        writeLine("};");
        write("\n");
        writeLine("static void push(storage& storage, const " + typeName + "& value) {");
        indentLevel++;
        if (fields.isEmpty()) {
            writeLine("++storage.size;");
        } else {
            for (compilerv1Parser.FieldContext field : fields) {
                String fieldName = field.ID().getText();
                writeLine("storage." + fieldName + ".push_back(value." + fieldName + ");");
            }
        }
        indentLevel--;
        writeLine("}");
        write("\n");
        writeLine("static " + typeName + " load(const storage& storage, std::size_t index) {");
        indentLevel++;
        writeLine(typeName + " value{};");
        for (compilerv1Parser.FieldContext field : fields) {
            String fieldName = field.ID().getText();
            writeLine("value." + fieldName + " = storage." + fieldName + "[index];");
        }
        writeLine("return value;");
        indentLevel--;
        writeLine("}");
        write("\n");
        writeLine("static void store(storage& storage, std::size_t index, const " + typeName + "& value) {");
        indentLevel++;
        if (fields.isEmpty()) {
            writeLine("(void)storage;");
            writeLine("(void)index;");
            writeLine("(void)value;");
        } else {
            for (compilerv1Parser.FieldContext field : fields) {
                String fieldName = field.ID().getText();
                writeLine("storage." + fieldName + "[index] = value." + fieldName + ";");
            }
        }
        indentLevel--;
        writeLine("}");
        write("\n");
        writeLine("static std::size_t size(const storage& storage) {");
        indentLevel++;
        if (fields.isEmpty()) {
            writeLine("return storage.size;");
        } else {
            writeLine("return storage." + fields.get(0).ID().getText() + ".size();");
        }
        indentLevel--;
        writeLine("}");
        indentLevel--;
        writeLine("};");
        write("\n");
    }

    private String renderTemplateParameterList(compilerv1Parser.TemplateParamsContext ctx) {
        StringBuilder builder = new StringBuilder();
        List<org.antlr.v4.runtime.tree.TerminalNode> ids = ctx.ID();
        for (int index = 0; index < ids.size(); index++) {
            if (index > 0) {
                builder.append(", ");
            }
            builder.append("typename ").append(ids.get(index).getText());
        }
        return builder.toString();
    }

    private String renderTemplateArgumentList(compilerv1Parser.TemplateParamsContext ctx) {
        StringBuilder builder = new StringBuilder();
        List<org.antlr.v4.runtime.tree.TerminalNode> ids = ctx.ID();
        for (int index = 0; index < ids.size(); index++) {
            if (index > 0) {
                builder.append(", ");
            }
            builder.append(ids.get(index).getText());
        }
        return builder.toString();
    }

    private void emitTemplateClassTraceHelper(String typeName, compilerv1Parser.TemplateParamsContext templateParams,
            List<compilerv1Parser.ClassMemberContext> members) {
        String templateParameterList = renderTemplateParameterList(templateParams);
        String templateArgumentList = renderTemplateArgumentList(templateParams);
        writeLine("template <" + templateParameterList + ">");
        writeLine("inline void __apo_gc_trace_value(__apo_gc_tracer& tracer, const " + typeName + "<" + templateArgumentList + ">& value) {");
        indentLevel++;
        writeLine("value.__apo_gc_trace_fields(tracer);");
        indentLevel--;
        writeLine("}");
        write("\n");
    }

    @Override
    public Void visitTemplateDecl(compilerv1Parser.TemplateDeclContext ctx) {
        String typeName = mapDeclaredType(ctx.ID().getText());
        String templateParameterList = renderTemplateParameterList(ctx.templateParams());
        writeLine("template <" + templateParameterList + ">");
        writeLine("class " + typeName + " {");
        enclosingTypes.push(typeName);
        indentLevel++;
        emitClassMembers(ctx.classBody().classMember());
        writeLine("public:");
        writeLine("void __apo_gc_trace_fields(__apo_gc_tracer& tracer) const {");
        indentLevel++;
        for (compilerv1Parser.ClassMemberContext member : ctx.classBody().classMember()) {
            if (member.field() == null) {
                continue;
            }
            writeLine("__apo_gc_trace_value(tracer, " + member.field().ID().getText() + ");");
        }
        indentLevel--;
        writeLine("}");
        indentLevel--;
        enclosingTypes.pop();
        writeLine("};");
        write("\n");
        emitTemplateClassTraceHelper(typeName, ctx.templateParams(), ctx.classBody().classMember());
        return null;
    }

    @Override
    public Void visitLambda(compilerv1Parser.LambdaContext ctx) {
        ApolloType declaredType = typeFromContext(ctx.typeRef());
        if (declaredType != null && !"auto".equals(declaredType.name) && !isFunctionType(declaredType)) {
            throw error(ctx, "lambda declarations must use auto or fn<...>");
        }

        compilerv1Parser.ParamsContext paramsCtx;
        compilerv1Parser.BlockContext blockCtx;
        compilerv1Parser.ReturnTypeContext returnTypeCtx = null;

        if (ctx.lambdaDefinition().function() != null) {
            compilerv1Parser.FunctionContext functionCtx = ctx.lambdaDefinition().function();
            paramsCtx = functionCtx.params();
            blockCtx = functionCtx.block();
            returnTypeCtx = functionCtx.returnType();
        } else {
            compilerv1Parser.LambdaLiteralContext literalCtx = ctx.lambdaDefinition().lambdaLiteral();
            paramsCtx = literalCtx.params();
            blockCtx = literalCtx.block();
            returnTypeCtx = literalCtx.returnType();
        }

        ApolloType effectiveReturnType = returnTypeCtx != null
                ? typeFromReturnContext(returnTypeCtx)
                : lambdaInferredReturnType(declaredType);
        effectiveReturnType = adaptWholeProgramManagedType(effectiveReturnType);

        write(indent() + renderType(ctx.typeRef()) + " " + ctx.ID().getText() + " = [&]");
        writeParameterList(paramsCtx);
        if (effectiveReturnType != null && !"auto".equals(effectiveReturnType.name)) {
            write("-> " + (effectiveReturnType.managed ? renderManagedHandleType(effectiveReturnType) : renderType(effectiveReturnType, true)) + " ");
        }
        returnTypes.push(effectiveReturnType != null ? effectiveReturnType : new ApolloType("auto", List.of()));
        pushTypeScope();
        bindParameters(paramsCtx);
        writeBlock(blockCtx);
        popTypeScope();
        returnTypes.pop();
        writeLine(";");
        bindVariableType(ctx.ID().getText(), declaredType);
        return null;
    }

    @Override
    public Void visitSrcDecl(compilerv1Parser.SrcDeclContext ctx) {
        boolean isConst = ctx.NCONST() == null;
        ApolloType declaredType = buildSrcFunctionType(ctx);

        write(indent() + (isConst ? "const " : "") + "auto " + ctx.ID().getText() + " = [&](" + renderParameterSignature(ctx.params(), null) + ")");
        if (ctx.returnType() != null) {
            ApolloType returnType = adaptWholeProgramManagedType(typeFromReturnContext(ctx.returnType()));
            write(" -> " + (returnType.managed ? renderManagedHandleType(returnType) : renderType(returnType, true)));
        }
        write(" ");

        returnTypes.push(ctx.returnType() != null ? adaptWholeProgramManagedType(typeFromReturnContext(ctx.returnType())) : new ApolloType("auto", List.of()));
        pushTypeScope();
        bindParameters(ctx.params());
        writeBlock(ctx.block());
        popTypeScope();
        returnTypes.pop();
        writeLine(";");
        bindVariableType(ctx.ID().getText(), declaredType, isConst);
        return null;
    }

    @Override
    public Void visitStdin(compilerv1Parser.StdinContext ctx) {
        writeLine(renderStdinStatement(ctx));
        return null;
    }
    @Override
    public Void visitMacro(compilerv1Parser.MacroContext ctx) {
        write(indent() + "static inline void " + ctx.ID().getText());
        writeParameterList(ctx.params());
        returnTypes.push(new ApolloType("void", List.of()));
        pushTypeScope();
        bindParameters(ctx.params());
        writeBlock(ctx.block());
        popTypeScope();
        returnTypes.pop();
        write("\n");
        return null;
    }
    @Override
    public Void visitPointer(compilerv1Parser.PointerContext ctx) {
        writeLine(renderPointerStatement(ctx));
        return null;
    }
    @Override 
    public Void visitNativemode(compilerv1Parser.NativemodeContext ctx) {
        if (ctx.OVERRIDE() != null) {
            writeLine(renderImmediatePayload(ctx));
        } else {
            writeLine(renderEnqueuePayload(ctx));
        }
        return null;
    }

    @Override
    public Void visitAsyncCall(compilerv1Parser.AsyncCallContext ctx) {
        writeLine(renderGoAsyncCall(ctx));
        return null;
    }

    @Override
    public Void visitSyscallStmt(compilerv1Parser.SyscallStmtContext ctx) {
        writeLine(renderSyscallExecution(ctx.ALL() != null));
        return null;
    }
    @Override
    public Void visitMemberaccess(compilerv1Parser.MemberaccessContext ctx) {
        write(renderMemberAccess(ctx));
        return null;
    }

    @Override
    public Void visitInstance(compilerv1Parser.InstanceContext ctx) {
        writeLine(renderInstanceStatement(ctx));
        return null;
    }
    @Override 
    public Void visitPrint(compilerv1Parser.PrintContext ctx) {
        writeLine(renderPrintStatement(ctx));
        return null;
    }
    @Override
    public Void visitInstancepush(compilerv1Parser.InstancepushContext ctx) {
        writeLine(renderInstancePush(ctx));
        return null;
    }
    @Override
    public Void visitImportStmt(compilerv1Parser.ImportStmtContext ctx) {
        if (ctx.STRING() != null) {
            includes.add(ctx.STRING().getText().replaceAll("\"", ""));
        } else if (ctx.headerPath() != null) {
            includes.add(ctx.headerPath().getText());
        } else if (ctx.importPath() != null) {
            String pathText = ctx.importPath().getText();
            if (pathText.contains("*")) {
                wildcardImports.add(pathText);
            } else {
                includes.add(pathText);
            }
        }
        return null;
    }
    @Override
    public Void visitInclude(compilerv1Parser.IncludeContext ctx) {
        String sourcePath = toPackageSourcePath(ctx.importPath().getText());
        if (!dependencies.contains(sourcePath)) {
            dependencies.add(sourcePath);
        }
        return null;
    }
    @Override
    public Void visitProgram(compilerv1Parser.ProgramContext ctx) {
        boolean totalProgramGc = runtimeFeatures.totalProgramGc();
        boolean usesAutofmtRuntime = runtimeFeatures.usesAutofmtRuntime() || totalProgramGc;
        boolean usesGoAsyncRuntime = runtimeFeatures.usesGoAsyncRuntime();
        boolean usesIrRuntime = runtimeFeatures.usesIrRuntime();
        boolean usesIscRuntime = runtimeFeatures.usesIscRuntime();
        boolean usesFileRuntime = runtimeFeatures.usesFileRuntime();
        boolean usesMemstructRuntime = runtimeFeatures.usesMemstructRuntime();
        boolean usesSchedulerRuntime = runtimeFeatures.usesSchedulerRuntime();
        boolean usesPhase3Runtime = runtimeFeatures.usesPhase3Runtime();
        boolean usesSoaRuntime = optimizationPlan.usesSoaRuntime();
        List<String> topLevelStatements = new ArrayList<>();
        Map<String, compilerv1Parser.GlobalInitContext> globalInitMap = new LinkedHashMap<>();
        collectGlobalInits(ctx, globalInitMap);
        List<compilerv1Parser.GlobalInitContext> globalInits = new ArrayList<>(globalInitMap.values());

        collectDeclaredTypes(ctx);
        collectMemstructMetadata(ctx);
        collectOpstructMetadata(ctx);
        collectTypedefOpstructCommands(ctx);
        collectSchedules(ctx);
        collectPhase3Policies(ctx);
        collectCommunalTypes(ctx);
        collectAutofmtStorageMutableNames(ctx);
        collectCallableTypes(ctx);
        loadUnsafeFallbackDatabase();
        collectIncludes(ctx);
        includes.add("cstdlib");
        includes.add("memory");
        includes.add("cstdint");
        includes.add("filesystem");
        includes.add("fstream");
        includes.add("exception");
        includes.add("functional");
        includes.add("iostream");
        includes.add("new");
        includes.add("thread");
        includes.add("mutex");
        includes.add("condition_variable");
        includes.add("deque");
        includes.add("utility");
        includes.add("sstream");
        includes.add("any");
        includes.add("array");
        includes.add("string");
        includes.add("stdexcept");
        includes.add("unordered_map");
        includes.add("vector");
        if (totalProgramGc) {
            includes.add("gc/gc.h");
        }

        if (includes.contains("cstdlib")) writeLine("#include <cstdlib>");
        if (includes.contains("cstdint")) writeLine("#include <cstdint>");
        if (includes.contains("filesystem")) writeLine("#include <filesystem>");
        if (includes.contains("fstream")) writeLine("#include <fstream>");
        if (includes.contains("exception")) writeLine("#include <exception>");
        if (includes.contains("functional")) writeLine("#include <functional>");
        if (includes.contains("iostream")) writeLine("#include <iostream>");
        if (includes.contains("new")) writeLine("#include <new>");
        if (includes.contains("thread")) writeLine("#include <thread>");
        if (includes.contains("mutex")) writeLine("#include <mutex>");
        if (includes.contains("condition_variable")) writeLine("#include <condition_variable>");
        if (includes.contains("deque")) writeLine("#include <deque>");
        if (includes.contains("utility")) writeLine("#include <utility>");
        if (includes.contains("sstream")) writeLine("#include <sstream>");
        if (includes.contains("stdexcept")) writeLine("#include <stdexcept>");
        if (includes.contains("string")) writeLine("#include <string>");
        if (includes.contains("unordered_map")) writeLine("#include <unordered_map>");
        if (includes.contains("vector")) writeLine("#include <vector>");
        if (includes.contains("array")) writeLine("#include <array>");
        if (includes.contains("memory")) writeLine("#include <memory>");
        if (includes.contains("any")) writeLine("#include <any>");
        for (String inc : includes) {
            if ("cstdlib".equals(inc) || "cstdint".equals(inc) || "filesystem".equals(inc) || "fstream".equals(inc) || "exception".equals(inc) || "functional".equals(inc) || "iostream".equals(inc) || "new".equals(inc) || "thread".equals(inc) || "mutex".equals(inc) || "condition_variable".equals(inc) || "deque".equals(inc) || "utility".equals(inc) || "sstream".equals(inc) || "stdexcept".equals(inc) || "string".equals(inc) || "unordered_map".equals(inc) || "vector".equals(inc) || "array".equals(inc) || "memory".equals(inc) || "any".equals(inc)) continue;
            writeLine("#include <" + inc + ">");
        }
        writeHashSupport();
        writeTemplateLiteralSupport();
        if (usesIscRuntime) {
            writeIscRuntimeSupport();
        }
        if (usesFileRuntime) {
            writeFileRuntimeSupport();
        }
        if (usesPhase3Runtime) {
            writeRuntimeInclude("apo_phase3_runtime.hpp");
            write("\n");
        }
        if (usesMemstructRuntime) {
            writeRuntimeInclude("apo_memstruct_runtime.hpp");
            write("\n");
        }
        if (usesSchedulerRuntime) {
            writeRuntimeInclude("apo_scheduler_eevf_runtime.hpp");
            write("\n");
        }
        if (usesAutofmtRuntime) {
            writeAutofmtOwnerRuntimeSupport();
        }
        for (String dependency : dependencies) {
            writeLine("#include \"" + toPackageHeaderPath(dependency) + "\"");
        }
        for (String w : wildcardImports) {
            writeLine("// import wildcard: " + w);
        }
        if (usesIrRuntime) {
            writeIrRuntimeSupport();
        }
        if (usesGoAsyncRuntime) {
            writeGoAsyncRuntimeSupport();
        }
        if (usesSoaRuntime) {
            writeRuntimeInclude("apo_soa_runtime.hpp");
        }
        if (!usesAutofmtRuntime) {
            writeGcTraceStubs();
        }
        if (totalProgramGc) {
            writeLine("static __apo_autofmt_owner " + TOTAL_GC_OWNER_NAME + ";");
            write("\n");
        }
        emitGlobalForwardDeclarations(ctx);
        for (compilerv1Parser.GlobalInitContext globalInit : globalInits) {
            emitGlobalExtern(globalInit);
        }
        if (!globalInits.isEmpty()) {
            write("\n");
        }
        if (headerMode) {
            writeLine("#pragma once");
            write("\n");
            if (usesIrRuntime) {
                writeLine("static void __apo_queuePayload(const std::string& payload);");
                writeLine("static int __apo_executePayload(const std::string& payload);");
                writeLine("static int __apo_executeQueuedPayload(bool drainAll);");
                write("\n");
            }
        } else {
            write("using namespace std;\n\n");
        }

        if (usesSchedulerRuntime) {
            emitScheduleTaskForwardDeclarations();
        }

        for (org.antlr.v4.runtime.tree.ParseTree child : ctx.children) {
            if (child instanceof compilerv1Parser.InterfaceContext) {
                visitInterface((compilerv1Parser.InterfaceContext) child);
            }
        }

        for (org.antlr.v4.runtime.tree.ParseTree child : ctx.children) {
            if (child instanceof compilerv1Parser.ClassContext) {
                visitClass((compilerv1Parser.ClassContext) child);
            } else if (child instanceof compilerv1Parser.TemplateDeclContext) {
                visitTemplateDecl((compilerv1Parser.TemplateDeclContext) child);
            } else if (child instanceof compilerv1Parser.StructContext) {
                visitStruct((compilerv1Parser.StructContext) child);
            } else if (child instanceof compilerv1Parser.MemstructContext) {
                visitMemstruct((compilerv1Parser.MemstructContext) child);
            } else if (child instanceof compilerv1Parser.TypedefStructContext) {
                visitTypedefStruct((compilerv1Parser.TypedefStructContext) child);
            } else if (child instanceof compilerv1Parser.OpstructContext) {
                visitOpstruct((compilerv1Parser.OpstructContext) child);
            } else if (child instanceof compilerv1Parser.TypedefOpstructContext) {
                visitTypedefOpstruct((compilerv1Parser.TypedefOpstructContext) child);
            }
        }

        for (org.antlr.v4.runtime.tree.ParseTree child : ctx.children) {
            if (child instanceof compilerv1Parser.StructContext) {
                compilerv1Parser.StructContext structCtx = (compilerv1Parser.StructContext) child;
                if (structCtx.communalQualifier() != null) {
                    topLevelStatements.add("__apo_scheduler_eevf_runtime::instance().register_communal_type(\"" + escapeCppString(structCtx.ID().getText()) + "\");");
                }
            } else if (child instanceof compilerv1Parser.MemstructContext) {
                compilerv1Parser.MemstructContext memstructCtx = (compilerv1Parser.MemstructContext) child;
                if (memstructCtx.communalQualifier() != null) {
                    topLevelStatements.add("__apo_scheduler_eevf_runtime::instance().register_communal_type(\"" + escapeCppString(memstructCtx.ID().getText()) + "\");");
                }
                topLevelStatements.add(renderMemstructRegistration((compilerv1Parser.MemstructContext) child));
            } else if (child instanceof compilerv1Parser.OpstructContext) {
                topLevelStatements.add(renderOpstructRegistration((compilerv1Parser.OpstructContext) child));
            } else if (child instanceof compilerv1Parser.TypedefOpstructContext) {
                compilerv1Parser.TypedefOpstructContext typedefCtx = (compilerv1Parser.TypedefOpstructContext) child;
                if (isTypedefOpstructDsl(typedefCtx)) {
                    topLevelStatements.add(renderTypedefOpstructRegistration(typedefCtx));
                }
            } else if (child instanceof compilerv1Parser.ScheduleDeclContext) {
                topLevelStatements.add(renderScheduleRegistration(schedules.get(((compilerv1Parser.ScheduleDeclContext) child).ID().getText())));
            }
        }

        for (compilerv1Parser.DirectiveContext directiveCtx : ctx.directive()) {
            if (directiveCtx.phase3Directive() != null) {
                topLevelStatements.add(renderPhase3Directive(directiveCtx.phase3Directive()));
            }
        }

        for (org.antlr.v4.runtime.tree.ParseTree child : ctx.children) {
                if (child instanceof compilerv1Parser.ImportStmtContext
                    || child instanceof compilerv1Parser.IncludeContext
                    || child instanceof compilerv1Parser.InterfaceContext
                    || child instanceof compilerv1Parser.TemplateDeclContext
                    || child instanceof compilerv1Parser.ClassContext
                    || child instanceof compilerv1Parser.StructContext
                    || child instanceof compilerv1Parser.MemstructContext
                    || child instanceof compilerv1Parser.TypedefStructContext
                    || child instanceof compilerv1Parser.OpstructContext
                    || child instanceof compilerv1Parser.ScheduleDeclContext
                    || child instanceof compilerv1Parser.TypedefOpstructContext
                    || !(child instanceof org.antlr.v4.runtime.ParserRuleContext)) {
                continue;
            }
            if (child instanceof compilerv1Parser.InitContext) {
                visitInit((compilerv1Parser.InitContext) child);
            } else if (child instanceof compilerv1Parser.LtoInitContext) {
                visitLtoInit((compilerv1Parser.LtoInitContext) child);
            } else if (child instanceof compilerv1Parser.EasyInitContext) {
                visitEasyInit((compilerv1Parser.EasyInitContext) child);
            } else if (child instanceof compilerv1Parser.DircppContext) {
                visitDircpp((compilerv1Parser.DircppContext) child);
            } else if (child instanceof compilerv1Parser.SrcDeclContext) {
                visitSrcDecl((compilerv1Parser.SrcDeclContext) child);
            } else if (child instanceof compilerv1Parser.LambdaContext) {
                visitLambda((compilerv1Parser.LambdaContext) child);
            } else if (child instanceof compilerv1Parser.FunctionContext) {
                visitFunction((compilerv1Parser.FunctionContext) child);
            } else if (child instanceof compilerv1Parser.MacroContext) {
                if (isDynamicMacro((compilerv1Parser.MacroContext) child)) {
                    topLevelStatements.add(renderDynamicMacroRegistration((compilerv1Parser.MacroContext) child));
                }
                visitMacro((compilerv1Parser.MacroContext) child);
            } else if (child instanceof compilerv1Parser.InstanceContext) {
                visitInstance((compilerv1Parser.InstanceContext) child);
            } else if (child instanceof compilerv1Parser.MallocContext) {
                visitMalloc((compilerv1Parser.MallocContext) child);
            } else if (child instanceof compilerv1Parser.MntDeclContext) {
                visitMntDecl((compilerv1Parser.MntDeclContext) child);
            } else if (child instanceof compilerv1Parser.PlcnewContext) {
                visitPlcnew((compilerv1Parser.PlcnewContext) child);
            } else if (child instanceof compilerv1Parser.DelalcContext) {
                visitDelalc((compilerv1Parser.DelalcContext) child);
            } else if (child instanceof compilerv1Parser.FreeContext) {
                topLevelStatements.add(renderFree((compilerv1Parser.FreeContext) child));
            } else if (child instanceof compilerv1Parser.UnsafeBlockContext) {
                topLevelStatements.add(renderTopLevelScopedBlock(((compilerv1Parser.UnsafeBlockContext) child).block()));
            } else if (child instanceof compilerv1Parser.BypassBlockContext) {
                topLevelStatements.add(renderTopLevelScopedBlock(((compilerv1Parser.BypassBlockContext) child).block()));
            } else if (child instanceof compilerv1Parser.AutofmtdeclareScopeContext) {
                topLevelStatements.add(renderTopLevelAutofmtScope(((compilerv1Parser.AutofmtdeclareScopeContext) child).block()));
            } else if (child instanceof compilerv1Parser.InductStmtContext) {
                topLevelStatements.add(renderInductStatement(((compilerv1Parser.InductStmtContext) child).ID().getText(), (compilerv1Parser.InductStmtContext) child));
            } else if (child instanceof compilerv1Parser.ReleaseStmtContext) {
                topLevelStatements.add(renderReleaseStatement(((compilerv1Parser.ReleaseStmtContext) child).ID().getText(), (compilerv1Parser.ReleaseStmtContext) child));
            } else if (child instanceof compilerv1Parser.InstancepushContext) {
                topLevelStatements.add(renderInstancePush((compilerv1Parser.InstancepushContext) child));
            } else if (child instanceof compilerv1Parser.MemberaccessContext) {
                topLevelStatements.add(renderMemberAccess((compilerv1Parser.MemberaccessContext) child) + ";");
            } else if (child instanceof compilerv1Parser.NativemodeContext) {
                compilerv1Parser.NativemodeContext nativeCtx = (compilerv1Parser.NativemodeContext) child;
                topLevelStatements.add(nativeCtx.OVERRIDE() != null ? renderImmediatePayload(nativeCtx) : renderEnqueuePayload(nativeCtx));
            } else if (child instanceof compilerv1Parser.AsyncCallContext) {
                topLevelStatements.add(renderGoAsyncCall((compilerv1Parser.AsyncCallContext) child));
            } else if (child instanceof compilerv1Parser.SchedulerStartStmtContext) {
                topLevelStatements.add(renderSchedulerStartStatement((compilerv1Parser.SchedulerStartStmtContext) child));
            } else if (child instanceof compilerv1Parser.SchedulerInsertStmtContext) {
                topLevelStatements.add(renderSchedulerInsertStatement((compilerv1Parser.SchedulerInsertStmtContext) child));
            } else if (child instanceof compilerv1Parser.SchedulerVoidStmtContext) {
                topLevelStatements.add(renderSchedulerVoidStatement((compilerv1Parser.SchedulerVoidStmtContext) child));
            } else if (child instanceof compilerv1Parser.SyscallStmtContext) {
                topLevelStatements.add(renderSyscallExecution(((compilerv1Parser.SyscallStmtContext) child).ALL() != null));
            }
        }
        if (usesSchedulerRuntime) {
            emitScheduleTaskDefinitions();
        }
        if (!headerMode) {
            for (compilerv1Parser.GlobalInitContext globalInit : globalInits) {
                visitGlobalInit(globalInit);
            }
            if (!globalInits.isEmpty()) {
                write("\n");
            }
        }
        if (headerMode || !topLevelStatements.isEmpty() || !dependencies.isEmpty()) {
            if (headerMode) {
                writeLine("static void " + currentModuleInitName() + "() {");
                indentLevel++;
                writeLine("static bool __apo_initialized = false;");
                writeLine("if (__apo_initialized) { return; }");
                writeLine("__apo_initialized = true;");
                for (String dependency : dependencies) {
                    writeLine(toModuleInitName(dependency) + "();");
                }
                for (String statement : topLevelStatements) {
                    writeLine(statement);
                }
                indentLevel--;
                writeLine("}");
            } else {
                write("static int __apo_init = []() {\n");
                indentLevel++;
                for (String dependency : dependencies) {
                    writeLine(toModuleInitName(dependency) + "();");
                }
                for (String statement : topLevelStatements) {
                    writeLine(statement);
                }
                writeLine("return 0;");
                indentLevel--;
                write("}();\n");
            }
        }
        return null;
    }

    @Override
    public Void visitMalloc(compilerv1Parser.MallocContext ctx) {
        writeLine(renderMalloc(ctx));
        return null;
    }

    @Override
    public Void visitMntDecl(compilerv1Parser.MntDeclContext ctx) {
        writeLine(renderMntDecl(ctx));
        return null;
    }

    @Override
    public Void visitFree(compilerv1Parser.FreeContext ctx) {
        writeLine(renderFree(ctx));
        return null;
    }

    @Override
    public Void visitDelalc(compilerv1Parser.DelalcContext ctx) {
        markPlacementReusable(ctx.ID().getText());
        return null;
    }

    @Override
    public Void visitPlcnew(compilerv1Parser.PlcnewContext ctx) {
        writeLine(renderPlcnew(ctx));
        return null;
    }
    @Override
    public Void visitFunction(compilerv1Parser.FunctionContext ctx) {
        if (headerMode && "main".equals(ctx.ID().getText())) {
            return null;
        }
        writeSignature(ctx.returnType(), ctx.ID().getText(), ctx.params(), false, false, false);
        String attributes = renderAttributeSpecifier(ctx.attributeBlock());
        if (!attributes.isEmpty()) {
            write(attributes + " ");
        }
        returnTypes.push(adaptWholeProgramManagedType(typeFromReturnContext(ctx.returnType())));
        pushTypeScope();
        bindParameters(ctx.params());
        writeBlock(ctx.block(), "main".equals(ctx.ID().getText()) && usesGarbageCollector());
        popTypeScope();
        returnTypes.pop();
        write("\n");
        return null;
    }

    @Override
    public Void visitMethod(compilerv1Parser.MethodContext ctx) {
        validateMethodModifiers(ctx);
        String methodKind = ctx.getChild(methodStartIndex(ctx)).getText();

        if ("__construct".equals(methodKind)) {
            String typeName = enclosingTypes.peek();
            write(indent() + typeName);
            writeParameterList(ctx.params());
            String attributes = renderAttributeSpecifier(ctx.attributeBlock());
            if (!attributes.isEmpty()) {
                write(attributes + " ");
            }
            returnTypes.push(new ApolloType("void", List.of()));
            writeBlock(ctx.block());
            returnTypes.pop();
            write("\n");
            return null;
        }
        if ("__destruct".equals(methodKind)) {
            String typeName = enclosingTypes.peek();
            write(indent() + "~" + typeName + "() ");
            String attributes = renderAttributeSpecifier(ctx.attributeBlock());
            if (!attributes.isEmpty()) {
                write(attributes + " ");
            }
            returnTypes.push(new ApolloType("void", List.of()));
            writeBlock(ctx.block());
            returnTypes.pop();
            write("\n");
            return null;
        }
        writeSignature(ctx.returnType(), ctx.ID().getText(), ctx.params(), ctx.STATIC() != null, ctx.VIRTUAL() != null, ctx.ANNOT_OVERRIDE() != null);
        String attributes = renderAttributeSpecifier(ctx.attributeBlock());
        if (!attributes.isEmpty()) {
            write(attributes + " ");
        }
        returnTypes.push(adaptWholeProgramManagedType(typeFromReturnContext(ctx.returnType())));
        pushTypeScope();
        bindParameters(ctx.params());
        writeBlock(ctx.block());
        popTypeScope();
        returnTypes.pop();
        write("\n");
        return null;
    }

    @Override
    public Void visitField(compilerv1Parser.FieldContext ctx) {
        writeLine(renderType(ctx.typeRef()) + " " + ctx.ID().getText() + renderAttributeSuffix(ctx.attributeBlock()) + ";");
        return null;
    }

    @Override
    public Void visitDircpp(compilerv1Parser.DircppContext ctx) {
        write(rewriteRawCppDeclaredTypes(ctx.INCLUSIVE().getText()));
        return null;
    }

    @Override 
    public Void visitBlock(compilerv1Parser.BlockContext ctx) {
        writeBlock(ctx);
        return null;
    }
 
    @Override
    public Void visitCscope(compilerv1Parser.CscopeContext ctx) {
        for (org.antlr.v4.runtime.tree.ParseTree child : ctx.block().children) {
            if (!(child instanceof compilerv1Parser.StatementContext)) {
                continue;
            }
            compilerv1Parser.StatementContext statement = (compilerv1Parser.StatementContext) child;
            if (statement.bridgeInit() != null) {
                visitInit(statement.bridgeInit().init());
            }
        }

        write("{\n");
        indentLevel++;
        pushTypeScope();
        for (org.antlr.v4.runtime.tree.ParseTree child : ctx.block().children) {
            if (child instanceof compilerv1Parser.StatementContext) {
                compilerv1Parser.StatementContext statement = (compilerv1Parser.StatementContext) child;
                if (statement.bridgeInit() != null) {
                    continue;
                }
                visitStatement(statement);
            } else if (child instanceof compilerv1Parser.ReturnStmtContext) {
                visitReturnStmt((compilerv1Parser.ReturnStmtContext) child);
            }
        }
        popTypeScope();
        indentLevel--;
        writeLine("}");
        return null;
    }

    @Override
    public Void visitAutofmtdeclareScope(compilerv1Parser.AutofmtdeclareScopeContext ctx) {
        String ownerName = nextAutofmtOwnerScopeName();
        write("{\n");
        indentLevel++;
        pushTypeScope();
        autofmtOwnerScopes.push(ownerName);
        try {
            writeLine("__apo_autofmt_owner " + ownerName + ";");
            for (org.antlr.v4.runtime.tree.ParseTree child : ctx.block().children) {
                if (child instanceof compilerv1Parser.StatementContext) {
                    visitStatement((compilerv1Parser.StatementContext) child);
                } else if (child instanceof compilerv1Parser.ReturnStmtContext) {
                    visitReturnStmt((compilerv1Parser.ReturnStmtContext) child);
                }
            }
        } finally {
            autofmtOwnerScopes.pop();
            popTypeScope();
            indentLevel--;
        }
        writeLine("}");
        return null;
    }

    @Override
    public Void visitAutocatchStatement(compilerv1Parser.AutocatchStatementContext ctx) {
        String resultName = currentLastIscResultName();
        if (resultName == null) {
            throw error(ctx, "`autocatch` requires a preceding `isc` result in scope");
        }
        write(indent() + "if (" + resultName + ".failed()) ");
        write("{\n");
        indentLevel++;
        pushTypeScope();
        try {
            bindVariableType(ctx.ID().getText(), new ApolloType("str", List.of()), true);
            writeLine("const std::string& " + ctx.ID().getText() + " = " + resultName + ".message;");
            for (org.antlr.v4.runtime.tree.ParseTree child : ctx.block().children) {
                if (child instanceof compilerv1Parser.StatementContext) {
                    visitStatement((compilerv1Parser.StatementContext) child);
                } else if (child instanceof compilerv1Parser.ReturnStmtContext) {
                    visitReturnStmt((compilerv1Parser.ReturnStmtContext) child);
                }
            }
            ApolloType currentReturnType = returnTypes.peek();
            if (currentReturnType != null && "isc".equals(currentReturnType.name)) {
                writeLine("if (" + resultName + ".terminal) return " + resultName + ";");
            } else {
                writeLine("if (" + resultName + ".terminal) throw std::runtime_error(" + resultName + ".message);");
            }
        } finally {
            popTypeScope();
            indentLevel--;
        }
        writeLine("}");
        setLastIscResultName(null);
        return null;
    }

    @Override
    public Void visitInductStmt(compilerv1Parser.InductStmtContext ctx) {
        writeLine(renderInductStatement(ctx.ID().getText(), ctx));
        return null;
    }

    @Override
    public Void visitReleaseStmt(compilerv1Parser.ReleaseStmtContext ctx) {
        writeLine(renderReleaseStatement(ctx.ID().getText(), ctx));
        return null;
    }
    
    @Override
    public Void visitThread(compilerv1Parser.ThreadContext ctx) {
        String threadName = ctx.ID().getText();
        String mode = ctx.getChild(0).getText();
        String call = renderFunctionCall(ctx.functionCall());
        if (schedulerEevfEnabled()) {
            writeLine("__apo_scheduler_eevf_runtime::instance().note_task_launch(\"" + escapeCppString(threadName) + "\");");
            writeLine("std::thread " + threadName + "([=]() mutable { __apo_scheduler_eevf_runtime::task_scope __apo_task_scope(\""
                    + escapeCppString(threadName) + "\"); " + call + "; });");
        } else {
            writeLine("std::thread " + threadName + "([=]() mutable { " + call + "; });");
        }
        if ("prll".equals(mode)) {
            writeLine(threadName + ".detach();");
        } else if ("join".equals(mode)) {
            writeLine(threadName + ".join();");
        } else {
            throw error(ctx, "unsupported thread mode: `" + mode + "`");
        }
        return null;
    }

    @Override
    public Void visitStatement(compilerv1Parser.StatementContext ctx) {
        if (ctx.autocatchStatement() == null) {
            setLastIscResultName(null);
        }
        if (ctx.thread() != null) {
            visitThread(ctx.thread());
            return null;
        }
        if (ctx.globalInit() != null) {
            return null;
        }
        if (ctx.bridgeInit() != null) {
            throw error(ctx, "@bridge is only valid inside @autoreleasepool blocks");
        }
        if (ctx.pointer() != null) {
            visitPointer(ctx.pointer());
            return null;
        }
        if (ctx.unsafeLineStmt() != null) {
            visitUnsafeLineStmt(ctx.unsafeLineStmt());
            return null;
        }
        if (ctx.unsafeBlock() != null) {
            visitUnsafeBlock(ctx.unsafeBlock());
            return null;
        }
        if (ctx.bypassBlock() != null) {
            visitBypassBlock(ctx.bypassBlock());
            return null;
        }
        if (ctx.autofmtdeclareScope() != null) {
            visitAutofmtdeclareScope(ctx.autofmtdeclareScope());
            return null;
        }
        if (ctx.autocatchStatement() != null) {
            visitAutocatchStatement(ctx.autocatchStatement());
            return null;
        }
        if (ctx.dircpp() != null) {
            visitDircpp(ctx.dircpp());
            return null;
        }
        if (ctx.malloc() != null) {
            visitMalloc(ctx.malloc());
            return null;
        }
        if (ctx.mntDecl() != null) {
            visitMntDecl(ctx.mntDecl());
            return null;
        }
        if (ctx.delalc() != null) {
            visitDelalc(ctx.delalc());
            return null;
        }
        if (ctx.free() != null) {
            visitFree(ctx.free());
            return null;
        }
        if (ctx.cscope() != null) {
            visitCscope(ctx.cscope());
            return null;
        }
        if (ctx.inductStmt() != null) {
            visitInductStmt(ctx.inductStmt());
            return null;
        }
        if (ctx.releaseStmt() != null) {
            visitReleaseStmt(ctx.releaseStmt());
            return null;
        }
        if (ctx.plcnew() != null) {
            visitPlcnew(ctx.plcnew());
            return null;
        }
        if (ctx.lambda() != null) {
            visitLambda(ctx.lambda());
            return null;
        }
        if (ctx.srcDecl() != null) {
            visitSrcDecl(ctx.srcDecl());
            return null;
        }
        if (ctx.typedefOpstructSession() != null) {
            String rendered = renderTypedefOpstructSession(ctx.typedefOpstructSession());
            if (!rendered.isEmpty()) {
                writeLine(rendered);
            }
            return null;
        }
        if (ctx.typedefOpstructCreateStmt() != null) {
            String rendered = renderTypedefOpstructCreateStatement(ctx.typedefOpstructCreateStmt());
            if (!rendered.isEmpty()) {
                writeLine(rendered);
            }
            return null;
        }
        if (ctx.typedefOpstructPhraseStmt() != null) {
            String rendered = renderTypedefOpstructPhraseStatement(ctx.typedefOpstructPhraseStmt());
            if (!rendered.isEmpty()) {
                writeLine(rendered);
            }
            return null;
        }
        if (ctx.easyInit() != null) {
            visitEasyInit(ctx.easyInit());
            return null;
        }
        if (ctx.ltoInit() != null) {
            visitLtoInit(ctx.ltoInit());
            return null;
        }
        if (ctx.ltoTypesetStmt() != null) {
            writeLine(renderLtoTypesetStatement(ctx.ltoTypesetStmt()));
            return null;
        }
        if (ctx.init() != null) {
            visitInit(ctx.init());
            return null;
        }
        if (ctx.instance() != null) {
            visitInstance(ctx.instance());
            return null;
        }
        if (ctx.instancepush() != null) {
            visitInstancepush(ctx.instancepush());
            return null;
        }
        if (ctx.forStatement() != null) {
            visitForStatement(ctx.forStatement());
            return null;
        }
        if (ctx.forInStatement() != null) {
            visitForInStatement(ctx.forInStatement());
            return null;
        }
        if (ctx.switchStatement() != null) {
            visitSwitchStatement(ctx.switchStatement());
            return null;
        }
        if (ctx.tryCatchStatement() != null) {
            visitTryCatchStatement(ctx.tryCatchStatement());
            return null;
        }
        if (ctx.nativemode() != null) {
            visitNativemode(ctx.nativemode());
            return null;
        }
        if (ctx.asyncCall() != null) {
            visitAsyncCall(ctx.asyncCall());
            return null;
        }
        if (ctx.syscallStmt() != null) {
            visitSyscallStmt(ctx.syscallStmt());
            return null;
        }
        if (ctx.assignment() != null) {
            visitAssignment(ctx.assignment());
            return null;
        }
        if (ctx.functionCall() != null) {
            ApolloType callType = inferFunctionCallApolloType(ctx.functionCall());
            if (callType != null && "isc".equals(callType.name)) {
                String resultName = nextIscResultName();
                writeLine(renderType(callType) + " " + resultName + " = " + renderFunctionCall(ctx.functionCall()) + ";");
                bindVariableType(resultName, callType);
                setLastIscResultName(resultName);
            } else {
                writeLine(renderFunctionCall(ctx.functionCall()) + ";");
            }
            return null;
        }
        if (ctx.memberaccess() != null) {
            ApolloType memberType = inferMemberAccessApolloType(ctx.memberaccess());
            if (memberType != null && "isc".equals(memberType.name)) {
                String resultName = nextIscResultName();
                writeLine(renderType(memberType) + " " + resultName + " = " + renderMemberAccess(ctx.memberaccess()) + ";");
                bindVariableType(resultName, memberType);
                setLastIscResultName(resultName);
            } else {
                writeLine(renderMemberAccess(ctx.memberaccess()) + ";");
            }
            return null;
        }
        if (ctx.schedulerStartStmt() != null) {
            writeRenderedStatement(renderSchedulerStartStatement(ctx.schedulerStartStmt()));
            return null;
        }
        if (ctx.schedulerInsertStmt() != null) {
            emitSchedulerInsertStatement(ctx.schedulerInsertStmt());
            return null;
        }
        if (ctx.schedulerVoidStmt() != null) {
            writeLine(renderSchedulerVoidStatement(ctx.schedulerVoidStmt()));
            return null;
        }
        if (ctx.ifStatement() != null) {
            visitIfStatement(ctx.ifStatement());
            return null;
        }
        if (ctx.whileStatement() != null) {
            visitWhileStatement(ctx.whileStatement());
            return null;
        }
        if (ctx.class_() != null) {
            visitClass(ctx.class_());
            return null;
        }
        if (ctx.templateDecl() != null) {
            visitTemplateDecl(ctx.templateDecl());
            return null;
        }
        if (ctx.struct() != null) {
            visitStruct(ctx.struct());
            return null;
        }
        if (ctx.interface_() != null) {
            visitInterface(ctx.interface_());
            return null;
        }
        if (ctx.print() != null) {
            visitPrint(ctx.print());
            return null;
        }
        if (ctx.stdin() != null) {
            visitStdin(ctx.stdin());
            return null;
        }
        if (ctx.assertStmt() != null) {
            visitAssertStmt(ctx.assertStmt());
            return null;
        }
        if (ctx.block() != null) {
            visitBlock(ctx.block());
            return null;
        }
        return null;
    }

    @Override
    public Void visitIfStatement(compilerv1Parser.IfStatementContext ctx) {
        write(indent() + "if (" + renderExpression(ctx.expression()) + ") ");
        writeBlock(ctx.block(0));
        if (ctx.ELSE() != null) {
            write(indent() + "else ");
            writeBlock(ctx.block(1));
        }
        return null;
    }

    @Override
    public Void visitWhileStatement(compilerv1Parser.WhileStatementContext ctx) {
        write(indent() + "while (" + renderExpression(ctx.expression()) + ") ");
        writeBlock(ctx.block());
        return null;
    }

    @Override
    public Void visitForStatement(compilerv1Parser.ForStatementContext ctx) {
        String condition = ctx.expression() != null ? renderExpression(ctx.expression()) : "true";
        write(indent() + "for (" + renderForInitClause(ctx.forInit()) + "; " + condition + "; " + renderForUpdateClause(ctx.forUpdate()) + ") ");
        writeBlock(ctx.block());
        return null;
    }

    @Override
    public Void visitForInStatement(compilerv1Parser.ForInStatementContext ctx) {
        write(indent() + "for (" + renderForInLoopVariable(ctx) + " : " + renderExpression(ctx.expression()) + ") ");
        writeBlock(ctx.block());
        return null;
    }

    @Override
    public Void visitSwitchStatement(compilerv1Parser.SwitchStatementContext ctx) {
        writeSwitchStatement(ctx);
        return null;
    }

    @Override
    public Void visitTryCatchStatement(compilerv1Parser.TryCatchStatementContext ctx) {
        write(indent() + "try ");
        writeBlock(ctx.block(0));
        write(indent() + "catch (const std::exception& " + ctx.ID().getText() + ") ");
        writeBlock(ctx.block(1));
        return null;
    }

    @Override
    public Void visitAssignment(compilerv1Parser.AssignmentContext ctx) {
        writeLine(renderAssignmentStatement(ctx));
        return null;
    }

    @Override
    public Void visitInit(compilerv1Parser.InitContext ctx) {
        writeLine(renderInitStatement(ctx));
        return null;
    }

    @Override
    public Void visitEasyInit(compilerv1Parser.EasyInitContext ctx) {
        writeLine(renderEasyInitStatement(ctx));
        return null;
    }

    @Override
    public Void visitLtoInit(compilerv1Parser.LtoInitContext ctx) {
        writeLine(renderLtoInitStatement(ctx));
        return null;
    }

    @Override
    public Void visitAssertStmt(compilerv1Parser.AssertStmtContext ctx) {
        writeLine(renderAssertStatement(ctx));
        return null;
    }

    @Override
    public Void visitUnsafeLineStmt(compilerv1Parser.UnsafeLineStmtContext ctx) {
        write("{\n");
        indentLevel++;
        pushTypeScope();
        try {
            writeRenderedLines(renderUnsafeLinePayload(ctx.unsafeLinePayload()));
        } finally {
            popTypeScope();
            indentLevel--;
        }
        writeLine("}");
        return null;
    }

    @Override
    public Void visitUnsafeBlock(compilerv1Parser.UnsafeBlockContext ctx) {
        writeBlock(ctx.block());
        return null;
    }

    @Override
    public Void visitBypassBlock(compilerv1Parser.BypassBlockContext ctx) {
        writeBlock(ctx.block());
        return null;
    }

    @Override
    public Void visitGlobalInit(compilerv1Parser.GlobalInitContext ctx) {
        compilerv1Parser.InitCoreContext initCtx = ctx.init().initCore();
        String name = initCtx.ID().getText();
        boolean isConst = isImmutableQualifier(initCtx);
        ApolloType declaredType = typeFromContext(initCtx.typeRef());
        if (isConst && initCtx.expression() == null) {
            throw error(ctx, "immutable global declarations require an initializer; use `nconst` for delayed initialization");
        }
        ApolloType boundType = declaredType;
        if (shouldWholeProgramManageType(declaredType)) {
            boundType = markManaged(declaredType);
            String initialValue = initCtx.expression() != null ? renderExpression(initCtx.expression(), declaredType) : renderManagedPayloadType(declaredType) + "{}";
            writeLine(renderManagedHandleType(declaredType) + " " + name + " = " + TOTAL_GC_OWNER_NAME + ".make<"
                    + renderManagedPayloadType(declaredType) + ">(" + initialValue + ");");
            bindVariableType(name, boundType, isConst);
            writeLine(renderAutofmtTrackStatement(name));
        } else {
            String initializer = initCtx.expression() != null ? " = " + renderExpression(initCtx.expression(), declaredType) : "";
            writeLine((emitConstQualifier(name, isConst) ? "const " : "") + renderType(initCtx.typeRef()) + " " + name + initializer + ";");
            bindVariableType(name, boundType, isConst);
        }
        clearPlacementReusable(name);
        return null;
    }

    @Override
    public Void visitReturnStmt(compilerv1Parser.ReturnStmtContext ctx) {
        if (ctx.expression() == null) {
            writeLine("return;");
            return null;
        }
        ApolloType expectedReturnType = returnTypes.peek();
        String expression = renderExpression(ctx.expression(), expectedReturnType);
        if (expectedReturnType != null && "void".equals(expectedReturnType.name) && expression != null && "nullptr".equals(expression.trim())) {
            writeLine("return;");
            return null;
        }
        ApolloType inferredType = inferExpressionApolloType(ctx.expression());
        if (expectedReturnType != null && expectedReturnType.managed && (inferredType == null || !inferredType.managed)) {
            String ownerName = currentManagedOwnerName(expectedReturnType);
            expression = ownerName + ".make<" + renderManagedPayloadType(expectedReturnType) + ">(" + expression + ")";
        }
        writeLine("return " + expression + ";");
        return null;
    }

    @Override
    public Void visitFunctionCall(compilerv1Parser.FunctionCallContext ctx) {
        write(renderFunctionCall(ctx));
        return null;
    }

    @Override
    public Void visitClass(compilerv1Parser.ClassContext ctx) {
        String rawTypeName = ctx.ID().getText();
        String typeName = mapDeclaredType(ctx.ID().getText());
        writeLine("class " + typeName + renderInheritanceClause(ctx.inheritanceClause()) + renderAttributeSuffix(ctx.attributeBlock()) + " {");
        enclosingTypes.push(typeName);
        indentLevel++;
        writeLine("friend void __apo_gc_trace_value(__apo_gc_tracer& tracer, const " + typeName + "& value);");
        if (optimizationPlan.shouldLowerVectorElement(rawTypeName)) {
            writeLine("friend struct __apo_soa_adapter<" + typeName + ">;");
        }
        emitClassMembers(ctx.classBody().classMember());
        indentLevel--;
        enclosingTypes.pop();
        writeLine("};");
        write("\n");
        emitClassTraceHelper(typeName, ctx.classBody().classMember());
        if (optimizationPlan.shouldLowerVectorElement(rawTypeName)) {
            emitClassSoaAdapter(typeName, ctx.classBody().classMember());
        }
        return null;
    }

    @Override
    public Void visitMemstruct(compilerv1Parser.MemstructContext ctx) {
        String rawTypeName = ctx.ID().getText();
        String typeName = mapDeclaredType(ctx.ID().getText());
        writeLine("struct " + typeName + renderInheritanceClause(ctx.inheritanceClause()) + renderAttributeSuffix(ctx.attributeBlock()) + " {");
        enclosingTypes.push(typeName);
        indentLevel++;
        writeLine("friend void __apo_gc_trace_value(__apo_gc_tracer& tracer, const " + typeName + "& value);");
        if (optimizationPlan.shouldLowerVectorElement(rawTypeName)) {
            writeLine("friend struct __apo_soa_adapter<" + typeName + ">;");
        }
        String[] currentAccess = {"public"};
        for (compilerv1Parser.StructMemberContext member : ctx.structBody().structMember()) {
            String nextAccess = null;
            if (member.method() != null && member.method().CLSTYPE() != null) {
                nextAccess = member.method().CLSTYPE().getText();
            }
            if (member.field() != null && member.field().CLSTYPE() != null) {
                nextAccess = member.field().CLSTYPE().getText();
            }
            emitAccessLabel(nextAccess, currentAccess);
            if (member.method() != null) {
                visitMethod(member.method());
            } else if (member.field() != null) {
                visitField(member.field());
            } else if (member.templateDecl() != null) {
                visitTemplateDecl(member.templateDecl());
            } else if (member.class_() != null) {
                visitClass(member.class_());
            } else if (member.struct() != null) {
                visitStruct(member.struct());
            }
        }
        indentLevel--;
        enclosingTypes.pop();
        writeLine("};");
        write("\n");
        emitStructTraceHelper(typeName, ctx.structBody().structMember());
        if (optimizationPlan.shouldLowerVectorElement(rawTypeName)) {
            emitStructSoaAdapter(typeName, ctx.structBody().structMember());
        }
        writeLine("template <>");
        writeLine("struct __apo_allocator_traits<" + typeName + "> {");
        indentLevel++;
        writeLine("static constexpr bool is_memstruct = true;");
        writeLine("static const char* type_name() { return \"" + escapeCppString(ctx.ID().getText()) + "\"; }");
        indentLevel--;
        writeLine("};");
        write("\n");
        return null;
    }

    @Override
    public Void visitStruct(compilerv1Parser.StructContext ctx) {
        String rawTypeName = ctx.ID().getText();
        String typeName = mapDeclaredType(ctx.ID().getText());
        writeLine("struct " + typeName + renderInheritanceClause(ctx.inheritanceClause()) + renderAttributeSuffix(ctx.attributeBlock()) + " {");
        enclosingTypes.push(typeName);
        indentLevel++;
        writeLine("friend void __apo_gc_trace_value(__apo_gc_tracer& tracer, const " + typeName + "& value);");
        if (optimizationPlan.shouldLowerVectorElement(rawTypeName)) {
            writeLine("friend struct __apo_soa_adapter<" + typeName + ">;");
        }
        String[] currentAccess = {"public"};
        for (compilerv1Parser.StructMemberContext member : ctx.structBody().structMember()) {
            String nextAccess = null;
            if (member.method() != null && member.method().CLSTYPE() != null) {
                nextAccess = member.method().CLSTYPE().getText();
            }
            if (member.field() != null && member.field().CLSTYPE() != null) {
                nextAccess = member.field().CLSTYPE().getText();
            }
            emitAccessLabel(nextAccess, currentAccess);
            if (member.method() != null) {
                visitMethod(member.method());
            } else if (member.field() != null) {
                visitField(member.field());
            } else if (member.templateDecl() != null) {
                visitTemplateDecl(member.templateDecl());
            } else if (member.class_() != null) {
                visitClass(member.class_());
            } else if (member.struct() != null) {
                visitStruct(member.struct());
            }
        }
        indentLevel--;
        enclosingTypes.pop();
        writeLine("};");
        write("\n");
        emitStructTraceHelper(typeName, ctx.structBody().structMember());
        if (optimizationPlan.shouldLowerVectorElement(rawTypeName)) {
            emitStructSoaAdapter(typeName, ctx.structBody().structMember());
        }
        return null;
    }

    @Override
    public Void visitOpstruct(compilerv1Parser.OpstructContext ctx) {
        String typeName = mapDeclaredType(ctx.ID().getText());
        writeLine("struct " + typeName + renderAttributeSuffix(ctx.attributeBlock()) + " {");
        enclosingTypes.push(typeName);
        indentLevel++;
        writeLine("friend void __apo_gc_trace_value(__apo_gc_tracer& tracer, const " + typeName + "& value);");
        for (compilerv1Parser.FieldContext field : ctx.opstructBody().field()) {
            visitField(field);
        }
        indentLevel--;
        enclosingTypes.pop();
        writeLine("};");
        write("\n");
        emitOpstructTraceHelper(typeName, ctx.opstructBody().field());
        return null;
    }

    @Override
    public Void visitTypedefOpstruct(compilerv1Parser.TypedefOpstructContext ctx) {
        if (isTypedefOpstructAlias(ctx)) {
            writeLine("using " + mapDeclaredType(ctx.ID(1).getText()) + " = " + mapDeclaredType(ctx.ID(0).getText()) + ";");
            write("\n");
            return null;
        }

        String typeName = mapDeclaredType(ctx.ID(0).getText());
        writeLine("struct " + typeName + " {");
        indentLevel++;
        writeLine("private:");
        indentLevel++;
        writeLine("struct __inf {");
        writeLine("};");
        writeLine("__inf __state{};");
        indentLevel--;
        writeLine("public:");
        indentLevel--;
        writeLine("};");
        write("\n");
        emitOpstructTraceHelper(typeName, List.of());
        return null;
    }

    @Override
    public Void visitTypedefStruct(compilerv1Parser.TypedefStructContext ctx) {
        visitStruct(ctx.struct());
        writeLine("using " + mapDeclaredType(ctx.ID().getText()) + " = " + mapDeclaredType(ctx.struct().ID().getText()) + ";");
        write("\n");
        return null;
    }

    
}
