import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public final class ApolloBuildDriver {
    private ApolloBuildDriver() {
    }

    public static void main(String[] args) {
        try {
            if (args.length < 2) {
                throw new BuildDriverException("Usage: ApolloBuildDriver <emit-ll|build-aot|analyze> <input-file> [output-file]");
            }

            String command = args[0].trim().toLowerCase(Locale.ROOT);
            Path inputFile = Paths.get(args[1]).toAbsolutePath().normalize();
            BuildEnvironment env = BuildEnvironment.load(inputFile);

            switch (command) {
                case "emit-ll":
                    emitLl(env);
                    break;
                case "build-aot":
                    Path linkOutput = args.length > 2
                            ? Paths.get(args[2]).toAbsolutePath().normalize()
                            : env.outputDir.resolve("output.exe");
                    buildAot(env, linkOutput);
                    break;
                case "analyze":
                    Path analyzeOutput = args.length > 2
                            ? Paths.get(args[2]).toAbsolutePath().normalize()
                            : env.outputDir.resolve("output_asan.exe");
                    analyze(env, analyzeOutput);
                    break;
                default:
                    throw new BuildDriverException("Unknown ApolloBuildDriver command: " + command);
            }
        } catch (BuildDriverException ex) {
            System.err.println(ex.getMessage());
            System.exit(1);
        } catch (Exception ex) {
            System.err.println("Apollo backend driver crashed: " + ex.getMessage());
            ex.printStackTrace(System.err);
            System.exit(1);
        }
    }

    private static void emitLl(BuildEnvironment env) throws Exception {
        GcSupport gcSupport = resolveGcSupport(env);
        preparePch(env, false);

        List<String> command = new ArrayList<>();
        command.add(env.clangExe);
        command.add("-I" + env.sourceRoot);
        command.addAll(gcSupport.compileFlags());
        command.addAll(pgoCompileFlags(env));
        command.addAll(frontendFlags(env));
        command.add(env.generatedCpp.toString());
        command.add("-o");
        command.add(env.llvmOutput.toString());
        runCommand(command, env.compilerDir);
    }

    private static void buildAot(BuildEnvironment env, Path linkOutput) throws Exception {
        emitLl(env);

        Files.createDirectories(linkOutput.getParent() != null ? linkOutput.getParent() : env.compilerDir);

        List<String> llcCommand = new ArrayList<>();
        llcCommand.add(env.llcExe);
        llcCommand.addAll(llcFlags(env));
        llcCommand.add(env.llvmOutput.toString());
        llcCommand.add("-o");
        llcCommand.add(env.objectOutput.toString());
        runCommand(llcCommand, env.compilerDir);

        GcSupport gcSupport = resolveGcSupport(env);
        List<String> linkCommand = new ArrayList<>();
        linkCommand.add(env.clangxxExe);
        linkCommand.add(env.objectOutput.toString());
        linkCommand.add("-o");
        linkCommand.add(linkOutput.toString());
        linkCommand.addAll(standaloneLinkFlags());
        linkCommand.addAll(gcSupport.linkFlags());
        linkCommand.addAll(pgoLinkFlags(env));
        linkCommand.addAll(linkFlags(env));
        runCommand(linkCommand, env.compilerDir);
    }

    private static void analyze(BuildEnvironment env, Path outputFile) throws Exception {
        GcSupport gcSupport = resolveGcSupport(env);
        preparePch(env, true);

        Files.createDirectories(outputFile.getParent() != null ? outputFile.getParent() : env.compilerDir);

        List<String> command = new ArrayList<>();
        command.add(env.clangxxExe);
        command.add("-I" + env.sourceRoot);
        command.addAll(gcSupport.compileFlags());
        command.addAll(analyzeFlags(env));
        command.add(env.generatedCpp.toString());
        command.add("-o");
        command.add(outputFile.toString());
        command.addAll(gcSupport.linkFlags());
        command.addAll(linkFlags(env));
        runCommand(command, env.compilerDir);
    }

    private static void preparePch(BuildEnvironment env, boolean analyzeMode) throws Exception {
        if (!env.usePch) {
            return;
        }
        if (!Files.exists(env.pchHeader)) {
            throw new BuildDriverException("Apollo PCH header not found: " + env.pchHeader);
        }
        Path pchOutput = analyzeMode ? analyzePchOutput(env) : env.pchOutput;
        Files.createDirectories(pchOutput.getParent() != null ? pchOutput.getParent() : env.compilerDir);

        List<String> command = new ArrayList<>();
        command.add(env.clangxxExe);
        command.addAll(targetFlags(env));
        command.add("-x");
        command.add("c++-header");
        command.add("-std=" + env.cxxStd);
        if (analyzeMode) {
            command.add("-O0");
            command.add("-g");
            command.add("-fno-omit-frame-pointer");
            command.add("-fsanitize=address");
            command.addAll(splitFlags(System.getenv("APOLLO_ANALYZE_EXTRA_FLAGS")));
        } else {
            command.add("-O" + env.optLevel);
            command.addAll(splitFlags(System.getenv("APOLLO_FRONTEND_EXTRA_FLAGS")));
        }
        command.addAll(splitFlags(System.getenv("APOLLO_PCH_EXTRA_FLAGS")));
        command.add(env.pchHeader.toString());
        command.add("-o");
        command.add(pchOutput.toString());
        runCommand(command, env.compilerDir);
    }

    private static GcSupport resolveGcSupport(BuildEnvironment env) throws IOException {
        String generated = Files.readString(env.generatedCpp, StandardCharsets.UTF_8);
        if (!generated.contains("#include <gc/")
                && !generated.contains("#include <gc_cpp.h>")
                && !generated.contains("#include <gc.h>")) {
            return GcSupport.disabled();
        }

        String includeDir = System.getenv("APOLLO_GC_INCLUDE_DIR");
        String libDir = System.getenv("APOLLO_GC_LIB_DIR");
        String msysRoot = System.getenv("APOLLO_MSYS64_ROOT");

        if ((isBlank(includeDir) || isBlank(libDir)) && !isBlank(msysRoot)) {
            Path msysPath = Paths.get(msysRoot);
            List<Path> candidates = List.of(msysPath.resolve("clang64"), msysPath.resolve("mingw64"));
            for (Path candidate : candidates) {
                if (isBlank(includeDir) && Files.isDirectory(candidate.resolve("include"))) {
                    includeDir = candidate.resolve("include").toString();
                }
                if (isBlank(libDir) && Files.isDirectory(candidate.resolve("lib"))) {
                    libDir = candidate.resolve("lib").toString();
                }
            }
        }

        if (isBlank(includeDir)) {
            Path detectedInclude = detectSystemGcIncludeDir();
            if (detectedInclude != null) {
                includeDir = detectedInclude.toString();
            }
        }
        if (isBlank(libDir)) {
            Path detectedLib = detectSystemGcLibDir();
            if (detectedLib != null) {
                libDir = detectedLib.toString();
            }
        }

        if (isBlank(includeDir) || isBlank(libDir)) {
            throw new BuildDriverException("GC headers or libraries were requested by this Apollo program, but Boehm GC was not found. Set APOLLO_GC_INCLUDE_DIR and APOLLO_GC_LIB_DIR, or run the Apollo installer for your platform.");
        }

        Path includePath = Paths.get(includeDir).toAbsolutePath().normalize();
        Path libPath = Paths.get(libDir).toAbsolutePath().normalize();
        if (!hasGcHeaders(includePath) || !hasGcLibraries(libPath)) {
            throw new BuildDriverException("GC headers or libraries were requested by this Apollo program, but the configured Boehm GC paths are incomplete. Include dir: " + includePath + " Lib dir: " + libPath);
        }

        return new GcSupport(includePath, libPath);
    }

    private static Path detectSystemGcIncludeDir() {
        for (String candidate : List.of(
                "/opt/homebrew/include",
                "/usr/local/include",
                "/usr/include",
                "/opt/local/include")) {
            Path path = Paths.get(candidate);
            if (Files.isDirectory(path) && hasGcHeaders(path)) {
                return path;
            }
        }
        return null;
    }

    private static Path detectSystemGcLibDir() {
        for (String candidate : List.of(
                "/opt/homebrew/lib",
                "/usr/local/lib",
                "/usr/lib64",
                "/usr/lib",
                "/opt/local/lib")) {
            Path path = Paths.get(candidate);
            if (Files.isDirectory(path) && hasGcLibraries(path)) {
                return path;
            }
        }
        return null;
    }

    private static boolean hasGcHeaders(Path includePath) {
        return Files.exists(includePath.resolve("gc_cpp.h"))
                || Files.exists(includePath.resolve("gc/gc_cpp.h"))
                || Files.exists(includePath.resolve("gc.h"))
                || Files.exists(includePath.resolve("gc/gc.h"));
    }

    private static boolean hasGcLibraries(Path libPath) {
        return (Files.exists(libPath.resolve("libgc.a")) || Files.exists(libPath.resolve("libgc.dll.a")))
                && (Files.exists(libPath.resolve("libgccpp.a")) || Files.exists(libPath.resolve("libgccpp.dll.a")));
    }

    private static List<String> frontendFlags(BuildEnvironment env) {
        List<String> flags = new ArrayList<>();
        flags.addAll(targetFlags(env));
        flags.add("-x");
        flags.add("c++");
        flags.add("-std=" + env.cxxStd);
        flags.add("-O" + env.optLevel);
        flags.add("-S");
        flags.add("-emit-llvm");
        flags.addAll(splitFlags(System.getenv("APOLLO_FRONTEND_EXTRA_FLAGS")));
        flags.addAll(pchUseFlags(env.pchOutput, env.usePch));
        return flags;
    }

    private static List<String> llcFlags(BuildEnvironment env) {
        List<String> flags = new ArrayList<>();
        flags.add("-O" + env.llcOptLevel);
        flags.add("-filetype=obj");
        flags.addAll(splitFlags(System.getenv("APOLLO_LLC_EXTRA_FLAGS")));
        return flags;
    }

    private static List<String> analyzeFlags(BuildEnvironment env) {
        List<String> flags = new ArrayList<>();
        flags.addAll(targetFlags(env));
        flags.add("-x");
        flags.add("c++");
        flags.add("-std=" + env.cxxStd);
        flags.add("-O0");
        flags.add("-g");
        flags.add("-fno-omit-frame-pointer");
        flags.add("-fsanitize=address");
        flags.addAll(splitFlags(System.getenv("APOLLO_ANALYZE_EXTRA_FLAGS")));
        flags.addAll(pchUseFlags(analyzePchOutput(env), env.usePch));
        return flags;
    }

    private static List<String> linkFlags(BuildEnvironment env) {
        List<String> flags = new ArrayList<>();
        flags.addAll(targetFlags(env));
        flags.addAll(splitFlags(System.getenv("APOLLO_LINK_EXTRA_FLAGS")));
        return flags;
    }

    private static List<String> targetFlags(BuildEnvironment env) {
        List<String> flags = new ArrayList<>();
        if (!isBlank(env.targetTriple)) {
            flags.add("--target=" + env.targetTriple);
        }
        if (!isBlank(env.sysroot)) {
            flags.add("--sysroot=" + env.sysroot);
        }
        return flags;
    }

    private static List<String> pchUseFlags(Path pchOutput, boolean usePch) {
        List<String> flags = new ArrayList<>();
        if (!usePch) {
            return flags;
        }
        flags.add("-Winvalid-pch");
        flags.add("-include-pch");
        flags.add(pchOutput.toString());
        return flags;
    }

    private static Path analyzePchOutput(BuildEnvironment env) {
        Path parent = env.pchOutput.getParent();
        String fileName = env.pchOutput.getFileName().toString();
        int extensionIndex = fileName.lastIndexOf('.');
        String analyzeName = extensionIndex >= 0
                ? fileName.substring(0, extensionIndex) + "_asan" + fileName.substring(extensionIndex)
                : fileName + "_asan";
        return parent != null ? parent.resolve(analyzeName) : env.compilerDir.resolve(analyzeName);
    }

    private static List<String> pgoCompileFlags(BuildEnvironment env) {
        return pgoFlags(env, true);
    }

    private static List<String> pgoLinkFlags(BuildEnvironment env) {
        return pgoFlags(env, false);
    }

    private static List<String> standaloneLinkFlags() {
        String osName = System.getProperty("os.name", "").toLowerCase(Locale.ROOT);
        if (osName.contains("linux")) {
            return List.of("-static-libstdc++", "-static-libgcc");
        }
        if (!osName.contains("win")) {
            return List.of();
        }
        return List.of("-static", "-static-libstdc++", "-static-libgcc");
    }

    private static List<String> pgoFlags(BuildEnvironment env, boolean compilePhase) {
        String mode = System.getenv("APOLLO_PGO_MODE");
        if (isBlank(mode)) {
            return List.of();
        }
        String normalized = mode.trim().toLowerCase(Locale.ROOT);
        if ("generate".equals(normalized)) {
            return List.of("-fprofile-generate");
        }
        if ("use".equals(normalized)) {
            String profile = System.getenv("APOLLO_PGO_PROFILE");
            if (isBlank(profile)) {
                throw new BuildDriverException("APOLLO_PGO_MODE=use requires APOLLO_PGO_PROFILE to point at the collected profile data.");
            }
            return List.of("-fprofile-use=" + profile, "-fprofile-correction");
        }
        if (compilePhase) {
            throw new BuildDriverException("Unsupported APOLLO_PGO_MODE: " + mode);
        }
        return List.of();
    }

    private static void runCommand(List<String> command, Path workingDirectory) {
        ProcessBuilder builder = new ProcessBuilder(command);
        builder.directory(workingDirectory.toFile());
        builder.inheritIO();
        try {
            Process process = builder.start();
            int exitCode = process.waitFor();
            if (exitCode != 0) {
                throw new BuildDriverException("Command failed (exit " + exitCode + "): " + String.join(" ", command));
            }
        } catch (IOException ex) {
            throw new BuildDriverException("Failed to start command: " + String.join(" ", command), ex);
        } catch (InterruptedException ex) {
            Thread.currentThread().interrupt();
            throw new BuildDriverException("Command interrupted: " + String.join(" ", command), ex);
        }
    }

    private static List<String> splitFlags(String raw) {
        List<String> flags = new ArrayList<>();
        if (isBlank(raw)) {
            return flags;
        }

        StringBuilder current = new StringBuilder();
        boolean inQuotes = false;
        for (int index = 0; index < raw.length(); index++) {
            char ch = raw.charAt(index);
            if (ch == '"') {
                inQuotes = !inQuotes;
                continue;
            }
            if (Character.isWhitespace(ch) && !inQuotes) {
                if (current.length() > 0) {
                    flags.add(current.toString());
                    current.setLength(0);
                }
                continue;
            }
            current.append(ch);
        }
        if (current.length() > 0) {
            flags.add(current.toString());
        }
        return flags;
    }

    private static boolean isBlank(String value) {
        return value == null || value.trim().isEmpty();
    }

    private static final class BuildEnvironment {
        private final Path compilerDir;
        private final Path sourceRoot;
        private final Path generatedCpp;
        private final Path outputDir;
        private final Path llvmOutput;
        private final Path objectOutput;
        private final Path pchHeader;
        private final Path pchOutput;
        private final String clangExe;
        private final String clangxxExe;
        private final String llcExe;
        private final String cxxStd;
        private final String optLevel;
        private final String llcOptLevel;
        private final String targetTriple;
        private final String sysroot;
        private final boolean usePch;

        private BuildEnvironment(Path compilerDir,
                                 Path sourceRoot,
                                 Path generatedCpp,
                                 Path outputDir,
                                 Path llvmOutput,
                                 Path objectOutput,
                                 Path pchHeader,
                                 Path pchOutput,
                                 String clangExe,
                                 String clangxxExe,
                                 String llcExe,
                                 String cxxStd,
                                 String optLevel,
                                 String llcOptLevel,
                                 String targetTriple,
                                 String sysroot,
                                 boolean usePch) {
            this.compilerDir = compilerDir;
            this.sourceRoot = sourceRoot;
            this.generatedCpp = generatedCpp;
            this.outputDir = outputDir;
            this.llvmOutput = llvmOutput;
            this.objectOutput = objectOutput;
            this.pchHeader = pchHeader;
            this.pchOutput = pchOutput;
            this.clangExe = clangExe;
            this.clangxxExe = clangxxExe;
            this.llcExe = llcExe;
            this.cxxStd = cxxStd;
            this.optLevel = optLevel;
            this.llcOptLevel = llcOptLevel;
            this.targetTriple = targetTriple;
            this.sysroot = sysroot;
            this.usePch = usePch;
        }

        private static BuildEnvironment load(Path inputFile) throws IOException {
            Path compilerDir = Paths.get(".").toAbsolutePath().normalize();
            Path outputDir = compilerDir.resolve("output");
            Files.createDirectories(outputDir);

            String cxxStd = defaulted(System.getenv("APOLLO_CXX_STD"), "c++20");
            String optLevel = defaulted(System.getenv("APOLLO_OPT_LEVEL"), "3");
            String llcOptLevel = defaulted(System.getenv("APOLLO_LLC_OPT_LEVEL"), optLevel);
            boolean usePch = envEnabled("APOLLO_USE_PCH", true);
            Path pchHeader = compilerDir.resolve(defaulted(System.getenv("APOLLO_PCH_HEADER"), "runtime_support/apollo_pch.hpp")).normalize();
            Path pchOutput = compilerDir.resolve(defaulted(System.getenv("APOLLO_PCH_OUTPUT"), "output/apollo.pch")).normalize();
            String clangExe = defaulted(firstDefined(System.getenv("CLANG_EXE"), System.getenv("APOLLO_CLANG_EXE")), "clang");
            String clangxxExe = defaulted(firstDefined(System.getenv("CLANGXX_EXE"), System.getenv("APOLLO_CLANGXX_EXE")), "clang++");
            String llcExe = defaulted(firstDefined(System.getenv("LLC_EXE"), System.getenv("APOLLO_LLC_EXE")), "llc");
            String targetTriple = System.getenv("APOLLO_TARGET_TRIPLE");
            String sysroot = System.getenv("APOLLO_SYSROOT");

            return new BuildEnvironment(
                    compilerDir,
                    Main.determineImportRoot(inputFile),
                    compilerDir.resolve("output.cpp"),
                    outputDir,
                    outputDir.resolve("output.ll"),
                    outputDir.resolve("output.obj"),
                    pchHeader,
                    pchOutput,
                    clangExe,
                    clangxxExe,
                    llcExe,
                    cxxStd,
                    optLevel,
                    llcOptLevel,
                    targetTriple,
                    sysroot,
                    usePch);
        }
    }

    private static boolean envEnabled(String name, boolean defaultValue) {
        String value = System.getenv(name);
        if (value == null) {
            return defaultValue;
        }
        String normalized = value.trim();
        return "1".equals(normalized)
                || "true".equalsIgnoreCase(normalized)
                || "yes".equalsIgnoreCase(normalized)
                || "on".equalsIgnoreCase(normalized);
    }

    private static String defaulted(String value, String defaultValue) {
        return isBlank(value) ? defaultValue : value;
    }

    private static String firstDefined(String primary, String secondary) {
        return !isBlank(primary) ? primary : secondary;
    }

    private static final class GcSupport {
        private final Path includeDir;
        private final Path libDir;

        private GcSupport(Path includeDir, Path libDir) {
            this.includeDir = includeDir;
            this.libDir = libDir;
        }

        private static GcSupport disabled() {
            return new GcSupport(null, null);
        }

        private List<String> compileFlags() {
            if (includeDir == null) {
                return List.of();
            }
            return List.of("-I" + includeDir);
        }

        private List<String> linkFlags() {
            if (libDir == null) {
                return List.of();
            }
            return List.of("-L" + libDir, "-lgccpp", "-lgc");
        }
    }

    private static final class BuildDriverException extends RuntimeException {
        private BuildDriverException(String message) {
            super(message);
        }

        private BuildDriverException(String message, Throwable cause) {
            super(message, cause);
        }
    }
}