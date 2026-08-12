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
/* 0.4f = 0.4f : now emitted by this TU */


extern FUNCLIST D_801F44B4_ovl10;
extern FUNCLIST D_801F4510_ovl10;
extern FUNCLIST D_801F4528_ovl10;
extern FUNCLIST D_801F4540_ovl10;
extern FUNCLIST D_801F4558_ovl10;
extern FUNCLIST D_801F4570_ovl10;
extern FUNCLIST D_801F4588_ovl10;
extern FUNCLIST D_801F45B8_ovl10;

s32 func_801A0D74_ovl7();
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
/* 2.4f = 2.4f : now emitted by this TU */
/* D_801F4B84_ovl10 = 0.9f : now emitted by this TU */
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

/* "reqAdoPathLimTrk  Request Error!![mbss2.cc]\n" = "reqAdoPathLimTrk  Request Error!![mbss2.cc]\n" : now emitted by this TU */

void func_801E3A64_ovl10(void) {
    u32 pad;
    struct EntityThing800E9AA0 *temp_s1;
    s32 temp_v0;
    s32 i;

    temp_s1 = D_800E9AA0[omCurrentObj->objId].as_ptr;
    for (i = 0; i < 2; i++) {
        temp_v0 = request_track_general(0x18, 0x1E, 0x3C);
        if (temp_v0 >= 0x3C || temp_v0 == -1) {
            utilPrintf("reqAdoPathLimTrk  Request Error!![mbss2.cc]\n");
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
/* 0.03333f = 0.03333f : now emitted by this TU */
/* 65535.0f = 65535.0f : now emitted by this TU */

/* -1.8f = -1.8f : now emitted by this TU */
/* 0.022499999f = 0.022499999f : now emitted by this TU */
/* 65535.0f = 65535.0f : now emitted by this TU */
/* 65535.0f = 65535.0f : now emitted by this TU */
extern struct Sub800E1B50_Unk98 D_801F4190_ovl10;
extern s32 D_801F3C7C_ovl10;

extern struct Sub800E1B50_Unk98 D_801F4148_ovl10;

extern struct Sub800E1B50_Unk98 D_801CB494_ovl7;
extern u32 D_801F449C_ovl10;
/* "Error: Don't S-Point\n" = "Error: Don't S-Point\n" : now emitted by this TU */
void func_801E3E04_ovl10(struct GObj *);
void func_801E3A64_ovl10(void);
void *func_800FCE50(void);

void func_801E3C2C_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = func_801E3E04_ovl10;
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId] + -4.0f;
    D_800E9AA0[omCurrentObj->objId].as_ptr = func_800FCE50();
    if (D_800E9AA0[omCurrentObj->objId].as_ptr == NULL) {
        utilPrintf("Error: Don't S-Point\n");
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

extern void func_800BC1FC(s32);
extern FUNCLIST D_801F44D8_ovl10;
void func_800BC11C(f32);

void func_801E3E04_ovl10(GObj *arg0) {
    s32 var = 0;

    if (D_800EC2E0[omCurrentObj->objId].as_s32 > 0) {
        D_800EC2E0[omCurrentObj->objId].as_s32--;
    }
    if (D_800EC2E0[omCurrentObj->objId].as_s32 == 0) {
        func_800BC1FC((s32) D_800EA6E0[omCurrentObj->objId]);
        D_800EC2E0[omCurrentObj->objId].as_s32 = -1;
    }
    if (D_800E9C60[omCurrentObj->objId] != 0) {
        var = func_801A0D74_ovl7(arg0);
    }
    if (var == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 9, &D_801F44D8_ovl10);
    }
    if (D_800E9C60[omCurrentObj->objId] != 0 && gEntityFuncListIDArray[omCurrentObj->objId] != 7) {
        func_801E3874_ovl10();
    }
    if (D_800EC2E0[omCurrentObj->objId].as_s32 < 0) {
        func_800BC11C(D_800EA6E0[omCurrentObj->objId]);
    }
}

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

/* "reqAdoPicEneTrk  Request Error!![mbss2.cc]\n" = "reqAdoPicEneTrk  Request Error!![mbss2.cc]\n" : now emitted by this TU */

void func_801E409C_ovl10(void) {
    u32 pad[3];
    s32 temp_v0;

    temp_v0 = request_track_general(0x18, 0x1E, 0x3C);
    if (temp_v0 >= 0x3C || temp_v0 == -1) {
        utilPrintf("reqAdoPicEneTrk  Request Error!![mbss2.cc]\n");
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

#include "main/lbvector.h"
#include "ovl2/ovl2_3.h"

void func_801E4A74_ovl10(void) {
    struct DObj *dobj;
    Vector sp38;
    Vector sp2C;
    f32 old;
    f32 angle;
    f32 t;
    s32 sign;

    dobj = D_800DFBD0[omCurrentObj->objId][4];
    sp38.x = 0.0f;
    sp38.y = 0.0f;
    sp38.z = 2.0f;
    lbvector_Rotate(&sp38, 2, gEntitiesAngleYArray[omCurrentObj->objId]);
    sp2C.x = gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[omCurrentObj->objId];
    sp2C.y = 0.0f;
    sp2C.z = gEntitiesNextPosZArray[0] - gEntitiesNextPosZArray[omCurrentObj->objId];
    angle = vec3_abs_angle_diff(&sp38, &sp2C);
    old = dobj->angle.v.y;
    if (angle < 0.0f) {
        sign = -1;
    } else {
        sign = 1;
    }
    dobj->angle.v.y = dobj->angle.v.y + 0.034906585f * sign;
    if (dobj->angle.v.y < 0.0f) {
        t = -dobj->angle.v.y;
    } else {
        t = dobj->angle.v.y;
    }
    if (0.7853982f < t) {
        dobj->angle.v.y = old;
    }
}

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

/* 65535.0f = 65535.0f : now emitted by this TU */

void func_801E5468_ovl10(GObj *arg0) {
    if (D_800E6310[omCurrentObj->objId] != 0) {
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
        gEntityFuncListIDArray[omCurrentObj->objId] = 6;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E3BE4_ovl10);
    }
}



void func_801E552C_ovl10(s32 arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 6;
    if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
        func_800AA018(0x1033B);
        func_800AA864(0x1033A, 1);
        if (D_800E6310[omCurrentObj->objId] != 0) {
            func_800AA018(0x1030B);
            func_800AA864(0x1030A, 1);
        }
        func_800AA018(0x1031D);
        func_800AA864(0x1031C, 1);
    } else {
        func_800AA018(0x1032B);
        func_800AA864(0x1032A, 1);
        if (D_800E6310[omCurrentObj->objId] != 0) {
            func_800AA018(0x1030B);
            func_800AA864(0x1030A, 1);
        }
        func_800AA018(0x1031F);
        func_800AA864(0x1031E, 1);
    }
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}



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

#ifdef NON_MATCHING
// 23/41 diffs (was 32). Two levers found: reading arg0[0]/arg0[2] into locals
// first reproduces the ROM's FP allocation order, and quotient temps keep both
// divisions before the first store (the store otherwise forces a reload of
// omCurrentObj->objId). Residue: the ROM converts arg1 to f32 LATE (into $f16,
// interleaved with the second numerator) while IDO hoists the andi/mtc1/cvt to
// function entry. Swept with no effect: K&R vs prototyped u8, an f32 divisor
// local at every position, (f32)(s32) casts, four load locals (grows the TU),
// both operand orders of the inner +, and numerator-only temps.
void func_801E5C4C_ovl10(f32 *arg0, u8 arg1) {
    struct EntityThing800E9AA0 *tmp = D_800E9AA0[omCurrentObj->objId].as_ptr;
    f32 x = arg0[0];
    f32 z = arg0[2];
    f32 a = ((x + tmp->unk8) - gEntitiesNextPosXArray[omCurrentObj->objId]) / arg1;
    f32 b = ((z + tmp->unk10) - gEntitiesNextPosZArray[omCurrentObj->objId]) / arg1;

    D_800E3050[omCurrentObj->objId] = a;
    D_800E33D0[omCurrentObj->objId] = b;
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

void func_801E5D98_ovl10(void *, Unk4Bytes *);
extern Unk4Bytes D_801F4508_ovl10;

void func_801E5DC8_ovl10(void) {
    GObj *gobj = D_800DE350[omCurrentObj->objId];
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];
    void *dobj = gobj->data.dobj->firstChild;
    f32 v;

    tmp->unk70 = 2;
    tmp->unk68 = 0x15;
    tmp->unk6C = 1;
    D_800EA1A0[omCurrentObj->objId] = 1;
    play_sound(0x1C9);
    v = D_800EB160[omCurrentObj->objId] - D_800E7B20[omCurrentObj->objId];
    if (v < 1.0f) {
        v = v + v;
    }
    if (D_800E7880[omCurrentObj->objId] == 6 || D_800E7880[omCurrentObj->objId] == 7) {
        D_800EA6E0[D_800EA520[omCurrentObj->objId]] -= v;
    }
    D_800EA6E0[D_800EA520[omCurrentObj->objId]] -= v;
    if (D_800EA6E0[D_800EA520[omCurrentObj->objId]] < 0.0f) {
        D_800EA6E0[D_800EA520[omCurrentObj->objId]] = 0.0f;
    }
    func_801E5D98_ovl10(dobj, &D_801F4508_ovl10);
}

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

void func_801E6298_ovl10(GObj *arg0) {
    f32 v;

    if (D_800EA360[omCurrentObj->objId] == 0) {
        D_800EA360[omCurrentObj->objId] = 1;
        D_800EA360[D_800EA520[omCurrentObj->objId]]--;
        v = D_800EB160[omCurrentObj->objId] - D_800E7B20[omCurrentObj->objId];
        if (v < 1.0f) {
            v = v + v;
        }
        if (D_800E7880[omCurrentObj->objId] == 6 || D_800E7880[omCurrentObj->objId] == 7) {
            D_800EA6E0[D_800EA520[omCurrentObj->objId]] -= v;
        }
        D_800EA6E0[D_800EA520[omCurrentObj->objId]] -= v;
        if (D_800EA6E0[D_800EA520[omCurrentObj->objId]] < 0.0f) {
            D_800EA6E0[D_800EA520[omCurrentObj->objId]] = 0.0f;
        }
    }
}

/* 65535.0f = 65535.0f : now emitted by this TU */

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

#ifdef NON_MATCHING
// 8 diffs: only the register holding `var` (ROM $a1, IDO $a0) and the
// consequent delay-slot fill differ. Swept with no effect (10 variants):
// dropping the `id` local, both declaration orders, `id = var = 0;` and
// `s32 id = 0;` chained/forked temps, `u32 var`, an extra dead scalar,
// if/else instead of the initialiser, inverted branch polarity, a temp for
// the D_800E9C60 test, `void f()` vs `void f(void)`, and giving the function
// a `GObj *arg0` parameter (that one adds the $a0 home-slot store: 40 diffs).
// Same shape and same residue as func_801E6E84/801E7760/801E8184/801E8AF8
// and func_801E932C_ovl10.
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

#ifdef NON_MATCHING
/* 31/112 (the ROM is 111): fully decoded and every call, constant and branch
   is right. Two residues. (1) The ROM's local block is Vector@0x3C, f32@0x48,
   an 8-byte hole, struct@0x54 -- `f32 pad[2]` between the struct and `sp48`
   gets the frame to 0x60 but not the hole's position. (2) The ROM COPIES
   sp54.unk4 into its own slot (`lwc1 0x58 / swc1 0x48`) and re-reads that
   across the two calls, where IDO re-reads the struct field directly, which
   is the one extra instruction. A local `struct Ovl10TrackPos` plus an
   `(s32 *)` cast at the func_8019A900_ovl7 call is needed because this file's
   prototype for it is `s32 func_8019A900_ovl7(s32 *)`; two separate s32/f32
   locals instead of the struct measure 101. */
f32 eneGetPlayerHeight(void);
f32 atan2f(f32, f32);
struct Ovl10TrackPos {
    s32 unk0;
    f32 unk4;
};

void func_801E7424_ovl10(GObj *arg0) {
    struct Ovl10TrackPos sp54;
    f32 pad[2];
    f32 sp48;
    Vector sp3C;

    if (D_800E9E20[omCurrentObj->objId] != 0) {
        func_8019A900_ovl7((s32 *) &sp54);
        sp48 = sp54.unk4;
        sp3C.x = 0.4f;
        sp3C.y = 0.0f;
        sp3C.z = 0.0f;
        lbvector_Rotate(&sp3C, 4, atan2f(eneGetPlayerHeight() - gEntitiesNextPosYArray[omCurrentObj->objId], sp48));
        D_800E6690[omCurrentObj->objId] = sp3C.x;
        D_800E3750[omCurrentObj->objId] = sp3C.y;
        if (sp54.unk0 != D_800E6A10[omCurrentObj->objId]) {
            f32 v = D_800E64D0[omCurrentObj->objId];
            f32 a;

            if (v < 0.0f) {
                a = -v;
            } else {
                a = v;
            }
            if (a < 1.0f) {
                D_800E64D0[omCurrentObj->objId] = -v * D_800E6A10[omCurrentObj->objId];
                D_800E6690[omCurrentObj->objId] = -D_800E6690[omCurrentObj->objId] * D_800E6A10[omCurrentObj->objId];
                if (D_800E6850[omCurrentObj->objId] < 0.0f) {
                    D_800E6850[omCurrentObj->objId] = -D_800E6850[omCurrentObj->objId];
                } else {
                    D_800E6850[omCurrentObj->objId] = D_800E6850[omCurrentObj->objId];
                }
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E7424_ovl10.s")
#endif

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

#ifdef NON_MATCHING
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

#ifdef NON_MATCHING
/* 72/170, same length and every stack offset correct (the trailing dead
   `f32 pad[4]` is the ROM's 16 bytes at the bottom of the local block: frame
   0x60 not 0x50). The residue is a one-slot rotation of the $t register file
   -- the ROM has one more temp live before the `addiu $t1,$zero,1`, so it runs
   t6,t7,t8,t9,t2,t1... where IDO runs one lower throughout. Swept with no
   effect: the pad leading/mid/trailing and as s32[4]/f32[2], `sp5C` as a
   declaration initializer, `sp5C` assigned after the first store, and an extra
   dead scalar. */
void func_801E7990_ovl10(GObj *arg0) {
    struct DObj *sp5C;
    Unk801E63E4 sp54;
    u8 sp53;
    f32 sp44[3];
    f32 temp_f0;
    f32 pad[4];

    sp5C = D_800DFBD0[omCurrentObj->objId][2];
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E6A10[omCurrentObj->objId] = -1.0f;
    D_800E9FE0[omCurrentObj->objId].as_s32 = D_800E6A10[omCurrentObj->objId];
    func_800A9EA4(0x103AC);
    func_800AA864(0x103AB, 2);
    func_800A9EA4(0x103B2);
    func_800AA864(0x103B1, 1);
    sp5C->flags = 2;
    func_800A9EA4(0x103A8);
    func_800A9EA4(0x103A7);
    func_801E63E4_ovl10(&sp54);
    D_800EA8A0[omCurrentObj->objId] = sp54.unk0;
    sp53 = sp54.unk4 + 0x14;
    sp44[0] = D_800EA8A0[omCurrentObj->objId];
    sp44[1] = -20.0f;
    sp44[2] = 0.0f;
    func_801E5B08_ovl10(sp44, sp53, -0.2f);
    ohSleep(4);
    sp5C->flags = 0;
    ohSleep((u8) (sp53 - 4));
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] =
    D_800E3210[omCurrentObj->objId] =
    D_800E33D0[omCurrentObj->objId] =
    D_800E3590[omCurrentObj->objId] =
    D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = 65535.0f;
    temp_f0 = D_800E3E50[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = temp_f0;
    D_800E3AD0[omCurrentObj->objId] = temp_f0;
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E7990_ovl10.s")
#endif

void func_801E7C38_ovl10(GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] == 1) {
        *(u32 *) &D_800E8920[omCurrentObj->objId] = 1;
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E75E4_ovl10);
    }
}

void func_801E7CC0_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9FE0[omCurrentObj->objId].as_s32 = (s32) D_800E6A10[omCurrentObj->objId];
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800DEF90[omCurrentObj->objId] = func_801DB1E0_ovl10;
    func_801E5CF0_ovl10(D_800EA8A0[omCurrentObj->objId]);
    func_8019B424_ovl7(arg0);
    if (ent->unk3C != 0) {
        D_800E9FE0[omCurrentObj->objId].as_s32 = -D_800E9FE0[omCurrentObj->objId].as_s32;
    }
    D_800E6A10[omCurrentObj->objId] = -1.0f;
    func_800A9EA4(0x103AE);
    func_800AA864(0x103AD, 1);
    if (-1.0f == D_800E9FE0[omCurrentObj->objId].as_s32) {
        func_800A9EA4(0x103B8);
        func_800A9EA4(0x103B7);
    } else {
        func_800A9EA4(0x103BA);
        func_800A9EA4(0x103B9);
    }
    D_800E64D0[omCurrentObj->objId] = D_800E9FE0[omCurrentObj->objId].as_s32 * 3.0f;
    curObjSleepForever();
}

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

    dobj->pos.v.x += 0.4f * (f32) *arg0;
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
    D_800E3E50[omCurrentObj->objId] = 65535.0f;
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

/* 2.4f = 2.4f : now emitted by this TU */

void func_801E8F90_ovl10(GObj *arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800DEF90[omCurrentObj->objId] = &func_801DB1E0_ovl10;
    func_801E5CF0_ovl10(D_800EA8A0[omCurrentObj->objId]);
    func_8019B424_ovl7(arg0);
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9EA4(0x10360);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 2.4f;
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
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 2.4f;
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

#ifdef NON_MATCHING
/* 46/129: structure, frame, saved-register set and every offset are the ROM's
   (`s32 i = 0;` at declaration is worth 25 diffs over an `i = 0;` statement).
   Residue: the hoisted base addresses land in a rotated set of saved registers
   -- the ROM runs s1=&D_800E3750, s2=&omCurrentObj, s3=&D_800E3210,
   s4=&D_800E3C90 where IDO puts &omCurrentObj last (s4) and shifts the arrays
   down; and the post-loop `= 0.0f` reuses the loop's $f20 zero where the ROM
   materialises a fresh `mtc1 $zero,$f4`. A named `f32 zero = 0.0f` local for
   the loop compare does not fork the constant (still 46). */
void func_801E980C_ovl10(GObj *arg0) {
    s32 i = 0;
    f32 temp;
    f32 v;

    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 2;
    func_800A9EA4(0x1036D);
    func_800A9EA4(0x1036C);
    D_800E3210[omCurrentObj->objId] = -4.5f;
    D_800E3750[omCurrentObj->objId] = 0.5f;
    D_800E3C90[omCurrentObj->objId] = 4.5f;

    do {
        ohSleep(1);
        temp = D_800E3210[omCurrentObj->objId];
        if (temp < 0.0f) {
            v = -temp;
        } else {
            v = temp;
        }
        if (D_800E3C90[omCurrentObj->objId] <= v) {
            i++;
            D_800E3750[omCurrentObj->objId] = -D_800E3750[omCurrentObj->objId];
        }
    } while (i != 2);
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E980C_ovl10.s")
#endif

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

void func_801E9BDC_ovl10(GObj *arg0) {
    D_800E9720[omCurrentObj->objId] = 0x1E;
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
    D_800E9720[omCurrentObj->objId]--;
    while (D_800E9720[omCurrentObj->objId] != 0) {
        ohSleep(1);
        D_800E9720[omCurrentObj->objId]--;
    }
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    ohSleep(8);
    func_800A9EA4(0x10363);
    func_800A9EA4(0x10362);
    D_800DF310[omCurrentObj->objId] = func_801E9B7C_ovl10;
    func_800AF27C();
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

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

struct TrackPosition {
    s32 unk0;
    f32 unk4;
};
s32 func_800F9888(struct TrackPosition *, f32);
f32 func_800F951C(s32, f32, s32, f32);

void func_801E9ECC_ovl10(void) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];
    struct EntityThing800E9AA0 *tmp = D_800E9AA0[omCurrentObj->objId].as_ptr;
    struct TrackPosition sp20;
    f32 t;

    sp20.unk0 = tmp->unk0;
    sp20.unk4 = tmp->unk24;
    func_800B3520();
    if (func_800F9888(&sp20, -140.0f) == 0) {
        ent->unk2C = sp20.unk0;
        ent->unk28 = sp20.unk4;
        t = func_800F951C(D_800E5F90[omCurrentObj->objId], D_800E6BD0[omCurrentObj->objId], sp20.unk0, sp20.unk4);
        if (t != 9999.0f) {
            if (0.0f < t) {
                D_800E6A10[omCurrentObj->objId] = 1.0f;
            } else {
                D_800E6A10[omCurrentObj->objId] = -1.0f;
            }
            D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
        } else {
            utilPrintf("Error: FOURNINE!!\n");
        }
    } else {
        utilPrintf("Error:  Spline-Data\n");
    }
}

void func_801E9ECC_ovl10(void);
void func_801EA364_ovl10(void);

void func_801EA048_ovl10(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 4;
    func_801E9ECC_ovl10();
    while (D_800E9E20[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    func_800B3520();
    D_800E9E20[omCurrentObj->objId] = 1;
    func_800AECC0(gameTicksPerDraw + gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw + gameTicksPerDraw);
    func_800A9EA4(0x1036D);
    func_800AA864(0x1036C, 3);
    D_800E9E20[omCurrentObj->objId] = 2;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    play_sound(0x1D3);
    func_801EA364_ovl10();
    ohSleep(0x96);
    func_800B3520();
    D_800E9E20[omCurrentObj->objId] = 3;
    curObjSleepForever();
}

void func_801EA4C0_ovl10(void);
void func_801E91B0_ovl10(struct GObj *);
s32 func_8019A900_ovl7(s32 *);
void func_8019BC34_ovl7(f32);
s32 func_8019BD38_ovl7(void);

void func_801EA1E4_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *sp2C;
    f32 sp28;
    s32 sp24;

    sp2C = D_800E1B50[omCurrentObj->objId];
    if (D_800E9E20[omCurrentObj->objId] == 0 && func_8019BD38_ovl7() != 0) {
        D_800E9E20[omCurrentObj->objId] = 1;
        D_800E64D0[omCurrentObj->objId] = 0.0f;
        if (func_8019A900_ovl7(&sp24) != 0) {
            if (sp24 != D_800E6A10[omCurrentObj->objId] && sp2C->unk3C == 0) {
                D_800E6A10[omCurrentObj->objId] = sp24;
            }
        }
        func_8019BC34_ovl7(120.0f);
    }
    if (D_800E9E20[omCurrentObj->objId] == 2) {
        func_801EA4C0_ovl10();
    }
    if (D_800E9E20[omCurrentObj->objId] == 3) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 5;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E91B0_ovl10);
    }
}

/* 0.006666667f = 0.006666667f : now emitted by this TU */
/* 6.2831855f = 6.2831855f : now emitted by this TU */
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
    D_800EAA60[omCurrentObj->objId] = 0.006666667f;
    D_800EAC20[omCurrentObj->objId] = 180.0f;
    D_800EADE0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 6.2831855f;
    D_800EAFA0[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId] - 45.0f;
    func_801EA4C0_ovl10();
}

f32 cosf(f32);
f32 sinf(f32);
f32 animGetAObjInterpValue(f32, f32, f32, f32, f32, f32);

// The leading dead `f32 z[2]` is load-bearing: it is the ROM's 8 bytes at the
// top of the local block (frame 0x30 rather than 0x28) and moves no slot.
void func_801EA4C0_ovl10(void) {
    f32 z[2];
    f32 x;
    f32 temp;
    f32 y;

    temp = animGetAObjInterpValue(D_800EAA60[omCurrentObj->objId], D_800E9720[omCurrentObj->objId], 0.0f,
                                  D_800EADE0[omCurrentObj->objId], 0.0f, 0.0f) + 1.5707964f;
    x = cosf(temp) * D_800EAC20[omCurrentObj->objId] * 1.25f;
    y = sinf(temp) * D_800EAC20[omCurrentObj->objId] * 0.25f;
    gEntitiesNextPosYArray[omCurrentObj->objId] = D_800EAFA0[omCurrentObj->objId] + y;
    D_800E5F90[omCurrentObj->objId] = D_800E98E0[omCurrentObj->objId];
    D_800E6BD0[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
    func_800F98EC(omCurrentObj->objId, x);
    D_800E9720[omCurrentObj->objId]++;
}

/* 65535.0f = 65535.0f : now emitted by this TU */

void func_801EA630_ovl10(GObj *arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800DDFD0[omCurrentObj->objId] = 5;
    ohSleep(0x10);
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
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

#ifdef NON_MATCHING
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

#include "unk_structs/D_800D7098.h"

void func_801EB84C_ovl10(void) {
    f32 a;
    f32 b;
    s32 n;

    if (-1.0f == D_800EAA60[omCurrentObj->objId]) {
        a = func_800F951C(D_800E5F90[omCurrentObj->objId], D_800E6BD0[omCurrentObj->objId],
                          D_800E5F90[D_800D7098.unk0], D_800E6BD0[D_800D7098.unk0]);
    } else {
        a = func_800F951C(D_800E5F90[omCurrentObj->objId], D_800E6BD0[omCurrentObj->objId],
                          D_800E5F90[D_800D7098.unk4], D_800E6BD0[D_800D7098.unk4]);
    }
    if (a < 0.0f) {
        b = -a;
    } else {
        b = a;
    }
    n = b * 0.125f;
    D_800E3750[omCurrentObj->objId] = -(960.0f / (n * n));
    D_800E3210[omCurrentObj->objId] = 480.0f / n;
    D_800E64D0[omCurrentObj->objId] = D_800EAA60[omCurrentObj->objId] * 8.0f;
}

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

#ifdef NON_MATCHING
/* 44/109: fully decoded and the same length; every CSE decision is the ROM's
   (the D_800E1B50 read shares the first objId<<2, the D_800DEF90 store gets a
   fresh one -- that is what the `ent` initializer at declaration buys). The
   residue is the one-slot register rotation: the ROM puts the first index in
   $v1 and the D_800E98E0 base in $a0, IDO puts them in $v0 and $v1. Note
   `func_800AFBB4(0, omCurrentObj)` is load-bearing -- the second argument is
   already in $a1 so it costs no instruction, and it is the only spelling that
   satisfies the (s32, GObj *) prototype in ovl1_7.h without emitting a move.
   Swept with no effect: a source `id` local for the D_800D7098 statement
   (41 diffs, same rotation), `s32` return type, and both statement orders for
   the ent load. */
void func_800B68AC(void);
void func_800B33F4(void);
void func_800B19F4(s32, s32);
void func_801EBC28_ovl10(void);

void func_801EBA74_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = func_801EBC28_ovl10;
    D_800DEF90[omCurrentObj->objId] = func_800B68AC;
    func_800AFBB4(0, omCurrentObj);
    func_800FF0A8(ent->unk80);
    ((s32 *) &D_800D7098)[D_800E98E0[omCurrentObj->objId]] = omCurrentObj->objId;
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        D_800E6A10[omCurrentObj->objId] = 1.0f;
    } else {
        D_800E6A10[omCurrentObj->objId] = -1.0f;
    }
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 20.0f;
    while (D_800E6310[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    func_800F98EC(omCurrentObj->objId, -D_800E6A10[omCurrentObj->objId] * 160.0f);
    func_800B33F4();
    func_800B19F4(0x7D, omCurrentObj->objId);
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EBA74_ovl10.s")
#endif

void func_801EBC28_ovl10(void) {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7();
}
