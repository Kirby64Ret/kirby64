#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"

extern FUNCLIST D_801F4290_ovl10;

void func_801A0D74_ovl7();
void func_801DD760_ovl10(void);
void func_801E28C8_ovl10(s32);
#include "buffers.h"
#include "ovl1/ovl1_7.h"
#include "unk_structs/D_800E1B50.h"
void func_801DBD38_ovl10(struct GObj *);

extern FUNCLIST D_801F4220_ovl10;
extern FUNCLIST D_801F4240_ovl10;
extern s32 D_800D6E40;
extern s32 D_800D6E18;
extern s32 D_800D6B6C[];
void func_8019D958_ovl7(u16);
void func_801DBDB8_ovl10(GObj *);

#ifdef MIPS_TO_C
/* 8 regalloc diffs: ROM uses $v0/$v1 for the D_800D6E40/D_800D6E18 addresses,
   IDO picks $v1/$a1. */
void func_801DBC00_ovl10(s32 arg0) {
    if (func_800B9DF8(2) && D_800D6B6C[1] == 0) {
        func_8019BB58_ovl7();
        D_800D6E40++;
        D_800D6E18++;
        func_8019D958_ovl7((u16)omCurrentObj->objId);
    }
    D_800DF150[omCurrentObj->objId] = &func_801DBDB8_ovl10;
    D_800E8920[omCurrentObj->objId] = 1;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 8, &D_801F4220_ovl10[0]);
    while (1)
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 0x14, &D_801F4240_ovl10[0]);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801DBC00_ovl10.s")
#endif

void func_801DBD38_ovl10(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 20, D_801F4240_ovl10);
    }
}

void func_801DBDB8_ovl10(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 18, &D_801F4290_ovl10);
}

s32 func_801DBF70_ovl10(s32, f32);

void func_801DBE00_ovl10(s32 arg0) {
    func_8019BB58_ovl7();
    func_800B19F4(0x7D, omCurrentObj->objId);
    func_800AFBB4(0, omCurrentObj);
    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_800DF150[omCurrentObj->objId] = NULL;
    D_800E98E0[omCurrentObj->objId] = func_801DBF70_ovl10(3, 0.0f);
    D_800E9AA0[omCurrentObj->objId].as_s32 = func_801DBF70_ovl10(4, 0.0f);
    D_800EBDA0[omCurrentObj->objId] = func_801DBF70_ovl10(1, 120.0f);
    D_800EBF60[omCurrentObj->objId] = func_801DBF70_ovl10(2, 120.0f);
    D_800EBBE0[omCurrentObj->objId] = func_801DBF70_ovl10(7, 0.0f);
    gEntitiesNextPosYArray[omCurrentObj->objId] = 100.0f;
    curObjSleepForever();
}

s32 func_801DBF70_ovl10(s32 arg0, f32 arg1) {
    s32 index = request_track_general(0x18, 0x1E, 0x3C);

    D_800E76C0[index] = 0xFF;
    D_800E7730[index] = 1;
    D_800E77A0[index] = 2;
    D_800E7880[index] = arg0;
    D_800E5F90[index] =
    D_800E6150[index] = D_800E5F90[omCurrentObj->objId];

    D_800E6BD0[index] =
    D_800E6D90[index] = D_800E6BD0[omCurrentObj->objId];

    gEntitiesNextPosXArray[index] =
    gEntitiesPosXArray[index] = gEntitiesNextPosXArray[omCurrentObj->objId];

    gEntitiesNextPosYArray[index] =
    gEntitiesPosYArray[index] = gEntitiesNextPosYArray[omCurrentObj->objId] + arg1;

    gEntitiesNextPosZArray[index] =
    gEntitiesPosZArray[index] = gEntitiesNextPosZArray[omCurrentObj->objId];
    D_800E0D50[index] = omCurrentObj->objId;
    D_800E8E60[index] = 0;
}

extern f32 *D_801F3F94_ovl10;
extern f32 *D_801F3FA8_ovl10;
extern struct Sub800E1B50_Unk98 D_801F4070_ovl10;
extern struct Sub800E1B50_Unk98 D_801F4094_ovl10;
void func_801A0D50_ovl7(void *);
void func_801A2ADC_ovl7();
void func_801A3280_ovl7(void);
extern void func_800B4954(s32);

void func_801DC0EC_ovl10(s32 arg0) {
    func_8019BB58_ovl7();
    func_800B19F4(0x71, omCurrentObj->objId);
    func_800AFBB4(0, omCurrentObj);
    D_800DEF90[omCurrentObj->objId] = &func_800B4954;
    D_800DDFD0[omCurrentObj->objId] = 0;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_800E6A10[omCurrentObj->objId] = (D_800E7880[omCurrentObj->objId] == 2) ? 1.0f : -1.0f;
    func_801A0D50_ovl7(&func_801DBD38_ovl10);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801F4094_ovl10;
    D_800E0490[omCurrentObj->objId] = &D_801F3F94_ovl10;
    func_801A2ADC_ovl7(&D_801F3F94_ovl10);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 10.0f;
    ohSleep(0x10);
    func_800B33F4();
    func_800B19F4(0x7D, omCurrentObj->objId);
    func_800AFBB4(0, omCurrentObj);
    D_800DEF90[omCurrentObj->objId] = NULL;
    D_800DF150[omCurrentObj->objId] = NULL;
    curObjSleepForever();
}

void func_801DC2BC_ovl10(void) {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7();
}

void func_801DC2F4_ovl10(s32 arg0) {
    func_8019BB58_ovl7();
    func_800B19F4(0x71, omCurrentObj->objId);
    func_800AFBB4(0, omCurrentObj);
    D_800DEF90[omCurrentObj->objId] = &func_800B4954;
    D_800DDFD0[omCurrentObj->objId] = 0;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_800E6A10[omCurrentObj->objId] = (D_800E7880[omCurrentObj->objId] == 4) ? 1.0f : -1.0f;
    D_800E8920[omCurrentObj->objId] = 0;
    gEntitiesPosYArray[omCurrentObj->objId] = 140.0f;
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesPosYArray[omCurrentObj->objId];
    func_801A0D50_ovl7(&func_801DBD38_ovl10);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801F4070_ovl10;
    D_800E0490[omCurrentObj->objId] = &D_801F3FA8_ovl10;
    func_801A2ADC_ovl7(&D_801F3FA8_ovl10);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 10.0f;
    curObjSleepForever();
}

void func_801DC4BC_ovl10(s32 arg0) {
    D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 10.0f;
    ohSleep(6);
    func_800B33F4();
    func_800B19F4(0x7D, omCurrentObj->objId);
    func_800AFBB4(0, omCurrentObj);
    D_800DEF90[omCurrentObj->objId] = NULL;
    D_800DF150[omCurrentObj->objId] = NULL;
    func_801A3280_ovl7();
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801DC598_ovl10.s")

void func_801DCA20_ovl10(GObj *arg0) {
    func_801E28C8_ovl10(0);
}

void func_800F98EC(s32, f32);
void func_800A9864(s32, s32, s32);
void func_800AA018(s32);
void func_800AA154(s32);

void func_801DCA44_ovl10(s32 arg0) {
    s32 dead0;
    s32 sp18 = D_800E0D50[omCurrentObj->objId];

    func_801A3280_ovl7();
    func_800A9864(0x100D8, 0x23, 0x10);
    func_8019BB58_ovl7();
    D_800DEF90[omCurrentObj->objId] = &func_800B4954;
    D_800DF150[omCurrentObj->objId] = NULL;
    D_800E5F90[omCurrentObj->objId] =
    D_800E6150[omCurrentObj->objId] = D_800E5F90[sp18];
    D_800E6BD0[omCurrentObj->objId] =
    D_800E6D90[omCurrentObj->objId] = D_800E6BD0[sp18];
    gEntitiesNextPosXArray[omCurrentObj->objId] =
    gEntitiesPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[sp18];
    gEntitiesNextPosZArray[omCurrentObj->objId] =
    gEntitiesPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[sp18];
    gEntitiesNextPosYArray[omCurrentObj->objId] =
    gEntitiesPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[sp18];
    D_800E6A10[omCurrentObj->objId] = D_800E6A10[sp18];
    D_800E9020[omCurrentObj->objId] = D_800E9020[D_800E0D50[omCurrentObj->objId]];
    D_800E17D0[omCurrentObj->objId] = D_800E17D0[sp18];
    func_800B33F4();
    func_800F98EC(omCurrentObj->objId, D_800E6A10[omCurrentObj->objId] * 80.0f);
    func_800AA018(0x10615);
    func_800AA154(0x10614);
    func_8019D958_ovl7((u16) omCurrentObj->objId);
}

extern void func_800B68AC(s32);
void func_800A9864(s32, s32, s32);

void func_801DCCB8_ovl10(s32 arg0) {
    struct UnkStruct800E1B50 *temp = D_800E1B50[omCurrentObj->objId];

    temp->unk80->unk10 = 40.0f;
    func_800A9864(0x1005C, 0x23, 0x10);
    D_800DEF90[omCurrentObj->objId] = &func_800B68AC;
    func_800B19F4(0x30, omCurrentObj->objId);
    D_800E8920[omCurrentObj->objId] = 1;
    func_801A0D50_ovl7(&func_801DBD38_ovl10);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801F4094_ovl10;
    D_800E0490[omCurrentObj->objId] = &D_801F3F94_ovl10;
    func_801A2ADC_ovl7(&D_801F3F94_ovl10);
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

extern s32 D_801F39F4_ovl10;
extern void func_800BC1FC(s32);

void func_801DCDD4_ovl10(s32 arg0) {
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801F39F4_ovl10;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801F4094_ovl10;
    D_800E8920[omCurrentObj->objId] = 1;
    func_800B33F4();
    func_800AA018(0x102E1);
    func_800AA018(0x102E0);
    ohSleep(0x1E);
    func_800BC1FC((s32)D_800E7B20[omCurrentObj->objId]);
    ohSleep(0x30);
    func_800AF27C();
    D_800E98E0[omCurrentObj->objId] = -1;
    D_800E9AA0[omCurrentObj->objId].as_s32 = -1;
    D_800EA360[omCurrentObj->objId] = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

void func_801DCF48_ovl10(void) {
    func_801A0D74_ovl7();
    func_801E28C8_ovl10(0);
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 9;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DBD38_ovl10);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801DCFC4_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801DD2CC_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801DD390_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801DD674_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801DD760_ovl10.s")

void func_801DDAA0_ovl10(GObj *arg0) {
    D_800EA520[omCurrentObj->objId] = 5;
}

extern s32 D_801F42F0_ovl10[];
extern s32 random_soft_s32_range(s32);

#ifdef MIPS_TO_C
/* structurally exact, 27 pure regalloc diffs (ROM keeps `temp` in $a1) */
void func_801DDAC8_ovl10(s32 arg0) {
    s32 temp;

    temp = D_801F42F0_ovl10[random_soft_s32_range(6)];
    while (D_800E9AA0[omCurrentObj->objId].as_s32 == temp) {
        temp = D_801F42F0_ovl10[random_soft_s32_range(6)];
    }
    D_800E9AA0[omCurrentObj->objId].as_s32 = temp;
    gEntityFuncListIDArray[omCurrentObj->objId] = temp;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801DDAC8_ovl10.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801DDB88_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801DDEB8_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801DE124_ovl10.s")

void func_801DE5CC_ovl10(GObj *arg0) {
    func_801DD760_ovl10();
    func_801A0D74_ovl7(arg0);
    func_801E28C8_ovl10(0);
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 9;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DBD38_ovl10);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801DE650_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801DEA98_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801DEB94_ovl10.s")

f32 func_801DF234_ovl10(void) {
    f32 temp_f0;
    f32 temp_f14;
    f32 temp_f2;
    f32 phi_f2;
    f32 pad[2];

    temp_f0 =  gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[omCurrentObj->objId];
    temp_f2 = (gEntitiesNextPosYArray[0] + 20.0f) - (gEntitiesNextPosYArray[omCurrentObj->objId] + 40.0f);
    temp_f14 = gEntitiesNextPosZArray[0] - gEntitiesNextPosZArray[omCurrentObj->objId];

    return ABSF(sqrtf(((temp_f0 * temp_f0) + (temp_f2 * temp_f2)) + (temp_f14 * temp_f14)));
}

void func_801DF310_ovl10(GObj *arg0) {
    func_801DD760_ovl10();
    func_801A0D74_ovl7(arg0);
    func_801E28C8_ovl10(0);
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 9;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DBD38_ovl10);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801DF394_ovl10.s")

void func_801DF4CC_ovl10(void) {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7();
    func_801E28C8_ovl10(0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801DF50C_ovl10.s")

void func_801DFBFC_ovl10(GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId]++ >= 0x79) {
        D_800EA520[omCurrentObj->objId] = 1000;
        D_800EA8A0[omCurrentObj->objId] = 0.0f;
        D_800EA6E0[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    }
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7(arg0);
    func_801E28C8_ovl10(0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801DFCC0_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801DFE64_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801DFF88_ovl10.s")

void func_801E03CC_ovl10(void) {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7();
    func_801E28C8_ovl10(0);
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0x12;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DBD38_ovl10);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801E0460_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801E0B94_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801E0E78_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801E100C_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801E13A0_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801E1550_ovl10.s")

void func_801E1880_ovl10(GObj *arg0) {
    D_800EA520[omCurrentObj->objId] = 0x3E8;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801E18A8_ovl10.s")

void func_801E1D3C_ovl10(void) {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7();
    func_801E28C8_ovl10(0);
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0x12;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DBD38_ovl10);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801E1DD0_ovl10.s")

void func_801E1FD8_ovl10(void) {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7();
    func_801E28C8_ovl10(0);
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0x12;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DBD38_ovl10);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801E206C_ovl10.s")

void func_801E2724_ovl10(GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId]++ >= 0x79) {
        D_800EA520[omCurrentObj->objId] = 1000;
        D_800EA8A0[omCurrentObj->objId] = 0.0f;
        D_800EA6E0[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    }
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7(arg0);
    func_801E28C8_ovl10(0);
}

extern s32 D_801F3ACC_ovl10;
void func_801BC794_ovl7(s32);

void func_801E27E8_ovl10(s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0x11;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801F3ACC_ovl10;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801F4094_ovl10;
    func_800B33F4();
    func_800AA018(0x10302);
    func_800AA154(0x10303);
    ohSleep(0x1E);
    func_801BC794_ovl7(8);
    curObjSleepForever();
}

void func_801E28A0_ovl10(void) {
    func_801A0D74_ovl7();
    func_801E28C8_ovl10(0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801E28C8_ovl10.s")

struct Ovl10AnimCmd2 {
    u8 filler0[8];
    s32 unk8;
};

struct Ovl10AnimObj2 {
    u8 filler0[0x24];
    struct Ovl10AnimCmd2 *unk24;
};

void func_80111550(u32);
struct Ovl10AnimObj2 *func_80111C88(s32 *, u32);
void func_80111ECC(struct Ovl10AnimObj2 *);
s32 func_80110150(void *);

s32 func_801E2BD8_ovl10(s32 arg0, void *arg1) {
    struct Sub800E1B50_Unk88 *sp0;
    struct UnkStruct800E1B50 *temp;
    struct Ovl10AnimObj2 *temp_v0;

    temp = D_800E1B50[omCurrentObj->objId];
    sp0 = temp->unk88;
    if (sp0 == NULL) {
        return 0;
    }
    func_80111550(omCurrentObj->objId);
    temp_v0 = func_80111C88(temp->unk8C, omCurrentObj->objId);
    if (temp_v0 != NULL) {
        if (arg0 != 0) {
            temp_v0->unk24->unk8 = arg0;
        }
        func_80111ECC(temp_v0);
    }
    return func_80110150(arg1);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_1/func_801E2C78_ovl10.s")

