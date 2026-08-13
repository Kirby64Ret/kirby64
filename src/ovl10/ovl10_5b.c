/* Second translation unit of the original ovl10_5.c, split at 0x1E0D30.
 *
 * func_801F11A8_ovl10 and func_801F2098_ovl10 both end in an infinite loop and
 * both have a dead epilogue whose `lw $ra` sits at a rom offset == 16 mod 32.
 * IDO emits a literal `.align 5` after such a loop, so those epilogues are
 * 32-byte aligned from their object's .text base -- impossible while the TU
 * starts at 0x1E0500 (== 0 mod 32). One split satisfies both.
 *
 * Two function starts in range are == 16 mod 32; kirby64.yaml records why this
 * one was chosen and what would tell them apart. Read that note before
 * migrating ovl10_5's rodata, which is the one thing the choice affects.
 *
 * The declarations below are the parent file's, carried over mechanically.
 * Some are unused here; that is deliberate, so the two halves stay diffable
 * against the original single file.
 */
#include "common.h"
#include "GObj.h"
#include "unk_structs/D_800E1B50.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/util.h"

extern u32 D_800BE560[];
extern u8 D_800D6BE0[];
void func_801BE79C_ovl7(void);
extern s32 D_800BE500;
s32 func_800F8560(void);
#include "buffers.h"
void func_801A0880_ovl7(void);
void func_801EFF98_ovl10(void);
void func_800FF200(void *);
s32 func_801F1870_ovl10(void);
extern s32 D_801F4D68_ovl10[];
f32 sqrtf(f32);
extern f32 D_801F4C40_ovl10, D_801F4C44_ovl10, D_801F4C48_ovl10;
extern s32 D_801CA04C_ovl7[];
void func_800B7790(s32);
void func_801EF9B0_ovl10(GObj *);
void func_800AA018(s32);
void ohSleep(s32);

// 98/140 diffs: structure is right, but $v0/$v1 are swapped between the
// omCurrentObj pointer and the objId value throughout. Swept with ZERO effect:
// s32 return type on func_800AA018, ohSleep and func_800B7790 (each applied
// file-wide, --all stayed at 0 diff), `void ohSleep(u8)`, hoisting
// omCurrentObj into a local, and writing `ent` as an assignment instead of a
// declaration initializer (102).

s32 func_801EFFC0_ovl10(void) {
    if (D_800BE500 >= 6) {
        return 0;
    }
    if (func_800F8560() == 3) {
        return 1;
    }
    return 0;
}

void func_801F0014_ovl10(void *arg0) {
    *((u8 *) arg0 + 0x21) = 0;
    *(f32 *) ((u8 *) arg0 + 0x10) = 20.0f;
    *(f32 *) ((u8 *) arg0 + 0x14) = 20.0f;
    *(f32 *) ((u8 *) arg0 + 0x18) = -240.0f;
    func_800FF200(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5b/func_801F0050_ovl10.s")

void func_801F0DD0_ovl10(struct GObj *arg0) {
    if (D_800E9C60[omCurrentObj->objId] == 1) {
        if ((gKirbyController.buttonPressed & 0x8000) != 0) {
            D_800E98E0[omCurrentObj->objId] = 1;
        } else {
            D_800E98E0[omCurrentObj->objId] = 0;
        }
    }
    if (D_800E9C60[omCurrentObj->objId] == 2) {
        if ((gKirbyController.buttonPressed & 0x8000) != 0) {
            D_800E9AA0[omCurrentObj->objId].as_s32 = 1;
        } else {
            D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
        }
    }
    func_800FF200(D_800EA520[omCurrentObj->objId]);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5b/func_801F0EC8_ovl10.s")

extern u8 D_800D6C10;
extern u8 D_800D6C11[];

s32 func_801F111C_ovl10(void) {
    s32 i;

    if (D_800D6C10 == 0) {
        return 0;
    }
    for (i = 0; i < 80; i++) {
        if (D_800D6C11[i] == 0) {
            return 0;
        }
    }
    return 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5b/func_801F11A8_ovl10.s")

/* 1/64.  Was 11/64 with the three constants as `extern f32`; this TU's rodata
   is MIGRATED, and writing them as literals fixed the load scheduling that the
   earlier sweep (a `lim` local at four positions, both operand orders of the
   outer `+` and of the 1.0f compare) could not move.
   The remaining diff is the operand order of the one add: the ROM has
   `add.s $f10, $f0, $f8` ($f0 = v, $f8 = the array load) and IDO emits the two
   the other way round.  Swept since: both source orders (identical output --
   IDO canonicalises this add), a cast on either side, extra parens, a named
   local for the array element, `v +=`, `v = v +`, and the ternary form. */
#ifdef NON_MATCHING
/* 1/64 in place (scan.py's preprocessed copy scores it 4 -- believe the
   in-file number). The single defect is the operand order of one add: the ROM
   has `add.s $f10, $f0, $f8` ($f0 = v, $f8 = the D_800E17D0 load), IDO emits
   the two the other way round. Swept, all identical or worse: both source
   orders (IDO canonicalises this add), the ternary written inline, a named
   local for the array element loaded before the if (36) and after it (18),
   and `v = v + ...; store v;` (10). */
void func_801F1454_ovl10(struct GObj *arg0) {
    f32 v;

    if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
        v = -1.5707964f;
    } else {
        v = 1.5707964f;
    }
    gEntitiesAngleYArray[omCurrentObj->objId] = v + D_800E17D0[omCurrentObj->objId];
    while (6.2831855f <= gEntitiesAngleYArray[omCurrentObj->objId]) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= 6.2831855f;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += 6.2831855f;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5b/func_801F1454_ovl10.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5b/func_801F1554_ovl10.s")

extern s32 D_800D6B98;
extern s32 D_800D6B9C;

s32 func_801F1870_ovl10(void) {
    if (D_800D6B98 != 0) {
        return 4;
    }
    if (func_801F19DC_ovl10(0, 2) == 2) {
        return 4;
    }
    if (func_801F19DC_ovl10(0, 1) == 2 && D_800D6B9C >= 2) {
        return 4;
    }
    if (func_801F19DC_ovl10(0, 1) == 2) {
        return 3;
    }
    if (func_801F19DC_ovl10(0, 0) == 2 && D_800D6B9C > 0) {
        return 3;
    }
    return 2;
}

s32 func_801F1934_ovl10(s32 arg0) {
    switch (func_801F1870_ovl10()) {
    case 1:
        if (arg0 == 0) {
            return 1;
        }
        return 0;
    case 2:
        if (arg0 == 0 || arg0 == 2) {
            return 1;
        }
        return 0;
    case 3:
        if (arg0 != 1) {
            return 1;
        }
        return 0;
    case 4:
        return 1;
    }
    return 0;
}

s32 func_801F19DC_ovl10(s32 arg0, s32 arg1) {
    if (arg1 >= D_800BE560[arg0]) {
        return 0;
    }
    return D_800D6BE0[arg0 * 6 + arg1] & 3;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5b/func_801F1A24_ovl10.s")

/* D_801F4CA8_ovl10 = 0.2f : now emitted by this TU */
extern s32 D_801F4908_ovl10[];
extern s32 D_801F4914_ovl10[];
void func_800A9864(s32, s32, s32);
void func_801F1554_ovl10(GObj *, s32);

void func_801F1CA0_ovl10(GObj *arg0, s32 arg1) {
    s32 idx = arg1 + 1;

    func_800A9864(D_801F4908_ovl10[arg1], 0x2C, 0x10);
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    func_800AA018(D_801F4914_ovl10[idx]);
    func_801F1554_ovl10(arg0, arg1);
    curObjSleepForever();
}

s32 func_801F1D60_ovl10(Vector vec, s32 count, f32 dist) {
    s32 i;

    for (i = 0; i < count; i++) {
        if (sqrtf(((vec.x - gEntitiesNextPosXArray[D_801F4D68_ovl10[i]]) *
                   (vec.x - gEntitiesNextPosXArray[D_801F4D68_ovl10[i]])) +
                  ((vec.z - gEntitiesNextPosZArray[D_801F4D68_ovl10[i]]) *
                   (vec.z - gEntitiesNextPosZArray[D_801F4D68_ovl10[i]]))) < dist) {
            return 1;
        }
    }
    return 0;
}
extern u32 D_801F4D60_ovl10;
/* D_801F4CAC_ovl10 = 3.1415927f : now emitted by this TU */
/* D_801F4CB0_ovl10 = 3.1415927f : now emitted by this TU */
extern s32 random_soft_s32_range(s32);
extern f32 cosf(f32);
extern f32 sinf(f32);

Vector *func_801F1E48_ovl10(Vector *arg0) {
    Vector sp34;
    Vector sp28;
    f32 sp24;
    f32 sp20;

    func_800B2340(&sp34, D_800DFBD0[D_801F4D60_ovl10][5], D_801F4D60_ovl10);
    sp24 = (f32) random_soft_s32_range(7) * 20.0f + 50.0f;
    sp20 = (f32) random_soft_s32_range(0x13) * 5.0f - 45.0f;
    sp28.x = cosf(sp20 * 3.1415927f / 180.0f) * sp24 + sp34.x;
    sp28.y = sp34.y + 20.0f;
    sp28.z = -sinf(sp20 * 3.1415927f / 180.0f) * sp24 + sp34.z;
    *arg0 = sp28;
    return arg0;
}

s32 func_801F1D60_ovl10(Vector, s32, f32);
Vector *func_801F1E48_ovl10(Vector *);

Vector *func_801F1F7C_ovl10(Vector *arg0, s32 arg1) {
    s32 lp0;
    s32 lp1;
    s32 lp2;
    Vector sp58;
    s32 tp0;
    f32 dist;
    s32 i;

    dist = 60.0f;
    i = 0;
    do {
        i++;
        if (i == 50 || i == 100 || i == 150) {
            dist -= 5.0f;
        }
        func_801F1E48_ovl10(&sp58);
    } while (func_801F1D60_ovl10(sp58, arg1, dist) != 0);
    *arg0 = sp58;
    return arg0;
}

s32 func_801F2074_ovl10(s32 arg0) {
    if (arg0 == 4 || arg0 == 5) {
        return 1;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5b/func_801F2098_ovl10.s")

struct Ovl10Pair5b {
    s32 unk0;
    s32 unk4;
};

extern s32 D_801F4938_ovl10[];
extern struct Ovl10Pair5b D_801F4948_ovl10[];
void func_800A7A70(s32, s32, s32);
void func_800AA2C8(s32, s32, s32);

void func_801F25FC_ovl10(GObj *arg0, s32 arg1) {
    Vector sp2C;
    Vector sp20;

    func_800A7A70(3, 0x30014, 0x30015);
    func_800B2340(&sp2C, D_800DE350[0]->data.dobj, 0);
    gEntitiesNextPosXArray[omCurrentObj->objId] = sp2C.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = sp2C.y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = sp2C.z;
    func_800B26D8(&sp20, D_800DE350[0]->data.dobj, 0);
    gEntitiesAngleXArray[omCurrentObj->objId] = sp20.x;
    gEntitiesAngleYArray[omCurrentObj->objId] = sp20.y;
    gEntitiesAngleZArray[omCurrentObj->objId] = sp20.z;
    func_800AA2C8(D_801F4938_ovl10[arg1], 0x1869F, 0x10);
    if ((arg1 + D_801F4948_ovl10)->unk0 != 0) {
        func_800AA018((arg1 + D_801F4948_ovl10)->unk0);
    }
    if ((arg1 + D_801F4948_ovl10)->unk4 != 0) {
        func_800AA018((arg1 + D_801F4948_ovl10)->unk4);
    }
    curObjSleepForever();
}

extern s32 D_801F4968_ovl10;
extern s32 D_801F496C_ovl10;
extern s32 D_801F4970_ovl10;
void func_800A9864(s32, s32, s32);

void func_801F2770_ovl10(struct GObj *arg0) {
    Vector sp2C;
    Vector sp20;

    func_800B2340(&sp2C, D_800DE350[0]->data.dobj, 0);
    gEntitiesNextPosXArray[omCurrentObj->objId] = sp2C.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = sp2C.y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = sp2C.z;
    func_800B26D8(&sp20, D_800DE350[0]->data.dobj, 0);
    gEntitiesAngleXArray[omCurrentObj->objId] = sp20.x;
    gEntitiesAngleYArray[omCurrentObj->objId] = sp20.y;
    gEntitiesAngleZArray[omCurrentObj->objId] = sp20.z;
    func_800A9864(D_801F4968_ovl10, 0x1869F, 0x10);
    if (D_801F496C_ovl10 != 0) {
        func_800AA018(D_801F496C_ovl10);
    }
    if (D_801F4970_ovl10 != 0) {
        func_800AA018(D_801F4970_ovl10);
    }
    curObjSleepForever();
}

void func_801F1A24_ovl10(GObj *, s32, s32);
void func_801F2098_ovl10(GObj *, s32);
void func_801F25FC_ovl10(GObj *, s32);

void func_801F28AC_ovl10(GObj *arg0) {
    s32 kind = D_800E98E0[omCurrentObj->objId];

    switch (kind) {
        case 0:
        case 1:
        case 2:
            func_801F1A24_ovl10(arg0, kind, D_800E9AA0[omCurrentObj->objId].as_s32);
            break;
        case 3:
        case 4:
        case 5:
            func_801F1CA0_ovl10(arg0, kind - 3);
            break;
        case 6:
        case 7:
        case 8:
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
            func_801F2098_ovl10(arg0, kind - 6);
            break;
        case 0xD:
            func_801F25FC_ovl10(arg0, D_800E9AA0[omCurrentObj->objId].as_s32);
            break;
        case 0xE:
            func_801F2770_ovl10(arg0);
            break;
    }
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5b/func_801F2964_ovl10.s")

