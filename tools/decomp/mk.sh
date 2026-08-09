#!/bin/sh
# Serialised build. Several agents share one working tree, and two `make`
# processes writing the same object produced a genuinely corrupt .o last wave:
#   bad reloc symbol index (0x80805 >= 0x254) for offset 0x8080808
# which then looks like a decompilation defect and costs an hour to chase.
#
# Use this instead of calling make directly. It waits for the lock rather than
# failing, so a queued build just takes longer.
#
# Usage: tools/decomp/mk.sh [make args]     default: -j8
cd /home/user/kirby64_decomp || exit 1
exec flock /tmp/kirby_build.lock make "${@:--j8}"
