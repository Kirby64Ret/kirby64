#include <ultra64.h>
#include <macros.h>

#include "D_8004A7C4.h"
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
        func_8019D958_ovl10((u16)D_8004A7C4->objId);
    }
    D_800DF150[D_8004A7C4->objId] = &func_801DBDB8_ovl10;
    D_800E8920[D_8004A7C4->objId] = 1;
    call_virtual_function(D_800E7880[D_8004A7C4->objId], 8, &D_801F4220_ovl10[0]);
    while(1)
        call_virtual_function(gEntityVtableIndexArray[D_8004A7C4->objId], 0x14, &D_801F4240_ovl10[0]);
}

void func_801DBD38_ovl10(s32 arg0) {
    for(;;) call_virtual_function(gEntityVtableIndexArray[D_8004A7C4->objId], 0x14, &D_801F4220_ovl10[8]);
}

void func_801DBDB8_ovl10(s32 arg0) {
    call_virtual_function(D_800DDFD0[D_8004A7C4->objId], 0x12, &D_801F4240_ovl10[20]);
}

void func_801DBE00_ovl10(s32 arg0) {
    func_8019BB58_ovl10();
    func_800B19F4(0x7D, D_8004A7C4->objId);
    func_800AFBB4(0, D_8004A7C4);
    D_800DEF90[D_8004A7C4->objId] = NULL;
    func_800B1F68(gEntityGObjProcessArray5[D_8004A7C4->objId], &func_800B1434);
    D_800DF150[D_8004A7C4->objId] = NULL;
    D_800E98E0[D_8004A7C4->objId] = func_801DBF70_ovl10(3, 0.0f);
    D_800E9AA0[D_8004A7C4->objId] = func_801DBF70_ovl10(4, 0.0f);
    D_800EBDA0[D_8004A7C4->objId] = func_801DBF70_ovl10(1, 120.0f);
    D_800EBF60[D_8004A7C4->objId] = func_801DBF70_ovl10(2, 120.0f);
    D_800EBBE0[D_8004A7C4->objId] = func_801DBF70_ovl10(7, 0.0f);
    gEntitiesNextPosYArray[D_8004A7C4->objId] = 100.0f;
    func_800AFA14();
}

s32 func_801DBF70_ovl10(s32 arg0, f32 arg1) {
    s32 index = request_track_general(0x18, 0x1E, 0x3C);

    D_800E76C0[index] = 0xFF;
    D_800E7730[index] = 1;
    D_800E77A0[index] = 2;
    D_800E7880[index] = arg0;
    D_800E5F90[index] =
    D_800E6150[index] = D_800E5F90[D_8004A7C4->objId];

    D_800E6BD0[index] =
    D_800E6D90[index] = D_800E6BD0[D_8004A7C4->objId];

    gEntitiesNextPosXArray[index] =
    gEntitiesPosXArray[index] = gEntitiesNextPosXArray[D_8004A7C4->objId];

    gEntitiesNextPosYArray[index] =
    gEntitiesPosYArray[index] = gEntitiesNextPosYArray[D_8004A7C4->objId] + arg1;

    gEntitiesNextPosZArray[index] =
    gEntitiesPosZArray[index] = gEntitiesNextPosZArray[D_8004A7C4->objId];
    D_800E0D50[index] = D_8004A7C4->objId;
    D_800E8E60[index] = 0;
}

void func_801DC0EC_ovl10(s32 arg0) {
    func_8019BB58_ovl10();
    func_800B19F4(0x71, D_8004A7C4->objId);
    func_800AFBB4(0, D_8004A7C4);
    D_800DEF90[D_8004A7C4->objId] = &func_800B4954;
    D_800DDFD0[D_8004A7C4->objId] = 0;
    func_800B1F68(gEntityGObjProcessArray5[D_8004A7C4->objId], &func_800B1434);
    D_800E6A10[D_8004A7C4->objId] = (D_800E7880[D_8004A7C4->objId] == 2) ? 1.0f : -1.0f;
    func_801A0D50(&func_801DBD38_ovl10);
    D_800E1B50[D_8004A7C4->objId]->unk98 = &D_801F4094_ovl10;
    D_800E0490[D_8004A7C4->objId] = &D_801F3F94_ovl10;
    func_801A2ADC_ovl10(&D_801F3F94_ovl10);
    D_800E64D0[D_8004A7C4->objId] = D_800E6A10[D_8004A7C4->objId] * 10.0f;
    finish_current_thread(0x10);
    func_800B33F4();
    func_800B19F4(0x7D, D_8004A7C4->objId);
    func_800AFBB4(0, D_8004A7C4);
    D_800DEF90[D_8004A7C4->objId] = NULL;
    D_800DF150[D_8004A7C4->objId] = NULL;
    func_800AFA14();
}

void func_801DC2BC_ovl10(void) {
    D_800E8920[D_8004A7C4->objId] = 0;
    func_801A0D74_ovl10();
}

void func_801DC2F4_ovl10(s32 arg0) {
    func_8019BB58_ovl10();
    func_800B19F4(0x71, D_8004A7C4->objId);
    func_800AFBB4(0, D_8004A7C4);
    D_800DEF90[D_8004A7C4->objId] = &func_800B4954;
    D_800DDFD0[D_8004A7C4->objId] = 0;
    func_800B1F68(gEntityGObjProcessArray5[D_8004A7C4->objId], &func_800B1434);
    D_800E6A10[D_8004A7C4->objId] = (D_800E7880[D_8004A7C4->objId] == 4) ? 1.0f : -1.0f;
    D_800E8920[D_8004A7C4->objId] = 0;
    gEntitiesPosYArray[D_8004A7C4->objId] = 140.0f;
    gEntitiesNextPosYArray[D_8004A7C4->objId] = gEntitiesPosYArray[D_8004A7C4->objId];
    func_801A0D50(&func_801DBD38_ovl10);
    D_800E1B50[D_8004A7C4->objId]->unk98 = &D_801F4070_ovl10;
    D_800E0490[D_8004A7C4->objId] = &D_801F3FA8_ovl10;
    func_801A2ADC_ovl10(&D_801F3FA8_ovl10);
    D_800E64D0[D_8004A7C4->objId] = D_800E6A10[D_8004A7C4->objId] * 10.0f;
    func_800AFA14();
}

void func_801DC4BC_ovl10(s32 arg0) {
    D_800E6A10[D_8004A7C4->objId] = -D_800E6A10[D_8004A7C4->objId];
    D_800E64D0[D_8004A7C4->objId] = D_800E6A10[D_8004A7C4->objId] * 10.0f;
    finish_current_thread(6);
    func_800B33F4();
    func_800B19F4(0x7D, D_8004A7C4->objId);
    func_800AFBB4(0, D_8004A7C4);
    D_800DEF90[D_8004A7C4->objId] = NULL;
    D_800DF150[D_8004A7C4->objId] = NULL;
    func_801A3280_ovl10();
    func_800AFA14();
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_801DC598_ovl10(s32 arg0) {
    s32 sp3C;
    void *sp28;
    s32 *sp24;
    void *sp20;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    s32 *temp_t5;
    s32 temp_s0;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_6;
    s32 temp_v1;
    struct GObj *temp_v0_3;
    struct GObj *temp_v0_4;
    struct GObj *temp_v0_5;
    void *temp_t3;
    void *temp_t4;

    sp3C = D_800D0D50[D_8004A7C4->objId];
    func_801A3280_ovl10();
    func_800A9864(*(&D_801F42D8_ovl10 + ((D_800E98E0[D_8004A7C4->objId] & 1) * 4)), 0x23, 0x10);
    func_800B19F4(0x30, D_8004A7C4->objId);
    temp_s0 = sp3C * 4;
    temp_t4 = temp_s0 + &D_800EA360;
    D_800DEF90[D_8004A7C4->objId] = &D_800B68AC;
    sp28 = temp_t4;
    temp_v0 = *temp_t4;
    if (temp_v0 != 0) {
        func_800A22D4(temp_v0);
    }
    temp_t5 = &gEntityVtableIndexArray[sp3C];
    sp24 = temp_t5;
    if (*temp_t5 == 5) {
        temp_v0_2 = *(&D_800EA520 + temp_s0);
        if (temp_v0_2 >= 0x64) {
            if (temp_v0_2 < 0x78) {
                play_sound(0x1DF);
            }
        }
    }
    play_sound(0x28);
    temp_v0_3 = D_8004A7C4;
    temp_v1 = D_800E5F90[sp3C];
    *(&D_800E6150 + (temp_v0_3->unk0 * 4)) = temp_v1;
    D_800E5F90[temp_v0_3->unk0] = temp_v1;
    temp_f0 = D_800E6BD0[sp3C];
    D_800E6D90[temp_v0_3->unk0] = temp_f0;
    D_800E6BD0[temp_v0_3->unk0] = temp_f0;
    temp_f0_2 = gEntitiesNextPosXArray[sp3C];
    *(&gEntitiesPosXArray + (temp_v0_3->unk0 * 4)) = temp_f0_2;
    gEntitiesNextPosXArray[temp_v0_3->unk0] = temp_f0_2;
    temp_f0_3 = gEntitiesNextPosZArray[sp3C];
    *(&gEntitiesPosZArray + (temp_v0_3->unk0 * 4)) = temp_f0_3;
    gEntitiesNextPosZArray[temp_v0_3->unk0] = temp_f0_3;
    temp_f0_4 = gEntitiesNextPosYArray[sp3C];
    *(&gEntitiesPosYArray + (temp_v0_3->unk0 * 4)) = temp_f0_4;
    gEntitiesNextPosYArray[temp_v0_3->unk0] = temp_f0_4;
    temp_t3 = temp_s0 + &D_800DD8D0;
    sp20 = temp_t3;
    *(&D_800E9C60 + (temp_v0_3->unk0 * 4)) = *temp_t3;
    func_800B19F4(0x7F, sp3C, D_800E5F90, D_800E6BD0);
    temp_v0_4 = D_8004A7C4;
    D_800DDFD0[temp_v0_4->unk0] = 1;
    if (*sp24 < 0xA) {
        D_800E1B50[temp_v0_4->unk0]->unk8C = &D_801F39F4_ovl10;
    } else {
        D_800E1B50[temp_v0_4->unk0]->unk8C = &D_801F3A84_ovl10;
    }
    temp_v0_5 = D_8004A7C4;
    D_800E6A10[temp_v0_5->unk0] = D_800E6A10[sp3C];
    *(&D_800E9020 + (temp_v0_5->unk0 * 4)) = *(&D_800E9020 + temp_s0);
    D_800E17D0[temp_v0_5->unk0] = D_800E17D0[sp3C];
    func_800B33F4(&D_800E9020, D_800E17D0);
    func_800AECC0(D_800D6B10);
    func_800AED20(D_800D6B10);
    func_800AA018(*(&D_801F42E8_ovl10 + ((D_800E98E0[D_8004A7C4->objId] & 1) * 4)));
    func_800AA154(*(&D_801F42E0_ovl10 + ((D_800E98E0[D_8004A7C4->objId] & 1) * 4)));
    if (*sp28 != 0) {
        if (*sp24 == 5) {
            *sp28 = func_800A8234(6, 2, 2);
        }
    }
    if (*sp24 == 5) {
        temp_v0_6 = *(&D_800EA520 + temp_s0);
        if (temp_v0_6 >= 0x64) {
            if (temp_v0_6 < 0x78) {
                play_sound(0x1DD);
            }
        }
    }
    *sp20 = (*(&D_800E9C60 + (D_8004A7C4->objId * 4)) & 0xC0000000) | *sp20;
    func_800B19F4(0x30, sp3C);
    *(&D_800E7CE0 + temp_s0) = 8;
    func_8019D958_ovl10(D_8004A7C4->unk2);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DC598_ovl10.s")
#endif

void func_801DCA20_ovl10(s32 arg0) {
    func_801E28C8_ovl10(0);
}

// float regalloc :(
#ifdef NON_MATCHING
void func_800F98EC(s32, f32);
void func_801DCA44_ovl10(s32 arg0) {
    s32 sp18 = D_800E0D50[D_8004A7C4->objId];

    func_801A3280_ovl10();
    func_800A9864(0x100D8, 0x23, 0x10);
    func_8019BB58_ovl10();
    D_800DEF90[D_8004A7C4->objId] = &func_800B4954;
    D_800DF150[D_8004A7C4->objId] = NULL;
    D_800E6150[D_8004A7C4->objId] = D_800E5F90[sp18];
    D_800E5F90[D_8004A7C4->objId] = D_800E5F90[sp18];
    D_800E6D90[D_8004A7C4->objId] = D_800E6BD0[sp18];
    D_800E6BD0[D_8004A7C4->objId] = D_800E6BD0[sp18];
    gEntitiesPosXArray[D_8004A7C4->objId] = gEntitiesNextPosXArray[sp18];
    gEntitiesNextPosXArray[D_8004A7C4->objId] = gEntitiesNextPosXArray[sp18];
    gEntitiesPosZArray[D_8004A7C4->objId] = gEntitiesNextPosZArray[sp18];
    gEntitiesNextPosZArray[D_8004A7C4->objId] = gEntitiesNextPosZArray[sp18];
    gEntitiesPosYArray[D_8004A7C4->objId] = gEntitiesNextPosYArray[sp18];
    gEntitiesNextPosYArray[D_8004A7C4->objId] = gEntitiesNextPosYArray[sp18];
    D_800E6A10[D_8004A7C4->objId] = D_800E6A10[sp18];
    D_800E9020[D_8004A7C4->objId] = D_800E9020[D_800E0D50[D_8004A7C4->objId]];
    D_800E17D0[D_8004A7C4->objId] = D_800E17D0[sp18];
    func_800B33F4();
    func_800F98EC(D_8004A7C4->objId, D_800E6A10[D_8004A7C4->objId] * 80.0f);
    func_800AA018(0x10615);
    func_800AA154(0x10614);
    func_8019D958_ovl10((u16) D_8004A7C4->objId);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DCA44_ovl10.s")
#endif

// regalloc moment
#ifdef NON_MATCHING_
void func_801DCCB8_ovl10(s32 arg0) {
    D_800E1B50[D_8004A7C4->objId]->unk80->unk10 = 40.0f;
    func_800A9864(0x1005C, 0x23, 0x10);
    D_800DEF90[D_8004A7C4->objId] = &func_800B68AC;
    func_800B19F4(0x30, D_8004A7C4->objId);
    D_800E8920[D_8004A7C4->objId] = 1;
    func_801A0D50(&func_801DBD38_ovl10);
    D_800E1B50[D_8004A7C4->objId]->unk98 = &D_801F4094_ovl10;
    D_800E0490[D_8004A7C4->objId] = &D_801F3F94_ovl10;
    func_801A2ADC_ovl10(&D_801F3F94_ovl10);
    gEntityVtableIndexArray[D_8004A7C4->objId] = 1;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DCCB8_ovl10.s")
#endif

void func_801DCDD4_ovl10(s32 arg0) {
    func_800AECC0(D_800D6B10);
    func_800AED20(D_800D6B10);
    D_800DDFD0[D_8004A7C4->objId] = 2;
    D_800E1B50[D_8004A7C4->objId]->unk8C = &D_801F39F4_ovl10;
    D_800E1B50[D_8004A7C4->objId]->unk98 = &D_801F4094_ovl10;
    D_800E8920[D_8004A7C4->objId] = 1;
    func_800B33F4(D_800E1B50);
    func_800AA018(0x102E1);
    func_800AA018(0x102E0);
    finish_current_thread(0x1E);
    func_800BC1FC(D_800E7B20[D_8004A7C4->objId]);
    finish_current_thread(0x30);
    func_800AF27C();
    D_800E98E0[D_8004A7C4->objId] = -1;
    ((s32*)D_800E9AA0)[D_8004A7C4->objId] = -1;
    D_800EA360[D_8004A7C4->objId] = 0;
    gEntityVtableIndexArray[D_8004A7C4->objId] = 2;
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
struct GObj *func_801DCF48_ovl10(void) {
    s32 temp_v1;
    struct GObj *temp_v0;
    struct GObj *phi_return;

    func_801A0D74_ovl10();
    func_801E28C8_ovl10(0);
    temp_v0 = D_8004A7C4;
    temp_v1 = temp_v0->unk0;
    phi_return = temp_v0;
    if (*(&D_800E83E0 + (temp_v1 * 4)) == 1) {
        gEntityVtableIndexArray[temp_v1] = 9;
        phi_return = assign_new_process_entry(gEntityGObjProcessArray[temp_v0->unk0], &D_801DBD38);
    }
    return phi_return;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DCF48_ovl10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_801DCFC4_ovl10(s32 arg0) {
    s32 sp68;
    f32 *temp_v1_3;
    f32 temp_f22;
    f32 temp_f24;
    s32 *temp_v1_5;
    s32 *temp_v1_6;
    s32 temp_s0;
    s32 temp_s0_2;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_4;
    struct GObj *temp_a0;
    struct GObj *temp_a0_2;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    f32 phi_f2;
    f32 phi_f0;
    s32 phi_s0;
    f32 phi_f0_2;
    s32 phi_s0_2;
    s32 phi_v0;
    s32 *phi_v1;

    func_800AECC0(D_800D6B10);
    func_800AED20(D_800D6B10);
    temp_a0 = D_8004A7C4;
    D_800DDFD0[temp_a0->unk0] = 3;
    D_800E1B50[temp_a0->unk0]->unk8C = &D_801F3A18_ovl10;
    D_800E1B50[D_8004A7C4->objId]->unk98 = &D_801F4094_ovl10;
    func_800B33F4(temp_a0);
    func_800A9EA4(0x102E1);
    func_800A9EA4(0x102E0);
    func_800AF27C();
    if (func_8019A900_ovl10(&sp68) != 0) {
        phi_f2 = sp68;
    } else {
        phi_f2 = func_8019B608_ovl10(0);
    }
    temp_v1 = D_8004A7C4->objId;
    if (phi_f2 != D_800E6A10[temp_v1]) {
        *(&D_800E9020 + (temp_v1 * 4)) = 0.0f;
        temp_f24 = D_801F49A0_ovl10;
        temp_f22 = D_801F49A4_ovl10;
        phi_s0 = 0;
loop_5:
        temp_v1_2 = D_8004A7C4->objId;
        temp_v0 = &D_800E9020 + (temp_v1_2 * 4);
        if (1.0f == D_800E6A10[temp_v1_2]) {
            phi_f0 = temp_f22;
        } else {
            phi_f0 = temp_f24;
        }
        *temp_v0 = *temp_v0 + phi_f0;
        finish_current_thread(1);
        temp_s0 = phi_s0 + 1;
        phi_s0 = temp_s0;
        if (temp_s0 != 5) {
            goto loop_5;
        }
        temp_a0_2 = D_8004A7C4;
        temp_v1_3 = &D_800E6A10[temp_a0_2->unk0];
        *temp_v1_3 = -*temp_v1_3;
        temp_v0_2 = &D_800E9020 + (temp_a0_2->unk0 * 4);
        *temp_v0_2 = -*temp_v0_2;
        phi_s0_2 = temp_s0;
loop_10:
        temp_v1_4 = D_8004A7C4->objId;
        temp_v0_3 = &D_800E9020 + (temp_v1_4 * 4);
        if (1.0f == D_800E6A10[temp_v1_4]) {
            phi_f0_2 = temp_f24;
        } else {
            phi_f0_2 = temp_f22;
        }
        *temp_v0_3 = *temp_v0_3 + phi_f0_2;
        finish_current_thread(1);
        temp_s0_2 = phi_s0_2 - 1;
        phi_s0_2 = temp_s0_2;
        if (temp_s0_2 != 0) {
            goto loop_10;
        }
        *(&D_800E9020 + (D_8004A7C4->objId * 4)) = 0.0f;
        func_800AF27C();
    }
    temp_v0_4 = random_soft_s32_range(3);
    temp_v1_5 = &D_800E98E0[D_8004A7C4->objId];
    phi_v0 = temp_v0_4;
    phi_v1 = temp_v1_5;
    while (phi_v0 == D_800E98E0[D_8004A7C4->objId]) {
        phi_v0 = random_soft_s32_range(3);
    }
    *phi_v1 = phi_v0;
    if (phi_v0 != 0) {
        gEntityVtableIndexArray[D_8004A7C4->objId] = 4;
        return;
    }
    gEntityVtableIndexArray[D_8004A7C4->objId] = 3;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DCFC4_ovl10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_801DD2CC_ovl10(s32 arg0) {
    s32 temp_a2;
    struct GObj *temp_v1;
    struct GObj *temp_v1_2;

    if (func_8019A7E8_ovl10(0x43200000) != 0) {
        temp_v1 = D_8004A7C4;
        D_800E98E0[temp_v1->unk0] = 0;
        *(&D_800EA520 + (temp_v1->unk0 * 4)) = 0x3E8;
    }
    func_801A0D74_ovl10(arg0);
    func_801E28C8_ovl10(0);
    temp_v1_2 = D_8004A7C4;
    temp_a2 = temp_v1_2->unk0;
    temp_a2 = temp_a2 * 4;
    if (*(&D_800E83E0 + temp_a2) == 1) {
        gEntityVtableIndexArray[temp_a2] = 9;
        assign_new_process_entry(gEntityGObjProcessArray[temp_v1_2->unk0], &D_801DBD38, temp_a2);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DD2CC_ovl10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_801DD390_ovl10(s32 arg0) {
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_s1_3;
    s32 temp_s1_4;
    s32 temp_s1_5;
    struct GObj *temp_s0;
    struct GObj *temp_s0_2;
    struct GObj *temp_s0_3;
    struct GObj *temp_s0_4;
    void *temp_v0;
    s32 phi_s1;
    s32 phi_s1_2;

    func_800AECC0(D_800D6B10);
    func_800AED20(D_800D6B10);
    temp_s0 = D_8004A7C4;
    D_800DDFD0[temp_s0->unk0] = 4;
    D_800E1B50[temp_s0->unk0]->unk8C = &D_801F3A18_ovl10;
    D_800E1B50[D_8004A7C4->objId]->unk98 = &D_801F40B8_ovl10;
    *(&D_800EA520 + (D_8004A7C4->objId * 4)) = 0;
    func_800B33F4();
    temp_s0_2 = D_8004A7C4;
    temp_s1 = temp_s0_2->unk0;
    *(&D_800E6690 + (temp_s1 * 4)) = D_800E6A10[temp_s1] * D_801F49A8_ovl10;
    *(&D_800E6850 + (temp_s0_2->unk0 * 4)) = 4.0f;
    func_800AA018(0x102E3);
    func_800AA154(0x102E2);
    func_800AA018(0x102E5);
    func_800AA018(0x102E4);
    temp_s1_2 = D_8004A7C4->objId * 4;
    phi_s1_2 = temp_s1_2;
    if (*(&D_800EA520 + temp_s1_2) < 3) {
        phi_s1 = temp_s1_2;
loop_2:
        *(D_800E64D0 + phi_s1) = *(D_800E6A10 + phi_s1) * 4.0f;
        *(&D_800E6690 + (D_8004A7C4->objId * 4)) = 0.0f;
        func_800AF27C();
        temp_s0_3 = D_8004A7C4;
        temp_v0 = &D_800EA520 + (temp_s0_3->unk0 * 4);
        *temp_v0 = *temp_v0 + 1;
        temp_s1_3 = temp_s0_3->unk0 * 4;
        phi_s1 = temp_s1_3;
        phi_s1_2 = temp_s1_3;
        if (*(&D_800EA520 + temp_s1_3) < 3) {
            goto loop_2;
        }
    }
    *(&D_800E6690 + phi_s1_2) = *(D_800E6A10 + phi_s1_2) * D_801F49B0_ovl10;
    func_800AA018(0x102E7);
    func_800AA154(0x102E6);
    temp_s0_4 = D_8004A7C4;
    *(&D_800E6690 + (temp_s0_4->unk0 * 4)) = 0.0f;
    temp_s1_4 = temp_s0_4->unk0;
    D_800E64D0[temp_s1_4] = *(&D_800E6690 + (temp_s1_4 * 4));
    *(&D_800E6850 + (temp_s0_4->unk0 * 4)) = D_801F49B8_ovl10;
    temp_s1_5 = temp_s0_4->unk0;
    if (*(&D_800EA520 + (temp_s1_5 * 4)) >= 0x65) {
        gEntityVtableIndexArray[temp_s1_5] = 4;
        return;
    }
    gEntityVtableIndexArray[temp_s1_5] = 2;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DD390_ovl10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_801DD674_ovl10(s32 arg0) {;
    if (func_801DD760_ovl10() != 0.0f) {
        D_800EA520[D_8004A7C4->objId] = 1000;
    }
    if (func_8019A7E8_ovl10(160.0f) != 0) {
        D_800EA520[D_8004A7C4->objId] = 1000;
    }
    func_801A0D74_ovl10(arg0);
    func_801E28C8_ovl10(0);
    if (D_800E83E0[D_8004A7C4->objId] == 1) {
        gEntityVtableIndexArray[D_8004A7C4->objId] = 9;
        assign_new_process_entry(gEntityGObjProcessArray[D_8004A7C4->objId], &D_801DBD38, temp_a2);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DD674_ovl10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
f32 func_801DD760_ovl10(s32 arg0) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f2;
    f32 temp_f2_2;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 temp_v0_9;
    s32 temp_v1_3;
    struct EntityThing800E9AA0 *temp_v1;
    struct GObj *temp_v1_2;
    struct GObj *temp_v1_4;

    temp_v0 = D_8004A7C4->objId;
    if (1.0f == D_800E6A10[temp_v0]) {
        temp_v1 = D_800E9AA0[(&D_800DFBD0 + (temp_v0 * 4))->unkD50];
        temp_f0 = func_800F951C(D_800E5F90[temp_v0], (bitwise s32) D_800E6BD0[temp_v0], D_800E5F90[temp_v1], (bitwise s32) D_800E6BD0[temp_v1]);
        if (temp_f0 == D_801F49BC_ovl10 || temp_f0 < 0.0f) {
            temp_v1_2 = D_8004A7C4;
            temp_v0_2 = temp_v1_2->unk0;
            temp_a0 = D_800E5F90[D_800E9AA0[D_800E0D50[temp_v0_2]]];
            *(&D_800E6150 + (temp_v0_2 * 4)) = temp_a0;
            D_800E5F90[temp_v1_2->unk0] = temp_a0;
            temp_v0_3 = temp_v1_2->unk0;
            temp_f2 = D_800E6BD0[D_800E9AA0[D_800E0D50[temp_v0_3]]];
            D_800E6D90[temp_v0_3] = temp_f2;
            D_800E6BD0[temp_v1_2->unk0] = temp_f2;
            temp_v0_4 = temp_v1_2->unk0;
            gEntitiesNextPosXArray[temp_v0_4] = *(&gEntitiesPosXArray + (temp_v0_4 * 4));
            temp_v0_5 = temp_v1_2->unk0;
            gEntitiesNextPosZArray[temp_v0_5] = *(&gEntitiesPosZArray + (temp_v0_5 * 4));
            return 1.0f;
        }
    } else {
        temp_v1_3 = D_800E98E0[D_800E0D50[temp_v0]];
        temp_f0_2 = func_800F951C(D_800E5F90[temp_v0], (bitwise s32) D_800E6BD0[temp_v0], D_800E5F90[temp_v1_3], (bitwise s32) D_800E6BD0[temp_v1_3]);
        if (temp_f0_2 == D_801F49C0_ovl10 || temp_f0_2 > 0.0f) {
            temp_v1_4 = D_8004A7C4;
            temp_v0_6 = temp_v1_4->unk0;
            temp_a0_2 = D_800E5F90[D_800E98E0[D_800E0D50[temp_v0_6]]];
            *(&D_800E6150 + (temp_v0_6 * 4)) = temp_a0_2;
            D_800E5F90[temp_v1_4->unk0] = temp_a0_2;
            temp_v0_7 = temp_v1_4->unk0;
            temp_f2_2 = D_800E6BD0[D_800E98E0[D_800E0D50[temp_v0_7]]];
            D_800E6D90[temp_v0_7] = temp_f2_2;
            D_800E6BD0[temp_v1_4->unk0] = temp_f2_2;
            temp_v0_8 = temp_v1_4->unk0;
            gEntitiesNextPosXArray[temp_v0_8] = *(&gEntitiesPosXArray + (temp_v0_8 * 4));
            temp_v0_9 = temp_v1_4->unk0;
            gEntitiesNextPosZArray[temp_v0_9] = *(&gEntitiesPosZArray + (temp_v0_9 * 4));
            return -1.0f;
        }
    }
    return 0.0f;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DD760_ovl10.s")
#endif

void func_801DDAA0_ovl10(s32 arg0) {
    D_800EA520[D_8004A7C4->objId] = 5;
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
    check = D_800E9AA0[D_8004A7C4->objId];
    rand = D_801F42F0[randInt];
    while (check == rand) {
        randInt = random_soft_s32_range(6);
        rand = D_801F42F0[randInt];
        check = D_800E9AA0[D_8004A7C4->objId];
    }
    D_800E9AA0[D_8004A7C4->objId] = rand;
    gEntityVtableIndexArray[D_8004A7C4->objId] = rand;

}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DDAC8_ovl10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_801DDB88_ovl10(s32 arg0) {
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a1_5;
    s32 temp_a1_6;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_4;
    s32 temp_v1;
    s32 temp_v1_2;
    struct GObj *temp_a0;
    struct GObj *temp_a0_2;
    struct GObj *temp_a0_3;
    struct GObj *temp_a0_4;
    struct GObj *temp_a0_5;
    struct GObj *temp_a0_6;
    void *temp_v0_3;
    s32 phi_a1;
    s32 phi_v1;
    s32 phi_a1_2;
    s32 phi_a1_3;

    func_800AECC0(D_800D6B10);
    func_800AED20(D_800D6B10);
    temp_a0 = D_8004A7C4;
    D_800DDFD0[temp_a0->unk0] = 5;
    D_800E1B50[temp_a0->unk0]->unk8C = &D_801F3A18_ovl10;
    D_800E1B50[D_8004A7C4->objId]->unk98 = &D_801F4094_ovl10;
    func_800B33F4(temp_a0);
    temp_a1 = D_8004A7C4->objId * 4;
    temp_v0 = *(&D_800EA360 + temp_a1);
    phi_a1 = temp_a1;
    if (temp_v0 != 0) {
        func_800A1F30(temp_v0, temp_a1);
        temp_a0_2 = D_8004A7C4;
        *(&D_800EA360 + (temp_a0_2->unk0 * 4)) = 0;
        phi_a1 = temp_a0_2->unk0 * 4;
    }
    *(&D_800EA520 + phi_a1) = 0;
    func_800AA018(0x102BF, phi_a1);
    func_800AA154(0x102BE);
    temp_a1_2 = D_8004A7C4->objId;
    D_800E64D0[temp_a1_2] = D_800E6A10[temp_a1_2] * 2.0;
    func_800AA018(0x102C1, temp_a1_2 * 4);
    func_800AA018(0x102C0);
    *(&D_800EA360 + (D_8004A7C4->objId * 4)) = func_800A8234(6, 2, 2);
    play_sound(0x1DD);
    temp_a0_3 = D_8004A7C4;
    *(&D_800EA520 + (temp_a0_3->unk0 * 4)) = 0x64;
    temp_a1_3 = temp_a0_3->unk0 * 4;
    temp_v1 = *(&D_800EA520 + temp_a1_3);
    phi_v1 = temp_v1;
    phi_a1_2 = temp_a1_3;
    if (temp_v1 < 0x78) {
loop_3:
        if (0x76 == phi_v1) {
            temp_v0_2 = *(&D_800EA360 + phi_a1_2);
            if (temp_v0_2 != 0) {
                func_800A1F30(temp_v0_2, phi_a1_2);
                *(&D_800EA360 + (D_8004A7C4->objId * 4)) = 0;
            }
        }
        func_800AF27C();
        temp_a0_4 = D_8004A7C4;
        temp_v0_3 = &D_800EA520 + (temp_a0_4->unk0 * 4);
        *temp_v0_3 = *temp_v0_3 + 1;
        temp_a1_4 = temp_a0_4->unk0 * 4;
        temp_v1_2 = *(&D_800EA520 + temp_a1_4);
        phi_v1 = temp_v1_2;
        phi_a1_2 = temp_a1_4;
        if (temp_v1_2 < 0x78) {
            goto loop_3;
        }
    }
    play_sound(0x1DF);
    temp_a0_5 = D_8004A7C4;
    *(&D_800E6690 + (temp_a0_5->unk0 * 4)) = 0.0f;
    temp_a1_5 = temp_a0_5->unk0;
    D_800E64D0[temp_a1_5] = *(&D_800E6690 + (temp_a1_5 * 4));
    *(&D_800E6850 + (temp_a0_5->unk0 * 4)) = D_801F49C4_ovl10;
    temp_a1_6 = temp_a0_5->unk0 * 4;
    temp_v0_4 = *(&D_800EA360 + temp_a1_6);
    phi_a1_3 = temp_a1_6;
    if (temp_v0_4 != 0) {
        func_800A1F30(temp_v0_4, temp_a1_6);
        temp_a0_6 = D_8004A7C4;
        *(&D_800EA360 + (temp_a0_6->unk0 * 4)) = 0;
        phi_a1_3 = temp_a0_6->unk0 * 4;
    }
    *(&D_800EA520 + phi_a1_3) = 0x3E8;
    func_800AA018(0x102C7, phi_a1_3);
    func_800AA154(0x102C6);
    gEntityVtableIndexArray[D_8004A7C4->objId] = 2;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DDB88_ovl10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void *func_801DDEB8_ovl10(s32 arg0) {
    u8 sp30;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_v0_2;
    struct GObj *temp_v1_2;
    struct GObj *temp_v1_3;
    struct GObj *temp_v1_4;
    void *temp_ret;
    void *temp_ret_2;
    void *temp_v0;
    void *temp_v1;
    void *phi_return;

    func_801DD760_ovl10();
    temp_a2 = D_8004A7C4->objId;
    temp_a2 = temp_a2 * 4;
    temp_v1 = *(&D_800EA360 + temp_a2);
    if (temp_v1 != 0) {
        temp_v1->unk4C->unk4 = gEntitiesNextPosXArray[temp_a2];
        temp_v1->unk4C->unk8 = gEntitiesNextPosYArray[D_8004A7C4->objId];
        temp_v1->unk4C->unkC = gEntitiesNextPosZArray[D_8004A7C4->objId];
        temp_v1->unk4C->unk10 = *(&gEntitiesAngleXArray + (D_8004A7C4->objId * 4));
        temp_v1->unk4C->unk14 = gEntitiesAngleYArray[D_8004A7C4->objId];
        temp_v1->unk4C->unk18 = *(&gEntitiesAngleZArray + (D_8004A7C4->objId * 4));
    }
    func_801A0D74_ovl10(arg0, temp_a2);
    D_800E1B50[D_8004A7C4->objId]->unk8C = &D_801F3A18_ovl10;
    func_801E28C8_ovl10(0);
    temp_v1_2 = D_8004A7C4;
    temp_a2_2 = temp_v1_2->unk0;
    temp_a2_2 = temp_a2_2 * 4;
    temp_a0 = *(&D_800E83E0 + temp_a2_2);
    temp_v0 = &D_800EA520 + temp_a2_2;
    if (temp_a0 == 0) {
        temp_v0_2 = *temp_v0;
        phi_return = temp_v0_2;
        if (temp_v0_2 >= 0xB) {
            phi_return = temp_v0_2;
            if (temp_v0_2 < 0xC8) {
                D_800E1B50[temp_a2_2]->unk8C = &D_801F3E2C_ovl10;
                temp_ret_2 = func_801E2C78_ovl10((*(&D_800DFBD0 + (D_8004A7C4->objId * 4)))->unk14, &sp30, temp_a2_2);
                phi_return = temp_ret_2;
                if (temp_ret_2 != 0) {
                    func_80169430_ovl10(sp3C, sp30, sp31, 1);
                    temp_v1_3 = D_8004A7C4;
                    gEntityVtableIndexArray[temp_v1_3->unk0] = 6;
                    temp_ret = assign_new_process_entry(gEntityGObjProcessArray[temp_v1_3->unk0], &D_801DBD38);
                    temp_v1_4 = D_8004A7C4;
                    D_800EC120[temp_v1_4->unk0] = 0;
                    *(&D_800E9FE0 + (temp_v1_4->unk0 * 4)) = 0;
                    return temp_ret;
                }
            }
        }
    } else {
        phi_return = temp_v0;
        if (temp_a0 == 1) {
            gEntityVtableIndexArray[temp_a2_2] = 9;
            phi_return = assign_new_process_entry(gEntityGObjProcessArray[temp_v1_2->unk0], &D_801DBD38, temp_a2_2);
        }
    }
    return phi_return;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DDEB8_ovl10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_801DE124_ovl10(s32 arg0) {
    f32 *temp_a0;
    f32 temp_f0;
    f32 temp_f20;
    f32 temp_f22;
    s32 temp_s0;
    s32 temp_s0_2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v1_2;
    s32 temp_v1_4;
    s32 temp_v1_5;
    struct GObj *temp_v1;
    struct GObj *temp_v1_3;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    f32 phi_f2;
    f32 phi_f0;
    s32 phi_s0;
    f32 phi_f0_2;
    s32 phi_s0_2;
    ? phi_a2;

    func_800AECC0(D_800D6B10);
    func_800AED20(D_800D6B10);
    temp_v1 = D_8004A7C4;
    D_800DDFD0[temp_v1->unk0] = 6;
    D_800E1B50[temp_v1->unk0]->unk8C = &D_801F39F4_ovl10;
    D_800E1B50[D_8004A7C4->objId]->unk98 = &D_801F4094_ovl10;
    func_800B33F4();
    temp_v0 = *(&D_800EA360 + (D_8004A7C4->objId * 4));
    if (temp_v0 != 0) {
        func_800A1F30(temp_v0);
        *(&D_800EA360 + (D_8004A7C4->objId * 4)) = 0;
    }
    finish_current_thread(0xA);
    if (D_800E98E0[D_800EC120[D_8004A7C4->objId]] == 0) {
loop_3:
        finish_current_thread(1);
        if (D_800E98E0[D_800EC120[D_8004A7C4->objId]] == 0) {
            goto loop_3;
        }
    }
    play_sound(0x1DA);
    func_800AA018(0x102C3);
    func_800AA154(0x102C2);
    temp_v0_2 = D_8004A7C4->objId;
    temp_f0 = func_800F9828(temp_v0_2, D_800E0D50[temp_v0_2]);
    if (temp_f0 == *0x801F0000) {
        phi_f2 = func_8019B608_ovl10(D_800E0D50[D_8004A7C4->objId]);
    } else {
        if (0.0f < temp_f0) {
            phi_f2 = 1.0f;
        } else {
            phi_f2 = -1.0f;
        }
    }
    if (phi_f2 != D_800E6A10[D_8004A7C4->objId]) {
        func_800AECC0(0);
        func_800AED20(0);
        *(&D_800E9020 + (D_8004A7C4->objId * 4)) = 0.0f;
        temp_f22 = D_801F49CC_ovl10;
        temp_f20 = D_801F49D0_ovl10;
        phi_s0 = 0;
loop_11:
        temp_v1_2 = D_8004A7C4->objId;
        temp_v0_3 = &D_800E9020 + (temp_v1_2 * 4);
        if (1.0f == D_800E6A10[temp_v1_2]) {
            phi_f0 = temp_f20;
        } else {
            phi_f0 = temp_f22;
        }
        *temp_v0_3 = *temp_v0_3 + phi_f0;
        finish_current_thread(1);
        temp_s0 = phi_s0 + 1;
        phi_s0 = temp_s0;
        if (temp_s0 != 5) {
            goto loop_11;
        }
        temp_v1_3 = D_8004A7C4;
        temp_a0 = &D_800E6A10[temp_v1_3->unk0];
        *temp_a0 = -*temp_a0;
        temp_v0_4 = &D_800E9020 + (temp_v1_3->unk0 * 4);
        *temp_v0_4 = -*temp_v0_4;
        phi_s0_2 = temp_s0;
loop_16:
        temp_v1_4 = D_8004A7C4->objId;
        temp_v0_5 = &D_800E9020 + (temp_v1_4 * 4);
        if (1.0f == D_800E6A10[temp_v1_4]) {
            phi_f0_2 = temp_f22;
        } else {
            phi_f0_2 = temp_f20;
        }
        *temp_v0_5 = *temp_v0_5 + phi_f0_2;
        finish_current_thread(1);
        temp_s0_2 = phi_s0_2 - 1;
        phi_s0_2 = temp_s0_2;
        if (temp_s0_2 != 0) {
            goto loop_16;
        }
        *(&D_800E9020 + (D_8004A7C4->objId * 4)) = 0.0f;
        func_800AECC0(D_800D6B10);
        func_800AED20(D_800D6B10);
    }
    func_800AA018(0x102C5);
    func_800AA018(0x102C4);
    finish_current_thread(5);
    temp_v1_5 = D_8004A7C4->objId;
    phi_a2 = 0xE;
    if (1.0f == D_800E6A10[temp_v1_5]) {
        phi_a2 = 0xC;
    }
    func_800A7F74(6, 2, phi_a2, (bitwise s32) gEntitiesNextPosXArray[temp_v1_5], gEntitiesNextPosYArray[temp_v1_5], gEntitiesNextPosZArray[temp_v1_5]);
    play_sound(0x1D8);
    *(&D_800E9FE0 + (D_8004A7C4->objId * 4)) = 1;
    func_800AF27C();
    func_800AA018(0x102C7);
    func_800AA154(0x102C6);
    gEntityVtableIndexArray[D_8004A7C4->objId] = 2;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DE124_ovl10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
struct GObj *func_801DE5CC_ovl10(s32 arg0) {
    s32 temp_v1;
    struct GObj *temp_v0;
    struct GObj *phi_return;

    func_801DD760_ovl10();
    func_801A0D74_ovl10(arg0);
    func_801E28C8_ovl10(0);
    temp_v0 = D_8004A7C4;
    temp_v1 = temp_v0->unk0;
    phi_return = temp_v0;
    if (*(&D_800E83E0 + (temp_v1 * 4)) == 1) {
        gEntityVtableIndexArray[temp_v1] = 9;
        phi_return = assign_new_process_entry(gEntityGObjProcessArray[temp_v0->unk0], &D_801DBD38);
    }
    return phi_return;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DE5CC_ovl10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_801DE650_ovl10(s32 arg0) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f12;
    f32 temp_f2;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    struct GObj *temp_v0;
    struct GObj *temp_v0_2;
    struct GObj *temp_v0_3;
    f32 phi_f2;
    f32 phi_f2_2;
    f32 phi_f2_3;
    ? phi_a1;

    temp_f0 = D_800D6B10;
    func_800AECC0(temp_f0 + temp_f0);
    temp_f0_2 = D_800D6B10;
    func_800AED20(temp_f0_2 + temp_f0_2);
    temp_v0 = D_8004A7C4;
    D_800DDFD0[temp_v0->unk0] = 7;
    D_800E1B50[temp_v0->unk0]->unk8C = &D_801F3A18_ovl10;
    D_800E1B50[D_8004A7C4->objId]->unk98 = &D_801F4094_ovl10;
    func_800B33F4();
    D_800E8920[D_8004A7C4->objId] = 1;
    func_800AA018(0x102C9);
    func_800AA018(0x102C8);
    temp_v0_2 = D_8004A7C4;
    temp_v1 = temp_v0_2->unk0;
    temp_f12 = gEntitiesNextPosYArray[temp_v1] + 40.0f;
    temp_f0_3 = *gEntitiesNextPosYArray + 20.0f;
    if (temp_f0_3 < temp_f12) {
        phi_f2 = -(temp_f0_3 - temp_f12);
    } else {
        phi_f2 = temp_f0_3 - temp_f12;
    }
    phi_f2_2 = phi_f2;
    if (240.0f < phi_f2) {
        phi_f2_2 = 240.0f;
    }
    phi_f2_3 = phi_f2_2;
    if (phi_f2_2 < 80.0f) {
        phi_f2_3 = 80.0f;
    }
    D_800E8920[temp_v1] = 0;
    temp_f0_4 = phi_f2_3 / 240.0f;
    D_800E3210[temp_v0_2->unk0] = 30.0f * temp_f0_4;
    D_800E3750[temp_v0_2->unk0] = -2.0f * temp_f0_4;
    D_800E3C90[temp_v0_2->unk0] = 30.0f;
    if (0.0f < D_800E3210[temp_v0_2->unk0]) {
loop_8:
        finish_current_thread(1);
        if (0.0f < D_800E3210[D_8004A7C4->objId]) {
            goto loop_8;
        }
    }
    play_sound(0x1D9);
    func_800AA018(0x102CB);
    func_800AA154(0x102CA);
    func_800AECC0(D_800D6B10);
    func_800AED20(D_800D6B10);
    func_800AA018(0x102CD);
    func_800AA018(0x102CC);
    if (D_800E8920[D_8004A7C4->objId] == 0) {
loop_10:
        finish_current_thread(1);
        if (D_800E8920[D_8004A7C4->objId] == 0) {
            goto loop_10;
        }
    }
    func_801DBF70_ovl10(5, 0.0f);
    func_800FB914(2);
    play_sound(0x1D6);
    temp_v0_3 = D_8004A7C4;
    D_800E3910[temp_v0_3->unk0] = 0.0f;
    temp_v1_2 = temp_v0_3->unk0;
    temp_f0_5 = D_800E3910[temp_v1_2];
    D_800E3750[temp_v1_2] = temp_f0_5;
    D_800E3590[temp_v0_3->unk0] = temp_f0_5;
    D_800E33D0[temp_v0_3->unk0] = temp_f0_5;
    D_800E3210[temp_v0_3->unk0] = temp_f0_5;
    D_800E3050[temp_v0_3->unk0] = temp_f0_5;
    D_800E3E50[temp_v0_3->unk0] = D_801F49D4_ovl10;
    temp_v1_3 = temp_v0_3->unk0;
    temp_f2 = D_800E3E50[temp_v1_3];
    D_800E3C90[temp_v1_3] = temp_f2;
    D_800E3AD0[temp_v0_3->unk0] = temp_f2;
    phi_a1 = 0;
    if (1.0f == D_800E6A10[temp_v0_3->unk0]) {
        phi_a1 = 1;
    }
    func_801ACCA0_ovl10(6, phi_a1, 0x42A00000, 0x41700000);
    func_800AA018(0x102CF);
    func_800AA154(0x102CE);
    gEntityVtableIndexArray[D_8004A7C4->objId] = 2;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DE650_ovl10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_801DEA98_ovl10(s32 arg0) {
    ? sp24;
    s32 temp_v0;
    struct GObj *temp_v1;
    s32 phi_v0;

    func_801DD760_ovl10();
    func_801A0D74_ovl10(arg0);
    D_800E1B50[D_8004A7C4->objId]->unk8C = &D_801F3A18_ovl10;
    func_801E28C8_ovl10(0);
    temp_v1 = D_8004A7C4;
    temp_v0 = temp_v1->unk0;
    temp_v0 = temp_v0 * 4;
    phi_v0 = temp_v0;
    if (*(&D_800E83E0 + temp_v0) == 1) {
        gEntityVtableIndexArray[temp_v0] = 9;
        assign_new_process_entry(gEntityGObjProcessArray[temp_v1->unk0], &D_801DBD38);
        phi_v0 = D_8004A7C4->objId * 4;
    }
    (*(D_800E1B50 + phi_v0))->unk8C = &D_801F3B38_ovl10;
    func_801E2BD8_ovl10((*(&D_800DFBD0 + (D_8004A7C4->objId * 4)))->unk50, &sp24);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DEA98_ovl10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
s32 func_801DEB94_ovl10(s32 arg0) {
    ? sp88;
    s32 sp78;
    void *sp64;
    void *sp60;
    f32 temp_f0;
    f32 temp_f0_2;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_s3;
    s32 temp_v0;
    s32 temp_v0_10;
    s32 temp_v0_11;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 temp_v0_9;
    s32 temp_v1_3;
    struct EntityThing800E9AA0 *temp_v1_2;
    struct GObj *temp_v1;
    struct GObj *temp_v1_4;
    struct GObj *temp_v1_5;
    void *temp_a0;
    void *temp_a0_2;
    f32 phi_f24;
    f32 phi_f24_2;
    f32 phi_f24_3;
    s32 phi_v0;
    struct GObj *phi_v1;
    f32 phi_f24_4;
    s32 phi_a1;
    s32 phi_v0_2;
    s32 phi_v0_3;
    s32 phi_a1_2;
    void *phi_a0;
    struct GObj *phi_v1_2;
    s32 phi_v0_4;
    s32 phi_return;
    f32 phi_f0;

    func_800AECC0(D_800D6B10);
    func_800AED20(D_800D6B10);
    temp_v1 = D_8004A7C4;
    ((temp_v1->unk0 * 4) + 0x800E0000)->unk-2030 = 8;
    D_800E1B50[temp_v1->unk0]->unk8C = &D_801F3A18_ovl10;
    D_800E1B50[D_8004A7C4->objId]->unk98 = &D_801F4094_ovl10;
    func_800B33F4();
    D_800E8920[D_8004A7C4->objId] = 1;
    func_800AA018(0x102D1);
    func_800AA154(0x102D0);
    ((D_8004A7C4->objId * 4) + 0x800E0000)->unk3C90 = 45.0f;
    if (func_8019A900_ovl10(&sp88) != 0) {
        phi_f24 = sp8C;
    } else {
        phi_f24 = func_801DF234_ovl10();
    }
    if (phi_f24 < 0.0f) {
        sp78 = 0;
    } else {
        sp78 = 1;
    }
    if (sp78 != 0) {
        temp_v0 = D_8004A7C4->objId;
        temp_v1_2 = D_800E9AA0[(&D_800E1B50[temp_v0])[0x354]];
        temp_f0 = func_800F951C(D_800E5F90[temp_v0], (bitwise s32) D_800E6BD0[temp_v0], D_800E5F90[temp_v1_2], (bitwise s32) D_800E6BD0[temp_v1_2]);
        phi_f24_2 = phi_f24;
        if (temp_f0 != *0x801F0000) {
            phi_f24_2 = phi_f24;
            if (temp_f0 < phi_f24) {
                phi_f24_2 = temp_f0;
            }
        }
        phi_f24_4 = phi_f24_2;
        if (400.0f < phi_f24_2) {
            phi_f0 = 400.0f;
block_16:
            phi_f24_4 = phi_f0;
        }
    } else {
        temp_v0_2 = D_8004A7C4->objId;
        temp_v1_3 = D_800E98E0[D_800E0D50[temp_v0_2]];
        temp_f0_2 = func_800F951C(D_800E5F90[temp_v0_2], (bitwise s32) D_800E6BD0[temp_v0_2], D_800E5F90[temp_v1_3], (bitwise s32) D_800E6BD0[temp_v1_3]);
        phi_f24_3 = phi_f24;
        if (temp_f0_2 != *0x801F0000) {
            phi_f24_3 = phi_f24;
            if (phi_f24 < temp_f0_2) {
                phi_f24_3 = temp_f0_2;
            }
        }
        phi_f24_4 = phi_f24_3;
        phi_f0 = -400.0f;
        if (phi_f24_3 < -400.0f) {
            goto block_16;
        }
    }
    temp_s3 = sp78 * 4;
    func_800AA018(*(&D_801F4310_ovl10 + temp_s3));
    func_800AA018(*(&D_801F4308_ovl10 + temp_s3));
    play_sound(0x1D7);
    temp_v1_4 = D_8004A7C4;
    *(&D_800EA520 + (temp_v1_4->unk0 * 4)) = 0;
    temp_v0_3 = temp_v1_4->unk0 * 4;
    phi_v0_4 = temp_v0_3;
    phi_return = temp_v0_3;
    if (*(&D_800EA520 + temp_v0_3) < 3) {
        sp64 = temp_s3 + &D_801F4318_ovl10;
        sp60 = temp_s3 + &D_801F4320_ovl10;
        phi_v0 = temp_v0_3;
        phi_v1 = temp_v1_4;
loop_19:
        *(D_800E8920 + phi_v0) = 0;
        temp_v0_4 = phi_v1->unk0;
        temp_v0_4 = temp_v0_4 * 4;
        temp_a1 = *(&D_800EA520 + temp_v0_4);
        phi_a1 = temp_a1;
        phi_v0_2 = temp_v0_4;
        if (temp_a1 == 2) {
            D_800E64D0[temp_v0_4] = phi_f24_4 * D_801F49E0_ovl10;
            temp_v0_5 = phi_v1->unk0 * 4;
            phi_a1 = *(&D_800EA520 + temp_v0_5);
            phi_v0_2 = temp_v0_5;
        }
        *(D_800E3210 + phi_v0_2) = *(&D_801F4328_ovl10 + (phi_a1 * 4));
        D_800E3750[phi_v1->unk0] = -1.0f;
        func_800AA018(*sp60, phi_a1);
        func_800AA018(*sp64);
        temp_v0_6 = D_8004A7C4->objId;
        phi_v0_3 = temp_v0_6 * 4;
        if (D_800E8920[temp_v0_6] == 0) {
loop_22:
            finish_current_thread(1);
            temp_v0_7 = D_8004A7C4->objId;
            phi_v0_3 = temp_v0_7 * 4;
            if (D_800E8920[temp_v0_7] == 0) {
                goto loop_22;
            }
        }
        *(D_800E3210 + phi_v0_3) = 0.0f;
        D_800E3750[D_8004A7C4->objId] = 0.0f;
        *(&D_800E6690 + (D_8004A7C4->objId * 4)) = 0.0f;
        temp_v0_8 = D_8004A7C4->objId;
        D_800E64D0[temp_v0_8] = *(&D_800E6690 + (temp_v0_8 * 4));
        *(&D_800E6850 + (D_8004A7C4->objId * 4)) = D_801F49E4_ovl10;
        temp_a0 = &D_800EA520 + (D_8004A7C4->objId * 4);
        temp_a1_2 = *temp_a0;
        phi_a1_2 = temp_a1_2;
        phi_a0 = temp_a0;
        phi_v1_2 = D_8004A7C4;
        if (temp_a1_2 == 2) {
            func_800AA018(0x102D5, temp_a1_2);
            func_800AA018(0x102D4);
            temp_v0_9 = D_8004A7C4->objId;
            func_800A7F74(6, 2, 1, (bitwise s32) gEntitiesNextPosXArray[temp_v0_9], gEntitiesNextPosYArray[temp_v0_9], gEntitiesNextPosZArray[temp_v0_9]);
            finish_current_thread(2);
            func_801ACCA0_ovl10(6, 0, D_800E6A10[D_8004A7C4->objId] * -40.0f, 0x41700000);
            func_801ACCA0_ovl10(6, 1, D_800E6A10[D_8004A7C4->objId] * 40.0f, 0x41700000);
            func_800FB914(2);
            play_sound(0x1D6);
            finish_current_thread(4);
            temp_v0_10 = D_8004A7C4->objId;
            func_800A7F74(6, 2, 1, (bitwise s32) gEntitiesNextPosXArray[temp_v0_10], gEntitiesNextPosYArray[temp_v0_10], gEntitiesNextPosZArray[temp_v0_10]);
            func_800AF27C();
            func_800AA018(0x102D9);
            func_800AA154(0x102D8);
            temp_v1_5 = D_8004A7C4;
            temp_a0_2 = &D_800EA520 + (temp_v1_5->unk0 * 4);
            phi_a1_2 = *temp_a0_2;
            phi_a0 = temp_a0_2;
            phi_v1_2 = temp_v1_5;
        }
        *phi_a0 = phi_a1_2 + 1;
        temp_v0_11 = phi_v1_2->unk0 * 4;
        phi_v0 = temp_v0_11;
        phi_v1 = phi_v1_2;
        phi_v0_4 = temp_v0_11;
        phi_return = temp_v0_11;
        if (*(&D_800EA520 + temp_v0_11) < 3) {
            goto loop_19;
        }
    }
    *(gEntityVtableIndexArray + phi_v0_4) = 2;
    return phi_return;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DEB94_ovl10.s")
#endif

f32 func_801DF234_ovl10(void) {
    f32 temp_f0;
    f32 temp_f14;
    f32 temp_f2;
    f32 phi_f2;
    f32 pad[2];

    temp_f0 =  gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[D_8004A7C4->objId];
    temp_f2 = (gEntitiesNextPosYArray[0] + 20.0f) - (gEntitiesNextPosYArray[D_8004A7C4->objId] + 40.0f);
    temp_f14 = gEntitiesNextPosZArray[0] - gEntitiesNextPosZArray[D_8004A7C4->objId];

    return ABSF(sqrtf(((temp_f0 * temp_f0) + (temp_f2 * temp_f2)) + (temp_f14 * temp_f14)));
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
struct GObj *func_801DF310_ovl10(s32 arg0) {
    s32 temp_v1;
    struct GObj *temp_v0;
    struct GObj *phi_return;

    func_801DD760_ovl10();
    func_801A0D74_ovl10(arg0);
    func_801E28C8_ovl10(0);
    temp_v0 = D_8004A7C4;
    temp_v1 = temp_v0->unk0;
    phi_return = temp_v0;
    if (*(&D_800E83E0 + (temp_v1 * 4)) == 1) {
        gEntityVtableIndexArray[temp_v1] = 9;
        phi_return = assign_new_process_entry(gEntityGObjProcessArray[temp_v0->unk0], &D_801DBD38);
    }
    return phi_return;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DF310_ovl10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_801DF394_ovl10(s32 arg0) {
    s32 temp_v0_2;
    struct GObj *temp_v0;

    func_800AECC0(D_800D6B10);
    func_800AED20(D_800D6B10);
    temp_v0 = D_8004A7C4;
    D_800DDFD0[temp_v0->unk0] = 9;
    D_800E1B50[temp_v0->unk0]->unk8C = &D_801F39F4_ovl10;
    D_800E1B50[D_8004A7C4->objId]->unk98 = &D_801F4094_ovl10;
    func_800B33F4(D_800E1B50);
    play_sound(0x1DF);
    play_sound(0x2A);
    func_800BB468(2, 0);
    temp_v0_2 = *(&D_800EA360 + (D_8004A7C4->objId * 4));
    if (temp_v0_2 != 0) {
        func_800A22D4(temp_v0_2);
        *(&D_800EA360 + (D_8004A7C4->objId * 4)) = 0;
    }
    func_800AA018(0x102DF);
    func_800AA154(0x102DE);
    gEntityVtableIndexArray[D_8004A7C4->objId] = 0xA;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DF394_ovl10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_801DF4CC_ovl10(void) {
    D_800E8920[D_8004A7C4->objId] = 0;
    func_801A0D74_ovl10();
    func_801E28C8_ovl10(0);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DF4CC_ovl10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_801DF50C_ovl10(s32 arg0) {
    struct UnkStruct800E1B50 *sp54;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f0_6;
    f32 temp_f0_7;
    f32 temp_f2;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_v0;
    s32 temp_v0_10;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 temp_v0_9;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    struct GObj *temp_a1;
    struct GObj *temp_a1_2;
    struct GObj *temp_a1_3;
    struct GObj *temp_a1_4;
    struct GObj *temp_a1_5;
    struct GObj *temp_a1_6;
    void *temp_a2;
    void *temp_a2_2;
    s32 phi_a0;
    s32 phi_v0;
    struct GObj *phi_a1;
    s32 phi_v1;
    s32 phi_v0_2;
    void *phi_a2;
    f32 phi_f0;
    s32 phi_a0_2;
    void *phi_a2_2;
    struct GObj *phi_a1_2;
    s32 phi_a0_3;
    struct GObj *phi_a1_3;

    sp54 = D_800E1B50[D_8004A7C4->objId];
    func_801DFE64_ovl10();
    func_800AECC0(D_800D6B10);
    func_800AED20(D_800D6B10);
    temp_a1 = D_8004A7C4;
    D_800DDFD0[temp_a1->unk0] = 0xA;
    D_800E1B50[temp_a1->unk0]->unk8C = &D_801F3A84_ovl10;
    D_800E1B50[D_8004A7C4->objId]->unk98 = &D_801F4094_ovl10;
    func_800B33F4(temp_a1);
    func_800A9760(0x1005D);
    func_800AA018(0x10305);
    func_800AA018(0x10304);
    if (0.0f != *(&D_800E9020 + (D_8004A7C4->objId * 4))) {
        func_801DFCC0_ovl10();
    } else {
        func_800AF27C();
    }
    func_800AA018(0x10307);
    func_800AA018(0x10306);
    if (0.0f != *(&D_800E9020 + (D_8004A7C4->objId * 4))) {
        func_801DFCC0_ovl10();
    } else {
        func_800AF27C();
    }
    temp_a1_2 = D_8004A7C4;
    *(&D_800E9020 + (temp_a1_2->unk0 * 4)) = 0.0f;
    D_800E64D0[temp_a1_2->unk0] = 0.0f;
    D_800E3210[temp_a1_2->unk0] = 0.0f;
    func_80198880_ovl10(&D_801F344C_ovl10, temp_a1_2);
    func_801A2ADC_ovl10(sp54->unk88->unk10);
    D_800E1B50[D_8004A7C4->objId]->unk8C = &D_801F3A84_ovl10;
    temp_a1_3 = D_8004A7C4;
    *(&D_800E9E20 + (temp_a1_3->unk0 * 4)) = 0;
    *(&D_800EA520 + (temp_a1_3->unk0 * 4)) = 0;
    temp_v0 = temp_a1_3->unk0 * 4;
    temp_a0 = *(&D_800EA520 + temp_v0);
    phi_a0_3 = temp_a0;
    phi_a1_3 = temp_a1_3;
    if (temp_a0 < 0xA) {
        phi_a0 = temp_a0;
        phi_v0 = temp_v0;
        phi_a1 = temp_a1_3;
loop_8:
        temp_f0 = *(&D_801F4338_ovl10 + (phi_a0 * 4));
        if (temp_f0 < 0.0f) {
            *(&D_800E6850 + phi_v0) = -temp_f0;
        } else {
            (&D_800E6850 + phi_v0)->unk6850 = temp_f0;
        }
        temp_v0_2 = phi_a1->unk0 * 4;
        temp_f0_2 = *(&D_801F4338_ovl10 + (*(&D_800EA520 + temp_v0_2) * 4));
        if (temp_f0_2 < 0.0f) {
            *(D_800E3C90 + temp_v0_2) = -temp_f0_2;
        } else {
            *(D_800E3C90 + temp_v0_2) = temp_f0_2;
        }
        D_800EA8A0[phi_a1->unk0] = 200.0f;
        temp_v0_3 = phi_a1->unk0;
        D_800EA6E0[temp_v0_3] = D_800EA8A0[temp_v0_3];
        temp_v1 = phi_a1->unk0;
        temp_v0_4 = temp_v1 * 4;
        temp_a2 = &D_800EA520 + temp_v0_4;
        temp_a0_2 = *temp_a2;
        phi_a0_2 = temp_a0_2;
        phi_a2_2 = temp_a2;
        phi_a1_2 = phi_a1;
        if (temp_a0_2 < 0xB) {
            temp_f0_3 = *(&D_801F4390_ovl10 + (temp_a0_2 * 4));
            phi_v1 = temp_v1;
            phi_v0_2 = temp_v0_4;
            phi_a2 = temp_a2;
            if (!(temp_f0_3 < D_800EA6E0[temp_v1])) {
                phi_v1 = temp_v1;
                phi_v0_2 = temp_v0_4;
                phi_a2 = temp_a2;
                phi_a0_2 = temp_a0_2;
                phi_a2_2 = temp_a2;
                phi_a1_2 = phi_a1;
                if (temp_f0_3 < D_800EA8A0[temp_v1]) {
loop_17:
                    if (func_800F9828(phi_v1, *(D_800E0D50 + phi_v0_2), phi_a2) < 0.0f) {
                        temp_v1_2 = D_8004A7C4->objId;
                        temp_f0_4 = func_800F9828(temp_v1_2, D_800E0D50[temp_v1_2]);
                        D_800EA6E0[D_8004A7C4->objId] = -temp_f0_4;
                        phi_f0 = temp_f0_4;
                    } else {
                        temp_v1_3 = D_8004A7C4->objId;
                        temp_f0_5 = func_800F9828(temp_v1_3, D_800E0D50[temp_v1_3]);
                        D_800EA6E0[D_8004A7C4->objId] = temp_f0_5;
                        phi_f0 = temp_f0_5;
                    }
                    if (0.0f < phi_f0) {
                        temp_v0_5 = D_8004A7C4->objId * 4;
                        *(&D_800E6690 + temp_v0_5) = -*(&D_801F4364_ovl10 + (*(&D_800EA520 + temp_v0_5) * 4));
                    } else {
                        temp_v0_6 = D_8004A7C4->objId * 4;
                        *(&D_800E6690 + temp_v0_6) = *(&D_801F4364_ovl10 + (*(&D_800EA520 + temp_v0_6) * 4));
                    }
                    temp_v0_7 = D_8004A7C4->objId;
                    temp_f0_6 = gEntitiesNextPosYArray[temp_v0_7];
                    temp_f2 = gEntitiesNextPosYArray[D_800E0D50[temp_v0_7]];
                    if (temp_f0_6 < temp_f2) {
                        D_800EA8A0[temp_v0_7] = -(temp_f0_6 - temp_f2);
                    } else {
                        D_800EA8A0[temp_v0_7] = temp_f0_6 - temp_f2;
                    }
                    temp_v0_8 = D_8004A7C4->objId;
                    temp_v0_8 = temp_v0_8 * 4;
                    if (gEntitiesNextPosYArray[temp_v0_8] < gEntitiesNextPosYArray[D_800E0D50[temp_v0_8]]) {
                        D_800E3750[temp_v0_8] = -*(&D_801F4364_ovl10 + (*(&D_800EA520 + temp_v0_8) * 4));
                    } else {
                        D_800E3750[temp_v0_8] = *(&D_801F4364_ovl10 + (*(&D_800EA520 + temp_v0_8) * 4));
                    }
                    finish_current_thread(1, D_8004A7C4);
                    temp_a1_4 = D_8004A7C4;
                    temp_v1_4 = temp_a1_4->unk0;
                    temp_v0_9 = temp_v1_4 * 4;
                    temp_a2_2 = &D_800EA520 + temp_v0_9;
                    temp_a0_3 = *temp_a2_2;
                    phi_a0_2 = temp_a0_3;
                    phi_a2_2 = temp_a2_2;
                    phi_a1_2 = temp_a1_4;
                    if (temp_a0_3 < 0xB) {
                        temp_f0_7 = *(&D_801F4390_ovl10 + (temp_a0_3 * 4));
                        phi_v1 = temp_v1_4;
                        phi_v0_2 = temp_v0_9;
                        phi_a2 = temp_a2_2;
                        if (temp_f0_7 < D_800EA6E0[temp_v1_4]) {
                            goto loop_17;
                        }
                        phi_v1 = temp_v1_4;
                        phi_v0_2 = temp_v0_9;
                        phi_a2 = temp_a2_2;
                        phi_a0_2 = temp_a0_3;
                        phi_a2_2 = temp_a2_2;
                        phi_a1_2 = temp_a1_4;
                        if (temp_f0_7 < D_800EA8A0[temp_v1_4]) {
                            goto loop_17;
                        }
                    }
                }
            } else {
                goto loop_17;
            }
        }
        *phi_a2_2 = phi_a0_2 + 1;
        temp_v0_10 = phi_a1_2->unk0 * 4;
        temp_a0_4 = *(&D_800EA520 + temp_v0_10);
        phi_a0 = temp_a0_4;
        phi_v0 = temp_v0_10;
        phi_a1 = phi_a1_2;
        phi_a0_3 = temp_a0_4;
        phi_a1_3 = phi_a1_2;
        if (temp_a0_4 < 0xA) {
            goto loop_8;
        }
    }
    func_800AF27C(phi_a0_3, phi_a1_3, D_800E3C90);
    temp_a1_5 = D_8004A7C4;
    *(&D_800E7B20 + (temp_a1_5->unk0 * 4)) = *sp54->unk88;
    func_800BC1FC(*(&D_800E7B20 + (temp_a1_5->unk0 * 4)), temp_a1_5);
    func_800AF27C();
    func_800AF27C();
    D_800E98E0[D_8004A7C4->objId] = random_soft_s32_range(4);
    D_800E9AA0[D_8004A7C4->objId] = random_soft_s32_range(4);
    temp_a1_6 = D_8004A7C4;
    *(&D_800E9C60 + (temp_a1_6->unk0 * 4)) = random_soft_s32_range(6);
    gEntityVtableIndexArray[temp_a1_6->unk0] = 0xB;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DF50C_ovl10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_801DFBFC_ovl10(s32 arg0) {
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_v1_2;
    struct GObj *temp_v0;
    void *temp_v1;

    temp_v0 = D_8004A7C4;
    temp_v1 = (temp_v0->unk0 * 4) + &D_800E9E20;
    temp_a1 = *temp_v1;
    temp_a2 = (temp_a1 < 0x79) ^ 1;
    *temp_v1 = temp_a1 + 1;
    if (temp_a2 != 0) {
        *(&D_800EA520 + (temp_v0->unk0 * 4)) = 0x3E8;
        D_800EA8A0[temp_v0->unk0] = 0.0f;
        temp_v1_2 = temp_v0->unk0;
        D_800EA6E0[temp_v1_2] = D_800EA8A0[temp_v1_2];
    }
    D_800E8920[temp_v0->unk0] = 0;
    func_801A0D74_ovl10(arg0, temp_a1, temp_a2, arg0);
    func_801E28C8_ovl10(0);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DFBFC_ovl10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
? func_801DFCC0_ovl10(void) {
    f32 temp_f22;
    s32 temp_v0;
    struct GObj *temp_a0;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;
    f32 phi_f0;
    f32 phi_f22;
    s32 phi_v0;
    void *phi_v1;
    f32 phi_f22_2;

    temp_f22 = *(&D_800E9020 + (D_8004A7C4->objId * 4));
    if (temp_f22 != 0.0f) {
        phi_f22 = temp_f22;
loop_2:
        temp_a0 = D_8004A7C4;
        temp_v0 = temp_a0->unk0;
        temp_v1 = &D_800E9020 + (temp_v0 * 4);
        if (1.0f == D_800E6A10[temp_v0]) {
            phi_f0 = D_801F49EC_ovl10;
        } else {
            phi_f0 = D_801F49E8_ovl10;
        }
        *temp_v1 = *temp_v1 + phi_f0;
        if (0.0f < phi_f22) {
            temp_v1_2 = &D_800E9020 + (temp_a0->unk0 * 4);
            phi_v0 = 0;
            phi_v1 = temp_v1_2;
            if (*temp_v1_2 <= 0.0f) {
                phi_v0 = 1;
                phi_v1 = temp_v1_2;
            }
        } else {
            temp_v1_3 = &D_800E9020 + (temp_a0->unk0 * 4);
            phi_v0 = 0;
            phi_v1 = temp_v1_3;
            if (0.0f <= *temp_v1_3) {
                phi_v0 = 1;
                phi_v1 = temp_v1_3;
            }
        }
        phi_f22_2 = phi_f22;
        if (phi_v0 != 0) {
            *phi_v1 = 0.0f;
            phi_f22_2 = *(&D_800E9020 + (temp_a0->unk0 * 4));
        }
        finish_current_thread(1);
        if (func_800AF230() != 0) {
            return 0;
        }
        phi_f22 = phi_f22_2;
        if (phi_f22_2 != 0.0f) {
            goto loop_2;
        }
    }
    func_800AF27C();
    return 1;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DFCC0_ovl10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
f32 func_801DFE64_ovl10(void) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    s32 temp_v0;
    s32 temp_v0_3;
    struct GObj *temp_v1;
    u32 temp_v0_2;

    temp_v1 = D_8004A7C4;
    temp_v0 = *(&D_800EBDA0 + (D_800E0D50[temp_v1->unk0] * 4));
    D_801F4D48_ovl10.unkC = temp_v0;
    D_801F4D48_ovl10.unk0 = temp_v0;
    temp_v0_2 = D_800E0D50[temp_v1->unk0];
    D_801F4D48_ovl10.unk10 = temp_v0_2;
    D_801F4D48_ovl10.unk4 = temp_v0_2;
    temp_v0_3 = *(&D_800EBF60 + (D_800E0D50[temp_v1->unk0] * 4));
    D_801F4D48_ovl10.unk14 = temp_v0_3;
    D_801F4D48_ovl10.unk8 = temp_v0_3;
    temp_f0_2 = gEntitiesNextPosYArray[D_800E0D50[temp_v1->unk0]] - 20.0f;
    D_801F4D30_ovl10.unk8 = temp_f0_2;
    D_801F4D30_ovl10.unk0 = temp_f0_2;
    temp_f0_3 = gEntitiesNextPosYArray[D_800E0D50[temp_v1->unk0]];
    D_801F4D30_ovl10.unk4 = temp_f0_3;
    D_801F4D30_ovl10.unk10 = temp_f0_3 - 40.0f;
    temp_f0 = gEntitiesNextPosYArray[D_800E0D50[temp_v1->unk0]] - 60.0f;
    D_801F4D30_ovl10.unk14 = temp_f0;
    D_801F4D30_ovl10.unkC = temp_f0;
    return temp_f0;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DFE64_ovl10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void *func_801DFF88_ovl10(s32 arg0) {
    s32 sp74;
    f32 *temp_v1_4;
    f32 temp_f22;
    f32 temp_f24;
    s32 temp_a1;
    s32 temp_s0;
    s32 temp_s0_2;
    s32 temp_v1;
    s32 temp_v1_10;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_5;
    s32 temp_v1_6;
    s32 temp_v1_7;
    s32 temp_v1_8;
    s32 temp_v1_9;
    struct GObj *temp_a0;
    struct GObj *temp_a0_2;
    struct GObj *temp_a0_3;
    struct GObj *temp_a0_4;
    void *temp_a2;
    void *temp_ret;
    void *temp_ret_2;
    void *temp_ret_3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    f32 phi_f2;
    f32 phi_f0;
    s32 phi_s0;
    f32 phi_f0_2;
    s32 phi_s0_2;
    s32 phi_v1;
    s32 phi_a1;
    s32 phi_v1_2;
    void *phi_return;
    s32 *phi_a1_2;
    void *phi_return_2;

    func_800AECC0(D_800D6B10);
    func_800AED20(D_800D6B10);
    temp_a0 = D_8004A7C4;
    D_800DDFD0[temp_a0->unk0] = 0xB;
    D_800E1B50[temp_a0->unk0]->unk8C = &D_801F3AA8_ovl10;
    D_800E1B50[D_8004A7C4->objId]->unk98 = &D_801F4094_ovl10;
    func_800B33F4(temp_a0);
    func_800AA018(0x10307);
    temp_ret = func_800AA018(0x10306);
    temp_a0_2 = D_8004A7C4;
    *(&D_800EA520 + (temp_a0_2->unk0 * 4)) = 0;
    temp_v1 = temp_a0_2->unk0 * 4;
    phi_v1 = temp_v1;
    phi_return_2 = temp_ret;
    if (*(&D_800EA520 + temp_v1) < 2) {
        temp_f24 = D_801F49F0_ovl10;
        temp_f22 = D_801F49F4_ovl10;
loop_2:
        if (func_8019A900_ovl10(&sp74) != 0) {
            phi_f2 = sp74;
        } else {
            phi_f2 = func_8019B608_ovl10(0);
        }
        temp_v1_2 = D_8004A7C4->objId;
        if (phi_f2 != D_800E6A10[temp_v1_2]) {
            *(&D_800E9020 + (temp_v1_2 * 4)) = 0.0f;
            phi_s0 = 0;
loop_7:
            temp_v1_3 = D_8004A7C4->objId;
            temp_v0 = &D_800E9020 + (temp_v1_3 * 4);
            if (1.0f == D_800E6A10[temp_v1_3]) {
                phi_f0 = temp_f22;
            } else {
                phi_f0 = temp_f24;
            }
            *temp_v0 = *temp_v0 + phi_f0;
            finish_current_thread(1);
            temp_s0 = phi_s0 + 1;
            phi_s0 = temp_s0;
            if (temp_s0 != 5) {
                goto loop_7;
            }
            temp_a0_3 = D_8004A7C4;
            temp_v1_4 = &D_800E6A10[temp_a0_3->unk0];
            *temp_v1_4 = -*temp_v1_4;
            temp_v0_2 = &D_800E9020 + (temp_a0_3->unk0 * 4);
            *temp_v0_2 = -*temp_v0_2;
            phi_s0_2 = temp_s0;
loop_12:
            temp_v1_5 = D_8004A7C4->objId;
            temp_v0_3 = &D_800E9020 + (temp_v1_5 * 4);
            if (1.0f == D_800E6A10[temp_v1_5]) {
                phi_f0_2 = temp_f24;
            } else {
                phi_f0_2 = temp_f22;
            }
            *temp_v0_3 = *temp_v0_3 + phi_f0_2;
            finish_current_thread(1);
            temp_s0_2 = phi_s0_2 - 1;
            phi_s0_2 = temp_s0_2;
            if (temp_s0_2 != 0) {
                goto loop_12;
            }
            *(&D_800E9020 + (D_8004A7C4->objId * 4)) = 0.0f;
        }
        finish_current_thread(1);
        func_800AF27C();
        temp_a0_4 = D_8004A7C4;
        temp_v0_4 = &D_800EA520 + (temp_a0_4->unk0 * 4);
        *temp_v0_4 = *temp_v0_4 + 1;
        temp_v1_6 = temp_a0_4->unk0 * 4;
        phi_v1 = temp_v1_6;
        phi_return_2 = temp_v0_4;
        if (*(&D_800EA520 + temp_v1_6) < 2) {
            goto loop_2;
        }
    }
    temp_a2 = D_800E98E0 + phi_v1;
    temp_a1 = *temp_a2;
    if (temp_a1 != 0) {
        if (temp_a1 != 1) {
            if (temp_a1 != 2) {
                if (temp_a1 != 3) {
                    phi_a1 = temp_a1;
                    phi_v1_2 = phi_v1;
                    phi_return = phi_return_2;
                } else {
                    *temp_a2 = 0;
                    temp_v1_7 = D_8004A7C4->objId;
                    phi_a1_2 = &D_800E98E0[temp_v1_7];
                    phi_v1_2 = temp_v1_7 * 4;
                    phi_return = phi_return_2;
block_33:
                    phi_a1 = *phi_a1_2;
                }
            } else {
                temp_ret_2 = random_soft_s32_range(3, temp_a1, temp_a2);
                if (temp_ret_2 == 0) {
                    D_800E98E0[D_8004A7C4->objId] = 0;
                } else {
                    D_800E98E0[D_8004A7C4->objId] = 3;
                }
                temp_v1_8 = D_8004A7C4->objId;
                phi_a1_2 = &D_800E98E0[temp_v1_8];
                phi_v1_2 = temp_v1_8 * 4;
                phi_return = temp_ret_2;
                goto block_33;
            }
        } else {
            temp_ret_3 = random_soft_s32_range(3, temp_a1, temp_a2);
            if (temp_ret_3 == 0) {
                D_800E98E0[D_8004A7C4->objId] = 0;
            } else {
                D_800E98E0[D_8004A7C4->objId] = 2;
            }
            temp_v1_9 = D_8004A7C4->objId;
            phi_a1_2 = &D_800E98E0[temp_v1_9];
            phi_v1_2 = temp_v1_9 * 4;
            phi_return = temp_ret_3;
            goto block_33;
        }
    } else {
        *temp_a2 = 1;
        temp_v1_10 = D_8004A7C4->objId;
        phi_a1_2 = &D_800E98E0[temp_v1_10];
        phi_v1_2 = temp_v1_10 * 4;
        phi_return = phi_return_2;
        goto block_33;
    }
    if (phi_a1 == 0) {
        *(gEntityVtableIndexArray + phi_v1_2) = 0xC;
        return phi_return;
    }
    *(gEntityVtableIndexArray + phi_v1_2) = 0xD;
    return phi_return;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801DFF88_ovl10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
struct GObj *func_801E03CC_ovl10(void) {
    s32 temp_v1;
    struct GObj *temp_v0;
    struct GObj *phi_return;

    D_800E8920[D_8004A7C4->objId] = 0;
    func_801A0D74_ovl10();
    func_801E28C8_ovl10(0);
    temp_v0 = D_8004A7C4;
    temp_v1 = temp_v0->unk0;
    phi_return = temp_v0;
    if (*(&D_800E83E0 + (temp_v1 * 4)) == 1) {
        gEntityVtableIndexArray[temp_v1] = 0x12;
        phi_return = assign_new_process_entry(gEntityGObjProcessArray[temp_v0->unk0], &D_801DBD38);
    }
    return phi_return;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801E03CC_ovl10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
s32 func_801E0460_ovl10(s32 arg0) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f0_6;
    f32 temp_f0_7;
    f32 temp_f0_8;
    f32 temp_f2;
    f32 temp_f2_2;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_v0;
    s32 temp_v0_10;
    s32 temp_v0_11;
    s32 temp_v0_12;
    s32 temp_v0_13;
    s32 temp_v0_14;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 temp_v0_9;
    s32 temp_v1_5;
    s32 temp_v1_6;
    s32 temp_v1_7;
    s32 temp_v1_8;
    struct GObj *temp_a1;
    struct GObj *temp_a1_2;
    struct GObj *temp_a1_3;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_4;
    void *temp_v1_9;
    s32 phi_a2;
    s32 phi_a2_2;
    void *phi_v1;
    s32 phi_a0;
    s32 phi_v0;
    struct GObj *phi_a1;
    s32 phi_v1_2;
    s32 phi_v0_2;
    f32 phi_f0;
    s32 phi_a0_2;
    s32 phi_v0_3;
    struct GObj *phi_a1_2;
    s32 phi_return;

    func_800AECC0(D_800D6B10);
    func_800AED20(D_800D6B10);
    temp_a1 = D_8004A7C4;
    D_800DDFD0[temp_a1->unk0] = 0xC;
    D_800E1B50[temp_a1->unk0]->unk8C = &D_801F3AA8_ovl10;
    D_800E1B50[D_8004A7C4->objId]->unk98 = &D_801F4094_ovl10;
    func_800AA018(0x10307, temp_a1);
    func_800AA018(0x10306);
    temp_a1_2 = D_8004A7C4;
    D_800E3910[temp_a1_2->unk0] = 0.0f;
    temp_v0 = temp_a1_2->unk0;
    temp_f0 = D_800E3910[temp_v0];
    D_800E3750[temp_v0] = temp_f0;
    D_800E3590[temp_a1_2->unk0] = temp_f0;
    D_800E33D0[temp_a1_2->unk0] = temp_f0;
    D_800E3210[temp_a1_2->unk0] = temp_f0;
    D_800E3050[temp_a1_2->unk0] = temp_f0;
    D_800E3E50[temp_a1_2->unk0] = D_801F49F8_ovl10;
    temp_v0_2 = temp_a1_2->unk0;
    temp_f2 = D_800E3E50[temp_v0_2];
    D_800E3C90[temp_v0_2] = temp_f2;
    D_800E3AD0[temp_a1_2->unk0] = temp_f2;
    D_800E64D0[temp_a1_2->unk0] = 0.0f;
    D_800E3210[temp_a1_2->unk0] = 0.0f;
    if (random_soft_s32_range(3, temp_a1_2, D_800E3210, D_800E3E50) != 0) {
        if (random_soft_s32_range(2) != 0) {
            temp_v1 = &D_800E9C60 + (D_8004A7C4->objId * 4);
            phi_a2_2 = *(&D_801F43BC_ovl10 + (*temp_v1 * 4));
            phi_v1 = temp_v1;
        } else {
            temp_v1_2 = &D_800E9C60 + (D_8004A7C4->objId * 4);
            phi_a2_2 = *(&D_801F43D4_ovl10 + (*temp_v1_2 * 4));
            phi_v1 = temp_v1_2;
        }
    } else {
        temp_v0_3 = random_soft_s32_range(6);
        temp_v1_3 = &D_800E9C60 + (D_8004A7C4->objId * 4);
        phi_a2 = temp_v0_3;
        phi_a2_2 = temp_v0_3;
        phi_v1 = temp_v1_3;
        if (temp_v0_3 == *temp_v1_3) {
loop_5:
            temp_v0_4 = random_soft_s32_range(6, D_8004A7C4, phi_a2);
            temp_v1_4 = &D_800E9C60 + (D_8004A7C4->objId * 4);
            phi_a2 = temp_v0_4;
            phi_a2_2 = temp_v0_4;
            phi_v1 = temp_v1_4;
            if (temp_v0_4 == *temp_v1_4) {
                goto loop_5;
            }
        }
    }
    *phi_v1 = phi_a2_2;
    *(&D_800EA1A0 + (D_8004A7C4->objId * 4)) = 0;
    *(&D_800E9E20 + (D_8004A7C4->objId * 4)) = 0;
    *(&D_800EA520 + (D_8004A7C4->objId * 4)) = 0;
    temp_v0_5 = D_8004A7C4->objId * 4;
    temp_a0 = *(&D_800EA520 + temp_v0_5);
    phi_v0_3 = temp_v0_5;
    phi_a1_2 = D_8004A7C4;
    phi_return = temp_v0_5;
    if (temp_a0 < 0xA) {
        phi_a0 = temp_a0;
        phi_v0 = temp_v0_5;
        phi_a1 = D_8004A7C4;
loop_8:
        temp_f0_2 = *(&D_801F4338_ovl10 + (phi_a0 * 4));
        if (temp_f0_2 < 0.0f) {
            *(&D_800E6850 + phi_v0) = -temp_f0_2;
        } else {
            (&D_800E6850 + phi_v0)->unk6850 = temp_f0_2;
        }
        temp_v0_6 = phi_a1->unk0;
        temp_f0_3 = *(&D_801F4338_ovl10 + (*(&D_800EA520 + (temp_v0_6 * 4)) * 4));
        if (temp_f0_3 < 0.0f) {
            D_800E3C90[temp_v0_6] = -temp_f0_3;
        } else {
            (&D_800E3C90[temp_v0_6])[0xF24] = temp_f0_3;
        }
        D_800EA8A0[phi_a1->unk0] = 100.0f;
        temp_v0_7 = phi_a1->unk0;
        D_800EA6E0[temp_v0_7] = D_800EA8A0[temp_v0_7];
        temp_v1_5 = phi_a1->unk0;
        temp_v0_8 = temp_v1_5 * 4;
        temp_a0_2 = *(&D_800EA520 + temp_v0_8);
        phi_a0_2 = temp_a0_2;
        if (temp_a0_2 < 0xB) {
            temp_f0_4 = *(&D_801F4390_ovl10 + (temp_a0_2 * 4));
            phi_v1_2 = temp_v1_5;
            phi_v0_2 = temp_v0_8;
            if (!(temp_f0_4 < D_800EA6E0[temp_v1_5])) {
                phi_v1_2 = temp_v1_5;
                phi_v0_2 = temp_v0_8;
                phi_a0_2 = temp_a0_2;
                if (temp_f0_4 < D_800EA8A0[temp_v1_5]) {
loop_17:
                    if (func_800F9828(phi_v1_2, *(&D_801F4D48_ovl10 + (*(&D_800E9C60 + phi_v0_2) * 4))) < 0.0f) {
                        temp_v1_6 = D_8004A7C4->objId;
                        temp_f0_5 = func_800F9828(temp_v1_6, *(&D_801F4D48_ovl10 + (*(&D_800E9C60 + (temp_v1_6 * 4)) * 4)));
                        D_800EA6E0[D_8004A7C4->objId] = -temp_f0_5;
                        phi_f0 = temp_f0_5;
                    } else {
                        temp_v1_7 = D_8004A7C4->objId;
                        temp_f0_6 = func_800F9828(temp_v1_7, *(&D_801F4D48_ovl10 + (*(&D_800E9C60 + (temp_v1_7 * 4)) * 4)));
                        D_800EA6E0[D_8004A7C4->objId] = temp_f0_6;
                        phi_f0 = temp_f0_6;
                    }
                    if (0.0f < phi_f0) {
                        temp_v0_9 = D_8004A7C4->objId * 4;
                        *(&D_800E6690 + temp_v0_9) = -*(&D_801F4364_ovl10 + (*(&D_800EA520 + temp_v0_9) * 4));
                    } else {
                        temp_v0_10 = D_8004A7C4->objId * 4;
                        *(&D_800E6690 + temp_v0_10) = *(&D_801F4364_ovl10 + (*(&D_800EA520 + temp_v0_10) * 4));
                    }
                    temp_v0_11 = D_8004A7C4->objId;
                    temp_f0_7 = gEntitiesNextPosYArray[temp_v0_11];
                    temp_f2_2 = *(&D_801F4D30_ovl10 + (*(&D_800E9C60 + (temp_v0_11 * 4)) * 4));
                    if (temp_f0_7 < temp_f2_2) {
                        D_800EA8A0[temp_v0_11] = -(temp_f0_7 - temp_f2_2);
                    } else {
                        D_800EA8A0[temp_v0_11] = temp_f0_7 - temp_f2_2;
                    }
                    temp_v0_12 = D_8004A7C4->objId;
                    temp_v0_12 = temp_v0_12 * 4;
                    if (gEntitiesNextPosYArray[temp_v0_12] < *(&D_801F4D30_ovl10 + (*(&D_800E9C60 + temp_v0_12) * 4))) {
                        D_800E3750[temp_v0_12] = -*(&D_801F4364_ovl10 + (*(&D_800EA520 + temp_v0_12) * 4));
                    } else {
                        D_800E3750[temp_v0_12] = *(&D_801F4364_ovl10 + (*(&D_800EA520 + temp_v0_12) * 4));
                    }
                    finish_current_thread(1, D_8004A7C4);
                    temp_v1_8 = D_8004A7C4->objId;
                    temp_v0_13 = temp_v1_8 * 4;
                    temp_a0_3 = *(&D_800EA520 + temp_v0_13);
                    phi_a0_2 = temp_a0_3;
                    if (temp_a0_3 < 0xB) {
                        temp_f0_8 = *(&D_801F4390_ovl10 + (temp_a0_3 * 4));
                        phi_v1_2 = temp_v1_8;
                        phi_v0_2 = temp_v0_13;
                        if (temp_f0_8 < D_800EA6E0[temp_v1_8]) {
                            goto loop_17;
                        }
                        phi_v1_2 = temp_v1_8;
                        phi_v0_2 = temp_v0_13;
                        phi_a0_2 = temp_a0_3;
                        if (temp_f0_8 < D_800EA8A0[temp_v1_8]) {
                            goto loop_17;
                        }
                    }
                }
            } else {
                goto loop_17;
            }
        }
        func_800AF27C(phi_a0_2);
        temp_a1_3 = D_8004A7C4;
        temp_v1_9 = &D_800EA520 + (temp_a1_3->unk0 * 4);
        *temp_v1_9 = *temp_v1_9 + 1;
        temp_v0_14 = temp_a1_3->unk0 * 4;
        temp_a0_4 = *(&D_800EA520 + temp_v0_14);
        phi_a0 = temp_a0_4;
        phi_v0 = temp_v0_14;
        phi_a1 = temp_a1_3;
        phi_v0_3 = temp_v0_14;
        phi_a1_2 = temp_a1_3;
        phi_return = temp_v0_14;
        if (temp_a0_4 < 0xA) {
            goto loop_8;
        }
    }
    *(&D_800E9020 + phi_v0_3) = 0.0f;
    gEntityVtableIndexArray[phi_a1_2->unk0] = 0xB;
    return phi_return;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801E0460_ovl10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_801E0B94_ovl10(s32 arg0) {
    s32 sp3C;
    f32 temp_f0;
    s32 temp_a0_3;
    s32 temp_a1_2;
    s32 temp_v0;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 temp_v1_5;
    s32 temp_v1_6;
    s32 temp_v1_7;
    s32 temp_v1_8;
    struct GObj *temp_a2;
    struct GObj *temp_a2_2;
    struct GObj *temp_a2_3;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a1;
    void *temp_v0_2;
    void *temp_v0_3;
    f32 phi_f2;
    void *phi_a3;
    s32 phi_v1;
    struct GObj *phi_a2;
    s32 phi_v0;
    s32 phi_v1_2;
    f32 phi_f2_2;
    s32 phi_v1_3;
    f32 phi_f0;

    temp_a2 = D_8004A7C4;
    temp_v1 = temp_a2->unk0 * 4;
    phi_a3 = &D_800EA1A0;
    phi_v1 = temp_v1;
    phi_a2 = temp_a2;
    if (*(&D_800EA1A0 + temp_v1) == 0) {
        *(&D_800E9020 + temp_v1) = 0.0f;
        temp_v1_2 = temp_a2->unk0 * 4;
        phi_a3 = &D_800EA1A0;
        phi_v1 = temp_v1_2;
        phi_a2 = temp_a2;
        if (*(&D_800E9E20 + temp_v1_2) < 0x6E) {
            if (func_8019A900_ovl10(0.0f, &sp3C, temp_a2, &D_800EA1A0) != 0) {
                phi_f2 = sp3C;
            } else {
                phi_f2 = func_8019B608_ovl10(0, &D_800EA1A0);
            }
            temp_a2_2 = D_8004A7C4;
            temp_v1_3 = temp_a2_2->unk0;
            temp_v1_3 = temp_v1_3 * 4;
            phi_a3 = &D_800EA1A0;
            phi_v1 = temp_v1_3;
            phi_a2 = temp_a2_2;
            if (phi_f2 != D_800E6A10[temp_v1_3]) {
                *(&D_800EA1A0 + temp_v1_3) = 0xA;
                phi_a3 = &D_800EA1A0;
                phi_v1 = temp_a2_2->unk0 * 4;
                phi_a2 = temp_a2_2;
            }
        }
    }
    temp_v0 = *(phi_a3 + phi_v1);
    phi_v1_3 = phi_v1;
    if (temp_v0 != 0) {
        temp_a1 = phi_v1 + D_800E6A10;
        temp_f0 = *temp_a1;
        phi_v0 = temp_v0;
        phi_v1_2 = phi_v1;
        phi_f0 = temp_f0;
        if (temp_v0 == 5) {
            *temp_a1 = -temp_f0;
            temp_a0 = &D_800E9020 + (phi_a2->unk0 * 4);
            *temp_a0 = -*temp_a0;
            temp_v1_4 = phi_a2->unk0;
            temp_v1_4 = temp_v1_4 * 4;
            phi_v0 = *(phi_a3 + temp_v1_4);
            phi_v1_2 = temp_v1_4;
            phi_f0 = D_800E6A10[temp_v1_4];
        }
        temp_a0_2 = &D_800E9020 + phi_v1_2;
        if (phi_v0 >= 6) {
            phi_f2_2 = phi_f0 * D_801F49FC_ovl10;
        } else {
            phi_f2_2 = phi_f0 * D_801F4A00_ovl10;
        }
        *temp_a0_2 = *temp_a0_2 + phi_f2_2;
        temp_v0_2 = phi_a3 + (phi_a2->unk0 * 4);
        *temp_v0_2 = *temp_v0_2 - 1;
        temp_v1_5 = phi_a2->unk0 * 4;
        phi_v1_3 = temp_v1_5;
        if (*(phi_a3 + temp_v1_5) <= 0) {
            *(&D_800E9020 + temp_v1_5) = 0.0f;
            temp_v1_6 = phi_a2->unk0 * 4;
            *(phi_a3 + temp_v1_6) = *(&D_800E9020 + temp_v1_6);
            phi_v1_3 = phi_a2->unk0 * 4;
        }
    }
    temp_v0_3 = phi_v1_3 + &D_800E9E20;
    temp_a0_3 = *temp_v0_3;
    temp_a1_2 = (temp_a0_3 < 0x79) ^ 1;
    *temp_v0_3 = temp_a0_3 + 1;
    if (temp_a1_2 != 0) {
        *(&D_800EA520 + (phi_a2->unk0 * 4)) = 0x3E8;
        D_800EA8A0[phi_a2->unk0] = 0.0f;
        temp_v1_7 = phi_a2->unk0;
        D_800EA6E0[temp_v1_7] = D_800EA8A0[temp_v1_7];
    }
    D_800E8920[phi_a2->unk0] = 0;
    func_801A0D74_ovl10(0.0f, arg0, temp_a1_2, phi_a2, phi_a3);
    func_801E28C8_ovl10(0);
    temp_a2_3 = D_8004A7C4;
    temp_v1_8 = temp_a2_3->unk0;
    if (*(&D_800E83E0 + (temp_v1_8 * 4)) == 1) {
        gEntityVtableIndexArray[temp_v1_8] = 0x12;
        assign_new_process_entry(gEntityGObjProcessArray[temp_a2_3->unk0], &D_801DBD38, temp_a2_3);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801E0B94_ovl10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
struct GObj *func_801E0E78_ovl10(s32 arg0) {
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 temp_v1_5;
    struct EntityThing800E9AA0 **temp_a2;
    struct EntityThing800E9AA0 *temp_a1;
    struct GObj *temp_v0;
    struct EntityThing800E9AA0 *phi_a1;
    s32 phi_v1;
    struct GObj *phi_return;
    struct EntityThing800E9AA0 **phi_a1_2;

    temp_v0 = D_8004A7C4;
    temp_v1 = temp_v0->unk0;
    temp_a2 = &D_800E9AA0[temp_v1];
    temp_a1 = *temp_a2;
    if (temp_a1 != 0) {
        if (temp_a1 != 1) {
            if (temp_a1 != 2) {
                if (temp_a1 != 3) {
                    phi_a1 = temp_a1;
                    phi_v1 = temp_v1 * 4;
                    phi_return = temp_v0;
                } else {
                    *temp_a2 = NULL;
                    temp_v1_2 = temp_v0->unk0;
                    phi_a1_2 = &D_800E9AA0[temp_v1_2];
                    phi_v1 = temp_v1_2 * 4;
                    phi_return = temp_v0;
block_15:
                    phi_a1 = *phi_a1_2;
                }
            } else {
                if (random_soft_s32_range(8, temp_a1, temp_a2, D_800E9AA0) == 0) {
                    D_800E9AA0[D_8004A7C4->objId] = NULL;
                } else {
                    D_800E9AA0[D_8004A7C4->objId] = 3;
                }
                temp_v1_3 = D_8004A7C4->objId;
                phi_a1_2 = &D_800E9AA0[temp_v1_3];
                phi_v1 = temp_v1_3 * 4;
                goto block_15;
            }
        } else {
            if (random_soft_s32_range(8, temp_a1, temp_a2, D_800E9AA0) == 0) {
                D_800E9AA0[D_8004A7C4->objId] = NULL;
            } else {
                D_800E9AA0[D_8004A7C4->objId] = 2;
            }
            temp_v1_4 = D_8004A7C4->objId;
            phi_a1_2 = &D_800E9AA0[temp_v1_4];
            phi_v1 = temp_v1_4 * 4;
            goto block_15;
        }
    } else {
        *temp_a2 = 1;
        temp_v1_5 = temp_v0->unk0;
        phi_a1_2 = &D_800E9AA0[temp_v1_5];
        phi_v1 = temp_v1_5 * 4;
        phi_return = temp_v0;
        goto block_15;
    }
    if (phi_a1 == 0) {
        *(gEntityVtableIndexArray + phi_v1) = 0xE;
        return phi_return;
    }
    *(gEntityVtableIndexArray + phi_v1) = 0x10;
    return phi_return;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801E0E78_ovl10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_801E100C_ovl10(s32 arg0) {
    f32 temp_f0;
    f32 temp_f20;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a1;
    struct GObj *temp_v0;
    struct GObj *temp_v0_2;
    struct GObj *temp_v0_3;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_4;
    f32 phi_f12;
    f32 phi_f12_2;
    s32 phi_a1;
    void *phi_v1;
    void *phi_v1_2;

    func_800AECC0(D_800D6B10);
    func_800AED20(D_800D6B10);
    temp_v0 = D_8004A7C4;
    D_800DDFD0[temp_v0->unk0] = 0xD;
    D_800E1B50[temp_v0->unk0]->unk8C = &D_801F3AA8_ovl10;
    D_800E1B50[D_8004A7C4->objId]->unk98 = &D_801F40DC_ovl10;
    func_800B33F4();
    *(&D_800EA520 + (D_8004A7C4->objId * 4)) = 0;
    func_800AA018(0x102EB);
    func_800AA154(0x102EA);
    func_800AA018(0x102ED);
    func_800AA154(0x102EC);
    temp_a0 = D_8004A7C4->objId;
    temp_a0 = temp_a0 * 4;
    if ((gEntitiesNextPosYArray[temp_a0] + 40.0f) < (*gEntitiesNextPosYArray + 20.0f)) {
        *(&D_800E9E20 + temp_a0) = 1;
    } else {
        *(&D_800E9E20 + temp_a0) = 0;
    }
    temp_f0 = func_801E13A0_ovl10(arg0);
    temp_f20 = temp_f0;
    if (temp_f0 < 0.0f) {
        phi_f12 = -temp_f0;
    } else {
        phi_f12 = temp_f0;
    }
    temp_a0_2 = D_8004A7C4->objId;
    D_800E64D0[temp_a0_2] = (sinf(phi_f12) * 4.0f) * D_800E6A10[temp_a0_2];
    if (temp_f20 < 0.0f) {
        phi_f12_2 = -temp_f20;
    } else {
        phi_f12_2 = temp_f20;
    }
    D_800E3210[D_8004A7C4->objId] = cosf(phi_f12_2, temp_a0_2 * 4) * 4.0f;
    func_800AA018(0x102EF);
    func_800AA018(0x102EE);
    temp_v0_2 = D_8004A7C4;
    *(&D_800EA520 + (temp_v0_2->unk0 * 4)) = 0x64;
    temp_v1 = &D_800EA520 + (temp_v0_2->unk0 * 4);
    phi_v1_2 = temp_v1;
    if (*temp_v1 < 0x78) {
loop_11:
        finish_current_thread(5);
        play_sound(0x1DC);
        func_800AF27C();
        temp_v0_3 = D_8004A7C4;
        temp_a0_3 = temp_v0_3->unk0;
        temp_v1_2 = &D_800EA520 + (temp_a0_3 * 4);
        temp_a1 = *temp_v1_2;
        phi_a1 = temp_a1;
        phi_v1 = temp_v1_2;
        if (temp_a1 >= 0x68) {
            D_800E3210[temp_a0_3] = 0.0f;
            D_800E3750[temp_v0_3->unk0] = 0.0f;
            D_800E3C90[temp_v0_3->unk0] = 0.0f;
            temp_a0_4 = temp_v0_3->unk0;
            D_800E64D0[temp_a0_4] = D_800E6A10[temp_a0_4] * 4.0f;
            temp_v1_3 = &D_800EA520 + (temp_v0_3->unk0 * 4);
            phi_a1 = *temp_v1_3;
            phi_v1 = temp_v1_3;
        }
        *phi_v1 = phi_a1 + 1;
        temp_v1_4 = &D_800EA520 + (temp_v0_3->unk0 * 4);
        phi_v1_2 = temp_v1_4;
        if (*temp_v1_4 < 0x78) {
            goto loop_11;
        }
    }
    *phi_v1_2 = 0x3E8;
    func_800B33F4();
    func_800AA018(0x102F7);
    func_800AA154(0x102F6);
    gEntityVtableIndexArray[D_8004A7C4->objId] = 0xB;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801E100C_ovl10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
f32 func_801E13A0_ovl10(s32 arg0) {
    f32 temp_f0;
    f64 temp_f0_2;
    f64 temp_f14;
    s32 temp_v0;
    f32 phi_f2;
    f32 phi_f2_2;
    f32 phi_f2_3;
    f32 phi_f12;

    if (func_8019DA50_ovl10() < 0.0f) {
        phi_f2 = -func_8019DA50_ovl10();
    } else {
        phi_f2 = func_8019DA50_ovl10();
    }
    temp_v0 = D_8004A7C4->objId;
    temp_f0 = atan2f(D_800E6A10[temp_v0] * phi_f2, (*gEntitiesNextPosYArray + 20.0f) - (gEntitiesNextPosYArray[temp_v0] + 40.0f));
    if (temp_f0 < 0.0f) {
        phi_f2_2 = -temp_f0;
    } else {
        phi_f2_2 = temp_f0;
    }
    temp_f14 = D_801F4A08_ovl10;
    if (temp_f14 < phi_f2_2) {
        if (1.0f == D_800E6A10[D_8004A7C4->objId]) {
            phi_f12 = temp_f14;
        } else {
            phi_f12 = D_801F4A10_ovl10.unk0;
        }
    } else {
        if (temp_f0 < 0.0f) {
            phi_f2_3 = -temp_f0;
        } else {
            phi_f2_3 = temp_f0;
        }
        temp_f0_2 = D_801F4A10_ovl10.unk4A18;
        phi_f12 = temp_f0;
        if (phi_f2_3 < temp_f0_2) {
            if (1.0f == D_800E6A10[D_8004A7C4->objId]) {
                phi_f12 = temp_f0_2;
            } else {
                phi_f12 = D_801F4A20_ovl10;
            }
        }
    }
    return phi_f12;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801E13A0_ovl10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void *func_801E1550_ovl10(s32 arg0) {
    s32 sp50;
    u8 sp2C;
    f32 temp_f0;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_v0;
    s32 temp_v0_3;
    struct GObj *temp_v1;
    struct GObj *temp_v1_2;
    struct GObj *temp_v1_3;
    struct GObj *temp_v1_4;
    void *temp_ret;
    void *temp_ret_2;
    void *temp_v0_2;
    s32 phi_v0;
    f32 phi_f2;
    s32 phi_a2;
    void *phi_return;

    temp_v1 = D_8004A7C4;
    D_800E8920[temp_v1->unk0] = 0;
    temp_a2 = temp_v1->unk0;
    temp_a2 = temp_a2 * 4;
    temp_v0 = *(&D_800EA520 + temp_a2);
    phi_a2 = temp_a2;
    if (temp_v0 >= 0x65) {
        phi_a2 = temp_a2;
        if (temp_v0 < 0xC8) {
            if (temp_v0 < 0x68) {
                temp_f0 = (*gEntitiesNextPosYArray + 20.0f) - (gEntitiesNextPosYArray[temp_a2] + 40.0f);
                if (*(&D_800E9E20 + temp_a2) != 0) {
                    phi_v0 = 0;
                    if (temp_f0 < 0.0f) {
                        phi_v0 = 1;
                    }
                } else {
                    phi_v0 = 0;
                    if (0.0f < temp_f0) {
                        phi_v0 = 1;
                    }
                }
                phi_a2 = temp_a2;
                if (phi_v0 != 0) {
                    D_800E3210[temp_a2] = 0.0f;
                    D_800E3750[temp_v1->unk0] = 0.0f;
                    D_800E3C90[temp_v1->unk0] = 0.0f;
                    temp_a2_2 = temp_v1->unk0;
                    D_800E64D0[temp_a2_2] = D_800E6A10[temp_a2_2] * 4.0f;
                    phi_a2 = temp_a2_2 * 4;
                }
            } else {
                if (func_8019A900_ovl10(&sp50) != 0) {
                    phi_f2 = sp50;
                } else {
                    phi_f2 = func_8019B608_ovl10(0);
                }
                temp_a2_3 = D_8004A7C4->objId;
                temp_a2_3 = temp_a2_3 * 4;
                phi_a2 = temp_a2_3;
                if (phi_f2 != D_800E6A10[temp_a2_3]) {
                    *(&D_800EA520 + temp_a2_3) = 0x96;
                    phi_a2 = temp_a2_3;
                }
            }
        }
    }
    func_801A0D74_ovl10(arg0, phi_a2);
    D_800E1B50[D_8004A7C4->objId]->unk8C = &D_801F3AA8_ovl10;
    func_801E28C8_ovl10(0);
    temp_v1_2 = D_8004A7C4;
    temp_a2_4 = temp_v1_2->unk0;
    temp_a2_4 = temp_a2_4 * 4;
    temp_a0 = *(&D_800E83E0 + temp_a2_4);
    temp_v0_2 = &D_800EA520 + temp_a2_4;
    if (temp_a0 == 0) {
        temp_v0_3 = *temp_v0_2;
        phi_return = temp_v0_3;
        if (temp_v0_3 >= 0x64) {
            phi_return = temp_v0_3;
            if (temp_v0_3 < 0xC8) {
                D_800E1B50[temp_a2_4]->unk8C = &D_801F3E98_ovl10;
                temp_ret_2 = func_801E2BD8_ovl10((*(&D_800DFBD0 + (D_8004A7C4->objId * 4)))->unkC, &sp2C, temp_a2_4, &D_8004A7C4);
                phi_return = temp_ret_2;
                if (temp_ret_2 != 0) {
                    func_80169430_ovl10(sp38, sp2C, sp2D, 2);
                    temp_v1_3 = D_8004A7C4;
                    gEntityVtableIndexArray[temp_v1_3->unk0] = 0xF;
                    temp_ret = assign_new_process_entry(gEntityGObjProcessArray[temp_v1_3->unk0], &D_801DBD38);
                    temp_v1_4 = D_8004A7C4;
                    D_800EC120[temp_v1_4->unk0] = 0;
                    *(&D_800E9FE0 + (temp_v1_4->unk0 * 4)) = 0;
                    return temp_ret;
                }
            }
        }
    } else {
        phi_return = temp_v0_2;
        if (temp_a0 == 1) {
            gEntityVtableIndexArray[temp_a2_4] = 0x12;
            phi_return = assign_new_process_entry(gEntityGObjProcessArray[temp_v1_2->unk0], &D_801DBD38, temp_a2_4, &D_8004A7C4);
        }
    }
    return phi_return;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801E1550_ovl10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_801E1880_ovl10(s32 arg0) {
    *(&D_800EA520 + (D_8004A7C4->objId * 4)) = 0x3E8;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801E1880_ovl10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_801E18A8_ovl10(s32 arg0) {
    f32 *temp_v1_3;
    f32 temp_f0;
    f32 temp_f20;
    f32 temp_f22;
    s32 temp_s0;
    s32 temp_s0_2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_4;
    s32 temp_v1_5;
    struct GObj *temp_a0;
    struct GObj *temp_a0_2;
    struct GObj *temp_a0_3;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    s32 phi_v1;
    f32 phi_f2;
    f32 phi_f0;
    s32 phi_s0;
    f32 phi_f0_2;
    s32 phi_s0_2;
    ? phi_a2;

    func_800AECC0(D_800D6B10);
    func_800AED20(D_800D6B10);
    D_800DDFD0[D_8004A7C4->objId] = 0xE;
    D_800E1B50[D_8004A7C4->objId]->unk8C = &D_801F3A84_ovl10;
    D_800E1B50[D_8004A7C4->objId]->unk98 = &D_801F4094_ovl10;
    func_800B33F4(D_8004A7C4);
    temp_v1 = D_8004A7C4->objId * 4;
    temp_v0 = D_800EA360[D_8004A7C4->objId];
    phi_v1 = temp_v1;
    if (temp_v0 != 0) {
        func_800A1F30(temp_v0);
        temp_a0_2 = D_8004A7C4;
        *(&D_800EA360 + (temp_a0_2->unk0 * 4)) = 0;
        phi_v1 = temp_a0_2->unk0 * 4;
    }
    if (D_800E98E0[*(D_800EC120 + phi_v1)] == 0) {
loop_3:
        finish_current_thread(1);
        if (D_800E98E0[D_800EC120[D_8004A7C4->objId]] == 0) {
            goto loop_3;
        }
    }
    func_800AA018(0x102F1);
    func_800AA154(0x102F0);
    temp_v0_2 = D_8004A7C4->objId;
    temp_f0 = func_800F9828(temp_v0_2, D_800E0D50[temp_v0_2]);
    if (temp_f0 == *0x801F0000) {
        phi_f2 = func_8019B608_ovl10(D_800E0D50[D_8004A7C4->objId]);
    } else {
        if (0.0f < temp_f0) {
            phi_f2 = 1.0f;
        } else {
            phi_f2 = -1.0f;
        }
    }
    if (phi_f2 != D_800E6A10[D_8004A7C4->objId]) {
        func_800AECC0(0);
        func_800AED20(0);
        *(&D_800E9020 + (D_8004A7C4->objId * 4)) = 0.0f;
        temp_f22 = D_801F4A2C_ovl10;
        temp_f20 = D_801F4A30_ovl10;
        phi_s0 = 0;
loop_11:
        temp_v1_2 = D_8004A7C4->objId;
        temp_v0_3 = &D_800E9020 + (temp_v1_2 * 4);
        if (1.0f == D_800E6A10[temp_v1_2]) {
            phi_f0 = temp_f20;
        } else {
            phi_f0 = temp_f22;
        }
        *temp_v0_3 = *temp_v0_3 + phi_f0;
        finish_current_thread(1);
        temp_s0 = phi_s0 + 1;
        phi_s0 = temp_s0;
        if (temp_s0 != 5) {
            goto loop_11;
        }
        temp_a0_3 = D_8004A7C4;
        temp_v1_3 = &D_800E6A10[temp_a0_3->unk0];
        *temp_v1_3 = -*temp_v1_3;
        temp_v0_4 = &D_800E9020 + (temp_a0_3->unk0 * 4);
        *temp_v0_4 = -*temp_v0_4;
        phi_s0_2 = temp_s0;
loop_16:
        temp_v1_4 = D_8004A7C4->objId;
        temp_v0_5 = &D_800E9020 + (temp_v1_4 * 4);
        if (1.0f == D_800E6A10[temp_v1_4]) {
            phi_f0_2 = temp_f22;
        } else {
            phi_f0_2 = temp_f20;
        }
        *temp_v0_5 = *temp_v0_5 + phi_f0_2;
        finish_current_thread(1);
        temp_s0_2 = phi_s0_2 - 1;
        phi_s0_2 = temp_s0_2;
        if (temp_s0_2 != 0) {
            goto loop_16;
        }
        *(&D_800E9020 + (D_8004A7C4->objId * 4)) = 0.0f;
        func_800AECC0(D_800D6B10);
        func_800AED20(D_800D6B10);
    }
    func_800AA018(0x102F3);
    func_800AA018(0x102F2);
    finish_current_thread(5);
    temp_v1_5 = D_8004A7C4->objId;
    phi_a2 = 0xE;
    if (1.0f == D_800E6A10[temp_v1_5]) {
        phi_a2 = 0xC;
    }
    func_800A7F74(6, 2, phi_a2, (bitwise s32) gEntitiesNextPosXArray[temp_v1_5], gEntitiesNextPosYArray[temp_v1_5], gEntitiesNextPosZArray[temp_v1_5]);
    play_sound(0x1D8);
    *(&D_800E9FE0 + (D_8004A7C4->objId * 4)) = 1;
    func_800AF27C();
    func_800AA018(0x102F5);
    func_800AA154(0x102F4);
    gEntityVtableIndexArray[D_8004A7C4->objId] = 0xB;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801E18A8_ovl10.s")
#endif


#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_801E1D3C_ovl10(void) {
    D_800E8920[D_8004A7C4->objId] = 0;
    func_801A0D74_ovl10();
    func_801E28C8_ovl10(0);
    if (D_800E83E0[D_8004A7C4->objId] == 1) {
        gEntityVtableIndexArray[D_8004A7C4->objId] = 0x12;
        assign_new_process_entry(gEntityGObjProcessArray[D_8004A7C4->objId], &func_801DBD38_ovl10);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801E1D3C_ovl10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_801E1DD0_ovl10(s32 arg0) {
    struct GObj *temp_v1;
    struct GObj *temp_v1_2;
    struct GObj *temp_v1_3;
    void *temp_v0;

    func_800AECC0(D_800D6B10);
    func_800AED20(D_800D6B10);
    temp_v1 = D_8004A7C4;
    D_800DDFD0[temp_v1->unk0] = 0xF;
    D_800E1B50[temp_v1->unk0]->unk8C = &D_801F3AA8_ovl10;
    D_800E1B50[D_8004A7C4->objId]->unk98 = &D_801F4094_ovl10;
    func_800B33F4();
    play_sound(0x1DE);
    func_800AA018(0x102F9);
    func_800AA154(0x102F8);
    func_800AA018(0x102FB);
    func_800AA154(0x102FA);
    temp_v1_2 = D_8004A7C4;
    *(&D_800EA520 + (temp_v1_2->unk0 * 4)) = 0;
    if (*(&D_800EA520 + (temp_v1_2->unk0 * 4)) < 3) {
loop_2:
        func_800AA018(0x102FD);
        func_800AA018(0x102FC);
        finish_current_thread(5);
        func_801ACCA0_ovl10(7, 2, 0x41F00000, 0x420C0000);
        play_sound(0x1E0);
        func_800AF27C();
        finish_current_thread(0xF);
        temp_v1_3 = D_8004A7C4;
        temp_v0 = &D_800EA520 + (temp_v1_3->unk0 * 4);
        *temp_v0 = *temp_v0 + 1;
        if (*(&D_800EA520 + (temp_v1_3->unk0 * 4)) < 3) {
            goto loop_2;
        }
    }
    func_800AA018(0x102FF);
    func_800AA154(0x102FE);
    gEntityVtableIndexArray[D_8004A7C4->objId] = 0xB;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801E1DD0_ovl10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
struct GObj *func_801E1FD8_ovl10(void) {
    s32 temp_v1;
    struct GObj *temp_v0;
    struct GObj *phi_return;

    D_800E8920[D_8004A7C4->objId] = 0;
    func_801A0D74_ovl10();
    func_801E28C8_ovl10(0);
    temp_v0 = D_8004A7C4;
    temp_v1 = temp_v0->unk0;
    phi_return = temp_v0;
    if (*(&D_800E83E0 + (temp_v1 * 4)) == 1) {
        gEntityVtableIndexArray[temp_v1] = 0x12;
        phi_return = assign_new_process_entry(gEntityGObjProcessArray[temp_v0->unk0], &D_801DBD38);
    }
    return phi_return;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801E1FD8_ovl10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
s32 func_801E206C_ovl10(s32 arg0) {
    f32 sp10;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f0_6;
    f32 temp_f0_7;
    f32 temp_f2;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_v0;
    s32 temp_v0_10;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 temp_v0_9;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    struct GObj *temp_a0;
    struct GObj *temp_a0_2;
    struct GObj *temp_a0_3;
    struct GObj *temp_a0_4;
    struct GObj *temp_a0_5;
    struct UnkStruct800E1B50 *temp_s1;
    void *temp_a2;
    void *temp_a2_2;
    s32 phi_a1;
    s32 phi_v0;
    struct GObj *phi_a0;
    s32 phi_v1;
    s32 phi_v0_2;
    void *phi_a2;
    f32 phi_f0;
    s32 phi_a1_2;
    void *phi_a2_2;
    struct GObj *phi_a0_2;
    struct GObj *phi_a0_3;
    s32 phi_a1_3;

    temp_s1 = D_800E1B50[D_8004A7C4->objId];
    func_800AECC0(D_800D6B10);
    func_800AED20(D_800D6B10);
    temp_a0 = D_8004A7C4;
    D_800DDFD0[temp_a0->unk0] = 0x10;
    D_800E1B50[temp_a0->unk0]->unk8C = &D_801F3ACC_ovl10;
    D_800E1B50[D_8004A7C4->objId]->unk98 = &D_801F4094_ovl10;
    func_800B33F4(temp_a0);
    play_sound(0x2A);
    func_800BB468(3, 0);
    sp10 = 0.0f;
    func_800FD570(0, 1, 0.0f, *temp_s1->unk88->unk10);
    func_800AA018(0x10306);
    func_800AA018(0x10307);
    if (0.0f != *(&D_800E9020 + (D_8004A7C4->objId * 4))) {
        func_801DFCC0_ovl10();
    } else {
        func_800AF27C();
    }
    temp_a0_2 = D_8004A7C4;
    *(&D_800E9020 + (temp_a0_2->unk0 * 4)) = 0.0f;
    D_800E64D0[temp_a0_2->unk0] = 0.0f;
    D_800E3210[temp_a0_2->unk0] = 0.0f;
    *(&D_800E9E20 + (temp_a0_2->unk0 * 4)) = 0;
    *(&D_800EA520 + (temp_a0_2->unk0 * 4)) = 0;
    temp_v0 = temp_a0_2->unk0 * 4;
    temp_a1 = *(&D_800EA520 + temp_v0);
    phi_a0_3 = temp_a0_2;
    phi_a1_3 = temp_a1;
    if (temp_a1 < 0xA) {
        phi_a1 = temp_a1;
        phi_v0 = temp_v0;
        phi_a0 = temp_a0_2;
loop_5:
        temp_f0 = *(&D_801F4338_ovl10 + (phi_a1 * 4));
        if (temp_f0 < 0.0f) {
            *(&D_800E6850 + phi_v0) = -temp_f0;
        } else {
            (&D_800E6850 + phi_v0)->unk6850 = temp_f0;
        }
        temp_v0_2 = phi_a0->unk0 * 4;
        temp_f0_2 = *(&D_801F4338_ovl10 + (*(&D_800EA520 + temp_v0_2) * 4));
        if (temp_f0_2 < 0.0f) {
            *(D_800E3C90 + temp_v0_2) = -temp_f0_2;
        } else {
            *(D_800E3C90 + temp_v0_2) = temp_f0_2;
        }
        D_800EA8A0[phi_a0->unk0] = 100.0f;
        temp_v0_3 = phi_a0->unk0;
        D_800EA6E0[temp_v0_3] = D_800EA8A0[temp_v0_3];
        temp_v1 = phi_a0->unk0;
        temp_v0_4 = temp_v1 * 4;
        temp_a2 = &D_800EA520 + temp_v0_4;
        temp_a1_2 = *temp_a2;
        phi_a1_2 = temp_a1_2;
        phi_a2_2 = temp_a2;
        phi_a0_2 = phi_a0;
        if (temp_a1_2 < 0xB) {
            temp_f0_3 = *(&D_801F4390_ovl10 + (temp_a1_2 * 4));
            phi_v1 = temp_v1;
            phi_v0_2 = temp_v0_4;
            phi_a2 = temp_a2;
            if (!(temp_f0_3 < D_800EA6E0[temp_v1])) {
                phi_v1 = temp_v1;
                phi_v0_2 = temp_v0_4;
                phi_a2 = temp_a2;
                phi_a1_2 = temp_a1_2;
                phi_a2_2 = temp_a2;
                phi_a0_2 = phi_a0;
                if (temp_f0_3 < D_800EA8A0[temp_v1]) {
loop_14:
                    if (func_800F9828(phi_v1, *(D_800E0D50 + phi_v0_2), phi_a2) < 0.0f) {
                        temp_v1_2 = D_8004A7C4->objId;
                        temp_f0_4 = func_800F9828(temp_v1_2, D_800E0D50[temp_v1_2]);
                        D_800EA6E0[D_8004A7C4->objId] = -temp_f0_4;
                        phi_f0 = temp_f0_4;
                    } else {
                        temp_v1_3 = D_8004A7C4->objId;
                        temp_f0_5 = func_800F9828(temp_v1_3, D_800E0D50[temp_v1_3]);
                        D_800EA6E0[D_8004A7C4->objId] = temp_f0_5;
                        phi_f0 = temp_f0_5;
                    }
                    if (0.0f < phi_f0) {
                        temp_v0_5 = D_8004A7C4->objId * 4;
                        *(&D_800E6690 + temp_v0_5) = -*(&D_801F4364_ovl10 + (*(&D_800EA520 + temp_v0_5) * 4));
                    } else {
                        temp_v0_6 = D_8004A7C4->objId * 4;
                        *(&D_800E6690 + temp_v0_6) = *(&D_801F4364_ovl10 + (*(&D_800EA520 + temp_v0_6) * 4));
                    }
                    temp_v0_7 = D_8004A7C4->objId;
                    temp_f0_6 = gEntitiesNextPosYArray[temp_v0_7];
                    temp_f2 = gEntitiesNextPosYArray[D_800E0D50[temp_v0_7]];
                    if (temp_f0_6 < temp_f2) {
                        D_800EA8A0[temp_v0_7] = -(temp_f0_6 - temp_f2);
                    } else {
                        D_800EA8A0[temp_v0_7] = temp_f0_6 - temp_f2;
                    }
                    temp_v0_8 = D_8004A7C4->objId;
                    temp_v0_8 = temp_v0_8 * 4;
                    if (gEntitiesNextPosYArray[temp_v0_8] < gEntitiesNextPosYArray[D_800E0D50[temp_v0_8]]) {
                        D_800E3750[temp_v0_8] = -*(&D_801F4364_ovl10 + (*(&D_800EA520 + temp_v0_8) * 4));
                    } else {
                        D_800E3750[temp_v0_8] = *(&D_801F4364_ovl10 + (*(&D_800EA520 + temp_v0_8) * 4));
                    }
                    finish_current_thread(1);
                    temp_a0_3 = D_8004A7C4;
                    temp_v1_4 = temp_a0_3->unk0;
                    temp_v0_9 = temp_v1_4 * 4;
                    temp_a2_2 = &D_800EA520 + temp_v0_9;
                    temp_a1_3 = *temp_a2_2;
                    phi_a1_2 = temp_a1_3;
                    phi_a2_2 = temp_a2_2;
                    phi_a0_2 = temp_a0_3;
                    if (temp_a1_3 < 0xB) {
                        temp_f0_7 = *(&D_801F4390_ovl10 + (temp_a1_3 * 4));
                        phi_v1 = temp_v1_4;
                        phi_v0_2 = temp_v0_9;
                        phi_a2 = temp_a2_2;
                        if (temp_f0_7 < D_800EA6E0[temp_v1_4]) {
                            goto loop_14;
                        }
                        phi_v1 = temp_v1_4;
                        phi_v0_2 = temp_v0_9;
                        phi_a2 = temp_a2_2;
                        phi_a1_2 = temp_a1_3;
                        phi_a2_2 = temp_a2_2;
                        phi_a0_2 = temp_a0_3;
                        if (temp_f0_7 < D_800EA8A0[temp_v1_4]) {
                            goto loop_14;
                        }
                    }
                }
            } else {
                goto loop_14;
            }
        }
        *phi_a2_2 = phi_a1_2 + 1;
        temp_v0_10 = phi_a0_2->unk0 * 4;
        temp_a1_4 = *(&D_800EA520 + temp_v0_10);
        phi_a1 = temp_a1_4;
        phi_v0 = temp_v0_10;
        phi_a0 = phi_a0_2;
        phi_a0_3 = phi_a0_2;
        phi_a1_3 = temp_a1_4;
        if (temp_a1_4 < 0xA) {
            goto loop_5;
        }
    }
    func_800AF27C(phi_a0_3, phi_a1_3);
    func_800B33F4();
    temp_a0_4 = D_8004A7C4;
    D_800E3210[temp_a0_4->unk0] = 0.0f;
    D_800E3750[temp_a0_4->unk0] = -0.5f;
    D_800E3C90[temp_a0_4->unk0] = 30.0f;
    if (D_800E8920[temp_a0_4->unk0] == 0) {
loop_31:
        finish_current_thread(1);
        if (D_800E8920[D_8004A7C4->objId] == 0) {
            goto loop_31;
        }
    }
    func_800AF27C();
    temp_a0_5 = D_8004A7C4;
    D_800E98E0[temp_a0_5->unk0] = -1;
    D_800E9AA0[temp_a0_5->unk0] = -1;
    *(&D_800E9C60 + (temp_a0_5->unk0 * 4)) = 1;
    gEntityVtableIndexArray[temp_a0_5->unk0] = 0x13;
    return -1;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801E206C_ovl10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_801E2724_ovl10(s32 arg0) {
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_v1_2;
    struct GObj *temp_v0;
    void *temp_v1;

    temp_v0 = D_8004A7C4;
    temp_v1 = (temp_v0->unk0 * 4) + &D_800E9E20;
    temp_a1 = *temp_v1;
    temp_a2 = (temp_a1 < 0x79) ^ 1;
    *temp_v1 = temp_a1 + 1;
    if (temp_a2 != 0) {
        *(&D_800EA520 + (temp_v0->unk0 * 4)) = 0x3E8;
        D_800EA8A0[temp_v0->unk0] = 0.0f;
        temp_v1_2 = temp_v0->unk0;
        D_800EA6E0[temp_v1_2] = D_800EA8A0[temp_v1_2];
    }
    D_800E8920[temp_v0->unk0] = 0;
    func_801A0D74_ovl10(arg0, temp_a1, temp_a2, arg0);
    func_801E28C8_ovl10(0);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801E2724_ovl10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_801E27E8_ovl10(s32 arg0) {
    struct GObj *temp_v0;

    temp_v0 = D_8004A7C4;
    D_800DDFD0[temp_v0->unk0] = 0x11;
    D_800E1B50[temp_v0->unk0]->unk8C = &D_801F3ACC_ovl10;
    D_800E1B50[D_8004A7C4->objId]->unk98 = &D_801F4094_ovl10;
    func_800B33F4(D_800E1B50);
    func_800AA018(0x10302);
    func_800AA154(0x10303);
    finish_current_thread(0x1E);
    func_801BC794_ovl10(8);
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801E27E8_ovl10.s")
#endif

void func_801E28A0_ovl10(void) {
    func_801A0D74_ovl10();
    func_801E28C8_ovl10(0);
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
s32 func_801E28C8_ovl10(s32 arg0) {
    ? sp38;
    struct UnkStruct800E1B50 *sp30;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a1;
    s32 temp_v0;
    s32 temp_v0_3;
    s32 temp_v0_4;
    struct GObj *temp_v1;
    struct GObj *temp_v1_2;
    struct GObj *temp_v1_3;
    struct UnkStruct800E1B50 **temp_a2;
    struct UnkStruct800E1B50 *temp_a2_2;
    struct UnkStruct800E1B50 *temp_a2_3;
    void *temp_v0_2;
    s32 phi_a1;
    struct GObj *phi_v1;

    temp_v0 = D_8004A7C4->objId;
    temp_a2 = &D_800E1B50[temp_v0];
    temp_a2_2 = *temp_a2;
    if (temp_a2_2->unk88 == 0) {
        return 0;
    }
    sp30 = temp_a2_2;
    func_80111550(temp_v0, temp_a2_2);
    temp_v0_2 = func_80111C88(temp_a2_2->unk8C, D_8004A7C4->objId, temp_a2_2);
    if (temp_v0_2 != 0) {
        if (arg0 != 0) {
            temp_v0_2->unk24->unk8 = arg0;
        }
        sp30 = temp_a2_2;
        func_80111ECC(temp_v0_2, temp_a2_2);
    }
    sp30 = *temp_a2;
    temp_a2_3 = *temp_a2;
    if (func_80110150(&sp38, *temp_a2) != 0) {
        *(&D_800E83E0 + (D_8004A7C4->objId * 4)) = sp3A;
        temp_a2_3->unk43 = sp3B;
    } else {
        sp30 = temp_a2_3;
        if (func_80110B00(&sp38, temp_a2_3) != 0) {
            *(&D_800E83E0 + (D_8004A7C4->objId * 4)) = sp3A;
            temp_a2_3->unk43 = sp3B;
        } else {
            sp30 = temp_a2_3;
            if (func_80110FD4(&sp38, temp_a2_3) != 0) {
                if (sp3A == 0xA) {
                    *(&D_800E83E0 + (D_8004A7C4->objId * 4)) = 0;
block_15:
                    temp_a2_3->unk43 = 0;
                } else {
                    *(&D_800E83E0 + (D_8004A7C4->objId * 4)) = sp3A;
                    temp_a2_3->unk43 = sp3B;
                }
            } else {
                *(&D_800E83E0 + (D_8004A7C4->objId * 4)) = 0;
                goto block_15;
            }
        }
    }
    temp_v1 = D_8004A7C4;
    temp_v0_3 = temp_v1->unk0;
    temp_a0 = temp_v0_3 * 4;
    phi_v1 = temp_v1;
    if (D_800E7880[temp_v0_3] == 7) {
        temp_a1 = *(&D_800E83E0 + temp_a0);
        phi_a1 = temp_a1;
        phi_v1 = temp_v1;
        if (temp_a1 == 1) {
            phi_a1 = temp_a1;
            phi_v1 = temp_v1;
            if (0.0f != D_800D6E5C) {
                func_800BC11C(*(&D_800E7B20 + temp_a0), temp_a0, temp_a1, *temp_a2);
                temp_v1_2 = D_8004A7C4;
                phi_a1 = *(&D_800E83E0 + (temp_v1_2->unk0 * 4));
                phi_v1 = temp_v1_2;
            }
        }
        if (phi_a1 == 2) {
            temp_v0_4 = func_801DBF70_ovl10(6, 0);
            temp_v1_3 = D_8004A7C4;
            D_800EBBE0[temp_v1_3->unk0] = temp_v0_4;
            phi_v1 = temp_v1_3;
            if (temp_v0_4 != -1) {
                temp_a0_2 = temp_v1_3->unk0;
                if (gEntityVtableIndexArray[temp_a0_2] < 0xA) {
                    D_800E98E0[D_800EBBE0[temp_a0_2]] = 0;
                } else {
                    D_800E98E0[D_800EBBE0[temp_a0_2]] = 1;
                }
                phi_v1 = temp_v1_3;
                if (0.0f != D_800D6E5C) {
                    func_800BC11C(*(&D_800E7B20 + (temp_v1_3->unk0 * 4)), temp_a0_2 * 4, D_800EBBE0);
                    phi_v1 = D_8004A7C4;
                }
            }
        }
    }
    return *(&D_800E83E0 + (phi_v1->unk0 * 4));
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801E28C8_ovl10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
? func_801E2BD8_ovl10(s32 arg0, s32 arg1) {
    struct UnkStruct800E1B50 *sp18;
    s32 temp_a2;
    struct UnkStruct800E1B50 *temp_v1;
    void *temp_v0;

    temp_a2 = D_8004A7C4->objId;
    temp_v1 = D_800E1B50[temp_a2];
    if (temp_v1->unk88 == 0) {
        return 0;
    }
    sp18 = temp_v1;
    func_80111550(temp_a2, temp_a2);
    temp_v0 = func_80111C88(temp_v1->unk8C, D_8004A7C4->objId);
    if (temp_v0 != 0) {
        if (arg0 != 0) {
            temp_v0->unk24->unk8 = arg0;
        }
        func_80111ECC(temp_v0);
    }
    return func_80110150(arg1);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801E2BD8_ovl10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
? func_801E2C78_ovl10(s32 arg0, s32 arg1) {
    struct UnkStruct800E1B50 *sp18;
    s32 temp_a2;
    s32 temp_a3;
    struct UnkStruct800E1B50 *temp_v1 = D_800E1B50[temp_a2];
    void *temp_v0;

    temp_a2 = D_8004A7C4->objId;
    temp_a3 = arg0;
    temp_v1 = D_800E1B50[D_8004A7C4->objId];
    if (temp_v1->unk88 == 0) {
        return 0;
    }
    sp18 = temp_v1;
    arg0 = temp_a3;
    func_80111550(temp_a2, temp_a2, temp_a3);
    temp_v0 = func_80111C88(temp_v1->unk8C, D_8004A7C4->objId);
    if (temp_v0 != 0) {
        if (arg0 != 0) {
            temp_v0->unk24->unk8 = arg0;
            temp_v0->unk24->unk30 = arg0;
        }
        func_80111ECC(temp_v0, arg0);
    }
    return func_80110150(arg1);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_1/func_801E2C78_ovl10.s")
#endif
