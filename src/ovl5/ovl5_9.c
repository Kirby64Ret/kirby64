#include <ultra64.h>
#include <macros.h>
#include "buffers.h"
#include "GObj.h"
#include "SPObj.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/util.h"
#include "track_arrays.h"
#include "ovl1/track.h"
#include "main/object_helpers.h"

extern Gfx D_801895A8_ovl5[];
void func_8017EE4C_ovl5(GObj *);
void func_8017EDE0_ovl5();
void func_8017F008_ovl5();
void func_8017F110_ovl5();
#include "unk_structs/D_800D7178.h"
extern u32 D_800D6B68;
extern u8 D_8018EDC0_ovl5;
extern s32 D_8018EDC4_ovl5;

void func_8017ED60_ovl5(void) {
    switch (D_800E98E0[omCurrentObj->objId]) {
        case 0:
            func_8017EDE0_ovl5();
            break;
        case 1:
            func_8017F008_ovl5();
            break;
        case 2:
            func_8017F110_ovl5();
            break;
    }
}

void func_8017EDE0_ovl5(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = 0xA;
    ohSleep(0xA);
    D_800DF150[omCurrentObj->objId] = func_8017EE4C_ovl5;
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_9/func_8017EE4C_ovl5.s")

extern struct UnkStruct8015C740 D_80189680_ovl5;
extern struct UnkStruct8015C740 D_801896A0_ovl5;
extern struct UnkStruct8015C740 D_801896C0_ovl5;
extern struct UnkStruct8015C740 D_801896E0_ovl5;
SPObj *func_8015C740_ovl5(GObj *, struct UnkStruct8015C740 *);
void func_800AD1A0(void);
void func_8017F008_ovl5(GObj *arg0) {
    SPObj *spobj;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, &func_800AD1A0, 0x12, 0x80000000, 0x12);
    func_8015C740_ovl5(arg0, &D_80189680_ovl5);
    spobj = func_8015C740_ovl5(arg0, &D_80189680_ovl5);
    spobj->xOffset = 160.0f;
    spobj->yOffset = 10.0f;
    spobj->unk5A |= 1;
    spobj->unkBA |= 1;
    func_8015C740_ovl5(arg0, &D_801896A0_ovl5);
    func_8015C740_ovl5(arg0, &D_801896C0_ovl5);
    func_8015C740_ovl5(arg0, &D_801896E0_ovl5);
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_9/func_8017F110_ovl5.s")

void func_8017F2A8_ovl5(void) {
    D_800E98E0[request_track_3(9, 0, 0x70)] = 1;
    D_800E98E0[request_track_3(9, 0, 0x70)] = 2;
}

void func_8017F304_ovl5(void) {
    D_8018EDC0_ovl5 = 0;
    if (D_800D6B68 == 0xA) {
        D_8018EDC4_ovl5 = 0;
        D_800D7178.unk68 = 1;
        return;
    }
    switch (D_800D7178.unk44) {
        case 0x1D:
            D_8018EDC4_ovl5 = 0;
            break;
        case 0x1F:
            D_8018EDC4_ovl5 = 1;
            break;
        case 0x1E:
            D_8018EDC4_ovl5 = 2;
            break;
    }
}

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

