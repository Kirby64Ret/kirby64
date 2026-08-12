#include <ultra64.h>
#include <macros.h>
#include "buffers.h"
#include "GObj.h"
#include "SPObj.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/util.h"
#include "track_arrays.h"

extern s32 D_800D6B24;
extern s32 saveSoundMode;
extern s32 saveHUDTheme;
extern s32 saveCurrentFileNum;
extern u8 D_8018EDB0_ovl5;
extern s32 D_8018EDB4_ovl5;
void func_8017E350_ovl5(GObj *);
extern u8 D_8018EDB8_ovl5;
extern struct UnkStruct8015C740 D_801893C8_ovl5;
typedef union Unk2Ptrs {
    struct UnkStruct8015C740 *unk0[2];
} Unk2Ptrs;

extern Unk2Ptrs D_80189250_ovl5;
extern Vector2 D_801893E8_ovl5[];
SPObj *func_8015C740_ovl5(GObj *, struct UnkStruct8015C740 *);
void func_800AD1A0(void);
extern struct GObjProcess *gEntityGObjProcessArray5[];
extern u8 D_8018EDB9_ovl5;
extern u8 D_8018EDBA_ovl5;
extern Gfx D_80189270_ovl5[];
void func_800B9C50(s32);
void func_8017EAB0_ovl5(void);
void auSetHighSoundQuality(void);
void auSetLowSoundQuality(void);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_8/func_8017E180_ovl5.s")

void func_8017E21C_ovl5(s32 arg0) {
    saveSoundMode = arg0;
    func_800B9C50(saveCurrentFileNum);
    if (arg0 == 1) {
        auSetHighSoundQuality();
    } else {
        auSetLowSoundQuality();
    }
}

void func_8017E274_ovl5(s32 arg0) {
    saveHUDTheme = arg0;
    func_800B9C50(saveCurrentFileNum);
}

void func_8017E2A0_ovl5(GObj *arg0) {
    D_8018EDB4_ovl5 = omCurrentObj->objId;
    D_800E98E0[omCurrentObj->objId] = 0xA;
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800DF150[omCurrentObj->objId] = func_8017E350_ovl5;
    while (1) {
        ohSleep(1);
    }
}

#ifdef NON_MATCHING
/* Faithful, not byte-exact (135/190): pure register rotation -- the ROM holds
   omCurrentObj in $a1 and the loaded counter in $a0, this C gets $a2/$v1.
   Note ovl5_8.c includes ovl1/ovl1_6.h before track_arrays.h, so the latter
   is silently skipped by its OVL1_6_H guard and D_800E9AA0 is a pointer
   array here -- the `(s32 *)` casts are required, not cosmetic. */
#include "main/contpad.h"
void play_sound(s32);
void func_8017E21C_ovl5(s32);
void func_8017E274_ovl5(s32);

void func_8017E350_ovl5(GObj *arg0) {
    s32 *p;
    s32 t;

    if (D_8018EDB0_ovl5 == 0) {
        p = &D_800E98E0[omCurrentObj->objId];
        t = *p;
        if (t != 0) {
            *p = t - 1;
            return;
        }
        if (gPlayerControllers[0].buttonPressed & 0xD000) {
            play_sound(0x2B);
            D_8018EDB0_ovl5 = 1;
            return;
        }
        if (gPlayerControllers[0].buttonHeld & 0xF00) {
            D_800E9C60[omCurrentObj->objId] += 1;
        } else {
            ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 0;
            D_800E9C60[omCurrentObj->objId] = 0;
        }
        p = &((s32 *) D_800E9AA0)[omCurrentObj->objId];
        t = *p;
        if (t != 0) {
            *p = t - 1;
            return;
        }
        if (gPlayerControllers[0].buttonHeld & 0x800) {
            play_sound(0x113);
            if (D_8018EDB8_ovl5 == 0) {
                D_8018EDB8_ovl5 = 1;
            } else {
                D_8018EDB8_ovl5 = 0;
            }
            ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 5;
            return;
        }
        if (gPlayerControllers[0].buttonHeld & 0x400) {
            play_sound(0x113);
            if (D_8018EDB8_ovl5 == 0) {
                D_8018EDB8_ovl5 = 1;
            } else {
                D_8018EDB8_ovl5 = 0;
            }
            ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 5;
            return;
        }
        if (gPlayerControllers[0].buttonHeld & 0x100) {
            play_sound(0x113);
            if (D_8018EDB8_ovl5 == 0) {
                if (D_8018EDB9_ovl5 == 1) {
                    D_8018EDB9_ovl5 = 0;
                } else {
                    D_8018EDB9_ovl5 = 1;
                }
                func_8017E21C_ovl5(D_8018EDB9_ovl5);
            } else {
                if (D_8018EDBA_ovl5 == 4) {
                    D_8018EDBA_ovl5 = 0;
                } else {
                    D_8018EDBA_ovl5 += 1;
                }
                func_8017E274_ovl5(D_8018EDBA_ovl5);
            }
            ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 5;
            return;
        }
        if (gPlayerControllers[0].buttonHeld & 0x200) {
            play_sound(0x113);
            if (D_8018EDB8_ovl5 == 0) {
                if (D_8018EDB9_ovl5 == 1) {
                    D_8018EDB9_ovl5 = 0;
                } else {
                    D_8018EDB9_ovl5 = 1;
                }
                func_8017E21C_ovl5(D_8018EDB9_ovl5);
            } else {
                if (D_8018EDBA_ovl5 == 0) {
                    D_8018EDBA_ovl5 = 4;
                } else {
                    D_8018EDBA_ovl5 -= 1;
                }
                func_8017E274_ovl5(D_8018EDBA_ovl5);
            }
            ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 5;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_8/func_8017E350_ovl5.s")
#endif

extern struct UnkStruct8015C740 D_80189348_ovl5;
extern struct UnkStruct8015C740 D_80189368_ovl5;
extern struct UnkStruct8015C740 D_80189388_ovl5;
extern struct UnkStruct8015C740 D_801893A8_ovl5;
SPObj *func_8015C740_ovl5(GObj *, struct UnkStruct8015C740 *);
void func_800AD1A0(void);
void func_8017E64C_ovl5(GObj *arg0) {
    SPObj *spobj;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, &func_800AD1A0, 0x12, 0x80000000, 0x12);
    func_8015C740_ovl5(arg0, &D_80189348_ovl5);
    spobj = func_8015C740_ovl5(arg0, &D_80189348_ovl5);
    spobj->xOffset = 160.0f;
    spobj->yOffset = 10.0f;
    spobj->unk5A |= 1;
    spobj->unkBA |= 1;
    func_8015C740_ovl5(arg0, &D_80189368_ovl5);
    func_8015C740_ovl5(arg0, &D_80189388_ovl5);
    func_8015C740_ovl5(arg0, &D_801893A8_ovl5);
    curObjSleepForever();
}

void func_8017E754_ovl5(GObj *arg0) {
    SPObj *spobj;
    s32 prev;

    prev = D_8018EDB8_ovl5 + 1;
    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, func_800AD1A0, 0xE, 0x80000000, 0xE);
    spobj = func_8015C740_ovl5(arg0, &D_801893C8_ovl5);
    while (1) {
        if (prev != D_8018EDB8_ovl5) {
            prev = D_8018EDB8_ovl5;
            spobj->xOffset = D_801893E8_ovl5[prev].x;
            spobj->yOffset = D_801893E8_ovl5[prev].y;
        }
        ohSleep(1);
    }
}

void func_8017E85C_ovl5(GObj *arg0) {
    s32 prev;
    Unk2Ptrs sp34 = D_80189250_ovl5;

    prev = D_8018EDB9_ovl5 + 1;
    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, func_800AD1A0, 0xE, 0x80000000, 0xE);
    while (1) {
        if (prev != D_8018EDB9_ovl5) {
            prev = D_8018EDB9_ovl5;
            func_800ACBDC(arg0);
            func_8015C740_ovl5(arg0, sp34.unk0[prev]);
        }
        ohSleep(1);
    }
}

typedef union Unk5Ptrs {
    struct UnkStruct8015C740 *unk0[5];
} Unk5Ptrs;

extern Unk5Ptrs D_80189258_ovl5;

void func_8017E95C_ovl5(GObj *arg0) {
    s32 i;
    Unk5Ptrs sp38 = D_80189258_ovl5;

    i = D_8018EDBA_ovl5 + 1;
    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, &func_800AD1A0, 0xE, 0x80000000, 0xE);
    while (1) {
        if (i != D_8018EDBA_ovl5) {
            i = D_8018EDBA_ovl5;
            func_800ACBDC(arg0);
            func_8015C740_ovl5(arg0, sp38.unk0[i]);
        }
        ohSleep(1);
    }
}

void func_8017EA7C_ovl5(void) {
    D_8018EDB0_ovl5 = 0;
    D_8018EDB8_ovl5 = 0;
    D_8018EDB9_ovl5 = saveSoundMode;
    D_8018EDBA_ovl5 = saveHUDTheme;
}

void func_8017EAB0_ovl5(void) {
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0, 0x10, 2);
}

extern s32 D_800D6B24;
extern u8 D_8018EDB0_ovl5;
void func_8017EAB0_ovl5(void);

void func_8017EAE8_ovl5(struct GObj *arg0) {
    if (D_800D6B24 == 0 && D_8018EDB0_ovl5 != 0) {
        func_8017EAB0_ovl5();
    }
}

void gameSetUpdateRate(f32);

void func_8017EB28_ovl5(void) {
    gameSetUpdateRate(2.0f);
    ohCreateCameraWrapper(0x19, 0x80000000, 0x63, 1, 0);
    func_800AE048(0x80);
    func_800AE0F0();
    func_800A6E64();
    func_800A8724(0);
    func_800A6BC0(0xA);
    func_8017EA7C_ovl5();
    D_800E98E0[request_track_3(0xD, 0, 0x70)] = 0;
    D_800E98E0[request_track_3(0xD, 0, 0x70)] = 1;
    D_800E98E0[request_track_3(0xD, 0, 0x70)] = 2;
    D_800E98E0[request_track_3(0xD, 0, 0x70)] = 3;
    D_800E98E0[request_track_3(0xD, 0, 0x70)] = 4;
    HS64_omMakeGObj(0, &func_8017EAE8_ovl5, 0x1A, 0x80000000);
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0xFF, -0x10, 0);
}

void func_8017EC80_ovl5(Gfx **g) {
    gSPDisplayList((*g)++, D_80189270_ovl5);
}

// PADDING TRAP (padtrap: trap, 6 words after .size) -- converting this would
// shorten the TU and shift the segment, so the pragma must stay. The body below
// is the framebuffer-clear form proved byte-exact on func_8017CC3C_ovl5 (the
// vu16 casts are what stop IDO hoisting the D_803D6900 induction bump); it is
// kept live for the PC port, which builds with NON_MATCHING.

#include "main/vi.h"
#include "main/gtl.h"

extern u16 gFrameBuffer[][320];
extern u16 D_8012EB00[][320];
extern void *D_8018EE60;
extern u16 D_803D6900[];
extern ScreenSettings D_801892A0_ovl5;
extern SceneSetup D_801892BC_ovl5;

void func_8017ECA4_ovl5(void) {
    s32 i;

    D_801892A0_ovl5.zBuffer = (u16 *) ((u32) D_8012EB00 - 0x1900);
    viApplyScreenSettings(&D_801892A0_ovl5);
    D_801892BC_ovl5.gtlSetup.heapSize = (u8 *) gFrameBuffer - (u8 *) &D_8018EE60;
    i = 0;
    do {
        ((vu16 *) gFrameBuffer)[i] = 1;
        ((vu16 *) D_803D6900)[i + 0x1F80] = 1;
        i++;
    } while (i != 320 * 240);
    gtlCreateScene(&D_801892BC_ovl5);
}




