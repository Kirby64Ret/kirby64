#include <ultra64.h>
#include <macros.h>
#include "ovl1/ovl1_6.h"
#include "omCurrentObj.h"
#include "unk_structs/D_800E1B50.h"
#include "buffers.h"
#include "ovl0/ovl0_5.h"

extern VTABLE D_8021CE00_ovl9;
extern VTABLE D_8021CE04_ovl9;
extern VTABLE D_8021CE10_ovl9;
extern VTABLE D_8021CE1C_ovl9;
extern VTABLE D_8021CE20_ovl9;
extern VTABLE D_8021CE30_ovl9;
extern VTABLE D_8021CE40_ovl9;
extern VTABLE D_8021CE44_ovl9;
extern VTABLE D_8021CE4C_ovl9;

extern void func_800B67A8(void);
extern void func_800B742C(void);
void func_8021B424_ovl9(void);
extern s32 D_801CB470;

extern s32 D_801CD21C;
extern s32 D_8021B58C;
void func_8021B680_ovl9(void);

void func_8021A1A0_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = func_800B67A8;
    tmp->unk98 = &D_801CB470;
    func_8019BB58_ovl9();
    func_801A3280_ovl9();
    call_virtual_function(D_800E7880[omCurrentObj->objId], 1, &D_8021CE00_ovl9);
}

void func_8021A22C_ovl9(struct GObj *arg0) {
    while (1)
        call_virtual_function(gEntityVtableIndexArray[omCurrentObj->objId], 3, D_8021CE04_ovl9);
}

void func_8021A2B8_ovl9(void) {
    f32 phi_f2;
    s32 pad;
    s32 sp1C;

    phi_f2 = ABSF(D_800E64D0[0]);
    if (func_8019A900_ovl9(&sp1C) != 0) {
        if (sp1C == 1.0f) {
            D_800E9AA0[omCurrentObj->objId] = 1;
        } else {
            D_800E9AA0[omCurrentObj->objId] = -1;
        }
    } else {
        D_800E9AA0[omCurrentObj->objId] = -1;
    }
    if (phi_f2 < 2.0f) {
        D_800E98E0[omCurrentObj->objId] = 1;
    } else if (phi_f2 <= 5.0f) {
        D_800E98E0[omCurrentObj->objId] = 2;
    } else {
        D_800E98E0[omCurrentObj->objId] = 3;
    }
}

void func_8021A494_ovl9(struct GObj *arg0);

void func_8021A418_ovl9(struct GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800DF150[omCurrentObj->objId] = &func_8021A494_ovl9;
    gEntityVtableIndexArray[omCurrentObj->objId] = 0;
    func_8021A22C_ovl9(arg0);
}

void func_8021A494_ovl9(struct GObj *arg0) {
    call_virtual_function(D_800DDFD0[omCurrentObj->objId], 3, &D_8021CE10_ovl9);
}

void func_8021A4DC_ovl9(struct GObj *arg0) {
    s32 random;
    s32 i;

    D_800DDFD0[omCurrentObj->objId] = 0;
    while (1) {
        func_800AA154(0x105D5);
        random = random_soft_s32_range(4) + 1;
        for (i = 0; i < random; i++) {
            func_800AA154(0x105D6);
        }
        func_800AA154(0x105D7);
        ohSleep(0xF);
    }
}

void func_8021A9F0_ovl9(struct GObj *);

void func_8021A5C0_ovl9(struct GObj *arg0) {
    func_8021A9F0_ovl9(arg0);
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        gEntityVtableIndexArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8021A22C_ovl9);
    } else if (D_800E9C60[omCurrentObj->objId] != 0) {
        gEntityVtableIndexArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8021A22C_ovl9);
    }
}

void func_8021A678_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    switch (D_800E98E0[omCurrentObj->objId]) {
        case 1:
            if (((s32*)D_800E9AA0)[omCurrentObj->objId] == 1.0f) {
                func_800AA018(0x105D2);
            } else {
                func_800AA018(0x105CF);
            }
            break;
        case 2:
            if (((s32*)D_800E9AA0)[omCurrentObj->objId] == 1.0f) {
                func_800AA018(0x105D3);
            } else {
                func_800AA018(0x105D0);
            }
            break;
        case 3:
            if (((s32*)D_800E9AA0)[omCurrentObj->objId] == 1.0f) {
                func_800AA018(0x105D4);
            } else {
                func_800AA018(0x105D1);
            }
            break;
    }
    func_800AF27C();
    func_8019D958_ovl9((u16) omCurrentObj->objId);
}

void func_8021A7F4_ovl9(s32 arg0) {

}

void func_800AA608(struct UnkStruct8004A7C4_3C *, s32, f32, s32, f32);

void func_8021A7FC_ovl9(struct GObj *arg0) {
    D_800EA520[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 2;
    func_800AA608(arg0->unk3C, 0x105CC, 0, 0x100BF, 3.0f);
    func_800AA154(0x105CC);
    func_800AA018(0x105CD);
    while (D_800E9C60[omCurrentObj->objId] != 0) {
        ohSleep(1);
    }
    func_800AA608(arg0->unk3C, 0x105CE, 0, 0x100BF, 3.0f);
    func_800AA154(0x105CE);
    D_800EA520[omCurrentObj->objId] = 1;
    func_800AFA14();
}

#include "src/buffers.h"

void func_8021A93C_ovl9(struct GObj *arg0) {
    func_8021A9F0_ovl9(arg0);
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        gEntityVtableIndexArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8021A22C_ovl9);
        return;
    }
    if (D_800EA520[omCurrentObj->objId] != 0) {
        gEntityVtableIndexArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8021A22C_ovl9);
    }
}

GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_16/func_8021A9F0_ovl9.s")

void func_8021AB6C_ovl9(struct GObj *arg0) {
    func_8019BB58_ovl9();
    call_virtual_function(D_800E7880[omCurrentObj->objId], 1, D_8021CE1C_ovl9);
}

void func_8021ABB4_ovl9(struct GObj *arg0) {
    call_virtual_function(gEntityVtableIndexArray[omCurrentObj->objId], 4, D_8021CE20_ovl9);
}


void func_8019CD08_ovl9(f32);
void func_8021ACA4_ovl9(struct GObj *arg0);

void func_8021ABFC_ovl9(struct GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_8021ACA4_ovl9;
    gEntityVtableIndexArray[omCurrentObj->objId] = 0;
    func_8021B424_ovl9();
    func_8019CD08_ovl9(120.0f);
    D_800E9720[omCurrentObj->objId] = 0;
    call_virtual_function(gEntityVtableIndexArray[omCurrentObj->objId], 4, D_8021CE20_ovl9);
}

void func_8021ACA4_ovl9(struct GObj *arg0) {
    call_virtual_function(D_800DDFD0[omCurrentObj->objId], 4, D_8021CE30_ovl9);
}

void func_8021ACEC_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800A9EA4(0x105E1);
    func_800A9EA4(0x105E0);
    D_800E3050[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
    D_800E33D0[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    func_800AFA14();
}

GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_16/func_8021AD88_ovl9.s")

void func_8021B028_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    func_800A9EA4(0x105DF);
    func_800AA864(0x105DE, 1);
    func_800A9EA4(0x105E1);
    func_800A9EA4(0x105E0);
    D_800E9E20[omCurrentObj->objId] = 1;
    func_800AFA14();
}

extern f32 D_8021DEE8_ovl9;
void func_8021B0D0_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        D_800EA6E0[omCurrentObj->objId] = -D_800EA6E0[omCurrentObj->objId];
        D_800EA8A0[omCurrentObj->objId] = -D_800EA8A0[omCurrentObj->objId];
        D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
        gEntitiesAngleYArray[omCurrentObj->objId] += D_8021DEE8_ovl9;
        func_8019CD68_ovl7();
        gEntityVtableIndexArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8021ABB4_ovl9);
    }
}

void func_8021B1D0_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E9E20[omCurrentObj->objId] = 0;
    func_800A9EA4(0x105DB);
    func_800AA864(0x105DA, 1);
    D_800E9E20[omCurrentObj->objId] = 1;
    func_800A9EA4(0x105E3);
    func_800A9EA4(0x105E2);
    func_800AFA14();
}

s32 func_8019A7E8_ovl9(f32);
void func_8021B27C_ovl9(struct GObj *arg0) {
    if ((D_800E9E20[omCurrentObj->objId] != 0) && (func_8019A7E8_ovl9(120.0f) == 0)) {
        gEntityVtableIndexArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8021ABB4_ovl9);
    }
}

void func_8021B310_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E9E20[omCurrentObj->objId] = 0;
    func_800A9EA4(0x105DD);
    func_800AA864(0x105DC, 1);
    D_800E9E20[omCurrentObj->objId] = 1;
    func_800AFA14(); 
}

void func_8021B3A0_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        D_800E9720[omCurrentObj->objId] = 0x3C;
        gEntityVtableIndexArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8021ABB4_ovl9);
    }
}

extern f32 D_8021DEEC_ovl9;
void func_8021B424_ovl9(void) {
    Vector v;

    v.y = 0.0f;
    v.x = 0.0f;
    v.z = 1.0f;
    lbvector_Rotate(&v, AXIS_Y, gEntitiesAngleYArray[omCurrentObj->objId]);
    D_800EA6E0[omCurrentObj->objId] = 2.0f * v.x;
    D_800EA8A0[omCurrentObj->objId] = 2.0f * v.z;
    D_800E6A10[omCurrentObj->objId] =
        ((gEntitiesAngleYArray[omCurrentObj->objId] >= 0.0f)
      && (gEntitiesAngleYArray[omCurrentObj->objId] < D_8021DEEC_ovl9)) ? 1.0f : -1.0f;
}

void func_8021B528_ovl9(struct GObj *arg0) {
    func_8019BB58_ovl9();
    D_800DEF90[omCurrentObj->objId] = func_800B742C;
    call_virtual_function(D_800E7880[omCurrentObj->objId], 1, D_8021CE40_ovl9);
}

void func_8021B58C_ovl9(struct GObj *arg0) {
    call_virtual_function(gEntityVtableIndexArray[omCurrentObj->objId], 2, D_8021CE44_ovl9);
}

void func_8021B5D4_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *temp_v0 = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = func_8021B680_ovl9;
    gEntityVtableIndexArray[omCurrentObj->objId] = 0;
    temp_v0->unk42 = 2;
    temp_v0->unk98 = &D_801CD21C;
    func_801A0D50(func_8021B58C_ovl9);
    call_virtual_function(gEntityVtableIndexArray[omCurrentObj->objId], 2, D_8021CE44_ovl9);
}

void func_8021B680_ovl9(void) {
    if (func_801A0D74_ovl9() == 0) {
        call_virtual_function(D_800DDFD0[omCurrentObj->objId], 2, D_8021CE4C_ovl9);
    }
}

void func_8021B6D0_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800A9EA4(0x105E5);
    func_800AFA14();
}

extern s32 func_8019A7E8_ovl7(f32);

void func_8021B71C_ovl9(struct GObj *arg0) {
    struct GObj *temp_v0;

    if (func_8019A7E8_ovl7(160.0f) != 0) {
        gEntityVtableIndexArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &D_8021B58C);
    }
}

void func_8021B788_ovl9(struct GObj *arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9720[omCurrentObj->objId] = 0;
    D_800E93A0[omCurrentObj->objId] = -1;
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800AA864(0x105E6, 1);
    D_800E9E20[omCurrentObj->objId] = 1;
    func_800A9EA4(0x105E7);
    func_800AFA14();
}

#ifdef NON_MATCHING
void func_8021B848_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        if (D_800E9720[omCurrentObj->objId]-- == 0) {
            func_8021B8B0_ovl9(arg0);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_16/func_8021B848_ovl9.s")
#endif

GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_16/func_8021B8B0_ovl9.s")

void func_8021BA80_ovl9(s32 arg0) {
    func_801A2E64_ovl9();
    func_8021B8B0_ovl9(arg0);
}
