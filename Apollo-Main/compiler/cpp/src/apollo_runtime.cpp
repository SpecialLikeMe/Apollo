#include "apollo_runtime.h"

#include "brc/borrow_checker.h"

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

    std::any visitStdimport(compilerv1Parser::StdimportContext* ctx) {
        //TODO: add helper to import from include folder
        return visitChildren(ctx);
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

std::vector<std::shared_ptr<const ApolloRuntimePhase>> defaultPhases() {
    std::vector<std::shared_ptr<const ApolloRuntimePhase>> phases = {
        std::make_shared<RuntimeExtensionSurfacePhase>(),
        std::make_shared<FrontendSurfacePhase>(),
        std::make_shared<UnsafeBoundaryPhase>()
    };
    auto brcPhases = borrowCheckerPhases();
    phases.insert(phases.end(), brcPhases.begin(), brcPhases.end());
    return phases;
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
            if (typeName == "isc" || typeName.rfind("nominal<", 0) == 0) {
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
            if (functionName == "nominal" || functionName == "cerr" || functionName == "terminalcerr") {
                usesIscRuntime_ = true;
            }
            if (functionName == "open" || functionName == "sys__file_open") {
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