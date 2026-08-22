#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "ovl1/ovl1_6.h"
#include "ovl18_1.h"
// #include "ovl18_3.h"
#include "ovl18_5.h"

void func_802218E4_ovl18(s32 arg0);
extern f32 D_8022BBC0_ovl18;
extern f32 D_8022BBC4_ovl18;
extern f32 D_8022BC00_ovl18;
extern f32 D_8022BC04_ovl18;
void func_80220F68_ovl18(s32 arg0);

void func_802201C0_ovl18(s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = &func_800B72AC;
    D_800DF150[omCurrentObj->objId] = &func_80220424_ovl18;
    func_801A0D50_ovl7(&func_802202B8_ovl18);
    D_800E8920[omCurrentObj->objId] = 0;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8022AB80_ovl18);
    while(1)
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, &D_8022AB80_ovl18[1]);
}

void func_802202B8_ovl18(s32 arg0) {
    while(1)
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, &D_8022AB80_ovl18[1]);
}

void func_80220338_ovl18(s32 arg0) {
    func_8021F4A0_ovl18();
    gEntitiesScaleZArray[omCurrentObj->objId] = 2.0f;
    gEntitiesScaleXArray[omCurrentObj->objId] = gEntitiesScaleYArray[omCurrentObj->objId] = gEntitiesScaleZArray[omCurrentObj->objId];
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_8022A184_ovl18;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_8022A940_ovl18;
    D_800E98E0[omCurrentObj->objId] = 0x1E;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_80220424_ovl18(void) {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7();
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 2, &D_8022AB80_ovl18[3]);
    func_8021F5CC_ovl18();
}

void func_80220490_ovl18(s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800B3520();
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    func_800A9EA4(0x10028);
    curObjSleepForever();
}

void func_802204F8_ovl18(s32 arg0) {
    if (D_800E98E0[omCurrentObj->objId] > 0) {
        D_800E98E0[omCurrentObj->objId] -= 1;
    }
    if ((D_800E98E0[omCurrentObj->objId] <= 0) && (eneCheckNearPlayer(D_8022BBC0_ovl18) != 0)) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_802202B8_ovl18);
    }
}

void func_802205AC_ovl18(s32 arg0) {
    f32 temp_f0;

    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800B3520();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    temp_f0 = func_801D650C_ovl9(arg0);
    D_800EADE0[omCurrentObj->objId] = temp_f0;
    if (0.0f < temp_f0) {
        D_800E6A10[omCurrentObj->objId] = 1.0f;
    } else {
        D_800E6A10[omCurrentObj->objId] = -1.0f;
    }
    func_800AA154(0x10028);
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    D_800EBBE0[omCurrentObj->objId] = func_801ACC34_ovl7(0x2E, 0);
    play_sound(0xA6);
    ohSleep(4);
    func_800AECC0(gameTicksPerDraw);
    do {
        func_800AED20(gameTicksPerDraw);
        func_800AA154(0x10023);
    } while (0);
    D_800E98E0[omCurrentObj->objId] = 0x1E;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_80220720_ovl18(s32 arg0) {

}

void func_80220728_ovl18(s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = &func_800B7138;
    D_800DF150[omCurrentObj->objId] = &func_80220AA8_ovl18;
    func_801A0D50_ovl7(&func_80220818_ovl18);
    D_800E8920[omCurrentObj->objId] = 0;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8022AB80_ovl18[5]);
    while(1)
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_8022AB80_ovl18[6]);
}

void func_80220818_ovl18(s32 arg0) {
    while(1)
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_8022AB80_ovl18[6]);
}

void func_80220898_ovl18(s32 arg0) {
    func_8021F4A0_ovl18();
    gEntitiesScaleZArray[omCurrentObj->objId] = 3.0f;
    gEntitiesScaleXArray[omCurrentObj->objId] = gEntitiesScaleYArray[omCurrentObj->objId] = gEntitiesScaleZArray[omCurrentObj->objId];
    D_800DEF90[omCurrentObj->objId] = &func_800B7138;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_8022A214_ovl18;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_8022A964_ovl18;
    D_800E6A10[omCurrentObj->objId] = -1.0f;
    D_800EADE0[omCurrentObj->objId] = D_8022BBC4_ovl18;
    D_800EAFA0[omCurrentObj->objId] = -1.0f;
    D_800EB160[omCurrentObj->objId] = 240.0f;
    D_800EB320[omCurrentObj->objId] = 0.0f;
    D_800E98E0[omCurrentObj->objId] = D_800E5F90[omCurrentObj->objId];
    D_800EA6E0[omCurrentObj->objId] = D_800E6BD0[omCurrentObj->objId];

    D_800EA8A0[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId];
    D_800EAA60[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
    D_800EAC20[omCurrentObj->objId] = gEntitiesNextPosZArray[omCurrentObj->objId];
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_80220AA8_ovl18(s32 arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 1, &D_8022AB80_ovl18[7]);
    func_80220F68_ovl18(0xC);
    func_801A239C_ovl7();
}

extern f32 D_8022BBC8_ovl18;
extern u32 D_800D7098;
extern f32 D_8022BBCC_ovl18, D_8022BBD0_ovl18;
extern f32 D_8022BBD4_ovl18, D_8022BBD8_ovl18;
void func_80199F1C_ovl7(s32);
s32 func_800F9974(s32 *arg0, f32 *arg1, f32 arg2);
void func_80220B00_ovl18(s32 arg0)
{
  f32 temp_f0;
  f32 phi_f12;
  f32 temp_f20;
  f32 temp_f24;
  f32 temp_f26;
  f32 temp_f28;
  f32 temp_f30;
  D_800DDFD0[omCurrentObj->objId] = 0;
 func_800A9EA4(0x10091); temp_f20 = D_8022BBC8_ovl18; while (1) { if (D_800D7098 == 0) { temp_f28 = cosf(D_800EB320[omCurrentObj->objId]) * D_800EB160[omCurrentObj->objId];
      temp_f30 = sinf(D_800EB320[omCurrentObj->objId]) * D_800EB160[omCurrentObj->objId];
      D_800EB320[omCurrentObj->objId] += D_800EADE0[omCurrentObj->objId] * (-D_800EAFA0[omCurrentObj->objId]);
      while (D_800EB320[omCurrentObj->objId] >= temp_f20)
      {
        D_800EB320[omCurrentObj->objId] -= temp_f20;
      }

      while (D_800EB320[omCurrentObj->objId] < 0.0f)
      {
        D_800EB320[omCurrentObj->objId] += temp_f20;
      }

      temp_f24 = cosf(D_800EB320[omCurrentObj->objId]);
      temp_f24 = temp_f24 * D_800EB160[omCurrentObj->objId];
      temp_f0 = sinf(D_800EB320[omCurrentObj->objId]);
      temp_f26 = temp_f0 * D_800EB160[omCurrentObj->objId];
      D_800E5F90[omCurrentObj->objId] = D_800E98E0[omCurrentObj->objId];
      D_800E6BD0[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
      gEntitiesNextPosYArray[omCurrentObj->objId] = D_800EAA60[omCurrentObj->objId];
      func_800F9974(&D_800E5F90[omCurrentObj->objId], &D_800E6BD0[omCurrentObj->objId], temp_f28);
      gEntitiesNextPosYArray[omCurrentObj->objId] += temp_f30;
      D_800E6150[omCurrentObj->objId] = D_800E5F90[omCurrentObj->objId];
      D_800E6D90[omCurrentObj->objId] = D_800E6BD0[omCurrentObj->objId];
      gEntitiesPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
      D_800E64D0[omCurrentObj->objId] = temp_f24 - temp_f28;
      D_800E3210[omCurrentObj->objId] = temp_f26 - temp_f30;
      if (D_8022BBCC_ovl18 <= D_800EB320[omCurrentObj->objId])
      {
        if (D_800EB320[omCurrentObj->objId] <= D_8022BBD0_ovl18)
        {
          if (D_800E6A10[omCurrentObj->objId] == (-1.0f))
          {
            func_80199F1C_ovl7(arg0);
          }
        }
      }
      if ((D_8022BBD4_ovl18 <= D_800EB320[omCurrentObj->objId]) || (D_800EB320[omCurrentObj->objId] <= D_8022BBD8_ovl18))
      {
        if (D_800E6A10[omCurrentObj->objId] == 1.0f)
        {
          func_80199F1C_ovl7(arg0);
        }
      }
    }
    ohSleep(1);
  }

}

void func_80220F48_ovl18(s32 arg0) {
    func_8021F5CC_ovl18();
}

extern char D_8022BBA0_ovl18[];
extern f32 D_8022BBDC_ovl18, D_8022BBE0_ovl18;
extern f32 D_8022BBE4_ovl18, D_8022BBE8_ovl18;
extern f32 D_8022BBEC_ovl18, D_8022BBF0_ovl18;
extern f32 D_8022BBF4_ovl18, D_8022BBF8_ovl18;
void utilPrintf(char *fmt, ...);
void func_8019BC94_ovl7(void);

void func_80220F68_ovl18(s32 arg0) {
    EnemyRecord *temp_t0;
    f32 var_f0;
    s32 temp_a0;
    s32 var_v0;

    temp_t0 = D_800E1B50[omCurrentObj->objId];
    if (temp_t0->unk3C != 0) {
        if (arg0 == 1) {
            D_800E6A10[omCurrentObj->objId] *= -1.0f;
            temp_t0->unk3C = 0;
            func_8019BC94_ovl7();
            return;
        }
        if ((arg0 % 2) == 1) {
            utilPrintf(D_8022BBA0_ovl18);
            arg0 += 1;
        }
        var_v0 = temp_t0->unk3C;
        temp_a0 = arg0 / 2;
        if (var_v0 < temp_a0) {
            if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
                var_f0 = D_8022BBDC_ovl18 / arg0;
            } else {
                var_f0 = -(D_8022BBE0_ovl18 / arg0);
            }
            D_800E9020[omCurrentObj->objId] -= var_f0;
        } else if (temp_a0 == var_v0) {
            if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
                var_f0 = D_8022BBE4_ovl18;
                D_800E9020[omCurrentObj->objId] -= D_8022BBE8_ovl18 / arg0;
                D_800E17D0[omCurrentObj->objId] += var_f0;
                D_800E9020[omCurrentObj->objId] += var_f0;
            } else {
                var_f0 = D_8022BBEC_ovl18;
                D_800E9020[omCurrentObj->objId] += D_8022BBF0_ovl18 / arg0;
                D_800E17D0[omCurrentObj->objId] -= var_f0;
                D_800E9020[omCurrentObj->objId] -= var_f0;
            }
            D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
        } else if (var_v0 < arg0) {
            if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
                var_f0 = D_8022BBF4_ovl18 / arg0;
            } else {
                var_f0 = -(D_8022BBF8_ovl18 / arg0);
            }
            D_800E9020[omCurrentObj->objId] += var_f0;
        } else {
            D_800E9020[omCurrentObj->objId] = 0.0f;
            temp_t0->unk3C = 0;
            func_8019BC94_ovl7();
            return;
        }
        temp_t0->unk3C += 1;
    }
}

void func_80221288_ovl18(s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = &func_800B72AC;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8022AB80_ovl18[8]);
}

void func_802212E8_ovl18(s32 arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_8022AB80_ovl18[9]);
}



void func_80221330_ovl18(s32 arg0) {
    struct EnemyRecord *sp1C = D_800E1B50[omCurrentObj->objId];
    func_8021F4A0_ovl18();
    sp1C->unk98 = &D_8022A988_ovl18;
    D_800DF150[omCurrentObj->objId] = &func_80221440_ovl18;
    gEntitiesScaleZArray[omCurrentObj->objId] = 2.0f;
    gEntitiesScaleXArray[omCurrentObj->objId] = gEntitiesScaleYArray[omCurrentObj->objId] = gEntitiesScaleZArray[omCurrentObj->objId];;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801A0D50_ovl7(&func_802212E8_ovl18);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_8022AB80_ovl18[9]);
}

void func_80221440_ovl18(void) {
    if (func_801A0D74_ovl7() == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 1, &D_8022AB80_ovl18[10]);
    }
    func_8021F5CC_ovl18();
}

extern f32 D_8022BBFC_ovl18;
#ifdef NON_MATCHING
void func_80221498_ovl18(s32 arg0) {
    f32 temp_f20;
    u32 phi_a0;

    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B3520();
    temp_f20 = D_8022BBFC_ovl18;
    while (TRUE) {
        D_800E8920[omCurrentObj->objId] = 0;
        func_800AECC0(gameTicksPerDraw * temp_f20);
        func_800AED20(gameTicksPerDraw * temp_f20);
        func_800A9EA4((D_800E6A10[omCurrentObj->objId] == 1.0f) ? 0x000101B6 : 0x000101B4);
        D_800E3210[omCurrentObj->objId] = 4.5f;
        D_800E3750[omCurrentObj->objId] = -0.25f;
        D_800E3C90[omCurrentObj->objId] = 4.5f;
        play_sound(0x167);
        while (D_800E8920[omCurrentObj->objId] == 0) {
            ohSleep(1);
        }
        D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl18/code_232B60/func_80221498_ovl18.s")
#endif

void func_802216C0_ovl18(s32 arg0) {

}

void func_802216C8_ovl18(s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = &func_800B7790;
    D_800E9720[omCurrentObj->objId] = 0xF;
    D_800E9560[omCurrentObj->objId] = 1;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8022AB80_ovl18[11]);
}

void func_80221758_ovl18(s32 arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, &D_8022AB80_ovl18[12]);
}

void func_802217A0_ovl18(s32 arg0) {
    func_8021F4A0_ovl18();
    func_801A3280_ovl7();
    D_800DF150[omCurrentObj->objId] = &func_802218E4_ovl18;
    gEntitiesScaleZArray[omCurrentObj->objId] = 2.0f;
    gEntitiesScaleXArray[omCurrentObj->objId] =
    gEntitiesScaleYArray[omCurrentObj->objId] = gEntitiesScaleZArray[omCurrentObj->objId];
    gEntitiesNextPosYArray[omCurrentObj->objId] -= 110.0f;
    D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
    D_800EA8A0[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId] + 60.0f;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, &D_8022AB80_ovl18[12]);
}

void func_802218E4_ovl18(s32 arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 4, &D_8022AB80_ovl18[16]);
    func_8021F5CC_ovl18();
}

void func_80221934_ovl18(s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AA018(0x1017C);
    gEntitiesNextPosXArray[omCurrentObj->objId] = (D_800E9560[omCurrentObj->objId] == -1.0f) ? -64.0f : 64.0f;
    D_800E9560[omCurrentObj->objId] = -D_800E9560[omCurrentObj->objId];
    curObjSleepForever(&D_800E9560);
}


void func_80221A04_ovl18(s32 arg0) {
    if (D_800E9720[omCurrentObj->objId] == 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_80221758_ovl18);
    } else D_800E9720[omCurrentObj->objId]--;
}

void func_80221A84_ovl18(s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E9720[omCurrentObj->objId] = 0x1E;
    curObjSleepForever();
}


void func_80221ADC_ovl18(s32 arg0) {
    if (D_800E9720[omCurrentObj->objId] == 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_80221758_ovl18);
    } else D_800E9720[omCurrentObj->objId]--;
}

void func_80221B5C_ovl18(s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E3210[omCurrentObj->objId] = 10.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    play_sound(0x16A);
    curObjSleepForever();
}

void func_80221BF0_ovl18(s32 arg0) {
    if (D_800EA8A0[omCurrentObj->objId] <= gEntitiesNextPosYArray[omCurrentObj->objId]) {
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = D_8022BC00_ovl18;
        gEntitiesNextPosYArray[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_80221758_ovl18);
    }
}

void func_80221CE8_ovl18(s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E3210[omCurrentObj->objId] = -10.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    curObjSleepForever();
}

void func_80221D78_ovl18(s32 arg0) {
    if (gEntitiesNextPosYArray[omCurrentObj->objId] <= D_800EA6E0[omCurrentObj->objId]) {
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = D_8022BC04_ovl18;
        gEntitiesNextPosYArray[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
        D_800E9720[omCurrentObj->objId] = 0xF;
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_80221758_ovl18);
    }
}
