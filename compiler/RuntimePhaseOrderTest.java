import java.util.List;

public final class RuntimePhaseOrderTest {
    private RuntimePhaseOrderTest() {
    }

    public static void main(String[] args) {
        List<String> expected = List.of(
            "runtime-extension-surface",
                "unsafe-boundary",
                "ownership",
                "borrow",
                "memory-safety-finalize",
                "memory-leak");
        List<String> actual = runtime.CompilerRuntimeCycle.defaultPhaseNames();

        if (!expected.equals(actual)) {
            System.err.println("runtime phase order changed");
            System.err.println("expected: " + expected);
            System.err.println("actual:   " + actual);
            System.exit(1);
        }
    }
}