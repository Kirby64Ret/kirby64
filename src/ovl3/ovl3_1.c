#include <ultra64.h>
#include <macros.h>
#include "common.h"
#include "ovl1/ovl1_2_2.h"

extern u8 *func_8011BABC(void);
#include "GObj.h"
#include "track_arrays.h"

extern void func_8011BF4C(f32 *, s32);
#include "Player.h"

extern void func_8015439C_ovl3(f32 *);
extern void func_80154CFC_ovl3();
extern void func_801548DC_ovl3(void);
extern void func_80155088_ovl3(void);
extern s32 func_801BBE50_ovl7(u8 *, void *, s32);
extern void func_801529C0_ovl3(void);
#include "ovl1/util.h"

extern char D_80196E10_ovl3[];
extern char D_80196E68_ovl3[];
extern char D_80196E94_ovl3[];

extern s32 func_80155C68_ovl3(s32, f32 *);

s32 func_80152070_ovl3(f32 (*arg0)[4], f32 (*arg1)[4], u8 arg2, f32 arg3) {
    u8 i;

    if (arg2 >= 0x11) {
        utilPrintf(D_80196E10_ovl3, 0x10);
        return 0;
    }
    for (i = 0; i < arg2; i++) {
        arg1[i][0] = arg0[i][0] * arg3;
        arg1[i][1] = arg0[i][1] * arg3;
        arg1[i][2] = arg0[i][2] * arg3;
        arg1[i][3] = arg0[i][3] * arg3;
    }
    return 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_80152124_ovl3.s")

s32 func_801521F0_ovl3(f32 (*arg0)[4], f32 (*arg1)[4], u8 arg2, f32 arg3) {
    u8 i;

    if (arg2 >= 0x11) {
        utilPrintf(D_80196E68_ovl3, 0x10);
        return 0;
    }
    for (i = 0; i < arg2; i++) {
        arg1[i][0] = arg0[i][0];
        arg1[i][1] = arg0[i][1] * arg3;
        arg1[i][2] = arg0[i][2];
        arg1[i][3] = arg0[i][3] * arg3;
    }
    return 1;
}

s32 func_8015229C_ovl3(f32 (*arg0)[4], f32 (*arg1)[4], u8 arg2, f32 arg3) {
    u8 i;

    if (arg2 >= 0x11) {
        utilPrintf(D_80196E94_ovl3, 0x10);
        return 0;
    }
    for (i = 0; i < arg2; i++) {
        arg1[i][0] = arg0[i][0] * arg3;
        arg1[i][1] = arg0[i][1];
        arg1[i][2] = arg0[i][2] * arg3;
        arg1[i][3] = arg0[i][3];
    }
    return 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_80152348_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_80152828_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_801529C0_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_801530BC_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_80153668_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_80153808_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_801538C8_ovl3.s")

s32 func_80153984_ovl3(void) {
    if (D_800E0490[omCurrentObj->objId] == NULL) {
        D_800E8AE0[omCurrentObj->objId] = 0;
        D_800E8920[omCurrentObj->objId] = D_800E8AE0[omCurrentObj->objId];
        return 0;
    }
    func_801529C0_ovl3();
    return D_800E8920[omCurrentObj->objId];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_80153A18_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_80153AD4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_80153B98_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_80153FC8_ovl3.s")

#ifdef MIPS_TO_C
void func_8015439C_ovl3(f32 *arg0) {
    gKirbyState._184.unk4 = arg0[0];
    gKirbyState._184.unk8 = arg0[1];
    gKirbyState._184.unkC = arg0[2];
    gKirbyState._184.unk10 = gEntitiesPosXArray[omCurrentObj->objId];
    gKirbyState._184.unk14 = gEntitiesPosYArray[omCurrentObj->objId];
    gKirbyState._184.unk18 = gEntitiesPosZArray[omCurrentObj->objId];
    gKirbyState._184.unk1C = D_800E17D0[omCurrentObj->objId];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_8015439C_ovl3.s")
#endif

#ifdef MIPS_TO_C
s32 func_80154428_ovl3(void) {
    s32 *temp = (s32 *) D_800E0490[omCurrentObj->objId];

    if (temp != NULL) {
        *(s32 *) &gKirbyState._184.unk20 = temp[0];
        if (temp[0] != 0) {
            func_8015439C_ovl3();
            func_8011BF4C(&gKirbyState._184.unk4, 0);
        }
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_80154428_ovl3.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_8015449C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_80154578_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_80154648_ovl3.s")

void func_8015488C_ovl3(s32 arg0, f32 *arg1) {
    arg1[0] = arg1[3] = gEntitiesNextPosXArray[arg0];
    arg1[1] = arg1[4] = gEntitiesNextPosYArray[arg0];
    arg1[2] = arg1[5] = gEntitiesNextPosZArray[arg0];
    arg1[6] = 0.0f;
    *(s32 *) &arg1[7] = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_801548DC_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_80154CFC_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_80155088_ovl3.s")

s32 func_80155424_ovl3(void) {
    if (D_800E0490[omCurrentObj->objId] == NULL) {
        D_800E8920[omCurrentObj->objId] = 0;
        return 0;
    }
    func_80154CFC_ovl3();
    return D_800E8920[omCurrentObj->objId];
}

s32 func_80155498_ovl3(void) {
    if (D_800E0490[omCurrentObj->objId] == NULL) {
        D_800E8920[omCurrentObj->objId] = 0;
        return 0;
    }
    func_801548DC_ovl3();
    return D_800E8920[omCurrentObj->objId];
}

s32 func_8015550C_ovl3(s32 arg0, s32 arg1) {
    f32 sp20[4];

    if (D_800E0490[omCurrentObj->objId] == NULL) {
        D_800E8920[omCurrentObj->objId] = 0;
        return 0;
    }
    sp20[0] = gEntitiesNextPosXArray[omCurrentObj->objId];
    sp20[1] = gEntitiesNextPosYArray[omCurrentObj->objId];
    sp20[2] = gEntitiesNextPosZArray[omCurrentObj->objId];
    func_80154CFC_ovl3(arg0);
    return func_80155C68_ovl3(arg1, sp20);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_801555B0_ovl3.s")

s32 func_80155664_ovl3(void) {
    if (D_800E0490[omCurrentObj->objId] == NULL) {
        D_800E8920[omCurrentObj->objId] = 0;
        return 0;
    }
    func_80155088_ovl3();
    return D_800E8920[omCurrentObj->objId];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_801556D8_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_80155838_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_80155C68_ovl3.s")

void func_80155D50_ovl3(f32 *arg0, s32 arg1, s32 arg2, s32 arg3) {
    arg0[0] = gEntitiesNextPosXArray[arg3];
    arg0[1] = gEntitiesNextPosYArray[arg3];
    arg0[2] = gEntitiesNextPosZArray[arg3];
    arg0[3] = gEntitiesPosXArray[arg3];
    arg0[4] = gEntitiesPosYArray[arg3];
    arg0[5] = gEntitiesPosZArray[arg3];
    arg0[6] = gEntitiesAngleYArray[arg3];
    *(s32 *) &arg0[7] = arg1;
    func_8011BF4C(arg0, arg2);
}

void func_80155DF0_ovl3(f32 *arg0, s32 arg1, f32 *arg2, s32 arg3, s32 arg4) {
    arg0[0] = arg0[3] = arg2[0];
    arg0[1] = arg0[4] = arg2[1];
    arg0[2] = arg0[5] = arg2[2];
    arg0[6] = gEntitiesAngleYArray[arg4];
    *(s32 *) &arg0[7] = arg1;
    func_8011BF4C(arg0, arg3);
}

s32 func_80155E58_ovl3(void) {
    u8 *temp;
    s32 idx;
    s32 ret;

    temp = func_8011BABC();
    temp[0x54] = 2;
    idx = D_800E0D50[omCurrentObj->objId];
    ret = func_801BBE50_ovl7(temp, D_800DE350[idx]->data.ptr, idx);
    D_800E83E0[ret] = 3;
    D_800E8220[ret] = 0;
    return 0;
}

s32 func_80155ED8_ovl3(void) {
    func_8011BABC()[0x54] = 2;
    play_sound(0x25A);
    return 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_80155F0C_ovl3.s")

