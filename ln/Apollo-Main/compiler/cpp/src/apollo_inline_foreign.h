#pragma once

#include <filesystem>
#include <string>
#include <vector>

#include "compilerv1Parser.h"
#include "llvm/IR/Module.h"

enum class ApolloInlineForeignLanguage {
    C,
    Cpp,
    ObjectiveC,
    ObjectiveCpp,
    Rust,
    Swift,
    Zig,
    Python,
    Go,
    TypeScript,
    Unsupported,
};

enum class ApolloInlineForeignSymbolKind {
    Function,
    Global,
};

struct ApolloInlineForeignParameter {
    std::string name;
    std::string foreignType;
    std::string apolloType;
};

struct ApolloInlineForeignSymbol {
    ApolloInlineForeignSymbolKind kind = ApolloInlineForeignSymbolKind::Global;
    std::string name;
    std::string foreignType;
    std::string apolloType;
    std::vector<ApolloInlineForeignParameter> parameters;
    bool mutableStorage = false;
    bool variadic = false;
    bool declarationOnly = false;
    std::string getterName;
};

struct ApolloInlineForeignBlock {
    ApolloInlineForeignLanguage language = ApolloInlineForeignLanguage::Unsupported;
    std::string languageText;
    std::string payload;
    std::string stableId;
    std::string runnerName;
    int line = 0;
    int column = 0;
    bool executesAtRuntime = false;
    std::vector<ApolloInlineForeignSymbol> functions;
    std::vector<ApolloInlineForeignSymbol> globals;
};

struct ApolloInlineForeignCapture {
    std::string sourceText;
    std::string bindingName;
    std::string apolloType;
};

std::vector<ApolloInlineForeignBlock> collectInlineForeignBlocks(compilerv1Parser::ProgramContext* tree);

std::vector<ApolloInlineForeignSymbol> collectImportedClikeSymbols(compilerv1Parser::ProgramContext* tree);

void linkInlineForeignModules(llvm::Module& module,
    const std::filesystem::path& sourcePath,
    const std::filesystem::path& outputPath,
    compilerv1Parser::ProgramContext* tree,
    const std::vector<ApolloInlineForeignBlock>& blocks);

void ensureRuntimeInlineForeignModule(llvm::Module& module,
    const std::filesystem::path& sourcePath,
    const std::filesystem::path& outputPath,
    const ApolloInlineForeignBlock& block,
    const std::vector<ApolloInlineForeignBlock>& blocks,
    const std::vector<ApolloInlineForeignCapture>& captures);
