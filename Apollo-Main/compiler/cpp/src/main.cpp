#include <cstdlib>
#include <fstream>
#include <iostream>
#include <sstream>
#include <string>

#include "apollo_driver.h"
#include "apollo_codegen_optimization_plan.h"
#include "apollo_runtime.h"

namespace {

std::string readSourceFile(const std::string& path) {
    std::ifstream input(path, std::ios::binary);
    if (!input) {
        throw std::runtime_error("failed to open source file: " + path);
    }

    std::ostringstream buffer;
    buffer << input.rdbuf();
    return buffer.str();
}

bool showFileDetails() {
    const char* rawValue = std::getenv("APOLLO_SHOW_FILE_DETAILS");
    if (rawValue == nullptr) {
        return false;
    }

    const std::string value(rawValue);
    return value == "1" || value == "true" || value == "TRUE"
        || value == "yes" || value == "YES"
        || value == "on" || value == "ON";
}

} // namespace

int main(int argc, char** argv) {
    if (argc > 3) {
        std::cerr << "Usage: apollo_frontend_native [source.apollo] [output.ll]\n";
        return 1;
    }

    const std::string sourcePath = argc > 1 ? argv[1] : "main.apollo";
    const std::string outputPath = argc > 2 ? argv[2] : "output.ll";

    try {
        ApolloDriver::compileApollo(sourcePath, outputPath);
        if (showFileDetails()) {
            const std::string sourceText = readSourceFile(sourcePath);
            ApolloCompilerRuntimeCycle runtimeCycle = ApolloCompilerRuntimeCycle::create(sourcePath, sourceText);
            runtimeCycle.runPreCodegenPhases();
            auto* tree = runtimeCycle.tree();
            const ApolloCodegenOptimizationPlan optimizationPlan = ApolloCodegenOptimizationPlan::analyze(tree);
            std::cout << "Parsed Apollo source successfully: " << sourcePath << '\n';
            std::cout << "SoA-eligible types: " << optimizationPlan.soaEligibleTypes().size() << '\n';
            std::cout << "Uses IR runtime: " << (runtimeCycle.runtimeFeatures().usesIrRuntime() ? "yes" : "no") << '\n';
            std::cout << "Emitted LLVM IR to: " << outputPath << '\n';
        }
        return 0;
    } catch (const ApolloCompilationFailure& ex) {
        std::cerr << ex.what() << '\n';
        return 1;
    } catch (const std::exception& ex) {
        std::cerr << "apollo_frontend_native: " << ex.what() << '\n';
        return 1;
    }
}