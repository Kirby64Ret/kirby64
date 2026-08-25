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
void func_801E1F34_ovl15(struct GObj *);
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

void func_801E3404_ovl15(s32);
void func_801E30F8_ovl15(struct GObj *arg0) {
    func_8019B9B0_ovl7();
    D_800DEF90[omCurrentObj->objId] = func_800B7790;
    D_800DF150[omCurrentObj->objId] = func_801E3404_ovl15;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAF3C;
    func_800A9864(0x10090, 0x23, 0x10);
    D_800E8920[omCurrentObj->objId] = 1;
    func_800B33F4();
    switch (D_800E7880[omCurrentObj->objId]) {
    case 0:
    case 1:
        D_800E3050[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 30.0f;
        break;
    case 2:
    case 3:
        break;
    }
    ohSleep(1);
    func_800B33F4();
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E3050[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
    D_800E3210[omCurrentObj->objId] = *(f32 *) &D_801E66C4_ovl15[D_800E7880[omCurrentObj->objId]];
    D_800E3750[omCurrentObj->objId] = -0.8f;
    D_800E3C90[omCurrentObj->objId] = 8.0f;
    while (D_800E8920[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E3050[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] + D_800E6A10[omCurrentObj->objId];
    D_800E3210[omCurrentObj->objId] = 4.0f;
    D_800E3750[omCurrentObj->objId] = -0.4f;
    D_800E3C90[omCurrentObj->objId] = 8.0f;
    while (D_800E8920[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    func_800B33F4();
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    ohSleep(0x1E);
    func_801ACF84_ovl7(arg0);
}

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

/* `2.0` (a DOUBLE literal) rather than 2.0f for D_800E3750 is load-bearing:
 * written 2.0f, IDO shares the constant with the `+ 2.0f` in the wait loop far
 * below, hoists it into a third callee-saved FP register and grows the frame
 * 0x38 -> 0x40.  The double forks it (LEVERS lever 7) -- 294/312 -> 9/312. */
void func_801E3678_ovl15(struct GObj *arg0) {
    struct EnemyRecord *rec;

    rec = D_800E1B50[omCurrentObj->objId];
    D_800DEF90[omCurrentObj->objId] = func_800B7560;
    D_800DF150[omCurrentObj->objId] = func_801E3B58_ovl15;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801DA04C;
    func_800B33F4();
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800EA1A0[omCurrentObj->objId] = 0;
    D_800EA360[omCurrentObj->objId] = 0;
    func_800A9864(0x10091, 0x23, 0x10);
    func_800AA018(0x10534);
    while ((s32) D_800D7098.unk24 <= 0) {
        ohSleep(1);
    }
    D_800E98E0[omCurrentObj->objId] = 1;
    D_800E3750[omCurrentObj->objId] = 2.0;
    D_800E3C90[omCurrentObj->objId] = 80.0f;
    func_800AA018(0x10532);
    while (gEntitiesNextPosYArray[omCurrentObj->objId] < 800.0f) {
        ohSleep(1);
    }
    func_800B33F4();
    ohSleep((((s32 *) D_800E9AA0)[omCurrentObj->objId] * 8) + 1);
    gEntitiesNextPosYArray[omCurrentObj->objId] = 800.0f;
    D_800EA360[omCurrentObj->objId] = 1;
    gEntitiesNextPosXArray[omCurrentObj->objId] =
        gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]] +
        *(f32 *) &D_801E66F4_ovl15[D_800E9C60[omCurrentObj->objId]];
    gEntitiesNextPosZArray[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = -20.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3C90[omCurrentObj->objId] = 20.0f;
    func_8019B9B0_ovl7();
    rec->unk80->unk18 = -1000.0f;
    rec->unk80->unk10 = 1.0f;
    if (rec->unk80->unk10 < 25.0f) {
        do {
            ohSleep(1);
            rec->unk80->unk10 = rec->unk80->unk10 + 2.0f;
        } while (rec->unk80->unk10 < 25.0f);
    }
    rec->unk80->unk10 = 25.0f;
    while (40.0f < gEntitiesNextPosYArray[omCurrentObj->objId]) {
        ohSleep(1);
    }
    func_800B33F4();
    gEntitiesNextPosYArray[omCurrentObj->objId] = 30.0f;
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        D_800EA1A0[omCurrentObj->objId] = 1;
        play_sound(0x197);
        func_800AA0C4(0x1052F, 1.0f);
        D_800EA1A0[omCurrentObj->objId] = 0;
        gEntitiesNextPosYArray[omCurrentObj->objId] = 18.0f;
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801DA070;
        func_800AA018(0x10530);
        ohSleep(0x3C);
    }
    D_800E1B50[omCurrentObj->objId]->unk94 = &D_801D7B60;
    func_801ACF84_ovl7(arg0);
}

/* Derivation notes (this one closed; it was 97/222 for a long while):
 * - the modulo test is `(s32) (x % 2)`, cast and with no explicit `!= 0`.  See
 *   func_801E48E4_ovl15 below for why: `!= 0` lets IDO peephole the signed
 *   modulo into a bare `andi`, and the named `s32 r` that used to force the
 *   correction costs a reserved-and-never-written frame word the ROM does not
 *   have.  That word was the whole "one word short" cascade.
 * - the pi/two-pi pick must be a TERNARY (lever 39).  As an if/else IDO hoists
 *   the two arms' `addu $s0, $v0` base computations in the opposite order
 *   ($t9 before $t3; the ROM emits the else arm's first).
 * The `(s32)` on the DObj passed to func_801E5D54_ovl15 is that function's own
 * declared parameter type and the tree's sub-4GiB truncated-pointer convention
 * (it lands in a 4-byte Unk80111C88Inner.unk8 slot either way), so this needs
 * no PORT fork. */
void func_801E3B58_ovl15(struct GObj *arg0) {
    Vector sp3C;

    D_800E9560[omCurrentObj->objId]++;
    D_800DFBD0[omCurrentObj->objId][1]->pos.v.z = 0.0f;
    D_800DFBD0[omCurrentObj->objId][1]->pos.v.x = D_800DFBD0[omCurrentObj->objId][1]->pos.v.y =
        D_800DFBD0[omCurrentObj->objId][1]->pos.v.z;
    D_800DFBD0[omCurrentObj->objId][2]->pos.v.z = 0.0f;
    D_800DFBD0[omCurrentObj->objId][2]->pos.v.x = D_800DFBD0[omCurrentObj->objId][2]->pos.v.y =
        D_800DFBD0[omCurrentObj->objId][2]->pos.v.z;
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.x =
        (D_800EA360[omCurrentObj->objId] != 0) ? 3.141592741f : 6.283185482f;
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.z = 0.0f;
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.y = D_800DFBD0[omCurrentObj->objId][1]->angle.v.z;
    if (0.0f < D_800E3210[omCurrentObj->objId]) {
        utilGetTransformSRT(&sp3C, D_800DFBD0[omCurrentObj->objId][3]);
        func_800A7F74(6, 2, 0xB, sp3C.x, sp3C.y, sp3C.z);
    } else if ((s32) (D_800E9560[omCurrentObj->objId] % 2)) {
        if ((D_800DFF50[omCurrentObj->objId] == 0x10532) || (D_800DFF50[omCurrentObj->objId] == 0x1052F)) {
            utilGetTransformSRT(&sp3C, D_800DFBD0[omCurrentObj->objId][3]);
            func_800A7F74(6, 2, 0xB, sp3C.x, sp3C.y, sp3C.z);
        }
    }
    if (D_800EA1A0[omCurrentObj->objId] != 0) {
        gEntitiesNextPosYArray[omCurrentObj->objId] =
            D_800DFBD0[omCurrentObj->objId][2]->scale.v.y * 40.0f;
    }
    if (0.0f == gEntitiesNextPosZArray[omCurrentObj->objId]) {
        func_801E5D54_ovl15((s32) D_800DFBD0[omCurrentObj->objId][1],
                            D_800DFBD0[omCurrentObj->objId][2]->scale.v.y);
    }
    if (D_800D7118.unk3C == 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = -1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801ACF84_ovl7);
    }
}

/* Derivation notes (this one closed; keeping what was load-bearing):
 * - `s32 padA` BEFORE and `s32 padB` AFTER the EneCurve is what puts it at
 *   sp+0x44 in a 0x78 frame.  Neither pad alone works: one before is dropped
 *   entirely, two before or two after give the right frame but leave the
 *   struct at sp+0x40.
 * - the two curve fields must be written unk28 THEN unk2C, even though the
 *   ROM stores unk2C first -- IDO reorders the stores but not the constant's
 *   materialisation (112/644 the other way round, 10/644 this way).
 * - the three sign picks on `sp44.unk24` must be TERNARIES, not if/else:
 *   if/else assigns the two arms' reloads of sp+0x68 to the opposite
 *   registers (lever 39), worth the last six words.
 * - `cosf(...) * (scale * -40.0f)`, not the other order: the product is the
 *   last-evaluated operand and source order is inverted (lever 2). */
struct Ovl15EneCurve {
    Vector unk0;
    Vector unkC;
    Vector unk18;
    f32 unk24;
    f32 unk28;
    s32 unk2C;
};

void func_801E3ED4_ovl15(struct GObj *arg0) {
    s32 padA;
    struct Ovl15EneCurve sp44;
    s32 padB;
    struct EnemyRecord *rec;

    rec = D_800E1B50[omCurrentObj->objId];
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], func_800B1814);
    D_800DEF90[omCurrentObj->objId] = func_800B7790;
    D_800E8E60[omCurrentObj->objId] = 1;
    D_800DF150[omCurrentObj->objId] = func_801E48E4_ovl15;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801DA04C;
    gEntitiesAngleYArray[omCurrentObj->objId] = -1.570796371f;
    D_800E17D0[omCurrentObj->objId] = D_800E17D0[D_800E0D50[omCurrentObj->objId]];
    D_800E9020[omCurrentObj->objId] = 0.0f;
    func_800B33F4();
    D_800E6A10[omCurrentObj->objId] = -1.0f;
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800EA1A0[omCurrentObj->objId] = 0;
    D_800EA360[omCurrentObj->objId] = 0;
    D_800EA520[omCurrentObj->objId] = 2;
    func_8019B9B0_ovl7();
    rec->unk80->unk10 = 25.0f;
    func_800A9864(0x10091, 0x23, 0x10);
    func_800AA018(D_801E6714_ovl15[((s32 *) D_800E9AA0)[omCurrentObj->objId]]);
    while ((s32) D_800D7098.unk24 <= 0) {
        ohSleep(1);
    }
    D_800E98E0[omCurrentObj->objId] = 1;
    D_800EA360[omCurrentObj->objId] =
        (s32) *(f32 *) &D_801E6754_ovl15[D_800E9C60[omCurrentObj->objId]];
    sp44.unk28 = *(f32 *) &D_801E6724_ovl15[((s32 *) D_800E9AA0)[omCurrentObj->objId]];
    sp44.unk2C = 0x10;
    func_8019EEE4_ovl7(&sp44);
    if (D_800DFBD0[omCurrentObj->objId][1]->pos.v.x < 0.0f) {
        D_800EA6E0[omCurrentObj->objId] = -sp44.unk18.z;
    } else {
        D_800EA6E0[omCurrentObj->objId] = sp44.unk18.z;
    }
    if (D_800DFBD0[omCurrentObj->objId][1]->pos.v.x < 0.0f) {
        D_800EAC20[omCurrentObj->objId] = sp44.unk24;
    } else {
        D_800EAC20[omCurrentObj->objId] = -sp44.unk24;
    }
    sp44.unk28 = *(f32 *) &D_801E6734_ovl15[((s32 *) D_800E9AA0)[omCurrentObj->objId]];
    sp44.unk2C = 0x10;
    func_8019EEE4_ovl7(&sp44);
    D_800EA8A0[omCurrentObj->objId] = sp44.unk18.z;
    D_800EADE0[omCurrentObj->objId] = -sp44.unk24;
    sp44.unk28 = *(f32 *) &D_801E6744_ovl15[((s32 *) D_800E9AA0)[omCurrentObj->objId]];
    sp44.unk2C = 0x10;
    func_8019EEE4_ovl7(&sp44);
    if (D_800DFBD0[omCurrentObj->objId][1]->pos.v.z < 0.0f) {
        D_800EAA60[omCurrentObj->objId] = sp44.unk18.z;
    } else {
        D_800EAA60[omCurrentObj->objId] = -sp44.unk18.z;
    }
    if (D_800DFBD0[omCurrentObj->objId][1]->pos.v.z < 0.0f) {
        D_800EAFA0[omCurrentObj->objId] = -sp44.unk24;
    } else {
        D_800EAFA0[omCurrentObj->objId] = sp44.unk24;
    }
    D_800EB160[omCurrentObj->objId] =
        -((D_800DFBD0[omCurrentObj->objId][1]->angle.v.x - 1.570796371f) * 0.0625f);
    D_800EB320[omCurrentObj->objId] = -(D_800DFBD0[omCurrentObj->objId][1]->angle.v.z * 0.0625f);
    D_800E3050[omCurrentObj->objId] =
        *(f32 *) &D_801E6774_ovl15[D_800E9C60[omCurrentObj->objId]];
    ohSleep(0x10);
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    D_800EB160[omCurrentObj->objId] = 0.0f;
    D_800EB320[omCurrentObj->objId] = 0.0f;
    sp44.unk28 = D_800DFBD0[omCurrentObj->objId][1]->pos.v.x;
    sp44.unk2C = D_800EA360[omCurrentObj->objId];
    func_8019EEE4_ovl7(&sp44);
    D_800EA6E0[omCurrentObj->objId] = 0.0f;
    D_800EAC20[omCurrentObj->objId] =
        (0.0f < D_800DFBD0[omCurrentObj->objId][1]->pos.v.x) ? -sp44.unk24 : sp44.unk24;
    sp44.unk28 = D_800DFBD0[omCurrentObj->objId][1]->pos.v.y - 30.0f;
    sp44.unk2C = D_800EA360[omCurrentObj->objId];
    func_8019EEE4_ovl7(&sp44);
    D_800EA8A0[omCurrentObj->objId] = 0.0f;
    D_800EADE0[omCurrentObj->objId] =
        (0.0f < D_800DFBD0[omCurrentObj->objId][1]->pos.v.y) ? -sp44.unk24 : sp44.unk24;
    sp44.unk28 = D_800DFBD0[omCurrentObj->objId][1]->pos.v.z;
    sp44.unk2C = D_800EA360[omCurrentObj->objId];
    func_8019EEE4_ovl7(&sp44);
    D_800EAA60[omCurrentObj->objId] = 0.0f;
    D_800EAFA0[omCurrentObj->objId] =
        (0.0f < D_800DFBD0[omCurrentObj->objId][1]->pos.v.z) ? -sp44.unk24 : sp44.unk24;
    D_800EB160[omCurrentObj->objId] =
        *(f32 *) &D_801E6764_ovl15[D_800E9C60[omCurrentObj->objId]];
    D_800E3050[omCurrentObj->objId] =
        *(f32 *) &D_801E6774_ovl15[D_800E9C60[omCurrentObj->objId]];
    ohSleep(D_800EA360[omCurrentObj->objId]);
    D_800E3590[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
    D_800E3AD0[omCurrentObj->objId] = 65535.0f;
    D_800EA360[omCurrentObj->objId] = -100;
    D_800EB160[omCurrentObj->objId] = D_800DFBD0[omCurrentObj->objId][1]->angle.v.x;
    D_800EB320[omCurrentObj->objId] = 0.0f;
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        func_800AECC0(gameTicksPerDraw);
        func_800AED20(gameTicksPerDraw);
        D_800EA1A0[omCurrentObj->objId] = 1;
        play_sound(0x197);
        func_800AA0C4(0x1052F, 1.0f);
        D_800EA1A0[omCurrentObj->objId] = 0;
        gEntitiesNextPosYArray[omCurrentObj->objId] =
            cosf(D_800DFBD0[omCurrentObj->objId][1]->angle.v.x) *
            (D_800DFBD0[omCurrentObj->objId][2]->scale.v.y * -40.0f);
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801DA070;
        func_800AA018(0x10530);
        ohSleep(0x3C);
    } else {
        gEntitiesNextPosYArray[omCurrentObj->objId] = 30.0f;
    }
    D_800E1B50[omCurrentObj->objId]->unk94 = &D_801D7B60;
    func_801ACF84_ovl7(arg0);
}

/* Derivation notes (this one closed; keeping the two levers that carried it):
 * - the modulo test must be `if ((s32) (x % 2))`, with the cast and WITHOUT an
 *   explicit `!= 0`.  Spelled `(x % 2) != 0` -- with or without the cast -- IDO
 *   peepholes the signed modulo into a bare `andi` and drops the ROM's
 *   bgez/beqz/addiu -2 correction (263/486).  The sibling func_801E5C34_ovl15
 *   and func_801E3B58_ovl15 above force it with a named `s32 r` instead, but a
 *   named scalar costs 8 bytes of frame (0x48 vs the ROM's 0x40) and the slot
 *   is then reserved and never written; the cast buys the same correction for
 *   free.  Worth re-trying on those two.
 * - ABS(), not ABSF(), on the z test (lever 3): the integer zero is a separate
 *   constant-pool entry, so IDO materialises a fresh `mtc1 $zero, $f18` for the
 *   compare instead of reusing the $f14 zero the `= 0.0f` stores share.  That
 *   single instruction was the whole remaining residue (181/486 with ABSF). */
void func_801E48E4_ovl15(struct GObj *arg0) {
    Vector sp34;

    D_800E9560[omCurrentObj->objId]++;
    if (D_800D7098.unk24 == 0) {
        gEntitiesNextPosXArray[omCurrentObj->objId] =
            gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]];
        gEntitiesNextPosYArray[omCurrentObj->objId] =
            gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]];
        gEntitiesNextPosZArray[omCurrentObj->objId] =
            gEntitiesNextPosZArray[D_800E0D50[omCurrentObj->objId]];
    }
    if (D_800EA360[omCurrentObj->objId] != 0) {
        if (D_800EA360[omCurrentObj->objId] > 0) {
            D_800EA6E0[omCurrentObj->objId] += D_800EAC20[omCurrentObj->objId];
            D_800EA8A0[omCurrentObj->objId] += D_800EADE0[omCurrentObj->objId];
            D_800EAA60[omCurrentObj->objId] += D_800EAFA0[omCurrentObj->objId];
            D_800DFBD0[omCurrentObj->objId][1]->pos.v.x += D_800EA6E0[omCurrentObj->objId];
            D_800DFBD0[omCurrentObj->objId][1]->pos.v.y += D_800EA8A0[omCurrentObj->objId];
            D_800DFBD0[omCurrentObj->objId][1]->pos.v.z += D_800EAA60[omCurrentObj->objId];
            D_800DFBD0[omCurrentObj->objId][1]->angle.v.x += D_800EB160[omCurrentObj->objId];
            D_800DFBD0[omCurrentObj->objId][1]->angle.v.z += D_800EB320[omCurrentObj->objId];
            D_800EA360[omCurrentObj->objId]--;
            if (D_800EA360[omCurrentObj->objId] == 0) {
                D_800EA360[omCurrentObj->objId] = -100;
            }
        } else {
            D_800DFBD0[omCurrentObj->objId][1]->pos.v.x = 0.0f;
            D_800DFBD0[omCurrentObj->objId][1]->pos.v.y = 0.0f;
            D_800DFBD0[omCurrentObj->objId][1]->pos.v.z = 0.0f;
            D_800DFBD0[omCurrentObj->objId][1]->angle.v.x = D_800EB160[omCurrentObj->objId];
            D_800DFBD0[omCurrentObj->objId][1]->angle.v.z = D_800EB320[omCurrentObj->objId];
            D_800EA360[omCurrentObj->objId] = -100;
        }
    }
    if ((s32) (D_800E9560[omCurrentObj->objId] % 2)) {
        if (D_800D7098.unk24 != 0) {
            if ((D_800DFF50[omCurrentObj->objId] ==
                 D_801E6714_ovl15[((s32 *) D_800E9AA0)[omCurrentObj->objId]]) ||
                (D_800DFF50[omCurrentObj->objId] == 0x1052F)) {
                utilGetTransformSRT(&sp34, D_800DFBD0[omCurrentObj->objId][3]);
                func_800A7F74(6, 2, 0xB, sp34.x, sp34.y, sp34.z);
            }
        }
    }
    if (D_800EA1A0[omCurrentObj->objId] != 0) {
        gEntitiesNextPosYArray[omCurrentObj->objId] =
            cosf(D_800DFBD0[omCurrentObj->objId][1]->angle.v.x) *
            (D_800DFBD0[omCurrentObj->objId][2]->scale.v.y * -40.0f);
    }
    if (ABS(gEntitiesNextPosZArray[omCurrentObj->objId]) < 80.0f) {
        func_801E5D54_ovl15((s32) D_800DFBD0[omCurrentObj->objId][1],
                            D_800DFBD0[omCurrentObj->objId][2]->scale.v.y);
        if (D_800E83E0[omCurrentObj->objId] != 0) {
            gEntitiesNextPosXArray[omCurrentObj->objId] +=
                D_800DFBD0[omCurrentObj->objId][1]->pos.v.x;
            gEntitiesNextPosYArray[omCurrentObj->objId] +=
                D_800DFBD0[omCurrentObj->objId][1]->pos.v.y;
            gEntitiesNextPosZArray[omCurrentObj->objId] +=
                D_800DFBD0[omCurrentObj->objId][1]->pos.v.z;
            D_800DFBD0[omCurrentObj->objId][1]->pos.v.x = 0.0f;
            D_800DFBD0[omCurrentObj->objId][1]->pos.v.y = 0.0f;
            D_800DFBD0[omCurrentObj->objId][1]->pos.v.z = 0.0f;
        }
    }
    if (D_800D7118.unk3C == 0) {
        if ((D_800DFF50[omCurrentObj->objId] == 0x1052B) ||
            (D_800DFF50[omCurrentObj->objId] == 0x1052C) ||
            (D_800DFF50[omCurrentObj->objId] == 0x1052D) ||
            (D_800DFF50[omCurrentObj->objId] == 0x1052E)) {
            gEntitiesNextPosXArray[omCurrentObj->objId] +=
                D_800DFBD0[omCurrentObj->objId][1]->pos.v.x;
            gEntitiesNextPosYArray[omCurrentObj->objId] +=
                D_800DFBD0[omCurrentObj->objId][1]->pos.v.y;
            gEntitiesNextPosZArray[omCurrentObj->objId] +=
                D_800DFBD0[omCurrentObj->objId][1]->pos.v.z;
            D_800DFBD0[omCurrentObj->objId][1]->pos.v.x = 0.0f;
            D_800DFBD0[omCurrentObj->objId][1]->pos.v.y = 0.0f;
            D_800DFBD0[omCurrentObj->objId][1]->pos.v.z = 0.0f;
        }
        gEntityFuncListIDArray[omCurrentObj->objId] = -1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801ACF84_ovl7);
    }
}

/* Boss entry: bind the two procs, face left, inherit the parent's heading,
   fall to y = 40 at -10, land, and after 75 ticks hand off to
   func_801ACF84_ovl7 with the D_801D7BC4 cue table installed.

   Byte-exact.  It carried "m2c draft, for the PORT only. Not byte-exact and
   not claimed to be" (LEVER 88/108's shape) at 12/167 with a SHAPE DISTANCE OF
   ZERO -- and the whole of it was m2c's two `temp_v1 = omCurrentObj->objId`
   caches, one shared between D_800E17D0 and D_800E0D50, one between D_800E3210
   and D_800E3750.  Writing both subscripts `omCurrentObj->objId` is MATCH.

   **THAT IS A CORRECTION TO HOW SHAPE 0 IS BEING READ.** aligndiff reduces
   every word to its MNEMONIC, so an extra LOCAL that only rotates the register
   allocation is invisible to it -- shape 0 means "no instruction was added,
   removed or changed KIND", not "no source edit can reach this".  LEVER 65b's
   companion claim, that a shape-0 draft is permuter fodder, is true only after
   the declaration list has been cleaned.  Clean it first, then believe the
   shape. */
void func_801E5080_ovl15(GObj *arg0) {
    func_8019BA3C_ovl7();
    D_800DEF90[omCurrentObj->objId] = func_800B7790;
    D_800DF150[omCurrentObj->objId] = func_801E531C_ovl15;
    D_800E8920[omCurrentObj->objId] = 0;
    gEntitiesAngleYArray[omCurrentObj->objId] = -1.5707964f;
    D_800E17D0[omCurrentObj->objId] = D_800E17D0[D_800E0D50[omCurrentObj->objId]];
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
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    D_800E3050[omCurrentObj->objId] = 0.0f;
    D_800E3590[omCurrentObj->objId] = -0.5f;
    D_800E3AD0[omCurrentObj->objId] = 16.0f;
    func_800AF27C();
    func_800AA018(0x10538);
    ohSleep(0x4B);
    D_800E1B50[omCurrentObj->objId]->unk94 = (struct EnemyAnimCue *) &D_801D7BC4;
    func_801ACF84_ovl7(arg0);
}

extern struct GObjProcess *gEntityGObjProcessArray[];
/* FACTORY: 53/236 measured, and the number is misleading -- the INSTRUCTION
   SEQUENCE IS EXACT, word for word, and every one of the 53 differences is
   the same register rotation: the ROM parks `omCurrentObj->objId << 2` in $a2
   and &D_800E9560 in $a0, IDO picks $v0 and $a2, which renames every
   `lw $a2,0($v1) / sll / addu $at,$at,$a2` triple in the function.  That is
   LEVERS' "CSE'd load landing in the neighbouring register ($v0/$v1, $a2/$a3)"
   floor and it is exactly what decomp-permuter closes for free.
   The ALTERNATIVE ORDER (`D_800E9560[i]++` before `rec = D_800E1B50[i]`) scores
   a flattering 64/236 but is structurally WRONG: the store in the increment
   kills IDO's CSE of `omCurrentObj->objId`, so that form emits a second
   `lw/sll` pair in the head that the ROM does not have.  Reading `rec` first,
   as here, reproduces the ROM's single shared index -- prefer this seed.
   Clone provenance: the modulo-2 head is func_801E5C34_ovl15's (below).  It is
   spelled `(s32) (x % 2)` -- cast, no explicit `!= 0` -- which is what forces
   IDO to keep the ROM's bgez/beqz/addiu -2 signed correction instead of
   peepholing it to a bare `andi`.  The named `s32 r` this draft used to carry
   forces the same correction but costs a reserved-and-never-written frame word
   (0x50 vs the ROM's 0x48); dropping it for the cast took 132/236 to 53/236. */
#if defined(MIPS_TO_C) || defined(PORT)
/* One arm: nothing here is N64-only.  Every array is indexed through its
   declared type and the only pointer stored is EnemyRecord.unk8C, a real
   `s32 *`. */
void func_801E531C_ovl15(struct GObj *arg0) {
    struct EnemyRecord *rec;
    Vector sp38;
    s32 spawned;

    rec = D_800E1B50[omCurrentObj->objId];
    D_800E9560[omCurrentObj->objId]++;
    D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId];
    D_800EA8A0[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
    D_800EAA60[omCurrentObj->objId] = gEntitiesNextPosZArray[omCurrentObj->objId];
    D_800EAC20[omCurrentObj->objId] = D_800E3050[omCurrentObj->objId];
    D_800EADE0[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
    D_800EAFA0[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId];
    if ((s32) (D_800E9560[omCurrentObj->objId] % 2)) {
        utilGetTransformSRT(&sp38, D_800DFBD0[omCurrentObj->objId][5]);
        func_800A7F74(6, 2, 0xB, sp38.x, sp38.y, sp38.z);
    }
    if ((gEntitiesNextPosXArray[omCurrentObj->objId] - 20.0f) < gEntitiesNextPosXArray[0]) {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801DA0DC;
    } else {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801DA0B8;
    }
    func_801A03E4_ovl7(D_800DFBD0[omCurrentObj->objId][2]);
    if (D_800E83E0[omCurrentObj->objId] == 3) {
        spawned = func_801AC9D0_ovl7(0x38, 3);
        if (spawned != 0) {
            D_800E8E60[spawned] = 1;
            gEntitiesNextPosXArray[spawned] = gEntitiesNextPosXArray[omCurrentObj->objId];
            gEntitiesNextPosYArray[spawned] = gEntitiesNextPosYArray[omCurrentObj->objId];
            gEntitiesNextPosZArray[spawned] = gEntitiesNextPosZArray[omCurrentObj->objId];
        }
        gEntitiesNextPosXArray[omCurrentObj->objId] =
            gEntitiesNextPosXArray[omCurrentObj->objId] - ABSF(D_800DFBD0[omCurrentObj->objId][3]->pos.v.z);
        func_80198880_ovl7(&D_801D7C8C);
        func_801A2ADC_ovl7((void *) rec->unk88->unk10);
        func_800A9760(0x10093);
        rec->unk80->unk10 = 20.0f;
    }
    if (D_800D7118.unk3C == 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = -1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801ACF84_ovl7);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15b/func_801E531C_ovl15.s")
#endif

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

/* Closed at last: the modulo test is `(s32) (x % 2)`, cast and with no explicit
 * `!= 0`.  The old note here had it as an unresolvable conflict -- a named `s32
 * r` is what forces IDO to materialise the signed modulo instead of peepholing
 * it to a bare `andi`, but a named scalar costs 8 bytes of frame and the ROM's
 * 0x38 had no room.  The cast forces the same correction with no local at all.
 * See func_801E48E4_ovl15 below, where the same lever was found. */
void func_801E5C34_ovl15(struct GObj *arg0) {
    extern struct GObjProcess *gEntityGObjProcessArray[];
    Vector sp2C;

    D_800E9560[omCurrentObj->objId]++;
    if ((s32) (D_800E9560[omCurrentObj->objId] % 2)) {
        utilGetTransformSRT(&sp2C, D_800DFBD0[omCurrentObj->objId][5]);
        func_800A7F74(6, 2, 0xB, sp2C.x, sp2C.y, sp2C.z);
    }
    func_801A03E4_ovl7(D_800DFBD0[omCurrentObj->objId][2]);
    if (D_800D7118.unk3C == 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = -1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801ACF84_ovl7);
    }
}

struct Unk80111C88 *func_801A0464_ovl7(void);
void func_801A04B8_ovl7(void);

/* `t` is load-bearing: without a named local for sp1C->unk8C[2] IDO swaps the
 * two link registers ($v1 and $t1). It costs no frame word -- only sp1C is
 * live across the call and gets one. */
void func_801E5D54_ovl15(s32 arg0, f32 arg1) {
    struct EnemyRecord *sp1C;
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
