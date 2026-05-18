#pragma once

#include <filesystem>
#include <optional>
#include <string>
#include <string_view>

#include "apollo_ir_layout_plan.h"
#include "apollo_runtime.h"
#include "compilerv1Parser.h"

class ApolloIrCodegen {
public:
    static void emitModule(const std::filesystem::path& outputPath,
        const std::string& moduleKey,
        const std::string& displaySourcePath,
        const std::filesystem::path& sourcePath,
        compilerv1Parser::ProgramContext* tree,
        const ApolloRuntimeFeatureManifest& runtimeFeatures,
        const ApolloIrLayoutPlan& layoutPlan,
        bool allowPartialLowering);

    static void emitPrototypeModule(const std::filesystem::path& outputPath,
        const std::string& moduleKey,
        const std::string& displaySourcePath,
        const std::filesystem::path& sourcePath,
        compilerv1Parser::ProgramContext* tree,
        const ApolloRuntimeFeatureManifest& runtimeFeatures,
        const ApolloIrLayoutPlan& layoutPlan);

    [[nodiscard]] static std::optional<std::string> lowerPrimitiveType(std::string_view apolloType);
};