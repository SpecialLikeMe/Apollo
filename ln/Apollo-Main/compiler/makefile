# Apollo build entrypoint.
#
# The build is fully native: grammar regeneration uses the system
# `antlr4` driver (which itself wraps a JRE if needed, but Apollo no
# longer ships an in-tree ANTLR jar). All build outputs go through
# CMake. The legacy Java/IntelliJ project metadata was removed in the
# 2026 cleanup -- ANTLR_JAR/LOCAL_ANTLR_JAR variables are intentionally
# absent.

GRAMMAR := compilerv1.g4
CPP_OUT := cpp/generated
LEGACY_CPP_OUT := generated
LEGACY_JAVA_OUT := compiler-master   # historical dir kept only so `make clean` removes it if present
ifeq ($(OS),Windows_NT)
POWERSHELL := pwsh -NoProfile -Command
CMAKE_BUILD_DIR := ../build
else
CMAKE_BUILD_DIR := ../build
endif
CMAKE_CONFIG ?= Release
NATIVE_TARGETS := apollo_frontend_native apollo_build_driver_native apollo_runtime_tests apollo_driver_tests apollo_mir_tests apollo_gc_concurrent_tests
CORE_TARGETS := apollo_frontend_native apollo_build_driver_native
ANTLR_TOOL_VERSION ?= 4.13.2

ANTLR_CMD ?= antlr4
ANTLR := $(ANTLR_CMD)

.PHONY: all core regen regen-cpp compile compile-core compile-native \
	clean clean-generated clean-build run ctall analyze grammar-tests test cmprun runopt info

all: regen compile

core: regen compile-core

info:

ifeq ($(OS),Windows_NT)
	@$(POWERSHELL) "Write-Host 'Active grammar : $(GRAMMAR)'; Write-Host 'Native output  : $(CPP_OUT)'; Write-Host 'ANTLR tool     : $(ANTLR)'; Write-Host 'CMake config   : $(CMAKE_CONFIG)'"

regen: regen-cpp

regen-cpp:
	@$(POWERSHELL) "$$ErrorActionPreference = 'Stop'; if (-not (Test-Path '$(GRAMMAR)')) { throw 'Missing native grammar: $(GRAMMAR)' }; New-Item -ItemType Directory -Force -Path '$(CPP_OUT)' | Out-Null; if (-not $$env:ANTLR4_TOOLS_ANTLR_VERSION) { $$env:ANTLR4_TOOLS_ANTLR_VERSION = '$(ANTLR_TOOL_VERSION)' }; $$antlrCommand = '$(ANTLR_CMD)'; if (-not (Get-Command $$antlrCommand -ErrorAction SilentlyContinue)) { $$pythonLauncher = Get-Command py -ErrorAction SilentlyContinue; if ($$pythonLauncher) { $$scriptsDir = & py -3 -c \"import sysconfig; print(sysconfig.get_path('scripts'))\"; if ($$LASTEXITCODE -eq 0 -and $$scriptsDir) { $$antlrExe = Join-Path $$scriptsDir 'antlr4.exe'; if (Test-Path $$antlrExe) { $$antlrCommand = $$antlrExe } } } }; if (-not (Get-Command $$antlrCommand -ErrorAction SilentlyContinue) -and -not (Test-Path $$antlrCommand)) { throw ('ANTLR tool not found: ' + $$antlrCommand) }; $$stagingDir = Join-Path ([System.IO.Path]::GetTempPath()) ('apollo-antlr-' + [Guid]::NewGuid().ToString('N')); New-Item -ItemType Directory -Force -Path $$stagingDir | Out-Null; try { & $$antlrCommand -Dlanguage=Cpp -visitor -no-listener -Xexact-output-dir -o $$stagingDir '$(GRAMMAR)'; if ($$LASTEXITCODE -ne 0) { exit $$LASTEXITCODE }; Remove-Item '$(CPP_OUT)/compilerv1*.cpp', '$(CPP_OUT)/compilerv1*.h', '$(CPP_OUT)/compilerv1*.tokens', '$(CPP_OUT)/compilerv1*.interp' -Force -ErrorAction SilentlyContinue; Get-ChildItem $$stagingDir -File | Move-Item -Destination '$(CPP_OUT)' -Force; Remove-Item '$(LEGACY_CPP_OUT)', '$(LEGACY_JAVA_OUT)', 'output/classes' -Recurse -Force -ErrorAction SilentlyContinue } finally { Remove-Item $$stagingDir -Recurse -Force -ErrorAction SilentlyContinue }"

compile-core:
	@$(POWERSHELL) "$$ErrorActionPreference = 'Stop'; $$configureArgs = @('-S', 'cpp', '-B', '$(CMAKE_BUILD_DIR)'); if ($$env:APOLLO_NATIVE_GENERATOR) { $$configureArgs += @('-G', $$env:APOLLO_NATIVE_GENERATOR) }; $$usingMingwGenerator = $$env:APOLLO_NATIVE_GENERATOR -eq 'MinGW Makefiles'; if ($$usingMingwGenerator) { if ($$env:APOLLO_NATIVE_C_COMPILER) { $$configureArgs += '-DCMAKE_C_COMPILER=' + $$env:APOLLO_NATIVE_C_COMPILER }; if ($$env:APOLLO_NATIVE_CXX_COMPILER) { $$configureArgs += '-DCMAKE_CXX_COMPILER=' + $$env:APOLLO_NATIVE_CXX_COMPILER }; if ($$env:APOLLO_NATIVE_MAKE_PROGRAM) { $$configureArgs += '-DCMAKE_MAKE_PROGRAM=' + $$env:APOLLO_NATIVE_MAKE_PROGRAM }; if ($$env:APOLLO_NATIVE_CMAKE_PREFIX) { $$configureArgs += '-DCMAKE_PREFIX_PATH=' + $$env:APOLLO_NATIVE_CMAKE_PREFIX } } elseif ($$env:CMAKE_TOOLCHAIN_FILE) { $$configureArgs += '-DCMAKE_TOOLCHAIN_FILE=' + $$env:CMAKE_TOOLCHAIN_FILE } elseif ($$env:VCPKG_ROOT) { $$vcpkgToolchain = Join-Path $$env:VCPKG_ROOT 'scripts\buildsystems\vcpkg.cmake'; if (Test-Path $$vcpkgToolchain) { $$configureArgs += '-DCMAKE_TOOLCHAIN_FILE=' + $$vcpkgToolchain } } elseif ($$env:USERPROFILE) { $$defaultVcpkgToolchain = Join-Path $$env:USERPROFILE 'vcpkg\scripts\buildsystems\vcpkg.cmake'; if (Test-Path $$defaultVcpkgToolchain) { $$configureArgs += '-DCMAKE_TOOLCHAIN_FILE=' + $$defaultVcpkgToolchain } }; & cmake $$configureArgs; if ($$LASTEXITCODE -ne 0) { exit $$LASTEXITCODE }; & cmake --build '$(CMAKE_BUILD_DIR)' --config '$(CMAKE_CONFIG)' --target $(CORE_TARGETS); if ($$LASTEXITCODE -ne 0) { exit $$LASTEXITCODE }"

compile-native:
	@$(POWERSHELL) "$$ErrorActionPreference = 'Stop'; Remove-Item '$(CMAKE_BUILD_DIR)' -Recurse -Force -ErrorAction SilentlyContinue; $$configureArgs = @('-S', 'cpp', '-B', '$(CMAKE_BUILD_DIR)'); if ($$env:APOLLO_NATIVE_GENERATOR) { $$configureArgs += @('-G', $$env:APOLLO_NATIVE_GENERATOR) }; $$usingMingwGenerator = $$env:APOLLO_NATIVE_GENERATOR -eq 'MinGW Makefiles'; if ($$usingMingwGenerator) { if ($$env:APOLLO_NATIVE_C_COMPILER) { $$configureArgs += '-DCMAKE_C_COMPILER=' + $$env:APOLLO_NATIVE_C_COMPILER }; if ($$env:APOLLO_NATIVE_CXX_COMPILER) { $$configureArgs += '-DCMAKE_CXX_COMPILER=' + $$env:APOLLO_NATIVE_CXX_COMPILER }; if ($$env:APOLLO_NATIVE_MAKE_PROGRAM) { $$configureArgs += '-DCMAKE_MAKE_PROGRAM=' + $$env:APOLLO_NATIVE_MAKE_PROGRAM }; if ($$env:APOLLO_NATIVE_CMAKE_PREFIX) { $$configureArgs += '-DCMAKE_PREFIX_PATH=' + $$env:APOLLO_NATIVE_CMAKE_PREFIX } } elseif ($$env:CMAKE_TOOLCHAIN_FILE) { $$configureArgs += '-DCMAKE_TOOLCHAIN_FILE=' + $$env:CMAKE_TOOLCHAIN_FILE } elseif ($$env:VCPKG_ROOT) { $$vcpkgToolchain = Join-Path $$env:VCPKG_ROOT 'scripts\buildsystems\vcpkg.cmake'; if (Test-Path $$vcpkgToolchain) { $$configureArgs += '-DCMAKE_TOOLCHAIN_FILE=' + $$vcpkgToolchain } } elseif ($$env:USERPROFILE) { $$defaultVcpkgToolchain = Join-Path $$env:USERPROFILE 'vcpkg\scripts\buildsystems\vcpkg.cmake'; if (Test-Path $$defaultVcpkgToolchain) { $$configureArgs += '-DCMAKE_TOOLCHAIN_FILE=' + $$defaultVcpkgToolchain } }; & cmake $$configureArgs; if ($$LASTEXITCODE -ne 0) { exit $$LASTEXITCODE }; & cmake --build '$(CMAKE_BUILD_DIR)' --config '$(CMAKE_CONFIG)' --target $(NATIVE_TARGETS); if ($$LASTEXITCODE -ne 0) { exit $$LASTEXITCODE }"

clean-generated:
	@$(POWERSHELL) "Remove-Item '$(CPP_OUT)/compilerv1*.cpp', '$(CPP_OUT)/compilerv1*.h', '$(CPP_OUT)/compilerv1*.tokens', '$(CPP_OUT)/compilerv1*.interp' -Force -ErrorAction SilentlyContinue; Remove-Item '$(LEGACY_CPP_OUT)', '$(LEGACY_JAVA_OUT)', 'output/classes' -Recurse -Force -ErrorAction SilentlyContinue"

clean-build:
	@$(POWERSHELL) "Remove-Item '$(CMAKE_BUILD_DIR)' -Recurse -Force -ErrorAction SilentlyContinue; Remove-Item 'cpp/build', 'cpp/build-posix', 'native/build' -Recurse -Force -ErrorAction SilentlyContinue"

clean: clean-generated clean-build
	@$(POWERSHELL) "Remove-Item '-p' -Recurse -Force -ErrorAction SilentlyContinue; Remove-Item 'async' -Recurse -Force -ErrorAction SilentlyContinue; Remove-Item 'output' -Recurse -Force -ErrorAction SilentlyContinue; Remove-Item 'apo_async.cpp', 'apo_async.c', 'apo_async.rs', 'apo_async.exe', 'output.exe', 'output_test.o' -Force -ErrorAction SilentlyContinue"
else
	@printf 'Active grammar : %s\n' '$(GRAMMAR)'; \
	printf 'Native output  : %s\n' '$(CPP_OUT)'; \
	printf 'ANTLR tool     : %s\n' '$(ANTLR)'; \
	printf 'CMake config   : %s\n' '$(CMAKE_CONFIG)'

regen: regen-cpp

regen-cpp:
	@test -f '$(GRAMMAR)' || { printf 'Missing native grammar: %s\n' '$(GRAMMAR)' >&2; exit 1; }
	@mkdir -p '$(CPP_OUT)'
	@stage_dir="$$(mktemp -d)"; \
	antlr_cmd='$(ANTLR_CMD)'; \
	if [ -z "$${ANTLR4_TOOLS_ANTLR_VERSION:-}" ]; then export ANTLR4_TOOLS_ANTLR_VERSION='$(ANTLR_TOOL_VERSION)'; fi; \
	if ! command -v "$$antlr_cmd" >/dev/null 2>&1; then \
		if command -v python3 >/dev/null 2>&1; then \
			scripts_dir="$$(python3 -c "import sysconfig; print(sysconfig.get_path('scripts'))")"; \
			if [ -x "$$scripts_dir/antlr4" ]; then antlr_cmd="$$scripts_dir/antlr4"; \
			elif [ -x "$$scripts_dir/antlr4.exe" ]; then antlr_cmd="$$scripts_dir/antlr4.exe"; fi; \
		fi; \
	fi; \
	if ! command -v "$$antlr_cmd" >/dev/null 2>&1 && [ ! -x "$$antlr_cmd" ]; then \
		printf 'ANTLR tool not found: %s\n' "$$antlr_cmd" >&2; \
		rm -rf "$$stage_dir"; \
		exit 1; \
	fi; \
	"$$antlr_cmd" -Dlanguage=Cpp -visitor -no-listener -Xexact-output-dir -o "$$stage_dir" '$(GRAMMAR)' || { status=$$?; rm -rf "$$stage_dir"; exit $$status; }; \
	rm -f '$(CPP_OUT)'/compilerv1*.cpp '$(CPP_OUT)'/compilerv1*.h '$(CPP_OUT)'/compilerv1*.tokens '$(CPP_OUT)'/compilerv1*.interp; \
	mv "$$stage_dir"/compilerv1* '$(CPP_OUT)'/; \
	rm -rf "$$stage_dir" '$(LEGACY_CPP_OUT)' '$(LEGACY_JAVA_OUT)' output/classes

compile: compile-native

compile-core:
	@mkdir -p '$(CMAKE_BUILD_DIR)'
	@set -- -S cpp -B '$(CMAKE_BUILD_DIR)'; \
	if [ -n "$${APOLLO_NATIVE_GENERATOR:-}" ]; then set -- "$$@" -G "$${APOLLO_NATIVE_GENERATOR}"; fi; \
	if [ "$${APOLLO_NATIVE_GENERATOR:-}" = 'MinGW Makefiles' ]; then \
		if [ -n "$${APOLLO_NATIVE_C_COMPILER:-}" ]; then set -- "$$@" "-DCMAKE_C_COMPILER=$${APOLLO_NATIVE_C_COMPILER}"; fi; \
		if [ -n "$${APOLLO_NATIVE_CXX_COMPILER:-}" ]; then set -- "$$@" "-DCMAKE_CXX_COMPILER=$${APOLLO_NATIVE_CXX_COMPILER}"; fi; \
		if [ -n "$${APOLLO_NATIVE_MAKE_PROGRAM:-}" ]; then set -- "$$@" "-DCMAKE_MAKE_PROGRAM=$${APOLLO_NATIVE_MAKE_PROGRAM}"; fi; \
		if [ -n "$${APOLLO_NATIVE_CMAKE_PREFIX:-}" ]; then set -- "$$@" "-DCMAKE_PREFIX_PATH=$${APOLLO_NATIVE_CMAKE_PREFIX}"; fi; \
	elif [ -n "$${CMAKE_TOOLCHAIN_FILE:-}" ]; then \
		set -- "$$@" "-DCMAKE_TOOLCHAIN_FILE=$${CMAKE_TOOLCHAIN_FILE}"; \
	elif [ -n "$${VCPKG_ROOT:-}" ] && [ -f "$${VCPKG_ROOT}/scripts/buildsystems/vcpkg.cmake" ]; then \
		set -- "$$@" "-DCMAKE_TOOLCHAIN_FILE=$${VCPKG_ROOT}/scripts/buildsystems/vcpkg.cmake"; \
	fi; \
	cmake "$$@"
	@cmake --build '$(CMAKE_BUILD_DIR)' --config '$(CMAKE_CONFIG)' --target $(CORE_TARGETS)

compile-native:
	@rm -rf '$(CMAKE_BUILD_DIR)'
	@set -- -S cpp -B '$(CMAKE_BUILD_DIR)'; \
	if [ -n "$${APOLLO_NATIVE_GENERATOR:-}" ]; then set -- "$$@" -G "$${APOLLO_NATIVE_GENERATOR}"; fi; \
	if [ "$${APOLLO_NATIVE_GENERATOR:-}" = 'MinGW Makefiles' ]; then \
		if [ -n "$${APOLLO_NATIVE_C_COMPILER:-}" ]; then set -- "$$@" "-DCMAKE_C_COMPILER=$${APOLLO_NATIVE_C_COMPILER}"; fi; \
		if [ -n "$${APOLLO_NATIVE_CXX_COMPILER:-}" ]; then set -- "$$@" "-DCMAKE_CXX_COMPILER=$${APOLLO_NATIVE_CXX_COMPILER}"; fi; \
		if [ -n "$${APOLLO_NATIVE_MAKE_PROGRAM:-}" ]; then set -- "$$@" "-DCMAKE_MAKE_PROGRAM=$${APOLLO_NATIVE_MAKE_PROGRAM}"; fi; \
		if [ -n "$${APOLLO_NATIVE_CMAKE_PREFIX:-}" ]; then set -- "$$@" "-DCMAKE_PREFIX_PATH=$${APOLLO_NATIVE_CMAKE_PREFIX}"; fi; \
	elif [ -n "$${CMAKE_TOOLCHAIN_FILE:-}" ]; then \
		set -- "$$@" "-DCMAKE_TOOLCHAIN_FILE=$${CMAKE_TOOLCHAIN_FILE}"; \
	elif [ -n "$${VCPKG_ROOT:-}" ] && [ -f "$${VCPKG_ROOT}/scripts/buildsystems/vcpkg.cmake" ]; then \
		set -- "$$@" "-DCMAKE_TOOLCHAIN_FILE=$${VCPKG_ROOT}/scripts/buildsystems/vcpkg.cmake"; \
	fi; \
	cmake "$$@"
	@cmake --build '$(CMAKE_BUILD_DIR)' --config '$(CMAKE_CONFIG)' --target $(NATIVE_TARGETS)

ctall:
	cmd /d /c "call exec.bat ctall main.apollo"

analyze:
	cmd /d /c "call exec.bat -analyze main.apollo"

grammar-tests:
	@sh ./exec.sh ctall tests/grammar/pass/extern_std_prelude_surface.apollo

test:
	@sh ./exec.sh ctall tests/grammar/pass/all_pillars_surface.apollo

run:
	@sh ./exec.sh run main.apollo

cmprun: compile
	@sh ./exec.sh run main.apollo

runopt:
	@sh ./exec.sh ctall main.apollo

clean-generated:
	@rm -f '$(CPP_OUT)'/compilerv1*.cpp '$(CPP_OUT)'/compilerv1*.h '$(CPP_OUT)'/compilerv1*.tokens '$(CPP_OUT)'/compilerv1*.interp
	@rm -rf '$(LEGACY_CPP_OUT)' '$(LEGACY_JAVA_OUT)' output/classes

clean-build:
	@rm -rf '$(CMAKE_BUILD_DIR)' cpp/build cpp/build-posix native/build

clean: clean-generated clean-build
	@rm -rf -p async output
	@rm -f apo_async.cpp apo_async.c apo_async.rs apo_async.exe output.exe output_test.o
endif
