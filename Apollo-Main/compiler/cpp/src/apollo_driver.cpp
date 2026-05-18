#include "apollo_driver.h"

#include <cctype>
#include <chrono>
#include <filesystem>
#include <fstream>
#include <iomanip>
#include <optional>
#include <sstream>
#include <stdexcept>
#include <string_view>
#include <unordered_set>

#include "apollo_codegen_optimization_plan.h"
#include "apollo_ir_layout_plan.h"
#include "apollo_runtime.h"
#include "visitor.h"

namespace {

constexpr std::string_view kCompilerCacheVersion = "apollo-native-cache-v1";

struct CompileCacheEntry {
    std::string compilerSignature;
    std::string sourceHash;
    std::string outputHash;
    std::filesystem::path cachedOutputPath;
    std::vector<std::string> dependencies;
};

bool envEnabled(const char* name) {
    const char* value = std::getenv(name);
    if (value == nullptr) {
        return false;
    }
    const std::string normalized(value);
    return normalized == "1" || normalized == "true" || normalized == "TRUE"
        || normalized == "yes" || normalized == "YES"
        || normalized == "on" || normalized == "ON";
}

bool incrementalCacheEnabled() {
    static const bool enabled = !envEnabled("APOLLO_DISABLE_INCREMENTAL_CACHE");
    return enabled;
}

std::string toPackageSourcePath(const std::string& importPath) {
    std::string path = importPath;
    std::replace(path.begin(), path.end(), '.', '/');
    path += ".apollo";
    return path;
}

std::vector<std::string> collectDependencyMetadata(compilerv1Parser::ProgramContext* tree) {
    std::vector<std::string> dependencies;
    if (tree == nullptr) {
        return dependencies;
    }

    for (auto* importStmt : tree->importStmt()) {
        if (importStmt->STRING() != nullptr) {
            std::string text = importStmt->STRING()->getText();
            if (text.size() >= 2 && text.front() == '"' && text.back() == '"') {
                text = text.substr(1, text.size() - 2);
            }
            dependencies.push_back(text);
            continue;
        }
        if (importStmt->headerPath() != nullptr) {
            dependencies.push_back(importStmt->headerPath()->getText());
            continue;
        }
        if (importStmt->importPath() != nullptr) {
            const std::string importPath = importStmt->importPath()->getText();
            if (importPath.find('*') == std::string::npos) {
                dependencies.push_back(importPath);
            }
        }
    }

    for (auto* includeStmt : tree->include()) {
        if (includeStmt->importPath() != nullptr) {
            dependencies.push_back(toPackageSourcePath(includeStmt->importPath()->getText()));
        }
    }

    return dependencies;
}

std::string stableHashHex(std::string_view text) {
    constexpr unsigned long long fnvOffset = 1469598103934665603ull;
    constexpr unsigned long long fnvPrime = 1099511628211ull;
    unsigned long long value = fnvOffset;
    for (const unsigned char ch : text) {
        value ^= ch;
        value *= fnvPrime;
    }
    std::ostringstream builder;
    builder << std::hex << std::setw(16) << std::setfill('0') << value;
    return builder.str();
}

std::string formatDisplayPath(const std::filesystem::path& path) {
    const std::string generic = path.generic_string();
#ifdef _WIN32
    return generic;
#else
    if (generic.size() > 7
        && generic.rfind("/mnt/", 0) == 0
        && std::isalpha(static_cast<unsigned char>(generic[5]))
        && generic[6] == '/') {
        std::string converted;
        converted.push_back(static_cast<char>(std::toupper(static_cast<unsigned char>(generic[5]))));
        converted.push_back(':');
        converted.append(generic.substr(6));
        return converted;
    }
    return generic;
#endif
}

std::string buildModuleKeyForImportRoot(const std::filesystem::path& importRoot, const std::filesystem::path& sourcePath) {
    const auto normalizedImportRoot = std::filesystem::absolute(importRoot).lexically_normal();
    const auto normalizedSourcePath = std::filesystem::absolute(sourcePath).lexically_normal();
    std::filesystem::path modulePath;
    if (normalizedSourcePath.string().starts_with(normalizedImportRoot.string())) {
        modulePath = std::filesystem::relative(normalizedSourcePath, normalizedImportRoot);
    } else {
        modulePath = normalizedSourcePath.filename();
    }

    std::string moduleKey = modulePath.generic_string();
    if (moduleKey.size() >= 7 && moduleKey.ends_with(".apollo")) {
        moduleKey.resize(moduleKey.size() - 7);
    } else if (moduleKey.size() >= 4 && moduleKey.ends_with(".aph")) {
        moduleKey.resize(moduleKey.size() - 4);
    }
    return moduleKey;
}

std::string readTextFile(const std::filesystem::path& path) {
    std::ifstream input(path, std::ios::binary);
    if (!input) {
        throw std::runtime_error("failed to open source file: " + path.string());
    }
    std::ostringstream builder;
    builder << input.rdbuf();
    return builder.str();
}

std::vector<std::string> readLines(const std::filesystem::path& path) {
    std::ifstream input(path, std::ios::binary);
    if (!input) {
        throw std::runtime_error("failed to open file: " + path.string());
    }
    std::vector<std::string> lines;
    std::string line;
    while (std::getline(input, line)) {
        if (!line.empty() && line.back() == '\r') {
            line.pop_back();
        }
        lines.push_back(line);
    }
    return lines;
}

std::optional<CompileCacheEntry> tryLoadCompileCache(const std::filesystem::path& sourcePath, const std::filesystem::path& outputPath) {
    if (!incrementalCacheEnabled()) {
        return std::nullopt;
    }

    const auto normalizedOutput = std::filesystem::absolute(outputPath).lexically_normal();
    if (!std::filesystem::exists(normalizedOutput)) {
        return std::nullopt;
    }

    const auto metadataPath = ApolloDriver::cacheEntryPath(sourcePath, outputPath);
    if (!std::filesystem::exists(metadataPath)) {
        return std::nullopt;
    }

    std::string version;
    std::string compilerSignature;
    std::string sourceHash;
    std::string outputHash;
    std::vector<std::string> dependencies;
    for (const auto& line : readLines(metadataPath)) {
        if (line.rfind("version=", 0) == 0) {
            version = line.substr(8);
        } else if (line.rfind("compilerSignature=", 0) == 0) {
            compilerSignature = line.substr(18);
        } else if (line.rfind("sourceHash=", 0) == 0) {
            sourceHash = line.substr(11);
        } else if (line.rfind("outputHash=", 0) == 0) {
            outputHash = line.substr(11);
        } else if (line.rfind("dependency=", 0) == 0) {
            dependencies.push_back(line.substr(11));
        }
    }

    if (version != kCompilerCacheVersion) {
        return std::nullopt;
    }
    if (compilerSignature.empty() || compilerSignature != ApolloDriver::currentCompilerSignature()) {
        return std::nullopt;
    }
    if (sourceHash.empty() || sourceHash != stableHashHex(readTextFile(sourcePath))) {
        return std::nullopt;
    }

    const auto artifactPath = ApolloDriver::cacheArtifactPath(sourcePath, outputPath);
    if (outputHash.empty() || !std::filesystem::exists(artifactPath)) {
        return std::nullopt;
    }

    return CompileCacheEntry{ compilerSignature, sourceHash, outputHash, artifactPath, dependencies };
}

void restoreCachedOutputIfNeeded(const CompileCacheEntry& cacheEntry, const std::filesystem::path& outputPath) {
    const auto normalizedOutput = std::filesystem::absolute(outputPath).lexically_normal();
    if (std::filesystem::exists(normalizedOutput)) {
        if (stableHashHex(readTextFile(normalizedOutput)) == cacheEntry.outputHash) {
            return;
        }
    }

    if (normalizedOutput.has_parent_path()) {
        std::filesystem::create_directories(normalizedOutput.parent_path());
    }
    std::filesystem::copy_file(cacheEntry.cachedOutputPath, normalizedOutput, std::filesystem::copy_options::overwrite_existing);
}

void writeCompileCache(const std::filesystem::path& sourcePath, const std::filesystem::path& outputPath,
    const std::vector<std::string>& dependencies) {
    if (!incrementalCacheEnabled()) {
        return;
    }

    const auto metadataPath = ApolloDriver::cacheEntryPath(sourcePath, outputPath);
    const auto artifactPath = ApolloDriver::cacheArtifactPath(sourcePath, outputPath);
    if (metadataPath.has_parent_path()) {
        std::filesystem::create_directories(metadataPath.parent_path());
    }
    std::filesystem::copy_file(outputPath, artifactPath, std::filesystem::copy_options::overwrite_existing);

    std::ofstream output(metadataPath, std::ios::binary | std::ios::trunc);
    if (!output) {
        throw std::runtime_error("failed to write cache metadata: " + metadataPath.string());
    }
    output << "version=" << kCompilerCacheVersion << '\n';
    output << "compilerSignature=" << ApolloDriver::currentCompilerSignature() << '\n';
    output << "sourceHash=" << stableHashHex(readTextFile(sourcePath)) << '\n';
    output << "outputHash=" << stableHashHex(readTextFile(outputPath)) << '\n';
    for (const auto& dependency : dependencies) {
        output << "dependency=" << dependency << '\n';
    }
}

bool hasApolloSourceExtension(const std::filesystem::path& path) {
    const auto extension = path.extension().string();
    return extension == ".apollo" || extension == ".aph";
}

std::optional<std::filesystem::path> normalizeApolloDependencyPath(const std::filesystem::path& importRoot,
    const std::filesystem::path& candidate) {
    const auto resolved = std::filesystem::absolute(candidate.is_absolute() ? candidate : (importRoot / candidate)).lexically_normal();
    if (!hasApolloSourceExtension(resolved) || !std::filesystem::exists(resolved)) {
        return std::nullopt;
    }
    return resolved;
}

std::optional<std::filesystem::path> resolveApolloDependencySource(const std::filesystem::path& importRoot,
    std::string_view dependency) {
    if (dependency.empty() || dependency.find('*') != std::string_view::npos) {
        return std::nullopt;
    }

    const std::string dependencyText(dependency);
    const std::filesystem::path dependencyPath(dependencyText);
    if (hasApolloSourceExtension(dependencyPath)) {
        if (auto resolved = normalizeApolloDependencyPath(importRoot, dependencyPath)) {
            return resolved;
        }
    }

    if (dependencyText.find('.') != std::string::npos) {
        if (auto resolved = normalizeApolloDependencyPath(importRoot, toPackageSourcePath(dependencyText))) {
            return resolved;
        }
    }

    if (dependencyText.find_first_of("/\\") != std::string::npos) {
        std::filesystem::path withApolloExtension = dependencyPath;
        if (!withApolloExtension.has_extension()) {
            withApolloExtension.replace_extension(".apollo");
        }
        if (auto resolved = normalizeApolloDependencyPath(importRoot, withApolloExtension)) {
            return resolved;
        }
    }

    return std::nullopt;
}

std::filesystem::path dependencyOutputPath(const std::filesystem::path& dependencyRoot,
    const std::filesystem::path& importRoot,
    const std::filesystem::path& sourcePath) {
    std::error_code error;
    std::filesystem::path relativePath = std::filesystem::relative(sourcePath, importRoot, error);
    if (error || relativePath.empty() || relativePath.string().starts_with("..")) {
        relativePath = sourcePath.filename();
    }
    relativePath.replace_extension(".ll");
    return std::filesystem::absolute(dependencyRoot / relativePath).lexically_normal();
}

void compileApolloRecursive(const std::filesystem::path& sourcePath,
    const std::filesystem::path& outputPath,
    const std::filesystem::path& importRoot,
    const std::filesystem::path& dependencyRoot,
    std::set<std::string>& generatedFiles,
    std::unordered_set<std::string>& activeSources) {
    const auto normalizedSource = std::filesystem::absolute(sourcePath).lexically_normal();
    const auto normalizedOutput = std::filesystem::absolute(outputPath).lexically_normal();
    if (!activeSources.insert(normalizedSource.string()).second) {
        return;
    }

    auto releaseActive = [&]() {
        activeSources.erase(normalizedSource.string());
    };

    try {
        if (const auto cacheEntry = tryLoadCompileCache(normalizedSource, normalizedOutput)) {
            restoreCachedOutputIfNeeded(*cacheEntry, normalizedOutput);
            generatedFiles.insert(normalizedOutput.string());
            for (const auto& dependency : cacheEntry->dependencies) {
                const auto dependencySource = resolveApolloDependencySource(importRoot, dependency);
                if (!dependencySource.has_value()) {
                    continue;
                }
                compileApolloRecursive(*dependencySource,
                    dependencyOutputPath(dependencyRoot, importRoot, *dependencySource),
                    importRoot,
                    dependencyRoot,
                    generatedFiles,
                    activeSources);
            }
            releaseActive();
            return;
        }

        const std::string program = readTextFile(normalizedSource);
        const std::string displayPath = ApolloDriver::displaySourcePath(importRoot, normalizedSource);

        ApolloCompilerRuntimeCycle runtimeCycle = ApolloCompilerRuntimeCycle::create(displayPath, program);
        runtimeCycle.runPreCodegenPhases();

        const std::vector<std::string> dependencies = collectDependencyMetadata(runtimeCycle.tree());
        for (const auto& dependency : dependencies) {
            const auto dependencySource = resolveApolloDependencySource(importRoot, dependency);
            if (!dependencySource.has_value()) {
                continue;
            }
            compileApolloRecursive(*dependencySource,
                dependencyOutputPath(dependencyRoot, importRoot, *dependencySource),
                importRoot,
                dependencyRoot,
                generatedFiles,
                activeSources);
        }

        const ApolloCodegenOptimizationPlan optimizationPlan = ApolloCodegenOptimizationPlan::analyze(runtimeCycle.tree());
        const ApolloIrLayoutPlan layoutPlan = ApolloIrLayoutPlan::analyze(runtimeCycle.tree(), optimizationPlan);
        ApolloIrCodegen::emitModule(normalizedOutput,
            buildModuleKeyForImportRoot(importRoot, normalizedSource),
            displayPath,
            normalizedSource,
            runtimeCycle.tree(),
            runtimeCycle.runtimeFeatures(),
            layoutPlan,
            false);

        writeCompileCache(normalizedSource, normalizedOutput, dependencies);
        generatedFiles.insert(normalizedOutput.string());
        releaseActive();
    } catch (...) {
        releaseActive();
        throw;
    }
}

} // namespace

void ApolloDriver::compileApollo(const std::string& inputPath, const std::string& outputPath) {
    const auto sourcePath = std::filesystem::absolute(inputPath).lexically_normal();
    const auto importRoot = determineImportRoot(sourcePath);
    const auto normalizedOutput = std::filesystem::absolute(std::filesystem::path(outputPath)).lexically_normal();
    const auto dependencyRoot = normalizedOutput.has_parent_path()
        ? (normalizedOutput.parent_path() / "deps").lexically_normal()
        : (std::filesystem::current_path() / "deps").lexically_normal();

    std::set<std::string> generatedFiles;
    std::unordered_set<std::string> activeSources;
    compileApolloRecursive(sourcePath, normalizedOutput, importRoot, dependencyRoot, generatedFiles, activeSources);
    writeCleanupManifest(generatedFiles);
}

void ApolloDriver::emitDirectIrPrototype(const std::string& inputPath, const std::string& outputPath) {
    const auto sourcePath = std::filesystem::absolute(inputPath).lexically_normal();
    const auto importRoot = determineImportRoot(sourcePath);
    const std::string program = readTextFile(sourcePath);
    const std::string displayPath = displaySourcePath(importRoot, sourcePath);

    ApolloCompilerRuntimeCycle runtimeCycle = ApolloCompilerRuntimeCycle::create(displayPath, program);
    runtimeCycle.runPreCodegenPhases();

    const ApolloCodegenOptimizationPlan optimizationPlan = ApolloCodegenOptimizationPlan::analyze(runtimeCycle.tree());
    const ApolloIrLayoutPlan layoutPlan = ApolloIrLayoutPlan::analyze(runtimeCycle.tree(), optimizationPlan);
    ApolloIrCodegen::emitPrototypeModule(std::filesystem::path(outputPath),
        buildModuleKey(importRoot, sourcePath),
        displayPath,
        sourcePath,
        runtimeCycle.tree(),
        runtimeCycle.runtimeFeatures(),
        layoutPlan);

    writeCleanupManifest({ std::filesystem::absolute(std::filesystem::path(outputPath)).lexically_normal().string() });
}

std::filesystem::path ApolloDriver::determineImportRoot(const std::filesystem::path& sourcePath) {
    const auto absolute = std::filesystem::absolute(sourcePath).lexically_normal();
    return absolute.has_parent_path() ? absolute.parent_path() : std::filesystem::current_path();
}

std::string ApolloDriver::displaySourcePath(const std::filesystem::path& importRoot, const std::filesystem::path& sourcePath) {
    const auto normalizedImportRoot = std::filesystem::absolute(importRoot).lexically_normal();
    const auto normalizedSourcePath = std::filesystem::absolute(sourcePath).lexically_normal();

    std::error_code error;
    const auto relativePath = std::filesystem::relative(normalizedSourcePath, normalizedImportRoot, error);
    if (!error && !relativePath.empty()) {
        const std::string relativeText = relativePath.generic_string();
        if (!relativeText.starts_with("..")) {
            return relativeText;
        }
    }

    return formatDisplayPath(normalizedSourcePath);
}

std::string ApolloDriver::buildModuleKey(const std::filesystem::path& importRoot, const std::filesystem::path& sourcePath) {
    return buildModuleKeyForImportRoot(importRoot, sourcePath);
}

std::filesystem::path ApolloDriver::cacheEntryPath(const std::filesystem::path& sourcePath, const std::filesystem::path& outputPath) {
    const auto cacheRoot = std::filesystem::absolute(std::filesystem::path("output") / "cache").lexically_normal();
    const std::string cacheKey = stableHashHex(std::filesystem::absolute(sourcePath).lexically_normal().string()
        + "|" + std::filesystem::absolute(outputPath).lexically_normal().string());
    return cacheRoot / (cacheKey + ".meta");
}

std::filesystem::path ApolloDriver::cacheArtifactPath(const std::filesystem::path& sourcePath, const std::filesystem::path& outputPath) {
    const auto cacheRoot = std::filesystem::absolute(std::filesystem::path("output") / "cache").lexically_normal();
    const std::string cacheKey = stableHashHex(std::filesystem::absolute(sourcePath).lexically_normal().string()
        + "|" + std::filesystem::absolute(outputPath).lexically_normal().string());
    return cacheRoot / (cacheKey + ".artifact");
}

std::string ApolloDriver::currentCompilerSignature() {
    const auto cppRoot = std::filesystem::path(__FILE__).lexically_normal().parent_path().parent_path();
    const auto compilerRoot = cppRoot.parent_path();
    const std::vector<std::filesystem::path> inputs = {
        cppRoot / "src" / "apollo_driver.cpp",
        cppRoot / "src" / "apollo_driver.h",
        cppRoot / "src" / "apollo_inline_foreign.cpp",
        cppRoot / "src" / "apollo_inline_foreign.h",
        cppRoot / "src" / "visitor.cpp",
        cppRoot / "src" / "visitor.h",
        cppRoot / "src" / "apollo_ir_layout_plan.cpp",
        cppRoot / "src" / "apollo_ir_layout_plan.h",
        cppRoot / "src" / "apollo_runtime.cpp",
        cppRoot / "src" / "apollo_runtime.h",
        cppRoot / "src" / "apollo_codegen_optimization_plan.cpp",
        cppRoot / "src" / "apollo_codegen_optimization_plan.h",
        compilerRoot / "compilerv1.g4"
    };

    std::string combined(kCompilerCacheVersion);
    for (const auto& input : inputs) {
        if (!std::filesystem::exists(input)) {
            continue;
        }
        combined += "|" + input.filename().string() + "|" + stableHashHex(readTextFile(input));
    }
    return stableHashHex(combined);
}

void ApolloDriver::writeCleanupManifest(const std::set<std::string>& generatedFiles) {
    const auto manifestPath = std::filesystem::absolute(std::filesystem::path("output") / "cleanup-manifest.txt").lexically_normal();
    if (manifestPath.has_parent_path()) {
        std::filesystem::create_directories(manifestPath.parent_path());
    }
    std::ofstream output(manifestPath, std::ios::binary | std::ios::trunc);
    if (!output) {
        throw std::runtime_error("failed to write cleanup manifest: " + manifestPath.string());
    }
    for (const auto& file : generatedFiles) {
        output << file << '\n';
    }
}