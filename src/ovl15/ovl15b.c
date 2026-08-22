/* Second translation unit of ovl15.c.
 *
 * func_801E27BC_ovl15 ends at +0x7D6C from ovl15.c's base and its listing
 * carries five nops up to +0x7D80 -- 32-byte alignment, which IDO never emits
 * between two functions of one object, so the `c` subsegment was really two
 * TUs split here. The ROM's .rodata says the same: two zero words at
 * 0x801E68D8 pad TU1's block (which ends with func_801E27BC_ovl15's own
 * jtbl_801E68C4_ovl15) up to 0x801E68E0. kirby64.yaml carries the 0x10 text
 * residue as a `pad`. See AGENT_GUIDE.md, "THE MID-TU PADDING TRAP CLASS IS
 * NOT A TRAP". */

#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "DObj.h"
#include "sounds.h"
#include "main/lbvector.h"
#include "main/object_helpers.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/track.h"
#include "ovl1/util.h"
#include "ovl2/ovl2_3.h"
#include "ovl2/ovl2_8.h"
#include "unk_structs/D_800D7098.h"
#include "unk_structs/D_800DE350.h"
#include "unk_structs/D_800E1B50.h"
#include "unk_structs/D_80129114.h"
#include "buffers.h"

#include "ovl15.h"
#include "main/math.h"

void func_801E1C20_ovl15(s32);
void func_801E1E88_ovl15(struct GObj *);
void func_801DF410_ovl15(struct GObj *);
void func_801DDD74_ovl15(struct GObj *);
/* -6e+03f = -6e+03f : now emitted by this TU */
/* 65535.0f = 65535.0f : now emitted by this TU */
/* 3.1f = 3.1f : now emitted by this TU */
/* 65535.0f = 65535.0f : now emitted by this TU */
/* 0.10471976f = 0.10471976f : now emitted by this TU */
extern s32 D_801E6544_ovl15[];
extern s32 D_801E654C_ovl15[];
extern s32 D_801D8C7C;
extern s32 D_801D8CA0;
extern s32 D_801D8CC4;
extern s32 D_801D8CE8;
extern s32 D_801D8E98;
extern s32 D_801D90D8;
extern s32 D_801D92AC;
extern s32 D_801D90FC;
extern s32 D_801D9120;
extern s32 D_801D92D0;

struct Ovl15Color {
    u8 r;
    u8 g;
    u8 b;
    u8 a;
};

struct Ovl15MObj {
    struct Ovl15MObj *next;
    u8 filler4[0x54];
    struct Ovl15Color primColor;
    u8 filler5C[4];
    struct Ovl15Color envColor;
};

struct Ovl15DObj {
    u8 filler0[0x80];
    struct Ovl15MObj *mobjList;
};

extern s32 D_800BE4EC;
extern s32 D_800D6B54;
extern s32 D_800D7088;
extern s32 D_80129210;
extern Vector D_801292B0;
extern s32 D_801D7B60;
extern s32 D_801D7BC4;
extern s32 D_801D7C04;
extern s32 D_801D7C48;
extern s32 D_801D7C8C;
extern s32 D_801D8ACC;
extern s32 D_801D8AF0;
extern s32 D_801D8B14;
extern s32 D_801D8B38;
extern s32 D_801D8B5C;
extern s32 D_801D8B80;
extern s32 D_801D8DC0;
extern s32 D_801D8E08;
extern s32 D_801D8F70;
extern s32 D_801D8F94;
extern s32 D_801D8FB8;
extern s32 D_801D8FDC;
extern s32 D_801D906C;
extern s32 D_801D921C;
extern s32 D_801DA04C;
extern s32 D_801DA070;
extern s32 D_801DA0B8;
extern s32 D_801DA0DC;
extern s32 D_801DAF3C;
extern s32 D_801E64F0_ovl15[];
extern s32 D_801E6500_ovl15[];
extern s32 D_801E6508_ovl15;
extern s32 D_801E6520_ovl15[];
extern s32 D_801E6554_ovl15;
extern u8 D_801E65B4_ovl15[];
extern s32 D_801E65EC_ovl15[];
extern s32 D_801E65FC_ovl15[];
extern s32 D_801E6614_ovl15[];
extern u8 D_801E664C_ovl15[];
extern s32 D_801E665C_ovl15;
extern s32 D_801E6670_ovl15[];
extern s32 D_801E6680_ovl15[];
extern s32 D_801E6690_ovl15[];
extern s32 D_801E66C4_ovl15[];
extern s32 D_801E66F4_ovl15[];
extern s32 D_801E6714_ovl15[];
extern s32 D_801E6724_ovl15[];
extern s32 D_801E6734_ovl15[];
extern s32 D_801E6744_ovl15[];
extern s32 D_801E6754_ovl15[];
extern s32 D_801E6764_ovl15[];
extern s32 D_801E6774_ovl15[];
extern s32 D_801E6910_ovl15;
void func_800A1F30(void *);
s32 func_800A8100(s32, s32, s32, struct DObj *);
s32 func_800A8234(s32, s32, s32);
void func_800A9760(s32);
/* K&R form is load-bearing here: this TU's own guarded PORT draft
 * (func_801E56CC_ovl15) calls this with 1, 2, and 4 args against a real
 * 1-arg (s32) signature; an ANSI prototype breaks the Makefile.pc compile
 * with "too many arguments" on the 2- and 4-arg calls. */
void func_800A9EA4();
void func_800AA038(s32, f32, s32);
void func_800AA0C4(s32, f32);
void func_800AEDD0(f32, s32);
s32 func_800AF230(void);
void func_800B1814(GObj *);
void func_800B4924(GObj *);
void func_800B7138(GObj *);
void func_800B7790(GObj *);
void func_800F8E6C(GObj *);
void func_800FA414(s32);
void func_800FBF18(s32);
s32 func_80110B00(void *);
s32 func_80110FD4(void *);
void func_801129AC(void);
void func_801129DC(void);
void func_80169430_ovl3(s32, s32, u8, s32);
/* K&R form is load-bearing here: this TU's own guarded PORT draft
 * (func_801E56CC_ovl15) calls this with 1 and 2 args against a real 1-arg
 * (void *) signature; an ANSI prototype breaks the Makefile.pc compile with
 * "too many arguments" on the 2-arg call. */
void func_80198880_ovl7();
s32 func_8019B918_ovl7(void);
void func_8019B9B0_ovl7(void);
void func_8019BA3C_ovl7(void);
void func_8019EEE4_ovl7(void *);
void func_8019F1EC_ovl7(void);
void func_801A2ADC_ovl7(void *);
s32 func_801AC9D0_ovl7(s32, s32);
s32 func_801ACCA0_ovl7(s32, s32, f32, f32);
s32 func_801BC794_ovl7(s32);
void func_801DB400_ovl15(s32);
void func_801DB770_ovl15(s32);
void func_801DBE20_ovl15(s32);
void func_801DBEAC_ovl15(s32);
void func_801DC13C_ovl15(s32);
void func_801DC594_ovl15(struct GObj *);
void func_801DC890_ovl15(struct GObj *);
void func_801DCB64_ovl15(s32);
void func_801DCDA8_ovl15(s32);
void func_801DD03C_ovl15(s32);
void func_801DD318_ovl15(struct GObj *);
void func_801DD7C8_ovl15(struct GObj *);
void func_801DD950_ovl15(s32);
void func_801DDBA8_ovl15(struct GObj *);
void func_801DDE90_ovl15(s32);
void func_801DE234_ovl15(struct GObj *);
void func_801DE7C8_ovl15(struct GObj *);
void func_801DEA98_ovl15(struct GObj *);
void func_801DF52C_ovl15(struct GObj *);
void func_801DF790_ovl15(struct GObj *);
void func_801DFCF4_ovl15(struct GObj *);
void func_801E00C4_ovl15(GObj *);
void func_801E0380_ovl15(struct GObj *);
void func_801E05A8_ovl15(struct GObj *);
void func_801E0F44_ovl15(struct GObj *);
void func_801E1230_ovl15(s32);
void func_801E1F34_ovl15(void);
void func_801E27BC_ovl15(struct GObj *);
void func_801E30F8_ovl15(struct GObj *);
void func_801E3678_ovl15(struct GObj *);
void func_801E3B58_ovl15(struct GObj *);
void func_801E3ED4_ovl15(struct GObj *);
void func_801E48E4_ovl15(struct GObj *);
void func_801E5080_ovl15(GObj *);
void func_801E531C_ovl15(struct GObj *);
void func_801E56CC_ovl15(GObj *);
void func_801E5C34_ovl15(struct GObj *);
void func_801E5D54_ovl15(s32, f32);

void func_801E2F60_ovl15(struct GObj *arg0) {
    func_801A3280_ovl7();
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 4, D_801E66B0_ovl15);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, D_801E66C0_ovl15);
    }
}

void func_801E2FF8_ovl15(struct GObj *arg0) {
    D_800E6A10[omCurrentObj->objId] = -1.0f;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801E3038_ovl15(struct GObj *arg0) {
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801E3078_ovl15(struct GObj *arg0) {
    D_800E6A10[omCurrentObj->objId] = -1.0f;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801E30B8_ovl15(struct GObj *arg0) {
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15b/func_801E30F8_ovl15.s")

void func_801E3404_ovl15(s32 arg0) {
    if (D_800E3050[omCurrentObj->objId] != 0.0f) {
        D_800DFBD0[omCurrentObj->objId][1]->angle.v.z += 0.10471976f * -D_800E6A10[omCurrentObj->objId];
    }
    if ((D_800E3210[omCurrentObj->objId] <= 0.0f) && (gEntitiesNextPosYArray[omCurrentObj->objId] < 16.0f)) {
        gEntitiesNextPosYArray[omCurrentObj->objId] = 16.0f;
        D_800E8920[omCurrentObj->objId] = 1;
    }
    func_801A03B4_ovl7(omCurrentObj);
}

void func_801E34FC_ovl15(struct GObj *arg0) {
    D_800E9560[omCurrentObj->objId] = 0;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 4, D_801E66D4_ovl15);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, D_801E66E4_ovl15);
    }
}

void func_801E35B8_ovl15(struct GObj *arg0) {
    D_800E9560[omCurrentObj->objId] = 0;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 4, D_801E66D4_ovl15);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, D_801E66E4_ovl15);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15b/func_801E3678_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15b/func_801E3B58_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15b/func_801E3ED4_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15b/func_801E48E4_ovl15.s")

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
void func_801E5080_ovl15(GObj *arg0) {
    u32 temp_v1;
    u32 temp_v1_2;

    func_8019BA3C_ovl7();
    D_800DEF90[omCurrentObj->objId] = func_800B7790;
    D_800DF150[omCurrentObj->objId] = func_801E531C_ovl15;
    D_800E8920[omCurrentObj->objId] = 0;
    gEntitiesAngleYArray[omCurrentObj->objId] = -1.5707964f;
    temp_v1 = omCurrentObj->objId;
    D_800E17D0[temp_v1] = D_800E17D0[D_800E0D50[temp_v1]];
    D_800E9020[omCurrentObj->objId] = 0.0f;
    func_800B33F4();
    func_800A9864(0x10092, 0x2A, 0x10);
    func_800AA018(0x1053A);
    D_800E3210[omCurrentObj->objId] = -10.0f;
    if (gEntitiesNextPosYArray[omCurrentObj->objId] > 40.0f) {
        do {
            ohSleep(1);
        } while (gEntitiesNextPosYArray[omCurrentObj->objId] > 40.0f);
    }
    play_sound(0x19B);
    func_800AA018(0x10539);
    gEntitiesNextPosYArray[omCurrentObj->objId] = 40.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    temp_v1_2 = omCurrentObj->objId;
    D_800E3210[temp_v1_2] = D_800E3750[temp_v1_2];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    D_800E3050[omCurrentObj->objId] = 0.0f;
    D_800E3590[omCurrentObj->objId] = -0.5f;
    D_800E3AD0[omCurrentObj->objId] = 16.0f;
    func_800AF27C();
    func_800AA018(0x10538);
    ohSleep(0x4B);
    D_800E1B50[omCurrentObj->objId]->unk94 = (struct Sub800E1B50_Unk94 *) &D_801D7BC4;
    func_801ACF84_ovl7(arg0);
}
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15b/func_801E5080_ovl15.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15b/func_801E531C_ovl15.s")

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
void func_801E56CC_ovl15(GObj *arg0) {
    GObj *temp_v1;
    GObj *temp_v1_2;
    f32 *var_v0;
    s32 *temp_v0;
    s32 *temp_v0_2;
    s32 temp_a0;
    s32 temp_s1;
    s32 var_a1;
    s32 var_a1_2;
    u32 temp_a1;
    u32 temp_a1_2;
    u32 temp_a1_3;
    u32 temp_a1_4;
    u32 temp_a1_5;
    u32 temp_a1_6;
    u32 temp_a1_7;
    u32 temp_a1_8;
    u32 temp_a1_9;

    temp_s1 = D_800E0D50[omCurrentObj->objId];
    func_8019BA3C_ovl7();
    D_800DEF90[omCurrentObj->objId] = func_800B7790;
    D_800DF150[omCurrentObj->objId] = func_801E5C34_ovl15;
    func_80198880_ovl7(&D_801D7C04);
    D_800E8920[omCurrentObj->objId] = 0;
    gEntitiesAngleYArray[omCurrentObj->objId] = -1.5707964f;
    temp_a1 = omCurrentObj->objId;
    D_800E17D0[temp_a1] = D_800E17D0[D_800E0D50[temp_a1]];
    D_800E9020[omCurrentObj->objId] = 0.0f;
    func_800B33F4();
    gEntitiesNextPosXArray[omCurrentObj->objId] = D_800EA6E0[temp_s1];
    gEntitiesNextPosYArray[omCurrentObj->objId] = D_800EA8A0[temp_s1];
    gEntitiesNextPosZArray[omCurrentObj->objId] = D_800EAA60[temp_s1];
    D_800E3050[omCurrentObj->objId] = D_800EAC20[temp_s1];
    D_800E3590[omCurrentObj->objId] = D_800EADE0[temp_s1];
    D_800E3210[omCurrentObj->objId] = D_800EAFA0[temp_s1];
    D_800E0D50[omCurrentObj->objId] = (s32) D_800D7098.unk30;
    func_800A9864(0x10092, 0x2A, 0x10);
    func_800AA018(0x10537);
    temp_v1 = omCurrentObj;
    temp_a1_2 = temp_v1->objId;
    var_v0 = &gEntitiesNextPosYArray[temp_a1_2];
    if (*var_v0 > 40.0f) {
        D_800E3590[temp_a1_2] = 0.0f;
        temp_a1_3 = temp_v1->objId;
        D_800E3050[temp_a1_3] = D_800E3590[temp_a1_3];
        D_800E3AD0[temp_v1->objId] = 65535.0f;
        D_800E3210[temp_v1->objId] = -10.0f;
        var_v0 = &gEntitiesNextPosYArray[temp_v1->objId];
        if (*var_v0 > 40.0f) {
            do {
                ohSleep(1);
                var_v0 = &gEntitiesNextPosYArray[omCurrentObj->objId];
            } while (*var_v0 > 40.0f);
        }
    }
    *var_v0 = 40.0f;
    D_800E3750[temp_v1->objId] = 0.0f;
    temp_a1_4 = temp_v1->objId;
    D_800E3210[temp_a1_4] = D_800E3750[temp_a1_4];
    D_800E3C90[temp_v1->objId] = 65535.0f;
    D_800E3590[temp_v1->objId] = -0.5f;
    D_800E3AD0[temp_v1->objId] = 16.0f;
    func_800A9EA4(0x10537, temp_a1_4 * 4, D_800E3750, D_800E3590);
    temp_v1_2 = omCurrentObj;
    D_800E98E0[temp_v1_2->objId] = 0x1E0;
    temp_a1_5 = temp_v1_2->objId;
    var_a1 = temp_a1_5 * 4;
    if (D_800E98E0[temp_a1_5] > 0) {
loop_4:
        if (*(D_800E83E0 + var_a1) != 0xA) {
            ohSleep(1);
            temp_v0 = &D_800E98E0[omCurrentObj->objId];
            *temp_v0 -= 1;
            temp_a1_6 = omCurrentObj->objId;
            var_a1 = temp_a1_6 * 4;
            if (D_800E98E0[temp_a1_6] > 0) {
                goto loop_4;
            }
        }
    }
    *(D_800E3590 + var_a1) = 0.0f;
    temp_a1_7 = temp_v1_2->objId;
    D_800E3050[temp_a1_7] = D_800E3590[temp_a1_7];
    func_800A9EA4(0x10536, temp_a1_7 * 4);
    temp_a1_8 = omCurrentObj->objId;
    var_a1_2 = temp_a1_8 * 4;
    if (D_800E98E0[temp_a1_8] > 0) {
loop_7:
        if (*(D_800E83E0 + var_a1_2) == 0xA) {
            ohSleep(1);
            temp_v0_2 = &D_800E98E0[omCurrentObj->objId];
            *temp_v0_2 -= 1;
            temp_a1_9 = omCurrentObj->objId;
            var_a1_2 = temp_a1_9 * 4;
            if (D_800E98E0[temp_a1_9] > 0) {
                goto loop_7;
            }
        }
    }
    func_80198880_ovl7(&D_801D7C48, var_a1_2);
    D_800E3590[omCurrentObj->objId] = -0.5f;
    D_800E3AD0[omCurrentObj->objId] = 16.0f;
    func_800A9EA4(0x10537);
    temp_a0 = D_800E98E0[omCurrentObj->objId];
    if (temp_a0 > 0) {
        ohSleep(temp_a0);
    }
    func_801ACF84_ovl7(arg0);
}
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15b/func_801E56CC_ovl15.s")
#endif

#ifdef NON_MATCHING
/* 39/72. Structure and the signed-% correction are right; the residue is the
   frame (0x40 vs 0x38) plus a one-slot integer rotation that follows from it.
   `r` is load-bearing: without its own local IDO range-propagates `x % 2 != 0`
   into a bare `andi` and drops the ROM's bgez/beqz/addiu -2 correction (52
   diffs). But a named scalar costs 8 bytes of frame and the ROM's 0x38 has no
   room for one, so the two requirements are in direct conflict. A `switch` on
   the modulo does not force the value either (also 52). */
void func_801E5C34_ovl15(struct GObj *arg0) {
    extern struct GObjProcess *gEntityGObjProcessArray[];
    s32 r;
    Vector sp2C;

    D_800E9560[omCurrentObj->objId]++;
    r = D_800E9560[omCurrentObj->objId] % 2;
    if (r != 0) {
        utilGetTransformSRT(&sp2C, D_800DFBD0[omCurrentObj->objId][5]);
        func_800A7F74(6, 2, 0xB, sp2C.x, sp2C.y, sp2C.z);
    }
    func_801A03E4_ovl7(D_800DFBD0[omCurrentObj->objId][2]);
    if (D_800D7118.unk3C == 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = -1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801ACF84_ovl7);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15b/func_801E5C34_ovl15.s")
#endif

struct Unk80111C88 *func_801A0464_ovl7(void);
void func_801A04B8_ovl7(void);

/* `t` is load-bearing: without a named local for sp1C->unk8C[2] IDO swaps the
 * two link registers ($v1 and $t1). It costs no frame word -- only sp1C is
 * live across the call and gets one. */
void func_801E5D54_ovl15(s32 arg0, f32 arg1) {
    struct UnkStruct800E1B50 *sp1C;
    struct Unk80111C88 *temp_v0;
    f32 temp;
    s32 *t;

    sp1C = D_800E1B50[omCurrentObj->objId];
    temp_v0 = func_801A0464_ovl7();
    t = (s32 *) sp1C->unk8C[2];
    if (t[1] == 0 && arg0 != 0) {
        temp_v0->unk24->unk8 = arg0;
        temp = 40.0f * arg1 - 10.0f;
        temp_v0->unk24->unk10 = temp;
        temp_v0->unk24->unk1C = -temp;
    }
    func_80111ECC(temp_v0);
    func_801A04B8_ovl7();
}
