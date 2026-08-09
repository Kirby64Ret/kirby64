#!/bin/sh
# Link the native binary and say where it stops.
#
# The value of this is that it works TODAY, with ~1100 functions still
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
set -e
cd /home/user/kirby64_decomp

OUT=build/pc/kirby64
CC="gcc -m32"

python3 tools/pc/gen_defsyms.py >/dev/null
python3 tools/pc/gen_stubs.py

$CC -c build/pc/stubs.c    -o build/pc/stubs.o    -w
$CC -c tools/pc/hostmain.c -o build/pc/hostmain.o -w

# defsyms.txt is one `--defsym SYM=BASE+OFF` per line; hand them to the driver
# as -Wl, arguments.
DEFSYMS=$(sed 's/^/-Wl,/; s/ /,/g' build/pc/defsyms.txt | tr '\n' ' ')

# shellcheck disable=SC2086
$CC -o "$OUT" build/pc/src/*/*.o build/pc/data/*.o \
    build/pc/stubs.o build/pc/hostmain.o $DEFSYMS -lm

echo "linked $OUT ($(stat -c%s "$OUT") bytes)"

if [ "$1" = "--run" ]; then
    echo "--- running ---"
    timeout 30 "$OUT" || true
fi
