#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "main/contpad.h"
#include "main/gtl.h"
#include "main/object_helpers.h"
#include "main/object_manager.h"
#include "main/vi.h"
#include "buffers.h"
#include "ovl1/game.h"
#include "ovl1/ovl1_2_2.h"
#include "ovl1/ovl1_3.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/track.h"
#include "ovl1/util.h"
#include "sounds.h"

extern s32 saveCurrentWorld;
extern s32 savePercentComplete;
extern u8 D_800D6BC5;
extern s32 saveCheckCutsceneWatched(s32 arg0);

extern s32 D_800D6B78;
extern s32 D_800D6B7C;
extern s32 D_800D6B98;
extern s32 D_800D6B9C;

extern s32 D_8015C360_ovl4[];
extern s32 D_8015C710_ovl4;
extern s32 D_8015C714_ovl4;
extern s32 D_8015C718_ovl4;
extern s32 D_8015C71C_ovl4;
extern Gfx D_8015C028_ovl4[];
extern f32 D_8015C368_ovl4[];
extern f32 D_8015C3A0_ovl4[];
extern ScreenSettings D_8015C058_ovl4;
extern SceneSetup D_8015C074_ovl4;
extern s32 D_800D6B24;
extern u16 D_8012EB00[][320];
extern u16 D_803D6900[];
extern u16 D_803FC100[];
extern u16 gFrameBuffer[][320];
extern void *D_8018EE60;

extern void func_800A6BC0(s32);
extern void func_800A6E64(void);
extern void func_800A71A0(s32);
extern void func_800A78D0(s32);
extern void func_800A7A40(void);
extern void func_800A8724(s32);
extern void func_800AE048(s32);
extern void func_800AE0F0(void);
extern s32 func_800AEA64(s32, s32, s32);
extern void func_800B2F54(s32, s32, f32);
extern void play_music(s32, s32);

f32 func_80159124_ovl4(s32 arg0);
void func_80158428_ovl4(GObj *arg0);
void func_80158E98_ovl4(s32, s32, s32);
void setProcessMain(struct GObjProcess *, void (*)(struct GObj *));
extern struct GObjProcess *gEntityGObjProcessArray5[];
extern void procMainMove(struct GObj *);
extern void func_800B4924(s32);
extern void func_800A9F98(s32, f32);
extern void func_800AECC0(f32);
extern void func_800AED20(f32);
extern f32 D_8015C668_ovl4;
void func_8015986C_ovl4(GObj *arg0);
s32 func_8015874C_ovl4(void);
struct DObj *func_801587CC_ovl4(u32 arg0);
void func_80158CFC_ovl4(GObj *arg0);
extern s32 D_8015C300_ovl4[];
extern s32 D_8015C31C_ovl4;
extern s32 D_8015C320_ovl4;
extern s32 D_8015C324_ovl4;
extern void *D_8015C328_ovl4[][2];
extern f32 D_8015C664_ovl4;
extern void func_800A1F30(s32);
extern s32 func_800A8234(s32, s32, s32);
extern void func_800B1900(u16);
void func_800B2340(Vector *vec, struct DObj *node, u32 track);
void func_800B26D8(Vector *vec, struct DObj *node, u32 track);

// The listing for this function is 0x70 and spans the empty
// func_80158188_ovl4 that follows it -- splat merged them because there
// is no symbol at 0x80158188. 26 instructions here + 2 in that empty
// function is the listing's 28. verify.py reports 1 diff for exactly
// that reason and is wrong; check_layout.py and check_tu_size.py agree
// with this split.
s32 func_80158120_ovl4(void) {
    s32 ret = 0;

    if (D_800E98E0[omCurrentObj->objId] > 0) {
        D_800E98E0[omCurrentObj->objId]--;
        return 0;
    }
    if (gPlayerControllers[0].buttonHeldLong & R_JPAD) {
        ret = 1;
    }
    if (gPlayerControllers[0].buttonHeldLong & L_JPAD) {
        ret = -1;
    }
    return ret;
}

void func_80158188_ovl4(void) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_4/func_80158190_ovl4.s")

void func_80158224_ovl4(GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = NULL;
    D_8015C718_ovl4 = omCurrentObj->objId;
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 5;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = D_800D6B98;
    func_800B2F54(0x10, D_8015C360_ovl4[D_8015C71C_ovl4], func_80159124_ovl4(D_800D6B98));
    func_800A71A0(0x10);
    if (D_800D6B7C != 0) {
        play_sound(SOUND_SELECTJET1);
        D_800E9E20[omCurrentObj->objId] = D_800D6B98 + 1;
        ohSleep(5);
        D_800D6B7C = 0;
        D_800E9C60[omCurrentObj->objId] = 2;
        D_800D6B9C = 0;
        while (D_800E9C60[omCurrentObj->objId] != 0) {
            ohSleep(1);
        }
        ohSleep(5);
    }
    D_800DF150[omCurrentObj->objId] = func_80158428_ovl4;
    while (D_8015C710_ovl4 == 0) {
        ohSleep(1);
    }
    D_800DF150[omCurrentObj->objId] = NULL;
    D_8015C710_ovl4 = 2;
    curObjSleepForever();
}

void func_80158428_ovl4(GObj *arg0) {
    s32 tmp_func_return;

    if (D_800E9AA0[omCurrentObj->objId].as_s32 != 0) {
        D_800E9AA0[omCurrentObj->objId].as_s32 = D_800E9AA0[omCurrentObj->objId].as_s32 - 1;
        return;
    }
    if (D_800E9C60[omCurrentObj->objId] != 0) {
        D_800E98E0[D_8015C718_ovl4] = 0;
        return;
    }
    if (gPlayerControllers[0].buttonPressed & (A_BUTTON | START_BUTTON)) {
        D_8015C710_ovl4 = 1;
        play_sound(SOUND_KETTEIWL);
        return;
    }
    tmp_func_return = func_80158120_ovl4();
    if (tmp_func_return == 1) {
        if (D_800D6B98 < func_8015874C_ovl4()) {
            D_800E9E20[omCurrentObj->objId] = D_800D6B98 + 1;
            D_800E9C60[omCurrentObj->objId] = 2;
            play_sound(SOUND_SELECTJET1);
            D_800D6B9C = 0;
            D_800E98E0[omCurrentObj->objId] = 0x25;
        } else {
            if ((D_8015C71C_ovl4 == 0) && (func_8015874C_ovl4() == 5)
             || ((D_8015C71C_ovl4 == 1) && (func_8015874C_ovl4() == 6)))
            {
                D_800E9E20[omCurrentObj->objId] = 0;
                D_800E9C60[omCurrentObj->objId] = 2;
                play_sound(SOUND_SELECTJET1);
                D_800D6B9C = 0;
                D_800E98E0[omCurrentObj->objId] = 0x25;
            }
        }
    }
    if (tmp_func_return == -1) {
        if (D_800D6B98 > 0) {
            D_800E9E20[omCurrentObj->objId] = D_800D6B98 - 1;
            D_800E9C60[omCurrentObj->objId] = 1;
            play_sound(SOUND_SELECTJET1);
            D_800D6B9C = 0;
            D_800E98E0[omCurrentObj->objId] = 0x25;
            return;
        }
        if ((D_8015C71C_ovl4 == 0) && (func_8015874C_ovl4() == 5)
         || ((D_8015C71C_ovl4 == 1) && (func_8015874C_ovl4() == 6)))
        {
                D_800E9E20[omCurrentObj->objId] = func_8015874C_ovl4();
                D_800E9C60[omCurrentObj->objId] = 1;
                play_sound(SOUND_SELECTJET1);
                D_800D6B9C = 0;
                D_800E98E0[omCurrentObj->objId] = 0x25;
        }
    }
}

s32 func_8015874C_ovl4(void) {
    if (saveCurrentWorld < 6) {
        return saveCurrentWorld - 1;
    }
    if (D_800D6BC5 == 0) {
        return 5;
    }
    if (savePercentComplete != 0x64) {
        return 5;
    }
    if (saveCheckCutsceneWatched(0xD) == 0) {
        return 5;
    }
    return 6;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_4/func_801587CC_ovl4.s")

void func_801588F4_ovl4(GObj *arg0, s32 arg1) {
    s32 unused;
    Vector posVec;
    Vector angleVec;
    s32 unused2;

    D_800E98E0[omCurrentObj->objId] = arg1;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    if (func_8015874C_ovl4() < arg1) {
        func_800B1900(((u16 *) omCurrentObj)[1]);
    }
    D_800DF150[omCurrentObj->objId] = func_80158CFC_ovl4;
    func_800B2340(&posVec, func_801587CC_ovl4(arg1), D_8015C714_ovl4);
    gEntitiesNextPosXArray[omCurrentObj->objId] = posVec.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = posVec.y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = posVec.z;
    func_800B26D8(&angleVec, func_801587CC_ovl4(arg1), D_8015C714_ovl4);
    gEntitiesAngleXArray[omCurrentObj->objId] = angleVec.x;
    gEntitiesAngleYArray[omCurrentObj->objId] = angleVec.y;
    gEntitiesAngleZArray[omCurrentObj->objId] = angleVec.z;
    if ((arg1 == 5) && (func_8015874C_ovl4() != 6)) {
        func_800A9864(D_8015C31C_ovl4, 0x1869F, 0x10);
        if (D_8015C320_ovl4 != 0) {
            func_800AA018(D_8015C320_ovl4);
        }
        if (D_8015C324_ovl4 != 0) {
            func_800AA018(D_8015C324_ovl4);
        }
    } else {
        func_800A9864(D_8015C300_ovl4[arg1], 0x1869F, 0x10);
        if (D_8015C328_ovl4[arg1][0] != NULL) {
            func_800AA018((s32) D_8015C328_ovl4[arg1][0]);
        }
        if (D_8015C328_ovl4[arg1][1] != NULL) {
            func_800AA018((s32) D_8015C328_ovl4[arg1][1]);
        }
    }
    if (arg1 == 6) {
        D_800E9AA0[omCurrentObj->objId].as_s32 = func_800A8234(1, 0, 6);
    }
    while (1) {
        if (arg1 == 2) {
            if ((arg0->animTimer == 24.0f)
             || (arg0->animTimer == 124.0f)
             || (arg0->animTimer == 224.0f)
             || (arg0->animTimer == 324.0f)
             || (arg0->animTimer == 424.0f)
             || (arg0->animTimer == 524.0f)) {
                D_800E9AA0[omCurrentObj->objId].as_s32 = func_800A8234(1, 0, 2);
            }
            if ((arg0->animTimer == 50.0f)
             || (arg0->animTimer == 150.0f)
             || (arg0->animTimer == 250.0f)
             || (arg0->animTimer == 350.0f)
             || (arg0->animTimer == 450.0f)
             || (arg0->animTimer == D_8015C664_ovl4)) {
                func_800A1F30(D_800E9AA0[omCurrentObj->objId].as_s32);
                D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
            }
        }
        ohSleep(1);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_4/func_80158CFC_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_4/func_80158E98_ovl4.s")

f32 func_80159124_ovl4(s32 arg0) {
    if (D_8015C71C_ovl4 == 1) {
        return D_8015C3A0_ovl4[arg0];
    }
    return D_8015C368_ovl4[arg0];
}

void func_80159160_ovl4(GObj *arg0) {
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainMove);
    D_800DEF90[omCurrentObj->objId] = func_800B4924;
    D_800DF150[omCurrentObj->objId] = NULL;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = D_8015C668_ovl4;
    gEntitiesNextPosXArray[omCurrentObj->objId] = 0.0f;
    gEntitiesNextPosYArray[omCurrentObj->objId] = 0.0f;
    gEntitiesNextPosZArray[omCurrentObj->objId] = 0.0f;
    D_8015C714_ovl4 = omCurrentObj->objId;
    D_800E98E0[omCurrentObj->objId] = D_800D6B98;
    func_800A9864(0x3000A, 0x1869F, 0x10, &D_800E3750);
    if (D_8015C71C_ovl4 == 1) {
        func_800A9F98(0x30012, func_80159124_ovl4(D_800D6B98));
    } else {
        func_800A9F98(0x30014, func_80159124_ovl4(D_800D6B98));
    }
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    while (D_8015C710_ovl4 == 0) {
        if (D_800E9C60[D_8015C718_ovl4] != 0) {
            func_80158E98_ovl4(D_800D6B98, D_800E9E20[D_8015C718_ovl4], D_800E9C60[D_8015C718_ovl4]);
        }
        ohSleep(1);
    }
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_4/func_801593A4_ovl4.s")

void func_80159828_ovl4(void) {
    D_800D6B78 = 0;
    if (func_8015874C_ovl4() == 6) {
        D_8015C71C_ovl4 = 1;
    } else {
        D_8015C71C_ovl4 = 0;
    }
}

void func_8015986C_ovl4(GObj *arg0) {
    if ((D_800D6B24 == 0) && (D_8015C710_ovl4 == 2)) {
        utilSetRectColorFullScreen(0, 0, 0);
        utilSpawnRect(0, 0x10, 2);
    }
}

void func_801598C4_ovl4(void) {
    s32 i;

    gameSetUpdateRate(2.0f);
    ohCreateCameraWrapper(0x19, 0x80000000, 0x63, 3, 0xA0A32FF);
    func_800AE048(0x80);
    func_800AE0F0();
    func_800A6E64();
    func_800A78D0(0);
    func_800A8724(0);
    func_800A7A40();
    func_80159828_ovl4();
    play_music(0, 0x25);
    func_800A6BC0(0xB);
    D_800E98E0[func_800AEA64(2, 0, 0x70)] = 0;
    D_800E98E0[request_track_general(2, 0, 0x70)] = 1;
    for (i = 2; i < 9; i++) {
        D_800E98E0[request_track_general(2, 0, 0x70)] = i;
    }
    D_800E98E0[request_track_3(2, 0, 0x70)] = 9;
    HS64_omMakeGObj(0, func_8015986C_ovl4, 0x1A, 0x80000000);
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0xFF, -0x10, 0);
}

void func_80159A30_ovl4(Gfx **gp) {
    gSPDisplayList((*gp)++, &D_8015C028_ovl4);
}

#ifdef MIPS_TO_C
// near-match: same 4x unroll, but the ROM rotates the loop so the D_803D6900
// pointer bump lands before the last store and the bound is the D_803FC100
// symbol; no index/pointer form reproduces both.
void func_80159A54_ovl4(void) {
    s32 i;

    D_8015C058_ovl4.zBuffer = (u16 *) D_8012EB00 - 0xC80;
    viApplyScreenSettings(&D_8015C058_ovl4);
    D_8015C074_ovl4.gtlSetup.heapSize = (u8 *) gFrameBuffer - (u8 *) &D_8018EE60;
    for (i = 0; i < 320 * 240; i++) {
        ((u16 *) gFrameBuffer)[i] = 1;
        D_803D6900[i + 0x1F80] = 1;
    }
    D_8015C710_ovl4 = 0;
    gtlCreateScene(&D_8015C074_ovl4);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_4/func_80159A54_ovl4.s")
#endif
