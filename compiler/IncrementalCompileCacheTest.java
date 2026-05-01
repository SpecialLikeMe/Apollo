import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.attribute.FileTime;
import java.util.LinkedHashSet;

public final class IncrementalCompileCacheTest {
    private IncrementalCompileCacheTest() {
    }

    public static void main(String[] args) throws Exception {
        Path workspace = Files.createTempDirectory("apollo-cache-test");
        Path source = workspace.resolve("main.apollo");
        Path output = workspace.resolve("cached-output.cpp");
        Path importRoot = Main.determineImportRoot(source);

        Files.writeString(source, "int main() { return 1; }\n", StandardCharsets.UTF_8);
        Main.compileApollo(source, output, new LinkedHashSet<>(), importRoot, new LinkedHashSet<>());

        require(Files.exists(output), "first compile should generate output");
        require(Files.exists(Main.cacheEntryPath(source, output)), "first compile should write cache metadata");

        FileTime firstWrite = Files.getLastModifiedTime(output);
        Thread.sleep(1200L);

        Main.compileApollo(source, output, new LinkedHashSet<>(), importRoot, new LinkedHashSet<>());
        FileTime secondWrite = Files.getLastModifiedTime(output);
        require(firstWrite.equals(secondWrite), "unchanged sources should reuse cached codegen output");

        Thread.sleep(1200L);
        Files.writeString(source, "int main() { return 2; }\n", StandardCharsets.UTF_8);
        Main.compileApollo(source, output, new LinkedHashSet<>(), importRoot, new LinkedHashSet<>());
        FileTime thirdWrite = Files.getLastModifiedTime(output);
        require(thirdWrite.toMillis() > secondWrite.toMillis(), "editing the source should invalidate the cache");
    }

    private static void require(boolean condition, String message) {
        if (!condition) {
            throw new IllegalStateException(message);
        }
    }
}