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

void func_800A9864(s32, s32, s32);
void func_801DF62C_ovl16(void);
void func_800AA018(s32);
void func_800AA154(s32);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800AFBB4(s32, struct GObj *);
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
void ohSleep(s32);
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
void func_801A03B4_ovl7(void);
void func_801A03E4_ovl7(struct DObj *, struct DObj ***);
s32 func_801A0244_ovl7(s8);
void func_801EF3B0_ovl16(s32, s8);
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
extern s32 D_801EF650_ovl16;
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
extern s32 D_801EF7BC_ovl16;
extern s32 D_801EF7D8_ovl16;
extern s32 D_801EF7F4_ovl16[];
extern s32 D_801EF810_ovl16[];
extern s32 D_801EF82C_ovl16[];
extern s32 D_801EF848_ovl16[];
extern s32 D_801EF870_ovl16[];
extern s32 D_801EF87C_ovl16;
extern s32 D_801EF8C4_ovl16[];
extern s32 D_801EF8CC_ovl16;
extern s32 D_801EF8DC_ovl16[];
extern s32 D_801EF8FC_ovl16[];
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
extern s32 D_801EFC10_ovl16;
extern s32 D_801EFC20_ovl16;
extern s32 D_801EFC30_ovl16;
extern s32 D_801EFC40_ovl16;
extern s32 D_801EFC50_ovl16;
extern s32 D_801EFC6C_ovl16[];
extern s32 D_801EFC84_ovl16[];
extern s32 D_801EFCC0_ovl16[];
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
extern s32 D_801F01D0_ovl16;
extern s32 D_801F01D8_ovl16;
extern s32 D_801F01F8_ovl16;
extern s32 D_801F0200_ovl16;
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
    D_800E17D0[omCurrentObj->objId] = 4.712f;
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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801DC6E4_ovl16.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801DC8E4_ovl16.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801DC990_ovl16.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801DCA84_ovl16.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801DCBF8_ovl16.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801DCDC8_ovl16.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801DD25C_ovl16.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801DD50C_ovl16.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801DDEB0_ovl16.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801DE030_ovl16.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801DE670_ovl16.s")

void func_801DE840_ovl16(s32 arg0) {
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[D_800E0D50[omCurrentObj->objId]];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801DE8DC_ovl16.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801DED40_ovl16.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801DF314_ovl16.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801DF62C_ovl16.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801DFAA0_ovl16.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801DFF40_ovl16.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E03EC_ovl16.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E0820_ovl16.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E0CC8_ovl16.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E0F04_ovl16.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E141C_ovl16.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E1C1C_ovl16.s")

void func_801E1E84_ovl16(s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B7560;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAEF4;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800B33F4();
    D_800D7098.unk10 = 1;
    D_800D7098.unk8 = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = D_801EF914_ovl16[D_800D7098.unk8];
}

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E4148_ovl16.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E7054_ovl16.s")

void func_801E72C4_ovl16(s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0x18;
    D_800D7098.unk10 = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0x21;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E730C_ovl16.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E7650_ovl16.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E788C_ovl16.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E7BD0_ovl16.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E7EE0_ovl16.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E7F20_ovl16.s")

void func_801E820C_ovl16(s32 arg0) {
    struct UnkStruct800E1B50 *temp_s0;
    s32 temp_v0;
    s8 temp_a0;

    temp_s0 = D_800E1B50[omCurrentObj->objId];
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        func_801A03B4_ovl7();
        if (D_800E83E0[omCurrentObj->objId] == 1) {
            temp_a0 = temp_s0->unk3A;
            if (temp_a0 != -1) {
                temp_v0 = func_801A0244_ovl7(temp_a0);
                if (temp_v0 != -1) {
                    func_801EF3B0_ovl16(temp_v0, temp_s0->unk3A);
                    D_800E83E0[omCurrentObj->objId] = 0x12;
                    play_sound(0xF4);
                    temp_s0->unk94 = NULL;
                    temp_s0->unk40 = 1;
                    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_801A3E80_ovl7);
                }
            }
        }
    }
}

void func_801E8318_ovl16(s32 arg0) {
    func_801A3280_ovl7();
    func_8019BAC8_ovl7();
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_801EFC60_ovl16[0]);
    while (1)
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_801EFC68_ovl16[0]);
}

void func_801E83B8_ovl16(s32 arg0) {
    D_800E6A10[omCurrentObj->objId] = -1.0f;
    func_800A9864(0x100B5, 0x23, 0x10);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801E8424_ovl16(s32 arg0) {
    D_800E6A10[omCurrentObj->objId] = -1.0f;
    func_800A9864(0x100B6, 0x23, 0x10);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E8490_ovl16.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E86F4_ovl16.s")

void func_801E8CAC_ovl16(s32 arg0) {
    func_801A3280_ovl7();
    func_8019BAC8_ovl7();
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 4, &D_801EFD38_ovl16[0]);
    while (1)
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, &D_801EFD48_ovl16[0]);
}

void func_801E8D58_ovl16(s32 arg0) {
    while (1)
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, &D_801EFD48_ovl16[0]);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E8DD8_ovl16.s")

void func_801E8EA4_ovl16(s32 arg0) {
    s32 sp24;

    sp24 = D_800E0D50[omCurrentObj->objId];
    D_800E6A10[omCurrentObj->objId] = -1.0f;
    func_800A9864(0x100B7, 0x23, 0x10);
    D_800E17D0[omCurrentObj->objId] = D_800E17D0[sp24];
    D_800E9020[omCurrentObj->objId] = D_800E9020[sp24];
    func_8019BB58_ovl7();
    D_800DEF90[omCurrentObj->objId] = func_800B7560;
    D_800DF150[omCurrentObj->objId] = func_801E9178_ovl16;
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800EA6E0[omCurrentObj->objId] = D_800EA6E0[sp24];
    D_800EA8A0[omCurrentObj->objId] = D_800EA8A0[sp24];
    D_800EAA60[omCurrentObj->objId] = D_800EAA60[sp24];
    D_800EAC20[omCurrentObj->objId] = D_800EAC20[sp24];
    D_800E98E0[omCurrentObj->objId] = D_800E98E0[sp24];
    D_800E9AA0[omCurrentObj->objId] = D_800E9AA0[sp24];
    D_800E9C60[omCurrentObj->objId] = D_800E9C60[sp24];
    D_800EA1A0[omCurrentObj->objId] = D_800EA1A0[sp24];
    func_800AA018(0x105B6);
    func_800AA018(0x105B5);
    D_800E3050[omCurrentObj->objId] = sinf(D_800EA6E0[omCurrentObj->objId]) * -D_800EA8A0[omCurrentObj->objId];
    D_800E3210[omCurrentObj->objId] = cosf(D_800EA6E0[omCurrentObj->objId]) * D_800EA8A0[omCurrentObj->objId];
    ohSleep(0x3C);
    func_8019D958_ovl7(omCurrentObj->objId);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E9178_ovl16.s")

void func_801E93E8_ovl16(s32 arg0) {
    D_800E6A10[omCurrentObj->objId] = -1.0f;
    func_800A9864(0x100B7, 0x23, 0x10);
    D_800E17D0[omCurrentObj->objId] = D_800E17D0[D_800E0D50[omCurrentObj->objId]];
    D_800E9020[omCurrentObj->objId] = D_800E9020[D_800E0D50[omCurrentObj->objId]];
    func_8019BB58_ovl7();
    D_800DEF90[omCurrentObj->objId] = func_800B7560;
    D_800DF150[omCurrentObj->objId] = func_801E9590_ovl16;
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AA018(0x105B6);
    func_800AA018(0x105B5);
    while (D_800EAA60[omCurrentObj->objId] > 0.0f) {
        ohSleep(1);
    }
    func_8019D958_ovl7(omCurrentObj->objId);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E9590_ovl16.s")

void func_801E97AC_ovl16(s32 arg0) {
    func_8019BB58_ovl7();
    func_800B19F4(0x79, omCurrentObj->objId);
    func_800AFBB4(0, omCurrentObj);
    D_800DEF90[omCurrentObj->objId] = func_800B4924;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], &procMainStub);
    D_800DF150[omCurrentObj->objId] = NULL;
    func_8019D958_ovl7(omCurrentObj->objId);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E9858_ovl16.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801E9C10_ovl16.s")

void func_801E9EF8_ovl16(s32 arg0) {
    D_800DF150[omCurrentObj->objId] = func_801EA070_ovl16;
    D_800E9C60[omCurrentObj->objId] = 0;
    while (D_800EAA60[omCurrentObj->objId] > 0.0f) {
        D_800E3050[omCurrentObj->objId] = sinf(D_800EA6E0[omCurrentObj->objId]) * -D_800EA8A0[omCurrentObj->objId];
        D_800E3210[omCurrentObj->objId] = cosf(D_800EA6E0[omCurrentObj->objId]) * D_800EA8A0[omCurrentObj->objId];
        ohSleep(1);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801EA070_ovl16.s")

void func_801EA344_ovl16(struct GObj *arg0) {
    struct UnkStruct800E1B50 *sp24;

    sp24 = D_800E1B50[omCurrentObj->objId];
    D_800DF150[omCurrentObj->objId] = func_801EA568_ovl16;
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800E9AA0[omCurrentObj->objId] = NULL;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_u32 = 1;
    D_800EA8A0[omCurrentObj->objId] = 2.0f;
    D_800E3050[omCurrentObj->objId] = sinf(D_800EA6E0[omCurrentObj->objId]) * -D_800EA8A0[omCurrentObj->objId];
    D_800E3210[omCurrentObj->objId] = cosf(D_800EA6E0[omCurrentObj->objId]) * D_800EA8A0[omCurrentObj->objId];
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801DA2F8;
    func_800AA018(0x105B0);
    func_800AA154(0x105AF);
    func_800AA018(0x105B8);
    func_800AA018(0x105B7);
    while (D_800D7098.unk10 != 0) {
        ohSleep(1);
    }
    D_800E9FE0[omCurrentObj->objId].as_u32 = 0;
    func_800AA018(0x105B4);
    func_800AA154(0x105B3);
    sp24->unk40 = 1;
    func_801A3E80_ovl7(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801EA568_ovl16.s")

void func_801EACF4_ovl16(s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B7560;
    D_800DF150[omCurrentObj->objId] = func_801EAF00_ovl16;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800EAA60[omCurrentObj->objId] = 0.0f;
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 1;
    D_800E9C60[omCurrentObj->objId] = 1;
    func_800AA018(0x105B6);
    func_800AA018(0x105B5);
    while (D_800EAA60[omCurrentObj->objId] < D_800EAC20[omCurrentObj->objId]) {
        D_800E3050[omCurrentObj->objId] = sinf(D_800EA6E0[omCurrentObj->objId]) * -D_800EA8A0[omCurrentObj->objId];
        D_800E3210[omCurrentObj->objId] = cosf(D_800EA6E0[omCurrentObj->objId]) * D_800EA8A0[omCurrentObj->objId];
        ohSleep(1);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801EAF00_ovl16.s")

void func_801EB17C_ovl16(struct GObj *arg0) {
    struct UnkStruct800E1B50 *sp1C;

    sp1C = D_800E1B50[omCurrentObj->objId];
    D_800DEF90[omCurrentObj->objId] = func_800B7560;
    D_800DF150[omCurrentObj->objId] = func_801EB230_ovl16;
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AA018(0x105B2);
    func_800AA154(0x105B1);
    sp1C->unk40 = 1;
    func_801A3E80_ovl7(arg0);
}

void func_801EB230_ovl16(s32 arg0) {
    D_800DFBD0[omCurrentObj->objId][3]->pos.v.y = -D_800EAA60[omCurrentObj->objId];
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.z = D_800EA6E0[omCurrentObj->objId];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801EB29C_ovl16.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801EB51C_ovl16.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801EB78C_ovl16.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801EBA98_ovl16.s")

s32 func_801EBD8C_ovl16(s32 arg0) {
    s32 temp_v0;

    temp_v0 = func_801ACC34_ovl7(0x32, arg0);
    if (temp_v0 != 0) {
        D_800E8E60[temp_v0] = 1;
        D_800E0D50[temp_v0] = omCurrentObj->objId;
        gEntitiesNextPosXArray[temp_v0] = gEntitiesNextPosXArray[omCurrentObj->objId];
        gEntitiesNextPosYArray[temp_v0] = gEntitiesNextPosYArray[omCurrentObj->objId];
        gEntitiesNextPosZArray[temp_v0] = gEntitiesNextPosZArray[omCurrentObj->objId];
        gEntitiesPosXArray[temp_v0] = gEntitiesPosXArray[omCurrentObj->objId];
        gEntitiesPosYArray[temp_v0] = gEntitiesPosYArray[omCurrentObj->objId];
        gEntitiesPosZArray[temp_v0] = gEntitiesPosZArray[omCurrentObj->objId];
        D_800EA6E0[temp_v0] = D_800EA6E0[omCurrentObj->objId];
        D_800EA8A0[temp_v0] = D_800EA8A0[omCurrentObj->objId];
        D_800EAA60[temp_v0] = D_800EAA60[omCurrentObj->objId];
        D_800EAC20[temp_v0] = D_800EAC20[omCurrentObj->objId];
        D_800E98E0[temp_v0] = D_800E98E0[omCurrentObj->objId];
        D_800E9AA0[temp_v0] = D_800E9AA0[omCurrentObj->objId];
        D_800E9C60[temp_v0] = D_800E9C60[omCurrentObj->objId];
        D_800EA1A0[temp_v0] = D_800EA1A0[omCurrentObj->objId];
    }
    return temp_v0;
}

extern s32 D_801DA364;

void func_801EBFA8_ovl16(struct GObj *arg0) {
    struct UnkStruct800E1B50 *sp24;
    struct GObj *temp_v1;

    sp24 = D_800E1B50[omCurrentObj->objId];
    func_801A3280_ovl7();
    D_800E17D0[omCurrentObj->objId] = D_800E17D0[D_800E0D50[omCurrentObj->objId]];
    D_800E9020[omCurrentObj->objId] = D_800E9020[D_800E0D50[omCurrentObj->objId]];
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_800B7560;
    D_800DF150[omCurrentObj->objId] = (void (*)(struct GObj *)) func_801EC1D8_ovl16;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801DA364;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800A9864(0x100B9, 0x23, 0x10);
    func_800AA018(0x105BE);
    temp_v1 = temp_v1;
    func_800AA154(0x105BD);
    ;
    D_800E98E0[omCurrentObj->objId] = 1;
    if (D_800D7098.unk10 != 0) {
        do {
            ohSleep(1);
        } while (D_800D7098.unk10 != 0);
    }
    D_800E98E0[omCurrentObj->objId] = 0;
    func_800AECC0(2.0f * gameTicksPerDraw);
    func_800AED20(2.0f * gameTicksPerDraw);
    func_800AA018(0x105C0);
    func_800AA154(0x105BF);
    sp24->unk40 = 1;
    func_801A3E80_ovl7(arg0);
}

void func_801EC1D8_ovl16(s32 arg0) {
    struct UnkStruct800E1B50 *temp_s0;
    s32 temp_v0_3;
    s8 temp_a0;

    temp_s0 = D_800E1B50[omCurrentObj->objId];
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.z = D_800EA6E0[omCurrentObj->objId];
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        func_801A03E4_ovl7(D_800DFBD0[omCurrentObj->objId][3], D_800DFBD0);
        if (D_800E83E0[omCurrentObj->objId] == 1) {
            temp_a0 = temp_s0->unk3A;
            if (temp_a0 != -1) {
                temp_v0_3 = func_801A0244_ovl7(temp_a0);
                if (temp_v0_3 != -1) {
                    func_801EF3B0_ovl16(temp_v0_3, temp_s0->unk3A);
                    D_800E83E0[omCurrentObj->objId] = 0x12;
                    play_sound(0xF4);
                    temp_s0->unk94 = NULL;
                    temp_s0->unk40 = 1;
                    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_801A3E80_ovl7);
                }
            }
        }
    }
}

void func_801EC320_ovl16(s32 arg0) {
    func_801A3280_ovl7();
    func_8019BAC8_ovl7();
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_801EFD5C_ovl16[0]);
    while (1)
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, &D_801EFD64_ovl16[0]);
}

void func_801EC3D8_ovl16(s32 arg0) {
    D_800E6A10[omCurrentObj->objId] = -1.0f;
    func_800A9864(0x1007D, 0x23, 0x10);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801EC444_ovl16(s32 arg0) {
    D_800E6A10[omCurrentObj->objId] = -1.0f;
    func_800A9864(0x100B3, 0x23, 0x10);
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801EC4B4_ovl16.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801EC7E4_ovl16.s")

void func_801ECA4C_ovl16(s32 arg0) {
    struct UnkStruct800E1B50 *sp1C;

    sp1C = D_800E1B50[omCurrentObj->objId];
    sp1C->unk80->unk10 = 15.0f;
    D_800E17D0[omCurrentObj->objId] = D_800E17D0[D_800E0D50[omCurrentObj->objId]];
    D_800E9020[omCurrentObj->objId] = D_800E9020[D_800E0D50[omCurrentObj->objId]];
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 0;
    D_800DEF90[omCurrentObj->objId] = func_800B7560;
    D_800DF150[omCurrentObj->objId] = func_801ECB88_ovl16;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800B33F4();
    gEntitiesNextPosYArray[omCurrentObj->objId] = 15.0f;
    curObjSleepForever();
}

void func_801ECB88_ovl16(struct GObj *arg0) {
    struct UnkStruct800E1B50 *temp_s0;
    s32 temp_v0;
    s8 temp_a0;

    temp_s0 = D_800E1B50[omCurrentObj->objId];
    if (D_800D7098.unk10 != 0) {
        func_801EF1A4_ovl16(0xF);
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801DA3F4;
        func_801A03B4_ovl7();
        if (D_800E83E0[omCurrentObj->objId] == 1) {
            temp_a0 = temp_s0->unk3A;
            if (temp_a0 != -1) {
                temp_v0 = func_801A0244_ovl7(temp_a0);
                if (temp_v0 != -1) {
                    func_801EF3B0_ovl16(temp_v0, temp_s0->unk3A);
                    D_800E83E0[omCurrentObj->objId] = 0x12;
                    play_sound(0xF4);
                    temp_s0->unk94 = NULL;
                    temp_s0->unk40 = 1;
                    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_801A3E80_ovl7);
                }
            }
        }
    } else {
        func_800A7F74(6, 2, 0x10, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId],
                      gEntitiesNextPosZArray[omCurrentObj->objId]);
        play_sound(0x1FD);
        temp_s0->unk40 = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_801A3E80_ovl7);
    }
}

void func_801ECD28_ovl16(s32 arg0) {
    func_801A3280_ovl7();
    D_800DDA90[omCurrentObj->objId] = 0x26;
    func_8019BAC8_ovl7();
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_801EFD7C_ovl16[0]);
    while (1)
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_801EFD80_ovl16[0]);
}

void func_801ECDF8_ovl16(s32 arg0) {
    D_800E6A10[omCurrentObj->objId] = -1.0f;
    func_800A9864(0x100B4, 0x23, 0x10);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801ECE64_ovl16.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801ED07C_ovl16.s")

void func_801ED290_ovl16(s32 arg0) {
    func_801A3280_ovl7();
    func_8019BAC8_ovl7();
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 4, &D_801EFD84_ovl16[0]);
    while (1)
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_801EFD94_ovl16[0]);
}

void func_801ED338_ovl16(s32 arg0) {
    D_800E6A10[omCurrentObj->objId] = -1.0f;
    func_800A9864(0x10079, 0x23, 0x10);
    func_800AA018(0x10493);
    func_800AA018(0x10492);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801ED3BC_ovl16(s32 arg0) {
    D_800E6A10[omCurrentObj->objId] = -1.0f;
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801ED400_ovl16(s32 arg0) {
    D_800E6A10[omCurrentObj->objId] = -1.0f;
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801ED444_ovl16.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801ED634_ovl16.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801EDE50_ovl16.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801EE558_ovl16.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801EE970_ovl16.s")

void func_801EEF34_ovl16(struct GObj *arg0) {
    struct UnkStruct800E1B50 *sp2C;

    sp2C = D_800E1B50[omCurrentObj->objId];
    D_800DEF90[omCurrentObj->objId] = func_800B7560;
    D_800DF150[omCurrentObj->objId] = func_801EF080_ovl16;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AA018(0x1049D);
    func_800AA018(0x1049C);
    while (D_800D7098.unk10 != 0) {
        ohSleep(1);
    }
    func_800A7F74(6, 2, 0x17, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId],
                  gEntitiesNextPosZArray[omCurrentObj->objId]);
    play_sound(0x1CD);
    sp2C->unk40 = 1;
    func_801A3E80_ovl7(arg0);
}

void func_801EF080_ovl16(s32 arg0) {
    struct UnkStruct800E1B50 *temp_s0;
    s32 temp_v0;
    s8 temp_a0;

    temp_s0 = D_800E1B50[omCurrentObj->objId];
    func_801EF1A4_ovl16(0xA);
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801DA55C;
    func_801A03B4_ovl7();
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        temp_a0 = temp_s0->unk3A;
        if (temp_a0 != -1) {
            temp_v0 = func_801A0244_ovl7(temp_a0);
            if (temp_v0 != -1) {
                func_801EF3B0_ovl16(temp_v0, temp_s0->unk3A);
                D_800E83E0[omCurrentObj->objId] = 0x12;
                play_sound(0xF4);
                temp_s0->unk94 = NULL;
                temp_s0->unk40 = 1;
                assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_801A3E80_ovl7);
            }
        }
    }
}

void func_801EF1A4_ovl16(s32 arg0) {
    f32 temp_f0;
    f32 temp_f2;

    temp_f0 = arg0;
    temp_f2 = 280.0f - temp_f0;
    if (temp_f2 < gEntitiesNextPosXArray[omCurrentObj->objId]) {
        gEntitiesNextPosXArray[omCurrentObj->objId] = temp_f2;
        D_800E3050[omCurrentObj->objId] = -D_800E3050[omCurrentObj->objId];
    } else if (gEntitiesNextPosXArray[omCurrentObj->objId] < (-280.0f + temp_f0)) {
        gEntitiesNextPosXArray[omCurrentObj->objId] = -280.0f + temp_f0;
        D_800E3050[omCurrentObj->objId] = -D_800E3050[omCurrentObj->objId];
    }
    if (temp_f2 < gEntitiesNextPosYArray[omCurrentObj->objId]) {
        gEntitiesNextPosYArray[omCurrentObj->objId] = temp_f2;
        D_800E3210[omCurrentObj->objId] = -D_800E3210[omCurrentObj->objId];
    } else if (gEntitiesNextPosYArray[omCurrentObj->objId] < temp_f0) {
        gEntitiesNextPosYArray[omCurrentObj->objId] = temp_f0;
        D_800E3210[omCurrentObj->objId] = -D_800E3210[omCurrentObj->objId];
    }
}

void func_801EF2E8_ovl16(f32 arg0) {
    struct Ovl16AnimObj *temp_v0;

    temp_v0 = func_801A0464_ovl7();
    if (temp_v0 != NULL) {
        temp_v0->unk24->unk18 = arg0;
    }
    func_80111ECC(temp_v0);
    func_801A04B8_ovl7();
}

void func_801EF32C_ovl16(s32 arg0) {
    struct Ovl16AnimObj *temp_v0;

    temp_v0 = func_801A0464_ovl7();
    if (temp_v0 != NULL) {
        if (arg0 != 0) {
            temp_v0->unk24->unk8 = arg0;
            temp_v0->unk24->unk1C = D_800DFBD0[omCurrentObj->objId][3]->pos.v.y;
        }
        func_80111ECC(temp_v0);
    }
    func_80111ECC(temp_v0);
    func_801A04B8_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16/func_801EF3B0_ovl16.s")
