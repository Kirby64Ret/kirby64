#!/bin/bash
# apply -> compile -> CHEAP TU-size gate -> relink -> ground-truth gate
S="$(dirname "$0")"
cf="$1"
python3 tools/decomp/apply_rodata_subs.py "$cf" || exit 1
find src -name '*.asmproc.d' -delete 2>/dev/null
rm -f "build/${cf%.c}.o"
if ! make "build/${cf%.c}.o" >/dev/null 2>&1; then
  echo "  compile FAILED -> revert"; git checkout "$cf"; exit 1
fi
sz=$(python3 tools/decomp/check_tu_size.py 2>/dev/null | grep -F "$cf")
if [ -n "$sz" ]; then
  echo "  TU SIZE CHANGED: $sz -> revert (no relink needed)"; git checkout "$cf"; exit 1
fi
make -j8 >/dev/null 2>&1
r=$(python3 tools/decomp/verify_rom.py 2>/dev/null | tail -1)
echo "  $r"
if echo "$r" | grep -q '0 are REAL defects'; then echo "  KEEP"; else echo "  REVERT"; git checkout "$cf"; fi
