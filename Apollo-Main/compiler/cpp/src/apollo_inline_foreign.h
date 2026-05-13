#pragma once

#include <filesystem>
#include <string>
#include <vector>

#include "compilerv1Parser.h"
#include "llvm/IR/Module.h"

enum class ApolloInlineForeignLanguage {
    C,
    Cpp,
    Rust,
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
    std::string getterName;
};

struct ApolloInlineForeignBlock {
    ApolloInlineForeignLanguage language = ApolloInlineForeignLanguage::Unsupported;
    std::string languageText;
    std::string payload;
    std::string stableId;
    int line = 0;
    int column = 0;
    std::vector<ApolloInlineForeignSymbol> functions;
    std::vector<ApolloInlineForeignSymbol> globals;
};

std::vector<ApolloInlineForeignBlock> collectInlineForeignBlocks(compilerv1Parser::ProgramContext* tree);

void linkInlineForeignModules(llvm::Module& module,
    const std::filesystem::path& sourcePath,
    const std::filesystem::path& outputPath,
    compilerv1Parser::ProgramContext* tree,
    const std::vector<ApolloInlineForeignBlock>& blocks);
