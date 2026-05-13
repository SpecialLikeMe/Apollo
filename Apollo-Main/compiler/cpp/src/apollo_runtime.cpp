#include "apollo_runtime.h"

#include <algorithm>
#include <any>
#include <filesystem>
#include <fstream>
#include <memory>
#include <sstream>
#include <unordered_map>
#include <unordered_set>
#include <utility>

#include "antlr4-runtime.h"
#include "compilerv1BaseVisitor.h"
#include "compilerv1Lexer.h"

namespace {

std::string normalizeDirectiveSettingValue(const std::string& rawValue) {
    if (rawValue.size() < 2) {
        return rawValue;
    }
    if ((rawValue.front() == '"' && rawValue.back() == '"') || (rawValue.front() == '\'' && rawValue.back() == '\'')) {
        return rawValue.substr(1, rawValue.size() - 2);
    }
    return rawValue;
}

std::unordered_set<std::string> loadUnsafeFallbackBlockedSymbols() {
    std::unordered_set<std::string> blocked;
    const auto databasePath = std::filesystem::absolute("unsafe_fallback_db.json").lexically_normal();
    std::ifstream input(databasePath, std::ios::binary);
    if (!input) {
        return blocked;
    }

    std::ostringstream builder;
    builder << input.rdbuf();
    const std::string json = builder.str();
    const std::size_t blockedKey = json.find("\"blocked\"");
    if (blockedKey == std::string::npos) {
        return blocked;
    }

    const std::size_t listStart = json.find('[', blockedKey);
    const std::size_t listEnd = listStart == std::string::npos ? std::string::npos : json.find(']', listStart);
    if (listStart == std::string::npos || listEnd == std::string::npos || listEnd <= listStart) {
        return blocked;
    }

    std::size_t cursor = listStart + 1;
    while (cursor < listEnd) {
        const std::size_t itemStart = json.find('"', cursor);
        if (itemStart == std::string::npos || itemStart >= listEnd) {
            break;
        }
        const std::size_t itemEnd = json.find('"', itemStart + 1);
        if (itemEnd == std::string::npos || itemEnd > listEnd) {
            break;
        }
        blocked.insert(json.substr(itemStart + 1, itemEnd - itemStart - 1));
        cursor = itemEnd + 1;
    }
    return blocked;
}

class RuntimeExtensionSurfacePhase final : public ApolloRuntimePhase {
public:
    [[nodiscard]] std::string phaseName() const override {
        return "runtime-extension-surface";
    }

    void execute(ApolloCompilerRuntimeCycle& cycle) const override {
        auto* tree = cycle.tree();
        if (tree == nullptr) {
            return;
        }

        antlr4::ParserRuleContext* communalTypeContext = nullptr;
        bool schedulerDirectiveEnabled = false;
        for (auto* child : tree->children) {
            if (auto* structCtx = dynamic_cast<compilerv1Parser::StructContext*>(child)) {
                if (communalTypeContext == nullptr && structCtx->communalQualifier() != nullptr) {
                    communalTypeContext = structCtx;
                }
                continue;
            }
            if (auto* memstructCtx = dynamic_cast<compilerv1Parser::MemstructContext*>(child)) {
                if (communalTypeContext == nullptr && memstructCtx->communalQualifier() != nullptr) {
                    communalTypeContext = memstructCtx;
                }
                continue;
            }
            if (auto* directive = dynamic_cast<compilerv1Parser::DirectiveContext*>(child)) {
                if (auto* runtimeDirective = directive->runtimeDirective()) {
                    if (runtimeDirective->ID().size() > 1
                        && runtimeDirective->ID(0)->getText() == "scheduler"
                        && runtimeDirective->ID(1)->getText() == "eevf") {
                        schedulerDirectiveEnabled = true;
                    }
                } else if (auto* settingDirective = directive->settingDirective()) {
                    if (settingDirective->ID() != nullptr && settingDirective->settingValue() != nullptr) {
                        std::string value = settingDirective->settingValue()->getText();
                        if (value.size() >= 2
                            && ((value.front() == '"' && value.back() == '"') || (value.front() == '\'' && value.back() == '\''))) {
                            value = value.substr(1, value.size() - 2);
                        }
                        if (settingDirective->ID()->getText() == "scheduler" && value == "eevf") {
                            schedulerDirectiveEnabled = true;
                        }
                    }
                }
            }
        }

        if (communalTypeContext != nullptr && !schedulerDirectiveEnabled) {
            throw ApolloCompilationFailure(
                "Compilation aborted with 1 memory-safety error:\n"
                + cycle.recordRuleDiagnosticPreview("memory-safety", communalTypeContext,
                    "communal types require `#[scheduler(eevf)]`\n"
                    "suggested fix: add `#[scheduler(eevf)]` before declaring `@communal` types"));
        }
    }
};

class FrontendSurfaceValidator final : public compilerv1BaseVisitor {
public:
    explicit FrontendSurfaceValidator(ApolloCompilerRuntimeCycle& cycle)
        : cycle_(cycle), blockedFallbackSymbols_(loadUnsafeFallbackBlockedSymbols()) {
    }

    void validate(compilerv1Parser::ProgramContext* tree) {
        if (tree == nullptr) {
            return;
        }

        collectProgramSurface(tree);
        visit(tree);
        if (diagnostics_.empty()) {
            return;
        }

        std::ostringstream builder;
        builder << "Compilation aborted with " << diagnostics_.size() << " runtime-surface error";
        if (diagnostics_.size() != 1) {
            builder << 's';
        }
        builder << ":\n";
        for (size_t index = 0; index < diagnostics_.size(); ++index) {
            if (index > 0) {
                builder << "\n\n";
            }
            builder << diagnostics_[index];
        }
        throw ApolloCompilationFailure(builder.str());
    }

    std::any visitAutofmtdeclareScope(compilerv1Parser::AutofmtdeclareScopeContext* ctx) override {
        ++autofmtDepth_;
        try {
            std::any result = visitChildren(ctx);
            --autofmtDepth_;
            return result;
        } catch (...) {
            --autofmtDepth_;
            throw;
        }
    }

    std::any visitCscope(compilerv1Parser::CscopeContext* ctx) override {
        ++autoreleasepoolDepth_;
        try {
            std::any result = visitChildren(ctx);
            --autoreleasepoolDepth_;
            return result;
        } catch (...) {
            --autoreleasepoolDepth_;
            throw;
        }
    }

    std::any visitReleaseStmt(compilerv1Parser::ReleaseStmtContext* ctx) override {
        if (autofmtDepth_ == 0) {
            addDiagnostic(ctx, "`@release` is only valid inside `@autofmtdeclare {}` blocks");
        }
        return visitChildren(ctx);
    }

    std::any visitBridgeInit(compilerv1Parser::BridgeInitContext* ctx) override {
        if (autoreleasepoolDepth_ == 0) {
            addDiagnostic(ctx, "@bridge is only valid inside @autoreleasepool blocks");
        }
        return visitChildren(ctx);
    }

    std::any visitRuntimeDirective(compilerv1Parser::RuntimeDirectiveContext* ctx) override {
        if (ctx != nullptr && !ctx->ID().empty()) {
            const std::string policyName = ctx->ID(0)->getText();
            if (!knownRuntimePolicies_.contains(policyName)) {
                addDiagnostic(ctx, "unknown runtime directive `" + policyName + "`");
            } else if (ctx->ID().size() > 1) {
                const std::string value = ctx->ID(1)->getText();
                if (!isAcceptedRuntimePolicyValue(policyName, value)) {
                    addDiagnostic(ctx, "unsupported runtime directive value `" + value + "` for `" + policyName + "`");
                }
            }
        }
        return visitChildren(ctx);
    }

    std::any visitGcDirective(compilerv1Parser::GcDirectiveContext* ctx) override {
        if (ctx != nullptr && ctx->ID() != nullptr) {
            const std::string value = ctx->ID()->getText();
            if (!isAcceptedRuntimePolicyValue("gc", value)) {
                addDiagnostic(ctx, "unsupported gc directive value `" + value + "`");
            }
        }
        return visitChildren(ctx);
    }

    std::any visitBorrowCheckerDirective(compilerv1Parser::BorrowCheckerDirectiveContext* ctx) override {
        if (ctx != nullptr && ctx->ID() != nullptr) {
            const std::string value = ctx->ID()->getText();
            if (!isAcceptedRuntimePolicyValue("borrow_checker", value)) {
                addDiagnostic(ctx, "unsupported borrow checker directive value `" + value + "`");
            }
        }
        return visitChildren(ctx);
    }

    std::any visitTypedefOpstruct(compilerv1Parser::TypedefOpstructContext* ctx) override {
        if (ctx != nullptr && ctx->ID().size() > 1) {
            const std::string targetName = ctx->ID(0)->getText();
            if (!resolvesDeclaredOpstructTarget(targetName)) {
                addDiagnostic(ctx, "typedef opstruct target `" + targetName + "` is not declared");
            }
        }
        return visitChildren(ctx);
    }

    std::any visitSettingDirective(compilerv1Parser::SettingDirectiveContext* ctx) override {
        if (ctx != nullptr && ctx->ID() != nullptr && ctx->settingValue() != nullptr) {
            const std::string key = ctx->ID()->getText();
            if (knownRuntimePolicies_.contains(key) || key == "gc" || key == "gcmode" || key == "borrow_checker" || key == "borrow_check") {
                const std::string value = normalizeDirectiveSettingValue(ctx->settingValue()->getText());
                if (!isAcceptedRuntimePolicyValue(key, value)) {
                    addDiagnostic(ctx, "unsupported runtime setting value `" + value + "` for `" + key + "`");
                }
            }
        }
        return visitChildren(ctx);
    }

    std::any visitInstanceValue(compilerv1Parser::InstanceValueContext* ctx) override {
        if (ctx != nullptr && ctx->allocatorUseSuffix() != nullptr) {
            const std::string typeName = ctx->ID() != nullptr ? ctx->ID()->getText() : std::string();
            if (typeName.empty() || !declaredMemstructs_.contains(typeName)) {
                addDiagnostic(ctx, ".uses(...) is only valid on memstruct values");
            }
        }
        return visitChildren(ctx);
    }

    std::any visitFunctionCall(compilerv1Parser::FunctionCallContext* ctx) override {
        if (fallbackAllowed_ && ctx != nullptr && ctx->ID() != nullptr) {
            const std::string functionName = ctx->ID()->getText();
            if (blockedFallbackSymbols_.contains(functionName) && !declaredCallables_.contains(functionName)) {
                addDiagnostic(ctx, "fallback call to blocked symbol `" + functionName + "` is not allowed");
            }
        }
        return visitChildren(ctx);
    }

private:
    void collectProgramSurface(compilerv1Parser::ProgramContext* tree) {
        for (auto* child : tree->children) {
            if (auto* functionCtx = dynamic_cast<compilerv1Parser::FunctionContext*>(child)) {
                if (functionCtx->ID() != nullptr) {
                    declaredCallables_.insert(functionCtx->ID()->getText());
                }
                continue;
            }
            if (auto* macroCtx = dynamic_cast<compilerv1Parser::MacroContext*>(child)) {
                if (macroCtx->ID() != nullptr) {
                    declaredCallables_.insert(macroCtx->ID()->getText());
                }
                continue;
            }
            if (auto* memstructCtx = dynamic_cast<compilerv1Parser::MemstructContext*>(child)) {
                if (memstructCtx->ID() != nullptr) {
                    declaredMemstructs_.insert(memstructCtx->ID()->getText());
                }
                continue;
            }
            if (auto* opstructCtx = dynamic_cast<compilerv1Parser::OpstructContext*>(child)) {
                if (opstructCtx->ID() != nullptr) {
                    declaredOpstructs_.insert(opstructCtx->ID()->getText());
                }
                continue;
            }
            if (auto* typedefOpstructCtx = dynamic_cast<compilerv1Parser::TypedefOpstructContext*>(child)) {
                if (typedefOpstructCtx->ID().size() > 1) {
                    typedefOpstructAliases_.emplace(typedefOpstructCtx->ID(1)->getText(), typedefOpstructCtx->ID(0)->getText());
                }
                continue;
            }
            if (auto* directiveCtx = dynamic_cast<compilerv1Parser::DirectiveContext*>(child)) {
                if (auto* runtimeDirective = directiveCtx->runtimeDirective()) {
                    if (runtimeDirective->ID().size() > 1
                        && runtimeDirective->ID(0)->getText() == "fallback"
                        && runtimeDirective->ID(1)->getText() == "allow") {
                        fallbackAllowed_ = true;
                    }
                    continue;
                }
                if (auto* settingDirective = directiveCtx->settingDirective()) {
                    if (settingDirective->ID() != nullptr && settingDirective->settingValue() != nullptr) {
                        const std::string key = settingDirective->ID()->getText();
                        const std::string value = normalizeDirectiveSettingValue(settingDirective->settingValue()->getText());
                        if (key == "fallback" && value == "allow") {
                            fallbackAllowed_ = true;
                        }
                    }
                }
            }
        }
    }

    static bool isAcceptedRuntimePolicyValue(const std::string& key, const std::string& value) {
        if (key == "fallback") {
            return value == "allow";
        }
        if (key == "scheduler") {
            return value == "eevf";
        }
        if (key == "macro_mode") {
            return value == "runtime";
        }
        if (key == "gc" || key == "gcmode") {
            return value == "total";
        }
        if (key == "borrow_checker" || key == "borrow_check") {
            return value == "off" || value == "none";
        }
        return false;
    }

    bool resolvesDeclaredOpstructTarget(const std::string& targetName) const {
        if (declaredOpstructs_.contains(targetName)) {
            return true;
        }

        std::unordered_set<std::string> seen;
        std::string current = targetName;
        while (seen.insert(current).second) {
            const auto alias = typedefOpstructAliases_.find(current);
            if (alias == typedefOpstructAliases_.end()) {
                return false;
            }
            current = alias->second;
            if (declaredOpstructs_.contains(current)) {
                return true;
            }
        }
        return false;
    }

    void addDiagnostic(antlr4::ParserRuleContext* ctx, const std::string& message) {
        diagnostics_.push_back(cycle_.recordRuleDiagnosticPreview("runtime-surface", ctx, message));
    }

    ApolloCompilerRuntimeCycle& cycle_;
    std::vector<std::string> diagnostics_;
    std::unordered_set<std::string> declaredCallables_;
    std::unordered_set<std::string> declaredMemstructs_;
    std::unordered_set<std::string> declaredOpstructs_;
    std::unordered_map<std::string, std::string> typedefOpstructAliases_;
    std::unordered_set<std::string> blockedFallbackSymbols_;
    const std::unordered_set<std::string> knownRuntimePolicies_ = {"fallback", "scheduler", "macro_mode", "gc", "gcmode", "borrow_checker", "borrow_check"};
    int autofmtDepth_ = 0;
    int autoreleasepoolDepth_ = 0;
    bool fallbackAllowed_ = false;
};

class FrontendSurfacePhase final : public ApolloRuntimePhase {
public:
    [[nodiscard]] std::string phaseName() const override {
        return "frontend-surface";
    }

    void execute(ApolloCompilerRuntimeCycle& cycle) const override {
        FrontendSurfaceValidator(cycle).validate(cycle.tree());
    }
};

class UnsafeBoundaryValidator final : public compilerv1BaseVisitor {
public:
    explicit UnsafeBoundaryValidator(ApolloCompilerRuntimeCycle& cycle)
        : cycle_(cycle) {
    }

    void validate(compilerv1Parser::ProgramContext* tree) {
        visit(tree);
        if (diagnostics_.empty()) {
            return;
        }

        std::ostringstream builder;
        builder << "Compilation aborted with " << diagnostics_.size() << " memory-safety error";
        if (diagnostics_.size() != 1) {
            builder << 's';
        }
        builder << ":\n";
        for (size_t index = 0; index < diagnostics_.size(); ++index) {
            if (index > 0) {
                builder << "\n\n";
            }
            builder << diagnostics_[index];
        }
        throw ApolloCompilationFailure(builder.str());
    }

    std::any visitUnsafeBlock(compilerv1Parser::UnsafeBlockContext* ctx) override {
        ++unsafeDepth_;
        try {
            std::any result = visitChildren(ctx);
            --unsafeDepth_;
            return result;
        } catch (...) {
            --unsafeDepth_;
            throw;
        }
    }

    std::any visitUnsafeLineStmt(compilerv1Parser::UnsafeLineStmtContext* ctx) override {
        ++unsafeDepth_;
        try {
            std::any result = visitChildren(ctx);
            --unsafeDepth_;
            return result;
        } catch (...) {
            --unsafeDepth_;
            throw;
        }
    }

    std::any visitBypassBlock(compilerv1Parser::BypassBlockContext* ctx) override {
        ++bypassDepth_;
        try {
            std::any result = visitChildren(ctx);
            --bypassDepth_;
            return result;
        } catch (...) {
            --bypassDepth_;
            throw;
        }
    }

    std::any visitInit(compilerv1Parser::InitContext* ctx) override {
        requireUnsafeType(ctx->initCore() != nullptr ? ctx->initCore()->typeRef() : nullptr, ctx,
            "raw pointer declarations are only allowed inside `@unsafe {}` blocks",
            "replace the raw pointer with a safe reference or move the declaration into `@unsafe { ... }`");
        return visitChildren(ctx);
    }

    std::any visitGlobalInit(compilerv1Parser::GlobalInitContext* ctx) override {
        auto* initCore = ctx->init() != nullptr ? ctx->init()->initCore() : nullptr;
        requireUnsafeType(initCore != nullptr ? initCore->typeRef() : nullptr, ctx,
            "raw pointer globals are not allowed in safe Apollo code",
            "replace the global raw pointer with a safe type or isolate raw memory access inside `@unsafe {}` code paths");
        return visitChildren(ctx);
    }

    std::any visitField(compilerv1Parser::FieldContext* ctx) override {
        requireUnsafeType(ctx->typeRef(), ctx,
            "raw pointer fields are not allowed in safe Apollo type definitions",
            "use a reference or safe owning type instead of a raw pointer field");
        return visitChildren(ctx);
    }

    std::any visitParam(compilerv1Parser::ParamContext* ctx) override {
        requireUnsafeType(ctx->typeRef(), ctx,
            "raw pointer parameters are not allowed in safe Apollo function signatures",
            "use a safe reference type or contain raw pointer interop inside `@unsafe {}` code");
        return visitChildren(ctx);
    }

    std::any visitFunction(compilerv1Parser::FunctionContext* ctx) override {
        requireUnsafeReturnType(ctx != nullptr ? ctx->returnType() : nullptr, ctx,
            "raw pointer return types are not allowed in safe Apollo function signatures",
            "return a safe reference or owning type instead of a raw pointer");
        return visitChildren(ctx);
    }

    std::any visitMethod(compilerv1Parser::MethodContext* ctx) override {
        requireUnsafeReturnType(ctx != nullptr ? ctx->returnType() : nullptr, ctx,
            "raw pointer return types are not allowed in safe Apollo method signatures",
            "return a safe reference or owning type instead of a raw pointer");
        return visitChildren(ctx);
    }

    std::any visitMalloc(compilerv1Parser::MallocContext* ctx) override {
        requireUnsafe(ctx,
            "manual allocation is only allowed inside `@unsafe {}` blocks",
            "wrap this allocation in `@unsafe { ... }` or switch to a safe managed value");
        return visitChildren(ctx);
    }

    std::any visitMntDecl(compilerv1Parser::MntDeclContext* ctx) override {
        requireUnsafe(ctx,
            "`mnt` allocation is only allowed inside `@unsafe {}` blocks",
            "wrap this allocation in `@unsafe { ... }` or switch to a safe managed value");
        return visitChildren(ctx);
    }

    std::any visitFree(compilerv1Parser::FreeContext* ctx) override {
        requireUnsafe(ctx,
            "manual release is only allowed inside `@unsafe {}` blocks",
            "wrap this release in `@unsafe { ... }`");
        return visitChildren(ctx);
    }

    std::any visitDelalc(compilerv1Parser::DelalcContext* ctx) override {
        requireUnsafe(ctx,
            "placement reset is only allowed inside `@unsafe {}` blocks",
            "wrap this reset in `@unsafe { ... }`");
        return visitChildren(ctx);
    }

    std::any visitPlcnew(compilerv1Parser::PlcnewContext* ctx) override {
        requireUnsafe(ctx,
            "placement allocation is only allowed inside `@unsafe {}` blocks",
            "wrap this placement allocation in `@unsafe { ... }`");
        return visitChildren(ctx);
    }

    std::any visitPointer(compilerv1Parser::PointerContext* ctx) override {
        requireUnsafe(ctx,
            "raw pointer aliasing is only allowed inside `@unsafe {}` blocks",
            "wrap this pointer operation in `@unsafe { ... }`");
        return visitChildren(ctx);
    }

    std::any visitNativemode(compilerv1Parser::NativemodeContext* ctx) override {
        requireUnsafe(ctx,
            "native inline interop is only allowed inside `@unsafe {}` blocks",
            "wrap this native block in `@unsafe { ... }`");
        return visitChildren(ctx);
    }

    std::any visitInlineForeignBlock(compilerv1Parser::InlineForeignBlockContext* ctx) override {
        requireUnsafe(ctx,
            "inline foreign code is only allowed inside `@unsafe {}` blocks",
            "wrap this inline foreign block in `@unsafe { ... }`");
        return visitChildren(ctx);
    }

    std::any visitDircpp(compilerv1Parser::DircppContext* ctx) override {
        requireUnsafe(ctx,
            "raw native code injection is only allowed inside `@unsafe {}` blocks",
            "wrap this native code block in `@unsafe { ... }`");
        return visitChildren(ctx);
    }

private:
    void requireUnsafeType(compilerv1Parser::TypeRefContext* typeRef, antlr4::ParserRuleContext* ctx,
        const std::string& detail, const std::string& fixHint) {
        if (typeRef == nullptr || unsafeDepth_ > 0 || bypassDepth_ > 0) {
            return;
        }
        for (auto* modifier : typeRef->typeModifier()) {
            if (modifier != nullptr && modifier->getText() == "*") {
                addDiagnostic(ctx, detail + "\nsuggested fix: " + fixHint);
                return;
            }
        }
    }

    void requireUnsafeReturnType(compilerv1Parser::ReturnTypeContext* returnType, antlr4::ParserRuleContext* ctx,
        const std::string& detail, const std::string& fixHint) {
        if (returnType == nullptr || returnType->typeRef() == nullptr) {
            return;
        }
        requireUnsafeType(returnType->typeRef(), ctx, detail, fixHint);
    }

    void requireUnsafe(antlr4::ParserRuleContext* ctx, const std::string& detail, const std::string& fixHint) {
        if (unsafeDepth_ > 0 || bypassDepth_ > 0) {
            return;
        }
        addDiagnostic(ctx, detail + "\nsuggested fix: " + fixHint);
    }

    void addDiagnostic(antlr4::ParserRuleContext* ctx, const std::string& message) {
        diagnostics_.push_back(cycle_.recordRuleDiagnosticPreview("memory-safety", ctx, message));
    }

    ApolloCompilerRuntimeCycle& cycle_;
    std::vector<std::string> diagnostics_;
    int unsafeDepth_ = 0;
    int bypassDepth_ = 0;
};

class UnsafeBoundaryPhase final : public ApolloRuntimePhase {
public:
    [[nodiscard]] std::string phaseName() const override {
        return "unsafe-boundary";
    }

    void execute(ApolloCompilerRuntimeCycle& cycle) const override {
        UnsafeBoundaryValidator(cycle).validate(cycle.tree());
    }
};

class OwnershipValidator final {
public:
    struct AnalysisReport {
        std::vector<std::string> diagnostics;
        std::vector<std::string> warnings;
    };

    explicit OwnershipValidator(ApolloCompilerRuntimeCycle& cycle)
        : cycle_(cycle) {
    }

    AnalysisReport analyze(compilerv1Parser::ProgramContext* tree) {
        if (tree == nullptr) {
            return {};
        }
        collectGlobals(tree);
        collectCommunalTypes(tree);
        collectScheduledEntryFunctions(tree);
        collectFunctions(tree);
        for (auto* child : tree->children) {
            if (auto* functionCtx = dynamic_cast<compilerv1Parser::FunctionContext*>(child)) {
                analyzeFunction(functionCtx);
            }
        }
        return {diagnostics_, warnings_};
    }

private:
    struct SafetyType {
        std::string name;
        int pointerDepth = 0;
        bool reference = false;
    };

    struct FunctionInfo {
        SafetyType returnType;
        std::vector<SafetyType> params;
        std::vector<bool> paramMutable;
        std::unordered_set<size_t> globalEscapeParams;
        int returnedReferenceParamIndex = -1;
        bool ambiguousReferenceReturn = false;
    };

    struct BindingState {
        std::string name;
        SafetyType type;
        bool mutableBinding = false;
        bool moved = false;
        bool inducted = false;
        bool isGlobal = false;
        int ownerScopeId = -1;
        std::string borrowedFrom;
        bool mutablyBorrowedFrom = false;
        bool ambiguousBorrowOrigin = false;
        int sharedBorrowCount = 0;
        std::string mutableBorrowHolder;
        std::string allocatorBindingName;
        antlr4::ParserRuleContext* ctx = nullptr;
    };

    struct State {
        std::vector<std::unordered_map<std::string, BindingState>> scopes;
        std::vector<int> ownerScopes;
        int nextOwnerScopeId = 1;
        bool scheduledTaskContext = false;
    };

    bool isMutableBinding(compilerv1Parser::InitCoreContext* ctx) const {
        return ctx == nullptr || ctx->CONST() == nullptr;
    }

    bool isMutableBinding(compilerv1Parser::ParamContext* ctx) const {
        return ctx == nullptr || ctx->CONST() == nullptr;
    }

    SafetyType typeFromContext(compilerv1Parser::TypeRefContext* ctx) const {
        SafetyType type;
        if (ctx == nullptr) {
            type.name = "auto";
            return type;
        }
        type.name = ctx->typeAtom() != nullptr ? ctx->typeAtom()->getText() : ctx->getText();
        for (auto* modifier : ctx->typeModifier()) {
            if (modifier == nullptr) {
                continue;
            }
            const auto text = modifier->getText();
            if (text == "*") {
                ++type.pointerDepth;
            } else if (text == "&") {
                type.reference = true;
            }
        }
        return type;
    }

    SafetyType typeFromReturn(compilerv1Parser::ReturnTypeContext* ctx) const {
        if (ctx == nullptr || ctx->typeRef() == nullptr) {
            return {"void", 0, false};
        }
        return typeFromContext(ctx->typeRef());
    }

    bool isPrimitive(const SafetyType& type) const {
        return type.name == "i16" || type.name == "i32" || type.name == "i64"
            || type.name == "u16" || type.name == "u32" || type.name == "u64"
            || type.name == "int" || type.name == "short" || type.name == "long"
            || type.name == "float" || type.name == "double" || type.name == "f64"
            || type.name == "bool" || type.name == "void";
    }

    bool isMoveTrackedType(const SafetyType& type) const {
        return !type.reference && type.pointerDepth == 0 && !isPrimitive(type) && type.name != "fn" && type.name != "auto";
    }

    void collectGlobals(compilerv1Parser::ProgramContext* tree) {
        globals_.clear();
        for (auto* globalCtx : tree->globalInit()) {
            auto* initCore = globalCtx->init() != nullptr ? globalCtx->init()->initCore() : nullptr;
            if (initCore == nullptr) {
                continue;
            }
            BindingState binding;
            binding.name = initCore->ID()->getText();
            binding.type = typeFromContext(initCore->typeRef());
            binding.mutableBinding = isMutableBinding(initCore);
            binding.isGlobal = true;
            binding.ownerScopeId = -1;
            binding.ctx = globalCtx;
            globals_[binding.name] = std::move(binding);
        }
    }

    void collectFunctions(compilerv1Parser::ProgramContext* tree) {
        functions_.clear();
        for (auto* child : tree->children) {
            if (auto* functionCtx = dynamic_cast<compilerv1Parser::FunctionContext*>(child)) {
                FunctionInfo info;
                info.returnType = typeFromReturn(functionCtx->returnType());
                std::unordered_map<std::string, size_t> parameterIndices;
                if (functionCtx->params() != nullptr) {
                    size_t index = 0;
                    for (auto* param : functionCtx->params()->param()) {
                        info.params.push_back(typeFromContext(param->typeRef()));
                        info.paramMutable.push_back(isMutableBinding(param));
                        parameterIndices[param->ID()->getText()] = index++;
                    }
                }
                collectGlobalEscapingParameters(functionCtx->block(), parameterIndices, info.globalEscapeParams);
                collectReturnedReferenceParameters(functionCtx->block(), parameterIndices, info);
                functions_[functionCtx->ID()->getText()] = std::move(info);
            }
        }
    }

    void collectReturnedReferenceParameters(compilerv1Parser::BlockContext* block,
        const std::unordered_map<std::string, size_t>& parameterIndices,
        FunctionInfo& info) {
        if (block == nullptr || !info.returnType.reference) {
            return;
        }
        std::unordered_set<size_t> returnedIndices;
        collectReturnedReferenceParameters(block, parameterIndices, returnedIndices, info.ambiguousReferenceReturn);
        if (info.ambiguousReferenceReturn) {
            return;
        }
        if (returnedIndices.size() == 1) {
            info.returnedReferenceParamIndex = static_cast<int>(*returnedIndices.begin());
        } else if (returnedIndices.size() > 1) {
            info.ambiguousReferenceReturn = true;
        }
    }

    void collectReturnedReferenceParameters(compilerv1Parser::BlockContext* block,
        const std::unordered_map<std::string, size_t>& parameterIndices,
        std::unordered_set<size_t>& returnedIndices,
        bool& ambiguous) {
        if (block == nullptr || ambiguous) {
            return;
        }
        for (auto* child : block->children) {
            if (auto* returnStmt = dynamic_cast<compilerv1Parser::ReturnStmtContext*>(child)) {
                const auto direct = directVariableName(returnStmt->expression());
                const auto found = parameterIndices.find(direct);
                if (found != parameterIndices.end()) {
                    returnedIndices.insert(found->second);
                    if (returnedIndices.size() > 1) {
                        ambiguous = true;
                        return;
                    }
                }
                continue;
            }
            auto* statement = dynamic_cast<compilerv1Parser::StatementContext*>(child);
            if (statement == nullptr) {
                continue;
            }
            if (statement->block() != nullptr) {
                collectReturnedReferenceParameters(statement->block(), parameterIndices, returnedIndices, ambiguous);
            }
            if (statement->ifStatement() != nullptr) {
                for (auto* branch : statement->ifStatement()->block()) {
                    collectReturnedReferenceParameters(branch, parameterIndices, returnedIndices, ambiguous);
                }
            }
            if (statement->whileStatement() != nullptr) {
                collectReturnedReferenceParameters(statement->whileStatement()->block(), parameterIndices, returnedIndices, ambiguous);
            }
            if (ambiguous) {
                return;
            }
        }
    }

    void collectCommunalTypes(compilerv1Parser::ProgramContext* tree) {
        communalTypes_.clear();
        if (tree == nullptr) {
            return;
        }
        for (auto* child : tree->children) {
            if (auto* structCtx = dynamic_cast<compilerv1Parser::StructContext*>(child)) {
                if (structCtx->communalQualifier() != nullptr) {
                    communalTypes_.insert(structCtx->ID()->getText());
                }
            } else if (auto* memstructCtx = dynamic_cast<compilerv1Parser::MemstructContext*>(child)) {
                if (memstructCtx->communalQualifier() != nullptr) {
                    communalTypes_.insert(memstructCtx->ID()->getText());
                }
            }
        }
    }

    void collectScheduledEntryFunctions(compilerv1Parser::ProgramContext* tree) {
        scheduledEntryFunctions_.clear();
        if (tree == nullptr) {
            return;
        }
        for (auto* child : tree->children) {
            if (auto* functionCtx = dynamic_cast<compilerv1Parser::FunctionContext*>(child)) {
                collectScheduledEntryFunctions(functionCtx->block());
            }
        }
    }

    void collectScheduledEntryFunctions(compilerv1Parser::BlockContext* block) {
        if (block == nullptr) {
            return;
        }
        for (auto* child : block->children) {
            auto* statement = dynamic_cast<compilerv1Parser::StatementContext*>(child);
            if (statement == nullptr) {
                continue;
            }
            if (statement->asyncCall() != nullptr && statement->asyncCall()->functionCall() != nullptr && statement->asyncCall()->functionCall()->ID() != nullptr) {
                scheduledEntryFunctions_.insert(statement->asyncCall()->functionCall()->ID()->getText());
            }
            if (statement->thread() != nullptr && statement->thread()->functionCall() != nullptr && statement->thread()->functionCall()->ID() != nullptr) {
                scheduledEntryFunctions_.insert(statement->thread()->functionCall()->ID()->getText());
            }
            if (statement->unsafeBlock() != nullptr) {
                collectScheduledEntryFunctions(statement->unsafeBlock()->block());
            }
            if (statement->autofmtdeclareScope() != nullptr) {
                collectScheduledEntryFunctions(statement->autofmtdeclareScope()->block());
            }
        }
    }

    void collectGlobalEscapingParameters(compilerv1Parser::BlockContext* block,
        const std::unordered_map<std::string, size_t>& parameterIndices,
        std::unordered_set<size_t>& escapingParameters) {
        if (block == nullptr) {
            return;
        }
        for (auto* child : block->children) {
            auto* statement = dynamic_cast<compilerv1Parser::StatementContext*>(child);
            if (statement == nullptr) {
                continue;
            }
            if (statement->assignment() != nullptr) {
                auto* core = statement->assignment()->assignmentCore();
                if (core != nullptr && core->assignTarget() != nullptr && globals_.contains(core->assignTarget()->ID()->getText())) {
                    const auto direct = directVariableName(core->expression());
                    const auto found = parameterIndices.find(direct);
                    if (found != parameterIndices.end()) {
                        escapingParameters.insert(found->second);
                    }
                }
            }
            if (statement->unsafeBlock() != nullptr) {
                collectGlobalEscapingParameters(statement->unsafeBlock()->block(), parameterIndices, escapingParameters);
            }
            if (statement->autofmtdeclareScope() != nullptr) {
                collectGlobalEscapingParameters(statement->autofmtdeclareScope()->block(), parameterIndices, escapingParameters);
            }
        }
    }

    void analyzeFunction(compilerv1Parser::FunctionContext* ctx) {
        State state;
        state.scheduledTaskContext = scheduledEntryFunctions_.contains(ctx->ID()->getText());
        state.scopes.emplace_back();
        for (const auto& entry : globals_) {
            state.scopes.back().insert(entry);
        }
        if (ctx->params() != nullptr) {
            for (auto* param : ctx->params()->param()) {
                BindingState binding;
                binding.name = param->ID()->getText();
                binding.type = typeFromContext(param->typeRef());
                binding.mutableBinding = isMutableBinding(param);
                binding.ownerScopeId = -1;
                binding.ctx = param;
                state.scopes.back()[binding.name] = std::move(binding);
            }
        }
        analyzeBlock(ctx->block(), state, typeFromReturn(ctx->returnType()));
    }

    BindingState* resolve(State& state, const std::string& name) {
        for (auto it = state.scopes.rbegin(); it != state.scopes.rend(); ++it) {
            const auto found = it->find(name);
            if (found != it->end()) {
                return &found->second;
            }
        }
        return nullptr;
    }

    int currentOwnerScope(const State& state) const {
        if (state.ownerScopes.empty()) {
            return -1;
        }
        return state.ownerScopes.back();
    }

    std::string directVariableName(antlr4::ParserRuleContext* ctx) const {
        if (ctx == nullptr) {
            return {};
        }
        if (auto* primary = dynamic_cast<compilerv1Parser::PrimaryContext*>(ctx)) {
            if (primary->ID() != nullptr) {
                return primary->ID()->getText();
            }
            if (primary->borrowExpr() != nullptr && primary->borrowExpr()->ID() != nullptr) {
                return primary->borrowExpr()->ID()->getText();
            }
            if (primary->expression() != nullptr) {
                return directVariableName(primary->expression());
            }
            return {};
        }
        if (ctx->children.size() == 1) {
            if (auto* childRule = dynamic_cast<antlr4::ParserRuleContext*>(ctx->children.front())) {
                return directVariableName(childRule);
            }
        }
        return {};
    }

    void addDiagnostic(antlr4::ParserRuleContext* ctx, const std::string& message) {
        diagnostics_.push_back(cycle_.recordRuleDiagnosticPreview("memory-safety", ctx, message));
    }

    void ensureReadable(BindingState* binding, antlr4::ParserRuleContext* ctx) {
        if (binding == nullptr) {
            return;
        }
        if (binding->type.reference && binding->ambiguousBorrowOrigin) {
            addDiagnostic(ctx, "cannot use reference binding `" + binding->name + "` after control-flow merge with incompatible borrow origins");
            return;
        }
        if (binding->moved) {
            addDiagnostic(ctx, "cannot use `" + binding->name + "` after it has been moved");
        }
        if (!binding->mutableBorrowHolder.empty()) {
            addDiagnostic(ctx, "cannot use `" + binding->name + "` while it is mutably borrowed");
        }
    }

    bool isCommunalType(const SafetyType& type) const {
        return communalTypes_.contains(type.name);
    }

    void ensureCommunalReadAllowed(BindingState* binding, antlr4::ParserRuleContext* ctx, const State& state) {
        if (binding == nullptr || !isCommunalType(binding->type) || state.scheduledTaskContext) {
            return;
        }
        addDiagnostic(ctx, "cannot access communal binding `" + binding->name + "` outside scheduled task context");
    }

    void clearReferenceBinding(BindingState* binding) {
        if (binding == nullptr) {
            return;
        }
        binding->borrowedFrom.clear();
        binding->mutablyBorrowedFrom = false;
        binding->ambiguousBorrowOrigin = false;
    }

    void releaseBorrow(State& state, BindingState* binding) {
        if (binding == nullptr || binding->borrowedFrom.empty()) {
            return;
        }
        if (auto* source = resolve(state, binding->borrowedFrom)) {
            if (binding->mutablyBorrowedFrom) {
                if (source->mutableBorrowHolder == binding->name) {
                    source->mutableBorrowHolder.clear();
                }
            } else if (source->sharedBorrowCount > 0) {
                --source->sharedBorrowCount;
            }
        }
        clearReferenceBinding(binding);
    }

    void releaseActiveReferenceBorrows(State& state) {
        for (auto& scope : state.scopes) {
            for (auto& entry : scope) {
                if (entry.second.type.reference) {
                    releaseBorrow(state, &entry.second);
                }
            }
        }
    }

    std::string referenceSourceVariableName(antlr4::ParserRuleContext* ctx, State& state) {
        if (ctx == nullptr) {
            return {};
        }
        const auto direct = directVariableName(ctx);
        if (!direct.empty()) {
            return direct;
        }
        if (auto* functionCall = dynamic_cast<compilerv1Parser::FunctionCallContext*>(ctx)) {
            const auto found = functions_.find(functionCall->ID() != nullptr ? functionCall->ID()->getText() : std::string());
            if (found == functions_.end() || !found->second.returnType.reference || found->second.ambiguousReferenceReturn || found->second.returnedReferenceParamIndex < 0 || functionCall->args() == nullptr) {
                return {};
            }
            const auto& arguments = functionCall->args()->expression();
            const auto index = static_cast<size_t>(found->second.returnedReferenceParamIndex);
            if (index >= arguments.size()) {
                return {};
            }
            return referenceSourceVariableName(arguments[index], state);
        }
        if (ctx->children.size() == 1) {
            if (auto* childRule = dynamic_cast<antlr4::ParserRuleContext*>(ctx->children.front())) {
                return referenceSourceVariableName(childRule, state);
            }
        }
        return {};
    }

    compilerv1Parser::FunctionCallContext* functionCallFromContext(antlr4::ParserRuleContext* ctx) const {
        if (ctx == nullptr) {
            return nullptr;
        }
        if (auto* functionCall = dynamic_cast<compilerv1Parser::FunctionCallContext*>(ctx)) {
            return functionCall;
        }
        if (ctx->children.size() == 1) {
            if (auto* childRule = dynamic_cast<antlr4::ParserRuleContext*>(ctx->children.front())) {
                return functionCallFromContext(childRule);
            }
        }
        return nullptr;
    }

    void bindReferenceBinding(BindingState& binding, const std::string& sourceName, State& state, antlr4::ParserRuleContext* ctx) {
        auto* source = resolve(state, sourceName);
        if (source == nullptr) {
            clearReferenceBinding(&binding);
            return;
        }
        binding.ambiguousBorrowOrigin = false;
        if (binding.mutableBinding) {
            ensureMutableBorrowable(source, ctx);
            source->mutableBorrowHolder = binding.name;
            binding.borrowedFrom = source->name;
            binding.mutablyBorrowedFrom = true;
        } else {
            ensureSharedBorrowable(source, ctx);
            ++source->sharedBorrowCount;
            binding.borrowedFrom = source->name;
            binding.mutablyBorrowedFrom = false;
        }
    }

    void mergeReferenceBindingState(BindingState& target, BindingState* left, BindingState* right) {
        const bool leftAmbiguous = left != nullptr && left->ambiguousBorrowOrigin;
        const bool rightAmbiguous = right != nullptr && right->ambiguousBorrowOrigin;
        if (leftAmbiguous || rightAmbiguous) {
            clearReferenceBinding(&target);
            target.ambiguousBorrowOrigin = true;
            return;
        }

        const std::string leftBorrowedFrom = left != nullptr ? left->borrowedFrom : std::string();
        const std::string rightBorrowedFrom = right != nullptr ? right->borrowedFrom : std::string();
        const bool leftMutable = left != nullptr && left->mutablyBorrowedFrom;
        const bool rightMutable = right != nullptr && right->mutablyBorrowedFrom;
        if (leftBorrowedFrom == rightBorrowedFrom && (leftBorrowedFrom.empty() || leftMutable == rightMutable)) {
            target.borrowedFrom = leftBorrowedFrom;
            target.mutablyBorrowedFrom = !leftBorrowedFrom.empty() && leftMutable;
            target.ambiguousBorrowOrigin = false;
            return;
        }

        clearReferenceBinding(&target);
        target.ambiguousBorrowOrigin = true;
    }

    void rebuildBorrowRelationships(State& state) {
        for (auto& scope : state.scopes) {
            for (auto& entry : scope) {
                entry.second.sharedBorrowCount = 0;
                entry.second.mutableBorrowHolder.clear();
            }
        }
        for (auto& scope : state.scopes) {
            for (auto& entry : scope) {
                auto& binding = entry.second;
                if (!binding.type.reference || binding.borrowedFrom.empty() || binding.ambiguousBorrowOrigin) {
                    continue;
                }
                if (auto* source = resolve(state, binding.borrowedFrom)) {
                    if (binding.mutablyBorrowedFrom) {
                        source->mutableBorrowHolder = binding.name;
                    } else {
                        ++source->sharedBorrowCount;
                    }
                }
            }
        }
    }

    void mergeState(State& target, const State& left, const State& right) {
        for (size_t scopeIndex = 0; scopeIndex < target.scopes.size(); ++scopeIndex) {
            for (auto& entry : target.scopes[scopeIndex]) {
                auto* leftBinding = scopeIndex < left.scopes.size() ? const_cast<BindingState*>([&]() -> const BindingState* {
                    const auto found = left.scopes[scopeIndex].find(entry.first);
                    return found != left.scopes[scopeIndex].end() ? &found->second : nullptr;
                }()) : nullptr;
                auto* rightBinding = scopeIndex < right.scopes.size() ? const_cast<BindingState*>([&]() -> const BindingState* {
                    const auto found = right.scopes[scopeIndex].find(entry.first);
                    return found != right.scopes[scopeIndex].end() ? &found->second : nullptr;
                }()) : nullptr;
                entry.second.moved = (leftBinding != nullptr && leftBinding->moved) || (rightBinding != nullptr && rightBinding->moved);
                if (entry.second.type.reference) {
                    mergeReferenceBindingState(entry.second, leftBinding, rightBinding);
                } else {
                    entry.second.ambiguousBorrowOrigin = false;
                }
            }
        }
        rebuildBorrowRelationships(target);
    }

    void collectReadNames(antlr4::tree::ParseTree* node, std::vector<std::string>& names) const {
        if (node == nullptr) {
            return;
        }
        if (auto* functionCall = dynamic_cast<compilerv1Parser::FunctionCallContext*>(node)) {
            if (functionCall->args() != nullptr) {
                for (auto* expression : functionCall->args()->expression()) {
                    collectReadNames(expression, names);
                }
            }
            return;
        }
        if (auto* memberAccess = dynamic_cast<compilerv1Parser::MemberaccessContext*>(node)) {
            if (memberAccess->accessBase() != nullptr && memberAccess->accessBase()->ID() != nullptr) {
                names.push_back(memberAccess->accessBase()->ID()->getText());
            }
            if (memberAccess->functionCall() != nullptr && memberAccess->functionCall()->args() != nullptr) {
                for (auto* expression : memberAccess->functionCall()->args()->expression()) {
                    collectReadNames(expression, names);
                }
            }
            return;
        }
        if (auto* indexedAccess = dynamic_cast<compilerv1Parser::IndexedAccessContext*>(node)) {
            names.push_back(indexedAccess->ID()->getText());
            for (auto* key : indexedAccess->accessKey()) {
                if (key->expression() != nullptr) {
                    collectReadNames(key->expression(), names);
                }
            }
            return;
        }
        if (auto* primary = dynamic_cast<compilerv1Parser::PrimaryContext*>(node)) {
            if (primary->ID() != nullptr) {
                names.push_back(primary->ID()->getText());
                return;
            }
        }
        for (auto* child : node->children) {
            collectReadNames(child, names);
        }
    }

    void analyzeExpressionReads(antlr4::ParserRuleContext* ctx, State& state, bool enforceCommunalReads = true) {
        std::vector<std::string> names;
        collectReadNames(ctx, names);
        for (const auto& name : names) {
            if (auto* binding = resolve(state, name)) {
                ensureReadable(binding, ctx);
                if (enforceCommunalReads) {
                    ensureCommunalReadAllowed(binding, ctx, state);
                }
            }
        }
    }

    void markMovedIfNeeded(BindingState* binding) {
        if (binding != nullptr && isMoveTrackedType(binding->type)) {
            if (binding->sharedBorrowCount > 0) {
                return;
            }
            if (!binding->mutableBorrowHolder.empty()) {
                return;
            }
            binding->moved = true;
        }
    }

    BindingState* resolveBorrowSource(State& state, BindingState* binding) {
        if (binding == nullptr) {
            return nullptr;
        }
        if (!binding->borrowedFrom.empty()) {
            if (auto* source = resolve(state, binding->borrowedFrom)) {
                return source;
            }
        }
        return binding;
    }

    void ensureSharedBorrowable(BindingState* binding, antlr4::ParserRuleContext* ctx) {
        ensureReadable(binding, ctx);
        if (binding != nullptr && !binding->mutableBorrowHolder.empty()) {
            addDiagnostic(ctx, "cannot immutably borrow `" + binding->name + "` while it is mutably borrowed");
        }
    }

    void ensureMutableBorrowable(BindingState* binding, antlr4::ParserRuleContext* ctx) {
        if (binding == nullptr) {
            return;
        }
        ensureReadable(binding, ctx);
        if (!binding->mutableBinding) {
            addDiagnostic(ctx, "cannot mutably borrow immutable binding `" + binding->name + "`\nsuggested fix: mark `" + binding->name + "` as `nconst` before binding a mutable reference to it");
        }
        if (binding->sharedBorrowCount > 0) {
            addDiagnostic(ctx, "cannot mutably borrow `" + binding->name + "` while shared borrows are active");
        }
        if (!binding->mutableBorrowHolder.empty()) {
            addDiagnostic(ctx, "cannot mutably borrow `" + binding->name + "` more than once at a time");
        }
    }

    bool requiresAllocatorLifetimeCheck(BindingState* binding) const {
        if (binding == nullptr) {
            return false;
        }
        if (binding->isGlobal) {
            return false;
        }
        if (binding->ctx != nullptr) {
            if (dynamic_cast<compilerv1Parser::InitContext*>(binding->ctx) != nullptr || dynamic_cast<compilerv1Parser::EasyInitContext*>(binding->ctx) != nullptr) {
                return true;
            }
            if (dynamic_cast<compilerv1Parser::ParamContext*>(binding->ctx) != nullptr) {
                return !binding->type.reference;
            }
        }
        return false;
    }

    std::string allocatorDependencyName(antlr4::ParserRuleContext* ctx, State& state) {
        if (ctx == nullptr) {
            return {};
        }
        const auto direct = directVariableName(ctx);
        if (!direct.empty()) {
            if (auto* source = resolve(state, direct); source != nullptr && !source->allocatorBindingName.empty()) {
                return source->allocatorBindingName;
            }
        }
        if (auto* instanceValue = dynamic_cast<compilerv1Parser::InstanceValueContext*>(ctx)) {
            if (instanceValue->allocatorUseSuffix() != nullptr && instanceValue->allocatorUseSuffix()->expression() != nullptr) {
                return directVariableName(instanceValue->allocatorUseSuffix()->expression());
            }
        }
        for (auto* child : ctx->children) {
            if (auto* childRule = dynamic_cast<antlr4::ParserRuleContext*>(child)) {
                const auto dependency = allocatorDependencyName(childRule, state);
                if (!dependency.empty()) {
                    return dependency;
                }
            }
        }
        return {};
    }

    void bindAllocatorDependency(antlr4::ParserRuleContext* expression, BindingState& target, State& state) {
        target.allocatorBindingName = allocatorDependencyName(expression, state);
    }

    void rejectAllocatorEscape(antlr4::ParserRuleContext* expression, antlr4::ParserRuleContext* ctx, State& state, const std::string& action) {
        const auto allocatorName = allocatorDependencyName(expression, state);
        if (allocatorName.empty()) {
            return;
        }
        auto* allocatorBinding = resolve(state, allocatorName);
        if (!requiresAllocatorLifetimeCheck(allocatorBinding)) {
            return;
        }
        addDiagnostic(ctx, "cannot " + action + " because allocator `" + allocatorBinding->name + "` does not live long enough");
    }

    SafetyType inferExpressionType(antlr4::ParserRuleContext* ctx, State& state) {
        if (ctx == nullptr) {
            return {"auto", 0, false};
        }
        const auto direct = directVariableName(ctx);
        if (!direct.empty()) {
            if (auto* binding = resolve(state, direct)) {
                return binding->type;
            }
        }
        const auto text = ctx->getText();
        if (text.size() >= 2 && text.front() == '"' && text.back() == '"') {
            return {"str", 0, false};
        }
        const auto brace = text.find('{');
        if (brace != std::string::npos && !text.empty() && text.back() == '}') {
            return {text.substr(0, brace), 0, false};
        }
        return {"auto", 0, false};
    }

    void exitOwnerScope(State& state, int ownerScopeId) {
        for (auto scopeIt = state.scopes.rbegin(); scopeIt != state.scopes.rend(); ++scopeIt) {
            for (auto& entry : *scopeIt) {
                auto& binding = entry.second;
                if (binding.ownerScopeId == ownerScopeId) {
                    if (!binding.inducted
                        && !binding.moved
                        && binding.allocatorBindingName == binding.name
                        && (dynamic_cast<compilerv1Parser::MallocContext*>(binding.ctx) != nullptr
                            || dynamic_cast<compilerv1Parser::PlcnewContext*>(binding.ctx) != nullptr)) {
                        warnings_.push_back(cycle_.recordRuleWarningPreview("memory-leak",
                            binding.ctx,
                            "potential leak: manual allocation `" + binding.name + "` exits scope without release"));
                    }
                    if (binding.inducted) {
                        binding.moved = true;
                    }
                    binding.ownerScopeId = -1;
                    binding.inducted = false;
                }
            }
        }
    }

    void analyzeReturn(compilerv1Parser::ReturnStmtContext* ctx, State& state, const SafetyType& returnType) {
        if (ctx->expression() == nullptr) {
            return;
        }
        rejectAllocatorEscape(ctx->expression(), ctx, state, "return allocator-backed value from this function");
        analyzeExpressionReads(ctx->expression(), state);
        const auto direct = directVariableName(ctx->expression());
        if (direct.empty()) {
            return;
        }
        auto* binding = resolve(state, direct);
        if (binding == nullptr) {
            return;
        }
        if (binding->ownerScopeId != -1) {
            addDiagnostic(ctx, "cannot return owner-managed binding `" + binding->name + "` from `@autofmtdeclare` scope without `@release " + binding->name + ";`");
            return;
        }
        if (returnType.reference) {
            if (!binding->isGlobal && std::find_if(state.scopes.front().begin(), state.scopes.front().end(), [&](const auto& entry) { return entry.first == binding->name; }) == state.scopes.front().end()) {
                addDiagnostic(ctx, "cannot return a reference to local binding `" + binding->name + "` because it does not live long enough");
                return;
            }
            if (!binding->isGlobal && binding->ctx != nullptr && dynamic_cast<compilerv1Parser::ParamContext*>(binding->ctx) != nullptr && !binding->type.reference) {
                addDiagnostic(ctx, "cannot return a reference to by-value parameter `" + binding->name + "` because it does not live long enough");
            }
        }
    }

    void analyzeFunctionCall(compilerv1Parser::FunctionCallContext* ctx, State& state, bool asyncBoundary, bool threadBoundary) {
        if (ctx == nullptr) {
            return;
        }
        analyzeExpressionReads(ctx, state, !asyncBoundary && !threadBoundary);
        const auto functionName = ctx->ID() != nullptr ? ctx->ID()->getText() : std::string();
        const auto infoIt = functions_.find(functionName);
        if (ctx->args() == nullptr) {
            return;
        }
        const auto& arguments = ctx->args()->expression();
        for (size_t index = 0; index < arguments.size(); ++index) {
            const auto direct = directVariableName(arguments[index]);
            if (direct.empty()) {
                continue;
            }
            auto* binding = resolve(state, direct);
            if (binding == nullptr) {
                continue;
            }
            if (asyncBoundary) {
                rejectAllocatorEscape(arguments[index], ctx, state, "pass allocator-backed value across async call boundary");
            }
            if (threadBoundary) {
                rejectAllocatorEscape(arguments[index], ctx, state, "pass allocator-backed value across thread boundary");
            }
            if (binding->ownerScopeId != -1 && asyncBoundary) {
                addDiagnostic(ctx, "cannot pass owner-managed binding `" + binding->name + "` across async call boundary without `@release " + binding->name + ";`");
                continue;
            }
            if (binding->ownerScopeId != -1 && threadBoundary) {
                addDiagnostic(ctx, "cannot pass owner-managed binding `" + binding->name + "` across thread boundary without `@release " + binding->name + ";`");
                continue;
            }
            if (binding->ownerScopeId != -1 && infoIt != functions_.end() && infoIt->second.globalEscapeParams.contains(index)) {
                addDiagnostic(ctx, "cannot pass owner-managed binding `" + binding->name + "` to `" + functionName + "` because it may assign the value to a global without `@release " + binding->name + ";`");
                continue;
            }
            if (infoIt != functions_.end() && index < infoIt->second.params.size() && infoIt->second.params[index].reference) {
                if (binding->type.reference) {
                    const bool wantsMutable = index < infoIt->second.paramMutable.size() && infoIt->second.paramMutable[index];
                    if ((wantsMutable && binding->mutablyBorrowedFrom) || (!wantsMutable && !binding->mutablyBorrowedFrom)) {
                        releaseBorrow(state, binding);
                        continue;
                    }
                }
                auto* source = resolveBorrowSource(state, binding);
                if (index < infoIt->second.paramMutable.size() && infoIt->second.paramMutable[index]) {
                    ensureMutableBorrowable(source, ctx);
                } else {
                    ensureSharedBorrowable(source, ctx);
                }
                if (binding->type.reference) {
                    releaseBorrow(state, binding);
                }
                continue;
            }
            if (infoIt != functions_.end() && index < infoIt->second.params.size() && isMoveTrackedType(infoIt->second.params[index]) && !infoIt->second.params[index].reference) {
                markMovedIfNeeded(binding);
            }
        }
    }

    bool isLambdaLocal(const std::vector<std::unordered_set<std::string>>& localScopes, const std::string& name) const {
        for (auto it = localScopes.rbegin(); it != localScopes.rend(); ++it) {
            if (it->contains(name)) {
                return true;
            }
        }
        return false;
    }

    void collectLambdaManagedCaptures(antlr4::ParserRuleContext* expression, State& state,
        const std::vector<std::unordered_set<std::string>>& localScopes,
        std::string& capturedName) {
        if (!capturedName.empty()) {
            return;
        }
        std::vector<std::string> names;
        collectReadNames(expression, names);
        for (const auto& name : names) {
            if (isLambdaLocal(localScopes, name)) {
                continue;
            }
            if (auto* binding = resolve(state, name); binding != nullptr && binding->ownerScopeId != -1) {
                capturedName = name;
                return;
            }
        }
    }

    void collectLambdaManagedCaptures(compilerv1Parser::BlockContext* block, State& state,
        std::vector<std::unordered_set<std::string>>& localScopes,
        std::string& capturedName) {
        if (block == nullptr || !capturedName.empty()) {
            return;
        }
        localScopes.emplace_back();
        for (auto* child : block->children) {
            if (auto* statement = dynamic_cast<compilerv1Parser::StatementContext*>(child)) {
                if (statement->init() != nullptr && statement->init()->initCore() != nullptr) {
                    collectLambdaManagedCaptures(statement->init()->initCore()->expression(), state, localScopes, capturedName);
                    localScopes.back().insert(statement->init()->initCore()->ID()->getText());
                    continue;
                }
                if (statement->easyInit() != nullptr) {
                    collectLambdaManagedCaptures(statement->easyInit()->expression(), state, localScopes, capturedName);
                    localScopes.back().insert(statement->easyInit()->ID()->getText());
                    continue;
                }
                if (statement->assignment() != nullptr) {
                    collectLambdaManagedCaptures(statement->assignment()->assignmentCore()->expression(), state, localScopes, capturedName);
                    continue;
                }
                if (statement->functionCall() != nullptr) {
                    collectLambdaManagedCaptures(statement->functionCall(), state, localScopes, capturedName);
                    continue;
                }
                if (statement->memberaccess() != nullptr) {
                    collectLambdaManagedCaptures(statement->memberaccess(), state, localScopes, capturedName);
                    continue;
                }
                if (statement->unsafeBlock() != nullptr) {
                    collectLambdaManagedCaptures(statement->unsafeBlock()->block(), state, localScopes, capturedName);
                    continue;
                }
                if (statement->autofmtdeclareScope() != nullptr) {
                    collectLambdaManagedCaptures(statement->autofmtdeclareScope()->block(), state, localScopes, capturedName);
                    continue;
                }
            }
            if (auto* returnStmt = dynamic_cast<compilerv1Parser::ReturnStmtContext*>(child)) {
                collectLambdaManagedCaptures(returnStmt->expression(), state, localScopes, capturedName);
            }
        }
        localScopes.pop_back();
    }

    void analyzeLambdaCapture(compilerv1Parser::LambdaContext* ctx, State& state) {
        if (ctx == nullptr || ctx->lambdaDefinition() == nullptr) {
            return;
        }
        compilerv1Parser::ParamsContext* params = nullptr;
        compilerv1Parser::BlockContext* block = nullptr;
        if (ctx->lambdaDefinition()->function() != nullptr) {
            params = ctx->lambdaDefinition()->function()->params();
            block = ctx->lambdaDefinition()->function()->block();
        } else if (ctx->lambdaDefinition()->lambdaLiteral() != nullptr) {
            params = ctx->lambdaDefinition()->lambdaLiteral()->params();
            block = ctx->lambdaDefinition()->lambdaLiteral()->block();
        }
        std::vector<std::unordered_set<std::string>> localScopes;
        localScopes.emplace_back();
        if (params != nullptr) {
            for (auto* param : params->param()) {
                localScopes.back().insert(param->ID()->getText());
            }
        }
        std::string capturedName;
        collectLambdaManagedCaptures(block, state, localScopes, capturedName);
        if (!capturedName.empty()) {
            addDiagnostic(ctx, "lambda `" + ctx->ID()->getText() + "` cannot capture owner-managed binding `" + capturedName + "` without `@release " + capturedName + ";`");
        }
    }

    void analyzeAssignment(compilerv1Parser::AssignmentContext* ctx, State& state) {
        auto* core = ctx->assignmentCore();
        if (core == nullptr || core->assignTarget() == nullptr) {
            return;
        }
        const auto targetName = core->assignTarget()->ID()->getText();
        auto* target = resolve(state, targetName);
        analyzeExpressionReads(core->expression(), state);
        if (target == nullptr) {
            return;
        }
        if (!target->mutableBinding) {
            addDiagnostic(ctx, "cannot assign to immutable binding `" + target->name + "`");
        }
        if (target->sharedBorrowCount > 0) {
            addDiagnostic(ctx, "cannot assign to `" + target->name + "` while it is still borrowed");
        }
        if (!target->mutableBorrowHolder.empty()) {
            addDiagnostic(ctx, "cannot assign to `" + target->name + "` while it is mutably borrowed");
        }
        if (target->type.reference) {
            releaseBorrow(state, target);
            if (auto* functionCall = functionCallFromContext(core->expression())) {
                const auto found = functions_.find(functionCall->ID() != nullptr ? functionCall->ID()->getText() : std::string());
                if (found != functions_.end() && found->second.returnType.reference && found->second.ambiguousReferenceReturn) {
                    addDiagnostic(ctx, "reference call `" + functionCall->ID()->getText() + "` can return multiple parameter-backed origins in the current analysis");
                    return;
                }
            }
            const auto referenceSource = referenceSourceVariableName(core->expression(), state);
            if (!referenceSource.empty()) {
                bindReferenceBinding(*target, referenceSource, state, ctx);
            } else {
                clearReferenceBinding(target);
            }
            return;
        }
        const auto direct = directVariableName(core->expression());
        if (direct.empty()) {
            return;
        }
        auto* source = resolve(state, direct);
        if (source == nullptr) {
            return;
        }
        if (!core->assignTarget()->accessKey().empty() && source->ownerScopeId != -1) {
            addDiagnostic(ctx, "cannot store owner-managed binding `" + source->name + "` through indexed assignment without `@release " + source->name + ";`");
            return;
        }
        if (target->isGlobal && source->ownerScopeId != -1) {
            addDiagnostic(ctx, "cannot assign owner-managed binding `" + source->name + "` to global `" + target->name + "` without `@release " + source->name + ";`");
            return;
        }
        if (target->ownerScopeId != -1 && source->ownerScopeId != -1 && target->ownerScopeId != source->ownerScopeId) {
            addDiagnostic(ctx, "cannot move owner-managed binding `" + source->name + "` into binding `" + target->name + "` owned by a different `@autofmtdeclare` scope");
            return;
        }
        if (core->assignTarget()->accessKey().empty() && target->name != source->name) {
            markMovedIfNeeded(source);
        }
    }

    void analyzeInit(compilerv1Parser::InitContext* ctx, State& state) {
        auto* initCore = ctx->initCore();
        if (initCore == nullptr) {
            return;
        }
        BindingState binding;
        binding.name = initCore->ID()->getText();
        binding.type = typeFromContext(initCore->typeRef());
        binding.mutableBinding = isMutableBinding(initCore);
        binding.ownerScopeId = currentOwnerScope(state);
        binding.ctx = ctx;
        if (currentOwnerScope(state) == -1) {
            binding.ownerScopeId = -1;
        }
        if (initCore->expression() != nullptr) {
            analyzeExpressionReads(initCore->expression(), state);
            const auto direct = directVariableName(initCore->expression());
            if (binding.type.reference) {
                if (auto* functionCall = functionCallFromContext(initCore->expression())) {
                    const auto found = functions_.find(functionCall->ID() != nullptr ? functionCall->ID()->getText() : std::string());
                    if (found != functions_.end() && found->second.returnType.reference && found->second.ambiguousReferenceReturn) {
                        addDiagnostic(ctx, "reference call `" + functionCall->ID()->getText() + "` can return multiple parameter-backed origins in the current analysis");
                    }
                }
                const auto referenceSource = referenceSourceVariableName(initCore->expression(), state);
                if (!referenceSource.empty()) {
                    bindReferenceBinding(binding, referenceSource, state, ctx);
                }
            } else if (!binding.type.reference && !direct.empty()) {
                if (auto* source = resolve(state, direct)) {
                    if (binding.ownerScopeId != -1 && source->ownerScopeId != -1 && binding.ownerScopeId != source->ownerScopeId) {
                        addDiagnostic(ctx, "cannot move owner-managed binding `" + source->name + "` into binding `" + binding.name + "` owned by a different `@autofmtdeclare` scope");
                    }
                    markMovedIfNeeded(source);
                }
            }
            bindAllocatorDependency(initCore->expression(), binding, state);
        }
        state.scopes.back()[binding.name] = std::move(binding);
    }

    void analyzeEasyInit(compilerv1Parser::EasyInitContext* ctx, State& state) {
        BindingState binding;
        binding.name = ctx->ID()->getText();
        binding.type = inferExpressionType(ctx->expression(), state);
        binding.mutableBinding = true;
        binding.ownerScopeId = currentOwnerScope(state);
        binding.ctx = ctx;
        analyzeExpressionReads(ctx->expression(), state);
        const auto direct = directVariableName(ctx->expression());
        if (!direct.empty()) {
            if (auto* source = resolve(state, direct)) {
                markMovedIfNeeded(source);
            }
        }
        bindAllocatorDependency(ctx->expression(), binding, state);
        state.scopes.back()[binding.name] = std::move(binding);
    }

    void analyzeStatement(compilerv1Parser::StatementContext* ctx, State& state, const SafetyType& returnType) {
        if (ctx->bypassBlock() != nullptr) {
            return;
        }
        if (ctx->unsafeBlock() != nullptr) {
            analyzeBlock(ctx->unsafeBlock()->block(), state, returnType);
            return;
        }
        if (ctx->block() != nullptr) {
            analyzeBlock(ctx->block(), state, returnType);
            return;
        }
        if (ctx->autofmtdeclareScope() != nullptr) {
            const int ownerScopeId = state.nextOwnerScopeId++;
            state.ownerScopes.push_back(ownerScopeId);
            state.scopes.emplace_back();
            for (auto* child : ctx->autofmtdeclareScope()->block()->children) {
                if (auto* statement = dynamic_cast<compilerv1Parser::StatementContext*>(child)) {
                    analyzeStatement(statement, state, returnType);
                } else if (auto* returnStmt = dynamic_cast<compilerv1Parser::ReturnStmtContext*>(child)) {
                    analyzeReturn(returnStmt, state, returnType);
                }
            }
            for (auto& entry : state.scopes.back()) {
                releaseBorrow(state, &entry.second);
            }
            state.ownerScopes.pop_back();
            exitOwnerScope(state, ownerScopeId);
            state.scopes.pop_back();
            return;
        }
        if (ctx->inductStmt() != nullptr) {
            if (auto* binding = resolve(state, ctx->inductStmt()->ID()->getText())) {
                binding->ownerScopeId = currentOwnerScope(state);
                binding->inducted = true;
            }
            return;
        }
        if (ctx->releaseStmt() != nullptr) {
            if (auto* binding = resolve(state, ctx->releaseStmt()->ID()->getText())) {
                binding->ownerScopeId = -1;
                binding->inducted = false;
                binding->allocatorBindingName.clear();
                binding->moved = true;
            }
            return;
        }
        if (ctx->malloc() != nullptr) {
            BindingState binding;
            binding.name = ctx->malloc()->ID()->getText();
            binding.type = {"void", 1, false};
            binding.mutableBinding = true;
            binding.ownerScopeId = currentOwnerScope(state);
            binding.allocatorBindingName = binding.name;
            binding.ctx = ctx->malloc();
            state.scopes.back()[binding.name] = std::move(binding);
            return;
        }
        if (ctx->plcnew() != nullptr) {
            BindingState binding;
            binding.name = ctx->plcnew()->ID()->getText();
            binding.type = {ctx->plcnew()->typeRef() != nullptr ? ctx->plcnew()->typeRef()->getText() : "auto", 0, false};
            binding.mutableBinding = true;
            binding.ownerScopeId = currentOwnerScope(state);
            binding.allocatorBindingName = binding.name;
            binding.ctx = ctx->plcnew();
            state.scopes.back()[binding.name] = std::move(binding);
            return;
        }
        if (ctx->free() != nullptr) {
            if (auto* binding = resolve(state, ctx->free()->ID()->getText())) {
                binding->ownerScopeId = -1;
                binding->allocatorBindingName.clear();
                binding->moved = true;
            }
            return;
        }
        if (ctx->delalc() != nullptr) {
            if (auto* binding = resolve(state, ctx->delalc()->ID()->getText())) {
                binding->ownerScopeId = -1;
                binding->allocatorBindingName.clear();
                binding->moved = true;
            }
            return;
        }
        if (ctx->init() != nullptr) {
            analyzeInit(ctx->init(), state);
            return;
        }
        if (ctx->easyInit() != nullptr) {
            analyzeEasyInit(ctx->easyInit(), state);
            return;
        }
        if (ctx->assignment() != nullptr) {
            analyzeAssignment(ctx->assignment(), state);
            return;
        }
        if (ctx->functionCall() != nullptr) {
            analyzeFunctionCall(ctx->functionCall(), state, false, false);
            return;
        }
        if (ctx->lambda() != nullptr) {
            analyzeLambdaCapture(ctx->lambda(), state);
            return;
        }
        if (ctx->asyncCall() != nullptr) {
            analyzeFunctionCall(ctx->asyncCall()->functionCall(), state, true, false);
            return;
        }
        if (ctx->thread() != nullptr) {
            analyzeFunctionCall(ctx->thread()->functionCall(), state, false, true);
            return;
        }
        if (ctx->memberaccess() != nullptr) {
            analyzeExpressionReads(ctx->memberaccess(), state);
            return;
        }
        if (ctx->print() != nullptr) {
            analyzeExpressionReads(ctx->print(), state);
            return;
        }
        if (ctx->ifStatement() != nullptr) {
            analyzeExpressionReads(ctx->ifStatement()->expression(), state);
            State left = state;
            releaseActiveReferenceBorrows(left);
            analyzeBlock(ctx->ifStatement()->block(0), left, returnType);
            State right = state;
            if (ctx->ifStatement()->block().size() > 1) {
                releaseActiveReferenceBorrows(right);
                analyzeBlock(ctx->ifStatement()->block(1), right, returnType);
            }
            mergeState(state, left, right);
            return;
        }
        if (ctx->whileStatement() != nullptr) {
            analyzeExpressionReads(ctx->whileStatement()->expression(), state);
            State loopState = state;
            releaseActiveReferenceBorrows(loopState);
            analyzeBlock(ctx->whileStatement()->block(), loopState, returnType);
            mergeState(state, state, loopState);
            return;
        }
    }

    void analyzeBlock(compilerv1Parser::BlockContext* block, State& state, const SafetyType& returnType) {
        state.scopes.emplace_back();
        for (auto* child : block->children) {
            if (auto* statement = dynamic_cast<compilerv1Parser::StatementContext*>(child)) {
                analyzeStatement(statement, state, returnType);
            } else if (auto* returnStmt = dynamic_cast<compilerv1Parser::ReturnStmtContext*>(child)) {
                analyzeReturn(returnStmt, state, returnType);
            }
        }
        for (auto& entry : state.scopes.back()) {
            releaseBorrow(state, &entry.second);
        }
        state.scopes.pop_back();
    }

    ApolloCompilerRuntimeCycle& cycle_;
    std::vector<std::string> diagnostics_;
    std::vector<std::string> warnings_;
    std::unordered_map<std::string, BindingState> globals_;
    std::unordered_map<std::string, FunctionInfo> functions_;
    std::unordered_set<std::string> communalTypes_;
    std::unordered_set<std::string> scheduledEntryFunctions_;
};

class OwnershipPhase final : public ApolloRuntimePhase {
public:
    [[nodiscard]] std::string phaseName() const override {
        return "ownership";
    }

    void execute(ApolloCompilerRuntimeCycle& cycle) const override {
        if (cycle.runtimeFeatures().borrowCheckerOff()) {
            return;
        }
        const auto report = OwnershipValidator(cycle).analyze(cycle.tree());
        cycle.recordMemorySafetyFindings(report.diagnostics, report.warnings);
    }
};

class BorrowPhase final : public ApolloRuntimePhase {
public:
    [[nodiscard]] std::string phaseName() const override {
        return "borrow";
    }

    void execute(ApolloCompilerRuntimeCycle& cycle) const override {
        if (cycle.runtimeFeatures().borrowCheckerOff() || cycle.hasMemorySafetyFindings()) {
            return;
        }
        const auto report = OwnershipValidator(cycle).analyze(cycle.tree());
        cycle.recordMemorySafetyFindings(report.diagnostics, report.warnings);
    }
};

class MemorySafetyFinalizePhase final : public ApolloRuntimePhase {
public:
    [[nodiscard]] std::string phaseName() const override {
        return "memory-safety-finalize";
    }

    void execute(ApolloCompilerRuntimeCycle& cycle) const override {
        if (cycle.runtimeFeatures().borrowCheckerOff()) {
            return;
        }
        const auto& diagnostics = cycle.memorySafetyDiagnostics();
        if (diagnostics.empty()) {
            return;
        }
        std::ostringstream builder;
        builder << "Compilation aborted with " << diagnostics.size() << " memory-safety error";
        if (diagnostics.size() != 1) {
            builder << 's';
        }
        builder << ":\n";
        for (size_t index = 0; index < diagnostics.size(); ++index) {
            if (index > 0) {
                builder << "\n\n";
            }
            builder << diagnostics[index];
        }
        throw ApolloCompilationFailure(builder.str());
    }
};

class MemoryLeakPhase final : public ApolloRuntimePhase {
public:
    [[nodiscard]] std::string phaseName() const override {
        return "memory-leak";
    }

    void execute(ApolloCompilerRuntimeCycle& cycle) const override {
        if (cycle.runtimeFeatures().borrowCheckerOff()) {
            return;
        }
        for (const auto& warning : cycle.memorySafetyWarnings()) {
            cycle.recordWarningMessage(warning);
        }
    }
};

std::vector<std::shared_ptr<const ApolloRuntimePhase>> defaultPhases() {
    return {
        std::make_shared<RuntimeExtensionSurfacePhase>(),
        std::make_shared<FrontendSurfacePhase>(),
        std::make_shared<UnsafeBoundaryPhase>(),
        std::make_shared<OwnershipPhase>(),
        std::make_shared<BorrowPhase>(),
        std::make_shared<MemorySafetyFinalizePhase>(),
        std::make_shared<MemoryLeakPhase>()
    };
}

std::vector<std::string> splitLines(const std::string& text) {
    std::vector<std::string> lines;
    std::string current;
    for (size_t index = 0; index < text.size(); ++index) {
        const char ch = text[index];
        if (ch == '\r') {
            lines.push_back(current);
            current.clear();
            if (index + 1 < text.size() && text[index + 1] == '\n') {
                ++index;
            }
            continue;
        }
        if (ch == '\n') {
            lines.push_back(current);
            current.clear();
            continue;
        }
        current.push_back(ch);
    }
    lines.push_back(current);
    return lines;
}

class RuntimeFeatureScanner final : public compilerv1BaseVisitor {
public:
    ApolloRuntimeFeatureManifest buildManifest() const {
        return ApolloRuntimeFeatureManifest(usesAutofmtRuntime_, usesGuiRuntime_, usesGoAsyncRuntime_, usesIrRuntime_,
            usesIscRuntime_, usesFileRuntime_, usesMemstructRuntime_, usesSchedulerRuntime_, usesRuntimeExtensions_,
            totalProgramGc_, borrowCheckerOff_);
    }

    std::any visitTypeRef(compilerv1Parser::TypeRefContext* ctx) override {
        if (ctx != nullptr && ctx->typeAtom() != nullptr) {
            const std::string typeName = ctx->typeAtom()->getText();
            if (typeName == "isc") {
                usesIscRuntime_ = true;
            }
            if (typeName == "file") {
                usesFileRuntime_ = true;
            }
        }
        return visitChildren(ctx);
    }

    std::any visitPrimary(compilerv1Parser::PrimaryContext* ctx) override {
        if (ctx != nullptr && ctx->SUCCESS() != nullptr) {
            usesIscRuntime_ = true;
        }
        return visitChildren(ctx);
    }

    std::any visitFunctionCall(compilerv1Parser::FunctionCallContext* ctx) override {
        if (ctx != nullptr && ctx->ID() != nullptr) {
            const std::string functionName = ctx->ID()->getText();
            if (functionName == "cerr" || functionName == "terminalcerr") {
                usesIscRuntime_ = true;
            }
            if (functionName == "open") {
                usesFileRuntime_ = true;
            }
            if (functionName == "KEYPRESS") {
                usesGuiRuntime_ = true;
                usesGoAsyncRuntime_ = true;
            }
        }
        return visitChildren(ctx);
    }

    std::any visitMemberaccess(compilerv1Parser::MemberaccessContext* ctx) override {
        if (ctx != nullptr && ctx->functionCall() != nullptr && ctx->functionCall()->ID() != nullptr) {
            const std::string memberName = ctx->functionCall()->ID()->getText();
            if (memberName == "show" || memberName == "hide" || memberName == "render" || memberName == "touches") {
                usesGuiRuntime_ = true;
                usesGoAsyncRuntime_ = true;
            }
        }
        return visitChildren(ctx);
    }

    std::any visitRdwindowStmt(compilerv1Parser::RdwindowStmtContext* ctx) override {
        usesGuiRuntime_ = true;
        usesGoAsyncRuntime_ = true;
        return visitChildren(ctx);
    }

    std::any visitEventHandlerStmt(compilerv1Parser::EventHandlerStmtContext* ctx) override {
        usesGuiRuntime_ = true;
        usesGoAsyncRuntime_ = true;
        return visitChildren(ctx);
    }

    std::any visitOpstruct(compilerv1Parser::OpstructContext* ctx) override {
        usesRuntimeExtensions_ = true;
        return visitChildren(ctx);
    }

    std::any visitMemstruct(compilerv1Parser::MemstructContext* ctx) override {
        usesMemstructRuntime_ = true;
        if (ctx != nullptr && ctx->communalQualifier() != nullptr) {
            usesSchedulerRuntime_ = true;
        }
        return visitChildren(ctx);
    }

    std::any visitStruct(compilerv1Parser::StructContext* ctx) override {
        if (ctx != nullptr && ctx->communalQualifier() != nullptr) {
            usesSchedulerRuntime_ = true;
        }
        return visitChildren(ctx);
    }

    std::any visitTypedefOpstruct(compilerv1Parser::TypedefOpstructContext* ctx) override {
        usesRuntimeExtensions_ = true;
        return visitChildren(ctx);
    }

    std::any visitTypedefOpstructSession(compilerv1Parser::TypedefOpstructSessionContext* ctx) override {
        usesRuntimeExtensions_ = true;
        usesIrRuntime_ = true;
        return visitChildren(ctx);
    }

    std::any visitTypedefOpstructPhraseStmt(compilerv1Parser::TypedefOpstructPhraseStmtContext* ctx) override {
        usesRuntimeExtensions_ = true;
        usesIrRuntime_ = true;
        return visitChildren(ctx);
    }

    std::any visitScheduleDecl(compilerv1Parser::ScheduleDeclContext* ctx) override {
        usesSchedulerRuntime_ = true;
        return visitChildren(ctx);
    }

    std::any visitSchedulerStartStmt(compilerv1Parser::SchedulerStartStmtContext* ctx) override {
        usesSchedulerRuntime_ = true;
        return visitChildren(ctx);
    }

    std::any visitSchedulerInsertStmt(compilerv1Parser::SchedulerInsertStmtContext* ctx) override {
        usesSchedulerRuntime_ = true;
        return visitChildren(ctx);
    }

    std::any visitSchedulerVoidStmt(compilerv1Parser::SchedulerVoidStmtContext* ctx) override {
        usesSchedulerRuntime_ = true;
        return visitChildren(ctx);
    }

    std::any visitRuntimeDirective(compilerv1Parser::RuntimeDirectiveContext* ctx) override {
        usesRuntimeExtensions_ = true;
        if (ctx != nullptr && ctx->ID().size() > 1
            && ctx->ID(0)->getText() == "scheduler"
            && ctx->ID(1)->getText() == "eevf") {
            usesSchedulerRuntime_ = true;
        }
        return visitChildren(ctx);
    }

    std::any visitSettingDirective(compilerv1Parser::SettingDirectiveContext* ctx) override {
        if (ctx == nullptr || ctx->ID() == nullptr || ctx->settingValue() == nullptr) {
            return visitChildren(ctx);
        }
        const std::string key = ctx->ID()->getText();
        const std::string value = normalizeSettingValue(ctx->settingValue()->getText());
        if (key == "scheduler") {
            usesRuntimeExtensions_ = true;
            if (value == "eevf") {
                usesSchedulerRuntime_ = true;
            }
        } else if (key == "fallback" || key == "macro_mode") {
            usesRuntimeExtensions_ = true;
        } else if ((key == "gc" || key == "gcmode") && value == "total") {
            totalProgramGc_ = true;
        } else if ((key == "borrow_checker" || key == "borrow_check") && (value == "off" || value == "none")) {
            borrowCheckerOff_ = true;
        }
        return visitChildren(ctx);
    }

    std::any visitInstanceValue(compilerv1Parser::InstanceValueContext* ctx) override {
        if (ctx != nullptr && ctx->allocatorUseSuffix() != nullptr) {
            usesMemstructRuntime_ = true;
        }
        return visitChildren(ctx);
    }

    std::any visitMacro(compilerv1Parser::MacroContext* ctx) override {
        if (ctx != nullptr && ctx->macroQualifier() != nullptr
            && ctx->macroQualifier()->getText().find("dynamic_macro") != std::string::npos) {
            usesRuntimeExtensions_ = true;
        }
        return visitChildren(ctx);
    }

    std::any visitAutocatchStatement(compilerv1Parser::AutocatchStatementContext* ctx) override {
        usesIscRuntime_ = true;
        return visitChildren(ctx);
    }

    std::any visitGcDirective(compilerv1Parser::GcDirectiveContext* ctx) override {
        if (ctx != nullptr && ctx->ID() != nullptr && ctx->ID()->getText() == "total") {
            totalProgramGc_ = true;
        }
        return visitChildren(ctx);
    }

    std::any visitBorrowCheckerDirective(compilerv1Parser::BorrowCheckerDirectiveContext* ctx) override {
        if (ctx != nullptr && ctx->ID() != nullptr) {
            const std::string value = ctx->ID()->getText();
            if (value == "off" || value == "none") {
                borrowCheckerOff_ = true;
            }
        }
        return visitChildren(ctx);
    }

    std::any visitAutofmtdeclareScope(compilerv1Parser::AutofmtdeclareScopeContext* ctx) override {
        usesAutofmtRuntime_ = true;
        return visitChildren(ctx);
    }

    std::any visitAsyncCall(compilerv1Parser::AsyncCallContext* ctx) override {
        usesGoAsyncRuntime_ = true;
        return visitChildren(ctx);
    }

    std::any visitNativemode(compilerv1Parser::NativemodeContext* ctx) override {
        usesIrRuntime_ = true;
        return visitChildren(ctx);
    }

    std::any visitSyscallStmt(compilerv1Parser::SyscallStmtContext* ctx) override {
        usesIrRuntime_ = true;
        return visitChildren(ctx);
    }

private:
    static std::string normalizeSettingValue(const std::string& rawValue) {
        if (rawValue.size() < 2) {
            return rawValue;
        }
        if ((rawValue.front() == '"' && rawValue.back() == '"') || (rawValue.front() == '\'' && rawValue.back() == '\'')) {
            return rawValue.substr(1, rawValue.size() - 2);
        }
        return rawValue;
    }

    bool usesAutofmtRuntime_ = false;
    bool usesGuiRuntime_ = false;
    bool usesGoAsyncRuntime_ = false;
    bool usesIrRuntime_ = false;
    bool usesIscRuntime_ = false;
    bool usesFileRuntime_ = false;
    bool usesMemstructRuntime_ = false;
    bool usesSchedulerRuntime_ = false;
    bool usesRuntimeExtensions_ = false;
    bool totalProgramGc_ = false;
    bool borrowCheckerOff_ = false;
};

class FormattingErrorListener final : public antlr4::BaseErrorListener {
public:
    explicit FormattingErrorListener(ApolloCompilerRuntimeCycle* owner)
        : owner_(owner) {
    }

    void syntaxError(antlr4::Recognizer* recognizer, antlr4::Token* offendingSymbol, size_t line, size_t charPositionInLine,
        const std::string& msg, std::exception_ptr) override;

private:
    ApolloCompilerRuntimeCycle* owner_;
};

} // namespace

ApolloCompilationFailure::ApolloCompilationFailure(const std::string& message)
    : std::runtime_error(message) {
}

ApolloCompilationFailure::ApolloCompilationFailure(const std::string& message, const std::exception&)
    : std::runtime_error(message) {
}

ApolloRuntimeFeatureManifest::ApolloRuntimeFeatureManifest(bool usesAutofmtRuntime,
    bool usesGuiRuntime,
    bool usesGoAsyncRuntime,
    bool usesIrRuntime,
    bool usesIscRuntime,
    bool usesFileRuntime,
    bool usesMemstructRuntime,
    bool usesSchedulerRuntime,
    bool usesRuntimeExtensions,
    bool totalProgramGc,
    bool borrowCheckerOff)
    : usesAutofmtRuntime_(usesAutofmtRuntime),
      usesGuiRuntime_(usesGuiRuntime),
      usesGoAsyncRuntime_(usesGoAsyncRuntime),
      usesIrRuntime_(usesIrRuntime),
      usesIscRuntime_(usesIscRuntime),
      usesFileRuntime_(usesFileRuntime),
      usesMemstructRuntime_(usesMemstructRuntime),
      usesSchedulerRuntime_(usesSchedulerRuntime),
      usesRuntimeExtensions_(usesRuntimeExtensions),
      totalProgramGc_(totalProgramGc),
      borrowCheckerOff_(borrowCheckerOff) {
}

bool ApolloRuntimeFeatureManifest::usesAutofmtRuntime() const { return usesAutofmtRuntime_; }
bool ApolloRuntimeFeatureManifest::usesGuiRuntime() const { return usesGuiRuntime_; }
bool ApolloRuntimeFeatureManifest::usesGoAsyncRuntime() const { return usesGoAsyncRuntime_; }
bool ApolloRuntimeFeatureManifest::usesIrRuntime() const { return usesIrRuntime_; }
bool ApolloRuntimeFeatureManifest::usesIscRuntime() const { return usesIscRuntime_; }
bool ApolloRuntimeFeatureManifest::usesFileRuntime() const { return usesFileRuntime_; }
bool ApolloRuntimeFeatureManifest::usesMemstructRuntime() const { return usesMemstructRuntime_; }
bool ApolloRuntimeFeatureManifest::usesSchedulerRuntime() const { return usesSchedulerRuntime_; }
bool ApolloRuntimeFeatureManifest::usesRuntimeExtensions() const { return usesRuntimeExtensions_; }
bool ApolloRuntimeFeatureManifest::totalProgramGc() const { return totalProgramGc_; }
bool ApolloRuntimeFeatureManifest::borrowCheckerOff() const { return borrowCheckerOff_; }

ApolloRuntimeFeatureManifest ApolloRuntimeFeatureManifest::analyze(compilerv1Parser::ProgramContext* tree) {
    RuntimeFeatureScanner scanner;
    scanner.visit(tree);
    return scanner.buildManifest();
}

ApolloCompilerRuntimeCycle::ApolloCompilerRuntimeCycle(std::string sourcePath,
    std::vector<std::string> lines,
    std::unique_ptr<antlr4::ANTLRInputStream> input,
    std::unique_ptr<compilerv1Lexer> lexer,
    std::unique_ptr<antlr4::CommonTokenStream> tokens,
    std::unique_ptr<compilerv1Parser> parser,
    compilerv1Parser::ProgramContext* tree,
    std::vector<std::string> diagnostics,
    size_t syntaxErrorCount,
        ApolloRuntimeFeatureManifest runtimeFeatures,
        std::vector<std::shared_ptr<const ApolloRuntimePhase>> phases)
    : sourcePath_(std::move(sourcePath)),
      lines_(std::move(lines)),
      input_(std::move(input)),
      lexer_(std::move(lexer)),
      tokens_(std::move(tokens)),
      parser_(std::move(parser)),
      tree_(tree),
      diagnostics_(std::move(diagnostics)),
      syntaxErrorCount_(syntaxErrorCount),
            runtimeFeatures_(std::move(runtimeFeatures)),
            phases_(std::move(phases)) {
}

ApolloCompilerRuntimeCycle ApolloCompilerRuntimeCycle::create(const std::string& sourcePath, const std::string& program) {
        return create(sourcePath, program, defaultPhases());
}

ApolloCompilerRuntimeCycle ApolloCompilerRuntimeCycle::create(const std::string& sourcePath, const std::string& program,
        std::vector<std::shared_ptr<const ApolloRuntimePhase>> phases) {
    auto input = std::make_unique<antlr4::ANTLRInputStream>(program);
    auto lexer = std::make_unique<compilerv1Lexer>(input.get());
    auto tokens = std::make_unique<antlr4::CommonTokenStream>(lexer.get());
    auto parser = std::make_unique<compilerv1Parser>(tokens.get());

    std::vector<std::string> diagnostics;
    const std::vector<std::string> lines = splitLines(program);
    ApolloCompilerRuntimeCycle cycle(sourcePath, lines, nullptr, nullptr, nullptr, nullptr, nullptr, {}, 0,
                ApolloRuntimeFeatureManifest(false, false, false, false, false, false, false, false, false, false, false), std::move(phases));

    FormattingErrorListener errorListener(&cycle);
    lexer->removeErrorListeners();
    parser->removeErrorListeners();
    lexer->addErrorListener(&errorListener);
    parser->addErrorListener(&errorListener);

    auto* tree = parser->program();
    const size_t syntaxErrorCount = parser->getNumberOfSyntaxErrors();
    ApolloRuntimeFeatureManifest runtimeFeatures = ApolloRuntimeFeatureManifest::analyze(tree);

    cycle.input_ = std::move(input);
    cycle.lexer_ = std::move(lexer);
    cycle.tokens_ = std::move(tokens);
    cycle.parser_ = std::move(parser);
    cycle.tree_ = tree;
    cycle.syntaxErrorCount_ = syntaxErrorCount;
    cycle.runtimeFeatures_ = std::move(runtimeFeatures);
    return cycle;
}

std::vector<std::string> ApolloCompilerRuntimeCycle::defaultPhaseNames() {
    std::vector<std::string> names;
    for (const auto& phase : defaultPhases()) {
        names.push_back(phase->phaseName());
    }
    return names;
}

void ApolloCompilerRuntimeCycle::runPreCodegenPhases() {
    if (syntaxErrorCount_ > 0) {
        throw ApolloCompilationFailure(buildFailureMessage());
    }
    for (const auto& phase : phases_) {
        try {
            phase->execute(*this);
        } catch (const ApolloCompilationFailure&) {
            throw;
        } catch (const std::runtime_error& ex) {
            throw wrapCompilerFailure(phase->phaseName(), ex);
        }
    }
    for (const auto& warning : warnings_) {
        std::cerr << "\x1b[33m" << warning << "\x1b[0m\n";
    }
}

compilerv1Parser::ProgramContext* ApolloCompilerRuntimeCycle::tree() const {
    return tree_;
}

const ApolloRuntimeFeatureManifest& ApolloCompilerRuntimeCycle::runtimeFeatures() const {
    return runtimeFeatures_;
}

const std::vector<std::string>& ApolloCompilerRuntimeCycle::warnings() const {
    return warnings_;
}

std::string ApolloCompilerRuntimeCycle::buildSourceExcerpt(int line, int column, int width) const {
    if (line < 1 || static_cast<size_t>(line) > lines_.size()) {
        return "";
    }
    const std::string& sourceLine = lines_[static_cast<size_t>(line - 1)];
    const std::string lineNumber = std::to_string(line);
    const std::string gutter = "  " + lineNumber + " | ";
    const int safeColumn = std::max(1, column);
    const int pointerWidth = std::max(1, std::min(width, std::max(1, static_cast<int>(sourceLine.size()) - safeColumn + 2)));
    return gutter + sourceLine + "\n" + "  " + std::string(lineNumber.size(), ' ') + " | " + std::string(static_cast<size_t>(safeColumn - 1), ' ')
        + "^" + std::string(static_cast<size_t>(std::max(0, pointerWidth - 1)), '~');
}

std::string ApolloCompilerRuntimeCycle::formatDiagnostic(const std::string& severity, const std::string& category,
    int line, int column, const std::string& message, const std::string& offendingText) const {
    std::ostringstream builder;
    builder << severity << " [" << category << "] " << sourcePath_ << ":" << line << ":" << column << "\n" << message;
    if (!offendingText.empty()) {
        builder << "\noffending token: " << offendingText;
    }
    const std::string excerpt = buildSourceExcerpt(line, column, offendingText.empty() ? 1 : static_cast<int>(offendingText.size()));
    if (!excerpt.empty()) {
        builder << "\n" << excerpt;
    }
    return builder.str();
}

std::string ApolloCompilerRuntimeCycle::formatRuleDiagnostic(const std::string& severity, const std::string& category,
    antlr4::ParserRuleContext* ctx, const std::string& message) const {
    auto* token = ctx != nullptr ? ctx->getStart() : nullptr;
    const int line = token != nullptr ? token->getLine() : 1;
    const int column = token != nullptr ? token->getCharPositionInLine() + 1 : 1;
    const std::string offendingText = token != nullptr && !token->getText().empty()
        ? token->getText()
        : (ctx != nullptr ? ctx->getText() : std::string());
    return formatDiagnostic(severity, category, line, column, message, offendingText);
}

std::string ApolloCompilerRuntimeCycle::buildFailureMessage() const {
    std::ostringstream builder;
    builder << "Compilation aborted with " << syntaxErrorCount_ << " syntax error";
    if (syntaxErrorCount_ != 1) {
        builder << 's';
    }
    builder << ":\n";
    for (size_t index = 0; index < diagnostics_.size(); ++index) {
        if (index > 0) {
            builder << "\n\n";
        }
        builder << diagnostics_[index];
    }
    return builder.str();
}

void ApolloCompilerRuntimeCycle::recordSyntaxDiagnostic(size_t line, size_t charPositionInLine,
    const std::string& message, const std::string& offendingText) {
    diagnostics_.push_back(formatDiagnostic("error", "syntax", static_cast<int>(line), static_cast<int>(charPositionInLine + 1), message, offendingText));
}

void ApolloCompilerRuntimeCycle::recordRuleDiagnostic(const std::string& category, antlr4::ParserRuleContext* ctx, const std::string& message) {
    diagnostics_.push_back(formatRuleDiagnostic("error", category, ctx, message));
}

std::string ApolloCompilerRuntimeCycle::recordRuleDiagnosticPreview(const std::string& category, antlr4::ParserRuleContext* ctx, const std::string& message) const {
    return formatRuleDiagnostic("error", category, ctx, message);
}

void ApolloCompilerRuntimeCycle::recordWarningMessage(std::string message) {
    warnings_.push_back(std::move(message));
}

std::string ApolloCompilerRuntimeCycle::recordRuleWarningPreview(const std::string& category, antlr4::ParserRuleContext* ctx, const std::string& message) const {
    return formatRuleDiagnostic("warning", category, ctx, message);
}

void ApolloCompilerRuntimeCycle::recordMemorySafetyFindings(std::vector<std::string> diagnostics, std::vector<std::string> warnings) {
    memorySafetyDiagnostics_ = std::move(diagnostics);
    memorySafetyWarnings_ = std::move(warnings);
    hasMemorySafetyFindings_ = true;
}

bool ApolloCompilerRuntimeCycle::hasMemorySafetyFindings() const {
    return hasMemorySafetyFindings_;
}

const std::vector<std::string>& ApolloCompilerRuntimeCycle::memorySafetyDiagnostics() const {
    return memorySafetyDiagnostics_;
}

const std::vector<std::string>& ApolloCompilerRuntimeCycle::memorySafetyWarnings() const {
    return memorySafetyWarnings_;
}

ApolloCompilationFailure ApolloCompilerRuntimeCycle::wrapCompilerFailure(const std::runtime_error& ex) const {
    std::ostringstream builder;
    builder << sourcePath_ << ": compiler failure: " << ex.what();
    return ApolloCompilationFailure(builder.str(), ex);
}

ApolloCompilationFailure ApolloCompilerRuntimeCycle::wrapCompilerFailure(const std::string& stage, const std::runtime_error& ex) const {
    std::ostringstream builder;
    builder << sourcePath_ << ": compiler runtime phase `" << stage << "` failed: " << ex.what();
    return ApolloCompilationFailure(builder.str(), ex);
}

void FormattingErrorListener::syntaxError(antlr4::Recognizer* recognizer, antlr4::Token* offendingSymbol, size_t line,
    size_t charPositionInLine, const std::string& msg, std::exception_ptr) {
    std::string finalMessage = msg;
    std::string offendingText;
    if (offendingSymbol != nullptr) {
        offendingText = offendingSymbol->getText();
        auto* parser = dynamic_cast<antlr4::Parser*>(recognizer);
        if (parser != nullptr) {
            const std::string expected = parser->getExpectedTokens().toString(parser->getVocabulary());
            if (!expected.empty()) {
                finalMessage += "\nexpected one of: " + expected;
            }
        }
    }
    owner_->recordSyntaxDiagnostic(line, charPositionInLine, finalMessage, offendingText);
}