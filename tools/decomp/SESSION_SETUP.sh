#!/bin/bash
# Bring a fresh container to a verified-green tree.
# Fail-loud and idempotent. CPU work, not token work — run it, read the last
# line, move on. Requires baserom.us.z64 at the repo root (user-provided; it
# is gitignored and must never be committed).
set -e
cd "$(dirname "$0")/../.." || exit 1

EXPECTED=6cea2d46b929a3bb347b060a77fccc83526fb855

echo "== [0/7] baserom =="
if [ ! -f baserom.us.z64 ]; then
    echo "FATAL: baserom.us.z64 missing at repo root. Ask the user for it. No fallback." >&2
    exit 1
fi
got=$(sha1sum baserom.us.z64 | cut -c1-40)
if [ "$got" != "$EXPECTED" ]; then
    echo "FATAL: baserom sha1 $got != $EXPECTED (wrong dump/region)." >&2
    exit 1
fi

echo "== [1/7] submodules + MIPS binutils =="
git submodule update --init --recursive
if ! command -v mips-linux-gnu-as >/dev/null; then
    apt-get update -qq && apt-get install -y -qq binutils-mips-linux-gnu gcc-mips-linux-gnu
fi

echo "== [2/7] python venv (project needs >=3.14; uv downloads it if absent) =="
command -v uv >/dev/null || { echo "FATAL: uv not on PATH" >&2; exit 1; }
uv python install 3.14
[ -d .venv ] || { uv venv --clear && uv sync; }

echo "== [2b/7] qemu-irix (libreultra's assembler runs IRIX binaries) =="
if ! command -v qemu-irix >/dev/null; then
    wget -q https://github.com/n64decomp/qemu-irix/releases/download/v2.11-deb/qemu-irix-2.11.0-2169-g32ab296eef_amd64.deb \
        -O /tmp/qemu-irix.deb
    dpkg -i /tmp/qemu-irix.deb
fi

echo "== [3/7] libreultra + tools =="
make -C libreultra BUILD_DIR=../build VERSION= >/dev/null
make -C libreultra naudio BUILD_DIR=../build VERSION= >/dev/null
make -C tools >/dev/null 2>&1 || make -C tools

echo "== [4/7] asset extraction =="
[ -d assets/image ] || tools/extract_assets baserom.us.z64

echo "== [5/7] splat split =="
if [ ! -d asm/nonmatchings ] || [ kirby64.yaml -nt build/kirby.ld ]; then
    uv run splat split kirby64.yaml
fi

echo "== [6/7] full build via mk.sh (serialised, source-hashed) =="
bash tools/decomp/mk.sh 2>&1 | tee /tmp/setup_build.log | tail -3
if grep -q 'error:' /tmp/setup_build.log; then
    echo "FATAL: compile errors above — do not trust any hash." >&2
    exit 1
fi
built=$(sha1sum build/kirby.us.z64 | cut -c1-40)
if [ "$built" != "$EXPECTED" ]; then
    echo "FATAL: built ROM $built != base. Tree is red; fix before any lane launches." >&2
    exit 1
fi

echo "== [6b/7] decomp-permuter (third-party; gitignored, so a fresh clone lacks it) =="
if [ ! -f tools/decomp/decomp-permuter/permuter.py ]; then
    rm -rf tools/decomp/decomp-permuter
    git clone --depth 1 https://github.com/simonlindholm/decomp-permuter \
        tools/decomp/decomp-permuter
    uv pip install pycparser toml
fi

echo "== [6c/7] m2c (third-party; gitignored, so a fresh clone lacks it) =="
if [ ! -f tools/decomp/m2c/m2c.py ]; then
    rm -rf tools/decomp/m2c
    git clone --depth 1 https://github.com/matt-kempster/m2c tools/decomp/m2c
fi

echo "== [7/7] SSB64 donor repo =="
if [ ! -d /workspace/vetritheretri/ssb-decomp-re ]; then
    mkdir -p /workspace/vetritheretri
    git clone --depth 1 https://github.com/VetriTheRetri/ssb-decomp-re \
        /workspace/vetritheretri/ssb-decomp-re || \
        echo "WARN: ssb-decomp-re clone failed — Phase 3 donor lane blocked until fixed."
fi

echo "SETUP GREEN: ROM byte-exact. Record port baseline next:"
echo "  make -f Makefile.pc gap | tail -1"
