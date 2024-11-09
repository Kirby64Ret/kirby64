#include <ultra64.h>
#include <macros.h>
#include "ovl18_1.h"
#include "D_8004A7C4.h"

extern f32 D_800E64D0[];
extern s32 D_800DD710[];
extern u32 D_801CB4DC;
extern s32 D_800E0D50[];
void func_80222168_ovl18(struct GObj *arg0);

void func_8019D958_ovl18(u16);

void func_80221E90_ovl18(s32 arg0) {
    u32 temp_a3;

    gEntitiesScaleZArray[D_8004A7C4->objId] = 2.0f;
    gEntitiesScaleXArray[D_8004A7C4->objId] = gEntitiesScaleYArray[D_8004A7C4->objId] = gEntitiesScaleZArray[D_8004A7C4->objId];
    D_800DF150[D_8004A7C4->objId] = &func_80222168_ovl18;
    D_800E1B50[D_8004A7C4->objId]->unk98 = &D_801CB4DC;
    D_800E8920[D_8004A7C4->objId] = 0;
    temp_a3 = D_800E0D50[D_8004A7C4->objId];

    if ((D_800DD710[temp_a3] == -1) || (D_8004A7C4->objId != D_800EBBE0[temp_a3])) {
        func_8019D958_ovl18(D_8004A7C4->objId);
    }

    D_800E6A10[D_8004A7C4->objId] = D_800E6A10[temp_a3];
    D_800EA6E0[D_8004A7C4->objId] = D_800EADE0[temp_a3];
    D_800E5F90[D_8004A7C4->objId] = D_800E5F90[temp_a3];
    D_800E6BD0[D_8004A7C4->objId] = D_800E6BD0[temp_a3];
    func_800B33F4(D_800E6A10, temp_a3 * 4, D_800E5F90, D_800E6BD0);
    func_800A9864(0x10089, 0x23, 0x10);
    func_800AA018(0x1051C);
    D_800E64D0[D_8004A7C4->objId] = sinf(D_800EA6E0[D_8004A7C4->objId]) * 30.0f;
    D_800E3210[D_8004A7C4->objId] = cosf(D_800EA6E0[D_8004A7C4->objId]) * 30.0f;
    finish_current_thread(1);
    D_800E64D0[D_8004A7C4->objId] = sinf(D_800EA6E0[D_8004A7C4->objId]) * 6.0f;
    D_800E3210[D_8004A7C4->objId] = cosf(D_800EA6E0[D_8004A7C4->objId]) * 6.0f;
    finish_current_thread(0x3C);
    D_801ACF84_ovl18(arg0);
}

extern u32 D_800BE4EC;
extern void func_800A8100(u32, u32, u32, u32);

void func_80222168_ovl18(struct GObj *arg0) {
    switch(D_800BE4EC % 6) {
        case 0: func_800A8100(3, 2, 0x4D, arg0->unk3C); break;
        case 2: func_800A8100(3, 2, 0x4E, arg0->unk3C); break;
        case 4: func_800A8100(3, 2, 0x4F, arg0->unk3C); break;
    }
    func_801A0D74_ovl18(arg0);
    func_801A03B4_ovl18();
}
