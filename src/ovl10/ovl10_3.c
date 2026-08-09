#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "buffers.h"
#include "ovl1/ovl1_7.h"
#include "unk_structs/D_800E1B50.h"
#include "ovl19/ovl19_5.h"
typedef struct EneCurve {
    Vector unk0;
    Vector unkC;
    Vector unk18;
    f32 unk24;
    f32 unk28;
    s32 unk2C;
} EneCurve;

void func_8019EC5C_ovl7(void *);


void func_801A3E80_ovl7(GObj *);
void func_800FD570(s32, s32, f32, f32, f32);
extern f32 D_801F4B44_ovl10;


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
s32 func_801ACCA0_ovl7(s32, s32, f32, f32);
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
extern FUNCLIST D_801F45CC_ovl10;
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

void func_800B113C(struct DObj *, s32, f32);
void func_801DB678_ovl10(s32);
void func_800FF0A8(void *);
extern FUNCLIST D_801F4400_ovl10;
extern s32 D_800D6E40;
extern s32 D_800D6B6C[];
s32 func_800B9DF8(s32);
void func_8019BB58_ovl7(void);
void func_8019D958_ovl7(u16);

void func_801E3770_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];

    if (func_800B9DF8(2) && D_800D6B6C[1] == 0) {
        func_8019BB58_ovl7();
        D_800D6E40++;
        func_8019D958_ovl7((u16) omCurrentObj->objId);
    }
    arg0->onAnimate = func_800B113C;
    D_800DEF90[omCurrentObj->objId] = func_801DB678_ovl10;
    D_800E8920[omCurrentObj->objId] = 1;
    func_800FF0A8(sp1C->unk80);
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 9, &D_801F4400_ovl10);
}

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

void func_800A7F74(u32, u32, u16, f32, f32, f32);
void func_800B79F4();
void func_800B3520(void);
void func_800FB914(s32);
void func_801EF15C_ovl10(s32);
void func_801EF218_ovl10(s32);
void func_800AF27C(void);
void func_801ED7D0_ovl10(GObj *);
extern f32 D_801F4BD4_ovl10;
extern f32 D_801F4BD8_ovl10;

extern f32 D_801F4BE0_ovl10;
extern f32 D_801F4BE4_ovl10;
extern f32 D_801F4BE8_ovl10;
extern f32 D_801F4BDC_ovl10;
extern struct Sub800E1B50_Unk98 D_801F4190_ovl10;
extern s32 D_801F3C7C_ovl10;

extern struct Sub800E1B50_Unk98 D_801F4148_ovl10;

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

void func_801E499C_ovl10(void);
void func_801E4A74_ovl10(void);

void func_801E48C8_ovl10(GObj *arg0) {
    if (D_800EA360[omCurrentObj->objId] == 0) {
        if (3 == D_800E9E20[omCurrentObj->objId]) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 3;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E3BE4_ovl10);
        } else if ((u32) D_800DD8D0[omCurrentObj->objId] >> 30 != 0) {
            D_800E9E20[omCurrentObj->objId] = 2;
        }
    } else if (D_800E9E20[omCurrentObj->objId] == 1) {
        func_801E499C_ovl10();
        func_801E4A74_ovl10();
    }
}

void func_801E499C_ovl10(void) {
    s32 v = 0;

    if ((u32) D_800DD8D0[omCurrentObj->objId] >> 30 != 0) {
        if (D_800EC4A0[omCurrentObj->objId] == 0) {
            v = random_soft_s32_range(2);
        }
        D_800EC4A0[omCurrentObj->objId] = v;
        if (D_800EC4A0[omCurrentObj->objId] == 0) {
            func_800AA018(0x10313);
            func_800AA018(0x10312);
        } else {
            func_800AA018(0x10311);
            func_800AA018(0x10310);
        }
    }
}

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

void func_801E4C7C_ovl10(GObj *arg0) {
    u8 *temp = D_800E9FE0[omCurrentObj->objId].as_ptr;

    if (D_800E9E20[omCurrentObj->objId] != 0) {
        temp += 8;
        D_800E98E0[omCurrentObj->objId]++;
        if (D_800E98E0[omCurrentObj->objId] < 3) {
            D_800E9FE0[omCurrentObj->objId].as_ptr = temp;
            D_800E93A0[omCurrentObj->objId] = *temp;
            gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        } else {
            gEntityFuncListIDArray[omCurrentObj->objId] = 4;
        }
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E3BE4_ovl10);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E4D6C_ovl10.s")

void func_801E50A4_ovl10(GObj *arg0) {
    if (0.0f != D_800E3750[omCurrentObj->objId]) {
        if (ABSF(D_800E3210[omCurrentObj->objId]) < 0.5f) {
            D_800E9E20[omCurrentObj->objId] = 1;
        }
    }
    if (D_800E9E20[omCurrentObj->objId] == 2) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 8;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E3BE4_ovl10);
    }
}

void func_801DB478_ovl10(void);
void func_801E5CF0_ovl10(f32);

void func_801E5184_ovl10(GObj *arg0) {
    D_800EA8A0[omCurrentObj->objId] = 0.0f;
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 8;
    D_800DEF90[omCurrentObj->objId] = func_801DB478_ovl10;
    func_801E5CF0_ovl10(D_800EA8A0[omCurrentObj->objId]);
    func_800A9EA4(0x10329);
    func_800AA864(0x10328, 1);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

s32 func_8019A900_ovl7(s32 *);

void func_801E5278_ovl10(GObj *arg0) {
    s32 pad;
    s32 sp20;

    if (D_800E9E20[omCurrentObj->objId] != 0) {
        if (func_8019A900_ovl7(&sp20) != 0) {
            if ((f32) sp20 != D_800E6A10[omCurrentObj->objId]) {
                gEntityFuncListIDArray[omCurrentObj->objId] = 6;
            } else {
                gEntityFuncListIDArray[omCurrentObj->objId] = 5;
            }
        } else {
            gEntityFuncListIDArray[omCurrentObj->objId] = 5;
        }
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E3BE4_ovl10);
    }
}

void func_801E5364_ovl10(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 5;
    if (1.0f == D_800E6A10[omCurrentObj->objId]) {
        func_800AA018(0x1031B);
        func_800AA018(0x1031A);
    } else {
        func_800AA018(0x10319);
        func_800AA018(0x10318);
    }
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 5.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 5.0f;
    curObjSleepForever();
}

extern f32 D_801F4B2C_ovl10;

void func_801E5468_ovl10(GObj *arg0) {
    if (D_800E6310[omCurrentObj->objId] != 0) {
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = D_801F4B2C_ovl10;
        gEntityFuncListIDArray[omCurrentObj->objId] = 6;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E3BE4_ovl10);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E552C_ovl10.s")

void func_801E56C4_ovl10(GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
        gEntityFuncListIDArray[omCurrentObj->objId] = 5;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E3BE4_ovl10);
    }
}

void func_801E5754_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];
    struct Sub800E1B50_Unk94 *temp;
    s32 snd;

    D_800DDFD0[omCurrentObj->objId] = 7;
    temp = tmp->unk94;
    snd = temp->unk1C;
    if (snd != 0x80000000) {
        play_sound(snd);
        temp = tmp->unk94;
    }
    func_800FD570(0, temp->unk18, 0.0f, *(f32 *) (tmp->unk8C[2] + 0xC), 0.0f);
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 8.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 8.0f;
    func_800AA018(0x10337);
    func_800AA864(0x10336, 1);
    func_800AA018(0x10333);
    func_800AA018(0x10332);
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E589C_ovl10.s")

void func_801E5B08_ovl10(f32 *arg0, u8 arg1, f32 arg2) {
    EneCurve sp28;
    struct EntityThing800E9AA0 *p = D_800E9AA0[omCurrentObj->objId].as_ptr;

    sp28.unk0.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    sp28.unk0.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    sp28.unk0.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    sp28.unkC = *(Vector *) &p->unk8;
    sp28.unkC.x += arg0[0];
    sp28.unkC.y += arg0[1];
    sp28.unkC.z += arg0[2];
    sp28.unk2C = arg1;
    sp28.unk24 = arg2;
    func_8019EC5C_ovl7(&sp28);
    D_800E3050[omCurrentObj->objId] = sp28.unk18.x;
    D_800E33D0[omCurrentObj->objId] = sp28.unk18.y;
    D_800E3210[omCurrentObj->objId] = sp28.unk18.z;
    D_800E3750[omCurrentObj->objId] = sp28.unk24;
}

#ifdef MIPS_TO_C
// 32/41 diffs: same instructions; ROM schedules the u8->f32 conversion
// after both numerator adds, IDO hoists it to the top.
void func_801E5C4C_ovl10(f32 *arg0, u8 arg1) {
    struct EntityThing800E9AA0 *tmp = D_800E9AA0[omCurrentObj->objId].as_ptr;

    D_800E3050[omCurrentObj->objId] = ((tmp->unk8 + arg0[0]) - gEntitiesNextPosXArray[omCurrentObj->objId]) / arg1;
    D_800E33D0[omCurrentObj->objId] = ((tmp->unk10 + arg0[2]) - gEntitiesNextPosZArray[omCurrentObj->objId]) / arg1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E5C4C_ovl10.s")
#endif

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

extern Unk4Bytes D_801F4508_ovl10;
extern Unk4Bytes D_801F450C_ovl10;

void func_801E5F60_ovl10(void) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];
    GObj *gobj = D_800DE350[omCurrentObj->objId];
    void *dobj = gobj->data.dobj->firstChild;

    tmp->unk70--;
    if (tmp->unk70 == 0) {
        tmp->unk70 = 2;
        tmp->unk6C ^= 1;
        if (tmp->unk6C != 0) {
            func_801E5D98_ovl10(dobj, &D_801F4508_ovl10);
        } else {
            func_801E5D98_ovl10(dobj, &D_801F450C_ovl10);
        }
        tmp->unk68--;
        if (tmp->unk68 == 0) {
            D_800EA1A0[omCurrentObj->objId] = 0;
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E6030_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E6298_ovl10.s")

extern f32 D_801F4B48_ovl10;

typedef struct Unk801E63E4 {
    f32 unk0;
    u8 unk4;
} Unk801E63E4;

void func_801E5C4C_ovl10(f32 *, u8);

void func_801E63E4_ovl10(void *arg0) {
    *((u8 *) arg0 + 4) = 0x1C;
    *(f32 *) arg0 = 40.0f;
}

void func_801E63FC_ovl10(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_801F4510_ovl10);
}

extern s32 D_801F34D4_ovl10;
void func_801E6564_ovl10(void);
void func_80198880_ovl7(void *);
void func_800A9760(s32);

void func_801E6444_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = func_801E6564_ovl10;
    func_80198880_ovl7(&D_801F34D4_ovl10);
    D_800EA520[omCurrentObj->objId] = D_800E0D50[omCurrentObj->objId];
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800EB160[omCurrentObj->objId] = D_800E7B20[omCurrentObj->objId];
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_800A9760(0x1005F);
    sp1C->unk98 = &D_801CB494_ovl7;
    func_801A0D50_ovl7(func_801E63FC_ovl10);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_801F4510_ovl10);
}

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

void func_801E6AB4_ovl10(GObj *arg0) {
    if (0.0f != D_800E3750[omCurrentObj->objId]) {
        if (ABSF(D_800E3210[omCurrentObj->objId]) < 0.5f) {
            D_800E9E20[omCurrentObj->objId] = 1;
        }
    }
    if (2 == D_800E9E20[omCurrentObj->objId]) {
        D_800E8920[omCurrentObj->objId] = 1;
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E63FC_ovl10);
    }
}

extern void func_801DB1E0_ovl10(void);

void func_801E6BA8_ovl10(GObj *arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800DEF90[omCurrentObj->objId] = &func_801DB1E0_ovl10;
    func_801E5CF0_ovl10(D_800EA8A0[omCurrentObj->objId]);
    func_800AA018(0x10348);
    func_800AA018(0x10347);
    func_8019B424_ovl7(arg0);
    func_800A9EA4(0x10352);
    func_800A9EA4(0x10351);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] + D_800E6A10[omCurrentObj->objId];
    curObjSleepForever();
}

void func_801E6CAC_ovl10(void) {
    struct UnkStruct800E1B50 *temp = D_800E1B50[omCurrentObj->objId];

    if (D_800E6310[omCurrentObj->objId] != 0 && temp->unk3C == 0) {
        func_80199F1C_ovl7();
    }
}

void func_801E6D08_ovl10(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_801F4528_ovl10);
}

extern s32 D_801F34F8_ovl10;
extern struct Sub800E1B50_Unk98 D_801CB590_ovl7;
void func_801E6E84_ovl10(struct GObj *);
void func_80198880_ovl7(void *);
void func_800A9760(s32);

void func_801E6D50_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = func_801E6E84_ovl10;
    func_80198880_ovl7(&D_801F34F8_ovl10);
    D_800EA520[omCurrentObj->objId] = D_800E0D50[omCurrentObj->objId];
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800EB160[omCurrentObj->objId] = D_800E7B20[omCurrentObj->objId];
    D_800E8920[omCurrentObj->objId] = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_800A9760(0x10060);
    sp1C->unk98 = &D_801CB590_ovl7;
    func_801A0D50_ovl7(func_801E6D08_ovl10);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_801F4528_ovl10);
}

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

void func_801E70BC_ovl10(GObj *arg0) {
    Unk801E63E4 sp30;
    u8 sp2F;
    f32 sp20[3];

    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E6A10[omCurrentObj->objId] = -1.0f;
    func_800A9EA4(0x1035D);
    func_800AA864(0x1035C, 2);
    func_800A9EA4(0x1035B);
    func_800AA864(0x1035A, 1);
    func_800A9EA4(0x1035D);
    func_800A9EA4(0x1035C);
    func_801E63E4_ovl10(&sp30);
    D_800EA8A0[omCurrentObj->objId] = sp30.unk0;
    sp2F = sp30.unk4;
    sp20[0] = D_800EA8A0[omCurrentObj->objId];
    sp20[2] = 0.0f;
    func_801E5C4C_ovl10(sp20, sp30.unk4);
    ohSleep(sp2F);
    D_800E33D0[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E33D0[omCurrentObj->objId];
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

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

extern s32 D_801F3564_ovl10;
void func_801E7760_ovl10(void);

void func_801E762C_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = func_801E7760_ovl10;
    func_80198880_ovl7(&D_801F3564_ovl10);
    D_800EA520[omCurrentObj->objId] = D_800E0D50[omCurrentObj->objId];
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800EB160[omCurrentObj->objId] = D_800E7B20[omCurrentObj->objId];
    D_800E8920[omCurrentObj->objId] = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_800A9760(0x10065);
    sp1C->unk98 = &D_801CB494_ovl7;
    func_801A0D50_ovl7(func_801E75E4_ovl10);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_801F4540_ovl10);
}

#ifdef MIPS_TO_C
// 8 diffs: only the register holding `temp` (ROM $a1, IDO $a0) and the
// consequent scheduling of the utilFuncTableJump argument setup differ.
void func_801E7760_ovl10(void) {
    s32 id;
    s32 temp = 0;

    if (D_800E9C60[omCurrentObj->objId] != 0) {
        temp = func_801A0D74_ovl7();
    }
    if (temp == 0) {
        id = D_800DDFD0[omCurrentObj->objId];
        utilFuncTableJump(id, 3, &D_801F454C_ovl10);
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

void func_801E7ED4_ovl10(GObj *arg0) {
    if (D_800E6310[omCurrentObj->objId] != 0) {
        D_800E64D0[omCurrentObj->objId] = 0.0f;
        if ((u32) D_800DD8D0[omCurrentObj->objId] >> 30 != 0) {
            D_800E9FE0[omCurrentObj->objId].as_s32 = -D_800E9FE0[omCurrentObj->objId].as_s32;
            if (-1.0f == (f32) D_800E9FE0[omCurrentObj->objId].as_s32) {
                func_800A9EA4(0x103B8);
                func_800A9EA4(0x103B7);
            } else {
                func_800A9EA4(0x103BA);
                func_800A9EA4(0x103B9);
            }
            D_800E64D0[omCurrentObj->objId] = (f32) D_800E9FE0[omCurrentObj->objId].as_s32 * 3.0f;
        }
    }
}

void func_801E8008_ovl10(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_801F4558_ovl10);
}

extern s32 D_801F3540_ovl10;
void func_801E8184_ovl10(struct GObj *);

void func_801E8050_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = func_801E8184_ovl10;
    func_80198880_ovl7(&D_801F3540_ovl10);
    D_800EA520[omCurrentObj->objId] = D_800E0D50[omCurrentObj->objId];
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800EB160[omCurrentObj->objId] = D_800E7B20[omCurrentObj->objId];
    D_800E8920[omCurrentObj->objId] = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_800A9760(0x10064);
    sp1C->unk98 = &D_801CB590_ovl7;
    func_801A0D50_ovl7(func_801E8008_ovl10);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_801F4558_ovl10);
}

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

void func_801E83BC_ovl10(GObj *arg0) {
    Unk801E63E4 sp30;
    u8 sp2F;
    f32 sp20[3];

    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E6A10[omCurrentObj->objId] = -1.0f;
    func_800A9EA4(0x103A5);
    func_800AA864(0x103A4, 2);
    func_800A9EA4(0x103A3);
    func_800AA864(0x103A2, 1);
    func_800A9EA4(0x103A5);
    func_800A9EA4(0x103A4);
    func_801E63E4_ovl10(&sp30);
    D_800EA8A0[omCurrentObj->objId] = sp30.unk0;
    sp2F = sp30.unk4;
    sp20[0] = D_800EA8A0[omCurrentObj->objId];
    sp20[2] = 0.0f;
    func_801E5C4C_ovl10(sp20, sp30.unk4);
    ohSleep(sp2F);
    D_800E33D0[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E33D0[omCurrentObj->objId];
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801E8548_ovl10(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E8008_ovl10);
    }
}

void func_801E85B8_ovl10(GObj *arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800DEF90[omCurrentObj->objId] = &func_801DB1E0_ovl10;
    func_801E5CF0_ovl10(D_800EA8A0[omCurrentObj->objId]);
    func_800A9EA4(0x103A5);
    func_800A9EA4(0x103A4);
    ohSleep(0xF);
    D_800E9E20[omCurrentObj->objId] = 1;
    D_800E64D0[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 2.5f;
    D_800E3C90[omCurrentObj->objId] = 2.5f;
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E871C_ovl10.s")

void func_801E88E4_ovl10(s32 *arg0) {
    struct DObj *dobj = D_800DFBD0[omCurrentObj->objId][3];

    dobj->pos.v.x += D_801F4B44_ovl10 * (f32) *arg0;
    if (10.0f < ABSF(dobj->pos.v.x)) {
        dobj->pos.v.x = (f32) *arg0 * 10.0f;
    }
}

void func_801E8988_ovl10(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_801F4570_ovl10);
}

void func_80198880_ovl7(void *);
void func_800A9760(s32);
extern struct Sub800E1B50_Unk98 D_801F4100_ovl10;
extern s32 D_801F351C_ovl10;
void func_801E8AF8_ovl10(struct GObj *);

void func_801E89D0_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = func_801E8AF8_ovl10;
    func_80198880_ovl7(&D_801F351C_ovl10);
    D_800EA520[omCurrentObj->objId] = D_800E0D50[omCurrentObj->objId];
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800EB160[omCurrentObj->objId] = D_800E7B20[omCurrentObj->objId];
    sp1C->unk98 = &D_801F4100_ovl10;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_800A9760(0x10061);
    func_801A0D50_ovl7(func_801E8988_ovl10);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_801F4570_ovl10);
}

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

void func_801E8BA8_ovl10(GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800EA360[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AA864(0x1035F, 1);
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801E8C68_ovl10(GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0 && D_800EA520[D_800EA520[omCurrentObj->objId]] != 0) {
        func_800AECC0(gameTicksPerDraw);
        func_800AED20(gameTicksPerDraw);
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E8988_ovl10);
    }
}

void func_801E8D24_ovl10(GObj *arg0) {
    Unk801E63E4 sp40;
    u8 sp3F;
    f32 sp30[3];
    f32 temp_f0;

    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E6A10[omCurrentObj->objId] = -1.0f;
    func_800AA864(0x10360, 2);
    func_801E63E4_ovl10(&sp40);
    D_800EA8A0[omCurrentObj->objId] = sp40.unk0;
    sp3F = sp40.unk4;
    sp30[0] = D_800EA8A0[omCurrentObj->objId];
    sp30[1] = -20.0f;
    sp30[2] = 0.0f;
    func_801E5B08_ovl10(sp30, sp40.unk4, -0.4f);
    ohSleep(sp3F);
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] =
    D_800E3210[omCurrentObj->objId] =
    D_800E33D0[omCurrentObj->objId] =
    D_800E3590[omCurrentObj->objId] =
    D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = D_801F4B48_ovl10;
    temp_f0 = D_800E3E50[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = temp_f0;
    D_800E3AD0[omCurrentObj->objId] = temp_f0;
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801E8988_ovl10(struct GObj *);

void func_801E8F24_ovl10(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E8988_ovl10);
    }
}

extern f32 D_801F4B4C_ovl10;

void func_801E8F90_ovl10(GObj *arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800DEF90[omCurrentObj->objId] = &func_801DB1E0_ovl10;
    func_801E5CF0_ovl10(D_800EA8A0[omCurrentObj->objId]);
    func_8019B424_ovl7(arg0);
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9EA4(0x10360);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * D_801F4B4C_ovl10;
    D_800E3210[omCurrentObj->objId] = 13.0f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    curObjSleepForever();
}

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

extern struct Sub800E1B50_Unk98 D_801F4124_ovl10;
extern s32 D_801F35A8_ovl10;
void func_801E932C_ovl10(struct GObj *);

void func_801E91F8_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = func_801E932C_ovl10;
    func_80198880_ovl7(&D_801F35A8_ovl10);
    D_800EA520[omCurrentObj->objId] = D_800E0D50[omCurrentObj->objId];
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800EA1A0[omCurrentObj->objId] = 0;
    D_800EB160[omCurrentObj->objId] = D_800E7B20[omCurrentObj->objId];
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_800A9760(0x10062);
    sp1C->unk98 = &D_801F4124_ovl10;
    func_801A0D50_ovl7(func_801E91B0_ovl10);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 6, &D_801F4588_ovl10);
}

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

extern void func_800BC1FC(s32);
void func_801E91B0_ovl10(struct GObj *);

void func_801E94C4_ovl10(GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0 && D_800EA520[D_800EA520[omCurrentObj->objId]] != 0) {
        D_800EA6E0[D_800EA520[omCurrentObj->objId]] = 5.0f;
        func_800BC1FC((s32) D_800EA6E0[D_800EA520[omCurrentObj->objId]]);
        func_800AECC0(gameTicksPerDraw);
        func_800AED20(gameTicksPerDraw);
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E91B0_ovl10);
    }
}

void func_801E95C4_ovl10(GObj *arg0) {
    Unk801E63E4 sp30;
    u8 sp2F;
    f32 sp20[3];

    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E6A10[omCurrentObj->objId] = -1.0f;
    func_800A9EA4(0x10369);
    func_800AA864(0x10368, 1);
    func_800A9EA4(0x1036D);
    func_800A9EA4(0x1036C);
    func_801E63E4_ovl10(&sp30);
    D_800EA8A0[omCurrentObj->objId] = sp30.unk0;
    sp2F = sp30.unk4;
    sp20[0] = D_800EA8A0[omCurrentObj->objId];
    sp20[2] = 0.0f;
    func_801E5C4C_ovl10(sp20, sp30.unk4);
    ohSleep(sp2F);
    D_800E33D0[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E33D0[omCurrentObj->objId];
    D_800DEF90[omCurrentObj->objId] = &func_801DB1E0_ovl10;
    func_801E5CF0_ovl10(D_800EA8A0[omCurrentObj->objId]);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

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

s32 func_801E9ACC_ovl10(void) {
    s32 temp = (random_soft_s32_range(3) == 2) ? 1 : 0;

    if ((temp == D_800E9560[omCurrentObj->objId]) && (temp == D_800E9FE0[omCurrentObj->objId].as_s32)) {
        temp = (temp + 1 >= 2) ? 0 : temp + 1;
    }
    D_800E9560[omCurrentObj->objId] = D_800E9FE0[omCurrentObj->objId].as_s32;
    D_800E9FE0[omCurrentObj->objId].as_s32 = temp;
}

void func_801E9B7C_ovl10(GObj *arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0 && (s32) arg2 == 1) {
        func_801ACCA0_ovl7(0x1A, 0, 0.0f, 0.0f);
        play_sound(0x1D4);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E9BDC_ovl10.s")

void func_801E9DCC_ovl10(GObj *arg0) {
    if (D_800E9720[omCurrentObj->objId] != 0) {
        if (D_800E98E0[omCurrentObj->objId] == 0) {
            func_8019B424_ovl7(arg0);
            D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
            D_800E98E0[omCurrentObj->objId] = 5;
        } else {
            D_800E98E0[omCurrentObj->objId]--;
        }
    }
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 5;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E91B0_ovl10);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E9ECC_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EA048_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EA1E4_ovl10.s")

extern f32 D_801F4B60_ovl10;
extern f32 D_801F4B64_ovl10;
extern f32 D_800EAA60[];
extern f32 D_800EAC20[];
void func_801EA4C0_ovl10(void);

void func_801EA364_ovl10(void) {
    if (random_soft_s32_range(2) == 0) {
        D_800E6A10[omCurrentObj->objId] = -1.0f;
    } else {
        D_800E6A10[omCurrentObj->objId] = 1.0f;
    }
    D_800E9720[omCurrentObj->objId] = 0;
    D_800E98E0[omCurrentObj->objId] = D_800E5F90[omCurrentObj->objId];
    D_800EA6E0[omCurrentObj->objId] = D_800E6BD0[omCurrentObj->objId];
    D_800EAA60[omCurrentObj->objId] = D_801F4B60_ovl10;
    D_800EAC20[omCurrentObj->objId] = 180.0f;
    D_800EADE0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * D_801F4B64_ovl10;
    D_800EAFA0[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId] - 45.0f;
    func_801EA4C0_ovl10();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EA4C0_ovl10.s")

extern f32 D_801F4B6C_ovl10;

void func_801EA630_ovl10(GObj *arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800DDFD0[omCurrentObj->objId] = 5;
    ohSleep(0x10);
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = D_801F4B6C_ovl10;
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

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

extern s32 D_801F35CC_ovl10;
void func_801EA900_ovl10();

void func_801EA7CC_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = func_801EA900_ovl10;
    func_80198880_ovl7(&D_801F35CC_ovl10);
    D_800EA520[omCurrentObj->objId] = D_800E0D50[omCurrentObj->objId];
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800EA1A0[omCurrentObj->objId] = 0;
    D_800EB160[omCurrentObj->objId] = D_800E7B20[omCurrentObj->objId];
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_800A9760(0x10063);
    sp1C->unk98 = &D_801CB494_ovl7;
    func_801A0D50_ovl7(func_801EA784_ovl10);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, &D_801F45B8_ovl10);
}

#ifdef MIPS_TO_C
// 8 diffs, same floor as its twin func_801E7760_ovl10: `temp` lands in $a0
// where the ROM uses $a1.
void func_801EA900_ovl10(void) {
    s32 id;
    s32 temp = 0;

    if (D_800E9C60[omCurrentObj->objId] != 0) {
        temp = func_801A0D74_ovl7();
    }
    if (temp == 0) {
        id = D_800DDFD0[omCurrentObj->objId];
        utilFuncTableJump(id, 5, &D_801F45CC_ovl10);
    }
    if (D_800E9C60[omCurrentObj->objId] != 0) {
        if (D_800EA1A0[omCurrentObj->objId] != 0) {
            func_801E5F60_ovl10();
        }
        eneTurnCommon(1);
        func_801E6030_ovl10();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EA900_ovl10.s")
#endif

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

extern void func_800BC1FC(s32);
void func_801EA784_ovl10(struct GObj *);

void func_801EAA98_ovl10(GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0 && D_800EA520[D_800EA520[omCurrentObj->objId]] != 0) {
        D_800EA6E0[D_800EA520[omCurrentObj->objId]] = 5.0f;
        func_800BC1FC((s32) D_800EA6E0[D_800EA520[omCurrentObj->objId]]);
        func_800AECC0(gameTicksPerDraw);
        func_800AED20(gameTicksPerDraw);
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801EA784_ovl10);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EAB98_ovl10.s")

void func_801EAF3C_ovl10(GObj *arg0) {
    if (0.0f != D_800E3750[omCurrentObj->objId]) {
        if (ABSF(D_800E3210[omCurrentObj->objId]) < 0.5f) {
            D_800E9E20[omCurrentObj->objId] = 1;
        }
    }
    if (2 == D_800E9E20[omCurrentObj->objId]) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801EA784_ovl10);
    }
}

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

void func_801EB1A4_ovl10(void);
void func_801EA784_ovl10(struct GObj *);

void func_801EB0C0_ovl10(GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        func_801EB1A4_ovl10();
        switch (D_800E9FE0[omCurrentObj->objId].as_s32) {
        case 0:
        case 2:
            func_8019B424_ovl7(arg0);
            gEntityFuncListIDArray[omCurrentObj->objId] = 3;
            break;
        case 1:
            gEntityFuncListIDArray[omCurrentObj->objId] = 4;
            break;
        }
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801EA784_ovl10);
    }
}

void func_801EB1A4_ovl10(void) {
    s32 temp = random_soft_s32_range(3);
    s32 v = temp;

    if (temp == D_800E9FE0[omCurrentObj->objId].as_s32) {
        v = (temp + 1 >= 3) ? 0 : temp + 1;
    }
    D_800E9FE0[omCurrentObj->objId].as_s32 = v;
}

void func_801EB20C_ovl10(s32 arg0, s32 arg1, f32 arg2) {
    s32 v;

    if (arg1 != 0) {
        return;
    }
    v = arg2;
    switch (v) {
    case 1:
        D_800E93A0[omCurrentObj->objId] = func_801ACCA0_ovl7(0x1B, 0, 40.0f, 0.0f);
        play_sound(0x1CD);
        break;
    case 2:
        if (D_800E93A0[omCurrentObj->objId] != 0) {
            D_800E9E20[D_800E93A0[omCurrentObj->objId]] = 1;
        }
        break;
    }
}

void func_801EB20C_ovl10(s32, s32, f32);

void func_801EB2C4_ovl10(GObj *arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 3;
    func_800A9EA4(0x10392);
    func_800AA864(0x10391, 1);
    ohSleep(8);
    func_800A9EA4(0x10376);
    func_800A9EA4(0x10375);
    D_800DF310[omCurrentObj->objId] = func_801EB20C_ovl10;
    func_800AF27C();
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801EA784_ovl10(struct GObj *);

void func_801EB39C_ovl10(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801EA784_ovl10);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EB408_ovl10.s")

void func_801EB744_ovl10(GObj *arg0) {
    if (2 == D_800E9E20[omCurrentObj->objId]) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801EA784_ovl10);
    } else if (D_800E8920[omCurrentObj->objId] == 0) {
        if (0.0f != D_800E3750[omCurrentObj->objId]) {
            if (ABSF(D_800E3210[omCurrentObj->objId]) < ABSF(D_800E3750[omCurrentObj->objId])) {
                D_800E9E20[omCurrentObj->objId] = 1;
            }
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EB84C_ovl10.s")

void func_801EB9DC_ovl10(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp;
    struct Sub800E1B50_Unk94 *temp;

    tmp = D_800E1B50[omCurrentObj->objId];
    temp = tmp->unk94;
    if (temp->unk1C != 0x80000000) {
        play_sound(temp->unk1C);
        temp = tmp->unk94;
    }
    func_800FD570(0, temp->unk18, 0.0f, *(f32 *) tmp->unk88->unk10, 0.0f);
    tmp->unk40 = 1;
    func_801A3E80_ovl7(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EBA74_ovl10.s")

void func_801EBC28_ovl10(void) {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EBC60_ovl10.s")

void func_801ACF84_ovl7(struct GObj *);
void func_801A03B4_ovl7(void);

void func_801EBDE8_ovl10(void) {
    func_801A0D74_ovl7();
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        if (D_800E9720[omCurrentObj->objId] == 0) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801ACF84_ovl7);
            return;
        }
        D_800E9720[omCurrentObj->objId]--;
        if (D_800E3C90[omCurrentObj->objId] <= ABSF(D_800E3210[omCurrentObj->objId])) {
            D_800E3750[omCurrentObj->objId] = -D_800E3750[omCurrentObj->objId];
        }
    } else if (-0.5f == D_800E3750[omCurrentObj->objId] && D_800E3210[omCurrentObj->objId] < -4.0f) {
        D_800E9E20[omCurrentObj->objId] = 1;
    }
    func_801A03B4_ovl7();
}

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

extern struct Sub800E1B50_Unk98 D_801F41FC_ovl10;
void func_801EC120_ovl10(struct GObj *);
void func_800A9864(s32, s32, s32);

void func_801EBFDC_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = &func_801DB1E0_ovl10;
    D_800DF150[omCurrentObj->objId] = func_801EC120_ovl10;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9720[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801F41FC_ovl10;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9864(0x10099, 0x23, 0x10);
    func_800A9EA4(0x10548);
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -1.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 3.0f;
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EC120_ovl10.s")

extern s32 D_800D6E40;
extern s32 D_800D6B6C[];
void func_8019D958_ovl7(u16);
s32 func_800B9DF8(s32);
void func_8019BB58_ovl7(void);
extern FUNCLIST D_801F45E0_ovl10;

void func_801EC2A0_ovl10(GObj *arg0) {
    if (func_800B9DF8(2) && D_800D6B6C[1] == 0) {
        func_8019BB58_ovl7();
        D_800D6E40++;
        func_8019D958_ovl7((u16)omCurrentObj->objId);
    }
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_801F45E0_ovl10);
}

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

extern struct Sub800E1B50_Unk98 D_801F4148_ovl10;
void func_800B67A8(s32);
void func_800AEFFC(s32);

void func_801EC930_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = func_800B67A8;
    D_800DDFD0[omCurrentObj->objId] = 1;
    tmp->unk98 = &D_801F4148_ovl10;
    func_800AA018(0x102B4);
    func_800AA018(0x102B5);
    func_800B3520();
    func_800AEFFC(2);
    while (tmp->unk3C != 0) {
        ohSleep(1);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

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

void func_801ED208_ovl10(GObj *arg0) {
    func_8019D4D0_ovl7(15.0f, 8);
    if (0.0f != D_800E3210[omCurrentObj->objId]) {
        if (D_800E8920[omCurrentObj->objId] == 1) {
            if (D_800E9C60[omCurrentObj->objId] != 0) {
                gEntityFuncListIDArray[omCurrentObj->objId] = 5;
            } else {
                gEntityFuncListIDArray[omCurrentObj->objId] = 7;
            }
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801EC3C8_ovl10);
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801ED2CC_ovl10.s")

void func_801ED6B8_ovl10(GObj *arg0) {
    func_8019D4D0_ovl7(15.0f, 8);
}

void func_800B79F4(s32);
void func_801ED7D0_ovl10(GObj *);

void func_801ED6E4_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = func_800B79F4;
    D_800DDFD0[omCurrentObj->objId] = 6;
    tmp->unk98 = &D_801F4148_ovl10;
    func_800AA018(0x10258);
    func_800AA018(0x10259);
    func_800B3520();
    func_801ED7D0_ovl10(arg0);
    play_sound(0x1F4);
    func_800AF27C();
    func_800AA018(0x10256);
    func_800AA018(0x10257);
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801ED7C8_ovl10(GObj *arg0) {
}

/* 2/88 diffs: only the two hoisted constants are in the wrong callee-saved FP
   registers -- the ROM loads D_801F4BC4_ovl10 FIRST into $f22 and
   D_801F4BC8_ovl10 second into $f20, while IDO couples "assigned first" to
   both "loaded first" and "$f20".  Swept: both assignment orders, both
   declaration orders, declaration initializers (74), an extra leading f32,
   every operand order of the inner mul/add, and inlining either constant
   (70/71).  Writing the loop as `if (...) { ... do {} while (...) }` rather
   than `while` is load-bearing: it puts the two loads in the preheader after
   the guard and took this from 59 to 15. */
#ifdef MIPS_TO_C
extern f32 D_801F4BC0_ovl10;
extern f32 D_801F4BC4_ovl10;
extern f32 D_801F4BC8_ovl10;
extern f32 D_801F4BCC_ovl10;

void func_801ED7D0_ovl10(struct GObj *arg0) {
    f32 a;
    f32 b;

    D_800E4C50[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * D_801F4BC0_ovl10;
    D_800E9560[omCurrentObj->objId] = 1;
    if (D_800E9560[omCurrentObj->objId] < 5) {
        b = D_801F4BC8_ovl10;
        a = D_801F4BC4_ovl10;
        do {
            D_800E4C50[omCurrentObj->objId] = -(b + a * (f32) D_800E9560[omCurrentObj->objId]) * D_800E6A10[omCurrentObj->objId];
            ohSleep(1);
            D_800E9560[omCurrentObj->objId]++;
        } while (D_800E9560[omCurrentObj->objId] < 5);
    }
    D_800E4C50[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * D_801F4BCC_ovl10;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801ED7D0_ovl10.s")
#endif

void func_801ED930_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = &func_800B79F4;
    D_800DDFD0[omCurrentObj->objId] = 7;
    sp1C->unk98 = &D_801F4148_ovl10;
    func_800AA018(0x1025C);
    func_800AA018(0x1025D);
    func_800B3520();
    play_sound(0x1F5);
    func_800FB914(1);
    func_801EF15C_ovl10(2);
    func_801EF218_ovl10(1);
    func_800AF27C();
    func_800AA018(0x1025E);
    func_800AA018(0x1025F);
    func_801EF15C_ovl10(1);
    func_800A7F74(6, 3, 2, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId] - 10.0f, gEntitiesNextPosZArray[omCurrentObj->objId] + 20.0f);
    func_801ED7D0_ovl10(arg0);
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801EDA98_ovl10(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EDAA0_ovl10.s")

void func_801EDD1C_ovl10(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EDD24_ovl10.s")

void func_801EDF58_ovl10(GObj *arg0) {
    func_8019D4D0_ovl7(15.0f, 8);
}

void func_801EDF84_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = func_800B79F4;
    D_800DDFD0[omCurrentObj->objId] = 0xA;
    tmp->unk98 = &D_801F4148_ovl10;
    func_800AA018(0x1026C);
    func_800AA018(0x1026D);
    func_800B3520();
    func_801ED7D0_ovl10(arg0);
    play_sound(0x1AF);
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801EE048_ovl10(GObj *arg0) {
}

void func_801EE050_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = &func_800B79F4;
    D_800DDFD0[omCurrentObj->objId] = 0xB;
    sp1C->unk98 = &D_801F4148_ovl10;
    func_800AA018(0x1026E);
    func_800AA018(0x1026F);
    D_800E6690[omCurrentObj->objId] = -D_800E64D0[omCurrentObj->objId] * D_801F4BD4_ovl10;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = D_801F4BD8_ovl10;
    play_sound(0x1F2);
    func_800FB914(1);
    ohSleep(5);
    func_801EF218_ovl10(2);
    ohSleep(0x19);
    func_800B3520();
    func_800AF27C();
    func_800AA018(0x10270);
    func_800AA018(0x10271);
    func_800A7F74(6, 3, 3, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId] - 10.0f, gEntitiesNextPosZArray[omCurrentObj->objId] + 20.0f);
    func_801ED7D0_ovl10(arg0);
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801EE244_ovl10(GObj *arg0) {
}

void func_801EE24C_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = &func_800B79F4;
    D_800DDFD0[omCurrentObj->objId] = 0xC;
    sp1C->unk98 = &D_801F4190_ovl10;
    func_800AA018(0x10278);
    func_800AA018(0x10279);
    func_800AF27C();
    func_800AA018(0x10276);
    func_800AA018(0x10277);
    D_800E9AA0[omCurrentObj->objId].as_s32 = 3;
    sp1C->unk8C = &D_801F3C7C_ovl10;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 5.0f;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.5f;
    D_800E6850[omCurrentObj->objId] = 10.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = D_801F4BDC_ovl10;
    play_sound(0x1EA);
    curObjSleepForever();
}

void func_801EE408_ovl10(GObj *arg0) {
}

void func_801EE410_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = &func_800B79F4;
    D_800DDFD0[omCurrentObj->objId] = 0xD;
    sp1C->unk98 = &D_801F4148_ovl10;
    func_800AA018(0x10274);
    func_800AA018(0x10275);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * D_801F4BE0_ovl10;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * D_801F4BE4_ovl10;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = D_801F4BE8_ovl10;
    play_sound(0x1EB);
    func_800FB914(1);
    func_801EF15C_ovl10(3);
    func_801EF218_ovl10(3);
    func_801ED7D0_ovl10(arg0);
    ohSleep(0x4C);
    func_800B3520();
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801EE5A8_ovl10(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EE5B0_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EE990_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EEB30_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EEE44_ovl10.s")

s32 func_801EEED4_ovl10(GObj *arg0) {
    s32 pad;
    struct Ovl10AnimInfo sp1C;

    func_80111550((void *) omCurrentObj->objId);
    func_80111ECC(func_80111C88(&D_801F3F28_ovl10, omCurrentObj->objId));
    if (func_80110150(&sp1C) != 0) {
        func_80169430_ovl3(sp1C.unkC, sp1C.unk0, sp1C.unk1, 4);
        return 1;
    }
    return 0;
}

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

