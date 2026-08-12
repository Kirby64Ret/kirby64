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

struct Ovl15AnimInfo {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 filler4[8];
    s32 unkC;
    u8 filler10[0xC];
};
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
s32 func_80110B00(void *);
s32 func_80110FD4(void *);
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
void func_801E5D54_ovl15();

void func_801DB1E0_ovl15(s32 arg0) {
    func_801A3280_ovl7();
    D_800E8E60[omCurrentObj->objId] = 1;
    D_800E1B50[omCurrentObj->objId]->unk39 = -1;
    func_8019BB58_ovl7();
    D_800DF150[omCurrentObj->objId] = func_801DB378_ovl15;
    func_801A0D50_ovl7(func_801DB2F8_ovl15);
    D_800E8920[omCurrentObj->objId] = 0;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 0xB, D_801E6450_ovl15);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 0x11, D_801E647C_ovl15);
    }
}

void func_801DB2F8_ovl15(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 0x11, D_801E647C_ovl15);
    }
}

void func_801DB378_ovl15(struct GObj *arg0) {
    if (D_800D7098.unk14 != 0) {
        D_800D7098.unk10++;
        if ((s32) D_800D7098.unk10 >= 0x29) {
            play_sound(0x1A5);
            D_800D7098.unk10 = 0;
        }
    } else {
        D_800D7098.unk10 = 0;
    }
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 0xC, D_801E64C0_ovl15);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DB400_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DB770_ovl15.s")

void func_801DBE20_ovl15(s32 arg0) {
    switch (D_800D7098.unk3C) {
    case 0:
    case 1:
    case 2:
    case 3:
        break;
    case 4:
    case 5:
    case 6:
        D_801292B0.x = gEntitiesNextPosXArray[omCurrentObj->objId];
        D_801292B0.y = gEntitiesNextPosYArray[omCurrentObj->objId];
        D_801292B0.z = gEntitiesNextPosZArray[omCurrentObj->objId];
        break;
    case 7:
    case 8:
    case 9:
        break;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DBEAC_ovl15.s")

void func_801DC0DC_ovl15(struct Ovl15DObj *arg0, struct Ovl15Color *arg1) {
    struct Ovl15MObj *mobj;

    for (mobj = arg0->mobjList; mobj != NULL; mobj = mobj->next) {
        mobj->primColor = *arg1;
    }
}

void func_801DC10C_ovl15(struct Ovl15DObj *arg0, struct Ovl15Color *arg1) {
    struct Ovl15MObj *mobj;

    for (mobj = arg0->mobjList; mobj != NULL; mobj = mobj->next) {
        mobj->envColor = *arg1;
    }
}

void func_801DC13C_ovl15(s32 arg0) {
    f32 temp_f0;

    gEntitiesAngleZArray[omCurrentObj->objId] = 0.0f;
    temp_f0 = gEntitiesAngleZArray[omCurrentObj->objId];
    gEntitiesAngleYArray[omCurrentObj->objId] = temp_f0;
    gEntitiesAngleXArray[omCurrentObj->objId] = temp_f0;
    D_800E9020[omCurrentObj->objId] = 0.0f;
    D_800E17D0[omCurrentObj->objId] = D_800E9020[omCurrentObj->objId];
    D_800DEF90[omCurrentObj->objId] = func_800B4924;
    D_800DF150[omCurrentObj->objId] = func_801DC310_ovl15;
    func_800A9864(0x1008F, 0x23, 0x10);
    func_800AFBB4(1, omCurrentObj);
    func_800AA018(0x10526);
    func_800AA154(0x10525);
    func_800AA018(0x10528);
    func_800AA154(0x10527);
    func_800AA018(0x1052A);
    func_800AA018(0x10529);
    if (D_800E98E0[D_800EBBE0[omCurrentObj->objId]] < 2) {
        do {
            ohSleep(1);
        } while (D_800E98E0[D_800EBBE0[omCurrentObj->objId]] < 2);
    }
    func_8019D958_ovl7(omCurrentObj->objId);
}

void func_801DC310_ovl15(struct GObj *arg0) {
    Vector sp24;
    f32 temp_f0;

    temp_f0 = D_800DFBD0[D_800E0D50[omCurrentObj->objId]][6]->angle.v.y;
    D_800DFBD0[omCurrentObj->objId][4]->angle.v.y = temp_f0;
    D_800DFBD0[omCurrentObj->objId][3]->angle.v.y = temp_f0;
    utilGetTransformSRT(&sp24, D_800DFBD0[D_800E0D50[omCurrentObj->objId]][7]);
    gEntitiesNextPosXArray[omCurrentObj->objId] = sp24.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = sp24.y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = sp24.z;
    if (D_800E98E0[D_800EBBE0[omCurrentObj->objId]] == 1) {
        gEntitiesNextPosXArray[omCurrentObj->objId] = sp24.x;
        D_800DFBD0[omCurrentObj->objId][2]->pos.v.x = (f32) (gEntitiesNextPosXArray[D_800EBBE0[omCurrentObj->objId]] - gEntitiesNextPosXArray[omCurrentObj->objId]);
        gEntitiesNextPosYArray[omCurrentObj->objId] = sp24.y;
        D_800DFBD0[omCurrentObj->objId][2]->pos.v.y = (f32) (gEntitiesNextPosYArray[D_800EBBE0[omCurrentObj->objId]] - gEntitiesNextPosYArray[omCurrentObj->objId]);
        gEntitiesNextPosZArray[omCurrentObj->objId] = sp24.z;
        D_800DFBD0[omCurrentObj->objId][2]->pos.v.z = (f32) (gEntitiesNextPosZArray[D_800EBBE0[omCurrentObj->objId]] - gEntitiesNextPosZArray[omCurrentObj->objId]);
        return;
    }
    D_800DFBD0[omCurrentObj->objId][2]->pos.v.z = 0.0f;
    temp_f0 = D_800DFBD0[omCurrentObj->objId][2]->pos.v.z;
    D_800DFBD0[omCurrentObj->objId][2]->pos.v.y = temp_f0;
    D_800DFBD0[omCurrentObj->objId][2]->pos.v.x = temp_f0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DC594_ovl15.s")

#ifdef NON_MATCHING
/* 10/107, and all ten are the same register: the ROM parks `temp` in $a2 --
   the register the 3rd argument of the func_800A7F74 call below it wants --
   while IDO puts it in $v0 and only claims $a2 for the argument. Swept:
   s32-with-casts instead of a typed pointer (10), reusing one variable for
   both temp and the 3:8 selector (34), and giving the selector its own local
   (15). The first form above is the floor. */
struct Ovl15Xform {
    u8 filler0[4];
    Vector pos;
    Vector angle;
};

struct Ovl15XformOwner {
    u8 filler0[0x4C];
    struct Ovl15Xform *unk4C;
};

void func_801DC890_ovl15(struct GObj *arg0) {
    struct Ovl15XformOwner *temp;

    if (D_800E98E0[omCurrentObj->objId] == 1) {
        temp = (struct Ovl15XformOwner *) D_800EA360[omCurrentObj->objId];
        if (temp != NULL) {
            temp->unk4C->pos.x = gEntitiesNextPosXArray[omCurrentObj->objId];
            temp->unk4C->pos.y = gEntitiesNextPosYArray[omCurrentObj->objId];
            temp->unk4C->pos.z = gEntitiesNextPosZArray[omCurrentObj->objId];
            temp->unk4C->angle.x = gEntitiesAngleXArray[omCurrentObj->objId];
            temp->unk4C->angle.y = gEntitiesAngleYArray[omCurrentObj->objId];
            temp->unk4C->angle.z = gEntitiesAngleZArray[omCurrentObj->objId];
        }
        if ((D_800EA1A0[omCurrentObj->objId]++ & 1) == 0) {
            func_800A7F74(6, 2, D_800E6A10[omCurrentObj->objId] == 1.0f ? 3 : 8,
                          gEntitiesNextPosXArray[omCurrentObj->objId],
                          gEntitiesNextPosYArray[omCurrentObj->objId],
                          gEntitiesNextPosZArray[omCurrentObj->objId]);
        }
        func_8019F3B0_ovl7();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DC890_ovl15.s")
#endif

void func_801DCA3C_ovl15(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B7560;
    D_800DF150[omCurrentObj->objId] = func_801DD7C0_ovl15;
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[D_800E0D50[D_800E0D50[omCurrentObj->objId]]];
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[D_800E0D50[D_800E0D50[omCurrentObj->objId]]];
    gEntitiesNextPosYArray[omCurrentObj->objId] = 0.0f;
    func_800A9864(0x100D9, 0x23, 0x10);
    func_800AA018(0x10618);
    func_800AA154(0x10617);
    func_8019D958_ovl7((u16) omCurrentObj->objId);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DCB64_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DCDA8_ovl15.s")

void func_801DD03C_ovl15(s32 arg0) {

    D_800DEF90[omCurrentObj->objId] = func_800B7560;
    D_800DF150[omCurrentObj->objId] = func_801DD208_ovl15;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    func_800B19F4(0x71, omCurrentObj->objId);
    func_800AFBB4(0, omCurrentObj);
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesNextPosZArray[omCurrentObj->objId] = 0.0f;
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosZArray[omCurrentObj->objId];
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = (D_800E9C60[D_800E0D50[omCurrentObj->objId]] != 0) ? 0 : 1;
    D_800E1B50[omCurrentObj->objId]->unk8C = (D_800E9C60[omCurrentObj->objId] != 0) ? &D_801D8D54 : &D_801D8D78;
    ohSleep(0x41);
    func_8019D958_ovl7(omCurrentObj->objId);
}

#ifdef NON_MATCHING
/* 29/68: frame 0x48, the Vector at 0x3C and every instruction are right; the
   residue is a one-slot temp rotation -- the ROM parks the boolean in $a1 and
   walks $t0/$t2/$t3/$t5, IDO refuses to touch $a1..$a3 and starts at $t1.
   Load-bearing pieces found on the way: `struct GObj *obj = omCurrentObj;`
   (without it IDO materialises &omCurrentObj because of the store through p),
   the boolean written as its own local (`c = v >= 0x1A; if (c != 0)`) which is
   what produces the ROM's slti+xori pair rather than slti+bnez, and the three
   pad words that take the frame from 0x38 to 0x48. The callee-return-type
   lever does not apply: both callees are declared void in shared headers. */
void func_801DD208_ovl15(struct GObj *arg0) {
    Vector sp3C;
    Vector pad0;
    s32 pad1;
    s32 pad2;
    s32 *p;
    s32 v;
    s32 c;
    struct GObj *obj = omCurrentObj;

    p = &D_800E98E0[obj->objId];
    v = *p;
    *p = v + 1;
    c = v >= 0x1A;
    if (c != 0) {
        utilGetTransformSRT(&sp3C, D_800DFBD0[D_800E0D50[obj->objId]][D_801E6500_ovl15[D_800E9C60[obj->objId]]]);
        if (-60.0f < sp3C.z) {
            obj = omCurrentObj;
            gEntitiesNextPosXArray[obj->objId] = sp3C.x;
            gEntitiesNextPosYArray[obj->objId] = 0.0f;
            gEntitiesNextPosZArray[obj->objId] = 0.0f;
            func_8019F3B0_ovl7();
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DD208_ovl15.s")
#endif
void func_801DD318_ovl15(struct GObj *arg0) {
/* 1.5707964f = 1.5707964f : now emitted by this TU */

    D_800D7098.unk14 = 0;
    D_800D7098.unk10 = 0;
    D_800D7098.unk24 = 0;
    D_800D7098.unk4 = 0;
    D_800EA520[omCurrentObj->objId] = D_800E5F90[omCurrentObj->objId];
    D_800EB320[omCurrentObj->objId] = D_800E6BD0[omCurrentObj->objId];
    D_800EADE0[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId];
    D_800EAFA0[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
    D_800EB160[omCurrentObj->objId] = gEntitiesNextPosZArray[omCurrentObj->objId];
    D_800D7118.unk3C = -1;
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800E17D0[omCurrentObj->objId] = 1.5707964f;
    gEntitiesNextPosXArray[omCurrentObj->objId] = 7200.0f;
    gEntitiesNextPosZArray[omCurrentObj->objId] = -540.0f;
    D_800D7098.unk20 = 0;
    *(s32 *) &D_800D7098.unk1C = -1;
    D_800DEF90[omCurrentObj->objId] = func_800B7560;
    func_800A9864(0x10066, 0x2A, 0x10);
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] = D_801E6510_ovl15[random_soft_s32_range(4)];
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DD4EC_ovl15.s")

void func_801DD74C_ovl15(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AA864(0x103CB, 2);
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

void func_801DD7C0_ovl15(struct GObj *arg0) {
}

/* 65/98, new draft.  Every instruction and the whole control flow are right --
 * the `while` (not do/while) is what gives the ROM's leading `bnel` plus the
 * bottom `beq`, and the two `||` pairs give the four `beq $v1, $at` tests.  The
 * residue is a PERMUTATION of the three callee-saved base registers: the ROM
 * has $s0 = &omCurrentObj, $s1 = &D_801E6520_ovl15, $s2 = &D_800E9AA0, IDO
 * hands them out in exact reverse order of first use ($s2/$s1/$s0), and the
 * two compares come out with their operands swapped.  Swept: `p` assigned
 * before vs after `v` both outside and inside the loop (72 -> 65), and both
 * operand orders of the loop condition. */
#ifdef NON_MATCHING
void func_801DD7C8_ovl15(struct GObj *arg0) {
    s32 r;
    s32 v;
    s32 *p;
    s32 t;

    r = random_soft_s32_range(9);
    p = (s32 *) &D_800E9AA0[omCurrentObj->objId];
    v = D_801E6520_ovl15[r];
    while (D_801E6520_ovl15[*p] == v) {
        r = random_soft_s32_range(9);
        p = (s32 *) &D_800E9AA0[omCurrentObj->objId];
        v = D_801E6520_ovl15[r];
    }
    if (v == 3 || v == 4) {
        D_800D7098.unk4 = 0;
        p = (s32 *) &D_800E9AA0[omCurrentObj->objId];
    } else if (v == 5 || v == 6) {
        t = *(s32 *) &D_800D7098.unk4 + 1;
        D_800D7098.unk4 = t;
        if (t >= 5) {
            if (random_soft_s32_range(2) == 0) {
                r = 2;
            } else {
                r = 0;
            }
            D_800D7098.unk4 = 0;
        }
        p = (s32 *) &D_800E9AA0[omCurrentObj->objId];
    }
    *p = r;
    gEntityFuncListIDArray[omCurrentObj->objId] =
        D_801E6520_ovl15[*(s32 *) &D_800E9AA0[omCurrentObj->objId]];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DD7C8_ovl15.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DD950_ovl15.s")

void func_801DDBA8_ovl15(struct GObj *arg0) {
    s32 c;

    if ((100.0f <= D_800EAC20[omCurrentObj->objId]) && (D_800EAC20[omCurrentObj->objId] <= 132.0f)) {
        c = D_800EBDA0[omCurrentObj->objId] == -1;
        if (D_800E9C60[omCurrentObj->objId] != 0) {
            if (c) {
                D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D8CA0;
            } else {
                D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D8C7C;
            }
            func_801E177C_ovl15(D_800DFBD0[omCurrentObj->objId][17], D_800DFBD0[omCurrentObj->objId][17], 0);
        } else {
            if (c) {
                D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D8CE8;
            } else {
                D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D8CC4;
            }
            func_801E177C_ovl15(D_800DFBD0[omCurrentObj->objId][11], D_800DFBD0[omCurrentObj->objId][11], 0);
        }
        if ((gEntityFuncListIDArray[omCurrentObj->objId] != 7) && (D_800E83E0[omCurrentObj->objId] == 1)) {
            func_801DDD74_ovl15(arg0);
        }
    }
    D_800EAC20[omCurrentObj->objId] += D_800E09D0[omCurrentObj->objId];
}


void func_801DDD74_ovl15(struct GObj *arg0) {
    gEntityFuncListIDArray[omCurrentObj->objId] = 7;
    if (D_800D6E5C != 0.0f) {
        func_800BC11C(D_800E7B20[omCurrentObj->objId]);
    }
    D_800EBDA0[omCurrentObj->objId] = func_8019E0A4_ovl7(4, 2);
    D_800EA1A0[omCurrentObj->objId] = 1;
    play_sound(0x1E7);
    func_800BB468(2, 0);
    func_800FD754(2, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId] + 400.0f, gEntitiesNextPosZArray[omCurrentObj->objId]);
    D_800D7118.unk3C = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DDE90_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DE234_ovl15.s")

void func_801DE5DC_ovl15(s32 arg0) {
    s32 sp1C;
    s32 temp_a1;

    D_800DDFD0[omCurrentObj->objId] = 3;
    sp1C = func_8019E0A4_ovl7(4, 5);
    D_800EBF60[omCurrentObj->objId] = sp1C;
    temp_a1 = func_8019E0A4_ovl7(4, 4);
    if ((sp1C != -1) && (temp_a1 != -1)) {
        D_800EBBE0[sp1C] = temp_a1;
        D_800EBBE0[temp_a1] = sp1C;
        func_800AA154(0x103C3);
        func_800AA864(0x103C5, 8);
        func_800AA154(0x103C7);
        ohSleep(6);
        D_800DFBD0[omCurrentObj->objId][6]->angle.v.y = 0.0f;
    } else {
        D_800EBF60[omCurrentObj->objId] = -1;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801DE71C_ovl15(struct GObj *arg0) {
    s32 temp_a0;
    f32 phi_f2;

    temp_a0 = D_800EBF60[omCurrentObj->objId];
    phi_f2 = 0.0f;
    if (temp_a0 != -1) {
        phi_f2 = atan2f(gEntitiesNextPosXArray[temp_a0] - gEntitiesNextPosXArray[omCurrentObj->objId],
                        gEntitiesNextPosZArray[temp_a0] - gEntitiesNextPosZArray[omCurrentObj->objId]);
    }
    D_800DFBD0[omCurrentObj->objId][6]->angle.v.y = phi_f2;
}

#ifdef NON_MATCHING
/* 75/146, fully decoded: the frame, the Vector at 0x50 and the three
   random_soft_s32_range slots at 0x5C/0x60/0x64 are all exact. The residue is
   register pressure inside the loop: the ROM keeps THREE finished table
   addresses in $s2/$s3/$s4 across utilGetTransformSRT and therefore has no
   saved register left for gEntitiesNextPosXArray, while IDO keeps only the two
   scaled indices and hoists that base. It also materialises the hi half of
   D_801E6554_ovl15 TWICE where IDO shares one. Swept: explicit `s8 *` pointer
   locals for the three addresses (94), `volatile` casts to fork the shared
   base (inert in all three placements). Its twin func_801DFCF4_ovl15 has only
   two table reads and matched. */
void func_801DE7C8_ovl15(struct GObj *arg0) {
    s32 i;
    s32 e;
    s32 sp64;
    s32 sp60;
    s32 sp5C;
    Vector sp50;

    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AA018(0x103C9);
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
    D_800D7098.unk24 = 0;
    ohSleep(0xA);
    play_sound(0x251);
    sp64 = random_soft_s32_range(0x18);
    sp60 = random_soft_s32_range(0x18);
    sp5C = random_soft_s32_range(0xE);
    for (i = 0; i != 4; i++) {
        e = func_801ACC34_ovl7(0x37, 0);
        if (e != 0) {
            D_800E8E60[e] = 1;
            utilGetTransformSRT(&sp50, D_800DFBD0[omCurrentObj->objId][D_801E65EC_ovl15[i]]);
            gEntitiesNextPosXArray[e] = sp50.x;
            gEntitiesNextPosYArray[e] = sp50.y;
            gEntitiesNextPosZArray[e] = sp50.z;
            ((s32 *) D_800E9AA0)[e] = ((s8 *) D_801E6554_ovl15)[(sp64 * 4) + i];
            D_800E9C60[e] = ((s8 *) D_801E6554_ovl15)[(sp60 * 4) + i];
            D_800E9E20[e] = ((s8 *) D_801E65B4_ovl15)[(sp5C * 4) + i];
        }
    }
    ohSleep(0xA);
    D_800D7098.unk24 = 1;
    play_sound(0x19A);
    func_800AF27C();
    func_800AA864(0x103CB, 0xD);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DE7C8_ovl15.s")
#endif
void func_801DEA10_ovl15(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    D_800D7118.unk3C = 0;
    D_800D7098.unk3C = 2;
    func_800AA864(0x103CB, 4);
    gEntityFuncListIDArray[omCurrentObj->objId] = 8;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DEA98_ovl15.s")

void func_801DEFB0_ovl15(struct GObj *arg0) {
    D_800EA6E0[D_800E0D50[omCurrentObj->objId]] = D_800E3050[omCurrentObj->objId];
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.y += D_800EAC20[omCurrentObj->objId];
    if (D_800E9E20[omCurrentObj->objId] >= 0x2B) {
        func_801E1E88_ovl15(arg0);
    }
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D8E98;
    func_801E19D0_ovl15(D_800DFBD0[omCurrentObj->objId][4], D_800DFBD0[omCurrentObj->objId][22], 0);
    if (D_800DFF50[omCurrentObj->objId] == 0x103D7) {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9120;
        func_801E19D0_ovl15(D_800DFBD0[omCurrentObj->objId][6], 0, 0);
    }
    D_800E9E20[omCurrentObj->objId] += 1;
}

void func_801DF148_ovl15(struct GObj *arg0) {
    D_800D7098.unk14 = 1;
    D_800DDFD0[omCurrentObj->objId] = 5;
    func_800B33F4();
    if (-6e+03f < gEntitiesNextPosXArray[omCurrentObj->objId]) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0xA;
        D_800E3050[omCurrentObj->objId] = -2.0f;
        D_800E3590[omCurrentObj->objId] = 0.0f;
        func_800AA864(0x103D7, 4);
        return;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 0xE;
    D_800E3050[omCurrentObj->objId] = -2.0f;
    D_800E3590[omCurrentObj->objId] = 0.0f;
}

void func_801DF260_ovl15(struct GObj *arg0) {
    D_800EA6E0[D_800E0D50[omCurrentObj->objId]] = D_800E3050[omCurrentObj->objId];
    // the do/while(0) wrapper is load-bearing: it splits the basic block and fixes register allocation
    do { func_801E1E88_ovl15(arg0); D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D92AC; func_801E19D0_ovl15(D_800DFBD0[omCurrentObj->objId][4], D_800DFBD0[omCurrentObj->objId][22], 0); if (D_800D7098.unk0 != 0) { D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9120; } else if (D_800EA1A0[omCurrentObj->objId] != 0) { D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9120; } else { D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D90D8; } func_801E1868_ovl15(D_800DFBD0[omCurrentObj->objId][6], 0, 0); if ((D_800E83E0[omCurrentObj->objId] == 1) && (gEntityFuncListIDArray[omCurrentObj->objId] != 0x10)) { func_801DF410_ovl15(arg0); } } while (0);
    func_801E1C20_ovl15((s32) arg0);
}

void func_801DF410_ovl15(struct GObj *arg0) {
    gEntityFuncListIDArray[omCurrentObj->objId] = 0x10;
    if (D_800D6E5C != 0.0f) {
        func_800BC11C(D_800E7B20[omCurrentObj->objId]);
    }
    D_800EBDA0[omCurrentObj->objId] = func_8019E0A4_ovl7(4, 2);
    D_800EA1A0[omCurrentObj->objId] = 1;
    play_sound(0x19E);
    func_800BB468(3, 0);
    func_800FD754(2, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId] + 200.0f, gEntitiesNextPosZArray[omCurrentObj->objId]);
    D_800D7118.unk3C = 0;
}

#ifdef NON_MATCHING
/* 54/72, and blocked by a header type, not by codegen. Every access to
   D_800E9AA0 here is a plain s32; ovl1_6.h declares it
   `struct EntityThing800E9AA0 *D_800E9AA0[]`, so any spelling that gets an
   s32 out of it -- (s32) on the element, ((s32 *) D_800E9AA0)[i], or
   *(s32 *) &D_800E9AA0[i] -- makes IDO hoist the base address into a
   register for the whole function, where the ROM folds %lo into each plain
   read and only materialises the base in the two read-modify-write arms.
   All three spellings measure 54. This needs `extern s32 D_800E9AA0[]` in
   the TU, which collides with the header at file scope. */
void func_801DF52C_ovl15(struct GObj *arg0) {
    s32 temp;

    D_800D7098.unk14 = 1;
    temp = *(s32 *) &D_800E9AA0[omCurrentObj->objId];
    switch (temp) {
    case 0:
    case 2:
    case 4:
        if (random_soft_s32_range(2) == 0) {
            goto reroll;
        }
        (*(s32 *) &D_800E9AA0[omCurrentObj->objId])++;
        temp = *(s32 *) &D_800E9AA0[omCurrentObj->objId];
        break;
    case 1:
    case 3:
    case 5:
    reroll:
        *(s32 *) &D_800E9AA0[omCurrentObj->objId] =
            D_801E6614_ovl15[*(s32 *) &D_800E9AA0[omCurrentObj->objId] * 2 + random_soft_s32_range(2)];
        temp = *(s32 *) &D_800E9AA0[omCurrentObj->objId];
        break;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = D_801E65FC_ovl15[temp];
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DF52C_ovl15.s")
#endif

void func_801DF64C_ovl15(s32 arg0) {
    s32 i;

    D_800DDFD0[omCurrentObj->objId] = 6;
    gEntityFuncListIDArray[omCurrentObj->objId] = 9;
    D_800E9C60[omCurrentObj->objId] = random_soft_s32_range(2);
    for (i = 0; i != 2; i++) {
        if (gEntityFuncListIDArray[omCurrentObj->objId] != 9) {
            break;
        }
        func_800AA018(D_801E6644_ovl15[D_800E9C60[omCurrentObj->objId]]);
        ohSleep(0x1E);
        play_sound(0x199);
        func_800AF27C();
        D_800E9C60[omCurrentObj->objId] = (D_800E9C60[omCurrentObj->objId] + 1) % 2;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DF790_ovl15.s")

void func_801DF9C8_ovl15(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 7;
    gEntityFuncListIDArray[omCurrentObj->objId] = 9;
    func_800AA018(0x103D1);
    D_800DF310[omCurrentObj->objId] = func_801DFC10_ovl15;
    func_800AF27C();
    func_800AA864(0x103D7, 4);
}

void func_801DFA60_ovl15(struct GObj *arg0) {
    D_800EA6E0[D_800E0D50[omCurrentObj->objId]] = D_800E3050[omCurrentObj->objId];
    // the do/while(0) wrapper is load-bearing: it splits the basic block and fixes register allocation
    do { func_801E1E88_ovl15(arg0); D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D92AC; func_801E19D0_ovl15(D_800DFBD0[omCurrentObj->objId][4], D_800DFBD0[omCurrentObj->objId][22], 0); if (D_800D7098.unk0 != 0) { D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9120; } else if (D_800EA1A0[omCurrentObj->objId] != 0) { D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9120; } else { D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D90D8; } func_801E1868_ovl15(D_800DFBD0[omCurrentObj->objId][6], 0, 0); if ((D_800E83E0[omCurrentObj->objId] == 1) && (gEntityFuncListIDArray[omCurrentObj->objId] != 0x10)) { func_801DF410_ovl15(arg0); } } while (0);
    func_801E1C20_ovl15((s32) arg0);
}

void func_801DFC10_ovl15(s32 arg0, s32 arg1, f32 arg2) {
    s32 temp_v0;

    if ((arg1 == 0) && ((s32) arg2 == 1)) {
        temp_v0 = func_801ACC34_ovl7(0x38, 2);
        if (temp_v0 != 0) {
            D_800E8E60[temp_v0] = 1;
            gEntitiesNextPosXArray[temp_v0] = gEntitiesNextPosXArray[omCurrentObj->objId];
            gEntitiesNextPosYArray[temp_v0] = gEntitiesNextPosYArray[omCurrentObj->objId] + 120.0f;
            gEntitiesNextPosZArray[temp_v0] = gEntitiesNextPosZArray[omCurrentObj->objId];
            D_800E0D50[temp_v0] = omCurrentObj->objId;
        }
    }
}

void func_801DFCF4_ovl15(struct GObj *arg0) {
    s32 i;
    s32 e;
    s32 sp5C;
    s32 sp58;
    Vector sp4C;

    D_800DDFD0[omCurrentObj->objId] = 8;
    gEntityFuncListIDArray[omCurrentObj->objId] = 9;
    func_800AA018(0x103D5);
    D_800D7098.unk24 = 0;
    ohSleep(0xA);
    play_sound(0x251);
    sp5C = random_soft_s32_range(4);
    sp58 = random_soft_s32_range(0xE);
    for (i = 0; i != 4; i++) {
        e = func_801ACC34_ovl7(0x37, 1);
        if (e != 0) {
            D_800E8E60[e] = 1;
            utilGetTransformSRT(&sp4C, D_800DFBD0[omCurrentObj->objId][D_801E65EC_ovl15[i]]);
            gEntitiesNextPosXArray[e] = sp4C.x;
            gEntitiesNextPosYArray[e] = sp4C.y;
            gEntitiesNextPosZArray[e] = sp4C.z;
            ((s32 *) D_800E9AA0)[e] = i;
            D_800E9C60[e] = ((s8 *) D_801E664C_ovl15)[(sp5C * 4) + i];
            D_800E9E20[e] = ((s8 *) D_801E65B4_ovl15)[(sp58 * 4) + i];
        }
    }
    ohSleep(0xA);
    D_800D7098.unk24 = 1;
    play_sound(0x19A);
    func_800AF27C();
    func_800AA864(0x103D7, 0xA);
}

void func_801DFF14_ovl15(struct GObj *arg0) {
    D_800EA6E0[D_800E0D50[omCurrentObj->objId]] = D_800E3050[omCurrentObj->objId];
    // the do/while(0) wrapper is load-bearing: it splits the basic block and fixes register allocation
    do { func_801E1E88_ovl15(arg0); D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D92AC; func_801E19D0_ovl15(D_800DFBD0[omCurrentObj->objId][4], D_800DFBD0[omCurrentObj->objId][22], 0); if (D_800D7098.unk0 != 0) { D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9120; } else if (D_800EA1A0[omCurrentObj->objId] != 0) { D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9120; } else { D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D90D8; } func_801E1868_ovl15(D_800DFBD0[omCurrentObj->objId][6], 0, 0); if ((D_800E83E0[omCurrentObj->objId] == 1) && (gEntityFuncListIDArray[omCurrentObj->objId] != 0x10)) { func_801DF410_ovl15(arg0); } } while (0);
    func_801E1C20_ovl15((s32) arg0);
}

void func_801E00C4_ovl15(GObj *arg0) {
    extern f32 D_800E3050[], D_800E3210[], D_800E3590[], D_800E3750[], D_800E3AD0[], D_800E3C90[];
    extern f32 D_800EA8A0[], D_800EAA60[];
    extern s32 D_800E8920[], D_800EA360[];
/* 65535.0f = 65535.0f : now emitted by this TU */
    f32 thr;

    D_800DDFD0[omCurrentObj->objId] = 9;
    D_800EA360[omCurrentObj->objId] = 1;
    D_800D7098.unk14 = 0;
    D_800D7098.unk4 = 0;
    D_800E3050[omCurrentObj->objId] = -2.0f;
    D_800E3590[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = 0.05f;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800EAA60[omCurrentObj->objId] = ((f32 *) &D_80129210)[1];
    D_800EA8A0[omCurrentObj->objId] = -1.0f;
    play_sound(0x19C);
    func_800AA154(0x103E1);
    play_sound(0x19F);
    D_800EA8A0[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    func_800AA018(0x103CB);
    thr = -7.4e+03f;
    while (thr < gEntitiesNextPosXArray[omCurrentObj->objId]) {
        ohSleep(1);
    }
    D_800D7098.unk8 = 1;
    D_800E3590[omCurrentObj->objId] = 0.1f;
    ohSleep(0x14);
    D_800E3590[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
    D_800E3AD0[omCurrentObj->objId] = 65535.0f;
    D_800EA360[omCurrentObj->objId] = 0;
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801E0380_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801E05A8_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801E0F44_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801E1230_ovl15.s")

void func_801E15B0_ovl15(s32 arg0) {
    if (gEntitiesNextPosYArray[omCurrentObj->objId] < -80.0f) {
        gEntitiesNextPosYArray[omCurrentObj->objId] = -80.0f;
        func_800FB914(3);
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
        ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 1;
        play_sound(0x19D);
    }
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D92D0;
    func_801E19D0_ovl15(D_800DFBD0[omCurrentObj->objId][4], D_800DFBD0[omCurrentObj->objId][22], 0);
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D90FC;
    func_801E19D0_ovl15(D_800DFBD0[omCurrentObj->objId][6], 0, 0);
    func_801E1C20_ovl15(arg0);
}

s32 func_801E173C_ovl15(void) {
    s32 temp_v0;

    temp_v0 = func_8019DD78_ovl7();
    if (temp_v0 != -1) {
        D_800E8E60[temp_v0] = 0;
    }
    return temp_v0;
}

s32 func_801E177C_ovl15(void) {
    func_801E19D0_ovl15();
    if ((D_800E83E0[omCurrentObj->objId] == 2) && (D_800EBDA0[omCurrentObj->objId] == -1)) {
        D_800EBDA0[omCurrentObj->objId] = func_8019E0A4_ovl7(4, 2);
        if ((D_800EBDA0[omCurrentObj->objId] != -1) && (D_800D6E5C != 0.0f)) {
            func_800BC11C(D_800E7B20[omCurrentObj->objId]);
        }
    }
    return D_800E83E0[omCurrentObj->objId];
}

s32 func_801E1868_ovl15(void) {
    f32 sp1C;
    f32 sp18;
    s32 temp_a1;

    sp1C = D_800E7B20[omCurrentObj->objId];
    func_801E19D0_ovl15();
    sp18 = D_800E7B20[omCurrentObj->objId];
    temp_a1 = D_800E83E0[omCurrentObj->objId];
    if (temp_a1 == 2) {
        D_800EBDA0[omCurrentObj->objId] = func_8019E0A4_ovl7(4, 2);
        if ((D_800EBDA0[omCurrentObj->objId] != -1) && (D_800D6E5C != 0.0f)) {
            func_800BC11C(D_800E7B20[omCurrentObj->objId]);
        }
        if ((3.1f < sp1C) && (sp18 < 3.1f)) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 0xF;
            D_800D7098.unk0 = 1;
        }
        D_800EA1A0[omCurrentObj->objId] = 1;
        temp_a1 = D_800E83E0[omCurrentObj->objId];
    }
    return temp_a1;
}

struct Ovl15AnimInfo2 {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 filler4[8];
    s32 unkC;
    u8 filler10[0x10];
};

s32 func_801E19D0_ovl15(s32 arg0, s32 arg1, s32 arg2) {
    struct Ovl15AnimInfo2 sp30;
    struct UnkStruct800E1B50 *ent;
    struct Unk80111C88 *obj;

    ent = D_800E1B50[omCurrentObj->objId];
    func_80111550(omCurrentObj->objId);
    obj = func_80111C88(ent->unk8C, omCurrentObj->objId);
    if (obj != NULL) {
        if (arg0 != 0) {
            obj->unk24->unk8 = arg0;
        }
        if (arg1 != 0) {
            obj->unk24->unk30 = arg1;
        }
        if (arg2 != 0) {
            obj->unk24->unk58 = arg2;
        }
        func_80111ECC(obj);
    }
    if (func_80110B00(&sp30) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp30.unk2;
        ent->unk43 = sp30.unk3;
        ent->unk3E = sp30.unk0;
        ent->unk3F = sp30.unk1;
    } else if (func_80110FD4(&sp30) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp30.unk2;
        ent->unk43 = sp30.unk3;
        ent->unk3E = sp30.unk0;
        ent->unk3F = sp30.unk1;
    } else if (func_80110150(&sp30) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp30.unk2;
        ent->unk43 = sp30.unk3;
        ent->unk3E = sp30.unk0;
        ent->unk3F = sp30.unk1;
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
        ent->unk43 = 0;
    }
    return D_800E83E0[omCurrentObj->objId];
}


s32 func_801E1B98_ovl15(s32 arg0, struct Ovl15AnimInfo *arg1) {
    struct Unk80111C88 *temp_v0;
    struct UnkStruct800E1B50 *sp18;

    sp18 = D_800E1B50[omCurrentObj->objId];
    func_80111550(omCurrentObj->objId);
    temp_v0 = func_80111C88(sp18->unk8C, omCurrentObj->objId);
    if (temp_v0 != NULL) {
        if (arg0 != 0) {
            temp_v0->unk24->unk8 = arg0;
        }
        func_80111ECC(temp_v0);
    }
    func_80110150(arg1);
}

s32 func_801E1B98_ovl15(s32, struct Ovl15AnimInfo *);

void func_801E1C20_ovl15(s32 arg0) {
    struct Ovl15AnimInfo sp24;

    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D8F70;
    if (func_801E1B98_ovl15((s32) D_800DFBD0[omCurrentObj->objId][4], &sp24) != 0) {
        func_80169430_ovl3(sp24.unkC, sp24.unk0, sp24.unk1, 0xB);
        D_800EBF60[omCurrentObj->objId] = 0;
        D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    } else {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D8F94;
        if (func_801E1B98_ovl15((s32) D_800DFBD0[omCurrentObj->objId][4], &sp24) != 0) {
            func_80169430_ovl3(sp24.unkC, sp24.unk0, sp24.unk1, 0xC);
            D_800EBF60[omCurrentObj->objId] = 0;
            D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
        } else {
            D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D8FB8;
            if (func_801E1B98_ovl15((s32) D_800DFBD0[omCurrentObj->objId][4], &sp24) != 0) {
                func_80169430_ovl3(sp24.unkC, sp24.unk0, sp24.unk1, 0xD);
                D_800EBF60[omCurrentObj->objId] = 0;
                D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
            } else {
                D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D8FDC;
                if (func_801E1B98_ovl15((s32) D_800DFBD0[omCurrentObj->objId][4], &sp24) != 0) {
                    func_80169430_ovl3(sp24.unkC, sp24.unk0, sp24.unk1, 0xE);
                    D_800EBF60[omCurrentObj->objId] = 0;
                    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
                }
            }
        }
    }
}


void func_801E1E88_ovl15(struct GObj *arg0) {
    if (gEntitiesNextPosYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesNextPosYArray[omCurrentObj->objId] = 0.0f;
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
        D_800E8920[omCurrentObj->objId] = 1;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801E1F34_ovl15.s")

/* Last function of this translation unit: the five nops after its `.size` are
 * the linker aligning the NEXT object (src/ovl15/ovl15b.c) to 32, not
 * instructions, and kirby64.yaml declares the residue as a `pad`. It is now
 * ordinary decompilation work -- 490 instructions with a jump table. */
#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801E27BC_ovl15.s")
