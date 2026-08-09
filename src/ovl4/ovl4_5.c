#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "main/contpad.h"
#include "main/object_helpers.h"
#include "main/object_manager.h"
#include "ovl1/ovl1_3.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/track.h"
#include "ovl1/util.h"

extern s32 D_800D6B24;
extern s32 D_800D71E8[];
extern s32 D_8015C720_ovl4;
extern Gfx D_8015C3E0_ovl4[];

extern void func_800A6BC0(s32);
extern void func_800A6E64(void);
extern void func_800A8724(s32);
extern void func_800A9864(s32, s32, s32);
extern void func_800AA154(s32);
extern void func_800AE0F0(void);
extern void func_800B4924(s32);

void func_80159B68_ovl4(void);
void func_80159CB8_ovl4();
void func_80159D70_ovl4(GObj *arg0);
void func_80159D78_ovl4(GObj *arg0);

void func_80159B00_ovl4(void) {
    switch (gEntityFuncListIDArray[omCurrentObj->objId]) {
        case 0:
            func_80159B68_ovl4();
            break;
        case 1:
            func_80159CB8_ovl4();
            break;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_5/func_80159B68_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_5/func_80159C40_ovl4.s")

void func_80159CB8_ovl4(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B4924;
    D_800DF150[omCurrentObj->objId] = func_80159D70_ovl4;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800A9864(0x300B6, 0x1869F, 0x10);
    func_800AA154(0x300AE);
    D_8015C720_ovl4 = 1;
    func_800AA018(0x300AD);
    curObjSleepForever();
}

void func_80159D70_ovl4(GObj *arg0) {
}

void func_80159D78_ovl4(GObj *arg0) {
    if (D_800D6B24 == 0) {
        if (D_8015C720_ovl4 == 1) {
            if (gPlayerControllers[0].buttonPressed & (A_BUTTON | START_BUTTON)) {
                utilSetRectColorFullScreen(0, 0, 0);
                utilSpawnRect(0, 0x10, 2);
            }
        }
    }
}

#ifdef MIPS_TO_C
// 2 diffs: D_800D71F8/D_800D71FC are not linkable symbols (they live inside the
// 0xA0-byte bss blob D_800D71E8), and every form that keeps the D_800D71E8
// symbol folds the +0x10/+0x14 into the store displacement instead of %lo().
extern s32 D_800D71F8;
extern s32 D_800D71FC;

void func_80159DE8_ovl4(void) {
    ohCreateCameraWrapper(0x19, 0x80000000, 0x63, 3, 0xFF);
    func_800AE0F0();
    func_800A6E64();
    func_800A8724(0);
    func_800A6BC0(4);
    D_8015C720_ovl4 = 0;
    D_800D71F8 = request_track_general(5, 0, 0x70);
    gEntityFuncListIDArray[D_800D71F8] = 0;
    D_800D71FC = request_track_general(5, 0, 0x70);
    gEntityFuncListIDArray[D_800D71FC] = 1;
    HS64_omMakeGObj(0, func_80159D78_ovl4, 0x1A, 0x80000000);
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0xFF, -0x10, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_5/func_80159DE8_ovl4.s")
#endif

void func_80159ED8_ovl4(Gfx **gp) {
    gSPDisplayList((*gp)++, &D_8015C3E0_ovl4);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_5/func_80159EFC_ovl4.s")
