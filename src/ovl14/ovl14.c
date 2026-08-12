#include <ultra64.h>
#include <macros.h>
#define D_800E9FE0_PTR
#include "ovl1/ovl1_6.h"
#include "GObj.h"

#include "buffers.h"
#include "ovl14.h"
#include "unk_structs/D_800E1B50.h"
#include "unk_structs/D_800D7098.h"
#include "ovl2/ovl2_8.h"

/* D_801E30B4_ovl14 = 0.30967742f : now emitted by this TU */
/* D_801E30B8_ovl14 = 3.096774f : now emitted by this TU */
/* D_801E30BC_ovl14 = -0.30967742f : now emitted by this TU */

extern u32 D_801CB470;
extern s32 D_800D7154;

/* The segment's rodata is an unmigrated asm block, so the format string must
   be referenced as a data symbol; writing the literal emits a second copy. */
/* D_801E2FE8_ovl14 = "enemy req over 18. Track Num:%d\n" : now emitted by this TU */

void func_801DB1E0_ovl14(GObj *arg0) {
    func_8019BB58_ovl7();
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 3, &D_801E2EA0_ovl14);
}

extern void func_800B7790(GObj *);
extern void func_800A9760(s32);
void func_801DB228_ovl14(GObj *arg0) {
    D_800EC120[omCurrentObj->objId] = func_801DC954_ovl14();
    D_800DEF90[omCurrentObj->objId] = func_800B7790;
    func_801A0D50_ovl7(func_801DB3B0_ovl14);
    func_800A9760(0x1006B);
    func_801DCB48_ovl14();
    D_800E8E60[omCurrentObj->objId] = 1;
    gEntitiesAngleYArray[omCurrentObj->objId] = 0.0f;
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId] - 20.0f;
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[omCurrentObj->objId] - 800.0f;
    D_800E98E0[omCurrentObj->objId] = 2;
    D_800E9AA0[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800EA520[omCurrentObj->objId] = 0;
    D_800EC660[omCurrentObj->objId] = 0.0;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801DB3B0_ovl14(arg0);
}

void func_801DB3B0_ovl14(GObj *arg0) {
    while (1) {
        D_800DF150[omCurrentObj->objId] = func_801DB460_ovl14;
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 7, D_801E2EAC_ovl14);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14/func_801DB460_ovl14.s")

void func_801DB684_ovl14(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CB470;
    func_801DCB84_ovl14();
    func_800AA018(0x10434);
    func_800AA018(0x10435);
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    ohSleep(0x1E);
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    play_sound(0x190);
    func_800BC1FC((s32)D_800E7B20[omCurrentObj->objId]);
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801DB780_ovl14(GObj *arg0) {

}

void func_801DB788_ovl14(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800A9EA4(0x10438);
    ohSleep(0x3C);
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

void func_801DB7FC_ovl14(GObj *arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14/func_801DB804_ovl14.s")

void func_801DB9F8_ovl14(GObj *arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14/func_801DBA00_ovl14.s")

void func_801DBC2C_ovl14(GObj *arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14/func_801DBC34_ovl14.s")

void func_801DBEA4_ovl14(GObj *arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14/func_801DBEAC_ovl14.s")

void func_801DC1BC_ovl14(GObj *arg0) {

}

void func_801DC1C4_ovl14(GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801DC298_ovl14;
    func_800AA018(0x10439);
    func_800AA018(0x1043A);
    D_800D7154 = 0;
    play_sound(0x1E7);
    func_800FD570(0, 2, 0.0f, 160.0f, 0.0f);
    func_800BB468(2, 0);
    func_800AF27C();
    ohSleep(0xF);
    func_800FB914(4);
    ohSleep(0x28);
    D_800E7880[omCurrentObj->objId] = 1;
    func_801DCBCC_ovl14(arg0);
}

void func_801DC298_ovl14(GObj *arg0) {

}

void func_801DC2A0_ovl14(void) {
    s32 rand;

    while (1) {
        rand = random_soft_s32_range(8);
        if (rand < 2) {
            rand = 0;
        } else if (rand < 5) {
            rand = 1;
        } else {
            rand = 2;
        }
        if (D_800E98E0[omCurrentObj->objId] != rand) {
            break;
        }
    }
    D_800E98E0[omCurrentObj->objId] = rand;
    switch (D_800E98E0[omCurrentObj->objId]) {
        case 0:
            gEntityFuncListIDArray[omCurrentObj->objId] = 3;
            break;
        case 1:
            gEntityFuncListIDArray[omCurrentObj->objId] = 4;
            break;
        case 2:
            gEntityFuncListIDArray[omCurrentObj->objId] = 5;
            break;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14/func_801DC38C_ovl14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14/func_801DC674_ovl14.s")

s32 func_801DC954_ovl14(void) {
    s32 track;

    track = request_track_general(0x19, 0x1E, 0x50);
    if ((track >= 0x3C) || (track == -1)) {
        utilPrintf("enemy req over 18. Track Num:%d\n", track);
        func_800B1900(track);
        return -1;
    }
    D_800E76C0[track] = 0xFF;
    D_800E7730[track] = 2;
    D_800E77A0[track] = 3;
    D_800E7880[track] = 2;
    gEntitiesNextPosXArray[track] =
    gEntitiesPosXArray[track] = gEntitiesNextPosXArray[omCurrentObj->objId];
    gEntitiesNextPosYArray[track] =
    gEntitiesPosYArray[track] = gEntitiesNextPosYArray[omCurrentObj->objId] + 160.0f;
    gEntitiesNextPosZArray[track] =
    gEntitiesPosZArray[track] = gEntitiesNextPosZArray[omCurrentObj->objId];
    D_800E8E60[track] = 0;
    D_800E5F90[track] =
    D_800E6150[track] = D_800E5F90[omCurrentObj->objId];
    D_800E6BD0[track] =
    D_800E6D90[track] = D_800E6BD0[omCurrentObj->objId];
    return track;
}

void func_801DCB00_ovl14(s32 arg0) {
    s32 temp_v0;

    temp_v0 = ((s32*)&D_800D7098)[arg0];
    if (temp_v0 != 0) {
        D_800E98E0[temp_v0] = 2;
    }
    func_800FB914(3);
}

void func_801DCB48_ovl14(void) {
    D_800E9FE0[omCurrentObj->objId].as_s32 = func_800A94F4(0x10437);
}

void func_801DCB84_ovl14(void) {
    if (*D_800E9FE0[omCurrentObj->objId].as_s32p != 0) {
        func_800B2288(*D_800E9FE0[omCurrentObj->objId].as_s32p, 0.0f);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14/func_801DCBCC_ovl14.s")

void func_801DCE1C_ovl14(GObj *arg0) {
    while (1) {
        D_800DF150[omCurrentObj->objId] = func_801DCEC0_ovl14;
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 6, D_801E2EE4_ovl14);
    }
}

void func_801DCEC0_ovl14(GObj *arg0) {
    s32 temp_v0;

    D_800EA520[omCurrentObj->objId] -= 1;
    if (D_800EA520[omCurrentObj->objId] <= 0) {
        D_800EA520[omCurrentObj->objId] = 0x2D;
        play_sound(0x18D);
    }
    temp_v0 = D_800E7CE0[omCurrentObj->objId];
    if (temp_v0 != 0) {
        if (((temp_v0 % 4) < 2) || (temp_v0 <= 1.0f)) {
            func_801DE548_ovl14(arg0, 0);
        } else {
            func_801DE548_ovl14(arg0, 1);
        }
    }
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        func_801A0D74_ovl7(arg0);
    }
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 6, D_801E2EFC_ovl14);
    func_801DE6C8_ovl14();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14/func_801DD018_ovl14.s")

void func_801DD4C8_ovl14(GObj *arg0) {

}

void func_801DD4D0_ovl14(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    ((s32*)&D_800D7098)[4] = 0;
    func_800A9EA4(0x10455);
    D_800E9AA0[omCurrentObj->objId] = 3;
    D_800EA360[omCurrentObj->objId] = &D_801D9CCC;
    D_800E9E20[omCurrentObj->objId] = 0;
    ohSleep(0x3C);
    func_800AF27C();
    func_801DED24_ovl14();
}

void func_801DD588_ovl14(GObj *arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14/func_801DD590_ovl14.s")

void func_801DDBD0_ovl14(GObj *arg0) {

}

void func_801DDBD8_ovl14(GObj *arg0) {
    s32 pad[4];

    D_800DDFD0[omCurrentObj->objId] = 3;
    ((s32*)&D_800D7098)[4] = 0;
    func_800AA018(0x10453);
    ((s32*)D_800E9AA0)[omCurrentObj->objId] = 3;
    D_800EA360[omCurrentObj->objId] = &D_801D9D80;
    func_800AF27C();
    func_800AA018(0x10445);
    ((s32*)D_800E9AA0)[omCurrentObj->objId] |= 0x10;
    D_800E9E20[omCurrentObj->objId] = 0;
    ohSleep(5);
    play_sound(0x193);
    func_800FB914(3);
    func_800BB468(0, 0);
    ohSleep(5);
    func_801DF290_ovl14();
    ohSleep(5);
    func_801DF290_ovl14();
    func_800AF27C();
    func_800AECC0(0.0f);
    func_801DF290_ovl14();
    ohSleep(5);
    func_801DF290_ovl14();
    ohSleep(5);
    func_801DF290_ovl14();
    ohSleep(5);
    func_801DF290_ovl14();
    ohSleep(5);
    func_801DF290_ovl14();
    ohSleep(5);
    func_801DF290_ovl14();
    ohSleep(5);
    func_801DF290_ovl14();
    ohSleep(5);
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AA018(0x10451);
    func_801DF290_ovl14();
    ohSleep(5);
    func_801DF290_ovl14();
    ohSleep(5);
    func_801DF290_ovl14();
    ohSleep(0x1E);
    D_800EA360[omCurrentObj->objId] = &D_801D9CCC;
    func_800AF27C();
    func_800A9EA4(0x10455);
    ohSleep(0x1E);
    D_800E9AA0[omCurrentObj->objId] = 3;
    D_800EA360[omCurrentObj->objId] = &D_801D9CCC;
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801DDE58_ovl14(GObj *arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14/func_801DDE60_ovl14.s")

void func_801DE210_ovl14(GObj *arg0) {

}

extern void func_800AF314(void);
extern void func_8019F1EC_ovl7(void);
extern void func_800AA608(s32, s32, f32, s32, f32);
extern void func_800A9F98(s32, f32);
extern void func_800AF408(void);
extern void func_801BC794_ovl7(s32);
extern void func_800AFBB4(s32, struct GObj *);
struct UnkStruct800D7118_ovl14 {
    char pad[0x3C];
    s32 unk3C;
};
extern struct UnkStruct800D7118_ovl14 D_800D7118;
void func_801DE218_ovl14(void *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801DE484_ovl14;
    func_800AF314();
    if (D_800DFF50[omCurrentObj->objId] == 0x1044E) {
        func_801DF580_ovl14(0.0f);
    }
    D_800D7118.unk3C = 0;
    func_8019F1EC_ovl7();
    play_sound(0x1E6);
    func_800FD570(0, 2, 0.0f, 160.0f, 0.0f);
    func_800FB914(4);
    func_800BB468(3, 0);
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800EA1A0[omCurrentObj->objId] = 0;
    ohSleep(0x1E);
    func_800AECC0(1.0f);
    func_800AED20(1.0f);
    func_800AA018(0x10448);
    func_800AA608(((GObj *) arg0)->data.dobj->firstChild, 0x10447, 10.0f, 0x1006C, 10.0f);
    func_800A9F98(0x10447, 10.0f);
    D_800EA1A0[omCurrentObj->objId] = 2;
    ohSleep(0xA);
    D_800EA1A0[omCurrentObj->objId] = 3;
    ohSleep(0xA);
    D_800EA1A0[omCurrentObj->objId] = 4;
    ohSleep(0xA);
    D_800EA1A0[omCurrentObj->objId] = 5;
    ohSleep(0xA);
    D_800EA1A0[omCurrentObj->objId] = 6;
    ohSleep(0xA);
    D_800EA1A0[omCurrentObj->objId] = 7;
    func_801BC794_ovl7(3);
    func_800AF27C();
    func_800AF408();
    func_800FB914(0);
    func_800AFBB4(0, omCurrentObj);
    curObjSleepForever();
}

void func_801DE484_ovl14(GObj *arg0) {
    s32 temp_v0;

    func_801DE548_ovl14(arg0, D_800EA1A0[omCurrentObj->objId]);
    temp_v0 = D_800EA1A0[omCurrentObj->objId];
    if (temp_v0 == 0) {
        func_801DE608_ovl14(arg0, 0.5f);
    } else if (temp_v0 < 7) {
        func_801DE608_ovl14(arg0, 0.5f - (arg0->animTimer / 120.0f));
    } else {
        func_801DE608_ovl14(arg0, 0.0f);
    }
}

void func_801DE548_ovl14(GObj *arg0, f32 arg1) {
    struct UnkStruct8004A7C4_3C_80 *tmp;
    struct UnkStruct8004A7C4_3C *tmp_0 = arg0->data.ptr;

    while (tmp_0 != 0) {
        tmp = tmp_0->unk80;
        while (tmp != 0) {
            tmp->unk88 = arg1;
            tmp = tmp->unk0;
        }
        tmp_0 = animModelTreeNextNode(tmp_0);
    }
}

void func_801DE5A8_ovl14(GObj *arg0, f32 arg1) {
    struct UnkStruct8004A7C4_3C_80 *tmp;
    struct UnkStruct8004A7C4_3C *tmp_0 = arg0->data.ptr;

    while (tmp_0 != 0) {
        tmp = tmp_0->unk80;
        while (tmp != 0) {
            *(f32 *)&tmp->unk84 = arg1;
            tmp = tmp->unk0;
        }
        tmp_0 = animModelTreeNextNode(tmp_0);
    }
}

void func_801DE608_ovl14(GObj *arg0, f32 arg1) {
    struct UnkStruct8004A7C4_3C_80 *tmp;
    struct UnkStruct8004A7C4_3C *tmp_0 = arg0->data.ptr;

    while (tmp_0 != 0) {
        tmp = tmp_0->unk80;
        while (tmp != 0) {
            *(f32 *)&tmp->unk84 = arg1;
            tmp = tmp->unk0;
        }
        tmp_0 = animModelTreeNextNode(tmp_0);
        if ((D_800D7098.unk10 == 0) && ((u32)tmp_0 >= (u32)D_800DFBD0[omCurrentObj->objId][11])) {
            break;
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14/func_801DE6C8_ovl14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14/func_801DEC34_ovl14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14/func_801DECAC_ovl14.s")

void func_801DED24_ovl14(void) {
    s32 temp;

    do {
        temp = random_soft_s32_range(3);
    } while (temp == D_800E98E0[omCurrentObj->objId]);
    D_800E98E0[omCurrentObj->objId] = temp;
    switch (D_800E98E0[omCurrentObj->objId]) {
        case 0:
            gEntityFuncListIDArray[omCurrentObj->objId] = 2;
            break;
        case 1:
            gEntityFuncListIDArray[omCurrentObj->objId] = 3;
            break;
        case 2:
            gEntityFuncListIDArray[omCurrentObj->objId] = 4;
            break;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14/func_801DEDE8_ovl14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14/func_801DF01C_ovl14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14/func_801DF290_ovl14.s")

void func_801DF514_ovl14(void) {
    s32 temp_v0;

    temp_v0 = D_800E9FE0[omCurrentObj->objId].as_s32;
    if (temp_v0 != -1) {
        func_800A8578(temp_v0 | 2);
    }
    D_800E9FE0[omCurrentObj->objId].as_s32 = func_800A94F4(0x1044D);
}

void func_801DF580_ovl14(f32 arg0) {
    s32 **temp_s0;

    temp_s0 = *((s32***)D_800E9FE0[omCurrentObj->objId].as_ptr);
    if (D_800DFBD0[omCurrentObj->objId][4]->mobjList != NULL) {
        animSetTextureAnimation(D_800DFBD0[omCurrentObj->objId][4]->mobjList, *temp_s0[4], arg0);
    }
    if (D_800DFBD0[omCurrentObj->objId][5]->mobjList != NULL) {
        animSetTextureAnimation(D_800DFBD0[omCurrentObj->objId][5]->mobjList, *temp_s0[5], arg0);
    }
    if (D_800DFBD0[omCurrentObj->objId][6]->mobjList != NULL) {
        animSetTextureAnimation(D_800DFBD0[omCurrentObj->objId][6]->mobjList, *temp_s0[6], arg0);
    }
    if (D_800DFBD0[omCurrentObj->objId][7]->mobjList != NULL) {
        animSetTextureAnimation(D_800DFBD0[omCurrentObj->objId][7]->mobjList, *temp_s0[7], arg0);
    }
    if (D_800DFBD0[omCurrentObj->objId][8]->mobjList != NULL) {
        animSetTextureAnimation(D_800DFBD0[omCurrentObj->objId][8]->mobjList, *temp_s0[8], arg0);
    }
    if (D_800DFBD0[omCurrentObj->objId][9]->mobjList != NULL) {
        animSetTextureAnimation(D_800DFBD0[omCurrentObj->objId][9]->mobjList, *temp_s0[9], arg0);
    }
}

void func_801DF720_ovl14(void) {
    D_800EC2E0[omCurrentObj->objId].as_s32 = func_800A94F4(0x1044E);
}

void func_801DF75C_ovl14(f32 arg0) {
    s32 **temp_s0;

    temp_s0 = *((s32***)D_800EC2E0[omCurrentObj->objId].as_ptr);
    if (D_800DFBD0[omCurrentObj->objId][4]->mobjList != NULL) {
        animSetTextureAnimation(D_800DFBD0[omCurrentObj->objId][4]->mobjList, *temp_s0[4], arg0);
    }
    if (D_800DFBD0[omCurrentObj->objId][5]->mobjList != NULL) {
        animSetTextureAnimation(D_800DFBD0[omCurrentObj->objId][5]->mobjList, *temp_s0[5], arg0);
    }
    if (D_800DFBD0[omCurrentObj->objId][6]->mobjList != NULL) {
        animSetTextureAnimation(D_800DFBD0[omCurrentObj->objId][6]->mobjList, *temp_s0[6], arg0);
    }
    if (D_800DFBD0[omCurrentObj->objId][7]->mobjList != NULL) {
        animSetTextureAnimation(D_800DFBD0[omCurrentObj->objId][7]->mobjList, *temp_s0[7], arg0);
    }
    if (D_800DFBD0[omCurrentObj->objId][8]->mobjList != NULL) {
        animSetTextureAnimation(D_800DFBD0[omCurrentObj->objId][8]->mobjList, *temp_s0[8], arg0);
    }
    if (D_800DFBD0[omCurrentObj->objId][9]->mobjList != NULL) {
        animSetTextureAnimation(D_800DFBD0[omCurrentObj->objId][9]->mobjList, *temp_s0[9], arg0);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14/func_801DF8FC_ovl14.s")

void func_801DF9EC_ovl14(GObj *arg0) {
    func_800B19F4(0x71, omCurrentObj->objId);
    D_800DEF90[omCurrentObj->objId] = func_800B6474;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801DFA5C_ovl14(arg0);
}

void func_801DFA5C_ovl14(GObj *arg0) {
    while(1) {
        D_800DF150[omCurrentObj->objId] = func_801DFB00_ovl14;
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, D_801E2F14_ovl14);
    }
}

void func_801DFB00_ovl14(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 2, D_801E2F1C_ovl14);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14/func_801DFB48_ovl14.s")

void func_801DFC28_ovl14(GObj *arg0) {

}

void func_801DFC30_ovl14(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.30967742f;
    ohSleep(0xA);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 3.096774f;
    ohSleep(0x122);
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -0.30967742f;
    ohSleep(0xA);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    curObjSleepForever();
}

void func_801DFD7C_ovl14(GObj *arg0) {

}

// The 28 zero bytes at 0x801DFD84..0x801DFDA0 are this TU's trailing padding.
// GNU as pads a section's SIZE only to 16, so the last 16 of them do not come
// back on their own -- measured: dropping this pragma leaves ovl14.o at 0x4BB0
// and breaks the ROM. They belong to ovl14.o, NOT to ovl14_2: splat named them
// func_801DFD90_ovl14 and put that listing at the head of ovl14_2, which left
// every dead epilogue in that file 16 bytes out of phase and cost four
// functions the `.align 5` nops IDO emits after an infinite loop.
// kirby64.yaml starts ovl14/ovl14_2 at 0x202990 to match. The label lands 12
// bytes low (the 0x4BA4->0x4BB0 gap is section padding C cannot emit before a
// following pragma); every byte is zero either way and nothing references the
// symbol, so check_layout's note on it is a label position, not a defect.
#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14_2/func_801DFD90_ovl14.s")
