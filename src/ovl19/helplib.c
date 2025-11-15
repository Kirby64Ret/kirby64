#include <ultra64.h>
#include <macros.h>
#include "GObj.h"

#include "main/object_helpers.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/util.h"
#include "unk_structs/D_800D6C68.h"
#include "unk_structs/D_800DE350.h"

extern void (*D_8022F040_ovl19[])(struct GObj *);
void func_800AED20(f32);
extern void func_800B1900(u16);
void func_8021E4B0_ovl19(struct GObj *);
void func_800F88C8(s32, s32, f32);//, f32);
void func_8021E7DC_ovl19(struct GObj *);
s32 func_800B3158(void);

void func_8021DF20_ovl19(struct GObj *arg0) {
    D_800E0650[omCurrentObj->objId] = 0;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800E8760[omCurrentObj->objId] = 0;
    D_800E83E0[omCurrentObj->objId] = D_800E8760[omCurrentObj->objId];
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 0xA, &D_8022F040_ovl19[0]);
}

void func_8021DFD0_ovl19(void) {
    f32 tmpY; // supposedly the function call changes this value
    u32 temp_a3;

    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800DEF90[omCurrentObj->objId] = func_8021E4B0_ovl19;
    D_800E8920[omCurrentObj->objId] = 1;
    D_800E8AE0[omCurrentObj->objId] = 0;
    D_800EC120[omCurrentObj->objId] = -1;
    temp_a3 = D_800EC120[omCurrentObj->objId];
    D_800EBF60[omCurrentObj->objId] = temp_a3;
    D_800EBDA0[omCurrentObj->objId] = temp_a3;
    D_800EBBE0[omCurrentObj->objId] = temp_a3;
    tmpY = gEntitiesNextPosYArray[omCurrentObj->objId];
    func_800F88C8(D_800DE350[omCurrentObj->objId],
                  D_800E5F90[omCurrentObj->objId],
                  D_800E6BD0[omCurrentObj->objId]);
    gEntitiesNextPosYArray[omCurrentObj->objId] = tmpY;
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    func_800F8E6C(D_800DE350[omCurrentObj->objId]);
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId];
    D_800E6D90[omCurrentObj->objId] = 666.66f;
}

void func_8021E184_ovl19(void) {
    u32 temp_a0;

    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800DEF90[omCurrentObj->objId] = func_8021E7DC_ovl19;
    D_800E8920[omCurrentObj->objId] = 1;
    D_800E8AE0[omCurrentObj->objId] = 0;
    D_800EC120[omCurrentObj->objId] = -1;
    temp_a0 = D_800EC120[omCurrentObj->objId];
    D_800EBF60[omCurrentObj->objId] = temp_a0;
    D_800EBDA0[omCurrentObj->objId] = temp_a0;
    D_800EBBE0[omCurrentObj->objId] = temp_a0;
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800E17D0[omCurrentObj->objId] = 0.0f;
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId];
    D_800E6D90[omCurrentObj->objId] = 666.66f;
}

s32 func_8021E2D0_ovl19(u8 arg0, u8 arg1) {
    s32 idx;
    f32 temp_f0;
    u32 temp_a1;

    idx = request_track_general(0x20, 0x1E, 0x3C);
    if ((idx >= 0x3C) || (idx == -1)) {
        if (idx != -1) {
            func_800B1900(idx);
            idx = -1;
        }
        utilPrintf("reqHelpChildTrk  Request Error!![helplib.cc]\n");
    } else {
        D_800E7730[idx] = 7;
        D_800E77A0[idx] = arg0;
        D_800E7880[idx] = arg1;
        D_800E76C0[idx] = 0xFF;
        temp_a1 = D_800E5F90[omCurrentObj->objId];
        D_800E6150[idx] = temp_a1;
        D_800E5F90[idx] = temp_a1;
        temp_f0 = D_800E6BD0[omCurrentObj->objId];
        D_800E6D90[idx] = temp_f0;
        D_800E6BD0[idx] = temp_f0;
        gEntitiesNextPosXArray[idx] = gEntitiesNextPosXArray[omCurrentObj->objId];
        gEntitiesPosXArray[idx] = gEntitiesPosXArray[omCurrentObj->objId];
        gEntitiesNextPosYArray[idx] = gEntitiesNextPosYArray[omCurrentObj->objId];
        gEntitiesPosYArray[idx] = gEntitiesPosYArray[omCurrentObj->objId];
        gEntitiesNextPosZArray[idx] = gEntitiesNextPosZArray[omCurrentObj->objId];
        gEntitiesPosZArray[idx] = gEntitiesPosZArray[omCurrentObj->objId];
    }
    return idx;
}

// how
#ifdef NON_MATCHING
void func_8021E4B0_ovl19(struct GObj *arg0) {
    f32 tmp;

    func_800B4864();
    if (D_800E6BD0[omCurrentObj->objId] != D_800E6D90[omCurrentObj->objId]) {
        func_800B35F0();
        tmp = D_800E64D0[omCurrentObj->objId];
        D_800E64D0[omCurrentObj->objId] += (D_800E5510[omCurrentObj->objId] + D_800E56D0[omCurrentObj->objId]);
        func_800F8E6C(arg0);
        D_800E64D0[omCurrentObj->objId] = tmp;
        func_800B4640();
        func_800B369C();
    }
    if (func_800B3158() == 0) {
        if (D_800E76C0[omCurrentObj->objId] < 0x40) {
            D_800D6C68.unk28[omCurrentObj->objId] &= 0x80;
        }
        func_800B1900((u16) omCurrentObj->objId);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/helplib/func_8021E4B0_ovl19.s")
#endif

// regalloc
#ifdef NON_MATCHING
void func_8021E5DC_ovl19(s32 arg0) {
    f32 tmp;

    func_800B4864();
    if (D_800E6BD0[omCurrentObj->objId] != D_800E6D90[omCurrentObj->objId]) {
        func_800B35F0();
        tmp = D_800E64D0[omCurrentObj->objId];
        D_800E64D0[omCurrentObj->objId] += (D_800E5510[omCurrentObj->objId] + D_800E56D0[omCurrentObj->objId]);
        func_800F8E6C(arg0);
        D_800E64D0[omCurrentObj->objId] = tmp;
        func_800B4640();
        func_800B369C();
    }
    if (func_800B3158() == 0) {
        if (D_800EBBE0[omCurrentObj->objId] != -1) {
            func_800B1900((u16) D_800EBBE0[omCurrentObj->objId]);
        }
        if (D_800EBDA0[omCurrentObj->objId] != -1) {
            func_800B1900((u16) D_800EBDA0[omCurrentObj->objId]);
        }
        if (D_800EBF60[omCurrentObj->objId] != -1) {
            func_800B1900((u16) D_800EBF60[omCurrentObj->objId]);
        }
        if (D_800EC120[omCurrentObj->objId] != -1 && D_800DE350[D_800EC120[omCurrentObj->objId]] != 0) {
            func_8019D958_ovl7((u16) D_800EC120[omCurrentObj->objId]);
        }
        if (D_800E76C0[omCurrentObj->objId] < 0x40) {
            D_800D6C68.unk28[omCurrentObj->objId] &= 0x80;
        }
        func_800B1900((u16) omCurrentObj->objId);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/helplib/func_8021E5DC_ovl19.s")
#endif

#ifdef NON_MATCHING
void func_8021E7DC_ovl19(struct GObj *arg0) {
    func_800B4024();
    if (gEntitiesNextPosXArray[omCurrentObj->objId] != gEntitiesPosXArray[omCurrentObj->objId]) {
        func_800B35F0();
        func_800B4924(arg0);
    }
    if (func_800B3158() == 0) {
        if (D_800E76C0[omCurrentObj->objId] < 0x40) {
            D_800D6C68.unk28[D_800E76C0[omCurrentObj->objId]] &= 0x80;
        }
        func_800B1900(omCurrentObj->objId);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/helplib/func_8021E7DC_ovl19.s")
#endif

// regalloc
#ifdef NON_MATCHING
void func_8021E894_ovl19(struct GObj *arg0) {
    func_800B4024();
    if (gEntitiesNextPosXArray[omCurrentObj->objId] != gEntitiesPosXArray[omCurrentObj->objId]) {
        func_800B35F0();
        func_800B4924(arg0);
    }
    if (func_800B3158() == 0) {
        if (D_800EBBE0[omCurrentObj->objId] != -1) {
            func_800B1900(D_800EBBE0[omCurrentObj->objId]);
        }
        if (D_800EBDA0[omCurrentObj->objId] != -1) {
            func_800B1900(D_800EBDA0[omCurrentObj->objId]);
        }
        if (D_800EBF60[omCurrentObj->objId] != -1) {
            func_800B1900(D_800EBF60[omCurrentObj->objId]);
        }
        if (D_800EC120[omCurrentObj->objId] != -1) {
            if (D_800DE350[D_800EC120[omCurrentObj->objId]] != 0) {
                func_8019D958_ovl7(D_800EC120[omCurrentObj->objId]);
            }
        }
        if (D_800E76C0[omCurrentObj->objId] < 0x40) {
            D_800D6C68.unk28[omCurrentObj->objId] &= 0x80;
        }
        func_800B1900(omCurrentObj->objId);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/helplib/func_8021E894_ovl19.s")
#endif
