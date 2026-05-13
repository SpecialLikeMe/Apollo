#include <chrono>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <set>
#include <string>
#include <thread>

#include "apollo_driver.h"

namespace {

std::string readTextFile(const std::filesystem::path& path) {
    std::ifstream input(path, std::ios::binary);
    if (!input) {
        throw std::runtime_error("failed to open file: " + path.string());
    }
    return std::string(std::istreambuf_iterator<char>(input), std::istreambuf_iterator<char>());
}

bool require(bool condition, const std::string& message) {
    if (condition) {
        return true;
    }
    std::cerr << message << '\n';
    return false;
}

} // namespace

int main() {
    const auto originalCwd = std::filesystem::current_path();
    const auto workspace = std::filesystem::temp_directory_path() / std::filesystem::path("apollo-cache-test-native");
    std::error_code ec;
    std::filesystem::remove_all(workspace, ec);
    std::filesystem::create_directories(workspace);
    std::filesystem::current_path(workspace);

    try {
        const auto source = workspace / "main.apollo";
        const auto output = workspace / "cached-output.ll";

        {
            std::ofstream file(source, std::ios::binary | std::ios::trunc);
            file << "int main() { return 1; }\n";
        }

        ApolloDriver::compileApollo(source.string(), output.string());
        if (!require(std::filesystem::exists(output), "first compile should generate output")) {
            std::filesystem::current_path(originalCwd);
            return 1;
        }
        if (!require(std::filesystem::exists(ApolloDriver::cacheEntryPath(source, output)), "first compile should write cache metadata")) {
            std::filesystem::current_path(originalCwd);
            return 1;
        }

        const auto firstWrite = std::filesystem::last_write_time(output);
        std::this_thread::sleep_for(std::chrono::milliseconds(1200));

        ApolloDriver::compileApollo(source.string(), output.string());
        const auto secondWrite = std::filesystem::last_write_time(output);
        if (!require(firstWrite == secondWrite, "unchanged sources should reuse cached LLVM IR output")) {
            std::filesystem::current_path(originalCwd);
            return 1;
        }

        std::this_thread::sleep_for(std::chrono::milliseconds(1200));
        {
            std::ofstream file(source, std::ios::binary | std::ios::trunc);
            file << "int main() { return 2; }\n";
        }

        ApolloDriver::compileApollo(source.string(), output.string());
        const auto thirdWrite = std::filesystem::last_write_time(output);
        if (!require(thirdWrite > secondWrite, "editing the source should invalidate the cache")) {
            std::filesystem::current_path(originalCwd);
            return 1;
        }

        const auto dependencyDir = workspace / "support";
        std::filesystem::create_directories(dependencyDir);
        const auto dependencySource = dependencyDir / "helper.apollo";
        const auto dependencyOutput = workspace / "deps" / "support" / "helper.ll";

        {
            std::ofstream file(dependencySource, std::ios::binary | std::ios::trunc);
            file << "int helper_value() { return 7; }\n";
        }
        {
            std::ofstream file(source, std::ios::binary | std::ios::trunc);
            file << "extern {support.helper};\n"
                    "int main() {\n"
                    "    return helper_value();\n"
                    "}\n";
        }

        ApolloDriver::compileApollo(source.string(), output.string());
        if (!require(std::filesystem::exists(dependencyOutput), "dependency compile should materialize imported Apollo module output")) {
            std::filesystem::current_path(originalCwd);
            return 1;
        }
        if (!require(std::filesystem::exists(ApolloDriver::cacheEntryPath(dependencySource, dependencyOutput)), "dependency compile should write cache metadata for imported Apollo module output")) {
            std::filesystem::current_path(originalCwd);
            return 1;
        }

        std::filesystem::remove(dependencyOutput, ec);
        ApolloDriver::compileApollo(source.string(), output.string());
        if (!require(std::filesystem::exists(dependencyOutput), "dependency output should be restored on top-level cache hit")) {
            std::filesystem::current_path(originalCwd);
            return 1;
        }
    } catch (const std::exception& ex) {
        std::filesystem::current_path(originalCwd);
        std::cerr << ex.what() << '\n';
        return 1;
    }

    std::filesystem::current_path(originalCwd);
    return 0;
}