#include <iostream>
#include <memory>
#include <stdexcept>
#include <string>
#include <vector>

#include "apollo_source_preprocessor.h"
#include "apollo_runtime.h"

namespace {

class FailingPhase final : public ApolloRuntimePhase {
public:
    [[nodiscard]] std::string phaseName() const override {
        return "intentional-test-phase";
    }

    void execute(ApolloCompilerRuntimeCycle&) const override {
        throw std::runtime_error("boom");
    }
};

bool require(bool condition, const std::string& message) {
    if (condition) {
        return true;
    }
    std::cerr << message << '\n';
    return false;
}

bool verifyPhaseOrder() {
    const std::vector<std::string> expected = {
        "runtime-extension-surface",
        "frontend-surface",
        "unsafe-boundary",
        "ownership",
        "borrow",
        "memory-safety-finalize",
        "memory-leak",
        "mir-borrow-check"
    };
    const std::vector<std::string> actual = ApolloCompilerRuntimeCycle::defaultPhaseNames();
    if (expected == actual) {
        return true;
    }

    std::cerr << "runtime phase order changed\n";
    std::cerr << "expected:";
    for (const auto& name : expected) {
        std::cerr << ' ' << name;
    }
    std::cerr << "\nactual:  ";
    for (const auto& name : actual) {
        std::cerr << ' ' << name;
    }
    std::cerr << '\n';
    return false;
}

bool verifyFailureWrapping() {
    const std::string sourcePath = "tests/grammar/pass/language_surface.apollo";
    const std::string program = "int main() {\n    return 0;\n}\n";
    ApolloCompilerRuntimeCycle cycle = ApolloCompilerRuntimeCycle::create(sourcePath, program,
        { std::make_shared<FailingPhase>() });

    try {
        cycle.runPreCodegenPhases();
        std::cerr << "runtime phase failure was not wrapped\n";
        return false;
    } catch (const ApolloCompilationFailure& ex) {
        const std::string message = ex.what();
        if (message.find("compiler runtime phase `intentional-test-phase` failed: boom") == std::string::npos) {
            std::cerr << "wrapped runtime phase failure did not include phase context\n";
            std::cerr << "actual: " << message << '\n';
            return false;
        }
        if (message.find(sourcePath) == std::string::npos) {
            std::cerr << "wrapped runtime phase failure did not include source path\n";
            std::cerr << "actual: " << message << '\n';
            return false;
        }
        return true;
    }
}

bool verifyLeakWarningsAreNonFatal() {
    const std::string sourcePath = "tests/manual/leak_warning.apollo";
    const std::string program = "int main() {\n"
        "    @unsafe {\n"
        "        @autofmtdeclare {\n"
        "            void* leaked.alc(i32);\n"
        "        }\n"
        "    }\n"
        "    return 0;\n"
        "}\n";
    ApolloCompilerRuntimeCycle cycle = ApolloCompilerRuntimeCycle::create(sourcePath, program);

    try {
        cycle.runPreCodegenPhases();
    } catch (const std::exception& ex) {
        std::cerr << "leak warning path should not fail compilation\n";
        std::cerr << "actual: " << ex.what() << '\n';
        return false;
    }

    if (cycle.warnings().empty()) {
        std::cerr << "expected a non-fatal leak warning for unreleased malloc allocation\n";
        return false;
    }
    if (cycle.warnings().front().find("potential leak") == std::string::npos) {
        std::cerr << "unexpected leak warning text\n";
        std::cerr << "actual: " << cycle.warnings().front() << '\n';
        return false;
    }
    return true;
}

bool verifySyntaxDiagnosticsAvoidDuplicateExpectations() {
    const std::string sourcePath = "tests/manual/syntax_dedup.apollo";
    const std::string program = "class A {\n"
        "    public i32 x;\n"
        "}\n"
        "\n"
        "int main() {\n"
        "    A{1} value = {.x = 2\n"
        "    return 0;\n"
        "}\n";

    ApolloCompilerRuntimeCycle cycle = ApolloCompilerRuntimeCycle::create(sourcePath, program);

    try {
        cycle.runPreCodegenPhases();
        std::cerr << "syntax diagnostics should fail on malformed input\n";
        return false;
    } catch (const ApolloCompilationFailure& ex) {
        const std::string message = ex.what();
        if (message.find("mismatched input 'return' expecting {',', '}'}") == std::string::npos) {
            std::cerr << "syntax diagnostic lost the parser expectation context\n";
            std::cerr << "actual: " << message << '\n';
            return false;
        }
        if (message.find("expected one of: {',', '}'}") != std::string::npos) {
            std::cerr << "syntax diagnostic duplicated the expectation set\n";
            std::cerr << "actual: " << message << '\n';
            return false;
        }
        return true;
    }
}

bool verifyProcMacroExpansion() {
    const std::string sourcePath = "tests/manual/proc_macro_surface.apollo";
    const std::string program =
        "extern iostream;\n"
        "\n"
        "attr vector<token> addhelper(vector<token> __tokenstream, nrc what) {\n"
        "    nconst vector<token> output = __tokenstream;\n"
        "    output.insert(0, quote {\n"
        "        void generated_helper() {\n"
        "            sys.println(what);\n"
        "            return;\n"
        "        }\n"
        "    });\n"
        "    return output;\n"
        "}\n"
        "\n"
        "derive vector<token> addafter(vector<token> __tokenstream, nrc what) {\n"
        "    return quote {\n"
        "        void generated_after() {\n"
        "            sys.println(what);\n"
        "            return;\n"
        "        }\n"
        "    };\n"
        "}\n"
        "\n"
        "#idio addhelper(\"before\")\n"
        "#derive addafter(\"after\")\n"
        "int main() {\n"
        "    generated_helper();\n"
        "    generated_after();\n"
        "    return 0;\n"
        "}\n";

    const std::string preprocessed = preprocessApolloSource(sourcePath, program);
    if (!require(preprocessed.find("void generated_helper()") != std::string::npos,
            "proc macro attr expansion should inject generated_helper")) {
        return false;
    }
    if (!require(preprocessed.find("sys.println(\"before\")") != std::string::npos,
            "proc macro attr expansion should substitute arguments inside quote blocks")) {
        return false;
    }
    if (!require(preprocessed.find("void generated_after()") != std::string::npos,
            "proc macro derive expansion should append generated_after")) {
        return false;
    }
    if (!require(preprocessed.find("sys.println(\"after\")") != std::string::npos,
            "proc macro derive expansion should substitute arguments inside appended quote blocks")) {
        return false;
    }
    if (!require(preprocessed.find("attr vector<token>") == std::string::npos,
            "proc macro declarations should be stripped before parsing")) {
        return false;
    }
    if (!require(preprocessed.find("derive vector<token>") == std::string::npos,
            "derive proc macro declarations should be stripped before parsing")) {
        return false;
    }
    if (!require(preprocessed.find("#idio") == std::string::npos && preprocessed.find("#derive") == std::string::npos,
            "proc macro invocation directives should be removed from preprocessed output")) {
        return false;
    }

    ApolloCompilerRuntimeCycle cycle = ApolloCompilerRuntimeCycle::create(sourcePath, preprocessed);
    try {
        cycle.runPreCodegenPhases();
    } catch (const std::exception& ex) {
        std::cerr << "proc macro expansion should leave valid Apollo source\n";
        std::cerr << "actual: " << ex.what() << '\n';
        return false;
    }
    return true;
}

bool verifyUnknownProcMacroFailsClearly() {
    const std::string sourcePath = "tests/manual/proc_macro_missing.apollo";
    const std::string program =
        "#idio missing_macro(\"x\")\n"
        "int main() {\n"
        "    return 0;\n"
        "}\n";

    try {
        const std::string ignored = preprocessApolloSource(sourcePath, program);
        (void)ignored;
        std::cerr << "unknown proc macro should fail preprocessing\n";
        return false;
    } catch (const std::exception& ex) {
        const std::string message = ex.what();
        if (message.find("unknown proc macro `missing_macro`") == std::string::npos) {
            std::cerr << "unknown proc macro diagnostic changed unexpectedly\n";
            std::cerr << "actual: " << message << '\n';
            return false;
        }
        return true;
    }
}

} // namespace

int main() {
    try {
        if (!verifyPhaseOrder()) {
            return 1;
        }
        if (!verifyFailureWrapping()) {
            return 1;
        }
        if (!verifyLeakWarningsAreNonFatal()) {
            return 1;
        }
        if (!verifySyntaxDiagnosticsAvoidDuplicateExpectations()) {
            return 1;
        }
        if (!verifyProcMacroExpansion()) {
            return 1;
        }
        if (!verifyUnknownProcMacroFailsClearly()) {
            return 1;
        }
        return 0;
    } catch (const std::exception& ex) {
        std::cerr << "unhandled runtime test failure: " << ex.what() << '\n';
        return 1;
    } catch (...) {
        std::cerr << "unhandled runtime test failure: unknown exception\n";
        return 1;
    }
}