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