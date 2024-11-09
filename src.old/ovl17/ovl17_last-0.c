#include <ultra64.h>
#include <macros.h>
#include "D_8004A7C4.h"
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
    struct LayoutNode *sp2C = D_800DFBD0[D_800E0D50[D_8004A7C4->objId]][0x19];

    D_800DEF90[D_8004A7C4->objId] = &D_800B4924;
    D_800DF150[D_8004A7C4->objId] = func_801E4DD4_ovl17;
    D_800E8920[D_8004A7C4->objId] = 0;
    func_800A9864(0x000100F2, 0x23, 0x10);
    tmp = D_801E56C8;
    D_800DDA90[D_8004A7C4->objId] = 0x23;
    D_800E98E0[D_8004A7C4->objId] = 0;
    gEntitiesScaleXArray[D_8004A7C4->objId] = tmp;
    gEntitiesScaleYArray[D_8004A7C4->objId] = tmp;
    gEntitiesScaleZArray[D_8004A7C4->objId] = tmp;
    gEntitiesAngleXArray[D_8004A7C4->objId] = gEntitiesAngleXArray[D_800E0D50[D_8004A7C4->objId]];
    gEntitiesAngleYArray[D_8004A7C4->objId] = gEntitiesAngleYArray[D_800E0D50[D_8004A7C4->objId]];
    gEntitiesAngleZArray[D_8004A7C4->objId] = gEntitiesAngleZArray[D_800E0D50[D_8004A7C4->objId]];
    func_800B2340(&sp3C, sp2C, 0xFFFF, gEntitiesAngleXArray);
    gEntitiesNextPosXArray[D_8004A7C4->objId] = sp3C.x;
    gEntitiesNextPosYArray[D_8004A7C4->objId] = sp3C.y;
    gEntitiesNextPosZArray[D_8004A7C4->objId] = sp3C.z;
    sp30.x = -gEntitiesNextPosXArray[D_8004A7C4->objId];
    sp30.y = -gEntitiesNextPosYArray[D_8004A7C4->objId];
    sp30.z = -gEntitiesNextPosZArray[D_8004A7C4->objId];
    lbvector_Normalize(&sp30);
    // tmp2 = D_801E56CC;
    // source of memes
    D_800E3050[D_8004A7C4->objId] = sp30.x * 15.0f;
    D_800E3590[D_8004A7C4->objId] = sp30.x * D_801E56CC;
    D_800E3AD0[D_8004A7C4->objId] = ABSF(sp30.x * 25.0f);


    D_800E3210[D_8004A7C4->objId] = sp30.y * 15.0f;
    D_800E3750[D_8004A7C4->objId] = sp30.y * D_801E56CC;
    D_800E3C90[D_8004A7C4->objId] = ABSF(sp30.y * 25.0f);
    D_800E33D0[D_8004A7C4->objId] = sp30.z * 15.0f;
    D_800E3910[D_8004A7C4->objId] = sp30.z * D_801E56CC;
    D_800E3E50[D_8004A7C4->objId] = ABSF(sp30.z * 25.0f);
    finish_current_thread(0x3C);
    func_801E2320_ovl17(arg0);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl17/ovl17_last-0/func_801E49B8_ovl17.s")
#endif

void func_801E4DD4_ovl17(s32 arg0) {
    if (func_801A03B4_ovl17() != 0) {
        gEntitiesNextPosXArray[D_8004A7C4->objId] = gEntitiesPosXArray[D_8004A7C4->objId];
        gEntitiesNextPosYArray[D_8004A7C4->objId] = gEntitiesPosYArray[D_8004A7C4->objId];
        gEntitiesNextPosZArray[D_8004A7C4->objId] = gEntitiesPosZArray[D_8004A7C4->objId];
    }
}
