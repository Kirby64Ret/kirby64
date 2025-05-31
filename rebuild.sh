#!/bin/bash

set -e

rm -rf asm
rm -rf src/main/code_*
rm -rf src/ovl1/code_*
rm -rf src/ovl2/code_*
rm -rf src/ovl3/code_*
rm -rf src/ovl4/code_*
rm -rf src/ovl5/code_*
rm -rf src/ovl6/code_*
rm -rf src/ovl7/code_*
rm -rf src/ovl8/code_*
rm -rf src/ovl9/code_*
rm -rf src/ovl10/code_*
rm -rf src/ovl11/code_*
rm -rf src/ovl12/code_*
rm -rf src/ovl13/code_*
rm -rf src/ovl14/code_*
rm -rf src/ovl15/code_*
rm -rf src/ovl16/code_*
rm -rf src/ovl17/code_*
rm -rf src/ovl18/code_*
rm -rf src/ovl19/code_*
splat split kirby64.yaml
# cp entry.s asm/
make -j$(nproc)

