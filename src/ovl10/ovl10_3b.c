/* Second translation unit of the original ovl10_3.c.
 *
 * The split is not cosmetic. func_801EC3C8_ovl10 ends in an infinite loop, so
 * IDO emits a `.align 5` after the branch and the dead epilogue that follows
 * is 32-byte aligned FROM ITS OBJECT'S .text BASE -- which only holds if a
 * new object starts at func_801EBC60_ovl10 (rom 0x1DC9D0). The rodata
 * partition agrees independently: the last user of the ovl10_3 rodata block is
 * func_801EAB98_ovl10 (rom 0x1DB908, before the split), and the orphan block at
 * 0x1E58F0 has exactly two users, func_801EBC60_ovl10 and func_801EBF2C_ovl10,
 * both after it.
 *
 * The declarations below are the parent file's, carried over mechanically.
 * Some are unused here; that is deliberate, so the two halves stay diffable
 * against the original single file.
 */
#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "buffers.h"
#include "ovl1/ovl1_7.h"
#include "unk_structs/D_800E1B50.h"
#include "ovl19/ovl19_5.h"
typedef struct EneCurve {
    Vector unk0;
    Vector unkC;
    Vector unk18;
    f32 unk24;
    f32 unk28;
    s32 unk2C;
} EneCurve;

void func_8019EC5C_ovl7(void *);

void func_801A3E80_ovl7(GObj *);
void func_800FD570(s32, s32, f32, f32, f32);
/* D_801F4B44_ovl10 = 0.4f : now emitted by this TU */

extern FUNCLIST D_801F44B4_ovl10;
extern FUNCLIST D_801F4510_ovl10;
extern FUNCLIST D_801F4528_ovl10;
extern FUNCLIST D_801F4540_ovl10;
extern FUNCLIST D_801F4558_ovl10;
extern FUNCLIST D_801F4570_ovl10;
extern FUNCLIST D_801F4588_ovl10;
extern FUNCLIST D_801F45B8_ovl10;

s32 func_801A0D74_ovl7();
void func_8019B424_ovl7();
void eneTurnCommon(s32);
void func_8019D4D0_ovl7(f32, s32);
void func_80199F1C_ovl7();
void func_800AECC0(f32);
s32 func_801ACCA0_ovl7(s32, s32, f32, f32);
void play_sound(s32);
void func_801A0D50_ovl7(void *);
void func_801EC3C8_ovl10(GObj *);
extern s32 random_soft_s32_range(s32);
void func_801E6030_ovl10(void);
void func_800A9EA4(s32);
void func_800AA864(s32, s32);
void func_800AED20(f32);
void func_801E63FC_ovl10(struct GObj *);
void func_801E75E4_ovl10(struct GObj *);
void func_801E8988_ovl10(struct GObj *);
extern f32 gameTicksPerDraw;

typedef struct Unk4Bytes {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
} Unk4Bytes;
extern FUNCLIST D_801F451C_ovl10;
extern FUNCLIST D_801F4534_ovl10;
extern FUNCLIST D_801F454C_ovl10;
extern FUNCLIST D_801F45CC_ovl10;
extern FUNCLIST D_801F4564_ovl10;
extern FUNCLIST D_801F457C_ovl10;
void func_801E6D08_ovl10(struct GObj *);
void func_801E8008_ovl10(struct GObj *);

struct Ovl10AnimInfo {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 filler4[8];
    s32 unkC;
    u8 filler10[0x10];
};

extern s32 D_801F3F28_ovl10;
/* D_801F4B50_ovl10 = 2.4f : now emitted by this TU */
extern f32 D_801F4B84_ovl10;
s32 func_801E9ACC_ovl10(void);
s32 func_8019A9AC_ovl7(f32, f32);
extern s32 D_801F3F70_ovl10;
void func_80111550(void *);
void *func_80111C88(void *, u32);
void func_80111ECC(void *);
s32 func_80110150(void *);
void func_80169430_ovl3(s32, u8, u8, s32);

void func_800B113C(struct DObj *, s32, f32);
void func_801DB678_ovl10(s32);
void func_800FF0A8(void *);
extern FUNCLIST D_801F4400_ovl10;
extern s32 D_800D6E40;
extern s32 D_800D6B6C[];
s32 func_800B9DF8(s32);
void func_8019BB58_ovl7(void);
void func_8019D958_ovl7(u16);

/* D_801F4A80_ovl10 = "reqAdoPathLimTrk  Request Error!![mbss2.cc]\n" : now emitted by this TU */

void func_800A7F74(u32, u32, u16, f32, f32, f32);
void func_800B79F4();
void func_800B3520(void);
void func_800FB914(s32);
void func_801EF15C_ovl10(s32);
s32 func_801EF218_ovl10(s32);
void func_800AF27C(void);
void func_801ED7D0_ovl10(GObj *);
/* D_801F4BD4_ovl10 = 0.03333f : now emitted by this TU */
/* D_801F4BD8_ovl10 = 65535.0f : now emitted by this TU */

/* D_801F4BE0_ovl10 = -1.8f : now emitted by this TU */
/* D_801F4BE4_ovl10 = 0.022499999f : now emitted by this TU */
/* D_801F4BE8_ovl10 = 65535.0f : now emitted by this TU */
/* D_801F4BDC_ovl10 = 65535.0f : now emitted by this TU */
extern struct Sub800E1B50_Unk98 D_801F4190_ovl10;
extern s32 D_801F3C7C_ovl10;

extern struct Sub800E1B50_Unk98 D_801F4148_ovl10;

extern struct Sub800E1B50_Unk98 D_801CB494_ovl7;
extern u32 D_801F449C_ovl10;
/* D_801F4AB0_ovl10 = "Error: Don't S-Point\n" : now emitted by this TU */
void func_801E3E04_ovl10(struct GObj *);
void func_801E3A64_ovl10(void);
void *func_800FCE50(void);

void func_801E3BE4_ovl10(struct GObj *);

/* D_801F4AC8_ovl10 = "reqAdoPicEneTrk  Request Error!![mbss2.cc]\n" : now emitted by this TU */

void func_801E409C_ovl10(void);

void func_801E499C_ovl10(void);
void func_801E4A74_ovl10(void);

void func_801DB478_ovl10(void);
void func_801E5CF0_ovl10(f32);

s32 func_8019A900_ovl7(s32 *);

/* D_801F4B2C_ovl10 = 65535.0f : now emitted by this TU */

#ifdef NON_MATCHING
// 23/41 diffs (was 32). Two levers found: reading arg0[0]/arg0[2] into locals
// first reproduces the ROM's FP allocation order, and quotient temps keep both
// divisions before the first store (the store otherwise forces a reload of
// omCurrentObj->objId). Residue: the ROM converts arg1 to f32 LATE (into $f16,
// interleaved with the second numerator) while IDO hoists the andi/mtc1/cvt to
// function entry. Swept with no effect: K&R vs prototyped u8, an f32 divisor
// local at every position, (f32)(s32) casts, four load locals (grows the TU),
// both operand orders of the inner +, and numerator-only temps.
#else
#endif

int func_800F98EC(u32, f32);
void func_801A2558_ovl7(s32);
void func_800FF0C4(void *);

extern Unk4Bytes D_801F4508_ovl10;
extern Unk4Bytes D_801F450C_ovl10;

/* D_801F4B48_ovl10 = 65535.0f : now emitted by this TU */

typedef struct Unk801E63E4 {
    f32 unk0;
    u8 unk4;
} Unk801E63E4;

void func_801E5C4C_ovl10(f32 *, u8);

extern s32 D_801F34D4_ovl10;
void func_801E6564_ovl10(void);
void func_80198880_ovl7(void *);
void func_800A9760(s32);

#ifdef NON_MATCHING
// 8 diffs: only the register holding `var` (ROM $a1, IDO $a0) and the
// consequent delay-slot fill differ.
#else
#endif

extern void func_801DB1E0_ovl10(void);

extern s32 D_801F34F8_ovl10;
extern struct Sub800E1B50_Unk98 D_801CB590_ovl7;
void func_801E6E84_ovl10(struct GObj *);
void func_80198880_ovl7(void *);
void func_800A9760(s32);

#ifdef NON_MATCHING
#else
#endif

extern void func_801DB1E0_ovl10(void);
void func_801E5CF0_ovl10(f32);

extern s32 D_801F3564_ovl10;
void func_801E7760_ovl10(void);

#ifdef MIPS_TO_C
// 8 diffs: only the register holding `temp` (ROM $a1, IDO $a0) and the
// consequent scheduling of the utilFuncTableJump argument setup differ.
#else
#endif

extern s32 D_801F3540_ovl10;
void func_801E8184_ovl10(struct GObj *);

#ifdef MIPS_TO_C
#else
#endif

void func_80198880_ovl7(void *);
void func_800A9760(s32);
extern struct Sub800E1B50_Unk98 D_801F4100_ovl10;
extern s32 D_801F351C_ovl10;
void func_801E8AF8_ovl10(struct GObj *);

#ifdef MIPS_TO_C
#else
#endif

void func_801E8988_ovl10(struct GObj *);

/* D_801F4B4C_ovl10 = 2.4f : now emitted by this TU */

extern struct Sub800E1B50_Unk98 D_801F4124_ovl10;
extern s32 D_801F35A8_ovl10;
void func_801E932C_ovl10(struct GObj *);

extern void func_800BC1FC(s32);
void func_801E91B0_ovl10(struct GObj *);

/* D_801F4B60_ovl10 = 0.006666667f : now emitted by this TU */
/* D_801F4B64_ovl10 = 6.2831855f : now emitted by this TU */
extern f32 D_800EAA60[];
extern f32 D_800EAC20[];
void func_801EA4C0_ovl10(void);

/* D_801F4B6C_ovl10 = 65535.0f : now emitted by this TU */

void func_801E91B0_ovl10(struct GObj *);

extern s32 D_801F35CC_ovl10;
void func_801EA900_ovl10();

#ifdef MIPS_TO_C
// 8 diffs, same floor as its twin func_801E7760_ovl10: `temp` lands in $a0
// where the ROM uses $a1.
#else
#endif

extern void func_800BC1FC(s32);
void func_801EA784_ovl10(struct GObj *);

void func_801EB1A4_ovl10(void);
void func_801EA784_ovl10(struct GObj *);

void func_801EB20C_ovl10(s32, s32, f32);

void func_801EA784_ovl10(struct GObj *);

extern struct Sub800E1B50_Unk98 D_801F41D8_ovl10;
extern f32 D_801F4B80_ovl10;
void func_801EBDE8_ovl10(void);
void func_800A9864(s32, s32, s32);

void func_801EBC60_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = func_801EBDE8_ovl10;
    tmp->unk98 = &D_801F41D8_ovl10;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9720[omCurrentObj->objId] = 60;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9864(0x10098, 0x23, 0x10);
    func_800A9EA4(0x10546);
    func_800A9EA4(0x10545);
    D_800E3210[omCurrentObj->objId] = -6.0f;
    while (D_800E9E20[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    D_800E3210[omCurrentObj->objId] = -2.0f;
    D_800E3750[omCurrentObj->objId] = D_801F4B80_ovl10;
    D_800E3C90[omCurrentObj->objId] = 2.0f;
    curObjSleepForever();
}

void func_801ACF84_ovl7(struct GObj *);
void func_801A03B4_ovl7(void);

void func_801EBDE8_ovl10(void) {
    func_801A0D74_ovl7();
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        if (D_800E9720[omCurrentObj->objId] == 0) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801ACF84_ovl7);
            return;
        }
        D_800E9720[omCurrentObj->objId]--;
        if (D_800E3C90[omCurrentObj->objId] <= ABSF(D_800E3210[omCurrentObj->objId])) {
            D_800E3750[omCurrentObj->objId] = -D_800E3750[omCurrentObj->objId];
        }
    } else if (-0.5f == D_800E3750[omCurrentObj->objId] && D_800E3210[omCurrentObj->objId] < -4.0f) {
        D_800E9E20[omCurrentObj->objId] = 1;
    }
    func_801A03B4_ovl7();
}

void func_801EBF2C_ovl10(GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        D_800E3210[omCurrentObj->objId] = -D_800E3210[omCurrentObj->objId];
        D_800E8920[omCurrentObj->objId] = 0;
    } else {
        D_800E3210[omCurrentObj->objId] = -D_800E3210[omCurrentObj->objId] * D_801F4B84_ovl10;
        D_800E3750[omCurrentObj->objId] = -0.5f;
        D_800E8920[omCurrentObj->objId] = 0;
    }
}

extern struct Sub800E1B50_Unk98 D_801F41FC_ovl10;
void func_801EC120_ovl10(void);
void func_800A9864(s32, s32, s32);

void func_801EBFDC_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = &func_801DB1E0_ovl10;
    D_800DF150[omCurrentObj->objId] = func_801EC120_ovl10;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9720[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801F41FC_ovl10;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9864(0x10099, 0x23, 0x10);
    func_800A9EA4(0x10548);
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -1.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 3.0f;
    curObjSleepForever();
}

void func_801EC120_ovl10(void) {
    func_801A0D74_ovl7();
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        play_sound(0x1CC);
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 6.5f;
        D_800E9E20[omCurrentObj->objId] = 0;
    }
    if ((D_800E64D0[omCurrentObj->objId] < 0 ? -D_800E64D0[omCurrentObj->objId] : D_800E64D0[omCurrentObj->objId]) == 6.5f) {
        if (D_800E9720[omCurrentObj->objId] == 0) {
            func_800A7F74(6, 2, 0xB, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId] - 16.0f, gEntitiesNextPosZArray[omCurrentObj->objId]);
            D_800E9720[omCurrentObj->objId] = 4;
        }
        D_800E9720[omCurrentObj->objId] -= 1;
    }
    func_801A03B4_ovl7();
}

extern s32 D_800D6E40;
extern s32 D_800D6B6C[];
void func_8019D958_ovl7(u16);
s32 func_800B9DF8(s32);
void func_8019BB58_ovl7(void);
extern FUNCLIST D_801F45E0_ovl10;

void func_801EC2A0_ovl10(GObj *arg0) {
    if (func_800B9DF8(2) && D_800D6B6C[1] == 0) {
        func_8019BB58_ovl7();
        D_800D6E40++;
        func_8019D958_ovl7((u16)omCurrentObj->objId);
    }
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_801F45E0_ovl10);
}

void func_801EC37C_ovl10(GObj *arg0) {
    func_801A0D50_ovl7(func_801EC3C8_ovl10);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801EC3C8_ovl10(arg0);
}

/* The dead epilogue after this function's infinite loop is where the hidden
   TU boundary was found: IDO emits a literal `.align 5` after the loop's `b`,
   so the epilogue is 32-byte aligned FROM ITS OBJECT'S .text BASE. The ROM's
   `lw $ra` sits at rom 0x1DD210 == 16 mod 32, so this object starts at a rom
   offset == 16 mod 32 -- which the split at 0x1DC9D0 (see the banner) now
   satisfies, and the four alignment nops the ROM has here are reproduced. */
extern FUNCLIST D_801F45E4_ovl10;
void func_801EC4CC_ovl10(struct GObj *);

void func_801EC3C8_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    while (1) {
        D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
        ent->unk8C = ent->unk88->unk14;
        D_800DF150[omCurrentObj->objId] = func_801EC4CC_ovl10;
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 0xF, &D_801F45E4_ovl10);
    }
}

extern Unk4Bytes D_801F465C_ovl10;
extern Unk4Bytes D_801F4660_ovl10;
extern FUNCLIST D_801F4620_ovl10;
void func_801EF0F0_ovl10(void *, Unk4Bytes *);
s32 func_801EEB30_ovl10(void);
s32 func_801EEE44_ovl10(GObj *);
s32 func_801EEED4_ovl10(GObj *);
s32 func_801EEF4C_ovl10(GObj *);

void func_801EC4CC_ovl10(GObj *arg0) {
    s32 lead[1];
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (D_800E9E20[omCurrentObj->objId] > 0) {
        if (D_800E9E20[omCurrentObj->objId] % 2 <= 0 || D_800E9E20[omCurrentObj->objId] < 2) {
            func_801EF0F0_ovl10(arg0, &D_801F465C_ovl10);
        } else {
            func_801EF0F0_ovl10(arg0, &D_801F4660_ovl10);
        }
        D_800E9E20[omCurrentObj->objId] -= 1;
    }
    if (0.0f == func_801A0D74_ovl7(arg0)) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 0xF, &D_801F4620_ovl10);
    }
    if (0.0f == func_801EEB30_ovl10()) {
        if (tmp->unk3C == 0) {
            switch (D_800E9AA0[omCurrentObj->objId].as_s32) {
            case 1:
                if (func_801EEE44_ovl10(arg0) != 0) {
                    D_800E9C60[omCurrentObj->objId] = 1;
                }
                break;
            case 2:
                if (func_801EEED4_ovl10(arg0) != 0) {
                    gEntityFuncListIDArray[omCurrentObj->objId] = 9;
                    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801EC3C8_ovl10);
                }
                break;
            case 3:
                func_801EEF4C_ovl10(arg0);
                break;
            }
        }
    }
}

void func_801EC6D8_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];
    f32 a;
    f32 b;

    D_800DEF90[omCurrentObj->objId] = func_800B79F4;
    D_800DDFD0[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801F4148_ovl10;
    func_800AA018(0x102B4);
    func_800AA018(0x102B5);
    func_800B3520();
    D_800E7CE0[omCurrentObj->objId] = 0x4E;
    D_800E4C50[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -1.5707964f;
    ohSleep(0x1E);
    func_800BC1FC((s32) D_800E7B20[omCurrentObj->objId]);
    ohSleep(0x30);
    D_800E9560[omCurrentObj->objId] = 1;
    if (D_800E9560[omCurrentObj->objId] < 5) {
        a = 0.2617994f;
        b = 1.5707964f;
        do {
            D_800E4C50[omCurrentObj->objId] = -(b - a * (f32) D_800E9560[omCurrentObj->objId]) * D_800E6A10[omCurrentObj->objId];
            ohSleep(1);
            D_800E9560[omCurrentObj->objId]++;
        } while (D_800E9560[omCurrentObj->objId] < 5);
    }
    D_800E4C50[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -0.5235988f;
    D_800E98E0[omCurrentObj->objId] = 2;
    gEntityFuncListIDArray[omCurrentObj->objId] = 8;
}

void func_801EC928_ovl10(GObj *arg0) {
}

extern struct Sub800E1B50_Unk98 D_801F4148_ovl10;
void func_800B67A8(s32);
void func_800AEFFC(s32);

void func_801EC930_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = func_800B67A8;
    D_800DDFD0[omCurrentObj->objId] = 1;
    tmp->unk98 = &D_801F4148_ovl10;
    func_800AA018(0x102B4);
    func_800AA018(0x102B5);
    func_800B3520();
    func_800AEFFC(2);
    while (tmp->unk3C != 0) {
        ohSleep(1);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

void func_801ECA0C_ovl10(void) {
    func_8019B424_ovl7();
    eneTurnCommon(1);
}

void func_801EEFCC_ovl10(void);

void func_801ECA34_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];
    f32 a;
    f32 b;

    D_800DEF90[omCurrentObj->objId] = func_800B79F4;
    D_800DDFD0[omCurrentObj->objId] = 2;
    tmp->unk98 = &D_801F4148_ovl10;
    func_800AA018(0x102B4);
    func_800AA018(0x102B5);
    func_800B3520();
    func_801EEFCC_ovl10();
    if (gEntityFuncListIDArray[omCurrentObj->objId] == 8 || gEntityFuncListIDArray[omCurrentObj->objId] == 0xC) {
        if ((1.0f == D_800E6A10[omCurrentObj->objId] && 0.0f < gEntitiesNextPosXArray[omCurrentObj->objId]) ||
            (-1.0f == D_800E6A10[omCurrentObj->objId] && gEntitiesNextPosXArray[omCurrentObj->objId] < 0.0f)) {
            func_80199F1C_ovl7(arg0);
        }
        while (tmp->unk3C != 0) {
            eneTurnCommon(1);
            ohSleep(1);
        }
    }
    D_800E4C50[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -1.5707964f;
    D_800E9560[omCurrentObj->objId] = 1;
    if (D_800E9560[omCurrentObj->objId] < 5) {
        a = 0.2617994f;
        b = 1.5707964f;
        do {
            D_800E4C50[omCurrentObj->objId] = -(b - a * (f32) D_800E9560[omCurrentObj->objId]) * D_800E6A10[omCurrentObj->objId];
            ohSleep(1);
            D_800E9560[omCurrentObj->objId]++;
        } while (D_800E9560[omCurrentObj->objId] < 5);
    }
    D_800E4C50[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -0.5235988f;
}

void func_801ECCE4_ovl10(GObj *arg0) {
}

void func_801ECCEC_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = func_800B79F4;
    D_800DDFD0[omCurrentObj->objId] = 3;
    tmp->unk98 = &D_801F4148_ovl10;
    func_800AA018(0x102B8);
    func_800AA018(0x102B9);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 1.5f;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.3f;
    D_800E6850[omCurrentObj->objId] = 3.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    ohSleep(0xB4);
    while (tmp->unk3C != 0) {
        ohSleep(1);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801ECE90_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    func_8019B424_ovl7(arg0);
    func_8019D4D0_ovl7(15.0f, 8);
    if (ent->unk3C == 0) {
        if (func_8019A9AC_ovl7(0.0f, 240.0f) == 2) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 4;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801EC3C8_ovl10);
        }
    }
}

void func_801ECF48_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = func_800B79F4;
    D_800DDFD0[omCurrentObj->objId] = 4;
    tmp->unk98 = &D_801F4148_ovl10;
    func_800AA018(0x10264);
    func_800AA018(0x10265);
    func_800B3520();
    if ((1.0f == D_800E6A10[omCurrentObj->objId] && 110.0f <= gEntitiesNextPosXArray[omCurrentObj->objId]) ||
        (-1.0f == D_800E6A10[omCurrentObj->objId] && gEntitiesNextPosXArray[omCurrentObj->objId] <= -110.0f)) {
        func_80199F1C_ovl7(arg0);
    }
    ohSleep(4);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 4.0f;
    D_800E3210[omCurrentObj->objId] = 12.0f;
    D_800E3750[omCurrentObj->objId] = -0.8f;
    D_800E3C90[omCurrentObj->objId] = 12.0f;
    D_800E8920[omCurrentObj->objId] = 0;
    play_sound(0x1EC);
    while (1) {
        if (D_800E3210[omCurrentObj->objId] < 2.0f) {
            break;
        }
        ohSleep(1);
    }
    func_800AA018(0x10268);
    func_800AA018(0x10269);
    ohSleep(5);
    D_800E9AA0[omCurrentObj->objId].as_s32 = 1;
    D_800E9C60[omCurrentObj->objId] = 0;
    func_800AA018(0x10254);
    func_800AA018(0x10255);
    curObjSleepForever();
}

void func_801ED208_ovl10(GObj *arg0) {
    func_8019D4D0_ovl7(15.0f, 8);
    if (0.0f != D_800E3210[omCurrentObj->objId]) {
        if (D_800E8920[omCurrentObj->objId] == 1) {
            if (D_800E9C60[omCurrentObj->objId] != 0) {
                gEntityFuncListIDArray[omCurrentObj->objId] = 5;
            } else {
                gEntityFuncListIDArray[omCurrentObj->objId] = 7;
            }
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801EC3C8_ovl10);
        }
    }
}

void func_801ED2CC_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = func_800B79F4;
    D_800DDFD0[omCurrentObj->objId] = 5;
    tmp->unk98 = &D_801F4148_ovl10;
    func_800AA018(0x1025A);
    func_800AA018(0x1025B);
    func_800B3520();
    play_sound(0x1F5);
    func_800FB914(1);
    func_800AF27C();
    func_800AA018(0x10262);
    func_800AA018(0x10263);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -2.5f;
    D_800E3210[omCurrentObj->objId] = 8.0f;
    D_800E3750[omCurrentObj->objId] = -0.8f;
    D_800E3C90[omCurrentObj->objId] = 8.0f;
    D_800E8920[omCurrentObj->objId] = 0;
    play_sound(0x1EC);
    func_800AF27C();
    func_800AA018(0x10260);
    func_800AA018(0x10261);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -2.5f;
    D_800E3210[omCurrentObj->objId] = 8.0f;
    D_800E3750[omCurrentObj->objId] = -1.0f;
    D_800E3C90[omCurrentObj->objId] = 8.0f;
    D_800E8920[omCurrentObj->objId] = 0;
    play_sound(0x1EC);
    ohSleep(0x10);
    D_800E3210[omCurrentObj->objId] = 8.0f;
    D_800E8920[omCurrentObj->objId] = 0;
    play_sound(0x1EC);
    func_800AF27C();
    if ((1.0f == D_800E6A10[omCurrentObj->objId] && 0.0f < gEntitiesNextPosXArray[omCurrentObj->objId]) ||
        (-1.0f == D_800E6A10[omCurrentObj->objId] && gEntitiesNextPosXArray[omCurrentObj->objId] < 0.0f)) {
        func_800AA018(0x10260);
        func_800AA018(0x10261);
        D_800E3210[omCurrentObj->objId] = 8.0f;
        D_800E3750[omCurrentObj->objId] = -1.0f;
        D_800E3C90[omCurrentObj->objId] = 8.0f;
        D_800E8920[omCurrentObj->objId] = 0;
        play_sound(0x1EC);
        ohSleep(0x10);
        D_800E3210[omCurrentObj->objId] = 8.0f;
        D_800E8920[omCurrentObj->objId] = 0;
        play_sound(0x1EC);
        func_800AF27C();
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 6;
}

void func_801ED6B8_ovl10(GObj *arg0) {
    func_8019D4D0_ovl7(15.0f, 8);
}

void func_800B79F4(s32);
void func_801ED7D0_ovl10(GObj *);

void func_801ED6E4_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = func_800B79F4;
    D_800DDFD0[omCurrentObj->objId] = 6;
    tmp->unk98 = &D_801F4148_ovl10;
    func_800AA018(0x10258);
    func_800AA018(0x10259);
    func_800B3520();
    func_801ED7D0_ovl10(arg0);
    play_sound(0x1F4);
    func_800AF27C();
    func_800AA018(0x10256);
    func_800AA018(0x10257);
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801ED7C8_ovl10(GObj *arg0) {
}

void func_801ED7D0_ovl10(struct GObj *arg0) {
    f32 a;
    f32 b;

    D_800E4C50[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -0.5235988f;
    D_800E9560[omCurrentObj->objId] = 1;
    if (D_800E9560[omCurrentObj->objId] < 5) {
        b = 0.5235988f;
        a = 0.2617994f;
        do {
            D_800E4C50[omCurrentObj->objId] = -(b + a * (f32) D_800E9560[omCurrentObj->objId]) * D_800E6A10[omCurrentObj->objId];
            ohSleep(1);
            D_800E9560[omCurrentObj->objId]++;
        } while (D_800E9560[omCurrentObj->objId] < 5);
    }
    D_800E4C50[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -1.5707964f;
}
void func_801ED930_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = &func_800B79F4;
    D_800DDFD0[omCurrentObj->objId] = 7;
    sp1C->unk98 = &D_801F4148_ovl10;
    func_800AA018(0x1025C);
    func_800AA018(0x1025D);
    func_800B3520();
    play_sound(0x1F5);
    func_800FB914(1);
    func_801EF15C_ovl10(2);
    func_801EF218_ovl10(1);
    func_800AF27C();
    func_800AA018(0x1025E);
    func_800AA018(0x1025F);
    func_801EF15C_ovl10(1);
    func_800A7F74(6, 3, 2, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId] - 10.0f, gEntitiesNextPosZArray[omCurrentObj->objId] + 20.0f);
    func_801ED7D0_ovl10(arg0);
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801EDA98_ovl10(GObj *arg0) {
}

void func_800AF27C(void);

#ifdef NON_MATCHING
/* 92/159 (ROM 155): fully decoded. Two residues. (1) IDO folds away the
   `* 1.0f` on D_800E6690 that the ROM emits as a real mul.s; an `f32 one`
   local keeps the mul but IDO then CSEs it with the loop's 1.0f compare into
   $f20 where the ROM uses a fresh $f16. `/ 1.0f` measures the same.
   (2) omCurrentObj lands in $v1 and objId<<2 in $v0, the ROM has them the
   other way round. */
void func_801EDAA0_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = func_800B79F4;
    D_800DDFD0[omCurrentObj->objId] = 8;
    tmp->unk98 = &D_801F4148_ovl10;
    func_800AA018(0x10272);
    func_800AA018(0x10273);
    func_800B3520();
    func_800AF27C();
    func_800AA018(0x1026A);
    func_800AA018(0x1026B);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 2.5f;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 1.0f;
    D_800E6850[omCurrentObj->objId] = 5.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    play_sound(0x1ED);
    D_800E9AA0[omCurrentObj->objId].as_s32 = 2;
    while (1) {
        if (1.0f == D_800E6A10[omCurrentObj->objId] && 100.0f <= gEntitiesNextPosXArray[omCurrentObj->objId]) {
            break;
        }
        if (-1.0f == D_800E6A10[omCurrentObj->objId] && gEntitiesNextPosXArray[omCurrentObj->objId] <= -100.0f) {
            break;
        }
        ohSleep(1);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 0xB;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3b/func_801EDAA0_ovl10.s")
#endif
void func_801EDD1C_ovl10(GObj *arg0) {
}

void func_801EDD24_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 9;
    tmp->unk98 = &D_801F4148_ovl10;
    func_800AA018(0x102A6);
    func_800AA018(0x102A7);
    func_800B3520();
    ohSleep(0xE);
    if ((1.0f == D_800E6A10[omCurrentObj->objId] && 0.0f < gEntitiesNextPosXArray[omCurrentObj->objId]) ||
        (-1.0f == D_800E6A10[omCurrentObj->objId] && gEntitiesNextPosXArray[omCurrentObj->objId] < 0.0f)) {
        func_80199F1C_ovl7(arg0);
    }
    while (tmp->unk3C != 0) {
        ohSleep(1);
    }
    func_800AA018(0x1027E);
    func_800AA018(0x1027F);
    ohSleep(0xB);
    if (omCurrentObj->objId == D_800E0D50[0]) {
        D_800EC2E0[0].as_s32 = 2;
    }
    play_sound(0x1EE);
    D_800E9560[omCurrentObj->objId] = 1;
    while (D_800E9560[omCurrentObj->objId] < 0x3C) {
        if (D_800E98E0[0] >= 3) {
            break;
        }
        ohSleep(1);
        D_800E9560[omCurrentObj->objId] += 1;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 0xA;
}

void func_801EDF58_ovl10(GObj *arg0) {
    func_8019D4D0_ovl7(15.0f, 8);
}

void func_801EDF84_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = func_800B79F4;
    D_800DDFD0[omCurrentObj->objId] = 0xA;
    tmp->unk98 = &D_801F4148_ovl10;
    func_800AA018(0x1026C);
    func_800AA018(0x1026D);
    func_800B3520();
    func_801ED7D0_ovl10(arg0);
    play_sound(0x1AF);
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801EE048_ovl10(GObj *arg0) {
}

void func_801EE050_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = &func_800B79F4;
    D_800DDFD0[omCurrentObj->objId] = 0xB;
    sp1C->unk98 = &D_801F4148_ovl10;
    func_800AA018(0x1026E);
    func_800AA018(0x1026F);
    D_800E6690[omCurrentObj->objId] = -D_800E64D0[omCurrentObj->objId] * 0.03333f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    play_sound(0x1F2);
    func_800FB914(1);
    ohSleep(5);
    func_801EF218_ovl10(2);
    ohSleep(0x19);
    func_800B3520();
    func_800AF27C();
    func_800AA018(0x10270);
    func_800AA018(0x10271);
    func_800A7F74(6, 3, 3, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId] - 10.0f, gEntitiesNextPosZArray[omCurrentObj->objId] + 20.0f);
    func_801ED7D0_ovl10(arg0);
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801EE244_ovl10(GObj *arg0) {
}

void func_801EE24C_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = &func_800B79F4;
    D_800DDFD0[omCurrentObj->objId] = 0xC;
    sp1C->unk98 = &D_801F4190_ovl10;
    func_800AA018(0x10278);
    func_800AA018(0x10279);
    func_800AF27C();
    func_800AA018(0x10276);
    func_800AA018(0x10277);
    D_800E9AA0[omCurrentObj->objId].as_s32 = 3;
    sp1C->unk8C = &D_801F3C7C_ovl10;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 5.0f;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.5f;
    D_800E6850[omCurrentObj->objId] = 10.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    play_sound(0x1EA);
    curObjSleepForever();
}

void func_801EE408_ovl10(GObj *arg0) {
}

void func_801EE410_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = &func_800B79F4;
    D_800DDFD0[omCurrentObj->objId] = 0xD;
    sp1C->unk98 = &D_801F4148_ovl10;
    func_800AA018(0x10274);
    func_800AA018(0x10275);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -1.8f;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.022499999f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    play_sound(0x1EB);
    func_800FB914(1);
    func_801EF15C_ovl10(3);
    func_801EF218_ovl10(3);
    func_801ED7D0_ovl10(arg0);
    ohSleep(0x4C);
    func_800B3520();
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801EE5A8_ovl10(GObj *arg0) {
}

void func_801EE990_ovl10(void);

void func_801EE5B0_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];
    f32 z;
    f32 big;

    D_800DEF90[omCurrentObj->objId] = func_800B79F4;
    D_800DF150[omCurrentObj->objId] = func_801EE990_ovl10;
    tmp->unk98 = &D_801F4148_ovl10;
    tmp->unk3C = 0;
    D_800E9020[omCurrentObj->objId] = 0.0f;
    if (gEntitiesNextPosXArray[omCurrentObj->objId] < gEntitiesNextPosXArray[0]) {
        D_800E6A10[omCurrentObj->objId] = 1.0f;
    } else {
        D_800E6A10[omCurrentObj->objId] = -1.0f;
    }
    D_800E4C50[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -0.5235988f;
    play_sound(0x1D2);
    func_800FD570(0, 1, 0.0f, *(f32 *) tmp->unk88->unk10, 0.0f);
    if (D_800E8920[omCurrentObj->objId] == 0) {
        D_800E3750[omCurrentObj->objId] = -1.0f;
        D_800E3C90[omCurrentObj->objId] = 30.0f;
    } else {
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
    }
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -4.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 4.0f;
    func_800AA018(0x10280);
    func_800AA018(0x10281);
    while (D_800E8E60[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    func_801BC794_ovl7(6);
    ohSleep(0x1E);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E3910[omCurrentObj->objId] = 0.0f;
    z = D_800E3910[omCurrentObj->objId];
    D_800E3750[omCurrentObj->objId] = z;
    D_800E3590[omCurrentObj->objId] = z;
    D_800E33D0[omCurrentObj->objId] = z;
    D_800E3210[omCurrentObj->objId] = z;
    D_800E3050[omCurrentObj->objId] = z;
    D_800E3E50[omCurrentObj->objId] = 65535.0f;
    big = D_800E3E50[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = big;
    D_800E3AD0[omCurrentObj->objId] = big;
    curObjSleepForever();
}

extern u32 D_8012BCA0;
void func_800B7790(s32);

void func_801EE990_ovl10(void) {
    func_801A0D74_ovl7();
    if (((D_8012BCA0 >> 0x13) & 0xE00) != 0) {
        D_800E3210[omCurrentObj->objId] = 8.0f;
        D_800E3750[omCurrentObj->objId] = -1.0f;
        D_800E3C90[omCurrentObj->objId] = 8.0f;
        D_800E8920[omCurrentObj->objId] = 0;
        play_sound(0x1EC);
    }
    if ((D_800E6310[omCurrentObj->objId] != 0 && 0 != D_800E64D0[omCurrentObj->objId]) || ((D_8012BCA0 >> 0x13) & 0x3F) != 0) {
        D_800E8E60[omCurrentObj->objId] = 1;
        D_800DEF90[omCurrentObj->objId] = func_800B7790;
        D_800E4C50[omCurrentObj->objId] = 0.0f;
        D_800E3050[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -4.0f;
        D_800E3590[omCurrentObj->objId] = 0.0f;
        D_800E3AD0[omCurrentObj->objId] = 4.0f;
    }
}

s32 func_80110B00(void *);
s32 func_80110FD4(void *);
extern f32 D_800D6E5C;
void func_800BC11C(f32);

s32 func_801EEB30_ovl10(void) {
    struct Ovl10AnimInfo sp40;
    struct UnkStruct800E1B50 *temp_s0;
    s32 t = -1;

    temp_s0 = D_800E1B50[omCurrentObj->objId];
    if (temp_s0->unk8C == NULL) {
        return 0;
    }
    func_80111550((void *) omCurrentObj->objId);
    func_80111ECC(func_80111C88(temp_s0->unk8C, omCurrentObj->objId));
    if (func_80110B00(&sp40) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp40.unk2;
        temp_s0->unk43 = sp40.unk3;
        temp_s0->unk3A = sp40.unkC;
    } else if (func_80110FD4(&sp40) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp40.unk2;
        temp_s0->unk43 = sp40.unk3;
        temp_s0->unk3A = sp40.unkC;
    } else if (func_80110150(&sp40) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp40.unk2;
        temp_s0->unk43 = sp40.unk3;
        temp_s0->unk3A = sp40.unkC;
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
        temp_s0->unk43 = 0;
        temp_s0->unk3A = t;
    }
    if (D_800D6E5C != 0.0f) {
        func_800BC11C(D_800E7B20[omCurrentObj->objId]);
    }
    switch (D_800E83E0[omCurrentObj->objId]) {
        case 1:
            gEntityFuncListIDArray[omCurrentObj->objId] = 0xE;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_801EC3C8_ovl10);
            return 1;
        case 2:
            D_800E9E20[omCurrentObj->objId] = D_800E7CE0[omCurrentObj->objId];
            play_sound(0x28);
            return 1;
        case 7:
        case 8:
        case 9:
            if (D_800DE350[(s8) temp_s0->unk3A] != NULL) {
                D_800E7CE0[omCurrentObj->objId] = 0x14;
                func_800FD570(0, 9,
                              (gEntitiesNextPosXArray[(s8) temp_s0->unk3A] -
                               gEntitiesNextPosXArray[omCurrentObj->objId]) *
                                  0.6f,
                              (gEntitiesNextPosYArray[(s8) temp_s0->unk3A] -
                               gEntitiesNextPosYArray[omCurrentObj->objId]) *
                                  0.6f,
                              (gEntitiesNextPosZArray[(s8) temp_s0->unk3A] -
                               gEntitiesNextPosZArray[omCurrentObj->objId]) *
                                  0.6f);
                D_800E8760[(s8) temp_s0->unk3A] = 1;
            }
            return 0;
    }
    return 0;
}

extern s32 D_801F3EE0_ovl10;

#ifdef NON_MATCHING
// 7/36: every instruction is correct; only the frame is 8 bytes too big and
// the struct sits at 0x20 instead of 0x18. This is the documented
// "IDO reserves 4 bytes below the local block" anomaly -- IDO computes
// align8(0x1C + sizeof locals), the ROM align8(0x18 + sizeof locals) -- and
// with locals of exactly 0x20 the two differ by 8. It is the same blocker as
// func_801EEF4C_ovl10 below. (Note the sibling func_801EEED4_ovl10 matches
// only because its `s32 pad` makes locals 0x24, where the two formulas agree;
// this function has no such local in the ROM, so no source form can close it.)
// Swept: pad locals before/after the struct (1-2), && vs nested if, and
// splitting the nested func_80111ECC(func_80111C88(...)) into two statements.
s32 func_801EEE44_ovl10(GObj *arg0) {
    struct Ovl10AnimInfo sp18;

    func_80111550((void *) omCurrentObj->objId);
    func_80111ECC(func_80111C88(&D_801F3EE0_ovl10, omCurrentObj->objId));
    if (func_80110150(&sp18) != 0) {
        if (D_800E8920[sp18.unkC] == 1) {
            func_80169430_ovl3(sp18.unkC, sp18.unk0, sp18.unk1, 3);
            return 1;
        }
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3b/func_801EEE44_ovl10.s")
#endif

s32 func_801EEED4_ovl10(GObj *arg0) {
    s32 pad;
    struct Ovl10AnimInfo sp1C;

    func_80111550((void *) omCurrentObj->objId);
    func_80111ECC(func_80111C88(&D_801F3F28_ovl10, omCurrentObj->objId));
    if (func_80110150(&sp1C) != 0) {
        func_80169430_ovl3(sp1C.unkC, sp1C.unk0, sp1C.unk1, 4);
        return 1;
    }
    return 0;
}

#ifdef NON_MATCHING
// 7/32: same frame blocker as func_801EEE44_ovl10 -- the ROM puts the 0x20
// struct at 0x18 with frame 0x38; IDO's base is 4 higher so any local total
// that yields frame 0x38 starts the block at 0x1C. Also swept: a 0x1C/0x18
// struct plus a dead `s32 lead[1]` at either end (moves the block, never to
// 0x18).
s32 func_801EEF4C_ovl10(GObj *arg0) {
    struct Ovl10AnimInfo sp18;

    func_80111550((void *) omCurrentObj->objId);
    func_80111ECC(func_80111C88(&D_801F3F70_ovl10, omCurrentObj->objId));
    if (func_80110150(&sp18) != 0) {
        func_80169430_ovl3(sp18.unkC, sp18.unk0, sp18.unk1, 5);
        play_sound(0x1EE);
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3b/func_801EEF4C_ovl10.s")
#endif
void func_801EEFCC_ovl10(void) {
    s32 temp_a1;

    do {
        temp_a1 = (random_soft_s32_range(9) % 3) + 1;
    } while (temp_a1 == D_800E98E0[omCurrentObj->objId]);

    do {
        switch (temp_a1) {
            case 1: gEntityFuncListIDArray[omCurrentObj->objId] = 3; break;
            case 2: gEntityFuncListIDArray[omCurrentObj->objId] = 8; break;
            case 3: gEntityFuncListIDArray[omCurrentObj->objId] = 0xC; break;
        }
    } while (0);
    D_800E98E0[omCurrentObj->objId] = temp_a1;
}

void func_801EF0F0_ovl10(void *arg0, Unk4Bytes *arg1) {
    void **node = *(void ***) ((u8 *) arg0 + 0x3C);

    while (node != NULL) {
        void **p = *(void ***) ((u8 *) node + 0x80);

        while (p != NULL) {
            *(Unk4Bytes *) ((u8 *) p + 0x58) = *arg1;
            p = *(void ***) p;
        }
        node = animModelTreeNextNode(node);
    }
}

s32 func_801AE7E0_ovl7(s32);

void func_801EF15C_ovl10(s32 arg0) {
    s32 temp_v0;

    switch (arg0) {
        case 1:
            temp_v0 = func_801AE7E0_ovl7(8);
            if (temp_v0 != -1) {
                D_800EC2E0[temp_v0].as_s32 = 0;
            }
            break;
        case 2:
            temp_v0 = func_801AE7E0_ovl7(9);
            if (temp_v0 != -1) {
                gEntitiesNextPosYArray[temp_v0] -= 15.0f;
                break;
            }
            break;
        case 3:
            temp_v0 = func_801AE7E0_ovl7(8);
            if (temp_v0 != -1) {
                D_800EC2E0[temp_v0].as_s32 = 1;
            }
            break;
    }
}

s32 func_801EF218_ovl10(s32 arg0) {
    D_800EBBE0[omCurrentObj->objId] = 0;
    switch (arg0) {
    case 1:
        D_800EBBE0[omCurrentObj->objId] = func_801ACCA0_ovl7(0xB, 0, 0.0f, 0.0f);
        D_800EBDA0[omCurrentObj->objId] = func_801ACCA0_ovl7(0xB, 0, 0.0f, 0.0f);
        break;
    case 2:
        D_800EBBE0[omCurrentObj->objId] = func_801ACCA0_ovl7(0xB, 0, 0.0f, 0.0f);
        break;
    case 3:
        D_800EBBE0[omCurrentObj->objId] = func_801ACCA0_ovl7(0xB, 0, 0.0f, 0.0f);
        break;
    }
    if (D_800EBBE0[omCurrentObj->objId] != 0) {
        D_800EC2E0[D_800EBBE0[omCurrentObj->objId]].as_s32 = arg0;
        D_800E6A10[D_800EBBE0[omCurrentObj->objId]] *= -1.0f;
    }
    if (D_800EBDA0[omCurrentObj->objId] != 0) {
        D_800EC2E0[D_800EBDA0[omCurrentObj->objId]].as_s32 = arg0;
    }
    return D_800EBBE0[omCurrentObj->objId];
}

