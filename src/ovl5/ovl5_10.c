#include <ultra64.h>
#include <macros.h>
#include "buffers.h"
#include "GObj.h"
#include "SPObj.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/util.h"
#include "track_arrays.h"
#include "unk_structs/D_800D7178.h"

extern s32 D_800D6B24;
extern u8 D_8018EDD0_ovl5;
extern s32 D_8018EDDC_ovl5;
void func_8017F7B0_ovl5(GObj *);
extern Gfx D_80189868_ovl5[];
s32 saveCheckCutsceneWatched(s32);
void func_801800CC_ovl5(void);
typedef union Unk48Ptrs {
    struct UnkStruct8015C740 *unk0[18];
} Unk48Ptrs;

extern Unk48Ptrs D_80189820_ovl5;
extern struct UnkStruct8015C740 D_80189BC0_ovl5;
void func_8017F6F8_ovl5();
void func_8017FA7C_ovl5();
void func_8017FD84_ovl5();
void func_8017FFB8_ovl5();
extern u32 D_800D6B68;
extern u8 D_8018EDD0_ovl5;
extern u32 D_8018EDD4_ovl5;
extern u32 D_80189C98_ovl5;

void func_8017F660_ovl5(void) {
    switch (D_800E98E0[omCurrentObj->objId]) {
        case 0:
            func_8017F6F8_ovl5();
            break;
        case 1:
            func_8017FA7C_ovl5();
            break;
        case 2:
            func_8017FD84_ovl5();
            break;
        case 3:
            func_8017FFB8_ovl5();
            break;
    }
}

void func_8017F6F8_ovl5(GObj *arg0) {
    D_8018EDDC_ovl5 = omCurrentObj->objId;
    D_800E98E0[omCurrentObj->objId] = 0xA;
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800DF150[omCurrentObj->objId] = func_8017F7B0_ovl5;
    while (1) {
        ohSleep(1);
    }
}

#ifdef NON_MATCHING
/* Faithful, not byte-exact (24/179): the ROM keeps `objId << 2` in $v1 and the
   loaded counter in $a0 and materialises &gPlayerControllers later; this C
   gets $a0/$v0 and hoists the controller base. An explicit objId local makes
   it worse (29); declaration order is inert. */
#include "main/contpad.h"
extern s32 D_8018EDD8_ovl5;
void play_sound(s32);
void func_800A74D8(void);

void func_8017F7B0_ovl5(GObj *arg0) {
    s32 *p;
    s32 t;
    u32 kind;

    if (D_8018EDD0_ovl5 == 0) {
        p = &D_800E98E0[omCurrentObj->objId];
        t = *p;
        if (t != 0) {
            *p = t - 1;
            return;
        }
        if (gPlayerControllers[0].buttonPressed & 0x4000) {
            play_sound(0x2B);
            D_800D6B68 = gGameState;
            gGameState = 0xA;
            D_8018EDD0_ovl5 = 1;
            return;
        }
        if (gPlayerControllers[0].buttonHeld & 0xC00) {
            D_800E9C60[omCurrentObj->objId] += 1;
        } else {
            ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 0;
            D_800E9C60[omCurrentObj->objId] = 0;
        }
        if (D_800E98E0[D_8018EDD8_ovl5] == 0) {
            p = &((s32 *) D_800E9AA0)[omCurrentObj->objId];
            t = *p;
            if (t != 0) {
                *p = t - 1;
                return;
            }
            if ((gPlayerControllers[0].buttonPressed & 0x9000) &&
                (func_8017FB84_ovl5((&D_80189C98_ovl5)[D_8018EDD4_ovl5]) != 0)) {
                play_sound(0xED);
                D_800D6B68 = gGameState;
                kind = (&D_80189C98_ovl5)[D_8018EDD4_ovl5];
                if (kind == 0x10) {
                    gGameState = 0x22;
                } else {
                    gGameState = 0x15;
                }
                D_800D7178.unk6C = D_8018EDD4_ovl5;
                D_800D7178.unk70 = kind;
                D_8018EDD0_ovl5 = 1;
                func_800A74D8();
                return;
            }
            if (gPlayerControllers[0].buttonHeld & 0x800) {
                play_sound(0x113);
                D_800E98E0[D_8018EDD8_ovl5] = 1;
                if (D_8018EDD4_ovl5 == 0) {
                    D_8018EDD4_ovl5 = 0x11;
                } else {
                    D_8018EDD4_ovl5 -= 1;
                }
                ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 1;
                return;
            }
            if (gPlayerControllers[0].buttonHeld & 0x400) {
                play_sound(0x113);
                D_800E98E0[D_8018EDD8_ovl5] = 2;
                if (D_8018EDD4_ovl5 == 0x11) {
                    D_8018EDD4_ovl5 = 0;
                } else {
                    D_8018EDD4_ovl5 += 1;
                }
                ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 1;
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_10/func_8017F7B0_ovl5.s")
#endif

extern struct UnkStruct8015C740 D_80189940_ovl5;
extern struct UnkStruct8015C740 D_80189960_ovl5;
extern struct UnkStruct8015C740 D_80189C38_ovl5;
extern struct UnkStruct8015C740 D_80189C78_ovl5;
SPObj *func_8015C740_ovl5(GObj *, struct UnkStruct8015C740 *);
void func_800AD1A0(void);
extern struct UnkStruct8015C740 D_80189BF8_ovl5;
extern struct UnkStruct8015C740 D_80189C18_ovl5;
extern struct UnkStruct8015C740 D_80189C58_ovl5;
void func_8017FA7C_ovl5(GObj *arg0) {
    SPObj *spobj;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, &func_800AD1A0, 0x12, 0x80000000, 0x12);
    func_8015C740_ovl5(arg0, &D_80189940_ovl5);
    spobj = func_8015C740_ovl5(arg0, &D_80189940_ovl5);
    spobj->xOffset = 160.0f;
    spobj->yOffset = 10.0f;
    spobj->unk5A |= 1;
    spobj->unkBA |= 1;
    func_8015C740_ovl5(arg0, &D_80189960_ovl5);
    func_8015C740_ovl5(arg0, &D_80189C38_ovl5);
    func_8015C740_ovl5(arg0, &D_80189C78_ovl5);
    curObjSleepForever();
}

s32 func_8017FB84_ovl5(s32 arg0) {
    return saveCheckCutsceneWatched(arg0);
}

SPObj *func_8017FBA4_ovl5(GObj *arg0, s32 arg1, f32 arg2, f32 arg3) {
    Unk48Ptrs sp20 = D_80189820_ovl5;
    SPObj *sp;

    if (func_8017FB84_ovl5((&D_80189C98_ovl5)[arg1]) != 0) {
        sp = func_8015C740_ovl5(arg0, sp20.unk0[arg1]);
    } else {
        sp = func_8015C740_ovl5(arg0, &D_80189BC0_ovl5);
    }
    sp->xOffset = arg2;
    sp->yOffset = arg3;
    return sp;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_10/func_8017FC58_ovl5.s")

extern f32 D_80189BE0_ovl5[];
extern s32 D_8018EDD8_ovl5;
void func_8017FC58_ovl5(GObj *, s32, f32);
void func_800ACB7C(SPObj *);

void func_8017FD84_ovl5(GObj *arg0) {
    SPObj *cur;
    SPObj *next;
    s32 t;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_8018EDD8_ovl5 = omCurrentObj->objId;
    D_800E98E0[omCurrentObj->objId] = 0;
    omLinkGObjDL(arg0, &func_800AD1A0, 0xE, 0x80000000, 0xE);
    cur = func_8017FBA4_ovl5(arg0, D_8018EDD4_ovl5, D_80189BE0_ovl5[2], D_80189BE0_ovl5[3]);
    while (1) {
        if (D_800E98E0[omCurrentObj->objId] != 0) {
            if (D_800E98E0[omCurrentObj->objId] == 1) {
                next = func_8017FBA4_ovl5(arg0, D_8018EDD4_ovl5, D_80189BE0_ovl5[0], D_80189BE0_ovl5[1]);
            } else if (D_800E98E0[omCurrentObj->objId] == 2) {
                next = func_8017FBA4_ovl5(arg0, D_8018EDD4_ovl5, D_80189BE0_ovl5[4], D_80189BE0_ovl5[5]);
            }
            func_8017FC58_ovl5(arg0, D_800E98E0[omCurrentObj->objId],
                               (D_800E9C60[D_8018EDDC_ovl5] >= 0xD) ? 4.0f : 2.0f);
            func_800ACB7C(cur);
            cur = next;
            D_800E98E0[omCurrentObj->objId] = 0;
        }
        ohSleep(1);
    }
}

void func_8017FFB8_ovl5(GObj *arg0) {
    SPObj *spobj;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, &func_800AD1A0, 0xA, 0x80000000, 0xA);
    func_8015C740_ovl5(arg0, &D_80189BF8_ovl5);
    spobj = func_8015C740_ovl5(arg0, &D_80189C18_ovl5);
    spobj->unk5A |= 1;
    spobj->unkBA |= 1;
    func_8015C740_ovl5(arg0, &D_80189C58_ovl5);
    curObjSleepForever();
}

void func_80180080_ovl5(void) {
    D_8018EDD0_ovl5 = 0;
    if (D_800D6B68 == 0x15 || D_800D6B68 == 0x22) {
        D_8018EDD4_ovl5 = D_800D7178.unk6C;
    } else {
        D_8018EDD4_ovl5 = D_80189C98_ovl5;
    }
}

void func_801800CC_ovl5(void) {
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0, 0x10, 2);
}

extern s32 D_800D6B24;
extern u8 D_8018EDD0_ovl5;
void func_801800CC_ovl5(void);

void func_80180104_ovl5(struct GObj *arg0) {
    if (D_800D6B24 == 0 && D_8018EDD0_ovl5 != 0) {
        func_801800CC_ovl5();
    }
}

void gameSetUpdateRate(f32);

void func_80180144_ovl5(void) {
    gameSetUpdateRate(2.0f);
    ohCreateCameraWrapper(0x19, 0x80000000, 0x63, 1, 0);
    func_800AE048(0x80);
    func_800AE0F0();
    func_800A6E64();
    func_800A8724(0);
    play_music(0, 7);
    func_800A6BC0(0xA);
    func_80180080_ovl5();
    D_800E98E0[request_track_3(0xC, 0, 0x70)] = 0;
    D_800E98E0[request_track_3(0xC, 0, 0x70)] = 1;
    D_800E98E0[request_track_3(0xC, 0, 0x70)] = 2;
    D_800E98E0[request_track_3(0xC, 0, 0x70)] = 3;
    HS64_omMakeGObj(0, &func_80180104_ovl5, 0x1A, 0x80000000);
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0xFF, -0x10, 0);
}

void func_80180284_ovl5(Gfx **g) {
    gSPDisplayList((*g)++, D_80189868_ovl5);
}

#include "main/vi.h"
#include "main/gtl.h"
extern u16 gFrameBuffer[][320];
extern u16 D_8012EB00[][320];
extern void *D_8018EE60;
extern u16 D_803D6900[];
extern ScreenSettings D_80189898_ovl5;
extern SceneSetup D_801898B4_ovl5;
void func_800A74D8(void);

// The (u32) cast on D_8012EB00 and the vu16 casts in the clear loop are both
// load-bearing; see src/ovl5/ovl5_7.c func_8017CC3C_ovl5. verify.py reports
// one reloc false positive on the a1 bound (%hi(D_803D6900)+2 / %lo+0x5800
// links to 0x803FC100 exactly).
void func_801802A8_ovl5(void) {
    s32 i;

    func_800A74D8();
    D_80189898_ovl5.zBuffer = (u16 *) ((u32) D_8012EB00 - 0x1900);
    viApplyScreenSettings(&D_80189898_ovl5);
    D_801898B4_ovl5.gtlSetup.heapSize = (u8 *) gFrameBuffer - (u8 *) &D_8018EE60;
    i = 0;
    do {
        ((vu16 *) gFrameBuffer)[i] = 1;
        ((vu16 *) D_803D6900)[i + 0x1F80] = 1;
        i++;
    } while (i != 320 * 240);
    gtlCreateScene(&D_801898B4_ovl5);
}


