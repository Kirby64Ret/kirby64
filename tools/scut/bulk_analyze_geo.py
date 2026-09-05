from GeoFromBin import SingleGeo

import sys

bankfile = sys.argv[1]

fl = []

with open(bankfile) as f:
    fl = f.readlines()

curbank = 0
curIndex = 1

for line in fl:
    if "_FILES := \\" in line:
        curbank = int(line.split("_")[2])
        curIndex = 1
    else:
        tokens = line.split()
        if len(tokens) >= 1:
            filename = f"assets/{tokens[0]}"
            bank = curbank
            index = curIndex
            SingleGeo(filename, bank, index)
            index += 1


