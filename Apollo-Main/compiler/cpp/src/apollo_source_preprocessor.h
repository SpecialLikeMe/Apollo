#pragma once

#include <filesystem>
#include <string>
#include <string_view>

std::string preprocessApolloSource(const std::filesystem::path& sourcePath, std::string_view sourceText);
std::string preprocessApolloSourceFromFile(const std::filesystem::path& sourcePath);