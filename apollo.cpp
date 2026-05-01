#include <iostream>
#include <string>
#include <filesystem>
#include <cstdlib>
#include <process.h> // For _spawnl
#include <windows.h> // For GetModuleFileNameA

namespace {
    std::string quoteCmdArg(const std::string& value) {
        std::string quoted = "\"";
        for (char ch : value) {
            if (ch == '"') {
                quoted += "\\\"";
            } else {
                quoted += ch;
            }
        }
        quoted += '"';
        return quoted;
    }

    std::filesystem::path getExecutableDir() {
        char buffer[MAX_PATH];
        GetModuleFileNameA(NULL, buffer, MAX_PATH);
        return std::filesystem::path(buffer).parent_path();
    }

    std::filesystem::path getCommandInterpreter() {
        if (const char* comspec = std::getenv("COMSPEC"); comspec != nullptr && *comspec != '\0') {
            std::filesystem::path comspecPath(comspec);
            if (std::filesystem::exists(comspecPath)) {
                return comspecPath;
            }
        }

        char buffer[MAX_PATH];
        UINT length = GetSystemDirectoryA(buffer, MAX_PATH);
        if (length > 0 && length < MAX_PATH) {
            std::filesystem::path cmdPath = std::filesystem::path(buffer) / "cmd.exe";
            if (std::filesystem::exists(cmdPath)) {
                return cmdPath;
            }
        }

        return "cmd.exe";
    }

}

int main(int argc, char* argv[]) {
    if (argc < 2) {
        std::cerr << "Usage: apollo [-bin] <ctall|run> [filepath] [outputname]\n"
                  << "       apollo -analyze [filepath]" << std::endl;
        return 1;
    }

    try {
        bool binaryOnly = false;
        bool analyzeMode = false;
        std::string presetCommand;
        std::string presetInputPath;
        std::string presetOutputPath;
        int argIndex = 1;
        while (argIndex < argc) {
            std::string flag = argv[argIndex];
            if (flag == "-bin") {
                binaryOnly = true;
                ++argIndex;
                continue;
            }
            if (flag == "-analyze") {
                analyzeMode = true;
                ++argIndex;
                continue;
            }
            break;
        }

        if (argIndex >= argc) {
            std::cerr << "Usage: apollo [-bin] <ctall|run> [filepath] [outputname]\n"
                      << "       apollo -analyze [filepath]" << std::endl;
            return 1;
        }

        if (binaryOnly && analyzeMode) {
            std::cerr << "Error: -bin and -analyze cannot be used together." << std::endl;
            return 1;
        }

        if (!analyzeMode && !binaryOnly && argIndex + 2 < argc) {
            std::filesystem::path firstArgPath = argv[argIndex];
            std::string flag = argv[argIndex + 1];
            if (firstArgPath.extension() == ".apollo"
                    && (flag == "-W" || flag == "-L" || flag == "-M")) {
                binaryOnly = true;
                presetCommand = "ctall";
                presetInputPath = std::filesystem::absolute(firstArgPath).lexically_normal().string();
                std::filesystem::path outputPath = std::filesystem::absolute(argv[argIndex + 2]).lexically_normal();
                if (flag == "-W" && !outputPath.has_extension()) {
                    outputPath += ".exe";
                }
                presetOutputPath = outputPath.string();
                argIndex += 3;
            }
        }

        std::string command = !presetCommand.empty() ? presetCommand : argv[argIndex++];
        std::filesystem::path apolloDir = getExecutableDir();
        std::filesystem::path execScript = apolloDir / "compiler" / "exec.bat";
        std::filesystem::path compilerDir = apolloDir / "compiler";
        std::filesystem::path commandInterpreter = getCommandInterpreter();
        std::string commandInterpreterStr = commandInterpreter.string();

        if (!std::filesystem::exists(execScript)) {
            std::cerr << "Error: Cannot find compiler script at: " << execScript.string() << std::endl;
            return 1;
        }

        _putenv_s("APOLLO_DIR", apolloDir.string().c_str());
        _putenv_s("APOLLO_COMPILER_DIR", compilerDir.string().c_str());

        // 1. Always use absolute path for the input file
        std::string inputPathStr;
        if (!presetInputPath.empty()) {
            inputPathStr = presetInputPath;
        } else if (argIndex < argc) {
            inputPathStr = std::filesystem::absolute(argv[argIndex++]).lexically_normal().string();
        }

        std::string outputPathStr;
        if (binaryOnly) {
            if (!presetOutputPath.empty()) {
                outputPathStr = presetOutputPath;
            } else if (argIndex >= argc) {
                std::cerr << "Usage: apollo -bin <ctall|run> [filepath] <outputname>" << std::endl;
                return 1;
            } else {
                std::filesystem::path outputPath = std::filesystem::absolute(argv[argIndex++]).lexically_normal();
                if (!outputPath.has_extension()) {
                    outputPath += ".exe";
                }
                outputPathStr = outputPath.string();
            }
        }

        if (analyzeMode && argIndex < argc) {
            std::cerr << "Error: too many arguments for -analyze." << std::endl;
            return 1;
        }

        if (!analyzeMode && argIndex < argc) {
            std::cerr << "Error: too many arguments." << std::endl;
            return 1;
        }

        std::string batchCommand = "call " + quoteCmdArg(execScript.string());
        if (analyzeMode) {
            batchCommand += " -analyze";
            if (!inputPathStr.empty()) {
                batchCommand += " " + quoteCmdArg(inputPathStr);
            }
        } else if (binaryOnly) {
            batchCommand += " -bin " + quoteCmdArg(command) + " " + quoteCmdArg(inputPathStr) + " " + quoteCmdArg(outputPathStr);
        } else {
            batchCommand += " " + quoteCmdArg(command);
            if (!inputPathStr.empty()) {
                batchCommand += " " + quoteCmdArg(inputPathStr);
            }
        }

        intptr_t result = -1;
        if (analyzeMode) {
            result = _spawnl(
                _P_WAIT,
                commandInterpreterStr.c_str(),
                commandInterpreterStr.c_str(),
                "/c",
                batchCommand.c_str(),
                NULL);
        } else {
            result = _spawnl(
                _P_WAIT,
                commandInterpreterStr.c_str(),
                commandInterpreterStr.c_str(),
                "/c",
                batchCommand.c_str(),
                NULL);
        }

        if (result == -1) {
            std::cerr << "Error: Failed to launch command interpreter at: " << commandInterpreterStr << std::endl;
            return 1;
        }

        return (int)result;

    } catch (const std::exception& ex) {
        std::cerr << "Internal Error: " << ex.what() << std::endl;
        return 1;
    }
}
