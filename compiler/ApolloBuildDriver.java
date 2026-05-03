import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

public final class ApolloBuildDriver {
    private static final String BUILD_CACHE_VERSION = "apollo-build-cache-v2";

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
        GuiSupport guiSupport = resolveGuiSupport(env);
        preparePch(env, false);

        List<String> command = new ArrayList<>();
        command.add(env.clangExe);
        command.add("-I" + env.sourceRoot);
        command.addAll(gcSupport.compileFlags());
        command.addAll(guiSupport.compileFlags());
        command.addAll(pgoCompileFlags(env));
        command.addAll(frontendFlags(env));
        command.add(env.generatedCpp.toString());
        command.add("-o");
        command.add(env.llvmOutput.toString());
        runCommand(command, env.compilerDir);
    }

    private static void buildAot(BuildEnvironment env, Path linkOutput) throws Exception {
        Files.createDirectories(linkOutput.getParent() != null ? linkOutput.getParent() : env.compilerDir);
        GcSupport gcSupport = resolveGcSupport(env);
        GuiSupport guiSupport = resolveGuiSupport(env);

        BuildArtifactCacheEntry cacheEntry = tryLoadBuildArtifactCache(env, gcSupport, guiSupport);
        if (cacheEntry != null) {
            restoreCachedBuildArtifact(cacheEntry, linkOutput);
            return;
        }

        emitLl(env);

        List<String> llcCommand = new ArrayList<>();
        llcCommand.add(env.llcExe);
        llcCommand.addAll(llcFlags(env));
        llcCommand.add(env.llvmOutput.toString());
        llcCommand.add("-o");
        llcCommand.add(env.objectOutput.toString());
        runCommand(llcCommand, env.compilerDir);

        List<String> linkCommand = new ArrayList<>();
        linkCommand.add(env.clangxxExe);
        linkCommand.add(env.objectOutput.toString());
        linkCommand.add("-o");
        linkCommand.add(linkOutput.toString());
        linkCommand.addAll(standaloneLinkFlags(env));
        linkCommand.addAll(gcSupport.linkFlags());
        linkCommand.addAll(guiSupport.linkFlags());
        linkCommand.addAll(pgoLinkFlags(env));
        linkCommand.addAll(linkFlags(env));
        runCommand(linkCommand, env.compilerDir);

        writeBuildArtifactCache(env, gcSupport, guiSupport, linkOutput);
    }

    private static void analyze(BuildEnvironment env, Path outputFile) throws Exception {
        GcSupport gcSupport = resolveGcSupport(env);
        GuiSupport guiSupport = resolveGuiSupport(env);
        preparePch(env, true);

        Files.createDirectories(outputFile.getParent() != null ? outputFile.getParent() : env.compilerDir);

        List<String> command = new ArrayList<>();
        command.add(env.clangxxExe);
        command.add("-I" + env.sourceRoot);
        command.addAll(gcSupport.compileFlags());
        command.addAll(guiSupport.compileFlags());
        command.addAll(analyzeFlags(env));
        command.add(env.generatedCpp.toString());
        command.add("-o");
        command.add(outputFile.toString());
        command.addAll(gcSupport.linkFlags());
        command.addAll(guiSupport.linkFlags());
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

    private static GuiSupport resolveGuiSupport(BuildEnvironment env) throws IOException {
        String generated = Files.readString(env.generatedCpp, StandardCharsets.UTF_8);
        if (!generated.contains("apo_gui_runtime.hpp") && !generated.contains("__apo_gui_runtime::")) {
            return GuiSupport.disabled();
        }

        String includeDir = System.getenv("APOLLO_SDL_INCLUDE_DIR");
        String libDir = System.getenv("APOLLO_SDL_LIB_DIR");
        String msysRoot = System.getenv("APOLLO_MSYS64_ROOT");

        if ((isBlank(includeDir) || isBlank(libDir)) && !isBlank(msysRoot)) {
            Path msysPath = Paths.get(msysRoot);
            List<Path> candidates = List.of(msysPath.resolve("clang64"), msysPath.resolve("mingw64"));
            for (Path candidate : candidates) {
                if (isBlank(includeDir)) {
                    Path detectedInclude = locateSdlIncludeDir(candidate.resolve("include"));
                    if (detectedInclude != null) {
                        includeDir = detectedInclude.toString();
                    }
                }
                if (isBlank(libDir) && Files.isDirectory(candidate.resolve("lib"))) {
                    libDir = candidate.resolve("lib").toString();
                }
            }
        }

        if (isBlank(includeDir)) {
            Path detectedInclude = detectSystemSdlIncludeDir();
            if (detectedInclude != null) {
                includeDir = detectedInclude.toString();
            }
        }
        if (isBlank(libDir)) {
            Path detectedLib = detectSystemSdlLibDir();
            if (detectedLib != null) {
                libDir = detectedLib.toString();
            }
        }

        if (isBlank(includeDir) || isBlank(libDir)) {
            throw new BuildDriverException("SDL2 and SDL2_image are required by this Apollo GUI program, but they were not found. Set APOLLO_SDL_INCLUDE_DIR and APOLLO_SDL_LIB_DIR, or run the Apollo installer for your platform.");
        }

        Path includePath = Paths.get(includeDir).toAbsolutePath().normalize();
        Path libPath = Paths.get(libDir).toAbsolutePath().normalize();
        if (!hasSdlHeaders(includePath) || !hasSdlLibraries(libPath)) {
            throw new BuildDriverException("SDL2 and SDL2_image were requested by this Apollo program, but the configured SDL paths are incomplete. Include dir: " + includePath + " Lib dir: " + libPath);
        }

        return new GuiSupport(includePath, libPath, isWindowsTarget(env));
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

    private static Path detectSystemSdlIncludeDir() {
        for (String candidate : List.of(
                "/opt/homebrew/include",
                "/usr/local/include",
                "/usr/include",
                "/opt/local/include")) {
            Path located = locateSdlIncludeDir(Paths.get(candidate));
            if (located != null) {
                return located;
            }
        }
        return null;
    }

    private static Path detectSystemSdlLibDir() {
        for (String candidate : List.of(
                "/opt/homebrew/lib",
                "/usr/local/lib",
                "/usr/lib64",
                "/usr/lib",
                "/opt/local/lib")) {
            Path path = Paths.get(candidate);
            if (Files.isDirectory(path) && hasSdlLibraries(path)) {
                return path;
            }
        }
        return null;
    }

    private static Path locateSdlIncludeDir(Path candidateRoot) {
        if (!Files.isDirectory(candidateRoot)) {
            return null;
        }
        if (hasSdlHeaders(candidateRoot)) {
            return candidateRoot;
        }
        Path sdl2 = candidateRoot.resolve("SDL2");
        if (hasSdlHeaders(sdl2)) {
            return sdl2;
        }
        return null;
    }

    private static boolean hasGcHeaders(Path includePath) {
        return Files.exists(includePath.resolve("gc_cpp.h"))
                || Files.exists(includePath.resolve("gc/gc_cpp.h"))
                || Files.exists(includePath.resolve("gc.h"))
                || Files.exists(includePath.resolve("gc/gc.h"));
    }

    private static boolean hasSdlHeaders(Path includePath) {
        return includePath != null
                && Files.exists(includePath.resolve("SDL.h"))
                && Files.exists(includePath.resolve("SDL_image.h"));
    }

    private static boolean hasGcLibraries(Path libPath) {
        return (Files.exists(libPath.resolve("libgc.a")) || Files.exists(libPath.resolve("libgc.dll.a")))
                && (Files.exists(libPath.resolve("libgccpp.a")) || Files.exists(libPath.resolve("libgccpp.dll.a")));
    }

    private static boolean hasSdlLibraries(Path libPath) {
        if (libPath == null) {
            return false;
        }
        boolean hasSdl2 = Files.exists(libPath.resolve("libSDL2.a"))
                || Files.exists(libPath.resolve("libSDL2.dll.a"))
                || Files.exists(libPath.resolve("libSDL2.so"))
                || Files.exists(libPath.resolve("libSDL2.dylib"));
        boolean hasSdl2Image = Files.exists(libPath.resolve("libSDL2_image.a"))
                || Files.exists(libPath.resolve("libSDL2_image.dll.a"))
                || Files.exists(libPath.resolve("libSDL2_image.so"))
                || Files.exists(libPath.resolve("libSDL2_image.dylib"));
        return hasSdl2 && hasSdl2Image;
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

    private static List<String> standaloneLinkFlags(BuildEnvironment env) {
        if (isLinuxTarget(env)) {
            return List.of("-no-pie", "-static-libstdc++", "-static-libgcc");
        }
        if (!isWindowsTarget(env)) {
            return List.of();
        }
        return List.of("-static", "-static-libstdc++", "-static-libgcc");
    }

    private static BuildArtifactCacheEntry tryLoadBuildArtifactCache(BuildEnvironment env, GcSupport gcSupport, GuiSupport guiSupport) throws Exception {
        if (!env.enableBuildCache) {
            return null;
        }

        Path cacheArtifactPath = buildCacheArtifactPath(env, gcSupport, guiSupport);
        if (!Files.exists(cacheArtifactPath)) {
            return null;
        }

        return new BuildArtifactCacheEntry(cacheArtifactPath);
    }

    private static void writeBuildArtifactCache(BuildEnvironment env, GcSupport gcSupport, GuiSupport guiSupport, Path linkedBinary) throws Exception {
        if (!env.enableBuildCache) {
            return;
        }

        Path cacheArtifactPath = buildCacheArtifactPath(env, gcSupport, guiSupport);
        Path parent = cacheArtifactPath.getParent();
        if (parent != null) {
            Files.createDirectories(parent);
        }
        Files.copy(linkedBinary, cacheArtifactPath, StandardCopyOption.REPLACE_EXISTING);
    }

    private static void restoreCachedBuildArtifact(BuildArtifactCacheEntry cacheEntry, Path linkOutput) throws Exception {
        Path parent = linkOutput.getParent();
        if (parent != null) {
            Files.createDirectories(parent);
        }
        Files.copy(cacheEntry.artifactPath, linkOutput, StandardCopyOption.REPLACE_EXISTING);
    }

    private static Path buildCacheArtifactPath(BuildEnvironment env, GcSupport gcSupport, GuiSupport guiSupport) throws Exception {
        Path cacheRoot = env.outputDir.resolve("cache").resolve("build-aot");
        String cacheKey = sha256(buildArtifactSignature(env, gcSupport, guiSupport));
        return cacheRoot.resolve(cacheKey + ".bin");
    }

    private static String buildArtifactSignature(BuildEnvironment env, GcSupport gcSupport, GuiSupport guiSupport) throws Exception {
        List<String> parts = new ArrayList<>();
        parts.add(BUILD_CACHE_VERSION);
        parts.add("generatedCpp=" + sha256(Files.readString(env.generatedCpp, StandardCharsets.UTF_8)));
        parts.add("generatedCppLocalIncludes=" + localIncludeSignature(env.generatedCpp, env.compilerDir));
        parts.add("clang=" + env.clangExe);
        parts.add("clangxx=" + env.clangxxExe);
        parts.add("llc=" + env.llcExe);
        parts.add("std=" + env.cxxStd);
        parts.add("opt=" + env.optLevel);
        parts.add("llcOpt=" + env.llcOptLevel);
        parts.add("target=" + nullSafe(env.targetTriple));
        parts.add("sysroot=" + nullSafe(env.sysroot));
        parts.add("usePch=" + env.usePch);
        parts.add("frontendFlags=" + String.join(" ", frontendFlags(env)));
        parts.add("llcFlags=" + String.join(" ", llcFlags(env)));
        parts.add("linkFlags=" + String.join(" ", linkFlags(env)));
        parts.add("standaloneLinkFlags=" + String.join(" ", standaloneLinkFlags(env)));
        parts.add("gcCompileFlags=" + String.join(" ", gcSupport.compileFlags()));
        parts.add("gcLinkFlags=" + String.join(" ", gcSupport.linkFlags()));
        parts.add("guiCompileFlags=" + String.join(" ", guiSupport.compileFlags()));
        parts.add("guiLinkFlags=" + String.join(" ", guiSupport.linkFlags()));
        parts.add("pgoCompileFlags=" + String.join(" ", pgoCompileFlags(env)));
        parts.add("pgoLinkFlags=" + String.join(" ", pgoLinkFlags(env)));
        if (env.usePch && Files.exists(env.pchHeader)) {
            parts.add("pchHeader=" + sha256(Files.readString(env.pchHeader, StandardCharsets.UTF_8)));
        }
        return String.join("|", parts);
    }

    private static String localIncludeSignature(Path sourceFile, Path baseDir) throws Exception {
        List<String> parts = new ArrayList<>();
        collectLocalIncludeSignature(sourceFile.toAbsolutePath().normalize(), baseDir.toAbsolutePath().normalize(), new HashSet<>(), parts);
        return sha256(String.join("|", parts));
    }

    private static void collectLocalIncludeSignature(Path sourceFile, Path baseDir, Set<Path> visited, List<String> parts) throws Exception {
        if (!visited.add(sourceFile) || !Files.exists(sourceFile)) {
            return;
        }

        Path normalizedBase = baseDir.toAbsolutePath().normalize();
        for (String rawLine : Files.readAllLines(sourceFile, StandardCharsets.UTF_8)) {
            String line = rawLine.trim();
            if (!line.startsWith("#include \"") || !line.endsWith("\"")) {
                continue;
            }

            String includePath = line.substring("#include \"".length(), line.length() - 1);
            Path includedFile = normalizedBase.resolve(includePath).normalize();
            if (!includedFile.startsWith(normalizedBase) || !Files.exists(includedFile)) {
                continue;
            }

            parts.add(normalizedBase.relativize(includedFile).toString().replace('\\', '/') + "="
                    + sha256(Files.readString(includedFile, StandardCharsets.UTF_8)));
            collectLocalIncludeSignature(includedFile, normalizedBase, visited, parts);
        }
    }

    private static String sha256(String text) throws Exception {
        MessageDigest digest = MessageDigest.getInstance("SHA-256");
        byte[] bytes = digest.digest(text.getBytes(StandardCharsets.UTF_8));
        StringBuilder builder = new StringBuilder(bytes.length * 2);
        for (byte value : bytes) {
            builder.append(Character.forDigit((value >>> 4) & 0x0f, 16));
            builder.append(Character.forDigit(value & 0x0f, 16));
        }
        return builder.toString();
    }

    private static String nullSafe(String value) {
        return value == null ? "" : value;
    }

    private static boolean isLinuxTarget(BuildEnvironment env) {
        String targetTriple = env.targetTriple;
        if (!isBlank(targetTriple)) {
            return targetTriple.toLowerCase(Locale.ROOT).contains("linux");
        }
        String osName = System.getProperty("os.name", "").toLowerCase(Locale.ROOT);
        return osName.contains("linux");
    }

    private static boolean isWindowsTarget(BuildEnvironment env) {
        String targetTriple = env.targetTriple;
        if (!isBlank(targetTriple)) {
            String normalized = targetTriple.toLowerCase(Locale.ROOT);
            return normalized.contains("windows") || normalized.contains("mingw");
        }
        String osName = System.getProperty("os.name", "").toLowerCase(Locale.ROOT);
        return osName.contains("win");
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
        private final boolean enableBuildCache;

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
                                 boolean usePch,
                                 boolean enableBuildCache) {
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
            this.enableBuildCache = enableBuildCache;
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
                boolean enableBuildCache = !envEnabled("APOLLO_DISABLE_BUILD_CACHE", false);

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
                    usePch,
                    enableBuildCache);
        }
    }

    private static final class BuildArtifactCacheEntry {
        private final Path artifactPath;

        private BuildArtifactCacheEntry(Path artifactPath) {
            this.artifactPath = artifactPath;
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

    private static final class GuiSupport {
        private final Path includeDir;
        private final Path libDir;
        private final boolean windowsTarget;

        private GuiSupport(Path includeDir, Path libDir, boolean windowsTarget) {
            this.includeDir = includeDir;
            this.libDir = libDir;
            this.windowsTarget = windowsTarget;
        }

        private static GuiSupport disabled() {
            return new GuiSupport(null, null, false);
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
            List<String> pkgConfigFlags = resolveStaticPkgConfigLinkFlags(libDir, windowsTarget);
            if (!pkgConfigFlags.isEmpty()) {
                return pkgConfigFlags;
            }
            return List.of("-L" + libDir, "-lSDL2_image", "-lSDL2");
        }
    }

    private static List<String> resolveStaticPkgConfigLinkFlags(Path libDir, boolean windowsTarget) {
        Path pkgConfigDir = libDir.resolve("pkgconfig");
        if (!Files.isDirectory(pkgConfigDir)) {
            return List.of();
        }

        LinkedHashSet<String> flags = new LinkedHashSet<>();
        flags.add("-L" + libDir);

        Set<String> visited = new HashSet<>();
        collectPkgConfigLinkFlags(pkgConfigDir, "SDL2_image", windowsTarget, flags, visited);
        if (windowsTarget) {
            collectPkgConfigLinkFlags(pkgConfigDir, "sdl2", true, flags, visited);
        }

        if (flags.size() <= 1 || !flags.contains("-lSDL2_image") || !flags.contains("-lSDL2")) {
            return List.of();
        }
        return new ArrayList<>(flags);
    }

    private static void collectPkgConfigLinkFlags(Path pkgConfigDir, String packageName, boolean windowsTarget,
            LinkedHashSet<String> flags, Set<String> visited) {
        String normalizedName = packageName.trim();
        if (normalizedName.isEmpty() || !visited.add(normalizedName.toLowerCase(Locale.ROOT))) {
            return;
        }

        Path packageFile = pkgConfigDir.resolve(normalizedName + ".pc");
        if (!Files.exists(packageFile)) {
            return;
        }

        PkgConfigInfo info = parsePkgConfigFile(packageFile);
        appendPkgConfigLibFlags(flags, info.libs, normalizedName, windowsTarget);
        for (String required : info.requires) {
            collectPkgConfigLinkFlags(pkgConfigDir, required, windowsTarget, flags, visited);
        }
        appendPkgConfigLibFlags(flags, info.libsPrivate, normalizedName, windowsTarget);
        for (String required : info.requiresPrivate) {
            collectPkgConfigLinkFlags(pkgConfigDir, required, windowsTarget, flags, visited);
        }
    }

    private static void appendPkgConfigLibFlags(LinkedHashSet<String> flags, List<String> libFlags,
            String packageName, boolean windowsTarget) {
        boolean windowsSdl2 = windowsTarget && "sdl2".equalsIgnoreCase(packageName);
        for (String flag : libFlags) {
            if (isBlank(flag) || flag.startsWith("-L")) {
                continue;
            }
            if (windowsSdl2 && ("-lmingw32".equals(flag) || "-lSDL2main".equals(flag) || "-mwindows".equals(flag))) {
                continue;
            }
            flags.add(flag);
        }
    }

    private static PkgConfigInfo parsePkgConfigFile(Path packageFile) {
        Map<String, String> variables = new HashMap<>();
        List<String> requires = new ArrayList<>();
        List<String> requiresPrivate = new ArrayList<>();
        List<String> libs = new ArrayList<>();
        List<String> libsPrivate = new ArrayList<>();

        try {
            for (String rawLine : Files.readAllLines(packageFile, StandardCharsets.UTF_8)) {
                String line = rawLine.trim();
                if (line.isEmpty() || line.startsWith("#")) {
                    continue;
                }

                int equalsIndex = line.indexOf('=');
                int colonIndex = line.indexOf(':');
                if (equalsIndex >= 0 && (colonIndex < 0 || equalsIndex < colonIndex)) {
                    String key = line.substring(0, equalsIndex).trim();
                    String value = expandPkgConfigValue(line.substring(equalsIndex + 1).trim(), variables);
                    variables.put(key, value);
                    continue;
                }
                if (colonIndex < 0) {
                    continue;
                }

                String key = line.substring(0, colonIndex).trim();
                String value = expandPkgConfigValue(line.substring(colonIndex + 1).trim(), variables);
                switch (key) {
                    case "Requires":
                        requires.addAll(parsePkgConfigPackageList(value));
                        break;
                    case "Requires.private":
                        requiresPrivate.addAll(parsePkgConfigPackageList(value));
                        break;
                    case "Libs":
                        libs.addAll(splitFlags(value));
                        break;
                    case "Libs.private":
                        libsPrivate.addAll(splitFlags(value));
                        break;
                    default:
                        break;
                }
            }
        } catch (IOException ex) {
            throw new BuildDriverException("Failed to read pkg-config metadata: " + packageFile, ex);
        }

        return new PkgConfigInfo(requires, requiresPrivate, libs, libsPrivate);
    }

    private static String expandPkgConfigValue(String rawValue, Map<String, String> variables) {
        String expanded = rawValue;
        for (int pass = 0; pass < 8; pass++) {
            int start = expanded.indexOf("${");
            if (start < 0) {
                break;
            }

            StringBuilder builder = new StringBuilder();
            int cursor = 0;
            while (start >= 0) {
                int end = expanded.indexOf('}', start + 2);
                if (end < 0) {
                    break;
                }
                builder.append(expanded, cursor, start);
                String key = expanded.substring(start + 2, end);
                builder.append(variables.getOrDefault(key, ""));
                cursor = end + 1;
                start = expanded.indexOf("${", cursor);
            }
            builder.append(expanded.substring(cursor));
            expanded = builder.toString();
        }
        return expanded;
    }

    private static List<String> parsePkgConfigPackageList(String rawValue) {
        List<String> packages = new ArrayList<>();
        if (isBlank(rawValue)) {
            return packages;
        }

        String[] tokens = rawValue.replace(',', ' ').trim().split("\\s+");
        for (int index = 0; index < tokens.length; index++) {
            String token = tokens[index].trim();
            if (token.isEmpty() || isPkgConfigComparator(token)) {
                continue;
            }
            packages.add(token);
            if (index + 1 < tokens.length && isPkgConfigComparator(tokens[index + 1])) {
                index += 2;
            }
        }
        return packages;
    }

    private static boolean isPkgConfigComparator(String token) {
        return "=".equals(token) || ">".equals(token) || "<".equals(token)
                || ">=".equals(token) || "<=".equals(token);
    }

    private static final class PkgConfigInfo {
        private final List<String> requires;
        private final List<String> requiresPrivate;
        private final List<String> libs;
        private final List<String> libsPrivate;

        private PkgConfigInfo(List<String> requires, List<String> requiresPrivate,
                List<String> libs, List<String> libsPrivate) {
            this.requires = requires;
            this.requiresPrivate = requiresPrivate;
            this.libs = libs;
            this.libsPrivate = libsPrivate;
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