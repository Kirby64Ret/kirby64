#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/util.h"
#include "track_arrays.h"

extern s32 D_800D6B24;
extern u8 D_8018EE00_ovl5;
extern Gfx D_8018A338_ovl5[];
void func_80182B08_ovl5(void);
extern void *D_8018A52C_ovl5;
extern void *D_8018A4D8_ovl5;
extern f32 D_8018DE20_ovl5;
extern f32 D_8018DE24_ovl5;
extern f32 D_8018DE28_ovl5;
extern f32 D_8018DE2C_ovl5;
void func_800A9864(void *, s32, s32);
extern s32 D_8018EE04_ovl5;
extern s32 D_800D6B6C;
extern void *D_8018A49C_ovl5;
extern void *D_8018A4A0_ovl5;
extern void *D_8018A4A8_ovl5;
extern void *D_8018A4B0_ovl5;
extern void *D_8018A4B4_ovl5;
extern void *D_8018A4BC_ovl5;
extern void *D_8018A4C4_ovl5;
extern void *D_8018A4C8_ovl5;
extern void *D_8018A4D0_ovl5;
void func_800AA018(void *);
void func_800AF27C(void);
void func_801824B0_ovl5(GObj *);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_12/func_80182360_ovl5.s")

void func_80182414_ovl5(GObj *arg0) {
    D_8018EE04_ovl5 = omCurrentObj->objId;
    D_800E98E0[omCurrentObj->objId] = 0xA;
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800DF150[omCurrentObj->objId] = func_801824B0_ovl5;
    while (1) {
        ohSleep(1);
    }
}

#include "main/contpad.h"
#include "ovl1/game.h"
void play_sound(s32);
extern u32 D_800D6B68;

void func_801824B0_ovl5(GObj *arg0) {
    if (D_8018EE00_ovl5 != 0) {
        return;
    }
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        D_800E98E0[omCurrentObj->objId]--;
        return;
    }
    if (D_800D6B6C == 0) {
        if (gPlayerControllers[0].buttonPressed & 0x9000) {
            play_sound(0xED);
            D_8018EE00_ovl5 = 1;
            D_800D6B68 = gGameState;
            gGameState = 0x21;
            return;
        }
        if (gPlayerControllers[0].buttonPressed & 0x4000) {
            play_sound(0x2B);
            D_8018EE00_ovl5 = 1;
            D_800D6B68 = gGameState;
            gGameState = 0xA;
        }
        return;
    }
    if (gPlayerControllers[0].buttonPressed & 0xD000) {
        play_sound(0xED);
        D_8018EE00_ovl5 = 1;
        D_800D6B68 = gGameState;
        gGameState = 0xA;
        D_800D6B6C = 0;
    }
}

#include "SPObj.h"
extern struct UnkStruct8015C740 D_8018A410_ovl5;
extern struct UnkStruct8015C740 D_8018A430_ovl5;
extern struct UnkStruct8015C740 D_8018A450_ovl5;
extern struct UnkStruct8015C740 D_8018A470_ovl5;
extern struct GObjProcess *gEntityGObjProcessArray5[];
SPObj *func_8015C740_ovl5(GObj *, struct UnkStruct8015C740 *);
void func_800AD1A0(void);

void func_801825E8_ovl5(GObj *arg0) {
    SPObj *spobj;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, &func_800AD1A0, 0x12, 0x80000000, 0x12);
    if (D_800D6B6C == 0) {
        func_8015C740_ovl5(arg0, &D_8018A410_ovl5);
        spobj = func_8015C740_ovl5(arg0, &D_8018A410_ovl5);
        spobj->xOffset = 160.0f;
        spobj->yOffset = 10.0f;
        spobj->unk5A |= 1;
        spobj->unkBA |= 1;
        func_8015C740_ovl5(arg0, &D_8018A430_ovl5);
        func_8015C740_ovl5(arg0, &D_8018A470_ovl5);
        func_8015C740_ovl5(arg0, &D_8018A450_ovl5);
    }
    curObjSleepForever();
}

void func_80182700_ovl5(GObj *arg0) {
    switch (D_800D6B6C) {
        case 1:
            func_800A9864(D_8018A4C4_ovl5, 0x1869F, 0x10);
            func_800AA018(D_8018A4C8_ovl5);
            func_800AF27C();
            func_800AA018(D_8018A4D0_ovl5);
            break;
        case 2:
            func_800A9864(D_8018A49C_ovl5, 0x1869F, 0x10);
            func_800AA018(D_8018A4A0_ovl5);
            func_800AF27C();
            func_800AA018(D_8018A4A8_ovl5);
            break;
        case 3:
            func_800A9864(D_8018A4B0_ovl5, 0x1869F, 0x10);
            func_800AA018(D_8018A4B4_ovl5);
            func_800AF27C();
            func_800AA018(D_8018A4BC_ovl5);
            break;
    }
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_12/func_80182804_ovl5.s")

/* 3 diffs: the hoisted `lwc1 $f20, D_8018DE24_ovl5` must sit AFTER both
   `addiu` of the hoisted array bases; no source/format form moves it.
   Re-swept wave 7: decl order, inline reads, statement order, one-line and
   empty-block line-number tricks -- all 3. Clone twin: func_80182A1C_ovl5. */
#ifdef NON_MATCHING
void func_8018293C_ovl5(GObj *arg0) {
    f32 inc;
    f32 wrap;

    func_800A9864(D_8018A52C_ovl5, 0x1869F, 0x10);
    inc = D_8018DE20_ovl5;
    wrap = D_8018DE24_ovl5;
    while (1) {
        gEntitiesAngleYArray[omCurrentObj->objId] += inc;
        if (wrap <= gEntitiesAngleYArray[omCurrentObj->objId]) {
            gEntitiesAngleYArray[omCurrentObj->objId] -= wrap;
        }
        ohSleep(1);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_12/func_8018293C_ovl5.s")
#endif
#ifdef NON_MATCHING
/* 3 diffs: IDO schedules the second lwc1 one slot early; the ROM emits it
   after both addiu of the hoisted array bases. Otherwise exact. */
void func_80182A1C_ovl5(GObj *arg0) {
    f32 inc;
    f32 wrap;

    func_800A9864(D_8018A4D8_ovl5, 0x1869F, 0x10);
    inc = D_8018DE28_ovl5;
    wrap = D_8018DE2C_ovl5;
    while (1) {
        gEntitiesAngleYArray[omCurrentObj->objId] += inc;
        if (wrap <= gEntitiesAngleYArray[omCurrentObj->objId]) {
            gEntitiesAngleYArray[omCurrentObj->objId] -= wrap;
        }
        ohSleep(1);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_12/func_80182A1C_ovl5.s")
#endif
void func_80182AFC_ovl5(void) {
    D_8018EE00_ovl5 = 0;
}

void func_80182B08_ovl5(void) {
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0, 0x10, 2);
}

extern s32 D_800D6B24;
extern u8 D_8018EE00_ovl5;
void func_80182B08_ovl5(void);

void func_80182B40_ovl5(struct GObj *arg0) {
    if (D_800D6B24 == 0 && D_8018EE00_ovl5 != 0) {
        func_80182B08_ovl5();
    }
}

typedef struct Unk18Bytes {
    s32 unk0[6];
} Unk18Bytes;

void gameSetUpdateRate(f32);
void func_800AAF34(s32, s32, f32);
extern Unk18Bytes D_800BE548;
extern Unk18Bytes D_8018A320_ovl5;
extern s32 D_8018A490_ovl5;
extern s32 D_8018A494_ovl5;
extern s32 D_8018A498_ovl5;
void func_80182B40_ovl5(struct GObj *);

void func_80182B80_ovl5(void) {
    s32 i;
    s32 track;

    gameSetUpdateRate(2.0f);
    if (D_800D6B6C == 2) {
        ohCreateCameraWrapper(0x19, 0x80000000, 0x63, 3, 0xCEB860FF);
    } else {
        ohCreateCameraWrapper(0x19, 0x80000000, 0x63, 3, 0xFF);
    }
    func_800AE048(0x80);
    func_800AE0F0();
    func_800A6E64();
    func_800A8724(0);
    func_80182AFC_ovl5();
    switch (D_800D6B6C) {
    case 0:
        play_music(0, 0x3B);
        break;
    case 1:
        play_music(0, 0x17);
        break;
    case 2:
    case 3:
        play_music(0, 9);
        break;
    }
    func_800A6BC0(0xA);
    switch (D_800D6B6C) {
    case 0:
        D_8018A320_ovl5 = D_800BE548;
        break;
    case 1:
        func_800AAF34(0x10, D_8018A498_ovl5, 0);
        func_800A71A0(0x10);
        break;
    case 2:
        func_800AAF34(0x10, D_8018A490_ovl5, 0);
        func_800A71A0(0x10);
        D_8018A320_ovl5 = D_800BE548;
        break;
    case 3:
        func_800AAF34(0x10, D_8018A494_ovl5, 0);
        func_800A71A0(0x10);
        D_8018A320_ovl5 = D_800BE548;
        break;
    }
    D_800E98E0[request_track_3(0xE, 0, 0x70)] = 0;
    switch (D_800D6B6C) {
    case 0:
        D_800E98E0[request_track_3(0xE, 0, 0x70)] = 1;
        break;
    case 1:
        i = 0;
        do {
            track = request_track_general(0xE, 0, 0x70);
            D_800E98E0[track] = 3;
            ((s32 *) D_800E9AA0)[track] = i;
            i++;
        } while (i != 4);
        D_800E98E0[request_track_general(0xE, 0, 0x70)] = 2;
        break;
    case 2:
        i = 0;
        do {
            track = request_track_general(0xE, 0, 0x70);
            D_800E98E0[track] = 3;
            ((s32 *) D_800E9AA0)[track] = i;
            i++;
        } while (i != 4);
        D_800E98E0[request_track_general(0xE, 0, 0x70)] = 4;
        D_800E98E0[request_track_general(0xE, 0, 0x70)] = 2;
        break;
    case 3:
        D_800E98E0[request_track_general(0xE, 0, 0x70)] = 5;
        D_800E98E0[request_track_general(0xE, 0, 0x70)] = 2;
        break;
    }
    HS64_omMakeGObj(0, &func_80182B40_ovl5, 0x1A, 0x80000000);
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0xFF, -0x10, 0);
}

void func_80182FC4_ovl5(Gfx **g) {
    gSPDisplayList((*g)++, D_8018A338_ovl5);
}

#include "main/vi.h"
#include "main/gtl.h"
extern u16 gFrameBuffer[][320];
extern u16 D_8012EB00[][320];
extern void *D_8018EE60;
extern u16 D_803D6900[];
extern ScreenSettings D_8018A368_ovl5;
extern SceneSetup D_8018A384_ovl5;
void func_800A74D8(void);

// The (u32) cast on D_8012EB00 and the vu16 casts in the clear loop are both
// load-bearing; see src/ovl5/ovl5_7.c func_8017CC3C_ovl5. verify.py reports
// one reloc false positive on the a1 bound (%hi(D_803D6900)+2 / %lo+0x5800
// links to 0x803FC100 exactly).
void func_80182FE8_ovl5(void) {
    s32 i;

    func_800A74D8();
    D_8018A368_ovl5.zBuffer = (u16 *) ((u32) D_8012EB00 - 0x1900);
    viApplyScreenSettings(&D_8018A368_ovl5);
    D_8018A384_ovl5.gtlSetup.heapSize = (u8 *) gFrameBuffer - (u8 *) &D_8018EE60;
    i = 0;
    do {
        ((vu16 *) gFrameBuffer)[i] = 1;
        ((vu16 *) D_803D6900)[i + 0x1F80] = 1;
        i++;
    } while (i != 320 * 240);
    gtlCreateScene(&D_8018A384_ovl5);
}


