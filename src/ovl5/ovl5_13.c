#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/util.h"
#include "track_arrays.h"

extern u8 D_800D6C10[];
extern Gfx D_8018A5B8_ovl5[];
void func_80183FC8_ovl5(void);
void func_80184084_ovl5(void);
extern s32 D_8018EE20_ovl5[];
extern s32 D_8018EE14_ovl5;
void func_80183270_ovl5(GObj *);
extern u8 D_8018EE18_ovl5;
extern u8 D_8018EE10_ovl5;
extern u8 D_8018EE44_ovl5;
extern s32 D_8018EE48_ovl5;
extern s32 D_8018EE4C_ovl5;
extern s32 D_8018EE50_ovl5;
extern s32 D_8018EE54_ovl5;
extern s32 D_8018EE58_ovl5;
extern u16 D_8018EE4A_ovl5;
#include "SPObj.h"
extern struct UnkStruct8015C740 D_8018A690_ovl5;
extern struct UnkStruct8015C740 D_8018A6B0_ovl5;
extern struct UnkStruct8015C740 D_8018A990_ovl5;
SPObj *func_8015C740_ovl5(GObj *, struct UnkStruct8015C740 *);
void func_800AD1A0(void);
extern struct GObjProcess *gEntityGObjProcessArray5[];
extern void *D_8018A714_ovl5;
extern void *D_8018A718_ovl5;
extern void *D_8018A98C_ovl5;
s32 func_800A9AA8(void *, s32);
void func_800BA284(s32);
#include "ovl1/save_file.h"
#include "ovl1/track.h"


#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_13/func_801830A0_ovl5.s")

void func_801831E0_ovl5(GObj *arg0) {
    D_8018EE14_ovl5 = omCurrentObj->objId;
    D_800E98E0[omCurrentObj->objId] = 0xA;
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800DF150[omCurrentObj->objId] = func_80183270_ovl5;
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_13/func_80183270_ovl5.s")

void func_80183AFC_ovl5(GObj *arg0) {
    SPObj *spobj;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, func_800AD1A0, 0x12, 0x80000000, 0x12);
    func_8015C740_ovl5(arg0, &D_8018A690_ovl5);
    spobj = func_8015C740_ovl5(arg0, &D_8018A690_ovl5);
    spobj->xOffset = 160.0f;
    spobj->yOffset = 10.0f;
    spobj->unk5A |= 1;
    spobj->unkBA |= 1;
    func_8015C740_ovl5(arg0, &D_8018A6B0_ovl5);
    func_8015C740_ovl5(arg0, &D_8018A990_ovl5);
    curObjSleepForever();
}

s32 func_80183BF4_ovl5(s32 arg0) {
    return 1;
}

s32 func_80183C00_ovl5(s32 arg0) {
    if (D_800D6C10[arg0] == 1) {
        return 1;
    }
    return 0;
}

s32 func_80183C2C_ovl5(s32 arg0) {
    if (D_800D6C10[arg0] == 0) {
        return 0;
    }
    return 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_13/func_80183C54_ovl5.s")

void func_80183FA0_ovl5(void) {
    func_80184084_ovl5();
    func_80183FC8_ovl5();
}

void func_80183FC8_ovl5(void) {
    s32 i;
    s32 t;

    for (i = 0; i < 9; i++) {
        t = request_track_3(0xF, 0, 0x70);
        D_800E98E0[t] = 2;
        ((s32 *) D_800E9AA0)[t] = i;
        D_800E9C60[t] = D_8018EE18_ovl5 * 9 + i;
    }
}

void func_80184084_ovl5(void) {
    s32 i;

    for (i = 0; i < 9; i++) {
        func_800ACBDC(D_800DE350[D_8018EE20_ovl5[i]]);
        func_800B1900(D_8018EE20_ovl5[i]);
    }
}

void func_801840F0_ovl5(void) {
    if (D_8018EE48_ovl5 != 0x29A) {
        func_800ACBDC(D_800DE350[D_8018EE48_ovl5]);
        func_800B1900(D_8018EE4A_ovl5);
        D_8018EE48_ovl5 = 0x29A;
    }
    if (D_8018EE4C_ovl5 != 0x29A) {
        if ((u32) D_800EA360[D_8018EE4C_ovl5] != 0x29A) {
            func_800B1900((u16) D_800EA360[D_8018EE4C_ovl5]);
        }
        if ((u32) D_800EA520[D_8018EE4C_ovl5] != 0x29A) {
            func_800B1900((u16) D_800EA520[D_8018EE4C_ovl5]);
        }
        func_800B1900((u16) D_8018EE4C_ovl5);
        D_8018EE4C_ovl5 = 0x29A;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_13/func_801841C0_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_13/func_801843A0_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_13/func_80184888_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_13/func_80184BA0_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_13/func_80184EC0_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_13/func_80185150_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_13/func_801853E0_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_13/func_80185608_ovl5.s")

extern struct UnkStruct8015C740 D_8018AB20_ovl5;
extern struct UnkStruct8015C740 D_8018AB40_ovl5;
extern struct UnkStruct8015C740 D_8018AB60_ovl5;
extern struct UnkStruct8015C740 D_8018AB80_ovl5;
void func_801857C4_ovl5(GObj *arg0) {
    s32 prev = D_8018EE44_ovl5 + 1;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, &func_800AD1A0, 0x12, 0x80000000, 0x12);
    while (1) {
        if (prev != D_8018EE44_ovl5) {
            prev = D_8018EE44_ovl5;
            func_800ACBDC(arg0);
            if ((prev == 9) || (prev == 0xA) || (prev == 0xB)) {
                func_8015C740_ovl5(arg0, &D_8018AB20_ovl5);
            } else {
                func_8015C740_ovl5(arg0, &D_8018AB40_ovl5);
            }
        }
        ohSleep(1);
    }
}

void func_8018590C_ovl5(GObj *arg0) {
    s32 prev = D_8018EE44_ovl5 + 1;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, &func_800AD1A0, 0x12, 0x80000000, 0x12);
    while (1) {
        if (prev != D_8018EE44_ovl5) {
            prev = D_8018EE44_ovl5;
            func_800ACBDC(arg0);
            if ((prev == 0xC) || (prev == 0xD) || (prev == 0xE)) {
                func_8015C740_ovl5(arg0, &D_8018AB60_ovl5);
            } else {
                func_8015C740_ovl5(arg0, &D_8018AB80_ovl5);
            }
        }
        ohSleep(1);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_13/func_80185A4C_ovl5.s")

void func_80185C10_ovl5(void) {
    D_8018EE10_ovl5 = 0;
    D_8018EE18_ovl5 = 0;
    D_8018EE44_ovl5 = 0;
    D_8018EE48_ovl5 = 0x29A;
    D_8018EE4C_ovl5 = 0x29A;
    func_800BA284(saveCurrentFileNum);
    D_8018EE50_ovl5 = func_800A9AA8(D_8018A714_ovl5, 3);
    D_8018EE54_ovl5 = func_800A9AA8(D_8018A718_ovl5, 3);
    D_8018EE58_ovl5 = func_800A9AA8(D_8018A98C_ovl5, 3);
}

void func_80185CA4_ovl5(void) {
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0, 0x10, 2);
}

extern s32 D_800D6B24;
extern u8 D_8018EE10_ovl5;
void func_80185CA4_ovl5(void);

void func_80185CDC_ovl5(struct GObj *arg0) {
    if (D_800D6B24 == 0 && D_8018EE10_ovl5 != 0) {
        func_80185CA4_ovl5();
    }
}

void gameSetUpdateRate(f32);
void func_800B2F54(s32, void *, f32);
extern u32 D_8018A530_ovl5[];

void func_80185D1C_ovl5(void) {
    gameSetUpdateRate(2.0f);
    ohCreateCameraWrapper(0x19, 0x80000000, 0x63, 3, 0xFF);
    func_800AE048(0x200);
    func_800AE0F0();
    func_800A6E64();
    func_800A8724(0);
    play_music(0, 0x3B);
    func_800A6BC0(0xA);
    func_800B2F54(0x10, &D_8018A530_ovl5, 0.0f);
    func_800A71A0(0x10);
    func_80185C10_ovl5();
    D_800E98E0[request_track_3(0xF, 0, 0x70)] = 0;
    D_800E98E0[request_track_3(0xF, 0, 0x70)] = 1;
    func_80183FC8_ovl5();
    D_800E98E0[request_track_3(0xF, 0, 0x70)] = 5;
    D_800E98E0[request_track_3(0xF, 0, 0x70)] = 6;
    D_800E98E0[request_track_3(0xF, 0, 0x70)] = 7;
    D_800E98E0[request_track_3(0xF, 0, 0x70)] = 8;
    HS64_omMakeGObj(0, &func_80185CDC_ovl5, 0x1A, 0x80000000);
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0xFF, -0x10, 0);
}

void func_80185EC8_ovl5(Gfx **g) {
    gSPDisplayList((*g)++, D_8018A5B8_ovl5);
}

#include "main/vi.h"
#include "main/gtl.h"
extern u16 gFrameBuffer[][320];
extern u16 D_8012EB00[][320];
extern void *D_8018EE60;
extern u16 D_803D6900[];
extern ScreenSettings D_8018A5E8_ovl5;
extern SceneSetup D_8018A604_ovl5;
void func_800A74D8(void);

// The (u32) cast on D_8012EB00 and the vu16 casts in the clear loop are both
// load-bearing; see src/ovl5/ovl5_7.c func_8017CC3C_ovl5. verify.py reports
// one reloc false positive on the a1 bound (%hi(D_803D6900)+2 / %lo+0x5800
// links to 0x803FC100 exactly).
void func_80185EEC_ovl5(void) {{
    s32 i;

    func_800A74D8();
    D_8018A5E8_ovl5.zBuffer = (u16 *) ((u32) D_8012EB00 - 0x1900);
    viApplyScreenSettings(&D_8018A5E8_ovl5);
    D_8018A604_ovl5.gtlSetup.heapSize = (u8 *) gFrameBuffer - (u8 *) &D_8018EE60;
    i = 0;
    do {{
        ((vu16 *) gFrameBuffer)[i] = 1;
        ((vu16 *) D_803D6900)[i + 0x1F80] = 1;
        i++;
    }} while (i != 320 * 240);
    gtlCreateScene(&D_8018A604_ovl5);
}}


