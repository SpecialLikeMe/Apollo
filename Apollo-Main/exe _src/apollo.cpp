#include <iostream>
#include <string>
#include <filesystem>
#include <cstdlib>
#include <process.h> // For _spawnl
#include <windows.h> // For GetModuleFileNameA

namespace {
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
        std::cerr << "Usage: apollo <ctall|run> [filepath]\n"
                  << "       apollo [filepath] [-W|-L|-M] <outputname>\n"
                  << "       apollo -analyze [filepath]\n"
                  << "       apollo --version\n"
                  << "       apollo --update\n"
                  << "       apollo -m uninstall" << std::endl;
        return 1;
    }

    try {
        std::string command = argv[1];
        std::filesystem::path apolloDir = getExecutableDir();
        std::filesystem::path payloadDir = apolloDir / "Apollo-Main";
        if (!std::filesystem::exists(payloadDir / "compiler" / "exec.bat")) {
            payloadDir = apolloDir;
        }
        std::filesystem::path execScript = payloadDir / "compiler" / "exec.bat";
        std::filesystem::path commandInterpreter = getCommandInterpreter();
        std::string commandInterpreterStr = commandInterpreter.string();

        if (!std::filesystem::exists(execScript)) {
            std::cerr << "Error: Cannot find compiler script at: " << execScript.string() << std::endl;
            return 1;
        }

        // 1. Always use absolute path for the input file
        std::string inputPathStr = "";
        if (argc >= 3) {
            inputPathStr = std::filesystem::absolute(argv[2]).lexically_normal().string();
        }

        // 2. Use _spawnl to execute the batch file directly.
        // This avoids the 'system cannot find path' error caused by shell quoting.
        intptr_t result;
        if (!inputPathStr.empty()) {
            result = _spawnl(_P_WAIT, commandInterpreterStr.c_str(), commandInterpreterStr.c_str(), "/c", 
                             execScript.string().c_str(), 
                             command.c_str(), 
                             inputPathStr.c_str(), NULL);
        } else {
            result = _spawnl(_P_WAIT, commandInterpreterStr.c_str(), commandInterpreterStr.c_str(), "/c", 
                             execScript.string().c_str(), 
                             command.c_str(), NULL);
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
