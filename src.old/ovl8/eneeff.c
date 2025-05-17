#include <ultra64.h>
#include <macros.h>

#include "omCurrentObj.h"
#include "ovl1/ovl1_6.h"

extern const char D_801DB080_ovl8[];
extern f32 D_800D70D8;
extern void func_800B1900(u16);

void func_801D2040_ovl8(struct GObj *this, s32 arg1, f32 arg2) {
    s32 pad2[3];
    s32 newIdx;

    if (!(D_800D70D8 <= 0.0f) && (arg1 == 0) && ((s32)arg2 == 1)) {
        newIdx = request_track_general(0x19, 0x1E, 0x3C);
        if (newIdx >= 0x3C || newIdx == -1) {
            print_error_stub("reqWhispyRootTrk  Request Error!![eneeff.cc]\n");
            func_800B1900(newIdx);
            return;
        }
        gEntityVtableIndexArray[newIdx] = gEntityVtableIndexArray[omCurrentObj->objId];
        D_800E76C0[newIdx] = 0xFF;
        D_800E7730[newIdx] = 2;
        D_800E77A0[newIdx] = 0;
        D_800E7880[newIdx] = 3;
        gEntitiesNextPosXArray[newIdx] = gEntitiesNextPosXArray[omCurrentObj->objId];
        gEntitiesNextPosYArray[newIdx] = gEntitiesNextPosYArray[omCurrentObj->objId];
        gEntitiesNextPosZArray[newIdx] = gEntitiesNextPosZArray[omCurrentObj->objId];
        gEntitiesPosXArray[newIdx] = gEntitiesNextPosXArray[newIdx];
        gEntitiesPosYArray[newIdx] = gEntitiesNextPosYArray[newIdx];
        gEntitiesPosZArray[newIdx] = gEntitiesNextPosZArray[newIdx];
        D_800E8E60[newIdx] = 1;
        D_800EA520[newIdx] = D_800EA520[omCurrentObj->objId];
        gEntitiesAngleYArray[newIdx] = gEntitiesAngleYArray[omCurrentObj->objId];
        func_800FB914(1);
        play_sound(0x1E0);
    }
}

void func_801D223C_ovl8(struct GObj *this) {
    func_800A9864(0x100DE, 0x1869F, 0x10, this);
    this->unk3C->posVec.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    this->unk3C->posVec.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    this->unk3C->posVec.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    this->unk3C->angleVec.x = gEntitiesAngleXArray[omCurrentObj->objId];
    this->unk3C->angleVec.y = gEntitiesAngleYArray[omCurrentObj->objId];
    this->unk3C->angleVec.z = gEntitiesAngleZArray[omCurrentObj->objId];
    this->unk3C->scaleVec.x = gEntitiesScaleXArray[omCurrentObj->objId];
    this->unk3C->scaleVec.y = gEntitiesScaleYArray[omCurrentObj->objId];
    this->unk3C->scaleVec.z = gEntitiesScaleZArray[omCurrentObj->objId];
    func_800AA018(0x10621);
    D_800DF310[omCurrentObj->objId] = func_801D2040_ovl8;
    func_800AF27C();
    func_800B1900(omCurrentObj->objId);
}


extern void func_800B4B9C(s32);

void func_801D23EC_ovl8(s32 arg0) {
    s32 temp_v0_2;
    s32 temp_v1;
    void *temp_v0;

    func_800A9864(0x100E4, 0x1869F, 0x10);
    D_800DEF90[omCurrentObj->objId] = func_800B4B9C;
    D_800DDA90[omCurrentObj->objId] = 0x25;
    func_800AA018(0x10638);
    while (1) {
        switch (D_800DFF50[D_800E0D50[omCurrentObj->objId]]) {
            case 0x10434:
                func_800A9EA4(0x10637);
                break;
            case 0x10438:
                func_800A9EA4(0x1063C);
                break;
            case 0x10439:
                func_800A9EA4(0x1063D);
                func_800AF27C();
                func_800B1900(omCurrentObj->objId);
                break;
            default:
                func_800B1900(omCurrentObj->objId);
        }
        ohSleep(1);
    }
}

extern void func_800B4D40(s32);
#ifdef NEEDS_RODATA
void func_801D2590_ovl8(s32 arg0) {
    func_800A9864(0x100E5, 0x1869F, 0x10);
    D_800DEF90[omCurrentObj->objId] = func_800B4D40;
    D_800DDA90[omCurrentObj->objId] = 0x25;
    func_800AA018(0x1064F);
    while (1) {
        switch (D_800DFF50[D_800E0D50[omCurrentObj->objId]] + 0xFFFEFBC3) {
            case 12:
                func_800A9EA4(0x1064B);
                break;
            case 24:
                func_800A9EA4(0x10658);
                break;
            case 26:
                func_800AA018(0x1065A);
                func_800AF27C();
                func_800AA018(0x10650);
                while (D_800DFF50[D_800E0D50[omCurrentObj->objId]] == 0x10457) {
                    ohSleep(1);
                }
                break;
            case 0:
                func_800A9EA4(0x1063F);
                break;
            case 2:
                func_800A9EA4(0x10641);
                break;
            case 4:
                func_800A9EA4(0x10643);
                break;
            case 6:
                func_800A9EA4(0x10645);
                break;
            case 22:
                func_800A9EA4(0x10656);
                break;
            case 8:
                func_800A9EA4(0x10647);
                break;
            case 20:
                func_800A9EA4(0x10654);
                break;
            case 14:
                func_800A9EA4(0x1064D);
                break;
            case 10:
                func_800AA018(0x10649);
                func_800AF27C();
                func_800B1900(omCurrentObj->objId);
                break;
            default:
                break;
        }
        ohSleep(1);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl8/ovl8_2/func_801D2590_ovl8.s")
#endif


extern void func_801D1E58_ovl8(s32);
#ifdef NON_MATCHING
void func_801D281C_ovl8(s32 arg0) {
    func_800A9864(0x100E4, 0x1869F, 0x10);
    D_800DEF90[omCurrentObj->objId] = func_801D1E58_ovl8;
    D_800DDA90[omCurrentObj->objId] = 0x25;
    func_800AA018(0x10638);
    while (1) {
        switch (D_800E9C60[D_800E0D50[omCurrentObj->objId]]) {
            case 67123:
            case 67124:
            case 67125:
            case 67126:
            case 67129:
            case 67130:
            case 67131:
            default:
                func_800A9EA4(D_800E9C60[D_800E0D50[omCurrentObj->objId]]);
                break;
            case 67127:
            case 67128:
                func_800B1900(omCurrentObj->objId);
                break;
        }
        if (D_800E7730[D_800E0D50[omCurrentObj->objId]] != 4
         || D_800E77A0[D_800E0D50[omCurrentObj->objId]] != 0x2B)
        {
            func_800B1900(omCurrentObj->objId);
        }
        ohSleep(1);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl8/ovl8_2/func_801D281C_ovl8.s")
#endif

void func_801D29C8_ovl8(struct GObj *arg0) {
    switch (D_800EA520[omCurrentObj->objId]) {
        case 1:
            func_800A9864(0x100ED, 0x1869F, 0x10);
            func_800AA018(0x1067E);
            break;
        case 2:
            func_800A9864(0x100EE, 0x1869F, 0x10);
            func_800AA018(0x1067F);
            break;
        case 3:
            func_800A9864(0x100EF, 0x1869F, 0x10);
            func_800AA018(0x10680);
            break;
    }
    arg0->unk3C->posVec.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    arg0->unk3C->posVec.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    arg0->unk3C->posVec.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    arg0->unk3C->angleVec.x = gEntitiesAngleXArray[omCurrentObj->objId];
    arg0->unk3C->angleVec.y = gEntitiesAngleYArray[omCurrentObj->objId];
    arg0->unk3C->angleVec.z = gEntitiesAngleZArray[omCurrentObj->objId];
    func_800AF27C();
    func_800B1900(omCurrentObj->objId);
}
