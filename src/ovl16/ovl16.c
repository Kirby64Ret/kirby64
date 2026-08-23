#include "common.h"

#include <macros.h>
#include "GObj.h"
#include "DObj.h"
#include "buffers.h"
#include "unk_structs/D_800E1B50.h"
#include "unk_structs/D_800D7098.h"
#include "unk_structs/D_800DE350.h"
#include "unk_structs/D_80129114.h"
#include "ovl1/ovl1_6.h"
#include "ovl2/ovl2_8.h"

extern f32 D_801EFDF0_ovl16;
extern f32 D_801EFDFC_ovl16;
extern f32 D_801EFF10_ovl16;
extern f32 D_801EFF14_ovl16;
extern f32 D_801EFF18_ovl16;
extern f32 D_801EFF1C_ovl16;
extern f32 D_801EFF20_ovl16;
extern f32 D_801EFF24_ovl16;
extern f32 D_801EFF28_ovl16;
extern f32 D_801EFF2C_ovl16;
extern f32 D_801EFF30_ovl16;
extern f32 D_801EFF34_ovl16;
extern f32 D_801EFF38_ovl16;
extern f32 D_801EFF3C_ovl16;
extern f32 D_801EFF40_ovl16;
extern f32 D_801EFF44_ovl16;
extern f32 D_801EFF48_ovl16;
extern f32 D_801EFF4C_ovl16;
extern f32 D_801EFF50_ovl16;
extern f32 D_801EFF5C_ovl16;
extern f32 D_801EFFBC_ovl16;
extern f32 D_801F0044_ovl16;
extern f32 D_801F0064_ovl16;

struct Ovl16AnimInfo {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 filler4[8];
    s32 unkC;
    u8 filler10[0x10];
};

struct Ovl16AnimCmd {
    u32 unk0;
    u32 unk4;
    s32 unk8;
    u8 fillerC[4];
    f32 unk10;
    u8 filler14[4];
    f32 unk18;
    f32 unk1C;
    f32 unk20;
    f32 unk24;
    u8 filler28[8];
    s32 unk30;
    f32 unk34;
    f32 unk38;
    u8 filler3C[4];
    f32 unk40;
    f32 unk44;
    u8 filler48[4];
    f32 unk4C;
    u8 filler50[8];
    s32 unk58;
};

struct Ovl16Color {
    u8 r;
    u8 g;
    u8 b;
    u8 a;
};

struct Ovl16MObj {
    struct Ovl16MObj *next;
    u8 filler4[0x54];
    struct Ovl16Color primColor;
    u8 filler5C[4];
    struct Ovl16Color envColor;
    u8 filler64[0x24];
    f32 unk88;
};

struct Ovl16DObj {
    u8 filler0[0x80];
    struct Ovl16MObj *mobjList;
};

struct Ovl16AnimObj {
    u8 filler0[0x24];
    struct Ovl16AnimCmd *unk24;
};

extern void (*D_801EF4C0_ovl16[])(struct GObj *);
extern s32 D_801EF5E0_ovl16[];
extern s32 D_801F0120_ovl16[];
extern s32 D_801F0140_ovl16[];
extern f32 D_800D6E5C;

void func_801DB338_ovl16(s32 arg0);
void func_801DB3B8_ovl16(s32 arg0);
void func_801A3E80_ovl7(struct GObj *);
s32 func_8019E0A4_ovl7(s32, s32);
void play_sound(s32);
void func_800BB468(s32, s32);
void func_800BC11C(f32);
void func_800FD754(s32, f32, f32, f32);
s32 func_801DBBCC_ovl16(s32, s32, s32);
void func_80110150(struct Ovl16AnimInfo *);
s32 func_80110B00(struct Ovl16AnimInfo *);
s32 func_80110FD4(struct Ovl16AnimInfo *);
void func_80111550(u32);
struct Ovl16AnimObj *func_80111C88(s32 *, u32);
void func_80111ECC(struct Ovl16AnimObj *);
struct Ovl16AnimObj *func_801A0464_ovl7(void);
void func_801A04B8_ovl7(void);
void func_801DC314_ovl16(s32, s32, s32);
void func_801E7EE0_ovl16(s32, s32 *, s32 *);

struct Ovl16Pair {
    s32 unk0;
    s32 unk4;
};

extern struct Ovl16Pair D_801EFA3C_ovl16[];
extern void (*D_801EFD48_ovl16[])(struct GObj *);
extern s32 D_801D9798;
extern s32 D_801D9948;
extern s32 D_801D9A20;
extern s32 D_801D9AB0;

s32 func_800A9864(s32, s32, s32);
void func_801DF62C_ovl16(void);
void func_800AA018(s32);
void func_800AA154(s32);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800AFBB4(u32, struct GObj *);
void func_800B19F4(s32, u32);
void func_800B33F4(void);
void func_800B4924(struct GObj *);
void func_800B7560(struct GObj *);
void func_8019BAC8_ovl7(void);
void func_8019BB58_ovl7(void);
void func_8019D958_ovl7(u16);
void func_801EB230_ovl16(s32);
void func_801EF080_ovl16(s32);
void func_8019F1EC_ovl7(void);
void func_801E9590_ovl16(struct GObj *);
extern s32 D_801D9480;
extern s32 D_801DA3F4;
extern s32 D_801DA2F8;
extern s32 D_801D9438;
s32 func_801ACC34_ovl7(s32, s32);
void func_800A9F98(s32, f32);
void func_801EA568_ovl16(struct GObj *);
void func_801E9178_ovl16(struct GObj *);
void func_801EA070_ovl16(struct GObj *);
void func_801EAF00_ovl16(struct GObj *);

struct UnkStruct800D7118 {
    u8 pad0[0x3C];
    s32 unk3C;
};

extern struct UnkStruct800D7118 D_800D7118;
void func_800A7F74(s32, s32, s32, f32, f32, f32);

extern f32 gameTicksPerDraw;
extern struct EnemyEventTable D_801DAEF4;
extern s32 D_801EF914_ovl16[];
extern s32 D_801EF920_ovl16[];
extern s32 D_801EF92C_ovl16[];
extern s32 D_801EF9B4_ovl16[];
extern s32 D_801EF9D8_ovl16[];
extern s32 D_801EF9F8_ovl16[];

void setProcessMain(struct GObjProcess *, void (*)(struct GObj *));
void procMainStub(struct GObj *);
void ohSleep(u32);
void func_800A9EA4(s32);
s32 random_soft_s32_range(s32);
s32 func_801DB698_ovl16(s32);
void func_801DF314_ovl16(void);
extern s32 D_801D9510;
extern s32 D_801D9558;
extern s32 D_801D96E4;
extern s32 D_801D972C;
extern s32 D_801D9774;
extern s32 D_801D9804;
extern s32 D_801D9828;
extern s32 D_801D9900;
extern s32 D_801D99D8;
extern void (*D_801EFD7C_ovl16[])(struct GObj *);
extern void (*D_801EFD80_ovl16[])(struct GObj *);
extern s32 D_801EF864_ovl16[];
extern s32 D_801DA55C;
s32 func_801A03B4_ovl7(void);
void func_801A03E4_ovl7(struct DObj *, struct DObj ***);
s32 func_801A0244_ovl7(s8);
void func_801EF3B0_ovl16(s32, s32);
void func_801EF1A4_ovl16(s32);
void func_801ECB88_ovl16(struct GObj *);
void curObjSleepForever(void);
extern void (*D_801EFC60_ovl16[])(struct GObj *);
extern void (*D_801EFC68_ovl16[])(struct GObj *);
extern void (*D_801EFD38_ovl16[])(struct GObj *);
extern void (*D_801EFD5C_ovl16[])(struct GObj *);
extern void (*D_801EFD64_ovl16[])(struct GObj *);
extern void (*D_801EFD84_ovl16[])(struct GObj *);
extern void (*D_801EFD94_ovl16[])(struct GObj *);

extern s32 D_801EF5FC_ovl16[];
extern s32 D_801EF618_ovl16[];
extern s32 D_801EF634_ovl16[];
extern s32 D_801EF650_ovl16[];
extern s32 D_801EF6F0_ovl16[];
extern s32 D_801EF70C_ovl16[];
extern s32 D_801EF728_ovl16[];
extern s32 D_801EF730_ovl16[];
extern s32 D_801EF738_ovl16[];
extern s32 D_801EF740_ovl16[];
extern s32 D_801EF748_ovl16[];
extern s32 D_801EF750_ovl16[];
extern s32 D_801EF758_ovl16[];
extern s32 D_801EF760_ovl16[];
extern s32 D_801EF780_ovl16[];
extern s32 D_801EF7A0_ovl16[];
extern s32 D_801EF7BC_ovl16[];
extern s32 D_801EF7D8_ovl16[];
extern s32 D_801EF7F4_ovl16[];
extern s32 D_801EF810_ovl16[];
extern s32 D_801EF82C_ovl16[];
extern s32 D_801EF848_ovl16[];
extern f32 D_801EF870_ovl16[];
extern s32 D_801EF87C_ovl16[][3];
extern f32 D_801EF8C4_ovl16[];
extern s32 D_801EF8CC_ovl16[][2];
extern f32 D_801EF8DC_ovl16[];
extern f32 D_801EF8FC_ovl16[];
extern s32 D_801EF938_ovl16;
extern s32 D_801EF93C_ovl16[];
extern s32 D_801EF95C_ovl16;
extern s32 D_801EF97C_ovl16;
extern s32 D_801EF98C_ovl16;
extern s32 D_801EF9A0_ovl16;
extern s32 D_801EF9B0_ovl16;
extern s32 D_801EF9C0_ovl16[];
extern s32 D_801EF9C8_ovl16[];
extern s32 D_801EF9D0_ovl16[];
extern s32 D_801EF9E4_ovl16[];
extern s32 D_801EFA04_ovl16[];
extern s32 D_801EFA20_ovl16[];
extern f32 D_801EFC10_ovl16[];
extern s32 D_801EFC20_ovl16[];
extern s32 D_801EFC30_ovl16[];
extern s32 D_801EFC40_ovl16[];
extern s32 D_801EFC50_ovl16[];
extern s32 D_801EFC6C_ovl16[];
extern f32 D_801EFC84_ovl16[][5];
extern f32 D_801EFCC0_ovl16[][5];
extern s32 D_801EFD6C_ovl16[];
extern s32 D_801EFDA0_ovl16[];
extern s32 D_801EFDB0_ovl16[];
extern s32 D_801EFDC0_ovl16;
extern s32 D_801EFDC8_ovl16;
extern s32 D_801EFDD0_ovl16;
extern s32 D_801EFDD8_ovl16;
extern s32 D_801EFDE0_ovl16[];
extern s32 D_801F0090_ovl16;
extern s32 D_801F0124_ovl16;
extern s32 D_801F0128_ovl16;
extern s32 D_801F0144_ovl16;
extern s32 D_801F0148_ovl16;
extern s32 D_801F0160_ovl16;
extern s32 D_801F0188_ovl16;
extern f32 D_801F01B0_ovl16[];
extern f32 D_801F01D8_ovl16[];
extern s32 D_801F01F8_ovl16;
extern struct Ovl16AnimCmd *D_801F0200_ovl16[];
extern s32 D_801F0220_ovl16;
void func_801AC11C_ovl7(s32);
void func_801DD25C_ovl16(s32);
void func_801DD9FC_ovl16(s32);
void func_801DDE54_ovl16(s32);
void func_801DE524_ovl16(s32);
void func_801E820C_ovl16(s32);
void func_801EC1D8_ovl16(s32);
void func_801E86F4_ovl16(f32);
void func_801EC7E4_ovl16(s32);
void func_801EDE50_ovl16(s32);
void func_801EE970_ovl16(s32);
f32 atan2f(f32, f32);

void func_801DB1E0_ovl16(s32 arg0) {
    u32 t = -1;

    D_800E1B50[omCurrentObj->objId]->unk39 = t;
    D_800DF150[omCurrentObj->objId] = &func_801DB3B8_ovl16;
    func_801A0D50_ovl7(&func_801DB338_ovl16);
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E9020[omCurrentObj->objId] = 0.0f;
    D_800E17D0[omCurrentObj->objId] = 4.712389f;
    D_800E6A10[omCurrentObj->objId] = -1.0f;
    func_801A3280_ovl7();
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 9, &D_801EF4C0_ovl16[0]);
    while (1)
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 0x23, &D_801EF4C0_ovl16[9]);
}

void func_801DB338_ovl16(s32 arg0) {
    while (1)
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 0x23, &D_801EF4C0_ovl16[9]);
}

void func_801DB3B8_ovl16(s32 arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 0x1C, &D_801EF4C0_ovl16[44]);
}

u32 func_801DB400_ovl16(void) {
    u32 phi_v1 = 0;

    if (D_800E3050[omCurrentObj->objId] < 0.0f) {
        if (gEntitiesNextPosXArray[omCurrentObj->objId] < -260.0f) {
            gEntitiesNextPosXArray[omCurrentObj->objId] = -260.0f;
            phi_v1 = 1;
        }
    } else {
        if (gEntitiesNextPosXArray[omCurrentObj->objId] > 260.0f) {
            gEntitiesNextPosXArray[omCurrentObj->objId] = 260.0f;
            phi_v1 = 1;
        }
    }
    if (D_800E3210[omCurrentObj->objId] < 0.0f) {
        if (gEntitiesNextPosYArray[omCurrentObj->objId] < 20.0f) {
            gEntitiesNextPosYArray[omCurrentObj->objId] = 20.0f;
            phi_v1 = 1;
        }
    } else if (260.0f < gEntitiesNextPosYArray[omCurrentObj->objId]) {
        gEntitiesNextPosYArray[omCurrentObj->objId] = 260.0f;
        phi_v1 = 1;
    }
    return phi_v1;
}

/* The 9999.0f/0.09f/0.2f comparisons below are byte-exact as written, but
 * this segment's rodata is an unmigrated asm blob: IDO emits a SECOND copy
 * of each literal into the TU's .rodata and the whole segment grows.
 * Referencing the data symbols instead changes codegen (IDO reloads a
 * global where it CSEs a literal), so the body has to stay parked here
 * until ovl16's rodata can be migrated to `.rodata, ovl16/ovl16`. */
void func_801DB528_ovl16(s32 arg0) {
    s32 i;
    s32 t = -1;

    for (i = 14; i != 0x3C; i++) {
        if (D_800DD710[i] != t) {
            if ((D_800E7730[i] == 0) || (D_800E7730[i] == 4)) {
                if ((D_800E77A0[i] != 0x39) && (D_800E77A0[i] != 0x3A)) {
                    if ((0.09f < D_800E7B20[i]) && (D_800E7B20[i] < 9999.0f) && (D_800E83E0[i] != 1) &&
                        (D_800E0D50[i] != 0)) {
                        gEntityFuncListIDArray[i] = t;
                        assign_new_process_entry(gEntityGObjProcessArray[i], &func_801A3E80_ovl7);
                    }
                }
            }
        }
    }
}

s32 func_801DB698_ovl16(s32 arg0) {
    s32 ret;
    s32 i;
    s32 j;

    ret = func_801DBBCC_ovl16(arg0, 0, 0);
    if (ret != 1) {
        if (ret == 2) {
            D_801F0120_ovl16[D_800D7098.unk4]--;
            if (D_801F0120_ovl16[D_800D7098.unk4] <= 0) {
                D_801F0120_ovl16[D_800D7098.unk4] = 0;
                D_800D7098.unkC--;
                if ((s32) D_800D7098.unkC <= 0) {
                    D_800D7098.unkC = 0;
                }
                for (i = 0, j = 0; i != 7; i++) {
                    if (D_801F0120_ovl16[i] > 0) {
                        D_801F0140_ovl16[j] = i;
                        j++;
                    }
                }
                play_sound(0x2A);
                func_800BB468(2, 0);
                func_800FD754(1, gEntitiesNextPosXArray[omCurrentObj->objId],
                              gEntitiesNextPosYArray[omCurrentObj->objId],
                              gEntitiesNextPosZArray[omCurrentObj->objId]);
                D_800EBDA0[omCurrentObj->objId] = func_8019E0A4_ovl7(5, 3);
                if (D_800D6E5C != 0.0f) {
                    func_800BC11C(D_800E7B20[omCurrentObj->objId]);
                }
                gEntityFuncListIDArray[omCurrentObj->objId] = D_801EF5E0_ovl16[D_800D7098.unk4];
                assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_801DB338_ovl16);
            } else {
                D_800EBDA0[omCurrentObj->objId] = func_8019E0A4_ovl7(5, 3);
                if ((D_800EBDA0[omCurrentObj->objId] != -1) && (D_800D6E5C != 0.0f)) {
                    func_800BC11C(D_800E7B20[omCurrentObj->objId]);
                }
            }
            if (((s32 *) D_800E9AA0)[D_800EBBE0[omCurrentObj->objId]] < 0x14) {
                ((s32 *) D_800E9AA0)[D_800EBBE0[omCurrentObj->objId]]++;
            }
        }
    } else {
        D_800D7098.unk18 = 1;
        if (((s32 *) D_800E9AA0)[D_800EBBE0[omCurrentObj->objId]] < 0x14) {
            ((s32 *) D_800E9AA0)[D_800EBBE0[omCurrentObj->objId]] = 0x14;
        }
        play_sound(0x2A);
        func_800BB468(2, 0);
        func_800FD754(1, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId],
                      gEntitiesNextPosZArray[omCurrentObj->objId]);
        if (D_800D6E5C != 0.0f) {
            func_800BC11C(D_800E7B20[omCurrentObj->objId]);
        }
        gEntityFuncListIDArray[omCurrentObj->objId] = D_801EF5E0_ovl16[D_800D7098.unk4];
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_801DB338_ovl16);
    }
    return ret;
}

void func_801DBA54_ovl16(struct EnemyRecord *arg0, struct Ovl16AnimInfo *arg1) {
    D_800E83E0[omCurrentObj->objId] = arg1->unk2;
    arg0->unk43 = arg1->unk3;
    arg0->unk3E = arg1->unk0;
    arg0->unk3F = arg1->unk1;
    arg0->unk3A = arg1->unkC;
}

s32 func_801DBA98_ovl16(s32 arg0, s32 arg1, s32 arg2) {
    struct Ovl16AnimInfo sp38;
    u8 sp30[8];
    struct EnemyRecord *temp_s0;
    struct Ovl16AnimObj *temp_v0;
    u32 temp_a0;
    s32 t = -1;

    temp_a0 = omCurrentObj->objId;
    temp_s0 = D_800E1B50[temp_a0];
    func_80111550(temp_a0);
    temp_v0 = func_80111C88(temp_s0->unk8C, omCurrentObj->objId);
    if (temp_v0 != NULL) {
        if (arg0 != 0) {
            temp_v0->unk24->unk8 = arg0;
        }
        if (arg1 != 0) {
            temp_v0->unk24->unk30 = arg1;
        }
        if (arg2 != 0) {
            temp_v0->unk24->unk58 = arg2;
        }
        func_80111ECC(temp_v0);
    }
    func_80110150(&sp38);
    if (func_80110B00(&sp38) != 0) {
        func_801DBA54_ovl16(temp_s0, &sp38);
    } else if (func_80110FD4(&sp38) != 0) {
        func_801DBA54_ovl16(temp_s0, &sp38);
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
        temp_s0->unk43 = 0;
        temp_s0->unk3A = t;
    }
    return D_800E83E0[omCurrentObj->objId];
}

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
s32 func_801DBBCC_ovl16(s32 arg0, s32 arg1, s32 arg2) {
    struct Ovl16AnimInfo sp40;
    EnemyRecord *sp34;
    s32 sp30;
    s32 sp2C;
    GObj *var_a0;
    f32 *temp_v1_10;
    f32 *temp_v1_11;
    f32 *temp_v1_2;
    f32 *temp_v1_3;
    f32 *temp_v1_4;
    f32 *temp_v1_5;
    f32 *temp_v1_7;
    f32 *temp_v1_8;
    s32 *var_t3;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s8 temp_v1;
    s8 temp_v1_12;
    s8 temp_v1_6;
    s8 temp_v1_9;
    struct Ovl16AnimObj *temp_v0;
    u32 temp_a0;
    u32 temp_a1;
    u32 temp_a1_2;
    u32 temp_a1_3;
    u32 temp_a1_4;
    u32 temp_a1_5;

    temp_a0 = omCurrentObj->objId;
    sp34 = D_800E1B50[temp_a0];
    func_80111550(temp_a0);
    temp_v0 = func_80111C88(sp34->unk8C, omCurrentObj->objId);
    if (temp_v0 != NULL) {
        if (arg0 != 0) {
            temp_v0->unk24->unk8 = arg0;
        }
        if (arg1 != 0) {
            temp_v0->unk24->unk30 = arg1;
        }
        if (arg2 != 0) {
            temp_v0->unk24->unk58 = arg2;
        }
        func_80111ECC(temp_v0);
    }
    func_80110150(&sp40);
    if (func_80110B00(&sp40) != 0) {
        func_801DBA54_ovl16(sp34, &sp40);
        var_a0 = omCurrentObj;
        temp_a1 = var_a0->objId;
        temp_v0_2 = D_800E83E0[temp_a1];
        switch (temp_v0_2) {                        /* irregular */
        default:
            D_800D7098.unk28 = 0;
            goto block_58;
        case 9:
            temp_v1 = (s8) sp34->unk3A;
            if ((D_800E7730[temp_v1] == 4) && (D_800E77A0[temp_v1] == D_801EF618_ovl16[D_800D7098.unk4]) && (temp_v1 >= 0xE) && (temp_v1 < 0x1E)) {
                temp_v1_2 = &D_800E7B20[temp_a1];
                *temp_v1_2 -= 1.0f;
                temp_a1_2 = var_a0->objId;
                temp_v1_3 = &D_800E7B20[temp_a1_2];
                if (*temp_v1_3 <= 0.0f) {
                    *temp_v1_3 = 0.0f;
                    D_800E83E0[var_a0->objId] = 1;
                    return D_800E83E0[var_a0->objId];
                }
                D_800E83E0[temp_a1_2] = 2;
                D_800E7CE0[var_a0->objId] = 0x2D;
                return D_800E83E0[var_a0->objId];
            }
            func_801E7EE0_ovl16((s32) sp40.filler4[4], &sp30, &sp2C);
            temp_v0_3 = D_801EF5FC_ovl16[D_800D7098.unk4];
            if ((sp30 == temp_v0_3) || (sp2C == temp_v0_3)) {
                temp_v1_4 = &D_800E7B20[omCurrentObj->objId];
                *temp_v1_4 -= 1.0f;
                temp_a1_3 = omCurrentObj->objId;
                temp_v1_5 = &D_800E7B20[temp_a1_3];
                if (*temp_v1_5 <= 0.0f) {
                    *temp_v1_5 = 0.0f;
                    D_800E83E0[omCurrentObj->objId] = 1;
                    return D_800E83E0[omCurrentObj->objId];
                }
                D_800E83E0[temp_a1_3] = 2;
                D_800E7CE0[omCurrentObj->objId] = 0x2D;
                var_t3 = &D_800E83E0[omCurrentObj->objId];
                goto block_59;
            }
            if (D_800D7098.unk28 == 0) {
                D_800D7098.unk28 = 1;
                play_sound(0x1B6);
                temp_v0_4 = func_8019E0A4_ovl7(5, 8);
                if (temp_v0_4 != -1) {
                    temp_v1_6 = (s8) sp34->unk3A;
                    if (temp_v1_6 <= 0) {
                        D_800E98E0[temp_v0_4] = 0;
                    } else {
                        D_800E98E0[temp_v0_4] = (s32) temp_v1_6;
                    }
                }
            }
            goto block_57;
        case 8:
        case 18:
            assign_new_process_entry(gEntityGObjProcessArray[(s8) sp34->unk3A], func_801AC11C_ovl7);
            func_801E7EE0_ovl16((s32) sp40.filler4[4], &sp30, &sp2C);
            temp_v0_5 = D_801EF5FC_ovl16[D_800D7098.unk4];
            if ((sp30 == temp_v0_5) || (sp2C == temp_v0_5)) {
                temp_v1_7 = &D_800E7B20[omCurrentObj->objId];
                *temp_v1_7 -= 1.0f;
                temp_a1_4 = omCurrentObj->objId;
                temp_v1_8 = &D_800E7B20[temp_a1_4];
                if (*temp_v1_8 <= 0.0f) {
                    *temp_v1_8 = 0.0f;
                    D_800E83E0[omCurrentObj->objId] = 1;
                    return D_800E83E0[omCurrentObj->objId];
                }
                D_800E83E0[temp_a1_4] = 2;
                D_800E7CE0[omCurrentObj->objId] = 0x2D;
                return D_800E83E0[omCurrentObj->objId];
            }
            if (D_800D7098.unk28 == 0) {
                D_800D7098.unk28 = 1;
                play_sound(0x1B6);
                temp_v0_6 = func_8019E0A4_ovl7(5, 8);
                if (temp_v0_6 != -1) {
                    temp_v1_9 = (s8) sp34->unk3A;
                    if (temp_v1_9 <= 0) {
                        D_800E98E0[temp_v0_6] = 0;
                    } else {
                        D_800E98E0[temp_v0_6] = (s32) temp_v1_9;
                    }
                }
            }
            goto block_57;
        }
    } else {
        if (func_80110FD4(&sp40) != 0) {
            func_801DBA54_ovl16(sp34, &sp40);
            var_a0 = omCurrentObj;
            if (D_800E83E0[var_a0->objId] == 6) {
                func_801E7EE0_ovl16((s32) sp40.filler4[4], &sp30, &sp2C);
                temp_v0_7 = D_801EF5FC_ovl16[D_800D7098.unk4];
                if ((sp30 == temp_v0_7) || (sp2C == temp_v0_7)) {
                    temp_v1_10 = &D_800E7B20[omCurrentObj->objId];
                    *temp_v1_10 -= 1.0f;
                    temp_a1_5 = omCurrentObj->objId;
                    temp_v1_11 = &D_800E7B20[temp_a1_5];
                    if (*temp_v1_11 <= 0.0f) {
                        *temp_v1_11 = 0.0f;
                        D_800E83E0[omCurrentObj->objId] = 1;
                        return D_800E83E0[omCurrentObj->objId];
                    }
                    D_800E83E0[temp_a1_5] = 2;
                    D_800E7CE0[omCurrentObj->objId] = 0x2D;
                    return D_800E83E0[omCurrentObj->objId];
                }
                if (D_800D7098.unk28 == 0) {
                    D_800D7098.unk28 = 1;
                    play_sound(0x1B6);
                    temp_v0_8 = func_8019E0A4_ovl7(5, 8);
                    if (temp_v0_8 != -1) {
                        temp_v1_12 = (s8) sp34->unk3A;
                        if (temp_v1_12 <= 0) {
                            D_800E98E0[temp_v0_8] = 0;
                        } else {
                            D_800E98E0[temp_v0_8] = (s32) temp_v1_12;
                        }
                    }
                }
                goto block_57;
            }
            D_800D7098.unk28 = 0;
            goto block_58;
        }
        D_800E83E0[omCurrentObj->objId] = 0;
        sp34->unk43 = 0;
        sp34->unk3A = -1U;
        D_800D7098.unk28 = 0;
block_57:
        var_a0 = omCurrentObj;
block_58:
        var_t3 = &D_800E83E0[var_a0->objId];
block_59:
        return *var_t3;
    }
}
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801DBBCC_ovl16.s")
#endif

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
void func_801DC314_ovl16(s32 arg0, s32 arg1, s32 arg2) {
    struct Ovl16AnimInfo sp38;
    EnemyRecord *sp2C;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v1;
    s8 temp_v1_2;
    s8 temp_v1_3;
    struct Ovl16AnimObj *temp_v0;
    u32 temp_a0;

    temp_a0 = omCurrentObj->objId;
    sp2C = D_800E1B50[temp_a0];
    func_80111550(temp_a0);
    temp_v0 = func_80111C88(sp2C->unk8C, omCurrentObj->objId);
    if (temp_v0 != NULL) {
        if (arg0 != 0) {
            temp_v0->unk24->unk8 = arg0;
        }
        if (arg1 != 0) {
            temp_v0->unk24->unk30 = arg1;
        }
        if (arg2 != 0) {
            temp_v0->unk24->unk58 = arg2;
        }
        func_80111ECC(temp_v0);
    }
    func_80110150(&sp38);
    if (D_800D7098.unk18 != 0) {
        if (func_80110B00(&sp38) != 0) {
            func_801DBA54_ovl16(sp2C, &sp38);
        } else if (func_80110FD4(&sp38) != 0) {
            func_801DBA54_ovl16(sp2C, &sp38);
        } else {
            D_800E83E0[omCurrentObj->objId] = 0;
            sp2C->unk43 = 0;
            sp2C->unk3A = -1U;
        }
        D_800D7098.unk28 = 0;
    } else if (func_80110B00(&sp38) != 0) {
        func_801DBA54_ovl16(sp2C, &sp38);
        temp_v1 = D_800E83E0[omCurrentObj->objId];
        switch (temp_v1) {                          /* irregular */
        default:
            D_800D7098.unk28 = 0;
            break;
        case 8:
        case 18:
            assign_new_process_entry(gEntityGObjProcessArray[(s8) sp2C->unk3A], func_801AC11C_ovl7, &D_800D7098);
            /* fallthrough */
        case 9:
            if (D_800D7098.unk28 == 0) {
                D_800D7098.unk28 = 1;
                play_sound(0x1B6);
                temp_v0_2 = func_8019E0A4_ovl7(5, 8);
                if (temp_v0_2 != -1) {
                    temp_v1_2 = (s8) sp2C->unk3A;
                    if (temp_v1_2 <= 0) {
                        D_800E98E0[temp_v0_2] = 0;
                    } else {
                        D_800E98E0[temp_v0_2] = (s32) temp_v1_2;
                    }
                }
            }
            break;
        }
    } else if (func_80110FD4(&sp38) != 0) {
        func_801DBA54_ovl16(sp2C, &sp38);
        if (D_800E83E0[omCurrentObj->objId] == 6) {
            if (D_800D7098.unk28 == 0) {
                D_800D7098.unk28 = 1;
                play_sound(0x1B6);
                temp_v0_3 = func_8019E0A4_ovl7(5, 8);
                if (temp_v0_3 != -1) {
                    temp_v1_3 = (s8) sp2C->unk3A;
                    if (temp_v1_3 <= 0) {
                        D_800E98E0[temp_v0_3] = 0;
                    } else {
                        D_800E98E0[temp_v0_3] = (s32) temp_v1_3;
                    }
                }
            }
        } else {
            D_800D7098.unk28 = 0;
        }
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
        sp2C->unk43 = 0;
        sp2C->unk3A = -1U;
        D_800D7098.unk28 = 0;
    }
}
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801DC314_ovl16.s")
#endif

s32 func_801DC6E4_ovl16(s32 arg0, s32 arg1) {
    struct Ovl16AnimInfo sp20;
    void *sp1C;

    sp1C = D_800E1B50[omCurrentObj->objId];
    func_80111550(omCurrentObj->objId);
    sp1C = func_80111C88(((struct EnemyRecord *) sp1C)->unk8C, omCurrentObj->objId);
    if (sp1C != NULL) {
        if (arg0 != 0) {
            ((struct Ovl16AnimObj *) sp1C)->unk24->unk8 = arg0;
            ((struct Ovl16AnimObj *) sp1C)->unk24->unk10 = D_800DFBD0[omCurrentObj->objId][5]->pos.v.y;
            ((struct Ovl16AnimObj *) sp1C)->unk24->unk1C = D_800DFBD0[omCurrentObj->objId][9]->pos.v.y;
        }
        if (arg1 != 0) {
            ((struct Ovl16AnimObj *) sp1C)->unk24->unk30 = arg1;
            ((struct Ovl16AnimObj *) sp1C)->unk24->unk34 = D_800DFBD0[omCurrentObj->objId][3]->pos.v.x;
            ((struct Ovl16AnimObj *) sp1C)->unk24->unk40 = D_800DFBD0[omCurrentObj->objId][7]->pos.v.x;
        }
        func_80111ECC(sp1C);
    }
    func_80110B00(&sp20);
    func_80110150(&sp20);
    return 0;
}

s32 func_801DC83C_ovl16(s32 arg0, s32 arg1) {
    struct Ovl16AnimInfo sp20;
    void *sp1C;

    sp1C = D_800E1B50[omCurrentObj->objId];
    func_80111550(omCurrentObj->objId);
    sp1C = func_80111C88(((struct EnemyRecord *) sp1C)->unk8C, omCurrentObj->objId);
    if (sp1C != NULL) {
        if (arg0 != 0) {
            ((struct Ovl16AnimObj *) sp1C)->unk24->unk8 = arg0;
        }
        if (arg1 != 0) {
            ((struct Ovl16AnimObj *) sp1C)->unk24->unk30 = arg1;
        }
        func_80111ECC(sp1C);
    }
    func_80110B00(&sp20);
    func_80110150(&sp20);
    return 0;
}

#ifdef NON_MATCHING
/* 7/43: every instruction correct, frame 0x48 vs 0x40. The ROM declares only
 * sp20 and sp1C (sp1C spilled at 0x1C, BELOW the struct); the anim-object
 * pointer never gets a stack word here. Swept all six declaration orders, a
 * nested block for temp_v0 and a re-call; L is 0x28 (mod 8 == 0) so the frame
 * arithmetic cannot reach 0x40 while three locals are declared.
 * Re-swept: the anim pointer as a SECOND parameter so it homes in the arg area
 * instead of the local area (41/43 -- IDO emits the extra `sw $a1, 0x44($sp)`
 * home store), both pointers inside a nested block (10/43), the entry local
 * retyped s32 with casts at both uses (10/43), and the entry inlined at both
 * uses so IDO would CSE it into a spill temp (43/46 -- IDO will not hoist the
 * load above `jal func_80111550`, so the entry HAS to be a source variable).
 * align8(0x1C + L) = 0x40 needs L in {0x20, 0x24}: with sizeof sp20 == 0x20
 * that is the struct plus AT MOST one 4-byte local, and the function needs the
 * entry, the anim pointer and the struct all live at once. */
s32 func_801DC8E4_ovl16(s32 arg0) {
    struct EnemyRecord *sp1C;
    struct Ovl16AnimObj *temp_v0;
    struct Ovl16AnimInfo sp20;

    sp1C = D_800E1B50[omCurrentObj->objId];
    func_80111550(omCurrentObj->objId);
    temp_v0 = func_80111C88(sp1C->unk8C, omCurrentObj->objId);
    if (temp_v0 != NULL) {
        if (arg0 != 0) {
            temp_v0->unk24->unk8 = arg0;
            temp_v0->unk24->unk18 = sp1C->unk80->unk10;
        }
        func_80111ECC(temp_v0);
    }
    func_80110B00(&sp20);
    func_80110FD4(&sp20);
    func_80110150(&sp20);
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801DC8E4_ovl16.s")
#endif

#ifdef NON_MATCHING
/* 6/61: frame and every instruction correct; ROM keeps sp1C in $a0 and
 * reloads arg1 into $a1, IDO does the reverse. Swept nested ifs, reversed
 * condition order, s32 vs pointer parameters, an explicit cast at the
 * func_80111ECC call, and the return-type/prototype-presence lever on all
 * five callees -- 6 diffs in every case. Pure argument-register rotation.
 *
 * Measured further: giving the func_80111C88 result its OWN local (instead of
 * reusing sp1C) fixes the register swap completely -- 0 register diffs -- but
 * costs a second named local word, and then L = 0x28 (mod 8 == 0), so the
 * frame goes 0x40 -> 0x48 and is unreachable by the frame arithmetic. A union
 * of the two types, `register`, an inner block, a third prototyped parameter
 * and a third K&R parameter all fail: IDO gives every named local a word here
 * (sp20's address is taken) and homes every parameter of a 3-parameter
 * definition. The two halves of the fix are mutually exclusive. */
s32 func_801DC990_ovl16(struct Ovl16AnimCmd *arg0, struct Ovl16AnimCmd *arg1) {
    struct Ovl16AnimInfo sp20;
    void *sp1C;

    sp1C = D_800E1B50[omCurrentObj->objId];
    func_80111550(omCurrentObj->objId);
    sp1C = func_80111C88(((struct EnemyRecord *) sp1C)->unk8C, omCurrentObj->objId);
    if (sp1C != NULL) {
        if ((arg0 != NULL) && (arg1 != NULL)) {
            ((struct Ovl16AnimObj *) sp1C)->unk24->unk8 = (s32) arg0;
            ((struct Ovl16AnimObj *) sp1C)->unk24->unk30 = (s32) arg0;
            ((struct Ovl16AnimObj *) sp1C)->unk24->unk1C = -arg0->unk20;
            ((struct Ovl16AnimObj *) sp1C)->unk24->unk44 = -arg0->unk20;
            ((struct Ovl16AnimObj *) sp1C)->unk24->unk18 = ((struct Ovl16AnimObj *) sp1C)->unk24->unk24 * arg1->unk40;
            ((struct Ovl16AnimObj *) sp1C)->unk24->unk40 = ((struct Ovl16AnimObj *) sp1C)->unk24->unk4C * -arg1->unk40;
        }
        func_80111ECC(sp1C);
    }
    func_80110B00(&sp20);
    func_80110150(&sp20);
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801DC990_ovl16.s")
#endif

void func_801DCA84_ovl16(s32 arg0) {
    s32 temp_a1;

    func_8019BB58_ovl7();
    func_800B19F4(0x79, omCurrentObj->objId);
    func_800AFBB4(0, omCurrentObj);
    D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_800B4924;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_800DF150[omCurrentObj->objId] = NULL;
    func_800B33F4();
    D_800D7098.unk3C = 0;
    D_800D70D8.unk3C = 0.000001f;
    D_800D70D8.unk30 = 0.0f;
    D_800D70D8.unk38 = 0.0f;
    D_800D70D8.unk34 = 160.0f;
    D_800EBBE0[omCurrentObj->objId] = func_8019E0A4_ovl7(5, 1);
    temp_a1 = D_800EBBE0[omCurrentObj->objId];
    if (temp_a1 != -1) {
        D_800E17D0[temp_a1] = D_800E17D0[omCurrentObj->objId];
        D_800E9020[D_800EBBE0[omCurrentObj->objId]] = D_800E9020[omCurrentObj->objId];
    }
    curObjSleepForever();
}

#ifdef NON_MATCHING
// 67/116 -> 32/116. The six hand-written stores were WRONG: D_801F0144/0148
// are D_801F0140[1]/[2] and D_801F0124/0128 are D_801F0120[1]/[2], so the
// whole thing is ONE loop `for (i = 0; i < 7; i++)`. IDO constant-folds the
// first three iterations (giving the ROM's separate `addiu` per store, which
// is why they looked un-CSE-able) and 4x-unrolls i=3..6 with `i` live in $v1 --
// exactly the ROM's shape. Residue is now a pure ONE-SLOT TEMP ROTATION over
// 16 instructions (ROM t5/t6/t7, ours t4/t5/t6). Swept with no effect: return
// type flips on all five callees, an extra dead local, do/while, `!=7`.
// What IS settled and should be kept:
//   * D_801F0144/0124/0148/0128_ovl16 are their OWN bss symbols (see
//     asm/data/ovl16/ovl16.bss.s); spelling them as D_801F0140_ovl16[1] etc.
//     makes IDO materialise the array base instead of the ROM's folded
//     `lui $at` + `sw %lo(sym)($at)` (80 -> 67 with the separate symbols).
//   * D_800D7098.unk4 is u32 and .unk8 is s32, so a plain `-1` to both forks
//     the constant; `*(s32 *) &D_800D7098.unk4 = -1;` shares it (103 -> 83).
//   * `ent` must be an explicit local -- the inline form puts &omCurrentObj in
//     $v0 where the ROM has $v1 (80 -> 67).
extern s32 D_801F0124_ovl16;
extern s32 D_801F0128_ovl16;
extern s32 D_801F0144_ovl16;
extern s32 D_801F0148_ovl16;

void func_801DCBF8_ovl16(s32 arg0) {
    struct EnemyRecord *ent;
    s32 i;

    ent = D_800E1B50[omCurrentObj->objId];
    ent->unk80->unk10 = 40.0f;
    D_800DEF90[omCurrentObj->objId] = func_800B7560;
    func_800B33F4();
    D_800D7098.unk8 = -1;
    *(s32 *) &D_800D7098.unk4 = -1;
    D_800D7098.unkC = 7;
    D_800D7098.unk18 = 0;
    D_800D7118.unk3C = -1;
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    func_800A9864(0x10080, 0x23, 0x10);
    func_800AA018(0x104DC);
    for (i = 0; i < 7; i++) {
        D_801F0140_ovl16[i] = i;
        if (i == 6) {
            D_801F0120_ovl16[i] = 2;
        } else {
            D_801F0120_ovl16[i] = 3;
        }
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801DCBF8_ovl16.s")
#endif
void func_801DCDC8_ovl16(s32 arg0) {
    void func_8019B9B0_ovl7(void);
    void func_800AF27C(void);
    s32 func_801BC794_ovl7(s32);
    void func_800AA0C4(s32, f32);
    struct EnemyRecord *sp5C;
    s32 temp;

    sp5C = D_800E1B50[omCurrentObj->objId];
    func_8019BB58_ovl7();
    func_800A9864(0x10077, 0x23, 0x10);
    D_800DEF90[omCurrentObj->objId] = func_800B7560;
    D_800DF150[omCurrentObj->objId] = func_801DD25C_ovl16;
    *(u32 *) &D_800E98E0[omCurrentObj->objId] = 1;
    D_800E9AA0[omCurrentObj->objId] = 0;
    while (1) {
        func_800AFBB4(D_801EF634_ovl16[D_800E98E0[omCurrentObj->objId]], omCurrentObj);
        switch (D_800E98E0[omCurrentObj->objId]) {
        case 0:
            ohSleep(1);
            /* fallthrough */
        case 1:
            func_800A9EA4(0x1046F);
            func_800A9EA4(0x1046E);
            ohSleep(1);
            break;
        case 2:
            play_sound(0x1B2);
            func_800AA018(0x1046B);
            func_800AA154(0x1046A);
            D_800E98E0[omCurrentObj->objId] = 0;
            break;
        case 3:
            func_800AECC0(gameTicksPerDraw * 2.0f);
            func_800AED20(gameTicksPerDraw * 2.0f);
            func_800A9F98(0x1046D, 20.0f);
            func_800AA0C4(0x1046C, 20.0f);
            func_800AECC0(gameTicksPerDraw);
            func_800AED20(gameTicksPerDraw);
            *(u32 *) &D_800E98E0[omCurrentObj->objId] = 1;
            break;
        case 4:
            func_8019B9B0_ovl7();
            sp5C->unk80->unk10 = 40.0f;
            D_800EAA60[omCurrentObj->objId] = sp5C->unk80->unk10;
            func_800A9EA4(0x10469);
            func_800A9EA4(0x10468);
            ohSleep(0x3C);
            D_800E98E0[omCurrentObj->objId] = 5;
            break;
        case 5:
            temp = func_801BC794_ovl7(5);
            if (temp != -1) {
                D_800E5F90[temp] = D_800E5F90[D_800E0D50[omCurrentObj->objId]];
                D_800E6BD0[temp] = D_800E6BD0[D_800E0D50[omCurrentObj->objId]];
                gEntitiesNextPosXArray[temp] = gEntitiesNextPosXArray[omCurrentObj->objId];
                gEntitiesNextPosYArray[temp] = gEntitiesNextPosYArray[omCurrentObj->objId];
                gEntitiesNextPosZArray[temp] = gEntitiesNextPosZArray[omCurrentObj->objId];
                D_800E8E60[temp] = 1;
            }
            func_8019BB58_ovl7();
            func_800AF27C();
            D_800E98E0[omCurrentObj->objId] = 6;
            break;
        case 6:
            setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
            D_800DF150[omCurrentObj->objId] = NULL;
            func_800B33F4();
            curObjSleepForever();
            break;
        }
    }
}

void func_801DD25C_ovl16(s32 arg0) {
    s32 i;

    D_800DFBD0[omCurrentObj->objId][1]->angle.v.y += 0.2094395161f;
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.z += 0.104719758f;
    while (D_800DFBD0[omCurrentObj->objId][1]->angle.v.y > 6.283185482f) {
        D_800DFBD0[omCurrentObj->objId][1]->angle.v.y -= 6.283185482f;
    }
    while (D_800DFBD0[omCurrentObj->objId][1]->angle.v.y < -6.283185482f) {
        D_800DFBD0[omCurrentObj->objId][1]->angle.v.y += 6.283185482f;
    }
    while (D_800DFBD0[omCurrentObj->objId][1]->angle.v.z > 6.283185482f) {
        D_800DFBD0[omCurrentObj->objId][1]->angle.v.z -= 6.283185482f;
    }
    while (D_800DFBD0[omCurrentObj->objId][1]->angle.v.z < -6.283185482f) {
        D_800DFBD0[omCurrentObj->objId][1]->angle.v.z += 6.283185482f;
    }
    for (i = 0; i < ((s32 *) D_800E9AA0)[omCurrentObj->objId]; i++) {
        ((struct Ovl16DObj *) D_800DFBD0[omCurrentObj->objId][D_801EF650_ovl16[i]])->mobjList->unk88 = 1.0f;
    }
}

void func_801DD484_ovl16(struct Ovl16DObj *arg0, struct Ovl16Color *arg1) {
    struct Ovl16MObj *mobj;

    mobj = arg0->mobjList;
    if (mobj != NULL) {
        do {
            mobj->primColor = *arg1;
            mobj = mobj->next;
        } while (mobj != NULL);
    }
}

void func_801DD4B4_ovl16(struct Ovl16DObj *arg0, struct Ovl16Color *arg1) {
    struct Ovl16MObj *mobj;

    mobj = arg0->mobjList;
    if (mobj != NULL) {
        do {
            mobj->envColor = *arg1;
            mobj = mobj->next;
        } while (mobj != NULL);
    }
}

void func_801DD4E4_ovl16(struct Ovl16MObj *arg0, struct Ovl16Color *arg1) {
    arg0->primColor = *arg1;
}

void func_801DD4F8_ovl16(struct Ovl16MObj *arg0, struct Ovl16Color *arg1) {
    arg0->envColor = *arg1;
}

void func_801DD50C_ovl16(s32 arg0) {
    void func_800AEDD0(f32, s32);
    void func_800AA038(s32, f32, s32);
    extern struct Ovl16Color D_801EF6D0_ovl16;
    extern struct Ovl16Color D_801EF6D4_ovl16;
    extern struct Ovl16Color D_801EF6D8_ovl16;
    extern struct Ovl16Color D_801EF6DC_ovl16;
    extern struct Ovl16Color D_801EF6E0_ovl16;
    extern struct Ovl16Color D_801EF6E4_ovl16;
    extern struct Ovl16Color D_801EF6E8_ovl16;
    extern struct Ovl16Color D_801EF6EC_ovl16;
    s32 temp;
    s32 i;
    s32 x;

    temp = D_800E0D50[omCurrentObj->objId];
    func_8019BB58_ovl7();
    D_800DEF90[omCurrentObj->objId] = func_800B7560;
    D_800DF150[omCurrentObj->objId] = func_801DD9FC_ovl16;
    play_sound(0x1A8);
    switch (D_800D7098.unk4) {
    case 0:
        for (i = 0; i != 0x14; i++) {
            x = D_800E0D50[omCurrentObj->objId] * 4;
            if (*(u32 *) ((u8 *) gEntityFuncListIDArray + x) == 1) {
                goto end;
            }
            ((struct Ovl16DObj *) (*(struct DObj ***) ((u8 *) D_800DFBD0 + x))[10])->mobjList->unk88 = 5.0f;
            ohSleep(1);
            x = D_800E0D50[omCurrentObj->objId] * 4;
            if (*(u32 *) ((u8 *) gEntityFuncListIDArray + x) == 1) {
                goto end;
            }
            ((struct Ovl16DObj *) (*(struct DObj ***) ((u8 *) D_800DFBD0 + x))[10])->mobjList->unk88 = 0.0f;
            ohSleep(1);
        }
        break;
    case 5:
        for (i = 0; i != 0x14; i++) {
            x = D_800E0D50[omCurrentObj->objId] * 4;
            if (*(u32 *) ((u8 *) gEntityFuncListIDArray + x) == 1) {
                goto end;
            }
            func_801DD4E4_ovl16(((struct Ovl16DObj *) (*(struct DObj ***) ((u8 *) D_800DFBD0 + x))[2])->mobjList, &D_801EF6D4_ovl16);
            func_801DD4E4_ovl16(
                ((struct Ovl16DObj *) D_800DFBD0[D_800E0D50[omCurrentObj->objId]][2])->mobjList->next,
                &D_801EF6DC_ovl16);
            func_801DD4E4_ovl16(
                ((struct Ovl16DObj *) D_800DFBD0[D_800E0D50[omCurrentObj->objId]][3])->mobjList,
                &D_801EF6E4_ovl16);
            ohSleep(1);
            x = D_800E0D50[omCurrentObj->objId] * 4;
            if (*(u32 *) ((u8 *) gEntityFuncListIDArray + x) == 1) {
                goto end;
            }
            func_801DD4E4_ovl16(((struct Ovl16DObj *) (*(struct DObj ***) ((u8 *) D_800DFBD0 + x))[2])->mobjList, &D_801EF6D0_ovl16);
            func_801DD4E4_ovl16(
                ((struct Ovl16DObj *) D_800DFBD0[D_800E0D50[omCurrentObj->objId]][2])->mobjList->next,
                &D_801EF6D8_ovl16);
            func_801DD4E4_ovl16(
                ((struct Ovl16DObj *) D_800DFBD0[D_800E0D50[omCurrentObj->objId]][3])->mobjList,
                &D_801EF6E0_ovl16);
            ohSleep(1);
        }
        break;
    case 1:
    case 2:
    case 3:
    case 4:
        if ((u32) gEntityFuncListIDArray[D_800E0D50[omCurrentObj->objId]] == 1) {
            goto end;
        }
        func_800AEDD0(gameTicksPerDraw, temp);
        func_800AA038(D_801EF70C_ovl16[D_800D7098.unk4], 0.0f, temp);
        ohSleep(0x28);
        if ((u32) gEntityFuncListIDArray[D_800E0D50[omCurrentObj->objId]] == 1) {
            goto end;
        }
        func_800AEDD0(((f32 *) D_801EF6F0_ovl16)[D_800D7098.unk4] * gameTicksPerDraw, temp);
        break;
    case 6:
        for (i = 0; i != 0x14; i++) {
            x = D_800E0D50[omCurrentObj->objId] * 4;
            if (*(u32 *) ((u8 *) gEntityFuncListIDArray + x) == 1) {
                goto end;
            }
            func_801DD4E4_ovl16(((struct Ovl16DObj *) (*(struct DObj ***) ((u8 *) D_800DFBD0 + x))[2])->mobjList, &D_801EF6EC_ovl16);
            ohSleep(1);
            x = D_800E0D50[omCurrentObj->objId] * 4;
            if (*(u32 *) ((u8 *) gEntityFuncListIDArray + x) == 1) {
                goto end;
            }
            func_801DD4E4_ovl16(((struct Ovl16DObj *) (*(struct DObj ***) ((u8 *) D_800DFBD0 + x))[2])->mobjList, &D_801EF6E8_ovl16);
            ohSleep(1);
        }
        break;
    }
end:
    ohSleep(5);
    func_8019D958_ovl7(((u16 *) omCurrentObj)[1]);
}

void func_801DD9FC_ovl16(s32 arg0) {
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[D_800E0D50[omCurrentObj->objId]];
}

#ifdef MIPS_TO_C
/* FACTORY: 218/250 and ~10 instructions long. Register naming dominates, but the
 * count overshoot says one expression is being evaluated more than the ROM does --
 * worth a count-first pass before any register work. */
/* Wall-crusher side panel: face inward per the D_800E98E0 side flag, park
 * offscreen (y=-1000) while the parent entity is above y=45 during stage 5,
 * then snap to y=0, play the extend anims, wait for the parent to rise past
 * y=25 and play the retract anims before despawning. */
void func_801DDA98_ovl16(s32 arg0) {
    s32 other = D_800E0D50[omCurrentObj->objId];

    func_8019BB58_ovl7();
    D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_800B7560;
    D_800DF150[omCurrentObj->objId] = (void (*)(struct GObj *)) func_801DDE54_ovl16;
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        D_800E17D0[omCurrentObj->objId] = 0.0f;
    } else {
        D_800E17D0[omCurrentObj->objId] = 3.1415927f;
    }
    D_800E9020[omCurrentObj->objId] = D_800E9020[other];
    D_800E8920[omCurrentObj->objId] = 0;
    func_800B33F4();
    func_800A9864(D_801EF728_ovl16[D_800E98E0[omCurrentObj->objId]], 0x23, 0x10);
    while ((gEntitiesNextPosYArray[other] > 45.0f) && (D_800D7098.unk4 == 5) && (D_800D7098.unk18 == 0) &&
           (gEntityFuncListIDArray[other] != 1)) {
        gEntitiesNextPosYArray[omCurrentObj->objId] = -1000.0f;
        ohSleep(1);
    }
    if ((D_800D7098.unk4 == 5) && (D_800D7098.unk18 == 0) && (gEntityFuncListIDArray[other] != 1)) {
        gEntitiesNextPosYArray[omCurrentObj->objId] = 0.0f;
        play_sound(0x1C5);
        func_800AA018(D_801EF738_ovl16[D_800E98E0[omCurrentObj->objId]]);
        func_800AA154(D_801EF730_ovl16[D_800E98E0[omCurrentObj->objId]]);
        func_800AA018(D_801EF758_ovl16[D_800E98E0[omCurrentObj->objId]]);
        func_800AA018(D_801EF750_ovl16[D_800E98E0[omCurrentObj->objId]]);
        while (gEntitiesNextPosYArray[other] <= 25.0f) {
            ohSleep(1);
        }
        func_800AA018(D_801EF748_ovl16[D_800E98E0[omCurrentObj->objId]]);
        func_800AA154(D_801EF740_ovl16[D_800E98E0[omCurrentObj->objId]]);
    }
    func_8019D958_ovl7(omCurrentObj->objId);
}
#elif defined(PORT)
/* Wall-crusher side panel: face inward per the D_800E98E0 side flag, park
 * offscreen (y=-1000) while the parent entity is above y=45 during stage 5,
 * then snap to y=0, play the extend anims, wait for the parent to rise past
 * y=25 and play the retract anims before despawning. */
void func_801DDA98_ovl16(s32 arg0) {
    s32 other = D_800E0D50[omCurrentObj->objId];

    func_8019BB58_ovl7();
    D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_800B7560;
    D_800DF150[omCurrentObj->objId] = (void (*)(struct GObj *)) func_801DDE54_ovl16;
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        D_800E17D0[omCurrentObj->objId] = 0.0f;
    } else {
        D_800E17D0[omCurrentObj->objId] = 3.1415927f;
    }
    D_800E9020[omCurrentObj->objId] = D_800E9020[other];
    D_800E8920[omCurrentObj->objId] = 0;
    func_800B33F4();
    func_800A9864(D_801EF728_ovl16[D_800E98E0[omCurrentObj->objId]], 0x23, 0x10);
    while ((gEntitiesNextPosYArray[other] > 45.0f) && (D_800D7098.unk4 == 5) && (D_800D7098.unk18 == 0) &&
           (gEntityFuncListIDArray[other] != 1)) {
        gEntitiesNextPosYArray[omCurrentObj->objId] = -1000.0f;
        ohSleep(1);
    }
    if ((D_800D7098.unk4 == 5) && (D_800D7098.unk18 == 0) && (gEntityFuncListIDArray[other] != 1)) {
        gEntitiesNextPosYArray[omCurrentObj->objId] = 0.0f;
        play_sound(0x1C5);
        func_800AA018(D_801EF738_ovl16[D_800E98E0[omCurrentObj->objId]]);
        func_800AA154(D_801EF730_ovl16[D_800E98E0[omCurrentObj->objId]]);
        func_800AA018(D_801EF758_ovl16[D_800E98E0[omCurrentObj->objId]]);
        func_800AA018(D_801EF750_ovl16[D_800E98E0[omCurrentObj->objId]]);
        while (gEntitiesNextPosYArray[other] <= 25.0f) {
            ohSleep(1);
        }
        func_800AA018(D_801EF748_ovl16[D_800E98E0[omCurrentObj->objId]]);
        func_800AA154(D_801EF740_ovl16[D_800E98E0[omCurrentObj->objId]]);
    }
    func_8019D958_ovl7(omCurrentObj->objId);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801DDA98_ovl16.s")
#endif

void func_801DDE54_ovl16(s32 arg0) {
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesNextPosZArray[omCurrentObj->objId] = 10.0f;
}

// `void ohSleep(u32);` is load-bearing for this function: with the s32
// prototype IDO re-materialises the argument (`li $a0, 1`) instead of reusing
// the saved register the loop test already parked the constant 1 in. A/B of
// the whole object shows no other function changes.
void func_801DDEB0_ovl16(struct GObj *arg0) {
    func_8019BB58_ovl7();
    func_800AFBB4(0, omCurrentObj);
    D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_800B4924;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_800DF150[omCurrentObj->objId] = NULL;
    func_800B33F4();
    D_800E98E0[omCurrentObj->objId] = 0;
    while (D_800D7098.unk2C == 1) {
        if (D_800E98E0[omCurrentObj->objId] == 0) {
            play_sound(0x1AE);
        }
        D_800E98E0[omCurrentObj->objId] = (D_800E98E0[omCurrentObj->objId] + 1) % 6;
        ohSleep(1);
    }
    func_8019D958_ovl7(((u16 *) omCurrentObj)[1]);
}

void func_801DE030_ovl16(s32 arg0) {
    s32 other;
    s32 temp;

    other = D_800E0D50[omCurrentObj->objId];
    func_8019BB58_ovl7();
    D_800DEF90[omCurrentObj->objId] = func_800B7560;
    D_800DF150[omCurrentObj->objId] = func_801DE524_ovl16;
    D_800E17D0[omCurrentObj->objId] = D_800E17D0[other];
    D_800E9020[omCurrentObj->objId] = D_800E9020[other];
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E6A10[omCurrentObj->objId] = D_800E6A10[other];
    func_800B33F4();
    switch (D_800E98E0[omCurrentObj->objId]) {
    case 0:
    case 2:
    case 4:
    case 6:
        gEntitiesNextPosXArray[omCurrentObj->objId] =
            ((f32 *) D_801EF760_ovl16)[D_800E98E0[omCurrentObj->objId]];
        break;
    case 1:
        gEntitiesNextPosXArray[omCurrentObj->objId] = 280.0f - gEntitiesNextPosYArray[other];
        break;
    case 3:
        gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosYArray[other];
        break;
    case 5:
        gEntitiesNextPosXArray[omCurrentObj->objId] = 0.0f - gEntitiesNextPosYArray[other];
        break;
    case 7:
        gEntitiesNextPosXArray[omCurrentObj->objId] = 0.0f - (280.0f - gEntitiesNextPosYArray[other]);
        break;
    }
    gEntitiesNextPosYArray[omCurrentObj->objId] =
        ((f32 *) D_801EF780_ovl16)[D_800E98E0[omCurrentObj->objId]];
    D_800E9FE0[omCurrentObj->objId].as_u32 = 0;
    func_800A9864(0x100E8, 0x23, 0x10);
    func_800AFBB4(0, omCurrentObj);
    while (D_800D7098.unk10 != 0) {
        switch (D_800E9FE0[omCurrentObj->objId].as_u32) {
        case 0:
            break;
        case 1:
            D_800EA6E0[omCurrentObj->objId] =
                atan2f(gEntitiesNextPosXArray[omCurrentObj->objId] - gEntitiesNextPosXArray[other],
                       gEntitiesNextPosYArray[other] - gEntitiesNextPosYArray[omCurrentObj->objId]);
            func_800AFBB4(1, omCurrentObj);
            play_sound(0x1B0);
            func_800AA018(0x1066F);
            func_800AA154(0x1066E);
            func_800AFBB4(0, omCurrentObj);
            while ((D_800D7098.unk10 != 0) && (D_800E9FE0[omCurrentObj->objId].as_u32 == 1)) {
                ohSleep(1);
            }
            break;
        case 2:
            temp = func_801ACC34_ovl7(0x33, 0);
            if (temp != 0) {
                D_800E8E60[temp] = 1;
                D_800E0D50[temp] = omCurrentObj->objId;
                D_800EA6E0[temp] = D_800EA6E0[omCurrentObj->objId];
            }
            while ((D_800D7098.unk10 != 0) && (D_800E9FE0[omCurrentObj->objId].as_u32 == 2)) {
                ohSleep(1);
            }
            break;
        }
        ohSleep(1);
    }
    func_8019D958_ovl7(((u16 *) omCurrentObj)[1]);
}

void func_801DE524_ovl16(s32 arg0) {
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.z = D_800EA6E0[omCurrentObj->objId];
}

void func_801DE55C_ovl16(s32 arg0) {
    s32 sp1C;

    sp1C = D_800E0D50[omCurrentObj->objId];
    func_8019BB58_ovl7();
    D_800DEF90[omCurrentObj->objId] = func_800B7560;
    D_800DF150[omCurrentObj->objId] = NULL;
    D_800E17D0[omCurrentObj->objId] = D_800E17D0[sp1C];
    D_800E9020[omCurrentObj->objId] = D_800E9020[sp1C];
    D_800E8920[omCurrentObj->objId] = 0;
    func_800B33F4();
    func_800A9864(0x100E9, 0x23, 0x10);
    func_800AA018(0x10673);
    func_800AA154(0x10672);
    func_8019D958_ovl7(omCurrentObj->objId);
}

void func_801DE670_ovl16(s32 arg0) {
    func_8019BB58_ovl7();
    D_800DEF90[omCurrentObj->objId] = func_800B7560;
    D_800DDFD0[omCurrentObj->objId] = 0x1B;
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800E9020[omCurrentObj->objId] = 0.0f;
    D_800E17D0[omCurrentObj->objId] = D_800E9020[omCurrentObj->objId];
    if (D_800E98E0[omCurrentObj->objId] <= 0) {
        D_800E98E0[omCurrentObj->objId] = 0;
    }
    if (D_800E98E0[omCurrentObj->objId] >= 0x70) {
        D_800E98E0[omCurrentObj->objId] = 0;
    }
    D_800E8920[omCurrentObj->objId] = 0;
    func_800B33F4();
    func_800A9864(0x100EA, 0x23, 0x10);
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.x =
        atan2f(gEntitiesNextPosYArray[omCurrentObj->objId] - gEntitiesNextPosYArray[D_800E98E0[omCurrentObj->objId]],
               gEntitiesNextPosXArray[omCurrentObj->objId] - gEntitiesNextPosXArray[D_800E98E0[omCurrentObj->objId]]);
    func_800AA018(0x10677);
    func_800AA154(0x10676);
    func_8019D958_ovl7(((u16 *) omCurrentObj)[1]);
}

void func_801DE840_ovl16(s32 arg0) {
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[D_800E0D50[omCurrentObj->objId]];
}

void func_801DE8DC_ovl16(s32 arg0) {
    void func_800BC1FC(s32);

    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9438;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAEF4;
    D_800EBBE0[omCurrentObj->objId] = func_8019E0A4_ovl7(5, 2);
    D_800E17D0[D_800EBBE0[omCurrentObj->objId]] = D_800E17D0[omCurrentObj->objId];
    D_800E9020[D_800EBBE0[omCurrentObj->objId]] = D_800E9020[omCurrentObj->objId];
    D_800E98E0[D_800EBBE0[omCurrentObj->objId]] = 1;
    D_800D7098.unk1C = random_soft_s32_range(3);
    D_800D7098.unk20 = random_soft_s32_range(0x23);
    D_800D7098.unk24 = random_soft_s32_range(2);
    D_800D7098.unk28 = 0;
    ohSleep(0x1E);
    func_800BC1FC((s32) D_800E7B20[omCurrentObj->objId]);
    *(s32 *) &D_800D7098.unk0 = 1;
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801DEA94_ovl16(s32 arg0) {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801DB400_ovl16();
    func_801DC314_ovl16(0, 0, 0);
}

void func_801DEAE0_ovl16(s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B7560;
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9438;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAEF4;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800B33F4();
    D_800E98E0[D_800EBBE0[omCurrentObj->objId]] = 1;
    D_800E5F90[omCurrentObj->objId] = D_800D7098.unk3C;
    D_800E6BD0[omCurrentObj->objId] = D_800D70D8.unk3C;
    gEntitiesNextPosXArray[omCurrentObj->objId] = D_800D70D8.unk30;
    gEntitiesNextPosYArray[omCurrentObj->objId] = D_800D70D8.unk34;
    gEntitiesNextPosZArray[omCurrentObj->objId] = D_800D70D8.unk38;
    if ((D_800E7B20[omCurrentObj->objId] <= 0.0f) || ((s32) D_800D7098.unkC <= 0) || (D_800D7098.unk18 == 1)) {
        ohSleep(0x1E);
        gEntityFuncListIDArray[omCurrentObj->objId] = 0x22;
        return;
    }
    ohSleep(0x1E);
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

void func_801DECF4_ovl16(s32 arg0) {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801DB400_ovl16();
    func_801DC314_ovl16(0, 0, 0);
}

#ifdef NON_MATCHING
/* 318/373 but the residue is FIVE placement differences, not 318 distinct
 * defects -- the whole tail (the two 15-iteration loops, the second jump
 * table and the epilogue) aligns instruction for instruction once the shift
 * is removed. What is left:
 *   - IDO hoists `lui/addiu %hi/%lo(D_801F0140_ovl16)` above the first switch;
 *     the ROM keeps the lui in the second beq's delay slot and the addiu in
 *     each arm.
 *   - the default arm's `D_800D7098.unk4 = t` store: ROM uses the absolute
 *     `lui $at; sw %lo(D_800D7098+4)($at)` pair at a merge point, IDO folds it
 *     into `sw 0x4($s3)` in a bnel delay slot (this is the 1 missing insn).
 *   - three scheduling swaps (beqz/addu, nop/lwc1, sll/lui).
 * Swept without effect: if/else-if instead of switch, do/while vs
 * while vs if+do/while in the default arm, a `goto` to the store, a pointer
 * local for the table, `*(u32 *)` type-split on the store, and reversed
 * compare operands.  Dense case labels ARE required: with only the four live
 * cases IDO emits a compare chain and no jump table (333 -> 319). */
void func_801DED40_ovl16(s32 arg0) {
    void func_800A9760(s32);
    struct EnemyRecord *temp;
    s32 t;
    s32 i;

    temp = D_800E1B50[omCurrentObj->objId];
    D_800D7098.unk34 = omCurrentObj->objId;
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9438;
    D_800D7098.unk14 = D_800D7098.unk4;
    switch (D_800D7098.unkC) {
    case 1:
        D_800D7098.unk4 = D_801F0140_ovl16[0];
        break;
    case 2:
        D_800D7098.unk4 = D_801F0140_ovl16[D_800D7098.unk4 == D_801F0140_ovl16[0]];
        break;
    default:
        t = D_801F0140_ovl16[random_soft_s32_range(D_800D7098.unkC)];
        if (D_800D7098.unk4 == t) {
            do {
                t = D_801F0140_ovl16[random_soft_s32_range(D_800D7098.unkC)];
            } while (D_800D7098.unk4 == t);
        }
        D_800D7098.unk4 = t;
        break;
    }
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(((f32 *) D_801EF848_ovl16)[D_800D7098.unk4] * gameTicksPerDraw);
    func_800A9760(D_801EF7A0_ovl16[D_800D7098.unk4]);
    D_800E98E0[D_800EBBE0[omCurrentObj->objId]] = 2;
    t = D_801EF7D8_ovl16[D_800D7098.unk4];
    if (t != 0) {
        if (((f32 *) D_801EF848_ovl16)[D_800D7098.unk4] != 0.0f) {
            func_800AA018(t);
        } else {
            func_800A9F98(t, 2.0f);
        }
    }
    func_800AA018(D_801EF7BC_ovl16[D_800D7098.unk4]);
    switch (D_800D7098.unk4) {
    case 0:
        break;
    case 1:
        D_800D7098.unk10 = 1;
        for (i = 0; i != 6; i++) {
            t = func_801ACC34_ovl7(0x31, i & 1);
            if (t != 0) {
                D_800E8E60[t] = 1;
                D_800E9C60[t] = i;
            }
        }
        break;
    case 2:
        if (random_soft_s32_range(2) != 0) {
            D_800EA8A0[omCurrentObj->objId] = 0.05235987902f;
        } else {
            D_800EA8A0[omCurrentObj->objId] = -0.05235987902f;
        }
        break;
    case 3:
        break;
    case 4:
        break;
    case 5:
        D_800D7098.unk2C = 1;
        func_8019E0A4_ovl7(5, 5);
        D_800D7098.unk10 = 1;
        t = func_801ACC34_ovl7(0x35, 0);
        if (t != 0) {
            D_800E8E60[t] = 1;
            D_800E0D50[t] = omCurrentObj->objId;
            D_800EC120[omCurrentObj->objId] = t;
            ((s32 *) D_800E9AA0)[t] = 0;
            D_800E98E0[omCurrentObj->objId] = 0;
            D_800D7098.unk38 = 0;
        }
        break;
    case 6:
        if (random_soft_s32_range(2) != 0) {
            D_800EA8A0[omCurrentObj->objId] = 0.05235987902f;
        } else {
            D_800EA8A0[omCurrentObj->objId] = -0.05235987902f;
        }
        D_800DFBD0[omCurrentObj->objId][3]->angle.v.z = D_800EA6E0[omCurrentObj->objId] =
            (f32) (random_soft_s32_range(0xF) + 2) * 0.08726646751f;
        D_800D7098.unk10 = 1;
        for (i = 0; i != 4; i++) {
            t = func_801ACC34_ovl7(0x36, 0);
            if (t != 0) {
                D_800E8E60[t] = 1;
                D_800E0D50[t] = omCurrentObj->objId;
                D_800E98E0[t] = i;
            }
        }
        break;
    }
    for (i = 0; i < 0xF; i++) {
        temp->unk80->unk10 -= ((f32 *) D_801EF810_ovl16)[D_800D7098.unk4];
        ohSleep(1);
    }
    switch (D_800D7098.unk4) {
    case 0:
        play_sound(0x1AC);
        break;
    case 1:
        break;
    case 2:
        play_sound(0x1A9);
        break;
    case 3:
        break;
    case 4:
        break;
    case 5:
        break;
    case 6:
        break;
    }
    i = 0;
    do {
        temp->unk80->unk10 -= ((f32 *) D_801EF810_ovl16)[D_800D7098.unk4];
        ohSleep(1);
        i++;
    } while (i != 0xF);
    temp->unk80->unk10 = ((f32 *) D_801EF82C_ovl16)[D_800D7098.unk4];
    D_800E98E0[D_800EBBE0[omCurrentObj->objId]] = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = D_801EF7F4_ovl16[D_800D7098.unk4];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801DED40_ovl16.s")
#endif

void func_801DF314_ovl16(void) {
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.x += 0.05235987902f;
    while (D_800DFBD0[omCurrentObj->objId][2]->angle.v.x > 6.283185482f) {
        D_800DFBD0[omCurrentObj->objId][2]->angle.v.x -= 6.283185482f;
    }
    while (D_800DFBD0[omCurrentObj->objId][2]->angle.v.x < -6.283185482f) {
        D_800DFBD0[omCurrentObj->objId][2]->angle.v.x += 6.283185482f;
    }
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.z -= 0.02617993951f;
    while (D_800DFBD0[omCurrentObj->objId][2]->angle.v.z > 6.283185482f) {
        D_800DFBD0[omCurrentObj->objId][2]->angle.v.z -= 6.283185482f;
    }
    while (D_800DFBD0[omCurrentObj->objId][2]->angle.v.z < -6.283185482f) {
        D_800DFBD0[omCurrentObj->objId][2]->angle.v.z += 6.283185482f;
    }
    D_800DFBD0[omCurrentObj->objId][4]->angle.v.y += 0.02617993951f;
    while (D_800DFBD0[omCurrentObj->objId][4]->angle.v.y > 6.283185482f) {
        D_800DFBD0[omCurrentObj->objId][4]->angle.v.y -= 6.283185482f;
    }
    while (D_800DFBD0[omCurrentObj->objId][4]->angle.v.y < -6.283185482f) {
        D_800DFBD0[omCurrentObj->objId][4]->angle.v.y += 6.283185482f;
    }
    D_800DFBD0[omCurrentObj->objId][5]->angle.v.y += 0.05235987902f;
    while (D_800DFBD0[omCurrentObj->objId][5]->angle.v.y > 6.283185482f) {
        D_800DFBD0[omCurrentObj->objId][5]->angle.v.y -= 6.283185482f;
    }
    while (D_800DFBD0[omCurrentObj->objId][5]->angle.v.y < -6.283185482f) {
        D_800DFBD0[omCurrentObj->objId][5]->angle.v.y += 6.283185482f;
    }
}

void func_801DF62C_ovl16(void) {
    D_800DFBD0[omCurrentObj->objId][3]->angle.v.x -= 0.2094395161f;
    while (D_800DFBD0[omCurrentObj->objId][3]->angle.v.x > 6.283185482f) {
        D_800DFBD0[omCurrentObj->objId][3]->angle.v.x -= 6.283185482f;
    }
    while (D_800DFBD0[omCurrentObj->objId][3]->angle.v.x < -6.283185482f) {
        D_800DFBD0[omCurrentObj->objId][3]->angle.v.x += 6.283185482f;
    }
    D_800DFBD0[omCurrentObj->objId][3]->angle.v.y -= 0.4188790321f;
    while (D_800DFBD0[omCurrentObj->objId][3]->angle.v.y > 6.283185482f) {
        D_800DFBD0[omCurrentObj->objId][3]->angle.v.y -= 6.283185482f;
    }
    while (D_800DFBD0[omCurrentObj->objId][3]->angle.v.y < -6.283185482f) {
        D_800DFBD0[omCurrentObj->objId][3]->angle.v.y += 6.283185482f;
    }
    D_800DFBD0[omCurrentObj->objId][3]->angle.v.z += 0.2094395161f;
    while (D_800DFBD0[omCurrentObj->objId][3]->angle.v.z > 6.283185482f) {
        D_800DFBD0[omCurrentObj->objId][3]->angle.v.z -= 6.283185482f;
    }
    while (D_800DFBD0[omCurrentObj->objId][3]->angle.v.z < -6.283185482f) {
        D_800DFBD0[omCurrentObj->objId][3]->angle.v.z += 6.283185482f;
    }
    D_800DFBD0[omCurrentObj->objId][4]->angle.v.x += 0.2094395161f;
    while (D_800DFBD0[omCurrentObj->objId][4]->angle.v.x > 6.283185482f) {
        D_800DFBD0[omCurrentObj->objId][4]->angle.v.x -= 6.283185482f;
    }
    while (D_800DFBD0[omCurrentObj->objId][4]->angle.v.x < -6.283185482f) {
        D_800DFBD0[omCurrentObj->objId][4]->angle.v.x += 6.283185482f;
    }
    D_800DFBD0[omCurrentObj->objId][4]->angle.v.y -= 0.4188790321f;
    while (D_800DFBD0[omCurrentObj->objId][4]->angle.v.y > 6.283185482f) {
        D_800DFBD0[omCurrentObj->objId][4]->angle.v.y -= 6.283185482f;
    }
    while (D_800DFBD0[omCurrentObj->objId][4]->angle.v.y < -6.283185482f) {
        D_800DFBD0[omCurrentObj->objId][4]->angle.v.y += 6.283185482f;
    }
    D_800DFBD0[omCurrentObj->objId][4]->angle.v.z -= 0.2094395161f;
    while (D_800DFBD0[omCurrentObj->objId][4]->angle.v.z > 6.283185482f) {
        D_800DFBD0[omCurrentObj->objId][4]->angle.v.z -= 6.283185482f;
    }
    while (D_800DFBD0[omCurrentObj->objId][4]->angle.v.z < -6.283185482f) {
        D_800DFBD0[omCurrentObj->objId][4]->angle.v.z += 6.283185482f;
    }
}

void func_801DFAA0_ovl16(s32 arg0) {
    switch (D_800D7098.unk4) {
    case 0:
        break;
    case 1:
        func_801DF314_ovl16();
        break;
    case 2:
        func_801DF62C_ovl16();
        break;
    case 3:
        break;
    case 4:
        break;
    case 5:
        break;
    case 6:
        D_800EA6E0[omCurrentObj->objId] += D_800EA8A0[omCurrentObj->objId];
        D_800DFBD0[omCurrentObj->objId][3]->angle.v.z = D_800EA6E0[omCurrentObj->objId];
        while (D_800DFBD0[omCurrentObj->objId][3]->angle.v.z > 6.283185482f) {
            D_800DFBD0[omCurrentObj->objId][3]->angle.v.z -= 6.283185482f;
        }
        while (D_800DFBD0[omCurrentObj->objId][3]->angle.v.z < -6.283185482f) {
            D_800DFBD0[omCurrentObj->objId][3]->angle.v.z += 6.283185482f;
        }
        break;
    }
    D_800E8920[omCurrentObj->objId] = 0;
    func_801DB400_ovl16();
    func_801DC314_ovl16(0, 0, 0);
}

void func_801DFC4C_ovl16(s32 arg0) {
    s32 var_v0;

    D_800DEF90[omCurrentObj->objId] = func_800B7560;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAEF4;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800B33F4();
    D_800D7098.unk10 = 1;
    var_v0 = random_soft_s32_range(3);
    while (var_v0 == D_800D7098.unk1C) {
        var_v0 = random_soft_s32_range(3);
    }
    D_800D7098.unk1C = var_v0;
    D_800D7098.unk8 = var_v0;
    gEntityFuncListIDArray[omCurrentObj->objId] = D_801EF864_ovl16[D_800D7098.unk8];
}

void func_801DFD48_ovl16(void) {
    if ((gEntitiesNextPosYArray[omCurrentObj->objId] + D_800DFBD0[omCurrentObj->objId][5]->pos.v.y) > 245.0f) {
        D_800E9E20[omCurrentObj->objId] |= 1;
    } else {
        D_800DFBD0[omCurrentObj->objId][5]->pos.v.y =
            D_800EA6E0[omCurrentObj->objId] + D_800DFBD0[omCurrentObj->objId][5]->pos.v.y;
    }
}

void func_801DFDCC_ovl16(void) {
    if (D_800DFBD0[omCurrentObj->objId][5]->pos.v.y < 10.0f) {
        D_800E9E20[omCurrentObj->objId] &= ~1;
    } else {
        D_800DFBD0[omCurrentObj->objId][5]->pos.v.y += D_800EA6E0[omCurrentObj->objId];
    }
}

void func_801DFE44_ovl16(void) {
    if ((gEntitiesNextPosYArray[omCurrentObj->objId] + D_800DFBD0[omCurrentObj->objId][9]->pos.v.y) < 35.0f) {
        D_800E9E20[omCurrentObj->objId] |= 2;
    } else {
        D_800DFBD0[omCurrentObj->objId][9]->pos.v.y -= D_800EA6E0[omCurrentObj->objId];
    }
}

void func_801DFEC8_ovl16(void) {
    if (D_800DFBD0[omCurrentObj->objId][9]->pos.v.y > -10.0f) {
        D_800E9E20[omCurrentObj->objId] &= ~2;
    } else {
        D_800DFBD0[omCurrentObj->objId][9]->pos.v.y -= D_800EA6E0[omCurrentObj->objId];
    }
}

/* MATCH (299/299), verified 2026-08-23 -- the old factory-pool note here
   (2 diffs out of 299) is stale: whatever residue it described is already
   closed and the tail screens clean (no trailing nops past .size), so this
   stays a plain unguarded function. */
void func_801DFF40_ovl16(s32 arg0)
{
  void func_800AF27C(void);
  s32 i;
  s32 r;
  s32 t;
  D_800DDFD0[omCurrentObj->objId] = 3;
  r = random_soft_s32_range(6);
  for (i = 0; i < 3; i++)
  {
    D_800EA6E0[omCurrentObj->objId] = 0.0f;
    while (5.0f < ((gEntitiesNextPosXArray[omCurrentObj->objId] < D_801EF870_ovl16[D_801EF87C_ovl16[r][i]]) ? (-(gEntitiesNextPosXArray[omCurrentObj->objId] - D_801EF870_ovl16[D_801EF87C_ovl16[r][i]])) : (gEntitiesNextPosXArray[omCurrentObj->objId] - D_801EF870_ovl16[D_801EF87C_ovl16[r][i]])))
    {
      func_800A9EA4(0x10489);
 func_800A9EA4(0x10488); if (D_801EF870_ovl16[D_801EF87C_ovl16[r][i]] < gEntitiesNextPosXArray[omCurrentObj->objId]) { D_800E3050[omCurrentObj->objId] = -5.0f; } else { D_800E3050[omCurrentObj->objId] = 5.0f; } ohSleep(1);
    }

    D_800E3590[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
    D_800E3AD0[omCurrentObj->objId] = 65535.0f;
    func_800A8100(6, 2, 6, D_800DFBD0[omCurrentObj->objId][10]);
    ohSleep(0xD);
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800EA6E0[omCurrentObj->objId] = 10.0f;
    play_sound(0x1AB);
    func_800AA018(0x10479);
    func_800AA154(0x10478);
    func_800AA018(0x1047B);
    func_800AA018(0x1047A);
    while (D_800E9E20[omCurrentObj->objId] != 3)
    {
      ohSleep(1);
    }

    ohSleep(0x1E);
    play_sound(0x1AA);
    t = func_801ACC34_ovl7(0x30, 0);
    D_800E8E60[t] = 1;
    gEntitiesNextPosYArray[t] = gEntitiesNextPosYArray[omCurrentObj->objId] + D_800DFBD0[omCurrentObj->objId][5]->pos.v.y;
    t = func_801ACC34_ovl7(0x30, 2);
    D_800E8E60[t] = 1;
    gEntitiesNextPosYArray[t] = gEntitiesNextPosYArray[omCurrentObj->objId] + D_800DFBD0[omCurrentObj->objId][9]->pos.v.y;
    D_800EA6E0[omCurrentObj->objId] = -10.0f;
    while (D_800E9E20[omCurrentObj->objId] != 0)
    {
      ohSleep(1);
    }

    D_800EA6E0[omCurrentObj->objId] = 0.0f;
    func_800AF27C();
    func_800AA018(0x1047D);
    func_800AA154(0x1047C);
  }

  gEntityFuncListIDArray[omCurrentObj->objId] = 7;
}

void func_801E03EC_ovl16(s32 arg0) {
    extern s32 D_801D95C4;
    extern s32 D_801D9678;

    if (0.0f != D_800EA6E0[omCurrentObj->objId]) {
        if (0.0f < D_800EA6E0[omCurrentObj->objId]) {
            func_801DFD48_ovl16();
            func_801DFE44_ovl16();
        } else {
            func_801DFDCC_ovl16();
            func_801DFEC8_ovl16();
        }
    }
    D_800E8920[omCurrentObj->objId] = 0;
    func_801DB400_ovl16();
    if (D_801F0120_ovl16[0] <= 0) { D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9558; } else { D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9510; }
    if ((D_800D7098.unk18 != 0) || (D_801F0120_ovl16[0] <= 0)) {
        func_801DC314_ovl16(0, 0, 0);
    } else {
        func_801DB698_ovl16(0);
    }
    if ((10.0f < D_800DFBD0[omCurrentObj->objId][5]->pos.v.y) ||
        (D_800DFBD0[omCurrentObj->objId][9]->pos.v.y < -10.0f)) {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D95C4;
        func_801DC6E4_ovl16((s32) D_800DFBD0[omCurrentObj->objId][0],
                            (s32) D_800DFBD0[omCurrentObj->objId][0]);
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9678;
        func_801DC83C_ovl16((s32) D_800DFBD0[omCurrentObj->objId][5],
                            (s32) D_800DFBD0[omCurrentObj->objId][9]);
    }
}

void func_801E0628_ovl16(void) {
    if ((gEntitiesNextPosXArray[omCurrentObj->objId] + D_800DFBD0[omCurrentObj->objId][7]->pos.v.x) > 245.0f) {
        D_800E9E20[omCurrentObj->objId] |= 8;
    } else {
        D_800DFBD0[omCurrentObj->objId][7]->pos.v.x =
            D_800EA6E0[omCurrentObj->objId] + D_800DFBD0[omCurrentObj->objId][7]->pos.v.x;
    }
}

void func_801E06AC_ovl16(void) {
    if (D_800DFBD0[omCurrentObj->objId][7]->pos.v.x < 10.0f) {
        D_800E9E20[omCurrentObj->objId] &= ~8;
    } else {
        D_800DFBD0[omCurrentObj->objId][7]->pos.v.x += D_800EA6E0[omCurrentObj->objId];
    }
}

void func_801E0724_ovl16(void) {
    if ((gEntitiesNextPosXArray[omCurrentObj->objId] + D_800DFBD0[omCurrentObj->objId][3]->pos.v.x) < -245.0f) {
        D_800E9E20[omCurrentObj->objId] |= 4;
    } else {
        D_800DFBD0[omCurrentObj->objId][3]->pos.v.x -= D_800EA6E0[omCurrentObj->objId];
    }
}

void func_801E07A8_ovl16(void) {
    if (D_800DFBD0[omCurrentObj->objId][3]->pos.v.x > -10.0f) {
        D_800E9E20[omCurrentObj->objId] &= ~4;
    } else {
        D_800DFBD0[omCurrentObj->objId][3]->pos.v.x -= D_800EA6E0[omCurrentObj->objId];
    }
}

/* MATCH (298/298), verified 2026-08-23 -- the old factory-pool note here
   (2 diffs out of 298) is stale: whatever residue it described is already
   closed and the tail screens clean (no trailing nops past .size), so this
   stays a plain unguarded function. */
void func_801E0820_ovl16(s32 arg0)
{
  void func_800AF27C(void);
  s32 i;
  s32 r;
  s32 t;
  D_800DDFD0[omCurrentObj->objId] = 4;
  r = random_soft_s32_range(2);
  for (i = 0; i < 2; i++)
  {
    D_800EA6E0[omCurrentObj->objId] = 0.0f;
    while (5.0f < ((gEntitiesNextPosYArray[omCurrentObj->objId] < D_801EF8C4_ovl16[D_801EF8CC_ovl16[r][i]]) ? (-(gEntitiesNextPosYArray[omCurrentObj->objId] - D_801EF8C4_ovl16[D_801EF8CC_ovl16[r][i]])) : (gEntitiesNextPosYArray[omCurrentObj->objId] - D_801EF8C4_ovl16[D_801EF8CC_ovl16[r][i]])))
    {
 func_800A9EA4(0x10489); func_800A9EA4(0x10488); if (D_801EF8C4_ovl16[D_801EF8CC_ovl16[r][i]] < gEntitiesNextPosYArray[omCurrentObj->objId]) { D_800E3210[omCurrentObj->objId] = -5.0f; } else { D_800E3210[omCurrentObj->objId] = 5.0f; } ohSleep(1);
    }

    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    func_800A8100(6, 2, 6, D_800DFBD0[omCurrentObj->objId][10]);
    ohSleep(0xD);
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800EA6E0[omCurrentObj->objId] = 10.0f;
    play_sound(0x1AB);
    func_800AA018(0x10473);
    func_800AA154(0x10472);
    func_800AA018(0x10475);
    func_800AA018(0x10474);
    while (D_800E9E20[omCurrentObj->objId] != 0xC)
    {
      ohSleep(1);
    }

    ohSleep(0x1E);
    play_sound(0x1AA);
    t = func_801ACC34_ovl7(0x30, 1);
    D_800E8E60[t] = 1;
    gEntitiesNextPosXArray[t] = gEntitiesNextPosXArray[omCurrentObj->objId] + D_800DFBD0[omCurrentObj->objId][7]->pos.v.x;
    t = func_801ACC34_ovl7(0x30, 3);
    D_800E8E60[t] = 1;
    gEntitiesNextPosXArray[t] = gEntitiesNextPosXArray[omCurrentObj->objId] + D_800DFBD0[omCurrentObj->objId][3]->pos.v.x;
    D_800EA6E0[omCurrentObj->objId] = -10.0f;
    while (D_800E9E20[omCurrentObj->objId] != 0)
    {
      ohSleep(1);
    }

    D_800EA6E0[omCurrentObj->objId] = 0.0f;
    func_800AF27C();
    func_800AA018(0x10477);
    func_800AA154(0x10476);
  }

  gEntityFuncListIDArray[omCurrentObj->objId] = 7;
}

void func_801E0CC8_ovl16(s32 arg0) {
    extern s32 D_801D95C4;
    extern s32 D_801D969C;

    if (0.0f != D_800EA6E0[omCurrentObj->objId]) {
        if (0.0f < D_800EA6E0[omCurrentObj->objId]) {
            func_801E0628_ovl16();
            func_801E0724_ovl16();
        } else {
            func_801E06AC_ovl16();
            func_801E07A8_ovl16();
        }
    }
    D_800E8920[omCurrentObj->objId] = 0;
    func_801DB400_ovl16();
    if (D_801F0120_ovl16[0] <= 0) { D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9558; } else { D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9510; }
    if ((D_800D7098.unk18 != 0) || (D_801F0120_ovl16[0] <= 0)) {
        func_801DC314_ovl16(0, 0, 0);
    } else {
        func_801DB698_ovl16(0);
    }
    if ((10.0f < D_800DFBD0[omCurrentObj->objId][7]->pos.v.x) ||
        (D_800DFBD0[omCurrentObj->objId][3]->pos.v.x < -10.0f)) {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D95C4;
        func_801DC6E4_ovl16((s32) D_800DFBD0[omCurrentObj->objId][0],
                            (s32) D_800DFBD0[omCurrentObj->objId][0]);
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D969C;
        func_801DC83C_ovl16((s32) D_800DFBD0[omCurrentObj->objId][7],
                            (s32) D_800DFBD0[omCurrentObj->objId][3]);
    }
}

void func_801E0F04_ovl16(s32 arg0) {
    void func_800AF27C(void);
    s32 r;
    s32 t;

    D_800DDFD0[omCurrentObj->objId] = 5;
    r = random_soft_s32_range(0x23);
    while (r == D_800D7098.unk20) {
        r = random_soft_s32_range(0x23);
    }
    D_800D7098.unk20 = r;
    D_800EA6E0[omCurrentObj->objId] = 0.0f;
    func_800A9EA4(0x10489);
    func_800A9EA4(0x10488);
    D_800E3050[omCurrentObj->objId] =
        (D_801EF8DC_ovl16[r % 7] - gEntitiesNextPosXArray[omCurrentObj->objId]) / 30.0f;
    D_800E3210[omCurrentObj->objId] =
        (D_801EF8FC_ovl16[r / 7] - gEntitiesNextPosYArray[omCurrentObj->objId]) / 30.0f;
    ohSleep(0x1E);
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId] =
        D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId];
    func_800A8100(6, 2, 6, D_800DFBD0[omCurrentObj->objId][10]);
    ohSleep(0xD);
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800EA6E0[omCurrentObj->objId] = 10.0f;
    play_sound(0x1AB);
    func_800AA018(0x1047F);
    func_800AA154(0x1047E);
    func_800AA018(0x10481);
    func_800AA018(0x10480);
    while (D_800E9E20[omCurrentObj->objId] != 0xF) {
        ohSleep(1);
    }
    ohSleep(0x1E);
    play_sound(0x1AA);
    t = func_801ACC34_ovl7(0x30, 0);
    D_800E8E60[t] = 1;
    gEntitiesNextPosYArray[t] =
        gEntitiesNextPosYArray[omCurrentObj->objId] + D_800DFBD0[omCurrentObj->objId][5]->pos.v.y;
    t = func_801ACC34_ovl7(0x30, 1);
    D_800E8E60[t] = 1;
    gEntitiesNextPosXArray[t] =
        gEntitiesNextPosXArray[omCurrentObj->objId] + D_800DFBD0[omCurrentObj->objId][7]->pos.v.x;
    t = func_801ACC34_ovl7(0x30, 2);
    D_800E8E60[t] = 1;
    gEntitiesNextPosYArray[t] =
        gEntitiesNextPosYArray[omCurrentObj->objId] + D_800DFBD0[omCurrentObj->objId][9]->pos.v.y;
    t = func_801ACC34_ovl7(0x30, 3);
    D_800E8E60[t] = 1;
    gEntitiesNextPosXArray[t] =
        gEntitiesNextPosXArray[omCurrentObj->objId] + D_800DFBD0[omCurrentObj->objId][3]->pos.v.x;
    D_800EA6E0[omCurrentObj->objId] = -10.0f;
    while (D_800E9E20[omCurrentObj->objId] != 0) {
        ohSleep(1);
    }
    D_800EA6E0[omCurrentObj->objId] = 0.0f;
    func_800AF27C();
    func_800AA018(0x10483);
    func_800AA154(0x10482);
    gEntityFuncListIDArray[omCurrentObj->objId] = 7;
}

void func_801E141C_ovl16(s32 arg0) {
    extern s32 D_801D95C4;
    extern s32 D_801D9678;
    extern s32 D_801D969C;

    if (0.0f != D_800EA6E0[omCurrentObj->objId]) {
        if (0.0f < D_800EA6E0[omCurrentObj->objId]) {
            func_801DFD48_ovl16();
            func_801DFE44_ovl16();
            func_801E0628_ovl16();
            func_801E0724_ovl16();
        } else {
            func_801DFDCC_ovl16();
            func_801DFEC8_ovl16();
            func_801E06AC_ovl16();
            func_801E07A8_ovl16();
        }
    }
    D_800E8920[omCurrentObj->objId] = 0;
    func_801DB400_ovl16();
    if (D_801F0120_ovl16[0] <= 0) { D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9558; } else { D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9510; }
    if ((D_800D7098.unk18 != 0) || (D_801F0120_ovl16[0] <= 0)) {
        func_801DC314_ovl16(0, 0, 0);
    } else {
        func_801DB698_ovl16(0);
    }
    if ((10.0f < D_800DFBD0[omCurrentObj->objId][5]->pos.v.y) ||
        (10.0f < D_800DFBD0[omCurrentObj->objId][7]->pos.v.x) ||
        (D_800DFBD0[omCurrentObj->objId][9]->pos.v.y < -10.0f) ||
        (D_800DFBD0[omCurrentObj->objId][3]->pos.v.x < -10.0f)) {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D95C4;
        func_801DC6E4_ovl16((s32) D_800DFBD0[omCurrentObj->objId][0],
                            (s32) D_800DFBD0[omCurrentObj->objId][0]);
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9678;
        func_801DC83C_ovl16((s32) D_800DFBD0[omCurrentObj->objId][5],
                            (s32) D_800DFBD0[omCurrentObj->objId][9]);
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D969C;
        func_801DC83C_ovl16((s32) D_800DFBD0[omCurrentObj->objId][7],
                            (s32) D_800DFBD0[omCurrentObj->objId][3]);
    }
}

void func_801E16F8_ovl16(s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 6;
    func_800A9EA4(0x10489);
    func_800A9EA4(0x10488);
    D_800E3050[omCurrentObj->objId] = -gEntitiesNextPosXArray[omCurrentObj->objId] / 30.0f;
    D_800E3210[omCurrentObj->objId] = (160.0f - gEntitiesNextPosYArray[omCurrentObj->objId]) / 30.0f;
    ohSleep(0x1E);
    D_800D7098.unk10 = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0x21;
}

void func_801E17E0_ovl16(s32 arg0) {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801DB400_ovl16();
    if (D_801F0120_ovl16[0] <= 0) {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9558;
    } else {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9510;
    }
    if ((D_800D7098.unk18 != 0) || (D_801F0120_ovl16[0] <= 0)) {
        func_801DC314_ovl16(0, 0, 0);
    } else {
        func_801DB698_ovl16(0);
    }
}

#ifdef MIPS_TO_C
/* FACTORY: 201/216, register naming ($v0 vs $v1 on the held omCurrentObj) plus the
 * global-address FORM: the ROM materialises `&D_800E3750` with lui+addiu into a held
 * register and stores at 0(reg), where IDO folds the %lo into the store displacement.
 * Measured and rejected: hoisting the array base into a local `f32 *` -- IDO folds it
 * straight back, so the form is a register-allocation state, not a spelling. */
/* Phase-7 entry: halt all motion, then if a punch is in flight (heading
 * D_800EA6E0 nonzero) collect a bitmask of the four fist DObjs still extended
 * past +/-10 units, command the retract (heading = -10), wait for the mask to
 * be cleared by the per-limb watchers, and play the per-round (D_800D7098.unk8)
 * recover anims. */
void func_801E18BC_ovl16(s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 7;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3590[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = 0.0f;
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId];
    D_800E9E20[omCurrentObj->objId] = 0;
    if (D_800EA6E0[omCurrentObj->objId] != 0.0f) {
        if (D_800DFBD0[omCurrentObj->objId][5]->pos.v.y > 10.0f) {
            D_800E9E20[omCurrentObj->objId] |= 1;
        }
        if (D_800DFBD0[omCurrentObj->objId][7]->pos.v.x > 10.0f) {
            D_800E9E20[omCurrentObj->objId] |= 8;
        }
        if (D_800DFBD0[omCurrentObj->objId][9]->pos.v.y < -10.0f) {
            D_800E9E20[omCurrentObj->objId] |= 2;
        }
        if (D_800DFBD0[omCurrentObj->objId][3]->pos.v.x < -10.0f) {
            D_800E9E20[omCurrentObj->objId] |= 4;
        }
        D_800EA6E0[omCurrentObj->objId] = -10.0f;
        play_sound(0x1AA);
        while (D_800E9E20[omCurrentObj->objId] != 0) {
            ohSleep(1);
        }
        switch (D_800D7098.unk8) {
        case 0:
            func_800AA018(0x1047D);
            func_800AA154(0x1047C);
            break;
        case 1:
            func_800AA018(0x10477);
            func_800AA154(0x10476);
            break;
        case 2:
            func_800AA018(0x10483);
            func_800AA154(0x10482);
            break;
        }
        D_800EA6E0[omCurrentObj->objId] = 0.0f;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 7;
}
#elif defined(PORT)
/* Phase-7 entry: halt all motion, then if a punch is in flight (heading
 * D_800EA6E0 nonzero) collect a bitmask of the four fist DObjs still extended
 * past +/-10 units, command the retract (heading = -10), wait for the mask to
 * be cleared by the per-limb watchers, and play the per-round (D_800D7098.unk8)
 * recover anims. */
void func_801E18BC_ovl16(s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 7;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3590[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = 0.0f;
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId];
    D_800E9E20[omCurrentObj->objId] = 0;
    if (D_800EA6E0[omCurrentObj->objId] != 0.0f) {
        if (D_800DFBD0[omCurrentObj->objId][5]->pos.v.y > 10.0f) {
            D_800E9E20[omCurrentObj->objId] |= 1;
        }
        if (D_800DFBD0[omCurrentObj->objId][7]->pos.v.x > 10.0f) {
            D_800E9E20[omCurrentObj->objId] |= 8;
        }
        if (D_800DFBD0[omCurrentObj->objId][9]->pos.v.y < -10.0f) {
            D_800E9E20[omCurrentObj->objId] |= 2;
        }
        if (D_800DFBD0[omCurrentObj->objId][3]->pos.v.x < -10.0f) {
            D_800E9E20[omCurrentObj->objId] |= 4;
        }
        D_800EA6E0[omCurrentObj->objId] = -10.0f;
        play_sound(0x1AA);
        while (D_800E9E20[omCurrentObj->objId] != 0) {
            ohSleep(1);
        }
        switch (D_800D7098.unk8) {
        case 0:
            func_800AA018(0x1047D);
            func_800AA154(0x1047C);
            break;
        case 1:
            func_800AA018(0x10477);
            func_800AA154(0x10476);
            break;
        case 2:
            func_800AA018(0x10483);
            func_800AA154(0x10482);
            break;
        }
        D_800EA6E0[omCurrentObj->objId] = 0.0f;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 7;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E18BC_ovl16.s")
#endif

void func_801E1C1C_ovl16(s32 arg0) {
    extern s32 D_801D95C4;
    extern s32 D_801D9678;
    extern s32 D_801D969C;

    func_801DFDCC_ovl16();
    func_801DFEC8_ovl16();
    func_801E06AC_ovl16();
    func_801E07A8_ovl16();
    D_800E8920[omCurrentObj->objId] = 0;
    func_801DB400_ovl16();
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9558;
    func_801DC314_ovl16(0, 0, 0);
    if ((10.0f < D_800DFBD0[omCurrentObj->objId][5]->pos.v.y) ||
        (10.0f < D_800DFBD0[omCurrentObj->objId][7]->pos.v.x) ||
        (D_800DFBD0[omCurrentObj->objId][9]->pos.v.y < -10.0f) ||
        (D_800DFBD0[omCurrentObj->objId][3]->pos.v.x < -10.0f)) {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D95C4;
        func_801DC6E4_ovl16((s32) D_800DFBD0[omCurrentObj->objId][0],
                            (s32) D_800DFBD0[omCurrentObj->objId][0]);
        switch (D_800D7098.unk8) {
        case 0:
            D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9678;
            func_801DC83C_ovl16((s32) D_800DFBD0[omCurrentObj->objId][5],
                                (s32) D_800DFBD0[omCurrentObj->objId][9]);
            break;
        case 2:
            D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9678;
            func_801DC83C_ovl16((s32) D_800DFBD0[omCurrentObj->objId][5],
                                (s32) D_800DFBD0[omCurrentObj->objId][9]);
        case 1:
            D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D969C;
            func_801DC83C_ovl16((s32) D_800DFBD0[omCurrentObj->objId][7],
                                (s32) D_800DFBD0[omCurrentObj->objId][3]);
            break;
        }
    }
}

void func_801E1E84_ovl16(s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B7560;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAEF4;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800B33F4();
    D_800D7098.unk10 = 1;
    D_800D7098.unk8 = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = D_801EF914_ovl16[D_800D7098.unk8];
}

/* The 9999.0f/0.09f/0.2f comparisons below are byte-exact as written, but
 * this segment's rodata is an unmigrated asm blob: IDO emits a SECOND copy
 * of each literal into the TU's .rodata and the whole segment grows.
 * Referencing the data symbols instead changes codegen (IDO reloads a
 * global where it CSEs a literal), so the body has to stay parked here
 * until ovl16's rodata can be migrated to `.rodata, ovl16/ovl16`. */
s32 func_801E1F40_ovl16(void) {
    s32 i;
    s32 t = -1;

    for (i = 14; i != 0x3C; i++) {
        if ((D_800DD710[i] != t) && (D_800E7730[i] == 4) && (D_800E77A0[i] == 0x31)) {
            if ((D_800E7B20[i] > 0.0f) && (D_800E7B20[i] < 9999.0f) && (D_800E83E0[i] != 1) &&
                (omCurrentObj->objId == D_800E0D50[i])) {
                return 1;
            }
        }
    }
    return 0;
}

void func_801E20D8_ovl16(s32 arg0) {

    D_800DDFD0[omCurrentObj->objId] = 8;
    func_800AA018(0x104E0);
    if (func_801E1F40_ovl16() != 0) {
        play_sound(0x1B9);
    }
    D_800EA6E0[omCurrentObj->objId] = 1.0f;
    D_800EA8A0[omCurrentObj->objId] = 0.0375f;
    D_800E3210[omCurrentObj->objId] = -2.0f;
    D_800E3050[omCurrentObj->objId] = 4.0f;
    D_800E3590[omCurrentObj->objId] = -0.2f;
    ohSleep(0x23);
    D_800E3750[omCurrentObj->objId] = 0.4f;
    ohSleep(5);
    if (func_801E1F40_ovl16() != 0) {
        play_sound(0x1B9);
    }
    D_800EA6E0[omCurrentObj->objId] = 2.5f;
    D_800EA8A0[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = -4.0f;
    D_800E3590[omCurrentObj->objId] = 0.2f;
    ohSleep(5);
    D_800E3210[omCurrentObj->objId] = 2.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    ohSleep(0x23);
    if (func_801E1F40_ovl16() != 0) {
        play_sound(0x1B9);
    }
    D_800EA6E0[omCurrentObj->objId] = 2.5f;
    D_800EA8A0[omCurrentObj->objId] = -0.0375f;
    D_800E3050[omCurrentObj->objId] = 4.0f;
    D_800E3590[omCurrentObj->objId] = -0.2f;
    ohSleep(0x23);
    D_800E3750[omCurrentObj->objId] = -0.4f;
    ohSleep(5);
    if (func_801E1F40_ovl16() != 0) {
        play_sound(0x1B9);
    }
    D_800EA6E0[omCurrentObj->objId] = 1.0f;
    D_800EA8A0[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = -4.0f;
    D_800E3590[omCurrentObj->objId] = 0.2f;
    ohSleep(5);
    D_800E3210[omCurrentObj->objId] = -2.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    ohSleep(0x23);
    if (func_801E1F40_ovl16() != 0) {
        play_sound(0x1B9);
    }
    D_800EA6E0[omCurrentObj->objId] = 1.0f;
    D_800EA8A0[omCurrentObj->objId] = 0.0375f;
    D_800E3050[omCurrentObj->objId] = 4.0f;
    D_800E3590[omCurrentObj->objId] = -0.2f;
    ohSleep(0x23);
    D_800E3750[omCurrentObj->objId] = 0.4f;
    ohSleep(5);
    if (func_801E1F40_ovl16() != 0) {
        play_sound(0x1B9);
    }
    D_800EA6E0[omCurrentObj->objId] = 2.5f;
    D_800EA8A0[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = -4.0f;
    D_800E3590[omCurrentObj->objId] = 0.2f;
    ohSleep(5);
    D_800E3210[omCurrentObj->objId] = 2.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    ohSleep(0x23);
    if (func_801E1F40_ovl16() != 0) {
        play_sound(0x1B9);
    }
    D_800EA6E0[omCurrentObj->objId] = 2.5f;
    D_800EA8A0[omCurrentObj->objId] = -0.0375f;
    D_800E3050[omCurrentObj->objId] = 4.0f;
    D_800E3590[omCurrentObj->objId] = -0.2f;
    ohSleep(0x23);
    D_800E3750[omCurrentObj->objId] = -0.4f;
    ohSleep(5);
    if (func_801E1F40_ovl16() != 0) {
        play_sound(0x1B9);
    }
    D_800EA6E0[omCurrentObj->objId] = 1.0f;
    D_800EA8A0[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = -4.0f;
    D_800E3590[omCurrentObj->objId] = 0.2f;
    ohSleep(5);
    D_800E3210[omCurrentObj->objId] = -2.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    ohSleep(0x23);
    if (func_801E1F40_ovl16() != 0) {
        play_sound(0x1B9);
    }
    D_800EA6E0[omCurrentObj->objId] = 1.0f;
    D_800DFBD0[omCurrentObj->objId][4]->scale.v.x = (f32) D_800EA6E0[omCurrentObj->objId];
    D_800DFBD0[omCurrentObj->objId][4]->scale.v.z = (f32) D_800EA6E0[omCurrentObj->objId];
    func_800B33F4();
    gEntityFuncListIDArray[omCurrentObj->objId] = 0xB;
}

void func_801E2820_ovl16(s32 arg0) {
    func_801DF314_ovl16();
    D_800EA6E0[omCurrentObj->objId] += D_800EA8A0[omCurrentObj->objId];
    D_800DFBD0[omCurrentObj->objId][4]->scale.v.x = D_800EA6E0[omCurrentObj->objId];
    D_800DFBD0[omCurrentObj->objId][4]->scale.v.z = D_800EA6E0[omCurrentObj->objId];
    if (D_801F0120_ovl16[1] <= 0) {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D972C;
    } else {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D96E4;
    }
    if ((D_800D7098.unk18 != 0) || (D_801F0120_ovl16[1] <= 0)) {
        func_801DC314_ovl16(0, 0, 0);
    } else {
        func_801DB698_ovl16(0);
    }
}

void func_801E2960_ovl16(s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 9;
    D_800E3050[omCurrentObj->objId] = -gEntitiesNextPosXArray[omCurrentObj->objId] / 30.0f;
    D_800E3210[omCurrentObj->objId] = (160.0f - gEntitiesNextPosYArray[omCurrentObj->objId]) / 30.0f;
    ohSleep(0x1E);
    D_800D7098.unk10 = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0x21;
}

void func_801E2A28_ovl16(s32 arg0) {
    func_801DF314_ovl16();
    D_800E8920[omCurrentObj->objId] = 0;
    func_801DB400_ovl16();
    if (D_801F0120_ovl16[1] <= 0) {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D972C;
    } else {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D96E4;
    }
    if ((D_800D7098.unk18 != 0) || (D_801F0120_ovl16[1] <= 0)) {
        func_801DC314_ovl16(0, 0, 0);
    } else {
        func_801DB698_ovl16(0);
    }
}

void func_801E2B08_ovl16(s32 arg0) {
    f32 temp_f0;

    D_800DDFD0[omCurrentObj->objId] = 0xA;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    temp_f0 = D_800E3750[omCurrentObj->objId];
    D_800E3590[omCurrentObj->objId] = temp_f0;
    D_800E3210[omCurrentObj->objId] = temp_f0;
    D_800E3050[omCurrentObj->objId] = temp_f0;
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId];
    D_800EA8A0[omCurrentObj->objId] = (D_800EA6E0[omCurrentObj->objId] - 1.0f) / -10.0f;
    ohSleep(0xA);
    D_800DFBD0[omCurrentObj->objId][4]->scale.v.x = 1.0f;
    D_800DFBD0[omCurrentObj->objId][4]->scale.v.z = 1.0f;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0xB;
}

void func_801E2C8C_ovl16(s32 arg0) {
    func_801DF314_ovl16();
    D_800EA6E0[omCurrentObj->objId] += D_800EA8A0[omCurrentObj->objId];
    D_800DFBD0[omCurrentObj->objId][4]->scale.v.x = D_800EA6E0[omCurrentObj->objId];
    D_800DFBD0[omCurrentObj->objId][4]->scale.v.z = D_800EA6E0[omCurrentObj->objId];
    D_800E8920[omCurrentObj->objId] = 0;
    func_801DB400_ovl16();
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D972C;
    func_801DC314_ovl16(0, 0, 0);
}

void func_801E2D88_ovl16(s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B7560;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAEF4;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800B33F4();
    D_800D7098.unk10 = 1;
    D_800D7098.unk8 = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = D_801EF920_ovl16[D_800D7098.unk8];
}

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
void func_801E2E44_ovl16(s32 arg0) {
    s32 *temp_v0;
    s32 *temp_v0_3;
    s32 temp_v0_2;
    s32 temp_v1;
    s32 var_a0;
    u32 temp_a0;
    u32 temp_a0_2;
    u32 temp_a0_3;
    u32 temp_a0_4;

    D_800DDFD0[omCurrentObj->objId] = 0xB;
    D_800EA6E0[omCurrentObj->objId] = 0.0f;
    if (random_soft_s32_range(2) != 0) {
        D_800EA8A0[omCurrentObj->objId] = 0.20943952f;
    } else {
        D_800EA8A0[omCurrentObj->objId] = -0.20943952f;
    }
    D_800EAA60[omCurrentObj->objId] = 0.0f;
    D_800EAC20[omCurrentObj->objId] = 1.0f;
    D_800E9AA0[omCurrentObj->objId] = NULL;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E98E0[omCurrentObj->objId] = 0;
    temp_a0 = omCurrentObj->objId;
    D_800E9E20[temp_a0] = D_800E98E0[temp_a0];
    temp_a0_2 = omCurrentObj->objId;
    var_a0 = temp_a0_2 * 4;
    if (D_800E9E20[temp_a0_2] < 0x14A) {
        do {
            temp_v0 = D_800E98E0 + var_a0;
            *temp_v0 = (s32) (*temp_v0 + 2) % 30;
            temp_a0_4 = omCurrentObj->objId;
            temp_v1 = D_800E9E20[temp_a0_4];
            switch (temp_v1) {                      /* irregular */
            case 0x0:
            case 0x3C:
            case 0x78:
                func_8019E0A4_ovl7(5, 7);
                break;
            case 0x1E:
            case 0x5A:
            case 0x96:
                temp_v0_2 = func_801ACC34_ovl7(0x32, 0);
                if (temp_v0_2 != 0) {
                    D_800E8E60[temp_v0_2] = 1;
                    D_800E0D50[temp_v0_2] = (s32) omCurrentObj->objId;
                    D_800EA1A0[temp_v0_2] = (s32) D_800E9E20[omCurrentObj->objId] / 60;
                    play_sound(0x1B7);
                }
                break;
            case 0xF0:
                D_800EAC20[temp_a0_4] = -1.0f;
                break;
            }
            ohSleep(1U);
            temp_v0_3 = &D_800E9E20[omCurrentObj->objId];
            *temp_v0_3 += 1;
            temp_a0_3 = omCurrentObj->objId;
            var_a0 = temp_a0_3 * 4;
        } while (D_800E9E20[temp_a0_3] < 0x14A);
    }
    *(D_800E9AA0 + var_a0) = 0xA;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0xF;
}
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E2E44_ovl16.s")
#endif

void func_801E31A4_ovl16(s32 arg0) {
    func_801DF62C_ovl16();
    D_800E8920[omCurrentObj->objId] = 0;
    func_801DB400_ovl16();
    if (D_801F0120_ovl16[2] <= 0) {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9798;
    } else {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9774;
    }
    if ((D_800D7098.unk18 != 0) || (D_801F0120_ovl16[2] <= 0)) {
        func_801DC314_ovl16(0, 0, 0);
    } else {
        func_801DB698_ovl16(0);
    }
}

void func_801E3284_ovl16(s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0xC;
    D_800D7098.unk10 = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0x21;
}

void func_801E32CC_ovl16(s32 arg0) {
    func_801DF62C_ovl16();
    D_800E8920[omCurrentObj->objId] = 0;
    func_801DB400_ovl16();
    if (D_801F0120_ovl16[2] <= 0) {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9798;
    } else {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9774;
    }
    if ((D_800D7098.unk18 != 0) || (D_801F0120_ovl16[2] <= 0)) {
        func_801DC314_ovl16(0, 0, 0);
    } else {
        func_801DB698_ovl16(0);
    }
}

void func_801E33AC_ovl16(s32 arg0) {
    f32 temp_f0;

    D_800DDFD0[omCurrentObj->objId] = 0xD;
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 0xA;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    temp_f0 = D_800E3750[omCurrentObj->objId];
    D_800E3590[omCurrentObj->objId] = temp_f0;
    D_800E3210[omCurrentObj->objId] = temp_f0;
    D_800E3050[omCurrentObj->objId] = temp_f0;
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId];
    gEntityFuncListIDArray[omCurrentObj->objId] = 0xF;
}

void func_801E34A0_ovl16(s32 arg0) {
    func_801DF62C_ovl16();
    D_800E8920[omCurrentObj->objId] = 0;
    func_801DB400_ovl16();
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9798;
    func_801DC314_ovl16(0, 0, 0);
}

void func_801E3518_ovl16(s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B7560;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAEF4;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800B33F4();
    D_800D7098.unk10 = 1;
    D_800D7098.unk8 = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = D_801EF92C_ovl16[D_800D7098.unk8];
}

/* NOT YET DRAFTED FOR N64: the PORT arm below is host-only (it goes through the
 * PC_OVL16_SLOT_SHIM macro and the pc slot table), so it cannot be reused as the
 * N64 draft the way the other arms in this file were. Needs a from-asm draft. */
#ifdef MIPS_TO_C
/* FACTORY: 452/455 and 79 instructions SHORT -- was previously NOT DRAFTED because its host arm
 * went through the PC_OVL16_SLOT_SHIM macro; this is now a real N64 draft with no
 * reference to it. The shim exists only because the host DObj puts pos.v.y at a
 * different byte offset: on N64 a D_801F0200_ovl16 cell holds the RAW DObj pointer
 * and the Ovl16AnimCmd view's unk20 IS pos.v.y (byte 0x20), so the shim collapses to
 * a plain cast, and the rest height is read back through the cell (as the ROM does at
 * `lw $a1,0($s6)` / `lwc1 $f4,0x20($a1)`) rather than through the slots[] array.
 * Close the COUNT before touching registers: 79 missing words is far more than the
 * repeated-load CSE seen elsewhere in this file, so the host arm is still
 * factoring out or omitting a block the ROM emits inline. */
/* Phase-0xE opener of the pillar attack: advance the arena pattern state
 * (D_800D7098.unk24), spawn the eight per-limb watcher entities, snapshot each
 * limb DObj and its rest height, derive per-limb travel distance/step from the
 * limb transform vs. the watcher position, then run the 16-step extend/retract
 * choreography from the D_801EF98C/D_801EF9A0 schedules.
 * N64 spelling note: D_801F0200_ovl16 cells hold the RAW DObj pointer and the
 * Ovl16AnimCmd view's unk20 is exactly the N64 DObj's pos.v.y (byte 0x20), so the
 * host build's PC_OVL16_SLOT_SHIM pointer fixup collapses to a plain cast here,
 * and the rest height is read back through the cell the way the ROM does. */
void func_801E35D4_ovl16(s32 arg0) {
    void utilGetTransformSRT(Vector *, struct DObj *);
    struct DObj *slots[8];
    Vector srt;
    u8 *limb;
    s32 pat;
    s32 i;
    s32 k;
    s32 n;
    s32 t;
    f32 dx;
    f32 dy;
    f32 dist;
    f32 step;

    D_800DDFD0[omCurrentObj->objId] = 0xE;
    switch (D_800D7098.unk24) {
    case 0:
        D_800D7098.unk24 = (random_soft_s32_range(2) != 0) ? 2 : 1;
        break;
    case 1:
        D_800D7098.unk24 = 2;
        break;
    case 2:
        D_800D7098.unk24 = (random_soft_s32_range(2) != 0) ? 0 : 3;
        break;
    case 3:
        D_800D7098.unk24 = 0;
        break;
    }
    pat = ((u8 *) &D_801EF938_ovl16)[D_800D7098.unk24];
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] = pat;
    limb = (u8 *) &D_801EF97C_ovl16 + pat * 8;
    for (i = 0; i < 8; i++) {
        t = func_8019E0A4_ovl7(5, 6);
        if (t != -1) {
            D_800E0D50[t] = omCurrentObj->objId;
            D_800E98E0[t] = limb[i];
            D_800E9FE0[t].as_u32 = 0;
            (&D_801F0160_ovl16)[i] = t;
        }
        D_801F01B0_ovl16[i] = -9999.0f;
        slots[i] = D_800DFBD0[omCurrentObj->objId][D_801EF93C_ovl16[limb[i]]];
        D_801F0200_ovl16[i] = (struct Ovl16AnimCmd *) slots[i];
    }
    func_800AA154(0x104F2);
    func_800AA018(0x104F4);
    for (i = 0; i < 8; i++) {
        D_801F01B0_ovl16[i] = D_801F0200_ovl16[i]->unk20;
        utilGetTransformSRT(&srt, slots[i]);
        t = (&D_801F0160_ovl16)[i];
        dx = gEntitiesNextPosXArray[t];
        if (dx < 0.0f) {
            dx = -dx;
        }
        dx -= (srt.x < 0.0f) ? -srt.x : srt.x;
        if (dx < 0.0f) {
            dx = -dx;
        }
        dy = gEntitiesNextPosYArray[t];
        if (dy < 0.0f) {
            dy = -dy;
        }
        dy -= (srt.y < 0.0f) ? -srt.y : srt.y;
        if (dy < 0.0f) {
            dy = -dy;
        }
        dist = sqrtf((dx * dx) + (dy * dy)) * 1.25f;
        ((f32 *) &D_801F0188_ovl16)[i] = dist;
        step = dist * 0.125f;
        if (step < 0.0f) {
            step = -step;
        }
        D_801F01D8_ovl16[i] = step;
    }
    D_800E9C60[omCurrentObj->objId] = 0;
    for (k = 0; k < 16; k++) {
        s32 out = ((u8 *) &D_801EF98C_ovl16)[k];
        s32 in = ((u8 *) &D_801EF9A0_ovl16)[k];

        if (out < 8) {
            play_sound(0x1AF);
        }
        if (in < 8) {
            play_sound(0x1AD);
        }
        if ((out >= 8) && (in >= 8)) {
            break;
        }
        if (in < 8) {
            D_800E9FE0[(&D_801F0160_ovl16)[in]].as_u32 = 2;
        }
        ohSleep(1);
        for (n = 0; (f32) n < 8.0f; n++) {
            if (out < 8) {
                slots[out]->pos.v.y -= D_801F01D8_ovl16[out];
            }
            if (in < 8) {
                slots[in]->pos.v.y += D_801F01D8_ovl16[in];
            }
            ohSleep(1);
        }
        if (out < 8) {
            D_800E9FE0[(&D_801F0160_ovl16)[out]].as_u32 = 1;
            slots[out]->pos.v.y = (1.25f * D_801F01B0_ovl16[out]) - ((f32 *) &D_801F0188_ovl16)[out];
        }
        if (in < 8) {
            slots[in]->pos.v.y = D_801F01B0_ovl16[in];
        }
        ohSleep(0xA);
    }
    func_800AA154(0x104EE);
    func_800AA154(0x104FA);
    ohSleep(0x1E);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0x13;
}
#elif defined(PORT)
/* PORT: D_801F0200_ovl16 cells hold, on N64, raw DObj addresses that shared
 * code (func_801E4148 above) later pokes through `struct Ovl16AnimCmd::unk20`
 * -- which on the N64 DObj is pos.v.y (byte 0x20). The host DObj has pos.v.y
 * at a different byte offset, so store a SHIMMED pointer such that the
 * Ovl16AnimCmd view's unk20 lands exactly on the host DObj's pos.v.y. Only
 * ->unk20 is ever applied to these cells outside this function. */
#define PC_OVL16_SLOT_SHIM(d) \
    ((struct Ovl16AnimCmd *) ((u8 *) &(d)->pos.v.y - __builtin_offsetof(struct Ovl16AnimCmd, unk20)))

/* Phase-0xE opener of the pillar attack: advance the arena pattern state
 * (D_800D7098.unk24), spawn the eight per-limb watcher entities, snapshot each
 * limb DObj and its rest height, derive per-limb travel distance/step from the
 * limb's transform vs. the watcher position, then run the 16-step extend /
 * retract choreography from the D_801EF98C/D_801EF9A0 schedules. */
void func_801E35D4_ovl16(s32 arg0) {
    void utilGetTransformSRT(Vector *, struct DObj *);
    struct DObj *slots[8];
    Vector srt;
    u8 *limb;
    s32 pat;
    s32 i;
    s32 k;
    s32 n;
    s32 t;
    f32 dx;
    f32 dy;
    f32 dist;
    f32 step;

    D_800DDFD0[omCurrentObj->objId] = 0xE;
    switch (D_800D7098.unk24) {
    case 0:
        D_800D7098.unk24 = (random_soft_s32_range(2) != 0) ? 2 : 1;
        break;
    case 1:
        D_800D7098.unk24 = 2;
        break;
    case 2:
        D_800D7098.unk24 = (random_soft_s32_range(2) != 0) ? 0 : 3;
        break;
    case 3:
        D_800D7098.unk24 = 0;
        break;
    }
    pat = ((u8 *) &D_801EF938_ovl16)[D_800D7098.unk24];
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] = pat;
    limb = (u8 *) &D_801EF97C_ovl16 + pat * 8;
    for (i = 0; i < 8; i++) {
        t = func_8019E0A4_ovl7(5, 6);
        if (t != -1) {
            D_800E0D50[t] = omCurrentObj->objId;
            D_800E98E0[t] = limb[i];
            D_800E9FE0[t].as_u32 = 0;
            (&D_801F0160_ovl16)[i] = t;
        }
        D_801F01B0_ovl16[i] = -9999.0f;
        slots[i] = D_800DFBD0[omCurrentObj->objId][D_801EF93C_ovl16[limb[i]]];
        D_801F0200_ovl16[i] = PC_OVL16_SLOT_SHIM(slots[i]);
    }
    func_800AA154(0x104F2);
    func_800AA018(0x104F4);
    for (i = 0; i < 8; i++) {
        D_801F01B0_ovl16[i] = slots[i]->pos.v.y;
        utilGetTransformSRT(&srt, slots[i]);
        t = (&D_801F0160_ovl16)[i];
        dx = gEntitiesNextPosXArray[t];
        if (dx < 0.0f) {
            dx = -dx;
        }
        dx -= (srt.x < 0.0f) ? -srt.x : srt.x;
        if (dx < 0.0f) {
            dx = -dx;
        }
        dy = gEntitiesNextPosYArray[t];
        if (dy < 0.0f) {
            dy = -dy;
        }
        dy -= (srt.y < 0.0f) ? -srt.y : srt.y;
        if (dy < 0.0f) {
            dy = -dy;
        }
        dist = sqrtf((dx * dx) + (dy * dy)) * 1.25f;
        ((f32 *) &D_801F0188_ovl16)[i] = dist;
        step = dist * 0.125f;
        if (step < 0.0f) {
            step = -step;
        }
        D_801F01D8_ovl16[i] = step;
    }
    D_800E9C60[omCurrentObj->objId] = 0;
    for (k = 0; k < 16; k++) {
        s32 out = ((u8 *) &D_801EF98C_ovl16)[k];
        s32 in = ((u8 *) &D_801EF9A0_ovl16)[k];

        if (out < 8) {
            play_sound(0x1AF);
        }
        if (in < 8) {
            play_sound(0x1AD);
        }
        if ((out >= 8) && (in >= 8)) {
            break;
        }
        if (in < 8) {
            D_800E9FE0[(&D_801F0160_ovl16)[in]].as_u32 = 2;
        }
        ohSleep(1);
        for (n = 0; (f32) n < 8.0f; n++) {
            if (out < 8) {
                slots[out]->pos.v.y -= D_801F01D8_ovl16[out];
            }
            if (in < 8) {
                slots[in]->pos.v.y += D_801F01D8_ovl16[in];
            }
            ohSleep(1);
        }
        if (out < 8) {
            D_800E9FE0[(&D_801F0160_ovl16)[out]].as_u32 = 1;
            slots[out]->pos.v.y = (1.25f * D_801F01B0_ovl16[out]) - ((f32 *) &D_801F0188_ovl16)[out];
        }
        if (in < 8) {
            slots[in]->pos.v.y = D_801F01B0_ovl16[in];
        }
        ohSleep(0xA);
    }
    func_800AA154(0x104EE);
    func_800AA154(0x104FA);
    ohSleep(0x1E);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0x13;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E35D4_ovl16.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 211/214 with the instruction COUNT EXACT -- pure register permutation,
 * the cleanest seed in this file and the one to hand the permuter first. Note for
 * whoever edits it: the PORT arm routes the limb stretch through the host helper
 * pc_ovl16_anim_stretch; on N64 that call is plain func_801DC990_ovl16(a, b), which
 * is what this draft uses. Same substitution applies to func_801E4350. */
/* Pillar-attack idle tick (phase 0xE): for each of the eight limbs of the
 * active pattern, squash the limb toward its rest height (scale the limb and
 * its counterpart from how far it is stretched, feeding the stretch through
 * the anim system) or, when it is back within range, pin it there and reset
 * the scales; then do the usual bounds/anim upkeep for the body. */
void func_801E3CF0_ovl16(s32 arg0) {
    extern s32 D_801D98B8;
    struct DObj *a;
    struct DObj *b;
    u8 *limb;
    s32 i;
    f32 lim;
    f32 ext;
    f32 grow;
    f32 shrink;
    f32 sc;

    limb = (u8 *) &D_801EF97C_ovl16 + ((s32 *) D_800E9AA0)[omCurrentObj->objId] * 8;
    for (i = 0; i < 8; i++) {
        a = D_800DFBD0[omCurrentObj->objId][D_801EF93C_ovl16[limb[i]]];
        b = D_800DFBD0[omCurrentObj->objId][(&D_801EF95C_ovl16)[limb[i]]];
        lim = D_801F01B0_ovl16[i];
        if (lim != -9999.0f) {
            if (lim < 0.0f) {
                lim = -lim;
            }
            ext = a->pos.v.y;
            if (ext < 0.0f) {
                ext = -ext;
            }
            ext *= 0.8f;
            if (ext > 260.0f) {
                ext = 260.0f;
            } else if (ext <= lim) {
                ext = lim;
            }
            if (lim < ext) {
                sc = ext / 260.0f;
                grow = sc * 0.6f;
                shrink = sc * 0.8f;
                if (grow > 0.6f) {
                    grow = 0.6f;
                }
                if (grow < 0.0f) {
                    grow = 0.0f;
                }
                if (shrink > 0.8f) {
                    shrink = 0.8f;
                }
                if (shrink < 0.0f) {
                    shrink = 0.0f;
                }
                a->scale.v.z = 1.0f - shrink;
                a->scale.v.x = 1.0f - shrink;
                b->scale.v.x = 1.0f + grow;
                b->scale.v.z = 1.0f + grow;
                D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D98B8;
                func_801DC990_ovl16(a, b);
            } else {
                a->pos.v.y = -lim;
                b->scale.v.x = 1.0f;
                b->scale.v.z = 1.0f;
                a->scale.v.x = 1.0f;
                a->scale.v.z = 1.0f;
            }
        } else {
            b->scale.v.z = 1.0f;
            b->scale.v.x = 1.0f;
            a->scale.v.x = 1.0f;
            a->scale.v.z = 1.0f;
        }
    }
    D_800E8920[omCurrentObj->objId] = 0;
    func_801DB400_ovl16();
    if (D_801F0120_ovl16[3] <= 0) {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9828;
    } else {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9804;
    }
    if ((D_800D7098.unk18 != 0) || (D_801F0120_ovl16[3] <= 0)) {
        func_801DC314_ovl16(0, 0, 0);
    } else {
        func_801DB698_ovl16(0);
    }
}
#elif defined(PORT)
/* Host re-expression of func_801DC990_ovl16, whose NON_MATCHING draft above
 * reads the N64 byte offsets straight off the raw DObj arguments: unk20 is the
 * N64 DObj's pos.v.y and unk40 its scale.v.x, so use the real field names on
 * the host.  Both live callers (func_801E3CF0/func_801E4350 below) route
 * through this instead. */
static void pc_ovl16_anim_stretch(struct DObj *arg0, struct DObj *arg1) {
    struct Ovl16AnimInfo info;
    struct Ovl16AnimObj *ao;
    struct EnemyRecord *ent;

    ent = D_800E1B50[omCurrentObj->objId];
    func_80111550(omCurrentObj->objId);
    ao = func_80111C88(ent->unk8C, omCurrentObj->objId);
    if (ao != NULL) {
        if ((arg0 != NULL) && (arg1 != NULL)) {
            ao->unk24->unk8 = (s32) arg0;
            ao->unk24->unk30 = (s32) arg0;
            ao->unk24->unk1C = -arg0->pos.v.y;
            ao->unk24->unk44 = -arg0->pos.v.y;
            ao->unk24->unk18 = ao->unk24->unk24 * arg1->scale.v.x;
            ao->unk24->unk40 = ao->unk24->unk4C * -arg1->scale.v.x;
        }
        func_80111ECC(ao);
    }
    func_80110B00(&info);
    func_80110150(&info);
}

/* Pillar-attack idle tick (phase 0xE): for each of the eight limbs of the
 * active pattern, squash the limb toward its rest height (scale the limb and
 * its counterpart from how far it is stretched, feeding the stretch through
 * the anim system) or, when it is back within range, pin it there and reset
 * the scales; then do the usual bounds/anim upkeep for the body. */
void func_801E3CF0_ovl16(s32 arg0) {
    extern s32 D_801D98B8;
    struct DObj *a;
    struct DObj *b;
    u8 *limb;
    s32 i;
    f32 lim;
    f32 ext;
    f32 grow;
    f32 shrink;
    f32 sc;

    limb = (u8 *) &D_801EF97C_ovl16 + ((s32 *) D_800E9AA0)[omCurrentObj->objId] * 8;
    for (i = 0; i < 8; i++) {
        a = D_800DFBD0[omCurrentObj->objId][D_801EF93C_ovl16[limb[i]]];
        b = D_800DFBD0[omCurrentObj->objId][(&D_801EF95C_ovl16)[limb[i]]];
        lim = D_801F01B0_ovl16[i];
        if (lim != -9999.0f) {
            if (lim < 0.0f) {
                lim = -lim;
            }
            ext = a->pos.v.y;
            if (ext < 0.0f) {
                ext = -ext;
            }
            ext *= 0.8f;
            if (ext > 260.0f) {
                ext = 260.0f;
            } else if (ext <= lim) {
                ext = lim;
            }
            if (lim < ext) {
                sc = ext / 260.0f;
                grow = sc * 0.6f;
                shrink = sc * 0.8f;
                if (grow > 0.6f) {
                    grow = 0.6f;
                }
                if (grow < 0.0f) {
                    grow = 0.0f;
                }
                if (shrink > 0.8f) {
                    shrink = 0.8f;
                }
                if (shrink < 0.0f) {
                    shrink = 0.0f;
                }
                a->scale.v.z = 1.0f - shrink;
                a->scale.v.x = 1.0f - shrink;
                b->scale.v.x = 1.0f + grow;
                b->scale.v.z = 1.0f + grow;
                D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D98B8;
                pc_ovl16_anim_stretch(a, b);
            } else {
                a->pos.v.y = -lim;
                b->scale.v.x = 1.0f;
                b->scale.v.z = 1.0f;
                a->scale.v.x = 1.0f;
                a->scale.v.z = 1.0f;
            }
        } else {
            b->scale.v.z = 1.0f;
            b->scale.v.x = 1.0f;
            a->scale.v.x = 1.0f;
            a->scale.v.z = 1.0f;
        }
    }
    D_800E8920[omCurrentObj->objId] = 0;
    func_801DB400_ovl16();
    if (D_801F0120_ovl16[3] <= 0) {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9828;
    } else {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9804;
    }
    if ((D_800D7098.unk18 != 0) || (D_801F0120_ovl16[3] <= 0)) {
        func_801DC314_ovl16(0, 0, 0);
    } else {
        func_801DB698_ovl16(0);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E3CF0_ovl16.s")
#endif

void func_801E4024_ovl16(s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0xF;
    D_800D7098.unk10 = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0x21;
}

void func_801E406C_ovl16(s32 arg0) {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801DB400_ovl16();
    if (D_801F0120_ovl16[3] <= 0) {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9828;
    } else {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9804;
    }
    if ((D_800D7098.unk18 != 0) || (D_801F0120_ovl16[3] <= 0)) {
        func_801DC314_ovl16(0, 0, 0);
    } else {
        func_801DB698_ovl16(0);
    }
}

void func_801E4148_ovl16(s32 arg0) {
    s32 i;
    s32 j;

    D_800DDFD0[omCurrentObj->objId] = 0x10;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId] =
        D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId];
    D_800EA360[omCurrentObj->objId] = 0;
    for (i = 0; i < 8.0f; i++) {
        for (j = 0; j < 8; j++) {
            if (D_801F01B0_ovl16[j] != -9999.0f) {
                D_801F0200_ovl16[j]->unk20 += D_801F01D8_ovl16[j];
                if (D_801F01B0_ovl16[j] <= D_801F0200_ovl16[j]->unk20) {
                    D_801F0200_ovl16[j]->unk20 = D_801F01B0_ovl16[j];
                }
            }
        }
        ohSleep(1);
    }
    func_800AA154(0x104EE);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0x13;
}

#ifdef MIPS_TO_C
/* FACTORY: 173/210, only 6 instructions short -- the smallest count gap of the
 * shortfall group, so the cheapest place to identify the repeated load IDO is
 * merging (see func_801E538C's note). Sibling of func_801E3CF0; the host helper
 * pc_ovl16_anim_stretch is func_801DC990_ovl16(a, b) on N64. */
/* Pillar-attack settle tick (after func_801E4148 released the limbs): same
 * squash-back loop as func_801E3CF0, plus a one-shot creak SFX gated on
 * D_800EA360, ending in the plain phase anim instead of the choice pair. */
void func_801E4350_ovl16(s32 arg0) {
    extern s32 D_801D98B8;
    struct DObj *a;
    struct DObj *b;
    u8 *limb;
    s32 i;
    f32 lim;
    f32 ext;
    f32 grow;
    f32 shrink;
    f32 sc;

    limb = (u8 *) &D_801EF97C_ovl16 + ((s32 *) D_800E9AA0)[omCurrentObj->objId] * 8;
    for (i = 0; i < 8; i++) {
        a = D_800DFBD0[omCurrentObj->objId][D_801EF93C_ovl16[limb[i]]];
        b = D_800DFBD0[omCurrentObj->objId][(&D_801EF95C_ovl16)[limb[i]]];
        lim = D_801F01B0_ovl16[i];
        if (lim != -9999.0f) {
            if (lim < 0.0f) {
                lim = -lim;
            }
            ext = a->pos.v.y;
            if (ext < 0.0f) {
                ext = -ext;
            }
            ext *= 0.8f;
            if (ext > 260.0f) {
                ext = 260.0f;
            } else if (ext <= lim) {
                ext = lim;
            }
            if (lim < ext) {
                if (D_800EA360[omCurrentObj->objId] == 0) {
                    play_sound(0x1AD);
                    D_800EA360[omCurrentObj->objId] = 1;
                }
                sc = ext / 260.0f;
                grow = sc * 0.6f;
                shrink = sc * 0.8f;
                if (grow > 0.6f) {
                    grow = 0.6f;
                }
                if (grow < 0.0f) {
                    grow = 0.0f;
                }
                if (shrink > 0.8f) {
                    shrink = 0.8f;
                }
                if (shrink < 0.0f) {
                    shrink = 0.0f;
                }
                a->scale.v.z = 1.0f - shrink;
                a->scale.v.x = 1.0f - shrink;
                b->scale.v.x = 1.0f + grow;
                b->scale.v.z = 1.0f + grow;
                D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D98B8;
                func_801DC990_ovl16(a, b);
            } else {
                a->pos.v.y = -lim;
                b->scale.v.x = 1.0f;
                b->scale.v.z = 1.0f;
                a->scale.v.x = 1.0f;
                a->scale.v.z = 1.0f;
            }
        } else {
            b->scale.v.z = 1.0f;
            b->scale.v.x = 1.0f;
            a->scale.v.x = 1.0f;
            a->scale.v.z = 1.0f;
        }
    }
    D_800E8920[omCurrentObj->objId] = 0;
    func_801DB400_ovl16();
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9828;
    func_801DC314_ovl16(0, 0, 0);
}
#elif defined(PORT)
/* Pillar-attack settle tick (after func_801E4148 released the limbs): same
 * squash-back loop as func_801E3CF0, plus a one-shot creak SFX gated on
 * D_800EA360, ending in the plain phase anim instead of the choice pair. */
void func_801E4350_ovl16(s32 arg0) {
    extern s32 D_801D98B8;
    struct DObj *a;
    struct DObj *b;
    u8 *limb;
    s32 i;
    f32 lim;
    f32 ext;
    f32 grow;
    f32 shrink;
    f32 sc;

    limb = (u8 *) &D_801EF97C_ovl16 + ((s32 *) D_800E9AA0)[omCurrentObj->objId] * 8;
    for (i = 0; i < 8; i++) {
        a = D_800DFBD0[omCurrentObj->objId][D_801EF93C_ovl16[limb[i]]];
        b = D_800DFBD0[omCurrentObj->objId][(&D_801EF95C_ovl16)[limb[i]]];
        lim = D_801F01B0_ovl16[i];
        if (lim != -9999.0f) {
            if (lim < 0.0f) {
                lim = -lim;
            }
            ext = a->pos.v.y;
            if (ext < 0.0f) {
                ext = -ext;
            }
            ext *= 0.8f;
            if (ext > 260.0f) {
                ext = 260.0f;
            } else if (ext <= lim) {
                ext = lim;
            }
            if (lim < ext) {
                if (D_800EA360[omCurrentObj->objId] == 0) {
                    play_sound(0x1AD);
                    D_800EA360[omCurrentObj->objId] = 1;
                }
                sc = ext / 260.0f;
                grow = sc * 0.6f;
                shrink = sc * 0.8f;
                if (grow > 0.6f) {
                    grow = 0.6f;
                }
                if (grow < 0.0f) {
                    grow = 0.0f;
                }
                if (shrink > 0.8f) {
                    shrink = 0.8f;
                }
                if (shrink < 0.0f) {
                    shrink = 0.0f;
                }
                a->scale.v.z = 1.0f - shrink;
                a->scale.v.x = 1.0f - shrink;
                b->scale.v.x = 1.0f + grow;
                b->scale.v.z = 1.0f + grow;
                D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D98B8;
                pc_ovl16_anim_stretch(a, b);
            } else {
                a->pos.v.y = -lim;
                b->scale.v.x = 1.0f;
                b->scale.v.z = 1.0f;
                a->scale.v.x = 1.0f;
                a->scale.v.z = 1.0f;
            }
        } else {
            b->scale.v.z = 1.0f;
            b->scale.v.x = 1.0f;
            a->scale.v.x = 1.0f;
            a->scale.v.z = 1.0f;
        }
    }
    D_800E8920[omCurrentObj->objId] = 0;
    func_801DB400_ovl16();
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9828;
    func_801DC314_ovl16(0, 0, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E4350_ovl16.s")
#endif

void func_801E4698_ovl16(s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B7560;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAEF4;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800B33F4();
    D_800D7098.unk10 = 1;
    D_800D7098.unk8 = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = D_801EF9B4_ovl16[D_800D7098.unk8];
}

#ifdef MIPS_TO_C
/* FACTORY: 707/782, and 23 instructions SHORT. Same bloc-wide pattern as
 * func_801E538C/func_801E5AE4/func_801E62C0: the draft is structurally faithful and
 * well named, but IDO CSEs entity-array loads that the ROM re-reads, so the body
 * comes out short and every later word is displaced. Close the COUNT first (find the
 * loads the ROM repeats and force them), then the remainder is register naming. */
/* Phase-0x11 ram attack: rock in place for 60 frames drifting away from the
 * player, spawn the four 0x34 debris entities, drop to y=35, then perform
 * three horizontal dashes (out to +/-200, across to the other side, and back
 * to center), steering via the D_801EF9C0/9C8/9D0 speed/decel/landing tables
 * keyed by the D_800EA1A0 direction flag. */
void func_801E4754_ovl16(s32 arg0) {
    void func_800AF27C(void);
    s32 func_800FB914(s32);
    s32 i;
    s32 t;
    f32 v;
    f32 next;

    D_800DDFD0[omCurrentObj->objId] = 0x11;
    D_800EA6E0[omCurrentObj->objId] = 0.0f;
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 1;
    D_800E9FE0[omCurrentObj->objId].as_u32 = 0;
    D_800E3AD0[omCurrentObj->objId] = 4.0f;
    for (i = 0; i < 0x3C; i++) {
        if (gEntitiesNextPosXArray[0] < gEntitiesNextPosXArray[omCurrentObj->objId]) {
            D_800E3590[omCurrentObj->objId] = -0.5f;
        } else {
            D_800E3590[omCurrentObj->objId] = 0.5f;
        }
        ohSleep(1);
    }
    D_800E3590[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
    play_sound(0x1B3);
    func_800AA018(0x104C4);
    for (i = 0; i < 4; i++) {
        t = func_801ACC34_ovl7(0x34, 0);
        if (t != 0) {
            D_800E8E60[t] = 1;
            D_800E98E0[t] = i;
        }
    }
    func_800AF27C();
    D_800D7098.unk10 += 1;
    ohSleep(0x10);
    for (i = 0; i < 0x1E; i++) {
        if (gEntitiesNextPosXArray[0] < gEntitiesNextPosXArray[omCurrentObj->objId]) {
            D_800E3590[omCurrentObj->objId] = -0.5f;
        } else {
            D_800E3590[omCurrentObj->objId] = 0.5f;
        }
        ohSleep(1);
    }
    D_800E3590[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
    D_800E3AD0[omCurrentObj->objId] = 65535.0f;
    func_800AA154(0x104C2);
    D_800D7098.unk10 += 1;
    ohSleep(1);
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.65f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    while (gEntitiesNextPosYArray[omCurrentObj->objId] > 35.0f) {
        ohSleep(1);
    }
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3050[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId];
    gEntitiesNextPosYArray[omCurrentObj->objId] = 35.0f;
    D_800EA6E0[omCurrentObj->objId] = 0.0f;
    func_800FB914(2);
    func_800AA018(0x104C6);
    ohSleep(0x1E);
    D_800E9FE0[omCurrentObj->objId].as_u32 = 1;
    /* dash 1: away from center out to +/-200 */
    play_sound(0x1B4);
    if (gEntitiesNextPosXArray[omCurrentObj->objId] < 0.0f) {
        D_800EA1A0[omCurrentObj->objId] = 0;
    } else {
        D_800EA1A0[omCurrentObj->objId] = 1;
    }
    D_800E3050[omCurrentObj->objId] = ((f32 *) D_801EF9C0_ovl16)[D_800EA1A0[omCurrentObj->objId]];
    v = gEntitiesNextPosXArray[omCurrentObj->objId];
    if (v < 0.0f) {
        v = -v;
    }
    D_800EA8A0[omCurrentObj->objId] = (v + 200.0f) / 12.0f;
    D_800EA8A0[omCurrentObj->objId] *= 2.0f;
    if (D_800EA8A0[omCurrentObj->objId] == 0.0f) {
        D_800EA8A0[omCurrentObj->objId] = 0.00001f;
    }
    D_800E3590[omCurrentObj->objId] =
        ((f32 *) D_801EF9C8_ovl16)[D_800EA1A0[omCurrentObj->objId]] / D_800EA8A0[omCurrentObj->objId];
    D_800E3050[omCurrentObj->objId] -= D_800E3590[omCurrentObj->objId];
    ohSleep(1);
    for (i = 1; i < (s32) D_800EA8A0[omCurrentObj->objId]; i++) {
        v = gEntitiesNextPosXArray[omCurrentObj->objId];
        if (v < 0.0f) {
            v = -v;
        }
        if (v >= 200.0f) {
            break;
        }
        ohSleep(1);
    }
    gEntitiesNextPosXArray[omCurrentObj->objId] = ((f32 *) D_801EF9D0_ovl16)[D_800EA1A0[omCurrentObj->objId]];
    D_800E3590[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
    D_800E3AD0[omCurrentObj->objId] = 65535.0f;
    /* dash 2: full crossing to the opposite wall */
    play_sound(0x1B4);
    if (D_800EA1A0[omCurrentObj->objId] != 0) {
        D_800EA1A0[omCurrentObj->objId] = 0;
    } else {
        D_800EA1A0[omCurrentObj->objId] = 1;
    }
    D_800E3050[omCurrentObj->objId] = ((f32 *) D_801EF9C0_ovl16)[D_800EA1A0[omCurrentObj->objId]];
    D_800EA8A0[omCurrentObj->objId] = 33.333332f;
    D_800EA8A0[omCurrentObj->objId] *= 2.0f;
    if (D_800EA8A0[omCurrentObj->objId] == 0.0f) {
        D_800EA8A0[omCurrentObj->objId] = 0.00001f;
    }
    D_800E3590[omCurrentObj->objId] =
        ((f32 *) D_801EF9C8_ovl16)[D_800EA1A0[omCurrentObj->objId]] / D_800EA8A0[omCurrentObj->objId];
    D_800E3050[omCurrentObj->objId] -= D_800E3590[omCurrentObj->objId];
    ohSleep(1);
    for (i = 1; i < (s32) D_800EA8A0[omCurrentObj->objId]; i++) {
        v = gEntitiesNextPosXArray[omCurrentObj->objId];
        if (v < 0.0f) {
            v = -v;
        }
        if (v >= 200.0f) {
            break;
        }
        ohSleep(1);
    }
    gEntitiesNextPosXArray[omCurrentObj->objId] = ((f32 *) D_801EF9D0_ovl16)[D_800EA1A0[omCurrentObj->objId]];
    D_800E3590[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
    D_800E3AD0[omCurrentObj->objId] = 65535.0f;
    /* dash 3: decelerate back to center */
    play_sound(0x1B4);
    if (D_800EA1A0[omCurrentObj->objId] != 0) {
        D_800EA1A0[omCurrentObj->objId] = 0;
    } else {
        D_800EA1A0[omCurrentObj->objId] = 1;
    }
    D_800E3050[omCurrentObj->objId] = ((f32 *) D_801EF9C0_ovl16)[D_800EA1A0[omCurrentObj->objId]];
    v = gEntitiesNextPosXArray[omCurrentObj->objId];
    if (v < 0.0f) {
        v = -v;
    }
    D_800EA8A0[omCurrentObj->objId] = v / 12.0f;
    D_800EA8A0[omCurrentObj->objId] *= 2.0f;
    if (D_800EA8A0[omCurrentObj->objId] == 0.0f) {
        D_800EA8A0[omCurrentObj->objId] = 0.00001f;
    }
    D_800E3590[omCurrentObj->objId] =
        ((f32 *) D_801EF9C8_ovl16)[D_800EA1A0[omCurrentObj->objId]] / D_800EA8A0[omCurrentObj->objId];
    D_800E3050[omCurrentObj->objId] -= D_800E3590[omCurrentObj->objId];
    ohSleep(1);
    for (i = 1; i < (s32) D_800EA8A0[omCurrentObj->objId]; i++) {
        next = gEntitiesNextPosXArray[omCurrentObj->objId] + D_800E3050[omCurrentObj->objId] +
               D_800E3590[omCurrentObj->objId];
        if (next < 0.0f) {
            next = -next;
        }
        v = gEntitiesNextPosXArray[omCurrentObj->objId];
        if (v < 0.0f) {
            v = -v;
        }
        if (v < next) {
            break;
        }
        ohSleep(1);
    }
    gEntitiesNextPosXArray[omCurrentObj->objId] = 0.0f;
    D_800E3590[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
    D_800E3AD0[omCurrentObj->objId] = 65535.0f;
    D_800EA6E0[omCurrentObj->objId] = 0.0f;
    D_800E9FE0[omCurrentObj->objId].as_u32 = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0x17;
}
#elif defined(PORT)
/* Phase-0x11 ram attack: rock in place for 60 frames drifting away from the
 * player, spawn the four 0x34 debris entities, drop to y=35, then perform
 * three horizontal dashes (out to +/-200, across to the other side, and back
 * to center), steering via the D_801EF9C0/9C8/9D0 speed/decel/landing tables
 * keyed by the D_800EA1A0 direction flag. */
void func_801E4754_ovl16(s32 arg0) {
    void func_800AF27C(void);
    s32 func_800FB914(s32);
    s32 i;
    s32 t;
    f32 v;
    f32 next;

    D_800DDFD0[omCurrentObj->objId] = 0x11;
    D_800EA6E0[omCurrentObj->objId] = 0.0f;
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 1;
    D_800E9FE0[omCurrentObj->objId].as_u32 = 0;
    D_800E3AD0[omCurrentObj->objId] = 4.0f;
    for (i = 0; i < 0x3C; i++) {
        if (gEntitiesNextPosXArray[0] < gEntitiesNextPosXArray[omCurrentObj->objId]) {
            D_800E3590[omCurrentObj->objId] = -0.5f;
        } else {
            D_800E3590[omCurrentObj->objId] = 0.5f;
        }
        ohSleep(1);
    }
    D_800E3590[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
    play_sound(0x1B3);
    func_800AA018(0x104C4);
    for (i = 0; i < 4; i++) {
        t = func_801ACC34_ovl7(0x34, 0);
        if (t != 0) {
            D_800E8E60[t] = 1;
            D_800E98E0[t] = i;
        }
    }
    func_800AF27C();
    D_800D7098.unk10 += 1;
    ohSleep(0x10);
    for (i = 0; i < 0x1E; i++) {
        if (gEntitiesNextPosXArray[0] < gEntitiesNextPosXArray[omCurrentObj->objId]) {
            D_800E3590[omCurrentObj->objId] = -0.5f;
        } else {
            D_800E3590[omCurrentObj->objId] = 0.5f;
        }
        ohSleep(1);
    }
    D_800E3590[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
    D_800E3AD0[omCurrentObj->objId] = 65535.0f;
    func_800AA154(0x104C2);
    D_800D7098.unk10 += 1;
    ohSleep(1);
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.65f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    while (gEntitiesNextPosYArray[omCurrentObj->objId] > 35.0f) {
        ohSleep(1);
    }
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3050[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId];
    gEntitiesNextPosYArray[omCurrentObj->objId] = 35.0f;
    D_800EA6E0[omCurrentObj->objId] = 0.0f;
    func_800FB914(2);
    func_800AA018(0x104C6);
    ohSleep(0x1E);
    D_800E9FE0[omCurrentObj->objId].as_u32 = 1;
    /* dash 1: away from center out to +/-200 */
    play_sound(0x1B4);
    if (gEntitiesNextPosXArray[omCurrentObj->objId] < 0.0f) {
        D_800EA1A0[omCurrentObj->objId] = 0;
    } else {
        D_800EA1A0[omCurrentObj->objId] = 1;
    }
    D_800E3050[omCurrentObj->objId] = ((f32 *) D_801EF9C0_ovl16)[D_800EA1A0[omCurrentObj->objId]];
    v = gEntitiesNextPosXArray[omCurrentObj->objId];
    if (v < 0.0f) {
        v = -v;
    }
    D_800EA8A0[omCurrentObj->objId] = (v + 200.0f) / 12.0f;
    D_800EA8A0[omCurrentObj->objId] *= 2.0f;
    if (D_800EA8A0[omCurrentObj->objId] == 0.0f) {
        D_800EA8A0[omCurrentObj->objId] = 0.00001f;
    }
    D_800E3590[omCurrentObj->objId] =
        ((f32 *) D_801EF9C8_ovl16)[D_800EA1A0[omCurrentObj->objId]] / D_800EA8A0[omCurrentObj->objId];
    D_800E3050[omCurrentObj->objId] -= D_800E3590[omCurrentObj->objId];
    ohSleep(1);
    for (i = 1; i < (s32) D_800EA8A0[omCurrentObj->objId]; i++) {
        v = gEntitiesNextPosXArray[omCurrentObj->objId];
        if (v < 0.0f) {
            v = -v;
        }
        if (v >= 200.0f) {
            break;
        }
        ohSleep(1);
    }
    gEntitiesNextPosXArray[omCurrentObj->objId] = ((f32 *) D_801EF9D0_ovl16)[D_800EA1A0[omCurrentObj->objId]];
    D_800E3590[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
    D_800E3AD0[omCurrentObj->objId] = 65535.0f;
    /* dash 2: full crossing to the opposite wall */
    play_sound(0x1B4);
    if (D_800EA1A0[omCurrentObj->objId] != 0) {
        D_800EA1A0[omCurrentObj->objId] = 0;
    } else {
        D_800EA1A0[omCurrentObj->objId] = 1;
    }
    D_800E3050[omCurrentObj->objId] = ((f32 *) D_801EF9C0_ovl16)[D_800EA1A0[omCurrentObj->objId]];
    D_800EA8A0[omCurrentObj->objId] = 33.333332f;
    D_800EA8A0[omCurrentObj->objId] *= 2.0f;
    if (D_800EA8A0[omCurrentObj->objId] == 0.0f) {
        D_800EA8A0[omCurrentObj->objId] = 0.00001f;
    }
    D_800E3590[omCurrentObj->objId] =
        ((f32 *) D_801EF9C8_ovl16)[D_800EA1A0[omCurrentObj->objId]] / D_800EA8A0[omCurrentObj->objId];
    D_800E3050[omCurrentObj->objId] -= D_800E3590[omCurrentObj->objId];
    ohSleep(1);
    for (i = 1; i < (s32) D_800EA8A0[omCurrentObj->objId]; i++) {
        v = gEntitiesNextPosXArray[omCurrentObj->objId];
        if (v < 0.0f) {
            v = -v;
        }
        if (v >= 200.0f) {
            break;
        }
        ohSleep(1);
    }
    gEntitiesNextPosXArray[omCurrentObj->objId] = ((f32 *) D_801EF9D0_ovl16)[D_800EA1A0[omCurrentObj->objId]];
    D_800E3590[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
    D_800E3AD0[omCurrentObj->objId] = 65535.0f;
    /* dash 3: decelerate back to center */
    play_sound(0x1B4);
    if (D_800EA1A0[omCurrentObj->objId] != 0) {
        D_800EA1A0[omCurrentObj->objId] = 0;
    } else {
        D_800EA1A0[omCurrentObj->objId] = 1;
    }
    D_800E3050[omCurrentObj->objId] = ((f32 *) D_801EF9C0_ovl16)[D_800EA1A0[omCurrentObj->objId]];
    v = gEntitiesNextPosXArray[omCurrentObj->objId];
    if (v < 0.0f) {
        v = -v;
    }
    D_800EA8A0[omCurrentObj->objId] = v / 12.0f;
    D_800EA8A0[omCurrentObj->objId] *= 2.0f;
    if (D_800EA8A0[omCurrentObj->objId] == 0.0f) {
        D_800EA8A0[omCurrentObj->objId] = 0.00001f;
    }
    D_800E3590[omCurrentObj->objId] =
        ((f32 *) D_801EF9C8_ovl16)[D_800EA1A0[omCurrentObj->objId]] / D_800EA8A0[omCurrentObj->objId];
    D_800E3050[omCurrentObj->objId] -= D_800E3590[omCurrentObj->objId];
    ohSleep(1);
    for (i = 1; i < (s32) D_800EA8A0[omCurrentObj->objId]; i++) {
        next = gEntitiesNextPosXArray[omCurrentObj->objId] + D_800E3050[omCurrentObj->objId] +
               D_800E3590[omCurrentObj->objId];
        if (next < 0.0f) {
            next = -next;
        }
        v = gEntitiesNextPosXArray[omCurrentObj->objId];
        if (v < 0.0f) {
            v = -v;
        }
        if (v < next) {
            break;
        }
        ohSleep(1);
    }
    gEntitiesNextPosXArray[omCurrentObj->objId] = 0.0f;
    D_800E3590[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
    D_800E3AD0[omCurrentObj->objId] = 65535.0f;
    D_800EA6E0[omCurrentObj->objId] = 0.0f;
    D_800E9FE0[omCurrentObj->objId].as_u32 = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0x17;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E4754_ovl16.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 225/233, and 12 instructions SHORT -- this one has a real structural
 * lead, not just register noise. The ROM evaluates D_801F0120_ovl16[4] TWICE: once
 * at listing index 200 (`lw $t8, 0x10($v0)` / `bgtz`) to pick the unk8C anim list,
 * and again at index 222 (`bgtz $t5`) for the dispatch test, with no call in
 * between. IDO CSEs the two into one load here, which is exactly the missing 12
 * words; LEVERS 10's read-inline does not help because both uses ARE already
 * written inline. Whoever picks this up next: find the spelling that forces the
 * second load (that is the whole gap), then the rest is register naming.
 * Also solved and kept: the else-arm store must be the DOUBLE literal `0.0`, not
 * `0.0f` -- that stops IDO sharing the store's zero with the `!= 0.0f` compare and
 * reproduces the ROM's `beql` + duplicated `mtc1 $zero, $f14` (230 -> 225, LEVERS 7).
 * Measured and rejected: caching omCurrentObj in a local (grows the frame past the
 * ROM's 0x18, which has NO stack locals at all), and reversing the float compare. */
/* Phase-0x12 ram-attack drive tick: lean the body ([1].angle.z) with the
 * horizontal speed while charging (D_800E9FE0 set), clamp x to the +/-200
 * lane, and while ramming (D_800E9E20) clamp the leading edge instead of the
 * shared bounds helper; then the usual phase-4 anim/step dispatch. */
void func_801E538C_ovl16(s32 arg0) {
    struct DObj *d;

    if ((D_800E9FE0[omCurrentObj->objId].as_u32 != 0) && (D_800E3050[omCurrentObj->objId] != 0.0f)) {
        D_800EA6E0[omCurrentObj->objId] = -0.028571427f;
    } else {
        D_800EA6E0[omCurrentObj->objId] = 0.0;
    }
    d = D_800DFBD0[omCurrentObj->objId][1];
    d->angle.v.z += D_800E3050[omCurrentObj->objId] * D_800EA6E0[omCurrentObj->objId];
    while (d->angle.v.z > 6.2831855f) {
        d->angle.v.z -= 6.2831855f;
    }
    while (d->angle.v.z < -6.2831855f) {
        d->angle.v.z += 6.2831855f;
    }
    if (gEntitiesNextPosXArray[omCurrentObj->objId] < -200.0f) {
        gEntitiesNextPosXArray[omCurrentObj->objId] = -200.0f;
    }
    if (gEntitiesNextPosXArray[omCurrentObj->objId] > 200.0f) {
        gEntitiesNextPosXArray[omCurrentObj->objId] = 200.0f;
    }
    D_800E8920[omCurrentObj->objId] = 0;
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        if (D_800E3050[omCurrentObj->objId] < 0.0f) {
            if (gEntitiesNextPosXArray[omCurrentObj->objId] < -200.0f) {
                gEntitiesNextPosXArray[omCurrentObj->objId] = -200.0f;
            }
        } else if (gEntitiesNextPosXArray[omCurrentObj->objId] > 200.0f) {
            gEntitiesNextPosXArray[omCurrentObj->objId] = 200.0f;
        }
        if (D_800E3210[omCurrentObj->objId] < 0.0f) {
            if (gEntitiesNextPosYArray[omCurrentObj->objId] < 20.0f) {
                gEntitiesNextPosYArray[omCurrentObj->objId] = 20.0f;
            }
        } else if (gEntitiesNextPosYArray[omCurrentObj->objId] > 260.0f) {
            gEntitiesNextPosYArray[omCurrentObj->objId] = 260.0f;
        }
    } else {
        func_801DB400_ovl16();
    }
    if (D_801F0120_ovl16[4] <= 0) {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9948;
    } else {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9900;
    }
    if ((D_800D7098.unk18 != 0) || (D_801F0120_ovl16[4] <= 0)) {
        func_801DC314_ovl16(0, 0, 0);
    } else {
        func_801DB698_ovl16(0);
    }
}
#elif defined(PORT)
/* Phase-0x12 ram-attack drive tick: lean the body ([1].angle.z) with the
 * horizontal speed while charging (D_800E9FE0 set), clamp x to the +/-200
 * lane, and while ramming (D_800E9E20) clamp the leading edge instead of the
 * shared bounds helper; then the usual phase-4 anim/step dispatch. */
void func_801E538C_ovl16(s32 arg0) {
    struct DObj *d;

    if ((D_800E9FE0[omCurrentObj->objId].as_u32 != 0) && (D_800E3050[omCurrentObj->objId] != 0.0f)) {
        D_800EA6E0[omCurrentObj->objId] = -0.028571427f;
    } else {
        D_800EA6E0[omCurrentObj->objId] = 0.0f;
    }
    d = D_800DFBD0[omCurrentObj->objId][1];
    d->angle.v.z += D_800E3050[omCurrentObj->objId] * D_800EA6E0[omCurrentObj->objId];
    while (d->angle.v.z > 6.2831855f) {
        d->angle.v.z -= 6.2831855f;
    }
    while (d->angle.v.z < -6.2831855f) {
        d->angle.v.z += 6.2831855f;
    }
    if (gEntitiesNextPosXArray[omCurrentObj->objId] < -200.0f) {
        gEntitiesNextPosXArray[omCurrentObj->objId] = -200.0f;
    }
    if (gEntitiesNextPosXArray[omCurrentObj->objId] > 200.0f) {
        gEntitiesNextPosXArray[omCurrentObj->objId] = 200.0f;
    }
    D_800E8920[omCurrentObj->objId] = 0;
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        if (D_800E3050[omCurrentObj->objId] < 0.0f) {
            if (gEntitiesNextPosXArray[omCurrentObj->objId] < -200.0f) {
                gEntitiesNextPosXArray[omCurrentObj->objId] = -200.0f;
            }
        } else if (gEntitiesNextPosXArray[omCurrentObj->objId] > 200.0f) {
            gEntitiesNextPosXArray[omCurrentObj->objId] = 200.0f;
        }
        if (D_800E3210[omCurrentObj->objId] < 0.0f) {
            if (gEntitiesNextPosYArray[omCurrentObj->objId] < 20.0f) {
                gEntitiesNextPosYArray[omCurrentObj->objId] = 20.0f;
            }
        } else if (gEntitiesNextPosYArray[omCurrentObj->objId] > 260.0f) {
            gEntitiesNextPosYArray[omCurrentObj->objId] = 260.0f;
        }
    } else {
        func_801DB400_ovl16();
    }
    if (D_801F0120_ovl16[4] <= 0) {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9948;
    } else {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9900;
    }
    if ((D_800D7098.unk18 != 0) || (D_801F0120_ovl16[4] <= 0)) {
        func_801DC314_ovl16(0, 0, 0);
    } else {
        func_801DB698_ovl16(0);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E538C_ovl16.s")
#endif

void func_801E5734_ovl16(s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0x12;
    D_800E3050[omCurrentObj->objId] = -gEntitiesNextPosXArray[omCurrentObj->objId] / 30.0f;
    D_800E3210[omCurrentObj->objId] = (160.0f - gEntitiesNextPosYArray[omCurrentObj->objId]) / 30.0f;
    ohSleep(0x1E);
    D_800D7098.unk10 = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0x21;
}

void func_801E57FC_ovl16(s32 arg0) {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801DB400_ovl16();
    if (D_801F0120_ovl16[4] <= 0) {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9948;
    } else {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9900;
    }
    if ((D_800D7098.unk18 != 0) || (D_801F0120_ovl16[4] <= 0)) {
        func_801DC314_ovl16(0, 0, 0);
    } else {
        func_801DB698_ovl16(0);
    }
}

void func_801E58D8_ovl16(s32 arg0) {
    f32 temp_f0;

    D_800DDFD0[omCurrentObj->objId] = 0x13;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    temp_f0 = D_800E3750[omCurrentObj->objId];
    D_800E3590[omCurrentObj->objId] = temp_f0;
    D_800E3210[omCurrentObj->objId] = temp_f0;
    D_800E3050[omCurrentObj->objId] = temp_f0;
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId];
    gEntityFuncListIDArray[omCurrentObj->objId] = 0x17;
}

void func_801E59B4_ovl16(s32 arg0) {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801DB400_ovl16();
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9948;
    func_801DC314_ovl16(0, 0, 0);
}

void func_801E5A28_ovl16(s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B7560;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAEF4;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800B33F4();
    D_800D7098.unk10 = 1;
    D_800D7098.unk8 = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = D_801EF9D8_ovl16[D_800D7098.unk8];
}

#ifdef MIPS_TO_C
/* FACTORY: 452/503, and 58 instructions SHORT -- the largest shortfall in this file,
 * so the best specimen for diagnosing the bloc-wide CSE gap described on
 * func_801E538C. Structure and naming are good; the missing words are repeated
 * entity-array reads that IDO merges and the ROM does not. */
/* Phase-0x14 orbit attack script: 14 sequential steps.  Spin-up/spin-down
 * ramps (steps 0/13) halve the angular speed and squash the orbit radii from
 * |sin| of the heading; steps 2/4/6/8 re-roll the x-radius from the
 * D_801EF9E4 table (4/8 also reset the heading to pi); step 10 rounds the
 * radius; step 11 launches the 0x1C helper and swings the pendulum
 * (D_800EAA60 = 9999.9 marker); step 12 restores speed. */
void func_801E5AE4_ovl16(s32 arg0) {
    s32 state;
    s32 i;
    s32 t;
    f32 v;

    D_800DDFD0[omCurrentObj->objId] = 0x14;
    func_800AA018(0x104D2);
    func_800AA018(0x104D6);
    D_800E9720[omCurrentObj->objId] = 0;
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 0;
    D_800EA6E0[omCurrentObj->objId] = 3.1415927f;
    if (random_soft_s32_range(2) != 0) {
        D_800EA8A0[omCurrentObj->objId] = 0.06544985f;
    } else {
        D_800EA8A0[omCurrentObj->objId] = -0.06544985f;
    }
    D_800EAFA0[omCurrentObj->objId] = 160.0f;
    D_800EB160[omCurrentObj->objId] = 0.0f;
    for (state = 0; state != 14; state++) {
        switch (state) {
        case 0:
            func_800A9EA4(0x104D2);
            v = (D_800EA8A0[omCurrentObj->objId] > 0.0f) ? 0.06544985f : -0.06544985f;
            D_800EA8A0[omCurrentObj->objId] = v * 0.5f;
            D_800EAA60[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId] * -2.0f;
            for (i = 0; i != 0x30; i++) {
                v = sinf(D_800EA6E0[omCurrentObj->objId]);
                if (v < 0.0f) {
                    v = -v;
                }
                D_800EAC20[omCurrentObj->objId] = v;
                v = sinf(D_800EA6E0[omCurrentObj->objId]);
                if (v < 0.0f) {
                    v = -v;
                }
                D_800EADE0[omCurrentObj->objId] = v;
                ohSleep(1);
            }
            if (D_800EA8A0[omCurrentObj->objId] > 0.0f) {
                D_800EA8A0[omCurrentObj->objId] = 0.06544985f;
            } else {
                D_800EA8A0[omCurrentObj->objId] = -0.06544985f;
            }
            D_800EAA60[omCurrentObj->objId] = 0.0f;
            D_800EAC20[omCurrentObj->objId] = 1.0f;
            D_800EADE0[omCurrentObj->objId] = 0.5f;
            break;
        case 13:
            func_800A9EA4(0x104D2);
            if (D_800EA8A0[omCurrentObj->objId] > 0.0f) {
                D_800EA8A0[omCurrentObj->objId] = 0.06544985f;
            } else {
                D_800EA8A0[omCurrentObj->objId] = -0.06544985f;
            }
            D_800EAA60[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId] * -2.0f;
            for (i = 0; i != 0x18; i++) {
                v = sinf(D_800EA6E0[omCurrentObj->objId]);
                if (v < 0.0f) {
                    v = -v;
                }
                D_800EAC20[omCurrentObj->objId] = v;
                v = sinf(D_800EA6E0[omCurrentObj->objId]);
                if (v < 0.0f) {
                    v = -v;
                }
                D_800EADE0[omCurrentObj->objId] = v;
                ohSleep(1);
            }
            D_800EA6E0[omCurrentObj->objId] = 3.1415927f;
            break;
        case 4:
        case 8:
            D_800EA6E0[omCurrentObj->objId] = 3.1415927f;
            /* fallthrough */
        case 2:
        case 6:
            do {
                v = ((f32 *) D_801EF9E4_ovl16)[random_soft_s32_range(5)];
            } while (D_800EAC20[omCurrentObj->objId] == v);
            D_800EAC20[omCurrentObj->objId] = v;
            /* fallthrough */
        case 1:
        case 3:
        case 5:
        case 7:
        case 9:
            ohSleep(0x18);
            break;
        case 10:
            D_800EAC20[omCurrentObj->objId] = 1.0f;
            ohSleep(0x18);
            break;
        case 11:
            t = func_8019E0A4_ovl7(5, 4);
            if (t != -1) {
                if (D_800EA8A0[omCurrentObj->objId] > 0.0f) {
                    D_800E98E0[t] = 0;
                } else {
                    D_800E98E0[t] = 1;
                }
            }
            func_800A9EA4(0x104D3);
            D_800EADE0[omCurrentObj->objId] = 1.0f;
            D_800EAA60[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId] * -2.0f;
            ohSleep(0xC);
            D_800EAA60[omCurrentObj->objId] = 9999.9f;
            v = (D_800EA8A0[omCurrentObj->objId] > 0.0f) ? 0.06544985f : -0.06544985f;
            D_800EA8A0[omCurrentObj->objId] = v * 0.5f;
            ohSleep(0x18);
            break;
        case 12:
            ohSleep(0x18);
            if (D_800EA8A0[omCurrentObj->objId] > 0.0f) {
                D_800EA8A0[omCurrentObj->objId] = 0.06544985f;
            } else {
                D_800EA8A0[omCurrentObj->objId] = -0.06544985f;
            }
            D_800EAA60[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId] * -2.0f;
            ohSleep(0xC);
            break;
        }
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 0x1B;
}
#elif defined(PORT)
/* Phase-0x14 orbit attack script: 14 sequential steps.  Spin-up/spin-down
 * ramps (steps 0/13) halve the angular speed and squash the orbit radii from
 * |sin| of the heading; steps 2/4/6/8 re-roll the x-radius from the
 * D_801EF9E4 table (4/8 also reset the heading to pi); step 10 rounds the
 * radius; step 11 launches the 0x1C helper and swings the pendulum
 * (D_800EAA60 = 9999.9 marker); step 12 restores speed. */
void func_801E5AE4_ovl16(s32 arg0) {
    s32 state;
    s32 i;
    s32 t;
    f32 v;

    D_800DDFD0[omCurrentObj->objId] = 0x14;
    func_800AA018(0x104D2);
    func_800AA018(0x104D6);
    D_800E9720[omCurrentObj->objId] = 0;
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 0;
    D_800EA6E0[omCurrentObj->objId] = 3.1415927f;
    if (random_soft_s32_range(2) != 0) {
        D_800EA8A0[omCurrentObj->objId] = 0.06544985f;
    } else {
        D_800EA8A0[omCurrentObj->objId] = -0.06544985f;
    }
    D_800EAFA0[omCurrentObj->objId] = 160.0f;
    D_800EB160[omCurrentObj->objId] = 0.0f;
    for (state = 0; state != 14; state++) {
        switch (state) {
        case 0:
            func_800A9EA4(0x104D2);
            v = (D_800EA8A0[omCurrentObj->objId] > 0.0f) ? 0.06544985f : -0.06544985f;
            D_800EA8A0[omCurrentObj->objId] = v * 0.5f;
            D_800EAA60[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId] * -2.0f;
            for (i = 0; i != 0x30; i++) {
                v = sinf(D_800EA6E0[omCurrentObj->objId]);
                if (v < 0.0f) {
                    v = -v;
                }
                D_800EAC20[omCurrentObj->objId] = v;
                v = sinf(D_800EA6E0[omCurrentObj->objId]);
                if (v < 0.0f) {
                    v = -v;
                }
                D_800EADE0[omCurrentObj->objId] = v;
                ohSleep(1);
            }
            if (D_800EA8A0[omCurrentObj->objId] > 0.0f) {
                D_800EA8A0[omCurrentObj->objId] = 0.06544985f;
            } else {
                D_800EA8A0[omCurrentObj->objId] = -0.06544985f;
            }
            D_800EAA60[omCurrentObj->objId] = 0.0f;
            D_800EAC20[omCurrentObj->objId] = 1.0f;
            D_800EADE0[omCurrentObj->objId] = 0.5f;
            break;
        case 13:
            func_800A9EA4(0x104D2);
            if (D_800EA8A0[omCurrentObj->objId] > 0.0f) {
                D_800EA8A0[omCurrentObj->objId] = 0.06544985f;
            } else {
                D_800EA8A0[omCurrentObj->objId] = -0.06544985f;
            }
            D_800EAA60[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId] * -2.0f;
            for (i = 0; i != 0x18; i++) {
                v = sinf(D_800EA6E0[omCurrentObj->objId]);
                if (v < 0.0f) {
                    v = -v;
                }
                D_800EAC20[omCurrentObj->objId] = v;
                v = sinf(D_800EA6E0[omCurrentObj->objId]);
                if (v < 0.0f) {
                    v = -v;
                }
                D_800EADE0[omCurrentObj->objId] = v;
                ohSleep(1);
            }
            D_800EA6E0[omCurrentObj->objId] = 3.1415927f;
            break;
        case 4:
        case 8:
            D_800EA6E0[omCurrentObj->objId] = 3.1415927f;
            /* fallthrough */
        case 2:
        case 6:
            do {
                v = ((f32 *) D_801EF9E4_ovl16)[random_soft_s32_range(5)];
            } while (D_800EAC20[omCurrentObj->objId] == v);
            D_800EAC20[omCurrentObj->objId] = v;
            /* fallthrough */
        case 1:
        case 3:
        case 5:
        case 7:
        case 9:
            ohSleep(0x18);
            break;
        case 10:
            D_800EAC20[omCurrentObj->objId] = 1.0f;
            ohSleep(0x18);
            break;
        case 11:
            t = func_8019E0A4_ovl7(5, 4);
            if (t != -1) {
                if (D_800EA8A0[omCurrentObj->objId] > 0.0f) {
                    D_800E98E0[t] = 0;
                } else {
                    D_800E98E0[t] = 1;
                }
            }
            func_800A9EA4(0x104D3);
            D_800EADE0[omCurrentObj->objId] = 1.0f;
            D_800EAA60[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId] * -2.0f;
            ohSleep(0xC);
            D_800EAA60[omCurrentObj->objId] = 9999.9f;
            v = (D_800EA8A0[omCurrentObj->objId] > 0.0f) ? 0.06544985f : -0.06544985f;
            D_800EA8A0[omCurrentObj->objId] = v * 0.5f;
            ohSleep(0x18);
            break;
        case 12:
            ohSleep(0x18);
            if (D_800EA8A0[omCurrentObj->objId] > 0.0f) {
                D_800EA8A0[omCurrentObj->objId] = 0.06544985f;
            } else {
                D_800EA8A0[omCurrentObj->objId] = -0.06544985f;
            }
            D_800EAA60[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId] * -2.0f;
            ohSleep(0xC);
            break;
        }
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 0x1B;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E5AE4_ovl16.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 330/391, and 27 instructions SHORT. Same CSE gap as its siblings in this
 * file; see func_801E538C's note for the fully localised instance (there the two
 * D_801F0120_ovl16[4] reads are visible at listing indices 200 and 222). */
/* Phase-0x15 orbit-attack drive tick: advance the heading, place the body on
 * the (180*EAC20, 180*EADE0) ellipse around (0,160), clamp to the arena, aim
 * the body DObj along the motion (or lock it horizontal while the pendulum
 * marker 9999.9 is up, or add the swing rate), and every 0x1F ticks after a
 * hit (D_800D7098.unk38) respawn the 0x35 chained satellite. */
void func_801E62C0_ovl16(s32 arg0) {
    struct DObj *d;
    s32 child;
    s32 t;

    D_800EA6E0[omCurrentObj->objId] += D_800EA8A0[omCurrentObj->objId];
    while (D_800EA6E0[omCurrentObj->objId] > 6.2831855f) {
        D_800EA6E0[omCurrentObj->objId] -= 6.2831855f;
    }
    while (D_800EA6E0[omCurrentObj->objId] < -6.2831855f) {
        D_800EA6E0[omCurrentObj->objId] += 6.2831855f;
    }
    gEntitiesPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId];
    gEntitiesPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
    gEntitiesNextPosXArray[omCurrentObj->objId] =
        D_800EAC20[omCurrentObj->objId] * (sinf(D_800EA6E0[omCurrentObj->objId]) * 180.0f);
    gEntitiesNextPosYArray[omCurrentObj->objId] =
        (D_800EADE0[omCurrentObj->objId] * (cosf(D_800EA6E0[omCurrentObj->objId]) * 180.0f)) + 160.0f;
    D_800E8920[omCurrentObj->objId] = 0;
    if (gEntitiesNextPosXArray[omCurrentObj->objId] < -260.0f) {
        gEntitiesNextPosXArray[omCurrentObj->objId] = -260.0f;
    }
    if (gEntitiesNextPosXArray[omCurrentObj->objId] > 260.0f) {
        gEntitiesNextPosXArray[omCurrentObj->objId] = 260.0f;
    }
    if (gEntitiesNextPosYArray[omCurrentObj->objId] < 20.0f) {
        gEntitiesNextPosYArray[omCurrentObj->objId] = 20.0f;
    }
    if (gEntitiesNextPosYArray[omCurrentObj->objId] > 260.0f) {
        gEntitiesNextPosYArray[omCurrentObj->objId] = 260.0f;
    }
    d = D_800DFBD0[omCurrentObj->objId][1];
    if (D_800EAA60[omCurrentObj->objId] == 0.0f) {
        d->angle.v.z = atan2f(gEntitiesNextPosXArray[omCurrentObj->objId] - gEntitiesPosXArray[omCurrentObj->objId],
                              gEntitiesPosYArray[omCurrentObj->objId] - gEntitiesNextPosYArray[omCurrentObj->objId]);
    } else if (D_800EAA60[omCurrentObj->objId] == 9999.9f) {
        if (D_800EA8A0[omCurrentObj->objId] > 0.0f) {
            d->angle.v.z = -1.5707964f;
        } else {
            d->angle.v.z = 1.5707964f;
        }
    } else {
        d->angle.v.z += D_800EAA60[omCurrentObj->objId];
    }
    while (d->angle.v.z > 6.2831855f) {
        d->angle.v.z -= 6.2831855f;
    }
    while (d->angle.v.z < -6.2831855f) {
        d->angle.v.z += 6.2831855f;
    }
    if (D_800D7098.unk38 != 0) {
        ((s32 *) D_800E9AA0)[omCurrentObj->objId] += 1;
    }
    child = D_800EC120[omCurrentObj->objId];
    if (((D_800DD710[child] == -1) || (omCurrentObj->objId != D_800E0D50[child])) &&
        (((s32 *) D_800E9AA0)[omCurrentObj->objId] >= 0x1F)) {
        t = func_801ACC34_ovl7(0x35, 0);
        if (t != 0) {
            D_800E8E60[t] = 1;
            D_800E0D50[t] = omCurrentObj->objId;
            D_800EC120[omCurrentObj->objId] = t;
            ((s32 *) D_800E9AA0)[t] = 0;
            ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 0;
            D_800D7098.unk38 = 0;
        } else {
            ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 0x1F;
            D_800D7098.unk38 = 1;
        }
    }
    if (D_801F0120_ovl16[5] <= 0) {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9A20;
    } else {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D99D8;
    }
    if ((D_800D7098.unk18 != 0) || (D_801F0120_ovl16[5] <= 0)) {
        func_801DC314_ovl16(0, 0, 0);
    } else {
        func_801DB698_ovl16(0);
    }
}
#elif defined(PORT)
/* Phase-0x15 orbit-attack drive tick: advance the heading, place the body on
 * the (180*EAC20, 180*EADE0) ellipse around (0,160), clamp to the arena, aim
 * the body DObj along the motion (or lock it horizontal while the pendulum
 * marker 9999.9 is up, or add the swing rate), and every 0x1F ticks after a
 * hit (D_800D7098.unk38) respawn the 0x35 chained satellite. */
void func_801E62C0_ovl16(s32 arg0) {
    struct DObj *d;
    s32 child;
    s32 t;

    D_800EA6E0[omCurrentObj->objId] += D_800EA8A0[omCurrentObj->objId];
    while (D_800EA6E0[omCurrentObj->objId] > 6.2831855f) {
        D_800EA6E0[omCurrentObj->objId] -= 6.2831855f;
    }
    while (D_800EA6E0[omCurrentObj->objId] < -6.2831855f) {
        D_800EA6E0[omCurrentObj->objId] += 6.2831855f;
    }
    gEntitiesPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId];
    gEntitiesPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
    gEntitiesNextPosXArray[omCurrentObj->objId] =
        D_800EAC20[omCurrentObj->objId] * (sinf(D_800EA6E0[omCurrentObj->objId]) * 180.0f);
    gEntitiesNextPosYArray[omCurrentObj->objId] =
        (D_800EADE0[omCurrentObj->objId] * (cosf(D_800EA6E0[omCurrentObj->objId]) * 180.0f)) + 160.0f;
    D_800E8920[omCurrentObj->objId] = 0;
    if (gEntitiesNextPosXArray[omCurrentObj->objId] < -260.0f) {
        gEntitiesNextPosXArray[omCurrentObj->objId] = -260.0f;
    }
    if (gEntitiesNextPosXArray[omCurrentObj->objId] > 260.0f) {
        gEntitiesNextPosXArray[omCurrentObj->objId] = 260.0f;
    }
    if (gEntitiesNextPosYArray[omCurrentObj->objId] < 20.0f) {
        gEntitiesNextPosYArray[omCurrentObj->objId] = 20.0f;
    }
    if (gEntitiesNextPosYArray[omCurrentObj->objId] > 260.0f) {
        gEntitiesNextPosYArray[omCurrentObj->objId] = 260.0f;
    }
    d = D_800DFBD0[omCurrentObj->objId][1];
    if (D_800EAA60[omCurrentObj->objId] == 0.0f) {
        d->angle.v.z = atan2f(gEntitiesNextPosXArray[omCurrentObj->objId] - gEntitiesPosXArray[omCurrentObj->objId],
                              gEntitiesPosYArray[omCurrentObj->objId] - gEntitiesNextPosYArray[omCurrentObj->objId]);
    } else if (D_800EAA60[omCurrentObj->objId] == 9999.9f) {
        if (D_800EA8A0[omCurrentObj->objId] > 0.0f) {
            d->angle.v.z = -1.5707964f;
        } else {
            d->angle.v.z = 1.5707964f;
        }
    } else {
        d->angle.v.z += D_800EAA60[omCurrentObj->objId];
    }
    while (d->angle.v.z > 6.2831855f) {
        d->angle.v.z -= 6.2831855f;
    }
    while (d->angle.v.z < -6.2831855f) {
        d->angle.v.z += 6.2831855f;
    }
    if (D_800D7098.unk38 != 0) {
        ((s32 *) D_800E9AA0)[omCurrentObj->objId] += 1;
    }
    child = D_800EC120[omCurrentObj->objId];
    if (((D_800DD710[child] == -1) || (omCurrentObj->objId != D_800E0D50[child])) &&
        (((s32 *) D_800E9AA0)[omCurrentObj->objId] >= 0x1F)) {
        t = func_801ACC34_ovl7(0x35, 0);
        if (t != 0) {
            D_800E8E60[t] = 1;
            D_800E0D50[t] = omCurrentObj->objId;
            D_800EC120[omCurrentObj->objId] = t;
            ((s32 *) D_800E9AA0)[t] = 0;
            ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 0;
            D_800D7098.unk38 = 0;
        } else {
            ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 0x1F;
            D_800D7098.unk38 = 1;
        }
    }
    if (D_801F0120_ovl16[5] <= 0) {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9A20;
    } else {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D99D8;
    }
    if ((D_800D7098.unk18 != 0) || (D_801F0120_ovl16[5] <= 0)) {
        func_801DC314_ovl16(0, 0, 0);
    } else {
        func_801DB698_ovl16(0);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E62C0_ovl16.s")
#endif

void func_801E68E0_ovl16(s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0x15;
    D_800E3050[omCurrentObj->objId] = -gEntitiesNextPosXArray[omCurrentObj->objId] / 30.0f;
    D_800E3210[omCurrentObj->objId] = (160.0f - gEntitiesNextPosYArray[omCurrentObj->objId]) / 30.0f;
    ohSleep(0x1E);
    D_800D7098.unk10 = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0x21;
}

void func_801E69A8_ovl16(s32 arg0) {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801DB400_ovl16();
    if (D_801F0120_ovl16[5] <= 0) {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9A20;
    } else {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D99D8;
    }
    if ((D_800D7098.unk18 != 0) || (D_801F0120_ovl16[5] <= 0)) {
        func_801DC314_ovl16(0, 0, 0);
    } else {
        func_801DB698_ovl16(0);
    }
}

void func_801E6A84_ovl16(s32 arg0) {
    f32 temp_f0;

    D_800DDFD0[omCurrentObj->objId] = 0x16;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    temp_f0 = D_800E3750[omCurrentObj->objId];
    D_800E3590[omCurrentObj->objId] = temp_f0;
    D_800E3210[omCurrentObj->objId] = temp_f0;
    D_800E3050[omCurrentObj->objId] = temp_f0;
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId];
    gEntityFuncListIDArray[omCurrentObj->objId] = 0x1B;
}

void func_801E6B60_ovl16(s32 arg0) {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801DB400_ovl16();
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9A20;
    func_801DC314_ovl16(0, 0, 0);
}

void func_801E6BD4_ovl16(s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B7560;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAEF4;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800B33F4();
    D_800D7098.unk10 = 1;
    D_800D7098.unk8 = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = D_801EF9F8_ovl16[D_800D7098.unk8];
}

/* The 9999.0f/0.09f/0.2f comparisons below are byte-exact as written, but
 * this segment's rodata is an unmigrated asm blob: IDO emits a SECOND copy
 * of each literal into the TU's .rodata and the whole segment grows.
 * Referencing the data symbols instead changes codegen (IDO reloads a
 * global where it CSEs a literal), so the body has to stay parked here
 * until ovl16's rodata can be migrated to `.rodata, ovl16/ovl16`. */
s32 func_801E6C90_ovl16(void) {
    s32 i;
    s32 t = -1;

    for (i = 14; i != 0x3C; i++) {
        if ((D_800DD710[i] != t) && (D_800E7730[i] == 4) && (D_800E77A0[i] == 0x36)) {
            if ((0.2f < D_800E7B20[i]) && (D_800E7B20[i] < 9999.0f) && (D_800E83E0[i] != 1) && (D_800E0D50[i] != 0)) {
                return 1;
            }
        }
    }
    return 0;
}

void func_801E6E0C_ovl16(s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0x17;
    func_800AA154(0x104BC);
    func_800AA018(0x104AE);
    D_800E9AA0[omCurrentObj->objId] = NULL;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = D_800E98E0[omCurrentObj->objId];
    while (D_800E9E20[omCurrentObj->objId] < 0x10E) {
        if (D_800E9AA0[omCurrentObj->objId] == NULL) {
            func_800A9F98(0x104BC, D_800E98E0[omCurrentObj->objId]);
        }
        D_800E98E0[omCurrentObj->objId] = (D_800E98E0[omCurrentObj->objId] + 2) % 60;
        if (D_800E9E20[omCurrentObj->objId] >= 0x1F) {
            D_800EA8A0[omCurrentObj->objId] = 0.0f;
        }
        ohSleep(1);
        D_800E9E20[omCurrentObj->objId] += 1;
    }
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 0xA;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0x1F;
}

void func_801E7054_ovl16(s32 arg0) {
    extern s32 D_801D9A68;

    if (D_800E9E20[omCurrentObj->objId] == 0x2D) {
        D_800D7098.unk10++;
    }
    if (D_800E9E20[omCurrentObj->objId] == 0x4B) {
        D_800D7098.unk10++;
    }
    if (D_800E9E20[omCurrentObj->objId] == 0xA5) {
        D_800D7098.unk10++;
    }
    D_800EA6E0[omCurrentObj->objId] += D_800EA8A0[omCurrentObj->objId];
    D_800DFBD0[omCurrentObj->objId][3]->angle.v.z = D_800EA6E0[omCurrentObj->objId];
    while (D_800DFBD0[omCurrentObj->objId][3]->angle.v.z > 6.283185482f) {
        D_800DFBD0[omCurrentObj->objId][3]->angle.v.z -= 6.283185482f;
    }
    while (D_800DFBD0[omCurrentObj->objId][3]->angle.v.z < -6.283185482f) {
        D_800DFBD0[omCurrentObj->objId][3]->angle.v.z += 6.283185482f;
    }
    D_800E8920[omCurrentObj->objId] = 0;
    func_801DB400_ovl16();
    if (D_801F0120_ovl16[6] <= 0) {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9AB0;
    } else {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9A68;
    }
    if ((D_800D7098.unk18 != 0) || (D_801F0120_ovl16[6] <= 0)) {
        func_801DC314_ovl16(0, 0, 0);
    } else {
        func_801DB698_ovl16(0);
    }
}

void func_801E72C4_ovl16(s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0x18;
    D_800D7098.unk10 = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0x21;
}

void func_801E730C_ovl16(s32 arg0) {
    extern s32 D_801D9A68;

    D_800EA6E0[omCurrentObj->objId] += 0.05235987902f;
    D_800DFBD0[omCurrentObj->objId][3]->angle.v.z = D_800EA6E0[omCurrentObj->objId];
    while (D_800DFBD0[omCurrentObj->objId][3]->angle.v.z > 6.283185482f) {
        D_800DFBD0[omCurrentObj->objId][3]->angle.v.z -= 6.283185482f;
    }
    while (D_800DFBD0[omCurrentObj->objId][3]->angle.v.z < -6.283185482f) {
        D_800DFBD0[omCurrentObj->objId][3]->angle.v.z += 6.283185482f;
    }
    D_800E8920[omCurrentObj->objId] = 0;
    func_801DB400_ovl16();
    if (D_801F0120_ovl16[6] <= 0) {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9AB0;
    } else {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9A68;
    }
    if ((D_800D7098.unk18 != 0) || (D_801F0120_ovl16[6] <= 0)) {
        func_801DC314_ovl16(0, 0, 0);
    } else {
        func_801DB698_ovl16(0);
    }
}

void func_801E74E8_ovl16(s32 arg0) {
    f32 temp_f0;

    D_800DDFD0[omCurrentObj->objId] = 0x19;
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 0xA;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    temp_f0 = D_800E3750[omCurrentObj->objId];
    D_800E3590[omCurrentObj->objId] = temp_f0;
    D_800E3210[omCurrentObj->objId] = temp_f0;
    D_800E3050[omCurrentObj->objId] = temp_f0;
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId];
    gEntityFuncListIDArray[omCurrentObj->objId] = 0x1F;
}

void func_801E75DC_ovl16(s32 arg0) {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801DB400_ovl16();
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9AB0;
    func_801DC314_ovl16(0, 0, 0);
}

void func_801E7650_ovl16(s32 arg0) {
    struct EnemyRecord *temp;
    s32 i;

    temp = D_800E1B50[omCurrentObj->objId];
    D_800DDFD0[omCurrentObj->objId] = 0x1A;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9438;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800B33F4();
    gEntitiesNextPosXArray[omCurrentObj->objId] = 0.0f;
    gEntitiesNextPosYArray[omCurrentObj->objId] = 160.0f;
    ohSleep(1);
    D_800E98E0[D_800EBBE0[omCurrentObj->objId]] = 3;
    func_800AECC0(gameTicksPerDraw * 3.0f);
    func_800AA018(D_801EFA04_ovl16[D_800D7098.unk4]);
    if (D_801EFA20_ovl16[D_800D7098.unk4] != 0) {
        func_800AED20(((f32 *) D_801EF848_ovl16)[D_800D7098.unk4] * gameTicksPerDraw);
        func_800AA018(D_801EFA20_ovl16[D_800D7098.unk4]);
    }
    for (i = 0; i != 8; i++) {
        temp->unk80->unk10 += ((f32 *) D_801EF810_ovl16)[D_800D7098.unk4] * 4.0f;
        ohSleep(1);
    }
    temp->unk80->unk10 = 40.0f;
    D_800D7098.unk2C = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801E788C_ovl16(s32 arg0) {
    switch (D_800D7098.unk4) {
    case 0:
        break;
    case 1:
        func_801DF314_ovl16();
        break;
    case 2:
        func_801DF62C_ovl16();
        break;
    case 3:
        break;
    case 4:
        break;
    case 5:
        break;
    case 6:
        D_800EA6E0[omCurrentObj->objId] += D_800EA8A0[omCurrentObj->objId];
        D_800DFBD0[omCurrentObj->objId][3]->angle.v.z = D_800EA6E0[omCurrentObj->objId];
        while (D_800DFBD0[omCurrentObj->objId][3]->angle.v.z > 6.283185482f) {
            D_800DFBD0[omCurrentObj->objId][3]->angle.v.z -= 6.283185482f;
        }
        while (D_800DFBD0[omCurrentObj->objId][3]->angle.v.z < -6.283185482f) {
            D_800DFBD0[omCurrentObj->objId][3]->angle.v.z += 6.283185482f;
        }
        break;
    }
    D_800E8920[omCurrentObj->objId] = 0;
    func_801DB400_ovl16();
    func_801DC314_ovl16(0, 0, 0);
}

void func_801E7A38_ovl16(s32 arg0) {
    func_800AFBB4(0, omCurrentObj);
    D_800DEF90[omCurrentObj->objId] = func_800B4924;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_800DF150[omCurrentObj->objId] = NULL;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9480;
    func_800B33F4();
    func_8019F1EC_ovl7();
    if (D_800D6E5C != 0.0f) {
        func_800BC11C(D_800E7B20[omCurrentObj->objId]);
    }
    play_sound(0x1B8);
    func_800BB468(3, 0);
    func_800FD754(2, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId],
                  gEntitiesNextPosZArray[omCurrentObj->objId]);
    func_801DB528_ovl16(arg0);
    D_800D7118.unk3C = 0;
    D_800E98E0[D_800EBBE0[omCurrentObj->objId]] = 4;
    D_800D7098.unk0 = 2;
    func_8019BB58_ovl7();
    curObjSleepForever();
}

/* Unguarded non-matching draft at 129/197, committed by mistake in f563f41.
 * It made ovl16's .text 32 bytes too long and broke the ROM at HEAD.
 * Guarded NON_MATCHING: it compiles, so the PC port still executes it,
 * while the ROM assembles the listing below. */
#ifdef NON_MATCHING
void func_801E7BD0_ovl16(struct GObj *arg0) {
    f32 lbvector_Normalize(Vector *);
    Vector *func_800195D8(Vector *, Vector *);
    f32 dx;
    f32 dy;
    Vector sp44;
    Vector sp38;

    D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_800B4924;
    D_800DF150[omCurrentObj->objId] = NULL;
    func_800B33F4();
    gEntitiesAngleZArray[omCurrentObj->objId] = 0.0f;
    gEntitiesAngleXArray[omCurrentObj->objId] = gEntitiesAngleYArray[omCurrentObj->objId] =
        gEntitiesAngleZArray[omCurrentObj->objId];
    sp44.x = gEntitiesNextPosXArray[omCurrentObj->objId] - gEntitiesNextPosXArray[D_800D7098.unk34];
    sp44.y = gEntitiesNextPosYArray[omCurrentObj->objId] - gEntitiesNextPosYArray[D_800D7098.unk34];
    sp44.z = 0.0f;
    lbvector_Normalize(&sp44);
    dx = sp38.x = gEntitiesNextPosXArray[omCurrentObj->objId] - gEntitiesPosXArray[omCurrentObj->objId];
    sp38.z = 0.0f;
    dy = sp38.y = gEntitiesNextPosYArray[omCurrentObj->objId] - gEntitiesPosYArray[omCurrentObj->objId];
    lbvector_Normalize(&sp38);
    func_800195D8(&sp38, &sp44);
    D_800EA6E0[omCurrentObj->objId] = atan2f(-sp38.x, sp38.y);
    D_800EA8A0[omCurrentObj->objId] = sqrtf(dx * dx + dy * dy);
    while (D_800EA6E0[omCurrentObj->objId] > 6.283185482f) {
        D_800EA6E0[omCurrentObj->objId] -= 6.283185482f;
    }
    while (D_800EA6E0[omCurrentObj->objId] < -6.283185482f) {
        D_800EA6E0[omCurrentObj->objId] += 6.283185482f;
    }
    D_800E3050[omCurrentObj->objId] = sinf(D_800EA6E0[omCurrentObj->objId]) * -D_800EA8A0[omCurrentObj->objId];
    D_800E3210[omCurrentObj->objId] = cosf(D_800EA6E0[omCurrentObj->objId]) * D_800EA8A0[omCurrentObj->objId];
    ohSleep(5);
    func_801AC11C_ovl7((s32) arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E7BD0_ovl16.s")
#endif

/* Last function of this translation unit: the seven nops its listing carries
 * after `.size` are the linker aligning the NEXT object (src/ovl16/ovl16_2.c)
 * to 32, not instructions. kirby64.yaml declares the residue as a `pad`. */
void func_801E7EE0_ovl16(s32 arg0, s32 *arg1, s32 *arg2) {
    *arg1 = D_801EFA3C_ovl16[arg0].unk0;
    *arg2 = D_801EFA3C_ovl16[arg0].unk4;
}
