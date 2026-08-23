#include "common.h"

#include "GObj.h"
#include "track_arrays.h"
#include "unk_structs/D_800E1B50.h"

typedef struct {
    u32 unk0;
    u32 unk4;
    u32 *unk8;
    f32 *unkC;
    u8 unk10;
    u8 unk11;
    u16 unk12;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
} YakuLibStruct;

extern u32 D_801CD820_ovl7[];
extern YakuLibStruct D_801CE750_ovl7, D_801D0A38_ovl7;
extern YakuLibStruct D_801C7DDC_ovl7, D_801CA7DC_ovl7, D_801CA7FC_ovl7;
extern YakuLibStruct D_801CE770_ovl7, D_801C7E84_ovl7;
extern YakuLibStruct D_801D0A58_ovl7;
extern YakuLibStruct D_801CA6F4_ovl7;
extern YakuLibStruct D_801CA738_ovl7;

extern void utilPrintf(const char *fmt, ...);

extern s32 D_800D7090;
/* D_801CE578_ovl7 = 1.5707964f : now emitted by this TU */
/* D_801CE4A0_ovl7 = "NmlBlock Request Error![yakulib.cc]\n" : now emitted by this TU */
/* D_801CE4C8_ovl7 = "reqDumpStarTrk Request Error!![yakulib.cc]\n" : now emitted by this TU */
/* D_801CE4F4_ovl7 = "reqMixStarTrk Request Error!![yakulib.cc]\n" : now emitted by this TU */
/* D_801CE520_ovl7 = "reqStarShotTrk Request Error!![yakulib.cc]\n" : now emitted by this TU */
/* D_801CE54C_ovl7 = "reqCrystal2Trk Request Error!![yakulib.cc]\n" : now emitted by this TU */

extern f32 eneGetPlayerHeight(void);
s32 request_track_general(s32, s32, s32);

void utilGetTransformSRT(Vector *, struct DObj *);
void func_800A4DB8(Vector *, struct DObj *);

s32 func_800AB0F4(GObj *);
void func_800AB120(GObj *);
void func_800AB174(GObj *);
void func_800AB1F0(GObj *);
void func_800AB244(GObj *);
void func_800AB2C0(GObj *);
void func_800AB314(GObj *);
void func_800AB3A0(GObj *);
void func_800AB3F4(GObj *);

// this file
void func_801BC1AC_ovl7(s32 arg0);
void func_801BC44C_ovl7(s32 arg0);
void func_801BC72C_ovl7(s32 arg0);

s32 func_801BBE50_ovl7(struct DObj *arg0, s32 arg1, u32 arg2) {
    s32 idx;
    Vector posVec;
    Vector angleVec;

    idx = request_track_general(0x1F, 0x1E, 0x3C);
    if (idx == -1) {
        utilPrintf("NmlBlock Request Error![yakulib.cc]\n");
        return -1;
    }
    D_800E0D50[idx] = arg2;
    D_800E76C0[idx] = 0xFF;
    D_800E7730[idx] = 6;
    D_800E77A0[idx] = 0;
    D_800E7880[idx] = 0;

    D_800E8E60[idx] = 1;
    ((s32 *) &D_800E1B50[0x70])[idx] = arg1;
    utilGetTransformSRT(&posVec, arg0);
    gEntitiesNextPosXArray[idx] = posVec.x;
    gEntitiesNextPosYArray[idx] = posVec.y;
    gEntitiesNextPosZArray[idx] = posVec.z;
    func_800A4DB8(&angleVec, arg0);
    gEntitiesAngleXArray[idx] = angleVec.x;
    gEntitiesAngleYArray[idx] = angleVec.y + 1.5707964f;
    gEntitiesAngleZArray[idx] = angleVec.z;
    D_800E17D0[idx] = D_800E17D0[arg2];
    D_800E6A10[idx] = D_800E6A10[arg2];
    return idx;
}

s32 func_801BBFE4_ovl7(s32 arg0) {
    s32 idx;
    s32 sp1C;

    idx = request_track_general(0x1F, 0x1E, 0x3C);
    if (idx == -1) {
        utilPrintf("reqDumpStarTrk Request Error!![yakulib.cc]\n");
        return -1;
    }
    D_800E76C0[idx] = 0xFF;
    D_800E7730[idx] = 6;
    D_800E77A0[idx] = arg0;
    D_800E7880[idx] = 0;
    D_800E5F90[idx] = D_800E5F90[D_800E0D50[idx]];
    D_800E6BD0[idx] = D_800E6BD0[D_800E0D50[idx]];
    D_800E6A10[idx] = D_800E6A10[D_800E0D50[idx]];
    if (D_800E0D50[idx] == 0) {
        sp1C = idx;
        gEntitiesNextPosYArray[idx] = eneGetPlayerHeight();
    } else {
        gEntitiesNextPosYArray[idx] = gEntitiesNextPosYArray[D_800E0D50[idx]];
    }
    gEntitiesAngleXArray[idx] = gEntitiesAngleXArray[D_800E0D50[idx]];
    gEntitiesAngleYArray[idx] = gEntitiesAngleYArray[D_800E0D50[idx]];
    gEntitiesAngleZArray[idx] = gEntitiesAngleZArray[D_800E0D50[idx]];
    D_800E8E60[idx] = 0;
    D_800E8220[omCurrentObj->objId] = 1;
    sp1C = idx;
    func_801BC1AC_ovl7(arg0);
    D_800D7090 = sp1C;
    return sp1C;
}

void func_801BC1AC_ovl7(s32 arg0) {
    if (D_800E8220[omCurrentObj->objId] == 0) {
        D_801D0A58_ovl7 = D_801CA6F4_ovl7;
    } else {
        D_801D0A58_ovl7 = D_801CA738_ovl7;
    }
    D_801D0A58_ovl7.unk1C = arg0;
}

s32 func_801BC27C_ovl7(s32 arg0, s32 arg1) {
    s32 idx;
    s32 sp1C;

    idx = request_track_general(0x1F, 0x1E, 0x3C);
    if (idx == -1) {
        utilPrintf("reqMixStarTrk Request Error!![yakulib.cc]\n");
        return -1;
    }
    D_800E76C0[idx] = 0xFF;
    D_800E7730[idx] = 6;
    D_800E77A0[idx] = arg0;
    D_800E7880[idx] = arg1;
    D_800E5F90[idx] = D_800E5F90[D_800E0D50[idx]];
    D_800E6BD0[idx] = D_800E6BD0[D_800E0D50[idx]];
    D_800E6A10[idx] = D_800E6A10[D_800E0D50[idx]];
    if (D_800E0D50[idx] == 0) {
        sp1C = idx;
        gEntitiesNextPosYArray[idx] = eneGetPlayerHeight();
    } else {
        gEntitiesNextPosYArray[idx] = gEntitiesNextPosYArray[D_800E0D50[idx]];
    }
    gEntitiesAngleXArray[idx] = gEntitiesAngleXArray[D_800E0D50[idx]];
    gEntitiesAngleYArray[idx] = gEntitiesAngleYArray[D_800E0D50[idx]];
    gEntitiesAngleZArray[idx] = gEntitiesAngleZArray[D_800E0D50[idx]];
    D_800E8E60[idx] = 0;
    D_800E8220[omCurrentObj->objId] = 1;
    sp1C = idx;
    func_801BC44C_ovl7(arg0);
    D_800D7090 = sp1C;
    return sp1C;
}

void func_801BC44C_ovl7(s32 arg0) {
    D_801CE750_ovl7 = D_801C7DDC_ovl7;
    D_801CE750_ovl7.unk1C = D_801CD820_ovl7[arg0];
    if (D_800E8220[omCurrentObj->objId] == 0) {
        D_801D0A38_ovl7 = D_801CA7DC_ovl7;
    } else {
        D_801D0A38_ovl7 = D_801CA7FC_ovl7;
    }
    D_801D0A38_ovl7.unk1C = arg0;
}

s32 func_801BC580_ovl7(s32 arg0) {
    s32 idx;
    s32 sp1C;

    idx = request_track_general(0x1F, 0x1E, 0x3C);
    if (idx == -1) {
        utilPrintf("reqStarShotTrk Request Error!![yakulib.cc]\n");
        return -1;
    }
    D_800E76C0[idx] = 0xFF;
    D_800E7730[idx] = 6;
    D_800E77A0[idx] = arg0 + 0x24;
    D_800E7880[idx] = 0;
    D_800E5F90[idx] = D_800E5F90[D_800E0D50[idx]];
    D_800E6BD0[idx] = D_800E6BD0[D_800E0D50[idx]];
    D_800E6A10[idx] = D_800E6A10[D_800E0D50[idx]];
    if (D_800E0D50[idx] == 0) {
        sp1C = idx;
        gEntitiesNextPosYArray[idx] = eneGetPlayerHeight();
    } else {
        gEntitiesNextPosYArray[idx] = gEntitiesNextPosYArray[D_800E0D50[idx]];
    }
    gEntitiesAngleXArray[idx] = gEntitiesAngleXArray[D_800E0D50[idx]];
    gEntitiesAngleYArray[idx] = gEntitiesAngleYArray[D_800E0D50[idx]];
    gEntitiesAngleZArray[idx] = gEntitiesAngleZArray[D_800E0D50[idx]];
    D_800E8E60[idx] = 0;
    sp1C = idx;
    func_801BC72C_ovl7(arg0);
    D_800D7090 = sp1C;
    return sp1C;
}

void func_801BC72C_ovl7(s32 arg0) {
    D_801CE770_ovl7 = D_801C7E84_ovl7;
    D_801CE770_ovl7.unk1C = D_801CD820_ovl7[arg0];
}

s32 func_801BC794_ovl7(s32 arg0) {
    s32 idx;
    s32 sp1C;

    idx = request_track_general(0x1C, 0x1E, 0x3C);
    if (idx == -1) {
        utilPrintf("reqCrystal2Trk Request Error!![yakulib.cc]\n");
        return -1;
    }
    D_800E76C0[idx] = 0xFF;
    D_800E7730[idx] = 3;
    D_800E77A0[idx] = 8;
    D_800E7880[idx] = arg0;
    D_800E5F90[idx] = D_800E5F90[D_800E0D50[idx]];
    D_800E6BD0[idx] = D_800E6BD0[D_800E0D50[idx]];
    D_800E6A10[idx] = D_800E6A10[D_800E0D50[idx]];
    if (D_800E0D50[idx] == 0) {
        sp1C = idx;
        gEntitiesNextPosYArray[idx] = eneGetPlayerHeight();
    } else {
        gEntitiesNextPosYArray[idx] = gEntitiesNextPosYArray[D_800E0D50[idx]];
    }
    gEntitiesAngleXArray[idx] = gEntitiesAngleXArray[D_800E0D50[idx]];
    gEntitiesAngleYArray[idx] = gEntitiesAngleYArray[D_800E0D50[idx]];
    gEntitiesAngleZArray[idx] = gEntitiesAngleZArray[D_800E0D50[idx]];
    D_800E8E60[idx] = D_800E8E60[D_800E0D50[idx]];
    gEntitiesNextPosXArray[idx] = gEntitiesNextPosXArray[D_800E0D50[idx]];
    gEntitiesNextPosYArray[idx] = gEntitiesNextPosYArray[D_800E0D50[idx]];
    gEntitiesNextPosZArray[idx] = gEntitiesNextPosZArray[D_800E0D50[idx]];
    return idx;
}

/* FACTORY: 19/754 raw, but the shape is settled and the residue is TWO
   frame facts, not 735 defects -- every diff after the prologue is the same
   sp-offset shear repeated.
   Established here: the gfx pushes are the ordinary GBI macros against
   gDisplayListHeads (the clone family of the matched func_8019E860_ovl7 in
   enelib.c) -- gSPSegment(head++, 4, gSegment4StartArray[objId]),
   gSPNumLights(head++, 1), gSPLight(head++, &pair->l[0], 1),
   gSPLight(head++, &pair->a, 2) -- NOT the PORT arm's pcYakuPush* helpers,
   and D_800E0650[objId] is a Lights1 * (the PORT arm's `(u8 *) pair + 8` is
   &pair->a).  The jump table groups cases 23+25, 24+26, 27+29 and 28+30
   into shared arms (ungrouped costs 362 extra instructions).
   Residue: (a) the ROM reserves a 0x160-byte DEAD stack region -- nothing
   between 0x20 and 0x177 is ever touched, only ra 0x14, the objId*4 spill
   0x1C, the D_800E0650 spill 0x178 and the arg0 home 0x180 -- reproduced
   here with `u8 unused[0x160]` (IDO keeps a large array even unreferenced,
   unlike scalar pads); (b) our IDO parks arg0 in $s0, adding an 8-byte save
   and pushing the frame to 0x188, where the ROM saves NO s-registers and
   re-loads arg0 from its 0x180 home before each call.  Closing (b) closes
   the offsets and most of the count with it. */
#ifdef MIPS_TO_C
void func_801BC978_ovl7(GObj *arg0) {
    extern s32 D_800DD8D0[];
    extern Lights1 D_800BE550, D_800BE548;
    extern Gfx *gDisplayListHeads[4];
    u8 unused[0x160];
    Lights1 *pair;

    if (D_800DD8D0[arg0->objId] & 0x40) {
        return;
    }
    pair = (Lights1 *) D_800E0650[arg0->objId];
    switch (func_800AB0F4(arg0)) {
    case 19:
        gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[arg0->objId]);
        if (pair != NULL) {
            gSPNumLights(gDisplayListHeads[0]++, 1);
            gSPLight(gDisplayListHeads[0]++, &pair->l[0], 1);
            gSPLight(gDisplayListHeads[0]++, &pair->a, 2);
        }
        func_800AB120(arg0);
        gSPNumLights(gDisplayListHeads[0]++, 1);
        gSPLight(gDisplayListHeads[0]++, &D_800BE550, 1);
        gSPLight(gDisplayListHeads[0]++, &D_800BE548, 2);
        return;
    case 20:
        gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[arg0->objId]);
        gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[arg0->objId]);
        if (pair != NULL) {
            gSPNumLights(gDisplayListHeads[0]++, 1);
            gSPLight(gDisplayListHeads[0]++, &pair->l[0], 1);
            gSPLight(gDisplayListHeads[0]++, &pair->a, 2);
            gSPNumLights(gDisplayListHeads[1]++, 1);
            gSPLight(gDisplayListHeads[1]++, &pair->l[0], 1);
            gSPLight(gDisplayListHeads[1]++, &pair->a, 2);
        }
        func_800AB174(arg0);
        gSPNumLights(gDisplayListHeads[0]++, 1);
        gSPLight(gDisplayListHeads[0]++, &D_800BE550, 1);
        gSPLight(gDisplayListHeads[0]++, &D_800BE548, 2);
        gSPNumLights(gDisplayListHeads[1]++, 1);
        gSPLight(gDisplayListHeads[1]++, &D_800BE550, 1);
        gSPLight(gDisplayListHeads[1]++, &D_800BE548, 2);
        return;
    case 21:
        gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[arg0->objId]);
        if (pair != NULL) {
            gSPNumLights(gDisplayListHeads[0]++, 1);
            gSPLight(gDisplayListHeads[0]++, &pair->l[0], 1);
            gSPLight(gDisplayListHeads[0]++, &pair->a, 2);
        }
        func_800AB1F0(arg0);
        gSPNumLights(gDisplayListHeads[0]++, 1);
        gSPLight(gDisplayListHeads[0]++, &D_800BE550, 1);
        gSPLight(gDisplayListHeads[0]++, &D_800BE548, 2);
        return;
    case 22:
        gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[arg0->objId]);
        gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[arg0->objId]);
        if (pair != NULL) {
            gSPNumLights(gDisplayListHeads[0]++, 1);
            gSPLight(gDisplayListHeads[0]++, &pair->l[0], 1);
            gSPLight(gDisplayListHeads[0]++, &pair->a, 2);
            gSPNumLights(gDisplayListHeads[1]++, 1);
            gSPLight(gDisplayListHeads[1]++, &pair->l[0], 1);
            gSPLight(gDisplayListHeads[1]++, &pair->a, 2);
        }
        func_800AB244(arg0);
        gSPNumLights(gDisplayListHeads[0]++, 1);
        gSPLight(gDisplayListHeads[0]++, &D_800BE550, 1);
        gSPLight(gDisplayListHeads[0]++, &D_800BE548, 2);
        gSPNumLights(gDisplayListHeads[1]++, 1);
        gSPLight(gDisplayListHeads[1]++, &D_800BE550, 1);
        gSPLight(gDisplayListHeads[1]++, &D_800BE548, 2);
        return;
    case 23:
    case 25:
        gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[arg0->objId]);
        if (pair != NULL) {
            gSPNumLights(gDisplayListHeads[0]++, 1);
            gSPLight(gDisplayListHeads[0]++, &pair->l[0], 1);
            gSPLight(gDisplayListHeads[0]++, &pair->a, 2);
        }
        func_800AB2C0(arg0);
        gSPNumLights(gDisplayListHeads[0]++, 1);
        gSPLight(gDisplayListHeads[0]++, &D_800BE550, 1);
        gSPLight(gDisplayListHeads[0]++, &D_800BE548, 2);
        return;
    case 24:
    case 26:
        gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[arg0->objId]);
        gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[arg0->objId]);
        if (pair != NULL) {
            gSPNumLights(gDisplayListHeads[0]++, 1);
            gSPLight(gDisplayListHeads[0]++, &pair->l[0], 1);
            gSPLight(gDisplayListHeads[0]++, &pair->a, 2);
            gSPNumLights(gDisplayListHeads[1]++, 1);
            gSPLight(gDisplayListHeads[1]++, &pair->l[0], 1);
            gSPLight(gDisplayListHeads[1]++, &pair->a, 2);
        }
        func_800AB314(arg0);
        gSPNumLights(gDisplayListHeads[0]++, 1);
        gSPLight(gDisplayListHeads[0]++, &D_800BE550, 1);
        gSPLight(gDisplayListHeads[0]++, &D_800BE548, 2);
        gSPNumLights(gDisplayListHeads[1]++, 1);
        gSPLight(gDisplayListHeads[1]++, &D_800BE550, 1);
        gSPLight(gDisplayListHeads[1]++, &D_800BE548, 2);
        return;
    case 27:
    case 29:
        gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[arg0->objId]);
        if (pair != NULL) {
            gSPNumLights(gDisplayListHeads[0]++, 1);
            gSPLight(gDisplayListHeads[0]++, &pair->l[0], 1);
            gSPLight(gDisplayListHeads[0]++, &pair->a, 2);
        }
        func_800AB3A0(arg0);
        gSPNumLights(gDisplayListHeads[0]++, 1);
        gSPLight(gDisplayListHeads[0]++, &D_800BE550, 1);
        gSPLight(gDisplayListHeads[0]++, &D_800BE548, 2);
        return;
    case 28:
    case 30:
        gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[arg0->objId]);
        gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[arg0->objId]);
        if (pair != NULL) {
            gSPNumLights(gDisplayListHeads[0]++, 1);
            gSPLight(gDisplayListHeads[0]++, &pair->l[0], 1);
            gSPLight(gDisplayListHeads[0]++, &pair->a, 2);
            gSPNumLights(gDisplayListHeads[1]++, 1);
            gSPLight(gDisplayListHeads[1]++, &pair->l[0], 1);
            gSPLight(gDisplayListHeads[1]++, &pair->a, 2);
        }
        func_800AB3F4(arg0);
        gSPNumLights(gDisplayListHeads[0]++, 1);
        gSPLight(gDisplayListHeads[0]++, &D_800BE550, 1);
        gSPLight(gDisplayListHeads[0]++, &D_800BE548, 2);
        gSPNumLights(gDisplayListHeads[1]++, 1);
        gSPLight(gDisplayListHeads[1]++, &D_800BE550, 1);
        gSPLight(gDisplayListHeads[1]++, &D_800BE548, 2);
        return;
    }
}
#elif defined(PORT)
/* onDraw for the yaku (power-star) tracks (ported from m2c; twin of
 * enelib's func_8019E128_ovl7 but with a per-track custom light pair in
 * D_800E0650): unless hidden (D_800DD8D0 bit 6), set segment 0x10 to the
 * track's geo block, push the track's Lights1 (gSPNumLights(1) +
 * gSPLight x2 -- the raw 0xDB020000/0xDC08060A/0xDC08090A words the ROM
 * writes), draw via the func_800AB0F4-selected renderer (all take just
 * the GObj -- m2c's extra args were leftover registers), and restore the
 * global lights D_800BE550/D_800BE548.  Odd kinds render into display
 * list head 0 only, even kinds mirror into both heads. */
static void pcYakuPushSeg(s32 head, u32 *seg) {
    extern Gfx *gDisplayListHeads[4];
    Gfx *g = gDisplayListHeads[head]++;

    g->words.w0 = 0xDB060010;
    g->words.w1 = (uintptr_t) seg;
}

static void pcYakuPushLights(s32 head, void *light, void *ambient) {
    extern Gfx *gDisplayListHeads[4];
    Gfx *g = gDisplayListHeads[head]++;

    g->words.w0 = 0xDB020000;
    g->words.w1 = 0x18;
    g = gDisplayListHeads[head]++;
    g->words.w0 = 0xDC08060A;
    g->words.w1 = (uintptr_t) light;
    g = gDisplayListHeads[head]++;
    g->words.w0 = 0xDC08090A;
    g->words.w1 = (uintptr_t) ambient;
}

void func_801BC978_ovl7(GObj *arg0) {
    extern s32 D_800DD8D0[];
    extern s32 *D_800E0650[];
    extern u32 *gSegment4StartArray[];
    extern Lights1 D_800BE550, D_800BE548;
    s32 id = arg0->objId;
    s32 *pair;
    s32 kind;

    if (D_800DD8D0[id] & 0x40) {
        return;
    }
    pair = D_800E0650[id];
    kind = func_800AB0F4(arg0);
    switch (kind) {
    case 19:
    case 21:
    case 23:
    case 25:
    case 27:
    case 29:
        pcYakuPushSeg(0, gSegment4StartArray[id]);
        if (pair != NULL) {
            pcYakuPushLights(0, (u8 *) pair + 8, pair);
        }
        if (kind == 19) {
            func_800AB120(arg0);
        } else if (kind == 21) {
            func_800AB1F0(arg0);
        } else if (kind == 23 || kind == 25) {
            func_800AB2C0(arg0);
        } else {
            func_800AB3A0(arg0);
        }
        pcYakuPushLights(0, &D_800BE550, &D_800BE548);
        return;
    case 20:
    case 22:
    case 24:
    case 26:
    case 28:
    case 30:
        pcYakuPushSeg(0, gSegment4StartArray[id]);
        pcYakuPushSeg(1, gSegment4StartArray[id]);
        if (pair != NULL) {
            pcYakuPushLights(0, (u8 *) pair + 8, pair);
            pcYakuPushLights(1, (u8 *) pair + 8, pair);
        }
        if (kind == 20) {
            func_800AB174(arg0);
        } else if (kind == 22) {
            func_800AB244(arg0);
        } else if (kind == 24 || kind == 26) {
            func_800AB314(arg0);
        } else {
            func_800AB3F4(arg0);
        }
        pcYakuPushLights(0, &D_800BE550, &D_800BE548);
        pcYakuPushLights(1, &D_800BE550, &D_800BE548);
        return;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/yakulib/func_801BC978_ovl7.s")
#endif
