// helper.cc

#include <ultra64.h>
#include <macros.h>

#include "types.h"

#include "GObj.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_1.h"
#include "ovl1/util.h"
#include "ovl2/ovl2_8.h"
#include "unk_structs/D_8022FAB0.h"
#include "main/object_manager.h"
#include "main/object_helpers.h"
#include "ovl0/lbvector.h"
#include "ovl2/ovl2_8.h"
#include "ovl2/ovl2_3.h"
#include "ovl1/ovl1_3.h"
#include "ovl1/ovl1_8.h"
#include "Player.h"
#include "helplib.h"
#include "sounds.h"

extern u32 D_800D6E64;
extern s32 D_8012E7FC;

// forward declarations
void func_80221BC8_ovl19(void);
void func_8021E5DC_ovl19(void);
void func_8021F0A4_ovl19(GObj *arg0);
void func_802228F8_ovl19(struct GObj *arg0);
void func_80222038_ovl19(struct GObj *arg0);
void func_80221FC8_ovl19(s32 arg0, s32 arg1, f32 arg2);
void func_802226FC_ovl19(struct GObj *arg0);
void func_8021EA20_ovl19(s32, s32, f32);
void func_8021F600_ovl19(struct GObj *arg0);
void func_8021E894_ovl19(s32, s32, f32);
void func_8021FE5C_ovl19(struct GObj *arg0);
void func_80221928_ovl19(struct GObj *arg0);
void func_8021EA20_ovl19(s32, s32, f32);
void func_80220138_ovl19(GObj*);
void func_80222CE0_ovl19(GObj*);
void func_802222F0_ovl19(GObj *arg0);
void func_80221654_ovl19(struct GObj *arg0);
void func_8021EF44_ovl19(GObj *);
void func_8021F174_ovl19(GObj *);
void func_8021F3F8_ovl19(GObj *);
void func_8021F6D8_ovl19(GObj *);
void func_8021F8A4_ovl19(GObj *);
u32 func_8021FCC0_ovl19(GObj *);
void func_8021FF90_ovl19(GObj *);
void func_80220280_ovl19(GObj *);
void func_8022054C_ovl19(GObj *);
void func_80220814_ovl19(GObj *);
void func_802209E4_ovl19(GObj *);
void func_80220B40_ovl19(GObj *);
void func_80220D54_ovl19(GObj *);
void func_80220E14_ovl19(GObj *);
void func_80220F8C_ovl19(GObj *);
void func_802211A0_ovl19(GObj *);
void func_80221480_ovl19(GObj *);
void func_8022159C_ovl19(GObj *);
void func_80221750_ovl19(GObj *);
void func_80221A74_ovl19(void);
void func_80221CA8_ovl19(GObj *);
void func_80221E20_ovl19(GObj *);
void func_80222108_ovl19(GObj *);
void func_802225A4_ovl19(GObj *);
void func_802227F0_ovl19(GObj *);
void func_80222918_ovl19(GObj *);
void func_80222A98_ovl19(GObj *);
void func_80222E3C_ovl19(GObj *);
void func_80223020_ovl19(GObj *);

// rodata
extern f32 D_8022F7AC, D_8022F7B0, D_8022F7B4;

void func_8021EF00_ovl19(GObj *arg0) {
    static FUNCLIST D_8022F080_ovl19 = {
        func_8021EF44_ovl19,
        func_8021F174_ovl19,
    };

    utilFuncTableJump(D_800E7880[omCurrentObj->objId], ARRAY_COUNT(D_8022F080_ovl19), D_8022F080_ovl19);
}

void func_8021EF44_ovl19(struct GObj *arg0) {
    f32 temp_f0;

    func_8021DFD0_ovl19();
    temp_f0 = 0.2f;
    D_800DEF90[omCurrentObj->objId] = &func_8021E5DC_ovl19;
    D_800DF150[omCurrentObj->objId] = &func_8021F0A4_ovl19;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp_f0;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp_f0;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp_f0;
    func_800A9864(0x2006A, 0x1869F, 0x10);
    D_800E8060[omCurrentObj->objId] = 0;
    D_800EBBE0[omCurrentObj->objId] = func_8021E2D0_ovl19(0, 1);
loop_1:
    if (D_800E8060[omCurrentObj->objId] != 2) {
        ohSleep(1);
        goto loop_1;
    }
    func_800AA018(0x203A4);
    ohSleep(0x16);
    D_8012E7FC = 1;
    curObjSleepForever();
}

void func_8021F0A4_ovl19(GObj *arg0) {
    if ((D_800E8060[omCurrentObj->objId] == 0) && (D_800E5F90[0] == 0x0000000A)) {
        gKirbyState.unk3C = 0;
        gKirbyState.unk17 = 1;
        gKirbyState.abilityState = 0x4F;
        gKirbyState.unk68 = 1;
        D_800E0D50[0] = omCurrentObj->objId;
        D_800E8060[omCurrentObj->objId] = 1;
        if (D_800E6A10[0] == -1.0f) {
            if (gKirbyState.isTurning & 1) {
                gKirbyState.turnDirection = 0;
            } else {
                gKirbyState.isTurning |= 1;
            }
        } else {
            gKirbyState.isTurning &= ~1;
        }
    }
}

/* FACTORY: 21/144, whole-function callee-saved PERMUTATION and nothing else.
   Measured: every instruction, every loop shape (rotated / un-rotated / rotated),
   the frame 0x28, the saved count (s0-s3) and all four held base pointers are
   the ROM's.  The four bases map ROM -> ours as
     &omCurrentObj   $s3 -> $s1
     &D_800E0D50     $s2 -> $s3
     &D_800E8060     $s1 -> $s2
     &D_800E8920     $s0 -> $s0   (this one already agrees)
   so the ROM numbers them DESCENDING in order of first materialisation and IDO
   does not.  20 of the 21 diffs are that renaming propagated; the 21st is the
   0.2f literal referencing this TU's own .late_rodata where the ROM names
   D_8022F750_ovl19, which is expected for a migrated TU and is checked by
   check_rodata_bytes.py, not here.  WAVE8 floor class "whole-function
   callee-saved permutation" -- no variants spent, none are worth spending.
   The "descending in order of first materialisation" reading above is
   confirmed on three more drafts in ovl9 (func_801ED9AC_ovl9 7/144,
   func_801EEC28_ovl9 45/277, func_801DE280_ovl9 27/227); ovl9_6.c's note on
   func_801ED9AC_ovl9 tabulates all four. In each of them the symbol IDO
   demotes is the one whose first reference is OUTSIDE the loop, and the
   lui/addiu emission order is identical either way, so it is a priority-list
   difference and not a scheduling one. */
#ifdef NON_MATCHING
/* barrier_sweep.py (LEVER 71) 2026-08-25: all 33 statement placements tried, none beats the base 20/144. */
void func_8021F174_ovl19(GObj *arg0) {
    func_8021DFD0_ovl19();
    D_800DF150[omCurrentObj->objId] = NULL;
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    func_800A9864(0x2006B, 0x1869F, 0x10);
    D_800DFBD0[omCurrentObj->objId][12]->flags = 2;
    func_801230E8(0x203BC, 0x203BD, 0);
    while (D_800E8060[D_800E0D50[omCurrentObj->objId]] == 0) {
        ohSleep(1);
    }
loop:
    if (D_800E8920[0] == 0) {
        ohSleep(1);
        goto loop;
    }
    func_801230E8(0x203B0, 0x203B1, 1);
    func_801230E8(0x203BE, 0x203BF, 0);
    while (D_800E8060[D_800E0D50[omCurrentObj->objId]] == 1) {
        ohSleep(1);
    }
    D_800DFBD0[omCurrentObj->objId][12]->flags = 1;
    func_801230E8(0x203A6, 0x203A7, 0);
    curObjSleepForever();
}
#else
void func_8021F174_ovl19(GObj *arg0);
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_8021F174_ovl19.s")
#endif

void func_8021F3B4_ovl19(GObj *arg0) {
    static FUNCLIST D_8022F088_ovl19 = {
        func_8021F3F8_ovl19,
        func_8021F3F8_ovl19,
        func_8021F3F8_ovl19,
        func_8021F6D8_ovl19,
        func_8021F8A4_ovl19,
    };

    utilFuncTableJump(D_800E7880[omCurrentObj->objId], ARRAY_COUNT(D_8022F088_ovl19), D_8022F088_ovl19);
}

void func_8021F3F8_ovl19(struct GObj *arg0) {
    f32 temp_f0;

    func_8021E184_ovl19();
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9AA0[omCurrentObj->objId] = func_800FCE50();
    temp_f0 = 0.2f;
    D_800DEF90[omCurrentObj->objId] = func_8021E894_ovl19;
    D_800DF150[omCurrentObj->objId] = func_8021F600_ovl19;
    gEntitiesAngleYArray[omCurrentObj->objId] = M_PIF/2;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp_f0;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp_f0;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp_f0;
    D_800EBBE0[omCurrentObj->objId] = func_8021E2D0_ovl19(1, 3);
    D_800EBDA0[omCurrentObj->objId] = func_8021E2D0_ovl19(1, 4);
    func_800A9864(0x2006F, 0x1869F, 0x10);
    if (D_800D6E64 == 0) {
        func_801230E8(0x203CD, 0x203CE, 0);
        while (D_800E98E0[omCurrentObj->objId] == 0) {
            ohSleep(1);
        }
        func_8021FA2C_ovl19();
        func_801230E8(0x203CB, 0x203CC, 1);
    }
    func_801230E8(0x203CF, 0x203D0, 0);
    curObjSleepForever();
}

void func_8021F600_ovl19(GObj *arg0) {
    Vector sp2C, sp20;

    if ((D_800E98E0[omCurrentObj->objId] == 0) && (D_800D6E64 == 0)) {
        struct EntityThing800E9AA0 *tmp = D_800E9AA0[omCurrentObj->objId];

        sp2C.x = gEntitiesNextPosXArray[0];
        sp2C.y = 0.0f;
        sp2C.z = gEntitiesNextPosZArray[0];

        sp20.x = tmp->unk8;
        sp20.y = 0.0f;
        sp20.z = tmp->unk10;
        if (utilVec3Dist(&sp2C, &sp20) < 102400.0f) {
            D_800E98E0[omCurrentObj->objId]++;
        }
    }
}

void func_8021F6D8_ovl19(struct GObj *arg0) {
    f32 temp_f0;

    func_8021E184_ovl19();
    temp_f0 = 0.2f;
    D_800DF150[omCurrentObj->objId] = NULL;
    gEntitiesAngleYArray[omCurrentObj->objId] = M_PIF/2;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp_f0;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp_f0;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp_f0;
    func_800A9864(0x20070, 0x1869F, 0x10);
    if (D_800D6E64 == 0) {
        D_800DFBD0[omCurrentObj->objId][3]->flags = 1;
        func_801230E8(0x203DC, 0x203DD, 0);
        while (D_800E98E0[D_800E0D50[omCurrentObj->objId]] == 0) {
            ohSleep(1);
        }
        func_801230E8(0x203DA, 0x203DB, 0);
    } else {
        D_800DFBD0[omCurrentObj->objId][3]->flags = 2;
    }
    curObjSleepForever();
}

void func_8021F8A4_ovl19(struct GObj *arg0) {
    Vector sp44;

    D_800DEF90[omCurrentObj->objId] = NULL;
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.25f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.25f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.25f;
    func_800A9864(0x20071, 0x1869F, 0x10);
    while (1) {
        func_800B2340(&sp44, D_800DFBD0[D_800E0D50[omCurrentObj->objId]][1], D_800E0D50[omCurrentObj->objId]);
        gEntitiesNextPosXArray[omCurrentObj->objId] = sp44.x;
        gEntitiesNextPosYArray[omCurrentObj->objId] = sp44.y + 0.5f;
        gEntitiesNextPosZArray[omCurrentObj->objId] = sp44.z;
        ohSleep(1);
    }
}

extern f32 gKirbyHp;
// minor changes that i'm too tired to look at atm lol
#ifdef NON_MATCHING
void func_8021FA2C_ovl19(void) {
    Vector sp34;
    struct EntityThing800E9AA0 *sp2C = D_800E9AA0[omCurrentObj->objId];
    s32 temp_v0 = request_track_general(0x1C, 0x1E, 0x3C);

    if (temp_v0 >= 0x3C || temp_v0 == -1) {
// block_2:
        if (temp_v0 != -1) {
            func_800B1900(temp_v0 & 0xFFFF);
        }
        utilPrintf("drawItemReq  Request Error!![helper.cc]\n");
        return;
    }
    // if (temp_v0 == -1) {
    //     goto block_2;
    // }
    if (D_800E7880[omCurrentObj->objId] == 2) {
        D_800E77A0[temp_v0] = 5;
        D_800E7880[temp_v0] = 1;
    } else if (6.0f == gKirbyHp) {
        D_800E77A0[temp_v0] = 9;
        D_800E7880[temp_v0] = 1;
    } else {
        (&D_800E77A0[temp_v0])[0x3BD0] = 0;
        D_800E7880[temp_v0] = 1;
    }
    D_800E7730[temp_v0] = 3;
    D_800E76C0[temp_v0] = 0xFF;
    D_800E8E60[temp_v0] = 1;
    func_800B2340(&sp34, D_800DFBD0[D_800EBBE0[omCurrentObj->objId]][2], D_800EBBE0[omCurrentObj->objId], temp_v0);
    gEntitiesPosXArray[temp_v0] = sp34.x;
    gEntitiesNextPosXArray[temp_v0] = sp34.x;
    gEntitiesPosYArray[temp_v0] = sp34.y;
    gEntitiesNextPosYArray[temp_v0] = sp34.y;
    gEntitiesPosZArray[temp_v0] = sp34.z;
    gEntitiesNextPosZArray[temp_v0] = sp34.z;
    D_800E6150[temp_v0] = sp2C->unk0;
    D_800E5F90[temp_v0] = sp2C->unk0;
    D_800E6D90[temp_v0] = sp2C->unk24;
    D_800E6BD0[temp_v0] = sp2C->unk24;
    D_800EC120[omCurrentObj->objId] = temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_8021FA2C_ovl19.s")
#endif

void func_8021FC7C_ovl19(GObj *arg0) {
    static FUNCLIST D_8022F09C_ovl19 = {
        func_8021FCC0_ovl19,
        func_8021FF90_ovl19,
    };
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], ARRAY_COUNT(D_8022F09C_ovl19), D_8022F09C_ovl19);
}

u32 func_8021FCC0_ovl19(struct GObj *arg0) {
    f32 tmp;

    func_8021DFD0_ovl19();
    tmp = 0.2f;
    D_800DEF90[omCurrentObj->objId] = func_8021E5DC_ovl19;
    D_800DF150[omCurrentObj->objId] = func_8021FE5C_ovl19;
    gEntitiesAngleYArray[omCurrentObj->objId] = 0.0f;
    gEntitiesScaleXArray[omCurrentObj->objId] = tmp;
    gEntitiesScaleYArray[omCurrentObj->objId] = tmp;
    gEntitiesScaleZArray[omCurrentObj->objId] = tmp;
    func_800A9864(0x20067, 0x1869F, 0x10);
    D_800EBBE0[omCurrentObj->objId] = func_8021E2D0_ovl19(2, 1);
    D_800E98E0[omCurrentObj->objId] = 0;
    func_800AA018(0x2035D);
    while (D_800E98E0[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    D_800E98E0[D_800EBBE0[omCurrentObj->objId]] = 1;
    func_800AA154(0x2035E);
    curObjSleepForever();
}

void func_8021FE5C_ovl19(struct GObj *arg0) {
    Vector sp2C, sp20;
    if (D_800E98E0[omCurrentObj->objId] == 0) {
        if (gKirbyState.unk16C != 0) {
            if ((gEntitiesNextPosYArray[omCurrentObj->objId] - 20.0f) <= gEntitiesNextPosYArray[0]) {
                sp2C.y = 0.0f;
                sp2C.x = gEntitiesNextPosXArray[0];
                sp2C.z = gEntitiesNextPosZArray[0];

                sp20.x = gEntitiesNextPosXArray[omCurrentObj->objId];
                sp20.y = 0.0f;
                sp20.z = gEntitiesNextPosZArray[omCurrentObj->objId];
                if (utilVec3Dist(&sp2C, &sp20) < 6400.0f) {
                    D_800E98E0[omCurrentObj->objId]++;
                    gKirbyState.unk17 = 1;
                    gKirbyState.abilityState = 0;
                    gKirbyState.unk68 = 1;
                }
            }
        }
    }
}

void func_8021FF90_ovl19(GObj *g) {
    D_800E9AA0[omCurrentObj->objId] = NULL;
    func_8021DFD0_ovl19();
    D_800DF150[omCurrentObj->objId] = func_80220138_ovl19;
    gEntitiesAngleYArray[omCurrentObj->objId] = 0.0f;
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    func_800A9864(0x20060, 0x1869F, 0x10);
    D_800E98E0[omCurrentObj->objId] = 0;
    func_801230E8(0x202EF, 0x202F0, 0);
    while (D_800E98E0[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    D_800E9AA0[omCurrentObj->objId] = 1;
    func_801230E8(0x202ED, 0x202EE, 1);
    gKirbyState.unk17 = 0;
    gKirbyState.unk68 = 0;
    D_800E8760[omCurrentObj->objId] = 0;
    curObjSleepForever();
}

// Struct definition rabbit hole
#ifdef PORT
/* THE SWEEP RECORD IS AN f32[8] AND ITS LAST SLOT IS FOUR BYTES WIDE, so
 * the descriptor cell must be spelled u32 rather than `void *`.
 *
 * With a native pointer as the last member, LP64 alignment inserts four
 * bytes of padding after `c` and puts `d` at byte 32 -- measured with
 * offsetof: sizeof 40, offsetof(d) == 32. Its only consumer,
 * func_8011BF4C in ovl2/plylib.c, reads the descriptor as
 * `*(u32 *)&rec[7]`, i.e. byte 28, which under that layout is the PADDING
 * of an uninitialised stack local. The sweep then walked a garbage
 * descriptor: `desc[0]`, `desc[1]` and `desc[2]` are all dereferenced
 * before the first cast.
 *
 * ovl7_3.c's struct UnkOvl7Track already pins the convention for the same
 * callee -- "The hitbox-descriptor slot stays a u32 host-address cell so
 * the record keeps the N64's f32[8]/32-byte shape ... A real pointer here
 * would move the slot to LP64 offset 32 and split the two callers'
 * layouts" -- and plyshot's D_80198540_ovl3[][8] rows and
 * func_80155D50_ovl3's `*(s32 *)&arg0[7] = arg1` are the other two. This
 * struct was the only one of the four still declaring a pointer. Host
 * addresses fit a u32 cell (the arena is below 4 GiB). The N64 build keeps
 * `void *d`, where it is four bytes and sits at +0x1C already. */
struct Ovl19Sp20 {
    Vector a;
    Vector b;
    f32 c;
    u32 d;      /* host address as a u32; N64 +0x1C */
};
#else
struct Ovl19Sp20 {
    Vector a;
    Vector b;
    f32 c;
    void *d;
};
#endif

void func_80220138_ovl19(GObj *arg0) {
    extern s32 func_8011BF4C(void *, void *);
    extern void func_80155ED8_ovl3(void);
    extern s32 D_801964E8;
    struct Ovl19Sp20 sp20;

    if (D_800E9AA0[omCurrentObj->objId] != NULL) {
        sp20.b.x = gEntitiesNextPosXArray[omCurrentObj->objId];
        sp20.a.x = sp20.b.x;
        sp20.a.y = gEntitiesNextPosYArray[omCurrentObj->objId] + 240.0f;
        sp20.b.z = gEntitiesNextPosZArray[omCurrentObj->objId];
        sp20.a.z = sp20.b.z;
        sp20.b.y = gEntitiesNextPosYArray[omCurrentObj->objId] + 239.0f;
#ifdef PORT
        sp20.d = (u32) (uintptr_t) &D_801964E8;
#else
        sp20.d = &D_801964E8;
#endif
        sp20.c = 1.5707964f;
        func_8011BF4C(&sp20, func_80155ED8_ovl3);
        D_800E9AA0[omCurrentObj->objId] = NULL;
    }
}

void func_8022023C_ovl19(GObj *arg0) {
    static FUNCLIST D_8022F0A4_ovl19 = {
        func_80220280_ovl19,
        func_8022054C_ovl19,
        func_80220814_ovl19,
    };

    utilFuncTableJump(D_800E7880[omCurrentObj->objId], ARRAY_COUNT(D_8022F0A4_ovl19), D_8022F0A4_ovl19);
}


// Pit of Doom
// {
#ifdef MIPS_TO_C
/* FACTORY: 22/119 [was noted 97/119], register rotation. Re-verified 2026-08-22: the first 52
 * instructions (both random_soft_s32_range rejection loops, D_800E0650/
 * D_800DF150 stores, D_800D6E64 guard) are exact, registers included. The
 * residue starts at the first `sll $vN,v0,2` (track-index subscripting into
 * D_800EC2E0): the ROM's temp sequence is t0,t2,t9,t5,t8,t1,t2,t7,t9,t4 vs
 * IDO's t8,t9,t2,t3,t4,t5,t7,t6,t8,t9 -- a pure temp-register rotation, no
 * instruction/constant/order differs. Matches the "one-slot temp rotation"
 * floor (LEVERS: no source spelling reaches it). Swept previously: one temp
 * local vs three, `*(vs32 *) &D_800D71F8` vs plain assignment (identical
 * here), and a `for (i = 0; i < 3; i++)` loop for the three groups (IDO does
 * NOT unroll -- worse, 113/118). */
/* barrier_sweep.py (LEVER 71) 2026-08-25: all 27 statement placements tried, none beats the base 22/119. */
void func_80220280_ovl19(GObj *arg0) {
    extern s32 D_8022FAB8_ovl19[];
    extern s32 D_800D6F18;
    extern u32 D_800D71F8;
    extern void func_801230E8(s32, s32, s32);
    void func_8022045C_ovl19(struct GObj *);
    s32 temp;

    func_8021E184_ovl19();
    D_800E0650[omCurrentObj->objId] = D_8022FAB8_ovl19;
    D_800DF150[omCurrentObj->objId] = func_8022045C_ovl19;
    if (D_800D6E64 == 0) {
        (&D_800D6F18)[0] = random_soft_s32_range(7);
        do {
            (&D_800D6F18)[1] = random_soft_s32_range(7);
        } while ((&D_800D6F18)[0] == (&D_800D6F18)[1]);
        do {
            (&D_800D6F18)[2] = random_soft_s32_range(7);
        } while (((&D_800D6F18)[0] == (&D_800D6F18)[2]) || ((&D_800D6F18)[1] == (&D_800D6F18)[2]));
        D_800D6E64 = 1;
    }
    temp = func_8021E2D0_ovl19(3, 2);
    D_800D71F8 = temp;
    D_800EC2E0[temp].as_s32 = 0;
    temp = func_8021E2D0_ovl19(3, 2);
    D_800D71F8 = temp;
    D_800EC2E0[temp].as_s32 = 1;
    temp = func_8021E2D0_ovl19(3, 2);
    D_800D71F8 = temp;
    D_800EC2E0[temp].as_s32 = 2;
    gEntitiesNextPosXArray[omCurrentObj->objId] = 140.0f;
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    func_800A9864(0x2006F, 0x27, 0x10);
    func_801230E8(0x203D5, 0x203D6, 1);
    curObjSleepForever();
}
#elif defined(PORT)
/* PORT: behavioral port of the MIPS_TO_C draft above (verified against
 * asm/nonmatchings/ovl19/helper/func_80220280_ovl19.s). Pit-of-Doom board
 * setup: registers the per-entity script table D_8022FAB8_ovl19 (native
 * pointer into the widened D_800E0650 cell) and the func_8022045C_ovl19
 * per-frame hook, rolls three DISTINCT random digits 0..6 into the
 * D_800D6F10+8/+0xC/+0x10 cells once per game (D_800D6E64 guard), spawns
 * three tracks via func_8021E2D0_ovl19(3,2) tagging each with its index in
 * D_800EC2E0, then places/scales the object and loads its geo + name call. */
void func_80220280_ovl19(GObj *arg0) {
    extern s8 D_8022FAB8_ovl19[];
    extern s32 D_800D6F18;
    extern u32 D_800D71F8;
    void func_8022045C_ovl19(s32);
    s32 temp;

    func_8021E184_ovl19();
    D_800E0650[omCurrentObj->objId] = (s32 *) D_8022FAB8_ovl19;
    D_800DF150[omCurrentObj->objId] = (void (*)(struct GObj *)) func_8022045C_ovl19;
    if (D_800D6E64 == 0) {
        (&D_800D6F18)[0] = random_soft_s32_range(7);
        do {
            (&D_800D6F18)[1] = random_soft_s32_range(7);
        } while ((&D_800D6F18)[0] == (&D_800D6F18)[1]);
        do {
            (&D_800D6F18)[2] = random_soft_s32_range(7);
        } while (((&D_800D6F18)[0] == (&D_800D6F18)[2]) || ((&D_800D6F18)[1] == (&D_800D6F18)[2]));
        D_800D6E64 = 1;
    }
    temp = func_8021E2D0_ovl19(3, 2);
    D_800D71F8 = temp;
    D_800EC2E0[temp].as_s32 = 0;
    temp = func_8021E2D0_ovl19(3, 2);
    D_800D71F8 = temp;
    D_800EC2E0[temp].as_s32 = 1;
    temp = func_8021E2D0_ovl19(3, 2);
    D_800D71F8 = temp;
    D_800EC2E0[temp].as_s32 = 2;
    gEntitiesNextPosXArray[omCurrentObj->objId] = 140.0f;
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    func_800A9864(0x2006F, 0x27, 0x10);
    func_801230E8(0x203D5, 0x203D6, 1);
    curObjSleepForever();
}
#else
    #pragma GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_80220280_ovl19.s")
#endif

    // having to define a struct thats only ever accessed here and the above function
/* 19/60: every instruction is right and the first half's registers are exact
 * (v0 = omCurrentObj, v1 = &D_800E98E0[objId], a0 = the loaded value). The
 * residue is which dead register the tail reuses: ROM v1/t5/v0, IDO a0/t9/v1.
 * Swept: a pointer local for the tail base in both declaration positions, an
 * explicit temp for the read-back, a 4-byte struct-array spelling, s8/s32
 * return types, and moving the 0x12 store/read-back to either end. */
#ifdef NON_MATCHING
void func_8022045C_ovl19(s32 arg0) {
    extern s32 D_8012E860;
    extern s8 D_8022FAB8_ovl19[];
    u8 val;

    if ((D_8012E860 == 0x1F) && (D_800E98E0[0] < 3)) {
        if ((D_800E98E0[omCurrentObj->objId] & 0xFF) != 0x30) {
            D_800E98E0[omCurrentObj->objId]++;
            val = ((u8 *) D_800E98E0)[(omCurrentObj->objId * 4) + 3] + 0x30;
        } else {
            val = 0x60;
        }
    } else {
        D_800E98E0[omCurrentObj->objId] = 0;
        val = 0x30;
    }
    D_8022FAB8_ovl19[0x12] = 0x32;
    D_8022FAB8_ovl19[0] = D_8022FAB8_ovl19[4] = val;
    D_8022FAB8_ovl19[1] = D_8022FAB8_ovl19[5] = val;
    D_8022FAB8_ovl19[2] = D_8022FAB8_ovl19[6] = val;
    D_8022FAB8_ovl19[8] = D_8022FAB8_ovl19[0xC] = val;
    D_8022FAB8_ovl19[9] = D_8022FAB8_ovl19[0xD] = val;
    D_8022FAB8_ovl19[0xA] = D_8022FAB8_ovl19[0xE] = val;
    D_8022FAB8_ovl19[0x10] = D_8022FAB8_ovl19[0x11] = D_8022FAB8_ovl19[0x12];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_8022045C_ovl19.s")
#endif

/* 47/178, instruction count exact and every block in the right place.
 * Residue is (a) the frame: 0x90 vs the ROM's 0x80 with the three Vectors
 * correctly ordered but sitting 12 bytes high, and (b) four `bne`/`beq`
 * operand orders (the ROM puts the freshly-loaded p[n] in rs, IDO always puts
 * $v0 there) plus the prologue schedule that follows from the frame.
 * Measured: caching `GObj *o = omCurrentObj` per loop iteration and reusing
 * `o->objId` for the post-loop gEntitiesNextPosYArray store is what takes it
 * from 152 to 47 -- the ROM reuses the loop's last objId*4 in $a0.
 * Frame swept: declaration order of the three Vectors (correct as written --
 * it is what puts scale lowest), `Vector sp5C[3]` as one array, an added s32
 * pad (+8), dropping a Vector (-8, so the step is 8 per 12 bytes), the p
 * pointer inlined as a cast expression at every use (identical), and
 * (u32)&D_800D6F10 + 8 instead of &D_800D6F18 (much worse).  Reversing the
 * comparison operands in the source is inert. */
#ifdef NON_MATCHING
extern s32 D_800D6F18;
extern u8 D_800D6E30[];
extern u32 D_800BE508;
extern struct GObjProcess *gEntityGObjProcessArray5[];
void procMainStub(struct GObjProcess *);
void play_sound(s32);
void func_800F8E6C(GObj *);
void func_800A7F74(s32, s32, s32, f32, f32, f32);
s32 func_800FCD14(u32, u8, f32, u8, u8, u8, u8, u8, s16, Vector *, Vector *, Vector *);

void func_8022054C_ovl19(GObj *arg0) {
    s32 *p = (s32 *)((u32)&D_800D6F18);
    Vector pos;
    Vector angle;
    Vector scale;
    GObj *o;
    s32 id;
    s32 v;

    if (p[7] == 0) {
        p[7] = 1;
        D_800DEF90[omCurrentObj->objId] = NULL;
        setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
        D_800E98E0[omCurrentObj->objId] = 3;
        p[4] = 0;
        p[3] = -1;
        func_800F8E6C(arg0);
        while (1) {
            o = omCurrentObj;
            id = o->objId;
            if (D_800E98E0[id] != 0) {
                v = p[3];
                if (-1 != v) {
                    if (v == p[0]) {
                        p[4] |= 1;
                    } else if (v == p[1]) {
                        p[4] |= 2;
                    } else if (v == p[2]) {
                        p[4] |= 4;
                    }
                    p[3] = -1;
                    D_800E98E0[o->objId] -= 1;
                    if (D_800E98E0[o->objId] == 0) {
                        if (p[4] == 7) {
                            break;
                        }
                    }
                }
            } else {
                func_800B1900((u16) id);
            }
            ohSleep(1);
        }
        gEntitiesNextPosYArray[o->objId] = 60.0f;
        if (D_800D6E30[D_800BE508] == 0) {
            play_sound(0x112);
            func_800A7F74(3, 0, 0xCE, 300.0f, gEntitiesNextPosYArray[omCurrentObj->objId], 0.0f);
            ohSleep(0x12);
            pos.x = 0.0f;
            pos.y = gEntitiesNextPosYArray[omCurrentObj->objId];
            pos.z = 0.0f;
            angle.x = 0.0f;
            angle.y = 0.0f;
            angle.z = 0.0f;
            scale.x = 1.0f;
            scale.y = 1.0f;
            scale.z = 1.0f;
            play_sound(0x1FC);
            func_800FCD14(0xFF, 3, 0.5f, 3, 7, 2, 0, 0, 0x13, &pos, &angle, &scale);
        }
    }
    func_800B1900((u16) omCurrentObj->objId);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_8022054C_ovl19.s")
#endif

f32 D_8022F0B0_ovl19[] = {-112, 0, 110};
u32 D_8022F0BC_ovl19[] = {
    0x00020073,
    0x00020074,
    0x00020077,
    0x00020076,
    0x00020075,
    0x00020072,
    0x00020078,
};
extern s32 D_800D6F18;

void func_80220814_ovl19(GObj *arg0) {
    func_8021E184_ovl19();
    gEntitiesNextPosXArray[omCurrentObj->objId] = D_8022F0B0_ovl19[D_800EC2E0[omCurrentObj->objId].as_s32];
    gEntitiesNextPosYArray[omCurrentObj->objId] = 70.0f;
    gEntitiesNextPosZArray[omCurrentObj->objId] = -199.0f;
    func_800A9864(D_8022F0BC_ovl19[(&D_800D6F18)[D_800EC2E0[omCurrentObj->objId].as_s32]], 0x1869F, 0x10);
    while (1) {
        func_800AA018(0x203E3);
        while (1) {
            if ((gKirbyState.abilityInUse == 0x1F) && (D_800E98E0[0] < 3)) {
                func_800AA018(0x203E2);
                while (1) {
                    if ((gKirbyState.abilityInUse == 0) || (D_800E98E0[0] >= 3)) {
                        break;
                    }
                    ohSleep(1);
                }
                break;
            }
            ohSleep(1);
        }
    }
}


void func_802209A0_ovl19(GObj *arg0) {
    static FUNCLIST D_8022F0D8_ovl19 = {
        func_802209E4_ovl19,
        func_80220B40_ovl19,
        func_80220D54_ovl19,
        func_80220E14_ovl19,
    };

    utilFuncTableJump(D_800E7880[omCurrentObj->objId], ARRAY_COUNT(D_8022F0D8_ovl19), D_8022F0D8_ovl19);
}

    // the same rabbit hole as func_80220280_ovl19
    /* 10/87: every instruction and every constant is right; the ROM parks the
 * materialised address of D_800D71F8 in $v1 (reusing it for omCurrentObj
 * afterwards) where IDO takes $t8, which then rotates t8/t9/t0 by one for the
 * rest of the body. Swept: `*(vs32 *) &SYM`, `vs32 *p` in both declaration
 * positions, plain `s32 *p` (68), a read-back second use (66), and file-scope
 * `void` prototypes for the three implicitly-declared callees -- 10 in every
 * case. */
#ifdef NON_MATCHING
/* barrier_sweep.py (LEVER 71) 2026-08-25: all 24 statement placements tried, none beats the base 10/87. */
void func_802209E4_ovl19(GObj *arg0) {
    extern s32 D_800D6F10;
    extern u32 D_800D71F8;
    extern void func_801230E8(s32, s32, s32);
    s32 temp;

    func_8021E184_ovl19();
    if (D_800D6E64 == 0) {
        (&D_800D6F10)[2] = random_soft_s32_range(3);
        D_800D6E64 = 1;
    }
    temp = func_8021E2D0_ovl19(4, 2);
    *(vs32 *) &D_800D71F8 = temp;
    D_800EC2E0[temp].as_s32 = (&D_800D6F10)[2];
    func_8021E2D0_ovl19(4, 3);
    gEntitiesNextPosXArray[omCurrentObj->objId] = 80.0f;
    gEntitiesNextPosYArray[omCurrentObj->objId] = 0.0f;
    gEntitiesNextPosZArray[omCurrentObj->objId] = -80.0f;
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    func_800A9864(0x2006F, 0x1869F, 0x10);
    func_801230E8(0x203D5, 0x203D6, 1);
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_802209E4_ovl19.s")
#endif
void play_sound(s32);
extern struct GObjProcess *gEntityGObjProcessArray5[];
void procMainStub(struct GObjProcess *);
extern u8 D_800D6E30[];
extern u32 D_800BE508;
extern s32 D_800D6F18;
s32 func_800AB490(s32);
void func_800F8E6C(GObj *);
void func_800A7F74(s32, s32, s32, f32, f32, f32);
s32 func_800FCD14(u32, u8, f32, u8, u8, u8, u8, u8, s16, Vector *, Vector *, Vector *);

void func_80220B40_ovl19(GObj *arg0) {
    Vector pos;
    Vector angle;
    Vector scale;

    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    gEntitiesNextPosYArray[omCurrentObj->objId] = 200.0f;
    D_800E6BD0[omCurrentObj->objId] = 0.5f;
    ohSleep(2);
    while (1) {
        if (func_800AB490(D_800D6F18) != 0) {
            break;
        }
        ohSleep(1);
    }
    func_800F8E6C(arg0);
    if (D_800D6E30[D_800BE508] == 0) {
        play_sound(0x112);
        func_800A7F74(3, 0, 0xCE, gEntitiesNextPosXArray[omCurrentObj->objId],
                      gEntitiesNextPosYArray[omCurrentObj->objId],
                      gEntitiesNextPosZArray[omCurrentObj->objId]);
        ohSleep(0x12);
        pos.y = gEntitiesNextPosYArray[omCurrentObj->objId];
        pos.x = 0.0f;
        pos.z = 0.0f;
        angle.x = 0.0f;
        angle.y = 0.0f;
        angle.z = 0.0f;
        scale.z = 1.0f;
        scale.y = 1.0f;
        scale.x = 1.0f;
        play_sound(0x1FC);
        func_800FCD14(0xFF, D_800E5F90[omCurrentObj->objId], D_800E6BD0[omCurrentObj->objId],
                      3, 7, 2, 0, 0, 0x28, &pos, &angle, &scale);
    }
    func_800B1900((u16) omCurrentObj->objId);
}

    // currently flying blind filling out DObj->unk80 so I won't bother
void func_80220D54_ovl19(GObj *arg0) {
    func_8021E184_ovl19();
    gEntitiesNextPosXArray[omCurrentObj->objId] = 0.0f;
    gEntitiesNextPosYArray[omCurrentObj->objId] = 0.0f;
    gEntitiesNextPosZArray[omCurrentObj->objId] = -140.0f;
    func_800A9864(0x20079, 0x1869F, 0x10);
    *(u16 *) ((u8 *) D_800DFBD0[omCurrentObj->objId][2]->mobjList + 0x80) =
        D_800EC2E0[omCurrentObj->objId].as_u32;
    curObjSleepForever();
}
// }

void func_80220E14_ovl19(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = NULL;
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]] + 0.5f;
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.25f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.25f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.25f;
    func_800A9864(0x20071, 0x1869F, 0x10, D_800E0D50);
    curObjSleepForever();
}

void func_80220F48_ovl19(GObj *arg0) {
    static FUNCLIST D_8022F0E8_ovl19 = {
        func_80220F8C_ovl19,
        func_802211A0_ovl19,
        func_80221480_ovl19,
        func_8022159C_ovl19,
    };

    utilFuncTableJump(D_800E7880[omCurrentObj->objId], ARRAY_COUNT(D_8022F0E8_ovl19), D_8022F0E8_ovl19);
}

// the same rabbit hole as func_80220280_ovl19
void func_80220F8C_ovl19(GObj *arg0) {
    extern s32 D_800D6F18;
    extern void func_801230E8(s32, s32, s32);
    void func_80221108_ovl19(struct GObj *, s32, f32);

    func_8021E184_ovl19();
    D_800E98E0[omCurrentObj->objId] = 0;
    if (D_800D6E64 == 0) {
        (&D_800D6F18)[0] = random_soft_s32_range(7);
        do {
            (&D_800D6F18)[1] = random_soft_s32_range(7);
        } while ((&D_800D6F18)[0] == (&D_800D6F18)[1]);
        do {
            (&D_800D6F18)[2] = random_soft_s32_range(7);
        } while (((&D_800D6F18)[0] == (&D_800D6F18)[2]) || ((&D_800D6F18)[1] == (&D_800D6F18)[2]));
        D_800D6E64 = 1;
    }
    func_8021E2D0_ovl19(5, 3);
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    func_800A9864(0x2006F, 0x1869F, 0x10);
    func_801230E8(0x203D1, 0x203D2, 0);
    D_800DF310[omCurrentObj->objId] = func_80221108_ovl19;
    func_800AF27C();
    func_801230E8(0x203D3, 0x203D4, 0);
    curObjSleepForever();
}

extern u32 D_800D71F8;
/* 11/38 and structurally exact.  The `vs32` cast is what makes IDO materialise
 * the full address of D_800D71F8 into a register (lui+addiu+sw) instead of
 * folding it into `lui $at; sw %lo(sym)($at)` -- without it the TU is one
 * instruction short.  The residue is a one-slot register rotation: the ROM puts
 * that address in $a1 and the D_800E98E0 base in $a2 with temps t6..t9, IDO
 * uses $t6 and $a1 with temps t7..t0.  Swept: pointer local (volatile and not),
 * struct-base and array spellings, && vs nested ifs, s32 vs GObj* first
 * parameter, one and two pad locals, a pointer local for D_800E98E0. */
#ifdef NON_MATCHING
/* barrier_sweep.py (LEVER 71) 2026-08-25: all 4 statement placements tried, none beats the base 11/38. */
void func_80221108_ovl19(struct GObj *arg0, s32 arg1, f32 arg2) {
    s32 temp;

    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            temp = func_8021E2D0_ovl19(5, 2);
            *(vs32 *) &D_800D71F8 = temp;
            D_800EC2E0[temp].as_s32 = D_800E98E0[omCurrentObj->objId];
            D_800E98E0[omCurrentObj->objId] += 1;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_80221108_ovl19.s")
#endif
// the same rabbit hole as func_80220280_ovl19
/* 75/184, instruction count exact.  This is a near-clone of func_8022054C_ovl19
 * above (same D_800D6F18 state machine, same three-Vector func_800FCD14 call)
 * and it is blocked the same way: frame 0x90 where the ROM has 0x80.
 * Measured on both clones: the local block responds to local BYTES in 8-byte
 * steps and does not respond to scalar locals at all (dropping `id`, dropping
 * `o`, `Vector sp[3]` as one array, and all declaration orders leave 0x90).
 * The gap between the saved-register area (ends 0x50 in both) and the start of
 * the locals is 0x18 for IDO and 0x0C for the ROM; func_80220B40_ovl19 in this
 * same file MATCHES with the identical three-Vector local set and a 4-byte gap,
 * so the gap is not a function of the locals alone -- the two blocked clones
 * are the ones that save six registers instead of three. */
#ifdef NON_MATCHING
void func_802211A0_ovl19(GObj *arg0) {
    s32 *p = (s32 *)((u32)&D_800D6F18);
    Vector pos;
    Vector angle;
    Vector scale;
    GObj *o;
    s32 id;
    s32 v;

    {
        D_800DEF90[omCurrentObj->objId] = NULL;
        setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
        D_800E98E0[omCurrentObj->objId] = 3;
        p[4] = 0;
        p[3] = -1;
        func_800F8E6C(arg0);
        while (1) {
            o = omCurrentObj;
            id = o->objId;
            if (D_800E98E0[id] != 0) {
                v = p[3];
                if (-1 != v) {
                    if (v == p[0]) {
                        p[4] |= 1;
                    } else if (v == p[1]) {
                        p[4] |= 2;
                    } else if (v == p[2]) {
                        p[4] |= 4;
                    }
                    p[3] = -1;
                    D_800E98E0[o->objId] -= 1;
                    if (D_800E98E0[o->objId] == 0) {
                        if (p[4] == 7) {
                            break;
                        }
                    }
                }
            } else {
                func_800B1900((u16) id);
            }
            ohSleep(1);
        }
        gEntitiesNextPosYArray[o->objId] = 160.0f;
        if (D_800D6E30[D_800BE508] == 0) {
            play_sound(0x112);
            func_800A7F74(3, 0, 0xCE, gEntitiesNextPosXArray[omCurrentObj->objId],
                          gEntitiesNextPosYArray[omCurrentObj->objId],
                          gEntitiesNextPosZArray[omCurrentObj->objId]);
            ohSleep(0x12);
            pos.x = 0.0f;
            pos.y = gEntitiesNextPosYArray[omCurrentObj->objId];
            pos.z = 0.0f;
            angle.x = 0.0f;
            angle.y = 0.0f;
            angle.z = 0.0f;
            scale.x = 1.0f;
            scale.y = 1.0f;
            scale.z = 1.0f;
            play_sound(0x1FC);
            func_800FCD14(0xFF, D_800E5F90[omCurrentObj->objId], D_800E6BD0[omCurrentObj->objId],
                          3, 7, 2, 0, 0, 0x35, &pos, &angle, &scale);
        }
    }
    func_800B1900((u16) omCurrentObj->objId);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_802211A0_ovl19.s")
#endif

Vector D_8022F0F8_ovl19 = {-100, 0, 100};

// likely the same array and uses [i] and [i + 1]
u32 D_8022F104_ovl19 = 0x0002007A;
u32 D_8022F108_ovl19[] = {
                0x000203F5,
    0x0002007D, 0x000203FB,
    0x0002007B, 0x000203F7,
    0x00020080, 0x00020401,
    0x0002007F, 0x000203FF,
    0x0002007C, 0x000203F9,
    0x0002007E, 0x000203FD,
};
// the same rabbit hole as func_80220280_ovl19
extern s32 D_800D6F10;

void func_80221480_ovl19(GObj *arg0) {
    func_8021E184_ovl19();
    gEntitiesNextPosXArray[omCurrentObj->objId] = (&D_8022F0F8_ovl19.x)[D_800EC2E0[omCurrentObj->objId].as_s32];
    gEntitiesNextPosYArray[omCurrentObj->objId] = 110.0f;
    gEntitiesNextPosZArray[omCurrentObj->objId] = -100.0f;
    func_800A9864(*(u32 *) ((u8 *) &D_8022F104_ovl19 + (&D_800D6F10)[D_800EC2E0[omCurrentObj->objId].as_s32 + 2] * 8), 0x1869F, 0x10);
    func_800AA018(*(u32 *) ((u8 *) D_8022F108_ovl19 + (&D_800D6F10)[D_800EC2E0[omCurrentObj->objId].as_s32 + 2] * 8));
    curObjSleepForever();
}

void func_8022159C_ovl19(GObj *g) {
    D_800DEF90[omCurrentObj->objId] = NULL;
    D_800DF150[omCurrentObj->objId] = func_80221654_ovl19;
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    func_800A9864(0x20071, 0x1869F, 0x10);
    curObjSleepForever();
}

void func_80221654_ovl19(struct GObj *arg0) {
    Vector sp1C;

    func_800B2340(&sp1C, D_800DFBD0[D_800E0D50[omCurrentObj->objId]][1], D_800E0D50[omCurrentObj->objId]);
    gEntitiesNextPosXArray[omCurrentObj->objId] = sp1C.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesNextPosZArray[omCurrentObj->objId] = sp1C.z;
}

void func_8022170C_ovl19(GObj *arg0) {
    static FUNCLIST D_8022F13C_ovl19 = {
        func_80221750_ovl19,
        func_80221CA8_ovl19,
    };
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], ARRAY_COUNT(D_8022F13C_ovl19), D_8022F13C_ovl19);
}

void func_80221750_ovl19(struct GObj *arg0) {
    func_8021E184_ovl19();
    D_800DEF90[omCurrentObj->objId] = func_8021EA20_ovl19;
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    func_800A9864(0x20060, 0x1869F, 0x10);
    func_8021E2D0_ovl19(6, 1);
    D_800DF150[omCurrentObj->objId] = func_80221928_ovl19;
    while (TRUE) {
        D_800E9E20[omCurrentObj->objId] = 0;
        func_800AA018(0x202E2);

        // loads from s1 instead of through an immediate
        func_800AA864(0x202E1, (u32)1.);
        D_800E9E20[omCurrentObj->objId] = 1;
        func_80221BC8_ovl19();
        while (D_800E9E20[omCurrentObj->objId] == 1) {
            ohSleep(1);
        }
        func_800AA018(0x202E4);
        func_800AA864(0x202E3, 1U);
    }
}

void func_80221928_ovl19(GObj *arg0) {
    switch (D_800E9E20[omCurrentObj->objId]) {
        case 0:
            func_80221A74_ovl19();
            break;
        case 1:
            if ((D_800E4C50[omCurrentObj->objId] >= 0.0f) && (gEntitiesAngleYArray[omCurrentObj->objId] >= 6.213372f)) {
                D_800E4C50[omCurrentObj->objId] = 0.0f;
                gEntitiesAngleYArray[omCurrentObj->objId] = D_800E4C50[omCurrentObj->objId];
                D_800E9E20[omCurrentObj->objId] = 2;
            }
            if ((D_800E4C50[omCurrentObj->objId] < 0.0f) && (gEntitiesAngleYArray[omCurrentObj->objId] <= 0.06981317f)) {
                D_800E4C50[omCurrentObj->objId] = 0.0f;
                gEntitiesAngleYArray[omCurrentObj->objId] = D_800E4C50[omCurrentObj->objId];
                D_800E9E20[omCurrentObj->objId] = 2;
            }
            break;
    }
}

#ifdef NON_MATCHING
void func_80221A74_ovl19() {
    Vector sp34;
    Vector sp28;
    f32 angleDiff;

    sp34.y = 0.0f; sp34.x = 0.0f; sp34.z = 2.0f;
    lbvector_Rotate(&sp34, AXIS_Y, gEntitiesAngleYArray[omCurrentObj->objId]);
    sp28.x = gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[omCurrentObj->objId];
    sp28.y = gEntitiesNextPosZArray[0] - gEntitiesNextPosZArray[omCurrentObj->objId];
    sp28.z = 0.0f;
    angleDiff = vec3_abs_angle_diff(&sp34, &sp28);
    if (ABSF(angleDiff) <= 0.06981317f) {
        D_800E4C50[omCurrentObj->objId] = 0.0f;
    } else {
        D_800E4C50[omCurrentObj->objId] = ((angleDiff < 0.0f) ? -1 : 1) * 0.06981317f;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_80221A74_ovl19.s")
#endif

void func_80221BC8_ovl19(void) {
    if ((gEntitiesAngleYArray[omCurrentObj->objId] <= 0.06981317f) || (gEntitiesAngleYArray[omCurrentObj->objId] >= 6.213372f)) {
        D_800E4C50[omCurrentObj->objId] = 0.0f;
        gEntitiesAngleYArray[omCurrentObj->objId] = D_800E4C50[omCurrentObj->objId];
        D_800E9E20[omCurrentObj->objId] = 2;
    } else if (gEntitiesAngleYArray[omCurrentObj->objId] >= M_PIF) {
        D_800E4C50[omCurrentObj->objId] = 0.06981317f;
    } else {
        D_800E4C50[omCurrentObj->objId] = -0.06981317f;
    }
}

void func_80221CA8_ovl19(struct GObj *arg0) {
    f32 temp_f0;

    temp_f0 = 0.2f;
    D_800DEF90[omCurrentObj->objId] = NULL;
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]] + 0.5f;
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesScaleXArray[omCurrentObj->objId] = temp_f0;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp_f0;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp_f0;
    func_800A9864(0x20071, 0x1869F, 0x10, D_800E0D50);
    curObjSleepForever();
}

void func_80221DDC_ovl19(GObj *arg0) {
    static FUNCLIST D_8022F144_ovl19 = {
        func_80221E20_ovl19,
        func_80222108_ovl19,
    };
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], ARRAY_COUNT(D_8022F144_ovl19), D_8022F144_ovl19);
}

void func_80221E20_ovl19(UNUSED struct GObj *arg0) {
    f32 temp_f0;

    func_8021DFD0_ovl19();
    temp_f0 = 0.2f;
    D_800DF150[omCurrentObj->objId] = &func_80222038_ovl19;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp_f0;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp_f0;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp_f0;
    func_800A9864(0x2006C, 0x1869F, 0x10);
    D_800E8060[omCurrentObj->objId] = 0;
    func_800AA018(0x203C1);
    while (D_800E8060[omCurrentObj->objId] != 1) {
        ohSleep(1);
    }
    func_8021E2D0_ovl19(7, 1);
    func_800AA018(0x203C0);
    D_800DF310[omCurrentObj->objId] = &func_80221FC8_ovl19;
    func_800AF27C();
    func_800F753C();
    func_800AFBB4(0, omCurrentObj);
    while (gKirbyState.unk30 == 0) {
        ohSleep(1);
    }
    func_800B1900((u16) omCurrentObj->objId);
}

void func_80221FC8_ovl19(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 == 1.0f) {
            func_800FB914(2);
        } else if (arg2 == 2.0f) {
            func_800FB914(1);
        }
    }
}

void func_80222038_ovl19(GObj *arg0) {
    if (D_800E5F90[0] == 6) {
        D_800E0D50[0] = omCurrentObj->objId;
        gKirbyState.unk17 = 1;
        gKirbyState.abilityState = 0x50;
        gKirbyState.unk68 = 1;
        if (D_800E6A10[0] == -1.0f) {
            if (gKirbyState.isTurning & 1) {
                gKirbyState.turnDirection = 0;
            } else {
                gKirbyState.isTurning |= 1;
            }
        } else {
            gKirbyState.isTurning &= ~1;
        }
        play_sound(SOUND__B4_START);
        D_800DF150[omCurrentObj->objId] = NULL;
    }
}

void func_80222108_ovl19(GObj *g) {
    struct UnkStruct8022FAB0 *tmp;

    func_8021E184_ovl19();
    tmp = func_800FF144();
    D_8022FAB0 = tmp;
    if (tmp != NULL) {
        D_8022FAB0->unk10 = 24.0f;
        D_8022FAB0->unk14 = 20.0f;
        D_8022FAB0->unk18 = -240.0f;
        D_8022FAB0->unk21 = 1;
    }
    D_800DEF90[omCurrentObj->objId] = func_800B5064;
    D_800E0F10[omCurrentObj->objId] = 1;
    gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[D_800E0D50[omCurrentObj->objId]];
    D_800DF150[omCurrentObj->objId] = func_802222F0_ovl19;
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    func_800A9864(0x2006B, 0x1869F, 0x10, gEntitiesAngleYArray);
    D_800E98E0[omCurrentObj->objId] = 0;
    func_801230E8(0x203AC, 0x203AD, 1);
    D_800E98E0[omCurrentObj->objId] = 1;
    D_800DEF90[omCurrentObj->objId] = func_800B4924;
    D_800DFBD0[omCurrentObj->objId][8]->angle.v.z = 0.0f;
    curObjSleepForever();
}

// i suspect its that if/else block
void func_802222F0_ovl19(GObj *arg0) {
    Vector sp34;
    Vector sp28;
    f32 var_f12;

    if (D_800E98E0[omCurrentObj->objId] != 0) {
        sp34.y = 0.0f;
        sp34.x = 0.0f;
        sp34.z = 1.0f;
        sp28.x = gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[omCurrentObj->objId];
        sp28.y = 0.0f;
        sp28.z = gEntitiesNextPosZArray[0] - gEntitiesNextPosZArray[omCurrentObj->objId];
        var_f12 = vec3_abs_angle_diff(&sp34, &sp28) * 0.6f;
        if (var_f12 < 0.0f) {
            if (var_f12 < -0.7853982f) {
                var_f12 = -0.7853982f;
            }
        } else {
            if (var_f12 > 0.7853982f) {
                var_f12 = 0.7853982f;
            }
        }
        D_800DFBD0[omCurrentObj->objId][8]->angle.v.y = var_f12;
        D_800DFBD0[omCurrentObj->objId][8]->pos.v.x = 30.0f * var_f12;
    }
    D_8022FAB0_ovl19->unk4 = gEntitiesNextPosXArray[omCurrentObj->objId];
    D_8022FAB0_ovl19->unk8 = gEntitiesNextPosYArray[omCurrentObj->objId];
    D_8022FAB0_ovl19->unkC = gEntitiesNextPosZArray[omCurrentObj->objId];
}

void func_802224BC_ovl19(GObj *arg0) {
    static FUNCLIST D_8022F14C_ovl19 = {
        func_802225A4_ovl19,
        func_802227F0_ovl19,
        func_80222918_ovl19,
    };
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], ARRAY_COUNT(D_8022F14C_ovl19), D_8022F14C_ovl19);
}

void func_80222500_ovl19(void) {
    struct DObj *node = D_800DFBD0[omCurrentObj->objId][1];
    Vector sp38;
    Vector sp2C;
    Vector sp20;

    sp38.x = 0.0f;
    sp38.y = 0.0f;
    sp38.z = 2.0f;
    // applies 
    func_800B2340(&sp20, node, omCurrentObj->objId);
    sp2C.x = gEntitiesNextPosXArray[0] - sp20.x;
    sp2C.y = 0.0f;
    sp2C.z = gEntitiesNextPosZArray[0] - sp20.z;
    node->angle.v.y = vec3_abs_angle_diff(&sp38, &sp2C);
}

void func_802225A4_ovl19(struct GObj *arg0) {
    f32 temp_f0;

    func_8021E184_ovl19();
    temp_f0 = 0.2f;
    D_800DEF90[omCurrentObj->objId] = func_8021EA20_ovl19;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp_f0;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp_f0;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp_f0;
    func_800AF980(0x18);
    func_800A9864(0x20068, 0x1869F, 0x10);
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DF150[omCurrentObj->objId] = func_802226FC_ovl19;
    func_800AA018(0x2035F);
    while (D_800E9E20[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    play_sound(0x258);
    func_800AA018(0x20360);
    curObjSleepForever();
}

void func_802226FC_ovl19(struct GObj *arg0) {
    f32 dz;
    f32 dy;
    f32 dx;

    if (D_800E9E20[omCurrentObj->objId] == 0) {
        dz = gEntitiesNextPosZArray[0] - gEntitiesNextPosZArray[omCurrentObj->objId];
        dy = gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[omCurrentObj->objId];
        dx = (gEntitiesNextPosYArray[0] + 20.0f) - gEntitiesNextPosYArray[omCurrentObj->objId];
        if (((dz * dz) + ((dy * dy) + (dx * dx))) < 102400.0f) {
            func_8021E2D0_ovl19(9, 1);
            func_8021E2D0_ovl19(9, 2);
            D_800E9E20[omCurrentObj->objId] = 1;
        }
    }
}

void func_802227F0_ovl19(struct GObj *arg0) {
    f32 temp_f0;

    func_8021E184_ovl19();
    temp_f0 = 0.2f;
    D_800DEF90[omCurrentObj->objId] = func_8021EA20_ovl19;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp_f0;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp_f0;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp_f0;
    func_800AF980(0x18);
    func_800A9864(0x20060, 0x1869F, 0x10);
    D_800DF150[omCurrentObj->objId] = func_802228F8_ovl19;
    func_800AA018(0x202DE);
    func_800AA864(0x202DD, 1);
    func_800AA018(0x202E0);
    func_800AA018(0x202DF);
    curObjSleepForever();
}

void func_802228F8_ovl19(struct GObj *arg0) {
    func_80222500_ovl19();
}

void func_80222918_ovl19(struct GObj *arg0) {
    f32 temp_f0;

    temp_f0 = 0.2f;
    D_800DEF90[omCurrentObj->objId] = NULL;
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]] + 0.5f;
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesScaleXArray[omCurrentObj->objId] = temp_f0;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp_f0;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp_f0;
    func_800AF980(0x18, D_800E0D50, gEntitiesNextPosXArray, gEntitiesNextPosYArray);
    func_800A9864(0x20071, 0x1869F, 0x10);
    curObjSleepForever();
}

void func_80222A54_ovl19(s32 arg0) {
    static FUNCLIST D_8022F158_ovl19 = {
        func_80222A98_ovl19,
        func_80222E3C_ovl19,
        func_80223020_ovl19,
    };
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], ARRAY_COUNT(D_8022F158_ovl19), &D_8022F158_ovl19);
}

void func_80222A98_ovl19(GObj* arg0) {
    f32 temp_f0 = 0.2f;
    struct UnkStruct8022FAB0 *tmp;

    func_8021E184_ovl19();
    tmp = func_800FF144();
    D_8022FAB0 = tmp;
    if (tmp != NULL) {
        D_8022FAB0->unk10 = 24.0f;
        D_8022FAB0->unk14 = 20.0f;
        D_8022FAB0->unk18 = -240.0f;
        D_8022FAB0->unk21 = 1;
    }
    D_800DEF90[omCurrentObj->objId] = func_8021E894_ovl19;
    D_800DF150[omCurrentObj->objId] = func_80222CE0_ovl19;
    gEntitiesAngleYArray[omCurrentObj->objId] = 1.5707964f;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp_f0;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp_f0;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp_f0;
    func_800A9864(0x2006B, 0x1869F, 16);
    D_800EBBE0[omCurrentObj->objId] = func_8021E2D0_ovl19(10, 1);
    D_800EBDA0[omCurrentObj->objId] = func_8021E2D0_ovl19(10, 2);
    D_800E8060[omCurrentObj->objId] = 0;
    func_801230E8(0x203B4, 0x203B5, 0);
    while (D_800E8060[omCurrentObj->objId] == 0) ohSleep(1);
    while (D_800E8060[omCurrentObj->objId] == 1) ohSleep(1);
    func_801230E8(0x203B6, 0x203B7, 0);
    curObjSleepForever();
}

void func_80222CE0_ovl19(GObj *arg0) {
    Vector sp24;

    if ((D_800E8060[omCurrentObj->objId] == 0) && (D_800E5F90[0] == 5)) {
        gKirbyState.unk17 = 1;
        gKirbyState.abilityState = 0x51;
        D_800E0D50[0] = omCurrentObj->objId;
        D_800E8060[omCurrentObj->objId] = 1;
        gKirbyState.unk68 = 1;
        if (*D_800E6A10 == -1.0f) {
            if (gKirbyState.isTurning & 1) {
                gKirbyState.turnDirection = 0;
            } else {
                gKirbyState.isTurning |= 1;
            }
        } else {
            gKirbyState.isTurning &= ~1;
        }
    }
    func_800B2340(&sp24, D_800DFBD0[omCurrentObj->objId][1], 0xFFFF);
    D_8022FAB0_ovl19->unk4 = sp24.x;
    D_8022FAB0_ovl19->unk8 = gEntitiesNextPosYArray[omCurrentObj->objId] + 0.5f;
    D_8022FAB0_ovl19->unkC = sp24.z;
}

void func_80222E3C_ovl19(struct GObj *arg0) {
    f32 temp_f0;

    func_8021E184_ovl19();
    temp_f0 = 0.2f;
    D_800DEF90[omCurrentObj->objId] = func_8021EA20_ovl19;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp_f0;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp_f0;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp_f0;
    func_800A9864(0x2006D, 0x1869F, 0x10);
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]] + 160.0f;
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[D_800E0D50[omCurrentObj->objId]] - 160.0f;
    func_800AA018(0x203C2);
    while (D_800E8060[D_800E0D50[omCurrentObj->objId]] != 2) {
        ohSleep(1);
    }
    func_800AA018(0x203C3);
    curObjSleepForever();
}

void func_80223020_ovl19(struct GObj *arg0) {
    f32 temp_f0;

    func_8021E184_ovl19();
    temp_f0 = 0.2f;
    D_800DEF90[omCurrentObj->objId] = func_8021EA20_ovl19;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp_f0;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp_f0;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp_f0;
    func_800A9864(0x2006E, 0x1869F, 0x10);
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[D_800E0D50[omCurrentObj->objId]];
    func_800AA018(0x203C4);
    while (D_800E8060[D_800E0D50[omCurrentObj->objId]] != 2) {
        ohSleep(1);
    }
    func_800AA018(0x203C5);
    curObjSleepForever();
}
