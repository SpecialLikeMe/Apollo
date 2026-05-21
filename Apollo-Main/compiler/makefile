GRAMMAR := compilerv1.g4
CPP_OUT := cpp/generated
LEGACY_CPP_OUT := generated
LEGACY_JAVA_OUT := compiler-master
ifeq ($(OS),Windows_NT)
POWERSHELL := pwsh -NoProfile -Command
CMAKE_BUILD_DIR := cpp/build
else
CMAKE_BUILD_DIR := cpp/build-posix
endif
CMAKE_CONFIG ?= Release
NATIVE_TARGETS := apollo_frontend_native apollo_build_driver_native apollo_runtime_tests apollo_driver_tests
CORE_TARGETS := apollo_frontend_native apollo_build_driver_native

LOCAL_ANTLR_JAR := antlr-4.13.2-complete.jar
ANTLR_CMD ?= antlr4
ANTLR_JAR ?= $(LOCAL_ANTLR_JAR)

ifneq ($(wildcard $(ANTLR_JAR)),)
ANTLR := java -jar "$(ANTLR_JAR)"
else
ANTLR := $(ANTLR_CMD)
endif

.PHONY: all core regen regen-cpp compile compile-core compile-native \
	clean clean-generated clean-build run ctall analyze grammar-tests test cmprun runopt info

all: regen compile

core: regen compile-core

info:

ifeq ($(OS),Windows_NT)
	@$(POWERSHELL) "Write-Host 'Active grammar : $(GRAMMAR)'; Write-Host 'Native output  : $(CPP_OUT)'; Write-Host 'ANTLR tool     : $(ANTLR)'; Write-Host 'CMake config   : $(CMAKE_CONFIG)'"

regen: regen-cpp

regen-cpp:
	@$(POWERSHELL) "$$ErrorActionPreference = 'Stop'; if (-not (Test-Path '$(GRAMMAR)')) { throw 'Missing native grammar: $(GRAMMAR)' }; New-Item -ItemType Directory -Force -Path '$(CPP_OUT)' | Out-Null; Remove-Item '$(CPP_OUT)/compilerv1*.cpp', '$(CPP_OUT)/compilerv1*.h', '$(CPP_OUT)/compilerv1*.tokens', '$(CPP_OUT)/compilerv1*.interp' -Force -ErrorAction SilentlyContinue; Remove-Item '$(LEGACY_CPP_OUT)', '$(LEGACY_JAVA_OUT)', 'output/classes' -Recurse -Force -ErrorAction SilentlyContinue; $$antlrArgs = @('-Dlanguage=Cpp', '-visitor', '-no-listener', '-Xexact-output-dir', '-o', '$(CPP_OUT)', '$(GRAMMAR)'); $$antlrJar = '$(ANTLR_JAR)'; $$antlrCmd = '$(ANTLR_CMD)'; if ($$antlrJar -and (Test-Path $$antlrJar)) { & java -jar $$antlrJar $$antlrArgs } else { & $$antlrCmd $$antlrArgs }; if ($$LASTEXITCODE -ne 0) { exit $$LASTEXITCODE }"

compile-core: regen-cpp
	@$(POWERSHELL) "$$ErrorActionPreference = 'Stop'; $$configureArgs = @('-S', 'cpp', '-B', '$(CMAKE_BUILD_DIR)'); if ($$env:APOLLO_NATIVE_GENERATOR) { $$configureArgs += @('-G', $$env:APOLLO_NATIVE_GENERATOR) }; if ($$env:CMAKE_TOOLCHAIN_FILE) { $$configureArgs += '-DCMAKE_TOOLCHAIN_FILE=' + $$env:CMAKE_TOOLCHAIN_FILE } elseif ($$env:VCPKG_ROOT) { $$vcpkgToolchain = Join-Path $$env:VCPKG_ROOT 'scripts\buildsystems\vcpkg.cmake'; if (Test-Path $$vcpkgToolchain) { $$configureArgs += '-DCMAKE_TOOLCHAIN_FILE=' + $$vcpkgToolchain } } elseif ($$env:USERPROFILE) { $$defaultVcpkgToolchain = Join-Path $$env:USERPROFILE 'vcpkg\scripts\buildsystems\vcpkg.cmake'; if (Test-Path $$defaultVcpkgToolchain) { $$configureArgs += '-DCMAKE_TOOLCHAIN_FILE=' + $$defaultVcpkgToolchain } }; if (-not (Test-Path '$(CMAKE_BUILD_DIR)/CMakeCache.txt')) { & cmake $$configureArgs; if ($$LASTEXITCODE -ne 0) { exit $$LASTEXITCODE } }; & cmake --build '$(CMAKE_BUILD_DIR)' --config '$(CMAKE_CONFIG)' --target $(CORE_TARGETS); if ($$LASTEXITCODE -ne 0) { exit $$LASTEXITCODE }"

compile-native: regen-cpp
	@$(POWERSHELL) "$$ErrorActionPreference = 'Stop'; Remove-Item '$(CMAKE_BUILD_DIR)' -Recurse -Force -ErrorAction SilentlyContinue; $$configureArgs = @('-S', 'cpp', '-B', '$(CMAKE_BUILD_DIR)'); if ($$env:APOLLO_NATIVE_GENERATOR) { $$configureArgs += @('-G', $$env:APOLLO_NATIVE_GENERATOR) }; if ($$env:CMAKE_TOOLCHAIN_FILE) { $$configureArgs += '-DCMAKE_TOOLCHAIN_FILE=' + $$env:CMAKE_TOOLCHAIN_FILE } elseif ($$env:VCPKG_ROOT) { $$vcpkgToolchain = Join-Path $$env:VCPKG_ROOT 'scripts\buildsystems\vcpkg.cmake'; if (Test-Path $$vcpkgToolchain) { $$configureArgs += '-DCMAKE_TOOLCHAIN_FILE=' + $$vcpkgToolchain } } elseif ($$env:USERPROFILE) { $$defaultVcpkgToolchain = Join-Path $$env:USERPROFILE 'vcpkg\scripts\buildsystems\vcpkg.cmake'; if (Test-Path $$defaultVcpkgToolchain) { $$configureArgs += '-DCMAKE_TOOLCHAIN_FILE=' + $$defaultVcpkgToolchain } }; & cmake $$configureArgs; if ($$LASTEXITCODE -ne 0) { exit $$LASTEXITCODE }; & cmake --build '$(CMAKE_BUILD_DIR)' --config '$(CMAKE_CONFIG)' --target $(NATIVE_TARGETS); if ($$LASTEXITCODE -ne 0) { exit $$LASTEXITCODE }"

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
	@rm -f '$(CPP_OUT)'/compilerv1*.cpp '$(CPP_OUT)'/compilerv1*.h '$(CPP_OUT)'/compilerv1*.tokens '$(CPP_OUT)'/compilerv1*.interp
	@rm -rf '$(LEGACY_CPP_OUT)' '$(LEGACY_JAVA_OUT)' output/classes
	@if [ -n "$(ANTLR_JAR)" ] && [ -f "$(ANTLR_JAR)" ]; then \
		java -jar "$(ANTLR_JAR)" -Dlanguage=Cpp -visitor -no-listener -Xexact-output-dir -o '$(CPP_OUT)' '$(GRAMMAR)'; \
	else \
		'$(ANTLR_CMD)' -Dlanguage=Cpp -visitor -no-listener -Xexact-output-dir -o '$(CPP_OUT)' '$(GRAMMAR)'; \
	fi

compile: compile-native

compile-core: regen-cpp
	@mkdir -p '$(CMAKE_BUILD_DIR)'
	@if [ ! -f '$(CMAKE_BUILD_DIR)/CMakeCache.txt' ]; then \
		set -- -S cpp -B '$(CMAKE_BUILD_DIR)'; \
		if [ -n "$${APOLLO_NATIVE_GENERATOR:-}" ]; then set -- "$$@" -G "$${APOLLO_NATIVE_GENERATOR}"; fi; \
		if [ -n "$${CMAKE_TOOLCHAIN_FILE:-}" ]; then \
			set -- "$$@" "-DCMAKE_TOOLCHAIN_FILE=$${CMAKE_TOOLCHAIN_FILE}"; \
		elif [ -n "$${VCPKG_ROOT:-}" ] && [ -f "$${VCPKG_ROOT}/scripts/buildsystems/vcpkg.cmake" ]; then \
			set -- "$$@" "-DCMAKE_TOOLCHAIN_FILE=$${VCPKG_ROOT}/scripts/buildsystems/vcpkg.cmake"; \
		fi; \
		cmake "$$@"; \
	fi
	@cmake --build '$(CMAKE_BUILD_DIR)' --config '$(CMAKE_CONFIG)' --target $(CORE_TARGETS)

compile-native: regen-cpp
	@rm -rf '$(CMAKE_BUILD_DIR)'
	@set -- -S cpp -B '$(CMAKE_BUILD_DIR)'; \
	if [ -n "$${APOLLO_NATIVE_GENERATOR:-}" ]; then set -- "$$@" -G "$${APOLLO_NATIVE_GENERATOR}"; fi; \
	if [ -n "$${CMAKE_TOOLCHAIN_FILE:-}" ]; then \
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
