#!/bin/bash

# set -e

rm -rf asm
uv run splat split kirby64.yaml
# cp entry.s asm/
make -j12

