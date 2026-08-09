#!/bin/sh
# Link the native binary and say where it stops.
#
# The value of this is that it works TODAY, with ~1000 functions still
# undecompiled. Every missing symbol gets a weak abort-on-call stub, so the
# link succeeds and the binary runs until it reaches something genuinely
# absent -- and then names it. The first symbol a real run hits is evidence
# about what the game calls at startup, which is worth more than reading the
# symbol table.
#
# Weak stubs mean a real definition always wins, so nothing here needs
# regenerating in any particular order as functions land.
#
# Usage: tools/pc/link.sh [--run]
#
#   PC_LUS=0   link the null/SDL backend only (no libultraship, no renderer).
#              The default is PC_LUS=1: libultraship is linked in and the
#              display list reaches Fast3D.
set -e
cd /home/user/kirby64_decomp

OUT=build/pc/kirby64
# -no-pie is load-bearing, not a preference. See the LOW-MEMORY note in
# src/pc/pc_lowmem.h: game code stores host pointers in 32-bit fields
# (src/main/dma.c casts a void* to u32 before handing it to osEPiStartDma),
# and that truncation is only lossless while every game-visible address fits
# in 32 bits. A no-pie image loads at 0x400000, so all statics do.
CC="gcc -m64 -no-pie -fno-pie"
CXX="g++ -m64 -no-pie -fno-pie"

PC_LUS=${PC_LUS:-1}
LUS_ROOT=${LUS_ROOT:-/workspace/jr3dful/libultraship}
LUS_BUILD=${LUS_BUILD:-/workspace/lus-build}

python3 tools/pc/gen_defsyms.py >/dev/null
python3 tools/pc/gen_stubs.py

$CC -c build/pc/stubs.c    -o build/pc/stubs.o    -w
$CC -c tools/pc/hostmain.c -o build/pc/hostmain.o -w

# ---------------------------------------------------------------------------
# libreultra objects are reused whole-translation-unit, and the decompilation
# keeps landing functions that those same TUs define. Statically listing which
# ones to drop (as Makefile.pc used to) goes stale the moment another agent
# matches a function. Ask the linker's question instead: if every global a
# libreultra object defines is already defined by a game object, that object
# has been superseded and is dropped. If only SOME collide the TU is
# half-superseded and there is nothing to do but say so -- that is the
# "granularity of reuse is the translation unit" problem, and it needs a human.
# ---------------------------------------------------------------------------
GAME_OBJS=$(ls build/pc/src/main/*.o build/pc/src/ovl*/*.o build/pc/src/pc/*.o \
               build/pc/data/*.o 2>/dev/null | tr '\n' ' ')
LU_OBJS=$(ls build/pc/src/libreultra/*.o 2>/dev/null | tr '\n' ' ')

if [ -n "$LU_OBJS" ]; then
    # shellcheck disable=SC2086
    nm -g --defined-only $GAME_OBJS 2>/dev/null | awk '$2!="U"{print $3}' \
        | sort -u > build/pc/.gamesyms
    KEEP=""
    for o in $LU_OBJS; do
        nm -g --defined-only "$o" 2>/dev/null \
            | awk '$2!="U"{print $3}' | grep -v '^__x86' | sort -u > build/pc/.lusyms
        n=$(wc -l < build/pc/.lusyms)
        c=$(comm -12 build/pc/.lusyms build/pc/.gamesyms | wc -l)
        if [ "$c" -eq 0 ]; then
            KEEP="$KEEP $o"
        elif [ "$c" -eq "$n" ]; then
            echo "superseded by the decompilation, dropped: $o"
        else
            echo "PARTIAL COLLISION (needs a human): $o -- $c of $n symbols"
            comm -12 build/pc/.lusyms build/pc/.gamesyms | sed 's/^/    /'
        fi
    done
    LU_OBJS="$KEEP"
    rm -f build/pc/.gamesyms build/pc/.lusyms
fi

# defsyms.txt is one `--defsym SYM=BASE+OFF` per line; hand them to the driver
# as -Wl, arguments.
DEFSYMS=$(sed 's/^/-Wl,/; s/ /,/g' build/pc/defsyms.txt | tr '\n' ' ')

if [ "$PC_LUS" = "1" ]; then
    # The bridge is C++ (libultraship's API is C++), so g++ drives the link.
    sh tools/pc/build_lus_backend.sh
    LUS_LIBS=$(sh tools/pc/lus_flags.sh --libs)
    LD="$CXX"
    LUS_OBJ="build/pc/src/pc/pc_backend_lus.o build/pc/src/pc/fast3d_bridge.o"
else
    LUS_LIBS=""
    LD="$CC"
    LUS_OBJ=""
fi

# shellcheck disable=SC2086
$LD -o "$OUT" $GAME_OBJS $LU_OBJS $LUS_OBJ \
    build/pc/stubs.o build/pc/hostmain.o $DEFSYMS -lm $LUS_LIBS

echo "linked $OUT ($(stat -c%s "$OUT") bytes)"

if [ "$1" = "--run" ]; then
    echo "--- running ---"
    timeout 30 "$OUT" || true
fi
