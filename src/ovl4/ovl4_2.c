#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/util.h"
#include "track_arrays.h"
#include <math.h>

extern s32 D_8015C690_ovl4;
extern s32 D_800D6B78;
extern Gfx D_8015A790_ovl4[];
extern u8 D_800D6BC0[];
extern u8 D_800D6BC8[];
extern s32 D_800BE560[];
extern u8 D_800D6BE0[];
extern s32 D_8015C69C_ovl4;

extern void func_80151E20_ovl4(void);
extern void func_80154DDC_ovl4(void);

extern s32 D_800D6B24;
extern s32 D_800D6B98;
extern s32 D_8015C6A0_ovl4;
extern s32 savePercentComplete;
extern s32 saveCheckCutsceneWatched(s32);
extern GObj *D_800DE350[];

s32 func_80152220_ovl4(s32 arg0, s32 arg1);
s32 func_801532CC_ovl4(s32 arg0, s32 arg1);

#include "main/vi.h"
#include "main/gtl.h"
extern u16 gFrameBuffer[][320];
extern u16 D_8012EB00[][320];
extern void *D_8018EE60;
extern u16 D_803D6900[];
extern ScreenSettings D_8015A7C0_ovl4;
extern SceneSetup D_8015A7DC_ovl4;

void func_80151DE0_ovl4(void) {
    func_80151E20_ovl4();
}

void func_80151E00_ovl4(void) {
    func_80154DDC_ovl4();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80151E20_ovl4.s")

s32 func_80152124_ovl4(void) {
    if (D_800D6B98 != 0) {
        return 4;
    }
    if (func_80152220_ovl4(0, 2) == 2) {
        return 4;
    }
    if (func_80152220_ovl4(0, 1) == 2) {
        return 3;
    }
    if (func_80152220_ovl4(0, 0) == 2) {
        return 2;
    }
    return 1;
}

s32 func_801521AC_ovl4(s32 arg0) {
    switch (D_8015C69C_ovl4) {
        case 1:
            return arg0 == 0;
        case 2:
            return (arg0 == 0) || (arg0 == 2);
        case 3:
            return arg0 != 1;
        case 4:
            return 1;
    }
    return 0;
}

s32 func_80152220_ovl4(s32 arg0, s32 arg1) {
    if ((u32) arg1 >= (u32) D_800BE560[arg0]) {
        return 0;
    }
    return D_800D6BE0[(arg0 * 6) + arg1] & 3;
}

s32 func_80152268_ovl4(s32 arg0) {
    s32 i;

    for (i = D_800BE560[arg0] - 1; i >= 0; i--) {
        if (func_80152220_ovl4(arg0, i) != 0) {
            return i + 1;
        }
    }
}

s32 func_801522D0_ovl4(f32 arg0) {
    if (-110.0f < arg0) {
        if (arg0 < 110.0f) {
            return 1;
        }
    }
    return 0;
}

s32 func_80152318_ovl4(f32 arg0) {
    if (-70.0f < arg0) {
        if (arg0 < 90.0f) {
            return 1;
        }
    }
    return 0;
}

Vector *func_80152360_ovl4(Vector *arg0) {
    *arg0 = D_800DE350[D_8015C6A0_ovl4]->data.dobj->firstChild->pos.v;
    return arg0;
}

typedef struct {
    s32 unk0[6][7];
} Unk8015A358;

typedef struct {
    s32 unk0[6][6];
} Unk8015A400;

extern Unk8015A358 D_8015A358_ovl4;
extern Unk8015A400 D_8015A400_ovl4;
extern s32 D_8015C6A8_ovl4[];
extern s32 D_8015C694_ovl4;
extern s32 D_8015C698_ovl4;
extern s32 D_8015A954_ovl4[];

typedef struct {
    s32 unk0;
    s32 unk4;
} Unk8015A8F8;

extern Unk8015A8F8 D_8015A8F8_ovl4[];

extern void func_800A71A0(s32);
extern void func_800AA018(s32);
extern s32 func_800AF230(void);
extern void func_800B2F54(s32, s32, f32);
extern void func_800B3070(s32, f32);

Vector *func_801523A0_ovl4(Vector *arg0, s32 arg1, s32 arg2) {
    Unk8015A358 sp0 = D_8015A358_ovl4;

    *arg0 = D_800DFBD0[D_8015C6A8_ovl4[arg2]][sp0.unk0[arg1][arg2]]->pos.v;
    return arg0;
}

Vector *func_80152444_ovl4(Vector *arg0, s32 arg1, s32 arg2) {
    Unk8015A400 sp0 = D_8015A400_ovl4;

    *arg0 = D_800DFBD0[D_8015C694_ovl4][sp0.unk0[arg1][arg2]]->pos.v;
    return arg0;
}

s32 func_801524E4_ovl4(void) {
    s32 unused;
    Vector sp50;
    Vector sp44;
    s32 i;

    for (i = 0; (u32) i <= (u32) D_800BE560[D_800D6B98]; i++) {
        if ((i != 0) && (func_80152220_ovl4(D_800D6B98, i - 1) == 0)) {
            continue;
        }
        func_80152360_ovl4(&sp50);
        func_801523A0_ovl4(&sp44, D_800D6B98, i);
        if (sqrtf(((sp44.x - sp50.x) * (sp44.x - sp50.x)) + ((sp44.z - sp50.z) * (sp44.z - sp50.z))) <= 35.0f) {
            return i;
        }
    }
    return 0x29A;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_801525E8_ovl4.s")

void func_80152A48_ovl4(void) {
    s32 i;

    func_800B3070(0x10, 2.0f);
    switch (D_8015C690_ovl4) {
        case 2:
            func_800B2F54(0x10, D_8015A954_ovl4[D_800D6B98], 50.0f);
            break;
        case 3:
            func_800B2F54(0x10, D_8015A954_ovl4[D_800D6B98], 0.0f);
            break;
        default:
            return;
    }
    for (i = 0; i != 0x32; i++) {
        func_800A71A0(0x10);
        if ((i == 0x22) && (D_8015C690_ovl4 == 3)) {
            D_8015C690_ovl4 = 5;
        }
        ohSleep(1);
    }
}

#ifdef NON_MATCHING
// Only the register allocation differs: the ROM rematerialises the
// D_8015A8F8_ovl4 base inside the loop while IDO keeps it in a saved
// register for the whole function.
void func_80152B50_ovl4(GObj *arg0, s32 arg1) {
    Unk8015A8F8 *p = &D_8015A8F8_ovl4[arg1];

    if (p->unk0 != 0) {
        func_800AA018(p->unk0);
    }
    if (p->unk4 != 0) {
        func_800AA018(p->unk4);
    }
    while (func_800AF230() == 0) {
        if ((p == D_8015A8F8_ovl4) && (arg0->animTimer == 28.0f)) {
            play_sound(0xE2);
        }
        ohSleep(1);
    }
    D_800EA1A0[D_8015C698_ovl4] = 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80152B50_ovl4.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80152C34_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80152E38_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_8015306C_ovl4.s")

s32 func_80153294_ovl4(s32 arg0, s32 arg1, s32 arg2) {
    if (D_800D6BC8[(arg0 * 4) + arg1] & (1 << arg2)) {
        return 1;
    }
    return 0;
}

s32 func_801532CC_ovl4(s32 arg0, s32 arg1) {
    if (arg1 + 1 == D_800BE560[arg0]) {
        return 1;
    }
    return 0;
}

s32 func_801532FC_ovl4(s32 arg0) {
    if (D_800D6BC0[arg0] != 0) {
        return 1;
    }
    return 0;
}

s32 func_80153324_ovl4(s32 arg0) {
    if ((D_800D6B98 == 5) && (func_801532CC_ovl4(D_800D6B98, arg0) != 0)
     && (D_800D6BC0[5] != 0) && (D_800D6BC0[6] == 0)
     && (saveCheckCutsceneWatched(0xD) == 0) && (savePercentComplete == 0x64)) {
        return 1;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_801533A8_ovl4.s")

extern s32 D_8015C694_ovl4;

void func_80153AB0_ovl4(struct GObj *arg0) {
    gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[D_8015C694_ovl4];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80153AEC_ovl4.s")

extern s32 D_8015C694_ovl4;

void func_80153C3C_ovl4(struct GObj *arg0) {
    gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[D_8015C694_ovl4];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80153C78_ovl4.s")

extern s32 D_8015C694_ovl4;

void func_8015427C_ovl4(struct GObj *arg0) {
    gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[D_8015C694_ovl4];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_801542B8_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_801543C8_ovl4.s")

extern s32 D_8015C694_ovl4;

void func_80154880_ovl4(struct GObj *arg0) {
    gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[D_8015C694_ovl4];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_801548BC_ovl4.s")

extern s32 D_8015C694_ovl4;

void func_80154DA0_ovl4(struct GObj *arg0) {
    gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[D_8015C694_ovl4];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80154DDC_ovl4.s")

void func_801550D4_ovl4(void) {
    D_8015C690_ovl4 = 2;
    D_800D6B78 = 0;
}

void func_801550EC_ovl4(GObj *arg0) {
    if ((D_800D6B24 == 0) && (D_8015C690_ovl4 == 5)) {
        utilSetRectColorFullScreen(0, 0, 0);
        if (D_800D6B78 != 0) {
            utilSpawnRect(0, 0x10, 2);
        } else {
            utilSpawnRect(0, 8, 2);
        }
    }
}

void func_80155168_ovl4(void) {
    void gameSetUpdateRate(f32);
    void func_800A70C4(s32, f32, f32, f32, f32);
    extern s32 D_8015A970_ovl4[];
    s32 i;

    gameSetUpdateRate(2.0f);
    ohCreateCameraWrapper(0x19, 0x80000000, 0x63, 1, 0);
    func_800AE048(0x80);
    func_800AE0F0();
    func_800A6E64();
    func_800A78D0(0);
    func_800A8724(0);
    func_800A7A40();
    func_801550D4_ovl4();
    func_800A6BC0(3);
    func_800A70C4(0x10, 41.539f, 65535.0f, 200.0f, 16384.0f);
    func_800B3070(0x10, 2.0f);
    func_800B2F54(0x10, D_8015A954_ovl4[D_800D6B98], 0.0f);
    func_800A71A0(0x10);
    request_track_3(3, 0, 0x70);
    for (i = 0; i != 0x10; i++) {
        ((s32 *) D_800E9AA0)[request_track_general(4, 0, 0x70)] = i;
    }
    play_music(0, D_8015A970_ovl4[D_800D6B98]);
    HS64_omMakeGObj(0, &func_801550EC_ovl4, 0x1A, 0x80000000);
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0xFF, -0x10, 0);
}

void func_801552F8_ovl4(Gfx **gfxP) {
    gSPDisplayList((*gfxP)++, D_8015A790_ovl4);
}

// The (u32) cast on D_8012EB00 and the vu16 casts in the clear loop are both
// load-bearing; see src/ovl5/ovl5_7.c func_8017CC3C_ovl5.
void func_8015531C_ovl4(void) {
    s32 i;

    D_8015A7C0_ovl4.zBuffer = (u16 *) ((u32) D_8012EB00 - 0x1900);
    viApplyScreenSettings(&D_8015A7C0_ovl4);
    D_8015A7DC_ovl4.gtlSetup.heapSize = (u8 *) gFrameBuffer - (u8 *) &D_8018EE60;
    i = 0;
    do {
        ((vu16 *) gFrameBuffer)[i] = 1;
        ((vu16 *) D_803D6900)[i + 0x1F80] = 1;
        i++;
    } while (i != 320 * 240);
    gtlCreateScene(&D_8015A7DC_ovl4);
}

