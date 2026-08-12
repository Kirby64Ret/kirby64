#include "common.h"
#include "GObj.h"
#include "SPObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/util.h"
#include "ovl1/save_file.h"

extern s32 D_80187384_ovl5[];
extern Gfx D_80186A80_ovl5[];
extern Vector2 D_8018E3A0_ovl5[];
void func_800BB3F0(void);
extern f32 D_8018D6D0_ovl5;
extern f32 D_8018D6D4_ovl5;
extern s32 D_8018E268_ovl5[];
f32 func_80167164_ovl5(s32);
extern f32 D_8018D6CC_ovl5;
extern s32 D_800D6B24;
extern u32 D_800D6B68;
extern s32 D_8018E260_ovl5;
s32 func_80165B84_ovl5(s32);
void func_8016CB14_ovl5(void);
extern s32 D_8018E2A0_ovl5[];
s32 func_80165F1C_ovl5(s32);
extern struct UnkStruct8015C740 D_801870B4_ovl5;
extern struct UnkStruct8015C740 D_801870D4_ovl5;
extern struct UnkStruct8015C740 D_801870F4_ovl5;
SPObj *func_8015C740_ovl5(GObj *, struct UnkStruct8015C740 *);
void func_800AD1A0(void);
extern void *D_80187394_ovl5;
extern void *D_80187398_ovl5;
void func_800A9864(void *, s32, s32);
void func_800AA018(void *);
void func_800AF27C(void);
void func_8016CC88_ovl5(GObj *);
extern f32 D_801872FC_ovl5[];
f32 sqrtf(f32);
extern struct GObjProcess *gEntityGObjProcessArray5[];
extern u8 D_8018E3C8_ovl5[];
extern u8 D_8018E3C0_ovl5[];
extern u8 D_8018E424_ovl5;
extern u8 D_8018E425_ovl5;
extern u8 D_8018E3D8_ovl5[];
extern s32 D_8018E428_ovl5[];
s32 func_8016F3A8_ovl5(s32);
s32 func_8016F3C4_ovl5(s32);
s32 func_8016F3E8_ovl5(s32);
void func_8016E650_ovl5(s32, s32, s32, s32);
typedef union Unk28Words {
    s32 unk0[10];
} Unk28Words;

extern Unk28Words D_80186A0C_ovl5;
extern f32 D_8018732C_ovl5[];
Vector2 func_80166C68_ovl5(s32);
Vector *func_801659DC_ovl5(Vector *, s32);
#include "main/contpad.h"
#include "ovl1/game.h"

/* Faithful, not byte-exact (4/146). Every instruction and the frame are
   exact; IDO emits the `ldc1 $f20, %lo(D_8018D6C0_ovl5)` before the three
   scale-array `addiu`s where the ROM emits it after them. Swept: the local
   double's declaration position and initialiser form, one-line loop body,
   operand order, an (f64) cast, volatile, a pad local and hoisting the
   assignment above the preceding loop (14). */
#ifdef NON_MATCHING
extern s32 D_8018736C_ovl5[];
extern u8 D_8018E298_ovl5;
extern f64 D_8018D6C0_ovl5;
extern f32 D_8018D6C8_ovl5;
void func_800A9F98(s32, f32);
void func_800AFBB4(s32, GObj *);

void func_801668E0_ovl5(GObj *arg0) {
    s32 i;
    f64 v;

    func_800A9F98(D_8018736C_ovl5[D_8018E298_ovl5], 5.0f);
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -12.0f;
    D_800E3C90[omCurrentObj->objId] = 75.0f;
    for (i = 0; i < 0x3C; i++) {
        ohSleep(1);
    }
    v = D_8018D6C0_ovl5;
    for (i = 0xA; i >= 0; i--) {
        gEntitiesScaleZArray[omCurrentObj->objId] = gEntitiesScaleYArray[omCurrentObj->objId] =
            gEntitiesScaleXArray[omCurrentObj->objId] = i * v;
        ohSleep(1);
    }
    func_800AFBB4(0, omCurrentObj);
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] = D_800E33D0[omCurrentObj->objId] =
        D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = D_8018D6C8_ovl5;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_801668E0_ovl5.s")
#endif

typedef union Unk10Bytes {
    struct UnkStruct8015C740 *unk0[4];
} Unk10Bytes;

typedef struct UnkD800D7178 {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    s32 unkC;
} UnkD800D7178;

extern Unk10Bytes D_801869FC_ovl5;
extern UnkD800D7178 D_800D7178[];
extern struct UnkStruct8015C740 D_80186C48_ovl5;

void func_80166B28_ovl5(GObj *arg0) {
    SPObj *spobj;
    Unk10Bytes sp24 = D_801869FC_ovl5;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, &func_800AD1A0, 0x12, 0x80000000, 0x12);
    spobj = func_8015C740_ovl5(arg0, sp24.unk0[D_800D7178[4].unk0]);
    if (D_800D7178[4].unk0 == 3) {
        spobj->xScale = 2.0f;
        spobj->yScale = 2.0f;
        func_8015C740_ovl5(arg0, &D_80186C48_ovl5);
    } else {
        spobj = func_8015C740_ovl5(arg0, sp24.unk0[D_800D7178[4].unk0]);
        spobj->xOffset = 160.0f;
        spobj->yOffset = 10.0f;
        spobj->unk5A |= 1;
        spobj->unkBA |= 1;
    }
    curObjSleepForever();
}


Vector2 func_80166C68_ovl5(s32 idx) {
    Vector2 sp8;

    *(s32 *) &sp8.x = *(s32 *) &D_8018E3A0_ovl5[idx].x;
    *(s32 *) &sp8.y = *(s32 *) &D_8018E3A0_ovl5[idx].y;
    return sp8;
}

s32 func_80166CAC_ovl5(s32 arg0, s32 *arg1) {
    s32 i;

    for (i = 0; i < 4; i++) {
        if ((D_8018E3C0_ovl5[i] != 0) && (arg0 == arg1[i])) {
            return 0;
        }
    }
    return 1;
}

s32 func_80166D48_ovl5(s32 arg0) {
    s32 r;

    if (D_8018E425_ovl5 == 2) {
        if (((arg0 >= 0) && (arg0 < 0x10)) || ((arg0 >= 0x30) && (arg0 < 0x40))) {
            goto retA;
        }
        r = arg0 % 8;
        switch (r) {
            case 0:
            case 1:
            case 6:
            case 7:
            retA:
                return 1;
        }
        return 0;
    }
    if (D_8018E424_ovl5 == 2) {
        if (((arg0 >= 0) && (arg0 < 8)) || ((arg0 >= 0x38) && (arg0 < 0x40))) {
            goto retB;
        }
        r = arg0 % 8;
        switch (r) {
            case 0:
            case 7:
            retB:
                return 1;
        }
        return 0;
    }
    return 0;
}

s32 func_80166E30_ovl5(s32 arg0) {
    s32 r;

    if (D_8018E425_ovl5 != 0) {
        if (((arg0 >= 0) && (arg0 < 0x10)) || ((arg0 >= 0x30) && (arg0 < 0x40))) {
            goto retA;
        }
        r = arg0 % 8;
        switch (r) {
            case 0:
            case 1:
            case 6:
            case 7:
            retA:
                return 1;
        }
        return 0;
    }
    if (D_8018E424_ovl5 != 0) {
        if (((arg0 >= 0) && (arg0 < 8)) || ((arg0 >= 0x38) && (arg0 < 0x40))) {
            goto retB;
        }
        r = arg0 % 8;
        switch (r) {
            case 0:
            case 7:
            retB:
                return 1;
        }
        return 0;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_80166F14_ovl5.s")

f32 func_80167164_ovl5(s32 arg0) {
    if (gPlayerControllers[arg0].buttonHeld & 0x800) {
        return 180.0f;
    }
    if (gPlayerControllers[arg0].buttonHeld & 0x100) {
        return 90.0f;
    }
    if (gPlayerControllers[arg0].buttonHeld & 0x400) {
        return 0.0f;
    }
    if (gPlayerControllers[arg0].buttonHeld & 0x200) {
        return 270.0f;
    }
    return D_8018D6CC_ovl5;
}

void func_801671E8_ovl5(s32 arg0) {
    f32 temp;

    temp = func_80167164_ovl5(arg0);
    if (temp != D_8018D6D0_ovl5) {
        gEntitiesAngleYArray[D_8018E268_ovl5[arg0]] = temp * D_8018D6D4_ovl5 / 180.0f;
    }
}

s32 func_8016725C_ovl5(s32 arg0, s32 arg1) {
    f32 dist;
    s32 pad[7];
    Vector2 sp30;
    Vector2 sp28;

    if (D_800E9C60[D_8018E268_ovl5[arg1]] == 2) {
        return 0;
    }
    dist = sqrtf((gEntitiesNextPosXArray[D_8018E268_ovl5[arg1]] - gEntitiesNextPosXArray[D_8018E268_ovl5[arg0]]) *
                     (gEntitiesNextPosXArray[D_8018E268_ovl5[arg1]] - gEntitiesNextPosXArray[D_8018E268_ovl5[arg0]]) +
                 (gEntitiesNextPosZArray[D_8018E268_ovl5[arg1]] - gEntitiesNextPosZArray[D_8018E268_ovl5[arg0]]) *
                     (gEntitiesNextPosZArray[D_8018E268_ovl5[arg1]] - gEntitiesNextPosZArray[D_8018E268_ovl5[arg0]]));
    sp28 = func_80166C68_ovl5(arg0);
    sp30 = func_80166C68_ovl5(arg1);
    if (dist <= D_801872FC_ovl5[*(s32 *) &sp28] + D_801872FC_ovl5[*(s32 *) &sp30]) {
        return 1;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_80167374_ovl5.s")

#ifdef NON_MATCHING
// 52/145, one instruction short. Case bodies are already in the ROM's
// 0,1,3,2 source order. Residue: each arm's `A && B` -- the ROM zeroes $v0
// first and sets 1 only on the fully-taken path, then normalises 0/1 a
// second time; IDO short-circuits with an optimistic `li $v0,1`.
// `!= 0`, `? 1 : 0` and an explicit flag local all measure worse (56/78/102).
s32 func_80165900_ovl5(s32);
Vector *func_801659DC_ovl5(Vector *, s32);
Vector *func_8016596C_ovl5(Vector *, s32);
s32 func_80165AD0_ovl5(s32);
s32 func_8016A61C_ovl5(s32, s32);

s32 func_80167650_ovl5(s32 arg0) {
    s32 a;
    s32 w;
    s32 b;
    Vector sp30;
    Vector sp24;

    a = func_80165F1C_ovl5(arg0);
    b = func_80165AD0_ovl5(arg0);
    w = func_8016A61C_ovl5(a, b);
    if (w != 0x29A) {
        if (func_80165900_ovl5(w) != 0 || D_800E9C60[D_8018E2A0_ovl5[w]] != 0) {
            return 0;
        }
    }
    func_801659DC_ovl5(&sp30, arg0);
    func_8016596C_ovl5(&sp24, a);
    switch (b) {
    case 0:
        return (sp24.z + 150.0f) - 30.0f <= sp30.z && sp30.z <= sp24.z + 150.0f;
    case 1:
        return sp24.z - 150.0f <= sp30.z && sp30.z <= (sp24.z - 150.0f) + 30.0f;
    case 3:
        return sp24.x - 150.0f <= sp30.x && sp30.x <= (sp24.x - 150.0f) + 30.0f;
    case 2:
        return (sp24.x + 150.0f) - 30.0f <= sp30.x && sp30.x <= sp24.x + 150.0f;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_80167650_ovl5.s")
#endif

s32 func_80167898_ovl5(s32 arg0) {
    s32 temp;

    if (D_8018E3C8_ovl5[arg0] == 0) {
        if (gPlayerControllers[arg0].buttonHeld & 0xF00) {
            return 1;
        }
        return 0;
    }
    temp = D_8018E3D8_ovl5[arg0 * 20];
    if (temp == 0 || temp == 1 || temp == 2 || temp == 3) {
        return 1;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016792C_ovl5.s")

extern u8 D_8018E3C4_ovl5;
extern u8 D_8018E441_ovl5;
void func_8016A2B8_ovl5(s32);
s32 func_80167898_ovl5(s32);
void func_801671E8_ovl5(s32);
s32 func_80165AD0_ovl5(s32);
void func_80167374_ovl5(s32, s32);

void func_801686E4_ovl5(GObj *arg0) {
    s32 t = ((s32 *) D_800E9AA0)[omCurrentObj->objId];

    if (D_800E98E0[omCurrentObj->objId] != 0) {
        D_800E98E0[omCurrentObj->objId] = D_800E98E0[omCurrentObj->objId] - 1;
        return;
    }
    if (D_8018E3C4_ovl5 != 0) {
        return;
    }
    if (D_800E9C60[omCurrentObj->objId] != 0) {
        return;
    }
    if (D_8018E3C8_ovl5[t] != 0) {
        func_8016A2B8_ovl5(t);
        return;
    }
    if (gPlayerControllers[t].buttonPressed & 0x8000) {
        D_800E9C60[omCurrentObj->objId] = 1;
        return;
    }
    if (D_8018E441_ovl5 != 0 && (gPlayerControllers[t].buttonPressed & 0x4000)) {
        D_800E9C60[omCurrentObj->objId] = 3;
    }
    if (func_80167898_ovl5(t) != 0) {
        func_801671E8_ovl5(t);
        func_80167374_ovl5(t, func_80165AD0_ovl5(t));
    }
}

#ifdef NON_MATCHING
// 4 diffs: `r` lands at 0x1C, the ROM puts it at 0x18 (one word of frame
// padding between sp20 and r). Any extra local or pad grows the frame to 0x38.
extern f32 D_8018D6F0_ovl5;
extern char D_8018D61C_ovl5[];
s32 func_8016A61C_ovl5(s32, s32);
Vector *func_8016596C_ovl5(Vector *, s32);
f32 random_soft_f32(void);
s32 random_soft_s32_range(s32);

f32 func_80168804_ovl5(GObj *arg0, s32 arg1, s32 arg2) {
    s32 v;
    Vector sp20;
    f32 r;

    v = func_8016A61C_ovl5(arg1, arg2);
    if (v == 0x29A) {
        return D_8018D6F0_ovl5;
    }
    func_8016596C_ovl5(&sp20, v);
    switch (arg2) {
    case 0:
    case 1:
        r = random_soft_f32();
        return (f32) random_soft_s32_range(2) * -1.0f * (r * 75.0f) + sp20.z;
    case 2:
    case 3:
        r = random_soft_f32();
        return (f32) random_soft_s32_range(2) * -1.0f * (r * 75.0f) + sp20.x;
    default:
        utilPrintf(D_8018D61C_ovl5, arg2);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_80168804_ovl5.s")
#endif

s32 func_80168928_ovl5(s32 arg0, s32 arg1, f32 arg2) {
    Vector sp1C;

    func_801659DC_ovl5(&sp1C, arg0);
    switch (arg1) {
        case 0:
            return arg2 <= sp1C.z;
        case 1:
            return sp1C.z <= arg2;
        case 2:
            return arg2 <= sp1C.x;
        case 3:
            return sp1C.x <= arg2;
    }
}

s32 func_80168A04_ovl5(s32 arg0, s32 arg1) {
    s32 temp = ABS(arg0 - arg1);
    s32 r = temp % 8;

    if (r) {
        return 0;
    }
    return 1;
}

s32 func_80168A44_ovl5(s32 arg0, s32 arg1) {
    s32 i;

    for (i = 0; i < 0x40; i += 8) {
        if ((arg0 >= i) && (arg0 < i + 8) && (arg1 >= i) && (arg1 < i + 8)) {
            return 1;
        }
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_80168B30_ovl5.s")

typedef struct Unk2Bytes {
    s8 unk0;
    s8 unk1;
} Unk2Bytes;

Unk2Bytes func_80168E34_ovl5(s32 arg1) {
    Unk2Bytes sp4;

    sp4.unk0 = arg1 % 8;
    sp4.unk1 = arg1 / 8;
    return sp4;
}

typedef union Unk2BytesU {
    Unk2Bytes s;
    struct {
        u8 b0;
        u8 b1;
    } u;
} Unk2BytesU;

typedef struct Unk14Ent {
    u8 unk0;
    u8 filler1[0xF];
    u8 unk10;
    u8 unk11;
    u8 filler12[2];
} Unk14Ent;

extern Unk14Ent D_8018E3D0_ovl5[];

#ifdef NON_MATCHING
/* 115/155. */
void func_80168E84_ovl5(s32 arg0) {
    Unk2BytesU sp4C;
    Unk2BytesU sp48;
    Unk14Ent *p;
    s32 dx;
    s32 dy;
    s32 lim;

    sp4C.s = func_80168E34_ovl5(func_80165F1C_ovl5(arg0));
    p = &D_8018E3D0_ovl5[arg0];
    if (func_80165F1C_ovl5(p->unk0) == 0x29A) {
        p->unk10 = random_soft_s32_range(4);
        p->unk11 = random_soft_s32_range(4);
        return;
    }
    sp48.s = func_80168E34_ovl5(func_80165F1C_ovl5(p->unk0));
    if ((sp48.u.b0 == sp4C.u.b0) && (sp48.u.b1 == sp4C.u.b1)) {
        p->unk10 = random_soft_s32_range(4);
        p->unk11 = random_soft_s32_range(4);
        return;
    }
    dx = sp4C.u.b0 - sp48.u.b0;
    dy = sp4C.u.b1 - sp48.u.b1;
    if (((dx >= 0) ? dx : -dx) < ((dy >= 0) ? dy : -dy)) {
        lim = (D_8018E425_ovl5 == 2) ? 2 : 3;
        if (lim < ((dy >= 0) ? dy : -dy)) {
            if (sp48.u.b0 < sp4C.u.b0) {
                if (sp48.u.b1 < sp4C.u.b1) {
                    p->unk10 = 3;
                    p->unk11 = 1;
                } else {
                    p->unk10 = 3;
                    p->unk11 = 0;
                }
            } else {
                if (sp48.u.b1 < sp4C.u.b1) {
                    p->unk10 = 2;
                    p->unk11 = 1;
                } else {
                    p->unk10 = 2;
                    p->unk11 = 0;
                }
            }
        } else {
            p->unk10 = random_soft_s32_range(4);
            p->unk11 = random_soft_s32_range(4);
        }
    } else {
        lim = (D_8018E425_ovl5 == 2) ? 2 : 3;
        if (lim < ((dx >= 0) ? dx : -dx)) {
            if (sp48.u.b1 < sp4C.u.b1) {
                if (sp48.u.b0 < sp4C.u.b0) {
                    p->unk10 = 1;
                    p->unk11 = 3;
                } else {
                    p->unk10 = 1;
                    p->unk11 = 2;
                }
            } else {
                if (sp48.u.b0 < sp4C.u.b0) {
                    p->unk10 = 0;
                    p->unk11 = 3;
                } else {
                    p->unk10 = 0;
                    p->unk11 = 2;
                }
            }
        } else {
            p->unk10 = random_soft_s32_range(4);
            p->unk11 = random_soft_s32_range(4);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_80168E84_ovl5.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_801690F4_ovl5.s")

s32 func_801695C8_ovl5(void) {
    s32 count = 0;
    s32 i;

    for (i = 0; i < 4; i++) {
        if ((D_8018E3C0_ovl5[i] != 0) && (D_8018E3C8_ovl5[i] == 0)) {
            count++;
        }
    }
    return count;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016965C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_80169D90_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016A2B8_ovl5.s")

s32 func_8016A61C_ovl5(s32 arg0, s32 arg1) {
    if (func_80165B84_ovl5(arg0) != 0) {
        return 0x29A;
    }
    switch (arg1) {
        case 0:
            return arg0 + 8;
        case 1:
            return arg0 - 8;
        case 3:
            return arg0 - 1;
        case 2:
            return arg0 + 1;
    }
    return 0x29A;
}

s32 func_8016A69C_ovl5(s32 arg0) {
    return D_80187384_ovl5[arg0];
}

s32 func_8016A6B0_ovl5(s32 arg0) {
    s32 i;

    for (i = 0; i < 4; i++) {
        if (D_8018E3C0_ovl5[i] != 0) {
            if (func_80165F1C_ovl5(i) == arg0) {
                if (D_800E9C60[D_8018E268_ovl5[i]] == 3) {
                    return 1;
                }
            }
        }
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016A774_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016B754_ovl5.s")

void func_800B1900(u16);

void func_8016BEB0_ovl5(GObj *arg0, s32 arg1, s32 arg2) {
    s32 pad0;
    s32 pad1;
    Vector sp2C;

    func_800A9864((void *) 0x300A8, 0x1869F, 0x10);
    func_801659DC_ovl5(&sp2C, arg2);
    gEntitiesNextPosXArray[omCurrentObj->objId] = sp2C.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = 0.0f;
    gEntitiesNextPosZArray[omCurrentObj->objId] = sp2C.z;
    func_800AA018((void *) 0x30099);
    func_800AA018((void *) 0x3009A);
    func_800AF27C();
    func_800AA018((void *) 0x30098);
    while (D_800E9C60[D_8018E268_ovl5[arg2]] == 3) {
        ohSleep(1);
    }
    func_800B1900(((u16 *) omCurrentObj)[1]);
}


void func_8016C208_ovl5(GObj *);
s32 func_800AF230(void);
void func_800AF408(void);

void func_8016BFF0_ovl5(GObj *arg0, s32 arg1) {
    s32 t;
    s32 i;
    s32 pad[4];

    D_800E98E0[omCurrentObj->objId] = arg1;
    D_800DF150[omCurrentObj->objId] = func_8016C208_ovl5;
    func_800A9864((void *) 0x300A9, 0x1869F, 0x10);
    t = func_80165F1C_ovl5(arg1);
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] = t;
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[D_8018E2A0_ovl5[t]];
    gEntitiesNextPosYArray[omCurrentObj->objId] = 20.0f;
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[D_8018E2A0_ovl5[t]];
    func_800AA018((void *) 0x3009B);
    func_800AA018((void *) 0x3009C);
    D_800E9C60[D_8018E2A0_ovl5[t]] = 1;
    for (i = 0; i != 30; i++) {
        if (D_8018E3C4_ovl5 != 0) {
            curObjSleepForever();
        }
        ohSleep(1);
    }
    func_800AA018((void *) 0x3009D);
    func_800AA018((void *) 0x3009E);
    while (func_800AF230() == 0) {
        if (D_8018E3C4_ovl5 != 0) {
            func_800AF408();
            curObjSleepForever();
        }
        ohSleep(1);
    }
    D_800E9C60[D_8018E2A0_ovl5[t]] = 0;
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

void func_8016C208_ovl5(GObj *arg0) {
    if (func_80165F1C_ovl5(D_800E98E0[omCurrentObj->objId]) != D_800E9AA0[omCurrentObj->objId].as_s32) {
        D_800E9C60[D_8018E2A0_ovl5[D_800E9AA0[omCurrentObj->objId].as_s32]] = 0;
        func_800B1900(omCurrentObj->objId);
    }
}

void func_8016C410_ovl5(GObj *);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800B1900(u16);

void func_8016C28C_ovl5(GObj *arg0, s32 arg1) {
    s32 n;

    D_800E98E0[omCurrentObj->objId] = arg1;
    D_800DF150[omCurrentObj->objId] = func_8016C410_ovl5;
    func_800A9864((void *) 0x300AA, 0x1869F, 0x10);
    func_800AA018((void *) 0x3009F);
    n = 0;
    while (1 == D_800E9C60[D_8018E268_ovl5[arg1]]) {
        if (n != 0) {
            n--;
            if (n == 0) {
                func_800AECC0(2.0f);
                func_800AED20(2.0f);
            }
        }
        if (20.0f == arg0->animTimer) {
            func_800AECC0(0.0f);
            func_800AED20(0.0f);
            n = 10;
        }
        ohSleep(1);
    }
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

void func_8016C410_ovl5(GObj *arg0) {
    Vector sp24;
    Vector unused; /* load-bearing: places sp24 at 0x24 and sizes the frame */

    func_800B2340(&sp24, D_800DFBD0[D_8018E268_ovl5[D_800E98E0[omCurrentObj->objId]]][4],
                  D_8018E268_ovl5[D_800E98E0[omCurrentObj->objId]]);
    gEntitiesNextPosXArray[omCurrentObj->objId] = sp24.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = sp24.y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = sp24.z;
    gEntitiesAngleYArray[omCurrentObj->objId] =
        gEntitiesAngleYArray[D_8018E268_ovl5[D_800E98E0[omCurrentObj->objId]]];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016C508_ovl5.s")

void func_8016C8C0_ovl5(GObj *arg0) {
    s32 track;
    s32 idx;
    Vector sp24;
    Vector2 sp1C;

    track = D_800E98E0[omCurrentObj->objId];
    sp1C = func_80166C68_ovl5(track);
    idx = *(s32 *) &sp1C;
    func_801659DC_ovl5(&sp24, track);
    gEntitiesNextPosXArray[omCurrentObj->objId] = sp24.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = D_8018732C_ovl5[idx];
    gEntitiesNextPosZArray[omCurrentObj->objId] = sp24.z;
}

void func_8016C974_ovl5(GObj *arg0, s32 arg1) {
    func_800A9864(D_80187394_ovl5, 0x1869F, 0x10);
    func_800AA018(D_80187398_ovl5);
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[D_8018E268_ovl5[arg1]];
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[D_8018E268_ovl5[arg1]];
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[D_8018E268_ovl5[arg1]];
    func_800AF27C();
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

s32 func_8016CA4C_ovl5(s32 arg0) {
    s32 count = 0;
    s32 i;

    for (i = 0; i < 4; i++) {
        if ((arg0 != i) && (D_8018E428_ovl5[arg0] < D_8018E428_ovl5[i])) {
            count++;
        }
    }
    return count;
}

#ifdef NON_MATCHING
/* 2 diffs, and the single physical line is load-bearing (expanded over three
   lines it is 4): IDO fills the post-`jal` slot with `addiu $s0,$s0,1` and
   sinks `sw $v0` to `-4($s1)`, where the ROM stores at `0xC($s1)` first. The
   empty `if` reproduces the ROM's dead $s2 induction over D_8018E3C8_ovl5.
   Clone twins with the identical residue: func_801649CC_ovl5,
   func_80176108_ovl5. */
void func_8016CB14_ovl5(void) {
    s32 i;

    for (i = 0; i < 4; i++) { D_800D7178[i].unkC = func_8016CA4C_ovl5(i); if (D_8018E3C8_ovl5[i] != 0) {} }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016CB14_ovl5.s")
#endif

void func_8016CB7C_ovl5(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_800DF150[omCurrentObj->objId] = func_8016CC88_ovl5;
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800DDA90[omCurrentObj->objId] = 0x24;
    while (D_800E98E0[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    ohSleep(0x1E);
    D_8018E260_ovl5 = 0x3C;
    curObjSleepForever();
}

#ifdef NON_MATCHING
/* Faithful, not byte-exact (127/202) and the same length: a one-slot rotation
   of the saved-register file ($s6/$s7, $s0/$s5, $s5/$s4) runs through the
   whole function. */
extern s32 D_8018E264_ovl5;
extern s32 D_8018E288_ovl5[];
extern u8 D_8018E3C1_ovl5;
extern u8 D_8018E3C2_ovl5;
extern u8 D_8018E3C3_ovl5;
extern u8 D_8018E3C4_ovl5;
extern u8 D_8018E425_ovl5;
extern s32 D_8018E420_ovl5;
extern s32 D_8018E42C_ovl5;
extern s32 D_8018E430_ovl5;
extern s32 D_8018E434_ovl5;
s32 func_80165900_ovl5(s32);
void play_sound(s32);

void func_8016CC88_ovl5(GObj *arg0) {
    s32 i;
    s32 n;
    s32 t;
    u8 *p;

    if ((D_8018E420_ovl5 == 0) && (D_8018E3C4_ovl5 == 0)) {
        D_8018E264_ovl5 += 1;
    }
    for (i = 0; i < 4; i++) {
        if (D_8018E3C0_ovl5[i] != 0) {
            if (D_800E9C60[D_8018E268_ovl5[i]] != 2) {
                t = func_80165F1C_ovl5(i);
                if ((func_80165900_ovl5(t) == 0) && (D_800E9C60[D_8018E2A0_ovl5[t]] == 0)) {
                    D_800E9C60[D_8018E268_ovl5[i]] = 2;
                    D_8018E288_ovl5[i] -= 1;
                    if (D_8018E288_ovl5[i] == 0) {
                        D_8018E428_ovl5[i] = D_8018E264_ovl5;
                    }
                }
            }
        }
    }
    n = 0;
    p = D_8018E3C0_ovl5;
    do {
        if (*p != 0) {
            n++;
        }
        p++;
    } while ((u32) p < (u32) &D_8018E3C4_ovl5);
    if (((D_8018E424_ovl5 == 0) && (n == 2)) || ((D_8018E424_ovl5 == 0) && (n == 3)) ||
        ((D_8018E425_ovl5 == 0) && (n == 2))) {
        if (D_8018E424_ovl5 == 0) {
            t = request_track_general(7, 0, 0x70);
            D_800E98E0[t] = 0xF;
            D_800EA1A0[t] = 0;
            D_8018E424_ovl5 = 1;
        }
        if ((D_8018E425_ovl5 == 0) && (n == 2)) {
            t = request_track_general(7, 0, 0x70);
            D_800E98E0[t] = 0xF;
            D_800EA1A0[t] = 1;
            D_8018E425_ovl5 = 1;
        }
    }
    if ((n < 2) && (D_8018E3C4_ovl5 == 0)) {
        D_800E98E0[omCurrentObj->objId] = 1;
        D_8018E3C4_ovl5 = 1;
        ((s32 *) D_800D7178)[22] = D_8018E264_ovl5;
        play_sound(0x231);
        if (D_8018E3C0_ovl5[0] != 0) {
            D_8018E428_ovl5[0] = D_8018E264_ovl5;
        }
        if (D_8018E3C1_ovl5 != 0) {
            D_8018E42C_ovl5 = D_8018E264_ovl5;
        }
        if (D_8018E3C2_ovl5 != 0) {
            D_8018E430_ovl5 = D_8018E264_ovl5;
        }
        if (D_8018E3C3_ovl5 != 0) {
            D_8018E434_ovl5 = D_8018E264_ovl5;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016CC88_ovl5.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016CFB0_ovl5.s")

void func_8016E650_ovl5(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    Unk28Words sp20 = D_80186A0C_ovl5;
    SPObj *spobj;

    spobj = (SPObj *) func_8015C740_ovl5(arg0, sp20.unk0[arg1]);
    spobj->xOffset = arg2;
    spobj->yOffset = arg3;
}

#ifdef NON_MATCHING
// 88/120: the ROM keeps every value in a saved register (frame 0x48, no stack
// locals, $fp = &D_8018E288_ovl5[arg1]); IDO spills that pointer and three
// more, frame 0x68. An explicit `s32 *pv` local does not move it.
extern s32 D_8018E288_ovl5[];
extern struct UnkStruct8015C740 D_80186DC8_ovl5;
extern f32 D_80186DE8_ovl5[];
extern f32 D_80186E10_ovl5[];
extern f32 D_80186C88_ovl5[][2];
SPObj *func_8015C740_ovl5(GObj *, struct UnkStruct8015C740 *);
void func_800ACBDC(GObj *);
void func_800AD1A0(void);

void func_8016E6F0_ovl5(GObj *arg0, s32 arg1) {
    s32 *pv = &D_8018E288_ovl5[arg1];
    s32 prev = *pv + 1;
    f32 *base;
    f32 *p;
    f32 *end;
    SPObj *sp;
    s32 v;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_800DDA90[omCurrentObj->objId] = 0x24;
    omLinkGObjDL(arg0, &func_800AD1A0, 10, 0x80000000, 10);
    while (1) {
        v = *pv;
        if (prev != v) {
            if (v == 0) {
                func_800B1900(((u16 *) omCurrentObj)[1]);
            }
            prev = v;
            base = D_80186C88_ovl5[arg1];
            func_800ACBDC(arg0);
            p = D_80186DE8_ovl5;
            end = &D_80186DE8_ovl5[prev * 2];
            do {
                sp = func_8015C740_ovl5(arg0, &D_80186DC8_ovl5);
                sp->xOffset = p[0] + base[0];
                sp->yOffset = p[1] + base[1];
                if (!(p < end)) {
                    sp->primColorRed = 100;
                    sp->primColorGreen = 100;
                    sp->primColorBlue = 100;
                    sp->envColorRed = 0;
                    sp->envColorGreen = 0;
                    sp->envColorBlue = 0;
                }
                p += 2;
            } while (p != D_80186E10_ovl5);
        }
        ohSleep(1);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016E6F0_ovl5.s")
#endif

void func_8016E8D0_ovl5(s32 arg0, s32 arg1, f32 arg2, f32 arg3) {
    s32 sp34;
    s32 sp30;
    s32 sp2C;

    if (arg1 >= 0x464F) {
        sp2C = 0x63;
        sp30 = 0x3B;
        sp34 = 9;
    } else {
        sp2C = func_8016F3A8_ovl5(arg1);
        sp30 = func_8016F3C4_ovl5(arg1);
        sp34 = func_8016F3E8_ovl5(arg1);
    }
    func_8016E650_ovl5(arg0, sp2C % 10, (s32) (arg2 + 38.0f), (s32) arg3);
    func_8016E650_ovl5(arg0, sp2C / 10, (s32) (arg2 + 31.0f), (s32) arg3);
    func_8016E650_ovl5(arg0, sp30 % 10, (s32) (arg2 + 19.0f), (s32) arg3);
    func_8016E650_ovl5(arg0, sp30 / 10, (s32) (arg2 + 12.0f), (s32) arg3);
    func_8016E650_ovl5(arg0, sp34, (s32) arg2, (s32) arg3);
}

void func_8016EA4C_ovl5(void) {
}

u16 func_8016EA54_ovl5(s32 arg0) {
    switch (arg0) {
        case 0x1D:
            return gSaveBuffer1.files[saveCurrentFileNum].hundredYardHopRecord;
        case 0x1F:
            return gSaveBuffer1.files[saveCurrentFileNum].bumperCropBumpRecord;
        case 0x1E:
            return gSaveBuffer1.files[saveCurrentFileNum].checkerBoardChaseRecord;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016EAFC_ovl5.s")

void func_8016EF44_ovl5(u8 *arg0, u16 *arg1) {
    arg0[0x14] = arg1[0];
    arg0[0x15] = arg1[1];
    arg0[0x16] = arg1[2];
    arg0[0x18] = arg1[3];
    arg0[0x19] = arg1[4];
    arg0[0x1A] = arg1[5];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016EF78_ovl5.s")

void func_8016F2F0_ovl5(GObj *arg0) {
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_800DEF90[omCurrentObj->objId] = NULL;
    omLinkGObjDL(arg0, &func_800AD1A0, 0xA, 0x80000000, 0xA);
    func_8015C740_ovl5(arg0, &D_801870B4_ovl5);
    func_8015C740_ovl5(arg0, &D_801870D4_ovl5);
    func_8015C740_ovl5(arg0, &D_801870F4_ovl5);
    curObjSleepForever();
}

s32 func_8016F3A8_ovl5(s32 arg0) {
    return (arg0 % 30) * 3;
}

s32 func_8016F3C4_ovl5(s32 arg0) {
    return (arg0 / 30) % 60;
}

s32 func_8016F3E8_ovl5(s32 arg0) {
    return (arg0 / 30) / 60;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016F40C_ovl5.s")

void func_8016F730_ovl5(void) {
    func_800BB3F0();
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0, 0x10, 2);
}

void func_8016F770_ovl5(s32 arg0) {
    if (D_800D6B24 == 0) {
        if (D_8018E260_ovl5 != 0) {
            D_8018E260_ovl5--;
            if ((D_8018E260_ovl5 == 0) || (gPlayerControllers->buttonPressed & 0x9000)) {
                D_800D6B68 = gGameState;
                gGameState = 0x20;
                func_8016CB14_ovl5();
                func_8016F730_ovl5();
            }
        }
    }
}

void gameSetUpdateRate(f32);
void func_800B2F54(s32, void *, f32);
extern u32 D_80186960_ovl5[];

void func_8016F7EC_ovl5(void) {
    s32 i;
    s32 t;

    gameSetUpdateRate(2.0f);
    ohCreateCameraWrapper(0x19, 0x80000000, 0x63, 3, 0xFF);
    func_800AE048(0x100);
    func_800AE0F0();
    func_800A6E64();
    func_800A8724(1);
    func_80165634_ovl5();
    func_800A6BC0(9);
    func_800B2F54(0x10, &D_80186960_ovl5, 0.0f);
    func_800A71A0(0x10);
    for (i = 0x3F; i >= 0; i--) {
        t = request_track_general(7, 0, 0x70);
        D_800E98E0[t] = 0xA;
        ((s32 *) D_800E9AA0)[t] = i;
    }
    D_800E98E0[request_track_3(7, 0, 0x70)] = 0xE;
    D_800E98E0[request_track_3(7, 0, 0x70)] = 1;
    for (i = 2; i != 6; i++) {
        D_800E98E0[request_track_general(7, 0, 0x70)] = i;
        t = request_track_general(7, 0, 0x70);
        D_800E98E0[t] = 0x10;
        ((s32 *) D_800E9FE0)[t] = i - 2;
    }
    D_800E98E0[func_800AEA64(7, 0, 0x70)] = 6;
    for (i = 0; i != 4; i++) {
        t = request_track_3(7, 0, 0x70);
        D_800E98E0[t] = 8;
        ((s32 *) D_800E9FE0)[t] = i;
        t = request_track_3(7, 0, 0x70);
        D_800E98E0[t] = 9;
        ((s32 *) D_800E9FE0)[t] = i;
    }
    D_800E98E0[request_track_3(7, 0, 0x70)] = 0x12;
    D_800E98E0[request_track_3(7, 0, 0x70)] = 0x13;
    HS64_omMakeGObj(0, &func_8016F770_ovl5, 0x1A, 0x80000000);
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0xFF, -0x10, 0);
}

void func_8016FA8C_ovl5(Gfx **g) {
    gSPDisplayList((*g)++, D_80186A80_ovl5);
}

// PADDING TRAP (padtrap: trap, 5 words after .size) -- converting this would
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
extern ScreenSettings D_80186AB0_ovl5;
extern SceneSetup D_80186ACC_ovl5;

void func_8016FAB0_ovl5(void) {
    s32 i;

    func_800A74D8();
    ((s32 *) D_800D7178)[0x1D] = 0;
    ((s32 *) D_800D7178)[0x1E] = 0;
    D_80186AB0_ovl5.zBuffer = (u16 *) ((u32) D_8012EB00 - 0x1900);
    viApplyScreenSettings(&D_80186AB0_ovl5);
    D_80186ACC_ovl5.gtlSetup.heapSize = (u8 *) gFrameBuffer - (u8 *) &D_8018EE60;
    i = 0;
    do {
        ((vu16 *) gFrameBuffer)[i] = 1;
        ((vu16 *) D_803D6900)[i + 0x1F80] = 1;
        i++;
    } while (i != 320 * 240);
    gtlCreateScene(&D_80186ACC_ovl5);
}




