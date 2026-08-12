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
extern struct Sub800E1B50_Unk98 D_801DAEF4;
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

void func_801DBA54_ovl16(struct UnkStruct800E1B50 *arg0, struct Ovl16AnimInfo *arg1) {
    D_800E83E0[omCurrentObj->objId] = arg1->unk2;
    arg0->unk43 = arg1->unk3;
    arg0->unk3E = arg1->unk0;
    arg0->unk3F = arg1->unk1;
    arg0->unk3A = arg1->unkC;
}

s32 func_801DBA98_ovl16(s32 arg0, s32 arg1, s32 arg2) {
    struct Ovl16AnimInfo sp38;
    u8 sp30[8];
    struct UnkStruct800E1B50 *temp_s0;
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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801DBBCC_ovl16.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801DC314_ovl16.s")

s32 func_801DC6E4_ovl16(s32 arg0, s32 arg1) {
    struct Ovl16AnimInfo sp20;
    void *sp1C;

    sp1C = D_800E1B50[omCurrentObj->objId];
    func_80111550(omCurrentObj->objId);
    sp1C = func_80111C88(((struct UnkStruct800E1B50 *) sp1C)->unk8C, omCurrentObj->objId);
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
    sp1C = func_80111C88(((struct UnkStruct800E1B50 *) sp1C)->unk8C, omCurrentObj->objId);
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
    struct UnkStruct800E1B50 *sp1C;
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
    sp1C = func_80111C88(((struct UnkStruct800E1B50 *) sp1C)->unk8C, omCurrentObj->objId);
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
    struct UnkStruct800E1B50 *ent;
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
    struct UnkStruct800E1B50 *sp5C;
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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801DDA98_ovl16.s")

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
    struct UnkStruct800E1B50 *temp;
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

/* FACTORY: 2/299.  Only two words differ: the pair of identical
   `addu $t, $s7, $s0` that precompute the store address for the two arms
   of the if/else is emitted in the opposite order (ROM does the else arm
   first).  The arm order is locked by the bc1fl polarity, so no source
   spelling reaches it.  Everything else is byte-exact. */
#ifdef NON_MATCHING
void func_801DFF40_ovl16(s32 arg0) {
    void func_800AF27C(void);
    s32 i;
    s32 r;
    s32 t;

    D_800DDFD0[omCurrentObj->objId] = 3;
    r = random_soft_s32_range(6);
    for (i = 0; i < 3; i++) {
        D_800EA6E0[omCurrentObj->objId] = 0.0f;
        while (5.0f < ((gEntitiesNextPosXArray[omCurrentObj->objId] < D_801EF870_ovl16[D_801EF87C_ovl16[r][i]])
                        ? -(gEntitiesNextPosXArray[omCurrentObj->objId] - D_801EF870_ovl16[D_801EF87C_ovl16[r][i]])
                        :  (gEntitiesNextPosXArray[omCurrentObj->objId] - D_801EF870_ovl16[D_801EF87C_ovl16[r][i]]))) {
            func_800A9EA4(0x10489);
            func_800A9EA4(0x10488);
            if (D_801EF870_ovl16[D_801EF87C_ovl16[r][i]] < gEntitiesNextPosXArray[omCurrentObj->objId]) {
                D_800E3050[omCurrentObj->objId] = -5.0f;
            } else {
                D_800E3050[omCurrentObj->objId] = 5.0f;
            }
            ohSleep(1);
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
        while (D_800E9E20[omCurrentObj->objId] != 3) {
            ohSleep(1);
        }
        ohSleep(0x1E);
        play_sound(0x1AA);
        t = func_801ACC34_ovl7(0x30, 0);
        D_800E8E60[t] = 1;
        gEntitiesNextPosYArray[t] =
            gEntitiesNextPosYArray[omCurrentObj->objId] + D_800DFBD0[omCurrentObj->objId][5]->pos.v.y;
        t = func_801ACC34_ovl7(0x30, 2);
        D_800E8E60[t] = 1;
        gEntitiesNextPosYArray[t] =
            gEntitiesNextPosYArray[omCurrentObj->objId] + D_800DFBD0[omCurrentObj->objId][9]->pos.v.y;
        D_800EA6E0[omCurrentObj->objId] = -10.0f;
        while (D_800E9E20[omCurrentObj->objId] != 0) {
            ohSleep(1);
        }
        D_800EA6E0[omCurrentObj->objId] = 0.0f;
        func_800AF27C();
        func_800AA018(0x1047D);
        func_800AA154(0x1047C);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 7;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801DFF40_ovl16.s")
#endif

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

/* FACTORY: 2/298.  Only two words differ: the pair of identical
   `addu $t, $s7, $s0` that precompute the store address for the two arms
   of the if/else is emitted in the opposite order (ROM does the else arm
   first).  The arm order is locked by the bc1fl polarity, so no source
   spelling reaches it.  Everything else is byte-exact. */
#ifdef NON_MATCHING
void func_801E0820_ovl16(s32 arg0) {
    void func_800AF27C(void);
    s32 i;
    s32 r;
    s32 t;

    D_800DDFD0[omCurrentObj->objId] = 4;
    r = random_soft_s32_range(2);
    for (i = 0; i < 2; i++) {
        D_800EA6E0[omCurrentObj->objId] = 0.0f;
        while (5.0f < ((gEntitiesNextPosYArray[omCurrentObj->objId] < D_801EF8C4_ovl16[D_801EF8CC_ovl16[r][i]])
                        ? -(gEntitiesNextPosYArray[omCurrentObj->objId] - D_801EF8C4_ovl16[D_801EF8CC_ovl16[r][i]])
                        :  (gEntitiesNextPosYArray[omCurrentObj->objId] - D_801EF8C4_ovl16[D_801EF8CC_ovl16[r][i]]))) {
            func_800A9EA4(0x10489);
            func_800A9EA4(0x10488);
            if (D_801EF8C4_ovl16[D_801EF8CC_ovl16[r][i]] < gEntitiesNextPosYArray[omCurrentObj->objId]) {
                D_800E3210[omCurrentObj->objId] = -5.0f;
            } else {
                D_800E3210[omCurrentObj->objId] = 5.0f;
            }
            ohSleep(1);
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
        while (D_800E9E20[omCurrentObj->objId] != 0xC) {
            ohSleep(1);
        }
        ohSleep(0x1E);
        play_sound(0x1AA);
        t = func_801ACC34_ovl7(0x30, 1);
        D_800E8E60[t] = 1;
        gEntitiesNextPosXArray[t] =
            gEntitiesNextPosXArray[omCurrentObj->objId] + D_800DFBD0[omCurrentObj->objId][7]->pos.v.x;
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
        func_800AA018(0x10477);
        func_800AA154(0x10476);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 7;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E0820_ovl16.s")
#endif

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E18BC_ovl16.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E2E44_ovl16.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E35D4_ovl16.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E3CF0_ovl16.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E4350_ovl16.s")

void func_801E4698_ovl16(s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B7560;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAEF4;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800B33F4();
    D_800D7098.unk10 = 1;
    D_800D7098.unk8 = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = D_801EF9B4_ovl16[D_800D7098.unk8];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E4754_ovl16.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E538C_ovl16.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E5AE4_ovl16.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E62C0_ovl16.s")

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
    struct UnkStruct800E1B50 *temp;
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
