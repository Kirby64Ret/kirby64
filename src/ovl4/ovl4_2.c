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

extern void func_80151E20_ovl4();
extern void func_80154DDC_ovl4();

extern s32 D_800D6B24;
extern s32 D_800D6B98;
extern s32 D_8015C6A0_ovl4;
extern s32 savePercentComplete;
extern s32 saveCheckCutsceneWatched(s32);
extern GObj *D_800DE350[];

s32 func_80152220_ovl4(s32 arg0, s32 arg1);
void ohSleep(s32);
void curObjSleepForever(void);
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

void func_80151E20_ovl4(arg0)
GObj *arg0;
{
    s32 func_80152124_ovl4(void);
    s32 func_80152268_ovl4(s32);
    void func_80152A48_ovl4(void);
    void func_801525E8_ovl4(struct GObj *);
    void omLinkGObjDL(GObj *, void (*)(GObj *), u8, s32, s32);
    void func_800AD1A0(struct GObj *);
    u8 *func_8015C740_ovl5(struct GObj *, void *);
    s32 func_800A9AA8(void *, s32);
    extern u8 D_8015A868_ovl4[];
    extern s32 D_8015C698_ovl4;
    extern void *D_8015A888_ovl4[];
    extern u8 D_800D6B84;
    extern s32 D_800D6B80;
    extern s32 D_800D6B9C;
    u8 *sp;
    s32 v;
    s32 x;
    s32 y;
    f32 fy;

    D_8015C69C_ovl4 = func_80152124_ovl4();
    D_8015C698_ovl4 = omCurrentObj->objId;
    D_800E98E0[omCurrentObj->objId] = 0;
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 5;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    if (D_800D6B84 != 0) {
        D_800E9FE0[omCurrentObj->objId].as_s32 = func_80152268_ovl4(D_800D6B98);
    } else if (D_800D6B80 != 0) {
        D_800E9FE0[omCurrentObj->objId].as_s32 = D_800D6B9C;
    } else {
        D_800E9FE0[omCurrentObj->objId].as_s32 = D_800D6B9C + 1;
    }
    D_800EA1A0[omCurrentObj->objId] = 0;
    omLinkGObjDL(arg0, func_800AD1A0, 0x12, 0x80000000, 0x12);
    for (y = 0; y < 0x100; y += 0x40) {
        fy = y;
        for (x = 0; x != 0x13B; x += 0x3F) {
            sp = func_8015C740_ovl5(arg0, D_8015A868_ovl4);
            *(f32 *) (sp + 0x24) = fy;
            *(f32 *) (sp + 0x20) = (f32) x;
            if (D_800D6B98 > 0) {
                v = func_800A9AA8(D_8015A888_ovl4[D_800D6B98], 3);
                *(s32 *) (sp + 0x6C) = v;
                *(s32 *) (sp + 0x78) = v;
                *(s32 *) (sp + 0xCC) = v;
                *(s32 *) (sp + 0xD8) = v;
            }
        }
    }
    D_800DF150[omCurrentObj->objId] = func_801525E8_ovl4;
    while ((D_8015C690_ovl4 == 2) || (D_8015C690_ovl4 == 3)) {
        if (D_800E9C60[omCurrentObj->objId] != 0) {
            D_800DF150[omCurrentObj->objId] = NULL;
            D_800E9E20[omCurrentObj->objId] = 1;
            func_80152A48_ovl4();
        }
        ohSleep(1);
    }
    D_800DF150[omCurrentObj->objId] = NULL;
    D_8015C690_ovl4 = 5;
    curObjSleepForever();
}

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

#ifdef PORT
#include "main/contpad.h"
/* Functional port of the planet-map cursor proc; there was no sketch and the
 * weak stub exited the process on the first A press at the world map. Shape
 * follows the asm exactly: bail while a map transition runs (D_800D6B80), a
 * per-object cooldown counts down in D_800E9AA0, A/START confirms the hovered
 * spot (0 = the planet's exit node, backs out exactly like B; 0x29A = nothing
 * hovered), B backs out to planet select, the held d-pad slides the cursor
 * DObj inside the map's clamp box (X within +/-110 by func_801522D0_ovl4,
 * Z within -70..90 by func_80152318_ovl4), and func_801524E4_ovl4 re-derives
 * the hovered level dot every frame. */
void func_801525E8_ovl4(struct GObj *arg0) {
    extern s32 D_8015C694_ovl4;
    extern s32 D_8015C698_ovl4;
    extern s32 D_800D6B9C;
    extern s32 D_800D6B80;
    extern s32 D_800E9C60[];
    extern s32 D_800E98E0[];
    struct DObj *cursor;
    s32 *slot;
    u16 pressed;
    u16 held;
    f32 v;
    s32 sel;

    (void)arg0;
    if (D_800D6B80 != 0) {
        return;
    }
    slot = &((s32 *) D_800E9AA0)[omCurrentObj->objId];
    if (*slot != 0) {
        *slot = *slot - 1;
        return;
    }
    if ((D_800E9C60[omCurrentObj->objId] != 0) || (((s32 *) D_800E9AA0)[D_8015C694_ovl4] != 0)) {
        D_800E98E0[D_8015C698_ovl4] = 0;
        return;
    }
    pressed = gPlayerControllers[0].buttonPressed;
    if (pressed & 0x9000) {
        sel = D_800E9FE0[omCurrentObj->objId].as_s32;
        if (sel == 0) {
            D_8015C690_ovl4 = 4;
            play_sound(0x276);
            D_800D6B78 = 1;
            return;
        }
        if (sel != 0x29A) {
            D_8015C690_ovl4 = 3;
            D_800D6B9C = D_800E9FE0[D_8015C698_ovl4].as_s32 - 1;
            D_800E9C60[omCurrentObj->objId] = 1;
            play_sound(0x275);
            return;
        }
    }
    if (pressed & 0x4000) {
        D_8015C690_ovl4 = 4;
        play_sound(0x276);
        D_800D6B78 = 1;
        return;
    }
    held = gPlayerControllers[0].buttonHeld;
    cursor = D_800DE350[D_8015C6A0_ovl4]->data.dobj->firstChild;
    if (held & 0x100) {              /* d-pad right */
        v = cursor->pos.v.x + 6.0f;
        cursor->pos.v.x = func_801522D0_ovl4(v) ? v : 110.0f;
    } else if (held & 0x200) {       /* d-pad left */
        v = cursor->pos.v.x - 6.0f;
        cursor->pos.v.x = func_801522D0_ovl4(v) ? v : -110.0f;
    }
    if (held & 0x800) {              /* d-pad up */
        v = cursor->pos.v.z - 6.0f;
        cursor->pos.v.z = func_80152318_ovl4(v) ? v : -70.0f;
    } else if (held & 0x400) {       /* d-pad down */
        v = cursor->pos.v.z + 6.0f;
        cursor->pos.v.z = func_80152318_ovl4(v) ? v : 90.0f;
    }
    sel = func_801524E4_ovl4();
    D_800E9FE0[omCurrentObj->objId].as_s32 = sel;
    if ((sel != 0x29A) && (sel != 0)) {
        D_800D6B9C = sel - 1;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_801525E8_ovl4.s")
#endif

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
typedef struct {
    s32 unk0[6];
} Ovl42_6W;

struct DObj *func_80152C34_ovl4(s32 arg0, s32 arg1) {
    extern Ovl42_6W D_8015A490_ovl4;
    extern Ovl42_6W D_8015A4A8_ovl4;
    extern Ovl42_6W D_8015A4C0_ovl4;
    extern Ovl42_6W D_8015A4D8_ovl4;
    struct DObj *ret;
    Ovl42_6W sp4C = D_8015A490_ovl4;
    Ovl42_6W sp34 = D_8015A4A8_ovl4;
    Ovl42_6W sp1C = D_8015A4C0_ovl4;
    Ovl42_6W sp4 = D_8015A4D8_ovl4;

    switch (arg0) {
        case 0:
            ret = D_800DFBD0[D_8015C694_ovl4][sp4C.unk0[arg1]];
            break;
        case 1:
            ret = D_800DFBD0[D_8015C694_ovl4][sp34.unk0[arg1]];
            break;
        case 2:
            ret = D_800DFBD0[D_8015C694_ovl4][sp1C.unk0[arg1]];
            break;
        case 3:
            ret = D_800DFBD0[D_8015C694_ovl4][sp4.unk0[arg1]];
            break;
    }
    return ret;
}

void func_80152E38_ovl4(s32 arg0) {
    void func_800B1900(u16);
    void func_800A9864(void *, s32, s32);
    void func_80152B50_ovl4(GObj *, s32);
    extern s32 D_8015A8E8_ovl4[];
    s32 unused;
    Vector sp50;
    Vector sp44;
    GObj *g;
    struct DObj *d;

    g = D_800DE350[omCurrentObj->objId];
    if (func_801521AC_ovl4(arg0) == 0) {
        func_800B1900(((u16 *) omCurrentObj)[1]);
    }
    D_800E98E0[omCurrentObj->objId] = arg0;
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 1;
    d = func_80152C34_ovl4(D_800E98E0[omCurrentObj->objId], D_800D6B98);
    func_800B2340(&sp50, d, D_8015C694_ovl4);
    gEntitiesNextPosXArray[omCurrentObj->objId] = sp50.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = sp50.y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = sp50.z;
    func_800B26D8(&sp44, d, D_8015C694_ovl4);
    gEntitiesAngleXArray[omCurrentObj->objId] = sp44.x;
    gEntitiesAngleYArray[omCurrentObj->objId] = sp44.y;
    gEntitiesAngleZArray[omCurrentObj->objId] = sp44.z;
    func_800A9864((void *) D_8015A8E8_ovl4[arg0], 0x1869F, 0x10);
    while (1) {
        if ((D_800D6B78 != 1) && (D_800E9E20[D_8015C698_ovl4] != 0)) {
            ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 0;
            func_80152B50_ovl4(g, arg0);
        }
        ohSleep(1);
    }
}

void func_8015306C_ovl4(void) {
    void func_800A9864(void *, s32, s32);
    extern s32 D_8015A918_ovl4;
    extern s32 D_8015A91C_ovl4[];
    extern s32 D_8015A924_ovl4[];
    Vector sp3C;
    Vector sp30;

    func_800B2340(&sp3C, D_800DFBD0[D_8015C694_ovl4][D_8015A924_ovl4[D_800D6B98]], D_8015C694_ovl4);
    gEntitiesNextPosXArray[omCurrentObj->objId] = sp3C.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = sp3C.y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = sp3C.z;
    func_800B26D8(&sp30, D_800DFBD0[D_8015C694_ovl4][D_8015A924_ovl4[D_800D6B98]], D_8015C694_ovl4);
    gEntitiesAngleXArray[omCurrentObj->objId] = sp30.x;
    gEntitiesAngleYArray[omCurrentObj->objId] = sp30.y;
    gEntitiesAngleZArray[omCurrentObj->objId] = sp30.z;
    func_800A9864((void *) D_8015A918_ovl4, 0x1869F, 0x10);
    while ((D_800D6B78 == 1) || (D_800E9E20[D_8015C698_ovl4] == 0)) {
        ohSleep(1);
    }
    if (D_8015A91C_ovl4[0] != 0) {
        func_800AA018(D_8015A91C_ovl4[0]);
    }
    if (D_8015A91C_ovl4[1] != 0) {
        func_800AA018(D_8015A91C_ovl4[1]);
    }
    curObjSleepForever();
}

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

#ifdef PORT
/* Functional port of the per-level map-dot proc (dispatch states 2..7, one
 * per level slot of the current planet; this was the crash site on entering
 * Pop Star). No sketch existed; ported from the asm. The ROM copies two
 * 6x6x2 u32 tables (D_8015A4F0_ovl4 sprite-bank ids, D_8015A610_ovl4 image
 * ids) to the stack and indexes them [planet][level]{closed,open}; both are
 * emitted as plain u32[] in build/pc/data/ovl4_ovl4.data.c (track descriptor
 * ids, not pointers), so the LP64 code indexes the live tables directly.
 * Role: a locked dot tears its track down via func_800B1900, an "== 2"
 * (newly reachable) dot picks the open art unless the unlock cutscene
 * (D_800D6B80) is about to reveal it, the dot pulses (func_800AECC0/AED20)
 * while hovered, blinks open during the unlock cutscene with sounds
 * 0xF2/0xF3, and the level-100% special (func_80153324_ovl4) makes the last
 * Ripple Star dot flicker between its two art sets forever. */
void func_801533A8_ovl4(s32 arg0) {
    void func_80153AB0_ovl4(struct GObj *);
    void func_800A9864(void *, s32, s32);
    void func_800AA018(s32);
    void func_800AECC0(f32);
    void func_800AED20(f32);
    void func_8000BBE0(GObj *);
    void func_800A9760(u32);
    void func_800A9F98(s32, f32);
    s32 func_800AA888(u32);
    extern u32 D_8015A4F0_ovl4[]; /* [6 planets][6 levels][2] */
    extern u32 D_8015A610_ovl4[]; /* [6 planets][6 levels][2] */
    extern s32 D_8015C6AC_ovl4[];
    extern s32 D_800D6B80;
    extern s32 D_800D6B9C;
    f32 t;
    s32 blink;

#define DOT_ART(i) D_8015A4F0_ovl4[((D_800D6B98 * 6) + arg0) * 2 + (i)]
#define DOT_IMG(i) D_8015A610_ovl4[((D_800D6B98 * 6) + arg0) * 2 + (i)]

    if (func_80152220_ovl4(D_800D6B98, arg0) == 0) {
        func_800B1900((u16) omCurrentObj->objId);
    }
    D_8015C6AC_ovl4[arg0] = omCurrentObj->objId;
    D_800DF150[omCurrentObj->objId] = func_80153AB0_ovl4;
    if (func_80152220_ovl4(D_800D6B98, arg0) == 2) {
        if ((D_800D6B80 != 0) && ((arg0 + 1) == D_800D6B9C)) {
            func_800A9864((void *) (uintptr_t) DOT_ART(0), 0x1869F, 0x10);
            func_800AA018(DOT_IMG(0));
        } else {
            func_800A9864((void *) (uintptr_t) DOT_ART(1), 0x1869F, 0x10);
            func_800AA018(DOT_IMG(1));
        }
    } else {
        func_800A9864((void *) (uintptr_t) DOT_ART(0), 0x1869F, 0x10);
        func_800AA018(DOT_IMG(0));
    }
    if ((arg0 + 1) == D_800E9FE0[D_8015C698_ovl4].as_s32) {
        func_800AECC0(2.0f);
        func_800AED20(2.0f);
    } else {
        func_800AECC0(0.0f);
        func_800AED20(0.0f);
    }
    if (D_800D6B80 != 0) {
        if (arg0 == D_800D6B9C) {
            func_800AFBB4(0, omCurrentObj);
        }
        blink = 0;
        play_sound(0xF2);
        while (D_800D6B80 != 0) {
            if ((arg0 + 1) == D_800D6B9C) {
                func_8000BBE0(D_800DE350[omCurrentObj->objId]);
                if (((blink / 2) % 2) != 0) {
                    func_800A9760(DOT_ART(0));
                } else {
                    func_800A9760(DOT_ART(1));
                }
            }
            blink++;
            ohSleep(1);
        }
        if ((arg0 + 1) == D_800D6B9C) {
            func_8000BBE0(D_800DE350[omCurrentObj->objId]);
            func_800A9760(DOT_ART(1));
            func_800A9F98(DOT_IMG(1), D_800DE350[omCurrentObj->objId]->animTimer);
        }
        play_sound(0xF3);
        if (arg0 == D_800D6B9C) {
            ohSleep(0xA);
            blink = 0;
            while ((f32) blink < 15.0f) {
                if (((blink / 2) % 2) != 0) {
                    func_800AFBB4(0, omCurrentObj);
                } else {
                    func_800AFBB4(1, omCurrentObj);
                }
                ohSleep(1);
                blink++;
            }
        }
        func_800AFBB4(1, omCurrentObj);
    }
    blink = 0;
    while (1) {
        if ((arg0 + 1) == D_800E9FE0[D_8015C698_ovl4].as_s32) {
            func_800AECC0(2.0f);
            func_800AED20(2.0f);
        } else {
            func_800AECC0(0.0f);
            func_800AED20(0.0f);
        }
        if (func_80153324_ovl4(arg0) != 0) {
            t = D_800DE350[omCurrentObj->objId]->animTimer;
            if (((blink / 2) % 2) != 0) {
                if (func_800AA888(DOT_ART(0)) == 0) {
                    func_8000BBE0(D_800DE350[omCurrentObj->objId]);
                    func_800A9760(DOT_ART(0));
                    func_800A9F98(DOT_IMG(0), t);
                }
            } else {
                if (func_800AA888(DOT_ART(1)) == 0) {
                    func_8000BBE0(D_800DE350[omCurrentObj->objId]);
                    func_800A9760(DOT_ART(1));
                    func_800A9F98(DOT_IMG(1), t);
                }
            }
            blink++;
        }
        ohSleep(1);
    }

#undef DOT_ART
#undef DOT_IMG
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_801533A8_ovl4.s")
#endif

extern s32 D_8015C694_ovl4;

void func_80153AB0_ovl4(struct GObj *arg0) {
    gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[D_8015C694_ovl4];
}

typedef struct {
    s32 unk0;
    s32 unk4;
} Ovl4Pair;

typedef struct {
    Ovl4Pair p[6];
} Ovl4Pair6;

void func_80153AEC_ovl4(void) {
    void func_80153C3C_ovl4(GObj *);
    void func_800A9864(void *, s32, s32);
    void func_800AA018(s32);
    void func_800AECC0(f32);
    void func_800AED20(f32);
    extern Ovl4Pair6 D_8015A730_ovl4;
    Ovl4Pair6 sp30 = D_8015A730_ovl4;

    D_8015C6A8_ovl4[0] = omCurrentObj->objId;
    D_800DF150[omCurrentObj->objId] = func_80153C3C_ovl4;
    func_800A9864((void *) sp30.p[D_800D6B98].unk0, 0x1869F, 0x10);
    func_800AA018(sp30.p[D_800D6B98].unk4);
    while (1) {
        if (D_800E9FE0[D_8015C698_ovl4].as_s32 == 0) {
            func_800AECC0(2.0f);
            func_800AED20(2.0f);
        } else {
            func_800AECC0(0.0f);
            func_800AED20(0.0f);
        }
        ohSleep(1);
    }
}

extern s32 D_8015C694_ovl4;

void func_80153C3C_ovl4(struct GObj *arg0) {
    gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[D_8015C694_ovl4];
}

#ifdef PORT
/* Functional port of the map-cursor glide proc (dispatch state 15). Ported
 * from the asm; no sketch existed. D_8015A760_ovl4 is a [6 planets]{art,img}
 * pair table of u32 track-descriptor ids (plain u32[] in the PC data, safe
 * to index live on LP64). Role: it owns the star cursor that sits on the
 * selected level dot. When another proc requests a move by setting
 * D_800E98E0[objId] nonzero, it snapshots the cursor DObj child's position,
 * lets func_800A9F98 seek the sprite to the newly selected dot to learn the
 * target position, restores the snapshot, then glides pos.x/pos.z toward
 * the target at 50 units/frame along the atan2 direction, clamping each
 * axis on overshoot; D_800E9AA0[D_8015C698_ovl4] = 1 keeps the planet-map
 * input proc's cooldown armed while the glide runs. */
void func_80153C78_ovl4(void) {
    void func_8015427C_ovl4(struct GObj *);
    void func_800A9864(void *, s32, s32);
    void func_800A9F98(s32, f32);
    void func_800AF408(void);
    void animUpdateModelTreeAnimation(GObj *);
    extern u32 D_8015A760_ovl4[]; /* [6 planets][2] */
    struct DObj *child;
    Vector saved;
    Vector target;
    f32 angle;
    f32 stepX;
    f32 stepZ;
    f32 dx;
    f32 dz;

    D_8015C6A0_ovl4 = omCurrentObj->objId;
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800DF150[omCurrentObj->objId] = func_8015427C_ovl4;
    func_800A9864((void *) (uintptr_t) D_8015A760_ovl4[D_800D6B98 * 2], 0x1869F, 0x10);
    func_800A9F98(D_8015A760_ovl4[(D_800D6B98 * 2) + 1], (f32) D_800E9FE0[D_8015C698_ovl4].as_s32);
    if (D_800E9FE0[D_8015C698_ovl4].as_s32 == 0) {
        animUpdateModelTreeAnimation(D_800DE350[omCurrentObj->objId]);
    }
    func_800AF408();
    while (1) {
        if (D_800E98E0[omCurrentObj->objId] == 0) {
            ohSleep(1);
            continue;
        }
        ((s32 *) D_800E9AA0)[D_8015C698_ovl4] = 1;
        child = D_800DE350[omCurrentObj->objId]->data.dobj->firstChild;
        saved = child->pos.v;
        func_800A9F98(D_8015A760_ovl4[(D_800D6B98 * 2) + 1], (f32) D_800E9FE0[D_8015C698_ovl4].as_s32);
        if (D_800E9FE0[D_8015C698_ovl4].as_s32 == 0) {
            animUpdateModelTreeAnimation(D_800DE350[omCurrentObj->objId]);
        }
        child = D_800DE350[omCurrentObj->objId]->data.dobj->firstChild;
        target = child->pos.v;
        func_800AF408();
        child->pos.v = saved;
        dz = (target.z < saved.z) ? (saved.z - target.z) : (target.z - saved.z);
        dx = (target.x < saved.x) ? (saved.x - target.x) : (target.x - saved.x);
        angle = atan2f(dz, dx);
        stepX = (saved.x < target.x) ? (cosf(angle) * 50.0f) : -(cosf(angle) * 50.0f);
        stepZ = (saved.z < target.z) ? (sinf(angle) * 50.0f) : -(sinf(angle) * 50.0f);
        while (1) {
            child = D_800DE350[omCurrentObj->objId]->data.dobj->firstChild;
            if (target.x != child->pos.v.x) {
                child->pos.v.x += stepX;
                if (stepX > 0.0f) {
                    if (target.x < child->pos.v.x) {
                        child->pos.v.x = target.x;
                    }
                } else if (child->pos.v.x < target.x) {
                    child->pos.v.x = target.x;
                }
            }
            if (target.z != child->pos.v.z) {
                child->pos.v.z += stepZ;
                if (stepZ > 0.0f) {
                    if (target.z < child->pos.v.z) {
                        child->pos.v.z = target.z;
                    }
                } else if (child->pos.v.z < target.z) {
                    child->pos.v.z = target.z;
                }
            }
            if ((child->pos.v.x == target.x) && (child->pos.v.z == target.z)) {
                D_800E98E0[omCurrentObj->objId] = 0;
                break;
            }
            ((s32 *) D_800E9AA0)[D_8015C698_ovl4] = 1;
            ohSleep(1);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80153C78_ovl4.s")
#endif

extern s32 D_8015C694_ovl4;

void func_8015427C_ovl4(struct GObj *arg0) {
    gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[D_8015C694_ovl4];
}

f32 func_801542B8_ovl4(s32 arg0, s32 arg1) {
    s32 func_801532FC_ovl4(s32);
    s32 func_80153294_ovl4(s32, s32, s32);
    s32 i;
    u8 sp38[3];
    f32 t;

    if (func_801532CC_ovl4(arg0, arg1) != 0) {
        if (func_801532FC_ovl4(arg0) != 0) {
            return 9.0f;
        }
        return 8.0f;
    }
    for (i = 0; i != 3; i++) {
        if (func_80153294_ovl4(arg0, arg1, i) != 0) {
            sp38[i] = 1;
        } else {
            sp38[i] = 0;
        }
    }
    t = 0.0f;
    if (sp38[0] != 0) {
        t = t + 4.0f;
    }
    if (sp38[1] != 0) {
        t = t + 2.0f;
    }
    if (sp38[2] != 0) {
        t = t + 1.0f;
    }
    return t;
}

#ifdef PORT
/* Functional port of the crystal-shard info panel proc (dispatch state 13).
 * Ported from the asm; no sketch existed. D_8015A93C_ovl4/D_8015A940_ovl4
 * are u32 track-descriptor ids in the PC data (safe on LP64). Role: shows
 * the per-level shard/boss icon next to the hovered dot. Whenever the
 * hovered selection (D_800E9FE0[D_8015C698_ovl4]) changes it shrinks the
 * panel to zero scale at 0.4/frame (with sound 0x277, skipped the very
 * first time), re-seeks the icon sprite to func_801542B8_ovl4's frame
 * (shard bits, or 8/9 for the boss level), teleports the panel to the new
 * dot via func_80152444_ovl4, then regrows it to scale 1.0; selection 0
 * (planet exit) or 0x29A (nothing hovered) just shrinks it away. */
void func_801543C8_ovl4(void) {
    void func_80154880_ovl4(struct GObj *);
    void func_800A9864(void *, s32, s32);
    void func_800A9F98(s32, f32);
    void func_800AECC0(f32);
    void func_800AED20(f32);
    extern u32 D_8015A93C_ovl4[];
    extern u32 D_8015A940_ovl4[];
    Vector pos;
    s32 first;
    s32 sel;
    s32 cur;

    first = 1;
    D_800DF150[omCurrentObj->objId] = func_80154880_ovl4;
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    func_800A9864((void *) (uintptr_t) D_8015A93C_ovl4[0], 0x1869F, 0x10);
    sel = D_800E9FE0[D_8015C698_ovl4].as_s32;
    D_800E98E0[omCurrentObj->objId] = sel + 1;
    while (1) {
        cur = D_800E98E0[omCurrentObj->objId];
        if (cur != sel) {
            D_800E98E0[omCurrentObj->objId] = sel;
            cur = D_800E98E0[omCurrentObj->objId];
            if ((cur == 0x29A) || (cur == 0)) {
                while (gEntitiesScaleXArray[omCurrentObj->objId] > 0.0f) {
                    gEntitiesScaleXArray[omCurrentObj->objId] += -0.4f;
                    gEntitiesScaleYArray[omCurrentObj->objId] += -0.4f;
                    gEntitiesScaleZArray[omCurrentObj->objId] += -0.4f;
                    if (gEntitiesScaleXArray[omCurrentObj->objId] < 0.0f) {
                        gEntitiesScaleXArray[omCurrentObj->objId] = 0.0f;
                        gEntitiesScaleYArray[omCurrentObj->objId] = 0.0f;
                        gEntitiesScaleZArray[omCurrentObj->objId] = 0.0f;
                    }
                    ohSleep(1);
                }
                cur = D_800E98E0[omCurrentObj->objId];
            } else {
                if (first != 0) {
                    first = 0;
                } else {
                    play_sound(0x277);
                    while (gEntitiesScaleXArray[omCurrentObj->objId] > 0.0f) {
                        gEntitiesScaleXArray[omCurrentObj->objId] += -0.4f;
                        gEntitiesScaleYArray[omCurrentObj->objId] += -0.4f;
                        gEntitiesScaleZArray[omCurrentObj->objId] += -0.4f;
                        if (gEntitiesScaleXArray[omCurrentObj->objId] < 0.0f) {
                            gEntitiesScaleXArray[omCurrentObj->objId] = 0.0f;
                            gEntitiesScaleYArray[omCurrentObj->objId] = 0.0f;
                            gEntitiesScaleZArray[omCurrentObj->objId] = 0.0f;
                        }
                        ohSleep(1);
                    }
                }
                func_800A9F98(D_8015A940_ovl4[1],
                              func_801542B8_ovl4(D_800D6B98, D_800E98E0[omCurrentObj->objId] - 1));
                func_80152444_ovl4(&pos, D_800D6B98, D_800E98E0[omCurrentObj->objId] - 1);
                gEntitiesNextPosXArray[omCurrentObj->objId] = pos.x;
                gEntitiesNextPosYArray[omCurrentObj->objId] = pos.y;
                gEntitiesNextPosZArray[omCurrentObj->objId] = pos.z;
                cur = D_800E98E0[omCurrentObj->objId];
            }
        }
        if ((cur != 0x29A) && (cur != 0) && (gEntitiesScaleXArray[omCurrentObj->objId] < 1.0f)) {
            gEntitiesScaleXArray[omCurrentObj->objId] += 0.4f;
            gEntitiesScaleYArray[omCurrentObj->objId] += 0.4f;
            gEntitiesScaleZArray[omCurrentObj->objId] += 0.4f;
            if (gEntitiesScaleXArray[omCurrentObj->objId] > 1.0f) {
                gEntitiesScaleXArray[omCurrentObj->objId] = 1.0f;
                gEntitiesScaleYArray[omCurrentObj->objId] = 1.0f;
                gEntitiesScaleZArray[omCurrentObj->objId] = 1.0f;
            }
        }
        ohSleep(1);
        sel = D_800E9FE0[D_8015C698_ovl4].as_s32;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_801543C8_ovl4.s")
#endif

extern s32 D_8015C694_ovl4;

void func_80154880_ovl4(struct GObj *arg0) {
    gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[D_8015C694_ovl4];
}

#ifdef PORT
/* Functional port of the level-number panel proc (dispatch state 14).
 * Ported from the asm; twin of func_801543C8_ovl4 (state 13) with the same
 * shrink/reseek/regrow skeleton, differing only in art (D_8015A948_ovl4 /
 * D_8015A94C_ovl4, u32 track-descriptor ids in the PC data) and content:
 * the numeral sprite frame is the raw selection index, or frame 0 when the
 * hovered dot is the planet's final (boss) level per func_801532CC_ovl4. */
void func_801548BC_ovl4(void) {
    void func_80154DA0_ovl4(struct GObj *);
    void func_800A9864(void *, s32, s32);
    void func_800A9F98(s32, f32);
    void func_800AECC0(f32);
    void func_800AED20(f32);
    extern u32 D_8015A948_ovl4[];
    extern u32 D_8015A94C_ovl4[];
    Vector pos;
    s32 first;
    s32 sel;
    s32 cur;

    first = 1;
    D_800DF150[omCurrentObj->objId] = func_80154DA0_ovl4;
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    func_800A9864((void *) (uintptr_t) D_8015A948_ovl4[0], 0x1869F, 0x10);
    sel = D_800E9FE0[D_8015C698_ovl4].as_s32;
    D_800E98E0[omCurrentObj->objId] = sel + 1;
    while (1) {
        cur = D_800E98E0[omCurrentObj->objId];
        if (cur != sel) {
            D_800E98E0[omCurrentObj->objId] = sel;
            cur = D_800E98E0[omCurrentObj->objId];
            if ((cur == 0x29A) || (cur == 0)) {
                while (gEntitiesScaleXArray[omCurrentObj->objId] > 0.0f) {
                    gEntitiesScaleXArray[omCurrentObj->objId] += -0.4f;
                    gEntitiesScaleYArray[omCurrentObj->objId] += -0.4f;
                    gEntitiesScaleZArray[omCurrentObj->objId] += -0.4f;
                    if (gEntitiesScaleXArray[omCurrentObj->objId] < 0.0f) {
                        gEntitiesScaleXArray[omCurrentObj->objId] = 0.0f;
                        gEntitiesScaleYArray[omCurrentObj->objId] = 0.0f;
                        gEntitiesScaleZArray[omCurrentObj->objId] = 0.0f;
                    }
                    ohSleep(1);
                }
                cur = D_800E98E0[omCurrentObj->objId];
            } else {
                if (first != 0) {
                    first = 0;
                } else {
                    play_sound(0x277);
                    while (gEntitiesScaleXArray[omCurrentObj->objId] > 0.0f) {
                        gEntitiesScaleXArray[omCurrentObj->objId] += -0.4f;
                        gEntitiesScaleYArray[omCurrentObj->objId] += -0.4f;
                        gEntitiesScaleZArray[omCurrentObj->objId] += -0.4f;
                        if (gEntitiesScaleXArray[omCurrentObj->objId] < 0.0f) {
                            gEntitiesScaleXArray[omCurrentObj->objId] = 0.0f;
                            gEntitiesScaleYArray[omCurrentObj->objId] = 0.0f;
                            gEntitiesScaleZArray[omCurrentObj->objId] = 0.0f;
                        }
                        ohSleep(1);
                    }
                }
                if (func_801532CC_ovl4(D_800D6B98, D_800E98E0[omCurrentObj->objId] - 1) != 0) {
                    func_800A9F98(D_8015A94C_ovl4[1], 0.0f);
                } else {
                    func_800A9F98(D_8015A94C_ovl4[1], (f32) D_800E98E0[omCurrentObj->objId]);
                }
                func_80152444_ovl4(&pos, D_800D6B98, D_800E98E0[omCurrentObj->objId] - 1);
                gEntitiesNextPosXArray[omCurrentObj->objId] = pos.x;
                gEntitiesNextPosYArray[omCurrentObj->objId] = pos.y;
                gEntitiesNextPosZArray[omCurrentObj->objId] = pos.z;
                cur = D_800E98E0[omCurrentObj->objId];
            }
        }
        if ((cur != 0x29A) && (cur != 0) && (gEntitiesScaleXArray[omCurrentObj->objId] < 1.0f)) {
            gEntitiesScaleXArray[omCurrentObj->objId] += 0.4f;
            gEntitiesScaleYArray[omCurrentObj->objId] += 0.4f;
            gEntitiesScaleZArray[omCurrentObj->objId] += 0.4f;
            if (gEntitiesScaleXArray[omCurrentObj->objId] > 1.0f) {
                gEntitiesScaleXArray[omCurrentObj->objId] = 1.0f;
                gEntitiesScaleYArray[omCurrentObj->objId] = 1.0f;
                gEntitiesScaleZArray[omCurrentObj->objId] = 1.0f;
            }
        }
        ohSleep(1);
        sel = D_800E9FE0[D_8015C698_ovl4].as_s32;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_801548BC_ovl4.s")
#endif

extern s32 D_8015C694_ovl4;

void func_80154DA0_ovl4(struct GObj *arg0) {
    gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[D_8015C694_ovl4];
}

void func_80154DDC_ovl4(arg0)
GObj *arg0;
{
    void func_80153AEC_ovl4(void);
    void func_801533A8_ovl4(s32);
    void func_80152E38_ovl4(s32);
    void func_8015306C_ovl4(void);
    void func_80153C78_ovl4(void);
    void func_801543C8_ovl4(void);
    void func_801548BC_ovl4(void);
    void func_800A9864(void *, s32, s32);
    extern void *D_8015A8A0_ovl4[];
    extern Unk8015A8F8 D_8015A8B8_ovl4[];
    extern s32 D_800D6B80;
    extern s32 D_800D6B9C;
    u32 v;

    v = ((u32 *) D_800E9AA0)[omCurrentObj->objId];
    switch (v) {
        case 1:
            func_80153AEC_ovl4();
            break;
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
            func_801533A8_ovl4(v - 2);
            break;
        case 8:
        case 9:
        case 10:
        case 11:
            func_80152E38_ovl4(v - 8);
            break;
        case 12:
            func_8015306C_ovl4();
            break;
        case 15:
            func_80153C78_ovl4();
            break;
        case 13:
            func_801543C8_ovl4();
            break;
        case 14:
            func_801548BC_ovl4();
            break;
        case 0:
            break;
    }
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    gEntitiesNextPosXArray[omCurrentObj->objId] = 0.0f;
    gEntitiesNextPosYArray[omCurrentObj->objId] = 0.0f;
    gEntitiesNextPosZArray[omCurrentObj->objId] = 0.0f;
    D_8015C694_ovl4 = omCurrentObj->objId;
    D_800E98E0[omCurrentObj->objId] = D_800D6B9C;
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 0;
    func_800A9864(D_8015A8A0_ovl4[D_800D6B98], 0x1869F, 0x10);
    if (D_8015A8B8_ovl4[D_800D6B98].unk0 != 0) {
        func_800AA018(D_8015A8B8_ovl4[D_800D6B98].unk0);
    }
    if (D_8015A8B8_ovl4[D_800D6B98].unk4 != 0) {
        func_800AA018(D_8015A8B8_ovl4[D_800D6B98].unk4);
    }
    if (D_800D6B80 != 0) {
        ohSleep(0x14);
        D_800D6B80 = 0;
        ((s32 *) D_800E9AA0)[D_8015C698_ovl4] = 0x1F;
        ohSleep(0xA);
        ohSleep(0xF);
        ohSleep(5);
        D_800E9FE0[D_8015C698_ovl4].as_s32 = D_800D6B9C + 1;
        D_800E98E0[D_8015C6A0_ovl4] = 1;
    }
    curObjSleepForever();
}

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

