#include <ultra64.h>
#include <macros.h>
#include "ovl1/ovl1_6.h"
#include "GObj.h"
#include "unk_structs/D_800E1B50.h"
#include "unk_structs/D_800D7098.h"
#include "unk_structs/D_800DE350.h"
#include "unk_structs/D_80129114.h"
#include "buffers.h"
#include "ovl2/ovl2_8.h"

#include "ovl13.h"

/* -0.1f = -0.1f : now emitted by this TU */
/* -1.5707964f = -1.5707964f : now emitted by this TU */
/* 3.1415927f = 3.1415927f : now emitted by this TU */
/* -0.1f = -0.1f : now emitted by this TU */
/* 3.1415927f = 3.1415927f : now emitted by this TU */
/* -1.5707964f = -1.5707964f : now emitted by this TU */
/* -0.1f = -0.1f : now emitted by this TU */
extern void func_800AA154(s32); /* void is load-bearing: implicit int reserves $v0 */
void func_801DB1E0_ovl13(GObj *arg0) {
    D_800E1B50[omCurrentObj->objId]->unk39 = -1;
    D_800DF150[omCurrentObj->objId] = func_801DB358_ovl13;
    func_801A0D50_ovl7(&func_801DB2D8_ovl13);
    D_800E8920[omCurrentObj->objId] = 0;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], ARRAYLEN(D_801E5A80_ovl13), D_801E5A80_ovl13);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], ARRAYLEN(D_801E5A98_ovl13), D_801E5A98_ovl13);
    }
}

void func_801DB2D8_ovl13(GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], ARRAYLEN(D_801E5A98_ovl13), D_801E5A98_ovl13);
    }
}

void func_801DB358_ovl13(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], ARRAYLEN(D_801E5AD8_ovl13), D_801E5AD8_ovl13);
}

extern void func_800AA038(s32, f32, s32);
extern void func_800B19F4(s32, s32);
extern void func_800AFBB4(s32, struct GObj *);
extern void func_8019BB58_ovl7(void);
extern void procMainStub(s32);

void func_801DB3A0_ovl13(GObj *arg0) {
    f32 temp_f0;

    func_800AED80(0.0f, D_801290D0);
    func_800AA038(0x70050, 0, D_801290D0);
    D_800D7098.unk0 = 0;
    func_8019BB58_ovl7();
    func_800B19F4(0x79, omCurrentObj->objId);
    func_800AFBB4(0, omCurrentObj);
    D_800DEF90[omCurrentObj->objId] = func_800B7138;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], &procMainStub);
    D_800DF150[omCurrentObj->objId] = NULL;
    func_800B33F4();
    D_800E98E0[omCurrentObj->objId] = 0;
    while (TRUE) {
        switch (D_800E98E0[omCurrentObj->objId]) {
            case 0:
                D_800EC120[omCurrentObj->objId] = func_8019E0E8_ovl7(2, 1);
                D_800EBBE0[omCurrentObj->objId] = func_8019E0E8_ovl7(2, 3);
                D_800EBBE0[D_800EBBE0[omCurrentObj->objId]] = D_800EC120[omCurrentObj->objId];
                while (D_800E98E0[omCurrentObj->objId] == 0) {
                    ohSleep(1);
                }
                break;
            case 1:
                while (D_800E98E0[omCurrentObj->objId] == 1) {
                    ohSleep(1);
                }
                break;
            case 2:
                while (D_800E98E0[omCurrentObj->objId] == 2) {
                    ohSleep(1);
                }
                break;
            case 3:
                func_8019BBA8_ovl7(D_800EBBE0[omCurrentObj->objId]);
                func_800B1900(D_800EBBE0[omCurrentObj->objId]);
                D_800EBBE0[omCurrentObj->objId] = func_8019E0E8_ovl7(2, 4);
                D_800EBBE0[D_800EBBE0[omCurrentObj->objId]] = D_800EC120[omCurrentObj->objId];
                temp_f0 = gEntitiesNextPosYArray[D_800EC120[omCurrentObj->objId]] - 240.0f;
                gEntitiesNextPosYArray[D_800EBBE0[omCurrentObj->objId]] = temp_f0;
                gEntitiesPosYArray[D_800EBBE0[omCurrentObj->objId]] = temp_f0;
                D_800E98E0[omCurrentObj->objId] = 4;
                break;
            case 4:
                while (D_800E98E0[omCurrentObj->objId] == 4) {
                    ohSleep(1);
                }
                break;
            case 5:
                while (D_800E98E0[omCurrentObj->objId] == 5) {
                    ohSleep(1);
                }
                break;
            case 6:
                func_8019BBA8_ovl7(D_800EBBE0[omCurrentObj->objId]);
                func_800B1900(D_800EBBE0[omCurrentObj->objId]);
                while (D_800E98E0[omCurrentObj->objId] == 6) {
                    ohSleep(1);
                }
                break;
            case 7:
                while (D_800E98E0[omCurrentObj->objId] == 7) {
                    ohSleep(1);
                }
                break;
            default:
                curObjSleepForever();
                break;
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801DB870_ovl13.s")

void func_801DC788_ovl13(GObj *arg0) {
    ((s32 *) D_800E9AA0)[omCurrentObj->objId]++;
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] %= 180;
    switch (D_800E98E0[D_800E0D50[omCurrentObj->objId]]) {
        case 0:
        case 1:
            func_801A0D74_ovl7(arg0);
            break;
        case 4:
            D_800DFBD0[D_801290D0][2]->pos.v.y -= D_800EA6E0[omCurrentObj->objId];
            if (D_800DFBD0[D_801290D0][2]->pos.v.y < -960.0f) {
                D_800DFBD0[D_801290D0][2]->pos.v.y += 480.0f;
            }
            break;
        case 5:
            D_800E98E0[D_800E0D50[omCurrentObj->objId]] = 6;
            break;
        case 2:
        case 3:
        case 6:
        case 7:
            break;
    }
}

/* 10/93: the whole loop body is exact. The residue is the coupled-FP floor:
 * the ROM defines $f22 (D_801E5CD4) first and $f20 (D_801E5CD8) second while
 * using $f20 first in the loop; IDO always gives the first-assigned local the
 * LOWER register, so no assignment/declaration order reaches it. Swept: both
 * assignment orders, both declaration orders, declaration initializers,
 * inline externs, and statement placement around `ret = -1`. */
/* D_801E5CD4_ovl13: literal */
/* D_801E5CD8_ovl13: literal */
extern void func_801A4C0C_ovl7(struct GObj *);

s32 func_801DC8CC_ovl13(GObj *arg0) {
    s32 i;
    s32 ret;
    f32 hi;
    f32 lo;

    lo = 0.200000003f;
    hi = 9999.0f;
    ret = -1;
    for (i = 0x1E; i != 0x3C; i++) {
        if ((D_800DD710[i] != -1) && (D_800E7730[i] == 0) && (lo < D_800E7B20[i]) && (D_800E7B20[i] < hi)) {
            if (D_800E83E0[i] != 1) {
                if (omCurrentObj->objId == D_800E0D50[i]) {
                    ret = func_801DCA40_ovl13(i);
                }
            } else if ((void *) D_800DF150[i] == (void *) func_801A4C0C_ovl7) {
                ret = func_801DCA40_ovl13(i);
            }
        }
    }
    return ret;
}

s32 func_801DCA40_ovl13(s32 arg0) {
    switch (D_800E77A0[arg0]) {
    case 0x1B:
        D_800EA6E0[arg0] -= D_800EA6E0[omCurrentObj->objId];
    case 0x19:
        D_800EA8A0[arg0] -= D_800EA6E0[omCurrentObj->objId];
    case 0x21:
        gEntitiesNextPosYArray[arg0] -= D_800EA6E0[omCurrentObj->objId];
    }
    return 0;
}

extern void func_800AEDD0(f32, s32);
extern void func_800AA038(s32, f32, s32);
extern void func_800B19F4(s32, s32);
extern void func_800AFBB4(s32, struct GObj *);
extern void func_801A3280_ovl7(void);
extern void func_8019BB58_ovl7(void);
extern void procMainStub(s32);
void func_801DCB28_ovl13(GObj *arg0) {
    s32 sp;

    sp = D_800E0D50[omCurrentObj->objId];
    func_801A3280_ovl7();
    func_8019BB58_ovl7();
    D_800DEF90[omCurrentObj->objId] = 0;
    D_800DF150[omCurrentObj->objId] = 0;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    func_800B19F4(0x7D, omCurrentObj->objId);
    func_800AFBB4(0, omCurrentObj);
    play_sound(0x28);
    D_800E98E0[omCurrentObj->objId] = 2;
    func_800AEDD0(gameTicksPerDraw, sp);
    func_800AA038(0x10412, 0.0f, sp);
    ohSleep(0x2A);
    func_800AA038(0x1041F, 0.0f, sp);
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800EBDA0[sp] = -1;
    func_8019D958_ovl7(((u16 *) omCurrentObj)[1]);
}

void func_801DCC7C_ovl13(GObj *arg0) {
    struct EnemyRecord *temp_v0 = D_800E1B50[omCurrentObj->objId];

    temp_v0->unk80->unk18 = -800.0f;
    temp_v0->unk80->unk10 = 60.0f;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], func_800B17B8);
    D_800EA520[omCurrentObj->objId] = 1;
    func_800A9864(0x10069, 0x23, 0x10);
    D_800DEF90[omCurrentObj->objId] = func_800B7138;
    D_800E9AA0[omCurrentObj->objId] = random_soft_s32_range(4);
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800D7154 = -1;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801DCDA8_ovl13(GObj *arg0) {
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], func_800B17B8);
    D_800EA520[omCurrentObj->objId] = 1;
    func_800A9864(0x10069, 0x23, 0x10);
    D_800DEF90[omCurrentObj->objId] = func_800B72AC;
    D_800E9AA0[omCurrentObj->objId] = random_soft_s32_range(3);
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800D7154 = -1;
    gEntityFuncListIDArray[omCurrentObj->objId] = 8;
}

extern s32 D_801D9384;
extern f32 D_801DAB18;

void func_801DCE9C_ovl13(GObj *arg0) {
    f32 temp_f0;

    func_8019BB58_ovl7();
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    func_800B19F4(0x71, omCurrentObj->objId);
    func_800AFBB4(0, omCurrentObj);
    D_800E98E0[omCurrentObj->objId] = 1;
    D_800DEF90[omCurrentObj->objId] = func_800B6CF8;
    D_800DDFD0[omCurrentObj->objId] = 0xD;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9384;
    D_800E0490[omCurrentObj->objId] = &D_801DAB18;
    func_801A2ADC_ovl7(&D_801DAB18);
    D_800E1B50[omCurrentObj->objId]->unk98 = (struct EnemyEventTable *) &D_801DAE1C;
    gEntitiesPosZArray[omCurrentObj->objId] = 0.0f;
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesPosZArray[omCurrentObj->objId];
    func_800B33F4();
    while (D_800E98E0[D_800E0D50[D_800E0D50[omCurrentObj->objId]]] != 2) {
        ohSleep(1);
    }
    temp_f0 = gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]] - gEntitiesNextPosXArray[omCurrentObj->objId];
    func_800F9974(&D_800E5F90[omCurrentObj->objId], &D_800E6BD0[omCurrentObj->objId], temp_f0);
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesPosYArray[omCurrentObj->objId] =
        gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]];
    ohSleep(0x258);
    D_800E98E0[omCurrentObj->objId] = 0;
    ohSleep(0x1E);
    func_8019D958_ovl7(((u16 *) omCurrentObj)[1]);
}

void func_801DD148_ovl13(void) {
    D_800E8920[omCurrentObj->objId] = 1;
    func_801A0D74_ovl7();
}

/* 4/137: exact except the objId temp before func_800A9F98 -- ROM uses $v0,
 * IDO picks $a2. Swept: extra local, local declared first, u32 index. */
extern s32 D_801D9384;
extern void func_800AED20(f32);
extern void func_800AECC0(f32);
extern void func_800A9F98(s32, f32);
extern void func_800AA018(s32);
extern void func_800BC1FC(s32);
void func_801DD184_ovl13(GObj *arg0)
{
  func_800AED20(0.0f);
  func_800AECC0(gameTicksPerDraw);
  D_800DDFD0[omCurrentObj->objId] = 0;
  D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9384;
  D_800E1B50[omCurrentObj->objId]->unk98 = (struct EnemyEventTable *) (&D_801DAE1C);
  func_800B33F4();
  D_800EA1A0[omCurrentObj->objId] = random_soft_s32_range(3);
  D_800E64D0[omCurrentObj->objId] = 160.0f;
  D_800E3210[omCurrentObj->objId] = 80.0f;
  ohSleep(1);
  if (1)
  {
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId];
    func_800A9F98(0x10412, 3.0f);
    func_800AA018(0x10427);
    ohSleep(0x1E);
    func_800BC1FC((s32) D_800E7B20[omCurrentObj->objId]);
  }
  ohSleep(0x30);
  while (D_800E98E0[D_800E0D50[omCurrentObj->objId]] == 0)
  {
    ohSleep(1);
  }

  func_800AF27C();
  gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801DD3A8_ovl13(GObj *arg0) {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7();
    func_801E3A84_ovl13(
        D_800DFBD0[omCurrentObj->objId][23],
        D_800DFBD0[omCurrentObj->objId][4],
        D_800DFBD0[omCurrentObj->objId][6]
    );
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 7;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB2D8_ovl13);
    }
    func_801E3958_ovl13(arg0);
}

void func_801DD46C_ovl13(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D93A8_ovl8;
    D_800E0490[omCurrentObj->objId] = &D_801DAADC;
    func_801A2ADC_ovl7(&D_801DAADC);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAE1C_ovl8;
    func_800B33F4();
    func_800AA154(0x10427);
    func_800AA154(0x10429);
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

void func_801DD550_ovl13(GObj *arg0) {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7();
    func_801E3A84_ovl13(
        D_800DFBD0[omCurrentObj->objId][23],
        D_800DFBD0[omCurrentObj->objId][4],
        D_800DFBD0[omCurrentObj->objId][6]
    );
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 7;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB2D8_ovl13);
    }
    func_801E3958_ovl13(arg0);
}

extern f32 D_801DADF8;
extern void func_800AA864(s32, u32);

void func_801DD614_ovl13(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D93A8_ovl8;
    D_800E0490[omCurrentObj->objId] = &D_801DAADC;
    func_801A2ADC_ovl7(&D_801DAADC);
    D_800E1B50[omCurrentObj->objId]->unk98 = (struct EnemyEventTable *) &D_801DADF8;
    func_800B33F4();
    D_800E3C90[omCurrentObj->objId] = 2.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -2.0f;
    D_800E64D0[D_800EBBE0[omCurrentObj->objId]] = D_800E64D0[omCurrentObj->objId];
    D_800EA360[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = D_800EA360[omCurrentObj->objId];
    while (gEntityFuncListIDArray[omCurrentObj->objId] == 2) {
        D_800EA360[omCurrentObj->objId] += 1;
        D_800EA360[omCurrentObj->objId] = D_800EA360[omCurrentObj->objId] % 2;
        if (D_800EA360[omCurrentObj->objId] != 0) {
            func_800AA018(0x1041D);
            D_800DF310[omCurrentObj->objId] = &func_801DDADC_ovl13;
            func_800AF27C();
        } else {
            func_800AA864(0x1042A, 2);
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801DD888_ovl13.s")

void func_801DDADC_ovl13(s32 arg0, s32 arg1, f32 arg2) {
    s32 temp;

    if ((arg1 == 0) && ((s32) arg2 == 1)) {
        temp = random_soft_s32_range(3);
        if (temp == D_800EA1A0[omCurrentObj->objId]) {
            D_800EA1A0[omCurrentObj->objId] = D_800EA1A0[omCurrentObj->objId] + 3;
        } else if (D_801E5B78_ovl13[D_800EA1A0[omCurrentObj->objId]] == D_801E5B78_ovl13[temp]) {
            D_800EA1A0[omCurrentObj->objId] = random_soft_s32_range(2) + D_800EA1A0[omCurrentObj->objId] + 1;
            D_800EA1A0[omCurrentObj->objId] = D_800EA1A0[omCurrentObj->objId] % 3;
        } else {
            D_800EA1A0[omCurrentObj->objId] = temp;
        }
        play_sound(0x188);
        func_801DDC18_ovl13(D_801E5B78_ovl13[D_800EA1A0[omCurrentObj->objId]], 0);
    }
}

s32 func_801DDC18_ovl13(void) {
    s32 track;

    track = func_8019DD78_ovl7();
    if (track != -1) {
        D_800E8E60[track] = 0;
    }
    return track;
}

void func_801DDC58_ovl13(GObj *arg0) {
    f32 c;

    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D93A8_ovl8;
    D_800E0490[omCurrentObj->objId] = &D_801DAAF0_ovl8;
    func_801A2ADC_ovl7(&D_801DAAF0_ovl8);
    c = -0.1f;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAD8C_ovl8;
    D_800E6690[omCurrentObj->objId] = D_800E64D0[omCurrentObj->objId] * c;
    D_800E3750[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] * c;
    ohSleep(0xA);
    func_800B33F4();
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 4;
}

void func_801DDD90_ovl13(GObj *arg0) {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7();
    func_801E3A84_ovl13(
        D_800DFBD0[omCurrentObj->objId][23],
        D_800DFBD0[omCurrentObj->objId][4],
        D_800DFBD0[omCurrentObj->objId][6]
    );
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 7;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB2D8_ovl13);
    }
    func_801E3958_ovl13(arg0);
}

void func_801DDE54_ovl13(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 4;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D93A8_ovl8;
    D_800E0490[omCurrentObj->objId] = &D_801DAAF0_ovl8;
    func_801A2ADC_ovl7(&D_801DAAF0_ovl8);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAD8C_ovl8;
    func_800B33F4();
    func_800AA154(0x10423);
    func_800AA864(0x10427, 2);
    func_800AA154(0x10429);
    switch (((s32 *) D_800E9AA0)[omCurrentObj->objId]) {
    case 0:
        if (random_soft_s32_range(2) == 0) {
            ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 1;
        } else {
            ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 2;
        }
        break;
    case 1:
        ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 2;
        break;
    case 2:
        if (random_soft_s32_range(2) == 0) {
            ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 3;
        } else {
            ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 0;
        }
        break;
    case 3:
        ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 0;
        break;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = D_801E5B90_ovl13[((s32 *) D_800E9AA0)[omCurrentObj->objId]];
}

void func_801DE084_ovl13(GObj *arg0) {
    struct DObj **temp_v0;

    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7();
    temp_v0 = D_800DFBD0[omCurrentObj->objId];
    func_801E3A84_ovl13(temp_v0[23], temp_v0[4], temp_v0[6]);
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 7;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB2D8_ovl13);
    }
    func_801E3958_ovl13(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801DE148_ovl13.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801DF294_ovl13.s")

void func_801DF588_ovl13(s32 arg0, s32 arg1, f32 arg2) {
    if ((arg1 == 0) && ((s32)arg2 == 1)) {
        D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801DF5D0_ovl13.s")

void func_801E0928_ovl13(GObj *arg0) {
    D_800EA6E0[omCurrentObj->objId] = D_800EB320[omCurrentObj->objId];
    D_800EB320[omCurrentObj->objId] = D_800EB160[omCurrentObj->objId];
    D_800EB160[omCurrentObj->objId] = D_800DFBD0[omCurrentObj->objId][1]->pos.v.y;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.x += D_800EADE0[omCurrentObj->objId];
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7(arg0);
    func_801E3A84_ovl13(
        D_800DFBD0[omCurrentObj->objId][23],
        D_800DFBD0[omCurrentObj->objId][4],
        D_800DFBD0[omCurrentObj->objId][6]
    );
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 7;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB2D8_ovl13);
    }
    func_801E3958_ovl13(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801E0A90_ovl13.s")

void func_801E11D0_ovl13(GObj *arg0) {
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.x += D_800EADE0[omCurrentObj->objId];
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.y += D_800EAC20[omCurrentObj->objId];
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.z += D_800EAFA0[omCurrentObj->objId];
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7(arg0);
    if (0.0f != D_800E3210[omCurrentObj->objId]) {
        func_801E3A84_ovl13(
            D_800DFBD0[omCurrentObj->objId][23],
            D_800DFBD0[omCurrentObj->objId][4],
            D_800DFBD0[omCurrentObj->objId][6]
        );
    }
    func_801E3958_ovl13(arg0);
    if (D_800D7098.unk4 != 0) {
        gEntitiesNextPosXArray[omCurrentObj->objId] = D_800D70D8.unk4;
        gEntitiesNextPosZArray[omCurrentObj->objId] = D_800D70D8.unk8;
    }
}

void func_801E135C_ovl13(GObj *arg0) {
    func_800AED20(0.0f);
    func_800AECC0(gameTicksPerDraw);
    D_800DDFD0[omCurrentObj->objId] = 8;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9384_ovl8;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAE1C_ovl8;
    func_800B33F4();
    D_800DFBD0[omCurrentObj->objId][1]->pos.v.z = 0.0f;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.x = -1.5707964f;
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.y = 3.1415927f;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.z = 0.0f;
    func_800A9F98(0x10412, 3.0f);
    func_800AA018(0x10426);
    ohSleep(0x1E);
    func_800BC1FC((s32)D_800E7B20[omCurrentObj->objId]);
    ohSleep(0x30);
    while (D_800E98E0[D_800E0D50[omCurrentObj->objId]] == 3) {
        ohSleep(1);
    }
    func_800AF27C();
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -0.1f;
    gEntityFuncListIDArray[omCurrentObj->objId] = 10;
}

void func_801E15DC_ovl13(GObj *arg0) {
    func_801E3A84_ovl13(
        D_800DFBD0[omCurrentObj->objId][23],
        D_800DFBD0[omCurrentObj->objId][4],
        D_800DFBD0[omCurrentObj->objId][6]
    );
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0xE;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB2D8_ovl13);
    }
    func_801E3958_ovl13(arg0);
}

void func_801E1680_ovl13(GObj *arg0) {
    D_800E6BD0[omCurrentObj->objId] = D_800E6BD0[D_800E0D50[omCurrentObj->objId]];
    D_800E5F90[omCurrentObj->objId] = D_800E5F90[D_800E0D50[omCurrentObj->objId]];
    if (random_soft_s32_range(2) != 0) {
        D_800E6A10[omCurrentObj->objId] = 1.0f;
    } else {
        D_800E6A10[omCurrentObj->objId] = -1.0f;
    }
    D_800EAC20[omCurrentObj->objId] = 0.0f;
    D_800DFBD0[omCurrentObj->objId][1]->pos.v.z = D_800EAC20[omCurrentObj->objId];
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.y = 3.1415927f;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.x = -1.5707964f;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -0.1f;
    gEntityFuncListIDArray[omCurrentObj->objId] = 10;
}

void func_801E185C_ovl13(GObj *arg0) {
    s32 i;
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 9;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D93A8_ovl8;
    D_800E0490[omCurrentObj->objId] = &D_801DAB04_ovl8;
    func_801A2ADC_ovl7(&D_801DAB04_ovl8);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAE40_ovl8;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E6850[omCurrentObj->objId] = 4.0f;
    D_800E3C90[omCurrentObj->objId] = 2.0f;
    func_800AA018(0x10426);
    for (i = 60; i; i--) {
        ohSleep(1);
    }
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 11;
}

void func_801E19AC_ovl13(GObj *arg0) {
    f32 temp;

    if (D_800E64D0[omCurrentObj->objId] != 0.0f) {
        D_800EAC20[omCurrentObj->objId] =
            3.1415927f / ((D_800E64D0[omCurrentObj->objId] > 0.0f) ? 180.0f : -180.0f);
    }
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.y += D_800EAC20[omCurrentObj->objId];
    if (D_800DFBD0[omCurrentObj->objId][1]->angle.v.y > 3.926991f) {
        D_800DFBD0[omCurrentObj->objId][1]->angle.v.y = 3.926991f;
    }
    if (D_800DFBD0[omCurrentObj->objId][1]->angle.v.y < 2.3561945f) {
        D_800DFBD0[omCurrentObj->objId][1]->angle.v.y = 2.3561945f;
    }
    if (D_800E6690[omCurrentObj->objId] < 0.0f) {
        if (D_800E64D0[omCurrentObj->objId] <= -4.0f) {
            D_800E6690[omCurrentObj->objId] = ABS(D_800E6690[omCurrentObj->objId]);
        }
    } else if (D_800E64D0[omCurrentObj->objId] >= 4.0f) {
        D_800E6690[omCurrentObj->objId] = -ABS(D_800E6690[omCurrentObj->objId]);
    }
    if (D_800E9E20[omCurrentObj->objId] > 0) {
        D_800E9E20[omCurrentObj->objId] -= 1;
    }
    if (D_800E9E20[omCurrentObj->objId] <= 0) {
        D_800E3750[omCurrentObj->objId] = D_801E5B58_ovl13[random_soft_s32_range(8)];
        D_800E9E20[omCurrentObj->objId] = random_soft_s32_range(0x1F) + 15;
    }
    if (gEntitiesNextPosYArray[D_800EBBE0[omCurrentObj->objId]] + 40.0f <
        gEntitiesNextPosYArray[omCurrentObj->objId]) {
        D_800E3750[omCurrentObj->objId] = -ABS(D_800E3750[omCurrentObj->objId]);
    } else if (gEntitiesNextPosYArray[omCurrentObj->objId] <
               gEntitiesNextPosYArray[D_800EBBE0[omCurrentObj->objId]] - 80.0f) {
        D_800E3750[omCurrentObj->objId] = ABS(D_800E3750[omCurrentObj->objId]);
    }
    temp = func_8019DA70_ovl7(D_800E0D50[omCurrentObj->objId]);
    if (ABS(temp) > 120.0f) {
        if (temp > 0.0f) {
            D_800E6690[omCurrentObj->objId] = ABS(D_800E6690[omCurrentObj->objId]);
        } else {
            D_800E6690[omCurrentObj->objId] = -ABS(D_800E6690[omCurrentObj->objId]);
        }
    }
    func_801E3A84_ovl13(
        D_800DFBD0[omCurrentObj->objId][23],
        D_800DFBD0[omCurrentObj->objId][4],
        D_800DFBD0[omCurrentObj->objId][6]
    );
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0xE;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB2D8_ovl13);
    }
    func_801E3958_ovl13(arg0);
}

void func_801E1ED8_ovl13(GObj *arg0) {
    f32 *temp_v1;

    D_800E8920[omCurrentObj->objId] = 0;
    temp_v1 = &D_800E64D0[omCurrentObj->objId];
    *temp_v1 = -*temp_v1;
}

extern s32 D_801E5BF0_ovl13[];
void func_801E1F1C_ovl13(GObj *arg0) {
    switch ((s32) D_800E9AA0[omCurrentObj->objId]) {
    case 0:
        D_800E9AA0[omCurrentObj->objId] = 1;
        break;
    case 1:
        if (random_soft_s32_range(2) == 0) {
            D_800E9AA0[omCurrentObj->objId] = 0;
        } else {
            D_800E9AA0[omCurrentObj->objId] = 2;
        }
        break;
    case 2:
        D_800E9AA0[omCurrentObj->objId] = 0;
        break;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = D_801E5BF0_ovl13[(s32) D_800E9AA0[omCurrentObj->objId]];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801E2034_ovl13.s")

/* 149/157 -- an early m2c draft, retyped for the current DObj header
   (its `unk34` is angle.v.y at 0x34 and `unk24` is pos.v.z at 0x24, and
   D_800DFBD0[i] is a DObj ** whose [1] is the DObj m2c called `->unk4`).
   Saved rather than discarded because the retyping is the tedious part.
   The structural gap is that the ROM RE-MATERIALISES %hi/%lo(D_800DFBD0) and
   re-indexes it inside each arm where this draft computes it once -- the
   source reads D_800DFBD0[objId] separately in every branch. */
#ifdef NON_MATCHING
void func_801E2630_ovl13(GObj *arg0) {
    f32 temp_f0;
    f32 temp_f2;
    f32 var_f0;
    f32 var_f0_2;
    f32 var_f0_3;
    struct DObj **var_a3;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;
    struct DObj *temp_v0;
    struct DObj *temp_v0_2;
    struct DObj *var_v0;

    temp_v1 = omCurrentObj->objId;
    if (D_800EA360[temp_v1] != 0) {
        temp_f0 = D_800DFBD0[temp_v1][1]->angle.v.y;
        if (temp_f0 != 3.1415927f) {
            if (temp_f0 > 3.1415927f) {
                var_f0 = -180.0f;
            } else {
                var_f0 = 180.0f;
            }
            D_800EAC20[temp_v1] = 3.1415927f / var_f0;
        } else {
            D_800EAC20[temp_v1] = 0.0f;
        }
        temp_v1_2 = omCurrentObj->objId;
        temp_v0 = D_800DFBD0[temp_v1_2][1];
        temp_v0->angle.v.y = temp_v0->angle.v.y + D_800EAC20[temp_v1_2];
        var_a3 = D_800DFBD0[omCurrentObj->objId];
        var_v0 = var_a3[1];
        var_f0_2 = var_v0->angle.v.y;
        if (var_f0_2 > 3.926991f) {
            var_v0->angle.v.y = 3.926991f;
            var_a3 = D_800DFBD0[omCurrentObj->objId];
            var_v0 = var_a3[1];
            var_f0_2 = var_v0->angle.v.y;
        }
        if (var_f0_2 < 2.3561945f) {
            var_v0->angle.v.y = 2.3561945f;
            var_a3 = D_800DFBD0[omCurrentObj->objId];
            goto block_12;
        }
    } else {
        temp_v0_2 = D_800DFBD0[temp_v1][1];
        temp_v0_2->angle.v.y = temp_v0_2->angle.v.y + D_800EAC20[temp_v1];
        var_a3 = D_800DFBD0[omCurrentObj->objId];
block_12:
        var_v0 = var_a3[1];
    }
    temp_f2 = var_v0->pos.v.z;
    if (temp_f2 < 0.0f) {
        var_f0_3 = -temp_f2;
    } else {
        var_f0_3 = temp_f2;
    }
    if (var_f0_3 < 40.0f) {
        func_801E3A84_ovl13(var_a3[23], var_a3[4], var_a3[6]);
        temp_v1_3 = omCurrentObj->objId;
        if (D_800E83E0[temp_v1_3] == 1) {
            gEntityFuncListIDArray[temp_v1_3] = 0xE;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB2D8_ovl13);
        }
    }
    func_801E3958_ovl13(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801E2630_ovl13.s")
#endif

void func_801E28A8_ovl13(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0xB;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D93A8_ovl8;
    D_800E0490[omCurrentObj->objId] = &D_801DAB04_ovl8;
    func_801A2ADC_ovl7(&D_801DAB04_ovl8);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAE40_ovl8;
    D_800E6850[omCurrentObj->objId] = 4.0f;
    D_800E3C90[omCurrentObj->objId] = 2.0f;
    func_800AA018(0x1041E);
    D_800DF310[omCurrentObj->objId] = func_801E2F0C_ovl13;
    func_800AEFFC(3);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0xA;
}

void func_801E29E0_ovl13(GObj *arg0) {
    f32 temp;

    if (D_800E64D0[omCurrentObj->objId] != 0.0f) {
        D_800EAC20[omCurrentObj->objId] =
            3.1415927f / ((D_800E64D0[omCurrentObj->objId] > 0.0f) ? 180.0f : -180.0f);
    }
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.y += D_800EAC20[omCurrentObj->objId];
    if (D_800DFBD0[omCurrentObj->objId][1]->angle.v.y > 3.926991f) {
        D_800DFBD0[omCurrentObj->objId][1]->angle.v.y = 3.926991f;
    }
    if (D_800DFBD0[omCurrentObj->objId][1]->angle.v.y < 2.3561945f) {
        D_800DFBD0[omCurrentObj->objId][1]->angle.v.y = 2.3561945f;
    }
    if (D_800E6690[omCurrentObj->objId] < 0.0f) {
        if (D_800E64D0[omCurrentObj->objId] <= -4.0f) {
            D_800E6690[omCurrentObj->objId] = ABS(D_800E6690[omCurrentObj->objId]);
        }
    } else if (D_800E64D0[omCurrentObj->objId] >= 4.0f) {
        D_800E6690[omCurrentObj->objId] = -ABS(D_800E6690[omCurrentObj->objId]);
    }
    if (D_800E9E20[omCurrentObj->objId] > 0) {
        D_800E9E20[omCurrentObj->objId] -= 1;
    }
    if (D_800E9E20[omCurrentObj->objId] <= 0) {
        D_800E3750[omCurrentObj->objId] = D_801E5B58_ovl13[random_soft_s32_range(8)];
        D_800E9E20[omCurrentObj->objId] = random_soft_s32_range(0x1F) + 15;
    }
    if (gEntitiesNextPosYArray[D_800EBBE0[omCurrentObj->objId]] + 40.0f <
        gEntitiesNextPosYArray[omCurrentObj->objId]) {
        D_800E3750[omCurrentObj->objId] = -ABS(D_800E3750[omCurrentObj->objId]);
    } else if (gEntitiesNextPosYArray[omCurrentObj->objId] <
               gEntitiesNextPosYArray[D_800EBBE0[omCurrentObj->objId]] - 80.0f) {
        D_800E3750[omCurrentObj->objId] = ABS(D_800E3750[omCurrentObj->objId]);
    }
    temp = func_8019DA70_ovl7(D_800E0D50[omCurrentObj->objId]);
    if (ABS(temp) > 120.0f) {
        if (temp > 0.0f) {
            D_800E6690[omCurrentObj->objId] = ABS(D_800E6690[omCurrentObj->objId]);
        } else {
            D_800E6690[omCurrentObj->objId] = -ABS(D_800E6690[omCurrentObj->objId]);
        }
    }
    func_801E3A84_ovl13(
        D_800DFBD0[omCurrentObj->objId][23],
        D_800DFBD0[omCurrentObj->objId][4],
        D_800DFBD0[omCurrentObj->objId][6]
    );
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0xE;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB2D8_ovl13);
    }
    func_801E3958_ovl13(arg0);
}

extern s32 func_801BA32C_ovl7(void);
void func_801E2F0C_ovl13(s32 arg0, s32 arg1, f32 arg2) {
    s32 temp;

    if ((arg1 == 0) && ((s32) arg2 == 2)) {
        temp = func_801BA32C_ovl7();
        if (temp != -1) {
            D_800E76C0[temp] = 0xFF;
            D_800E7730[temp] = 0;
            D_800E77A0[temp] = 0x25;
            D_800E7880[temp] = 1;
            gEntitiesAngleZArray[temp] = 0.0f;
            gEntityFuncListIDArray[temp] = 1;
            gEntitiesNextPosYArray[temp] = gEntitiesNextPosYArray[omCurrentObj->objId] + 30.0f;
            D_800E8E60[temp] = 0;
            D_800E8AE0[temp] |= 1;
            D_800E9E20[temp] = 1;
            play_sound(0x188);
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801E3028_ovl13.s")

void func_801E35F4_ovl13(GObj *arg0) {
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.y += D_800EAC20[omCurrentObj->objId];
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.z += D_800EAFA0[omCurrentObj->objId];
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7(arg0);
    func_801E3A84_ovl13(
        D_800DFBD0[omCurrentObj->objId][23],
        D_800DFBD0[omCurrentObj->objId][4],
        D_800DFBD0[omCurrentObj->objId][6]
    );
    func_801E3958_ovl13(arg0);
}

extern s32 D_801D93F0;
void func_801E36D8_ovl13(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 14;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D93F0;
    D_800E1B50[omCurrentObj->objId]->unk98 = (struct EnemyEventTable *) &D_801DAE1C;
    func_800B33F4();
    ohSleep(0x1E);
    func_800F6C78();
    curObjSleepForever();
}

void func_801E3778_ovl13(GObj *arg0) {
    struct DObj **temp_v0;

    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7();
    temp_v0 = D_800DFBD0[omCurrentObj->objId];
    func_801E3A84_ovl13(temp_v0[23], temp_v0[4], temp_v0[6]);
    func_801E3958_ovl13(arg0);
}

extern void func_801A3E80_ovl7(GObj *);
/* 9999.0f, 0.09000000358f: literals, this TU owns its .rodata */

void func_801E37E8_ovl13(GObj *arg0) {
    s32 i;
    s32 m;
    f32 temp_f20;
    f32 temp_f22;

    m = -1;
    temp_f20 = 0.09000000358f;
    temp_f22 = 9999.0f;

    for (i = 14; i != 0x3C; i++) {
        if ((D_800DD710[i] != m) && ((D_800E7730[i] == 0) || (D_800E7730[i] == 4)) &&
            (D_800E77A0[i] != 0x39) && (D_800E77A0[i] != 0x3A) && (temp_f20 < D_800E7B20[i]) &&
            (D_800E7B20[i] < temp_f22) && (D_800E83E0[i] != 1) && (D_800E0D50[i] != 0)) {
            gEntityFuncListIDArray[i] = m;
            assign_new_process_entry(gEntityGObjProcessArray[i], func_801A3E80_ovl7);
        }
    }
}

void func_801E3958_ovl13(GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] += 1;
    D_800E9C60[omCurrentObj->objId] %= 6;
    if (D_800E9C60[omCurrentObj->objId] == 0) {
        func_800A8100(6, 2, 0, D_800DFBD0[omCurrentObj->objId][12]);
        func_800A8100(6, 2, 0, D_800DFBD0[omCurrentObj->objId][14]);
        func_800A8100(6, 2, 0, D_800DFBD0[omCurrentObj->objId][16]);
        func_800A8100(6, 2, 0, D_800DFBD0[omCurrentObj->objId][8]);
    }
}

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
s32 func_801E3A84_ovl13(s32 arg0, s32 arg1, s32 arg2) {
    struct Ovl13AnimInfo sp38;
    EnemyRecord *sp30;
    s32 *sp28;
    EnemyRecord *temp_t0;
    s32 *var_t2;
    s32 temp_a0;
    s32 var_a3;
    struct Ovl13AnimObj *temp_v0;
    u32 temp_a3;
    u32 temp_a3_2;
    u32 var_v1;

    var_v1 = omCurrentObj->objId;
    temp_t0 = D_800E1B50[var_v1];
    var_t2 = NULL;
    if (temp_t0->unk88 == NULL) {
        return 0;
    }
    temp_a0 = D_800EBDA0[var_v1];
    if ((temp_a0 != -1) && (var_v1 == D_800E0D50[temp_a0]) && (D_800DD710[temp_a0] != -1U) && (D_800E98E0[temp_a0] != 0)) {
        var_t2 = temp_t0->unk8C;
        temp_t0->unk8C = &D_801D9384;
        var_v1 = omCurrentObj->objId;
    }
    sp30 = temp_t0;
    sp28 = var_t2;
    func_80111550((s32) var_v1);
    temp_v0 = func_80111C88(temp_t0->unk8C, (s32) omCurrentObj->objId);
    if (temp_v0 != NULL) {
        if (arg0 != 0) {
            temp_v0->unk24->unk8 = arg0;
        }
        if (arg1 != 0) {
            temp_v0->unk24->unk30 = arg1;
        }
        if (arg2 != 0) {
            temp_v0->unk24->unk58 = arg2;
        }
        sp30 = temp_t0;
        func_80111ECC(temp_v0);
    }
    sp30 = temp_t0;
    if (func_80110150(&sp38) != 0) {
        D_800E83E0[omCurrentObj->objId] = (s32) sp38.unk2;
        sp30->unk43 = sp38.unk3;
    } else if (func_80110B00(&sp38) != 0) {
        D_800E83E0[omCurrentObj->objId] = (s32) sp38.unk2;
        sp30->unk43 = sp38.unk3;
    } else if (func_80110FD4(&sp38) != 0) {
        if (sp38.unk2 == 0xA) {
            D_800E83E0[omCurrentObj->objId] = 0;
            goto block_24;
        }
        D_800E83E0[omCurrentObj->objId] = (s32) sp38.unk2;
        sp30->unk43 = sp38.unk3;
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
block_24:
        sp30->unk43 = 0;
    }
    temp_a3 = omCurrentObj->objId;
    var_a3 = temp_a3 * 4;
    if (D_800E83E0[temp_a3] == 2) {
        D_800EBDA0[omCurrentObj->objId] = func_8019E0E8_ovl7(2U, 2U);
        temp_a3_2 = omCurrentObj->objId;
        var_a3 = temp_a3_2 * 4;
        if ((D_800EBDA0[temp_a3_2] != -1) && (D_800D6E5C != 0.0f)) {
            func_800BC11C(D_800E7B20[temp_a3_2]);
            var_a3 = omCurrentObj->objId * 4;
        }
    }
    if (sp28 != NULL) {
        (*(D_800E1B50 + var_a3))->unk8C = sp28;
        var_a3 = omCurrentObj->objId * 4;
    }
    return *(D_800E83E0 + var_a3);
}
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801E3A84_ovl13.s")
#endif
