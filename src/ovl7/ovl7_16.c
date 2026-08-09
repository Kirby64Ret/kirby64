#include "common.h"

#include "GObj.h"
#include "unk_structs/D_800E1B50.h"
#include "DObj.h"
#include "ovl1/util.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"

void eneTurnCommon(s32);
s32 func_8019A7E8_ovl7(f32);
void func_801A3280_ovl7(void);
void func_801BE588_ovl7(GObj *);
void func_800A9760(s32);

struct Sub800E1B50_Unk34 *func_800A8100(s32, s32, s32, void *);
void func_801BDBDC_ovl7(GObj *);
void func_801BE1A8_ovl7(GObj *);

void assign_new_process_entry(struct GObjProcess *, void (*)(struct GObj *));
extern struct GObjProcess *gEntityGObjProcessArray[];
void func_801BE79C_ovl7(GObj *);
void func_801BDABC_ovl7(GObj *);

void func_800AA018(s32);
void curObjSleepForever(void);
void func_801BD88C_ovl7(GObj *);
void func_801BF1F4_ovl7(GObj *);

void func_801A0880_ovl7(void);
void func_801BE490_ovl7();

extern FUNCLIST D_801CD8B0_ovl7;
extern FUNCLIST D_801CD8B8_ovl7;
extern FUNCLIST D_801CD8C0_ovl7;
extern FUNCLIST D_801CD8DC_ovl7;
void func_800B67A8(GObj *);
void func_800B6684(GObj *);
void func_800B6474(GObj *);


void func_800B67A8(GObj *);
void func_800B6684(GObj *);
void func_800B6474(GObj *);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_16/func_801BD510_ovl7.s")

void func_801BD7C4_ovl7(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B67A8;
    D_800E8920[omCurrentObj->objId] = 0;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_801CD8B0_ovl7);
}

void func_801BD838_ovl7(GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801BD88C_ovl7;
    func_800AA018(0x105EF);
    curObjSleepForever();
}

void func_801BD88C_ovl7(GObj *arg0) {
    func_801A0880_ovl7();
}

void func_801BD8AC_ovl7(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B67A8;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800DF150[omCurrentObj->objId] = func_801BDABC_ovl7;
    func_800AA018(0x105F2);
    curObjSleepForever();
}

void func_801BD930_ovl7(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B67A8;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800DF150[omCurrentObj->objId] = func_801BDABC_ovl7;
    func_800AA018(0x105F3);
    curObjSleepForever();
}

void func_801BD9B4_ovl7(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B67A8;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800DF150[omCurrentObj->objId] = func_801BDABC_ovl7;
    func_800AA018(0x105F4);
    curObjSleepForever();
}

void func_801BDA38_ovl7(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B67A8;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800DF150[omCurrentObj->objId] = func_801BDABC_ovl7;
    func_800AA018(0x105F5);
    curObjSleepForever();
}

void func_801BDABC_ovl7(GObj *arg0) {
    func_801A0880_ovl7();
}

void func_801BDADC_ovl7(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B67A8;
    D_800E8920[omCurrentObj->objId] = 0;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_801CD8B8_ovl7);
}

void func_801BDB50_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = func_801BDBDC_ovl7;
    func_800AA018(0x105F0);
    func_800AA018(0x105F1);
    ent->unk34 = func_800A8100(0, 2, 0x34, arg0->data.dobj);
    curObjSleepForever();
}

void func_801BDBDC_ovl7(GObj *arg0) {
    func_801A0880_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_16/func_801BDBFC_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_16/func_801BDEB0_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_16/func_801BE068_ovl7.s")

void func_801BE10C_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];
    struct DObj *dobj = D_800DFBD0[omCurrentObj->objId][1];

    D_800DF150[omCurrentObj->objId] = func_801BE1A8_ovl7;
    func_800AA018(0x105F9);
    func_800AA018(0x105FA);
    ent->unk34 = func_800A8100(0, 2, 0x33, dobj);
    curObjSleepForever();
}

void func_801BE1A8_ovl7(GObj *arg0) {
    func_801A0880_ovl7();
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        D_800E7730[omCurrentObj->objId] = 6;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801BE79C_ovl7);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_16/func_801BE21C_ovl7.s")

void func_801BE3D8_ovl7(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6474;
    D_800E7880[omCurrentObj->objId] -= 2;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 7, &D_801CD8C0_ovl7);
}

void func_801BE450_ovl7(void) {
    D_800DEF90[omCurrentObj->objId] = func_800B67A8;
    func_801BE490_ovl7();
}

void func_801BE490_ovl7(arg0)
GObj *arg0;
{
    func_801A3280_ovl7();
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9760(0x100D2);
    D_800DF150[omCurrentObj->objId] = func_801BE588_ovl7;
    D_800EA6E0[omCurrentObj->objId] = D_800E5F90[omCurrentObj->objId];
    D_800EA8A0[omCurrentObj->objId] = D_800E6BD0[omCurrentObj->objId];
    D_800EAA60[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId];
    func_800AA018(0x10602);
    func_800AA018(0x10603);
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_16/func_801BE588_ovl7.s")

void func_801BE740_ovl7(void) {
    D_800DEF90[omCurrentObj->objId] = func_800B6684;
    D_800E7880[omCurrentObj->objId] -= 2;
    func_801BE490_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_16/func_801BE79C_ovl7.s")

void func_801BEE54_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent;
    s32 state;

    state = D_800E98E0[omCurrentObj->objId];
    ent = D_800E1B50[omCurrentObj->objId];

    if (state == 1) {
        func_801BEF18_ovl7();
        eneTurnCommon(2);
        if (ent->unk3C == 0) {
            if (func_8019A7E8_ovl7(30.0f) != 0) {
                D_800E98E0[omCurrentObj->objId] = 2;
            }
        }
    } else if (state == 2) {
        func_801BEF18_ovl7();
        eneTurnCommon(2);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_16/func_801BEF18_ovl7.s")

void func_801BF12C_ovl7(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B67A8;
    D_800E8920[omCurrentObj->objId] = 0;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_801CD8DC_ovl7);
}

void func_801BF1A0_ovl7(GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801BF1F4_ovl7;
    func_800AA018(0x10601);
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_16/func_801BF1F4_ovl7.s")

