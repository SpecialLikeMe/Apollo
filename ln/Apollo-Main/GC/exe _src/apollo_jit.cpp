#include <algorithm>
#include <cstdint>
#include <cstdlib>
#include <cwchar>
#include <filesystem>
#include <iostream>
#include <memory>
#include <string>
#include <vector>
#include <windows.h>

#include <llvm/ExecutionEngine/Orc/Core.h>
#include <llvm/ExecutionEngine/Orc/ExecutionUtils.h>
#include <llvm/ExecutionEngine/Orc/LLJIT.h>
#include <llvm/IRReader/IRReader.h>
#include <llvm/Support/Error.h>
#include <llvm/Support/InitLLVM.h>
#include <llvm/Support/SourceMgr.h>
#include <llvm/Support/TargetSelect.h>

using namespace llvm;
using namespace llvm::orc;

extern "C" {
uintptr_t __stack_chk_guard = 0x0A90110AULL;

void __main() {
}

void __stack_chk_fail() {
    std::abort();
}

wchar_t* wmemcpy(wchar_t* destination, const wchar_t* source, size_t count) {
    for (size_t index = 0; index < count; ++index) {
        destination[index] = source[index];
    }
    return destination;
}

wchar_t* wmemmove(wchar_t* destination, const wchar_t* source, size_t count) {
    if (destination < source) {
        for (size_t index = 0; index < count; ++index) {
            destination[index] = source[index];
        }
    } else if (destination > source) {
        for (size_t index = count; index > 0; --index) {
            destination[index - 1] = source[index - 1];
        }
    }
    return destination;
}

wchar_t* wmemset(wchar_t* destination, wchar_t value, size_t count) {
    for (size_t index = 0; index < count; ++index) {
        destination[index] = value;
    }
    return destination;
}
}

namespace {
    struct ToolchainLayout {
        std::filesystem::path binDir;
        std::filesystem::path libDir;
        std::filesystem::path gccLibDir;
    };

    void printError(Error error) {
        logAllUnhandledErrors(std::move(error), errs(), "apollo_jit: ");
    }

    std::filesystem::path readEnvPath(const char* name) {
        const char* value = std::getenv(name);
        if (value == nullptr || *value == '\0') {
            return {};
        }
        return std::filesystem::path(value);
    }

    ToolchainLayout resolveToolchainLayout() {
        std::vector<std::filesystem::path> binCandidates;
        if (std::filesystem::path envBin = readEnvPath("APOLLO_MINGW_BIN"); !envBin.empty()) {
            binCandidates.push_back(envBin);
        }
        if (std::filesystem::path msysRoot = readEnvPath("APOLLO_MSYS64_ROOT"); !msysRoot.empty()) {
            binCandidates.push_back(msysRoot / "mingw64" / "bin");
        }
        binCandidates.push_back("C:/msys64/mingw64/bin");

        ToolchainLayout layout;
        for (const std::filesystem::path& candidate : binCandidates) {
            std::error_code error;
            if (!std::filesystem::exists(candidate / "clang++.exe", error)) {
                continue;
            }
            layout.binDir = candidate;
            layout.libDir = candidate.parent_path() / "lib";
            break;
        }

        if (layout.libDir.empty()) {
            return layout;
        }

        std::filesystem::path gccRoot = layout.libDir / "gcc" / "x86_64-w64-mingw32";
        std::error_code error;
        if (!std::filesystem::exists(gccRoot, error)) {
            return layout;
        }

        std::vector<std::filesystem::path> versions;
        for (const std::filesystem::directory_entry& entry : std::filesystem::directory_iterator(gccRoot, error)) {
            if (error) {
                break;
            }
            if (entry.is_directory()) {
                versions.push_back(entry.path());
            }
        }

        std::sort(versions.begin(), versions.end(), [](const std::filesystem::path& left, const std::filesystem::path& right) {
            return left.filename().string() > right.filename().string();
        });

        if (!versions.empty()) {
            layout.gccLibDir = versions.front();
        }

        return layout;
    }

    void addStaticLibraryIfPresent(LLJIT& jit, const std::filesystem::path& libraryPath) {
        std::error_code error;
        if (!std::filesystem::exists(libraryPath, error)) {
            return;
        }

        std::string libraryText = libraryPath.generic_string();
        if (Error generatorError = addStaticLibraryGenerator(jit, libraryText.c_str())) {
            consumeError(std::move(generatorError));
        }
    }

    void addDynamicLibraryIfAvailable(LLJIT& jit, const char* libraryName) {
        if (Error error = addDynamicLibraryGenerator(jit, libraryName)) {
            consumeError(std::move(error));
        }
    }

    Error addDynamicLibraryGenerator(LLJIT& jit, const char* libraryName) {
        auto generator = DynamicLibrarySearchGenerator::Load(
            libraryName,
            jit.getDataLayout().getGlobalPrefix());
        if (!generator) {
            return generator.takeError();
        }

        jit.getMainJITDylib().addGenerator(std::move(*generator));
        return Error::success();
    }

    Error addStaticLibraryGenerator(LLJIT& jit, const char* libraryPath) {
        auto generator = StaticLibraryDefinitionGenerator::Load(
            jit.getObjLinkingLayer(),
            libraryPath);
        if (!generator) {
            return generator.takeError();
        }

        jit.getMainJITDylib().addGenerator(std::move(*generator));
        return Error::success();
    }

    Expected<std::unique_ptr<LLJIT>> createJit() {
        InitializeNativeTarget();
        InitializeNativeTargetAsmPrinter();
        InitializeNativeTargetAsmParser();

        ToolchainLayout toolchain = resolveToolchainLayout();
        if (!toolchain.binDir.empty()) {
            SetDllDirectoryA(toolchain.binDir.string().c_str());
        }

        auto jit = LLJITBuilder().create();
        if (!jit) {
            return jit.takeError();
        }

        auto& mainDylib = (*jit)->getMainJITDylib();
        auto currentProcessGenerator = DynamicLibrarySearchGenerator::GetForCurrentProcess(
            (*jit)->getDataLayout().getGlobalPrefix());
        if (!currentProcessGenerator) {
            return currentProcessGenerator.takeError();
        }
        mainDylib.addGenerator(std::move(*currentProcessGenerator));

        for (const char* libraryName : {
                 "libstdc++-6.dll",
                 "libgcc_s_seh-1.dll",
                 "libwinpthread-1.dll",
                 "libgc-1.dll",
                 "libgccpp-1.dll",
                 "msvcrt.dll"}) {
            addDynamicLibraryIfAvailable(*(*jit), libraryName);
        }

        for (const char* libraryName : {
                 "libstdc++.a",
                 "libstdc++fs.a",
                 "libmingw32.a",
                 "libmingwex.a",
                 "libmoldname.a",
                 "libmsvcrt.a",
                 "libpthread.a",
                 "libwinpthread.a",
                 "libssp.a",
                 "libssp_nonshared.a",
                 "libadvapi32.a",
                 "libshell32.a",
                 "libuser32.a",
                 "libkernel32.a",
                 "libgc.dll.a",
                 "libgc.a",
                 "libgccpp.dll.a",
                 "libgccpp.a"}) {
            if (!toolchain.libDir.empty()) {
                addStaticLibraryIfPresent(*(*jit), toolchain.libDir / libraryName);
            }
        }

        for (const char* libraryName : {"libgcc.a", "libgcc_eh.a"}) {
            if (!toolchain.gccLibDir.empty()) {
                addStaticLibraryIfPresent(*(*jit), toolchain.gccLibDir / libraryName);
            }
        }

        MangleAndInterner mangle((*jit)->getExecutionSession(), (*jit)->getDataLayout());
        SymbolMap shimSymbols;
        shimSymbols[mangle("__main")] = ExecutorSymbolDef::fromPtr(&__main, JITSymbolFlags::Exported);
        shimSymbols[mangle("__stack_chk_fail")] = ExecutorSymbolDef::fromPtr(&__stack_chk_fail, JITSymbolFlags::Exported);
        shimSymbols[mangle("__stack_chk_guard")] = ExecutorSymbolDef::fromPtr(&__stack_chk_guard, JITSymbolFlags::Exported);
        shimSymbols[mangle("wmemcpy")] = ExecutorSymbolDef::fromPtr(&wmemcpy, JITSymbolFlags::Exported);
        shimSymbols[mangle("wmemmove")] = ExecutorSymbolDef::fromPtr(&wmemmove, JITSymbolFlags::Exported);
        shimSymbols[mangle("wmemset")] = ExecutorSymbolDef::fromPtr(&wmemset, JITSymbolFlags::Exported);
        if (Error error = mainDylib.define(absoluteSymbols(shimSymbols))) {
            return std::move(error);
        }

        return std::move(*jit);
    }

    Expected<ThreadSafeModule> loadModule(const std::string& inputPath, const DataLayout& dataLayout) {
        auto context = std::make_unique<LLVMContext>();
        SMDiagnostic diagnostics;
        auto module = parseIRFile(inputPath, diagnostics, *context);
        if (!module) {
            std::string message;
            raw_string_ostream stream(message);
            diagnostics.print("apollo_jit", stream);
            stream.flush();
            return createStringError(inconvertibleErrorCode(), message);
        }

        module->setDataLayout(dataLayout);
        return ThreadSafeModule(std::move(module), std::move(context));
    }

    int runMain(const ExecutorAddr& mainAddress) {
        using MainFunction = int (*)();
        MainFunction mainFunction = mainAddress.toPtr<MainFunction>();
        return mainFunction();
    }
}

int main(int argc, char* argv[]) {
    InitLLVM initLLVM(argc, argv);

    if (argc < 2) {
        std::cerr << "Usage: apollo_jit <module.ll>" << std::endl;
        return 1;
    }

    auto jit = createJit();
    if (!jit) {
        printError(jit.takeError());
        return 1;
    }

    auto module = loadModule(argv[1], (*jit)->getDataLayout());
    if (!module) {
        printError(module.takeError());
        return 1;
    }

    if (Error error = (*jit)->addIRModule(std::move(*module))) {
        printError(std::move(error));
        return 1;
    }

    if (Error error = (*jit)->initialize((*jit)->getMainJITDylib())) {
        printError(std::move(error));
        return 1;
    }

    auto mainSymbol = (*jit)->lookup("main");
    if (!mainSymbol) {
        printError(mainSymbol.takeError());
        return 1;
    }

    int exitCode = runMain(*mainSymbol);

    if (Error error = (*jit)->deinitialize((*jit)->getMainJITDylib())) {
        printError(std::move(error));
        return 1;
    }

    return exitCode;
}
