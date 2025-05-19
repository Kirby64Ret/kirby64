#include <ultra64.h>
#include <macros.h>
#include "omCurrentObj.h"
#include "unk_structs/D_800E1B50.h"
#include "src/buffers.h"
#include "ovl1/ovl1_6.h"
#include "ovl0/ovl0_3.h"

void func_801E4480_ovl17(s32 arg0) {

}

void func_801E40F4(void);


// looks and smells like a switch case, but it's not one
GLOBAL_ASM("asm/non_matchings/ovl17/ovl17_last-0/func_801E4488_ovl17.s")

GLOBAL_ASM("asm/non_matchings/ovl17/ovl17_last-0/func_801E4668_ovl17.s")


extern float D_801E56CC, D_801E56C8;
void func_801E4DD4_ovl17(s32 arg0);
extern s32 D_800B4924;
#ifdef NON_MATCHING
void func_801E49B8_ovl17(s32 arg0) {
    Vector sp3C;
    f32 tmp;
    f32 tmp2;
    Vector sp30;
    struct LayoutNode *sp2C = D_800DFBD0[D_800E0D50[omCurrentObj->objId]][0x19];

    D_800DEF90[omCurrentObj->objId] = &D_800B4924;
    D_800DF150[omCurrentObj->objId] = func_801E4DD4_ovl17;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9864(0x000100F2, 0x23, 0x10);
    tmp = D_801E56C8;
    D_800DDA90[omCurrentObj->objId] = 0x23;
    D_800E98E0[omCurrentObj->objId] = 0;
    gEntitiesScaleXArray[omCurrentObj->objId] = tmp;
    gEntitiesScaleYArray[omCurrentObj->objId] = tmp;
    gEntitiesScaleZArray[omCurrentObj->objId] = tmp;
    gEntitiesAngleXArray[omCurrentObj->objId] = gEntitiesAngleXArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesAngleZArray[omCurrentObj->objId] = gEntitiesAngleZArray[D_800E0D50[omCurrentObj->objId]];
    func_800B2340(&sp3C, sp2C, 0xFFFF, gEntitiesAngleXArray);
    gEntitiesNextPosXArray[omCurrentObj->objId] = sp3C.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = sp3C.y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = sp3C.z;
    sp30.x = -gEntitiesNextPosXArray[omCurrentObj->objId];
    sp30.y = -gEntitiesNextPosYArray[omCurrentObj->objId];
    sp30.z = -gEntitiesNextPosZArray[omCurrentObj->objId];
    lbvector_Normalize(&sp30);
    // tmp2 = D_801E56CC;
    // source of memes
    D_800E3050[omCurrentObj->objId] = sp30.x * 15.0f;
    D_800E3590[omCurrentObj->objId] = sp30.x * D_801E56CC;
    D_800E3AD0[omCurrentObj->objId] = ABSF(sp30.x * 25.0f);


    D_800E3210[omCurrentObj->objId] = sp30.y * 15.0f;
    D_800E3750[omCurrentObj->objId] = sp30.y * D_801E56CC;
    D_800E3C90[omCurrentObj->objId] = ABSF(sp30.y * 25.0f);
    D_800E33D0[omCurrentObj->objId] = sp30.z * 15.0f;
    D_800E3910[omCurrentObj->objId] = sp30.z * D_801E56CC;
    D_800E3E50[omCurrentObj->objId] = ABSF(sp30.z * 25.0f);
    ohSleep(0x3C);
    func_801E2320_ovl17(arg0);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl17/ovl17_last-0/func_801E49B8_ovl17.s")
#endif

void func_801E4DD4_ovl17(s32 arg0) {
    if (func_801A03B4_ovl17() != 0) {
        gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesPosXArray[omCurrentObj->objId];
        gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesPosYArray[omCurrentObj->objId];
        gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesPosZArray[omCurrentObj->objId];
    }
}
