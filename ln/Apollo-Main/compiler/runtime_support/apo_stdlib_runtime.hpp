#ifndef __APO_STDLIB_RUNTIME_HPP
#define __APO_STDLIB_RUNTIME_HPP

#include <algorithm>
#include <bit>
#include <cctype>
#include <cmath>
#include <cstdint>
#include <cstdlib>
#include <deque>
#include <limits>
#include <numeric>
#include <sstream>
#include <string>
#include <string_view>
#include <utility>
#include <vector>

namespace __apo_stdlib {

inline const char* store_string(std::string value) {
    static thread_local std::deque<std::string> pool;
    pool.push_back(std::move(value));
    return pool.back().c_str();
}

inline std::string text_or_empty(const char* value) {
    return value == nullptr ? std::string() : std::string(value);
}

inline std::string_view view_or_empty(const char* value) {
    return value == nullptr ? std::string_view() : std::string_view(value);
}

inline const char* cstr_or_empty(const char* value) {
    return value == nullptr ? "" : value;
}

inline std::int32_t clamp_i64_to_i32(std::int64_t value) {
    if (value < static_cast<std::int64_t>(std::numeric_limits<std::int32_t>::min())) {
        return std::numeric_limits<std::int32_t>::min();
    }
    if (value > static_cast<std::int64_t>(std::numeric_limits<std::int32_t>::max())) {
        return std::numeric_limits<std::int32_t>::max();
    }
    return static_cast<std::int32_t>(value);
}

inline std::int32_t div_floor_i32(std::int32_t left, std::int32_t right) {
    if (right == 0) {
        return 0;
    }
    const std::int32_t quotient = left / right;
    const std::int32_t remainder = left % right;
    if (remainder != 0 && ((remainder > 0) != (right > 0))) {
        return quotient - 1;
    }
    return quotient;
}

inline std::int32_t mod_euclid_i32(std::int32_t left, std::int32_t right) {
    if (right == 0) {
        return 0;
    }
    std::int32_t result = left % right;
    if (result < 0) {
        result += right < 0 ? -right : right;
    }
    return result;
}

inline std::int32_t saturating_add_i32(std::int32_t left, std::int32_t right) {
    return clamp_i64_to_i32(static_cast<std::int64_t>(left) + static_cast<std::int64_t>(right));
}

inline std::int32_t saturating_sub_i32(std::int32_t left, std::int32_t right) {
    return clamp_i64_to_i32(static_cast<std::int64_t>(left) - static_cast<std::int64_t>(right));
}

inline std::int32_t saturating_mul_i32(std::int32_t left, std::int32_t right) {
    return clamp_i64_to_i32(static_cast<std::int64_t>(left) * static_cast<std::int64_t>(right));
}

inline std::int32_t wrapping_add_i32(std::int32_t left, std::int32_t right) {
    const auto result = static_cast<std::uint32_t>(left) + static_cast<std::uint32_t>(right);
    return static_cast<std::int32_t>(result);
}

inline std::int32_t wrapping_sub_i32(std::int32_t left, std::int32_t right) {
    const auto result = static_cast<std::uint32_t>(left) - static_cast<std::uint32_t>(right);
    return static_cast<std::int32_t>(result);
}

inline std::int32_t overflowing_add_value_i32(std::int32_t left, std::int32_t right) {
    return static_cast<std::int32_t>(static_cast<std::uint32_t>(left) + static_cast<std::uint32_t>(right));
}

inline std::int32_t overflowing_add_overflow_i32(std::int32_t left, std::int32_t right) {
    const std::int64_t wide = static_cast<std::int64_t>(left) + static_cast<std::int64_t>(right);
    return wide < static_cast<std::int64_t>(std::numeric_limits<std::int32_t>::min())
        || wide > static_cast<std::int64_t>(std::numeric_limits<std::int32_t>::max())
        ? 1
        : 0;
}

inline std::int32_t lcm_i32(std::int32_t left, std::int32_t right) {
    if (left == 0 || right == 0) {
        return 0;
    }
    const std::int64_t wideLeft = static_cast<std::int64_t>(left);
    const std::int64_t wideRight = static_cast<std::int64_t>(right);
    const std::int64_t gcd = std::gcd(wideLeft, wideRight);
    return clamp_i64_to_i32((wideLeft / gcd) * wideRight < 0 ? -((wideLeft / gcd) * wideRight) : (wideLeft / gcd) * wideRight);
}

inline std::int32_t signum_i32(std::int32_t value) {
    return (value > 0) - (value < 0);
}

inline double signum_f64(double value) {
    if (std::isnan(value)) {
        return 0.0;
    }
    if (value > 0.0) {
        return 1.0;
    }
    if (value < 0.0) {
        return -1.0;
    }
    return 0.0;
}

inline double frexp_fraction_f64(double value) {
    int exponent = 0;
    return std::frexp(value, &exponent);
}

inline std::int32_t frexp_exponent_f64(double value) {
    int exponent = 0;
    std::frexp(value, &exponent);
    return exponent;
}

inline double modf_fraction_f64(double value) {
    double integral = 0.0;
    return std::modf(value, &integral);
}

inline double modf_integral_f64(double value) {
    double integral = 0.0;
    std::modf(value, &integral);
    return integral;
}

inline std::uint32_t as_u32(std::int32_t value) {
    return static_cast<std::uint32_t>(value);
}

inline std::int32_t from_u32(std::uint32_t value) {
    return static_cast<std::int32_t>(value);
}

inline std::int32_t countl_zero_u32(std::uint32_t value) {
    if (value == 0) {
        return 32;
    }
    std::int32_t count = 0;
    std::uint32_t mask = 0x80000000u;
    while ((value & mask) == 0u) {
        ++count;
        mask >>= 1;
    }
    return count;
}

inline std::int32_t countr_zero_u32(std::uint32_t value) {
    if (value == 0) {
        return 32;
    }
    std::int32_t count = 0;
    while ((value & 1u) == 0u) {
        ++count;
        value >>= 1;
    }
    return count;
}

inline std::int32_t popcount_u32(std::uint32_t value) {
    std::int32_t count = 0;
    while (value != 0u) {
        count += static_cast<std::int32_t>(value & 1u);
        value >>= 1;
    }
    return count;
}

inline std::uint32_t rotl_u32(std::uint32_t value, std::int32_t amount) {
    const unsigned int shift = static_cast<unsigned int>(amount) & 31u;
    if (shift == 0u) {
        return value;
    }
    return (value << shift) | (value >> ((32u - shift) & 31u));
}

inline std::uint32_t rotr_u32(std::uint32_t value, std::int32_t amount) {
    const unsigned int shift = static_cast<unsigned int>(amount) & 31u;
    if (shift == 0u) {
        return value;
    }
    return (value >> shift) | (value << ((32u - shift) & 31u));
}

inline std::int32_t clz_i32(std::int32_t value) {
    return countl_zero_u32(as_u32(value));
}

inline std::int32_t ctz_i32(std::int32_t value) {
    return countr_zero_u32(as_u32(value));
}

inline std::int32_t popcount_i32(std::int32_t value) {
    return popcount_u32(as_u32(value));
}

inline std::int32_t ffs_i32(std::int32_t value) {
    const std::uint32_t bits = as_u32(value);
    if (bits == 0) {
        return 0;
    }
    return countr_zero_u32(bits) + 1;
}

inline std::int32_t rotate_left_i32(std::int32_t value, std::int32_t amount) {
    return from_u32(rotl_u32(as_u32(value), amount));
}

inline std::int32_t rotate_right_i32(std::int32_t value, std::int32_t amount) {
    return from_u32(rotr_u32(as_u32(value), amount));
}

inline std::int32_t bswap_i32(std::int32_t value) {
    const std::uint32_t bits = as_u32(value);
    return from_u32((bits >> 24)
        | ((bits >> 8) & 0x0000FF00u)
        | ((bits << 8) & 0x00FF0000u)
        | (bits << 24));
}

inline std::size_t trim_start_index(std::string_view text) {
    std::size_t index = 0;
    while (index < text.size() && std::isspace(static_cast<unsigned char>(text[index])) != 0) {
        ++index;
    }
    return index;
}

inline std::size_t trim_end_index(std::string_view text) {
    std::size_t index = text.size();
    while (index > 0 && std::isspace(static_cast<unsigned char>(text[index - 1])) != 0) {
        --index;
    }
    return index;
}

inline std::string trim_copy(std::string_view text) {
    const std::size_t start = trim_start_index(text);
    const std::size_t end = trim_end_index(text);
    if (end <= start) {
        return {};
    }
    return std::string(text.substr(start, end - start));
}

inline std::string trim_start_copy(std::string_view text) {
    return std::string(text.substr(trim_start_index(text)));
}

inline std::string trim_end_copy(std::string_view text) {
    return std::string(text.substr(0, trim_end_index(text)));
}

inline std::string lowercase_ascii_copy(std::string text) {
    for (char& ch : text) {
        ch = static_cast<char>(std::tolower(static_cast<unsigned char>(ch)));
    }
    return text;
}

inline std::string uppercase_ascii_copy(std::string text) {
    for (char& ch : text) {
        ch = static_cast<char>(std::toupper(static_cast<unsigned char>(ch)));
    }
    return text;
}

inline std::string titlecase_ascii_copy(std::string text) {
    bool newWord = true;
    for (char& ch : text) {
        const unsigned char value = static_cast<unsigned char>(ch);
        if (std::isalnum(value) == 0) {
            newWord = true;
            continue;
        }
        if (newWord) {
            ch = static_cast<char>(std::toupper(value));
            newWord = false;
        } else {
            ch = static_cast<char>(std::tolower(value));
        }
    }
    return text;
}

inline std::int32_t compare_strings(std::string_view left, std::string_view right) {
    if (left < right) {
        return -1;
    }
    if (left > right) {
        return 1;
    }
    return 0;
}

inline std::int32_t compare_strings_casefold_ascii(std::string_view left, std::string_view right) {
    const std::size_t limit = std::min(left.size(), right.size());
    for (std::size_t index = 0; index < limit; ++index) {
        const unsigned char leftChar = static_cast<unsigned char>(std::tolower(static_cast<unsigned char>(left[index])));
        const unsigned char rightChar = static_cast<unsigned char>(std::tolower(static_cast<unsigned char>(right[index])));
        if (leftChar < rightChar) {
            return -1;
        }
        if (leftChar > rightChar) {
            return 1;
        }
    }
    if (left.size() < right.size()) {
        return -1;
    }
    if (left.size() > right.size()) {
        return 1;
    }
    return 0;
}

inline std::string replace_n_copy(std::string text, std::string_view from, std::string_view to, std::int32_t count) {
    if (from.empty() || count == 0) {
        return text;
    }
    std::size_t cursor = 0;
    while ((count < 0 || count > 0) && cursor <= text.size()) {
        const std::size_t match = text.find(from, cursor);
        if (match == std::string::npos) {
            break;
        }
        text.replace(match, from.size(), to);
        cursor = match + to.size();
        if (count > 0) {
            --count;
        }
    }
    return text;
}

inline std::string reverse_copy(std::string text) {
    std::reverse(text.begin(), text.end());
    return text;
}

inline std::int32_t parse_bool_ascii(std::string_view text) {
    const std::string normalized = lowercase_ascii_copy(trim_copy(text));
    if (normalized == "1" || normalized == "true" || normalized == "yes" || normalized == "on") {
        return 1;
    }
    if (normalized == "0" || normalized == "false" || normalized == "no" || normalized == "off") {
        return 0;
    }
    return 0;
}

inline char pad_char(std::string_view fill) {
    return fill.empty() ? ' ' : fill.front();
}

inline unsigned char first_byte(std::string_view text) {
    return text.empty() ? 0 : static_cast<unsigned char>(text.front());
}

inline std::int32_t ascii_validate(std::string_view text) {
    for (const unsigned char ch : text) {
        if (ch > 0x7F) {
            return 0;
        }
    }
    return 1;
}

inline std::int32_t utf8_validate(std::string_view text) {
    std::size_t index = 0;
    while (index < text.size()) {
        const unsigned char lead = static_cast<unsigned char>(text[index]);
        std::size_t width = 0;
        if ((lead & 0x80u) == 0) {
            width = 1;
        } else if ((lead & 0xE0u) == 0xC0u) {
            width = 2;
        } else if ((lead & 0xF0u) == 0xE0u) {
            width = 3;
        } else if ((lead & 0xF8u) == 0xF0u) {
            width = 4;
        } else {
            return 0;
        }
        if (index + width > text.size()) {
            return 0;
        }
        for (std::size_t offset = 1; offset < width; ++offset) {
            const unsigned char tail = static_cast<unsigned char>(text[index + offset]);
            if ((tail & 0xC0u) != 0x80u) {
                return 0;
            }
        }
        index += width;
    }
    return 1;
}

inline std::int32_t utf8_char_count(std::string_view text) {
    if (utf8_validate(text) == 0) {
        return 0;
    }
    std::int32_t count = 0;
    for (std::size_t index = 0; index < text.size(); ++index) {
        const unsigned char ch = static_cast<unsigned char>(text[index]);
        if ((ch & 0xC0u) != 0x80u) {
            ++count;
        }
    }
    return count;
}

inline const char* hex_encode(std::string_view text) {
    static constexpr char kDigits[] = "0123456789abcdef";
    std::string encoded;
    encoded.reserve(text.size() * 2);
    for (const unsigned char ch : text) {
        encoded.push_back(kDigits[ch >> 4]);
        encoded.push_back(kDigits[ch & 0x0Fu]);
    }
    return store_string(std::move(encoded));
}

inline int hex_value(char ch) {
    if (ch >= '0' && ch <= '9') {
        return ch - '0';
    }
    if (ch >= 'a' && ch <= 'f') {
        return 10 + (ch - 'a');
    }
    if (ch >= 'A' && ch <= 'F') {
        return 10 + (ch - 'A');
    }
    return -1;
}

inline const char* hex_decode(std::string_view text) {
    if ((text.size() % 2) != 0) {
        return store_string("");
    }
    std::string decoded;
    decoded.reserve(text.size() / 2);
    for (std::size_t index = 0; index < text.size(); index += 2) {
        const int high = hex_value(text[index]);
        const int low = hex_value(text[index + 1]);
        if (high < 0 || low < 0) {
            return store_string("");
        }
        decoded.push_back(static_cast<char>((high << 4) | low));
    }
    return store_string(std::move(decoded));
}

inline const char* url_encode(std::string_view text) {
    static constexpr char kDigits[] = "0123456789ABCDEF";
    std::string encoded;
    encoded.reserve(text.size() * 3);
    for (const unsigned char ch : text) {
        if (std::isalnum(ch) != 0 || ch == '-' || ch == '_' || ch == '.' || ch == '~') {
            encoded.push_back(static_cast<char>(ch));
            continue;
        }
        encoded.push_back('%');
        encoded.push_back(kDigits[ch >> 4]);
        encoded.push_back(kDigits[ch & 0x0Fu]);
    }
    return store_string(std::move(encoded));
}

inline const char* url_decode(std::string_view text) {
    std::string decoded;
    decoded.reserve(text.size());
    for (std::size_t index = 0; index < text.size(); ++index) {
        if (text[index] == '%' && index + 2 < text.size()) {
            const int high = hex_value(text[index + 1]);
            const int low = hex_value(text[index + 2]);
            if (high >= 0 && low >= 0) {
                decoded.push_back(static_cast<char>((high << 4) | low));
                index += 2;
                continue;
            }
        }
        decoded.push_back(text[index] == '+' ? ' ' : text[index]);
    }
    return store_string(std::move(decoded));
}

inline const char* base64_encode(std::string_view text) {
    static constexpr char kTable[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
    std::string encoded;
    encoded.reserve(((text.size() + 2) / 3) * 4);
    for (std::size_t index = 0; index < text.size(); index += 3) {
        const std::uint32_t chunk = (static_cast<std::uint32_t>(static_cast<unsigned char>(text[index])) << 16)
            | ((index + 1 < text.size() ? static_cast<std::uint32_t>(static_cast<unsigned char>(text[index + 1])) : 0u) << 8)
            | (index + 2 < text.size() ? static_cast<std::uint32_t>(static_cast<unsigned char>(text[index + 2])) : 0u);
        encoded.push_back(kTable[(chunk >> 18) & 0x3Fu]);
        encoded.push_back(kTable[(chunk >> 12) & 0x3Fu]);
        encoded.push_back(index + 1 < text.size() ? kTable[(chunk >> 6) & 0x3Fu] : '=');
        encoded.push_back(index + 2 < text.size() ? kTable[chunk & 0x3Fu] : '=');
    }
    return store_string(std::move(encoded));
}

inline int base64_value(unsigned char ch) {
    if (ch >= 'A' && ch <= 'Z') {
        return ch - 'A';
    }
    if (ch >= 'a' && ch <= 'z') {
        return 26 + (ch - 'a');
    }
    if (ch >= '0' && ch <= '9') {
        return 52 + (ch - '0');
    }
    if (ch == '+') {
        return 62;
    }
    if (ch == '/') {
        return 63;
    }
    return -1;
}

inline const char* base64_decode(std::string_view text) {
    if ((text.size() % 4) != 0) {
        return store_string("");
    }
    std::string decoded;
    decoded.reserve((text.size() / 4) * 3);
    for (std::size_t index = 0; index < text.size(); index += 4) {
        const int a = base64_value(static_cast<unsigned char>(text[index]));
        const int b = base64_value(static_cast<unsigned char>(text[index + 1]));
        const int c = text[index + 2] == '=' ? 0 : base64_value(static_cast<unsigned char>(text[index + 2]));
        const int d = text[index + 3] == '=' ? 0 : base64_value(static_cast<unsigned char>(text[index + 3]));
        if (a < 0 || b < 0 || (text[index + 2] != '=' && c < 0) || (text[index + 3] != '=' && d < 0)) {
            return store_string("");
        }
        const std::uint32_t chunk = (static_cast<std::uint32_t>(a) << 18)
            | (static_cast<std::uint32_t>(b) << 12)
            | (static_cast<std::uint32_t>(c) << 6)
            | static_cast<std::uint32_t>(d);
        decoded.push_back(static_cast<char>((chunk >> 16) & 0xFFu));
        if (text[index + 2] != '=') {
            decoded.push_back(static_cast<char>((chunk >> 8) & 0xFFu));
        }
        if (text[index + 3] != '=') {
            decoded.push_back(static_cast<char>(chunk & 0xFFu));
        }
    }
    return store_string(std::move(decoded));
}

inline std::uint32_t hash_fnv1a_32(std::string_view text) {
    std::uint32_t hash = 2166136261u;
    for (const unsigned char ch : text) {
        hash ^= ch;
        hash *= 16777619u;
    }
    return hash;
}

inline std::uint64_t hash_fnv1a_64(std::string_view text) {
    std::uint64_t hash = 14695981039346656037ull;
    for (const unsigned char ch : text) {
        hash ^= ch;
        hash *= 1099511628211ull;
    }
    return hash;
}

inline std::uint32_t hash_adler32(std::string_view text) {
    std::uint32_t a = 1;
    std::uint32_t b = 0;
    for (const unsigned char ch : text) {
        a = (a + ch) % 65521u;
        b = (b + a) % 65521u;
    }
    return (b << 16) | a;
}

inline std::uint32_t hash_crc32(std::string_view text) {
    std::uint32_t crc = 0xFFFFFFFFu;
    for (const unsigned char ch : text) {
        crc ^= ch;
        for (int bit = 0; bit < 8; ++bit) {
            crc = (crc >> 1) ^ (0xEDB88320u & static_cast<std::uint32_t>(-(static_cast<std::int32_t>(crc & 1u))));
        }
    }
    return ~crc;
}

inline std::uint32_t hash_murmur3_32(std::string_view text) {
    const auto* data = reinterpret_cast<const std::uint8_t*>(text.data());
    const int length = static_cast<int>(text.size());
    const int blocks = length / 4;
    std::uint32_t hash = 0u;
    constexpr std::uint32_t c1 = 0xcc9e2d51u;
    constexpr std::uint32_t c2 = 0x1b873593u;

    for (int index = 0; index < blocks; ++index) {
        std::uint32_t k1 = static_cast<std::uint32_t>(data[index * 4])
            | (static_cast<std::uint32_t>(data[index * 4 + 1]) << 8)
            | (static_cast<std::uint32_t>(data[index * 4 + 2]) << 16)
            | (static_cast<std::uint32_t>(data[index * 4 + 3]) << 24);
        k1 *= c1;
        k1 = rotl_u32(k1, 15);
        k1 *= c2;
        hash ^= k1;
        hash = rotl_u32(hash, 13);
        hash = hash * 5u + 0xe6546b64u;
    }

    std::uint32_t tail = 0u;
    const auto* tailData = data + blocks * 4;
    switch (length & 3) {
    case 3:
        tail ^= static_cast<std::uint32_t>(tailData[2]) << 16;
        [[fallthrough]];
    case 2:
        tail ^= static_cast<std::uint32_t>(tailData[1]) << 8;
        [[fallthrough]];
    case 1:
        tail ^= static_cast<std::uint32_t>(tailData[0]);
        tail *= c1;
        tail = rotl_u32(tail, 15);
        tail *= c2;
        hash ^= tail;
        break;
    default:
        break;
    }

    hash ^= static_cast<std::uint32_t>(length);
    hash ^= hash >> 16;
    hash *= 0x85ebca6bu;
    hash ^= hash >> 13;
    hash *= 0xc2b2ae35u;
    hash ^= hash >> 16;
    return hash;
}

inline std::string json_escape_text(std::string_view text) {
    std::string out;
    out.reserve(text.size() + 2);
    out.push_back('"');
    for (const char ch : text) {
        switch (ch) {
        case '\\': out += "\\\\"; break;
        case '"': out += "\\\""; break;
        case '\n': out += "\\n"; break;
        case '\r': out += "\\r"; break;
        case '\t': out += "\\t"; break;
        default: out.push_back(ch); break;
        }
    }
    out.push_back('"');
    return out;
}

inline std::string json_unescape_text(std::string_view text) {
    std::string out;
    out.reserve(text.size());
    for (std::size_t index = 0; index < text.size(); ++index) {
        const char ch = text[index];
        if (ch == '\\' && index + 1 < text.size()) {
            const char next = text[++index];
            switch (next) {
            case 'n': out.push_back('\n'); break;
            case 'r': out.push_back('\r'); break;
            case 't': out.push_back('\t'); break;
            case '\\': out.push_back('\\'); break;
            case '"': out.push_back('"'); break;
            default: out.push_back(next); break;
            }
            continue;
        }
        out.push_back(ch);
    }
    return out;
}

inline std::int32_t json_parse_bool(std::string_view text) {
    return trim_copy(text) == "true" ? 1 : 0;
}

inline std::int64_t json_parse_int(std::string_view text) {
    const std::string trimmed = trim_copy(text);
    return trimmed.empty() ? 0 : std::strtoll(trimmed.c_str(), nullptr, 10);
}

inline double json_parse_float(std::string_view text) {
    const std::string trimmed = trim_copy(text);
    return trimmed.empty() ? 0.0 : std::strtod(trimmed.c_str(), nullptr);
}

inline const char* json_parse_str(std::string_view text) {
    const std::string trimmed = trim_copy(text);
    if (trimmed.size() >= 2 && trimmed.front() == '"' && trimmed.back() == '"') {
        return store_string(json_unescape_text(std::string_view(trimmed).substr(1, trimmed.size() - 2)));
    }
    return store_string("");
}

inline const char* json_write_bool(std::int32_t value) {
    return store_string(value != 0 ? "true" : "false");
}

inline const char* json_write_int(std::int64_t value) {
    return store_string(std::to_string(value));
}

inline const char* json_write_float(double value) {
    std::ostringstream stream;
    stream << value;
    return store_string(stream.str());
}

inline const char* json_write_str(std::string_view value) {
    return store_string(json_escape_text(value));
}

inline const char* json_write_array_start() {
    return store_string("[");
}

inline const char* json_write_array_end() {
    return store_string("]");
}

inline const char* json_write_object_start() {
    return store_string("{");
}

inline const char* json_write_object_end() {
    return store_string("}");
}

inline std::vector<std::string> json_split_top_level(std::string_view text) {
    std::vector<std::string> parts;
    std::size_t start = 0;
    int depth = 0;
    bool inString = false;
    bool escaped = false;
    for (std::size_t index = 0; index < text.size(); ++index) {
        const char ch = text[index];
        if (inString) {
            if (escaped) {
                escaped = false;
            } else if (ch == '\\') {
                escaped = true;
            } else if (ch == '"') {
                inString = false;
            }
            continue;
        }
        if (ch == '"') {
            inString = true;
            continue;
        }
        if (ch == '[' || ch == '{') {
            ++depth;
            continue;
        }
        if (ch == ']' || ch == '}') {
            if (depth > 0) {
                --depth;
            }
            continue;
        }
        if (ch == ',' && depth == 0) {
            parts.push_back(trim_copy(text.substr(start, index - start)));
            start = index + 1;
        }
    }
    if (start <= text.size()) {
        parts.push_back(trim_copy(text.substr(start)));
    }
    if (parts.size() == 1 && parts.front().empty()) {
        parts.clear();
    }
    return parts;
}

inline std::size_t json_find_top_level_colon(std::string_view text) {
    int depth = 0;
    bool inString = false;
    bool escaped = false;
    for (std::size_t index = 0; index < text.size(); ++index) {
        const char ch = text[index];
        if (inString) {
            if (escaped) {
                escaped = false;
            } else if (ch == '\\') {
                escaped = true;
            } else if (ch == '"') {
                inString = false;
            }
            continue;
        }
        if (ch == '"') {
            inString = true;
            continue;
        }
        if (ch == '[' || ch == '{') {
            ++depth;
            continue;
        }
        if (ch == ']' || ch == '}') {
            if (depth > 0) {
                --depth;
            }
            continue;
        }
        if (ch == ':' && depth == 0) {
            return index;
        }
    }
    return std::string_view::npos;
}

inline std::string json_parse_key(std::string_view text) {
    const std::string trimmed = trim_copy(text);
    if (trimmed.size() >= 2 && trimmed.front() == '"' && trimmed.back() == '"') {
        return json_unescape_text(std::string_view(trimmed).substr(1, trimmed.size() - 2));
    }
    return trimmed;
}

inline std::vector<std::string> json_parse_array_items(std::string_view text) {
    const std::string trimmed = trim_copy(text);
    if (trimmed.size() < 2 || trimmed.front() != '[' || trimmed.back() != ']') {
        return {};
    }
    return json_split_top_level(std::string_view(trimmed).substr(1, trimmed.size() - 2));
}

inline std::vector<std::pair<std::string, std::string>> json_parse_object_items(std::string_view text) {
    const std::string trimmed = trim_copy(text);
    if (trimmed.size() < 2 || trimmed.front() != '{' || trimmed.back() != '}') {
        return {};
    }
    std::vector<std::pair<std::string, std::string>> items;
    for (const std::string& part : json_split_top_level(std::string_view(trimmed).substr(1, trimmed.size() - 2))) {
        const std::size_t colon = json_find_top_level_colon(part);
        if (colon == std::string::npos) {
            continue;
        }
        items.emplace_back(json_parse_key(std::string_view(part).substr(0, colon)), trim_copy(std::string_view(part).substr(colon + 1)));
    }
    return items;
}

inline std::string json_write_array_fragments(const std::vector<std::string>& items) {
    std::string out = "[";
    for (std::size_t index = 0; index < items.size(); ++index) {
        if (index != 0) {
            out.push_back(',');
        }
        out += items[index];
    }
    out.push_back(']');
    return out;
}

inline std::string json_write_object_fragments(const std::vector<std::pair<std::string, std::string>>& items) {
    std::string out = "{";
    for (std::size_t index = 0; index < items.size(); ++index) {
        if (index != 0) {
            out.push_back(',');
        }
        out += json_escape_text(items[index].first);
        out.push_back(':');
        out += items[index].second;
    }
    out.push_back('}');
    return out;
}

} // namespace __apo_stdlib

#endif