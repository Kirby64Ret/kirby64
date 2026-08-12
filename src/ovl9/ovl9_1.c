#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "unk_structs/D_800E1B50.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"

extern FUNCLIST D_8021BAE8_ovl9;
extern FUNCLIST D_8021BB40_ovl9;
extern FUNCLIST D_8021BC00_ovl9;
extern FUNCLIST D_8021BC20_ovl9;
extern FUNCLIST D_8021BC40_ovl9;

extern s32 D_801C7F84_ovl7;
extern void func_800B6A2C(struct GObj *);
extern void func_801A0D50_ovl7(void *);
extern FUNCLIST D_8021BAB0_ovl9;
extern FUNCLIST D_8021BABC_ovl9;
void func_801D0FAC_ovl9(struct GObj *);
void func_801D0D78_ovl9(struct GObj *);

void func_801D0C60_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6A2C;
    D_800DF150[omCurrentObj->objId] = func_801D0FAC_ovl9;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C7F84_ovl7;
    func_801A0D50_ovl7(func_801D0D78_ovl9);
    D_800E8920[omCurrentObj->objId] = 1;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 3, &D_8021BAB0_ovl9);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 11, &D_8021BABC_ovl9);
    }
}

extern FUNCLIST D_8021BABC_ovl9;

void func_801D0D78_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 11, D_8021BABC_ovl9);
    }
}

void func_801D0DF8_ovl9(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = 5;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800E9C60[omCurrentObj->objId] = 100;
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        return;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 5;
}

void func_801D0E88_ovl9(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = 5;
    D_800E9AA0[omCurrentObj->objId].as_u32 = 1;
    D_800E9C60[omCurrentObj->objId] = 100;
    if (D_800E8920[omCurrentObj->objId] == 1) {
        *(u32 *) &gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        return;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 5;
}

void func_801D0F1C_ovl9(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = 5;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800E9C60[omCurrentObj->objId] = 100;
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        return;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 5;
}

void func_801D0FAC_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 8, &D_8021BAE8_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D0FF4_ovl9.s")

void func_801A0D74_ovl7();
void func_80199688_ovl7(struct GObj *);
void func_8019F3B0_ovl7(void);

void func_801D123C_ovl9(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId]--;
    if (D_800E98E0[omCurrentObj->objId] < 0) {
        D_800E98E0[omCurrentObj->objId] = 0;
    }
    func_801A0D74_ovl7(arg0);
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        func_80199688_ovl7(arg0);
    }
    func_8019F3B0_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D12DC_ovl9.s")

void func_801A0D74_ovl7();
void func_80199688_ovl7(struct GObj *);
void func_8019F3B0_ovl7(void);

void func_801D1678_ovl9(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId]--;
    if (D_800E98E0[omCurrentObj->objId] < 0) {
        D_800E98E0[omCurrentObj->objId] = 0;
    }
    func_801A0D74_ovl7(arg0);
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        func_80199688_ovl7(arg0);
    }
    func_8019F3B0_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D1718_ovl9.s")

void func_801A0D74_ovl7();
void func_80199688_ovl7(struct GObj *);
void func_8019F3B0_ovl7(void);

void func_801D1BCC_ovl9(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = D_800E98E0[omCurrentObj->objId] - 1;
    if (D_800E98E0[omCurrentObj->objId] < 0) {
        D_800E98E0[omCurrentObj->objId] = 0;
    }
    D_800E9C60[omCurrentObj->objId] = D_800E9C60[omCurrentObj->objId] - 1;
    if (D_800E9C60[omCurrentObj->objId] < 0) {
        D_800E9C60[omCurrentObj->objId] = 0;
    }
    func_801A0D74_ovl7(arg0);
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        func_80199688_ovl7(arg0);
    }
    func_8019F3B0_ovl7();
}

extern s32 D_801C7F84_ovl7;
extern struct Sub800E1B50_Unk98 D_801CB668;
/* D_8021CE6C_ovl9: literal, this TU owns its .rodata */
/* D_8021CE70_ovl9: literal, this TU owns its .rodata */
void func_800B3520(void);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800A9EA4(s32);
extern void ohSleep(s32);

void func_801D1CA8_ovl9(struct GObj *arg0) {
    s32 i;
    f32 step;

    D_800DEF90[omCurrentObj->objId] = func_800B6A2C;
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C7F84_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB668;
    func_800B3520();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800E8920[omCurrentObj->objId] = 1;
    arg0->data.dobj->firstChild->angle.v.z = 0.0f;
    arg0->data.dobj->firstChild->angle.v.x =
    arg0->data.dobj->firstChild->angle.v.y = arg0->data.dobj->firstChild->angle.v.z;
    func_800A9EA4(0x10010);
    D_800E9020[omCurrentObj->objId] = 0.0f;
    step = -0.2617994f;
    for (i = 0; i < 6; i++) {
        D_800E9020[omCurrentObj->objId] = (D_800E6A10[omCurrentObj->objId] * step) + D_800E9020[omCurrentObj->objId];
        ohSleep(1);
    }
    i--;
    D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
    D_800E9020[omCurrentObj->objId] = -D_800E9020[omCurrentObj->objId];
    if (i != 0) {
        step = 0.2617994f;
        do {
            D_800E9020[omCurrentObj->objId] = (D_800E6A10[omCurrentObj->objId] * step) + D_800E9020[omCurrentObj->objId];
            ohSleep(1);
            i--;
        } while (i != 0);
    }
    D_800E9020[omCurrentObj->objId] = 0.0f;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 1;
    D_800E9C60[omCurrentObj->objId] = 0xC8;
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D1F30_ovl9.s")

void func_801A0D74_ovl7();
void func_8019F3B0_ovl7(void);

void func_801D2278_ovl9(void) {
    func_801A0D74_ovl7();
    func_8019F3B0_ovl7();
}

extern s32 D_801C7F84_ovl7;
extern struct Sub800E1B50_Unk98 D_801CB620;
void func_800B6A2C(struct GObj *);
void func_800B3520(void);
void func_800A9EA4(s32);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_801D336C_ovl9(struct GObj *);

void func_801D22A0_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6A2C;
    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C7F84_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB620;
    func_800B3520();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800E8920[omCurrentObj->objId] = 1;
    D_800E9020[omCurrentObj->objId] = 0.0f;
    D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
    func_800A9EA4((1.0f == D_800E6A10[omCurrentObj->objId]) ? 0x1000C : 0x1000B);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
    D_800E6850[omCurrentObj->objId] = 4.0f;
    func_801D336C_ovl9(arg0);
    D_800E9C60[omCurrentObj->objId] = 0xC8;
    gEntityFuncListIDArray[omCurrentObj->objId] = 3;
}

extern s32 D_801C7FCC_ovl7;
extern struct Sub800E1B50_Unk98 D_801CB5FC;
void func_800AA018(s32);

void func_801D2480_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6A2C;
    D_800DDFD0[omCurrentObj->objId] = 4;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C7FCC_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB5FC;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800B3520();
    D_800E9020[omCurrentObj->objId] = 0.0f;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    arg0->data.dobj->firstChild->angle.v.z = 0.0f;
    arg0->data.dobj->firstChild->angle.v.x = arg0->data.dobj->firstChild->angle.v.y = arg0->data.dobj->firstChild->angle.v.z;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    func_800AA018((1.0f == D_800E6A10[omCurrentObj->objId]) ? 0x10009 : 0x10008);
    D_800E3210[omCurrentObj->objId] = -16.0f;
    D_800E3C90[omCurrentObj->objId] = 16.0f;
    curObjSleepForever();
}

void func_801A0D74_ovl7();
void func_8019F3B0_ovl7(void);

void func_801D2648_ovl9(void) {
    func_801A0D74_ovl7();
    func_8019F3B0_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D2670_ovl9.s")

void func_801A0D74_ovl7();
void func_80199688_ovl7(struct GObj *);
void func_8019F3B0_ovl7(void);

void func_801D29BC_ovl9(GObj *arg0) {
    func_801A0D74_ovl7(arg0);
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        func_80199688_ovl7(arg0);
    }
    func_8019F3B0_ovl7();
}

s32 func_8019A900_ovl7(s32 *);
f32 func_8019B608_ovl7(s32);
void func_801D0FF4_ovl9(struct GObj *, s32);

void func_801D2A14_ovl9(struct GObj *arg0) {
    s32 pad;
    s32 sp28;
    f32 temp;

    if (gEntitiesNextPosYArray[omCurrentObj->objId] < (gEntitiesNextPosYArray[0] + 20.0f)) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 8;
    } else {
        if (func_8019A900_ovl7(&sp28) != 0) {
            temp = (f32) sp28;
        } else {
            temp = func_8019B608_ovl7(0);
        }
        if (temp != D_800E6A10[omCurrentObj->objId]) {
            if (D_800E9AA0[omCurrentObj->objId].as_s32 == 1) {
                func_801D0FF4_ovl9(arg0, 0);
            }
            D_800E6A10[omCurrentObj->objId] = temp;
        }
        gEntityFuncListIDArray[omCurrentObj->objId] = 9;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D2B3C_ovl9.s")

void func_801A0D74_ovl7();
void func_8019F3B0_ovl7(void);

void func_801D2E14_ovl9(void) {
    func_801A0D74_ovl7();
    func_8019F3B0_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D2E3C_ovl9.s")

void func_801A0D74_ovl7();
void func_8019F3B0_ovl7(void);

void func_801D315C_ovl9(void) {
    func_801A0D74_ovl7();
    func_8019F3B0_ovl7();
}

extern s32 D_8021BB08_ovl9[];

void func_801D3184_ovl9(GObj *arg0) {
    if (gEntitiesNextPosYArray[omCurrentObj->objId] != gEntitiesPosYArray[omCurrentObj->objId]) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        if (gEntitiesPosYArray[omCurrentObj->objId] < gEntitiesNextPosYArray[omCurrentObj->objId]) {
            D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
        }
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = D_8021BB08_ovl9[D_800E7880[omCurrentObj->objId]];
    }
}

extern struct GObjProcess *gEntityGObjProcessArray[];
void func_801D0D78_ovl9(struct GObj *);

void func_801D3248_ovl9(GObj *arg0) {
    if (D_800E7880[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801D0D78_ovl9);
    }
}

void func_801D32B8_ovl9(GObj *arg0) {
    D_800E3C90[omCurrentObj->objId] = ABSF((D_800E8AE0[omCurrentObj->objId] & 1) ? 4.0f : 16.0f);
}

void func_800AECC0(f32);
void func_800AED20(f32);

void func_801D336C_ovl9(GObj *arg0) {
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 2;
        func_800AECC0(gameTicksPerDraw * 0.5f);
        func_800AED20(gameTicksPerDraw * 0.5f);
    }
}

extern s32 D_801C324C;
extern s32 D_801C8038_ovl7;
extern FUNCLIST D_8021BB14_ovl9;
extern FUNCLIST D_8021BB30_ovl9;
void func_80198880_ovl7(void *);
void func_801D3698_ovl9(struct GObj *);
void func_801D3618_ovl9(struct GObj *);
void func_801A0D50_ovl7(void *);

void func_801D3414_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    func_80198880_ovl7(&D_801C324C);
    ent->unk39 = -1;
    D_800DF150[omCurrentObj->objId] = func_801D3698_ovl9;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C8038_ovl7;
    func_801A0D50_ovl7(func_801D3618_ovl9);
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800E98E0[omCurrentObj->objId] = D_800E5F90[omCurrentObj->objId];
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800EA6E0[omCurrentObj->objId] = D_800E6BD0[omCurrentObj->objId];
    D_800EA8A0[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId];
    D_800EAA60[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
    D_800EAC20[omCurrentObj->objId] = gEntitiesNextPosZArray[omCurrentObj->objId];
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 7, &D_8021BB14_ovl9);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, &D_8021BB30_ovl9);
    }
}

extern FUNCLIST D_8021BB30_ovl9;

void func_801D3618_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, D_8021BB30_ovl9);
    }
}

void func_801D3698_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_8021BB40_ovl9);
}

extern void func_800B6FD8(s32);

void func_801D36E0_ovl9(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6FD8;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D3720_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D39F0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D3BE8_ovl9.s")

void func_801A3280_ovl7(void);
void func_800B33F4(void);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800A9EA4(s32);

void func_801D3E10_ovl9(GObj *arg0) {
    func_801A3280_ovl7();
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800A9EA4(0x1001F);
    curObjSleepForever();
}

void func_8019F3F0_ovl7(void);
void func_801D4C50_ovl9(void);

void func_801D3E7C_ovl9(GObj *arg0) {
    func_8019F3F0_ovl7();
    func_801D4C50_ovl9();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D3EA4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D4314_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D4594_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D47D4_ovl9.s")

/* D_8021CEA0_ovl9: literal, this TU owns its .rodata */
void func_8019F3F0_ovl7(void);
void func_801D4C50_ovl9(void);

void func_801D4BC8_ovl9(GObj *arg0) {
    D_800EAFA0[omCurrentObj->objId] = 0.2f + D_800EAFA0[omCurrentObj->objId];
    if (D_800EAFA0[omCurrentObj->objId] >= 1.0f) {
        D_800EAFA0[omCurrentObj->objId] = 1.0f;
    }
    func_8019F3F0_ovl7();
    func_801D4C50_ovl9();
}

/* D_8021CEA4_ovl9: literal, this TU owns its .rodata */
extern s32 func_800B3234(f32, f32, f32);
extern void func_8019D8A0(u16);
extern f32 sqrtf(f32);

void func_801D4C50_ovl9(void) {
    f32 dx;
    f32 dy;
    f32 dz;

    if ((func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]) != 0) &&
        (func_800B3234(D_800EA8A0[omCurrentObj->objId], D_800EAA60[omCurrentObj->objId], D_800EAC20[omCurrentObj->objId]) != 0)) {
        func_8019D8A0(((u16 *) omCurrentObj)[1]);
    } else {
        dx = gEntitiesNextPosXArray[omCurrentObj->objId] - D_800EA8A0[omCurrentObj->objId];
        dy = gEntitiesNextPosYArray[omCurrentObj->objId] - D_800EAA60[omCurrentObj->objId];
        dz = gEntitiesNextPosZArray[omCurrentObj->objId] - D_800EAC20[omCurrentObj->objId];
        if (20000.0f < sqrtf((dx * dx) + (dy * dy) + (dz * dz))) {
            func_8019D8A0(((u16 *) omCurrentObj)[1]);
        }
    }
}

void func_801D4D9C_ovl9(GObj *arg0) {
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] |= 1;
}

void func_801D4DCC_ovl9(GObj *arg0) {
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] |= 2;
}

extern s32 D_801CB6F8;
extern FUNCLIST D_8021BB4C_ovl9;
extern FUNCLIST D_8021BB54_ovl9;
extern void func_801A6C10_ovl7(struct GObj *);
void func_801D5080_ovl9(void);
void func_801D4F58_ovl9(struct GObj *);

void func_801D4DFC_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = func_801D5080_ovl9;
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D50_ovl7(func_801D4F58_ovl9);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB6F8;
    tmp->unk42 = 2;
    *(s8 *) &tmp->unk38 = -1;
    tmp->unk39 = -1;
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = -1;
        func_801A6C10_ovl7(arg0);
    }
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_8021BB4C_ovl9);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, &D_8021BB54_ovl9);
    }
}

extern FUNCLIST D_8021BB54_ovl9;

void func_801D4F58_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, D_8021BB54_ovl9);
    }
}

void func_800B33F4(void);

void func_801D4FD8_ovl9(GObj *arg0) {
    func_800B33F4();
    D_800E98E0[omCurrentObj->objId] = 0x1E;
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

void func_800B33F4(void);

void func_801D502C_ovl9(GObj *arg0) {
    func_800B33F4();
    D_800E98E0[omCurrentObj->objId] = 0x1E;
    gEntityFuncListIDArray[omCurrentObj->objId] = 3;
}

extern FUNCLIST D_8021BB68_ovl9;
void func_801A0D74_ovl7();

void func_801D5080_ovl9(void) {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7();
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 6, &D_8021BB68_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D50E4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D52F0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D56D0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D5850_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D5DB8_ovl9.s")

extern s32 D_801C7F84_ovl7;
extern s32 func_801D56D0_ovl9(void);
extern void ohSleep(s32);

void func_801D5FC8_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6FD8;
    D_800DDFD0[omCurrentObj->objId] = 2;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C7F84_ovl7;
    func_800A9EA4(0x1002C);
    func_800B33F4();
    ohSleep(0xF);
    D_800E9AA0[omCurrentObj->objId].as_s32 = func_801D56D0_ovl9();
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_8019F3B0_ovl7(void);

void func_801D60B0_ovl9(GObj *arg0) {
    if (D_800E98E0[omCurrentObj->objId] > 0) {
        D_800E98E0[omCurrentObj->objId]--;
    }
    func_8019F3B0_ovl7();
}

void func_800B6FD8(s32);
void func_800B7514(s32);

void func_801D6100_ovl9(struct GObj *arg0) {
    if (D_800E8E60[omCurrentObj->objId] == 0) {
        D_800DEF90[omCurrentObj->objId] = func_800B6FD8;
        D_800DDFD0[omCurrentObj->objId] = 3;
    } else {
        D_800DEF90[omCurrentObj->objId] = func_800B7514;
        D_800DDFD0[omCurrentObj->objId] = 4;
    }
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C7F84_ovl7;
    func_800B33F4();
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    func_800A9EA4(0x10028);
    while (gEntityFuncListIDArray[omCurrentObj->objId] == 3) {
        ohSleep(1);
    }
}

u32 eneCheckNearPlayer(f32);
void func_8019F3B0_ovl7(void);

void func_801D6244_ovl9(GObj *arg0) {
    if (D_800E98E0[omCurrentObj->objId] <= 0) {
        if (eneCheckNearPlayer(25600.0f) != 0) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 4;
        }
    }
    if (D_800E98E0[omCurrentObj->objId] > 0) {
        D_800E98E0[omCurrentObj->objId] = D_800E98E0[omCurrentObj->objId] - 1;
    }
    func_8019F3B0_ovl7();
}

void func_801D62F0_ovl9(GObj *arg0) {
}

void func_800AA154(s32);
s32 func_801ACC34_ovl7(s32, s32);
f32 func_801D650C_ovl9(s32);


void func_801D62F8_ovl9(s32 arg0) {
    f32 temp_f0;
    u32 temp_v1;
    u8 temp_a0;

    D_800DEF90[omCurrentObj->objId] = func_800B6FD8;
    D_800DDFD0[omCurrentObj->objId] = 5;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C7F84_ovl7;
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    temp_f0 = func_801D650C_ovl9(arg0);
    D_800EADE0[omCurrentObj->objId] = temp_f0;
    if (temp_f0 > 0.0f) {
        D_800E6A10[omCurrentObj->objId] = 1.0f;
    } else {
        D_800E6A10[omCurrentObj->objId] = -1.0f;
    }
    func_800AA154(0x10028);
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    D_800EBBE0[omCurrentObj->objId] = func_801ACC34_ovl7(3, 0);
    play_sound(0xA7);
    ohSleep(4);
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AA154(0x10023);
    D_800E98E0[omCurrentObj->objId] = 0x1E;
    temp_v1 = omCurrentObj->objId;
    temp_a0 = D_800E7880[temp_v1];
    switch (temp_a0) {                              /* irregular */
    case 0:
        gEntityFuncListIDArray[temp_v1] = 2;
        return;
    case 1:
        gEntityFuncListIDArray[temp_v1] = 3;
        return;
    }
}



void func_8019F3B0_ovl7(void);

void func_801D64EC_ovl9(GObj *arg0) {
    func_8019F3B0_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D650C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D66A0_ovl9.s")

extern FUNCLIST D_8021BBF4_ovl9;

void func_801D69D8_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, D_8021BBF4_ovl9);
    }
}

void func_801D6A58_ovl9(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = 5;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801D6A94_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 2, &D_8021BC00_ovl9);
}

void func_800AA018(s32);
f32 func_801D6C68_ovl9(void);

void func_801D6ADC_ovl9(s32 arg0) {
    f32 temp_f0;
    u32 temp_v0;

    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    func_800AA018(0x1004B);
    if (gEntityFuncListIDArray[omCurrentObj->objId] == 0) {
        do {
            temp_f0 = func_801D6C68_ovl9();
            if (temp_f0 < 240.0f) {
                gEntityFuncListIDArray[omCurrentObj->objId] = 1;
            }
            temp_v0 = omCurrentObj->objId * 4;
            if ((*(s32 *) ((u8 *) D_800E98E0 + temp_v0) <= 0) && (temp_f0 < 120.0f)) {
                *(s32 *) ((u8 *) gEntityFuncListIDArray + temp_v0) = 2;
            }
            ohSleep(1);
        } while (gEntityFuncListIDArray[omCurrentObj->objId] == 0);
    }
}

void func_801D6C30_ovl9(GObj *arg0) {
    if (D_800E98E0[omCurrentObj->objId] > 0) {
        D_800E98E0[omCurrentObj->objId]--;
    }
}

f32 func_801D6C68_ovl9(void) {
    f32 dx;
    f32 dy;
    f32 dz;

    dx = gEntitiesNextPosXArray[0] - D_800EAC20[omCurrentObj->objId];
    dy = (gEntitiesNextPosYArray[0] + 20.0f) - D_800EA8A0[omCurrentObj->objId];
    dz = gEntitiesNextPosZArray[0] - D_800EADE0[omCurrentObj->objId];
    return sqrtf((dx * dx) + (dy * dy) + (dz * dz));
}

f32 func_801D6C68_ovl9(void);
void func_801D6E44_ovl9(struct GObj *, s32, f32);

void func_801D6CFC_ovl9(struct GObj *arg0) {
    f32 temp;

    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800A9EA4(0x1004B);
    D_800DF310[omCurrentObj->objId] = func_801D6E44_ovl9;
    while (1) {
        temp = func_801D6C68_ovl9();
        if (240.0f < temp) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        }
        if ((D_800E98E0[omCurrentObj->objId] <= 0) && (temp < 120.0f)) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        }
        ohSleep(1);
    }
}

extern struct GObjProcess *gEntityGObjProcessArray[];
void func_801D69D8_ovl9(struct GObj *);

void func_801D6E44_ovl9(GObj *arg0, s32 arg1, f32 arg2) {
    if ((arg1 == 0) && ((s32) arg2 == 1)) {
        if (gEntityFuncListIDArray[omCurrentObj->objId] != 1) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801D69D8_ovl9);
        }
    }
}

extern s32 D_801C80C8_ovl7;
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800AA018(s32);
void func_800AF27C(void);

void func_801D6EBC_ovl9(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C80C8_ovl7;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AA018(0x1004A);
    D_800E98E0[omCurrentObj->objId] = 0x3C;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

s32 func_801D7064_ovl9(void *);
void func_801D7140_ovl9(struct GObj *);

void func_801D6F8C_ovl9(GObj *arg0) {
    D_800E9AA0[omCurrentObj->objId].as_s32 = D_800E9AA0[omCurrentObj->objId].as_s32 + 1;
    if (D_800E9AA0[omCurrentObj->objId].as_s32 == 0x19) {
        play_sound(0xA3);
    }
    if (D_800E9AA0[omCurrentObj->objId].as_s32 >= 0x15) {
        func_801D7064_ovl9(D_800DFBD0[omCurrentObj->objId][4]);
        if (D_800E83E0[omCurrentObj->objId] == 3) {
            func_801D7140_ovl9(arg0);
        }
    }
}

void func_801D705C_ovl9(GObj *arg0) {
}

struct Ovl9AnimCmdA {
    u8 filler0[8];
    void *unk8;
};

struct Ovl9AnimObjA {
    u8 filler0[0x24];
    struct Ovl9AnimCmdA *unk24;
};

struct Ovl9AnimHdrSubA {
    u8 filler0[4];
    s32 unk4;
};

struct Ovl9AnimHdrA {
    u8 filler0[8];
    struct Ovl9AnimHdrSubA *unk8;
};

void func_80111550(u32);
struct Ovl9AnimObjA *func_80111C88(s32 *, u32);
void func_80111ECC(struct Ovl9AnimObjA *);
s32 func_801D7330_ovl9(void);
s32 func_8019F650_ovl7(void);

s32 func_801D7064_ovl9(void *arg0) {
    struct UnkStruct800E1B50 *ent;
    u32 objId;
    struct Ovl9AnimObjA *anim;
    struct Ovl9AnimHdrSubA *hdr;

    ent = D_800E1B50[omCurrentObj->objId];
    if (ent == NULL) {
        return 0;
    }
    if (ent->unk8C == NULL) {
        return 0;
    }
    objId = omCurrentObj->objId;
    func_80111550(objId);
    anim = func_80111C88(ent->unk8C, omCurrentObj->objId);
    hdr = ((struct Ovl9AnimHdrA *) ent->unk8C)->unk8;
    if ((hdr->unk4 == 0) && (arg0 != NULL)) {
        anim->unk24->unk8 = arg0;
    }
    func_80111ECC(anim);
    if (func_801D7330_ovl9() == 0) {
        return func_8019F650_ovl7();
    }
    return 1;
}

extern s32 D_801C333C;
void func_800FD570(struct DObj *, u32, f32, f32, f32);
void func_800B2340(Vector *, struct DObj *, s32);
void func_801A2ADC_ovl7(u32);
void func_800A9760(s32);

void func_801D7140_ovl9(struct GObj *arg0) {
    s32 p0;
    Vector sp38;
    s32 p1;
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    func_800FD570(D_800DFBD0[omCurrentObj->objId][3], ent->unk94->unk18, 0.0f, 0.0f, 0.0f);
    func_800FD570(D_800DFBD0[omCurrentObj->objId][2], ent->unk94->unk18, 0.0f, 0.0f, 0.0f);
    func_800FD570(D_800DFBD0[omCurrentObj->objId][1], ent->unk94->unk18, 0.0f, 0.0f, 0.0f);
    if (ent->unk94->unk1C != 0x80000000) {
        play_sound(ent->unk94->unk1C);
    }
    func_800B2340(&sp38, D_800DFBD0[omCurrentObj->objId][4], 0xFFFF);
    D_800E5F90[omCurrentObj->objId] = D_800E9C60[omCurrentObj->objId];
    D_800E6BD0[omCurrentObj->objId] = D_800EAA60[omCurrentObj->objId];
    gEntitiesNextPosXArray[omCurrentObj->objId] = D_800EAC20[omCurrentObj->objId];
    gEntitiesNextPosZArray[omCurrentObj->objId] = D_800EADE0[omCurrentObj->objId];
    gEntitiesNextPosYArray[omCurrentObj->objId] = sp38.y;
    func_80198880_ovl7(&D_801C333C);
    func_801A2ADC_ovl7(ent->unk88->unk10);
    func_800A9760(0x10014);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D7330_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D74EC_ovl9.s")

extern FUNCLIST D_8021BC0C_ovl9;

void func_801D7838_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, D_8021BC0C_ovl9);
    }
}

void func_801D78B8_ovl9(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801D78F0_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_8021BC20_ovl9);
}

void func_800A9EA4(s32);

void func_801D7938_ovl9(GObj *arg0) {
    func_800A9EA4(0x100F8);
    animUpdateModelTreeAnimation(arg0);
}

f32 func_801D6C68_ovl9(void);
void func_800AA018(s32);

void func_801D7968_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AA018(0x100F8);
    while (gEntityFuncListIDArray[omCurrentObj->objId] == 0) {
        if ((D_800E98E0[omCurrentObj->objId] <= 0) && (func_801D6C68_ovl9() < 280.0f)) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        }
        ohSleep(1);
    }
}

void func_801D7A6C_ovl9(GObj *arg0) {
    if (D_800E98E0[omCurrentObj->objId] > 0) {
        D_800E98E0[omCurrentObj->objId]--;
    }
}

f32 func_801D6C68_ovl9(void);
void func_800AA154(s32);
void func_800AA018(s32);

void func_801D7AA4_ovl9(struct GObj *arg0) {
    f32 temp;

    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800AA154(0x100FA);
    func_800AA018(0x10100);
    while (gEntityFuncListIDArray[omCurrentObj->objId] == 1) {
        temp = func_801D6C68_ovl9();
        if (temp < 160.0f) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        } else if (280.0f < temp) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 4;
        }
        ohSleep(1);
    }
}

void func_801D7BE4_ovl9(GObj *arg0) {
}

extern f32 atan2f(f32, f32);
extern s32 D_8021BC2C_ovl9[];
void func_801D7E34_ovl9(s32, s32, f32);

void func_801D7BEC_ovl9(struct GObj *arg0) {
    f32 dx;
    f32 dz;

    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E9E20[omCurrentObj->objId] = 0;
    dx = gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[omCurrentObj->objId];
    dz = gEntitiesNextPosZArray[0] - gEntitiesNextPosZArray[omCurrentObj->objId];
    if (gEntitiesAngleYArray[omCurrentObj->objId] < atan2f(dx, dz)) {
        D_800E9AA0[omCurrentObj->objId].as_s32 = 1;
    } else {
        D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    }
    func_800AA018(D_8021BC2C_ovl9[D_800E9AA0[omCurrentObj->objId].as_s32]);
    D_800DF310[omCurrentObj->objId] = func_801D7E34_ovl9;
    func_800AF27C();
    ohSleep(0x32);
    D_800E98E0[omCurrentObj->objId] = 0x1E;
    gEntityFuncListIDArray[omCurrentObj->objId] = 4;
}

void func_801D7838_ovl9(struct GObj *);

void func_801D7D54_ovl9(struct GObj *arg0) {
    switch (D_800E9E20[omCurrentObj->objId]) {
    case 0xA:
        D_800E98E0[omCurrentObj->objId] = 0x1E;
        gEntityFuncListIDArray[omCurrentObj->objId] = 4;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801D7838_ovl9);
        break;
    case 1:
        D_800E98E0[omCurrentObj->objId] = 0x1E;
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801D7838_ovl9);
        break;
    }
}

s32 func_801ACD48_ovl7(s32, s32);
void utilGetTransformSRT(Vector *, struct DObj *);

void func_801D7E34_ovl9(s32 arg0, s32 arg1, f32 arg2) {
    s32 id;
    Vector sp20;
    struct DObj *p;

    if (arg1 == 0) {
        if ((s32) arg2 == 1) {
            id = func_801ACD48_ovl7(0xA, 0);
            if (id != 0) {
                p = (D_800E9AA0[omCurrentObj->objId].as_s32 != 0) ? D_800DFBD0[omCurrentObj->objId][7] : D_800DFBD0[omCurrentObj->objId][5];
                utilGetTransformSRT(&sp20, p);
                gEntitiesPosXArray[id] = sp20.x;
                gEntitiesNextPosXArray[id] = sp20.x;
                gEntitiesPosYArray[id] = sp20.y;
                gEntitiesNextPosYArray[id] = sp20.y;
                gEntitiesPosZArray[id] = sp20.z;
                gEntitiesNextPosZArray[id] = sp20.z;
                D_800E8E60[id] = 1;
                play_sound(0x169);
            }
        }
    }
}

void func_800AA864(s32, s32);

void func_801D7F4C_ovl9(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800AA864(0x100FC, 3);
    gEntityFuncListIDArray[omCurrentObj->objId] = 4;
}

void func_800AA154(s32);

void func_801D7FB4_ovl9(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800AA154(0x100FE);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

extern s32 D_801C89A0_ovl7;
extern FUNCLIST D_8021BC34_ovl9;
extern FUNCLIST D_8021BC38_ovl9;
extern void func_801A3280_ovl7(void);
extern void func_8019BB58_ovl7(void);
void func_801D8218_ovl9(struct GObj *);
void func_801D8198_ovl9(struct GObj *);

void func_801D8014_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk39 = -1;
    D_800EAFA0[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId];
    D_800EB160[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
    D_800EB320[omCurrentObj->objId] = gEntitiesNextPosZArray[omCurrentObj->objId];
    D_800DF150[omCurrentObj->objId] = func_801D8218_ovl9;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C89A0_ovl7;
    func_801A0D50_ovl7(func_801D8198_ovl9);
    func_801A3280_ovl7();
    func_8019BB58_ovl7();
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8021BC34_ovl9);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, &D_8021BC38_ovl9);
    }
}

extern FUNCLIST D_8021BC38_ovl9;

void func_801D8198_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, D_8021BC38_ovl9);
    }
}

void func_801D8218_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 2, &D_8021BC40_ovl9);
}

/* D_8021CEE8_ovl9: literal, this TU owns its .rodata */
extern s32 D_801C89A0_ovl7;
extern struct Sub800E1B50_Unk98 D_801CB470_ovl7;
void func_800B4924(struct GObj *);
void func_800B33F4(void);

void func_801D8260_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B4924;
    D_800E8E60[omCurrentObj->objId] = 1;
    gEntitiesScaleZArray[omCurrentObj->objId] = 2.0f;
    gEntitiesScaleXArray[omCurrentObj->objId] = gEntitiesScaleYArray[omCurrentObj->objId] = gEntitiesScaleZArray[omCurrentObj->objId];
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800EA6E0[omCurrentObj->objId] = 1.5707964f;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.x = D_800EA6E0[omCurrentObj->objId];
    D_800EAC20[omCurrentObj->objId] = 0.0f;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.y = D_800DFBD0[omCurrentObj->objId][2]->angle.v.z = D_800EAC20[omCurrentObj->objId];
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C89A0_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB470_ovl7;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801D8478_ovl9(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    ohSleep(0x14);
    while (D_800E98E0[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D8520_ovl9.s")

s32 func_801ACC34_ovl7(s32, s32);
void func_800AA018(s32);
void func_800AF27C(void);

void func_801D8C80_ovl9(GObj *arg0) {
    s32 temp;

    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800AA018(0x10020);
    temp = func_801ACC34_ovl7(0x42, 0);
    D_800EBBE0[omCurrentObj->objId] = temp;
    if (temp != 0) {
        D_800E8E60[D_800EBBE0[omCurrentObj->objId]] = 1;
        play_sound(0xA5);
    }
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801D8D44_ovl9(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D8D4C_ovl9.s")

