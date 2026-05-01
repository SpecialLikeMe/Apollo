import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

public class Main {
    private static final String COMPILER_CACHE_VERSION = "apollo-cache-v6";
    private static final boolean SHOW_FILE_DETAILS = envEnabled("APOLLO_SHOW_FILE_DETAILS");
    private static final boolean ENABLE_INCREMENTAL_CACHE = !envEnabled("APOLLO_DISABLE_INCREMENTAL_CACHE");

    static final class CompileCacheEntry {
        private final String compilerSignature;
        private final String sourceHash;
        private final String outputHash;
        private final Path cachedOutputPath;
        private final List<String> dependencies;

        private CompileCacheEntry(String compilerSignature, String sourceHash, String outputHash, Path cachedOutputPath, List<String> dependencies) {
            this.compilerSignature = compilerSignature;
            this.sourceHash = sourceHash;
            this.outputHash = outputHash;
            this.cachedOutputPath = cachedOutputPath;
            this.dependencies = List.copyOf(dependencies);
        }
    }

    private static boolean envEnabled(String name) {
        String value = System.getenv(name);
        if (value == null) {
            return false;
        }
        String normalized = value.trim();
        return "1".equals(normalized)
                || "true".equalsIgnoreCase(normalized)
                || "yes".equalsIgnoreCase(normalized)
                || "on".equalsIgnoreCase(normalized);
    }

    public static void main(String[] args) {
        try {
            Path sourcePath = Paths.get(args.length > 0 ? args[0] : "main.apollo").toAbsolutePath().normalize();
            compileApollo(sourcePath.toString(), "output.cpp", new LinkedHashSet<>());
        } catch (runtime.ApolloCompilationFailure ex) {
            System.err.println(ex.getMessage());
            System.exit(1);
        } catch (Exception ex) {
            System.err.println("Apollo compiler crashed: " + ex.getMessage());
            ex.printStackTrace(System.err);
            System.exit(1);
        }
    }

    static void compileApollo(String inputPath, String out, Set<String> visited) throws Exception {
        Path sourcePath = Paths.get(inputPath).toAbsolutePath().normalize();
        Path importRoot = determineImportRoot(sourcePath);
        Set<String> generatedFiles = new LinkedHashSet<>();
        compileApollo(sourcePath, Paths.get(out), visited, importRoot, generatedFiles);
        writeCleanupManifest(generatedFiles);
    }

    static void compileApollo(Path sourcePath, Path out, Set<String> visited, Path importRoot, Set<String> generatedFiles) throws Exception {
        String visitedKey = sourcePath.toAbsolutePath().toString();
        if (!visited.add(visitedKey)) {
            return;
        }

        if (SHOW_FILE_DETAILS) {
            System.err.println("INPUT PATH: " + sourcePath);
            System.err.println("INPUT PATH (abs): " + sourcePath.toAbsolutePath());
            System.err.println("EXISTS: " + Files.exists(sourcePath));
            if (Files.exists(sourcePath)) {
                System.err.println("FILE SIZE: " + Files.size(sourcePath));
            }
        }

        CompileCacheEntry cacheEntry = tryLoadCompileCache(sourcePath, out);
        if (cacheEntry != null) {
            try {
                restoreCachedOutputIfNeeded(cacheEntry, out);
                generatedFiles.add(out.toAbsolutePath().normalize().toString());
                for (String dependency : cacheEntry.dependencies) {
                    Path dependencySourcePath = resolveImportPath(importRoot, dependency);
                    Path dependencyHeaderPath = resolveImportPath(importRoot, toHeaderOutputPath(dependency));
                    compileApollo(dependencySourcePath, dependencyHeaderPath, visited, importRoot, generatedFiles);
                }
                return;
            } catch (java.nio.file.FileSystemException ex) {
                // Cache restore is an optimization. On Windows, the output file can be transiently locked,
                // so fall back to a fresh compile instead of failing the whole build.
            }
        }

        String program = new String(Files.readAllBytes(sourcePath), StandardCharsets.UTF_8);
        runtime.CompilerRuntimeCycle runtimeCycle = runtime.CompilerRuntimeCycle.create(sourcePath, program);
        runtimeCycle.runPreCodegenPhases();
        compilerv1Parser.ProgramContext tree = runtimeCycle.tree();

        ApolloCodegenOptimizationPlan optimizationPlan = ApolloCodegenOptimizationPlan.analyze(tree);
        CppCodeGenVisitor gen = new CppCodeGenVisitor(
            out.toString(),
            buildModuleKey(importRoot, sourcePath),
            sourcePath.toString(),
            program,
            runtimeCycle.runtimeFeatures(),
            optimizationPlan,
            runtimeCycle.codegenOptimizations());
        try {
            gen.visit(tree);
        } catch (RuntimeException ex) {
            throw runtimeCycle.wrapCompilerFailure(ex);
        } finally {
            gen.close();
        }
        generatedFiles.add(out.toAbsolutePath().normalize().toString());

        List<String> dependencies = new ArrayList<>(gen.getDependencies());
        for (String dependency : dependencies) {
            Path dependencySourcePath = resolveImportPath(importRoot, dependency);
            Path dependencyHeaderPath = resolveImportPath(importRoot, toHeaderOutputPath(dependency));
            compileApollo(dependencySourcePath, dependencyHeaderPath, visited, importRoot, generatedFiles);
        }

        writeCompileCache(sourcePath, out, dependencies);
    }

    static Path determineImportRoot(Path sourcePath) {
        Path parent = sourcePath.toAbsolutePath().normalize().getParent();
        if (parent != null) {
            return parent;
        }
        return Paths.get(".").toAbsolutePath().normalize();
    }

    static Path resolveImportPath(Path importRoot, String importPath) {
        Path path = Paths.get(importPath);
        if (path.isAbsolute()) {
            return path.normalize();
        }
        return importRoot.resolve(path).normalize();
    }

    static String toHeaderOutputPath(String sourcePath) {
        Path path = Paths.get(sourcePath).normalize();
        String fileName = path.getFileName().toString();
        String headerName;
        if (fileName.endsWith(".apollo")) {
            headerName = fileName.substring(0, fileName.length() - ".apollo".length()) + ".hpp";
        } else if (fileName.endsWith(".aph")) {
            headerName = fileName.substring(0, fileName.length() - ".aph".length()) + ".hpp";
        } else {
            headerName = fileName + ".hpp";
        }
        Path parent = path.getParent();
        return parent == null ? headerName : parent.resolve(headerName).toString();
    }

    static String buildModuleKey(Path importRoot, Path sourcePath) {
        Path normalizedImportRoot = importRoot.toAbsolutePath().normalize();
        Path normalizedSourcePath = sourcePath.toAbsolutePath().normalize();
        Path modulePath;
        if (normalizedSourcePath.startsWith(normalizedImportRoot)) {
            modulePath = normalizedImportRoot.relativize(normalizedSourcePath);
        } else if (normalizedSourcePath.getFileName() != null) {
            modulePath = normalizedSourcePath.getFileName();
        } else {
            modulePath = normalizedSourcePath;
        }

        String moduleKey = modulePath.toString().replace('\\', '/');
        if (moduleKey.endsWith(".apollo")) {
            moduleKey = moduleKey.substring(0, moduleKey.length() - ".apollo".length());
        } else if (moduleKey.endsWith(".aph")) {
            moduleKey = moduleKey.substring(0, moduleKey.length() - ".aph".length());
        }
        return moduleKey;
    }

    static void writeCleanupManifest(Set<String> generatedFiles) throws Exception {
        Path manifestPath = Paths.get("output", "cleanup-manifest.txt").toAbsolutePath().normalize();
        Path parent = manifestPath.getParent();
        if (parent != null) {
            Files.createDirectories(parent);
        }
        Files.write(manifestPath, generatedFiles, StandardCharsets.UTF_8);
    }

    static Path cacheEntryPath(Path sourcePath, Path out) throws Exception {
        Path cacheRoot = Paths.get("output", "cache").toAbsolutePath().normalize();
        String cacheKey = sha256(sourcePath.toAbsolutePath().normalize().toString() + "|" + out.toAbsolutePath().normalize().toString());
        return cacheRoot.resolve(cacheKey + ".meta");
    }

    static Path cacheArtifactPath(Path sourcePath, Path out) throws Exception {
        Path cacheRoot = Paths.get("output", "cache").toAbsolutePath().normalize();
        String cacheKey = sha256(sourcePath.toAbsolutePath().normalize().toString() + "|" + out.toAbsolutePath().normalize().toString());
        return cacheRoot.resolve(cacheKey + ".artifact");
    }

    private static CompileCacheEntry tryLoadCompileCache(Path sourcePath, Path out) throws Exception {
        if (!ENABLE_INCREMENTAL_CACHE) {
            return null;
        }
        Path normalizedOutput = out.toAbsolutePath().normalize();
        if (!Files.exists(normalizedOutput)) {
            return null;
        }

        Path cachePath = cacheEntryPath(sourcePath, out);
        if (!Files.exists(cachePath)) {
            return null;
        }

        String version = null;
        String compilerSignature = null;
        String sourceHash = null;
        String outputHash = null;
        List<String> dependencies = new ArrayList<>();
        for (String line : Files.readAllLines(cachePath, StandardCharsets.UTF_8)) {
            if (line.startsWith("version=")) {
                version = line.substring("version=".length());
            } else if (line.startsWith("compilerSignature=")) {
                compilerSignature = line.substring("compilerSignature=".length());
            } else if (line.startsWith("sourceHash=")) {
                sourceHash = line.substring("sourceHash=".length());
            } else if (line.startsWith("outputHash=")) {
                outputHash = line.substring("outputHash=".length());
            } else if (line.startsWith("dependency=")) {
                dependencies.add(line.substring("dependency=".length()));
            }
        }

        if (!COMPILER_CACHE_VERSION.equals(version)) {
            return null;
        }

        String currentCompilerSignature = currentCompilerSignature();
        if (compilerSignature == null || !compilerSignature.equals(currentCompilerSignature)) {
            return null;
        }

        String currentHash = sha256(Files.readString(sourcePath, StandardCharsets.UTF_8));
        if (!currentHash.equals(sourceHash)) {
            return null;
        }

        Path artifactPath = cacheArtifactPath(sourcePath, out);
        if (outputHash == null || !Files.exists(artifactPath)) {
            return null;
        }

        return new CompileCacheEntry(compilerSignature, sourceHash, outputHash, artifactPath, dependencies);
    }

    private static void writeCompileCache(Path sourcePath, Path out, List<String> dependencies) throws Exception {
        if (!ENABLE_INCREMENTAL_CACHE) {
            return;
        }

        Path cachePath = cacheEntryPath(sourcePath, out);
        Path artifactPath = cacheArtifactPath(sourcePath, out);
        Path parent = cachePath.getParent();
        if (parent != null) {
            Files.createDirectories(parent);
        }

        Files.copy(out, artifactPath, java.nio.file.StandardCopyOption.REPLACE_EXISTING);

        List<String> lines = new ArrayList<>();
        lines.add("version=" + COMPILER_CACHE_VERSION);
        lines.add("compilerSignature=" + currentCompilerSignature());
        lines.add("sourceHash=" + sha256(Files.readString(sourcePath, StandardCharsets.UTF_8)));
        lines.add("outputHash=" + sha256(Files.readString(out, StandardCharsets.UTF_8)));
        for (String dependency : dependencies) {
            lines.add("dependency=" + dependency);
        }
        Files.write(cachePath, lines, StandardCharsets.UTF_8);
    }

    private static void restoreCachedOutputIfNeeded(CompileCacheEntry cacheEntry, Path out) throws Exception {
        Path normalizedOutput = out.toAbsolutePath().normalize();
        if (Files.exists(normalizedOutput)) {
            String currentOutputHash = sha256(Files.readString(normalizedOutput, StandardCharsets.UTF_8));
            if (cacheEntry.outputHash.equals(currentOutputHash)) {
                return;
            }
        }

        Path parent = normalizedOutput.getParent();
        if (parent != null) {
            Files.createDirectories(parent);
        }
        Files.copy(cacheEntry.cachedOutputPath, normalizedOutput, java.nio.file.StandardCopyOption.REPLACE_EXISTING);
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

    private static String currentCompilerSignature() throws Exception {
        List<String> components = new ArrayList<>();
        components.add(COMPILER_CACHE_VERSION);
        Path compilerRoot = Paths.get("").toAbsolutePath().normalize();
        for (String fileName : List.of("Main.java", "runtime.java", "CppCodeGenVisitor.java", "ApolloCodegenOptimizationPlan.java", "compilerv1.g4")) {
            Path candidate = compilerRoot.resolve(fileName);
            if (!Files.exists(candidate)) {
                continue;
            }
            components.add(fileName);
            components.add(sha256(Files.readString(candidate, StandardCharsets.UTF_8)));
        }
        return sha256(String.join("|", components));
    }
}

class main_c {
    public static void construct(String filepath, String out) throws Exception {
        Main.compileApollo(filepath != null ? filepath : "main.apollo", out, new LinkedHashSet<>());
    }
}
