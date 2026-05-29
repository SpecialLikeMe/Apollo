#include <algorithm>
#include <chrono>
#include <cstdlib>
#include <filesystem>
#include <iostream>
#include <optional>
#include <process.h>
#include <string>
#include <system_error>
#include <vector>
#include <windows.h>

namespace {

constexpr const char* kUsageText =
    "Usage: apollo [--notree] [-bin] <ctall|run> [filepath] [outputname]\n"
    "       apollo [--notree] [filepath.apollo] [-W|-L|-M] <outputname>\n"
    "       apollo build [entry.apollo] [-W|-L|-M] [--notree]\n"
    "       apollo run [entry.apollo] [--notree]\n"
    "       apollo test [project-root] [--notree]\n"
    "       apollo bench [project-root] [--notree]\n"
    "       apollo apx <init|install|uninstall|deinit> ...\n"
    "       apollo -analyze [filepath]\n"
    "       apollo --version\n"
    "       apollo --update\n"
    "       apollo -m uninstall";

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
    GetModuleFileNameA(nullptr, buffer, MAX_PATH);
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

std::filesystem::path resolveApolloRoot() {
    const std::filesystem::path executableDir = getExecutableDir();
    const std::filesystem::path payloadDir = executableDir / "Apollo-Main";
    if (std::filesystem::exists(payloadDir / "compiler" / "exec.bat")) {
        return payloadDir;
    }
    return executableDir;
}

void configureApolloEnvironment(const std::filesystem::path& apolloRoot) {
    const std::filesystem::path compilerDir = apolloRoot / "compiler";
    _putenv_s("APOLLO_DIR", apolloRoot.string().c_str());
    _putenv_s("APOLLO_COMPILER_DIR", compilerDir.string().c_str());
}

void setAstStreamingEnabled(bool enabled) {
    _putenv_s("APOLLO_SHOW_AST", enabled ? "1" : "0");
    _putenv_s("APOLLO_HIDE_AST", enabled ? "0" : "1");
}

struct ParsedArgs {
    std::vector<std::string> values;
    bool showTree = true;
};

bool isBuildFlag(const std::string& value);

std::optional<std::filesystem::path> resolveApolloSourceArgument(const std::string& rawValue);

bool shouldTreatAsLegacyFileCompile(const std::vector<std::string>& args);

struct BuildTargetSpec {
    const char* flag;
    const char* extension;
};

std::vector<BuildTargetSpec> selectedBuildTargets(const std::optional<std::string>& buildFlag);

BuildTargetSpec hostBuildTarget();

ParsedArgs parseGlobalArgs(const std::vector<std::string>& args) {
    ParsedArgs parsed;
    parsed.values.reserve(args.size());
    for (const auto& arg : args) {
        if (arg == "--notree") {
            parsed.showTree = false;
            continue;
        }
        parsed.values.push_back(arg);
    }
    return parsed;
}

std::optional<std::filesystem::path> parseProjectRootArgument(const std::vector<std::string>& rawArgs, const char* commandName) {
    std::optional<std::filesystem::path> projectRoot;
    for (const auto& arg : rawArgs) {
        if (projectRoot.has_value()) {
            std::cerr << "Error: " << commandName << " accepts at most one project root argument." << std::endl;
            return std::nullopt;
        }
        projectRoot = std::filesystem::absolute(arg).lexically_normal();
    }
    return projectRoot;
}

int runShellCommand(const std::string& command, const std::optional<std::filesystem::path>& workingDirectory) {
    std::string shellCommand = command;
    if (workingDirectory.has_value()) {
        shellCommand = "cd /d " + quoteCmdArg(std::filesystem::absolute(*workingDirectory).lexically_normal().string())
            + " && " + command;
    }

    const std::filesystem::path interpreter = getCommandInterpreter();
    const std::string interpreterString = interpreter.string();
    const intptr_t result = _spawnl(
        _P_WAIT,
        interpreterString.c_str(),
        interpreterString.c_str(),
        "/c",
        shellCommand.c_str(),
        nullptr);
    if (result == -1) {
        std::cerr << "Error: Failed to launch command interpreter at: " << interpreterString << std::endl;
        return 1;
    }
    return static_cast<int>(result);
}

int runExecScript(const std::filesystem::path& execScript,
    const std::vector<std::string>& args,
    const std::optional<std::filesystem::path>& workingDirectory,
    bool enableAst) {
    setAstStreamingEnabled(enableAst);
    std::string command = "call " + quoteCmdArg(execScript.string());
    for (const auto& arg : args) {
        command += ' ';
        command += quoteCmdArg(arg);
    }
    return runShellCommand(command, workingDirectory);
}

int runNodeApx(const std::filesystem::path& apolloRoot,
    const std::vector<std::string>& args,
    const std::optional<std::filesystem::path>& workingDirectory) {
    std::string command = "node --experimental-strip-types " + quoteCmdArg((apolloRoot / "apx" / "main.ts").string());
    for (const auto& arg : args) {
        command += ' ';
        command += quoteCmdArg(arg);
    }
    return runShellCommand(command, workingDirectory);
}

int runExecutable(const std::filesystem::path& executable,
    const std::vector<std::string>& args,
    const std::optional<std::filesystem::path>& workingDirectory) {
    std::string command = quoteCmdArg(executable.string());
    for (const auto& arg : args) {
        command += ' ';
        command += quoteCmdArg(arg);
    }
    return runShellCommand(command, workingDirectory);
}

bool isBuildFlag(const std::string& value) {
    return value == "-W" || value == "-L" || value == "-M";
}

std::optional<std::filesystem::path> resolveApolloSourceArgument(const std::string& rawValue) {
    std::filesystem::path sourcePath = std::filesystem::absolute(rawValue).lexically_normal();
    if (sourcePath.extension() == ".apollo") {
        return sourcePath;
    }

    std::filesystem::path implicitSourcePath = sourcePath;
    implicitSourcePath += ".apollo";
    if (std::filesystem::exists(implicitSourcePath)) {
        return implicitSourcePath;
    }

    return std::nullopt;
}

bool shouldTreatAsLegacyFileCompile(const std::vector<std::string>& args) {
    if (args.size() < 3) {
        return false;
    }
    if ((args.front() != "test" && args.front() != "bench") || !isBuildFlag(args[1])) {
        return false;
    }
    return resolveApolloSourceArgument(args.front()).has_value();
}

std::vector<BuildTargetSpec> selectedBuildTargets(const std::optional<std::string>& buildFlag) {
    if (buildFlag.has_value()) {
        if (*buildFlag == "-W") {
            return { {"-W", ".exe"} };
        }
        if (*buildFlag == "-L") {
            return { {"-L", ".elf"} };
        }
        if (*buildFlag == "-M") {
            return { {"-M", ".mco"} };
        }
    }

    const BuildTargetSpec target = hostBuildTarget();
    return { target };
}

BuildTargetSpec hostBuildTarget() {
    return {"-W", ".exe"};
}

std::string sanitizeName(std::string value) {
    for (char& ch : value) {
        const bool keep = (ch >= 'a' && ch <= 'z')
            || (ch >= 'A' && ch <= 'Z')
            || (ch >= '0' && ch <= '9')
            || ch == '_'
            || ch == '-';
        if (!keep) {
            ch = '_';
        }
    }
    if (value.empty()) {
        return "artifact";
    }
    return value;
}

std::string artifactBaseName(const std::filesystem::path& root, const std::filesystem::path& sourcePath) {
    std::error_code error;
    std::filesystem::path relative = std::filesystem::relative(sourcePath, root, error);
    if (error) {
        relative = sourcePath.filename();
    }
    relative.replace_extension();
    return sanitizeName(relative.generic_string());
}

bool shouldSkipDirectory(const std::filesystem::path& path) {
    const std::string name = path.filename().string();
    return name == ".git" || name == "build" || name == "apx_modules" || name == "node_modules";
}

std::vector<std::filesystem::path> collectFilesWithExtension(const std::filesystem::path& root, const std::string& extension) {
    std::vector<std::filesystem::path> files;
    std::error_code error;
    std::filesystem::recursive_directory_iterator it(root,
        std::filesystem::directory_options::skip_permission_denied,
        error);
    std::filesystem::recursive_directory_iterator end;
    while (it != end) {
        if (it->is_directory(error) && shouldSkipDirectory(it->path())) {
            it.disable_recursion_pending();
            ++it;
            continue;
        }
        if (it->is_regular_file(error) && it->path().extension() == extension) {
            files.push_back(std::filesystem::absolute(it->path()).lexically_normal());
        }
        ++it;
    }
    std::sort(files.begin(), files.end());
    return files;
}

int bundleSource(const std::filesystem::path& apolloRoot,
    const std::filesystem::path& projectRoot,
    const std::filesystem::path& sourcePath,
    const std::filesystem::path& bundlePath) {
    return runNodeApx(apolloRoot,
        {"bundle", sourcePath.string(), bundlePath.string()},
        projectRoot);
}

int compileBinary(const std::filesystem::path& execScript,
    const std::filesystem::path& workingDirectory,
    const std::filesystem::path& inputPath,
    const std::filesystem::path& outputPath,
    const std::optional<std::string>& buildFlag,
    bool showTree) {
    if (buildFlag.has_value()) {
        return runExecScript(execScript,
            {inputPath.string(), *buildFlag, outputPath.string()},
            workingDirectory,
            showTree);
    }
    return runExecScript(execScript,
        {"-bin", "ctall", inputPath.string(), outputPath.string()},
        workingDirectory,
        showTree);
}

int handleBuildCommand(const std::filesystem::path& apolloRoot,
    const std::filesystem::path& execScript,
    const std::vector<std::string>& rawArgs,
    bool showTree) {
    std::optional<std::string> buildFlag;
    std::optional<std::filesystem::path> entryPath;
    for (const auto& arg : rawArgs) {
        if (isBuildFlag(arg)) {
            if (buildFlag.has_value()) {
                std::cerr << "Error: only one build target flag may be provided." << std::endl;
                return 1;
            }
            buildFlag = arg;
            continue;
        }
        if (entryPath.has_value()) {
            std::cerr << "Error: unexpected extra argument for build." << std::endl;
            return 1;
        }
        entryPath = std::filesystem::absolute(arg).lexically_normal();
    }

    const std::filesystem::path projectRoot = std::filesystem::current_path();
    const std::filesystem::path sourcePath = entryPath.value_or((projectRoot / "main.apollo").lexically_normal());
    if (!std::filesystem::exists(sourcePath)) {
        std::cerr << "Error: build entrypoint not found: " << sourcePath.string() << std::endl;
        return 1;
    }

    const std::filesystem::path buildRoot = projectRoot / "build";
    const std::filesystem::path bundleRoot = buildRoot / ".apollo-bundles";
    std::filesystem::create_directories(bundleRoot);
    std::filesystem::create_directories(buildRoot);

    const std::string baseName = artifactBaseName(projectRoot, sourcePath);
    const std::filesystem::path bundlePath = bundleRoot / (baseName + ".apollo");
    int status = bundleSource(apolloRoot, projectRoot, sourcePath, bundlePath);
    if (status != 0) {
        return status;
    }

    for (const BuildTargetSpec& target : selectedBuildTargets(buildFlag)) {
        std::filesystem::path outputPath = buildRoot / baseName;
        outputPath += target.extension;
        status = compileBinary(execScript, projectRoot, bundlePath, outputPath, std::string(target.flag), showTree);
        if (status != 0) {
            return status;
        }
        std::cout << "Built binary: " << outputPath.string() << std::endl;
    }

    return 0;
}

int handleRunCommand(const std::filesystem::path& apolloRoot,
    const std::filesystem::path& execScript,
    const std::vector<std::string>& rawArgs,
    bool showTree) {
    if (rawArgs.size() > 1) {
        std::cerr << "Error: run accepts at most one entry file argument." << std::endl;
        return 1;
    }

    const std::filesystem::path projectRoot = std::filesystem::current_path();
    const std::filesystem::path sourcePath = rawArgs.empty()
        ? (projectRoot / "main.apollo").lexically_normal()
        : std::filesystem::absolute(rawArgs.front()).lexically_normal();
    if (!std::filesystem::exists(sourcePath)) {
        std::cerr << "Error: run entrypoint not found: " << sourcePath.string() << std::endl;
        return 1;
    }

    const std::filesystem::path buildRoot = projectRoot / "build";
    const std::filesystem::path bundleRoot = buildRoot / ".apollo-bundles";
    std::filesystem::create_directories(bundleRoot);
    std::filesystem::create_directories(buildRoot);

    const std::string baseName = artifactBaseName(projectRoot, sourcePath);
    const std::filesystem::path bundlePath = bundleRoot / (baseName + ".apollo");
    int status = bundleSource(apolloRoot, projectRoot, sourcePath, bundlePath);
    if (status != 0) {
        return status;
    }

    const BuildTargetSpec target = hostBuildTarget();
    std::filesystem::path outputPath = buildRoot / baseName;
    outputPath += target.extension;
    status = compileBinary(execScript, projectRoot, bundlePath, outputPath, std::string(target.flag), showTree);
    if (status != 0) {
        return status;
    }

    std::cout << "Built binary: " << outputPath.string() << std::endl;
    return runExecutable(outputPath, {}, projectRoot);
}

int handleTestCommand(const std::filesystem::path& apolloRoot,
    const std::filesystem::path& execScript,
    const std::vector<std::string>& rawArgs,
    bool showTree) {
    const auto projectRoot = parseProjectRootArgument(rawArgs, "test");
    if (!projectRoot.has_value() && !rawArgs.empty()) {
        return 1;
    }

    const std::filesystem::path root = projectRoot.value_or(std::filesystem::current_path());
    const auto tests = collectFilesWithExtension(root, ".aptest");
    if (tests.empty()) {
        std::cerr << "No .aptest files found under " << root.string() << std::endl;
        return 1;
    }

    const std::filesystem::path buildRoot = root / "build";
    const std::filesystem::path bundleRoot = buildRoot / ".apollo-bundles";
    const std::filesystem::path testRoot = buildRoot / "tests";
    std::filesystem::create_directories(bundleRoot);
    std::filesystem::create_directories(testRoot);

    int failures = 0;
    for (const auto& testPath : tests) {
        const std::string baseName = artifactBaseName(root, testPath);
        const std::filesystem::path bundlePath = bundleRoot / (baseName + ".apollo");
        const std::filesystem::path outputPath = testRoot / (baseName + ".exe");

        std::cout << "[test] " << testPath.string() << std::endl;
        int status = bundleSource(apolloRoot, root, testPath, bundlePath);
        if (status == 0) {
            status = compileBinary(execScript, root, bundlePath, outputPath, std::nullopt, showTree);
        }
        if (status == 0) {
            status = runExecutable(outputPath, {}, testPath.parent_path());
        }
        if (status != 0) {
            ++failures;
            std::cout << "[fail] exit=" << status << std::endl;
        } else {
            std::cout << "[pass]" << std::endl;
        }
    }

    return failures == 0 ? 0 : 1;
}

int handleBenchCommand(const std::filesystem::path& apolloRoot,
    const std::filesystem::path& execScript,
    const std::vector<std::string>& rawArgs,
    bool showTree) {
    const auto projectRoot = parseProjectRootArgument(rawArgs, "bench");
    if (!projectRoot.has_value() && !rawArgs.empty()) {
        return 1;
    }

    const std::filesystem::path root = projectRoot.value_or(std::filesystem::current_path());
    const auto benches = collectFilesWithExtension(root, ".apbench");
    if (benches.empty()) {
        std::cerr << "No .apbench files found under " << root.string() << std::endl;
        return 1;
    }

    const std::filesystem::path buildRoot = root / "build";
    const std::filesystem::path bundleRoot = buildRoot / ".apollo-bundles";
    const std::filesystem::path benchRoot = buildRoot / "bench";
    std::filesystem::create_directories(bundleRoot);
    std::filesystem::create_directories(benchRoot);

    int failures = 0;
    for (const auto& benchPath : benches) {
        const std::string baseName = artifactBaseName(root, benchPath);
        const std::filesystem::path bundlePath = bundleRoot / (baseName + ".apollo");
        const std::filesystem::path outputPath = benchRoot / (baseName + ".exe");

        std::cout << "[bench] " << benchPath.string() << std::endl;
        int status = bundleSource(apolloRoot, root, benchPath, bundlePath);
        if (status == 0) {
            status = compileBinary(execScript, root, bundlePath, outputPath, std::nullopt, showTree);
        }
        if (status == 0) {
            const auto started = std::chrono::steady_clock::now();
            status = runExecutable(outputPath, {}, benchPath.parent_path());
            const auto finished = std::chrono::steady_clock::now();
            const auto elapsed = std::chrono::duration_cast<std::chrono::milliseconds>(finished - started).count();
            std::cout << "[time] " << elapsed << " ms" << std::endl;
        }
        if (status != 0) {
            ++failures;
            std::cout << "[fail] exit=" << status << std::endl;
        }
    }

    return failures == 0 ? 0 : 1;
}

int handleLegacyCompilerCommand(const std::filesystem::path& execScript,
    const std::vector<std::string>& argv,
    bool showTree) {
    bool binaryOnly = false;
    bool analyzeMode = false;
    std::string presetCommand;
    std::string presetInputPath;
    std::string presetOutputPath;
    size_t argIndex = 0;

    while (argIndex < argv.size()) {
        const std::string& flag = argv[argIndex];
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

    if (argIndex >= argv.size()) {
        std::cerr << kUsageText << std::endl;
        return 1;
    }

    if (binaryOnly && analyzeMode) {
        std::cerr << "Error: -bin and -analyze cannot be used together." << std::endl;
        return 1;
    }

    if (!analyzeMode && !binaryOnly && argIndex + 2 < argv.size()) {
        const auto firstArgPath = resolveApolloSourceArgument(argv[argIndex]);
        const std::string& flag = argv[argIndex + 1];
        if (firstArgPath.has_value() && isBuildFlag(flag)) {
            binaryOnly = true;
            presetCommand = "ctall";
            presetInputPath = firstArgPath->string();
            std::filesystem::path outputPath = std::filesystem::absolute(argv[argIndex + 2]).lexically_normal();
            if (flag == "-W" && !outputPath.has_extension()) {
                outputPath += ".exe";
            }
            presetOutputPath = outputPath.string();
            argIndex += 3;
        }
    }

    const std::string command = !presetCommand.empty() ? presetCommand : argv[argIndex++];
    std::string inputPathStr;
    if (!presetInputPath.empty()) {
        inputPathStr = presetInputPath;
    } else if (argIndex < argv.size()) {
        inputPathStr = std::filesystem::absolute(argv[argIndex++]).lexically_normal().string();
    }

    std::string outputPathStr;
    if (binaryOnly) {
        if (!presetOutputPath.empty()) {
            outputPathStr = presetOutputPath;
        } else if (argIndex >= argv.size()) {
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

    if (analyzeMode && argIndex < argv.size()) {
        std::cerr << "Error: too many arguments for -analyze." << std::endl;
        return 1;
    }
    if (!analyzeMode && argIndex < argv.size()) {
        std::cerr << "Error: too many arguments." << std::endl;
        return 1;
    }

    std::vector<std::string> args;
    if (analyzeMode) {
        args.push_back("-analyze");
        if (!inputPathStr.empty()) {
            args.push_back(inputPathStr);
        }
    } else if (binaryOnly) {
        args.push_back("-bin");
        args.push_back(command);
        args.push_back(inputPathStr);
        args.push_back(outputPathStr);
    } else {
        args.push_back(command);
        if (!inputPathStr.empty()) {
            args.push_back(inputPathStr);
        }
    }

    const bool enableAst = showTree && (command == "ctall" || command == "run" || analyzeMode || binaryOnly);
    return runExecScript(execScript, args, std::filesystem::current_path(), enableAst);
}

} // namespace

int main(int argc, char* argv[]) {
    if (argc < 2) {
        std::cerr << kUsageText << std::endl;
        return 1;
    }

    try {
        const std::filesystem::path apolloRoot = resolveApolloRoot();
        const std::filesystem::path execScript = apolloRoot / "compiler" / "exec.bat";
        if (!std::filesystem::exists(execScript)) {
            std::cerr << "Error: Cannot find compiler script at: " << execScript.string() << std::endl;
            return 1;
        }

        configureApolloEnvironment(apolloRoot);

        std::vector<std::string> args;
        args.reserve(static_cast<size_t>(argc - 1));
        for (int index = 1; index < argc; ++index) {
            args.emplace_back(argv[index]);
        }

        const ParsedArgs parsedArgs = parseGlobalArgs(args);
        if (parsedArgs.values.empty()) {
            std::cerr << kUsageText << std::endl;
            return 1;
        }

        if (parsedArgs.values.front() == "apx") {
            return runNodeApx(apolloRoot,
                std::vector<std::string>(parsedArgs.values.begin() + 1, parsedArgs.values.end()),
                std::filesystem::current_path());
        }
        if (parsedArgs.values.front() == "build") {
            return handleBuildCommand(apolloRoot, execScript, std::vector<std::string>(parsedArgs.values.begin() + 1, parsedArgs.values.end()), parsedArgs.showTree);
        }
        if (parsedArgs.values.front() == "run") {
            return handleRunCommand(apolloRoot, execScript, std::vector<std::string>(parsedArgs.values.begin() + 1, parsedArgs.values.end()), parsedArgs.showTree);
        }
        if (parsedArgs.values.front() == "test" && !shouldTreatAsLegacyFileCompile(parsedArgs.values)) {
            return handleTestCommand(apolloRoot, execScript, std::vector<std::string>(parsedArgs.values.begin() + 1, parsedArgs.values.end()), parsedArgs.showTree);
        }
        if (parsedArgs.values.front() == "bench" && !shouldTreatAsLegacyFileCompile(parsedArgs.values)) {
            return handleBenchCommand(apolloRoot, execScript, std::vector<std::string>(parsedArgs.values.begin() + 1, parsedArgs.values.end()), parsedArgs.showTree);
        }

        return handleLegacyCompilerCommand(execScript, parsedArgs.values, parsedArgs.showTree);
    } catch (const std::exception& ex) {
        std::cerr << "Internal Error: " << ex.what() << std::endl;
        return 1;
    }
}
