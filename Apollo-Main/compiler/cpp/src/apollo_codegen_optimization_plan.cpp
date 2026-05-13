#include "apollo_codegen_optimization_plan.h"

#include <any>
#include <utility>

#include "compilerv1BaseVisitor.h"
#include "compilerv1Parser.h"

namespace {

class SoaEligibilityScanner final : public compilerv1BaseVisitor {
public:
    [[nodiscard]] const std::set<std::string>& soaEligibleTypes() const {
        return soaEligibleTypes_;
    }

    std::any visitClass(compilerv1Parser::ClassContext* ctx) override {
        if (ctx != nullptr && isSoaEligible(ctx)) {
            soaEligibleTypes_.insert(ctx->ID()->getText());
        }
        return visitChildren(ctx);
    }

    std::any visitStruct(compilerv1Parser::StructContext* ctx) override {
        if (ctx != nullptr && isSoaEligible(ctx)) {
            soaEligibleTypes_.insert(ctx->ID()->getText());
        }
        return visitChildren(ctx);
    }

private:
    bool isSoaEligible(compilerv1Parser::ClassContext* ctx) const {
        if (ctx == nullptr || ctx->inheritanceClause() != nullptr) {
            return false;
        }
        for (auto* member : ctx->classBody()->classMember()) {
            if (!isSoaEligibleMember(member->field(), member->method(), member->templateDecl(), member->class_(), member->struct_())) {
                return false;
            }
        }
        return true;
    }

    bool isSoaEligible(compilerv1Parser::StructContext* ctx) const {
        if (ctx == nullptr || ctx->inheritanceClause() != nullptr) {
            return false;
        }
        for (auto* member : ctx->structBody()->structMember()) {
            if (!isSoaEligibleMember(member->field(), member->method(), member->templateDecl(), member->class_(), member->struct_())) {
                return false;
            }
        }
        return true;
    }

    bool isSoaEligibleMember(compilerv1Parser::FieldContext* field,
        compilerv1Parser::MethodContext* method,
        compilerv1Parser::TemplateDeclContext* templateDecl,
        compilerv1Parser::ClassContext* nestedClass,
        compilerv1Parser::StructContext* nestedStruct) const {
        if (templateDecl != nullptr || nestedClass != nullptr || nestedStruct != nullptr) {
            return false;
        }
        if (method != nullptr) {
            return method->ID() != nullptr && method->VIRTUAL() == nullptr;
        }
        return field == nullptr || isSoaEligibleField(field);
    }

    bool isSoaEligibleField(compilerv1Parser::FieldContext* field) const {
        auto* typeRef = field->typeRef();
        if (typeRef == nullptr || !typeRef->typeModifier().empty()) {
            return false;
        }
        auto* typeAtom = typeRef->typeAtom();
        if (typeAtom == nullptr) {
            return false;
        }
        if (typeAtom->genericType() != nullptr || typeAtom->functionType() != nullptr) {
            return false;
        }
        return typeAtom->TYPE() != nullptr || typeAtom->FTYPE() != nullptr;
    }

    std::set<std::string> soaEligibleTypes_;
};

} // namespace

ApolloCodegenOptimizationPlan::ApolloCodegenOptimizationPlan(std::set<std::string> soaEligibleTypes)
    : soaEligibleTypes_(std::move(soaEligibleTypes)) {
}

bool ApolloCodegenOptimizationPlan::usesSoaRuntime() const {
    return !soaEligibleTypes_.empty();
}

bool ApolloCodegenOptimizationPlan::shouldLowerVectorElement(const std::string& typeName) const {
    return soaEligibleTypes_.contains(typeName);
}

const std::set<std::string>& ApolloCodegenOptimizationPlan::soaEligibleTypes() const {
    return soaEligibleTypes_;
}

ApolloCodegenOptimizationPlan ApolloCodegenOptimizationPlan::analyze(compilerv1Parser::ProgramContext* tree) {
    SoaEligibilityScanner scanner;
    scanner.visit(tree);
    return ApolloCodegenOptimizationPlan(scanner.soaEligibleTypes());
}