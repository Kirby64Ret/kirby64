#include <iostream>
#include <fstream>
#include <sys/stat.h>
#include "json.hpp"
#include "extract_assets.hpp"
#define RELEASE

#include "fmt/core.h"

extern "C" {
#include "../n64graphics.h"
}

FILE *baserom;
uint8_t *baserom_u8;

bool Str_contains(String &s, char *value) {
    return s.find(value) != String::npos;
}


int mkpath(char* file_path, mode_t mode) {
    assert(file_path && *file_path);
    for (char* p = strchr(file_path + 1, '/'); p; p = strchr(p + 1, '/')) {
        *p = '\0';
        if (mkdir(file_path, mode) == -1) {
            if (errno != EEXIST) {
                *p = '/';
                return -1;
            }
        }
        *p = '/';
    }
    return 0;
}

FILE* fopen_mkdir(char* path, char* mode)
{
    if (mkpath(path, 0777) == -1)
        return NULL;
    return fopen(path, mode);
}

void init_baserom(char *s) {
    baserom = fopen(s, "rb");

    fseek(baserom, 0, SEEK_END);
    size_t filelen = ftell(baserom);
    fseek(baserom, 0, SEEK_SET);

    baserom_u8 = (uint8_t *) malloc(filelen + 1);
    fread(baserom_u8, 1, filelen, baserom);
    fseek(baserom, 0, SEEK_SET);
}

void extract_bin(string k, json &v) {
#ifdef RELEASE
    fmt::print("Extracting {}...\n", k);
#endif
    
    String off = v["offsets"]["us"][0];
    int offset = strtoul(off.c_str(), nullptr, 16);
    String _ = v["meta"]["size"];

    int size = strtoul(_.c_str(), nullptr, 16);


    FILE *f = fopen_mkdir((char *)k.c_str(), (char *)"wb+");

    fseek(baserom, offset, SEEK_SET);

    char *buf = (char *)malloc(size);
    fread(buf, 1, size, baserom);
    fwrite(buf, 1, size, f);
    fclose(f);

    fseek(baserom, 0, SEEK_SET);

    free(buf);
}

enum ImageFormat getFormatFromFilename(const char* path, const char *dotPtr)
{
    const char *formatDotPtr; // Pointer to the dot before the format type
    uintptr_t formatLength;

    formatDotPtr = dotPtr - 1;

    while (formatDotPtr > path) { // Search backwards until we get to the start of the string or a .
        if (*formatDotPtr == '.') // If we found a dot, stop searching
            break;
        formatDotPtr--;
    }

    if (formatDotPtr == path) { // If we got to the start of the file path, we didn't find an extension
        return INVALID_FORMAT;
    }

    formatLength = (uintptr_t)dotPtr - (uintptr_t)formatDotPtr - 1;

    for (int curFmt = 0; curFmt < NUM_FORMATS; curFmt++) {
        if (strncmp(imgFormatStrings[curFmt], formatDotPtr + 1, formatLength) == 0) {
            return (enum ImageFormat) curFmt;
        }
    }

    return INVALID_FORMAT;
}

void extract_img(json &j, String k, json &v) {
#ifdef RELEASE
    fmt::print("Extracting {}...\n", k);
#endif
    const char *path = k.c_str();
    char *curAssetDotPtr = strrchr((char *)path, '.');
    mkpath((char *)path, 0777);

    uint32_t offset = 0;

    String o = v["offsets"]["us"][0];
    offset = strtoul(o.c_str(), NULL, 16);

    int width, height;
    uint32_t pal_rom;
    void *image = nullptr;

    if (v["meta"].contains("dims")) {
        width = v["meta"]["dims"][0];
        height = v["meta"]["dims"][1];

        if (v["meta"].contains("pal")) {
            String p = v["meta"]["pal"][0];
            char *pal_str = (char *) p.c_str();
            uint32_t tmp;

            if (!Str_contains(p, (char *)"0x")) {
                // assume palette is instead a valid key in the json
                p = j[pal_str]["offsets"]["us"][0];
                
                tmp = strtoul(p.c_str(), NULL, 16);
                if (tmp == 0) {
                    fmt::print(stderr, "Palette not valid! {}\n", pal_str);
                    exit(1);
                }
                // fmt::print("palette relocation to {:X} based on {}\n", tmp, p);
            } else {
                tmp = strtoul(pal_str, NULL, 16);
            }
            pal_rom = tmp;
            // fmt::print("palette at {:X} for {}\n", pal_rom, k);
        }
    }

    switch (getFormatFromFilename(k.c_str(), curAssetDotPtr)) {
        case RGBA32:
            image = raw2rgba(&baserom_u8[offset], width, height, 32);
            rgba2png(path, (rgba *) image, width, height);
            break;
        case RGBA16:
            image = raw2rgba(&baserom_u8[offset], width, height, 16);
            rgba2png(path, (rgba *) image, width, height);
            break;
        case YUV16:
            fmt::print(stderr, "YUV textures are unsupported: {}\n", k);
            break;
        case IA16:
            image = raw2ia(&baserom_u8[offset], width, height, 16);
            ia2png(path, (const ia *) image, width, height);
            break;
        case CI8:
            image = rawci2rgba(&baserom_u8[offset], &baserom_u8[pal_rom], width, height, 8);
            rgba2png(path, (rgba *) image, width, height);
            break;
        case I8:
            image = raw2i(&baserom_u8[offset], width, height, 8);
            ia2png(path, (const ia *) image, width, height);
            break;
        case IA8:
            image = raw2ia(&baserom_u8[offset], width, height, 8);
            ia2png(path, (const ia *) image, width, height);
            break;
        case CI4:
            image = rawci2rgba(&baserom_u8[offset], &baserom_u8[pal_rom], width, height, 4);
            rgba2png(path, (rgba *) image, width, height);
            break;
        case I4:
            image = raw2i(&baserom_u8[offset], width, height, 4);
            ia2png(path, (const ia *) image, width, height);
            break;
        case IA4:
            image = raw2ia(&baserom_u8[offset], width, height, 4);
            ia2png(path, (const ia *) image, width, height);
            break;
        default:
            fmt::print(stderr, "Unknown format for asset: {}\n", k);
            break;
    }

    if (image != nullptr) {
        free(image);
    }
}

int main(int argc, char **argv) {
    if (argc == 2) {
        if (strcmp(argv[1], "--clean") == 0) {
            ifstream i("assets.json");
            json j;
            i >> j;
            i.close();

            #pragma omp task
            for (auto& [key, value] : j.items()) {
                fs::path p = key;

                fs::remove(p);
            }

            return 0;
        }
    } else if (argc != 2) {
        fmt::print("usage: {} (baserom path)\n", argv[0]);
        fmt::print("OR:    {} --clean\n", argv[0]);
        return 1;
    }
    init_baserom(argv[1]);
    fmt::print("baserom opened: {:X}{:X}{:X}{:X}\n",
        baserom_u8[0],
        baserom_u8[1],
        baserom_u8[2],
        baserom_u8[3]
    );


    ifstream i("assets_geo.json");
    json geo;
    i >> geo;
    i.close();

    ifstream i2("assets_image.json");
    json pics;
    i2 >> pics;
    i2.close();

    ifstream i3("assets.json");
    json rest;
    i3 >> rest;
    i3.close();




    #pragma omp task
    for (auto& [key, value] : geo.items()) {
        extract_bin(key, value);
    }

    #pragma omp task
    for (auto& [key, value] : pics.items()) {
        fs::path p = key;

        String s = p.extension();

             if (s == ".bin") extract_bin(key, value);
        else if (s == ".png") extract_img(pics, key, value);
    }

    #pragma omp task
    for (auto& [key, value] : rest.items()) {
        extract_bin(key, value);
    }

    fclose(baserom);
    free(baserom_u8);

    return 0;
}



