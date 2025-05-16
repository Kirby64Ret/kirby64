#include <ultra64.h>
#include <macros.h>

#include "omCurrentObj.h"
#include "unk_structs/D_800E1B50.h"
// #include "ovl18/ovl18_1.h"
// #include "ovl18/ovl18_3.h"
// #include "ovl18/ovl18_5.h"
#include "ovl10_1.h"
// TODO: do this
#include "ovl1/ovl1_6.h"

extern u32 D_800D6E40;
extern u32 D_800D6E18;
extern s32 *D_800D6B70;
void func_801DBDB8_ovl10(s32 arg0);
void func_801DBD38_ovl10(s32 arg0);
s32 func_801DBF70_ovl10(s32, f32);

void func_801DBC00_ovl10(s32 arg0) {
    if (func_800B9DF8(2) != 0 && D_800D6B70 == 0) {
        func_8019BB58_ovl10();
        D_800D6E40++;
        D_800D6E18++;
        func_8019D958_ovl10((u16)omCurrentObj->objId);
    }
    D_800DF150[omCurrentObj->objId] = &func_801DBDB8_ovl10;
    D_800E8920[omCurrentObj->objId] = 1;
    call_virtual_function(D_800E7880[omCurrentObj->objId], 8, &D_801F4220_ovl10[0]);
    while(1)
        call_virtual_function(gEntityVtableIndexArray[omCurrentObj->objId], 0x14, &D_801F4240_ovl10[0]);
}

void func_801DBD38_ovl10(s32 arg0) {
    for(;;) call_virtual_function(gEntityVtableIndexArray[omCurrentObj->objId], 0x14, &D_801F4220_ovl10[8]);
}

void func_801DBDB8_ovl10(s32 arg0) {
    call_virtual_function(D_800DDFD0[omCurrentObj->objId], 0x12, &D_801F4240_ovl10[20]);
}

void func_801DBE00_ovl10(s32 arg0) {
    func_8019BB58_ovl10();
    func_800B19F4(0x7D, omCurrentObj->objId);
    func_800AFBB4(0, omCurrentObj);
    D_800DEF90[omCurrentObj->objId] = NULL;
    func_800B1F68(gEntityGObjProcessArray5[omCurrentObj->objId], &func_800B1434);
    D_800DF150[omCurrentObj->objId] = NULL;
    D_800E98E0[omCurrentObj->objId] = func_801DBF70_ovl10(3, 0.0f);
    D_800E9AA0[omCurrentObj->objId] = func_801DBF70_ovl10(4, 0.0f);
    D_800EBDA0[omCurrentObj->objId] = func_801DBF70_ovl10(1, 120.0f);
    D_800EBF60[omCurrentObj->objId] = func_801DBF70_ovl10(2, 120.0f);
    D_800EBBE0[omCurrentObj->objId] = func_801DBF70_ovl10(7, 0.0f);
    gEntitiesNextPosYArray[omCurrentObj->objId] = 100.0f;
    func_800AFA14();
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

void func_801DC0EC_ovl10(s32 arg0) {
    func_8019BB58_ovl10();
    func_800B19F4(0x71, omCurrentObj->objId);
    func_800AFBB4(0, omCurrentObj);
    D_800DEF90[omCurrentObj->objId] = &func_800B4954;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800B1F68(gEntityGObjProcessArray5[omCurrentObj->objId], &func_800B1434);
    D_800E6A10[omCurrentObj->objId] = (D_800E7880[omCurrentObj->objId] == 2) ? 1.0f : -1.0f;
    func_801A0D50(&func_801DBD38_ovl10);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801F4094_ovl10;
    D_800E0490[omCurrentObj->objId] = &D_801F3F94_ovl10;
    func_801A2ADC_ovl10(&D_801F3F94_ovl10);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 10.0f;
    ohSleep(0x10);
    func_800B33F4();
    func_800B19F4(0x7D, omCurrentObj->objId);
    func_800AFBB4(0, omCurrentObj);
    D_800DEF90[omCurrentObj->objId] = NULL;
    D_800DF150[omCurrentObj->objId] = NULL;
    func_800AFA14();
}

void func_801DC2BC_ovl10(void) {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl10();
}

void func_801DC2F4_ovl10(s32 arg0) {
    func_8019BB58_ovl10();
    func_800B19F4(0x71, omCurrentObj->objId);
    func_800AFBB4(0, omCurrentObj);
    D_800DEF90[omCurrentObj->objId] = &func_800B4954;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800B1F68(gEntityGObjProcessArray5[omCurrentObj->objId], &func_800B1434);
    D_800E6A10[omCurrentObj->objId] = (D_800E7880[omCurrentObj->objId] == 4) ? 1.0f : -1.0f;
    D_800E8920[omCurrentObj->objId] = 0;
    gEntitiesPosYArray[omCurrentObj->objId] = 140.0f;
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesPosYArray[omCurrentObj->objId];
    func_801A0D50(&func_801DBD38_ovl10);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801F4070_ovl10;
    D_800E0490[omCurrentObj->objId] = &D_801F3FA8_ovl10;
    func_801A2ADC_ovl10(&D_801F3FA8_ovl10);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 10.0f;
    func_800AFA14();
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
    func_801A3280_ovl10();
    func_800AFA14();
}

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DC598_ovl10.s")

void func_801DCA20_ovl10(s32 arg0) {
    func_801E28C8_ovl10(0);
}

// float regalloc :(
#ifdef NON_MATCHING
void func_800F98EC(s32, f32);
void func_801DCA44_ovl10(s32 arg0) {
    s32 sp18 = D_800E0D50[omCurrentObj->objId];

    func_801A3280_ovl10();
    func_800A9864(0x100D8, 0x23, 0x10);
    func_8019BB58_ovl10();
    D_800DEF90[omCurrentObj->objId] = &func_800B4954;
    D_800DF150[omCurrentObj->objId] = NULL;
    D_800E6150[omCurrentObj->objId] = D_800E5F90[sp18];
    D_800E5F90[omCurrentObj->objId] = D_800E5F90[sp18];
    D_800E6D90[omCurrentObj->objId] = D_800E6BD0[sp18];
    D_800E6BD0[omCurrentObj->objId] = D_800E6BD0[sp18];
    gEntitiesPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[sp18];
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[sp18];
    gEntitiesPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[sp18];
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[sp18];
    gEntitiesPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[sp18];
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[sp18];
    D_800E6A10[omCurrentObj->objId] = D_800E6A10[sp18];
    D_800E9020[omCurrentObj->objId] = D_800E9020[D_800E0D50[omCurrentObj->objId]];
    D_800E17D0[omCurrentObj->objId] = D_800E17D0[sp18];
    func_800B33F4();
    func_800F98EC(omCurrentObj->objId, D_800E6A10[omCurrentObj->objId] * 80.0f);
    func_800AA018(0x10615);
    func_800AA154(0x10614);
    func_8019D958_ovl10((u16) omCurrentObj->objId);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DCA44_ovl10.s")
#endif

// regalloc moment
#ifdef NON_MATCHING_
void func_801DCCB8_ovl10(s32 arg0) {
    D_800E1B50[omCurrentObj->objId]->unk80->unk10 = 40.0f;
    func_800A9864(0x1005C, 0x23, 0x10);
    D_800DEF90[omCurrentObj->objId] = &func_800B68AC;
    func_800B19F4(0x30, omCurrentObj->objId);
    D_800E8920[omCurrentObj->objId] = 1;
    func_801A0D50(&func_801DBD38_ovl10);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801F4094_ovl10;
    D_800E0490[omCurrentObj->objId] = &D_801F3F94_ovl10;
    func_801A2ADC_ovl10(&D_801F3F94_ovl10);
    gEntityVtableIndexArray[omCurrentObj->objId] = 1;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DCCB8_ovl10.s")
#endif

void func_801DCDD4_ovl10(s32 arg0) {
    func_800AECC0(D_800D6B10);
    func_800AED20(D_800D6B10);
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801F39F4_ovl10;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801F4094_ovl10;
    D_800E8920[omCurrentObj->objId] = 1;
    func_800B33F4(D_800E1B50);
    func_800AA018(0x102E1);
    func_800AA018(0x102E0);
    ohSleep(0x1E);
    func_800BC1FC(D_800E7B20[omCurrentObj->objId]);
    ohSleep(0x30);
    func_800AF27C();
    D_800E98E0[omCurrentObj->objId] = -1;
    ((s32*)D_800E9AA0)[omCurrentObj->objId] = -1;
    D_800EA360[omCurrentObj->objId] = 0;
    gEntityVtableIndexArray[omCurrentObj->objId] = 2;
}

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DCF48_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DCFC4_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DD2CC_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DD390_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DD674_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DD760_ovl10.s")

void func_801DDAA0_ovl10(s32 arg0) {
    D_800EA520[omCurrentObj->objId] = 5;
}

extern s32 D_801F42F0[];

s32 random_soft_s32_range(s32);

// regalloc
#ifdef NON_MATCHING
void func_801DDAC8_ovl10(s32 arg0) {
    s32 randInt;
    s32 check;
    s32 rand;

    randInt = random_soft_s32_range(6);
    check = D_800E9AA0[omCurrentObj->objId];
    rand = D_801F42F0[randInt];
    while (check == rand) {
        randInt = random_soft_s32_range(6);
        rand = D_801F42F0[randInt];
        check = D_800E9AA0[omCurrentObj->objId];
    }
    D_800E9AA0[omCurrentObj->objId] = rand;
    gEntityVtableIndexArray[omCurrentObj->objId] = rand;

}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DDAC8_ovl10.s")
#endif

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DDB88_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DDEB8_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DE124_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DE5CC_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DE650_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DEA98_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DEB94_ovl10.s")

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

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DF310_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DF394_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DF4CC_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DF50C_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DFBFC_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DFCC0_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DFE64_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DFF88_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801E03CC_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801E0460_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801E0B94_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801E0E78_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801E100C_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801E13A0_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801E1550_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801E1880_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801E18A8_ovl10.s")


GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801E1D3C_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801E1DD0_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801E1FD8_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801E206C_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801E2724_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801E27E8_ovl10.s")

void func_801E28A0_ovl10(void) {
    func_801A0D74_ovl10();
    func_801E28C8_ovl10(0);
}

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801E28C8_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801E2BD8_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801E2C78_ovl10.s")
