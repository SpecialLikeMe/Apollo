#pragma once

#include <filesystem>
#include <optional>
#include <string>
#include <string_view>

#include "apollo_ir_layout_plan.h"
#include "apollo_runtime.h"
#include "codegen/optimizer.h"
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

    // Process-wide opt config consulted by emitModule. Default: O0/no-op.
    static void setOptConfig(const apollo::codegen::OptConfig& cfg);
    static const apollo::codegen::OptConfig& optConfig();

    // Optional bitcode sidecar output path. Empty disables.
    static void setBitcodeOutputPath(std::string path);
    static const std::string& bitcodeOutputPath();

    [[nodiscard]] static std::optional<std::string> lowerPrimitiveType(std::string_view apolloType);
};