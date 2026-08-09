#!/bin/sh
# Compile the C++ side of the port: src/pc/pc_backend_lus.cpp.
#
# It is compiled here rather than by Makefile.pc because it is the ONLY C++
# translation unit in the tree and it needs a completely different include
# path from everything else -- libultraship's headers instead of the game's,
# for the reason spelled out at the top of the file (both define u8, size_t,
# OSContPad and Gfx, and they cannot meet).
set -e
cd /home/user/kirby64_decomp

LUS_BUILD=${LUS_BUILD:-/workspace/lus-build}

if [ ! -f "$LUS_BUILD/src/libultraship.a" ]; then
    echo "libultraship is not built at $LUS_BUILD -- run tools/pc/build_lus.sh" >&2
    exit 1
fi

mkdir -p build/pc/src/pc

SRC=src/pc/pc_backend_lus.cpp
OBJ=build/pc/lus_backend.o

if [ "$SRC" -nt "$OBJ" ] || [ ! -f "$OBJ" ]; then
    # shellcheck disable=SC2046
    g++ -m64 -fno-pie -g -O1 -w $(sh tools/pc/lus_flags.sh --cflags) -c "$SRC" -o "$OBJ"
    echo "compiled $SRC"
fi
