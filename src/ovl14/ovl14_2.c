#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "track_arrays.h"
#define D_800E9FE0_PTR
#include "ovl1/ovl1_6.h"
#include "GObj.h"

#include "buffers.h"
#include "ovl14.h"
#include "ovl14_2.h"
#include "unk_structs/D_800E1B50.h"
#include "unk_structs/D_800D7098.h"
#include "ovl2/ovl2_8.h"
#include "ovl1/util.h"
#include "track_arrays.h"

extern FUNCLIST D_801E2F3C_ovl14;

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14_2/func_801DFD90_ovl14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14_2/func_801DFDA0_ovl14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14_2/func_801DFEA4_ovl14.s")

// IDO aligns the unreachable epilogue after an infinite loop to 32 bytes.
// This copy sits where that costs 4 nops, which C does not emit, so the
// body below assembles 16 bytes short. The identical source matches for the
// other 28 members of this family -- see AGENT_GUIDE.md.
#ifdef MIPS_TO_C
void func_801DFFD8_ovl14(GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, D_801E2F3C_ovl14);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14_2/func_801DFFD8_ovl14.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14_2/func_801E0058_ovl14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14_2/func_801E025C_ovl14.s")

void func_801E03E0_ovl14(GObj *arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14_2/func_801E03E8_ovl14.s")

void func_801E0610_ovl14(GObj *arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14_2/func_801E0618_ovl14.s")

void func_801E07E8_ovl14(GObj *arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14_2/func_801E07F0_ovl14.s")

// needs IDO's 32-byte dead-epilogue padding, which C does not emit
#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14_2/func_801E0958_ovl14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14_2/func_801E09D8_ovl14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14_2/func_801E0BDC_ovl14.s")

void func_801E0D70_ovl14(GObj *arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14_2/func_801E0D78_ovl14.s")

void func_801E0FA8_ovl14(GObj *arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14_2/func_801E0FB0_ovl14.s")

// needs IDO's 32-byte dead-epilogue padding, which C does not emit
#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14_2/func_801E1118_ovl14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14_2/func_801E1198_ovl14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14_2/func_801E13C0_ovl14.s")

void func_801E1720_ovl14(GObj *arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14_2/func_801E1728_ovl14.s")

void func_801E1CE0_ovl14(GObj *arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14_2/func_801E1CE8_ovl14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14_2/func_801E2028_ovl14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14_2/func_801E208C_ovl14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14_2/func_801E2378_ovl14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14_2/func_801E2410_ovl14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14_2/func_801E2610_ovl14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14_2/func_801E2834_ovl14.s")

void func_801E29D0_ovl14(GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801E2AD8_ovl14;
    func_801A0D50_ovl7(func_801E2A54_ovl14);
    func_800AFBB4(1, omCurrentObj);
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
    func_801E2A54_ovl14(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14_2/func_801E2A54_ovl14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14_2/func_801E2AD8_ovl14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14_2/func_801E2B84_ovl14.s")

void func_801E2E4C_ovl14(void) {
    if (D_800E9AA0[omCurrentObj->objId] != 0) {
        func_801A0D74_ovl7();
    }
    func_8019F3B0_ovl7();
}
