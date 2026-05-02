#pragma once

#ifdef __cplusplus
using namespace std;
using json = nlohmann::json;
namespace fs = std::filesystem;
using String = std::string;
#endif

enum ImageFormat {
    RGBA32,
    RGBA16,
    YUV16,
    IA16,
    CI8,
    I8,
    IA8,
    CI4,
    I4,
    IA4,
    PALETTE,
    NUM_FORMATS,
    INVALID_FORMAT
};

const char* const imgFormatStrings[] = {
    "rgba32",
    "rgba16",
    "yuv16",
    "ia16",
    "ci8",
    "i8",
    "ia8",
    "ci4",
    "i4",
    "ia4",
    "pal",
};

const uint8_t imgFormatDepths[] = {
    32,
    16,
    16,
    16,
    8,
    8,
    8,
    4,
    4,
    4,
    0,
};
