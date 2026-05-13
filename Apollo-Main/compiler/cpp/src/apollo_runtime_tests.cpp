#include <iostream>
#include <memory>
#include <stdexcept>
#include <string>
#include <vector>

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

bool verifyPhaseOrder() {
    const std::vector<std::string> expected = {
        "runtime-extension-surface",
        "frontend-surface",
        "unsafe-boundary",
        "ownership",
        "borrow",
        "memory-safety-finalize",
        "memory-leak"
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

} // namespace

int main() {
    if (!verifyPhaseOrder()) {
        return 1;
    }
    if (!verifyFailureWrapping()) {
        return 1;
    }
    if (!verifyLeakWarningsAreNonFatal()) {
        return 1;
    }
    return 0;
}