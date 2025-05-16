#include <ultra64.h>
#include <macros.h>
#include "omCurrentObj.h"
#include "unk_structs/D_800E1B50.h"
#include "ovl1/ovl1_6.h"

extern s32 D_800EBBE0[];


extern f32 D_800E6A10[];
extern s32 D_800EBDA0[];
extern f32 gEntitiesNextPosYArray[];

extern s32 D_800E98E0[];

extern s32 gEntityVtableIndexArray[];
s32 func_801ACCA0_ovl10(s32, s32, f32, f32);

extern void (*D_801F43F0_ovl10[])(s32);

void func_801E2D40_ovl10(s32 arg0) {
    func_8019B9B0_ovl10();
    call_virtual_function(D_800E7880[omCurrentObj->objId], 3, &D_801F43F0_ovl10);
    while (1)
        call_virtual_function(gEntityVtableIndexArray[omCurrentObj->objId], 1, &D_801F43F0_ovl10[3]);
}

void func_801E2DD8_ovl10(s32 arg0) {
    func_8019B9B0_ovl10();
    call_virtual_function(D_800E7880[omCurrentObj->objId], 3, &D_801F43F0_ovl10);
    while (1)
        call_virtual_function(gEntityVtableIndexArray[omCurrentObj->objId], 1, &D_801F43F0_ovl10[3]);
}

void func_801E2E78_ovl10(s32 arg0) {
    D_800E6A10[omCurrentObj->objId] = -1.0f;
    func_800A9864(0x1008D, 0x23, 0x10);
    func_800AA018(0x10521);
    gEntityVtableIndexArray[omCurrentObj->objId] = 0;
}

void func_801E2EF0_ovl10(s32 arg0) {
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    func_800A9864(0x1008D, 0x23, 0x10);
    func_800AA018(0x10521);
    gEntityVtableIndexArray[omCurrentObj->objId] = 0;
}

extern f32 D_801F4A40_ovl10, D_801F4A48_ovl10, D_801F4A44_ovl10;
extern f32 D_800E6690[];
extern f32 D_800E6850[];
extern f32 D_800E64D0[];
extern s32 D_801F41B4_ovl10;
extern s32 func_800B6A2C; // this is actually a function
extern s32 D_800E8920[];

void func_801E3244_ovl10(void);

void func_801E2F68_ovl10(s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = &func_800B6A2C;
    D_800DF150[omCurrentObj->objId] = func_801E3244_ovl10;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801F41B4_ovl10;
    D_800E8920[omCurrentObj->objId] = 1;
    func_800B33F4();
    D_800E98E0[omCurrentObj->objId] = 0;
    ohSleep(1);
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
    D_800E3210[omCurrentObj->objId] = 8.0f;
    D_800E3750[omCurrentObj->objId] = D_801F4A40_ovl10;
    D_800E3C90[omCurrentObj->objId] = 8.0f;
    ohSleep(3);
    D_800E98E0[omCurrentObj->objId] = 1;
    while (D_800E8920[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] + D_800E6A10[omCurrentObj->objId];
    D_800E3210[omCurrentObj->objId] = 4.0f;
    D_800E3750[omCurrentObj->objId] = D_801F4A44_ovl10;
    D_800E3C90[omCurrentObj->objId] = 4.0f;
    while (D_800E8920[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    func_800B33F4();
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = D_801F4A48_ovl10;
    ohSleep(0x3C);
    func_801ACF84_ovl7(arg0);
}

void func_801E3244_ovl10(void) {
    func_801A0D74_ovl10();
    func_801A03B4_ovl10();
}


void func_801E3748_ovl10(void);
extern s32 D_801CB4DC;
extern f32 D_800E64D0[];
extern f32 D_800E3210[];
extern void (*D_800DF150[])(s32);

extern f32 sinf(f32);
extern f32 cosf(f32);
f32 func_801E3450_ovl10(s32);
f32 func_801E3614_ovl10(s32);

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E326C_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E3450_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E3614_ovl10.s")

void func_801E3748_ovl10(void) {
    func_801A0D74_ovl10();
    func_801A03B4_ovl10();
}

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E3770_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E3874_ovl10.s")

#include "ovl19/ovl19_5.h"
extern struct EntityThing800E9AA0 *D_800E9AA0[];
extern const char D_801F4A80_ovl10[];

void func_801E3A64_ovl10(void) {
    u32 pad;
    struct EntityThing800E9AA0 *temp_s1;
    s32 temp_v0;
    s32 i;

    temp_s1 = D_800E9AA0[omCurrentObj->objId];
    for (i = 0; i < 2; i++) {
        temp_v0 = request_track_general(0x18, 0x1E, 0x3C);
        if (temp_v0 >= 0x3C || temp_v0 == -1) {
            print_error_stub(&D_801F4A80_ovl10);
            func_800B1900(temp_v0 & 0xFFFF);
            break;
        }
        gEntityVtableIndexArray[temp_v0] = gEntityVtableIndexArray[omCurrentObj->objId];
        D_800E76C0[temp_v0] = 0xFF;
        D_800E7730[temp_v0] = 1;
        D_800E77A0[temp_v0] = 1;
        D_800E7880[temp_v0] = 8;
        D_800E8E60[temp_v0] = 0;
        D_800E5F90[temp_v0] = temp_s1->unk0;
        D_800E6BD0[temp_v0] = temp_s1->unk24;
        D_800E98E0[temp_v0] = i;
    }
}

void func_801E3BE4_ovl10(s32 arg0);
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E3BE4_ovl10.s")

void func_801E3E04_ovl10(s32 arg0);
extern void (*D_801F44B0_ovl10[])(void);
extern u32 D_801F449C_ovl10;
extern s32 *D_801CB494;
extern const char D_801F4AB0_ovl10[];

void func_801E3C2C_ovl10(s32 arg0) {
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = func_801E3E04_ovl10;
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId] + -4.0f;
    D_800E9AA0[omCurrentObj->objId] = func_800FCE50();
    if (D_800E9AA0[omCurrentObj->objId] == 0) {
        print_error_stub(&D_801F4AB0_ovl10);
    }
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_u32p = &D_801F449C_ovl10;
    D_800E93A0[omCurrentObj->objId] = 5;
    D_800E9560[omCurrentObj->objId] = 1;
    D_800EA360[omCurrentObj->objId] = 0;
    D_800EA6E0[omCurrentObj->objId] = 5.0f;
    gEntityVtableIndexArray[omCurrentObj->objId] = 0;
    sp1C->unk98 = &D_801CB494;
    func_801A0D50(&func_801E3BE4_ovl10);
    D_800EC2E0[omCurrentObj->objId].as_s32 = 0x1E;
    func_801E3A64_ovl10();
    call_virtual_function(gEntityVtableIndexArray[omCurrentObj->objId], 9, &D_801F44B0_ovl10[1]);
}

extern void func_800BC1FC(s32);
extern void func_800BC11C(f32);
GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E3E04_ovl10.s")

void func_801E3F7C_ovl10(s32 arg0) {
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800EA520[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AA018(0x10339);
    func_800AA864(0x10338, 2);
    D_800E9E20[omCurrentObj->objId] = 1;
    func_800AFA14();
}

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E4030_ovl10.s")

extern const char D_801F4AC8_ovl10[];
void func_801E409C_ovl10(void) {
    u32 pad[2];
    s32 temp_v0;
    s32 new;

    temp_v0 = request_track_general(0x18, 0x1E, 0x3C);
    new = temp_v0;
    if (temp_v0 >= 0x3C || temp_v0 == -1) {
        print_error_stub(&D_801F4AC8_ovl10);
        func_800B1900((u16)new);
        return;
    }
    gEntityVtableIndexArray[temp_v0] = gEntityVtableIndexArray[omCurrentObj->objId];
    D_800E76C0[temp_v0] = 0xFF;
    D_800E7730[temp_v0] = 1;
    D_800E77A0[temp_v0] = 1;
    D_800E7880[temp_v0] = D_800E9560[omCurrentObj->objId];
    D_800E9560[omCurrentObj->objId]++;
    D_800EA360[omCurrentObj->objId]++;
    gEntitiesNextPosXArray[temp_v0] = gEntitiesNextPosXArray[omCurrentObj->objId] + -60.0f;
    gEntitiesNextPosYArray[temp_v0] = gEntitiesNextPosYArray[omCurrentObj->objId] + 20.0f + 4.0f;
    gEntitiesNextPosZArray[temp_v0] = gEntitiesNextPosZArray[omCurrentObj->objId] + -10.0f;
    D_800E8E60[temp_v0] = D_800E8E60[omCurrentObj->objId];
    D_800E9AA0[temp_v0] = D_800E9AA0[omCurrentObj->objId];
}

void func_800AECC0(f32);

void func_801E4284_ovl10(s32 arg0, s32 arg1, f32 arg2) {
    if ((arg1 == 0) && (1 == (s32) arg2)) {
        D_800EA520[omCurrentObj->objId] = 1;
        func_800AECC0(0.0f);
    }
}

void func_800AED20(f32);

void func_801E42E4_ovl10(s32 arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800EA1A0[omCurrentObj->objId] = -1;
    D_800EA520[omCurrentObj->objId] = 0;
    D_800E9720[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800AA018(0x1032F);
    func_800AA864(0x1032E, 1);
    D_800EA1A0[omCurrentObj->objId] = 0;
    play_sound(0x1D1);
    func_800AECC0(D_800D6B10 * 1.25f);
    func_800AED20(D_800D6B10 * 1.25f);
    func_801E409C_ovl10();
    func_800AA018(0x1032D);
    func_800AA864(0x1032C, 1);
    func_800AECC0(D_800D6B10);
    func_800AED20(D_800D6B10);
    func_800AA018(0x10331);
    func_800AA864(0x10330, 1);
    func_800AECC0(D_800D6B10 + D_800D6B10);
    func_800AED20(D_800D6B10 + D_800D6B10);
    func_800AA018(0x10335);
    func_800AA018(0x10334);
    D_800DF310[omCurrentObj->objId] = &func_801E4284_ovl10;
    while (D_800EA520[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    ohSleep(16);
    func_800AECC0(D_800D6B10);
    func_800AED20(D_800D6B10);
    D_800E9E20[omCurrentObj->objId] = 1;
    func_800AFA14();
}

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E4518_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E46FC_ovl10.s")

void func_801E4764_ovl10(s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800EC4A0[omCurrentObj->objId] = 0;
    func_800AA018(0x1030F);
    func_800AA864(0x1030E, 1);
    func_800AA018(0x10317);
    func_800AA864(0x10316, 1);
    func_800AA018(0x10313);
    func_800AA018(0x10312);
    D_800E9E20[omCurrentObj->objId] = 1;
    while (1 == D_800E9E20[omCurrentObj->objId]) {
        ohSleep(1);
    }
    D_800E9E20[omCurrentObj->objId] = 2;
    func_800AA018(0x10315);
    func_800AA864(0x10314, 1);
    D_800E9E20[omCurrentObj->objId] = 3;
    func_800AFA14();
}

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E48C8_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E499C_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E4A74_ovl10.s")

void func_801E4BC8_ovl10(s32 arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 3;
    ohSleep(16);
    func_800AA018(0x1030D);
    func_800AA864(0x1030C, 1);
    func_800AA018(0x10309);
    func_800AA864(0x10308, 2);
    D_800E9E20[omCurrentObj->objId] = 1;
    func_800AFA14();
}

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E4C7C_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E4D6C_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E50A4_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E5184_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E5278_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E5364_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E5468_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E552C_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E56C4_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E5754_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E589C_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E5B08_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E5C4C_ovl10.s")

int func_800F98EC(u32, f32);
void func_801A2558_ovl10(s32);

void func_801E5CF0_ovl10(f32 arg0) {
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];
    struct EntityThing800E9AA0 *temp_a2;

    temp_a2 = D_800E9AA0[omCurrentObj->objId];
    D_800E5F90[omCurrentObj->objId] = temp_a2->unk0;
    D_800E6BD0[omCurrentObj->objId] = temp_a2->unk24;
    D_800E8E60[omCurrentObj->objId] = 0;
    func_800F98EC(omCurrentObj->objId, arg0);
    func_801A2558_ovl10((s32)(sp1C->unk88->unk10));
    func_800FF0C4(sp1C->unk80);
}

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E5D98_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E5DC8_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E5F60_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E6030_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E6298_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E63E4_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E63FC_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E6444_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E6564_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E6614_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E66E0_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E679C_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E6AB4_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E6BA8_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E6CAC_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E6D08_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E6D50_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E6E84_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E6F34_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E7000_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E70BC_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E7248_ovl10.s")

extern void func_801DB1E0_ovl10(void);
void func_801E5CF0_ovl10(f32);

void func_801E72B8_ovl10(s32 arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800DEF90[omCurrentObj->objId] = &func_801DB1E0_ovl10;
    func_801E5CF0_ovl10(D_800EA8A0[omCurrentObj->objId]);
    func_800A9EA4(0x1035D);
    func_800A9EA4(0x1035C);
    ohSleep(0xF);
    D_800E9E20[omCurrentObj->objId] = 1;
    D_800E64D0[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 5.0f;
    D_800E3C90[omCurrentObj->objId] = 6.0f;
    func_800AFA14();
}

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E7424_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E75E4_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E762C_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E7760_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E7808_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E78D4_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E7990_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E7C38_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E7CC0_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E7ED4_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E8008_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E8050_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E8184_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E8234_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E8300_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E83BC_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E8548_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E85B8_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E871C_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E88E4_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E8988_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E89D0_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E8AF8_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E8BA8_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E8C68_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E8D24_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E8F24_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E8F90_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E90CC_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E9128_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E91B0_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E91F8_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E932C_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E93F8_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E94C4_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E95C4_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E9770_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E980C_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E9A10_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E9ACC_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E9B7C_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E9BDC_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E9DCC_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801E9ECC_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EA048_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EA1E4_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EA364_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EA4C0_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EA630_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EA718_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EA784_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EA7CC_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EA900_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EA9CC_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EAA98_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EAB98_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EAF3C_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EB018_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EB0C0_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EB1A4_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EB20C_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EB2C4_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EB39C_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EB408_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EB744_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EB84C_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EB9DC_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EBA74_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EBC28_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EBC60_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EBDE8_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EBF2C_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EBFDC_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EC120_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EC2A0_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EC37C_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EC3C8_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EC4CC_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EC6D8_ovl10.s")

void func_801EC928_ovl10(s32 arg0) {

}

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EC930_ovl10.s")

void func_801ECA0C_ovl10(void) {
    func_8019B424_ovl10();
    func_8019BE9C_ovl10(1);
}

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801ECA34_ovl10.s")

void func_801ECCE4_ovl10(s32 arg0) {

}

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801ECCEC_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801ECE90_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801ECF48_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801ED208_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801ED2CC_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801ED6B8_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801ED6E4_ovl10.s")

void func_801ED7C8_ovl10(s32 arg0) {

}

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801ED7D0_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801ED930_ovl10.s")

void func_801EDA98_ovl10(s32 arg0) {

}

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EDAA0_ovl10.s")

void func_801EDD1C_ovl10(s32 arg0) {

}

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EDD24_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EDF58_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EDF84_ovl10.s")

void func_801EE048_ovl10(s32 arg0) {

}

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EE050_ovl10.s")

void func_801EE244_ovl10(s32 arg0) {

}

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EE24C_ovl10.s")

void func_801EE408_ovl10(s32 arg0) {

}

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EE410_ovl10.s")

void func_801EE5A8_ovl10(s32 arg0) {

}

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EE5B0_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EE990_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EEB30_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EEE44_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EEED4_ovl10.s")

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EEF4C_ovl10.s")

void func_801EEFCC_ovl10(void) {
    s32 temp_a1;

    do {
        temp_a1 = (random_soft_s32_range(9) % 3) + 1;
    } while (temp_a1 == D_800E98E0[omCurrentObj->objId]);

    do {
        switch (temp_a1) {
            case 1: gEntityVtableIndexArray[omCurrentObj->objId] = 3; break;
            case 2: gEntityVtableIndexArray[omCurrentObj->objId] = 8; break;
            case 3: gEntityVtableIndexArray[omCurrentObj->objId] = 0xC; break;
        }
    } while (0);
    D_800E98E0[omCurrentObj->objId] = temp_a1;
}

GLOBAL_ASM("asm/non_matchings/ovl10/ovl10_2/func_801EF0F0_ovl10.s")

s32 func_801AE7E0_ovl10(s32);

void func_801EF15C_ovl10(s32 arg0) {
    s32 temp_v0;

    switch (arg0) {
        case 1:
            temp_v0 = func_801AE7E0_ovl10(8);
            if (temp_v0 != -1) {
                D_800EC2E0[temp_v0].as_s32 = 0;
            }
            break;
        case 2:
            temp_v0 = func_801AE7E0_ovl10(9);
            if (temp_v0 != -1) {
                gEntitiesNextPosYArray[temp_v0] -= 15.0f;
                break;
            }
            break;
        case 3:
            temp_v0 = func_801AE7E0_ovl10(8);
            if (temp_v0 != -1) {
                D_800EC2E0[temp_v0].as_s32 = 1;
            }
            break;
    }
}


s32 func_801EF218_ovl10(s32 arg0) {
    D_800EBBE0[omCurrentObj->objId] = 0;
    switch(arg0) {
        case 1:
            D_800EBBE0[omCurrentObj->objId] = func_801ACCA0_ovl10(0xB, 0, 0, 0);
            D_800EBDA0[omCurrentObj->objId] = func_801ACCA0_ovl10(0xB, 0, 0, 0);
            break;
        case 2:
            D_800EBBE0[omCurrentObj->objId] = func_801ACCA0_ovl10(0xB, 0, 0, 0);
            break;
        case 3:
            D_800EBBE0[omCurrentObj->objId] = func_801ACCA0_ovl10(0xB, 0, 0, 0);
            break;
    }
    if (D_800EBBE0[omCurrentObj->objId] != 0) {
        D_800EC2E0[D_800EBBE0[omCurrentObj->objId]].as_s32 = arg0;
        D_800E6A10[D_800EBBE0[omCurrentObj->objId]] *= -1.0f;
    }
    if (D_800EBDA0[omCurrentObj->objId] != 0) {
        D_800EC2E0[D_800EBDA0[omCurrentObj->objId]].as_s32 = arg0;
    }
    return D_800EBBE0[omCurrentObj->objId];
}
