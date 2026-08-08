#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "buffers.h"
#include "ovl1/ovl1_7.h"

extern FUNCLIST D_8021C7B4_ovl9;
extern FUNCLIST D_8021C7D0_ovl9;
extern FUNCLIST D_8021C7E8_ovl9;
extern FUNCLIST D_8021C800_ovl9;
extern FUNCLIST D_8021C828_ovl9;
extern FUNCLIST D_8021C838_ovl9;
extern FUNCLIST D_8021C83C_ovl9;
extern FUNCLIST D_8021C844_ovl9;
extern FUNCLIST D_8021C86C_ovl9;
extern FUNCLIST D_8021C89C_ovl9;

extern FUNCLIST D_8021C7B0_ovl9;
void func_800B6B8C(struct GObj *);

void func_80201DE0_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6B8C;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8021C7B0_ovl9);
}

void func_80201E40_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_8021C7B4_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80201E88_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80201F94_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80201FF4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_802020F4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80202150_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_802021C4_ovl9.s")

void func_80201E40_ovl9(struct GObj *);

void func_802022DC_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80201E40_ovl9);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80202348_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80202464_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_8020246C_ovl9.s")

void func_80202518_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, &D_8021C7D0_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80202560_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80202654_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_802026B4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_802027B8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_8020285C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_802028F4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80202A08_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80202A4C_ovl9.s")

void func_80202AD8_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_8021C7E8_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80202B20_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80202C28_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80202CB4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80202D94_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80202E30_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80202EC4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80202FE0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_802030CC_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_802031D4_ovl9.s")

void func_802033B0_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, &D_8021C800_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_802033F8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80203500_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_8020358C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80203734_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_802037E0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80203874_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_802039A4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80203A90_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80203BA8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80203DFC_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80203E9C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80203F0C_ovl9.s")

extern FUNCLIST D_8021C820_ovl9;

void func_80203F84_ovl9(struct GObj *arg0) {
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_8021C820_ovl9);
}

void func_80203FC8_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, &D_8021C828_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80204010_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_8020412C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80204184_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80204270_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80204278_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80204360_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80204484_ovl9.s")

void func_80204500_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_8021C838_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80204548_ovl9.s")

void func_802045F8_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 1, &D_8021C83C_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80204640_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_802046BC_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_802046C4_ovl9.s")

void func_80204750_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, &D_8021C844_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80204798_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_8020488C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_802048F4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80204A90_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80204B38_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80204BCC_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80204C2C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80204C98_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80204D5C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80204F80_ovl9.s")

void func_80204750_ovl9(struct GObj *);

void func_80205000_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80204750_ovl9);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_8020506C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_802050E4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_802051D4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_802052E8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80205360_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_802054B8_ovl9.s")

void func_8020554C_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 6, &D_8021C86C_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80205594_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80205738_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_802057B4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_802058BC_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80205944_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80205A4C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80205AC0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80205AE8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80205B90_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80205D44_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80205E5C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80205F94_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80206038_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80206138_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80206254_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80206274_ovl9.s")

void func_802063AC_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 6, &D_8021C89C_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_802063F4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_802065B0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_8020662C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_802066DC_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80206764_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80206820_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80206894_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_8020691C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_802069C4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80206B78_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80206C44_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80206D7C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80206E20_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_80206F20_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_8020703C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_8020705C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_10/func_802071AC_ovl9.s")

