#include <ultra64.h>
#include <macros.h>

#include "omCurrentObj.h"
#include "unk_structs/D_800E1B50.h"
#include "ovl1/ovl1_6.h"
#include "buffers.h"
#include "unk_structs/D_800DE350.h"

extern void func_801A3E80(void);
extern void func_801ACF84_ovl7(void);
extern void func_800AECC0(f32);
extern void func_800AED20(f32);
extern void func_801ACF5C_ovl7(void);
extern void func_800A7F74(s32, s32, s32, f32, f32, f32);
extern s32 D_801CB4DC;

void func_80209698_ovl9(void);
void func_802094DC_ovl9(void);
void func_802091B4_ovl9(struct GObj *);

void func_80209030_ovl9(struct GObj *this) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E98E0[omCurrentObj->objId] = 0x5A;
    D_800E9C60[omCurrentObj->objId] = D_800E0D50[omCurrentObj->objId];
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    D_800EA520[omCurrentObj->objId] = 0;
    D_800E0D50[omCurrentObj->objId] = -1;
    D_800DF150[omCurrentObj->objId] = func_802091B4_ovl9;
    tmp->unk98 = &D_801CB4DC;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9864(0x1008B, 0x23, 0x10);
    func_800AA018(0x10520);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 12.5f;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -0.375f;
    D_800E6850[omCurrentObj->objId] = 12.5f;
    func_800AFA14();
}

void func_802091B4_ovl9(struct GObj *this) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (D_800E9FE0[omCurrentObj->objId].as_s32 != 0) {
        tmp->unk40 = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A3E80);
        return;
    }
    if (D_800E98E0[omCurrentObj->objId] == 0) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801ACF84_ovl7);
    } else {
        D_800E98E0[omCurrentObj->objId]--;
    }
    if (func_801A0D74_ovl9(this) != 0) {
        if (D_800E9FE0[omCurrentObj->objId].as_s32 == 0) {
            if (D_800DE350[D_800E9C60[omCurrentObj->objId]] != 0) {
                D_800E9FE0[D_800E9C60[omCurrentObj->objId]].as_s32 = 1;
            }
        }
    }
    if (func_801A03B4_ovl9() != 0) {
        if (D_800E9FE0[omCurrentObj->objId].as_s32 == 0) {
            if (D_800DE350[D_800E9C60[omCurrentObj->objId]] != 0) {
                D_800E9FE0[D_800E9C60[omCurrentObj->objId]].as_s32 = 1;
            }
        }
    }
}

void func_8020933C_ovl9(struct GObj *this) {
    if (D_800DE350[D_800E9C60[omCurrentObj->objId]] != 0) {
        D_800E9FE0[D_800E9C60[omCurrentObj->objId]].as_s32 = 1;
    }
}

void func_8020938C_ovl9(s32 arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E98E0[omCurrentObj->objId] = 0x3C;
    D_800DF150[omCurrentObj->objId] = func_802094DC_ovl9;
    tmp->unk98 = &D_801CB4DC;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9864(0x1008E, 0x23, 0x10);
    func_800AA018(0x10523);
    func_800AECC0(D_800D6B10 * 0.75f);
    func_800AED20(D_800D6B10 * 0.75f);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 6.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 6.0f;
    func_800AFA14();
}

// control flow
#ifdef NON_MATCHING
void func_802094DC_ovl9(void) {
    if (D_800E98E0[omCurrentObj->objId] == 0) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801ACF84_ovl7);
    } else {
        D_800E98E0[omCurrentObj->objId]--;
        func_801A0D74_ovl9();
        func_801A03B4_ovl9();
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_10/func_802094DC_ovl9.s")
#endif

void func_8020954C_ovl9(struct GObj *this) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = func_801ACF5C_ovl7;
    tmp->unk98 = &D_801CB4DC;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9864(0x10097, 0x23, 0x10);
    func_800A9EA4(0x10543);
    func_800AFA14();
}

void func_802095E8_ovl9(s32 arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = func_80209698_ovl9;
    tmp->unk98 = &D_801CB4DC;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9864(0x10096, 0x23, 0x10);
    D_800E3210[omCurrentObj->objId] = -7.0f;
    func_800AFA14();
}

void func_80209698_ovl9(void) {
    if (func_801A0D74_ovl9() != 0) {
        func_800A7F74(3, 2, 0, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
    }
    func_801A03B4_ovl9();
}
