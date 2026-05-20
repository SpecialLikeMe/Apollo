#include <cstdlib>
#include <string>
#include <iostream>
#include <thread>
#include <chrono>
#include <filesystem>
#include <vector>
#include <cstring>
#include <fstream>
#include <windows.h>

namespace {
    std::filesystem::path payloadRoot(const std::filesystem::path& installDir) {
        return installDir / "Apollo-Main";
    }

    std::filesystem::path getExecutableDir() {
        char buffer[MAX_PATH];
        GetModuleFileNameA(NULL, buffer, MAX_PATH);
        return std::filesystem::path(buffer).parent_path();
    }

    bool equalsIgnoreCase(const std::string& left, const std::string& right) {
        return _stricmp(left.c_str(), right.c_str()) == 0;
    }

    std::vector<std::string> splitPathEntries(const std::string& pathValue) {
        std::vector<std::string> entries;
        std::string current;

        for (char ch : pathValue) {
            if (ch == ';') {
                if (!current.empty()) {
                    entries.push_back(current);
                    current.clear();
                }
                continue;
            }

            current += ch;
        }

        if (!current.empty()) {
            entries.push_back(current);
        }

        return entries;
    }

    std::string joinPathEntries(const std::vector<std::string>& entries) {
        std::string joined;
        for (const std::string& entry : entries) {
            if (entry.empty()) {
                continue;
            }

            if (!joined.empty()) {
                joined += ';';
            }

            joined += entry;
        }

        return joined;
    }

    std::filesystem::path getLocalAppDataDir() {
        DWORD requiredLength = GetEnvironmentVariableA("LOCALAPPDATA", nullptr, 0);
        if (requiredLength == 0) {
            return {};
        }

        std::string localAppData(requiredLength, '\0');
        DWORD actualLength = GetEnvironmentVariableA("LOCALAPPDATA", localAppData.data(), requiredLength);
        if (actualLength == 0) {
            return {};
        }

        if (!localAppData.empty() && localAppData.back() == '\0') {
            localAppData.pop_back();
        }

        return std::filesystem::path(localAppData);
    }

    std::filesystem::path getWindowsAppsDir() {
        std::filesystem::path localAppDataDir = getLocalAppDataDir();
        if (localAppDataDir.empty()) {
            return {};
        }

        return localAppDataDir / "Microsoft" / "WindowsApps";
    }

    bool writeApolloWrapper(const std::filesystem::path& installDir) {
        std::filesystem::path windowsAppsDir = getWindowsAppsDir();
        if (windowsAppsDir.empty()) {
            return false;
        }

        std::error_code error;
        std::filesystem::create_directories(windowsAppsDir, error);
        if (error) {
            return false;
        }

        std::filesystem::path wrapperPath = windowsAppsDir / "apollo.cmd";
        std::ofstream wrapper(wrapperPath, std::ios::trunc);
        if (!wrapper.is_open()) {
            return false;
        }

        const std::filesystem::path apolloRoot = payloadRoot(installDir);
        const std::filesystem::path compilerDir = apolloRoot / "compiler";
        wrapper << "@echo off\r\n";
        wrapper << "setlocal\r\n";
        wrapper << "set \"APOLLO_DIR=" << apolloRoot.string() << "\"\r\n";
        wrapper << "set \"APOLLO_COMPILER_DIR=" << compilerDir.string() << "\"\r\n";
        wrapper << "call \"%APOLLO_COMPILER_DIR%\\exec.bat\" %*\r\n";
        wrapper << "exit /b %ERRORLEVEL%\r\n";
        return wrapper.good();
    }

    std::string quoteForCommand(const std::filesystem::path& path) {
        return std::string("\"") + path.string() + "\"";
    }

    bool bootstrapDependencies(const std::filesystem::path& installDir) {
        std::filesystem::path scriptPath = installDir / "install-deps.ps1";
        if (!std::filesystem::exists(scriptPath)) {
            std::cerr << "Install failed: missing dependency bootstrap script at " << scriptPath.string() << std::endl;
            return false;
        }

        std::string command = "powershell -NoProfile -ExecutionPolicy Bypass -File "
            + quoteForCommand(scriptPath)
            + " -InstallDir "
            + quoteForCommand(installDir);
        int exitCode = std::system(command.c_str());
        if (exitCode != 0) {
            std::cerr << "Install failed while bootstrapping external dependencies. Exit code: " << exitCode << std::endl;
            return false;
        }

        return true;
    }
}

int main() {
    std::filesystem::path installDirPath = getExecutableDir();
    std::filesystem::path apolloPayloadRoot = payloadRoot(installDirPath);
    std::filesystem::path apolloExePath = apolloPayloadRoot / "apollo.exe";
    std::filesystem::path apolloConfigExePath = apolloPayloadRoot / "apollo-config.exe";
    std::filesystem::path compilerScriptPath = apolloPayloadRoot / "compiler" / "exec.bat";

    if (!std::filesystem::exists(apolloExePath)) {
        std::cerr << "Install failed: missing apollo.exe at " << apolloExePath.string() << std::endl;
        return 1;
    }

    if (!std::filesystem::exists(compilerScriptPath)) {
        std::cerr << "Install failed: missing compiler script at " << compilerScriptPath.string() << std::endl;
        return 1;
    }

    if (!std::filesystem::exists(apolloConfigExePath)) {
        std::cerr << "Install warning: missing apollo-config.exe at " << apolloConfigExePath.string() << std::endl;
        std::cerr << "Apollo will still run in AOT mode, but mode switching will be unavailable until apollo-config.exe is restored." << std::endl;
    }

    std::cout << "CHECKING DEPENDENCIES" << std::endl;
    if (!bootstrapDependencies(installDirPath)) {
        return 1;
    }

    std::string installDir = installDirPath.string();
    std::cout << "UPDATING SYS PATH" << std::endl;
    std::this_thread::sleep_for(std::chrono::milliseconds(999));
    std::cout << "LOADED INSTALLER. BEGINNING EXECUTION" << std::endl;
    std::this_thread::sleep_for(std::chrono::milliseconds(100));
    std::cout << "STATUS : [";
    for (int i = 0; i < 20; ++i) {
        std::cout << "#";
        std::this_thread::sleep_for(std::chrono::milliseconds(100));
    }
    std::cout << "]" << std::endl;

    HKEY environmentKey = nullptr;
    if (RegOpenKeyExA(HKEY_CURRENT_USER, "Environment", 0, KEY_QUERY_VALUE | KEY_SET_VALUE, &environmentKey) != ERROR_SUCCESS) {
        std::cerr << "Failed to open the user environment registry key." << std::endl;
        return 1;
    }

    DWORD valueType = REG_SZ;
    DWORD bufferSize = 0;
    std::string currentPath;
    LONG queryStatus = RegQueryValueExA(environmentKey, "Path", nullptr, &valueType, nullptr, &bufferSize);
    if (queryStatus == ERROR_SUCCESS && bufferSize > 0) {
        std::string buffer(bufferSize, '\0');
        queryStatus = RegQueryValueExA(environmentKey, "Path", nullptr, &valueType, reinterpret_cast<LPBYTE>(buffer.data()), &bufferSize);
        if (queryStatus != ERROR_SUCCESS) {
            RegCloseKey(environmentKey);
            std::cerr << "Failed to read the current user PATH." << std::endl;
            return 1;
        }

        currentPath.assign(buffer.c_str());
    } else if (queryStatus != ERROR_FILE_NOT_FOUND) {
        RegCloseKey(environmentKey);
        std::cerr << "Failed to query the current user PATH." << std::endl;
        return 1;
    }

    std::filesystem::path windowsAppsDir = getWindowsAppsDir();
    if (windowsAppsDir.empty()) {
        RegCloseKey(environmentKey);
        std::cerr << "Failed to resolve the WindowsApps directory." << std::endl;
        return 1;
    }

    std::string windowsApps = windowsAppsDir.string();
    std::vector<std::string> updatedEntries;
    updatedEntries.push_back(windowsApps);
    for (const std::string& entry : splitPathEntries(currentPath)) {
        if (!equalsIgnoreCase(entry, installDir) && !equalsIgnoreCase(entry, windowsApps)) {
            updatedEntries.push_back(entry);
        }
    }

    std::string updatedPath = joinPathEntries(updatedEntries);
    DWORD registryType = valueType == REG_EXPAND_SZ ? REG_EXPAND_SZ : REG_SZ;
    if (RegSetValueExA(
            environmentKey,
            "Path",
            0,
            registryType,
            reinterpret_cast<const BYTE*>(updatedPath.c_str()),
            static_cast<DWORD>(updatedPath.size() + 1)) != ERROR_SUCCESS) {
        RegCloseKey(environmentKey);
        std::cerr << "Failed to update system PATH." << std::endl;
        return 1;
    }

    RegCloseKey(environmentKey);
    SendMessageTimeoutA(HWND_BROADCAST, WM_SETTINGCHANGE, 0, reinterpret_cast<LPARAM>("Environment"), SMTO_ABORTIFHUNG, 5000, nullptr);

    if (!writeApolloWrapper(installDirPath)) {
        std::cerr << "Failed to create the Apollo command shim in WindowsApps." << std::endl;
        return 1;
    }

    std::error_code cleanupError;
    std::filesystem::remove(installDirPath / "config.exe", cleanupError);

    std::cout << "Installation complete, Welcome to Apollo!" << std::endl;
    std::cout << "The apollo command now runs through the WindowsApps shim at " << windowsApps << std::endl;
    return 0;
}
