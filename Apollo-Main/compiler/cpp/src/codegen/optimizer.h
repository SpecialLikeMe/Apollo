#pragma once

#include <string>

namespace llvm { class Module; }

namespace apollo::codegen {

struct OptConfig {
    int level = 0;              // 0..3
    bool size_opt = false;      // -Os
    bool lto = false;           // emit ThinLTO summary
    bool pgo_instrument = false;
    std::string pgo_use_path;   // empty => no PGO use
    std::string target_triple;  // optional
};

// Runs the default per-module pipeline at OptConfig::level.
// Returns true on success; on failure sets `err` and returns false.
bool runOptPipeline(llvm::Module& module, const OptConfig& cfg, std::string& err);

// Writes module bitcode to path. If cfg.lto is true, emits a module summary
// suitable for ThinLTO.
bool writeBitcode(llvm::Module& module, const std::string& path, const OptConfig& cfg, std::string& err);

} // namespace apollo::codegen
