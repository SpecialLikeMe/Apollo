#include "borrow_checker.h"

#include "../compiler/cpp/src/apollo_runtime.h"
#include "../../diag/diagnostic.h"

#include <algorithm>
#include <sstream>
#include <unordered_map>
#include <unordered_set>
#include <utility>

namespace {

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
        bool writeRestrictedReference = false;
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
        return ctx != nullptr && ctx->NCONST() != nullptr;
    }

    bool isMutableBinding(compilerv1Parser::ParamContext* ctx) const {
        return ctx != nullptr && ctx->NCONST() != nullptr;
    }

    bool isMutableBinding(compilerv1Parser::EasyInitContext* ctx) const {
        return ctx != nullptr && ctx->NCONST() != nullptr;
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
            } else if (text.rfind("&", 0) == 0) {
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

    std::string containerBaseName(const SafetyType& type) const {
        const auto genericStart = type.name.find('<');
        if (genericStart == std::string::npos) {
            return type.name;
        }
        return type.name.substr(0, genericStart);
    }

    bool isMutatingMemberCall(const SafetyType& type, std::string_view methodName) const {
        const std::string baseName = containerBaseName(type);
        if (baseName == "vector") {
            return methodName == "append"
                || methodName == "push"
                || methodName == "remove"
                || methodName == "swap_remove"
                || methodName == "clear";
        }
        if (baseName == "set" || baseName == "unordered_set") {
            return methodName == "insert"
                || methodName == "remove"
                || methodName == "clear";
        }
        if (baseName == "map" || baseName == "unordered_map" || baseName == "tmap") {
            return methodName == "remove" || methodName == "clear";
        }
        return false;
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
                if (primary->borrowExpr()->getText().rfind(".&", 0) == 0) {
                    return {};
                }
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
        // Route through the unified diagnostic so legacy memory-safety
        // banners share format with the MIR borrow checker / HIR
        // lowering diagnostics. The categorical info ("memory-safety")
        // becomes the apollo::diag category, and we preserve the
        // original payload as the message body.
        std::uint32_t line = 0, col = 0;
        if (ctx != nullptr && ctx->getStart() != nullptr) {
            line = static_cast<std::uint32_t>(ctx->getStart()->getLine());
            col  = static_cast<std::uint32_t>(ctx->getStart()->getCharPositionInLine());
        }
        auto unified = apollo::diag::fromLegacyRule(
            apollo::diag::Severity::Error,
            "memory-safety", "", message, line, col);
        const std::string formatted = apollo::diag::formatOneLine(unified);
        diagnostics_.push_back(cycle_.recordRuleDiagnosticPreview("memory-safety", ctx, formatted));
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
        binding->writeRestrictedReference = false;
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
            auto* borrowSource = resolveMutableBorrowEndpoint(state, source);
            ensureMutableBorrowable(borrowSource, ctx);
            if (borrowSource != nullptr) {
                borrowSource->mutableBorrowHolder = binding.name;
                binding.borrowedFrom = borrowSource->name;
            } else {
                binding.borrowedFrom.clear();
            }
            binding.mutablyBorrowedFrom = true;
            binding.writeRestrictedReference = false;
        } else {
            auto* borrowSource = resolveMutableBorrowEndpoint(state, source);
            ensureRestrictedBorrowable(borrowSource, ctx);
            if (borrowSource != nullptr) {
                ++borrowSource->sharedBorrowCount;
                binding.borrowedFrom = borrowSource->name;
            } else {
                binding.borrowedFrom.clear();
            }
            binding.mutablyBorrowedFrom = false;
            binding.writeRestrictedReference = true;
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
        const bool leftWriteRestricted = left != nullptr && left->writeRestrictedReference;
        const bool rightWriteRestricted = right != nullptr && right->writeRestrictedReference;
        if (leftBorrowedFrom == rightBorrowedFrom
            && (leftBorrowedFrom.empty() || (leftMutable == rightMutable && leftWriteRestricted == rightWriteRestricted))) {
            target.borrowedFrom = leftBorrowedFrom;
            target.mutablyBorrowedFrom = !leftBorrowedFrom.empty() && leftMutable;
            target.writeRestrictedReference = !leftBorrowedFrom.empty() && leftWriteRestricted;
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
        if (auto* borrowExpr = dynamic_cast<compilerv1Parser::BorrowExprContext*>(node)) {
            if (borrowExpr->getText().rfind(".&", 0) == 0) {
                return;
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

    void analyzeExpressionReadsExcluding(antlr4::ParserRuleContext* ctx, State& state, const std::string& excludedName, bool enforceCommunalReads = true) {
        std::vector<std::string> names;
        collectReadNames(ctx, names);
        for (const auto& name : names) {
            if (name == excludedName) {
                continue;
            }
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

    BindingState* resolveMutableBorrowEndpoint(State& state, BindingState* binding) {
        if (binding == nullptr) {
            return nullptr;
        }
        std::unordered_set<std::string> visited;
        BindingState* current = binding;
        while (current != nullptr && !current->mutableBorrowHolder.empty()) {
            if (!visited.insert(current->name).second) {
                break;
            }
            auto* next = resolve(state, current->mutableBorrowHolder);
            if (next == nullptr || next == current) {
                break;
            }
            current = next;
        }
        return current;
    }

    bool isSharedBorrowAlias(const BindingState* binding) const {
        return binding != nullptr
            && binding->type.reference
            && binding->writeRestrictedReference
            && !binding->borrowedFrom.empty();
    }

    void ensureSharedBorrowable(BindingState* binding, antlr4::ParserRuleContext* ctx) {
        ensureReadable(binding, ctx);
        if (binding != nullptr && !binding->mutableBorrowHolder.empty()) {
            addDiagnostic(ctx, "cannot immutably borrow `" + binding->name + "` while it is mutably borrowed");
        }
    }

    void ensureRestrictedBorrowable(BindingState* binding, antlr4::ParserRuleContext* ctx) {
        if (binding == nullptr) {
            return;
        }
        ensureReadable(binding, ctx);
        if (binding->sharedBorrowCount > 0) {
            addDiagnostic(ctx, "cannot immutably borrow `" + binding->name + "` while shared borrows are active");
        }
        if (!binding->mutableBorrowHolder.empty()) {
            addDiagnostic(ctx, "cannot immutably borrow `" + binding->name + "` while it is mutably borrowed");
        }
    }

    void ensureMutableBorrowable(BindingState* binding, antlr4::ParserRuleContext* ctx) {
        if (binding == nullptr) {
            return;
        }
        ensureReadable(binding, ctx);
        if (isSharedBorrowAlias(binding)) {
            addDiagnostic(ctx, "cannot mutably borrow `" + binding->borrowedFrom + "` while shared borrows are active");
            return;
        }
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
                        const std::string raw =
                            "potential leak: manual allocation `" + binding.name + "` exits scope without release";
                        std::uint32_t line = 0, col = 0;
                        if (binding.ctx != nullptr && binding.ctx->getStart() != nullptr) {
                            line = static_cast<std::uint32_t>(binding.ctx->getStart()->getLine());
                            col  = static_cast<std::uint32_t>(binding.ctx->getStart()->getCharPositionInLine());
                        }
                        auto unified = apollo::diag::fromLegacyRule(
                            apollo::diag::Severity::Warning,
                            "memory-leak", "", raw, line, col);
                        const std::string formatted = apollo::diag::formatOneLine(unified);
                        warnings_.push_back(cycle_.recordRuleWarningPreview("memory-leak",
                            binding.ctx, formatted));
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
                    if ((wantsMutable && binding->mutablyBorrowedFrom && !binding->writeRestrictedReference)
                        || !wantsMutable) {
                        releaseBorrow(state, binding);
                        continue;
                    }
                }
                auto* source = resolveMutableBorrowEndpoint(state, resolveBorrowSource(state, binding));
                if (index < infoIt->second.paramMutable.size() && infoIt->second.paramMutable[index]) {
                    ensureMutableBorrowable(source, ctx);
                } else {
                    ensureRestrictedBorrowable(source, ctx);
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

    void collectLambdaManagedCaptures(compilerv1Parser::ClosureBodyContext* closureBody, State& state,
        std::vector<std::unordered_set<std::string>>& localScopes,
        std::string& capturedName) {
        if (closureBody == nullptr || !capturedName.empty()) {
            return;
        }
        localScopes.emplace_back();
        for (auto* bodyItem : closureBody->closureBodyItem()) {
            if (bodyItem == nullptr) {
                continue;
            }
            if (auto* statement = bodyItem->statement()) {
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
            if (auto* returnStmt = bodyItem->returnStmt()) {
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

    void analyzeClosureCapture(compilerv1Parser::ClosureContext* ctx, State& state) {
        if (ctx == nullptr || ctx->closureBody() == nullptr) {
            return;
        }

        std::vector<std::unordered_set<std::string>> localScopes;
        localScopes.emplace_back();
        if (ctx->params() != nullptr) {
            for (auto* param : ctx->params()->param()) {
                localScopes.back().insert(param->ID()->getText());
            }
        }

        std::string capturedName;
        collectLambdaManagedCaptures(ctx->closureBody(), state, localScopes, capturedName);
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
        const auto referenceSource = target != nullptr && target->type.reference
            ? referenceSourceVariableName(core->expression(), state)
            : std::string();
        if (!referenceSource.empty()) {
            analyzeExpressionReadsExcluding(core->expression(), state, referenceSource);
        } else {
            analyzeExpressionReads(core->expression(), state);
        }
        if (target == nullptr) {
            return;
        }
        if (!core->assignTarget()->getText().empty() && core->assignTarget()->getText().front() == '*') {
            ensureReadable(target, ctx);
            if (!target->type.reference && target->type.pointerDepth > 0) {
                return;
            }
            if (target->type.reference && target->writeRestrictedReference) {
                addDiagnostic(ctx, "cannot assign through read-only reference `" + target->name + "`");
                return;
            }
            BindingState* pointee = target->type.reference ? resolveBorrowSource(state, target) : target;
            if (pointee == nullptr) {
                return;
            }
            if (!pointee->mutableBinding) {
                addDiagnostic(ctx, "cannot assign to immutable binding `" + pointee->name + "`");
            }
            if (pointee->sharedBorrowCount > 0) {
                addDiagnostic(ctx, "cannot assign to `" + pointee->name + "` while it is still borrowed");
            }
            if (!pointee->mutableBorrowHolder.empty() && pointee->mutableBorrowHolder != target->name) {
                addDiagnostic(ctx, "cannot assign to `" + pointee->name + "` while it is mutably borrowed");
            }
            if (target->type.reference) {
                releaseBorrow(state, target);
            }
            return;
        }
        if (!target->mutableBinding) {
            addDiagnostic(ctx, "cannot assign to immutable binding `" + target->name + "`");
        }
        if (target->sharedBorrowCount > 0) {
            addDiagnostic(ctx, "cannot assign to `" + target->name + "` while it is still borrowed");
        }
        if (!target->mutableBorrowHolder.empty()) {
            BindingState* holder = resolve(state, target->mutableBorrowHolder);
            if (isSharedBorrowAlias(holder) && holder->borrowedFrom == target->name) {
                addDiagnostic(ctx, "cannot assign to `" + target->name + "` while it is still borrowed");
            } else {
                addDiagnostic(ctx, "cannot assign to `" + target->name + "` while it is mutably borrowed");
            }
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

    void analyzeMemberAccess(compilerv1Parser::MemberaccessContext* ctx, State& state) {
        analyzeExpressionReads(ctx, state);
        if (ctx == nullptr || ctx->accessBase() == nullptr || ctx->accessBase()->ID() == nullptr
            || ctx->functionCall() == nullptr || ctx->functionCall()->ID() == nullptr) {
            return;
        }

        auto* target = resolve(state, ctx->accessBase()->ID()->getText());
        if (target == nullptr) {
            return;
        }

        ensureReadable(target, ctx);

        BindingState* writeTarget = target;
        if (target->type.reference) {
            if (target->writeRestrictedReference) {
                addDiagnostic(ctx, "cannot assign through read-only reference `" + target->name + "`");
                return;
            }
            writeTarget = resolveBorrowSource(state, target);
        }
        if (writeTarget == nullptr) {
            return;
        }

        const std::string methodName = ctx->functionCall()->ID()->getText();
        if (!isMutatingMemberCall(writeTarget->type, methodName)) {
            return;
        }

        if (!writeTarget->mutableBinding) {
            addDiagnostic(ctx, "cannot assign to immutable binding `" + writeTarget->name + "`");
        }
        if (writeTarget->sharedBorrowCount > 0) {
            addDiagnostic(ctx, "cannot assign to `" + writeTarget->name + "` while it is still borrowed");
        }
        if (!writeTarget->mutableBorrowHolder.empty()) {
            BindingState* holder = resolve(state, writeTarget->mutableBorrowHolder);
            if (isSharedBorrowAlias(holder) && holder->borrowedFrom == writeTarget->name) {
                addDiagnostic(ctx, "cannot assign to `" + writeTarget->name + "` while it is still borrowed");
            } else if (writeTarget->mutableBorrowHolder != target->name) {
                addDiagnostic(ctx, "cannot assign to `" + writeTarget->name + "` while it is mutably borrowed");
            }
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
            const auto referenceSource = binding.type.reference
                ? referenceSourceVariableName(initCore->expression(), state)
                : std::string();
            if (!referenceSource.empty()) {
                analyzeExpressionReadsExcluding(initCore->expression(), state, referenceSource);
            } else {
                analyzeExpressionReads(initCore->expression(), state);
            }
            const auto direct = directVariableName(initCore->expression());
            if (binding.type.reference) {
                if (auto* functionCall = functionCallFromContext(initCore->expression())) {
                    const auto found = functions_.find(functionCall->ID() != nullptr ? functionCall->ID()->getText() : std::string());
                    if (found != functions_.end() && found->second.returnType.reference && found->second.ambiguousReferenceReturn) {
                        addDiagnostic(ctx, "reference call `" + functionCall->ID()->getText() + "` can return multiple parameter-backed origins in the current analysis");
                    }
                }
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
        binding.mutableBinding = isMutableBinding(ctx);
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
                binding->moved = false;
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
        if (ctx->closure() != nullptr) {
            analyzeClosureCapture(ctx->closure(), state);
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
            analyzeMemberAccess(ctx->memberaccess(), state);
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

} // namespace

std::vector<std::shared_ptr<const ApolloRuntimePhase>> borrowCheckerPhases() {
    return {
        std::make_shared<OwnershipPhase>(),
        std::make_shared<BorrowPhase>(),
        std::make_shared<MemorySafetyFinalizePhase>(),
        std::make_shared<MemoryLeakPhase>()
    };
}