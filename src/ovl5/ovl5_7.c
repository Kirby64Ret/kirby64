#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/util.h"
#include "track_arrays.h"
#include "ovl1/track.h"
#include "ovl1/game.h"
#include "unk_structs/D_800D7178.h"

extern s32 D_800D6B24;
#include "main/vi.h"
#include "main/gtl.h"
extern u16 gFrameBuffer[][320];
extern u16 D_8012EB00[][320];
extern void *D_8018EE60;
extern u16 D_803D6900[];
extern u16 D_803FC100[];
extern ScreenSettings D_80188988_ovl5;
extern SceneSetup D_801889A4_ovl5;
extern u8 D_8018ED00_ovl5;
extern s32 D_8018ED3C_ovl5;
extern s32 D_801891E4_ovl5[][4];
extern Gfx D_80188958_ovl5[];
void func_8015CCA8_ovl5(s32);
void func_8017C938_ovl5(void);
extern u8 D_8018ED38_ovl5;
extern u8 D_8018ED39_ovl5;
extern u8 D_8018ED3A_ovl5;
extern u8 D_8018ED3B_ovl5;
extern s32 D_8018ED04_ovl5;
extern s32 D_8018ED08_ovl5;
extern s32 D_8018ED0C_ovl5;
extern s32 D_8018ED10_ovl5;
extern s32 D_8018ED18_ovl5[];
extern f32 D_8018ED40_ovl5[];
extern f32 D_80189224_ovl5;
extern s32 D_8018ED90_ovl5[];
extern s32 D_8018ED50_ovl5[][4];
extern s32 D_8018ED28_ovl5[];
extern u8 D_8018EDA0_ovl5;
extern s32 gValidControllerCount;
s32 func_80179FA4_ovl5(s32);
typedef union Unk16Ptrs {
    void *unk0[4];
} Unk16Ptrs;

extern Unk16Ptrs D_80188918_ovl5;
extern Unk16Ptrs D_80188948_ovl5;
extern struct GObjProcess *gEntityGObjProcessArray5[];
void func_800AD1A0(GObj *);
void *func_8015C740_ovl5(GObj *, void *);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_80179E00_ovl5.s")

s32 func_80179F20_ovl5(void) {
    if (D_8018ED38_ovl5 == 1) {
        return 1;
    }
    if (D_8018ED39_ovl5 == 1) {
        return 1;
    }
    if (D_8018ED3A_ovl5 == 1) {
        return 1;
    }
    if (D_8018ED3B_ovl5 == 1) {
        return 1;
    }
    return 0;
}

void func_80179F90_ovl5(void) {
    gGameState = D_800D7178.unk44;
}

s32 func_80179FA4_ovl5(s32 arg0) {
    s32 count = 0;
    s32 i;

    for (i = 0; i < arg0; i++) {
        if (D_8018ED18_ovl5[arg0] == D_8018ED18_ovl5[i]) {
            count++;
        }
    }
    return count;
}

void func_8017A070_ovl5(void) {
    s32 i;

    for (i = 0; i < 4; i++) {
        D_800E98E0[D_8018ED50_ovl5[i][D_8018ED18_ovl5[i]]] = func_80179FA4_ovl5(i) + 1;
        D_8018ED28_ovl5[i] = D_800E98E0[D_8018ED50_ovl5[i][D_8018ED18_ovl5[i]]] - 1;
    }
}

void func_8017A120_ovl5(void) {
}

s32 func_8017A128_ovl5(s32 arg0) {
    switch (arg0) {
    case 0:
        return 0;
    case 1:
        return 1;
    case 2:
        return 3;
    case 3:
        return 2;
    }
}

s32 func_8017A174_ovl5(s32 arg0, s32 arg1) {
    switch (arg0) {
    case 0:
        return arg1 == 2;
    case 1:
        return arg1 == 0;
    case 2:
        return arg1 == 3;
    case 3:
        return arg1 == 1;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017A1CC_ovl5.s")

void func_8017A360_ovl5(s32 arg0) {
    s32 i;

    for (i = 0; i < 4; i++) {
        if (arg0 != 0) {
            arg0--;
            (&D_8018ED38_ovl5)[i] = 0;
        } else {
            (&D_8018ED38_ovl5)[i] = 1;
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017A3E4_ovl5.s")

s32 func_8017A588_ovl5(void) {
    s32 i;

    for (i = 0; i < 4; i++) {
        if (((&D_8018ED38_ovl5)[i] == 0) && (D_800EA1A0[D_8018ED90_ovl5[i]] == 0)) {
            return 0;
        }
    }
    return 1;
}

void func_8017A670_ovl5(void) {
    s32 i;

    for (i = 0; i < 4; i++) {
        D_800E9C60[D_8018ED90_ovl5[i]] = 0;
        D_800E9E20[D_8018ED90_ovl5[i]] = 0;
        D_800EA1A0[D_8018ED90_ovl5[i]] = 0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017A71C_ovl5.s")

void func_8017AB80_ovl5(void) {
    func_8015CCA8_ovl5(D_800D7178.unk44);
}

void func_8017ABA4_ovl5(void) {
    func_8015CCA8_ovl5(D_800D7178.unk44);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017ABC8_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017AD54_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017AEE8_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017B018_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017B230_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017B35C_ovl5.s")

typedef union Unk20Ptrs {
    void *unk0[5];
} Unk20Ptrs;

extern Unk20Ptrs D_801888C0_ovl5;
extern void *D_80188B90_ovl5;
void func_800ACBDC(GObj *);

void func_8017B560_ovl5(GObj *arg0) {
    s32 pad0;
    Unk20Ptrs sp38 = D_801888C0_ovl5;
    s32 i;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, func_800AD1A0, 0x12, 0x80000000, 0x12);
    func_8015C740_ovl5(arg0, &D_80188B90_ovl5);
    for (i = 1; i <= D_8018EDA0_ovl5; i++) {
        func_8015C740_ovl5(arg0, sp38.unk0[i]);
    }
    while (D_8018ED04_ovl5 == 0) {
        ohSleep(1);
    }
    func_800ACBDC(arg0);
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017B6B4_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017B848_ovl5.s")

struct DObj *func_8017B9F4_ovl5(s32 arg0, s32 arg1) {
    return D_800DFBD0[D_8018ED3C_ovl5][D_801891E4_ovl5[arg0][arg1]];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017BA34_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017BED8_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017C084_ovl5.s")

void func_8017C1FC_ovl5(GObj *arg0) {
    s32 pad0;
    s32 pad1;
    Unk16Ptrs sp40 = D_80188918_ovl5;
    s32 prev = D_8018ED0C_ovl5 + 1;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, func_800AD1A0, 0xE, 0x80000000, 0xE);
    while (D_8018ED04_ovl5 == 2) {
        if (prev != D_8018ED0C_ovl5) {
            prev = D_8018ED0C_ovl5;
            func_800ACBDC(arg0);
            func_8015C740_ovl5(arg0, sp40.unk0[prev]);
        }
        ohSleep(1);
    }
    func_800ACBDC(arg0);
    func_800B1900(omCurrentObj->objId);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017C34C_ovl5.s")

void func_8017C4CC_ovl5(GObj *arg0) {
    s32 pad0;
    s32 pad1;
    Unk16Ptrs sp40 = D_80188948_ovl5;
    s32 prev = D_8018ED10_ovl5 + 1;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, func_800AD1A0, 0xE, 0x80000000, 0xE);
    while (D_8018ED04_ovl5 == 3) {
        if (prev != D_8018ED10_ovl5) {
            prev = D_8018ED10_ovl5;
            func_800ACBDC(arg0);
            func_8015C740_ovl5(arg0, sp40.unk0[prev]);
        }
        ohSleep(1);
    }
    func_800ACBDC(arg0);
    func_800B1900(omCurrentObj->objId);
}

void func_8017C61C_ovl5(void) {
    if (gValidControllerCount > 0) {
        D_8018EDA0_ovl5 = gValidControllerCount;
    } else {
        D_8018EDA0_ovl5 = 1;
    }
    if (D_8018EDA0_ovl5 < D_8018ED08_ovl5) {
        D_8018ED08_ovl5 = 1;
    }
    D_800E98E0[request_track_3(0xA, 0, 0x70)] = 9;
    D_800E98E0[request_track_3(0xA, 0, 0x70)] = 0xA;
}

extern s32 func_800AEA64(s32, s32, s32);

#ifdef MIPS_TO_C
/* 9/68: exact except $s5/$s6 are swapped between the D_800E98E0 and
   D_800E9AA0 bases (saved-register allocation slot offset). */
void func_8017C6C8_ovl5(void) {
    s32 i;
    s32 j;
    s32 t;

    D_800E98E0[func_800AEA64(0xA, 0, 0x70)] = 6;
    for (i = 0; i < 4; i++) {
        j = 0;
        do {
            t = request_track_general(0xA, 0, 0x70);
            D_800E98E0[t] = 5;
            ((s32 *) D_800E9AA0)[t] = i;
            D_800E9C60[t] = j;
            j++;
        } while (j != 4);
    }
    i = 0;
    do {
        t = request_track_3(0xA, 0, 0x70);
        D_800E98E0[t] = 4;
        ((s32 *) D_800E9AA0)[t] = i;
        i++;
    } while (i != 4);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017C6C8_ovl5.s")
#endif

void func_8017C7D8_ovl5(void) {
    D_800E98E0[request_track_3(0xA, 0, 0x70)] = 0xB;
    D_800E98E0[request_track_3(0xA, 0, 0x70)] = 0xC;
}

void func_8017C834_ovl5(void) {
    D_800E98E0[request_track_3(0xA, 0, 0x70)] = 7;
    D_800E98E0[request_track_3(0xA, 0, 0x70)] = 8;
}

void func_8017C890_ovl5(void) {
    s32 i;

    D_8018ED00_ovl5 = 0;
    D_8018ED04_ovl5 = 0;
    D_8018ED08_ovl5 = D_800D7178.unk68;
    D_8018ED0C_ovl5 = 0;
    D_8018ED10_ovl5 = 0;
    for (i = 0; i < 4; i++) {
        (&D_8018ED38_ovl5)[i] = (i != 0);
        D_8018ED18_ovl5[i] = 0;
        D_8018ED40_ovl5[i] = D_80189224_ovl5;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017C938_ovl5.s")

extern s32 D_800D6B24;
extern u8 D_8018ED00_ovl5;
void func_8017C938_ovl5(void);

void func_8017CA90_ovl5(struct GObj *arg0) {
    if (D_800D6B24 == 0 && D_8018ED00_ovl5 != 0) {
        func_8017C938_ovl5();
    }
}

void gameSetUpdateRate(f32);
void func_800AAF34(s32, s32, f32);

void func_8017CAD0_ovl5(void) {
    s32 i;
    s32 t;

    gameSetUpdateRate(2.0f);
    ohCreateCameraWrapper(0x19, 0x80000000, 0x63, 1, 0);
    func_800AE048(0x80);
    func_800AE0F0();
    func_800A6E64();
    func_800A8724(0);
    func_800A6BC0(0xA);
    func_800AAF34(0x10, 0x30001, 0.0f);
    func_800A71A0(0x10);
    func_8017C890_ovl5();
    for (i = 0; i != 4; i++) {
        t = request_track_3(0xA, 0, 0x70);
        D_800E98E0[t] = 0;
        ((s32 *) D_800E9AA0)[t] = i;
    }
    D_800E98E0[request_track_3(0xA, 0, 0x70)] = 3;
    func_8017C61C_ovl5();
    HS64_omMakeGObj(0, &func_8017CA90_ovl5, 0x1A, 0x80000000);
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0xFF, -0x10, 0);
}

void func_8017CC18_ovl5(Gfx **g) {
    gSPDisplayList((*g)++, D_80188958_ovl5);
}

// The (u32) cast on D_8012EB00 is load-bearing -- it stops IDO folding the
// -0x1900 into %lo and is worth 26 diffs.
// The vu16 casts in the clear loop are load-bearing too: without volatile IDO
// hoists the D_803D6900 induction bump to the top of the 4x-unrolled body,
// where the ROM keeps it before the last store (8 diffs).
// verify.py reports 1 reloc false positive on the a1 bound: IDO emits
// %hi(D_803D6900)+2 / %lo+0x5800, which links to 0x803FC100 exactly.
void func_8017CC3C_ovl5(void) {
    s32 i;

    D_80188988_ovl5.zBuffer = (u16 *) ((u32) D_8012EB00 - 0x1900);
    viApplyScreenSettings(&D_80188988_ovl5);
    D_801889A4_ovl5.gtlSetup.heapSize = (u8 *) gFrameBuffer - (u8 *) &D_8018EE60;
    i = 0;
    do {
        ((vu16 *) gFrameBuffer)[i] = 1;
        ((vu16 *) D_803D6900)[i + 0x1F80] = 1;
        i++;
    } while (i != 320 * 240);
    gtlCreateScene(&D_801889A4_ovl5);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017CCE0_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017D6F8_ovl5.s")

