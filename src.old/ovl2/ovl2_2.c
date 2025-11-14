#include <ultra64.h>
#include <macros.h>

#include "ovl1/ovl1_6.h"
#include "omCurrentObj.h"
#include "buffers.h"

extern Gfx *gDisplayListHeads[4];

extern u32 D_800BE4F8;
extern u32 D_800BE4FC;
extern u32 D_800BE534;

void func_800F6C40(s32 arg0, UNUSED s32 arg1) {
    D_800BE4F8 = 2;
    D_800BE4FC = 1;
    D_800BE534 = arg0;
}

void func_800F6C68(void) {
    D_800BE4F8 = 3;
}

void func_800F6C78(void) {
    D_800BE4F8 = 4;
}

void func_800F6C88(void) {
    D_800BE4F8 = 7;
}

extern f32 D_800D6B14;
void procMainStub(void);

void func_800F6C98(s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = NULL;
    func_800B1F68(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    ohSleep((u32) (120.0f * D_800D6B14));
    if (D_800E98E0[omCurrentObj->objId] == 3) {
        func_800F6C68();
    }
    if (D_800E98E0[omCurrentObj->objId] == 4) {
        func_800F6C78();
    }
    func_800B1900(omCurrentObj->objId & 0xFFFF);
}

void func_800F6E04(UNUSED s32 arg0) {

}

void func_8011C2A0(void *arg0);

void func_800F6E0C(void *arg0, UNUSED void *arg1, UNUSED void *arg2) {
    func_8011C2A0(arg0);
}

GLOBAL_ASM("asm/non_matchings/ovl2_2/func_800F6E30.s")

extern s32 D_800BE500, D_800BE504;
extern void (*gDrawFuncList[])(struct GObj *);

void func_800F716C(struct GObj *arg0) {
    if ((D_800BE500 == 1) && (D_800BE504 == 2)) {
        gSPFogPosition(gDisplayListHeads[0]++, 102, 1003);
        gSPFogPosition(gDisplayListHeads[1]++, 102, 1003);
    } else {
        gSPFogPosition(gDisplayListHeads[0]++, 920, 1000);
        gSPFogPosition(gDisplayListHeads[1]++, 920, 1000);
    }
    gDrawFuncList[gSegment4StartArray[arg0->objId][2]](arg0);
}

extern u32 D_800D7010;
extern u32 D_800D7028;
extern u32 D_800D7040;
extern u32 D_80124000;

void func_800F7258(s32 arg0) {
    func_800A5404(&D_800D7010, &D_80124000);
    func_800A5404(&D_800D7028, &D_80124000);
    func_800A5404(&D_800D7040, &D_80124000);
}

GLOBAL_ASM("asm/non_matchings/ovl2_2/func_800F72B0.s")

GLOBAL_ASM("asm/non_matchings/ovl2_2/func_800F7404.s")

GLOBAL_ASM("asm/non_matchings/ovl2_2/func_800F7484.s")

GLOBAL_ASM("asm/non_matchings/ovl2_2/func_800F753C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_2/func_800F7578.s")

GLOBAL_ASM("asm/non_matchings/ovl2_2/func_800F7844.s")

GLOBAL_ASM("asm/non_matchings/ovl2_2/func_800F78E4.s")

GLOBAL_ASM("asm/non_matchings/ovl2_2/func_800F8078.s")

GLOBAL_ASM("asm/non_matchings/ovl2_2/func_800F81A4.s")

GLOBAL_ASM("asm/non_matchings/ovl2_2/func_800F8274.s")

GLOBAL_ASM("asm/non_matchings/ovl2_2/func_800F8378.s")

GLOBAL_ASM("asm/non_matchings/ovl2_2/func_800F8464.s")

GLOBAL_ASM("asm/non_matchings/ovl2_2/func_800F8560.s")

GLOBAL_ASM("asm/non_matchings/ovl2_2/func_800F8570.s")

GLOBAL_ASM("asm/non_matchings/ovl2_2/func_800F8728.s")

f32 sinf(f32);
f32 atanf(f32);
#include "types.h"
f32 func_800F8824(Vector *arg0, f32 arg1) {
    if (arg0 != NULL) {
        return atanf(-((arg0->x * sinf(arg1)) + (cosf(arg1) * arg0->z)) / arg0->y);
    }
    return 0;
}
