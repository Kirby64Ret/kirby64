
AnimCommand_2int = {
    "ANIM_CMD_END": 0,
    "ANIM_CMD_JUMP": 1,
    "ANIM_CMD_WAIT": 2,
    "ANIM_CMD_SET_VALUE_LAST": 3,
    "ANIM_CMD_SET_VALUE": 4,
    "ANIM_CMD_SET_VALUE_WITH_RATE_LAST": 5,
    "ANIM_CMD_SET_VALUE_WITH_RATE": 6,
    "ANIM_CMD_SET_TARGET_RATE": 7,
    "ANIM_CMD_SET_VALUE_ZERO_RATE_LAST": 8,
    "ANIM_CMD_SET_VALUE_ZERO_RATE": 9,
    "ANIM_CMD_SET_VALUE_AFTER_LAST": 0x0A,
    "ANIM_CMD_SET_VALUE_AFTER": 0x0B,
    "ANIM_CMD_12": 0x0C,
    "ANIM_CMD_13": 0x0D,
    "ANIM_CMD_SET_ANIMATION": 0x0E,
    "ANIM_CMD_SET_FLAGS": 0x0F,
    "ANIM_CMD_16": 0x10,
    "ANIM_CMD_17": 0x11,
    "ANIM_CMD_SET_EXTRA_VALUE_AFTER_LAST": 0x12,
    "ANIM_CMD_SET_EXTRA_VALUE_AFTER": 0x13,
    "ANIM_CMD_SET_EXTRA_VALUE_LAST": 0x14,
    "ANIM_CMD_SET_EXTRA_VALUE": 0x15,
    "ANIM_CMD_22": 0x16,
    "ANIM_CMD_SET_CLIP_PLANES": 0x17,
}

int_2AnimCommand = {value: key for key, value in AnimCommand_2int.items()}

AnimCommand_numwords = {
    "ANIM_CMD_SET_VALUE_ZERO_RATE_LAST": lambda mask: 1 + mask.bit_count(),
    "ANIM_CMD_SET_VALUE_ZERO_RATE":      lambda mask: 1 + mask.bit_count(),
    "ANIM_CMD_SET_VALUE_LAST":           lambda mask: 1 + mask.bit_count(),
    "ANIM_CMD_SET_VALUE":                lambda mask: 1 + mask.bit_count(),
    "ANIM_CMD_SET_VALUE_WITH_RATE_LAST": lambda mask: 1 + 2 * mask.bit_count(),
    "ANIM_CMD_SET_VALUE_WITH_RATE":      lambda mask: 1 + 2 * mask.bit_count(),
    "ANIM_CMD_SET_TARGET_RATE":          lambda mask: 1 + mask.bit_count(),
    "ANIM_CMD_WAIT":                     lambda mask: 1,
    "ANIM_CMD_SET_VALUE_AFTER_LAST":     lambda mask: 1 + mask.bit_count(),
    "ANIM_CMD_SET_VALUE_AFTER":          lambda mask: 1 + mask.bit_count(),
    "ANIM_CMD_SET_ANIMATION":            lambda mask: 1,
    "ANIM_CMD_JUMP":                     lambda mask: 1,
    "ANIM_CMD_12":                       lambda mask: 1,
    "ANIM_CMD_13":                       lambda mask: 1 + ((mask >> 3) & 1) + ((mask >> 7) & 1),
    "ANIM_CMD_END":                      lambda mask: 1,
    "ANIM_CMD_SET_CLIP_PLANES":          lambda mask: 3,
}


import sys, os, struct

romstart = int(sys.argv[1], 16)
romend = int(sys.argv[2], 16)
fb = []

with open("baserom.us.z64", "rb") as f:
    f.seek(romstart)
    fb=f.read(romend - romstart)

formatselect = 0

camanim_params = {
    0: "ANIM_PARAM_CAMERA_XEYE",
    1: "ANIM_PARAM_CAMERA_YEYE",
    2: "ANIM_PARAM_CAMERA_ZEYE",
    3: "ANIM_PARAM_CAMERA_28",
    4: "ANIM_PARAM_CAMERA_XAT",
    5: "ANIM_PARAM_CAMERA_YAT",
    6: "ANIM_PARAM_CAMERA_ZAT",
    7: "ANIM_PARAM_CAMERA_32",
    8: "ANIM_PARAM_CAMERA_ROLL",
    9: "ANIM_PARAM_CAMERA_FOVY",
}

i = 0
while i < len(fb):
    word = struct.unpack_from(">L", fb, offset=i)[0]
    # print(f"    {hex(word)}")
    cmdname = int_2AnimCommand[word >> 25]
    bitmask = (word >> 15) & 0x3FF

    print(f"{{{cmdname}, CAMERA_PARAMS(", end='')
    params = [param for bit, param in camanim_params.items() if bitmask & (1 << bit)]

    tmp_i = i + 4

    for param in params:
        print(f"{param}")
        tmp_i += 4

    old_i = i
    i += AnimCommand_numwords[cmdname](bitmask) * 4

    # print(f"    SEEK {hex(romstart + old_i)} -> {hex(romstart + i)} ({AnimCommand_numwords[cmdname](bitmask)} words)")


