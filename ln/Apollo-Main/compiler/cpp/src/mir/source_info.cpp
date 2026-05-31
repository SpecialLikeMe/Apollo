#include "source_info.h"

#include <algorithm>
#include <string_view>

namespace apollo::mir {

LineCol FileSource::lookup(std::uint32_t offset) const noexcept {
    if (!content) return {1, 1};
    auto it = std::upper_bound(newline_offsets.begin(), newline_offsets.end(), offset);
    auto line_idx = static_cast<std::size_t>(it - newline_offsets.begin()); // 0-based line
    std::uint32_t line_start = (line_idx == 0) ? 0 : newline_offsets[line_idx - 1] + 1;
    return LineCol{
        /*line=*/static_cast<std::uint32_t>(line_idx + 1),
        /*col =*/offset - line_start + 1,
    };
}

std::string_view FileSource::line_text(std::uint32_t line) const noexcept {
    if (!content || line == 0) return {};
    std::uint32_t start = (line == 1) ? 0 : newline_offsets[line - 2] + 1;
    std::uint32_t end = (line - 1 < newline_offsets.size())
                            ? newline_offsets[line - 1]
                            : static_cast<std::uint32_t>(content->size());
    return std::string_view(content->data() + start, end - start);
}

FileId SourceMap::add_file(std::string path, std::shared_ptr<const std::string> content) {
    FileSource f;
    f.path = std::move(path);
    f.content = std::move(content);
    if (f.content) {
        for (std::uint32_t i = 0; i < f.content->size(); ++i) {
            if ((*f.content)[i] == '\n') f.newline_offsets.push_back(i);
        }
    }
    auto id = static_cast<FileId>(files_.size());
    files_.push_back(std::move(f));
    return id;
}

const FileSource* SourceMap::file(FileId id) const noexcept {
    if (id >= files_.size()) return nullptr;
    return &files_[id];
}

LineCol SourceMap::lookup(Span span) const noexcept {
    auto* f = file(span.file);
    if (!f) return {1, 1};
    return f->lookup(span.lo);
}

} // namespace apollo::mir
