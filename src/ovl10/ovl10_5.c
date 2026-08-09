#include "common.h"
#include "GObj.h"
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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801EF790_ovl10.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F0DD0_ovl10.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F1454_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F1554_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F1870_ovl10.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F1D60_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F1E48_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F1F7C_ovl10.s")

s32 func_801F2074_ovl10(s32 arg0) {
    if (arg0 == 4 || arg0 == 5) {
        return 1;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F2098_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F25FC_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F2770_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F28AC_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F2964_ovl10.s")

