// Apollo MIR — pretty printer.
//
// Output mirrors rustc's `--emit=mir` syntax closely enough that existing
// tooling (rust-analyzer's MIR pane, etc.) can be reused for inspection.

#ifndef APOLLO_MIR_PRINTER_H
#define APOLLO_MIR_PRINTER_H

#include "mir.h"

#include <string>

namespace apollo::mir {

std::string bodyToString(const Body& body, const TyCtxt& tcx);
std::string placeToString(const Place& p);

} // namespace apollo::mir

#endif
