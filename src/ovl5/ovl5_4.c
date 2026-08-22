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


#ifdef NON_MATCHING
extern char D_8018D5F0_ovl5[];
s32 func_801658C4_ovl5(s32);
s32 func_80165D30_ovl5(s32);
s32 func_80165A4C_ovl5(s32);
extern u8 D_8018E3C4_ovl5;
/* 148/149: frame, saved-register count and structure are the ROM's; the six
   callee-saved registers are permuted. */
void func_80166F14_ovl5(s32 arg0) {
    Vector sp3C;
    s32 sp58[4];
    s32 sp68[64];
    u8 *p;
    s32 i;
    s32 n;

    for (i = 0; i < 4; i++) {
        if (D_8018E3C0_ovl5[i] == 0) {
            sp58[i] = 0x29A;
        } else if (i == arg0) {
            sp58[i] = 0x29A;
        } else {
            sp58[i] = func_80165F1C_ovl5(i);
        }
    }
    n = 0;
    for (i = 0; i < 0x40; i++) {
        if (func_80165900_ovl5(i) != 0) {
            if (func_80166CAC_ovl5(i, sp58) != 0) {
                if (func_80166E30_ovl5(i) == 0) {
                    if (func_80165D30_ovl5(i) == 0) {
                        sp68[n] = i;
                        n++;
                    }
                }
            }
        }
    }
    if (n == 0) {
        utilPrintf(D_8018D5F0_ovl5);
        for (i = 0; i != 0x40; i++) {
            if (func_80166CAC_ovl5(i, sp58) != 0) {
                if (func_80165D30_ovl5(i) == 0) {
                    sp68[n] = i;
                    n++;
                }
            }
        }
    }
    while (1) {
        i = sp68[random_soft_s32_range(n)];
        func_800B2340(&sp3C, func_801658C4_ovl5(i), D_8018E2A0_ovl5[i]);
        gEntitiesNextPosXArray[omCurrentObj->objId] = sp3C.x;
        gEntitiesNextPosYArray[omCurrentObj->objId] = 0.0f;
        gEntitiesNextPosZArray[omCurrentObj->objId] = sp3C.z;
        for (i = 0, p = D_8018E3C0_ovl5; i != 4; i++, p++) {
            if (*p != 0) {
                if (arg0 != i) {
                    if (func_8016725C_ovl5(arg0, i) != 0) {
                        break;
                    }
                }
            }
        }
        if (!(p < &D_8018E3C4_ovl5)) {
            break;
        }
        if (func_80165A4C_ovl5(arg0) == 0) {
            break;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_80166F14_ovl5.s")
#endif


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

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
s32 func_80165FB8_ovl5(s32, f32 *, s32 *);          /* extern */
extern f32 D_8018D6D8_ovl5;
extern f32 D_8018D6DC_ovl5;
extern f32 D_8018D6E0_ovl5;

void func_80167374_ovl5(s32 arg0, s32 arg1) {
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    s32 *sp2C;
    f32 *temp_a2;
    f32 *temp_v0;
    f32 temp_f0;
    f32 temp_f2;
    s32 *temp_a3;
    s32 temp_v0_2;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 var_s0;
    u8 *var_s1;

    temp_a3 = &D_8018E268_ovl5[arg0];
    temp_v1 = *temp_a3;
    temp_a2 = &gEntitiesNextPosXArray[temp_v1];
    temp_v0 = &gEntitiesNextPosZArray[temp_v1];
    temp_f2 = *temp_a2;
    temp_f0 = *temp_v0;
    sp3C = temp_f2;
    sp40 = gEntitiesNextPosYArray[temp_v1];
    sp44 = temp_f0;
    switch (arg1) {                                 /* switch 1; irregular */
    case 0:                                         /* switch 1 */
        gEntitiesAngleYArray[omCurrentObj->objId] = 0.0f;
        break;
    case 1:                                         /* switch 1 */
        gEntitiesAngleYArray[omCurrentObj->objId] = D_8018D6D8_ovl5;
        break;
    case 2:                                         /* switch 1 */
        gEntitiesAngleYArray[omCurrentObj->objId] = D_8018D6DC_ovl5;
        break;
    case 3:                                         /* switch 1 */
        gEntitiesAngleYArray[omCurrentObj->objId] = D_8018D6E0_ovl5;
        break;
    }
    switch (arg1) {                                 /* switch 2; irregular */
    case 1:                                         /* switch 2 */
        *temp_v0 = temp_f0 - 25.0f;
        break;
    case 2:                                         /* switch 2 */
        *temp_a2 = temp_f2 + 25.0f;
        break;
    case 0:                                         /* switch 2 */
        *temp_v0 = temp_f0 + 25.0f;
        break;
    case 3:                                         /* switch 2 */
        *temp_a2 = temp_f2 - 25.0f;
        break;
    }
    sp2C = temp_a3;
    temp_v0_2 = func_80165FB8_ovl5(arg0, temp_a2, temp_a3);
    if ((temp_v0_2 != 0x29A) && ((func_80165900_ovl5(temp_v0_2) != 0) || (D_800E9C60[D_8018E2A0_ovl5[temp_v0_2]] != 0))) {
        var_s1 = D_8018E3C0_ovl5;
        var_s0 = 0;
loop_22:
        if ((*var_s1 != 0) && (arg0 != var_s0) && (func_8016725C_ovl5(arg0, var_s0) != 0)) {
            temp_v1_2 = *sp2C;
            gEntitiesNextPosXArray[temp_v1_2] = sp3C;
            gEntitiesNextPosYArray[temp_v1_2] = sp40;
            gEntitiesNextPosZArray[temp_v1_2] = sp44;
            return;
        }
        var_s0 += 1;
        var_s1 += 1;
        if (var_s0 == 4) {
            return;
        }
        goto loop_22;
    }
    temp_v1_3 = *sp2C;
    gEntitiesNextPosXArray[temp_v1_3] = sp3C;
    gEntitiesNextPosYArray[temp_v1_3] = sp40;
    gEntitiesNextPosZArray[temp_v1_3] = sp44;
}
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_80167374_ovl5.s")
#endif

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

#ifdef PORT
/* PORT-only prototypes and helpers for the arms below. Splat split several
 * flat N64 tables into per-symbol C objects that the host compiler pads and
 * aligns independently, so cross-symbol indexing does not land where it did
 * on the console; these helpers re-derive the accesses per symbol:
 *   - ovl5_4_idpair_ reads word i of the (idle,run) animation-id pair tables
 *     split 1/7 (D_8018721C/D_80187220 and friends).
 *   - ovl5_4_molepers_ reads byte i of the flat CPU-difficulty table split
 *     as D_80187188/D_80187189/D_8018718D/D_8018718E (rows of 0xD bytes). */
void play_sound(s32);
s32 request_track_general(s32, s32, s32);
void animUpdateModelTreeAnimation(GObj *);
void animResetTextureAnimation(GObj *);
s32 func_800AA934(void *);
void func_800AA608(void *, void *, f32, void *, f32);
Vector2 func_80166C68_ovl5(s32);
s32 func_80166D48_ovl5(s32);
s32 func_80166054_ovl5(Vector);
s32 func_800BB4E4(s32, s32, s32);
s32 func_80165AD0_ovl5(s32);
s32 func_80165948_ovl5(s32);
s32 func_8016A69C_ovl5(s32);
s32 func_8016A6B0_ovl5(s32);
void func_80167374_ovl5(s32, s32);
s32 func_80168928_ovl5(s32, s32, f32);
f32 func_80168804_ovl5(GObj *, s32, s32);
void func_80168E84_ovl5(s32);
s32 func_801690F4_ovl5(s32);
u8 func_8016965C_ovl5(s32);
s32 func_80169D90_ovl5(s32, s32);
s32 func_80168B30_ovl5(s32);
void func_801668E0_ovl5(GObj *);
void func_8016689C_ovl5(GObj *);
void func_801686E4_ovl5(GObj *);
void func_80166F14_ovl5(s32);
s32 func_80167650_ovl5(s32);
s32 func_80167898_ovl5(s32);
void func_801671E8_ovl5(s32);
extern struct GObjProcess *gEntityGObjProcessArray[];
extern s32 D_8018E264_ovl5;
extern s32 D_8018E288_ovl5[];
extern s32 D_8018E420_ovl5;
extern u8 D_8018E3C4_ovl5;

static u32 ovl5_4_idpair_(u32 *first, u32 *rest, s32 i) {
    return (i == 0) ? first[0] : rest[i - 1];
}

static u8 ovl5_4_molepers_(s32 i) {
    /* flat CPU-difficulty table, N64 base 0x80187184, rows of 0xD bytes */
    extern u8 D_80187184_ovl5[];
    extern u8 D_80187188_ovl5[];
    extern u8 D_80187189_ovl5[];
    extern u8 D_8018718D_ovl5[];
    extern u8 D_8018718E_ovl5[];

    if (i < 4) {
        return D_80187184_ovl5[i];
    }
    if (i == 4) {
        return D_80187188_ovl5[0];
    }
    if (i < 9) {
        return D_80187189_ovl5[i - 5];
    }
    if (i == 9) {
        return D_8018718D_ovl5[0];
    }
    return D_8018718E_ovl5[i - 10];
}

/* Racer entity main for mole-panic player arg1: registers the objId in
 * D_8018E268_ovl5[arg1], spawns the character model, then services the
 * command state in D_800E9C60[objId]: 0 idle/taunt poses, 1 round-start
 * (spawns the per-player whack cursor track), 2 fell down a hole (drop,
 * respawn or park forever when out of stock), 3 dizzy. */
void func_8016792C_ovl5(GObj *arg0, u32 arg1) {
    extern u32 D_801871FC_ovl5[];
    extern u32 D_8018720C_ovl5[];
    extern u32 D_8018721C_ovl5[];
    extern u32 D_80187220_ovl5[];
    extern u32 D_8018723C_ovl5[];
    extern u32 D_80187240_ovl5[];
    extern u32 D_8018725C_ovl5[];
    extern u32 D_80187260_ovl5[];
    extern u32 D_8018727C_ovl5[];
    extern u32 D_80187280_ovl5[];
    extern u32 D_8018729C_ovl5[];
    extern u32 D_801872A0_ovl5[];
    extern u32 D_801872BC_ovl5[];
    extern u32 D_801872C0_ovl5[];
    extern u32 D_801872DC_ovl5[];
    extern u32 D_801872E0_ovl5[];
    extern u8 D_8018E3D0_ovl5x[] __asm__("D_8018E3D0_ovl5");
    Vector2 kf;
    s32 kind;
    s32 frame;
    s32 i;
    s32 t;
    u32 id;

#define PAIR792C_(first, rest, j) \
    ((void *) (uintptr_t) ovl5_4_idpair_(first, rest, kind * 2 + (j)))
    D_8018E268_ovl5[arg1] = omCurrentObj->objId;
    D_800E98E0[omCurrentObj->objId] = 5;
    D_800E9AA0[omCurrentObj->objId].as_u32 = arg1;
    D_800E9C60[omCurrentObj->objId] = 0;
    if (D_8018E3C8_ovl5[arg1] != 0) {
        *(s32 *) &D_8018E3D0_ovl5x[arg1 * 0x14 + 4] = 0;
        D_8018E3D0_ovl5x[arg1 * 0x14 + 8] = 5;
    }
    kf = func_80166C68_ovl5(arg1);
    kind = *(s32 *) &kf.x;
    frame = *(s32 *) &kf.y;
    func_800A9864((void *) (uintptr_t) D_801871FC_ovl5[kind], 0x1869F, 0x10);
    func_800AECC0(1.0f);
    func_800AED20(1.0f);
    func_800A9F98((s32) D_8018720C_ovl5[kind], (f32) frame);
    if (frame == 0) {
        animUpdateModelTreeAnimation(arg0);
    }
    animResetTextureAnimation(arg0);
    func_800AECC0(2.0f);
    func_800AED20(2.0f);
    if (kind == 1) {
        gEntitiesScaleXArray[omCurrentObj->objId] = 0.85f;
        gEntitiesScaleYArray[omCurrentObj->objId] = 0.85f;
        gEntitiesScaleZArray[omCurrentObj->objId] = 0.85f;
    }
    func_800AA018(PAIR792C_(D_8018721C_ovl5, D_80187220_ovl5, 0));
    if (ovl5_4_idpair_(D_8018721C_ovl5, D_80187220_ovl5, kind * 2 + 1) != 0) {
        func_800AA018(PAIR792C_(D_8018721C_ovl5, D_80187220_ovl5, 1));
    }
    func_80166F14_ovl5(arg1);
    D_800DF150[omCurrentObj->objId] = func_801686E4_ovl5;
    while (1) {
        if (D_8018E3C4_ovl5 != 0) {
            gEntitiesAngleYArray[omCurrentObj->objId] = 0.0f;
            if (func_800AA934(PAIR792C_(D_8018729C_ovl5, D_801872A0_ovl5, 0)) == 0) {
                func_800AA608(arg0->data.dobj->firstChild, PAIR792C_(D_8018729C_ovl5, D_801872A0_ovl5, 0), 0.0f,
                              (void *) (uintptr_t) D_801871FC_ovl5[kind], 4.0f);
                func_800AA018(PAIR792C_(D_8018729C_ovl5, D_801872A0_ovl5, 0));
                if (ovl5_4_idpair_(D_8018729C_ovl5, D_801872A0_ovl5, kind * 2 + 1) != 0) {
                    func_800AA018(PAIR792C_(D_8018729C_ovl5, D_801872A0_ovl5, 1));
                }
            }
            D_800DF150[omCurrentObj->objId] = NULL;
        }
        switch (D_800E9C60[omCurrentObj->objId]) {
            case 0:
                if (D_8018E3C4_ovl5 == 0) {
                    if (func_80167650_ovl5(arg1) != 0) {
                        if (func_800AA934(PAIR792C_(D_801872DC_ovl5, D_801872E0_ovl5, 0)) == 0) {
                            func_800AA608(arg0->data.dobj->firstChild, PAIR792C_(D_801872DC_ovl5, D_801872E0_ovl5, 0),
                                          0.0f, (void *) (uintptr_t) D_801871FC_ovl5[kind], 4.0f);
                            func_800AA018(PAIR792C_(D_801872DC_ovl5, D_801872E0_ovl5, 0));
                            if (ovl5_4_idpair_(D_801872DC_ovl5, D_801872E0_ovl5, kind * 2 + 1) != 0) {
                                func_800AA018(PAIR792C_(D_801872DC_ovl5, D_801872E0_ovl5, 1));
                            }
                        }
                    } else if ((func_80167898_ovl5(arg1) != 0) && (D_8018E3C4_ovl5 == 0)) {
                        if (func_800AA934(PAIR792C_(D_8018723C_ovl5, D_80187240_ovl5, 0)) == 0) {
                            func_800AA608(arg0->data.dobj->firstChild, PAIR792C_(D_8018723C_ovl5, D_80187240_ovl5, 0),
                                          0.0f, (void *) (uintptr_t) D_801871FC_ovl5[kind], 4.0f);
                            func_800AA018(PAIR792C_(D_8018723C_ovl5, D_80187240_ovl5, 0));
                            if (ovl5_4_idpair_(D_8018723C_ovl5, D_80187240_ovl5, kind * 2 + 1) != 0) {
                                func_800AA018(PAIR792C_(D_8018723C_ovl5, D_80187240_ovl5, 1));
                            }
                        }
                    } else if (func_800AA934(PAIR792C_(D_8018721C_ovl5, D_80187220_ovl5, 0)) == 0) {
                        func_800AA608(arg0->data.dobj->firstChild, PAIR792C_(D_8018721C_ovl5, D_80187220_ovl5, 0),
                                      0.0f, (void *) (uintptr_t) D_801871FC_ovl5[kind], 4.0f);
                        func_800AA018(PAIR792C_(D_8018721C_ovl5, D_80187220_ovl5, 0));
                        if (ovl5_4_idpair_(D_8018721C_ovl5, D_80187220_ovl5, kind * 2 + 1) != 0) {
                            func_800AA018(PAIR792C_(D_8018721C_ovl5, D_80187220_ovl5, 1));
                        }
                    }
                }
                break;
            case 1:
                if (D_8018E420_ovl5 != 0) {
                    D_800E9C60[omCurrentObj->objId] = 0;
                    D_800E98E0[omCurrentObj->objId] = 1;
                } else {
                    if (kind == 3) {
                        t = request_track_general(7, 0, 0x70);
                        D_800E98E0[t] = 0xD;
                        D_800E9FE0[t].as_u32 = arg1;
                    }
                    func_800AA018(PAIR792C_(D_8018727C_ovl5, D_80187280_ovl5, 0));
                    if (ovl5_4_idpair_(D_8018727C_ovl5, D_80187280_ovl5, kind * 2 + 1) != 0) {
                        func_800AA018(PAIR792C_(D_8018727C_ovl5, D_80187280_ovl5, 1));
                    }
                    while ((arg0->animTimer < 20.0f) && (D_800E9C60[omCurrentObj->objId] != 2)) {
                        ohSleep(1);
                    }
                    if (D_800E9C60[omCurrentObj->objId] != 2) {
                        func_800AECC0(0.0f);
                        func_800AED20(0.0f);
                        t = request_track_general(7, 0, 0x70);
                        D_800E98E0[t] = 7;
                        D_800E9C60[t] = func_80165F1C_ovl5(arg1);
                        D_800E9E20[t] = func_80165AD0_ovl5(arg1);
                        D_800E9FE0[t].as_u32 = arg1;
                        for (i = 0; (i < 0xA) && (D_800E9C60[omCurrentObj->objId] != 2);) {
                            ohSleep(1);
                            i += 1;
                        }
                        func_800AECC0(2.0f);
                        func_800AED20(2.0f);
                        if (D_800E9C60[omCurrentObj->objId] != 2) {
                            while ((func_800AF230() == 0) && (D_800E9C60[omCurrentObj->objId] != 2)) {
                                ohSleep(1);
                            }
                            if (D_800E9C60[omCurrentObj->objId] != 2) {
                                func_800AA018(PAIR792C_(D_8018721C_ovl5, D_80187220_ovl5, 0));
                                if (ovl5_4_idpair_(D_8018721C_ovl5, D_80187220_ovl5, kind * 2 + 1) != 0) {
                                    func_800AA018(PAIR792C_(D_8018721C_ovl5, D_80187220_ovl5, 1));
                                }
                                D_800E9C60[omCurrentObj->objId] = 0;
                                D_800E98E0[omCurrentObj->objId] = 1;
                            }
                        }
                    }
                }
                break;
            case 2:
                play_sound(0x235);
                if (D_8018E3C8_ovl5[arg1] == 0) {
                    if (D_8018E288_ovl5[arg1] != 0) {
                        func_800BB4E4(arg1, 4, 0x28);
                    } else {
                        func_800BB4E4(arg1, 1, 0x3C);
                    }
                }
                func_800AA018(PAIR792C_(D_8018725C_ovl5, D_80187260_ovl5, 0));
                if (ovl5_4_idpair_(D_8018725C_ovl5, D_80187260_ovl5, kind * 2 + 1) != 0) {
                    func_800AA018(PAIR792C_(D_8018725C_ovl5, D_80187260_ovl5, 1));
                }
                D_800E3210[omCurrentObj->objId] = 0.0f;
                D_800E3750[omCurrentObj->objId] = -5.0f;
                D_800E3C90[omCurrentObj->objId] = 50.0f;
                while (gEntitiesNextPosYArray[omCurrentObj->objId] > -2000.0f) {
                    ohSleep(1);
                }
                t = request_track_general(7, 0, 0x70);
                D_800E98E0[t] = 0x11;
                D_800E9FE0[t].as_u32 = arg1;
                if (D_8018E288_ovl5[arg1] == 0) {
                    D_8018E3C0_ovl5[arg1] = 0;
                    func_800AFBB4(0, omCurrentObj);
                    D_800DF150[omCurrentObj->objId] = NULL;
                    D_800E3750[omCurrentObj->objId] = 0.0f;
                    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
                    D_800E3C90[omCurrentObj->objId] = 65535.0f;
                    curObjSleepForever();
                }
                D_800E3750[omCurrentObj->objId] = 0.0f;
                D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
                D_800E3C90[omCurrentObj->objId] = 65535.0f;
                func_800AFBB4(0, omCurrentObj);
                ohSleep(0x14);
                func_800AFBB4(1, omCurrentObj);
                func_80166F14_ovl5(arg1);
                func_801671E8_ovl5(arg1);
                t = request_track_general(7, 0, 0x70);
                D_800E98E0[t] = 0xC;
                D_800E9FE0[t].as_u32 = arg1;
                D_800E9C60[omCurrentObj->objId] = 0;
                D_800E98E0[omCurrentObj->objId] = 1;
                t = request_track_general(7, 0, 0x70);
                D_800E98E0[t] = 0x10;
                D_800E9FE0[t].as_u32 = arg1;
                break;
            case 3:
                func_800AA018(PAIR792C_(D_801872BC_ovl5, D_801872C0_ovl5, 0));
                id = ovl5_4_idpair_(D_801872BC_ovl5, D_801872C0_ovl5, kind * 2 + 1);
                if (id != 0) {
                    func_800AA018((void *) (uintptr_t) id);
                }
                t = request_track_general(7, 0, 0x70);
                D_800E98E0[t] = 0xB;
                D_800E9AA0[t].as_u32 = func_80165F1C_ovl5(arg1);
                D_800E9FE0[t].as_u32 = arg1;
                for (i = 0; ((f32) i < 30.0f) && (D_800E9C60[omCurrentObj->objId] != 2);) {
                    ohSleep(1);
                    i += 1;
                }
                if (D_800E9C60[omCurrentObj->objId] != 2) {
                    for (i = 0; ((f32) i < 10.0f) && (D_800E9C60[omCurrentObj->objId] != 2);) {
                        ohSleep(1);
                        i += 1;
                    }
                    D_800E9C60[omCurrentObj->objId] = 0;
                    D_800E98E0[omCurrentObj->objId] = 1;
                }
                break;
        }
        ohSleep(1);
    }
#undef PAIR792C_
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016792C_ovl5.s")
#endif

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

/* FACTORY: 1/193, UNCERTAIN -- PORT-seeded, time-boxed. Fixed a real
 * compile bug: the PORT arm's `extern u8 D_8018E3D0_ovl5y[] __asm__(...)`
 * symbol-alias trick is a GCC extension IDO's cc rejects outright;
 * rewritten as a local 0x14-byte struct view of the real (typed
 * elsewhere in this file as Unk14Ent) D_8018E3D0_ovl5 array. Compiles,
 * word count matches (193/193), residue extreme (192/193) -- broad
 * register/frame relabeling from word 0. Worth a fresh m2c pass before
 * feeding to the permuter. */
#ifdef MIPS_TO_C
s32 func_80168B30_ovl5(s32 arg0) {
    /* D_8018E3D0_ovl5: array of 0x14-byte per-mole planner records (typed
     * Unk14Ent elsewhere in this file); accessed here as raw bytes since
     * only byte 0 and byte 8 are read/written. */
    typedef struct { u8 b[0x14]; } MoleRec;
    extern MoleRec D_8018E3D0_ovl5[];
    u8 *rec = D_8018E3D0_ovl5[arg0].b;
    s32 mycell = func_80165F1C_ovl5(arg0);
    s32 lvl = D_8018E3C8_ovl5[arg0];
    s32 i;

    for (i = 0; i < 4; i++) {
        s32 cell = func_80165F1C_ovl5(i);
        u8 roll;

        if ((i == arg0) || (D_8018E3C0_ovl5[i] == 0) || (cell == 0x29A)) {
            continue;
        }
        if (func_80168A04_ovl5(mycell, cell) != 0) {
            if (i == rec[0]) {
                roll = ovl5_4_molepers_(lvl * 0xD + ((D_8018E425_ovl5 == 2) ? 0xB : 1));
            } else {
                roll = ovl5_4_molepers_(lvl * 0xD);
            }
            if (random_soft_s32_range(0x10) < roll) {
                rec[8] = (cell < mycell) ? 8 : 7;
                return 1;
            }
            continue;
        }
        if (func_80168A44_ovl5(mycell, cell) != 0) {
            if (i == rec[0]) {
                roll = ovl5_4_molepers_(lvl * 0xD + ((D_8018E425_ovl5 == 2) ? 0xB : 1));
            } else {
                roll = ovl5_4_molepers_(lvl * 0xD);
            }
            if (random_soft_s32_range(0x10) < roll) {
                rec[8] = (mycell < cell) ? 9 : 0xA;
                return 1;
            }
            continue;
        }
        roll = ovl5_4_molepers_(lvl * 0xD + ((D_8018E425_ovl5 == 2) ? 0xC : 2));
        if (random_soft_s32_range(0x10) < roll) {
            rec[8] = 4;
            return 1;
        }
    }
    rec[8] = 0xB;
    return 0;
}

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

#ifdef NON_MATCHING
/* 114/155: frame 0x60 vs 0x50 (locals block sits 0x10 high). */
typedef struct Unk14Ent {
    u8 unk0;
    u8 filler1[0xF];
    u8 unk10;
    u8 unk11;
    u8 filler12[2];
} Unk14Ent;

extern Unk14Ent D_8018E3D0_ovl5[];

#define B0(x) (*(u8 *) &(x))
#define B1(x) (*((u8 *) &(x) + 1))

void func_80168E84_ovl5(s32 arg0) {
    Unk2Bytes sp4C;
    Unk2Bytes sp48;
    Unk14Ent *p;
    s32 dx;
    s32 dy;
    s32 lim;

    sp4C = func_80168E34_ovl5(func_80165F1C_ovl5(arg0));
    p = &D_8018E3D0_ovl5[arg0];
    if (func_80165F1C_ovl5(p->unk0) == 0x29A) {
        p->unk10 = random_soft_s32_range(4);
        p->unk11 = random_soft_s32_range(4);
        return;
    }
    sp48 = func_80168E34_ovl5(func_80165F1C_ovl5(p->unk0));
    if ((B0(sp48) == B0(sp4C)) && (B1(sp48) == B1(sp4C))) {
        p->unk10 = random_soft_s32_range(4);
        p->unk11 = random_soft_s32_range(4);
        return;
    }
    dx = B0(sp4C) - B0(sp48);
    dy = B1(sp4C) - B1(sp48);
    if (((dx >= 0) ? dx : -dx) < ((dy >= 0) ? dy : -dy)) {
        lim = (D_8018E425_ovl5 == 2) ? 2 : 3;
        if (lim < ((dy >= 0) ? dy : -dy)) {
            if (B0(sp48) < B0(sp4C)) {
                if (B1(sp48) < B1(sp4C)) {
                    p->unk10 = 3;
                    p->unk11 = 1;
                } else {
                    p->unk10 = 3;
                    p->unk11 = 0;
                }
            } else {
                if (B1(sp48) < B1(sp4C)) {
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
            if (B1(sp48) < B1(sp4C)) {
                if (B0(sp48) < B0(sp4C)) {
                    p->unk10 = 1;
                    p->unk11 = 3;
                } else {
                    p->unk10 = 1;
                    p->unk11 = 2;
                }
            } else {
                if (B0(sp48) < B0(sp4C)) {
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

#ifdef PORT
/* CPU route step chooser: prefers the two planned directions (record bytes
 * +0x10/+0x11 from func_80168E84_ovl5), then any other direction, first
 * toward cells whose mole is down, then up-mole cells, each gated on the
 * difficulty roll (row byte 4); the fallback is a uniformly random
 * direction. Stores the choice as the pending action and returns it. */
s32 func_801690F4_ovl5(s32 arg0) {
    extern u8 D_8018E3D0_ovl5z[] __asm__("D_8018E3D0_ovl5");
    u8 *rec = &D_8018E3D0_ovl5z[arg0 * 0x14];
    s32 cell = func_80165F1C_ovl5(arg0);
    s32 lvl = D_8018E3C8_ovl5[arg0];
    s32 d1 = rec[0x10];
    s32 d2 = rec[0x11];
    s32 c1;
    s32 c2;
    s32 i;
    s32 t;

    c1 = func_8016A61C_ovl5(cell, d1);
    if ((c1 != 0x29A) && (func_80165948_ovl5(c1) == 0) &&
        (random_soft_s32_range(0x10) < ovl5_4_molepers_(lvl * 0xD + 4))) {
        rec[8] = d1;
        return d1;
    }
    c2 = func_8016A61C_ovl5(cell, d2);
    if ((c2 != 0x29A) && (func_80165948_ovl5(c2) == 0) &&
        (random_soft_s32_range(0x10) < ovl5_4_molepers_(lvl * 0xD + 4))) {
        rec[8] = d2;
        return d2;
    }
    for (i = 0; i < 3; i++) {
        if ((i != d1) && (i != d2)) {
            t = func_8016A61C_ovl5(cell, i);
            if ((t != 0x29A) && (func_80165948_ovl5(t) == 0) &&
                (random_soft_s32_range(0x10) < ovl5_4_molepers_(lvl * 0xD + 4))) {
                rec[8] = i;
                return i;
            }
        }
    }
    if ((c1 != 0x29A) && (func_80165948_ovl5(c1) == 1) &&
        (random_soft_s32_range(0x10) < ovl5_4_molepers_(lvl * 0xD + 4))) {
        rec[8] = d1;
        return d1;
    }
    if ((c2 != 0x29A) && (func_80165948_ovl5(c2) == 1) &&
        (random_soft_s32_range(0x10) < ovl5_4_molepers_(lvl * 0xD + 4))) {
        rec[8] = d2;
        return d2;
    }
    for (i = 0; i < 3; i++) {
        if ((i != d1) && (i != d2)) {
            t = func_8016A61C_ovl5(cell, i);
            if ((t != 0x29A) && (func_80165948_ovl5(t) == 1) &&
                (random_soft_s32_range(0x10) < ovl5_4_molepers_(lvl * 0xD + 4))) {
                rec[8] = i;
                return i;
            }
        }
    }
    t = random_soft_s32_range(4);
    rec[8] = t;
    return t;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_801690F4_ovl5.s")
#endif

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

#ifdef PORT
/* CPU target picker: lists the other living players and either returns a
 * uniformly random one, or -- on a difficulty roll (row byte 10), when a
 * human is still alive -- a random human player. (The ROM's nearest/most-
 * stock/least-stock modes 0..2 are present in its jump table but
 * unreachable: the selector only ever produces 3 or 4.) */
u8 func_8016965C_ovl5(s32 arg0) {
    s32 cand[4];
    s32 hum[4];
    s32 n = 0;
    s32 m = 0;
    s32 i;

    for (i = 0; i < 4; i++) {
        if ((D_8018E3C0_ovl5[i] != 0) && (i != arg0)) {
            cand[n] = i;
            n += 1;
        }
    }
    if ((random_soft_s32_range(0x10) < ovl5_4_molepers_(D_8018E3C8_ovl5[arg0] * 0xD + 10)) &&
        (func_801695C8_ovl5() != 0)) {
        for (i = 0; i < n; i++) {
            if (D_8018E3C8_ovl5[cand[i]] == 0) {
                hum[m] = cand[i];
                m += 1;
            }
        }
        if (m == 0) {
            return cand[0];
        }
        return hum[random_soft_s32_range(m)];
    }
    return cand[random_soft_s32_range(n)];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016965C_ovl5.s")
#endif

#ifdef PORT
/* Whack-a-neighbour reaction (rolled each odd frame the CPU stands on an
 * up-mole): scans the four adjacent cells for a mole that is down (state 0)
 * -- or, failing that, up (state 1) -- picks the nearest, computes the goal
 * coordinate on that axis and arms the walk action toward it. */
s32 func_80169D90_ovl5(s32 arg0, s32 arg1) {
    extern u8 D_8018E3D0_ovl5x[] __asm__("D_8018E3D0_ovl5");
    f32 sqrtf(f32);
    Vector me;
    Vector cp;
    s32 cells[4];
    s32 states[4];
    s32 list[4];
    f32 dist[4];
    s32 n;
    s32 best;
    s32 dir;
    f32 goal;
    s32 i;

    func_801659DC_ovl5(&me, arg0);
    for (i = 0; i < 4; i++) {
        cells[i] = func_8016A61C_ovl5(arg1, i);
        if (cells[i] != 0x29A) {
            states[i] = func_80165948_ovl5(cells[i]);
        } else {
            states[i] = 2;
        }
    }
    n = 0;
    for (i = 0; i < 4; i++) {
        if (states[i] == 0) {
            list[n] = i;
            n += 1;
        }
    }
    if (n == 0) {
        for (i = 0; i < 4; i++) {
            if (states[i] == 1) {
                list[n] = i;
                n += 1;
            }
        }
        if (n == 0) {
            return 0;
        }
    }
    for (i = 0; i < n; i++) {
        f32 dx;
        f32 dz;

        func_8016596C_ovl5(&cp, cells[list[i]]);
        dx = cp.x - me.x;
        dz = cp.z - me.z;
        dist[i] = sqrtf((dx * dx) + (dz * dz));
    }
    best = 0;
    for (i = 1; i < n; i++) {
        if (dist[i] < dist[best]) {
            best = i;
        }
    }
    dir = list[best];
    goal = func_80168804_ovl5((GObj *) omCurrentObj, arg1, dir);
    if (goal == 99999.0f) {
        return 0;
    }
    D_8018E3D0_ovl5x[arg0 * 0x14 + 8] = dir;
    *(f32 *) &D_8018E3D0_ovl5x[arg0 * 0x14 + 0xC] = goal;
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_80169D90_ovl5.s")
#endif

#ifdef PORT
/* Per-tick CPU brain for mole player arg0 (record D_8018E3D0_ovl5[arg0],
 * 0x14 bytes: +0 target, +4 wait timer, +8 action, +0xC goal coord, +0x10/11
 * planned dirs): ticks the wait timer, rolls the whack chance from the
 * difficulty rows, and steps the action machine (0-3 walk dir, 4 arrived,
 * 6 whack, 7-10 turn-then-walk, 11 plan route, 12 pick goal coordinate).
 *
 * The ROM gates the walk cases on the garbage $v0 func_80167374_ovl5 leaves
 * behind, which is 1 exactly when the step was reverted because it bumped
 * another racer; the PORT recovers that signal by comparing the position
 * before and after the call (a kept step always moves by +-25). */
void func_8016A2B8_ovl5(s32 arg0) {
    extern u8 D_8018E3D0_ovl5x[] __asm__("D_8018E3D0_ovl5");
    u8 *rec = &D_8018E3D0_ovl5x[arg0 * 0x14];
    s32 cell;
    s32 lvl = D_8018E3C8_ovl5[arg0];
    s32 dir;
    s32 t;

    cell = func_80165F1C_ovl5(arg0);
    if (*(s32 *) (rec + 4) != 0) {
        *(s32 *) (rec + 4) -= 1;
    } else {
        rec[0] = func_8016965C_ovl5(arg0);
        if (random_soft_s32_range(0x10) < ovl5_4_molepers_(lvl * 0xD + 9)) {
            rec[8] = 5;
            *(s32 *) (rec + 4) = random_soft_s32_range(0xA);
        } else {
            rec[8] = 6;
        }
    }
    if (((D_8018E264_ovl5 % 2) != 0) && (func_80165948_ovl5(cell) == 1)) {
        if (random_soft_s32_range(0x10) < ovl5_4_molepers_(lvl * 0xD + 5)) {
            func_80169D90_ovl5(arg0, cell);
        }
    }
    while (1) {
        switch (rec[8]) {
            case 0:
            case 1:
            case 2:
            case 3: {
                s32 objId;
                f32 ox;
                f32 oz;
                s32 blocked;

                dir = rec[8];
                objId = D_8018E268_ovl5[arg0];
                ox = gEntitiesNextPosXArray[objId];
                oz = gEntitiesNextPosZArray[objId];
                func_80167374_ovl5(arg0, dir);
                blocked = (gEntitiesNextPosXArray[objId] == ox) && (gEntitiesNextPosZArray[objId] == oz);
                if (blocked) {
                    if (func_80168928_ovl5(arg0, dir, *(f32 *) (rec + 0xC)) != 0) {
                        *(s32 *) (rec + 4) = 0;
                        return;
                    }
                    *(s32 *) (rec + 4) = 1;
                    return;
                }
                *(s32 *) (rec + 4) = 0;
                return;
            }
            case 4:
                D_800E9C60[omCurrentObj->objId] = 1;
                rec[8] = 0xB;
                *(s32 *) (rec + 4) = 1;
                return;
            case 6:
                func_80168B30_ovl5(arg0);
                *(s32 *) (rec + 4) = 1;
                continue;
            case 7:
                if (func_80165AD0_ovl5(arg0) == 0) {
                    rec[8] = 4;
                } else {
                    func_80167374_ovl5(arg0, 0);
                }
                *(s32 *) (rec + 4) = 1;
                return;
            case 8:
                if (func_80165AD0_ovl5(arg0) == 1) {
                    rec[8] = 4;
                } else {
                    func_80167374_ovl5(arg0, 1);
                }
                *(s32 *) (rec + 4) = 1;
                return;
            case 9:
                if (func_80165AD0_ovl5(arg0) == 2) {
                    rec[8] = 4;
                } else {
                    func_80167374_ovl5(arg0, 2);
                }
                *(s32 *) (rec + 4) = 1;
                return;
            case 10:
                if (func_80165AD0_ovl5(arg0) == 3) {
                    rec[8] = 4;
                } else {
                    func_80167374_ovl5(arg0, 3);
                }
                *(s32 *) (rec + 4) = 1;
                return;
            case 11:
                func_80168E84_ovl5(arg0);
                rec[8] = 0xC;
                *(s32 *) (rec + 4) = 1;
                /* fallthrough into the 0xC dispatch */
            case 12:
                t = func_801690F4_ovl5(arg0);
                *(f32 *) (rec + 0xC) = func_80168804_ovl5((GObj *) omCurrentObj, cell, t);
                if (*(f32 *) (rec + 0xC) == 99999.0f) {
                    *(s32 *) (rec + 4) = 0;
                    return;
                }
                *(s32 *) (rec + 4) = 1;
                continue;
            default:
                return;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016A2B8_ovl5.s")
#endif

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

#ifdef PORT
/* One leg of the field-shrink sweeper (helper for func_8016A774_ovl5):
 * teleports the sweeper to grid cell `cell`, aims it (axis selects
 * D_800E3050/x vs D_800E33D0/z, vel is +-140), whacks every mole cell it
 * crosses (state 2 cells get the flat-mole proc, others the bonk proc),
 * and returns when the sweeper leaves the grid; then zeroes the motion. */
static void ovl5_4_sweep_leg_(s32 cell, s32 axis, f32 vel) {
    Vector v;
    s32 cur;
    s32 t;

    func_800B2340(&v, (struct DObj *) (uintptr_t) func_801658C4_ovl5(cell), D_8018E2A0_ovl5[cell]);
    gEntitiesNextPosXArray[omCurrentObj->objId] = v.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = 0.0f;
    gEntitiesNextPosZArray[omCurrentObj->objId] = v.z;
    if (axis == 0) {
        D_800E3050[omCurrentObj->objId] = vel;
    } else {
        D_800E33D0[omCurrentObj->objId] = vel;
    }
    t = D_8018E2A0_ovl5[cell];
    if (D_800E98E0[t] == 2) {
        assign_new_process_entry(gEntityGObjProcessArray[t], func_801668E0_ovl5);
    } else {
        D_800E98E0[t] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[t], func_8016689C_ovl5);
        play_sound(0x10A);
    }
    cur = cell;
    while (1) {
        s32 hit;

        v.x = gEntitiesNextPosXArray[omCurrentObj->objId];
        v.y = gEntitiesNextPosYArray[omCurrentObj->objId];
        v.z = gEntitiesNextPosZArray[omCurrentObj->objId];
        hit = func_80166054_ovl5(v);
        if (hit == 0x29A) {
            break;
        }
        if (hit != cur) {
            t = D_8018E2A0_ovl5[hit];
            if (D_800E98E0[t] == 2) {
                assign_new_process_entry(gEntityGObjProcessArray[t], func_801668E0_ovl5);
            } else {
                D_800E98E0[t] = 1;
                assign_new_process_entry(gEntityGObjProcessArray[t], func_8016689C_ovl5);
                play_sound(0x10A);
            }
            cur = hit;
        }
        ohSleep(1);
    }
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3590[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E33D0[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3210[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3050[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = 65535.0f;
    D_800E3C90[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    D_800E3AD0[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
}

/* Field-shrink sweeper thread (arg1 = 0 first shrink to the 6x6 ring,
 * arg1 = 1 second shrink to 4x4, gated 135 seconds after the first):
 * sweeps the four sides of the outgoing ring, then flattens every cell of
 * that ring (state 2), buries CPU corpses, and marks the new field size in
 * D_8018E424/D_8018E425 before killing its own track. */
void func_8016A774_ovl5(GObj *arg0, s32 arg1) {
    extern s32 D_8018E43C_ovl5;
    extern s32 D_8018E260_ovl5;
    s32 i;
    s32 a;
    s32 b;

    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    if (arg1 == 0) {
        D_8018E43C_ovl5 = D_8018E264_ovl5;
    }
    if (arg1 == 1) {
        while ((f32) D_8018E264_ovl5 < ((f32) D_8018E43C_ovl5 + 135.0f)) {
            ohSleep(1);
        }
    }
    if (D_8018E260_ovl5 != 0) {
        func_800B1900((u16) omCurrentObj->objId);
    }
    ovl5_4_sweep_leg_((arg1 == 0) ? 0 : 9, 0, 140.0f);
    ovl5_4_sweep_leg_((arg1 == 0) ? 0xF : 0x16, 1, 140.0f);
    ovl5_4_sweep_leg_((arg1 == 0) ? 0x3E : 0x35, 0, -140.0f);
    ovl5_4_sweep_leg_((arg1 == 0) ? 0x30 : 0x29, 1, -140.0f);
    ohSleep(0xB);
    play_sound(0x108);
    for (i = 0; i < 4; i++) {
        if ((D_8018E3C8_ovl5[i] == 0) && (D_8018E288_ovl5[i] != 0)) {
            func_800BB4E4(i, 6, 0x10);
        }
    }
    a = (arg1 == 0) ? 0 : 9;
    b = (arg1 == 0) ? 7 : 0xE;
    for (i = a; i <= b; i += 1) {
        D_800E98E0[D_8018E2A0_ovl5[i]] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[D_8018E2A0_ovl5[i]], func_801668E0_ovl5);
    }
    a = (arg1 == 0) ? 0xF : 0x16;
    b = (arg1 == 0) ? 0x3F : 0x36;
    for (i = a; i <= b; i += 8) {
        D_800E98E0[D_8018E2A0_ovl5[i]] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[D_8018E2A0_ovl5[i]], func_801668E0_ovl5);
    }
    a = (arg1 == 0) ? 0x3E : 0x35;
    b = (arg1 == 0) ? 0x38 : 0x31;
    for (i = a; i >= b; i -= 1) {
        D_800E98E0[D_8018E2A0_ovl5[i]] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[D_8018E2A0_ovl5[i]], func_801668E0_ovl5);
    }
    a = (arg1 == 0) ? 0x30 : 0x29;
    b = (arg1 == 0) ? 8 : 0x11;
    for (i = a; i >= b; i -= 8) {
        D_800E98E0[D_8018E2A0_ovl5[i]] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[D_8018E2A0_ovl5[i]], func_801668E0_ovl5);
    }
    if (arg1 == 0) {
        D_8018E424_ovl5 = 2;
    } else {
        D_8018E425_ovl5 = 2;
    }
    func_800B1900((u16) omCurrentObj->objId);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016A774_ovl5.s")
#endif

#ifdef PORT
/* Rolling shockwave spawned when a mole is bonked hard: hops to the next
 * grid cell in direction arg2 (0/1 along z, 2/3 along x) from cell arg1,
 * skips off the board edge, then rides the grid retiming every mole it
 * passes to the "popped" animation (state 1 + anim frame for difficulty
 * arg3); each racer collision speeds it up and can bounce it back the way
 * it came, and when it leaves the grid it parks and expires. */
void func_8016B754_ovl5(GObj *arg0, s32 arg1, s32 arg2, s32 arg3) {
    Vector v;
    s32 dir = arg2;
    s32 step;
    s32 cell;
    s32 cur;
    s32 last;
    s32 bounces = 0;
    s32 i;
    s32 t;

    play_sound(0x107);
    if (((s32 (*)(s32, s32)) func_80165B84_ovl5)(arg1, dir) != 0) {
        func_800B1900((u16) omCurrentObj->objId);
    }
    switch (dir) {
        case 0:
            step = 8;
            break;
        case 1:
            step = -8;
            break;
        case 2:
            step = 1;
            break;
        case 3:
            step = -1;
            break;
        default:
            step = 1;
            break;
    }
    cell = arg1 + step;
    if (func_80166D48_ovl5(cell) != 0) {
        func_800B1900((u16) omCurrentObj->objId);
    }
    func_800A9864((void *) 0x3009E, 0x1869F, 0x10);
    func_800A9F98(0x3008D, (f32) func_8016A69C_ovl5(arg3));
    animResetTextureAnimation(arg0);
    func_800AA018((void *) 0x3008E);
    func_800B2340(&v, (struct DObj *) (uintptr_t) func_801658C4_ovl5(cell), D_8018E2A0_ovl5[cell]);
    gEntitiesNextPosXArray[omCurrentObj->objId] = v.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = 0.0f;
    gEntitiesNextPosZArray[omCurrentObj->objId] = v.z;
    switch (dir) {
        case 0:
            gEntitiesAngleYArray[omCurrentObj->objId] = 0.0f;
            D_800E33D0[omCurrentObj->objId] = 120.0f;
            break;
        case 1:
            gEntitiesAngleYArray[omCurrentObj->objId] = 3.141592741f;
            D_800E33D0[omCurrentObj->objId] = -120.0f;
            break;
        case 3:
            gEntitiesAngleYArray[omCurrentObj->objId] = 4.712388992f;
            D_800E3050[omCurrentObj->objId] = -120.0f;
            break;
        case 2:
            gEntitiesAngleYArray[omCurrentObj->objId] = 1.570796371f;
            D_800E3050[omCurrentObj->objId] = 120.0f;
            break;
    }
    cur = cell;
    v.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    v.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    v.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    t = func_80166054_ovl5(v);
    if (t == 0x29A) {
        func_800B1900((u16) omCurrentObj->objId);
    }
    last = t;
    D_800E98E0[D_8018E2A0_ovl5[t]] = 1;
    D_800E9AA0[D_8018E2A0_ovl5[t]].as_u32 = arg3;
    while (1) {
        s32 hit;

        v.x = gEntitiesNextPosXArray[omCurrentObj->objId];
        v.y = gEntitiesNextPosYArray[omCurrentObj->objId];
        v.z = gEntitiesNextPosZArray[omCurrentObj->objId];
        hit = func_80166054_ovl5(v);
        if (hit == 0x29A) {
            break;
        }
        if (hit != last) {
            if (func_8016A6B0_ovl5(hit) != 0) {
                f32 mul;
                s32 c;

                bounces += 1;
                mul = (bounces >= 3) ? 2.0f : (((f32) bounces * 0.5f) + 1.0f);
                for (c = cur; c != (last + step); c += step) {
                    D_800E98E0[D_8018E2A0_ovl5[c]] = 0;
                }
                switch (dir) {
                    case 1:
                        dir = 0;
                        gEntitiesAngleYArray[omCurrentObj->objId] = 0.0f;
                        step = 8;
                        D_800E33D0[omCurrentObj->objId] = 120.0f * mul;
                        break;
                    case 0:
                        gEntitiesAngleYArray[omCurrentObj->objId] = 3.141592741f;
                        dir = 1;
                        step = -8;
                        D_800E33D0[omCurrentObj->objId] = -120.0f * mul;
                        break;
                    case 2:
                        gEntitiesAngleYArray[omCurrentObj->objId] = 4.712388992f;
                        dir = 3;
                        step = -1;
                        D_800E3050[omCurrentObj->objId] = -120.0f * mul;
                        break;
                    case 3:
                        gEntitiesAngleYArray[omCurrentObj->objId] = 1.570796371f;
                        dir = 2;
                        step = 1;
                        D_800E3050[omCurrentObj->objId] = 120.0f * mul;
                        break;
                }
                last = hit;
                cur = hit;
            } else {
                D_800E98E0[D_8018E2A0_ovl5[hit]] = 1;
                D_800E9AA0[D_8018E2A0_ovl5[hit]].as_u32 = arg3;
                last = hit;
            }
        }
        ohSleep(1);
    }
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    func_800AFBB4(0, omCurrentObj);
    for (i = cur; i != (last + step); i += step) {
        t = D_8018E2A0_ovl5[i];
        if (D_800DE350[t]->animTimer != 0.0f) {
            D_800E98E0[t] = 2;
        }
        {
            s32 w;

            for (w = 0; w < 5; w++) {
                ohSleep(1);
            }
        }
    }
    func_800B1900((u16) omCurrentObj->objId);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016B754_ovl5.s")
#endif

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

#ifdef PORT
/* Popped-mole timer companion for player arg1: shows the mole-with-flag
 * model at animation frame arg1, blink-counts while the round intro flag
 * D_8018E420_ovl5 is up, then blinks for up to 59 frames or until the
 * player's racer falls (state 2), killing its own track when done. */
void func_8016C508_ovl5(GObj *arg0, s32 arg1) {
    extern u32 D_8018737C_ovl5[];
    extern u32 D_80187380_ovl5[];
    void func_8016C8C0_ovl5(GObj *);
    s32 i;
    s32 n;

    D_800E98E0[omCurrentObj->objId] = arg1;
    D_800E9AA0[omCurrentObj->objId].as_u32 = 0;
    D_800DF150[omCurrentObj->objId] = func_8016C8C0_ovl5;
    func_800A9864((void *) (uintptr_t) D_8018737C_ovl5[0], 0x1869F, 0x10);
    func_800A9F98((s32) D_80187380_ovl5[0], (f32) arg1);
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    if (D_8018E420_ovl5 != 0) {
        i = 0;
        while (D_8018E420_ovl5 != 0) {
            i += 1;
            if ((i % 5) != 0) {
                if (((i / 5) % 2) != 0) {
                    func_800AFBB4(0, omCurrentObj);
                } else {
                    func_800AFBB4(1, omCurrentObj);
                    if (D_8018E3C8_ovl5[arg1] != 0) {
                        if (((i / 5) % 4) != 0) {
                            func_800A9F98((s32) D_80187380_ovl5[0], (f32) arg1);
                        } else {
                            func_800A9F98((s32) D_80187380_ovl5[0], 4.0f);
                        }
                    }
                }
            }
            ohSleep(1);
        }
        func_800B1900((u16) omCurrentObj->objId);
    }
    i = 0;
    n = 0x3B;
    if (D_800E9C60[D_8018E268_ovl5[arg1]] != 2) {
        do {
            i += 1;
            if ((i % 5) != 0) {
                if (((i / 5) % 2) != 0) {
                    func_800AFBB4(0, omCurrentObj);
                } else {
                    func_800AFBB4(1, omCurrentObj);
                    if (D_8018E3C8_ovl5[arg1] != 0) {
                        if (((i / 5) % 4) != 0) {
                            func_800A9F98((s32) D_80187380_ovl5[0], (f32) arg1);
                        } else {
                            func_800A9F98((s32) D_80187380_ovl5[0], 4.0f);
                        }
                    }
                }
            }
            ohSleep(1);
            n -= 1;
        } while ((n != 0) && (D_800E9C60[D_8018E268_ovl5[arg1]] != 2));
    }
    func_800B1900((u16) omCurrentObj->objId);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016C508_ovl5.s")
#endif

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

#ifdef PORT
/* Player name-tag HUD thread for mole player arg1: spawns the tag frame at
 * D_80186C88_ovl5[arg1] tinted by the difficulty row (colors are stored as
 * f32 in D_80186CA8/D_80186CF0) plus the name sprite from D_80186DB8, then
 * alternates the tint while the player's racer is fallen (state 2), and
 * greys the tag out for good when the player runs out of stock. */
void func_8016CFB0_ovl5(GObj *arg0, s32 arg1) {
    extern struct UnkStruct8015C740 D_80186C68_ovl5;
    extern f32 D_80186C88x_ovl5[] __asm__("D_80186C88_ovl5");
    extern f32 D_80186CA8_ovl5[];
    extern f32 D_80186CF0_ovl5[];
    extern void *D_80186DB8_ovl5[];
    SPObj *tag;
    s32 lvl;
    s32 i;
    s32 j;
    s32 k;

#define TAG_FLASH_() \
    do { \
        if ((j % 2) != 0) { \
            tag->primColorRed = 0xFF; \
            tag->primColorGreen = 0xFF; \
            tag->primColorBlue = 0xFF; \
            tag->envColorRed = (u8) (u32) D_80186CA8_ovl5[lvl * 3 + 0]; \
            tag->envColorGreen = (u8) (u32) D_80186CA8_ovl5[lvl * 3 + 1]; \
            tag->envColorBlue = (u8) (u32) D_80186CA8_ovl5[lvl * 3 + 2]; \
        } else { \
            tag->primColorRed = (u8) (u32) D_80186CA8_ovl5[lvl * 3 + 0]; \
            tag->primColorGreen = (u8) (u32) D_80186CA8_ovl5[lvl * 3 + 1]; \
            tag->primColorBlue = (u8) (u32) D_80186CA8_ovl5[lvl * 3 + 2]; \
            tag->envColorRed = (u8) (u32) D_80186CF0_ovl5[lvl * 3 + 0]; \
            tag->envColorGreen = (u8) (u32) D_80186CF0_ovl5[lvl * 3 + 1]; \
            tag->envColorBlue = (u8) (u32) D_80186CF0_ovl5[lvl * 3 + 2]; \
        } \
    } while (0)
    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_800DDA90[omCurrentObj->objId] = 0x24;
    omLinkGObjDL(arg0, (void (*)(GObj *)) func_800AD1A0, 0xA, 0x80000000, 0xA);
    tag = func_8015C740_ovl5(arg0, &D_80186C68_ovl5);
    tag->xOffset = D_80186C88x_ovl5[arg1 * 2];
    tag->yOffset = D_80186C88x_ovl5[arg1 * 2 + 1];
    lvl = func_8016A69C_ovl5(arg1);
    tag->primColorRed = 0xFF;
    tag->primColorGreen = 0xFF;
    tag->primColorBlue = 0xFF;
    tag->envColorRed = (u8) (u32) D_80186CA8_ovl5[lvl * 3 + 0];
    tag->envColorGreen = (u8) (u32) D_80186CA8_ovl5[lvl * 3 + 1];
    tag->envColorBlue = (u8) (u32) D_80186CA8_ovl5[lvl * 3 + 2];
    func_8015C740_ovl5(arg0, D_80186DB8_ovl5[arg1]);
    while (1) {
        if (D_8018E288_ovl5[arg1] == 0) {
            j = 0;
            for (i = 0; i != 0xA; i++) {
                TAG_FLASH_();
                ohSleep(4);
                j += 1;
            }
            tag->primColorRed = 0xC8;
            tag->primColorGreen = 0xC8;
            tag->primColorBlue = 0xC8;
            tag->envColorRed = (u8) (u32) D_80186CA8_ovl5[15];
            tag->envColorGreen = (u8) (u32) D_80186CA8_ovl5[16];
            tag->envColorBlue = (u8) (u32) D_80186CA8_ovl5[17];
            curObjSleepForever();
        }
        if (D_800E9C60[D_8018E268_ovl5[arg1]] == 2) {
            j = 0;
            do {
                TAG_FLASH_();
                ohSleep(4);
                j += 1;
            } while (D_800E9C60[D_8018E268_ovl5[arg1]] == 2);
            k = 0;
            do {
                TAG_FLASH_();
                ohSleep(4);
                k += 1;
                j += 1;
            } while ((D_800E9C60[D_8018E268_ovl5[arg1]] != 2) && (k != 5));
            tag->primColorRed = 0xFF;
            tag->primColorGreen = 0xFF;
            tag->primColorBlue = 0xFF;
            tag->envColorRed = (u8) (u32) D_80186CA8_ovl5[lvl * 3 + 0];
            tag->envColorGreen = (u8) (u32) D_80186CA8_ovl5[lvl * 3 + 1];
            tag->envColorBlue = (u8) (u32) D_80186CA8_ovl5[lvl * 3 + 2];
        }
        ohSleep(1);
    }
#undef TAG_FLASH_
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016CFB0_ovl5.s")
#endif

void func_8016E650_ovl5(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
#ifdef PORT
    /* D_80186A0C is ten N64 pointer words; the PC data generator emits the
       region as part of a native void*[] (8-byte slots), so the word-struct
       copy reads pointer halves. Index the live table instead. */
    void **sp20 = (void **) &D_80186A0C_ovl5;
#else
    Unk28Words sp20 = D_80186A0C_ovl5;
#endif
    SPObj *spobj;

#ifdef PORT
    spobj = (SPObj *) func_8015C740_ovl5(arg0, sp20[arg1]);
#else
    spobj = (SPObj *) func_8015C740_ovl5(arg0, sp20.unk0[arg1]);
#endif
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

typedef union Unk12Colors {
    u16 unk0[6];
} Unk12Colors;

typedef union Unk12Defs {
    struct UnkStruct8015C740 *unk0[3];
} Unk12Defs;

extern Unk12Colors D_80186A34_ovl5;
extern Unk12Colors D_80186A40_ovl5;
extern Unk12Colors D_80186A4C_ovl5;
extern Unk12Colors D_80186A58_ovl5;
extern Unk12Colors D_80186A64_ovl5;
extern Unk12Defs D_80186A70_ovl5;
extern struct UnkStruct8015C740 D_8018713C_ovl5;
extern struct UnkStruct8015C740 D_8018715C_ovl5;
extern struct UnkStruct8015C740 D_80186BD8_ovl5;
extern f32 D_8018717C_ovl5[2];
extern s32 D_8018E420_ovl5;
void func_800ACB7C(SPObj *);
void func_8015C804_ovl5(SPObj *, f32, f32);
void func_8016EF44_ovl5(u8 *, u16 *);
void func_80165610_ovl5(void);

void func_8016EAFC_ovl5(GObj *arg0) {
    struct UnkStruct8015C740 **p;
    SPObj *spobj;
    f32 scale;
    f32 step;
    Unk12Colors spA4 = D_80186A34_ovl5;
    Unk12Colors sp98 = D_80186A40_ovl5;
    Unk12Colors sp8C = D_80186A4C_ovl5;
    Unk12Colors sp80 = D_80186A58_ovl5;
    Unk12Colors sp74 = D_80186A64_ovl5;
    Unk12Defs sp68 = D_80186A70_ovl5;
    f32 last;

    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, func_800AD1A0, 0xA, 0x80000000, 0xA);
    func_8015C740_ovl5(arg0, &D_8018713C_ovl5);
    func_8015C740_ovl5(arg0, &D_8018715C_ovl5);
    func_8016E8D0_ovl5((s32) arg0, func_8016EA54_ovl5(0x1E), D_8018717C_ovl5[0], D_8018717C_ovl5[1]);
    ohSleep(0xF);
    for (p = &sp68.unk0[2]; p >= &sp68.unk0[0]; p--) {
        spobj = (SPObj *) func_8015C740_ovl5(arg0, *p);
        scale = 1.0f;
        play_sound(0x111);
        while (scale < 1.5f) {
            spobj->yScale = scale;
            spobj->xScale = scale;
            func_8015C804_ovl5(spobj, (*p)->xOffset + (spobj->width / 2), (*p)->yOffset + (spobj->height / 2));
            ohSleep(1);
            scale += 0.25f;
        }
        last = spobj->xScale;
        if (1.0f < scale) {
            step = (last - 1.0f) * 0.5f;
            do {
                spobj->yScale = scale;
                spobj->xScale = scale;
                func_8015C804_ovl5(spobj, (*p)->xOffset + (spobj->width / 2), (*p)->yOffset + (spobj->height / 2));
                ohSleep(1);
                scale -= step;
            } while (1.0f < scale);
        }
        spobj->yScale = 1.0f;
        spobj->xScale = 1.0f;
        spobj->xOffset = (*p)->xOffset;
        spobj->yOffset = (*p)->yOffset;
        ohSleep(0x10);
        spobj->renderFlags |= 8;
        ohSleep(0xA);
        spobj->renderFlags &= ~8;
        func_800ACB7C(spobj);
    }
    spobj = (SPObj *) func_8015C740_ovl5(arg0, &D_80186BD8_ovl5);
    play_sound(0xB9);
    func_80165610_ovl5();
    D_8018E420_ovl5 = 0;
    func_8016EF44_ovl5((u8 *) spobj, spA4.unk0);
    ohSleep(2);
    func_8016EF44_ovl5((u8 *) spobj, sp98.unk0);
    ohSleep(2);
    func_8016EF44_ovl5((u8 *) spobj, sp8C.unk0);
    ohSleep(2);
    func_8016EF44_ovl5((u8 *) spobj, sp80.unk0);
    ohSleep(2);
    func_8016EF44_ovl5((u8 *) spobj, sp74.unk0);
    func_800ACBDC(arg0);
    func_800B1900(omCurrentObj->objId);
}

void func_8016EF44_ovl5(u8 *arg0, u16 *arg1) {
    arg0[0x14] = arg1[0];
    arg0[0x15] = arg1[1];
    arg0[0x16] = arg1[2];
    arg0[0x18] = arg1[3];
    arg0[0x19] = arg1[4];
    arg0[0x1A] = arg1[5];
}

#ifdef NON_MATCHING
/* FACTORY: 133/222, residue. Instruction count and structure are exact; the
   whole callee-saved bank is permuted and one value spills: the ROM keeps the
   last SPObj* in $s4 and &D_80187094_ovl5 in $s5, and materialises
   &D_800D6B68 and the constant 3 inline via $at, so its frame is 0x48. IDO
   hoists both of those into callee-saved regs instead and spills the SPObj*,
   giving a 0x50 frame. Swept with no effect: a separate local for the first
   func_8015C740_ovl5 result, declaration order (counter first vs last), and
   --/++ instead of -1/+1 on D_8018E440_ovl5. Whole-function register
   permutation -- permuter territory. Siblings func_80164A34_ovl5 (ovl5_2) and
   func_80176170_ovl5 (ovl5_5) are near-clones of this shape. */
extern u8 D_8018E440_ovl5;
extern f32 D_8018D770_ovl5;
extern f32 D_80187094_ovl5[][2];
extern struct UnkStruct8015C740 D_80186F94_ovl5;
extern struct UnkStruct8015C740 D_80186FB4_ovl5;
extern struct UnkStruct8015C740 D_80186FD4_ovl5;
extern struct UnkStruct8015C740 D_80186FF4_ovl5;
extern struct UnkStruct8015C740 D_80187014_ovl5;
extern struct UnkStruct8015C740 D_80187034_ovl5;
extern struct UnkStruct8015C740 D_80187054_ovl5;
extern struct UnkStruct8015C740 D_80187074_ovl5;
void func_8016F730_ovl5(void);

void func_8016EF78_ovl5(GObj *arg0) {
    s32 counter;
    SPObj *sp;
    SPObj *tmp;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_8018E440_ovl5 = 0;
    omLinkGObjDL(arg0, &func_800AD1A0, 0xA, 0x80000000, 0xA);
    func_800BB3F0();
    tmp = func_8015C740_ovl5(arg0, &D_80187014_ovl5);
    tmp->xScale = 52.0f;
    tmp->yScale = D_8018D770_ovl5;
    func_8015C740_ovl5(arg0, &D_80186F94_ovl5);
    func_8015C740_ovl5(arg0, &D_80186FB4_ovl5);
    func_8015C740_ovl5(arg0, &D_80186FD4_ovl5);
    func_8015C740_ovl5(arg0, &D_80186FF4_ovl5);
    func_8015C740_ovl5(arg0, &D_80187034_ovl5);
    func_8015C740_ovl5(arg0, &D_80187054_ovl5);
    sp = func_8015C740_ovl5(arg0, &D_80187074_ovl5);
    sp->xOffset = D_80187094_ovl5[D_8018E440_ovl5][0];
    sp->yOffset = D_80187094_ovl5[D_8018E440_ovl5][1];
    ohSleep(6);
    counter = 5;
    while (1) {
        if (counter != 0) {
            counter--;
            if ((gPlayerControllers[0].buttonHeld & 0xF00) == 0) {
                counter = 0;
            }
        } else {
            if (gPlayerControllers[0].buttonPressed & 0x9000) {
                ((s32 *) D_800D7178)[0x1E] = 1;
                switch (D_8018E440_ovl5) {
                    case 0:
                        ((s32 *) D_800D7178)[0x1E] = 2;
                        play_sound(0x113);
                        func_800ACBDC(arg0);
                        func_800B1900(omCurrentObj->objId);
                        break;
                    case 1:
                        play_sound(0xED);
                        gGameState = 0x1E;
                        break;
                    case 2:
                        play_sound(0xED);
                        D_800D6B68 = gGameState;
                        gGameState = 0x1B;
                        break;
                    case 3:
                        play_sound(0x2B);
                        D_800D6B68 = gGameState;
                        gGameState = 0xA;
                        break;
                }
                func_8016F730_ovl5();
                curObjSleepForever();
            } else if (gPlayerControllers[0].buttonHeld & 0x800) {
                play_sound(0x113);
                counter = 5;
                if (D_8018E440_ovl5 == 0) {
                    D_8018E440_ovl5 = 3;
                } else {
                    D_8018E440_ovl5--;
                }
            } else if (gPlayerControllers[0].buttonHeld & 0x400) {
                play_sound(0x113);
                counter = 5;
                if (D_8018E440_ovl5 == 3) {
                    D_8018E440_ovl5 = 0;
                } else {
                    D_8018E440_ovl5++;
                }
            }
            sp->xOffset = D_80187094_ovl5[D_8018E440_ovl5][0];
            sp->yOffset = D_80187094_ovl5[D_8018E440_ovl5][1];
        }
        ohSleep(1);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016EF78_ovl5.s")
#endif


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

#ifdef PORT
/* Round-clock HUD thread: redraws min / sec / frame digit sprites from
 * D_8018E264_ovl5 every frame at the offsets in D_80187114..D_80187134,
 * relative to the clock panel descriptor D_801870B4_ovl5 (capped at
 * 9:59.99 once the count passes 0x464E). */
void func_8016F40C_ovl5(GObj *arg0) {
    extern f32 D_80187114_ovl5[];
    extern f32 D_8018711C_ovl5[];
    extern f32 D_80187124_ovl5[];
    extern f32 D_8018712C_ovl5[];
    extern f32 D_80187134_ovl5[];
    s32 frames;
    s32 secs;
    s32 mins;

    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_800DEF90[omCurrentObj->objId] = NULL;
    omLinkGObjDL(arg0, (void (*)(GObj *)) func_800AD1A0, 0xA, 0x80000000, 0xA);
    while (1) {
        func_800ACBDC(arg0);
        if (D_8018E264_ovl5 >= 0x464F) {
            frames = 0x63;
            secs = 0x3B;
            mins = 9;
        } else {
            frames = func_8016F3A8_ovl5(D_8018E264_ovl5);
            secs = func_8016F3C4_ovl5(D_8018E264_ovl5);
            mins = func_8016F3E8_ovl5(D_8018E264_ovl5);
        }
        func_8016E650_ovl5((s32) (uintptr_t) arg0, frames % 10,
                           (s32) (D_8018712C_ovl5[0] + D_801870B4_ovl5.xOffset),
                           (s32) (D_8018712C_ovl5[1] + D_801870B4_ovl5.yOffset));
        func_8016E650_ovl5((s32) (uintptr_t) arg0, frames / 10,
                           (s32) (D_80187134_ovl5[0] + D_801870B4_ovl5.xOffset),
                           (s32) (D_80187134_ovl5[1] + D_801870B4_ovl5.yOffset));
        func_8016E650_ovl5((s32) (uintptr_t) arg0, secs % 10,
                           (s32) (D_8018711C_ovl5[0] + D_801870B4_ovl5.xOffset),
                           (s32) (D_8018711C_ovl5[1] + D_801870B4_ovl5.yOffset));
        func_8016E650_ovl5((s32) (uintptr_t) arg0, secs / 10,
                           (s32) (D_80187124_ovl5[0] + D_801870B4_ovl5.xOffset),
                           (s32) (D_80187124_ovl5[1] + D_801870B4_ovl5.yOffset));
        func_8016E650_ovl5((s32) (uintptr_t) arg0, mins,
                           (s32) (D_80187114_ovl5[0] + D_801870B4_ovl5.xOffset),
                           (s32) (D_80187114_ovl5[1] + D_801870B4_ovl5.yOffset));
        ohSleep(1);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_4/func_8016F40C_ovl5.s")
#endif

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




