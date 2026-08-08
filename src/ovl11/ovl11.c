#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "DObj.h"
#include "sounds.h"
#include "main/lbvector.h"
#include "main/object_helpers.h"
#include "ovl1/ovl1_2_2.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/track.h"
#include "ovl1/util.h"
#include "ovl2/ovl2_3.h"
#include "unk_structs/D_800DE350.h"
#include "unk_structs/D_800E1B50.h"

extern f32 D_801E0C0C_ovl11;
extern f32 D_801E0C18_ovl11;
extern f32 D_801E0C1C_ovl11;
extern f32 D_801E0C20_ovl11;
extern f32 D_801E0C30_ovl11;
extern f32 D_801E0C34_ovl11;
extern f32 D_801E0C40_ovl11;

extern FUNCLIST D_801E0B00_ovl11;
typedef struct Ovl11Color {
    u8 r;
    u8 g;
    u8 b;
    u8 a;
} Ovl11Color;

extern Ovl11Color D_801E0B10_ovl11;
extern Ovl11Color D_801E0B14_ovl11;
extern Ovl11Color D_801E0B18_ovl11;
extern Ovl11Color D_801E0B1C_ovl11;
extern Ovl11Color D_801E0B20_ovl11;
extern FUNCLIST D_801E0B24_ovl11;
extern FUNCLIST D_801E0B38_ovl11;
extern FUNCLIST D_801E0B4C_ovl11;
extern FUNCLIST D_801E0B70_ovl11;
extern FUNCLIST D_801E0B9C_ovl11;
extern FUNCLIST D_801E0BB0_ovl11;
extern FUNCLIST D_801E0BD0_ovl11;
extern FUNCLIST D_801E0BC4_ovl11;

extern f32 D_800D70D8;
extern struct GObjProcess *gEntityGObjProcessArray[];

extern void func_800B113C(struct DObj *, s32, f32);
extern void func_800B1900(u16);
extern void func_800BB468(s32, s32);
extern void func_800BC11C(f32);
extern void func_800BC1FC(s32);
extern void func_800AA018(s32);
extern void func_800AA864(s32, s32);
extern void func_800A9EA4(s32);
extern void func_800AF27C(void);
extern void curObjSleepForever(void);
extern void func_800FF0A8(void *);
extern void func_800FB914(s32);
extern s32 random_soft_s32_range(s32);
extern s32 func_801AE7E0_ovl7(s32);
extern void func_801ACCA0_ovl7(s32, s32, f32, f32);
extern void func_801ACF84_ovl7(struct GObj *);
extern void func_801A03B4_ovl7(void);
extern void func_801A0D74_ovl7(void);
extern void eneTurnCommon(s32);
extern void func_800A9760(s32);
extern void func_800B3520(s32);
extern void func_800FD570(s32, s32, f32, f32, f32);
extern void func_800FF0C4(void *);
extern void func_80198880_ovl7(void *);
extern void func_8019F1EC_ovl7(void);
extern void func_801A0D50_ovl7(void *);
extern void func_801BC794_ovl7(s32);
extern void func_801D0E3C_ovl8(void);
extern u8 D_801D79E8[];
extern struct Sub800E1B50_Unk98 D_801DAF18;
extern u8 D_801D7A2C[];
extern struct Sub800E1B50_Unk98 D_801CB4DC_ovl7;
extern struct Sub800E1B50_Unk98 D_801DAF84;
extern struct Sub800E1B50_Unk98 D_801DAFCC;
extern void func_8019B9B0_ovl7(void);
extern f32 eneGetPlayerHeight(void);
extern void func_800A9864(s32, s32, s32, void *);
extern void func_801D1094_ovl8(s32);
extern void func_800AECC0(f32);
extern void func_800AED20(f32);
extern void func_801A3E80_ovl7(s32);
extern f32 gameTicksPerDraw;
extern s32 func_800F98EC(s32, f32);
extern s32 func_801ACD90_ovl7(s32, s32, Vector *);
extern void func_801D0D44_ovl8(s32);
extern void omGMoveObjDL(struct GObj *, u8, s32);
extern struct UnkStruct8004A7C4_3C *animModelTreeNextNode(struct UnkStruct8004A7C4_3C *);

void func_801DB34C_ovl11(void);
void func_801DB684_ovl11(f32);
void func_801DB8A0_ovl11(struct GObj *);
void func_801DB8E8_ovl11(void);
void func_801DBB4C_ovl11(struct GObj *);
void func_801DBFA4_ovl11(s32, s32, f32);
void func_801DC258_ovl11(struct GObj *);
void func_801DD840_ovl11(s32, s32, f32);
void func_801DB31C_ovl11(struct DObj *, Ovl11Color *);
void func_801DC2A0_ovl11(f32);
void func_801DC45C_ovl11(void);
void func_801DC5B0_ovl11(void);
void func_801DC674_ovl11(void);
void func_801DC7B8_ovl11(void);
void func_801DC83C_ovl11(void);
void func_801DCA48_ovl11(struct GObj *);
void func_801DCE04_ovl11(s32, s32, f32);
void func_801DD1CC_ovl11(struct GObj *);
void func_801DDBA4_ovl11(void);
void func_801DDD80_ovl11(void);
void func_801DDE08_ovl11(void);
void func_801DE038_ovl11(void);
void func_801DE258_ovl11(void);
void func_801DEB78_ovl11(struct GObj *);
void func_801DCD8C_ovl11(void);
void func_801DDEC0_ovl11(struct GObj *);
void func_801DEF9C_ovl11(struct GObj *);
void func_801DFA38_ovl11(void);
void func_801DFD3C_ovl11(void);
void func_801DFEA8_ovl11(void);
void func_801E0168_ovl11(void);
void func_801E0610_ovl11(void);
void func_801E0820_ovl11(void);
void func_801DE9C8_ovl11(s32, s32, f32);
void func_801DEC08_ovl11(s32);
void func_801DEED0_ovl11(void);
void func_801DF0B4_ovl11(struct GObj *);
void func_801DF198_ovl11(s32, s32, f32);
void func_801DF728_ovl11(void);
void func_801DF798_ovl11(void);
void func_801DFA9C_ovl11(void);
s32 func_801E00B8_ovl11(s32);
void func_801E024C_ovl11(void);

void func_801DB1E0_ovl11(struct GObj *this) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    this->onAnimate = func_800B113C;
    D_800DEF90[omCurrentObj->objId] = func_801D0D44_ovl8;
    func_800FF0A8(tmp->unk80);
    gEntityRenderPriorityArray[omCurrentObj->objId] = 0x18;
    omGMoveObjDL(this, this->dl_link, gEntityRenderPriorityArray[omCurrentObj->objId]);
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 4, D_801E0B00_ovl11);
}

void func_801DB2BC_ovl11(struct GObj *this, f32 arg1) {
    struct UnkStruct8004A7C4_3C_80 *tmp;
    struct UnkStruct8004A7C4_3C *tmp_0 = this->data.ptr;

    while (tmp_0 != 0) {
        tmp = tmp_0->unk80;
        while (tmp != 0) {
            tmp->unk88 = arg1;
            tmp = tmp->unk0;
        }
        tmp_0 = animModelTreeNextNode(tmp_0);
    }
}

void func_801DB31C_ovl11(struct DObj *arg0, Ovl11Color *arg1) {
    struct UnkStruct8004A7C4_3C_80 *var_v0 = (struct UnkStruct8004A7C4_3C_80 *) arg0->mobjList;

    while (var_v0 != NULL) {
        *(Ovl11Color *) &var_v0->unk58 = *arg1;
        var_v0 = var_v0->unk0;
    }
}

void func_801DB34C_ovl11(void) {
    f32 temp_f22;
    s32 temp_v0;
    s32 i;

    temp_f22 = D_801E0C0C_ovl11;

    for (i = 0; i < 3; i++) {
        temp_v0 = request_track_general(0x19, 0x1E, 0x3C);
        if (temp_v0 >= 0x3C || temp_v0 == -1) {
            utilPrintf("reqWhispyJrTrk  Request Error!![boss2.cc]\n");
            func_800B1900(temp_v0);
            return;
        }
        gEntityFuncListIDArray[temp_v0] = gEntityFuncListIDArray[omCurrentObj->objId];
        D_800E76C0[temp_v0] = 0xFF;
        D_800E7730[temp_v0] = 2;
        D_800E77A0[temp_v0] = 0;
        D_800E7880[temp_v0] = 2;
        D_800E5F90[temp_v0] = 0;
        D_800E6BD0[temp_v0] = 0.25f;
        func_800F98EC(temp_v0, i * temp_f22);
        D_800E6150[temp_v0] = D_800E5F90[temp_v0];
        D_800E6D90[temp_v0] = D_800E6BD0[temp_v0];
        gEntitiesNextPosXArray[temp_v0] = gEntitiesNextPosXArray[omCurrentObj->objId];
        gEntitiesPosXArray[temp_v0] = gEntitiesPosXArray[omCurrentObj->objId];
        gEntitiesNextPosYArray[temp_v0] = gEntitiesNextPosYArray[omCurrentObj->objId];
        gEntitiesPosYArray[temp_v0] = gEntitiesPosYArray[omCurrentObj->objId];
        gEntitiesNextPosZArray[temp_v0] = gEntitiesNextPosZArray[omCurrentObj->objId];
        gEntitiesPosZArray[temp_v0] = gEntitiesPosZArray[omCurrentObj->objId];
        D_800E8E60[temp_v0] = 0;
        D_800EA520[temp_v0] = omCurrentObj->objId;
    }
}

f32 func_801DB5C8_ovl11(void) {
    Vector sp2C;
    Vector sp20;

    sp2C.x = sp2C.y = 0.0f;
    sp2C.z = 2.0f;
    lbvector_Rotate(&sp2C, AXIS_Y, gEntitiesAngleYArray[omCurrentObj->objId]);
    sp20.x = gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[omCurrentObj->objId];
    sp20.y = 0.0f;
    sp20.z = gEntitiesNextPosZArray[0] - gEntitiesNextPosZArray[omCurrentObj->objId];
    return vec3_abs_angle_diff(&sp2C, &sp20);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl11/ovl11/func_801DB684_ovl11.s")

void func_801DB7D0_ovl11(void) {
    f32 temp_f0;
    f32 phi_f0;

    temp_f0 = func_801DB5C8_ovl11();
    func_801DB684_ovl11(temp_f0);
    if (D_800E9720[omCurrentObj->objId] == 0) {
        if (D_800E4C50[omCurrentObj->objId] < D_800EA8A0[omCurrentObj->objId]) {
            phi_f0 = ABSF(temp_f0);
            if (phi_f0 <= D_801E0C18_ovl11) {
                D_800EA520[omCurrentObj->objId] = 2;
                return;
            }
        }
    } else {
        D_800E9720[omCurrentObj->objId]--;
    }
}

void func_801DB8A0_ovl11(struct GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, D_801E0B24_ovl11);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl11/ovl11/func_801DB8E8_ovl11.s")

void func_801DB9E0_ovl11(struct GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = &func_801DBB4C_ovl11;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    D_800EA360[omCurrentObj->objId] = 3;
    D_800EA520[omCurrentObj->objId] = 0;
    D_800E9720[omCurrentObj->objId] = 0;
    D_800D70D8 = 6.0f;
    D_800EA8A0[omCurrentObj->objId] = D_801E0C1C_ovl11;
    D_800EC2E0[omCurrentObj->objId].as_s32 = 0x1E;
    D_800E7CE0[omCurrentObj->objId] = 0x6C;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801DB34C_ovl11();
    D_800E9560[omCurrentObj->objId] = -1;
    D_800E93A0[omCurrentObj->objId] = D_800E9560[omCurrentObj->objId];
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, D_801E0B24_ovl11);
}

void func_801DBB4C_ovl11(struct GObj *arg0) {
    if (D_800EC2E0[omCurrentObj->objId].as_s32 > 0) {
        D_800EC2E0[omCurrentObj->objId].as_s32--;
    }
    if (D_800EC2E0[omCurrentObj->objId].as_s32 == 0) {
        func_800BC1FC(D_800D70D8);
        D_800EC2E0[omCurrentObj->objId].as_s32 = -1;
    }
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 5, D_801E0B38_ovl11);
    if (D_800E9FE0[omCurrentObj->objId].as_s32 != 0) {
        func_801DB7D0_ovl11();
        func_801DB8E8_ovl11();
    }
    if (D_800EC2E0[omCurrentObj->objId].as_s32 < 0) {
        func_800BC11C(D_800D70D8);
    }
    if (D_800D70D8 <= 0.0f) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 4;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB8A0_ovl11);
    }
}

void func_801DBCCC_ovl11(struct GObj *arg0) {
    if (D_800EA360[omCurrentObj->objId] == 0) {
        D_800EA360[omCurrentObj->objId] = 1;
        D_800EA360[D_800EA520[omCurrentObj->objId]]--;
        D_800D70D8 -= D_800EB320[omCurrentObj->objId];
    }
}

void func_801DBD58_ovl11(struct GObj *arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AA018(0x10400);
    func_800AA864(0x103FF, 2);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801DBDF8_ovl11(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_801DB8A0_ovl11);
    }
}

void func_801DBE64_ovl11(struct GObj *arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800AA018(0x10400);
    func_800AA018(0x103FF);
    curObjSleepForever();
}

void func_801DBEE8_ovl11(struct GObj *arg0) {

}

void func_801DBEF0_ovl11(struct GObj *arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
    D_800DDFD0[omCurrentObj->objId] = 2;
    play_sound(0x174);
    func_800A9EA4(0x103FC);
    func_800A9EA4(0x103FB);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801DBF9C_ovl11(struct GObj *arg0) {

}

void func_801DBFA4_ovl11(s32 arg0, s32 arg1, f32 arg2) {
    Vector sp1C;
    s32 temp_v0;

    if (arg1 == 0) {
        if ((s32)arg2 == 1) {
            sp1C.y = 60.0f;
            sp1C.z = 60.0f;
            sp1C.x = 0.0f;
            lbvector_Rotate(&sp1C, 2, gEntitiesAngleYArray[omCurrentObj->objId]);
            temp_v0 = func_801ACD90_ovl7(0x20, 0, &sp1C);
            if (temp_v0 != 0) {
                gEntitiesAngleYArray[temp_v0] = gEntitiesAngleYArray[omCurrentObj->objId];
            }
            play_sound(0x17B);
        }
    }
}

void func_801DC064_ovl11(struct GObj *arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    D_800EA520[omCurrentObj->objId] = 0;
    D_800E9720[omCurrentObj->objId] = 0x3C;
    D_800DDFD0[omCurrentObj->objId] = 3;
    func_800AA018(0x103E8);
    func_800AA018(0x103E7);
    D_800DF310[omCurrentObj->objId] = func_801DBFA4_ovl11;
    func_800AF27C();
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801DC158_ovl11(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB8A0_ovl11);
    }
}

void func_801DC1C4_ovl11(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 4;
    func_800BB468(2, 0);
    D_800E7880[omCurrentObj->objId] = 1;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 4, D_801E0B00_ovl11);
    curObjSleepForever();
}

void func_801DC250_ovl11(struct GObj *arg0) {

}

void func_801DC258_ovl11(struct GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 9, D_801E0B4C_ovl11);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl11/ovl11/func_801DC2A0_ovl11.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl11/ovl11/func_801DC388_ovl11.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl11/ovl11/func_801DC45C_ovl11.s")

void func_801DC5B0_ovl11(void) {
    s32 pad[2];
    struct DObj *sp1C;
    struct DObj *sp18;
    struct UnkStruct800E1B50 *temp_v0;
    struct DObj **temp_a2;
    struct GObj *temp_a0;

    temp_v0 = D_800E1B50[omCurrentObj->objId];
    temp_a2 = D_800DFBD0[omCurrentObj->objId];
    sp1C = temp_a2[0x1B];
    temp_a0 = D_800DE350[omCurrentObj->objId];
    sp18 = temp_a2[0x1D];
    temp_v0->unk70 = 2;
    temp_v0->unk68 = 0x15;
    temp_v0->unk6C = 1;
    D_800EA1A0[omCurrentObj->objId] = 1;
    func_801DB2BC_ovl11(temp_a0, 1.0f);
    func_801DB31C_ovl11(sp1C, &D_801E0B14_ovl11);
    func_801DB31C_ovl11(sp18, &D_801E0B20_ovl11);
    play_sound(0x175);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl11/ovl11/func_801DC674_ovl11.s")

void func_801DC7B8_ovl11(void) {
    s32 pad[2];
    struct DObj *sp1C;
    struct DObj *sp18;
    struct DObj **temp_v1;
    struct GObj *temp_a0;

    temp_v1 = D_800DFBD0[omCurrentObj->objId];
    sp1C = temp_v1[0x1B];
    temp_a0 = D_800DE350[omCurrentObj->objId];
    sp18 = temp_v1[0x1D];
    D_800EA1A0[omCurrentObj->objId] = 0;
    func_801DB2BC_ovl11(temp_a0, 2.0f);
    func_801DB31C_ovl11(sp1C, &D_801E0B18_ovl11);
    func_801DB31C_ovl11(sp18, &D_801E0B1C_ovl11);
}

void func_801DC83C_ovl11(void) {
    s32 *temp_v0;

    temp_v0 = &D_800E98E0[omCurrentObj->objId];
    if (*temp_v0 != 0) {
        *temp_v0 = 0;
        if (D_800D70D8 != 0.0f) {
            func_801DC5B0_ovl11();
            return;
        }
        func_801DC7B8_ovl11();
        gEntityFuncListIDArray[omCurrentObj->objId] = 8;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DC258_ovl11);
    }
}

void func_801DC8F8_ovl11(struct GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801DCA48_ovl11;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    D_800EA360[omCurrentObj->objId] = 3;
    D_800EA520[omCurrentObj->objId] = 0;
    D_800E9720[omCurrentObj->objId] = 0;
    D_800D70D8 = 6.0f;
    D_800EA8A0[omCurrentObj->objId] = D_801E0C20_ovl11;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    D_800E9560[omCurrentObj->objId] = -1;
    D_800E93A0[omCurrentObj->objId] = D_800E9560[omCurrentObj->objId];
    func_800BC1FC(D_800D70D8);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 9, D_801E0B4C_ovl11);
}

void func_801DCA48_ovl11(struct GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 9, D_801E0B70_ovl11);
    if (D_800E9FE0[omCurrentObj->objId].as_s32 != 0) {
        func_801DC388_ovl11();
        func_801DC45C_ovl11();
    }
    if (D_800EA1A0[omCurrentObj->objId] != 0) {
        func_801DC674_ovl11();
    }
    func_801DC83C_ovl11();
    func_800BC11C(D_800D70D8);
}

void func_801DCB04_ovl11(struct GObj *arg0) {
    D_800E4C50[omCurrentObj->objId] = 0.0f;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    D_800DDFD0[omCurrentObj->objId] = 0;
    ohSleep(0x2D);
    func_800AA018(0x103E6);
    func_800AA864(0x103E5, 1);
    func_800AA018(0x10402);
    func_800AA864(0x10401, 2);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801DCBE0_ovl11(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DC258_ovl11);
    }
}

void func_801DCC4C_ovl11(struct GObj *arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800AA018(0x10402);
    func_800AA018(0x10401);
    curObjSleepForever();
}

void func_801DCCD0_ovl11(struct GObj *arg0) {

}

void func_801DCCD8_ovl11(struct GObj *arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
    D_800DDFD0[omCurrentObj->objId] = 2;
    play_sound(0x174);
    func_800A9EA4(0x103FE);
    func_800A9EA4(0x103FD);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801DCD84_ovl11(struct GObj *arg0) {

}

void func_801DCD8C_ovl11(void) {
    s32 temp_v0;

    temp_v0 = func_801AE7E0_ovl7(4);
    if (temp_v0 != 0) {
        gEntitiesAngleYArray[temp_v0] = gEntitiesAngleYArray[omCurrentObj->objId] + D_800EAA60[omCurrentObj->objId];
        D_800EA520[temp_v0] = omCurrentObj->objId;
        play_sound(0x176);
    }
}

void func_801DCE04_ovl11(s32 arg0, s32 arg1, f32 arg2) {
    if ((arg1 == 0) && ((s32) arg2 == 1)) {
        func_801DCD8C_ovl11();
    }
}

void func_801DCE48_ovl11(struct GObj *arg0) {
    D_800E9AA0[omCurrentObj->objId] = NULL;
    D_800E9C60[omCurrentObj->objId] = 0xA;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    D_800EAA60[omCurrentObj->objId] = 0.0f;
    D_800DDFD0[omCurrentObj->objId] = 3;
    func_800AA018(0x103F2);
    func_800AA018(0x103F1);
    D_800DF310[omCurrentObj->objId] = func_801DCE04_ovl11;
    func_800AF27C();
    D_800E9E20[omCurrentObj->objId] = 1;
    func_800AA018(0x10404);
    func_800AA018(0x10403);
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl11/ovl11/func_801DCF70_ovl11.s")

void func_801DD0B4_ovl11(struct GObj *arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    D_800DDFD0[omCurrentObj->objId] = 4;
    play_sound(0x1DC);
    func_800AA018(0x103F4);
    func_800AA864(0x103F3, 1);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801DD160_ovl11(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DC258_ovl11);
    }
}

#ifdef MIPS_TO_C
void func_801DD1CC_ovl11(struct GObj *arg0) {
    Vector sp24;
    f32 sp20;
    s32 temp_v0_2;
    u32 temp_v0;

    temp_v0 = omCurrentObj->objId;
    sp20 = gEntitiesAngleYArray[temp_v0] + D_800EAA60[temp_v0];
    sp24.x = 0.0f;
    sp24.y = 200.0f;
    sp24.z = 160.0f;
    lbvector_Rotate(&sp24, 2, sp20);
    temp_v0_2 = func_801ACD90_ovl7(0x21, 0, &sp24);
    if (temp_v0_2 != 0) {
        gEntitiesAngleYArray[temp_v0_2] = sp20;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl11/ovl11/func_801DD1CC_ovl11.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl11/ovl11/func_801DD270_ovl11.s")

void func_801DD490_ovl11(struct GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    D_800EAA60[omCurrentObj->objId] = 0.0f;
    D_800DDFD0[omCurrentObj->objId] = 5;
    play_sound(0x17C);
    func_800AA018(0x103EC);
    func_800AA864(0x103EB, 1);
    D_800E9E20[omCurrentObj->objId] = 1;
    func_800AA018(0x103F0);
    func_800AA018(0x103EF);
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl11/ovl11/func_801DD588_ovl11.s")

void func_801DD730_ovl11(struct GObj *arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    D_800DDFD0[omCurrentObj->objId] = 6;
    func_800AA018(0x103EE);
    func_800AA864(0x103ED, 1);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801DD7D4_ovl11(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DC258_ovl11);
    }
}

void func_801DD840_ovl11(s32 arg0, s32 arg1, f32 arg2) {
    Vector sp1C;
    s32 temp_v0;

    if (arg1 == 0) {
        if ((s32) arg2 == 1) {
            sp1C.y = 60.0f;
            sp1C.z = 60.0f;
            sp1C.x = 0.0f;
            lbvector_Rotate(&sp1C, 2, gEntitiesAngleYArray[omCurrentObj->objId]);
            temp_v0 = func_801ACD90_ovl7(0x1F, 0, &sp1C);
            if (temp_v0 != 0) {
                gEntitiesAngleYArray[temp_v0] = gEntitiesAngleYArray[omCurrentObj->objId];
            }
            play_sound(0x179);
        }
    }
}

void func_801DD900_ovl11(struct GObj *arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    D_800DDFD0[omCurrentObj->objId] = 7;
    func_800AA018(0x103EA);
    func_800AA018(0x103E9);
    D_800DF310[omCurrentObj->objId] = func_801DD840_ovl11;
    func_800AF27C();
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801DD9C8_ovl11(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        D_800E9720[omCurrentObj->objId] = 0;
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DC258_ovl11);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl11/ovl11/func_801DDA4C_ovl11.s")

void func_801DDB9C_ovl11(struct GObj *arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl11/ovl11/func_801DDBA4_ovl11.s")

void func_801DDD80_ovl11(void) {
    struct UnkStruct800E1B50 *temp_v0;
    struct GObj *temp_a0;

    temp_v0 = D_800E1B50[omCurrentObj->objId];
    temp_a0 = D_800DE350[omCurrentObj->objId];
    temp_v0->unk70 = 2;
    temp_v0->unk68 = 0x15;
    temp_v0->unk6C = 1;
    D_800EA1A0[omCurrentObj->objId] = 1;
    func_801DB2BC_ovl11(temp_a0, 1.0f);
    play_sound(0x1C9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl11/ovl11/func_801DDE08_ovl11.s")

void func_801DDEC0_ovl11(struct GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, D_801E0B9C_ovl11);
}

void func_801DDF08_ovl11(struct GObj *arg0) {
    struct UnkStruct800E1B50 *temp_t6;

    temp_t6 = D_800E1B50[omCurrentObj->objId];
    D_800DEF90[omCurrentObj->objId] = func_801D0E3C_ovl8;
    D_800DF150[omCurrentObj->objId] = func_801DE038_ovl11;
    func_80198880_ovl7(D_801D79E8);
    func_800FF0C4(temp_t6->unk80);
    func_800A9760(0x10068);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    temp_t6->unk98 = &D_801DAF18;
    D_800E7CE0[omCurrentObj->objId] = 0x6C;
    D_800E6A10[omCurrentObj->objId] = -1.0f;
    func_801A0D50_ovl7(func_801DDEC0_ovl11);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, D_801E0B9C_ovl11);
}

void func_801DE038_ovl11(void) {
    if (D_800E9C60[omCurrentObj->objId] != 0) {
        func_801A0D74_ovl7();
    }
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 5, D_801E0BB0_ovl11);
    eneTurnCommon(6);
    if (D_800E9C60[omCurrentObj->objId] != 0) {
        if (D_800EA1A0[omCurrentObj->objId] != 0) {
            func_801DDE08_ovl11();
        }
        func_801DDBA4_ovl11();
    }
}

void func_801DE0F8_ovl11(struct GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9560[omCurrentObj->objId] = -1;
    D_800E93A0[omCurrentObj->objId] = D_800E9560[omCurrentObj->objId];
    D_800E9720[omCurrentObj->objId] = 0x1E;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AA018(0x1040F);
    func_800AA864(0x1040E, 2);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801DE1EC_ovl11(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DDEC0_ovl11);
    }
}

void func_801DE258_ovl11(void) {
    s32 temp_a2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a1;

    temp_v0 = D_800E9560[D_800EA520[omCurrentObj->objId]];
    if (temp_v0 != -1) {
        D_800E9560[omCurrentObj->objId] = temp_v0;
        return;
    }
    temp_v0_2 = random_soft_s32_range(2);
    temp_a2 = D_800E9560[omCurrentObj->objId];
    var_a1 = temp_v0_2;
    if ((temp_v0_2 == temp_a2) && (temp_v0_2 == D_800E93A0[omCurrentObj->objId])) {
        var_a1 = temp_v0_2 ^ 1;
    }
    D_800E93A0[omCurrentObj->objId] = temp_a2;
    D_800E9560[omCurrentObj->objId] = var_a1;
    D_800E9560[D_800EA520[omCurrentObj->objId]] = var_a1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl11/ovl11/func_801DE33C_ovl11.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl11/ovl11/func_801DE454_ovl11.s")

void func_801DE548_ovl11(struct GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E8920[omCurrentObj->objId] = 0;
    if (D_800E9FE0[omCurrentObj->objId].as_s32 == 4) {
        func_800AA018(0x10409);
        func_800AA864(0x10408, 1);
    }
    if (D_800E9FE0[omCurrentObj->objId].as_s32 == 1) {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * D_801E0C30_ovl11;
        D_800E3210[omCurrentObj->objId] = 12.0f;
        D_800E3750[omCurrentObj->objId] = -1.0f;
    } else {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * D_801E0C34_ovl11;
        D_800E3210[omCurrentObj->objId] = 8.0f;
        D_800E3750[omCurrentObj->objId] = -1.0f;
    }
    play_sound(0x1EC);
    while (D_800E9E20[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    func_800AA018(0x1040B);
    func_800AA018(0x1040A);
    curObjSleepForever();
}

void func_801DE758_ovl11(struct GObj *arg0) {
    if ((D_800E9E20[omCurrentObj->objId] == 0) && (D_800E3210[omCurrentObj->objId] < D_800E3750[omCurrentObj->objId])) {
        D_800E9E20[omCurrentObj->objId] = 1;
    }
}

void func_801DE7BC_ovl11(struct GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E64D0[omCurrentObj->objId] = 0.0f;
    if (D_800E9FE0[omCurrentObj->objId].as_s32 == 1) {
        func_800AECC0(2.0f * gameTicksPerDraw);
        func_800AED20(2.0f * gameTicksPerDraw);
        func_800AA018(0x1040D);
        func_800AA864(0x1040C, 1);
    }
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl11/ovl11/func_801DE8D0_ovl11.s")

void func_801DE9C8_ovl11(s32 arg0, s32 arg1, f32 arg2) {
    if ((arg1 == 0) && ((s32) arg2 == 1)) {
        func_801ACCA0_ovl7(0x1E, 0, 16.0f, 20.0f);
        play_sound(0x179);
    }
}

void func_801DEA1C_ovl11(struct GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 4;
    func_800AA018(0x10407);
    func_800AA018(0x10406);
    D_800DF310[omCurrentObj->objId] = func_801DE9C8_ovl11;
    func_800AF27C();
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801DEAE8_ovl11(struct GObj *arg0) {
    struct UnkStruct800E1B50 *temp_v1;

    temp_v1 = D_800E1B50[omCurrentObj->objId];
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        temp_v1->unk3C = 1;
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DDEC0_ovl11);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl11/ovl11/func_801DEB78_ovl11.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl11/ovl11/func_801DEC08_ovl11.s")

void func_801DEE50_ovl11(void) {
    struct UnkStruct800E1B50 *temp_v0;
    struct GObj *temp_a0;

    temp_v0 = D_800E1B50[omCurrentObj->objId];
    temp_a0 = D_800DE350[omCurrentObj->objId];
    temp_v0->unk70 = 2;
    temp_v0->unk68 = 0x15;
    temp_v0->unk6C = 1;
    D_800EA1A0[omCurrentObj->objId] = 1;
    func_801DB2BC_ovl11(temp_a0, 1.0f);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl11/ovl11/func_801DEED0_ovl11.s")

void func_801DEF9C_ovl11(struct GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, D_801E0BC4_ovl11);
}

void func_801DEFE4_ovl11(struct GObj *arg0) {
    struct UnkStruct800E1B50 *sp1C;

    sp1C = D_800E1B50[omCurrentObj->objId];
    D_800DEF90[omCurrentObj->objId] = func_801D1094_ovl8;
    D_800DF150[omCurrentObj->objId] = func_801DF0B4_ovl11;
    func_80198880_ovl7(D_801D7A2C);
    func_800FF0C4(sp1C->unk80);
    func_800A9760(0x1009D);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, D_801E0BC4_ovl11);
}

void func_801DF0B4_ovl11(struct GObj *arg0) {
    s32 sp1C;

    sp1C = (s32) D_800DFBD0[omCurrentObj->objId][1];
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, D_801E0BD0_ovl11);
    if ((D_800DE350[omCurrentObj->objId] != NULL) && (D_800D70D8 > 0.0f)) {
        if (D_800EA1A0[omCurrentObj->objId] != 0) {
            func_801DEED0_ovl11();
        }
        if (D_800E9C60[omCurrentObj->objId] == 0) {
            func_801DEC08_ovl11(sp1C);
        }
    }
}

void func_801DF198_ovl11(s32 arg0, s32 arg1, f32 arg2) {
    if ((arg1 == 0) && ((s32) arg2 == 1)) {
        D_800E9C60[omCurrentObj->objId] = 0;
        func_800BB468(0, 0);
        func_800FB914(2);
    }
}

void func_801DF204_ovl11(struct GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AA018(0x10554);
    func_800AA018(0x10553);
    D_800DF310[omCurrentObj->objId] = func_801DF198_ovl11;
    func_800AF27C();
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    ohSleep(0x14);
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801DF318_ovl11(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DEF9C_ovl11);
    }
}

void func_801DF384_ovl11(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E9720[omCurrentObj->objId] = 0x2D;
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl11/ovl11/func_801DF3DC_ovl11.s")

void func_801DF4B0_ovl11(struct GObj *arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 2;
    play_sound(SOUND__BADO_ICEDASI);
    func_800AA018(0x10556);
    func_800AA864(0x10555, 1);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl11/ovl11/func_801DF548_ovl11.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl11/ovl11/func_801DF5B8_ovl11.s")

void func_801DF650_ovl11(struct GObj *arg0) {
    struct UnkStruct800E1B50 *temp_a3;

    temp_a3 = D_800E1B50[omCurrentObj->objId];
    D_800DF150[omCurrentObj->objId] = func_801DF728_ovl11;
    temp_a3->unk98 = &D_801CB4DC_ovl7;
    D_800E98E0[omCurrentObj->objId] = 0x2D;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9864(0x1009E, 0x23, 0x10, temp_a3);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
    curObjSleepForever();
}

#ifdef MIPS_TO_C
void func_801DF728_ovl11(void) {
    s32 *temp_v1;
    s32 temp_a1;
    u32 temp_v0;

    temp_v0 = omCurrentObj->objId;
    temp_v1 = &D_800E98E0[temp_v0];
    temp_a1 = *temp_v1;
    if (temp_a1 == 0) {
        assign_new_process_entry(gEntityGObjProcessArray[temp_v0], func_801ACF84_ovl7);
        return;
    }
    *temp_v1 = temp_a1 - 1;
    func_801A0D74_ovl7();
    func_801A03B4_ovl7();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl11/ovl11/func_801DF728_ovl11.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl11/ovl11/func_801DF798_ovl11.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl11/ovl11/func_801DF89C_ovl11.s")

void func_801DFA38_ovl11(void) {
    if (D_800E9720[omCurrentObj->objId] == 0) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801ACF84_ovl7);
        return;
    }
    D_800E9720[omCurrentObj->objId]--;
}

void func_801DFA9C_ovl11(void) {
    func_801A0D74_ovl7();
    func_801DFA38_ovl11();
    func_801A03B4_ovl7();
}

void func_801DFACC_ovl11(struct GObj *arg0) {
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = D_801E0C40_ovl11;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl11/ovl11/func_801DFB44_ovl11.s")

void func_801DFD3C_ovl11(void) {
    f32 temp_f0;
    f32 temp_f0_2;

    temp_f0 = D_800EB320[omCurrentObj->objId];
    if (temp_f0 >= 0.0f) {
        if (temp_f0 <= gEntitiesNextPosXArray[omCurrentObj->objId]) {
            D_800E3590[omCurrentObj->objId] = 0.0f;
            D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
        }
    } else if (gEntitiesNextPosXArray[omCurrentObj->objId] <= temp_f0) {
        D_800E3590[omCurrentObj->objId] = 0.0f;
        D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
    }
    temp_f0_2 = D_800EB160[omCurrentObj->objId];
    if (temp_f0_2 >= 0.0f) {
        if (temp_f0_2 <= gEntitiesNextPosZArray[omCurrentObj->objId]) {
            D_800E33D0[omCurrentObj->objId] = 0.0f;
            D_800E3910[omCurrentObj->objId] = 0.0f;
        }
    } else if (gEntitiesNextPosZArray[omCurrentObj->objId] <= temp_f0_2) {
        D_800E33D0[omCurrentObj->objId] = 0.0f;
        D_800E3910[omCurrentObj->objId] = 0.0f;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl11/ovl11/func_801DFEA8_ovl11.s")

#ifdef MIPS_TO_C
s32 func_801E00B8_ovl11(s32 arg0)
{
  f32 temp_f12;
  f32 temp_f14;
  float new_var;
  f32 temp_f2;
  s32 var_v1;
  var_v1 = 0;
  temp_f14 = gEntitiesNextPosZArray[omCurrentObj->objId] - gEntitiesNextPosZArray[arg0];
  temp_f2 = temp_f14;
  temp_f12 = gEntitiesNextPosXArray[omCurrentObj->objId] - gEntitiesNextPosXArray[arg0];
  temp_f14 = gEntitiesNextPosYArray[omCurrentObj->objId] - (gEntitiesNextPosYArray[arg0] + 20.0f);
  temp_f14 = temp_f14;
  new_var = (temp_f12 * temp_f12) + (temp_f14 * temp_f14);
  temp_f14 = (temp_f2 * temp_f2) + new_var;
  temp_f12 = temp_f14;
  if (temp_f12 <= 1600.0f)
  {
    var_v1 = 1;
  }
  return var_v1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl11/ovl11/func_801E00B8_ovl11.s")
#endif

void func_801E0168_ovl11(void)
{
  struct GObj **var_s1;
  s32 var_s0;
 do { if (D_800E09D0[omCurrentObj->objId] == 0.0f) { var_s0 = 0x1E; var_s1 = &D_800DE350[0x1E]; do { if ((((*var_s1) != ((void *) 0)) && (D_800E7880[var_s0] == 2)) && (func_801E00B8_ovl11(var_s0) != 0)) { assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801ACF84_ovl7); return; } var_s0 += 1; var_s1 += 1; } while (var_s0 != 0x3C); } } while (0);
}

void func_801E024C_ovl11(void) {
    func_801A0D74_ovl7();
    func_801DFD3C_ovl11();
    func_801DFEA8_ovl11();
    func_801E0168_ovl11();
    func_801A03B4_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl11/ovl11/func_801E028C_ovl11.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl11/ovl11/func_801E03A4_ovl11.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl11/ovl11/func_801E0610_ovl11.s")

void func_801E0820_ovl11(void) {
    f32 temp_f0;
    f32 temp_f0_2;

    temp_f0 = D_800EB320[omCurrentObj->objId];
    if (temp_f0 >= 0.0f) {
        if (temp_f0 <= gEntitiesNextPosXArray[omCurrentObj->objId]) {
            D_800E3590[omCurrentObj->objId] = 0.0f;
            D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
        }
    } else if (gEntitiesNextPosXArray[omCurrentObj->objId] <= temp_f0) {
        D_800E3590[omCurrentObj->objId] = 0.0f;
        D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
    }
    temp_f0_2 = D_800EB160[omCurrentObj->objId];
    if (temp_f0_2 >= 0.0f) {
        if (temp_f0_2 <= gEntitiesNextPosZArray[omCurrentObj->objId]) {
            D_800E33D0[omCurrentObj->objId] = 0.0f;
            D_800E3910[omCurrentObj->objId] = 0.0f;
        }
    } else if (gEntitiesNextPosZArray[omCurrentObj->objId] <= temp_f0_2) {
        D_800E33D0[omCurrentObj->objId] = 0.0f;
        D_800E3910[omCurrentObj->objId] = 0.0f;
    }
}

void func_801E098C_ovl11(void) {
    func_801A0D74_ovl7();
    func_801E0820_ovl11();
    func_801E0610_ovl11();
    func_801A03B4_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl11/ovl11/func_801E09C4_ovl11.s")
