#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/util.h"
#include "buffers.h"

extern s32 D_8018E030_ovl5[];
extern u8 D_8018E22C_ovl5[];
extern f32 D_80186950_ovl5[];
extern Gfx D_801860A8_ovl5[];
void func_800BB3F0(void);
extern u8 D_8018E258_ovl5;
extern s32 D_80186934_ovl5[];
extern f32 D_80186940_ovl5[];
void func_800A7F74(s32, s32, s32, f32, f32, f32);
extern u8 D_8018E220_ovl5;
void func_8016253C_ovl5(struct GObj *);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015CD00_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015CE74_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015D2A8_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015D458_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015D62C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015D864_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015DA24_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015DFC8_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015E850_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015EAB4_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015ED9C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015F300_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015F4C4_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015F5DC_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015F67C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015F804_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015FB78_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8015FE00_ovl5.s")

void func_80160088_ovl5(s32 arg0) {
    D_8018E22C_ovl5[arg0 * 12] = 3;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_801600A8_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80160120_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8016050C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80160810_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80160868_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_801608BC_ovl5.s")

s32 func_80160924_ovl5(s32 arg0) {
    s32 temp = D_800EA520[D_8018E030_ovl5[arg0]];

    if (temp == 0 || temp == 1 || temp == 2 || temp == 3) {
        return 1;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8016097C_ovl5.s")

s32 func_801609D0_ovl5(s32 arg0) {
    s32 temp = D_800EA520[D_8018E030_ovl5[arg0]];

    if (temp == 4 || temp == 5 || temp == 0xB) {
        return 0;
    }
    return 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80160A20_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80160A78_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80160AF8_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80160D50_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80160E6C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80161078_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_801611A8_ovl5.s")

f32 func_80161298_ovl5(s32 arg0, s32 arg1) {
    return D_80186950_ovl5[arg0] * 0.5f + D_80186950_ovl5[arg1] * 0.5f;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_801612D0_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_801613C0_ovl5.s")

f32 func_8016142C_ovl5(s32 arg0) {
    return (D_800EA6E0[D_8018E030_ovl5[arg0]] - gEntitiesNextPosXArray[D_8018E030_ovl5[arg0]]) * 0.5f;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80161470_ovl5.s")

void func_801615D8_ovl5(s32 arg0, f32 arg1) {
    D_800EA520[D_8018E030_ovl5[arg0]] = 7;
    D_800EAA60[D_8018E030_ovl5[arg0]] = arg1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80161610_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_801616A8_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80161720_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8016179C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80161974_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_801619E0_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80161A54_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80161B4C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_8016253C_ovl5.s")

void func_80162A44_ovl5(GObj *arg0) {
    if (D_8018E220_ovl5 != 0) {
        if (D_800E9FE0[omCurrentObj->objId].as_s32 != 3 && D_800E9FE0[omCurrentObj->objId].as_s32 != 4) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8016253C_ovl5);
        }
    }
}

s32 func_80162AB0_ovl5(s32 arg0, f32 arg1, f32 arg2) {
    f32 temp = gEntitiesNextPosXArray[D_8018E030_ovl5[arg0]];
    f32 diff = (temp < arg1) ? -(temp - arg1) : (temp - arg1);

    if (diff < arg2) {
        return 1;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80162B1C_ovl5.s")

void func_80162C68_ovl5(GObj *arg0) {
    func_800A7F74(1, 0, D_80186934_ovl5[D_8018E258_ovl5], D_80186940_ovl5[0], D_80186940_ovl5[1], D_80186940_ovl5[2]);
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80162CCC_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80162E30_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80163CC0_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80164174_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_801642A4_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80164344_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_801643E8_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80164490_ovl5.s")

void func_801648D8_ovl5(u8 *arg0, u16 *arg1) {
    arg0[0x14] = arg1[0];
    arg0[0x15] = arg1[1];
    arg0[0x16] = arg1[2];
    arg0[0x18] = arg1[3];
    arg0[0x19] = arg1[4];
    arg0[0x1A] = arg1[5];
}

void func_8016490C_ovl5(void) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80164914_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_801649CC_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80164A34_ovl5.s")

void func_80164DB0_ovl5(void) {
    func_800BB3F0();
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0, 0x10, 2);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80164DF0_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80164EA8_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_801650C0_ovl5.s")

void func_8016534C_ovl5(Gfx **g) {
    gSPDisplayList((*g)++, D_801860A8_ovl5);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_2/func_80165370_ovl5.s")

