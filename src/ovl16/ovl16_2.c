/* Second translation unit of the ovl16 overlay.
 *
 * func_801E7EE0_ovl16 ended at +0xCD24 from ovl16.c's base and its listing
 * carried seven nops up to +0xCD40 -- 32-byte alignment, which IDO never emits
 * between two functions of one object. It is an OBJECT boundary, so ovl16's `c`
 * subsegment was really two TUs split at func_801E7F20_ovl16; the ROM's own
 * .rodata says the same, with three zero words at 0x801F0094 padding this
 * unit's block up to 0x801F00A0. kirby64.yaml carries the 0x10 text residue as
 * a `pad` subsegment. See AGENT_GUIDE.md, "THE MID-TU PADDING TRAP CLASS IS
 * NOT A TRAP". */

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

void func_801E7F20_ovl16(struct GObj *arg0) {
    extern s32 D_801DA268;
    struct UnkStruct800E1B50 *sp24;
    s32 flags;

    sp24 = D_800E1B50[omCurrentObj->objId];
    flags = D_800E7880[omCurrentObj->objId] & 3;
    func_801A3280_ovl7();
    D_800E17D0[omCurrentObj->objId] = D_800E17D0[D_800E0D50[omCurrentObj->objId]];
    D_800E9020[omCurrentObj->objId] = D_800E9020[D_800E0D50[omCurrentObj->objId]];
    D_800E98E0[omCurrentObj->objId] = 1;
    D_800DEF90[omCurrentObj->objId] = func_800B7560;
    D_800DF150[omCurrentObj->objId] = func_801E820C_ovl16;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801DA268;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    switch (flags) {
    case 0:
    case 2:
        gEntitiesNextPosYArray[omCurrentObj->objId] += D_801EFC10_ovl16[flags];
        break;
    case 1:
    case 3:
        gEntitiesNextPosXArray[omCurrentObj->objId] += D_801EFC10_ovl16[flags];
        break;
    }
    func_800A9864(0x100B2, 0x23, 0x10);
    func_800AA018(D_801EFC30_ovl16[flags]);
    func_800AA018(D_801EFC20_ovl16[flags]);
    while (D_800D7098.unk10 != 0) {
        ohSleep(1);
    }
    D_800E98E0[omCurrentObj->objId] = 0;
    func_800AECC0(gameTicksPerDraw * 2.0f);
    func_800AED20(gameTicksPerDraw * 2.0f);
    func_800AA018(D_801EFC50_ovl16[flags]);
    func_800AA154(D_801EFC40_ovl16[flags]);
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    sp24->unk40 = 1;
    func_801A3E80_ovl7(arg0);
}

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
                    func_801EF3B0_ovl16(temp_v0, (s8) temp_s0->unk3A);
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

void func_801E8490_ovl16(struct GObj *arg0) {
    struct UnkStruct800E1B50 *sp24;

    sp24 = D_800E1B50[omCurrentObj->objId];
    D_800DEF90[omCurrentObj->objId] = func_800B7560;
    D_800DF150[omCurrentObj->objId] = func_801E86F4_ovl16;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800B33F4();
    sp24->unk80->unk10 = 20.0f;
    D_800E17D0[omCurrentObj->objId] = D_800E17D0[D_800E0D50[omCurrentObj->objId]];
    D_800E9020[omCurrentObj->objId] = D_800E9020[D_800E0D50[omCurrentObj->objId]];
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9AA0[omCurrentObj->objId] = 0;
    func_800AA154((D_800E7880[omCurrentObj->objId] & 1) ? 0x105AB : 0x105A8);
    D_800E98E0[omCurrentObj->objId] = 1;
    while (D_800D7098.unk10 != 0) {
        ohSleep(1);
    }
    D_800E98E0[omCurrentObj->objId] = 0;
    func_800AECC0(gameTicksPerDraw * 4.0f);
    func_800AED20(gameTicksPerDraw * 4.0f);
    func_800AA154((D_800E7880[omCurrentObj->objId] & 1) ? 0x105AC : 0x105A9);
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    sp24->unk40 = 1;
    func_801A3E80_ovl7(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16_2/func_801E86F4_ovl16.s")

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

void func_801E8DD8_ovl16(s32 arg0) {
    D_800E6A10[omCurrentObj->objId] = -1.0f;
    func_800A9864(0x100B7, 0x23, 0x10);
    gEntitiesPosZArray[omCurrentObj->objId] = 10.0f;
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesPosZArray[omCurrentObj->objId];
    D_800E9E20[omCurrentObj->objId] = random_soft_s32_range(5);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

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

void func_801E9178_ovl16(struct GObj *arg0) {
    void func_801EF32C_ovl16(s32);
    void func_801E8D58_ovl16(s32);
    extern s32 D_801DA31C;

    if (D_800E98E0[omCurrentObj->objId] > 0) {
        D_800E98E0[omCurrentObj->objId]--;
    }
    if (D_800EA8A0[omCurrentObj->objId] < 0.0f) {
        D_800EA8A0[omCurrentObj->objId] = 0.0f;
    }
    D_800EAC20[omCurrentObj->objId] -= D_801EFCC0_ovl16[D_800EA1A0[omCurrentObj->objId]][D_800E9E20[omCurrentObj->objId]];
    if (D_800EAC20[omCurrentObj->objId] < 0.0f) {
        D_800EAC20[omCurrentObj->objId] = 0.0f;
    }
    if (D_800EAC20[omCurrentObj->objId] < D_800EAA60[omCurrentObj->objId]) {
        D_800EAA60[omCurrentObj->objId] = D_800EAC20[omCurrentObj->objId];
    }
    if (D_800EAA60[omCurrentObj->objId] < 0.0f) {
        D_800EAA60[omCurrentObj->objId] = 0.0f;
    }
    D_800DFBD0[omCurrentObj->objId][3]->pos.v.y = -D_800EAA60[omCurrentObj->objId];
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.z = D_800EA6E0[omCurrentObj->objId];
    if (D_800D7098.unk10 != 0) {
        if (((s32 *) D_800E9AA0)[omCurrentObj->objId] == 1) { D_800E1B50[omCurrentObj->objId]->unk8C = &D_801DA31C; } else { D_800E1B50[omCurrentObj->objId]->unk8C = &D_801DA2F8; }
        func_801EF32C_ovl16((s32) D_800DFBD0[omCurrentObj->objId][2]);
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 4;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E8D58_ovl16);
    }
}

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

void func_801E9590_ovl16(struct GObj *arg0) {
    void func_801EF32C_ovl16(s32);
    void func_801E8D58_ovl16(s32);
    extern s32 D_801DA31C;

    D_800EAC20[omCurrentObj->objId] -= D_801EFCC0_ovl16[D_800EA1A0[omCurrentObj->objId]][D_800E9E20[omCurrentObj->objId]];
    D_800EAC20[omCurrentObj->objId] -= D_800EA8A0[omCurrentObj->objId];
    if (D_800EAC20[omCurrentObj->objId] < 0.0f) {
        D_800EAC20[omCurrentObj->objId] = 0.0f;
    }
    if (D_800EAC20[omCurrentObj->objId] < D_800EAA60[omCurrentObj->objId]) {
        D_800EAA60[omCurrentObj->objId] = D_800EAC20[omCurrentObj->objId];
    }
    if (D_800EAA60[omCurrentObj->objId] < 0.0f) {
        D_800EAA60[omCurrentObj->objId] = 0.0f;
    }
    D_800DFBD0[omCurrentObj->objId][3]->pos.v.y = -D_800EAA60[omCurrentObj->objId];
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.z = D_800EA6E0[omCurrentObj->objId];
    if (D_800D7098.unk10 != 0) {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801DA31C;
        func_801EF32C_ovl16((s32) D_800DFBD0[omCurrentObj->objId][2]);
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 4;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E8D58_ovl16);
    }
}

void func_801E97AC_ovl16(s32 arg0) {
    func_8019BB58_ovl7();
    func_800B19F4(0x79, omCurrentObj->objId);
    func_800AFBB4(0, omCurrentObj);
    D_800DEF90[omCurrentObj->objId] = func_800B4924;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], &procMainStub);
    D_800DF150[omCurrentObj->objId] = NULL;
    func_8019D958_ovl7(omCurrentObj->objId);
}

/* UNGUARDED NON-MATCHING FUNCTION -- re-guarded by the coordinator.
 * Measured 188/238 diffs, which put 1101 differing byte-runs into
 * ovl16 and broke the ROM sha1. This is the failure mode the guide
 * calls out first: only check_tu_size/check_layout and the ROM hash
 * see it, and verify.py --all on the file does not.
 * Guard restored so the ROM matches; the draft is preserved for
 * whoever picks it up. */
#ifdef NON_MATCHING
// func_801E9858_ovl16: floored at 188/238. Structurally exact; single root cause:
// the ROM keeps `other` UNSCALED in $s1 and re-emits `sll r,$s1,2` at both use
// sites (before and after the call block); IDO folds other<<2 into one cached
// register, which rotates every later base register (v1/a0/a1 vs ROM a0/a1/a2).
// Swept: separate vs merged loop counter (merged flips $s1 to unscaled but caches
// the sll in $s3 instead: 194/238), embedded-assignment index, u32 cast on either
// site's index, u32 other, decl order, stmt2 via `other` (218). The variant below
// is the best (188) with `other`+`i` separate.
#ifdef NON_MATCHING
void func_801E9858_ovl16(struct GObj *arg0) {
    void func_801E9C10_ovl16(struct GObj *);
    s32 other;
    s32 i;

    D_800E17D0[omCurrentObj->objId] = D_800E17D0[other = D_800E0D50[omCurrentObj->objId]];
    D_800E9020[omCurrentObj->objId] = D_800E9020[D_800E0D50[omCurrentObj->objId]];
    func_8019BB58_ovl7();
    D_800DEF90[omCurrentObj->objId] = func_800B7560;
    D_800DF150[omCurrentObj->objId] = func_801E9C10_ovl16;
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800EB320[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId];
    D_800EB160[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
    D_800EA6E0[omCurrentObj->objId] = atan2f(-(gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[other]),
                                             gEntitiesNextPosYArray[0] - gEntitiesNextPosYArray[other]);
    D_800EA8A0[omCurrentObj->objId] = 8.0f;
    D_800EAA60[omCurrentObj->objId] = 0.0f;
    D_800EAC20[omCurrentObj->objId] = 160.0f;
    D_800E98E0[omCurrentObj->objId] = D_801EFC84_ovl16[D_800EA1A0[omCurrentObj->objId]][D_800E9E20[omCurrentObj->objId]];
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 1;
    D_800E9C60[omCurrentObj->objId] = 1;
    func_800AA018(0x105B6);
    func_800AA018(0x105B5);
    i = 0;
    while (D_800EAA60[omCurrentObj->objId] < D_800EAC20[omCurrentObj->objId]) {
        if (i >= 6) {
            D_800E9C60[omCurrentObj->objId] = 0;
        }
        D_800E3050[omCurrentObj->objId] = sinf(D_800EA6E0[omCurrentObj->objId]) * -D_800EA8A0[omCurrentObj->objId];
        D_800E3210[omCurrentObj->objId] = cosf(D_800EA6E0[omCurrentObj->objId]) * D_800EA8A0[omCurrentObj->objId];
        ohSleep(1);
        i++;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16_2/func_801E9858_ovl16.s")
#endif
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16_2/func_801E9858_ovl16.s")
#endif

void func_801E9C10_ovl16(struct GObj *arg0) {
    s32 func_801EB29C_ovl16(void);
    void func_801EF32C_ovl16(s32);
    void func_801E8D58_ovl16(s32);
    extern s32 D_801DA31C;

    D_800EAA60[omCurrentObj->objId] += D_800EA8A0[omCurrentObj->objId];
    if (D_800EAC20[omCurrentObj->objId] < D_800EAA60[omCurrentObj->objId]) {
        D_800EAA60[omCurrentObj->objId] = D_800EAC20[omCurrentObj->objId];
    }
    if (D_800E98E0[omCurrentObj->objId] > 0) {
        D_800E98E0[omCurrentObj->objId]--;
    }
    if (D_800EA8A0[omCurrentObj->objId] < 0.0f) {
        D_800EA8A0[omCurrentObj->objId] = 0.0f;
    }
    D_800EAC20[omCurrentObj->objId] -= D_801EFCC0_ovl16[D_800EA1A0[omCurrentObj->objId]][D_800E9E20[omCurrentObj->objId]];
    if (D_800EAC20[omCurrentObj->objId] < 0.0f) {
        D_800EAC20[omCurrentObj->objId] = 0.0f;
    }
    D_800DFBD0[omCurrentObj->objId][3]->pos.v.y = -D_800EAA60[omCurrentObj->objId];
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.z = D_800EA6E0[omCurrentObj->objId];
    if (D_800D7098.unk10 != 0) {
        if (func_801EB29C_ovl16() != 0) {
            D_800EAA60[omCurrentObj->objId] = D_800EAC20[omCurrentObj->objId];
            gEntityFuncListIDArray[omCurrentObj->objId] = 1;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E8D58_ovl16);
        }
        if (((s32 *) D_800E9AA0)[omCurrentObj->objId] == 1) { D_800E1B50[omCurrentObj->objId]->unk8C = &D_801DA31C; } else { D_800E1B50[omCurrentObj->objId]->unk8C = &D_801DA2F8; }
        func_801EF32C_ovl16((s32) D_800DFBD0[omCurrentObj->objId][2]);
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 4;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E8D58_ovl16);
    }
}

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

void func_801EA070_ovl16(struct GObj *arg0) {
    s32 func_801EB29C_ovl16(void);
    s32 func_801EB78C_ovl16(void);
    void func_801EF32C_ovl16(s32);
    void func_801E8D58_ovl16(s32);
    extern s32 D_801DA31C;

    if (D_800E98E0[omCurrentObj->objId] > 0) {
        D_800E98E0[omCurrentObj->objId]--;
    }
    if (D_800EA8A0[omCurrentObj->objId] < 0.0f) {
        D_800EA8A0[omCurrentObj->objId] = 0.0f;
    }
    D_800EAC20[omCurrentObj->objId] -= D_801EFCC0_ovl16[D_800EA1A0[omCurrentObj->objId]][D_800E9E20[omCurrentObj->objId]];
    if (D_800EAC20[omCurrentObj->objId] < 0.0f) {
        D_800EAC20[omCurrentObj->objId] = 0.0f;
    }
    if (D_800EAC20[omCurrentObj->objId] < D_800EAA60[omCurrentObj->objId]) {
        D_800EAA60[omCurrentObj->objId] = D_800EAC20[omCurrentObj->objId];
    }
    if (D_800EAA60[omCurrentObj->objId] < 0.0f) {
        D_800EAA60[omCurrentObj->objId] = 0.0f;
    }
    D_800DFBD0[omCurrentObj->objId][3]->pos.v.y = -D_800EAA60[omCurrentObj->objId];
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.z = D_800EA6E0[omCurrentObj->objId];
    if (D_800D7098.unk10 != 0) {
        func_801EB29C_ovl16();
        if (func_801EB78C_ovl16() != 0) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 3;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E8D58_ovl16);
        }
        if (((s32 *) D_800E9AA0)[omCurrentObj->objId] == 1) { D_800E1B50[omCurrentObj->objId]->unk8C = &D_801DA31C; } else { D_800E1B50[omCurrentObj->objId]->unk8C = &D_801DA2F8; }
        func_801EF32C_ovl16((s32) D_800DFBD0[omCurrentObj->objId][2]);
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 4;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E8D58_ovl16);
    }
}

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16_2/func_801EA568_ovl16.s")

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

void func_801EAF00_ovl16(struct GObj *arg0) {
    s32 func_801EB29C_ovl16(void);
    void func_801EF32C_ovl16(s32);
    void func_801E8D58_ovl16(s32);
    extern s32 D_801DA31C;

    D_800EAA60[omCurrentObj->objId] += D_800EA8A0[omCurrentObj->objId];
    if (D_800EAC20[omCurrentObj->objId] < D_800EAA60[omCurrentObj->objId]) {
        D_800EAA60[omCurrentObj->objId] = D_800EAC20[omCurrentObj->objId];
    }
    if (D_800E98E0[omCurrentObj->objId] > 0) {
        D_800E98E0[omCurrentObj->objId]--;
    }
    if (D_800EA8A0[omCurrentObj->objId] < 0.0f) {
        D_800EA8A0[omCurrentObj->objId] = 0.0f;
    }
    D_800EAC20[omCurrentObj->objId] -= D_801EFCC0_ovl16[D_800EA1A0[omCurrentObj->objId]][D_800E9E20[omCurrentObj->objId]];
    if (D_800EAC20[omCurrentObj->objId] < 0.0f) {
        D_800EAC20[omCurrentObj->objId] = 0.0f;
    }
    D_800DFBD0[omCurrentObj->objId][3]->pos.v.y = -D_800EAA60[omCurrentObj->objId];
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.z = D_800EA6E0[omCurrentObj->objId];
    if (D_800D7098.unk10 != 0) {
        func_801EB29C_ovl16();
        if (((s32 *) D_800E9AA0)[omCurrentObj->objId] == 1) { D_800E1B50[omCurrentObj->objId]->unk8C = &D_801DA31C; } else { D_800E1B50[omCurrentObj->objId]->unk8C = &D_801DA2F8; }
        func_801EF32C_ovl16((s32) D_800DFBD0[omCurrentObj->objId][2]);
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 4;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E8D58_ovl16);
    }
}

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

s32 func_801EB29C_ovl16(void) {
    s32 func_801EBD8C_ovl16(s32);
    f32 temp;

    if ((gEntitiesNextPosYArray[omCurrentObj->objId] > 280.0f) || (gEntitiesNextPosYArray[omCurrentObj->objId] < 0.0f) ||
        (gEntitiesNextPosXArray[omCurrentObj->objId] < -280.0f) || (gEntitiesNextPosXArray[omCurrentObj->objId] > 280.0f)) {
        func_801EBD8C_ovl16(1);
        if (gEntitiesNextPosXArray[omCurrentObj->objId] < -280.0f) {
            gEntitiesNextPosXArray[omCurrentObj->objId] += 560.0f;
            gEntitiesPosXArray[omCurrentObj->objId] += 560.0f;
        } else if (gEntitiesNextPosXArray[omCurrentObj->objId] > 280.0f) {
            gEntitiesNextPosXArray[omCurrentObj->objId] -= 560.0f;
            gEntitiesPosXArray[omCurrentObj->objId] -= 560.0f;
        } else {
            temp = gEntitiesNextPosXArray[omCurrentObj->objId] - gEntitiesPosXArray[omCurrentObj->objId];
            gEntitiesNextPosXArray[omCurrentObj->objId] = -gEntitiesNextPosXArray[omCurrentObj->objId];
            gEntitiesPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId] - temp;
        }
        if (gEntitiesNextPosYArray[omCurrentObj->objId] < 0.0f) {
            gEntitiesNextPosYArray[omCurrentObj->objId] += 280.0f;
            gEntitiesPosYArray[omCurrentObj->objId] += 280.0f;
        } else if (gEntitiesNextPosYArray[omCurrentObj->objId] > 280.0f) {
            gEntitiesNextPosYArray[omCurrentObj->objId] -= 280.0f;
            gEntitiesPosYArray[omCurrentObj->objId] -= 280.0f;
        } else {
            temp = gEntitiesNextPosYArray[omCurrentObj->objId] - gEntitiesPosYArray[omCurrentObj->objId];
            gEntitiesNextPosYArray[omCurrentObj->objId] = 140.0f - (gEntitiesNextPosYArray[omCurrentObj->objId] - 140.0f);
            gEntitiesPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId] - temp;
        }
        D_800E9C60[omCurrentObj->objId] = 0;
        return 1;
    }
    return 0;
}

s32 func_801EB51C_ovl16(void) {
    f32 temp;

    if ((gEntitiesNextPosYArray[omCurrentObj->objId] > 320.0f) || (gEntitiesNextPosYArray[omCurrentObj->objId] < -40.0f) ||
        (gEntitiesNextPosXArray[omCurrentObj->objId] < -300.0f) || (gEntitiesNextPosXArray[omCurrentObj->objId] > 300.0f)) {
        if (gEntitiesNextPosXArray[omCurrentObj->objId] < -300.0f) {
            gEntitiesNextPosXArray[omCurrentObj->objId] += 600.0f;
            gEntitiesPosXArray[omCurrentObj->objId] += 600.0f;
        } else if (gEntitiesNextPosXArray[omCurrentObj->objId] > 300.0f) {
            gEntitiesNextPosXArray[omCurrentObj->objId] -= 600.0f;
            gEntitiesPosXArray[omCurrentObj->objId] -= 600.0f;
        } else {
            temp = gEntitiesNextPosXArray[omCurrentObj->objId] - gEntitiesPosXArray[omCurrentObj->objId];
            gEntitiesNextPosXArray[omCurrentObj->objId] = -gEntitiesNextPosXArray[omCurrentObj->objId];
            gEntitiesPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId] - temp;
        }
        if (gEntitiesNextPosYArray[omCurrentObj->objId] < -40.0f) {
            gEntitiesNextPosYArray[omCurrentObj->objId] += 360.0f;
            gEntitiesPosYArray[omCurrentObj->objId] += 360.0f;
        } else if (gEntitiesNextPosYArray[omCurrentObj->objId] > 320.0f) {
            gEntitiesNextPosYArray[omCurrentObj->objId] -= 360.0f;
            gEntitiesPosYArray[omCurrentObj->objId] -= 360.0f;
        } else {
            temp = gEntitiesNextPosYArray[omCurrentObj->objId] - gEntitiesPosYArray[omCurrentObj->objId];
            gEntitiesNextPosYArray[omCurrentObj->objId] = 180.0f - (gEntitiesNextPosYArray[omCurrentObj->objId] - 180.0f);
            gEntitiesPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId] - temp;
        }
        D_800E9C60[omCurrentObj->objId] = 0;
        return 1;
    }
    return 0;
}

s32 func_801EB78C_ovl16(void) {
    s32 func_801EBD8C_ovl16(s32);
    f32 lbvector_Normalize(Vector *);
    Vector *func_800195D8(Vector *, Vector *);
    f32 dx;
    f32 dy;
    Vector sp44;
    Vector sp38;
    Vector sp2C;

    if (D_800E9C60[omCurrentObj->objId] == 0) {
    dx = gEntitiesNextPosXArray[omCurrentObj->objId] - gEntitiesNextPosXArray[D_800D7098.unk34];
    dy = gEntitiesNextPosYArray[omCurrentObj->objId] - gEntitiesNextPosYArray[D_800D7098.unk34];
    if (sqrtf(dx * dx + dy * dy) < 44.0f) {
        play_sound(0x1B1);
        func_801EBD8C_ovl16(2);
        sp38.x = gEntitiesNextPosXArray[omCurrentObj->objId] - gEntitiesNextPosXArray[D_800D7098.unk34];
        sp38.y = gEntitiesNextPosYArray[omCurrentObj->objId] - gEntitiesNextPosYArray[D_800D7098.unk34];
        sp38.z = 0.0f;
        lbvector_Normalize(&sp38);
        sp2C.x = gEntitiesNextPosXArray[omCurrentObj->objId] - gEntitiesPosXArray[omCurrentObj->objId];
        sp2C.y = gEntitiesNextPosYArray[omCurrentObj->objId] - gEntitiesPosYArray[omCurrentObj->objId];
        sp2C.z = 0.0f;
        lbvector_Normalize(&sp2C);
        func_800195D8(&sp2C, &sp38);
        D_800EA6E0[omCurrentObj->objId] = atan2f(-sp2C.x, sp2C.y);
        while (D_800EA6E0[omCurrentObj->objId] > 6.283185482f) {
            D_800EA6E0[omCurrentObj->objId] -= 6.283185482f;
        }
        while (D_800EA6E0[omCurrentObj->objId] < -6.283185482f) {
            D_800EA6E0[omCurrentObj->objId] += 6.283185482f;
        }
        D_800E3050[omCurrentObj->objId] = sinf(D_800EA6E0[omCurrentObj->objId]) * -D_800EA8A0[omCurrentObj->objId];
        D_800E3210[omCurrentObj->objId] = cosf(D_800EA6E0[omCurrentObj->objId]) * D_800EA8A0[omCurrentObj->objId];
        D_800E9C60[omCurrentObj->objId] = 1;
        return 1;
    }
    return 0;
    }
    return 0;
}

s32 func_801EBA98_ovl16(void) {
    f32 lbvector_Normalize(Vector *);
    Vector *func_800195D8(Vector *, Vector *);
    f32 dx;
    f32 dy;
    Vector sp44;
    Vector sp38;
    Vector sp2C;

    if (D_800E9C60[omCurrentObj->objId] == 0) {
    dx = gEntitiesNextPosXArray[omCurrentObj->objId] - gEntitiesNextPosXArray[D_800D7098.unk34];
    dy = gEntitiesNextPosYArray[omCurrentObj->objId] - gEntitiesNextPosYArray[D_800D7098.unk34];
    if (sqrtf(dx * dx + dy * dy) < 44.0f) {
        sp38.x = gEntitiesNextPosXArray[omCurrentObj->objId] - gEntitiesNextPosXArray[D_800D7098.unk34];
        sp38.y = gEntitiesNextPosYArray[omCurrentObj->objId] - gEntitiesNextPosYArray[D_800D7098.unk34];
        sp38.z = 0.0f;
        lbvector_Normalize(&sp38);
        sp2C.x = gEntitiesNextPosXArray[omCurrentObj->objId] - gEntitiesPosXArray[omCurrentObj->objId];
        sp2C.y = gEntitiesNextPosYArray[omCurrentObj->objId] - gEntitiesPosYArray[omCurrentObj->objId];
        sp2C.z = 0.0f;
        lbvector_Normalize(&sp2C);
        func_800195D8(&sp2C, &sp38);
        D_800EA6E0[omCurrentObj->objId] = atan2f(-sp2C.x, sp2C.y);
        while (D_800EA6E0[omCurrentObj->objId] > 6.283185482f) {
            D_800EA6E0[omCurrentObj->objId] -= 6.283185482f;
        }
        while (D_800EA6E0[omCurrentObj->objId] < -6.283185482f) {
            D_800EA6E0[omCurrentObj->objId] += 6.283185482f;
        }
        D_800E3050[omCurrentObj->objId] = sinf(D_800EA6E0[omCurrentObj->objId]) * -D_800EA8A0[omCurrentObj->objId];
        D_800E3210[omCurrentObj->objId] = cosf(D_800EA6E0[omCurrentObj->objId]) * D_800EA8A0[omCurrentObj->objId];
        D_800E9C60[omCurrentObj->objId] = 1;
        return 1;
    }
    return 0;
    }
    return 0;
}

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
                    func_801EF3B0_ovl16(temp_v0_3, (s8) temp_s0->unk3A);
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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16_2/func_801EC4B4_ovl16.s")

void func_801EC7E4_ovl16(s32 arg0) {
    extern s32 D_801DA3AC;
    s32 func_800B2340(Vector *, struct DObj *, s32);
    struct UnkStruct800E1B50 *sp3C;
    Vector sp30;

    sp3C = D_800E1B50[omCurrentObj->objId];
    if (D_800D7098.unk10 != 0) {
        switch (D_800E98E0[omCurrentObj->objId]) {
        case 0:
        case 1:
            if ((s32) D_800D7098.unk10 < 2) {
                func_800B2340(&sp30,
                              D_800DFBD0[D_800E0D50[omCurrentObj->objId]]
                                        [D_801EFD6C_ovl16[D_800E98E0[omCurrentObj->objId]]],
                              D_800E0D50[omCurrentObj->objId]);
                gEntitiesNextPosXArray[omCurrentObj->objId] = sp30.x;
                gEntitiesNextPosYArray[omCurrentObj->objId] = sp30.y;
                gEntitiesNextPosZArray[omCurrentObj->objId] = 0.0f;
            }
            break;
        case 2:
        case 3:
        default:
            if ((s32) D_800D7098.unk10 < 3) {
                func_800B2340(&sp30,
                              D_800DFBD0[D_800E0D50[omCurrentObj->objId]]
                                        [D_801EFD6C_ovl16[D_800E98E0[omCurrentObj->objId]]],
                              D_800E0D50[omCurrentObj->objId]);
                gEntitiesNextPosXArray[omCurrentObj->objId] = sp30.x;
                gEntitiesNextPosYArray[omCurrentObj->objId] = sp30.y;
                gEntitiesNextPosZArray[omCurrentObj->objId] = 0.0f;
            }
            break;
        }
        func_801EF1A4_ovl16(0x14);
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801DA3AC;
        func_801A03B4_ovl7();
    } else {
        func_800A7F74(6, 2, 0x10, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId],
                      gEntitiesNextPosZArray[omCurrentObj->objId]);
        play_sound(0x1FD);
        sp3C->unk40 = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_801A3E80_ovl7);
    }
}

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
                    func_801EF3B0_ovl16(temp_v0, (s8) temp_s0->unk3A);
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

void func_801ECE64_ovl16(struct GObj *arg0) {
    void func_800B7790(struct GObj *);
    void func_801ED07C_ovl16(struct GObj *);
    struct UnkStruct800E1B50 *sp24;
    s32 other;

    sp24 = D_800E1B50[omCurrentObj->objId];
    other = D_800E0D50[omCurrentObj->objId];
    sp24->unk80->unk10 = 10.0f;
    D_800E17D0[omCurrentObj->objId] = D_800E17D0[other];
    D_800E9020[omCurrentObj->objId] = D_800E9020[other];
    D_800E98E0[omCurrentObj->objId] = 0;
    *(s32 *) &D_800E9AA0[omCurrentObj->objId] = 0;
    if (0.0f < D_800EA8A0[other]) {
        D_800E9C60[omCurrentObj->objId] = 1;
    } else {
        D_800E9C60[omCurrentObj->objId] = 0;
    }
    D_800DEF90[omCurrentObj->objId] = func_800B7790;
    D_800DF150[omCurrentObj->objId] = func_801ED07C_ovl16;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800B33F4();
    func_800AA154(0x105A4);
    D_800E98E0[omCurrentObj->objId] = 1;
    func_800AA018(0x105A6);
    while (D_800D7098.unk10 != 0) {
        ohSleep(1);
    }
    D_800E98E0[omCurrentObj->objId] = 0;
    func_800AA154(0x105A5);
    func_8019BB58_ovl7();
    sp24->unk40 = 1;
    func_801A3E80_ovl7(arg0);
}

void func_801ED07C_ovl16(struct GObj *arg0) {
    extern s32 D_801DA43C;
    s32 func_800B2340(Vector *, struct DObj *, s32);
    struct UnkStruct800E1B50 *sp;
    Vector sp30;
    s32 t;

    sp = D_800E1B50[omCurrentObj->objId];
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.z =
        D_800DFBD0[D_800E0D50[omCurrentObj->objId]][1]->angle.v.z;
    func_800B2340(&sp30, D_800DFBD0[D_800E0D50[omCurrentObj->objId]][5],
                  D_800E0D50[omCurrentObj->objId]);
    gEntitiesNextPosXArray[omCurrentObj->objId] = sp30.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = sp30.y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = sp30.z;
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        func_801EF1A4_ovl16(0xA);
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801DA43C;
        func_801A03B4_ovl7();
        if (D_800E83E0[omCurrentObj->objId] != 0) {
            D_800D7098.unk38 = 1;
        }
        if (D_800E83E0[omCurrentObj->objId] == 1) {
            if (*(s8 *) &sp->unk3A != -1) {
                t = func_801A0244_ovl7(*(s8 *) &sp->unk3A);
                if (t != -1) {
                    func_801EF3B0_ovl16(t, *(s8 *) &sp->unk3A);
                    D_800E83E0[omCurrentObj->objId] = 0x12;
                    play_sound(0xF4);
                    sp->unk94 = NULL;
                    sp->unk40 = 1;
                    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId],
                                             func_801A3E80_ovl7);
                }
            }
        }
    }
}

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

#ifdef NON_MATCHING
/* 36/125 (target 124). Structure, control flow and all four `func_800AA038`
 * calls are right. The unlock was reading the THIRD argument out of the
 * listing: `lw $a2, 0x2C($sp)` before each call is `idx`, not a live-range
 * reload -- func_800AA038 is (s32, f32, s32) (see src/ovl1/ovl1_3.c) and the
 * `addiu $a1, $zero, 0` second argument is 0.0f. That alone took it 62 -> 36.
 * Residue: (a) the two compiler spill slots sit at 0x18/0x1C where the ROM has
 * 0x1C/0x20 -- pads in every position make it worse, not better; (b) the ROM
 * keeps `omCurrentObj` in $v0 across the last `if` so the final
 * `omCurrentObj->objId` re-read is `lw $v1, 0($v0)`, while IDO treats the
 * `*p = 0` store as an aliasing barrier and re-materialises the global
 * (one instruction long). Hoisting omCurrentObj into a local fixes the length
 * but takes $v0 away from `*p` and costs more (55/124). */
void func_801ED444_ovl16(s32 arg0) {
    extern void func_800AA038(s32, f32, s32);
    extern s32 D_800E9C60[];
    s32 idx = D_800D7098.unk34;
    s32 *p;

    func_8019BB58_ovl7();
    func_800B19F4(0x79, omCurrentObj->objId);
    func_800AFBB4(0, omCurrentObj);
    D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_800B4924;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_800DF150[omCurrentObj->objId] = NULL;
    p = &((s32 *) D_800E9AA0)[idx];
    if ((*p == 1) && (omCurrentObj->objId == D_800E9C60[idx])) {
        func_800AA038(0x104B0, 0.0f, idx);
        ohSleep(5);
    }
    if ((*p == 1) && (omCurrentObj->objId == D_800E9C60[idx])) {
        func_800AA038(0x104B2, 0.0f, idx);
        ohSleep(0x14);
    }
    if ((*p == 1) && (omCurrentObj->objId == D_800E9C60[idx])) {
        func_800AA038(0x104B4, 0.0f, idx);
        ohSleep(5);
    }
    if ((*p == 1) && (omCurrentObj->objId == D_800E9C60[idx])) {
        *p = 0;
    }
    func_8019D958_ovl7((u16) omCurrentObj->objId);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16_2/func_801ED444_ovl16.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16_2/func_801ED634_ovl16.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16_2/func_801EDE50_ovl16.s")

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
void func_801EE558_ovl16(GObj *arg0) {
    UnkStruct800E1B50 *sp44;
    s32 *sp34;
    s32 sp2C;
    f32 *var_v0;
    f32 var_f0;
    s32 *temp_v0;
    s32 temp_s0;
    s32 var_v1;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;
    u32 temp_v1_4;
    u32 temp_v1_5;
    u32 temp_v1_6;
    u32 temp_v1_7;

    temp_v1 = omCurrentObj->objId;
    temp_s0 = D_800E9C60[temp_v1];
    sp44 = D_800E1B50[temp_v1];
    D_800E17D0[temp_v1] = D_800E17D0[D_800E0D50[temp_v1]];
    temp_v1_2 = omCurrentObj->objId;
    D_800E9020[temp_v1_2] = D_800E9020[D_800E0D50[temp_v1_2]];
    D_800E9AA0[omCurrentObj->objId] = (struct EntityThing800E9AA0 *)1;
    D_800E9E20[omCurrentObj->objId] = 1;
    D_800E9FE0[omCurrentObj->objId].as_u32 = 0;
    D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_800B7560;
    D_800DF150[omCurrentObj->objId] = (void (*)(GObj *)) func_801EE970_ovl16;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    sp44->unk80->unk10 = 20.0f;
    sp2C = temp_s0 * 4;
    func_800A9864((&D_801EFDC0_ovl16)[temp_s0], 0x23, 0x10);
    func_800AA154(*(&D_801EFDC8_ovl16 + sp2C));
    temp_v1_3 = omCurrentObj->objId;
    var_v1 = temp_v1_3 * 4;
    var_v0 = &D_800EA6E0[temp_v1_3];
    var_f0 = *var_v0;
    if (var_f0 > 6.2831855f) {
        do {
            *var_v0 = var_f0 - 6.2831855f;
            temp_v1_4 = omCurrentObj->objId;
            var_v1 = temp_v1_4 * 4;
            var_v0 = &D_800EA6E0[temp_v1_4];
            var_f0 = *var_v0;
        } while (var_f0 > 6.2831855f);
    }
    if (var_f0 < -6.2831855f) {
        do {
            *var_v0 = var_f0 + 6.2831855f;
            temp_v1_5 = omCurrentObj->objId;
            var_v1 = temp_v1_5 * 4;
            var_v0 = &D_800EA6E0[temp_v1_5];
            var_f0 = *var_v0;
        } while (var_f0 < -6.2831855f);
    }
    *(D_800E9AA0 + var_v1) = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E3050[omCurrentObj->objId] = sinf(D_800EA6E0[omCurrentObj->objId]) * -4.0f;
    D_800E3210[omCurrentObj->objId] = cosf(D_800EA6E0[omCurrentObj->objId]) * 4.0f;
    func_800AA154(*(&D_801EFDD0_ovl16 + sp2C));
    temp_v0 = sp2C + &D_801EFDD8_ovl16;
    sp34 = temp_v0;
    func_800AA018(*temp_v0);
    if ((s32) D_800D7098.unk10 < 4) {
        do {
            ohSleep(1U);
        } while ((s32) D_800D7098.unk10 < 4);
    }
    func_800B33F4();
    if (sp34 != &D_801EFDD8_ovl16) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        return;
    }
    temp_v1_6 = omCurrentObj->objId;
    func_800A7F74(6, 2, 0x15, gEntitiesNextPosXArray[temp_v1_6], gEntitiesNextPosYArray[temp_v1_6], gEntitiesNextPosZArray[temp_v1_6]);
    temp_v1_7 = omCurrentObj->objId;
    func_800A7F74(6, 2, 0x16, gEntitiesNextPosXArray[temp_v1_7], gEntitiesNextPosYArray[temp_v1_7], gEntitiesNextPosZArray[temp_v1_7]);
    sp44->unk40 = 1;
    func_801A3E80_ovl7(arg0);
}
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16_2/func_801EE558_ovl16.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl16/ovl16_2/func_801EE970_ovl16.s")

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
                func_801EF3B0_ovl16(temp_v0, (s8) temp_s0->unk3A);
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

void func_801EF3B0_ovl16(s32 arg0, s32 arg1) {
    D_800E6BD0[arg0] = D_800E6BD0[arg1];
    D_800E5F90[arg0] = D_800E5F90[arg1];
    gEntitiesNextPosYArray[arg0] = gEntitiesNextPosYArray[arg1];
    D_800E6D90[arg0] = D_800E6D90[arg1];
    D_800E6150[arg0] = D_800E6150[arg1];
    gEntitiesPosYArray[arg0] = gEntitiesPosYArray[arg1];
    D_800E6A10[arg0] = D_800E6A10[arg1];
    gEntitiesAngleXArray[arg0] = gEntitiesAngleXArray[arg1];
    gEntitiesAngleYArray[arg0] = gEntitiesAngleYArray[arg1];
    gEntitiesAngleZArray[arg0] = gEntitiesAngleZArray[arg1];
    D_800E8E60[arg0] = 0;
}
