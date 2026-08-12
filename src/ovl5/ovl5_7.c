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
s32 func_8015CCA8_ovl5(s32);
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

void func_8017B018_ovl5(GObj *, s32);
void func_8017B35C_ovl5(GObj *);
void func_8017B560_ovl5(GObj *);
void func_8017B6B4_ovl5(GObj *);
void func_8017B848_ovl5(GObj *, s32);
void func_8017BA34_ovl5(GObj *, s32, s32);
void func_8017BED8_ovl5(GObj *);
void func_8017C084_ovl5(GObj *);
void func_8017C1FC_ovl5(GObj *);
void func_8017C34C_ovl5(GObj *);
void func_8017C4CC_ovl5(GObj *);

void func_80179E00_ovl5(GObj *arg0) {
    switch (D_800E98E0[omCurrentObj->objId]) {
        case 0:
            func_8017B018_ovl5(arg0, ((s32 *) D_800E9AA0)[omCurrentObj->objId]);
            break;
        case 3:
            func_8017B35C_ovl5(arg0);
            break;
        case 4:
            func_8017B848_ovl5(arg0, ((s32 *) D_800E9AA0)[omCurrentObj->objId]);
            break;
        case 5:
            func_8017BA34_ovl5(arg0, ((s32 *) D_800E9AA0)[omCurrentObj->objId],
                               D_800E9C60[omCurrentObj->objId]);
            break;
        case 6:
            func_8017BED8_ovl5(arg0);
            break;
        case 7:
            func_8017C34C_ovl5(arg0);
            break;
        case 8:
            func_8017C4CC_ovl5(arg0);
            break;
        case 9:
            func_8017B560_ovl5(arg0);
            break;
        case 0xA:
            func_8017B6B4_ovl5(arg0);
            break;
        case 0xB:
            func_8017C084_ovl5(arg0);
            break;
        case 0xC:
            func_8017C1FC_ovl5(arg0);
            break;
    }
}

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

#ifdef NON_MATCHING
/* 2/101, and the two are a pure scheduling swap: the ROM emits
   `addiu $fp,%lo(D_800E9C60)` before `addiu $s6,%lo(D_8018ED38_ovl5)` in the
   loop preheader, IDO the other way round. Both registers, both %hi halves and
   every other instruction are the ROM's.
   Two levers were worth 87 of the original 89 diffs and are load-bearing:
   the `u8 *p` walker (indexing `(&D_8018ED38_ovl5)[i]` costs three
   instructions per iteration and loses the hoisted `1` in $s7), and putting
   `d = x - y;` AFTER the func_8017A174_ovl5 if/else -- written before it, `d`
   is live across the call and takes a saved register instead of the ROM's
   delay-slot `subu $v1`.
   Swept with no effect on the residue: p declared/initialised at every
   position, `p++` in the for-header vs the body tail, a pointer local for
   D_800E9C60 (that one grows the TU to 106), `1 ==` compare order and a named
   `one` constant. */
void func_8017A1CC_ovl5(void) {
    u8 *p;
    s32 i;
    s32 r;
    s32 x;
    s32 y;
    s32 d;
    s32 t;

    p = &D_8018ED38_ovl5;
    for (i = 0; i != 4; i++, p++) {
        if (*p == 1) {
            r = random_soft_s32_range(4);
            if (r == D_8018ED18_ovl5[i]) {
                D_800EA1A0[D_8018ED90_ovl5[i]] = 1;
            } else {
                x = func_8017A128_ovl5(D_8018ED18_ovl5[i]);
                y = func_8017A128_ovl5(r);
                if (func_8017A174_ovl5(D_8018ED18_ovl5[i], r) != 0) {
                    D_800E9C60[D_8018ED90_ovl5[i]] = 2;
                } else {
                    D_800E9C60[D_8018ED90_ovl5[i]] = 1;
                }
                d = x - y;
                if (d < 0) {
                    t = -d;
                } else {
                    t = d;
                }
                if (t == 2) {
                    D_800EA6E0[D_8018ED90_ovl5[i]] = 18.0f;
                } else {
                    D_800EA6E0[D_8018ED90_ovl5[i]] = 9.0f;
                }
                D_800E9FE0[D_8018ED90_ovl5[i]].as_s32 = D_8018ED18_ovl5[i];
                D_8018ED18_ovl5[i] = r;
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017A1CC_ovl5.s")
#endif

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

#include "main/contpad.h"
extern u32 D_800D6B68;
void func_8017C6C8_ovl5(void);

void func_8017A3E4_ovl5(void) {
    if (gPlayerControllers[0].buttonPressed & 0x9000) {
        play_sound(0xED);
        D_8018ED04_ovl5 = 1;
        func_8017A360_ovl5(D_8018ED08_ovl5);
        func_8017C6C8_ovl5();
        D_800E98E0[omCurrentObj->objId] = 4;
    } else if (gPlayerControllers[0].buttonPressed & 0x4000) {
        play_sound(0x2B);
        D_800D6B68 = gGameState;
        gGameState = 0x1B;
        D_8018ED00_ovl5 = 1;
    } else if ((gPlayerControllers[0].buttonHeld & 0x200) && D_8018EDA0_ovl5 != 1) {
        play_sound(0x113);
        if (D_8018ED08_ovl5 == 1) {
            D_8018ED08_ovl5 = D_8018EDA0_ovl5;
        } else {
            D_8018ED08_ovl5 = D_8018ED08_ovl5 - 1;
        }
        D_800E98E0[omCurrentObj->objId] = 4;
    } else if ((gPlayerControllers[0].buttonHeld & 0x100) && D_8018EDA0_ovl5 != 1) {
        play_sound(0x113);
        if (D_8018ED08_ovl5 == D_8018EDA0_ovl5) {
            D_8018ED08_ovl5 = 1;
        } else {
            D_8018ED08_ovl5 = D_8018ED08_ovl5 + 1;
        }
        D_800E98E0[omCurrentObj->objId] = 4;
    }
}

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

s32 func_8017ABA4_ovl5(void) {
    return func_8015CCA8_ovl5(D_800D7178.unk44);
}

#include "main/contpad.h"
void func_8017C6C8_ovl5(void);
void func_8017ABC8_ovl5(void) {
    if (gPlayerControllers[0].buttonPressed & 0x9000) {
        play_sound(0xED);
        func_80179F90_ovl5();
        D_8018ED00_ovl5 = 1;
        D_800E98E0[omCurrentObj->objId] = 4;
    } else if (gPlayerControllers[0].buttonPressed & 0x4000) {
        play_sound(0x2B);
        D_8018ED04_ovl5 = 1;
        func_8017C6C8_ovl5();
        D_800E98E0[omCurrentObj->objId] = 4;
    } else if (func_8017ABA4_ovl5() != 0) {
        if (gPlayerControllers[0].buttonHeld & 0x200) {
            play_sound(0x113);
            D_8018ED0C_ovl5--;
            if (D_8018ED0C_ovl5 < 0) {
                D_8018ED0C_ovl5 = func_8017ABA4_ovl5();
            }
            D_800E98E0[omCurrentObj->objId] = 4;
        } else if (gPlayerControllers[0].buttonHeld & 0x100) {
            play_sound(0x113);
            D_8018ED0C_ovl5++;
            if (func_8017ABA4_ovl5() < D_8018ED0C_ovl5) {
                D_8018ED0C_ovl5 = 0;
            }
            D_800E98E0[omCurrentObj->objId] = 4;
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017AD54_ovl5.s")

#ifdef NON_MATCHING
/* 2/76: fully decoded, same length, same registers -- the residue is one
   scheduling swap of two independent address materialisations in the same
   block (`addu $t7,$t7,$v0` vs `addiu $a0,%lo(D_80189224_ovl5)`); the ROM
   emits the addu first. The `goto done` is the ROM's shape: with arg1 == 1 and
   the first compare false, control falls into the block that RELOADS
   (&D_80189224_ovl5)[D_8018ED18_ovl5[arg0]]. Swept: reversed compare operands
   (2), an index temp (14). */
s32 func_8017AEE8_ovl5(s32 arg0, s32 arg1, f32 arg2, s32 arg3) {
    f32 delta;
    f32 target;
    f32 limit;

    if (arg1 == 1) {
        delta = -arg2;
    } else {
        delta = arg2;
    }
    D_8018ED40_ovl5[arg0] += delta;
    if (arg1 == 1) {
        target = (&D_80189224_ovl5)[D_8018ED18_ovl5[arg0]];
        if ((&D_80189224_ovl5)[arg3] < target) {
            limit = target - 360.0f;
            goto done;
        }
    }
    target = (&D_80189224_ovl5)[D_8018ED18_ovl5[arg0]];
    if (arg1 == 2 && target < (&D_80189224_ovl5)[arg3]) {
        limit = target + 360.0f;
    } else {
        limit = target;
    }
done:
    if (arg1 == 1) {
        if (D_8018ED40_ovl5[arg0] <= limit) {
            D_8018ED40_ovl5[arg0] = target;
            return 1;
        }
    } else if (limit <= D_8018ED40_ovl5[arg0]) {
        D_8018ED40_ovl5[arg0] = target;
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017AEE8_ovl5.s")
#endif

#ifdef NON_MATCHING
/* 10/134: same length, same frame, same saved-register set, and the four
   trailing nops after the infinite loop come out of this C by themselves.
   The residue is the $v0/$v1 rotation of the `omCurrentObj->objId << 2` index
   temp inside the loop (ROM $v0, IDO $v1) -- the named blocker. Swept: the
   `&&` split into nested ifs (10). */
void func_8017B230_ovl5(GObj *);
s32 func_8017AEE8_ovl5(s32, s32, f32, s32);

void func_8017B018_ovl5(GObj *arg0, s32 arg1) {
    D_8018ED90_ovl5[arg1] = omCurrentObj->objId;
    D_800E98E0[omCurrentObj->objId] = 0xA;
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] = arg1;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800EA1A0[omCurrentObj->objId] = 0;
    ohSleep(0xA);
    D_800DF150[omCurrentObj->objId] = func_8017B230_ovl5;
    while (1) {
        if (D_8018ED04_ovl5 == 1 && D_800E9C60[omCurrentObj->objId] != 0) {
            while (func_8017AEE8_ovl5(arg1, D_800E9C60[omCurrentObj->objId], D_800EA6E0[omCurrentObj->objId],
                                      D_800E9FE0[omCurrentObj->objId].as_s32) == 0) {
                ohSleep(1);
            }
            D_800E9C60[omCurrentObj->objId] = 0;
            if ((&D_8018ED38_ovl5)[arg1] == 1) {
                D_800EA1A0[omCurrentObj->objId] = 1;
            }
        }
        ohSleep(1);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017B018_ovl5.s")
#endif

#include "main/contpad.h"

void func_8017A3E4_ovl5(void);
void func_8017A71C_ovl5(s32);
void func_8017ABC8_ovl5(void);
void func_8017AD54_ovl5(void);

void func_8017B230_ovl5(GObj *arg0) {
    s32 var = ((s32 *) D_800E9AA0)[omCurrentObj->objId];

    if (D_8018ED00_ovl5 != 0) {
        return;
    }
    if (!(gPlayerControllers[var].buttonHeld & 0xF00)) {
        D_800E98E0[omCurrentObj->objId] = 0;
    }
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        D_800E98E0[omCurrentObj->objId]--;
        return;
    }
    if (var == 0) {
        switch (D_8018ED04_ovl5) {
            case 0:
                func_8017A3E4_ovl5();
                break;
            case 1:
                func_8017A71C_ovl5(var);
                break;
            case 2:
                func_8017ABC8_ovl5();
                break;
            case 3:
                func_8017AD54_ovl5();
                break;
        }
    } else if (D_8018ED04_ovl5 == 1) {
        func_8017A71C_ovl5(var);
    }
}

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

extern Unk20Ptrs D_801888D4_ovl5;
extern Unk16Ptrs D_801888E8_ovl5;

// `sp40.unk0[4 - prev]` is load-bearing: IDO folds the +0x10 into the base and
// shares it with &sp50, giving the ROM's single `addiu $s3, $sp, 0x50` plus a
// `negu`. The leading pad places the two locals at 0x50/0x40.
void func_8017B6B4_ovl5(GObj *arg0) {
    s32 pad0;
    Unk20Ptrs sp50 = D_801888D4_ovl5;
    Unk16Ptrs sp40 = D_801888E8_ovl5;
    s32 prev = D_8018ED08_ovl5 + 1;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, func_800AD1A0, 0x12, 0x80000000, 0x12);
    while (D_8018ED04_ovl5 == 0) {
        if (prev != D_8018ED08_ovl5) {
            prev = D_8018ED08_ovl5;
            func_800ACBDC(arg0);
            func_8015C740_ovl5(arg0, sp50.unk0[prev]);
            func_8015C740_ovl5(arg0, sp40.unk0[4 - prev]);
        }
        ohSleep(1);
    }
    func_800ACBDC(arg0);
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

#include "SPObj.h"
extern Unk16Ptrs D_801888F8_ovl5;
extern struct UnkStruct8015C740 D_80188E10_ovl5;
extern f32 D_80188E30_ovl5[][2];

// sp50 must be declared LAST: the two scalars ahead of it place it at 0x50.
void func_8017B848_ovl5(GObj *arg0, s32 arg1) {
    s32 prev;
    SPObj *spobj;
    Unk16Ptrs sp50 = D_801888F8_ovl5;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, func_800AD1A0, 0x12, 0x80000000, 0x12);
    prev = (&D_8018ED38_ovl5)[arg1] + 1;
    while (D_8018ED04_ovl5 == 1) {
        if (prev != (&D_8018ED38_ovl5)[arg1]) {
            func_800ACBDC(arg0);
            prev = (&D_8018ED38_ovl5)[arg1];
            if (prev == 0) {
                func_8015C740_ovl5(arg0, sp50.unk0[arg1]);
            } else {
                spobj = (SPObj *) func_8015C740_ovl5(arg0, &D_80188E10_ovl5);
                spobj->xOffset = D_80188E30_ovl5[arg1][0];
                spobj->yOffset = D_80188E30_ovl5[arg1][1];
            }
        }
        ohSleep(1);
    }
    func_800ACBDC(arg0);
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

struct DObj *func_8017B9F4_ovl5(s32 arg0, s32 arg1) {
    return D_800DFBD0[D_8018ED3C_ovl5][D_801891E4_ovl5[arg0][arg1]];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017BA34_ovl5.s")

/* Faithful, not byte-exact (69/109). Frame, saved-register set and the whole
   prologue are exact; the residue is that the ROM gives $f20 to the hoisted
   D_8018DD24_ovl5 and $f22 to 180.0f while IDO assigns them the other way,
   which shifts every later slot. Swept: explicit 4x unrolling (121 insns,
   worse), a named local for 180.0f in both orders, operand order, and
   inlining the extern (98). */
#ifdef NON_MATCHING
extern u32 D_801891D0_ovl5;
extern s32 D_801891D4_ovl5;
extern f32 D_8018DD24_ovl5;
void func_800A9864(u32, s32, s32);

void func_8017BED8_ovl5(GObj *arg0) {
    s32 i;
    f32 v;

    D_8018ED3C_ovl5 = omCurrentObj->objId;
    func_800A9864(D_801891D0_ovl5, 0x1869F, 0x10);
    v = D_8018DD24_ovl5;
    while (D_8018ED04_ovl5 == 1) {
        for (i = 0; i < 4; i++) {
            D_800DFBD0[omCurrentObj->objId][(&D_801891D4_ovl5)[i]]->angle.v.y = D_8018ED40_ovl5[i] * v / 180.0f;
        }
        ohSleep(1);
    }
    func_800B1900(((u16 *) omCurrentObj)[1]);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017BED8_ovl5.s")
#endif

#include "SPObj.h"
extern Unk16Ptrs D_80188908_ovl5;
extern struct UnkStruct8015C740 D_801890D0_ovl5;
extern f32 D_801890F0_ovl5[][2];

// The scalars and the single pad must precede sp48 to place it at 0x48.
void func_8017C084_ovl5(GObj *arg0) {
    s32 pad0;
    s32 i;
    s32 n;
    SPObj *spobj;
    Unk16Ptrs sp48 = D_80188908_ovl5;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, func_800AD1A0, 0x12, 0x80000000, 0x12);
    n = func_8015CCA8_ovl5(D_800D7178.unk44);
    for (i = 0; i <= n; i++) {
        spobj = (SPObj *) func_8015C740_ovl5(arg0, &D_801890D0_ovl5);
        spobj->xOffset = D_801890F0_ovl5[i][0];
        spobj->yOffset = D_801890F0_ovl5[i][1];
        func_8015C740_ovl5(arg0, sp48.unk0[i]);
    }
    while (D_8018ED04_ovl5 == 2) {
        ohSleep(1);
    }
    func_800ACBDC(arg0);
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

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

extern Unk16Ptrs D_80188928_ovl5;
extern Unk16Ptrs D_80188938_ovl5;

// The two dead pads and the leading `i`/`n` are load-bearing: they place the
// two copied 16-byte locals at 0x58/0x48 and size the frame at 0x78.
void func_8017C34C_ovl5(GObj *arg0) {
    s32 i;
    s32 n;
    s32 p0;
    s32 p1;
    Unk16Ptrs sp58 = D_80188928_ovl5;
    Unk16Ptrs sp48 = D_80188938_ovl5;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, func_800AD1A0, 0x12, 0x80000000, 0x12);
    n = func_8015CCA8_ovl5(D_800D7178.unk44);
    for (i = 0; i <= n; i++) {
        func_8015C740_ovl5(arg0, sp58.unk0[i]);
        func_8015C740_ovl5(arg0, sp48.unk0[i]);
    }
    while (D_8018ED04_ovl5 == 3) {
        ohSleep(1);
    }
    func_800ACBDC(arg0);
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

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

/* The nested `for (j = 0; j != 4; j++)` is load-bearing: with the inner loop
   written as a do/while the $s5/$s6 bases of D_800E98E0 and D_800E9AA0 come
   out swapped (9 diffs). */
void func_8017C6C8_ovl5(void) {
    s32 i;
    s32 j;
    s32 t;

    D_800E98E0[func_800AEA64(0xA, 0, 0x70)] = 6;
    for (i = 0; i < 4; i++) {
        for (j = 0; j != 4; j++) {
            t = request_track_general(0xA, 0, 0x70);
            D_800E98E0[t] = 5;
            ((s32 *) D_800E9AA0)[t] = i;
            D_800E9C60[t] = j;
        }
    }
    i = 0;
    do {
        t = request_track_3(0xA, 0, 0x70);
        D_800E98E0[t] = 4;
        ((s32 *) D_800E9AA0)[t] = i;
        i++;
    } while (i != 4);
}

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

#ifdef NON_MATCHING
/* Fully decoded and instruction-exact through the `unk40` store; the ONE
   residue is the count loop's preheader, where IDO copy-propagates the
   materialised `&D_800D7178` (in $a1, live across for the 0x40/0x68 accesses)
   into $v0 as `move $v0,$a1`, while the ROM materialises `lui/addiu $v0`
   afresh -- one instruction short, which shifts every later word and reads as
   36/85.
   The four separate `extern s32` at D_800D7178+0x48..0x54 are load-bearing:
   only distinct named symbols emit the ROM's `lui $at; sw $zero,%lo(sym)($at)`
   quartet, and they are what lets the `unk68` store fold into the `beql` delay
   slot. They are defined in datatodo.txt.
   Swept without effect on the preheader: every spelling of `p`'s initializer
   (cast, integer cast, member+offset, end-16, `&*(vu32*)`), `u32`/`s32`/`vu32`/
   entry-struct/`u8` pointer types, a named end variable, for/do-while/for(;;),
   `register`, self-assignment, nested scope, declaration and assignment order,
   a pointer local for the copy block, ternary vs if/else vs goto, and dead
   locals. An absolute `(u32 *) 0x800D7178` initializer DOES reach 2/86 but
   emits `ori` where the ROM has `addiu`, and hardcodes the address. */
extern s32 D_800D71C0;
extern s32 D_800D71C4;
extern s32 D_800D71C8;
extern s32 D_800D71CC;

void func_8017C938_ovl5(void) {
    u8 *a;
    s32 *b;
    s32 *c;
    u32 *p;
    s32 count;

    if (gGameState != 0x1B) {
        a = &D_8018ED38_ovl5;
        b = D_8018ED18_ovl5;
        c = D_8018ED28_ovl5;
        D_800D7178.unk0 = a[0];
        D_800D7178.unk10 = a[1];
        D_800D7178.unk20 = a[2];
        D_800D7178.unk30 = a[3];
        D_800D7178.unk4 = b[0];
        D_800D7178.unk14 = b[1];
        D_800D7178.unk24 = b[2];
        D_800D7178.unk34 = b[3];
        D_800D7178.unk8 = c[0];
        D_800D7178.unk18 = c[1];
        D_800D7178.unk28 = c[2];
        D_800D7178.unk38 = c[3];
        if (func_80179F20_ovl5()) {
            D_800D7178.unk40 = D_8018ED10_ovl5;
        } else {
            D_800D7178.unk40 = D_8018ED0C_ovl5;
        }
        count = 0;
        p = &D_800D7178.unk0;
        do {
            if (*p == 0) {
                count++;
            }
            p += 4;
        } while (p < &D_800D7178.unk40);
        if (count != D_800D7178.unk68) {
            D_800D71C0 = 0;
            D_800D71C4 = 0;
            D_800D71C8 = 0;
            D_800D71CC = 0;
        }
        D_800D7178.unk68 = count;
    }
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0, 0x10, 2);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017C938_ovl5.s")
#endif

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

