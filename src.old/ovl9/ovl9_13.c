#include <ultra64.h>
#include <macros.h>

#include "omCurrentObj.h"
#include "unk_structs/D_800E1B50.h"
#include "ovl1/ovl1_6.h"
// #include "buffers.h"

extern f32 D_801CB548;
extern s32 D_801CB4DC;
extern void func_801ACF5C_ovl7(void);

void func_8021A118_ovl9(struct GObj *);

// rodata
extern const f32 D_8021DEB0;

void func_802199D8_ovl9(struct GObj *this) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = func_801ACF5C_ovl7;
    tmp->unk98 = &D_801CB548;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9864(0x10087, 0x23, 0x10);
    func_8019BAC8_ovl9();
    if (D_800E98E0[omCurrentObj->objId] == 1) {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 6.0f;
        D_800E3210[omCurrentObj->objId] = 12.0f;
        D_800E3750[omCurrentObj->objId] = -1.0f;
        D_800E3C90[omCurrentObj->objId] = 21.8f;
    }
    ohSleep(0x3C);
    func_801ACF84_ovl7(this);
}

extern const f32 D_8021DEB4, D_8021DEB8, D_8021DEBC, D_8021DEC0;
void func_80219B1C_ovl9(struct GObj *this) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = func_801ACF5C_ovl7;
    tmp->unk98 = &D_801CB4DC;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9864(0x10087, 0x23, 0x10);
    func_8019BAC8_ovl9();
    switch (D_800E98E0[omCurrentObj->objId]) {
        case 2:
            D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.5f;
            D_800E3210[omCurrentObj->objId] = 9.6f;
            D_800E3750[omCurrentObj->objId] = -1.0f;
            D_800E3C90[omCurrentObj->objId] = 21.8f;
            break;
        case 3:
            D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 3.0f;
            D_800E3210[omCurrentObj->objId] = 7.2000002f;
            D_800E3750[omCurrentObj->objId] = -1.0f;
            D_800E3C90[omCurrentObj->objId] = 21.8f;
            break;
    }
    ohSleep(0x3C);
    func_801ACF84_ovl7(this);
}


#define DTOR(d) ((f32)((d) * (M_PI / 180.0)))

s32 func_80219CE8_ovl9(void) {
    if (D_800DD710[D_800E0D50[omCurrentObj->objId]] == -1) {
        return 0;
    }
    if (D_800EC660[omCurrentObj->objId] <= DTOR(85.0)
     || DTOR(275.0) <= D_800EC660[omCurrentObj->objId]
    ) {
        return 1;
    }
    if ((D_800EC660[omCurrentObj->objId] <= DTOR(185.0)) && (DTOR(175.0) <= D_800EC660[omCurrentObj->objId])) {
        return 2;
    }
    if ((D_800EC660[omCurrentObj->objId] <= DTOR(95.00001)) && (DTOR(85.0) <= D_800EC660[omCurrentObj->objId])) {
        return 3;
    }
    if ((D_800EC660[omCurrentObj->objId] <= DTOR(275.0)) && (DTOR(265.0) <= D_800EC660[omCurrentObj->objId])) {
        return 4;
    }
    return 0;
}

// incorrect control flow
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
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_13/func_80219E0C_ovl9.s")
#endif

void func_80219F70_ovl9(s32 this) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];
    
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    D_800DF150[omCurrentObj->objId] = func_8021A118_ovl9;
    tmp->unk98 = &D_801CB4DC;
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
    func_801A0D74_ovl9(this);
    if (D_800E8AE0[omCurrentObj->objId] & 0x10) {
        func_80219E0C_ovl9(D_800E9E20[omCurrentObj->objId], D_800E8AE0[omCurrentObj->objId] & 1);
    }
    if (D_800E9FE0[omCurrentObj->objId].as_s32 != 0) {
        func_801A03B4_ovl9();
    }
}

