#pragma once

#include <filesystem>
#include <set>
#include <string>

class ApolloDriver {
public:
    static void compileApollo(const std::string& inputPath, const std::string& outputPath);
    static void emitDirectIrPrototype(const std::string& inputPath, const std::string& outputPath);
    static std::string preprocessSource(const std::filesystem::path& sourcePath, const std::string& sourceText);
    static std::string preprocessSourceFromFile(const std::filesystem::path& sourcePath);
    static std::string displaySourcePath(const std::filesystem::path& importRoot, const std::filesystem::path& sourcePath);
    static std::filesystem::path cacheEntryPath(const std::filesystem::path& sourcePath, const std::filesystem::path& outputPath);
    static std::filesystem::path cacheArtifactPath(const std::filesystem::path& sourcePath, const std::filesystem::path& outputPath);
    static std::string currentCompilerSignature();

private:
    static std::filesystem::path determineImportRoot(const std::filesystem::path& sourcePath);
    static std::string buildModuleKey(const std::filesystem::path& importRoot, const std::filesystem::path& sourcePath);
    static void writeCleanupManifest(const std::set<std::string>& generatedFiles);
};