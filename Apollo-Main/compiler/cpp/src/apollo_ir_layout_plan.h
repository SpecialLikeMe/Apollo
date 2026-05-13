#pragma once

#include <string>
#include <string_view>
#include <vector>

#include "apollo_codegen_optimization_plan.h"
#include "compilerv1Parser.h"

enum class ApolloIrStorageKind {
    ArrayOfStructs,
    FullStructOfArrays,
    BridgeExcluded,
    Unsupported,
};

struct ApolloIrFieldLayout {
    std::string name;
    std::string sourceTypeName;
    bool isPrimitive = false;
};

struct ApolloIrAggregateLayout {
    std::string name;
    ApolloIrStorageKind storageKind = ApolloIrStorageKind::Unsupported;
    bool isClass = false;
    bool hasInheritance = false;
    bool hasVirtualMethods = false;
    std::string note;
    std::vector<ApolloIrFieldLayout> fields;
};

class ApolloIrLayoutPlan {
public:
    explicit ApolloIrLayoutPlan(std::vector<ApolloIrAggregateLayout> aggregateLayouts);

    [[nodiscard]] const std::vector<ApolloIrAggregateLayout>& aggregateLayouts() const;
    [[nodiscard]] bool usesFullSoa() const;
    [[nodiscard]] const ApolloIrAggregateLayout* findAggregateLayout(std::string_view name) const;

    static ApolloIrLayoutPlan analyze(compilerv1Parser::ProgramContext* tree,
        const ApolloCodegenOptimizationPlan& optimizationPlan);

private:
    std::vector<ApolloIrAggregateLayout> aggregateLayouts_;
};