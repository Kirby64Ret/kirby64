#!/bin/env python3

import sys, os

# new_sym.py nfNewFunc func_old

newsym = sys.argv[1]
addr = "0x" + sys.argv[2].split("_")[1]
location = newsym[0:2]
if newsym[0:4] == "HS64":
    location = "om"

annotation = "// type:func"
if "D_" in addr:
    annotation = ""


fl = []
with open("tools/symbol_addrs.txt") as f:
    fl = f.readlines()

with open("tools/symbol_addrs.txt", "w+") as f:
    for line in fl:
        if f"// {location}" in line:
            f.write(line)
            f.write(f"{newsym} = {addr}; {annotation}\n")
        else:
            f.write(line)


print(f"./rename_sym.sh {sys.argv[2]} {sys.argv[1]}")
os.system(f"./rename_sym.sh {sys.argv[2]} {sys.argv[1]}")
