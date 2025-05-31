#include <ultra64.h>
#include <macros.h>
#include "ovl1/ovl1_6.h"
#include "omCurrentObj.h"
#include "unk_structs/D_800E1B50.h"
#include "unk_structs/D_800D7098.h"
#include "unk_structs/D_800DE350.h"
#include "unk_structs/D_80129114.h"
#include "buffers.h"
#include "ovl2/ovl2_8.h"

#include "ovl12.h"

extern void func_800A77E8(s32, u32 *, u16 *);
extern void func_800AECC0(f32);
extern void func_800AED20(f32);

VTABLE D_801E2CF0_ovl12 = {
    func_801E1B90_ovl12,
    func_801E1890_ovl12
};

VTABLE D_801E2CF8_ovl12 = {
    func_801E1CD4_ovl12,
    func_801E1A60_ovl12
};


struct Work801E2E20 D_801E2E20_ovl12;


void func_801E1590_ovl12(GObj *arg0) {
    call_virtual_function(gEntityVtableIndexArray[omCurrentObj->objId], ARRAYLEN(D_801E2CF0_ovl12), D_801E2CF0_ovl12);
}

void func_801E15D8_ovl12(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        switch ((s32)arg2) {
            case 1:
                D_800E9C60[omCurrentObj->objId] = 1;
                if (D_801E2E20_ovl12.unk0 == 0) {
                    func_800A77E8(382, &D_801E2E20_ovl12.unk0, &D_801E2E20_ovl12.unk4);
                    return;
                }
                break;
            case 2:
                func_800AECC0(0.0f);
                func_800AED20(0.0f);
                break;
        }
    }
}

void func_801E1688_ovl12(GObj *arg0) {
    D_800DDA90[omCurrentObj->objId] = 0x25;
    D_800DF150[omCurrentObj->objId] = func_801E1804_ovl12;
    D_800DEF90[omCurrentObj->objId] = func_801D184C_ovl8;
    switch (D_800E98E0[omCurrentObj->objId]) {
        case 1:
            func_800A9864(0x100A9, 0x23, 0x10);
            D_801E2E20_ovl12.unk0 = 0;
            D_801E2E20_ovl12.unk4 = 0;
            break;
        case 2:
            func_800A9864(0x100AA, 0x23, 0x10);
            break;
        case 3:
            func_800A9864(0x100AB, 0x23, 0x10);
            break;
    }
    D_800E9C60[omCurrentObj->objId] = 0;
    gEntityVtableIndexArray[omCurrentObj->objId] = 1;
    call_virtual_function(gEntityVtableIndexArray[omCurrentObj->objId], 2, D_801E2CF0_ovl12);
    func_800AFA14();
}

void func_801E1804_ovl12(GObj *arg0) {
    struct UnkStruct8004A7C4_3C_10 *tmp = ((GObj*)D_800DE350[omCurrentObj->objId])->unk3C->unk10;

    call_virtual_function(D_800DDFD0[omCurrentObj->objId], ARRAYLEN(D_801E2CF8_ovl12), D_801E2CF8_ovl12);
    if (D_800E9C60[omCurrentObj->objId] != 0) {
        func_801A03E4_ovl7(tmp);
    }
}
