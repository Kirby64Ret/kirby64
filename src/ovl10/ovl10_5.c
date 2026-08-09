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

#ifdef MIPS_TO_C
// 98/140 diffs: structure is right, but $v0/$v1 are swapped between the
// omCurrentObj pointer and the objId value throughout.
void func_801EF790_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = func_800B7790;
    D_800E8E60[omCurrentObj->objId] = 1;
    D_800E6A10[omCurrentObj->objId] = D_800E0D50[omCurrentObj->objId];
    ent->unk8C = D_801CA04C_ovl7;
    D_800DF150[omCurrentObj->objId] = func_801EF9B0_ovl10;
    func_800AA018(0x105F9);
    func_800AA018(0x105FA);
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = D_801F4C40_ovl10;
    D_800E3750[omCurrentObj->objId] = D_801F4C44_ovl10;
    D_800E3050[omCurrentObj->objId] = -(gEntitiesNextPosXArray[omCurrentObj->objId] / 60.0f);
    ohSleep(0x3C);
    D_800E98E0[omCurrentObj->objId] = 1;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3050[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = D_801F4C48_ovl10;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId];
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801EF790_ovl10.s")
#endif

void func_801EF9B0_ovl10(GObj *arg0) {
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        func_801A0880_ovl7();
        if (D_800E83E0[omCurrentObj->objId] == 1) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801EFF98_ovl10);
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801EFA38_ovl10.s")

void func_801EFC58_ovl10(GObj *arg0) {
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        func_801A0880_ovl7();
        if (D_800E83E0[omCurrentObj->objId] == 1) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801EFF98_ovl10);
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801EFCE0_ovl10.s")

void func_801EFF10_ovl10(GObj *arg0) {
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        func_801A0880_ovl7();
        if (D_800E83E0[omCurrentObj->objId] == 1) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801EFF98_ovl10);
        }
    }
}

void func_801EFF98_ovl10(void) {
    func_801BE79C_ovl7();
    curObjSleepForever();
}

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F0050_ovl10.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F0EC8_ovl10.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F11A8_ovl10.s")

/* 11/64 diffs, all one shift: the ROM loads D_801F4CA0_ovl10 into $f12 right
   after the if/else, ten instructions earlier than IDO schedules it.  Every
   instruction is otherwise identical.  Swept with no improvement: a `lim`
   local assigned at the declaration (29), before the if (29), after the store
   (23) or declared first (29); both operand orders of the outer float `+`;
   both operand orders of the 1.0f compare. */
#ifdef MIPS_TO_C
extern f32 D_801F4C98_ovl10;
extern f32 D_801F4C9C_ovl10;
extern f32 D_801F4CA0_ovl10;

void func_801F1454_ovl10(struct GObj *arg0) {
    f32 v;

    if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
        v = D_801F4C98_ovl10;
    } else {
        v = D_801F4C9C_ovl10;
    }
    gEntitiesAngleYArray[omCurrentObj->objId] = v + D_800E17D0[omCurrentObj->objId];
    while (D_801F4CA0_ovl10 <= gEntitiesAngleYArray[omCurrentObj->objId]) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= D_801F4CA0_ovl10;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += D_801F4CA0_ovl10;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F1454_ovl10.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F1554_ovl10.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F1A24_ovl10.s")

extern f32 D_801F4CA8_ovl10;
extern s32 D_801F4908_ovl10[];
extern s32 D_801F4914_ovl10[];
void func_800A9864(s32, s32, s32);
void func_801F1554_ovl10(GObj *, s32);

void func_801F1CA0_ovl10(GObj *arg0, s32 arg1) {
    s32 idx = arg1 + 1;

    func_800A9864(D_801F4908_ovl10[arg1], 0x2C, 0x10);
    gEntitiesScaleXArray[omCurrentObj->objId] = D_801F4CA8_ovl10;
    gEntitiesScaleYArray[omCurrentObj->objId] = D_801F4CA8_ovl10;
    gEntitiesScaleZArray[omCurrentObj->objId] = D_801F4CA8_ovl10;
    func_800AA018(D_801F4914_ovl10[idx]);
    func_801F1554_ovl10(arg0, arg1);
    curObjSleepForever();
}

#ifdef MIPS_TO_C
// 15/58 diffs: loop and arithmetic exact; the two hoisted array bases take
// $s3/$s4 the other way round and the prologue saves $s0 last.
s32 func_801F1D60_ovl10(Vector vec, s32 count, f32 dist) {
    s32 i;
    s32 *p;

    if (count > 0) {
        i = 0;
        p = D_801F4D68_ovl10;
        do {
            if (sqrtf(((vec.z - gEntitiesNextPosZArray[*p]) * (vec.z - gEntitiesNextPosZArray[*p])) + ((vec.x - gEntitiesNextPosXArray[*p]) * (vec.x - gEntitiesNextPosXArray[*p]))) < dist) {
                return 1;
            }
            i++;
            p++;
        } while (i != count);
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F1D60_ovl10.s")
#endif

extern u32 D_801F4D60_ovl10;
extern f32 D_801F4CAC_ovl10;
extern f32 D_801F4CB0_ovl10;
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
    sp28.x = cosf(sp20 * D_801F4CAC_ovl10 / 180.0f) * sp24 + sp34.x;
    sp28.y = sp34.y + 20.0f;
    sp28.z = -sinf(sp20 * D_801F4CB0_ovl10 / 180.0f) * sp24 + sp34.z;
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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F2098_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F25FC_ovl10.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F28AC_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F2964_ovl10.s")

