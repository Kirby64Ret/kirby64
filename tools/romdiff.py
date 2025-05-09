import struct, yaml

base = "baserom.us.z64"
wide = "/home/faris/kwidescreen.z64"

bb = []
wwb = []

with open(base, "rb") as f:
    bb = f.read()

with open(wide, "rb") as f:
    wwb = f.read()

bb = [int.from_bytes(bb[i:i+4]) for i in range(len(bb))[::4]]
wwb = [int.from_bytes(wwb[i:i+4]) for i in range(len(wwb))[::4]]

rom = 0
for b, w in zip(bb, wwb):
    if b != w:
        print(f"diff {rom:8X} {b:08X} {w:08X}")
        if b > 0x1000000 and not (b & 0xFF000000 == 0x80000000) and not (b & 0xFF000000 == 0x3C000000):
            print(f"            ({struct.unpack(">f", b.to_bytes(4, 'big'))[0]} -> {struct.unpack(">f", w.to_bytes(4, 'big'))[0]})")
    rom += 4

