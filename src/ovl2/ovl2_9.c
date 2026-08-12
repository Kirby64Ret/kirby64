#include "common.h"
#include "Player.h"
#include "track_arrays.h"

void func_80110138(s32, s32, s32, s32);

extern s32 D_8012D580;
extern s32 D_8012D190;
extern s32 D_801249B0;
extern s32 D_8012D0C0;
extern s32 D_8012CF28;
extern s32 D_8012D0C4;
extern s32 D_801249A0;
extern s32 D_8012D584;
extern s32 D_8012D588;
extern s32 D_8012D58C;
extern s32 D_8012D918;
extern u32 D_8012D924;
extern u16 D_8012E828;

struct UnkStruct8011145C_A {
    s32 unk0;
    u16 unk4;
    u8 pad6[6];
    u8 unkC;
    u8 padD[3];
    s32 unk10;
    s32 unk14;
    s32 unk18;
};

struct UnkStruct80110438_C {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 pad4[4];
    s32 unk8;
    s32 unkC;
    f32 unk10;
    f32 unk14;
    f32 unk18;
};

struct UnkStruct8011145C_B {
    s32 unk0;
    f32 unk4;
    u8 unk8;
    u8 unk9;
    u8 padA[2];
    s32 unkC;
    s32 unk10;
    s32 unk14;
};

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_9/func_80110150.s")

s32 func_801103C4(s32 arg0) {
    if ((arg0 != -1) && (arg0 < 4)) {
        if ((D_800E7CE0[arg0] != 0) || (gKirbyState.action == 0x16) || (gKirbyState.unk68 == 1) ||
            (gKirbyState.unk68 == 2)) {
            return 1;
        }
        return 0;
    }
    return -1;
}

#ifdef NON_MATCHING
/* Left live by a lane mid-work, at 12/108 insns. Draft kept. */
void func_80110438(struct UnkStruct8011145C_A *arg0, struct UnkStruct8011145C_B *arg1,
                   struct UnkStruct80110438_C *arg2) {
    s32 idx;
    s32 id;

    id = arg1->unk0;
    idx = arg0->unk0;
    if (arg1->unk10 & 0x40000000) {
        return;
    }
    if (idx == -1) {
        arg2->unk2 = 2;
        arg2->unk3 = arg1->unkC;
        arg2->unk8 = arg1->unk14;
        return;
    }
    if (id != -1) {
        if ((arg0->unk10 & 0x80000000) || (D_800E7CE0[idx] != 0)) {
            arg2->unk2 = 0;
            return;
        }
    }
    if (arg0->unk10 & 1) {
        arg2->unk2 = 6;
    } else if (arg0->unk10 & 0x20000000) {
        arg2->unk2 = 2;
    }
    if (arg2->unk2 != 0) {
        if (arg0->unk10 & 0x10000000) {
            arg2->unk2 = 0;
        }
        return;
    }
    if ((D_8012E828 == 1) || (D_8012E828 == 2)) {
        arg2->unk2 = 1;
        D_800E7B20[idx] = 0.0f;
        return;
    }
    arg2->unk3 = arg1->unkC;
    if (!(arg0->unk10 & 0x08000000)) {
        D_800E7B20[idx] -= arg1->unk4;
    }
    if (D_800E7B20[idx] <= 0.0f) {
        arg2->unk2 = 1;
        D_800E7B20[idx] = 0.0f;
        return;
    }
    arg2->unk2 = 2;
    if (!(arg0->unk10 & 0x08000000)) {
        if (D_800DD710[idx] == 0x17) {
            D_800E7CE0[idx] = 0xF;
        } else {
            D_800E7CE0[idx] = 0x2D;
        }
    } else {
        D_800E7CE0[idx] = 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_9/func_80110438.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_9/func_801105E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_9/func_80110B00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_9/func_80110CCC.s")

void func_80110E94(struct UnkStruct8011145C_A *arg0, struct UnkStruct8011145C_B *arg1) {
    s32 idx;
    s32 id;
    s32 flags;

    idx = arg1->unk0;
    id = arg0->unk0;
    if (!(arg0->unk4 & 6)) {
        if (idx != -1) {
            flags = arg0->unk14;
            if (!(flags & 0x40000000)) {
                if (!(arg1->unk10 & 0x80000000)) {
                    if (arg1->unkC == 0xA) {
                        if (D_800DD710[id] != 0x17) {
                            D_800E83E0[idx] = 6;
                            return;
                        }
                    }
                    switch (arg1->unk9) {
                    case 1:
                        if ((flags & 1) || (flags & 0x80000000)) {
                            D_800E83E0[idx] = 6;
                            return;
                        }
                        break;
                    case 2:
                        if ((flags & 2) || (flags & 0x80000000)) {
                            D_800E83E0[idx] = 6;
                            return;
                        }
                        break;
                    case 3:
                        if ((flags & 4) || (flags & 0x80000000)) {
                            D_800E83E0[idx] = 6;
                            return;
                        }
                        break;
                    }
                    D_800E83E0[idx] = (arg0->unkC << 16) + 2;
                }
            }
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_9/func_80110FD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_9/func_80111184.s")

// The bit tests are load-bearing: `x & 0x80000000` in a boolean context gives
// IDO's `sll rd, rt, 0` + `bltz` pair, while `x >= 0` gives a bare `bltz`; and
// `sign` has to be its own local so the mask lands in a register (`and`) rather
// than folding into another sign test.
void func_8011145C(struct UnkStruct8011145C_A *arg0, struct UnkStruct8011145C_B *arg1) {
    s32 idx;
    s32 flags;
    s32 sign;

    idx = arg1->unk0;
    if (!(arg1->unk10 & 0x80000000)) {
        flags = arg0->unk18;
        if (!(flags & 0x40000000)) {
            sign = flags & 0x80000000;
            if (!(arg0->unk4 & 6)) {
                if (sign || (flags & 0x78)) {
                    D_800E83E0[idx] = 6;
                } else {
                    D_800E83E0[idx] = (arg0->unkC << 16) + 2;
                }
            }
        }
    }
}

void func_801114E0(void) {
    D_8012D580 = D_8012D0C0 = 0x50;
    D_8012D584 = D_8012D588 = D_8012D58C = 0;
    D_8012D918 = 0;
    D_8012D924 = 0xFF800080;
}

void func_80111534(s32 arg0) {
    D_8012D580 = arg0;
    D_8012D190 = 0;
    D_801249B0 = 0;
}

void func_80111550(s32 arg0) {
    D_8012D0C0 = arg0;
    D_8012CF28 = 0;
    D_8012D0C4 = 0;
    D_801249A0 = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_9/func_80111574.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_9/func_801117BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_9/func_80111A04.s")

void func_80111C4C(s32 *arg0) {
    if (arg0 != NULL) {
        func_80110138(arg0[0], arg0[6], arg0[7], arg0[8]);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_9/func_80111C88.s")

void func_80111ECC(s32 *arg0) {
    if (arg0 != NULL) {
        func_80110138(arg0[0], arg0[7], arg0[8], arg0[9]);
    }
}
