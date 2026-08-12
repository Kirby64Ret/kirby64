#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "main/math.h"
#include "ovl1/ovl1_6.h"
#include "unk_structs/D_800D7098.h"

extern void func_800B5C28(void);
extern void func_800B5FBC(struct GObj *);
extern void func_800B3234(f32, f32, f32);
extern void func_800B62AC(f32);
extern void func_800B31B4(void);
extern void func_800B4B9C(s32);
void func_801D1648_ovl8(void);
void func_801D1A64_ovl8(void);
extern void func_800B5A7C(void);
extern void func_800F8E6C(struct GObj *);
void func_801D0FB0_ovl8(struct GObj *);
void func_801D12A4_ovl8(void);
void func_801D1334_ovl8(void);

void func_801D0C60_ovl8(struct GObj *arg0) {
    func_800B5C28();
    gEntitiesNextPosXArray[omCurrentObj->objId] += (D_800E2090[omCurrentObj->objId] + D_800E3050[omCurrentObj->objId]);
    gEntitiesNextPosYArray[omCurrentObj->objId] += (D_800E2250[omCurrentObj->objId] + D_800E3210[omCurrentObj->objId]);
    gEntitiesNextPosZArray[omCurrentObj->objId] += (D_800E2410[omCurrentObj->objId] + D_800E33D0[omCurrentObj->objId]);
    func_800B5FBC(arg0);
}

void func_801D0D44_ovl8(struct GObj *arg0) {
    func_801D0C60_ovl8(arg0);
    while (M_TAU <= gEntitiesAngleYArray[omCurrentObj->objId]) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }
    D_800E17D0[omCurrentObj->objId] = gEntitiesAngleYArray[omCurrentObj->objId];
    func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}

void func_801D0E3C_ovl8(void) {
    f32 temp_f0;

    D_800E5890[omCurrentObj->objId] = 0.0f;
    /* the three empty blocks below are load-bearing for register allocation */
    if (1) { } if (1) { } if (1) { }
    temp_f0 = D_800E5890[omCurrentObj->objId];
    D_800E5C10[omCurrentObj->objId] = temp_f0;
    D_800E56D0[omCurrentObj->objId] = temp_f0;
    D_800E5510[omCurrentObj->objId] = temp_f0;
    func_800B62AC(0.0f);
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E9020[omCurrentObj->objId] + D_800E17D0[omCurrentObj->objId];
    while (M_TAU <= gEntitiesAngleYArray[omCurrentObj->objId]) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }
    func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}

void func_801D0FB0_ovl8(struct GObj *arg0) {
    func_800B5C28();
    gEntitiesNextPosXArray[omCurrentObj->objId] += (D_800E2090[omCurrentObj->objId] + D_800E3050[omCurrentObj->objId]);
    gEntitiesNextPosYArray[omCurrentObj->objId] += (D_800E2250[omCurrentObj->objId] + D_800E3210[omCurrentObj->objId]);
    gEntitiesNextPosZArray[omCurrentObj->objId] += (D_800E2410[omCurrentObj->objId] + D_800E33D0[omCurrentObj->objId]);
    func_800B5FBC(arg0);
}

void func_801D1094_ovl8(struct GObj *arg0) {
    func_801D0FB0_ovl8(arg0);
    while (M_TAU <= gEntitiesAngleYArray[omCurrentObj->objId]) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }
    D_800E17D0[omCurrentObj->objId] = gEntitiesAngleYArray[omCurrentObj->objId];
    func_800B31B4();
}

void func_801D1160_ovl8(void) {
    f32 temp_f0;

    D_800E5890[omCurrentObj->objId] = 0.0f;
    /* the three empty blocks below are load-bearing for register allocation */
    if (1) { } if (1) { } if (1) { }
    temp_f0 = D_800E5890[omCurrentObj->objId];
    D_800E5C10[omCurrentObj->objId] = temp_f0;
    D_800E56D0[omCurrentObj->objId] = temp_f0;
    D_800E5510[omCurrentObj->objId] = temp_f0;
    func_800B62AC(0.0f);
    while (M_TAU <= gEntitiesAngleYArray[omCurrentObj->objId]) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }
    func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}

/* Load-bearing: the 0.0f must NOT be a named local -- as a bare literal it
 * is a short-lived temp and lands in $f12, while `a` and `b` take $f0/$f2.
 * The D_800E2250 store is a DOUBLE 0.0 so it forks the second `mtc1 $zero`. */
void func_801D12A4_ovl8(void) {
    f32 a;
    f32 b;

    a = 0.0f - gEntitiesNextPosXArray[omCurrentObj->objId];
    b = 0.0f - gEntitiesNextPosZArray[omCurrentObj->objId];
    D_800E2090[omCurrentObj->objId] = D_800EB320[omCurrentObj->objId] * a;
    D_800E2410[omCurrentObj->objId] = D_800EB320[omCurrentObj->objId] * b;
    D_800E2250[omCurrentObj->objId] = 0.0;
}

/* 50/128, and instructions 0..32 are byte-identical. The whole residue starts
 * at the D_800E3210 copy in the first arm: the ROM materialises &D_800E3210 into
 * a base register ($t4) and addresses BOTH sides off it, IDO emits two separate
 * `lui $at` + %lo pairs. Same instruction count either way; the base register
 * shifts every temp number from that point on (and back to insn 33). */
#ifdef NON_MATCHING
void func_801D1334_ovl8(void) {
    extern struct UnkStruct800D7098 D_800D7098;

    func_800B5A7C();
    D_800E64D0[omCurrentObj->objId] += D_800E5510[omCurrentObj->objId] + D_800E56D0[omCurrentObj->objId];
    func_800F8E6C(D_800DE350[omCurrentObj->objId]);
    D_800E64D0[omCurrentObj->objId] -= D_800E5510[omCurrentObj->objId] + D_800E56D0[omCurrentObj->objId];
    if ((D_800E98E0[omCurrentObj->objId] != 0) && (D_800D7098.unk10 != 0)) {
        D_800E3210[omCurrentObj->objId] = D_800E3210[D_800D7098.unk0];
    } else if (D_800E9C60[omCurrentObj->objId] == 0) {
        D_800E3210[omCurrentObj->objId] = 0.0f;
    }
    func_801D12A4_ovl8();
    gEntitiesNextPosXArray[omCurrentObj->objId] += D_800E2090[omCurrentObj->objId];
    D_800EA6E0[omCurrentObj->objId] += D_800EA8A0[omCurrentObj->objId];
    gEntitiesNextPosYArray[omCurrentObj->objId] += D_800E3210[omCurrentObj->objId] + D_800EA6E0[omCurrentObj->objId];
    gEntitiesNextPosZArray[omCurrentObj->objId] += D_800E2410[omCurrentObj->objId];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8/func_801D1334_ovl8.s")
#endif


void func_801D152C_ovl8(void) {
    func_801D1334_ovl8();
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId] + (D_800E6A10[omCurrentObj->objId] * -(M_PIF / 2));
    while (M_TAU <= gEntitiesAngleYArray[omCurrentObj->objId]) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }
    func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8/func_801D1648_ovl8.s")

void func_801D17F4_ovl8(void) {
    func_801D1648_ovl8();
    func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}

void func_800B26D8(Vector *, struct DObj *, u32);
void func_800B3234(f32, f32, f32);

void func_801D184C_ovl8(struct GObj *arg0) {
    s32 t;
    Vector sp28;
    struct DObj *d;

    t = D_800E0D50[omCurrentObj->objId] * 4;
    d = (*(struct GObj **) ((u8 *) D_800DE350 + t))->data.dobj->firstChild;
    if (D_800EA520[omCurrentObj->objId] != 0) {
        gEntitiesNextPosXArray[omCurrentObj->objId] = *(f32 *) ((u8 *) gEntitiesNextPosXArray + t);
        gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]];
        gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[D_800E0D50[omCurrentObj->objId]];
        func_800B26D8(&sp28, d, D_800E0D50[omCurrentObj->objId]);
        gEntitiesAngleXArray[omCurrentObj->objId] = sp28.x;
        gEntitiesAngleYArray[omCurrentObj->objId] = sp28.y;
        gEntitiesAngleZArray[omCurrentObj->objId] = sp28.z;
        func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
    }
}

void func_801D19B8_ovl8(struct GObj *arg0) {
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[D_800E0D50[omCurrentObj->objId]];
    func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}

void func_801D1A64_ovl8(void) {
    func_800B5A7C();
    D_800E64D0[omCurrentObj->objId] += D_800E5510[omCurrentObj->objId] + D_800E56D0[omCurrentObj->objId];
    func_800F8E6C(D_800DE350[omCurrentObj->objId]);
    D_800E64D0[omCurrentObj->objId] -= D_800E5510[omCurrentObj->objId] + D_800E56D0[omCurrentObj->objId];
    func_801D12A4_ovl8();
    gEntitiesNextPosXArray[omCurrentObj->objId] += D_800E2090[omCurrentObj->objId];
    gEntitiesNextPosYArray[omCurrentObj->objId] += D_800E3210[omCurrentObj->objId];
    gEntitiesNextPosZArray[omCurrentObj->objId] += D_800E2410[omCurrentObj->objId];
}

void func_801D1BB0_ovl8(void) {
    func_801D1A64_ovl8();
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId] + (D_800E6A10[omCurrentObj->objId] * -(M_PIF / 2));
    while (M_TAU <= gEntitiesAngleYArray[omCurrentObj->objId]) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }
    func_800B31B4();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8/func_801D1CAC_ovl8.s")

void func_801D1E58_ovl8(s32 arg0) {
    func_800B4B9C(arg0);
    gEntitiesNextPosYArray[omCurrentObj->objId] = -20.0f;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8/func_801D1E98_ovl8.s")
