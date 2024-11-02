#include <ultra64.h>
#include <macros.h>
#include "ovl1/ovl1_6.h"
#include "D_8004A7C4.h"
#include "unk_structs/D_800D6C68.h"
#include "unk_structs/D_800DE350.h"

extern void (*D_8022F040_ovl19[])(struct GObj *);

void func_800AECC0(f32);
void func_800AED20(f32);
extern void func_800B1900(u16);
void func_8021E4B0_ovl19(struct GObj *);
void func_800F88C8(s32, s32, f32);//, f32);
void func_8021E7DC_ovl19(struct GObj *);
s32 func_800B3158(void);

void func_8021DF20_ovl19(struct GObj *arg0) {
    D_800E0650[D_8004A7C4->objId] = 0;
    func_800AECC0(D_800D6B10);
    func_800AED20(D_800D6B10);
    D_800E8760[D_8004A7C4->objId] = 0;
    D_800E83E0[D_8004A7C4->objId] = D_800E8760[D_8004A7C4->objId];
    call_virtual_function(gEntityVtableIndexArray[D_8004A7C4->objId], 0xA, &D_8022F040_ovl19[0]);
}

void func_8021DFD0_ovl19(void) {
    f32 tmpY; // supposedly the function call changes this value
    u32 temp_a3;

    func_800AECC0(D_800D6B10);
    func_800AED20(D_800D6B10);
    D_800DEF90[D_8004A7C4->objId] = func_8021E4B0_ovl19;
    D_800E8920[D_8004A7C4->objId] = 1;
    D_800E8AE0[D_8004A7C4->objId] = 0;
    D_800EC120[D_8004A7C4->objId] = -1;
    temp_a3 = D_800EC120[D_8004A7C4->objId];
    D_800EBF60[D_8004A7C4->objId] = temp_a3;
    D_800EBDA0[D_8004A7C4->objId] = temp_a3;
    D_800EBBE0[D_8004A7C4->objId] = temp_a3;
    tmpY = gEntitiesNextPosYArray[D_8004A7C4->objId];
    func_800F88C8(D_800DE350[D_8004A7C4->objId],
                  D_800E5F90[D_8004A7C4->objId],
                  D_800E6BD0[D_8004A7C4->objId]);
    gEntitiesNextPosYArray[D_8004A7C4->objId] = tmpY;
    D_800E6A10[D_8004A7C4->objId] = 1.0f;
    func_800F8E6C(D_800DE350[D_8004A7C4->objId]);
    gEntitiesAngleYArray[D_8004A7C4->objId] = D_800E17D0[D_8004A7C4->objId];
    D_800E6D90[D_8004A7C4->objId] = 666.66f;
}

void func_8021E184_ovl19(void) {
    u32 temp_a0;

    func_800AECC0(D_800D6B10);
    func_800AED20(D_800D6B10);
    D_800DEF90[D_8004A7C4->objId] = func_8021E7DC_ovl19;
    D_800E8920[D_8004A7C4->objId] = 1;
    D_800E8AE0[D_8004A7C4->objId] = 0;
    D_800EC120[D_8004A7C4->objId] = -1;
    temp_a0 = D_800EC120[D_8004A7C4->objId];
    D_800EBF60[D_8004A7C4->objId] = temp_a0;
    D_800EBDA0[D_8004A7C4->objId] = temp_a0;
    D_800EBBE0[D_8004A7C4->objId] = temp_a0;
    D_800E6A10[D_8004A7C4->objId] = 1.0f;
    D_800E17D0[D_8004A7C4->objId] = 0.0f;
    gEntitiesAngleYArray[D_8004A7C4->objId] = D_800E17D0[D_8004A7C4->objId];
    D_800E6D90[D_8004A7C4->objId] = 666.66f;
}

s32 func_8021E2D0_ovl19(u8 arg0, u8 arg1) {
    s32 idx;
    f32 temp_f0;
    u32 temp_a1;

    idx = request_track_general(0x20, 0x1E, 0x3C);
    if ((idx >= 0x3C) || (idx == -1)) {
        if (idx != -1) {
            func_800B1900(idx);
            idx = -1;
        }
        print_error_stub("reqHelpChildTrk  Request Error!![helplib.cc]\n");
    } else {
        D_800E7730[idx] = 7;
        D_800E77A0[idx] = arg0;
        D_800E7880[idx] = arg1;
        D_800E76C0[idx] = 0xFF;
        temp_a1 = D_800E5F90[D_8004A7C4->objId];
        D_800E6150[idx] = temp_a1;
        D_800E5F90[idx] = temp_a1;
        temp_f0 = D_800E6BD0[D_8004A7C4->objId];
        D_800E6D90[idx] = temp_f0;
        D_800E6BD0[idx] = temp_f0;
        gEntitiesNextPosXArray[idx] = gEntitiesNextPosXArray[D_8004A7C4->objId];
        gEntitiesPosXArray[idx] = gEntitiesPosXArray[D_8004A7C4->objId];
        gEntitiesNextPosYArray[idx] = gEntitiesNextPosYArray[D_8004A7C4->objId];
        gEntitiesPosYArray[idx] = gEntitiesPosYArray[D_8004A7C4->objId];
        gEntitiesNextPosZArray[idx] = gEntitiesNextPosZArray[D_8004A7C4->objId];
        gEntitiesPosZArray[idx] = gEntitiesPosZArray[D_8004A7C4->objId];
    }
    return idx;
}

// how
#ifdef NON_MATCHING
void func_8021E4B0_ovl19(struct GObj *arg0) {
    f32 tmp;

    func_800B4864();
    if (D_800E6BD0[D_8004A7C4->objId] != D_800E6D90[D_8004A7C4->objId]) {
        func_800B35F0();
        tmp = D_800E64D0[D_8004A7C4->objId];
        D_800E64D0[D_8004A7C4->objId] += (D_800E5510[D_8004A7C4->objId] + D_800E56D0[D_8004A7C4->objId]);
        func_800F8E6C(arg0);
        D_800E64D0[D_8004A7C4->objId] = tmp;
        func_800B4640();
        func_800B369C();
    }
    if (func_800B3158() == 0) {
        if (D_800E76C0[D_8004A7C4->objId] < 0x40) {
            D_800D6C68.unk28[D_8004A7C4->objId] &= 0x80;
        }
        func_800B1900((u16) D_8004A7C4->objId);
    }
}
#else
GLOBAL_ASM("asm/nonmatchings/ovl19/helplib/func_8021E4B0_ovl19.s")
#endif

// regalloc
#ifdef NON_MATCHING
void func_8021E5DC_ovl19(s32 arg0) {
    f32 tmp;

    func_800B4864();
    if (D_800E6BD0[D_8004A7C4->objId] != D_800E6D90[D_8004A7C4->objId]) {
        func_800B35F0();
        tmp = D_800E64D0[D_8004A7C4->objId];
        D_800E64D0[D_8004A7C4->objId] += (D_800E5510[D_8004A7C4->objId] + D_800E56D0[D_8004A7C4->objId]);
        func_800F8E6C(arg0);
        D_800E64D0[D_8004A7C4->objId] = tmp;
        func_800B4640();
        func_800B369C();
    }
    if (func_800B3158() == 0) {
        if (D_800EBBE0[D_8004A7C4->objId] != -1) {
            func_800B1900((u16) D_800EBBE0[D_8004A7C4->objId]);
        }
        if (D_800EBDA0[D_8004A7C4->objId] != -1) {
            func_800B1900((u16) D_800EBDA0[D_8004A7C4->objId]);
        }
        if (D_800EBF60[D_8004A7C4->objId] != -1) {
            func_800B1900((u16) D_800EBF60[D_8004A7C4->objId]);
        }
        if (D_800EC120[D_8004A7C4->objId] != -1 && D_800DE350[D_800EC120[D_8004A7C4->objId]] != 0) {
            func_8019D958_ovl7((u16) D_800EC120[D_8004A7C4->objId]);
        }
        if (D_800E76C0[D_8004A7C4->objId] < 0x40) {
            D_800D6C68.unk28[D_8004A7C4->objId] &= 0x80;
        }
        func_800B1900((u16) D_8004A7C4->objId);
    }
}
#else
GLOBAL_ASM("asm/nonmatchings/ovl19/helplib/func_8021E5DC_ovl19.s")
#endif

#ifdef NON_MATCHING
void func_8021E7DC_ovl19(struct GObj *arg0) {
    func_800B4024();
    if (gEntitiesNextPosXArray[D_8004A7C4->objId] != gEntitiesPosXArray[D_8004A7C4->objId]) {
        func_800B35F0();
        func_800B4924(arg0);
    }
    if (func_800B3158() == 0) {
        if (D_800E76C0[D_8004A7C4->objId] < 0x40) {
            D_800D6C68.unk28[D_800E76C0[D_8004A7C4->objId]] &= 0x80;
        }
        func_800B1900(D_8004A7C4->objId);
    }
}
#else
GLOBAL_ASM("asm/nonmatchings/ovl19/helplib/func_8021E7DC_ovl19.s")
#endif

// regalloc
#ifdef NON_MATCHING
void func_8021E894_ovl19(struct GObj *arg0) {
    func_800B4024();
    if (gEntitiesNextPosXArray[D_8004A7C4->objId] != gEntitiesPosXArray[D_8004A7C4->objId]) {
        func_800B35F0();
        func_800B4924(arg0);
    }
    if (func_800B3158() == 0) {
        if (D_800EBBE0[D_8004A7C4->objId] != -1) {
            func_800B1900(D_800EBBE0[D_8004A7C4->objId]);
        }
        if (D_800EBDA0[D_8004A7C4->objId] != -1) {
            func_800B1900(D_800EBDA0[D_8004A7C4->objId]);
        }
        if (D_800EBF60[D_8004A7C4->objId] != -1) {
            func_800B1900(D_800EBF60[D_8004A7C4->objId]);
        }
        if (D_800EC120[D_8004A7C4->objId] != -1) {
            if (D_800DE350[D_800EC120[D_8004A7C4->objId]] != 0) {
                func_8019D958_ovl7(D_800EC120[D_8004A7C4->objId]);
            }
        }
        if (D_800E76C0[D_8004A7C4->objId] < 0x40) {
            D_800D6C68.unk28[D_8004A7C4->objId] &= 0x80;
        }
        func_800B1900(D_8004A7C4->objId);
    }
}
#else
GLOBAL_ASM("asm/nonmatchings/ovl19/helplib/func_8021E894_ovl19.s")
#endif