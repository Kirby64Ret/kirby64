#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/util.h"
#include "track_arrays.h"

extern s32 D_8015C690_ovl4;
extern s32 D_800D6B78;
extern Gfx D_8015A790_ovl4[];
extern u8 D_800D6BC0[];
extern u8 D_800D6BC8[];
extern s32 D_800BE560[];
extern u8 D_800D6BE0[];
extern s32 D_8015C69C_ovl4;

extern void func_80151E20_ovl4(void);
extern void func_80154DDC_ovl4(void);

void func_80151DE0_ovl4(void) {
    func_80151E20_ovl4();
}

void func_80151E00_ovl4(void) {
    func_80154DDC_ovl4();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80151E20_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80152124_ovl4.s")

s32 func_801521AC_ovl4(s32 arg0) {
    switch (D_8015C69C_ovl4) {
        case 1:
            return arg0 == 0;
        case 2:
            return (arg0 == 0) || (arg0 == 2);
        case 3:
            return arg0 != 1;
        case 4:
            return 1;
    }
    return 0;
}

s32 func_80152220_ovl4(s32 arg0, s32 arg1) {
    if ((u32) arg1 >= (u32) D_800BE560[arg0]) {
        return 0;
    }
    return D_800D6BE0[(arg0 * 6) + arg1] & 3;
}

s32 func_80152268_ovl4(s32 arg0) {
    s32 i;

    for (i = D_800BE560[arg0] - 1; i >= 0; i--) {
        if (func_80152220_ovl4(arg0, i) != 0) {
            return i + 1;
        }
    }
}

s32 func_801522D0_ovl4(f32 arg0) {
    if (-110.0f < arg0) {
        if (arg0 < 110.0f) {
            return 1;
        }
    }
    return 0;
}

s32 func_80152318_ovl4(f32 arg0) {
    if (-70.0f < arg0) {
        if (arg0 < 90.0f) {
            return 1;
        }
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80152360_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_801523A0_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80152444_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_801524E4_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_801525E8_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80152A48_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80152B50_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80152C34_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80152E38_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_8015306C_ovl4.s")

s32 func_80153294_ovl4(s32 arg0, s32 arg1, s32 arg2) {
    if (D_800D6BC8[(arg0 * 4) + arg1] & (1 << arg2)) {
        return 1;
    }
    return 0;
}

s32 func_801532CC_ovl4(s32 arg0, s32 arg1) {
    if (arg1 + 1 == D_800BE560[arg0]) {
        return 1;
    }
    return 0;
}

s32 func_801532FC_ovl4(s32 arg0) {
    if (D_800D6BC0[arg0] != 0) {
        return 1;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80153324_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_801533A8_ovl4.s")

extern s32 D_8015C694_ovl4;

void func_80153AB0_ovl4(struct GObj *arg0) {
    gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[D_8015C694_ovl4];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80153AEC_ovl4.s")

extern s32 D_8015C694_ovl4;

void func_80153C3C_ovl4(struct GObj *arg0) {
    gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[D_8015C694_ovl4];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80153C78_ovl4.s")

extern s32 D_8015C694_ovl4;

void func_8015427C_ovl4(struct GObj *arg0) {
    gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[D_8015C694_ovl4];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_801542B8_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_801543C8_ovl4.s")

extern s32 D_8015C694_ovl4;

void func_80154880_ovl4(struct GObj *arg0) {
    gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[D_8015C694_ovl4];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_801548BC_ovl4.s")

extern s32 D_8015C694_ovl4;

void func_80154DA0_ovl4(struct GObj *arg0) {
    gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[D_8015C694_ovl4];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80154DDC_ovl4.s")

void func_801550D4_ovl4(void) {
    D_8015C690_ovl4 = 2;
    D_800D6B78 = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_801550EC_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80155168_ovl4.s")

void func_801552F8_ovl4(Gfx **gfxP) {
    gSPDisplayList((*gfxP)++, D_8015A790_ovl4);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_8015531C_ovl4.s")

