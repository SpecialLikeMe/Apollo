import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

public final class RuntimePhaseFailureWrapTest {
    private RuntimePhaseFailureWrapTest() {
    }

    public static void main(String[] args) {
        Path sourcePath = Paths.get("tests", "grammar", "pass", "language_surface.apollo").toAbsolutePath().normalize();
        String program = "i32 main() {\n    return 0;\n}\n";
        runtime.CompilerRuntimeCycle runtimeCycle = runtime.CompilerRuntimeCycle.create(
                sourcePath,
                program,
                List.of(new FailingPhase()));

        try {
            runtimeCycle.runPreCodegenPhases();
            System.err.println("runtime phase failure was not wrapped");
            System.exit(1);
        } catch (runtime.ApolloCompilationFailure ex) {
            String message = ex.getMessage();
            if (message == null || !message.contains("compiler runtime phase `intentional-test-phase` failed: boom")) {
                System.err.println("wrapped runtime phase failure did not include phase context");
                System.err.println("actual: " + message);
                System.exit(1);
            }
            if (!message.contains(sourcePath.toString())) {
                System.err.println("wrapped runtime phase failure did not include source path");
                System.err.println("actual: " + message);
                System.exit(1);
            }
        }
    }

    private static final class FailingPhase implements runtime.RuntimePhase {
        @Override
        public String phaseName() {
            return "intentional-test-phase";
        }

        @Override
        public void execute(runtime.RuntimeSession session) {
            throw new IllegalStateException("boom");
        }
    }
}