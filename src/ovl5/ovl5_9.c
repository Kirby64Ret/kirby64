#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/util.h"
#include "track_arrays.h"
#include "ovl1/track.h"
#include "main/object_helpers.h"

extern Gfx D_801895A8_ovl5[];
void func_8017EE4C_ovl5(GObj *);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_9/func_8017ED60_ovl5.s")

void func_8017EDE0_ovl5(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = 0xA;
    ohSleep(0xA);
    D_800DF150[omCurrentObj->objId] = func_8017EE4C_ovl5;
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_9/func_8017EE4C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_9/func_8017F008_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_9/func_8017F110_ovl5.s")

void func_8017F2A8_ovl5(void) {
    D_800E98E0[request_track_3(9, 0, 0x70)] = 1;
    D_800E98E0[request_track_3(9, 0, 0x70)] = 2;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_9/func_8017F304_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_9/func_8017F38C_ovl5.s")

extern s32 D_800D6B24;
extern u8 D_8018EDC0_ovl5;
void func_8017F38C_ovl5(void);

void func_8017F428_ovl5(struct GObj *arg0) {
    if (D_800D6B24 == 0 && D_8018EDC0_ovl5 != 0) {
        func_8017F38C_ovl5();
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_9/func_8017F468_ovl5.s")

void func_8017F570_ovl5(Gfx **g) {
    gSPDisplayList((*g)++, D_801895A8_ovl5);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_9/func_8017F594_ovl5.s")

