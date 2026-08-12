#include <ultra64.h>
#include <macros.h>
#include "buffers.h"
#include "GObj.h"
#include "SPObj.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/util.h"
#include "track_arrays.h"
#include "ovl1/track.h"
#include "main/object_helpers.h"

extern Gfx D_801895A8_ovl5[];
void func_8017EE4C_ovl5(GObj *);
void func_8017EDE0_ovl5();
void func_8017F008_ovl5();
void func_8017F110_ovl5();
#include "unk_structs/D_800D7178.h"
extern u32 D_800D6B68;
extern u8 D_8018EDC0_ovl5;
extern s32 D_8018EDC4_ovl5;
#include "ovl1/game.h"

void func_8017ED60_ovl5(void) {
    switch (D_800E98E0[omCurrentObj->objId]) {
        case 0:
            func_8017EDE0_ovl5();
            break;
        case 1:
            func_8017F008_ovl5();
            break;
        case 2:
            func_8017F110_ovl5();
            break;
    }
}

void func_8017EDE0_ovl5(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = 0xA;
    ohSleep(0xA);
    D_800DF150[omCurrentObj->objId] = func_8017EE4C_ovl5;
    curObjSleepForever();
}

#include "main/contpad.h"

void play_sound(s32);

void func_8017EE4C_ovl5(GObj *arg0) {
    s32 *p;

    if (D_8018EDC0_ovl5 == 0) {
        if (!(gPlayerControllers[0].buttonHeld & 0xF00)) {
            D_800E98E0[omCurrentObj->objId] = 0;
        }
        p = &D_800E98E0[omCurrentObj->objId];
        if (*p != 0) {
            *p -= 1;
            return;
        }
        if (gPlayerControllers[0].buttonPressed & 0x9000) {
            play_sound(0xED);
            D_800D6B68 = gGameState;
            gGameState = 0x1C;
            D_8018EDC0_ovl5 = 1;
            return;
        }
        if (gPlayerControllers[0].buttonPressed & 0x4000) {
            play_sound(0x2B);
            D_800D6B68 = gGameState;
            gGameState = 0xA;
            D_8018EDC0_ovl5 = 1;
            return;
        }
        if (gPlayerControllers[0].buttonHeld & 0x100) {
            play_sound(0x113);
            D_8018EDC4_ovl5 = D_8018EDC4_ovl5 + 1;
            if (D_8018EDC4_ovl5 == 3) {
                D_8018EDC4_ovl5 = 0;
            }
            D_800E98E0[omCurrentObj->objId] = 5;
            return;
        }
        if (gPlayerControllers[0].buttonHeld & 0x200) {
            play_sound(0x113);
            D_8018EDC4_ovl5 = D_8018EDC4_ovl5 - 1;
            if (D_8018EDC4_ovl5 < 0) {
                D_8018EDC4_ovl5 = 2;
            }
            D_800E98E0[omCurrentObj->objId] = 5;
        }
    }
}

extern struct UnkStruct8015C740 D_80189680_ovl5;
extern struct UnkStruct8015C740 D_801896A0_ovl5;
extern struct UnkStruct8015C740 D_801896C0_ovl5;
extern struct UnkStruct8015C740 D_801896E0_ovl5;
SPObj *func_8015C740_ovl5(GObj *, struct UnkStruct8015C740 *);
void func_800AD1A0(void);
void func_8017F008_ovl5(GObj *arg0) {
    SPObj *spobj;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, &func_800AD1A0, 0x12, 0x80000000, 0x12);
    func_8015C740_ovl5(arg0, &D_80189680_ovl5);
    spobj = func_8015C740_ovl5(arg0, &D_80189680_ovl5);
    spobj->xOffset = 160.0f;
    spobj->yOffset = 10.0f;
    spobj->unk5A |= 1;
    spobj->unkBA |= 1;
    func_8015C740_ovl5(arg0, &D_801896A0_ovl5);
    func_8015C740_ovl5(arg0, &D_801896C0_ovl5);
    func_8015C740_ovl5(arg0, &D_801896E0_ovl5);
    curObjSleepForever();
}

typedef union Unk3Ptrs {
    struct UnkStruct8015C740 *unk0[3];
} Unk3Ptrs;

extern Unk3Ptrs D_80189580_ovl5;
extern Unk3Ptrs D_8018958C_ovl5;
extern Unk3Ptrs D_80189598_ovl5;
void func_800ACBDC(GObj *);

void func_8017F110_ovl5(GObj *arg0) {
    s32 pad;
    s32 prev;
    Unk3Ptrs sp5C = D_80189580_ovl5;
    Unk3Ptrs sp50 = D_8018958C_ovl5;
    Unk3Ptrs sp44 = D_80189598_ovl5;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, &func_800AD1A0, 0x12, 0x80000000, 0x12);
    prev = 3;
    while (1) {
        if (prev != D_8018EDC4_ovl5) {
            prev = D_8018EDC4_ovl5;
            func_800ACBDC(arg0);
            func_8015C740_ovl5(arg0, sp5C.unk0[prev]);
            func_8015C740_ovl5(arg0, sp50.unk0[prev]);
            func_8015C740_ovl5(arg0, sp44.unk0[prev]);
        }
        ohSleep(1);
    }
}


void func_8017F2A8_ovl5(void) {
    D_800E98E0[request_track_3(9, 0, 0x70)] = 1;
    D_800E98E0[request_track_3(9, 0, 0x70)] = 2;
}

void func_8017F304_ovl5(void) {
    D_8018EDC0_ovl5 = 0;
    if (D_800D6B68 == 0xA) {
        D_8018EDC4_ovl5 = 0;
        D_800D7178.unk68 = 1;
        return;
    }
    switch (D_800D7178.unk44) {
        case 0x1D:
            D_8018EDC4_ovl5 = 0;
            break;
        case 0x1F:
            D_8018EDC4_ovl5 = 1;
            break;
        case 0x1E:
            D_8018EDC4_ovl5 = 2;
            break;
    }
}

void func_8017F38C_ovl5(void) {
    if (gGameState != 0xA) {
        switch (D_8018EDC4_ovl5) {
            case 0:
                D_800D7178.unk44 = 0x1D;
                break;
            case 2:
                D_800D7178.unk44 = 0x1E;
                break;
            case 1:
                D_800D7178.unk44 = 0x1F;
                break;
        }
    }
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0, 0x10, 2);
}

extern s32 D_800D6B24;
extern u8 D_8018EDC0_ovl5;
void func_8017F38C_ovl5(void);

void func_8017F428_ovl5(struct GObj *arg0) {
    if (D_800D6B24 == 0 && D_8018EDC0_ovl5 != 0) {
        func_8017F38C_ovl5();
    }
}

#include "ovl1/ovl1_3.h"
void play_music(s32, s32);
void func_8017F304_ovl5(void);
void func_8017F2A8_ovl5(void);
void func_8017F428_ovl5(GObj *);

void func_8017F468_ovl5(void) {
    gameSetUpdateRate(2.0f);
    ohCreateCameraWrapper(0x19, 0x80000000, 0x63, 1, 0);
    func_800AE048(0x80);
    func_800AE0F0();
    func_800A6E64();
    func_800A8724(0);
    func_800A6BC0(0xA);
    func_800AAF34(0x10, 0x30001, 0);
    func_800A71A0(0x10);
    if (D_800D6B68 != 0x1C) {
        play_music(0, 0x23);
    }
    func_8017F304_ovl5();
    D_800E98E0[request_track_3(9, 0, 0x70)] = 0;
    func_8017F2A8_ovl5();
    HS64_omMakeGObj(0, func_8017F428_ovl5, 0x1A, 0x80000000);
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0xFF, -0x10, 0);
}

void func_8017F570_ovl5(Gfx **g) {
    gSPDisplayList((*g)++, D_801895A8_ovl5);
}

// PADDING TRAP (padtrap: trap, 4 words after .size) -- converting this would
// shorten the TU and shift the segment, so the pragma must stay. The body below
// is the framebuffer-clear form proved byte-exact on func_8017CC3C_ovl5 (the
// vu16 casts are what stop IDO hoisting the D_803D6900 induction bump); it is
// kept live for the PC port, which builds with NON_MATCHING.
#ifdef NON_MATCHING
#include "main/vi.h"
#include "main/gtl.h"

extern u16 gFrameBuffer[][320];
extern u16 D_8012EB00[][320];
extern void *D_8018EE60;
extern u16 D_803D6900[];
extern ScreenSettings D_801895D8_ovl5;
extern SceneSetup D_801895F4_ovl5;

void func_8017F594_ovl5(void) {
    s32 i;

    if (D_800D6B68 != 0x1C) {
        func_800A74D8();
    }
    D_801895D8_ovl5.zBuffer = (u16 *) ((u32) D_8012EB00 - 0x1900);
    viApplyScreenSettings(&D_801895D8_ovl5);
    D_801895F4_ovl5.gtlSetup.heapSize = (u8 *) gFrameBuffer - (u8 *) &D_8018EE60;
    i = 0;
    do {
        ((vu16 *) gFrameBuffer)[i] = 1;
        ((vu16 *) D_803D6900)[i + 0x1F80] = 1;
        i++;
    } while (i != 320 * 240);
    gtlCreateScene(&D_801895F4_ovl5);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_9/func_8017F594_ovl5.s")
#endif

