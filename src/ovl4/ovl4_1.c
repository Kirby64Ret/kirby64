#include "common.h"
#include "GObj.h"
#include "main/contpad.h"
#include "main/gtl.h"
#include "main/math.h"
#include "main/object_helpers.h"
#include "main/object_manager.h"
#include "main/rdp_reset.h"
#include "main/vi.h"
#include "ovl1/game.h"
#include "ovl1/save_file.h"
#include "ovl1/ovl1_2_2.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/track.h"
#include "ovl1/util.h"
#include "sounds.h"

extern s32 D_800D6B24;
extern s32 D_8015C680_ovl4;
extern Lights1 D_800BE548;
extern u16 gFrameBuffer[][320];
extern u16 D_803DA800[][320]; // fb2
extern u16 D_8012EB00[][320]; // zbuf
extern void *D_8018EE60;

extern void func_800A73B0(void);

// forward declare
void func_80151B08_ovl4(void);
void func_80151CC8_ovl4(Gfx **);

u32 D_80159FC0_ovl4[] = {
    2000,
    4,
    26,
    20,
    50,
    0x02000000,
    0x14000402,
    0x06140200,
    0x05006300,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000,
};

f32 D_80159FF4_ovl4[] = {
    -60, 0, 60,
    0, -60, 0,
    0, 60, 0
};

Gfx D_8015A018_ovl4[] = {
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_ZBUFFER | G_SHADE | G_CULL_BACK | G_LIGHTING | G_SHADING_SMOOTH),
    gsSPSetLights1(D_800BE548),
    gsSPEndDisplayList(),
};

ScreenSettings D_8015A048_ovl4 = {
    gFrameBuffer, D_803DA800, NULL,
    D_8012EB00,
    320, 240,
    0x00000299
};

SceneSetup D_8015A064_ovl4 = {
    {
        0,
        omUpdateAll, func_800A73B0,
        &D_8018EE60, 0,
        1,
        2,
        0x4000,
        0x5800,
        0x800,
        0,

        0x4800,
        0,
        0x4000,
        func_80151CC8_ovl4,
        func_8000464C,
    },
    0x00000080,
    0x00000600,
    0x00000080,
    0x00000000,
    0x00000180,
    0x00000080,
    0x00000050,
    0x0000012C,
    0x00000000,
    0x00000000,
    0x00000400,
    0x00000080,
    0x00000100,
    0x00000088,
    0x00000000,
    0x00000058,
    0x0000000A,
    0x00000090,
    func_80151B08_ovl4
};

void func_800A6F68(
    s32, 
    f32, f32, f32,
    f32, f32, f32,
    f32, f32, f32
);

// forward decl
void func_80151990_ovl4(GObj *arg0);
void func_80151A0C_ovl4(GObj *arg0);

// send to ovl1 bss
extern u32 D_800D6B74;
extern s32 D_800D6B54[];
extern s16 D_800D6B30;

// send to ovl1 data
extern s32 D_800BE4EC;

void check_save_file_completion_cheat_code(Unused GObj *arg0) {
    if (gPlayerControllers[1].buttonHeld & L_TRIG) {
        switch (D_800E9C60[omCurrentObj->objId]) {
            case 0:
                if (gPlayerControllers[1].buttonPressed & U_CBUTTONS) {
                    D_800E9C60[omCurrentObj->objId]++;
                }
                break;
            case 1:
                if (gPlayerControllers[1].buttonPressed & U_CBUTTONS) {
                    D_800E9C60[omCurrentObj->objId]++;
                }
                break;
            case 2:
                if (gPlayerControllers[1].buttonPressed & R_TRIG) {
                    D_800E9C60[omCurrentObj->objId]++;
                }
                break;
            case 3:
                if (gPlayerControllers[1].buttonPressed & R_CBUTTONS) {
                    D_800E9C60[omCurrentObj->objId]++;
                }
                break;
            case 4:
                if (gPlayerControllers[1].buttonPressed & L_CBUTTONS) {
                    D_800E9C60[omCurrentObj->objId]++;
                }
                break;
            case 5:
                if ((gPlayerControllers[1].buttonPressed & START_BUTTON)
                 && (gSaveBuffer1.files[2].cutscenesWatched == 1)
                 && (gSaveBuffer1.files[2].level != SAVE_INIT_MAGIC)
                 && (gSaveBuffer1.files[1].level == SAVE_INIT_MAGIC))
                {
                    saveForceCompleteFile(2);
                    play_sound(SOUND_1UP1);
                    D_800E9C60[omCurrentObj->objId] = -1;
                }
                break;
        }
    }
}

void func_80151274_ovl4(void) {
    f32 temp_f0;
    s32 tmp;

    gEntitiesNextPosZArray[omCurrentObj->objId] = 0.0f;
    tmp = random_soft_u16();
    temp_f0 = 0.2f;
    gEntitiesAngleYArray[omCurrentObj->objId] = DTOR(D_80159FF4_ovl4[tmp & 7]);
    gEntitiesScaleXArray[omCurrentObj->objId] = temp_f0;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp_f0;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp_f0;
}

void func_80151338_ovl4(GObj *arg0) {
    gEntitiesNextPosXArray[omCurrentObj->objId] = 0.0f;
    gEntitiesNextPosYArray[omCurrentObj->objId] = 0.0f;
    switch (D_800E98E0[omCurrentObj->objId]) {
        case 0: // N64 logo?
            func_800AF8C0(0x17, 0xE, 4);
            utilSetRectColor(0, 0, 0);
            utilSpawnRect(0xFF, -8, 0);
            HS64_omMakeGObj(0, func_80151990_ovl4, 0x1A, 0x80000000);
            ohSleep(0x78);
            if (D_800D6B24 == 0) {
                utilSetRectColor(0xFF, 0xFF, 0xFF);
                utilSpawnRect(0, 8, 0);
                while (D_800D6B24 != 0) {
                    ohSleep(1);
                }
                D_800E98E0[request_track_3(0, 0x3C, 0x70)] = 1;
                func_800B1900((u16) omCurrentObj->objId);
            }
            else break;
        case 1: // HAL logo? (just running this code shows the N64 logo)
            D_800E9C60[omCurrentObj->objId] = 0;
            func_800AF8C0(0x18, 0xE, 4);
            utilSetRectColor(0xFF, 0xFF, 0xFF);
            utilSpawnRect(0xFF, -8, 0);
            D_800DF150[omCurrentObj->objId] = check_save_file_completion_cheat_code;
            ohSleep(4 seconds);
            utilSetRectColor(0, 0, 0);
            utilSpawnRect(0, 8, 2);
            break;
        case 2: // Kirby 64 title bg
            gEntitiesNextPosXArray[omCurrentObj->objId] = 10.0f;
            gEntitiesNextPosYArray[omCurrentObj->objId] = 10.0f;
            func_800AF8C0(0x19, 0x12, 4);
            func_800A6F68(0x10, 0.0f, 0.0f, 600.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
            utilSetRectColor(0, 0, 0);
            utilSpawnRect(0xFF, -8, 0);
            while (D_800D6B24 != 0) {
                ohSleep(1);
            }
            ohSleep(0x1E);
            D_8015C680_ovl4 = 600.0f * gameTicksPerDrawInv;
            HS64_omMakeGObj(0, func_80151A0C_ovl4, 0x1A, 0x80000000);
            break;
// the characters for case 2
        case 5: // ominous Waddle Dee floating
            func_800A9864(0x20060, 0x1869F, 0x10);
            gEntitiesNextPosXArray[omCurrentObj->objId] = -150.0f;
            gEntitiesNextPosYArray[omCurrentObj->objId] = -90.0f;
            func_80151274_ovl4();
            func_800AA018(0x202DB);
            func_800AA018(0x202DC);
            break;
        case 7: // ominous Adeleine floating
            func_800A9864(0x2006F, 0x1869F, 0x10);
            gEntitiesNextPosXArray[omCurrentObj->objId] = -75.0f;
            gEntitiesNextPosYArray[omCurrentObj->objId] = -90.0f;
            func_80151274_ovl4();
            func_800AA018(0x203D7);
            func_800AA018(0x203D8);
            break;
        case 3: break;
        case 4: // ominous Kirby floating
            func_800A9864(0x20007, 0x1869F, 0x10);
            gEntitiesNextPosXArray[omCurrentObj->objId] = 0.0f;
            gEntitiesNextPosYArray[omCurrentObj->objId] = -90.0f;
            func_80151274_ovl4();
            func_800AA018(0x2009B);
            func_800AA018(0x2009C);
            break;
        case 6: // ominous Dedede floating
            func_800A9864(0x2006B, 0x1869F, 0x10);
            gEntitiesNextPosXArray[omCurrentObj->objId] = 75.0f;
            gEntitiesNextPosYArray[omCurrentObj->objId] = -90.0f;
            func_80151274_ovl4();
            func_800AA018(0x203B2);
            func_800AA018(0x203B3);
            break;
        case 8: // ominous Ribbon floating
            func_800A9864(0x300C4, 0x1869F, 0x10);
            gEntitiesNextPosXArray[omCurrentObj->objId] = 150.0f;
            gEntitiesNextPosYArray[omCurrentObj->objId] = -60.0f;
            func_80151274_ovl4();
            func_800AA018(0x301D9);
            break;

// special cases
        case 9: // no controllers connected
            gEntitiesNextPosXArray[omCurrentObj->objId] = 32.0f;
            gEntitiesNextPosYArray[omCurrentObj->objId] = 88.0f;
            func_800AF8C0(0x1A, 0xE, 6);
            func_800A5B14(arg0, 0xFF, 0xD8, 0, 0xFF);
            utilSetRectColor(0, 0, 0);
            utilSpawnRect(0xFF, -8, 0);
            break;
        case 10: // wrong region
            gEntitiesNextPosXArray[omCurrentObj->objId] = 48.0f;
            gEntitiesNextPosYArray[omCurrentObj->objId] = 101.0f;
            func_800AF8C0(0x1B, 0xE, 6);
            func_800A5B14(arg0, 0xF7, 0xD6, 0, 0xFF);
            utilSetRectColor(0, 0, 0);
            utilSpawnRect(0xFF, -8, 0);
    }
    curObjSleepForever();
}

void func_80151990_ovl4(Unused GObj *arg0) {
    random_u16();
    random_soft_u16();
    if ((D_800D6B24 == 0) && (gPlayerControllers[0].buttonPressed & (A_BUTTON | START_BUTTON))) {
        play_sound(SOUND_KETTEI);
        utilSetRectColor(0, 0, 0);
        utilSpawnRect(0, 0x10, 2);
        D_800D6B74 = 0;
    }
}

void func_80151A0C_ovl4(Unused GObj *arg0) {
    random_u16();
    random_soft_u16();
    D_800BE4EC++;
    if (D_800D6B24 == 0) {
        if (--D_8015C680_ovl4 < 0) {
            D_800D6B74 = 2;
            utilSetRectColor(0, 0, 0);
            utilSpawnRect(0, 0x10, 2);
        }
        else if (gPlayerControllers[0].buttonPressed & (A_BUTTON | START_BUTTON)) {
            if ((gPlayerControllers[0].buttonHeld & (Z_TRIG | L_TRIG | R_TRIG)) == (Z_TRIG | L_TRIG | R_TRIG)) {
                play_sound(SOUND_KBYHI1);
            } else {
                play_sound(SOUND_KETTEI);
            }
            utilSetRectColor(0, 0, 0);
            utilSpawnRect(0, 0x10, 2);
        }
    }
}

void func_80151B08_ovl4(void) {
    Unused s32 pad[2];
    s32 i;

    func_80007C00(&ohCreateCameraWrapper(0x19, 0x80000000, 0x63, 3, 0xFF)->data.cam->viewport,
        10.0f,
        10.0f,
        310.0f,
        230.0f
    );
    func_800AE048(0x40);
    func_800AE0F0();
    func_800A6E64();
    func_800A8724(0);
    func_800A6BC0(0);
    switch (D_800D6B54[2]) {
        case 0:
            D_800E98E0[request_track_3(0, 0x3C, 0x70)] = 0;
            break;
        case 1:
            D_800E98E0[request_track_3(0, 0x3C, 0x70)] = 2;
            for (i = 4; i < 9; i++) {
                D_800E98E0[request_track_general(0, 0x3C, 0x70)] = i;
            }
            break;
        case 4:
            D_800E98E0[request_track_3(0, 0x3C, 0x70)] = 9;
            break;
        case 5:
            D_800E98E0[request_track_3(0, 0x3C, 0x70)] = 10;
            break;
    }
    D_800D6B30 = 0;
    utilSetRectColorFullScreen(0, 0, 0);
}

void func_80151CC8_ovl4(Gfx **gp) {
    gSPDisplayList((*gp)++, &D_8015A018_ovl4);
}

extern u16 D_803D6900[];
extern u16 D_803FC100[];
extern void auSetBGMVolume(s32 playerID, u32 vol);
extern void func_800A74D8(void);
extern void func_800BB3F0(void);

/* FACTORY: 13/59 (the old 14/59 counted the scratch-copy jump-table artifact).
 * Every instruction is right; the residue is the induction choice plus a
 * $v0/$v1 swap.  IDO makes the SECOND-written array the loop's induction
 * pointer, and this ROM makes the FIRST-written one (D_803D6900) the induction
 * while gFrameBuffer keeps $a0.  Swept: both store orders, all four vu16/u16
 * volatile combinations, for vs do/while, u32 index, leading and trailing pad
 * locals, an explicit pointer walk (77 insns, much worse), reusing arg0 as the
 * index, chained assignment in both directions, and s32 return types on
 * func_800BB3F0 / gtlCreateScene.  The four sibling clears (ovl4_2/3/4/5) all
 * write gFrameBuffer first and match with the vu16 casts; only this one does
 * not. */
#ifdef NON_MATCHING
// The (u32) cast on D_8012EB00 and the vu16 casts in the clear loop are both
// load-bearing; see src/ovl5/ovl5_7.c func_8017CC3C_ovl5.
s32 func_80151CEC_ovl4(s32 arg0) {
    s32 i;

    D_800D6B54[2] = arg0;
    *(s32 *) &D_800D6B74 = 1;
    scRemovePostProcessFunc();
    func_800A74D8();
    auSetBGMVolume(0, 0x7800);
    gameSetUpdateRate(2.0f);
    D_8015A048_ovl4.zBuffer = (u16 *) ((u32) D_8012EB00 - 0x1900);
    viApplyScreenSettings(&D_8015A048_ovl4);
    D_8015A064_ovl4.gtlSetup.heapSize = (u8 *) gFrameBuffer - (u8 *) &D_8018EE60;
    i = 0;
    do {
        ((vu16 *) gFrameBuffer)[i] = 1;
        ((vu16 *) D_803D6900)[i + 0x1F80] = 1;
        i++;
    } while (i != 320 * 240);
    gtlCreateScene(&D_8015A064_ovl4);
    func_800BB3F0();
    return D_800D6B74;
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_1/func_80151CEC_ovl4.s")
#endif
