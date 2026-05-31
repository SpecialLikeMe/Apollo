#include "apollo_ir_layout_plan.h"

#include <any>
#include <utility>

#include "compilerv1BaseVisitor.h"

namespace {

bool isPrimitiveField(compilerv1Parser::FieldContext* field) {
    if (field == nullptr || field->typeRef() == nullptr || !field->typeRef()->typeModifier().empty()) {
        return false;
    }
    auto* typeAtom = field->typeRef()->typeAtom();
    if (typeAtom == nullptr) {
        return false;
    }
    return typeAtom->TYPE() != nullptr || typeAtom->FTYPE() != nullptr;
}

ApolloIrFieldLayout makeFieldLayout(compilerv1Parser::FieldContext* field) {
    ApolloIrFieldLayout layout;
    layout.name = field->ID()->getText();
    layout.sourceTypeName = field->typeRef() != nullptr ? field->typeRef()->getText() : std::string();
    layout.isPrimitive = isPrimitiveField(field);
    return layout;
}

class ApolloIrLayoutScanner final : public compilerv1BaseVisitor {
public:
    explicit ApolloIrLayoutScanner(const ApolloCodegenOptimizationPlan& optimizationPlan)
        : optimizationPlan_(optimizationPlan) {
    }

    [[nodiscard]] const std::vector<ApolloIrAggregateLayout>& aggregateLayouts() const {
        return aggregateLayouts_;
    }

    std::any visitClass(compilerv1Parser::ClassContext* ctx) override {
        if (ctx != nullptr) {
            aggregateLayouts_.push_back(buildClassLayout(ctx));
        }
        return visitChildren(ctx);
    }

    std::any visitStruct(compilerv1Parser::StructContext* ctx) override {
        if (ctx != nullptr) {
            aggregateLayouts_.push_back(buildStructLayout(ctx));
        }
        return visitChildren(ctx);
    }

private:
    ApolloIrAggregateLayout buildClassLayout(compilerv1Parser::ClassContext* ctx) const {
        ApolloIrAggregateLayout layout;
        layout.name = ctx->ID()->getText();
        layout.isClass = true;
        layout.hasInheritance = ctx->inheritanceClause() != nullptr;
        layout.storageKind = optimizationPlan_.soaEligibleTypes().contains(layout.name)
            ? ApolloIrStorageKind::FullStructOfArrays
            : ApolloIrStorageKind::ArrayOfStructs;

        for (auto* member : ctx->classBody()->classMember()) {
            if (member->field() != nullptr) {
                layout.fields.push_back(makeFieldLayout(member->field()));
            }
            if (member->method() != nullptr && member->method()->VIRTUAL() != nullptr) {
                layout.hasVirtualMethods = true;
            }
        }

        if (layout.hasInheritance) {
            layout.note = "inheritance";
        } else if (layout.hasVirtualMethods) {
            layout.note = "virtual-methods";
        } else if (layout.storageKind == ApolloIrStorageKind::FullStructOfArrays) {
            layout.note = "full-soa-eligible";
        } else {
            layout.note = "aos-fallback";
        }
        return layout;
    }

    ApolloIrAggregateLayout buildStructLayout(compilerv1Parser::StructContext* ctx) const {
        ApolloIrAggregateLayout layout;
        layout.name = ctx->ID()->getText();
        layout.isClass = false;
        layout.hasInheritance = ctx->inheritanceClause() != nullptr;
        layout.storageKind = optimizationPlan_.soaEligibleTypes().contains(layout.name)
            ? ApolloIrStorageKind::FullStructOfArrays
            : ApolloIrStorageKind::ArrayOfStructs;

        for (auto* member : ctx->structBody()->structMember()) {
            if (member->field() != nullptr) {
                layout.fields.push_back(makeFieldLayout(member->field()));
            }
            if (member->method() != nullptr && member->method()->VIRTUAL() != nullptr) {
                layout.hasVirtualMethods = true;
            }
        }

        if (layout.hasInheritance) {
            layout.note = "inheritance";
        } else if (layout.hasVirtualMethods) {
            layout.note = "virtual-methods";
        } else if (layout.storageKind == ApolloIrStorageKind::FullStructOfArrays) {
            layout.note = "full-soa-eligible";
        } else {
            layout.note = "aos-fallback";
        }
        return layout;
    }

    const ApolloCodegenOptimizationPlan& optimizationPlan_;
    std::vector<ApolloIrAggregateLayout> aggregateLayouts_;
};

} // namespace

ApolloIrLayoutPlan::ApolloIrLayoutPlan(std::vector<ApolloIrAggregateLayout> aggregateLayouts)
    : aggregateLayouts_(std::move(aggregateLayouts)) {
}

const std::vector<ApolloIrAggregateLayout>& ApolloIrLayoutPlan::aggregateLayouts() const {
    return aggregateLayouts_;
}

bool ApolloIrLayoutPlan::usesFullSoa() const {
    for (const auto& aggregate : aggregateLayouts_) {
        if (aggregate.storageKind == ApolloIrStorageKind::FullStructOfArrays) {
            return true;
        }
    }
    return false;
}

const ApolloIrAggregateLayout* ApolloIrLayoutPlan::findAggregateLayout(std::string_view name) const {
    for (const auto& aggregate : aggregateLayouts_) {
        if (aggregate.name == name) {
            return &aggregate;
        }
    }
    return nullptr;
}

ApolloIrLayoutPlan ApolloIrLayoutPlan::analyze(compilerv1Parser::ProgramContext* tree,
    const ApolloCodegenOptimizationPlan& optimizationPlan) {
    ApolloIrLayoutScanner scanner(optimizationPlan);
    scanner.visit(tree);
    return ApolloIrLayoutPlan(scanner.aggregateLayouts());
}