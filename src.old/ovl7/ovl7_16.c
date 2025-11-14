#include <ultra64.h>
#include <macros.h>
#include "omCurrentObj.h"
#include "unk_structs/D_800E1B50.h"
#include "ovl18/ovl18_1.h"

extern f32 D_800E6A10[];
extern f32 D_800D6B10;
extern s32 D_800E8920[];
extern void (*D_800DF150[])(s32);
extern f32 gEntitiesNextPosYArray[];

extern u16 D_800E77A0[];
extern u8 D_800E7730[];
extern u8 D_800D6E30[];
extern s32 D_800BE508;

s32 change_kirby_hp(f32);
void change_kirby_stars(s32);
void change_kirby_lives(s32);
void func_800A22D4(s32);

void play_sound(s32);
void func_80121F14(s32);
void func_8019B7D8_ovl7(void*);
void func_8019BB58_ovl7();
void func_800A2300(void*);
void func_800B19F4(s32, s32);
void ohSleep(s32);
void func_8019D958_ovl7(u16);
void func_800AA018(s32);
void func_800AFA14(void);
void func_801A0880_ovl7(void);
void* func_800A8100(s32, s32, s32, s32);
void func_801A3280_ovl7(void);
void func_801A3E80(void);
void func_800AFBB4(s32, struct GObj*);
s32 func_80104C24(Vector*, Vector*);

void func_801BD510(void *arg0) {
    struct UnkStruct800E1B50 *temp_t8;
    struct UnkStruct800E1B50 *sp1C;
    struct SubSub800E1B50_Unk88_UnkC *temp_a0;
    struct SubSub800E1B50_Unk88_UnkC_Unk0_Unk1C *temp_a0_2;
    struct Sub800E1B50_Unk88 *temp_v0;
    struct SubSub800E1B50_Unk88_UnkC_Unk0 *temp_v0_2;

    temp_t8 = D_800E1B50[omCurrentObj->objId];
    sp1C = temp_t8;
    temp_v0 = temp_t8->unk88;
    if (temp_v0 != 0) {
        temp_a0 = temp_v0->unkC;
        if (temp_a0 != 0) {
            temp_v0_2 = temp_a0->unk0;
            if (temp_v0_2 != 0) {
                temp_a0_2 = temp_v0_2->unk1C;
                if (temp_a0_2 != 0) {
                    change_kirby_hp(temp_a0_2->unk8);
                }
            }
        }
    }
    if ((D_800E7730[omCurrentObj->objId] != 3) || (D_800E77A0[omCurrentObj->objId] < 0) || (D_800E77A0[omCurrentObj->objId] >= 5)) {
        if ((D_800E7730[omCurrentObj->objId] == 4) && (D_800E77A0[omCurrentObj->objId] == 0x39)) {
block_10:
            play_sound(0xCA);
        }
    } else {
        goto block_10;
    }
    if ((D_800E7730[omCurrentObj->objId] == 3) && (D_800E77A0[omCurrentObj->objId] == 5)) {
        func_80121F14(D_800E7730[omCurrentObj->objId]);
        play_sound(0xCA);
    }
    if ((D_800E7730[omCurrentObj->objId] == 3) && (D_800E77A0[omCurrentObj->objId] == 6)) {
        change_kirby_stars(1);
        play_sound(0xCA);
    }
    if ((D_800E7730[omCurrentObj->objId] == 3) && (D_800E77A0[omCurrentObj->objId] == 7) && (D_800E7880[omCurrentObj->objId] == 3)) {
        change_kirby_stars(10);
        play_sound(0xCA);
        D_800D6E30[D_800BE508]++;
    }
    if ((D_800E7730[omCurrentObj->objId] == 3) && (D_800E77A0[omCurrentObj->objId] == 9)) {
        change_kirby_lives(1);
        play_sound(1);
    }
    func_8019B7D8_ovl7(arg0);
    func_8019BB58_ovl7();
    if (sp1C->unk34 != 0) {
        func_800A22D4(sp1C->unk34);
    }
    func_800A2300(arg0);
    sp1C->unk34 = 0;
    D_800DF150[omCurrentObj->objId] = NULL;
    func_800B19F4(0x7D, omCurrentObj->objId);
    ohSleep(0xF);
    func_8019D958_ovl7((u16)omCurrentObj->objId);
}

extern s32 D_800E8920[];
extern u8 D_800E7880[];
extern s32 D_800B67A8;
extern s32 D_801CD8B0;

void func_801BD7C4_ovl7(UNUSED s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = &D_800B67A8;
    D_800E8920[omCurrentObj->objId] = 0;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_801CD8B0);
}

void func_801BD88C_ovl7(UNUSED s32 arg0);

void func_801BD838_ovl7(UNUSED s32 arg0) {
    D_800DF150[omCurrentObj->objId] = &func_801BD88C_ovl7;
    func_800AA018(0x105EF);
    func_800AFA14();
}

void func_801BD88C_ovl7(UNUSED s32 arg0) {
    func_801A0880_ovl7();
}

void func_801BDABC_ovl7(UNUSED s32 arg0);

void func_801BD8AC_ovl7(UNUSED s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = &D_800B67A8;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800DF150[omCurrentObj->objId] = &func_801BDABC_ovl7;
    func_800AA018(0x105F2);
    func_800AFA14();
}

void func_801BD930_ovl7(UNUSED s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = &D_800B67A8;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800DF150[omCurrentObj->objId] = &func_801BDABC_ovl7;
    func_800AA018(0x105F3);
    func_800AFA14();
}

void func_801BD9B4_ovl7(UNUSED s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = &D_800B67A8;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800DF150[omCurrentObj->objId] = &func_801BDABC_ovl7;
    func_800AA018(0x105F4);
    func_800AFA14();
}

void func_801BDA38_ovl7(UNUSED s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = &D_800B67A8;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800DF150[omCurrentObj->objId] = &func_801BDABC_ovl7;
    func_800AA018(0x105F5);
    func_800AFA14();
}

void func_801BDABC_ovl7(UNUSED s32 arg0) {
    func_801A0880_ovl7();
}

extern s32 D_801CD8B8;

void func_801BDADC_ovl7(UNUSED s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = &D_800B67A8;
    D_800E8920[omCurrentObj->objId] = 0;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_801CD8B8);
}

typedef struct {
    u8 filler0[0x3c];
    s32 unk3C;
} UnkStruct_801BDB50;

void func_801BDBDC_ovl7(UNUSED s32 arg0);

void func_801BDB50_ovl7(UnkStruct_801BDB50 *arg0) {
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];;

    D_800DF150[omCurrentObj->objId] = &func_801BDBDC_ovl7;
    func_800AA018(0x105F0);
    func_800AA018(0x105F1);
    sp1C->unk34 = func_800A8100(0, 2, 0x34, arg0->unk3C);
    func_800AFA14();
}

void func_801BDBDC_ovl7(UNUSED s32 arg0) {
    func_801A0880_ovl7();
}

extern s32 D_800E8E60[]; 
void func_801BDEB0_ovl7(s32 arg0);

void func_801BDBFC_ovl7(void) {
    Vector v1, v2, v3, v4;
    struct UnkStruct800E1B50 *temp = D_800E1B50[omCurrentObj->objId];

    if ((D_800E8E60[omCurrentObj->objId] != 0) || (D_800E5F90[omCurrentObj->objId] == -1)) {
        temp->unk40 = 1;
        func_801A3E80();
    }
    func_800AFBB4(0, omCurrentObj);
    v1.x = v2.x = v3.x = v4.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    v1.y = v2.y = v3.y = v4.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    v1.z = v2.z = v3.z = v4.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    v2.x += 60.0f;
    v3.y += 60.0f;
    v4.z += 60.0f;
    while ((func_80104C24(&v1, &v3) != 0) || (func_80104C24(&v1, &v2) != 0) || (func_80104C24(&v1, &v4) != 0)) {
        ohSleep(1);
    }
    func_800AFBB4(1, omCurrentObj);
    D_800DEF90[omCurrentObj->objId] = &D_800B67A8;
    func_801A3280_ovl7();
    D_800E8920[omCurrentObj->objId] = 0;
    D_800DF150[omCurrentObj->objId] = &func_801BDEB0_ovl7;
    D_800EA6E0[omCurrentObj->objId] = D_800E5F90[omCurrentObj->objId];
    D_800EA8A0[omCurrentObj->objId] = D_800E6BD0[omCurrentObj->objId];
    D_800EAA60[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId];
    func_800AA018(0x105F6);
    func_800AA018(0x105F7);
    func_800AFA14();
}

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_16/func_801BDEB0_ovl7.s")

extern s32 D_800E91E0[];
extern s32 D_801CD8C0;

u32 func_800B9DF8(s32); 

void func_801BE068_ovl7(UNUSED s32 arg0) {
    func_801A3280_ovl7();
    D_800E8920[omCurrentObj->objId] = 0;
    if (func_800B9DF8(D_800E91E0[omCurrentObj->objId]) != 0) {
        D_800E7880[omCurrentObj->objId] += 3;
    }
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 7, &D_801CD8C0);
}

void func_801BE1A8_ovl7(s32 arg0);

extern s32 *D_800DFBD0[];

void func_801BE10C_ovl7(UNUSED s32 arg0) {
    struct UnkStruct800E1B50 *sp1C;
    s32 sp18;
    
    sp1C = D_800E1B50[omCurrentObj->objId];
    sp18 = D_800DFBD0[omCurrentObj->objId][1];
    D_800DF150[omCurrentObj->objId] = &func_801BE1A8_ovl7;
    func_800AA018(0x105F9);
    func_800AA018(0x105FA);
    sp1C->unk34 = func_800A8100(0, 2, 0x33, sp18);
    func_800AFA14();
}

extern s32 D_800E83E0[];
extern s32 D_801BE79C;

void func_801BE1A8_ovl7(UNUSED s32 arg0) {
    func_801A0880_ovl7();
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        D_800E7730[omCurrentObj->objId] = 6;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &D_801BE79C);
    }
}

void func_801BE21C_ovl7(UNUSED s32 arg0) {
    Vector v1, v2, v3, v4;

    func_800AFBB4(0, omCurrentObj);
    v1.x = v2.x = v3.x = v4.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    v1.y = v2.y = v3.y = v4.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    v1.z = v2.z = v3.z = v4.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    v2.x += 60.0f;
    v3.y += 60.0f;
    v4.z += 60.0f;
    while ((func_80104C24(&v1, &v3) != 0) || (func_80104C24(&v1, &v2) != 0) || (func_80104C24(&v1, &v4) != 0)) {
        ohSleep(1);
    }
    func_800AFBB4(1, omCurrentObj);
    D_800E7880[omCurrentObj->objId]--;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 7, &D_801CD8C0);
}

extern s32 D_800B6474;
extern s32 D_801CD8C0;

void func_801BE3D8_ovl7(UNUSED s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = &D_800B6474;
    D_800E7880[omCurrentObj->objId] -= 2;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 7, &D_801CD8C0);
}

void func_801BE490_ovl7(UNUSED s32 arg0);

void func_801BE450_ovl7(UNUSED s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = &D_800B67A8;
    func_801BE490_ovl7(arg0);
}

extern void func_801BE588_ovl7(s32);
extern void func_800A9760(s32);

void func_801BE490_ovl7(UNUSED s32 arg0) {
    func_801A3280_ovl7();
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9760(0x100D2);
    D_800DF150[omCurrentObj->objId] = &func_801BE588_ovl7;
    D_800EA6E0[omCurrentObj->objId] = D_800E5F90[omCurrentObj->objId];
    D_800EA8A0[omCurrentObj->objId] = D_800E6BD0[omCurrentObj->objId];
    D_800EAA60[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId];
    func_800AA018(0x10602);
    func_800AA018(0x10603);
    func_800AFA14();
}

extern s32 D_800E83E0[];
extern f32 D_BF7FA8A0;
extern s32 D_800F6BD0[];
extern f32 D_800E64D0[];

#ifdef NON_MATCHING
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_801BE588_ovl7(UNUSED s32 arg0) {
    func_801A0880_ovl7();
    if ((D_800E5F90[omCurrentObj->objId] == D_800EA6E0[omCurrentObj->objId]) && (D_800E83E0[omCurrentObj->objId] == 0xA)) {
        if (D_800EAA60[omCurrentObj->objId] != 1.0f) {
            if (D_800EA8A0[omCurrentObj->objId] == D_800EAA60[omCurrentObj->objId]) {
                if (D_800E6BD0[omCurrentObj->objId] < D_800EA8A0[omCurrentObj->objId]) {
                    D_800EAA60[omCurrentObj->objId] = D_800EAA60[omCurrentObj->objId] * D_800EA8A0[omCurrentObj->objId];
                }
            }
        } else if (D_800F6BD0[omCurrentObj->objId] < D_800E6BD0[omCurrentObj->objId]) {
            D_800EAA60[omCurrentObj->objId] = D_800EAA60[omCurrentObj->objId] * -1.0f;
        } else {
            if (D_800EAA60[omCurrentObj->objId] == -1.0f) {
                if (D_800E6BD0[omCurrentObj->objId] < D_800EA8A0[omCurrentObj->objId]) {
                    D_800EAA60[omCurrentObj->objId] = D_800EAA60[omCurrentObj->objId] * -1.0f;
                }
            }
        }
        D_800E64D0[omCurrentObj->objId] = D_800EAA60[omCurrentObj->objId] + D_800EAA60[omCurrentObj->objId];
    }
    else {
        D_800E64D0[omCurrentObj->objId] = 0.0f;
        D_800E5F90[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
        D_800E6BD0[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_16/func_801BE588_ovl7.s")
#endif

extern s32 D_800B6684;

void func_801BE740_ovl7(UNUSED s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = &D_800B6684;
    D_800E7880[omCurrentObj->objId] -= 2;
    func_801BE490_ovl7(arg0);
}

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_16/func_801BE79C_ovl7.s")

extern s32 func_8019A7E8_ovl7(f32);
void func_801BEF18_ovl7(void);
void eneTurnCommon(s32);

void func_801BEE54_ovl7(UNUSED s32 arg0) {
    struct UnkStruct800E1B50 *sp1C;

    sp1C = D_800E1B50[omCurrentObj->objId];
    if (D_800E98E0[omCurrentObj->objId] == 1) {
        func_801BEF18_ovl7();
        eneTurnCommon(2);
        if (sp1C->unk3C == 0) {
            if (func_8019A7E8_ovl7(30.0f) != 0) {
                D_800E98E0[omCurrentObj->objId] = 2;
            }
        }
    } else {
        if (D_800E98E0[omCurrentObj->objId] == 2) {
            func_801BEF18_ovl7();
            eneTurnCommon(2);
        }
    }
}

extern s32 D_800DE350[];
extern f32 D_800E3750[];
extern f32 D_800E3C90[];
extern f32 D_800E6690[];
extern f32 D_800E6850[];
extern f32 D_801CE5D4;
extern f32 D_801CE5D8;

f32 func_8019DA50_ovl7(f32);
#ifdef NON_MATCHING
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_801BEF18_ovl7(void) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 phi_f0;
    f32 temp_f12;

    func_8019B424_ovl7(D_800DE350[omCurrentObj->objId]);
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 2.5f;
    temp_f12 = (gEntitiesNextPosYArray[0] + 20.0f) - gEntitiesNextPosYArray[omCurrentObj->objId];
    if (temp_f12 > 0) {
        D_800E3750[omCurrentObj->objId] = 2.5f;
    } else {
        D_800E3750[omCurrentObj->objId] = -2.5f;
    }
    temp_f0_2 = func_8019DA50_ovl7(temp_f12);
    if (temp_f0_2 < 37.5f) {
        D_800E6850[omCurrentObj->objId] = ABSF(temp_f0_2 * D_801CE5D4);
    } else {
        D_800E6850[omCurrentObj->objId] = 25.0f;
    }
    // phi_f0 = ABSF(temp_f12);
    if (ABSF(temp_f12) < 37.5f) {
        D_800E3C90[omCurrentObj->objId] = ABSF(temp_f12 * D_801CE5D8);
    }
    else {
        D_800E3C90[omCurrentObj->objId] = 25.0f;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_16/func_801BEF18_ovl7.s")
#endif

extern s32 D_801CD8DC;

void func_801BF12C_ovl7(UNUSED s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = &D_800B67A8;
    D_800E8920[omCurrentObj->objId] = 0;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_801CD8DC);
}

void func_801BF1F4_ovl7(UNUSED s32 arg0);

void func_801BF1A0_ovl7(UNUSED s32 arg0) {
    D_800DF150[omCurrentObj->objId] = &func_801BF1F4_ovl7;
    func_800AA018(0x10601);
    func_800AFA14();
}

void func_801BF1F4_ovl7(UNUSED s32 arg0) {
    func_801A0880_ovl7();
}
