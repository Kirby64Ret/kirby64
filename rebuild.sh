#!/bin/bash

set -e

rm -rf asm
./splat/split.py kirby64.yaml
cp entry.s asm/
make -j16
