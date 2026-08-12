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
void func_800A1F30();
void func_800A8100();
void func_800A8234();
void func_800A9760();
void func_800A9EA4();
void func_800AA038();
void func_800AA0C4();
void func_800AEDD0();
void func_800AF230();
void func_800B1814();
void func_800B4924();
void func_800B7138();
void func_800B7790();
void func_800F8E6C();
void func_800FA414();
void func_800FBF18();
void func_80110B00();
void func_80110FD4();
void func_801129AC();
void func_801129DC();
void func_80169430_ovl3();
void func_80198880_ovl7();
void func_8019B918_ovl7();
void func_8019B9B0_ovl7();
void func_8019BA3C_ovl7();
void func_8019EEE4_ovl7();
void func_8019F1EC_ovl7();
void func_801A2ADC_ovl7();
void func_801AC9D0_ovl7();
void func_801ACCA0_ovl7();
void func_801BC794_ovl7();
void func_801DB400_ovl15();
void func_801DB770_ovl15();
void func_801DBE20_ovl15();
void func_801DBEAC_ovl15();
void func_801DC13C_ovl15();
void func_801DC594_ovl15();
void func_801DC890_ovl15();
void func_801DCB64_ovl15();
void func_801DCDA8_ovl15();
void func_801DD03C_ovl15();
void func_801DD318_ovl15();
void func_801DD7C8_ovl15();
void func_801DD950_ovl15();
void func_801DDBA8_ovl15();
void func_801DDE90_ovl15();
void func_801DE234_ovl15();
void func_801DE7C8_ovl15();
void func_801DEA98_ovl15();
void func_801DF52C_ovl15();
void func_801DF790_ovl15();
void func_801DFCF4_ovl15();
void func_801E00C4_ovl15();
void func_801E0380_ovl15();
void func_801E05A8_ovl15();
void func_801E0F44_ovl15();
void func_801E1230_ovl15();
void func_801E1F34_ovl15();
void func_801E27BC_ovl15();
void func_801E30F8_ovl15();
void func_801E3678_ovl15();
void func_801E3B58_ovl15();
void func_801E3ED4_ovl15();
void func_801E48E4_ovl15();
void func_801E5080_ovl15();
void func_801E531C_ovl15();
void func_801E56CC_ovl15();
void func_801E5C34_ovl15();
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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15b/func_801E5080_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15b/func_801E531C_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15b/func_801E56CC_ovl15.s")

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
