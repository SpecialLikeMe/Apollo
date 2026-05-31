#include <cstdlib>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <sstream>
#include <string>
#include <vector>

#ifdef _WIN32
#ifndef WIN32_LEAN_AND_MEAN
#define WIN32_LEAN_AND_MEAN
#endif
#ifndef NOMINMAX
#define NOMINMAX
#endif
#include <windows.h>
#ifdef ERROR
#undef ERROR
#endif
#ifdef TRUE
#undef TRUE
#endif
#ifdef FALSE
#undef FALSE
#endif
#ifdef CONST
#undef CONST
#endif
#ifdef IN
#undef IN
#endif
#endif

#include "apollo_driver.h"
#include "apollo_codegen_optimization_plan.h"
#include "apollo_runtime.h"
#include "codegen/optimizer.h"
#include "visitor.h"

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

void initializeConsoleStyling() {
#ifdef _WIN32
    auto enable = [](DWORD handleId) {
        HANDLE handle = GetStdHandle(handleId);
        if (handle == INVALID_HANDLE_VALUE || handle == nullptr) {
            return;
        }
        DWORD mode = 0;
        if (!GetConsoleMode(handle, &mode)) {
            return;
        }
        if ((mode & ENABLE_VIRTUAL_TERMINAL_PROCESSING) == 0) {
            SetConsoleMode(handle, mode | ENABLE_VIRTUAL_TERMINAL_PROCESSING);
        }
    };
    enable(STD_OUTPUT_HANDLE);
    enable(STD_ERROR_HANDLE);
#endif
}

void printErrorLine(const std::string& message) {
    std::cerr << "\x1b[31m" << message << "\x1b[0m\n";
}

struct CliOptions {
    std::string sourcePath = "main.apollo";
    std::string outputPath = "output.ll";
    apollo::codegen::OptConfig opt;
    std::string bitcodePath;
};

bool startsWith(const std::string& s, const char* p) {
    const std::string pp(p);
    return s.size() >= pp.size() && s.compare(0, pp.size(), pp) == 0;
}

bool parseCli(int argc, char** argv, CliOptions& out, std::string& err) {
    std::vector<std::string> positional;
    for (int i = 1; i < argc; ++i) {
        std::string a = argv[i];
        if (a == "-O0") { out.opt.level = 0; }
        else if (a == "-O1") { out.opt.level = 1; }
        else if (a == "-O2") { out.opt.level = 2; }
        else if (a == "-O3") { out.opt.level = 3; }
        else if (a == "-Os") { out.opt.size_opt = true; out.opt.level = 2; }
        else if (a == "--lto") { out.opt.lto = true; }
        else if (a == "--pgo-generate") { out.opt.pgo_instrument = true; }
        else if (startsWith(a, "--pgo-use=")) { out.opt.pgo_use_path = a.substr(std::string("--pgo-use=").size()); }
        else if (startsWith(a, "--emit-bitcode=")) { out.bitcodePath = a.substr(std::string("--emit-bitcode=").size()); }
        else if (startsWith(a, "--target=")) { out.opt.target_triple = a.substr(std::string("--target=").size()); }
        else if (!a.empty() && a[0] == '-') {
            err = "unknown option: " + a;
            return false;
        } else {
            positional.push_back(a);
        }
    }
    if (positional.size() > 2) {
        err = "too many positional arguments";
        return false;
    }
    if (!positional.empty()) out.sourcePath = positional[0];
    if (positional.size() > 1) out.outputPath = positional[1];
    return true;
}

} // namespace

int main(int argc, char** argv) {
    initializeConsoleStyling();
    CliOptions cli;
    std::string parseErr;
    if (!parseCli(argc, argv, cli, parseErr)) {
        printErrorLine("apollo_frontend_native: " + parseErr);
        std::cerr << "Usage: apollo_frontend_native [source.apollo] [output.ll] "
                     "[-O0|-O1|-O2|-O3|-Os] [--lto] [--pgo-generate] [--pgo-use=PATH] "
                     "[--emit-bitcode=PATH] [--target=TRIPLE]\n";
        return 1;
    }

    ApolloIrCodegen::setOptConfig(cli.opt);
    ApolloIrCodegen::setBitcodeOutputPath(cli.bitcodePath);

    try {
        ApolloDriver::compileApollo(cli.sourcePath, cli.outputPath);
        if (showFileDetails()) {
            const auto normalizedSourcePath = std::filesystem::absolute(cli.sourcePath).lexically_normal();
            const auto importRoot = normalizedSourcePath.has_parent_path() ? normalizedSourcePath.parent_path() : std::filesystem::current_path();
            const std::string displaySourcePath = ApolloDriver::displaySourcePath(importRoot, normalizedSourcePath);
            const std::string sourceText = ApolloDriver::preprocessSource(normalizedSourcePath, readSourceFile(cli.sourcePath));
            ApolloCompilerRuntimeCycle runtimeCycle = ApolloCompilerRuntimeCycle::create(displaySourcePath, sourceText);
            runtimeCycle.runPreCodegenPhases();
            auto* tree = runtimeCycle.tree();
            const ApolloCodegenOptimizationPlan optimizationPlan = ApolloCodegenOptimizationPlan::analyze(tree);
            std::cout << "Parsed Apollo source successfully: " << displaySourcePath << '\n';
            std::cout << "SoA-eligible types: " << optimizationPlan.soaEligibleTypes().size() << '\n';
            std::cout << "Uses IR runtime: " << (runtimeCycle.runtimeFeatures().usesIrRuntime() ? "yes" : "no") << '\n';
            std::cout << "Emitted LLVM IR to: " << cli.outputPath << '\n';
        }
        return 0;
    } catch (const ApolloCompilationFailure& ex) {
        printErrorLine(ex.what());
        return 1;
    } catch (const std::exception& ex) {
        printErrorLine("apollo_frontend_native: " + std::string(ex.what()));
        return 1;
    }
}