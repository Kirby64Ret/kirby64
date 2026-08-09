#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "buffers.h"
#include "ovl1/ovl1_7.h"
#include "unk_structs/D_800E1B50.h"
#include "ovl19/ovl19_5.h"

extern FUNCLIST D_801F44B4_ovl10;
extern FUNCLIST D_801F4510_ovl10;
extern FUNCLIST D_801F4528_ovl10;
extern FUNCLIST D_801F4540_ovl10;
extern FUNCLIST D_801F4558_ovl10;
extern FUNCLIST D_801F4570_ovl10;
extern FUNCLIST D_801F4588_ovl10;
extern FUNCLIST D_801F45B8_ovl10;

s32 func_801A0D74_ovl7(void);
void func_8019B424_ovl7();
void eneTurnCommon(s32);
void func_8019D4D0_ovl7(f32, s32);
void func_80199F1C_ovl7(void);
void func_800AECC0(f32);
void func_801ACCA0_ovl7(s32, s32, f32, f32);
void play_sound(s32);
void func_801A0D50_ovl7(void *);
void func_801EC3C8_ovl10(GObj *);
extern s32 random_soft_s32_range(s32);
void func_801E6030_ovl10(void);
void func_800A9EA4(s32);
void func_800AA864(s32, s32);
void func_800AED20(f32);
void func_801E63FC_ovl10(struct GObj *);
void func_801E75E4_ovl10(struct GObj *);
void func_801E8988_ovl10(struct GObj *);
extern f32 gameTicksPerDraw;

typedef struct Unk4Bytes {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
} Unk4Bytes;
extern FUNCLIST D_801F451C_ovl10;
extern FUNCLIST D_801F4534_ovl10;
extern FUNCLIST D_801F454C_ovl10;
extern FUNCLIST D_801F4564_ovl10;
extern FUNCLIST D_801F457C_ovl10;
void func_801E6D08_ovl10(struct GObj *);
void func_801E8008_ovl10(struct GObj *);

struct Ovl10AnimInfo {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 filler4[8];
    s32 unkC;
    u8 filler10[0x10];
};

extern s32 D_801F3F28_ovl10;
extern f32 D_801F4B50_ovl10;
extern f32 D_801F4B84_ovl10;
s32 func_801E9ACC_ovl10(void);
s32 func_8019A9AC_ovl7(f32, f32);
extern s32 D_801F3F70_ovl10;
void func_80111550(void *);
void *func_80111C88(void *, u32);
void func_80111ECC(void *);
s32 func_80110150(void *);
void func_80169430_ovl3(s32, u8, u8, s32);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E3770_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E3874_ovl10.s")

extern const char D_801F4A80_ovl10[];

void func_801E3A64_ovl10(void) {
    u32 pad;
    struct EntityThing800E9AA0 *temp_s1;
    s32 temp_v0;
    s32 i;

    temp_s1 = D_800E9AA0[omCurrentObj->objId].as_ptr;
    for (i = 0; i < 2; i++) {
        temp_v0 = request_track_general(0x18, 0x1E, 0x3C);
        if (temp_v0 >= 0x3C || temp_v0 == -1) {
            utilPrintf(&D_801F4A80_ovl10);
            func_800B1900((u16)temp_v0);
            break;
        }
        gEntityFuncListIDArray[temp_v0] = gEntityFuncListIDArray[omCurrentObj->objId];
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

void func_801E3BE4_ovl10(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 9, &D_801F44B4_ovl10);
}

extern struct Sub800E1B50_Unk98 D_801CB494_ovl7;
extern u32 D_801F449C_ovl10;
extern const char D_801F4AB0_ovl10[];
void func_801E3E04_ovl10(struct GObj *);
void func_801E3A64_ovl10(void);
void *func_800FCE50(void);

void func_801E3C2C_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = func_801E3E04_ovl10;
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId] + -4.0f;
    D_800E9AA0[omCurrentObj->objId].as_ptr = func_800FCE50();
    if (D_800E9AA0[omCurrentObj->objId].as_ptr == NULL) {
        utilPrintf(&D_801F4AB0_ovl10);
    }
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_u32p = &D_801F449C_ovl10;
    D_800E93A0[omCurrentObj->objId] = 5;
    D_800E9560[omCurrentObj->objId] = 1;
    D_800EA360[omCurrentObj->objId] = 0;
    D_800EA6E0[omCurrentObj->objId] = 5.0f;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    sp1C->unk98 = &D_801CB494_ovl7;
    func_801A0D50_ovl7(&func_801E3BE4_ovl10);
    D_800EC2E0[omCurrentObj->objId].as_s32 = 0x1E;
    func_801E3A64_ovl10();
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 9, &D_801F44B4_ovl10);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E3E04_ovl10.s")

void func_801E3F7C_ovl10(GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800EA520[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AA018(0x10339);
    func_800AA864(0x10338, 2);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801E3BE4_ovl10(struct GObj *);

void func_801E4030_ovl10(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E3BE4_ovl10);
    }
}

extern const char D_801F4AC8_ovl10[];

void func_801E409C_ovl10(void) {
    u32 pad[3];
    s32 temp_v0;

    temp_v0 = request_track_general(0x18, 0x1E, 0x3C);
    if (temp_v0 >= 0x3C || temp_v0 == -1) {
        utilPrintf(&D_801F4AC8_ovl10);
        func_800B1900((u16)temp_v0);
        return;
    }
    gEntityFuncListIDArray[temp_v0] = gEntityFuncListIDArray[omCurrentObj->objId];
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
    D_800E9AA0[temp_v0].as_s32 = D_800E9AA0[omCurrentObj->objId].as_s32;
}

void func_801E4284_ovl10(GObj *arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0 && (s32) arg2 == 1) {
        D_800EA520[omCurrentObj->objId] = 1;
        func_800AECC0(0.0f);
    }
}

void func_801E409C_ovl10(void);

void func_801E42E4_ovl10(GObj *arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800EA1A0[omCurrentObj->objId] = -1;
    D_800EA520[omCurrentObj->objId] = 0;
    D_800E9720[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800AA018(0x1032F);
    func_800AA864(0x1032E, 1);
    D_800EA1A0[omCurrentObj->objId] = 0;
    play_sound(0x1D1);
    func_800AECC0(gameTicksPerDraw * 1.25f);
    func_800AED20(gameTicksPerDraw * 1.25f);
    func_801E409C_ovl10();
    func_800AA018(0x1032D);
    func_800AA864(0x1032C, 1);
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AA018(0x10331);
    func_800AA864(0x10330, 1);
    func_800AECC0(gameTicksPerDraw + gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw + gameTicksPerDraw);
    func_800AA018(0x10335);
    func_800AA018(0x10334);
    D_800DF310[omCurrentObj->objId] = &func_801E4284_ovl10;
    while (D_800EA520[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    ohSleep(16);
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E4518_ovl10.s")

void func_801E46FC_ovl10(GObj *arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0 && (s32) arg2 == 2) {
        func_800AECC0(0.0f);
        D_800E9E20[omCurrentObj->objId] = 1;
    }
}

void func_801E4764_ovl10(GObj *arg0) {
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
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E48C8_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E499C_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E4A74_ovl10.s")

void func_801E4BC8_ovl10(GObj *arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 3;
    ohSleep(16);
    func_800AA018(0x1030D);
    func_800AA864(0x1030C, 1);
    func_800AA018(0x10309);
    func_800AA864(0x10308, 2);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E4C7C_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E4D6C_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E50A4_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E5184_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E5278_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E5364_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E5468_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E552C_ovl10.s")

void func_801E56C4_ovl10(GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
        gEntityFuncListIDArray[omCurrentObj->objId] = 5;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E3BE4_ovl10);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E5754_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E589C_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E5B08_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E5C4C_ovl10.s")

int func_800F98EC(u32, f32);
void func_801A2558_ovl7(s32);
void func_800FF0C4(void *);

void func_801E5CF0_ovl10(f32 arg0) {
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];
    struct EntityThing800E9AA0 *temp_a2;

    temp_a2 = D_800E9AA0[omCurrentObj->objId].as_ptr;
    D_800E5F90[omCurrentObj->objId] = temp_a2->unk0;
    D_800E6BD0[omCurrentObj->objId] = temp_a2->unk24;
    D_800E8E60[omCurrentObj->objId] = 0;
    func_800F98EC(omCurrentObj->objId, arg0);
    func_801A2558_ovl7(sp1C->unk88->unk10);
    func_800FF0C4(sp1C->unk80);
}

void func_801E5D98_ovl10(void *arg0, Unk4Bytes *arg1) {
    void **p = *(void ***) ((u8 *) arg0 + 0x80);

    while (p != NULL) {
        *(Unk4Bytes *) ((u8 *) p + 0x58) = *arg1;
        p = *(void ***) p;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E5DC8_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E5F60_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E6030_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E6298_ovl10.s")

void func_801E63E4_ovl10(void *arg0) {
    *((u8 *) arg0 + 4) = 0x1C;
    *(f32 *) arg0 = 40.0f;
}

void func_801E63FC_ovl10(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_801F4510_ovl10);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E6444_ovl10.s")

#ifdef MIPS_TO_C
// 8 diffs: only the register holding `var` (ROM $a1, IDO $a0) and the
// consequent delay-slot fill differ.
void func_801E6564_ovl10(void) {
    s32 id;
    s32 var = 0;

    if (D_800E9C60[omCurrentObj->objId] != 0) {
        var = func_801A0D74_ovl7();
    }
    if (var == 0) {
        id = D_800DDFD0[omCurrentObj->objId];
        utilFuncTableJump(id, 3, &D_801F451C_ovl10);
    }
    if (D_800E9C60[omCurrentObj->objId] != 0) {
        eneTurnCommon(6);
        func_801E6030_ovl10();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E6564_ovl10.s")
#endif

void func_801E6614_ovl10(GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800EA360[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800A9EA4(0x1034A);
    func_800AA864(0x10349, 1);
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801E66E0_ovl10(GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0 && D_800EA520[D_800EA520[omCurrentObj->objId]] != 0) {
        func_800AECC0(gameTicksPerDraw);
        func_800AED20(gameTicksPerDraw);
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E63FC_ovl10);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E679C_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E6AB4_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E6BA8_ovl10.s")

void func_801E6CAC_ovl10(void) {
    struct UnkStruct800E1B50 *temp = D_800E1B50[omCurrentObj->objId];

    if (D_800E6310[omCurrentObj->objId] != 0 && temp->unk3C == 0) {
        func_80199F1C_ovl7();
    }
}

void func_801E6D08_ovl10(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_801F4528_ovl10);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E6D50_ovl10.s")

#ifdef MIPS_TO_C
void func_801E6E84_ovl10(void) {
    s32 var = 0;

    if (D_800E9C60[omCurrentObj->objId] != 0) {
        var = func_801A0D74_ovl7();
    }
    if (var == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_801F4534_ovl10);
    }
    if (D_800E9C60[omCurrentObj->objId] != 0) {
        eneTurnCommon(1);
        func_801E6030_ovl10();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E6E84_ovl10.s")
#endif

void func_801E6F34_ovl10(GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800EA360[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800A9EA4(0x10359);
    func_800AA864(0x10358, 1);
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801E7000_ovl10(GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0 && D_800EA520[D_800EA520[omCurrentObj->objId]] != 0) {
        func_800AECC0(gameTicksPerDraw);
        func_800AED20(gameTicksPerDraw);
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E6D08_ovl10);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E70BC_ovl10.s")

void func_801E7248_ovl10(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E6D08_ovl10);
    }
}

extern void func_801DB1E0_ovl10(void);
void func_801E5CF0_ovl10(f32);

void func_801E72B8_ovl10(GObj *arg0) {
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
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E7424_ovl10.s")

void func_801E75E4_ovl10(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_801F4540_ovl10);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E762C_ovl10.s")

#ifdef MIPS_TO_C
void func_801E7760_ovl10(void) {
    s32 temp = 0;

    if (D_800E9C60[omCurrentObj->objId] != 0) {
        temp = func_801A0D74_ovl7();
    }
    if (temp == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_801F454C_ovl10);
    }
    if (D_800E9C60[omCurrentObj->objId] != 0) {
        func_801E6030_ovl10();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E7760_ovl10.s")
#endif

void func_801E7808_ovl10(GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800EA360[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800A9EA4(0x103B0);
    func_800AA864(0x103AF, 1);
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801E78D4_ovl10(GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0 && D_800EA520[D_800EA520[omCurrentObj->objId]] != 0) {
        func_800AECC0(gameTicksPerDraw);
        func_800AED20(gameTicksPerDraw);
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E75E4_ovl10);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E7990_ovl10.s")

void func_801E7C38_ovl10(GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] == 1) {
        *(u32 *) &D_800E8920[omCurrentObj->objId] = 1;
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E75E4_ovl10);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E7CC0_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E7ED4_ovl10.s")

void func_801E8008_ovl10(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_801F4558_ovl10);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E8050_ovl10.s")

#ifdef MIPS_TO_C
void func_801E8184_ovl10(void) {
    s32 var = 0;

    if (D_800E9C60[omCurrentObj->objId] != 0) {
        var = func_801A0D74_ovl7();
    }
    if (var == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_801F4564_ovl10);
    }
    if (D_800E9C60[omCurrentObj->objId] != 0) {
        eneTurnCommon(1);
        func_801E6030_ovl10();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E8184_ovl10.s")
#endif

void func_801E8234_ovl10(GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800EA360[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800A9EA4(0x103A1);
    func_800AA864(0x103A0, 1);
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801E8300_ovl10(GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0 && D_800EA520[D_800EA520[omCurrentObj->objId]] != 0) {
        func_800AECC0(gameTicksPerDraw);
        func_800AED20(gameTicksPerDraw);
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E8008_ovl10);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E83BC_ovl10.s")

void func_801E8548_ovl10(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E8008_ovl10);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E85B8_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E871C_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E88E4_ovl10.s")

void func_801E8988_ovl10(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_801F4570_ovl10);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E89D0_ovl10.s")

#ifdef MIPS_TO_C
void func_801E8AF8_ovl10(void) {
    s32 var = 0;

    if (D_800E9C60[omCurrentObj->objId] != 0) {
        var = func_801A0D74_ovl7();
    }
    if (var == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_801F457C_ovl10);
    }
    if (D_800E9C60[omCurrentObj->objId] != 0) {
        eneTurnCommon(1);
        func_801E6030_ovl10();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E8AF8_ovl10.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E8BA8_ovl10.s")

void func_801E8C68_ovl10(GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0 && D_800EA520[D_800EA520[omCurrentObj->objId]] != 0) {
        func_800AECC0(gameTicksPerDraw);
        func_800AED20(gameTicksPerDraw);
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E8988_ovl10);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E8D24_ovl10.s")

void func_801E8988_ovl10(struct GObj *);

void func_801E8F24_ovl10(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E8988_ovl10);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E8F90_ovl10.s")

void func_801E90CC_ovl10(void) {
    struct UnkStruct800E1B50 *temp = D_800E1B50[omCurrentObj->objId];

    if (D_800E6310[omCurrentObj->objId] != 0 && temp->unk3C == 0) {
        func_80199F1C_ovl7();
    }
}

void func_801E9128_ovl10(GObj *arg0) {
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * D_801F4B50_ovl10;
    D_800E3210[omCurrentObj->objId] = 13.0f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
}

void func_801E91B0_ovl10(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 6, &D_801F4588_ovl10);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E91F8_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E932C_ovl10.s")

void func_801E93F8_ovl10(GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800EA360[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800A9EA4(0x10367);
    func_800AA864(0x10366, 1);
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E94C4_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E95C4_ovl10.s")

void func_801E9770_ovl10(GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] == 1) {
        D_800E9FE0[omCurrentObj->objId].as_s32 = -1;
        D_800E9560[omCurrentObj->objId] = 0;
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E91B0_ovl10);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E980C_ovl10.s")

void func_801E9A10_ovl10(GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        func_801E9ACC_ovl10();
        func_8019B424_ovl7(arg0);
        if (D_800E9FE0[omCurrentObj->objId].as_s32 & 1) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 4;
        } else {
            gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        }
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E91B0_ovl10);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E9ACC_ovl10.s")

void func_801E9B7C_ovl10(GObj *arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0 && (s32) arg2 == 1) {
        func_801ACCA0_ovl7(0x1A, 0, 0.0f, 0.0f);
        play_sound(0x1D4);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E9BDC_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E9DCC_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E9ECC_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EA048_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EA1E4_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EA364_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EA4C0_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EA630_ovl10.s")

void func_801E91B0_ovl10(struct GObj *);

void func_801EA718_ovl10(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E91B0_ovl10);
    }
}

void func_801EA784_ovl10(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, &D_801F45B8_ovl10);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EA7CC_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EA900_ovl10.s")

void func_801EA9CC_ovl10(GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800EA360[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800A9EA4(0x10390);
    func_800AA864(0x1038F, 1);
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EAA98_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EAB98_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EAF3C_ovl10.s")

void func_801EB018_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 2;
    ent->unk98 = &D_801CB494_ovl7;
    func_800A9EA4(0x10396);
    func_800AA864(0x10395, 2);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EB0C0_ovl10.s")

void func_801EB1A4_ovl10(void) {
    s32 temp = random_soft_s32_range(3);
    s32 v = temp;

    if (temp == D_800E9FE0[omCurrentObj->objId].as_s32) {
        v = (temp + 1 >= 3) ? 0 : temp + 1;
    }
    D_800E9FE0[omCurrentObj->objId].as_s32 = v;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EB20C_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EB2C4_ovl10.s")

void func_801EA784_ovl10(struct GObj *);

void func_801EB39C_ovl10(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801EA784_ovl10);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EB408_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EB744_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EB84C_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EB9DC_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EBA74_ovl10.s")

void func_801EBC28_ovl10(void) {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EBC60_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EBDE8_ovl10.s")

void func_801EBF2C_ovl10(GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        D_800E3210[omCurrentObj->objId] = -D_800E3210[omCurrentObj->objId];
        D_800E8920[omCurrentObj->objId] = 0;
    } else {
        D_800E3210[omCurrentObj->objId] = -D_800E3210[omCurrentObj->objId] * D_801F4B84_ovl10;
        D_800E3750[omCurrentObj->objId] = -0.5f;
        D_800E8920[omCurrentObj->objId] = 0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EBFDC_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EC120_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EC2A0_ovl10.s")

void func_801EC37C_ovl10(GObj *arg0) {
    func_801A0D50_ovl7(func_801EC3C8_ovl10);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801EC3C8_ovl10(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EC3C8_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EC4CC_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EC6D8_ovl10.s")

void func_801EC928_ovl10(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EC930_ovl10.s")

void func_801ECA0C_ovl10(void) {
    func_8019B424_ovl7();
    eneTurnCommon(1);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801ECA34_ovl10.s")

void func_801ECCE4_ovl10(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801ECCEC_ovl10.s")

void func_801ECE90_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    func_8019B424_ovl7(arg0);
    func_8019D4D0_ovl7(15.0f, 8);
    if (ent->unk3C == 0) {
        if (func_8019A9AC_ovl7(0.0f, 240.0f) == 2) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 4;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801EC3C8_ovl10);
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801ECF48_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801ED208_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801ED2CC_ovl10.s")

void func_801ED6B8_ovl10(GObj *arg0) {
    func_8019D4D0_ovl7(15.0f, 8);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801ED6E4_ovl10.s")

void func_801ED7C8_ovl10(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801ED7D0_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801ED930_ovl10.s")

void func_801EDA98_ovl10(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EDAA0_ovl10.s")

void func_801EDD1C_ovl10(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EDD24_ovl10.s")

void func_801EDF58_ovl10(GObj *arg0) {
    func_8019D4D0_ovl7(15.0f, 8);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EDF84_ovl10.s")

void func_801EE048_ovl10(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EE050_ovl10.s")

void func_801EE244_ovl10(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EE24C_ovl10.s")

void func_801EE408_ovl10(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EE410_ovl10.s")

void func_801EE5A8_ovl10(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EE5B0_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EE990_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EEB30_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EEE44_ovl10.s")

#ifdef MIPS_TO_C
// Instruction-for-instruction correct; only the local block sits 8 bytes
// high. IDO reserves an 8-byte temp area for the nested
// func_80111ECC(func_80111C88(...)) call that the ROM does not; splitting
// it into two statements, prototype changes and struct resizing do not
// remove it.
s32 func_801EEED4_ovl10(GObj *arg0) {
    struct Ovl10AnimInfo sp1C;

    func_80111550((void *) omCurrentObj->objId);
    func_80111ECC(func_80111C88(&D_801F3F28_ovl10, omCurrentObj->objId));
    if (func_80110150(&sp1C) != 0) {
        func_80169430_ovl3(sp1C.unkC, sp1C.unk0, sp1C.unk1, 4);
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EEED4_ovl10.s")
#endif

#ifdef MIPS_TO_C
// Instruction-for-instruction correct; only the local block sits 8 bytes
// high. IDO reserves an 8-byte temp area for the nested
// func_80111ECC(func_80111C88(...)) call that the ROM does not; splitting
// it into two statements, prototype changes and struct resizing do not
// remove it.
s32 func_801EEF4C_ovl10(GObj *arg0) {
    struct Ovl10AnimInfo sp18;

    func_80111550((void *) omCurrentObj->objId);
    func_80111ECC(func_80111C88(&D_801F3F70_ovl10, omCurrentObj->objId));
    if (func_80110150(&sp18) != 0) {
        func_80169430_ovl3(sp18.unkC, sp18.unk0, sp18.unk1, 5);
        play_sound(0x1EE);
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EEF4C_ovl10.s")
#endif

void func_801EEFCC_ovl10(void) {
    s32 temp_a1;

    do {
        temp_a1 = (random_soft_s32_range(9) % 3) + 1;
    } while (temp_a1 == D_800E98E0[omCurrentObj->objId]);

    do {
        switch (temp_a1) {
            case 1: gEntityFuncListIDArray[omCurrentObj->objId] = 3; break;
            case 2: gEntityFuncListIDArray[omCurrentObj->objId] = 8; break;
            case 3: gEntityFuncListIDArray[omCurrentObj->objId] = 0xC; break;
        }
    } while (0);
    D_800E98E0[omCurrentObj->objId] = temp_a1;
}

void func_801EF0F0_ovl10(void *arg0, Unk4Bytes *arg1) {
    void **node = *(void ***) ((u8 *) arg0 + 0x3C);

    while (node != NULL) {
        void **p = *(void ***) ((u8 *) node + 0x80);

        while (p != NULL) {
            *(Unk4Bytes *) ((u8 *) p + 0x58) = *arg1;
            p = *(void ***) p;
        }
        node = animModelTreeNextNode(node);
    }
}

s32 func_801AE7E0_ovl7(s32);

void func_801EF15C_ovl10(s32 arg0) {
    s32 temp_v0;

    switch (arg0) {
        case 1:
            temp_v0 = func_801AE7E0_ovl7(8);
            if (temp_v0 != -1) {
                D_800EC2E0[temp_v0].as_s32 = 0;
            }
            break;
        case 2:
            temp_v0 = func_801AE7E0_ovl7(9);
            if (temp_v0 != -1) {
                gEntitiesNextPosYArray[temp_v0] -= 15.0f;
                break;
            }
            break;
        case 3:
            temp_v0 = func_801AE7E0_ovl7(8);
            if (temp_v0 != -1) {
                D_800EC2E0[temp_v0].as_s32 = 1;
            }
            break;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EF218_ovl10.s")

