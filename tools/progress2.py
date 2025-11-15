#!/usr/bin/env python3

import argparse
import csv
try:
    import git
except Exception as e:
    pass
import os
import re
import glob

TOTAL_SHARDS_IN_KIRBY_64 = 74

parser = argparse.ArgumentParser(description="Computes current progress throughout the whole project.")
parser.add_argument("-m", "--matching", dest='matching', action='store_true',
                    help="Output matching progress instead of decompilation progress")
parser.add_argument("-c", "--csv", dest="csv", action="store_true",
                    help="Output results in CSV format")
parser.add_argument("-v", "--verbose", dest='verbose', action='store_true',
                    help="Verbose debug prints")
args = parser.parse_args()

NON_MATCHING_PATTERN = r"#ifdef\s+NON_MATCHING.*?#else\n#pragma GLOBAL_ASM\s*\(\s*\"(.*?)\"\s*\).*?#endif"
M2C_PATTERN = r"#ifdef\s+MIPS_TO_C.*?#else\n#pragma GLOBAL_ASM\s*\(\s*\"(.*?)\"\s*\).*?#endif"
UNTOUCHED_PATTERN = r"#pragma\s+GLOBAL_ASM\s*\(\s*\"(.*?)\"\s*\)"

def GetNonMatchingFunctions(files):
    functions = []

    for file in files:
        with open(file) as f:
            functions += re.findall(NON_MATCHING_PATTERN, f.read(), re.DOTALL)
            functions += re.findall(UNTOUCHED_PATTERN, f.read(), re.DOTALL)
        if not args.matching:
            with open(file) as f:
                functions += re.findall(M2C_PATTERN, f.read(), re.DOTALL)

    return functions

def ReadAllLines(fileName):
    lineList = list()
    with open(fileName) as f:
        lineList = f.readlines()

    return lineList

def GetFiles(path, ext):
    files = glob.glob(f"{path}/**/*{ext}", recursive=True)
    return files

nonMatchingFunctions = GetNonMatchingFunctions(GetFiles("src", ".c")) if not args.matching else []

def GetNonMatchingSize(path):
    size = 0

    asmFiles = GetFiles(path, ".s")

    for asmFilePath in asmFiles:
        if asmFilePath not in nonMatchingFunctions:
            asmLines = ReadAllLines(asmFilePath)

            for asmLine in asmLines:
                if (asmLine.strip().startswith("/*")):
                    size += 4

    if args.verbose:
        print(f"Found nonmatching asm worth {size} bytes")
    return size


mapFile = ReadAllLines("build/kirby.us.map")
src = 0
code = 0
boot = 0
ovl = 0
asm = 0

for line in mapFile:
    lineSplit =  list(filter(None, line.split(" ")))

    if (len(lineSplit) == 4 and lineSplit[0].startswith(".")):
        section = lineSplit[0]
        size = int(lineSplit[2], 16)
        objFile = lineSplit[3]

        if (section == ".text"):
            if (objFile.startswith("build/src")):
                # if args.verbose: print(f"Found file: {objFile[:-1]} with size: {size}")
                src += size
            if (objFile.startswith("build/libultra.a")):
                # if args.verbose: print(f"Found file: {objFile[:-1]} with size: {size}")
                src += size
            if (objFile.startswith("build/libn_audio.a")):
                # if args.verbose: print(f"Found file: {objFile[:-1]} with size: {size}")
                src += size
            elif objFile.startswith("build/asm"):
                # if args.verbose: print(f"Found file: {objFile[:-1]} with size: {size}")
                asm += size

nonMatchingASM = GetNonMatchingSize("asm/nonmatchings")

src -= nonMatchingASM
asm += nonMatchingASM

if args.verbose:
    print(f"src size: {src} asm size: {asm}")

total_decompilable_code = \
    0x38DF0 + \
    0x22EA0 + \
    0x2DCF0 + \
    0x3F210 + \
    0x8EC0 + \
    0x29860 + \
    0x3CC0 + \
    0x29F50 + \
    0x6C20 + \
    0x4AE50 + \
    0x18210 + \
    0x5920 + \
    0x78C0 + \
    0xA8A0 + \
    0x7CC0 + \
    0xB270 + \
    0x142E0 + \
    0x9CB0 + \
    0x94C0 + \
    0x11120 + \
    0xE0

codeSize = total_decompilable_code 


# Do I go with my approach or oot's?
total = src + asm
total2 = codeSize

if args.verbose:
    print(f"Totals: {total} {total2}")

srcPct = 100 * src / total
asmPct = 100 * asm / total

srcPct2 = 100 * src / total2
asmPct2 = 100 * asm / total2

compiled_bytes = total
bytesPerShard = compiled_bytes / TOTAL_SHARDS_IN_KIRBY_64

adjective = "decompiled" if not args.matching else "matched"

print("------------------------------------")
print(f"{total} total bytes of decompilable code.")
print(f"{src} bytes {adjective} in src.\n")
print(f"         OoT Approach (src + asm): {srcPct}%")
print(f"Kirby64 Approach (pre-calculated): {srcPct2}%\n")
print("------------------------------------")

heartPieces = int(src / bytesPerShard)
rupees = int(((src % bytesPerShard) * 100) / bytesPerShard)

if (rupees > 0):
    print("You have " + str(heartPieces) + "/74 Crystal Shards and " + str(rupees) + " rupee(s).")
else:
    print("You have " + str(heartPieces) + "/74 Crystal Shards.")
print("------------------------------------")