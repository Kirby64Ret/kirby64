#include <ultra64.h>
#include <macros.h>

#include "GObj.h"
#include "unk_structs/D_800E1B50.h"
#include "ovl1/ovl1_6.h"

extern f32 D_801CB548;
extern s32 D_801CB4DC_ovl7;
extern void func_801ACF5C_ovl7(void);

void func_8021A118_ovl9(struct GObj *);

/* D_8021DEB0_ovl9: literal, this TU owns its .rodata */

void func_802199E0_ovl9(struct GObj *this) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = func_801ACF5C_ovl7;
    tmp->unk98 = &D_801CB548;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9864(0x10087, 0x23, 0x10);
    func_8019BAC8_ovl7();
    if (D_800E98E0[omCurrentObj->objId] == 1) {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 6.0f;
        D_800E3210[omCurrentObj->objId] = 12.0f;
        D_800E3750[omCurrentObj->objId] = -1.0f;
        D_800E3C90[omCurrentObj->objId] = 21.8f;
    }
    ohSleep(0x3C);
    func_801ACF84_ovl7(this);
}

/* 9.6f / 21.8f / 7.2000003f: literals, this TU owns its .rodata */
void func_80219B1C_ovl9(struct GObj *this) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = func_801ACF5C_ovl7;
    tmp->unk98 = &D_801CB4DC_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9864(0x10087, 0x23, 0x10);
    func_8019BAC8_ovl7();
    switch (D_800E98E0[omCurrentObj->objId]) {
        case 2:
            D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.5f;
            D_800E3210[omCurrentObj->objId] = 9.6f;
            D_800E3750[omCurrentObj->objId] = -1.0f;
            D_800E3C90[omCurrentObj->objId] = 21.8f;
            break;
        case 3:
            D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 3.0f;
            D_800E3210[omCurrentObj->objId] = 7.2000003f;
            D_800E3750[omCurrentObj->objId] = -1.0f;
            D_800E3C90[omCurrentObj->objId] = 21.8f;
            break;
    }
    ohSleep(0x3C);
    func_801ACF84_ovl7(this);
}

extern f32 D_8021DEC4_ovl9, D_8021DEC8_ovl9, D_8021DECC_ovl9, D_8021DED0_ovl9;
extern f32 D_8021DED4_ovl9, D_8021DED8_ovl9;

/* 4 diffs: only the load order of D_8021DEC4_ovl9 vs D_800EC660 (registers
   $f0/$f2) differs; the no-local form gets the order right but swaps the
   registers. */
#ifdef NON_MATCHING
s32 func_80219CE8_ovl9(void) {
    f32 temp;

    if (D_800DD710[D_800E0D50[omCurrentObj->objId]] == -1) {
        return 0;
    }
    temp = D_800EC660[omCurrentObj->objId];
    if (temp <= D_8021DEC4_ovl9 || D_8021DEC8_ovl9 <= temp) {
        return 1;
    }
    if ((temp <= D_8021DECC_ovl9) && (D_8021DED0_ovl9 <= temp)) {
        return 2;
    }
    if ((temp <= D_8021DED4_ovl9) && (D_8021DEC4_ovl9 <= temp)) {
        return 3;
    }
    if ((temp <= D_8021DEC8_ovl9) && (D_8021DED8_ovl9 <= temp)) {
        return 4;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_17/func_80219CE8_ovl9.s")
#endif
#ifdef NON_MATCHING
void func_80219E0C_ovl9(s32 arg0, u32 halve) {
    f32 phi_f2;

    phi_f2 = halve ? 6.0f : 12.0f;

    switch (arg0) {
        case 1:
            if (D_800EC660[omCurrentObj->objId] == 0.0f) {
                D_800E64D0[omCurrentObj->objId] = -sinf(D_800EC660[omCurrentObj->objId]) * phi_f2;
                D_800E3210[omCurrentObj->objId] = cosf(D_800EC660[omCurrentObj->objId]) * phi_f2;
            }
            else {
                D_800E3210[omCurrentObj->objId] = phi_f2;
            }
            break;
        case 2:
            D_800E3210[omCurrentObj->objId] = -phi_f2;
            break;
        case 3:
        case 4:
            D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * phi_f2;
            break;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_17/func_80219E0C_ovl9.s")
#endif
void func_80219F70_ovl9(s32 this) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    D_800DF150[omCurrentObj->objId] = func_8021A118_ovl9;
    tmp->unk98 = &D_801CB4DC_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9864(0x10088, 0x23, 0x10);
    D_800E9E20[omCurrentObj->objId] = func_80219CE8_ovl9();
    switch (D_800E9E20[omCurrentObj->objId]) {
        case 1:
        case 2:
            break;
        case 3:
            D_800E6A10[omCurrentObj->objId] = -1.0f;
            break;
        case 4:
            D_800E6A10[omCurrentObj->objId] = 1.0f;
            break;
    }
    func_80219E0C_ovl9(D_800E9E20[omCurrentObj->objId], D_800E8AE0[omCurrentObj->objId] & 1);
    ohSleep(2);
    D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
    ohSleep(0x3C);
    func_801ACF84_ovl7(this);
}

void func_8021A118_ovl9(struct GObj *this) {
    func_801A0D74_ovl7(this);
    if (D_800E8AE0[omCurrentObj->objId] & 0x10) {
        func_80219E0C_ovl9(D_800E9E20[omCurrentObj->objId], D_800E8AE0[omCurrentObj->objId] & 1);
    }
    if (D_800E9FE0[omCurrentObj->objId].as_s32 != 0) {
        func_801A03B4_ovl7();
    }
}
