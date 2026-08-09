#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/util.h"
#include "track_arrays.h"

extern u8 D_800D6C10[];
extern Gfx D_8018A5B8_ovl5[];
void func_80183FC8_ovl5(void);
void func_80184084_ovl5(void);
extern s32 D_8018EE20_ovl5[];
extern s32 D_8018EE14_ovl5;
void func_80183270_ovl5(GObj *);
extern u8 D_8018EE18_ovl5;
#include "ovl1/track.h"


#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_13/func_801830A0_ovl5.s")

void func_801831E0_ovl5(GObj *arg0) {
    D_8018EE14_ovl5 = omCurrentObj->objId;
    D_800E98E0[omCurrentObj->objId] = 0xA;
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800DF150[omCurrentObj->objId] = func_80183270_ovl5;
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_13/func_80183270_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_13/func_80183AFC_ovl5.s")

s32 func_80183BF4_ovl5(s32 arg0) {
    return 1;
}

s32 func_80183C00_ovl5(s32 arg0) {
    if (D_800D6C10[arg0] == 1) {
        return 1;
    }
    return 0;
}

s32 func_80183C2C_ovl5(s32 arg0) {
    if (D_800D6C10[arg0] == 0) {
        return 0;
    }
    return 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_13/func_80183C54_ovl5.s")

void func_80183FA0_ovl5(void) {
    func_80184084_ovl5();
    func_80183FC8_ovl5();
}

void func_80183FC8_ovl5(void) {
    s32 i;
    s32 t;

    for (i = 0; i < 9; i++) {
        t = request_track_3(0xF, 0, 0x70);
        D_800E98E0[t] = 2;
        ((s32 *) D_800E9AA0)[t] = i;
        D_800E9C60[t] = D_8018EE18_ovl5 * 9 + i;
    }
}

void func_80184084_ovl5(void) {
    s32 i;

    for (i = 0; i < 9; i++) {
        func_800ACBDC(D_800DE350[D_8018EE20_ovl5[i]]);
        func_800B1900(D_8018EE20_ovl5[i]);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_13/func_801840F0_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_13/func_801841C0_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_13/func_801843A0_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_13/func_80184888_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_13/func_80184BA0_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_13/func_80184EC0_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_13/func_80185150_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_13/func_801853E0_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_13/func_80185608_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_13/func_801857C4_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_13/func_8018590C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_13/func_80185A4C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_13/func_80185C10_ovl5.s")

void func_80185CA4_ovl5(void) {
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0, 0x10, 2);
}

extern s32 D_800D6B24;
extern u8 D_8018EE10_ovl5;
void func_80185CA4_ovl5(void);

void func_80185CDC_ovl5(struct GObj *arg0) {
    if (D_800D6B24 == 0 && D_8018EE10_ovl5 != 0) {
        func_80185CA4_ovl5();
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_13/func_80185D1C_ovl5.s")

void func_80185EC8_ovl5(Gfx **g) {
    gSPDisplayList((*g)++, D_8018A5B8_ovl5);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_13/func_80185EEC_ovl5.s")

