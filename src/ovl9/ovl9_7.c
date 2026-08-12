#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "unk_structs/D_800E1B50.h"
#include "buffers.h"
#include "ovl1/ovl1_7.h"

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7/func_801F0060_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7/func_801F0548_ovl9.s")

extern u32 D_800BE4EC;
void func_801A0D74_ovl7();
void func_800A8100(s32, s32, s32, void *);
void func_801A03B4_ovl7(void);

void func_801F09E4_ovl9(GObj *arg0) {
    switch (D_800BE4EC % 6) {
    case 0:
        func_800A8100(3, 2, 0x4D, arg0->data.ptr);
        break;
    case 2:
        func_800A8100(3, 2, 0x4E, arg0->data.ptr);
        break;
    case 4:
        func_800A8100(3, 2, 0x4F, arg0->data.ptr);
        break;
    }
    func_801A0D74_ovl7(arg0);
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        func_801A03B4_ovl7();
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7/func_801F0ABC_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7/func_801F0DFC_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7/func_801F1044_ovl9.s")

void func_801A0D74_ovl7();
s32 func_801F1440_ovl9(f32);

void func_801F13B4_ovl9(void) {
    f32 temp;

    temp = D_800EA6E0[omCurrentObj->objId];
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    func_801A0D74_ovl7();
    func_801F1440_ovl9(D_800EA6E0[omCurrentObj->objId]);
}

struct Ovl9AnimCmd {
    u8 filler0[0x18];
    f32 unk18;
};

struct Ovl9AnimObj {
    u8 filler0[0x24];
    struct Ovl9AnimCmd *unk24;
};

void func_80111ECC(struct Ovl9AnimObj *);
struct Ovl9AnimObj *func_801A0464_ovl7(void);
void func_801A04B8_ovl7(void);

s32 func_801F1440_ovl9(f32 arg0) {
    struct Ovl9AnimObj *temp;
    UnkStruct800E1B50 *p;

    p = D_800E1B50[omCurrentObj->objId];
    if (p->unk8C == NULL) {
        return 0;
    }
    temp = func_801A0464_ovl7();
    temp->unk24->unk18 = temp->unk24->unk18 * arg0;
    func_80111ECC(temp);
    func_801A04B8_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7/func_801F14B8_ovl9.s")

void func_801F172C_ovl9(GObj *arg0) {
    D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 8.0f;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7/func_801F1784_ovl9.s")

void func_801A0D74_ovl7();
void func_801A03B4_ovl7(void);

void func_801F1C68_ovl9(void) {
    func_801A0D74_ovl7();
    func_801A03B4_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7/func_801F1C90_ovl9.s")

extern void func_800B6E84(struct GObj *);
void func_801F23E4_ovl9(void);
extern s32 D_801C9B48_ovl7;
extern struct Sub800E1B50_Unk98 D_801CD06C;
void func_800B33F4(void);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800A9864(s32, s32, s32);
void func_800AA018(s32);
/* +-0.5235988f: literals, this TU owns its .rodata */

void func_801F2238_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = &func_800B6E84;
    D_800DF150[omCurrentObj->objId] = &func_801F23E4_ovl9;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C9B48_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CD06C;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800A9864(0x100A3, 0x23, 0x10);
    func_800AA018(0x10563);
    func_800AA018(0x10562);
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.x = -0.5235988f;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * (sinf(0.5235988f) * 15.0f);
    D_800E3210[omCurrentObj->objId] = -cosf(0.5235988f) * 15.0f;
    curObjSleepForever();
}

void func_801A0D74_ovl7();
void func_801A03E4_ovl7(struct DObj *);

void func_801F23E4_ovl9(void) {
    func_801A0D74_ovl7();
    func_801A03E4_ovl7(D_800DFBD0[omCurrentObj->objId][1]);
}

extern s32 D_801C9B48_ovl7;
/* D_8021D8E4_ovl9: literal, this TU owns its .rodata */
void func_801F24FC_ovl9(struct GObj *);
void func_800B33F4(void);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800A9760(s32);
void func_800A9F98(s32, f32);
void func_801A3E80_ovl7(struct GObj *);

void func_801F2428_ovl9(GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = &func_801F24FC_ovl9;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C9B48_ovl7;
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800A9760(0x100A4);
    func_800A9F98(0x10564, 1.0f);
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.x = -0.5235988f;
    ohSleep(0xF);
    func_801A3E80_ovl7(arg0);
}

void func_801A03E4_ovl7(struct DObj *);

void func_801F24FC_ovl9(GObj *arg0) {
    func_801A03E4_ovl7(D_800DFBD0[omCurrentObj->objId][2]);
}

extern struct GObjProcess *gEntityGObjProcessArray[];
void func_800B33F4(void);
void func_801F2428_ovl9(struct GObj *);

void func_801F253C_ovl9(GObj *arg0) {
    func_800B33F4();
    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F2428_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7/func_801F2584_ovl9.s")

void func_801A0D74_ovl7();
void func_801A03B4_ovl7(void);

void func_801F2910_ovl9(void) {
    f32 dx;
    f32 dy;
    f32 dz;

    func_801A0D74_ovl7();
    dx = gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[omCurrentObj->objId];
    dy = (gEntitiesNextPosYArray[0] + 20.0f) - gEntitiesNextPosYArray[omCurrentObj->objId];
    dz = gEntitiesNextPosZArray[0] - gEntitiesNextPosZArray[omCurrentObj->objId];
    if (sqrtf((dx * dx) + (dy * dy) + (dz * dz)) < 80.0f) {
        func_801A03B4_ovl7();
    }
}

