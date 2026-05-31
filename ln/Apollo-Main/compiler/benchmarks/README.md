# Apollo Benchmarks

This directory contains paired Apollo and direct C++ benchmark templates plus a harness script.

Run from `compiler/`:

```powershell
.\run-benchmarks.ps1
```

Useful options:

```powershell
.\run-benchmarks.ps1 -WorkloadSize 2000000 -RepeatCount 3
.\run-benchmarks.ps1 -SkipCompile
```

The harness writes generated sources, binaries, and a CSV report under `compiler\bench-output`.
It verifies Apollo and C++ outputs match before reporting timings.

Workloads currently covered:

- `sum-loop`: numeric accumulation baseline
- `branch-mix`: branch-heavy numeric baseline
- `string-runtime`: plain Apollo runtime string operations versus direct C++ strings
- `typedef-opstruct-strings`: typedef opstruct phrase dispatch paired with the runtime string kernel
- `gc-strings`: whole-program GC benchmark that materializes string-bearing GC state while running the runtime string kernel
- `gc-typedef-opstruct-strings`: whole-program GC plus typedef opstruct dispatch over the same string kernel

`-WorkloadSize` is the requested global scale. String and GC-heavy workloads internally divide that value so the full suite remains practical to run while still exercising the intended runtime features.