import sys, os

romstart = int(sys.argv[1], 16)
romend = int(sys.argv[2], 16)

formats = sys.argv[3:]

import struct

decodes = {
    "f32": ">f",
    "u32": ">L",
}

i = 0

fb = []

with open("baserom.us.z64", "rb") as f:
    f.seek(romstart)
    fb=f.read(romend - romstart)

formatselect = 0

while i < ((romend - romstart) // 4):
    print(struct.unpack_from(decodes[formats[formatselect]], fb, offset=i))
    i += 4
    formatselect += 1
    formatselect %= len(formats)
