#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "DObj.h"
#include "sounds.h"
#include "main/lbvector.h"
#include "main/object_helpers.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/track.h"
#include "ovl1/util.h"
#include "ovl2/ovl2_3.h"
#include "ovl2/ovl2_8.h"
#include "unk_structs/D_800D7098.h"
#include "unk_structs/D_800DE350.h"
#include "unk_structs/D_800E1B50.h"
#include "unk_structs/D_80129114.h"
#include "buffers.h"

#include "ovl17.h"

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E0D00_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E109C_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E1170_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E1424_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E14B0_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E15A4_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E1890_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E1960_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E1CB4_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E2170_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E220C_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E2320_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E23E0_ovl17.s")

void func_801E2A2C_ovl17(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B4B9C;
    D_800DF150[omCurrentObj->objId] = func_801E2B78_ovl17;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E7B20[omCurrentObj->objId] = 30.0f;
    func_800A9864(0x10085, 0x23, 0x10);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801E2AF0_ovl17(arg0);
}

void func_801E2AF0_ovl17(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, D_801E549C_ovl17);
    }
}

void func_801E2B78_ovl17(struct GObj *arg0) {
    if ((gEntityFuncListIDArray[omCurrentObj->objId] != 4) && (D_800EA1A0[D_800E0D50[omCurrentObj->objId]] != 0)) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 4;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E2AF0_ovl17);
        return;
    }
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 5, D_801E54B0_ovl17);
}

void func_801E2C28_ovl17(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    do {
        func_800AFBB4(0, omCurrentObj);
        ohSleep(1);
    } while (D_800E9AA0[D_800E0D50[omCurrentObj->objId]] == NULL);
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801E2CD0_ovl17(struct GObj *arg0) {
    func_801E30BC_ovl17();
}

void func_801E2CF0_ovl17(struct GObj *arg0) {
    Vector sp1C;

    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800AA018(0x10517);
    func_800AFBB4(1, omCurrentObj);
    ohSleep(6);
    utilGetTransformSRT(&sp1C, arg0->data.dobj->firstChild->firstChild);
    func_801ACD90_ovl7(0x3C, 1, &sp1C);
    play_sound(0x1C7);
    ohSleep(6);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801E2DA0_ovl17(struct GObj *arg0) {
    if (D_800E9AA0[D_800E0D50[omCurrentObj->objId]] == NULL) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E2AF0_ovl17);
    }
    func_801E30BC_ovl17();
}

void func_801E2E24_ovl17(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    func_800AA018(0x10519);
    D_800E98E0[D_800E0D50[omCurrentObj->objId]] = 1;
    func_800AFBB4(1, omCurrentObj);
    ohSleep(0xC);
    D_800E98E0[D_800E0D50[omCurrentObj->objId]] = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801E2EE8_ovl17(struct GObj *arg0) {
    func_801E30BC_ovl17();
}

void func_801E2F08_ovl17(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E98E0[D_800E0D50[omCurrentObj->objId]] = 2;
    func_800AFBB4(0, omCurrentObj);
    ohSleep(0xD2);
    D_800E98E0[D_800E0D50[omCurrentObj->objId]] = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801E2FB8_ovl17(struct GObj *arg0) {
    func_801E30BC_ovl17();
}

void func_801E2FD8_ovl17(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 4;
    func_800AFBB4(0, omCurrentObj);
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E3024_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E30BC_ovl17.s")

void func_801E328C_ovl17(Vector *arg0) {
    lbvector_Normalize(arg0);
    lbvector_Rotate(arg0, 1, D_800EAC20[omCurrentObj->objId]);
    lbvector_Rotate(arg0, 2, D_800EADE0[omCurrentObj->objId]);
    lbvector_Rotate(arg0, 4, D_800EAFA0[omCurrentObj->objId]);
}

void func_801E3324_ovl17(Vector *arg0) {
    arg0->x = 0.0f;
    arg0->y = 0.0f;
    arg0->z = 1.0f;
    lbvector_Normalize(arg0);
    lbvector_Rotate(arg0, 1, D_800EA6E0[D_800E0D50[D_800E0D50[omCurrentObj->objId]]]);
    lbvector_Rotate(arg0, 2, D_800EA8A0[D_800E0D50[D_800E0D50[omCurrentObj->objId]]]);
    lbvector_Rotate(arg0, 4, D_800EAA60[D_800E0D50[D_800E0D50[omCurrentObj->objId]]]);
}

void func_801E343C_ovl17(Vector *arg0) {
    arg0->x = 0.0f;
    arg0->y = 0.0f;
    arg0->z = 1.0f;
    lbvector_Normalize(arg0);
    lbvector_Rotate(arg0, 1, D_800EA6E0[omCurrentObj->objId]);
    lbvector_Rotate(arg0, 2, D_800EA8A0[omCurrentObj->objId]);
    lbvector_Rotate(arg0, 4, D_800EAA60[omCurrentObj->objId]);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E34F4_ovl17.s")

void func_801E36AC_ovl17(struct GObj *arg0) {
    gEntitiesNextPosXArray[omCurrentObj->objId] *= 0.7f;
    gEntitiesNextPosYArray[omCurrentObj->objId] *= 0.7f;
    gEntitiesNextPosZArray[omCurrentObj->objId] *= 0.7f;
    func_801E373C_ovl17();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E373C_ovl17.s")

void func_801E389C_ovl17(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B5094;
    if (D_800E7880[omCurrentObj->objId] == 0) {
        D_800E0F10[omCurrentObj->objId] = 8;
    } else {
        D_800E0F10[omCurrentObj->objId] = 0x13;
    }
    D_800DF150[omCurrentObj->objId] = func_801E3990_ovl17;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E7B20[omCurrentObj->objId] = 10.0f;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    curObjSleepForever();
}

void func_801E3990_ovl17(struct GObj *arg0) {
    gEntitiesNextPosXArray[omCurrentObj->objId] *= 0.75f;
    gEntitiesNextPosYArray[omCurrentObj->objId] *= 0.75f;
    gEntitiesNextPosZArray[omCurrentObj->objId] *= 0.75f;
    func_801E3A20_ovl17();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E3A20_ovl17.s")

void func_801E4030_ovl17(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B4B9C;
    D_800DF150[omCurrentObj->objId] = func_801E4178_ovl17;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E7B20[omCurrentObj->objId] = 10.0f;
    func_800A9864(0x10084, 0x23, 0x10);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801E40F4_ovl17(arg0);
}

void func_801E40F4_ovl17(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, D_801E54C4_ovl17);
    }
}

void func_801E4178_ovl17(void) {
    func_801E4668_ovl17();
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 4, D_801E54D4_ovl17);
}

void func_801E41C4_ovl17(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AA018(0x10510);
    func_800AF27C();
    if (gEntityFuncListIDArray[D_800E0D50[omCurrentObj->objId]] == 0) {
        func_800AA018(0x10514);
        ohSleep(0x38);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801E4274_ovl17(struct GObj *arg0) {
}

void func_801E427C_ovl17(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800AA018(0x10514);
    curObjSleepForever();
}

void func_801E42CC_ovl17(struct GObj *arg0) {
    func_801E4488_ovl17();
}

void func_801E42EC_ovl17(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    func_800AA018(0x1050E);
    ohSleep(8);
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801E4358_ovl17(struct GObj *arg0) {
    func_801E4488_ovl17();
}

void func_801E4378_ovl17(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 3;
    func_800AA018(0x10510);
    func_800AF27C();
    func_800AFBB4(0, omCurrentObj);
    ohSleep(0x258);
    if (D_800E7B20[D_800E0D50[omCurrentObj->objId]] <= 0.0f) {
        curObjSleepForever();
    }
    D_800E7CE0[omCurrentObj->objId] = 0;
    D_800E7B20[omCurrentObj->objId] = 10.0f;
    func_800AFBB4(1, omCurrentObj);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801E4480_ovl17(struct GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E4488_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E4668_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E49B8_ovl17.s")

void func_801E4DD4_ovl17(struct GObj *arg0) {
    if (func_801A03B4_ovl7() != 0) {
        gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesPosXArray[omCurrentObj->objId];
        gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesPosYArray[omCurrentObj->objId];
        gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesPosZArray[omCurrentObj->objId];
    }
}
