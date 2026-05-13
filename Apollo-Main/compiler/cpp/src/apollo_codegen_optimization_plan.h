#pragma once

#include <set>
#include <string>

#include "compilerv1Parser.h"

class ApolloCodegenOptimizationPlan {
public:
    explicit ApolloCodegenOptimizationPlan(std::set<std::string> soaEligibleTypes);

    [[nodiscard]] bool usesSoaRuntime() const;
    [[nodiscard]] bool shouldLowerVectorElement(const std::string& typeName) const;
    [[nodiscard]] const std::set<std::string>& soaEligibleTypes() const;

    static ApolloCodegenOptimizationPlan analyze(compilerv1Parser::ProgramContext* tree);

private:
    std::set<std::string> soaEligibleTypes_;
};