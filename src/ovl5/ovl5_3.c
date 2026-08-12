#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/util.h"
#include "ovl1/track.h"
#include "main/object_helpers.h"
#include "main/contpad.h"

extern s32 D_8018E2A0_ovl5[];
extern s32 D_8018E268_ovl5[];
extern u8 D_8018E298_ovl5;
extern s32 D_8018736C_ovl5[];
void play_music(s32, s32);
void func_800A9F98(s32, f32);
extern u8 D_8018E3C0_ovl5[];
extern u8 D_8018E3C1_ovl5;
extern u8 D_8018E3C2_ovl5;
extern u8 D_8018E3C3_ovl5;
extern f32 D_8018D6A8_ovl5;
extern u8 D_8018E424_ovl5;

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_3/func_80165440_ovl5.s")

void func_80165610_ovl5(void) {
    play_music(0, 0x19);
}

/* Faithful, not byte-exact (8/164). Frame, locals, both struct-copy
   prologues, the 2x-unrolled init loop and the whole tail are exact; the
   only residue is that IDO hoists the `lui %hi(D_800D7178 + 0x40)` to the
   head of the address-materialisation block where the ROM emits it last,
   next to its own `lw`. Swept: statement order, declaration order and
   count, chained stores, one-line collapse, volatile, and five spellings
   of the D_800D7178 access. */
#ifdef NON_MATCHING
typedef struct Unk4Ptrs5_3 {
    s32 *unk0[4];
} Unk4Ptrs5_3;

typedef struct Unk4Ints5_3 {
    s32 unk0[4];
} Unk4Ints5_3;

typedef struct Unk8Bytes5_3 {
    s32 unk0;
    s32 unk4;
} Unk8Bytes5_3;

extern Unk4Ptrs5_3 D_801869BC_ovl5;
extern Unk4Ptrs5_3 D_801869CC_ovl5;
extern Unk4Ptrs5_3 D_801869DC_ovl5;
extern Unk4Ints5_3 D_801869EC_ovl5;
extern s32 D_8018E260_ovl5;
extern s32 D_8018E264_ovl5;
extern s32 D_8018E288_ovl5[];
extern Unk8Bytes5_3 D_8018E3A0_ovl5[];
extern u8 D_8018E3C4_ovl5;
extern u8 D_8018E3C8_ovl5[];
extern s32 D_8018E420_ovl5;
extern s32 D_8018E428_ovl5[];
extern u8 D_8018E438_ovl5;
extern u8 D_8018E441_ovl5;

void func_80165634_ovl5(void) {
    extern s32 D_800D7178[];
    extern u8 D_8018E425_ovl5;
    s32 i;
    s32 temp;
    s32 pad;
    Unk4Ptrs5_3 sp6C = D_801869BC_ovl5;
    Unk4Ptrs5_3 sp5C = D_801869CC_ovl5;
    Unk4Ptrs5_3 sp4C = D_801869DC_ovl5;
    Unk4Ints5_3 sp3C = D_801869EC_ovl5;
    s32 pad2;
    s32 pad3;

    D_8018E260_ovl5 = 0;
    D_8018E264_ovl5 = 0;
    temp = D_800D7178[0x10];
    for (i = 0; i != 4; i++) {
        D_8018E268_ovl5[i] = 0;
        D_8018E288_ovl5[i] = 5;
        D_8018E3C0_ovl5[i] = 1;
        D_8018E428_ovl5[i] = 0;
        D_8018E3A0_ovl5[i].unk0 = *sp6C.unk0[i];
        D_8018E3A0_ovl5[i].unk4 = *sp5C.unk0[i];
        if (1 == *sp4C.unk0[i]) {
            D_8018E3C8_ovl5[i] = sp3C.unk0[temp];
        } else {
            D_8018E3C8_ovl5[i] = 0;
        }
    }
    if ((gPlayerControllers[0].buttonHeld & 0xF) && (gPlayerControllers[1].buttonHeld & 0xF) &&
        (gPlayerControllers[2].buttonHeld & 0xF) && (gPlayerControllers[3].buttonHeld & 0xF)) {
        D_8018E441_ovl5 = 1;
    } else {
        D_8018E441_ovl5 = 0;
    }
    D_8018E438_ovl5 = 0;
    D_8018E298_ovl5 = temp;
    D_8018E420_ovl5 = 1;
    D_8018E3C4_ovl5 = 0;
    D_8018E424_ovl5 = D_8018E425_ovl5 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_3/func_80165634_ovl5.s")
#endif

struct DObj *func_801658C4_ovl5(s32 arg0) {
    if (arg0 >= 0x41) {
        return 0;
    }
    return D_800DE350[D_8018E2A0_ovl5[arg0]]->data.dobj;
}

s32 func_80165900_ovl5(s32 arg0) {
    if (gEntitiesNextPosYArray[D_8018E2A0_ovl5[arg0]] < 0.0f) {
        return 0;
    }
    return 1;
}

s32 func_80165948_ovl5(s32 arg0) {
    return D_800E98E0[D_8018E2A0_ovl5[arg0]];
}

Vector *func_8016596C_ovl5(Vector *arg0, s32 arg1) {
    Vector sp4;

    sp4.x = gEntitiesNextPosXArray[D_8018E2A0_ovl5[arg1]];
    sp4.y = gEntitiesNextPosYArray[D_8018E2A0_ovl5[arg1]];
    sp4.z = gEntitiesNextPosZArray[D_8018E2A0_ovl5[arg1]];
    *arg0 = sp4;
    return arg0;
}

Vector *func_801659DC_ovl5(Vector *arg0, s32 arg1) {
    Vector sp4;

    sp4.x = gEntitiesNextPosXArray[D_8018E268_ovl5[arg1]];
    sp4.y = gEntitiesNextPosYArray[D_8018E268_ovl5[arg1]];
    sp4.z = gEntitiesNextPosZArray[D_8018E268_ovl5[arg1]];
    *arg0 = sp4;
    return arg0;
}

s32 func_80165A4C_ovl5(s32 arg0) {
    s32 count = 0;
    s32 i;

    for (i = 0; i < 4; i++) {
        if ((D_8018E3C0_ovl5[i] != 0) && (arg0 != i)) {
            count++;
        }
    }
    return count;
}

s32 func_80165AD0_ovl5(s32 arg0) {
    f32 v = gEntitiesAngleYArray[D_8018E268_ovl5[arg0]] / D_8018D6A8_ovl5 * 180.0f;

    if (v == 0.0f) {
        return 0;
    }
    if (v == 90.0f) {
        return 2;
    }
    if (v == 180.0f) {
        return 1;
    }
    if (v == 270.0f) {
        return 3;
    }
}

extern u8 D_8018E425_ovl5;

s32 func_80165B84_ovl5(s32 arg0, s32 arg1) {
    if (((arg1 == 0) && (arg0 >= 0x38) && (arg0 < 0x40)) || ((arg1 == 1) && (arg0 >= 0) && (arg0 < 8)) || ((arg1 == 3) && !(arg0 % 8)) || ((arg1 == 2) && !((arg0 + 1) % 8))) {
        return 1;
    }
    if ((D_8018E424_ovl5 == 2) && (((arg1 == 0) && (arg0 >= 0x30) && (arg0 < 0x38)) || ((arg1 == 1) && (arg0 >= 8) && (arg0 < 0x10)) || ((arg1 == 3) && !((arg0 + 7) % 8)) || ((arg1 == 2) && !((arg0 + 2) % 8)))) {
        return 1;
    }
    if ((D_8018E425_ovl5 == 2) && (((arg1 == 0) && (arg0 >= 0x28) && (arg0 < 0x30)) || ((arg1 == 1) && (arg0 >= 0x10) && (arg0 < 0x18)) || ((arg1 == 3) && !((arg0 + 6) % 8)) || ((arg1 == 2) && !((arg0 + 3) % 8)))) {
        return 1;
    }
    return 0;
}

s32 func_80165D30_ovl5(s32 arg0) {
    s32 r;
    s32 r2;

    if (((arg0 >= 0x38) && (arg0 < 0x40)) || ((arg0 >= 0) && (arg0 < 8))) {
        goto retA;
    }
    r = arg0 % 8;
    if (!r) {
        goto retA;
    }
    r2 = (arg0 + 1) % 8;
    if (!r2) {
retA:
        return 1;
    }
    if (D_8018E424_ovl5 == 2) {
        if (((arg0 >= 0x30) && (arg0 < 0x38)) || ((arg0 >= 8) && (arg0 < 0x10))) {
            goto retB;
        }
        r = (arg0 + 7) % 8;
        if (!r) {
            goto retB;
        }
        r2 = (arg0 + 2) % 8;
        if (!r2) {
retB:
            return 1;
        }
    }
    return 0;
}

s32 func_80165E14_ovl5(s32 arg0, f32 arg1) {
    Vector sp1C;

    func_800B2340(&sp1C, func_801658C4_ovl5(arg0), D_8018E2A0_ovl5[arg0]);
    if ((sp1C.x - 150.0f <= arg1) && (arg1 <= sp1C.x + 150.0f)) {
        return 1;
    }
    return 0;
}

s32 func_80165E98_ovl5(s32 arg0, f32 arg1) {
    Vector sp1C;

    func_800B2340(&sp1C, func_801658C4_ovl5(arg0), D_8018E2A0_ovl5[arg0]);
    if ((sp1C.z - 150.0f <= arg1) && (arg1 <= sp1C.z + 150.0f)) {
        return 1;
    }
    return 0;
}

s32 func_80165F1C_ovl5(s32 arg0) {
    Vector sp24;
    s32 i;

    func_801659DC_ovl5(&sp24, arg0);
    for (i = 0; i != 8; i++) {
        if (func_80165E14_ovl5(i, sp24.x) != 0) {
            break;
        }
    }
    if (i == 8) {
        return 0x29A;
    }
    for (; i < 0x40; i += 8) {
        if (func_80165E98_ovl5(i, sp24.z) != 0) {
            return i;
        }
    }
    return 0x29A;
}

s32 func_80165FB8_ovl5(s32 arg0) {
    Vector sp24;
    s32 i;

    func_801659DC_ovl5(&sp24, arg0);
    for (i = 0; i != 8; i++) {
        if (func_80165E14_ovl5(i, sp24.x) != 0) {
            break;
        }
    }
    if (i == 8) {
        return 0x29A;
    }
    for (; i < 0x40; i += 8) {
        if (func_80165E98_ovl5(i, sp24.z) != 0) {
            return i;
        }
    }
    return 0x29A;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_3/func_80166054_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_3/func_8016626C_ovl5.s")

void func_8016689C_ovl5(GObj *arg0) {
    func_800A9F98(D_8018736C_ovl5[D_8018E298_ovl5], 5.0f);
    curObjSleepForever();
}

