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
/* D_8015C670_ovl4 (0.008726646f) is emitted by this TU now */
extern Gfx D_8015C3E0_ovl4[];

#include "main/vi.h"
#include "main/gtl.h"
extern u16 gFrameBuffer[][320];
extern u16 D_8012EB00[][320];
extern void *D_8018EE60;
extern u16 D_803D6900[];
extern ScreenSettings D_8015C410_ovl4;
extern SceneSetup D_8015C42C_ovl4;
extern u32 D_800D6B44;
extern void auStopBGM(void);
extern void auFunc80020C88(void);

extern void func_800A6BC0(s32);
extern void func_800A6E64(void);
extern void func_800A8724(s32);
extern void func_800A9864(s32, s32, s32);
extern void func_800AA154(s32);
extern void func_800AE0F0(void);
extern void func_800B4924(s32);
extern void func_800A71A0(s32);
extern void func_800AAF34(s32, s32, f32);
extern void play_music(s32, s32);

void func_80159B68_ovl4();
void func_80159C40_ovl4(GObj *);
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

void func_80159B68_ovl4(GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_80159C40_ovl4;
    func_800AAF34(0x10, 0x300AF, 0.0f);
    func_800A71A0(0x10);
    gEntitiesAngleYArray[omCurrentObj->objId] = 0.0f;
    D_800EA6E0[omCurrentObj->objId] = 0.008726646f;
    func_800A9864(0x300B7, 0x1869F, 0x10);
    D_8015C720_ovl4 = 2;
    ohSleep(0x1E);
    play_music(0, 0x17);
    curObjSleepForever();
}

void func_80159C40_ovl4(GObj *arg0) {
    f32 temp = 6.2831855f;

    gEntitiesAngleYArray[omCurrentObj->objId] += D_800EA6E0[omCurrentObj->objId];
    if (temp <= D_800E4C50[omCurrentObj->objId]) {
        D_800E4C50[omCurrentObj->objId] -= temp;
    }
}
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

void func_80159ED8_ovl4(Gfx **gp) {
    gSPDisplayList((*gp)++, &D_8015C3E0_ovl4);
}

// The (u32) cast on D_8012EB00 and the vu16 casts in the clear loop are both
// load-bearing; see src/ovl5/ovl5_7.c func_8017CC3C_ovl5.
void func_80159EFC_ovl4(void) {
    s32 i;

    auStopBGM();
    D_800D6B44 = 0x99999999;
    auFunc80020C88();
    D_8015C410_ovl4.zBuffer = (u16 *) ((u32) D_8012EB00 - 0x1900);
    viApplyScreenSettings(&D_8015C410_ovl4);
    D_8015C42C_ovl4.gtlSetup.heapSize = (u8 *) gFrameBuffer - (u8 *) &D_8018EE60;
    i = 0;
    do {
        ((vu16 *) gFrameBuffer)[i] = 1;
        ((vu16 *) D_803D6900)[i + 0x1F80] = 1;
        i++;
    } while (i != 320 * 240);
    gtlCreateScene(&D_8015C42C_ovl4);
}
