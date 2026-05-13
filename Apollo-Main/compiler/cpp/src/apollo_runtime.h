#pragma once

#include <memory>
#include <stdexcept>
#include <string>
#include <vector>

#include "antlr4-runtime.h"
#include "compilerv1Lexer.h"
#include "compilerv1Parser.h"

class ApolloCompilerRuntimeCycle;

class ApolloCompilationFailure : public std::runtime_error {
public:
    explicit ApolloCompilationFailure(const std::string& message);
    ApolloCompilationFailure(const std::string& message, const std::exception& cause);
};

class ApolloRuntimePhase {
public:
    virtual ~ApolloRuntimePhase() = default;

    [[nodiscard]] virtual std::string phaseName() const = 0;
    virtual void execute(ApolloCompilerRuntimeCycle& cycle) const = 0;
};

class ApolloRuntimeFeatureManifest {
public:
    ApolloRuntimeFeatureManifest(bool usesAutofmtRuntime,
        bool usesGuiRuntime,
        bool usesGoAsyncRuntime,
        bool usesIrRuntime,
        bool usesIscRuntime,
        bool usesFileRuntime,
        bool usesMemstructRuntime,
        bool usesSchedulerRuntime,
        bool usesRuntimeExtensions,
        bool totalProgramGc,
        bool borrowCheckerOff);

    [[nodiscard]] bool usesAutofmtRuntime() const;
    [[nodiscard]] bool usesGuiRuntime() const;
    [[nodiscard]] bool usesGoAsyncRuntime() const;
    [[nodiscard]] bool usesIrRuntime() const;
    [[nodiscard]] bool usesIscRuntime() const;
    [[nodiscard]] bool usesFileRuntime() const;
    [[nodiscard]] bool usesMemstructRuntime() const;
    [[nodiscard]] bool usesSchedulerRuntime() const;
    [[nodiscard]] bool usesRuntimeExtensions() const;
    [[nodiscard]] bool totalProgramGc() const;
    [[nodiscard]] bool borrowCheckerOff() const;

    static ApolloRuntimeFeatureManifest analyze(compilerv1Parser::ProgramContext* tree);

private:
    bool usesAutofmtRuntime_;
    bool usesGuiRuntime_;
    bool usesGoAsyncRuntime_;
    bool usesIrRuntime_;
    bool usesIscRuntime_;
    bool usesFileRuntime_;
    bool usesMemstructRuntime_;
    bool usesSchedulerRuntime_;
    bool usesRuntimeExtensions_;
    bool totalProgramGc_;
    bool borrowCheckerOff_;
};

class ApolloCompilerRuntimeCycle {
public:
    static ApolloCompilerRuntimeCycle create(const std::string& sourcePath, const std::string& program);
    static ApolloCompilerRuntimeCycle create(const std::string& sourcePath, const std::string& program,
        std::vector<std::shared_ptr<const ApolloRuntimePhase>> phases);
    static std::vector<std::string> defaultPhaseNames();

    void runPreCodegenPhases();
    [[nodiscard]] compilerv1Parser::ProgramContext* tree() const;
    [[nodiscard]] const ApolloRuntimeFeatureManifest& runtimeFeatures() const;
    [[nodiscard]] const std::vector<std::string>& warnings() const;
    void recordSyntaxDiagnostic(size_t line, size_t charPositionInLine, const std::string& message, const std::string& offendingText);
    void recordRuleDiagnostic(const std::string& category, antlr4::ParserRuleContext* ctx, const std::string& message);
    [[nodiscard]] std::string recordRuleDiagnosticPreview(const std::string& category, antlr4::ParserRuleContext* ctx, const std::string& message) const;
    void recordWarningMessage(std::string message);
    [[nodiscard]] std::string recordRuleWarningPreview(const std::string& category, antlr4::ParserRuleContext* ctx, const std::string& message) const;
    void recordMemorySafetyFindings(std::vector<std::string> diagnostics, std::vector<std::string> warnings);
    [[nodiscard]] bool hasMemorySafetyFindings() const;
    [[nodiscard]] const std::vector<std::string>& memorySafetyDiagnostics() const;
    [[nodiscard]] const std::vector<std::string>& memorySafetyWarnings() const;
    [[nodiscard]] ApolloCompilationFailure wrapCompilerFailure(const std::runtime_error& ex) const;
    [[nodiscard]] ApolloCompilationFailure wrapCompilerFailure(const std::string& stage, const std::runtime_error& ex) const;

private:
    ApolloCompilerRuntimeCycle(std::string sourcePath,
        std::vector<std::string> lines,
        std::unique_ptr<antlr4::ANTLRInputStream> input,
        std::unique_ptr<compilerv1Lexer> lexer,
        std::unique_ptr<antlr4::CommonTokenStream> tokens,
        std::unique_ptr<compilerv1Parser> parser,
        compilerv1Parser::ProgramContext* tree,
        std::vector<std::string> diagnostics,
        size_t syntaxErrorCount,
        ApolloRuntimeFeatureManifest runtimeFeatures,
        std::vector<std::shared_ptr<const ApolloRuntimePhase>> phases);

    [[nodiscard]] std::string buildSourceExcerpt(int line, int column, int width) const;
    [[nodiscard]] std::string formatDiagnostic(const std::string& severity, const std::string& category,
        int line, int column, const std::string& message, const std::string& offendingText) const;
    [[nodiscard]] std::string formatRuleDiagnostic(const std::string& severity, const std::string& category,
        antlr4::ParserRuleContext* ctx, const std::string& message) const;
    [[nodiscard]] std::string buildFailureMessage() const;

    std::string sourcePath_;
    std::vector<std::string> lines_;
    std::unique_ptr<antlr4::ANTLRInputStream> input_;
    std::unique_ptr<compilerv1Lexer> lexer_;
    std::unique_ptr<antlr4::CommonTokenStream> tokens_;
    std::unique_ptr<compilerv1Parser> parser_;
    compilerv1Parser::ProgramContext* tree_;
    std::vector<std::string> diagnostics_;
    std::vector<std::string> warnings_;
    size_t syntaxErrorCount_;
    ApolloRuntimeFeatureManifest runtimeFeatures_;
    std::vector<std::shared_ptr<const ApolloRuntimePhase>> phases_;
    bool hasMemorySafetyFindings_ = false;
    std::vector<std::string> memorySafetyDiagnostics_;
    std::vector<std::string> memorySafetyWarnings_;
};