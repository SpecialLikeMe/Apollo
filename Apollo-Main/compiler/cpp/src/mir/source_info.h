// Apollo MIR — source spans and source-map.
//
// `Span` is a half-open byte range over a single `FileId`. The compiler
// expands `Span` to (line, column, line text) on demand via the
// `SourceMap`, which keeps a sorted array of newline byte offsets per
// file so the lookup is `O(log n)`.

#ifndef APOLLO_MIR_SOURCE_INFO_H
#define APOLLO_MIR_SOURCE_INFO_H

#include <cstdint>
#include <memory>
#include <string>
#include <vector>

namespace apollo::mir {

using FileId = std::uint32_t;
constexpr FileId kInvalidFileId = static_cast<FileId>(-1);

struct Span {
    FileId file = kInvalidFileId;
    std::uint32_t lo = 0;  // inclusive byte offset
    std::uint32_t hi = 0;  // exclusive byte offset

    bool valid() const noexcept { return file != kInvalidFileId && hi >= lo; }
    std::uint32_t len() const noexcept { return hi - lo; }
    bool operator==(const Span&) const = default;
};

struct LineCol {
    std::uint32_t line = 1; // 1-based
    std::uint32_t col  = 1; // 1-based
};

struct FileSource {
    std::string path;
    std::shared_ptr<const std::string> content;
    std::vector<std::uint32_t> newline_offsets; // sorted ascending; offset of each '\n'

    LineCol lookup(std::uint32_t offset) const noexcept;
    std::string_view line_text(std::uint32_t line) const noexcept;
};

class SourceMap {
public:
    FileId add_file(std::string path, std::shared_ptr<const std::string> content);
    const FileSource* file(FileId id) const noexcept;
    LineCol lookup(Span span) const noexcept;

private:
    std::vector<FileSource> files_;
};

using SourceScopeId = std::uint32_t;
constexpr SourceScopeId kRootScope = 0;

enum class BorrowCheckMode : std::uint8_t {
    On,            // normal checking
    BypassRegion,  // record loans but do not report conflicts (Apollo `@bypass {}`)
    Off,           // skip entire region
};

enum class Unsafety : std::uint8_t {
    Safe,
    Unsafe,
};

struct SourceScope {
    SourceScopeId parent = kRootScope;
    Span span{};
    BorrowCheckMode borrow_mode = BorrowCheckMode::On;
    Unsafety unsafety = Unsafety::Safe;
};

struct SourceInfo {
    Span span{};
    SourceScopeId scope = kRootScope;
};

} // namespace apollo::mir

#endif
