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
void func_800A1F30(void *);
s32 func_800A8100(s32, s32, s32, struct DObj *);
s32 func_800A8234(s32, s32, s32);
void func_800A9760(s32);
void func_800A9EA4(s32);
void func_800AA038(s32, f32, s32);
void func_800AA0C4(s32, f32);
/* K&R form is load-bearing here: ovl15.c's own guarded PORT draft (func_801DBEAC_ovl15)
 * calls this with only 1 of its real 2 args (f32, s32); an ANSI prototype breaks the
 * Makefile.pc compile with "too few arguments". */
void func_800AEDD0();
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
void func_80198880_ovl7(void *);
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

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
void func_801DB400_ovl15(s32 arg0) {
    s32 temp_v0;
    s32 temp_v0_2;
    u32 temp_a0;
    u32 var_v1;

    func_800B19F4(0x79, omCurrentObj->objId);
    func_800AFBB4(0, omCurrentObj);
    D_800DEF90[omCurrentObj->objId] = func_800B7790;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_800DF150[omCurrentObj->objId] = NULL;
    func_800B33F4();
    D_800D7098.unk3C = 0;
    var_v1 = 0;
    D_800D7098.unk2C = 0;
    D_800D7098.unk28 = 0;
    D_800D7098.unkC = 0;
    D_800D7098.unk8 = 0;
    D_800D7098.unk38 = omCurrentObj->objId;
loop_1:
    if (var_v1 < 0xAU) {
loop_2:
        switch (var_v1) {
        case 0:
            temp_v0 = func_8019E0A4_ovl7(4, 3);
            D_800EBBE0[omCurrentObj->objId] = temp_v0;
            D_800D7098.unk30 = (u32) temp_v0;
            temp_v0_2 = func_8019E0A4_ovl7(4, 1);
            D_800EC120[omCurrentObj->objId] = temp_v0_2;
            D_800D7098.unk34 = (u32) temp_v0_2;
            temp_a0 = omCurrentObj->objId;
            D_800EBBE0[D_800EBBE0[temp_a0]] = D_800EC120[temp_a0];
            var_v1 = D_800D7098.unk3C;
            if (var_v1 == 0) {
                do {
                    ohSleep(1);
                    var_v1 = D_800D7098.unk3C;
                } while (var_v1 == 0);
            }
            goto loop_1;
        case 1:
            if (var_v1 == 1) {
                do {
                    ohSleep(1);
                    var_v1 = D_800D7098.unk3C;
                } while (var_v1 == 1);
            }
            goto loop_1;
        case 2:
            if (var_v1 == 2) {
                do {
                    ohSleep(1);
                    var_v1 = D_800D7098.unk3C;
                } while (var_v1 == 2);
            }
            goto loop_1;
        case 3:
            if (var_v1 == 3) {
                do {
                    ohSleep(1);
                    var_v1 = D_800D7098.unk3C;
                } while (var_v1 == 3);
            }
            goto loop_1;
        case 4:
            if (var_v1 == 4) {
                do {
                    ohSleep(1);
                    var_v1 = D_800D7098.unk3C;
                } while (var_v1 == 4);
            }
            goto loop_1;
        case 5:
            if (var_v1 == 5) {
                do {
                    ohSleep(1);
                    var_v1 = D_800D7098.unk3C;
                } while (var_v1 == 5);
            }
            goto loop_1;
        case 6:
            if (var_v1 == 6) {
                do {
                    ohSleep(1);
                    var_v1 = D_800D7098.unk3C;
                } while (var_v1 == 6);
            }
            goto loop_1;
        case 7:
            if (var_v1 == 7) {
                do {
                    ohSleep(1);
                    var_v1 = D_800D7098.unk3C;
                } while (var_v1 == 7);
            }
            goto loop_1;
        case 8:
            if (var_v1 == 8) {
                do {
                    ohSleep(1);
                    var_v1 = D_800D7098.unk3C;
                } while (var_v1 == 8);
            }
            goto loop_1;
        case 9:
            if (var_v1 == 9) {
                do {
                    ohSleep(1);
                    var_v1 = D_800D7098.unk3C;
                } while (var_v1 == 9);
                if (var_v1 < 0xAU) {
                    goto loop_2;
                }
            } else {
                goto loop_1;
            }
            break;
        }
    }
    curObjSleepForever();
    var_v1 = D_800D7098.unk3C;
    goto loop_1;
}
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DB400_ovl15.s")
#endif

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
void func_801DB770_ovl15(s32 arg0) {
    GObj *temp_v1;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_4;
    u32 temp_v0;
    u32 temp_v0_10;
    u32 temp_v0_11;
    u32 temp_v0_12;
    u32 temp_v0_13;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v0_4;
    u32 temp_v0_5;
    u32 temp_v0_6;
    u32 temp_v0_7;
    u32 temp_v0_8;
    u32 temp_v0_9;
    u32 var_a0;

    D_800E8E60[omCurrentObj->objId] = 0;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    func_800B19F4(0x71, omCurrentObj->objId);
    func_800AFBB4(0, omCurrentObj);
    func_801129AC();
    func_801129DC();
    gEntitiesNextPosYArray[omCurrentObj->objId] = 20.0f;
    D_800DEF90[omCurrentObj->objId] = func_800B7138;
    D_800DF150[omCurrentObj->objId] = (void (*)(GObj *)) func_801DBE20_ovl15;
    func_800B33F4();
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    var_a0 = D_800D7098.unk3C;
loop_1:
    if (var_a0 < 0xAU) {
loop_2:
        switch (var_a0) {
        case 0:
            if (var_a0 == 0) {
                do {
                    ohSleep(1);
                    var_a0 = D_800D7098.unk3C;
                } while (var_a0 == 0);
            }
            goto loop_1;
        case 1:
            temp_v1 = omCurrentObj;
            D_800E64D0[temp_v1->objId] = -100.0f;
            temp_v0 = temp_v1->objId;
            var_v0 = temp_v0 * 4;
            if (gEntitiesNextPosXArray[temp_v0] > 6900.0f) {
                do {
                    ohSleep(1);
                    temp_v0_2 = omCurrentObj->objId;
                    var_v0 = temp_v0_2 * 4;
                } while (gEntitiesNextPosXArray[temp_v0_2] > 6900.0f);
            }
            *(D_800E64D0 + var_v0) = -10.0f;
            temp_v0_3 = temp_v1->objId;
            var_v0_2 = temp_v0_3 * 4;
            if (gEntitiesNextPosXArray[temp_v0_3] > 6810.0f) {
                do {
                    ohSleep(1);
                    temp_v0_4 = omCurrentObj->objId;
                    var_v0_2 = temp_v0_4 * 4;
                } while (gEntitiesNextPosXArray[temp_v0_4] > 6810.0f);
            }
            *(D_800E64D0 + var_v0_2) = -1.0f;
            temp_v0_5 = temp_v1->objId;
            var_v0_3 = temp_v0_5 * 4;
            if (gEntitiesNextPosXArray[temp_v0_5] > 6801.0f) {
                do {
                    ohSleep(1);
                    temp_v0_6 = omCurrentObj->objId;
                    var_v0_3 = temp_v0_6 * 4;
                } while (gEntitiesNextPosXArray[temp_v0_6] > 6801.0f);
            }
            *(D_800E64D0 + var_v0_3) = -0.1f;
            temp_v0_7 = temp_v1->objId;
            var_v0_4 = temp_v0_7 * 4;
            if (gEntitiesNextPosXArray[temp_v0_7] > 6800.1f) {
                do {
                    ohSleep(1);
                    temp_v0_8 = omCurrentObj->objId;
                    var_v0_4 = temp_v0_8 * 4;
                } while (gEntitiesNextPosXArray[temp_v0_8] > 6800.1f);
            }
            *(D_800E6690 + var_v0_4) = 0.0f;
            temp_v0_9 = temp_v1->objId;
            D_800E64D0[temp_v0_9] = D_800E6690[temp_v0_9];
            D_800E6850[temp_v1->objId] = 65535.0f;
            var_a0 = D_800D7098.unk3C;
            if (var_a0 == 1) {
                do {
                    ohSleep(1);
                    var_a0 = D_800D7098.unk3C;
                } while (var_a0 == 1);
            }
            goto loop_1;
        case 2:
            if (var_a0 == 2) {
                do {
                    ohSleep(1);
                    var_a0 = D_800D7098.unk3C;
                } while (var_a0 == 2);
            }
            goto loop_1;
        case 3:
            D_800D7098.unkC = 1;
            func_800FBF18(2);
            func_800FBE1C();
            D_801292B0.x = gEntitiesNextPosXArray[omCurrentObj->objId];
            D_801292B0.y = gEntitiesNextPosYArray[omCurrentObj->objId];
            D_801292B0.z = gEntitiesNextPosZArray[omCurrentObj->objId];
            func_800FA414(4);
            if (D_800D7088 != 0xB) {
                do {
                    ohSleep(1);
                } while (D_800D7088 != 0xB);
            }
            D_800D7098.unk3C = 4;
            var_a0 = 4;
            goto loop_1;
        case 4:
            if (var_a0 == 4) {
                do {
                    temp_v0_10 = omCurrentObj->objId;
                    D_800E64D0[temp_v0_10] = D_800EA6E0[D_800E0D50[temp_v0_10]];
                    ohSleep(1);
                    var_a0 = D_800D7098.unk3C;
                } while (var_a0 == 4);
            }
            goto loop_1;
        case 5:
            if (var_a0 == 5) {
                do {
                    temp_v0_11 = omCurrentObj->objId;
                    D_800E64D0[temp_v0_11] = D_800EA6E0[D_800E0D50[temp_v0_11]];
                    ohSleep(1);
                    var_a0 = D_800D7098.unk3C;
                } while (var_a0 == 5);
            }
            goto loop_1;
        case 6:
            if (var_a0 == 6) {
                do {
                    temp_v0_12 = omCurrentObj->objId;
                    D_800E64D0[temp_v0_12] = D_800EA6E0[D_800E0D50[temp_v0_12]];
                    ohSleep(1);
                    var_a0 = D_800D7098.unk3C;
                } while (var_a0 == 6);
            }
            D_800E6690[omCurrentObj->objId] = 0.0f;
            temp_v0_13 = omCurrentObj->objId;
            D_800E64D0[temp_v0_13] = D_800E6690[temp_v0_13];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            goto loop_1;
        case 7:
            if (var_a0 == 7) {
                do {
                    ohSleep(1);
                    var_a0 = D_800D7098.unk3C;
                } while (var_a0 == 7);
            }
            goto loop_1;
        case 8:
            if (var_a0 == 8) {
                do {
                    ohSleep(1);
                    var_a0 = D_800D7098.unk3C;
                } while (var_a0 == 8);
            }
            goto loop_1;
        case 9:
            if (var_a0 == 9) {
                do {
                    ohSleep(1);
                    var_a0 = D_800D7098.unk3C;
                } while (var_a0 == 9);
                if (var_a0 < 0xAU) {
                    goto loop_2;
                }
            } else {
                goto loop_1;
            }
            break;
        }
    }
    curObjSleepForever();
    var_a0 = D_800D7098.unk3C;
    goto loop_1;
}
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DB770_ovl15.s")
#endif

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

/* UNMEASURED DRAFT -- transcribed from the listing, never compiled. Ported off
   the matched func_801DD03C_ovl15 (same D_800DEF90/D_800DF150 + setProcessMain
   + func_800B19F4 + func_800AFBB4 head). Three-arm selector is deliberate here:
   unlike func_801DCB64_ovl15, the ROM really does emit all three tests, and the
   last two arms converge on one store block. `track` is the hoisted index
   (D_800E0D50[objId]); the ROM spills track*4 at 0x24($sp) and reuses it for
   D_800EBDA0/D_800EA1A0, which is the hoisted-index lever. */
#ifdef NON_MATCHING
void func_801DBEAC_ovl15(s32 arg0) {
    s32 track;

    D_800DEF90[omCurrentObj->objId] = NULL;
    D_800DF150[omCurrentObj->objId] = NULL;
    track = D_800E0D50[omCurrentObj->objId];
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    func_800B19F4(0x7D, omCurrentObj->objId);
    func_800AFBB4(0, omCurrentObj);
    play_sound(0x198);
    D_800E98E0[omCurrentObj->objId] = 2;
    if ((s32) D_800D7098.unk3C < 4) {
        if (D_800DFF50[track] == 0x103BD) {
            D_800E9AA0[omCurrentObj->objId] = 0;
        } else if (D_800DFF50[track] == 0x103BF) {
            D_800E9AA0[omCurrentObj->objId] = 1;
        } else if (D_800DFF50[track] == 0x103C1) {
            D_800E9AA0[omCurrentObj->objId] = 2;
        } else {
            D_800E9AA0[omCurrentObj->objId] = 2;
        }
    } else {
        D_800E9AA0[omCurrentObj->objId] = 3;
    }
    func_800AEDD0(gameTicksPerDraw);
    func_800AA038(D_801E64F0_ovl15[(s32) D_800E9AA0[omCurrentObj->objId]], 0, track);
    ohSleep(0x2A);
    func_800AA038(0x103DD, 0, track);
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800EBDA0[track] = -1;
    D_800EA1A0[track] = 0;
    ohSleep(2);
    func_8019D958_ovl7((u16) omCurrentObj->objId);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DBEAC_ovl15.s")
#endif

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

void func_801DC594_ovl15(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B7560;
    D_800DF150[omCurrentObj->objId] = func_801DC890_ovl15;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D8E08;
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesNextPosZArray[omCurrentObj->objId] = 0.0f;
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosZArray[omCurrentObj->objId];
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800EA360[omCurrentObj->objId] = 0;
    D_800EA1A0[omCurrentObj->objId] = 0;
    if (random_soft_s32_range(2) != 0) {
        D_800E6A10[omCurrentObj->objId] = 1.0f;
    } else {
        D_800E6A10[omCurrentObj->objId] = -1.0f;
    }
    D_800E3050[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 40.0f;
    ohSleep(0x10);
    D_800E98E0[omCurrentObj->objId] = 1;
    D_800EA360[omCurrentObj->objId] = func_800A8234(6, 2, 0xA);
    play_sound(0x195);
    D_800E3050[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -40.0f;
    ohSleep(0x20);
    D_800E98E0[omCurrentObj->objId] = 2;
    if (D_800EA360[omCurrentObj->objId] != 0) {
        func_800A1F30((void *) D_800EA360[omCurrentObj->objId]);
        D_800EA360[omCurrentObj->objId] = 0;
    }
    D_800E3050[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 40.0f;
    ohSleep(0x10);
    D_800E98E0[omCurrentObj->objId] = 3;
    func_800B33F4();
    ohSleep(0xA);
    func_8019D958_ovl7((u16) omCurrentObj->objId);
}

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

/* FACTORY: 94/145, INSTRUCTION COUNT EXACT, whole-function callee-saved
   permutation.  Fresh port of the matched func_801DC13C_ovl15 above (identical
   head: the shared 0.0f through gEntitiesAngle{Z,Y,X} / D_800E9020 / D_800E17D0,
   the two function-pointer stores, func_800A9864, and the
   `if (cond) do { ohSleep(1); } while (cond);` tail).  Every instruction, both
   branch-likelies, the frame 0x30, the six saved registers and the parameter
   home store are the ROM's; only the saved-register NAMES rotate
   (&omCurrentObj $s4->$s1, &D_800E0D50 $s2->$s3, &D_800DFF50 $s1->$s2) plus the
   $v0/$v1 pair in the head swapping with them.
   Worth keeping: the scale selector must be written with TWO arms, not three.
   The ROM tests 0x103BD, 0x103BF and 0x103C1 and the third arm stores the same
   1.5f as the default, so m2c's natural three-arm `else if (== 0x103C1)` form
   reads correctly but emits FOUR extra instructions (149 vs 145); folding it
   into the else gives the exact length, because IDO re-materialises $s0 for the
   wait loop anyway and the ROM's third `beq` is the loop's test hoisted, not a
   third assignment. */
#ifdef NON_MATCHING
void func_801DCB64_ovl15(s32 arg0) {
    f32 temp_f0;

    gEntitiesAngleZArray[omCurrentObj->objId] = 0.0f;
    temp_f0 = gEntitiesAngleZArray[omCurrentObj->objId];
    gEntitiesAngleYArray[omCurrentObj->objId] = temp_f0;
    gEntitiesAngleXArray[omCurrentObj->objId] = temp_f0;
    D_800E9020[omCurrentObj->objId] = 0.0f;
    D_800E17D0[omCurrentObj->objId] = D_800E9020[omCurrentObj->objId];
    D_800DEF90[omCurrentObj->objId] = func_800B4924;
    D_800DF150[omCurrentObj->objId] = func_801DCDA8_ovl15;
    func_800A9864(0x100DA, 0x23, 0x10);
    if ((D_800DFF50[D_800E0D50[omCurrentObj->objId]] == 0x103BD) ||
        (D_800DFF50[D_800E0D50[omCurrentObj->objId]] == 0x103BF)) {
        gEntitiesScaleXArray[omCurrentObj->objId] = 3.0f;
    } else {
        gEntitiesScaleXArray[omCurrentObj->objId] = 1.5f;
    }
    func_800AFBB4(0, omCurrentObj);
    if ((D_800DFF50[D_800E0D50[omCurrentObj->objId]] == 0x103BD) ||
        (D_800DFF50[D_800E0D50[omCurrentObj->objId]] == 0x103BF) ||
        (D_800DFF50[D_800E0D50[omCurrentObj->objId]] == 0x103C1)) {
        do {
            ohSleep(1);
        } while ((D_800DFF50[D_800E0D50[omCurrentObj->objId]] == 0x103BD) ||
                 (D_800DFF50[D_800E0D50[omCurrentObj->objId]] == 0x103BF) ||
                 (D_800DFF50[D_800E0D50[omCurrentObj->objId]] == 0x103C1));
    }
    func_8019D958_ovl7((u16) omCurrentObj->objId);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DCB64_ovl15.s")
#endif

/* FACTORY: 21/165, FP register rotation + a 4-byte spill slot, everything else
   exact.  Fresh port off the matched func_801DC310_ovl15 above (same
   utilGetTransformSRT / D_800DFBD0[D_800E0D50[objId]][table[..]] shape).  Frame
   0x58, both Vectors at 0x4C and 0x40, every branch and both FP compares are
   the ROM's.
   TWO THINGS HERE ARE WORTH REUSING, both measured, both large:
   1. HOIST THE TABLE INDEX.  `D_800E7880[objId] - 7` used as a subscript in two
      different tables must be a NAMED LOCAL.  Written inline, IDO folds the -7
      into each load's displacement (`lw $t4, -28($t4)`) and recomputes; the ROM
      does `addiu $v1,-7` then one `sll`, and spills that byte offset at
      0x28($sp) to reuse for the second table.  This one edit took the function
      from 154/166 to 33/165.
   2. PAD LOCALS GO AT THE END OF THE DECLARATION LIST, not the front.  Two
      leading `s32 pad` fixed the frame but left both Vectors 8 bytes low
      (30/165); the same two pads declared LAST put them at 0x4C/0x40 (21/165).
      Later declarations take the lower addresses, so trailing pads are what
      push earlier locals up.
   Residue: the compiler temp lands at 0x24($sp) where the ROM has 0x28, and a
   third pad overshoots the frame to 0x60 (31/165) -- the +8 frame anomaly, a
   4-byte offset that no local arrangement reaches.  The FP names rotate with it
   ($f2/$f16/$f14 -> $f16/$f14/$f2).  Permuter food. */
#ifdef NON_MATCHING
/* 19/165 (was 21): the second dead word `pad0` was costing 2 -- measured by
   deleting each pad in turn. One dead word is right, two is not. */
void func_801DCDA8_ovl15(s32 arg0) {
    Vector sp4C;
    Vector sp40;
    f32 span;
    s32 idx;
    s32 pad1;

    idx = D_800E7880[omCurrentObj->objId] - 7;
    utilGetTransformSRT(&sp4C, D_800DFBD0[D_800E0D50[omCurrentObj->objId]][D_801E6500_ovl15[idx]]);
    if (sp4C.z < -80.0f) {
        func_800AFBB4(0, omCurrentObj);
        return;
    }
    func_800AFBB4(1, omCurrentObj);
    gEntitiesNextPosXArray[omCurrentObj->objId] = sp4C.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = 3.0f;
    gEntitiesNextPosZArray[omCurrentObj->objId] = sp4C.z;
    if (80.0f < gEntitiesNextPosZArray[omCurrentObj->objId]) {
        gEntitiesNextPosZArray[omCurrentObj->objId] = 80.0f;
    }
    D_800DFBD0[omCurrentObj->objId][1]->pos.v.x = 0.0f;
    D_800DFBD0[omCurrentObj->objId][1]->pos.v.y = 0.0f;
    D_800DFBD0[omCurrentObj->objId][1]->pos.v.z = 0.0f;
    utilGetTransformSRT(&sp40, D_800DFBD0[D_800E0D50[omCurrentObj->objId]][(&D_801E6508_ovl15)[idx]]);
    span = sp4C.z - sp40.z;
    if (sp4C.z == sp40.z) {
        span = 0.00001f;
    }
    span = (sp4C.z + 80.0f) / span;
    D_800DFBD0[omCurrentObj->objId][2]->pos.v.x = (sp40.x - sp4C.x) * span;
    D_800DFBD0[omCurrentObj->objId][2]->pos.v.y = 0.0f;
    D_800DFBD0[omCurrentObj->objId][2]->pos.v.z = (sp40.z - sp4C.z) * span;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DCDA8_ovl15.s")
#endif

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

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
void func_801DD4EC_ovl15(s32 arg0) {
    f32 *temp_v1;
    u32 temp_v1_2;

    func_800AED20(0.0f);
    func_800AECC0(gameTicksPerDraw);
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800B33F4();
    func_800AA018(0x103CB);
    func_800AA018(0x103DD);
    D_800EBDA0[omCurrentObj->objId] = -1;
    play_sound(0x19F);
    temp_v1 = &gEntitiesNextPosYArray[omCurrentObj->objId];
    *temp_v1 -= 1116.0f;
    D_800E3210[omCurrentObj->objId] = 60.0f;
    D_800E3750[omCurrentObj->objId] = -1.5f;
    if (D_800E3210[omCurrentObj->objId] > 0.0f) {
        do {
            ohSleep(1);
        } while (D_800E3210[omCurrentObj->objId] > 0.0f);
    }
    ohSleep(0xA);
    D_800E3750[omCurrentObj->objId] = 0.5f;
    ohSleep(0x28);
    D_800E3750[omCurrentObj->objId] = -0.5f;
    ohSleep(0xA);
    D_800E3750[omCurrentObj->objId] = 0.0f;
    temp_v1_2 = omCurrentObj->objId;
    D_800E3210[temp_v1_2] = D_800E3750[temp_v1_2];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    ohSleep(0x1E);
    func_800BC1FC((s32) D_800E7B20[omCurrentObj->objId]);
    func_800AEFFC(2);
    D_800D7098.unk3C = 1;
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DD4EC_ovl15.s")
#endif

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

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
void func_801DD950_ovl15(s32 arg0) {
    GObj *temp_v1;

    temp_v1 = omCurrentObj;
    D_800DDFD0[temp_v1->objId] = 1;
    gEntityFuncListIDArray[temp_v1->objId] = 1;
    D_800EAC20[temp_v1->objId] = 0.0f;
    switch (D_800D7098.unk20) {                     /* irregular */
    case 0:
        D_800E9C60[omCurrentObj->objId] = random_soft_s32_range(2);
        D_800D7098.unk20 += 1;
        D_800D7098.unk1C = (u32) D_800E9C60[omCurrentObj->objId];
        break;
    case 1:
        if (random_soft_s32_range(4) == 0) {
            D_800E9C60[omCurrentObj->objId] = (s32) D_800D7098.unk1C;
        } else {
            D_800E9C60[omCurrentObj->objId] = ~D_800D7098.unk1C & 1;
        }
        D_800D7098.unk20 += 1;
        D_800D7098.unk1C = (u32) D_800E9C60[omCurrentObj->objId];
        break;
    default:
    case 2:
        D_800E9C60[temp_v1->objId] = ~D_800D7098.unk1C & 1;
        D_800D7098.unk20 = 1;
        D_800D7098.unk1C = (u32) D_800E9C60[temp_v1->objId];
        break;
    }
    func_8019E0A4_ovl7(4, D_801E654C_ovl15[D_800E9C60[temp_v1->objId]]);
    func_800AECC0(gameTicksPerDraw * 0.7f);
    func_800AA018(D_801E6544_ovl15[D_800E9C60[omCurrentObj->objId]]);
    ohSleep(0x2D);
    play_sound(0x1A4);
    func_8019E0A4_ovl7(4, 9);
    func_800AF27C();
    func_800AECC0(gameTicksPerDraw);
}
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DD950_ovl15.s")
#endif

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

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below.
   The seven M2C_ERROR("read from unset register $v0") holes that used to sit
   in the spawn loop at the tail were func_801ACCA0_ovl7's return value -- m2c had
   inferred that callee as `void` and then saw $v0 being read. The listing is
   unambiguous: `jal func_801ACCA0_ovl7 / beqz $v0 / sll $v1, $v0, 2` and every
   one of the six arrays below is indexed by that same $v1 ($s7 = D_800E8E60,
   $s2 = D_800E5F90, $s3 = D_800E6BD0, $s4/$s5/$s6 = the three
   gEntitiesNextPos*Arrays). It is the id of the entity func_801ACCA0_ovl7 just
   created, so it is captured in `temp_v0_3` here; the prototype at the top of
   this file already says `s32`. Same defect and same fix as the note in
   src/ovl5/ovl5_7.c. */
void func_801DDE90_ovl15(s32 arg0) {
    f32 var_f0;
    s32 var_s1;
    s32 var_v0;
    u32 temp_v0;
    u32 temp_v0_2;
    s32 temp_v0_3;

    D_800DDFD0[omCurrentObj->objId] = 2;
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
    D_800E9FE0[omCurrentObj->objId].as_u32 = -1U;
    D_800EAC20[omCurrentObj->objId] = 0.0f;
    D_800E9E20[omCurrentObj->objId] = 0;
    func_8019E0A4_ovl7(4, 7);
    func_8019E0A4_ovl7(4, 8);
    func_800AECC0(gameTicksPerDraw * 0.8f);
    func_800AA018(0x103C1);
    temp_v0 = omCurrentObj->objId;
    var_v0 = temp_v0 * 4;
    var_f0 = D_800EAC20[temp_v0];
    if (var_f0 <= 254.0f) {
        do {
            if ((*(D_800E9E20 + var_v0) == 0) && (var_f0 > 70.0f)) {
                play_sound(0x1A4);
                D_800E9E20[omCurrentObj->objId] = 1;
                var_f0 = D_800EAC20[omCurrentObj->objId];
            }
            if (var_f0 > 124.0f) {
                func_800AECC0(gameTicksPerDraw);
            }
            ohSleep(1);
            temp_v0_2 = omCurrentObj->objId;
            var_v0 = temp_v0_2 * 4;
            var_f0 = D_800EAC20[temp_v0_2];
        } while (var_f0 <= 254.0f);
    }
    *(D_800E9E20 + var_v0) = 2;
    play_sound(0x1A0);
    func_800BB468(0, 0);
    func_8019E0A4_ovl7(4, 6);
    func_800FB914(2);
    ohSleep(1);
    var_s1 = 0;
    do {
        temp_v0_3 = func_801ACCA0_ovl7(0x10, var_s1, 0, 0);
        var_s1 += 1;
        if (temp_v0_3 != 0) {
            D_800E8E60[temp_v0_3] = 1;
            D_800E5F90[temp_v0_3] = D_800E5F90[D_800E0D50[omCurrentObj->objId]];
            D_800E6BD0[temp_v0_3] = D_800E6BD0[D_800E0D50[omCurrentObj->objId]];
            gEntitiesNextPosXArray[temp_v0_3] = gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]];
            gEntitiesNextPosYArray[temp_v0_3] = gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]] + 20.0f;
            gEntitiesNextPosZArray[temp_v0_3] = gEntitiesNextPosZArray[D_800E0D50[omCurrentObj->objId]];
        }
    } while (var_s1 != 2);
    func_800AF27C();
    func_800AECC0(gameTicksPerDraw);
}
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DDE90_ovl15.s")
#endif

void func_801DE234_ovl15(struct GObj *arg0) {
    extern f32 D_800E09D0[], D_800EAC20[];
    struct Ovl15AnimInfo sp2C;
    s32 c;

    if ((100.0f <= D_800EAC20[omCurrentObj->objId]) && (D_800EAC20[omCurrentObj->objId] <= 410.0f)) {
        c = D_800EBDA0[omCurrentObj->objId] == -1;
        if (D_800EAC20[omCurrentObj->objId] < 124.0f) { if (c) { D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D8B38; } else { D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D8ACC; } } else if (D_800EAC20[omCurrentObj->objId] < 360.0f) { if (c) { D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D8B5C; } else { D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D8AF0; } } else { if (c) { D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D8B80; } else { D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D8B14; } }
        func_801E177C_ovl15(D_800DFBD0[omCurrentObj->objId][17], D_800DFBD0[omCurrentObj->objId][11], 0);
        if (D_800E83E0[omCurrentObj->objId] == 1) {
            if (gEntityFuncListIDArray[omCurrentObj->objId] != 7) {
                func_801DDD74_ovl15(arg0);
            }
        } else if (D_800EAC20[omCurrentObj->objId] <= 124.0f) {
            D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D8DC0;
            if (func_801E1B98_ovl15((s32) D_800DFBD0[omCurrentObj->objId][17], &sp2C) != 0) {
                func_80169430_ovl3(sp2C.unkC, sp2C.unk0, sp2C.unk1, 9);
                D_800EBF60[omCurrentObj->objId] = 0;
                D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
            } else if (func_801E1B98_ovl15((s32) D_800DFBD0[omCurrentObj->objId][11], &sp2C) != 0) {
                func_80169430_ovl3(sp2C.unkC, sp2C.unk0, sp2C.unk1, 0xA);
                D_800EBF60[omCurrentObj->objId] = 0;
                D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
            }
        }
    }
    if (124.0f < D_800EAC20[omCurrentObj->objId]) {
        D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
    }
    if (256.0f < D_800EAC20[omCurrentObj->objId]) {
        D_800E9FE0[omCurrentObj->objId].as_s32 = 2;
    }
    D_800EAC20[omCurrentObj->objId] += D_800E09D0[omCurrentObj->objId];
}


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

/* The `*(s32 *)&` on D_800D7098.unk3C is load-bearing, not decoration: the ROM
 * parks the constant 3 in $s0 and shares it between this store, the wait-loop
 * compare and func_800FB914's argument.  Read through the header's `u32`
 * field the compare's 3 is a different TYPE from func_800FB914's s32
 * parameter, IDO refuses the CSE and re-materialises `li a0,3` (LEVERS lever
 * 45).  Resolving it properly means retyping UnkStruct800D7098.unk3C, which is
 * a shared header. */
void func_801DEA98_ovl15(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 4;
    func_800AED20(0.0f);
    func_800AECC0(gameTicksPerDraw);
    func_800B33F4();
    D_800EA1A0[omCurrentObj->objId] = 0;
    D_800EBDA0[omCurrentObj->objId] = -1;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800D7098.unk0 = 0;
    D_800D7118.unk3C = -1;
    play_sound(0x19F);
    D_800E33D0[omCurrentObj->objId] = 13.5f;
    D_800EAC20[omCurrentObj->objId] = -0.03926990926f;
    D_800E3750[omCurrentObj->objId] = 1.0f;
    ohSleep(0x14);
    D_800E3750[omCurrentObj->objId] = -1.0f;
    ohSleep(0x14);
    D_800E3C90[omCurrentObj->objId] = 20.0f;
    D_800EAC20[omCurrentObj->objId] = 0.0f;
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.y = -1.570796371f;
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E33D0[omCurrentObj->objId] =
        D_800E3590[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = 65535.0f;
    D_800E3AD0[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    D_800DEF90[omCurrentObj->objId] = func_800B7138;
    D_800E8E60[omCurrentObj->objId] = 0;
    D_800E6A10[omCurrentObj->objId] = -1.0f;
    D_800E5F90[omCurrentObj->objId] = D_800E5F90[D_800E0D50[omCurrentObj->objId]];
    D_800E6BD0[omCurrentObj->objId] = D_800E6BD0[D_800E0D50[omCurrentObj->objId]];
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[D_800E0D50[omCurrentObj->objId]];
    D_800E8920[omCurrentObj->objId] = 0;
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.y = 0.0f;
    while (D_800E8920[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    *(s32 *) &D_800D7098.unk3C = 3;
    D_800D7098.unk2C = 1;
    D_800DEF90[omCurrentObj->objId] = func_800B7790;
    D_800E8E60[omCurrentObj->objId] = 1;
    func_800B33F4();
    func_800FB914(3);
    play_sound(0x19D);
    play_sound(0x19C);
    func_800AA154(0x103DF);
    D_800D7098.unk14 = 1;
    func_800AA018(0x103D7);
    while (*(s32 *) &D_800D7098.unk3C == 3) {
        ohSleep(1);
    }
    D_800E7B20[omCurrentObj->objId] = 6.0f;
    func_800BC1FC((s32) D_800E7B20[omCurrentObj->objId]);
    D_800E3590[omCurrentObj->objId] = -0.2f;
    D_800E3AD0[omCurrentObj->objId] = 2.0f;
    func_800AA864(0x103D7, 4);
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 9;
}

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

void func_801DF790_ovl15(struct GObj *arg0) {
    extern f32 D_800E3050[], D_800EA6E0[];

    D_800EA6E0[D_800E0D50[omCurrentObj->objId]] = D_800E3050[omCurrentObj->objId];
    func_801E1E88_ovl15(arg0);
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D92AC;
    func_801E19D0_ovl15((s32) D_800DFBD0[omCurrentObj->objId][4], (s32) D_800DFBD0[omCurrentObj->objId][22], 0);
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D906C;
    if (D_800E9C60[omCurrentObj->objId] != 0) {
        func_801E19D0_ovl15((s32) D_800DFBD0[omCurrentObj->objId][12], (s32) D_800DFBD0[omCurrentObj->objId][13], 0);
    } else {
        func_801E19D0_ovl15((s32) D_800DFBD0[omCurrentObj->objId][18], (s32) D_800DFBD0[omCurrentObj->objId][19], 0);
    }
    if (D_800D7098.unk0 != 0) { D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9120; } else if (D_800EA1A0[omCurrentObj->objId] != 0) { D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9120; } else { D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D90D8; }
    func_801E1868_ovl15(D_800DFBD0[omCurrentObj->objId][6], 0, 0);
    if ((D_800E83E0[omCurrentObj->objId] == 1) && (gEntityFuncListIDArray[omCurrentObj->objId] != 0x10)) {
        func_801DF410_ovl15(arg0);
    }
    func_801E1C20_ovl15((s32) arg0);
}


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

void func_801E0380_ovl15(struct GObj *arg0) {
    extern f32 D_800E3050[], D_800E3210[];
    extern f32 D_800EA6E0[], D_800EA8A0[], D_800EAA60[];
    extern s32 D_800EA360[];

    if (D_800E3210[omCurrentObj->objId] == 0.0f) {
        if ((*(s32 *) &D_800D7098.unk4)++ == 0) {
            play_sound(0x224);
        }
        *(s32 *) &D_800D7098.unk4 = *(s32 *) &D_800D7098.unk4 % 40;
    }
    ((f32 *) &D_80129210)[1] = D_800EA8A0[omCurrentObj->objId] + ((f32 *) &D_80129210)[1];
    if (D_800EAA60[omCurrentObj->objId] < ((f32 *) &D_80129210)[1]) {
        ((f32 *) &D_80129210)[1] = D_800EAA60[omCurrentObj->objId];
    }
    if (((f32 *) &D_80129210)[1] < 70.0f) {
        ((f32 *) &D_80129210)[1] = 70.0f;
    }
    if (D_800EA360[omCurrentObj->objId] != 0) { D_800EA6E0[D_800E0D50[omCurrentObj->objId]] = D_800E3050[omCurrentObj->objId]; } else { D_800EA6E0[D_800E0D50[omCurrentObj->objId]] = 0.0f; }
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D8E98;
    func_801E19D0_ovl15((s32) D_800DFBD0[omCurrentObj->objId][4], (s32) D_800DFBD0[omCurrentObj->objId][22], 0);
    if (D_800DFF50[omCurrentObj->objId] == 0x103CB) {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D921C;
        func_801E19D0_ovl15((s32) D_800DFBD0[omCurrentObj->objId][44], (s32) D_800DFBD0[omCurrentObj->objId][44], 0);
    }
}


/* FACTORY: 2/615 measured (verify.py prints 9; seven are phantom
   own-.rodata notes -- ovl15.c owns its late_rodata).  The two real words are
   a scheduling tie-break at the second `ohSleep(0xA)`: the ROM materialises
   the argument before the 1.0f constant, IDO does it the other way round.
   Everything else -- all 615 words, both wait loops, all four ABS blocks, the
   frame 0x40 and the sp+0x38 spill -- is the ROM's.
   Three levers carried this one and are worth keeping:
   - `ABS()` not `ABSF()` (LEVERS lever 3).  The ROM materialises a FRESH
     `mtc1 $zero` for each of the three absolute values while keeping one
     hoisted 0.0f in $f20 for every store and every `0.0f < x` compare.
     ABSF's `0.0f` CSEs with that held zero and the three words vanish
     (269/615); ABS's integer 0 forks it (13/615).  A `f32 z = 0.0f` local
     instead reproduces the fork but costs either a stack home store or the
     wrong materialisation point -- both measured, both worse.
   - the loop's steering test needs the difference in a NAMED LOCAL (lever 20):
     written `if (0.0f < (gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[i]))`
     IDO folds it to a bare `c.lt.s` of the two loads and never forms the
     subtraction (407/615 -> 269/615).
   - `s32 pad` BEFORE `f32 d` is load-bearing: later locals take the lower
     address and the ROM's `d` lives at sp+0x38, not sp+0x3C. */
#if defined(MIPS_TO_C) || defined(PORT)
/* One arm: nothing here is N64-only. */
void func_801E05A8_ovl15(struct GObj *arg0) {
    s32 pad;
    f32 d;

    D_800D7098.unk14 = 0;
    D_800DDFD0[omCurrentObj->objId] = 0xA;
    D_800EAC20[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId];
    D_800D7098.unk18 = 0;
    D_800EAA60[omCurrentObj->objId] = ((f32 *) &D_80129210)[1];
    D_800EA8A0[omCurrentObj->objId] = 0.0f;
    D_800EA360[omCurrentObj->objId] = 1;
    D_800E3590[omCurrentObj->objId] = 0.1f;
    ohSleep(0x14);
    D_800E3590[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
    D_800E3AD0[omCurrentObj->objId] = 65535.0f;
    D_800EA360[omCurrentObj->objId] = 0;
    D_800EA8A0[omCurrentObj->objId] = -1.0f;
    D_800E8920[omCurrentObj->objId] = 0;
    play_sound(0x19C);
    play_sound(0x1A1);
    func_800AA018(0x103E1);
    D_800E3750[omCurrentObj->objId] = 2.0f;
    ohSleep(0x19);
    D_800E3750[omCurrentObj->objId] = -2.0f;
    ohSleep(0x19);
    D_800EA8A0[omCurrentObj->objId] = 0.0f;
    D_800E5F90[omCurrentObj->objId] = D_800E5F90[0];
    D_800E6BD0[omCurrentObj->objId] = D_800E6BD0[0];
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[0];
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[0];
    func_800AA018(0x103D3);
    D_800E3210[omCurrentObj->objId] = -8.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3AD0[omCurrentObj->objId] = 4.0f;
    if (120.0f < gEntitiesNextPosYArray[omCurrentObj->objId]) {
        do {
            if (D_800D7098.unk18 == 0) {
                if (func_8019B918_ovl7() == 0) {
                    play_sound(0x19F);
                    D_800D7098.unk18 = 1;
                }
            }
            d = gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[omCurrentObj->objId];
            if (0.0f < d) {
                D_800E3590[omCurrentObj->objId] = 0.25f;
            } else {
                D_800E3590[omCurrentObj->objId] = -0.25f;
            }
            ohSleep(1);
        } while (120.0f < gEntitiesNextPosYArray[omCurrentObj->objId]);
    }
    D_800E3590[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
    D_800E3AD0[omCurrentObj->objId] = 65535.0f;
    D_800E3590[omCurrentObj->objId] = D_800E3050[omCurrentObj->objId] * -0.1f;
    ohSleep(0xA);
    D_800E3590[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
    D_800E3AD0[omCurrentObj->objId] = 65535.0f;
    if (0.0f < gEntitiesNextPosYArray[omCurrentObj->objId]) {
        do {
            ohSleep(1);
        } while (0.0f < gEntitiesNextPosYArray[omCurrentObj->objId]);
    }
    gEntitiesNextPosYArray[omCurrentObj->objId] = 0.0f;
    func_800B33F4();
    func_800FB914(3);
    play_sound(0x19D);
    func_800AF27C();
    D_800EA8A0[omCurrentObj->objId] = 1.0f;
    play_sound(0x19C);
    func_800AA154(0x103DF);
    D_800EA8A0[omCurrentObj->objId] = 0.0f;
    ((f32 *) &D_80129210)[1] = D_800EAA60[omCurrentObj->objId];
    func_800AA018(0x103D7);
    play_sound(0x194);
    d = D_800EAC20[omCurrentObj->objId] - gEntitiesNextPosXArray[omCurrentObj->objId];
    if (110.0f < ABS(d)) {
        if (0.0f < d) {
            D_800E3590[omCurrentObj->objId] = 1.0f;
        } else {
            D_800E3590[omCurrentObj->objId] = -1.0f;
        }
        ohSleep(0xA);
        if (0.0f < d) {
            D_800E3050[omCurrentObj->objId] = 10.0f;
        } else {
            D_800E3050[omCurrentObj->objId] = -10.0f;
        }
        D_800E3590[omCurrentObj->objId] = 0.0f;
        d = D_800EAC20[omCurrentObj->objId] - gEntitiesNextPosXArray[omCurrentObj->objId];
        if (55.0f < ABS(d)) {
            do {
                ohSleep(1);
                d = D_800EAC20[omCurrentObj->objId] - gEntitiesNextPosXArray[omCurrentObj->objId];
            } while (55.0f < ABS(d));
        }
        if (0.0f < d) {
            D_800E3590[omCurrentObj->objId] = -1.0f;
        } else {
            D_800E3590[omCurrentObj->objId] = 1.0f;
        }
        ohSleep(0xA);
        if (0.0f < d) {
            D_800E3050[omCurrentObj->objId] = -1.0f;
        } else {
            D_800E3050[omCurrentObj->objId] = 1.0f;
        }
        D_800E3590[omCurrentObj->objId] = 0.0f;
    } else {
        if (0.0f < d) {
            D_800E3050[omCurrentObj->objId] = 1.0f;
        } else {
            D_800E3050[omCurrentObj->objId] = -1.0f;
        }
        if (55.0f < ABS(D_800EAC20[omCurrentObj->objId] - gEntitiesNextPosXArray[omCurrentObj->objId])) {
            do {
                ohSleep(1);
            } while (55.0f <
                     ABS(D_800EAC20[omCurrentObj->objId] - gEntitiesNextPosXArray[omCurrentObj->objId]));
        }
    }
    D_800E3590[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
    D_800E3AD0[omCurrentObj->objId] = 65535.0f;
    D_800D7098.unk14 = 1;
    D_800EA360[omCurrentObj->objId] = 1;
    D_800E3590[omCurrentObj->objId] = -0.1f;
    ohSleep(0x14);
    D_800E3050[omCurrentObj->objId] = -2.0f;
    D_800E3590[omCurrentObj->objId] = 0.0f;
    D_800EA1A0[omCurrentObj->objId] = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = 9;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801E05A8_ovl15.s")
#endif

void func_801E0F44_ovl15(struct GObj *arg0) {
    extern f32 D_800E3050[], D_800EA6E0[], D_800EA8A0[], D_800EAA60[];
    extern s32 D_800EA360[];
    s32 *p;

    D_800D7098.unk0 = 0;
    ((f32 *) &D_80129210)[1] = D_800EA8A0[omCurrentObj->objId] + ((f32 *) &D_80129210)[1];
    if (D_800EAA60[omCurrentObj->objId] < ((f32 *) &D_80129210)[1]) {
        ((f32 *) &D_80129210)[1] = D_800EAA60[omCurrentObj->objId];
    }
    if (((f32 *) &D_80129210)[1] < 70.0f) {
        ((f32 *) &D_80129210)[1] = 70.0f;
    }
    if (D_800EA360[omCurrentObj->objId] != 0) { D_800EA6E0[D_800E0D50[omCurrentObj->objId]] = D_800E3050[omCurrentObj->objId]; } else { D_800EA6E0[D_800E0D50[omCurrentObj->objId]] = 0.0f; }
    func_801E1E88_ovl15(arg0);
    if (D_800DFF50[omCurrentObj->objId] == 0x103D7) {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D92AC;
        func_801E19D0_ovl15((s32) D_800DFBD0[omCurrentObj->objId][4], (s32) D_800DFBD0[omCurrentObj->objId][22], 0);
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9120;
        func_801E19D0_ovl15((s32) D_800DFBD0[omCurrentObj->objId][6], 0, 0);
    } else {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D8E98;
        func_801E19D0_ovl15((s32) D_800DFBD0[omCurrentObj->objId][4], (s32) D_800DFBD0[omCurrentObj->objId][22], 0);
        if (D_800DFF50[omCurrentObj->objId] == 0x103D3) {
            D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D921C;
            func_801E19D0_ovl15((s32) D_800DFBD0[omCurrentObj->objId][44], (s32) D_800DFBD0[omCurrentObj->objId][44], 0);
            if (((u32) D_800BE4EC >> 3) == 0) {
                p = &D_801E665C_ovl15;
                do {
                    func_800A8100(6, 2, 0xC, D_800DFBD0[omCurrentObj->objId][*p]);
                    p++;
                } while (p != D_801E6670_ovl15);
            }
        }
    }
}


#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below.
   The seven M2C_ERROR("read from unset register $v0") holes in the tail block
   were func_801BC794_ovl7's return value: the listing reads
   `jal func_801BC794_ovl7 / addiu $at, $zero, -1 / beq $v0, $at, .L801E1578 /
   sll $a0, $v0, 2`, and $a0 is what indexes all six arrays written there. It
   is the id of the entity that call produced, captured in `temp_v0_2` here.
   Same defect and same fix as the note in src/ovl5/ovl5_7.c. */
void func_801E1230_ovl15(s32 arg0) {
    GObj *temp_v1;
    f32 temp_f10;
    f32 temp_f6;
    f32 var_f20;
    u32 temp_a1;
    u32 temp_v0;
    s32 temp_v0_2;

    D_800D7098.unk14 = 0;
    D_800DDFD0[omCurrentObj->objId] = 0xB;
    func_800B33F4();
    temp_v1 = omCurrentObj;
    D_800E9AA0[temp_v1->objId] = NULL;
    D_800D7118.unk3C = 0;
    D_800D7098.unk3C = 6;
    if (D_800D6B54 == 0) {
        func_8019F1EC_ovl7();
    }
    D_800E3210[temp_v1->objId] = 0.0f;
    D_800E3750[temp_v1->objId] = -0.25f;
    D_800E3050[temp_v1->objId] = -2.0f;
    D_800E3590[temp_v1->objId] = 0.0f;
    var_f20 = 1.0f;
    D_800EA6E0[D_800E0D50[temp_v1->objId]] = -2.0f;
    if (0.0f < 1.0f) {
        do {
            func_800AECC0(gameTicksPerDraw * var_f20);
            ohSleep(1);
            temp_f10 = -2.0f * var_f20;
            var_f20 -= 0.02f;
            D_800E3050[omCurrentObj->objId] = temp_f10;
        } while (var_f20 > 0.0f);
        var_f20 = 1.0f;
    }
    func_800AECC0(0.0f);
    D_800E3590[omCurrentObj->objId] = 0.0f;
    temp_v0 = omCurrentObj->objId;
    D_800E3050[temp_v0] = D_800E3590[temp_v0];
    D_800E3AD0[omCurrentObj->objId] = 65535.0f;
    ohSleep(0x5A);
    if (0.0f < 1.0f) {
        do {
            temp_f6 = -2.0f * var_f20;
            var_f20 -= 0.02f;
            D_800EA6E0[D_800E0D50[omCurrentObj->objId]] = temp_f6;
        } while (var_f20 > 0.0f);
    }
    D_800EA6E0[D_800E0D50[omCurrentObj->objId]] = 0.0f;
    temp_v0_2 = func_801BC794_ovl7(4);
    if (temp_v0_2 != -1) {
        temp_a1 = D_800D7098.unk34;
        D_800E5F90[temp_v0_2] = D_800E5F90[temp_a1];
        D_800E6BD0[temp_v0_2] = D_800E6BD0[temp_a1];
        gEntitiesNextPosXArray[temp_v0_2] = gEntitiesNextPosXArray[omCurrentObj->objId];
        gEntitiesNextPosYArray[temp_v0_2] = gEntitiesNextPosYArray[omCurrentObj->objId] + 200.0f;
        gEntitiesNextPosZArray[temp_v0_2] = gEntitiesNextPosZArray[omCurrentObj->objId];
        D_800E8E60[temp_v0_2] = 1;
    }
    curObjSleepForever();
}
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801E1230_ovl15.s")
#endif

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
    struct EnemyRecord *ent;
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
    struct EnemyRecord *sp18;

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

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below.
   The six M2C_ERROR("read from unset register $v0") holes were
   func_800AF230's return value. Every one of them sits directly under a
   `jal func_800AF230 / nop / beql $v0, $s0, ...` in the listing, and $s0 is
   the literal 1 loaded once at 801E21A8 -- which is where m2c's `!= 1`
   came from. The value is consumed by the test it feeds and never lives
   across another call, so one local serves all six sites.
   Same defect and same fix as the note in src/ovl5/ovl5_7.c. */
void func_801E1F34_ovl15(void) {
    GObj *temp_a1;
    f32 *var_v0;
    f32 temp_f2;
    f32 var_f0;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_v1;
    s32 var_v1_2;
    s32 var_v1_3;
    s32 var_v1_4;
    s32 var_v1_5;
    u32 temp_v1;
    u32 temp_v1_10;
    u32 temp_v1_11;
    u32 temp_v1_12;
    u32 temp_v1_13;
    u32 temp_v1_14;
    u32 temp_v1_15;
    u32 temp_v1_16;
    u32 temp_v1_17;
    u32 temp_v1_18;
    u32 temp_v1_19;
    u32 temp_v1_20;
    u32 temp_v1_21;
    u32 temp_v1_22;
    u32 temp_v1_23;
    u32 temp_v1_24;
    u32 temp_v1_25;
    u32 temp_v1_26;
    u32 temp_v1_27;
    u32 temp_v1_28;
    u32 temp_v1_29;
    u32 temp_v1_2;
    u32 temp_v1_3;
    u32 temp_v1_4;
    u32 temp_v1_5;
    u32 temp_v1_6;
    u32 temp_v1_7;
    u32 temp_v1_8;
    u32 temp_v1_9;

    D_800E8E60[omCurrentObj->objId] = 0;
    temp_v1 = omCurrentObj->objId;
    D_800EA520[temp_v1] = D_800E5F90[temp_v1];
    temp_v1_2 = omCurrentObj->objId;
    D_800EB320[temp_v1_2] = D_800E6BD0[temp_v1_2];
    temp_v1_3 = omCurrentObj->objId;
    D_800EADE0[temp_v1_3] = gEntitiesNextPosXArray[temp_v1_3];
    temp_v1_4 = omCurrentObj->objId;
    D_800EAFA0[temp_v1_4] = gEntitiesNextPosYArray[temp_v1_4];
    temp_v1_5 = omCurrentObj->objId;
    D_800EB160[temp_v1_5] = gEntitiesNextPosZArray[temp_v1_5];
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800E64D0[omCurrentObj->objId] = 0.001f;
    func_800F8E6C(omCurrentObj);
    func_800B33F4();
    temp_v1_6 = omCurrentObj->objId;
    var_v1 = temp_v1_6 * 4;
    var_v0 = &D_800E17D0[temp_v1_6];
    var_f0 = *var_v0;
    if (var_f0 >= 6.2831855f) {
        do {
            *var_v0 = var_f0 - 6.2831855f;
            temp_v1_7 = omCurrentObj->objId;
            var_v1 = temp_v1_7 * 4;
            var_v0 = &D_800E17D0[temp_v1_7];
            var_f0 = *var_v0;
        } while (var_f0 >= 6.2831855f);
    }
    if (var_f0 < 0.0f) {
        do {
            *var_v0 = var_f0 + 6.2831855f;
            temp_v1_8 = omCurrentObj->objId;
            var_v1 = temp_v1_8 * 4;
            var_v0 = &D_800E17D0[temp_v1_8];
            var_f0 = *var_v0;
        } while (var_f0 < 0.0f);
    }
    temp_f2 = var_f0 + 1.5707964f;
    *(gEntitiesAngleYArray + var_v1) = temp_f2;
    D_800EA6E0[omCurrentObj->objId] = temp_f2;
    temp_v1_9 = omCurrentObj->objId;
    D_800EAA60[temp_v1_9] = (sinf(D_800EA6E0[omCurrentObj->objId]) * 540.0f) + gEntitiesNextPosXArray[temp_v1_9];
    temp_v1_10 = omCurrentObj->objId;
    D_800EAC20[temp_v1_10] = (cosf(D_800EA6E0[omCurrentObj->objId]) * 540.0f) + gEntitiesNextPosZArray[temp_v1_10];
    D_800E8E60[omCurrentObj->objId] = 1;
    D_800DF150[omCurrentObj->objId] = func_801E27BC_ovl15;
    func_800AED20(0.0f);
    func_800AECC0(gameTicksPerDraw);
    func_800A9864(0x10066, 0x23, 0x10);
    temp_a1 = omCurrentObj;
    D_800EA360[temp_a1->objId] = 0;
    var_v1_2 = temp_a1->objId * 4;
loop_5:
    *(D_800E8920 + var_v1_2) = 0;
    D_800EA1A0[temp_a1->objId] = 0;
    temp_v1_11 = temp_a1->objId;
    var_v1_2 = temp_v1_11 * 4;
    temp_v0 = D_800EA360[temp_v1_11];
    if (temp_v0 == 0) {
        D_800DEF90[temp_v1_11] = func_800B7560;
        temp_v1_12 = temp_a1->objId;
        gEntitiesNextPosXArray[temp_v1_12] = D_800EAA60[temp_v1_12];
        temp_v1_13 = temp_a1->objId;
        gEntitiesNextPosZArray[temp_v1_13] = D_800EAC20[temp_v1_13];
        gEntitiesNextPosYArray[temp_a1->objId] = -200.0f;
        D_800E9020[temp_a1->objId] = 0.0f;
        D_800E17D0[temp_a1->objId] = 1.5707964f;
        D_800E6A10[temp_a1->objId] = 1.0f;
        temp_v1_14 = temp_a1->objId;
        var_v1_2 = temp_v1_14 * 4;
        if (D_800EA360[temp_v1_14] == 0) {
            do {
                *(D_800E9E20 + var_v1_2) = 0;
                func_800AA018(D_801E6670_ovl15[D_800EA1A0[temp_a1->objId]]);
                temp_v0_2 = func_800AF230();
                if (temp_v0_2 != 1) {
                    temp_v1_16 = omCurrentObj->objId;
                    var_v1_3 = temp_v1_16 * 4;
                    if (D_800EA360[temp_v1_16] == 0) {
loop_12:
                        if (*(D_800DFF50 + var_v1_3) == D_801E6670_ovl15[*(D_800EA1A0 + var_v1_3)]) {
                            ohSleep(1);
                            temp_v0_2 = func_800AF230();
                            if (temp_v0_2 != 1) {
                                temp_v1_17 = omCurrentObj->objId;
                                var_v1_3 = temp_v1_17 * 4;
                                if (D_800EA360[temp_v1_17] == 0) {
                                    goto loop_12;
                                }
                            }
                        }
                    }
                }
                temp_v1_15 = omCurrentObj->objId;
                var_v1_2 = temp_v1_15 * 4;
            } while (D_800EA360[temp_v1_15] == 0);
        }
        goto loop_5;
    }
    if (temp_v0 == 1) {
        D_800DEF90[temp_v1_11] = func_800B7560;
        D_800E6A10[temp_a1->objId] = -1.0f;
        temp_v1_18 = temp_a1->objId;
        gEntitiesNextPosXArray[temp_v1_18] = D_800EADE0[temp_v1_18];
        gEntitiesNextPosYArray[temp_a1->objId] = 0.0f;
        temp_v1_19 = temp_a1->objId;
        gEntitiesNextPosZArray[temp_v1_19] = D_800EB160[temp_v1_19];
        D_800E9020[temp_a1->objId] = 0.0f;
        D_800E17D0[temp_a1->objId] = 3.1415927f;
        temp_v1_20 = temp_a1->objId;
        var_v1_2 = temp_v1_20 * 4;
        if (D_800EA360[temp_v1_20] == 1) {
            do {
                *(D_800E9E20 + var_v1_2) = 0;
                func_800AA018(D_801E6680_ovl15[D_800EA1A0[temp_a1->objId]]);
                temp_v0_2 = func_800AF230();
                if (temp_v0_2 != 1) {
                    temp_v1_22 = omCurrentObj->objId;
                    var_v1_4 = temp_v1_22 * 4;
                    if (D_800EA360[temp_v1_22] == 1) {
loop_20:
                        if (*(D_800DFF50 + var_v1_4) == D_801E6680_ovl15[*(D_800EA1A0 + var_v1_4)]) {
                            ohSleep(1);
                            temp_v0_2 = func_800AF230();
                            if (temp_v0_2 != 1) {
                                temp_v1_23 = omCurrentObj->objId;
                                var_v1_4 = temp_v1_23 * 4;
                                if (D_800EA360[temp_v1_23] == 1) {
                                    goto loop_20;
                                }
                            }
                        }
                    }
                }
                temp_v1_21 = omCurrentObj->objId;
                var_v1_2 = temp_v1_21 * 4;
            } while (D_800EA360[temp_v1_21] == 1);
        }
        goto loop_5;
    }
    if (temp_v0 != 2) {
        goto loop_5;
    }
    D_800DEF90[temp_v1_11] = func_800B7560;
    D_800E6A10[temp_a1->objId] = -1.0f;
    temp_v1_24 = temp_a1->objId;
    gEntitiesNextPosXArray[temp_v1_24] = D_800EADE0[temp_v1_24];
    gEntitiesNextPosYArray[temp_a1->objId] = 0.0f;
    temp_v1_25 = temp_a1->objId;
    gEntitiesNextPosZArray[temp_v1_25] = D_800EB160[temp_v1_25];
    D_800E9020[temp_a1->objId] = 0.0f;
    D_800E17D0[temp_a1->objId] = 3.1415927f;
    temp_v1_26 = temp_a1->objId;
    var_v1_2 = temp_v1_26 * 4;
    if (D_800EA360[temp_v1_26] != 2) {
        goto loop_5;
    }
    do {
        *(D_800E9E20 + var_v1_2) = 0;
        func_800AA018(D_801E6690_ovl15[D_800EA1A0[temp_a1->objId]]);
        temp_v0_2 = func_800AF230();
        if (temp_v0_2 != 1) {
            temp_v1_28 = omCurrentObj->objId;
            var_v1_5 = temp_v1_28 * 4;
            if (D_800EA360[temp_v1_28] == 2) {
loop_28:
                if (*(D_800DFF50 + var_v1_5) == D_801E6690_ovl15[*(D_800EA1A0 + var_v1_5)]) {
                    ohSleep(1);
                    temp_v0_2 = func_800AF230();
                    if (temp_v0_2 != 1) {
                        temp_v1_29 = omCurrentObj->objId;
                        var_v1_5 = temp_v1_29 * 4;
                        if (D_800EA360[temp_v1_29] == 2) {
                            goto loop_28;
                        }
                    }
                }
            }
        }
        temp_v1_27 = omCurrentObj->objId;
        var_v1_2 = temp_v1_27 * 4;
    } while (D_800EA360[temp_v1_27] == 2);
    goto loop_5;
}
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801E1F34_ovl15.s")
#endif

/* Last function of this translation unit: the five nops after its `.size` are
 * the linker aligning the NEXT object (src/ovl15/ovl15b.c) to 32, not
 * instructions, and kirby64.yaml declares the residue as a `pad`. It is now
 * ordinary decompilation work -- 490 instructions with a jump table. */
extern s32 D_801D8A3C;
extern s32 D_801D8A84;
extern s32 D_801E669C_ovl15[];
extern Controller_800D6FE8 gPlayerControllers[];
/* FACTORY: 40/484 measured (verify.py prints 41; one is the phantom
   own-.rodata note for the jump table -- ovl15.c is a dotted
   `.rodata, ovl15/ovl15` segment and owns jtbl_801E68C4_ovl15).
   THE INSTRUCTION SEQUENCE IS EXACT, verified mnemonic-for-mnemonic against
   the listing including the jump table's five entries and both `div/mfhi`
   modulos.  The entire residue is ONE register rename: the ROM parks
   omCurrentObj in $a1 and the switch constant 1 in $a0, IDO swaps them, which
   renames the seven `lui/lw omCurrentObj` triples and flips two compare
   operand orders that follow from it.  Permuter food.
   Derivation notes worth keeping:
   - the inner `D_800EA1A0` switch under D_800EA360==0 is a JUMP TABLE with
     five entries, two of which (0 and 4) point at the shared tail; both empty
     cases must be spelled out or IDO biases the table (LEVERS lever 21/24).
   - under D_800EA360==1 the ROM really does duplicate the five-call tail: the
     case-1 arm has its own copy and cases 0/2/3 share another, with case 2
     FALLING THROUGH into it.  Folding the duplicate away does not match.
   - `gPlayerControllers + 0xC` is `gPlayerControllers[1].buttonPressed`
     (Controller_800D6FE8 is 10 bytes, so element 1's second u16 lands at
     0xC) -- the two debug toggles are read from the SECOND controller. */
#if defined(MIPS_TO_C) || defined(PORT)
/* One arm: nothing here is N64-only.  Passing D_800DFBD0[i][n] (a DObj *) to
   func_801E19D0_ovl15's s32 parameter is that function's own declared
   signature and the file's existing convention. */
void func_801E27BC_ovl15(struct GObj *arg0) {
    switch (D_800EA360[omCurrentObj->objId]) {
    case 0:
        switch (D_800EA1A0[omCurrentObj->objId]) {
        case 0:
            break;
        case 1:
            if ((D_800E9E20[omCurrentObj->objId] >= 0x34) && (D_800E9E20[omCurrentObj->objId] < 0x41)) {
                D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D8A84;
                func_801E19D0_ovl15(D_800DFBD0[omCurrentObj->objId][11], 0, 0);
            }
            break;
        case 2:
            if ((D_800E9E20[omCurrentObj->objId] >= 0x34) && (D_800E9E20[omCurrentObj->objId] < 0x41)) {
                D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D8A3C;
                func_801E19D0_ovl15(D_800DFBD0[omCurrentObj->objId][17], 0, 0);
            }
            break;
        case 3:
            if ((D_800E9E20[omCurrentObj->objId] >= 0x34) && (D_800E9E20[omCurrentObj->objId] < 0x9F)) {
                if (D_800E9E20[omCurrentObj->objId] < 0x3F) {
                    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D8B38;
                } else if (D_800E9E20[omCurrentObj->objId] < 0x97) {
                    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D8B5C;
                } else {
                    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D8B80;
                }
                func_801E19D0_ovl15(D_800DFBD0[omCurrentObj->objId][17],
                                    D_800DFBD0[omCurrentObj->objId][11], 0);
            }
            break;
        case 4:
            break;
        }
        break;
    case 1:
        switch (D_800EA1A0[omCurrentObj->objId]) {
        case 1:
            D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D906C;
            func_801E19D0_ovl15(D_800DFBD0[omCurrentObj->objId][12],
                                D_800DFBD0[omCurrentObj->objId][13], 0);
            D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D92AC;
            func_801E19D0_ovl15(D_800DFBD0[omCurrentObj->objId][4],
                                D_800DFBD0[omCurrentObj->objId][22], 0);
            D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9120;
            func_801E19D0_ovl15(D_800DFBD0[omCurrentObj->objId][6], 0, 0);
            D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D8F70;
            func_801E19D0_ovl15(D_800DFBD0[omCurrentObj->objId][4], 0, 0);
            D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D8F94;
            func_801E19D0_ovl15(D_800DFBD0[omCurrentObj->objId][4], 0, 0);
            D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D8FB8;
            func_801E19D0_ovl15(D_800DFBD0[omCurrentObj->objId][4], 0, 0);
            break;
        case 2:
            D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D906C;
            func_801E19D0_ovl15(D_800DFBD0[omCurrentObj->objId][18],
                                D_800DFBD0[omCurrentObj->objId][19], 0);
        case 0:
        case 3:
            D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D92AC;
            func_801E19D0_ovl15(D_800DFBD0[omCurrentObj->objId][4],
                                D_800DFBD0[omCurrentObj->objId][22], 0);
            D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9120;
            func_801E19D0_ovl15(D_800DFBD0[omCurrentObj->objId][6], 0, 0);
            D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D8F70;
            func_801E19D0_ovl15(D_800DFBD0[omCurrentObj->objId][4], 0, 0);
            D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D8F94;
            func_801E19D0_ovl15(D_800DFBD0[omCurrentObj->objId][4], 0, 0);
            D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D8FB8;
            func_801E19D0_ovl15(D_800DFBD0[omCurrentObj->objId][4], 0, 0);
            break;
        }
        break;
    case 2:
        if ((D_800EA1A0[omCurrentObj->objId] == 0) || (D_800EA1A0[omCurrentObj->objId] == 1) ||
            (D_800EA1A0[omCurrentObj->objId] == 2)) {
            D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D8E98;
            func_801E19D0_ovl15(D_800DFBD0[omCurrentObj->objId][4],
                                D_800DFBD0[omCurrentObj->objId][22], 0);
            D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D921C;
            func_801E19D0_ovl15(D_800DFBD0[omCurrentObj->objId][44],
                                D_800DFBD0[omCurrentObj->objId][44], 0);
        }
        break;
    }
    if ((gPlayerControllers[1].buttonPressed & 0x8000) != 0) {
        D_800EA360[omCurrentObj->objId] = (D_800EA360[omCurrentObj->objId] + 1) % 3;
    }
    if ((gPlayerControllers[1].buttonPressed & 0x4000) != 0) {
        D_800EA1A0[omCurrentObj->objId] =
            (D_800EA1A0[omCurrentObj->objId] + 1) % D_801E669C_ovl15[D_800EA360[omCurrentObj->objId]];
    }
    D_800E9E20[omCurrentObj->objId]++;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801E27BC_ovl15.s")
#endif
