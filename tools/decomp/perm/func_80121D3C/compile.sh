#!/bin/bash
cd /home/user/kirby64_decomp && tools/ido-7.1recomp/cc -c -Wab,-r4300_mul -non_shared -G0 -Xcpluscomm -Xfullwarn -signed -D_LANGUAGE_C -D_FINALROM -O2 -nostdinc -Iinclude/libc -DTARGET_N64 -DF3DEX_GBI_2 -Iinclude -Ilibreultra/include/2.0I -Ibuild -Ibuild/include -Ibuild/assets -Isrc -Isrc.old -I. -mips2 -32 -woff 624,568 "$@"
