#include "common.h"

#include <macros.h>
#include "GObj.h"
#include "DObj.h"
#include "ovl1/ovl1_6.h"
#include "unk_structs/D_800E1B50.h"
#include "unk_structs/D_800D7098.h"
#include "unk_structs/D_800DE350.h"
#include "unk_structs/D_80129114.h"
#include "buffers.h"
#include "ovl2/ovl2_8.h"

#include "ovl12.h"

#define M_TAU (2 * M_PIF)

u8 func_801DCAB0_ovl12(void);
/* func_801DB910_ovl12 calls this one 500 lines before its definition, so
   without a forward declaration the call is an implicit `int f()` -- which
   then CONTRADICTS the `void` definition and is a hard IDO error the moment
   the draft down there is un-guarded (LEVERS 49). That is the whole reason
   func_801DB944_ovl12's draft had never been scored. Adding the real
   prototype is byte-inert for the N64 build (objdump A/B on
   build/src/ovl12/code_1EB520.o: .text identical). */
void func_801DB944_ovl12(void);

extern f32 D_801E2AA0_ovl12[4];
extern f32 D_801E2AB0_ovl12[4];
extern void (*D_801E2AC0_ovl12[5])(struct GObj *);
extern void (*D_801E2AD4_ovl12[6])(struct GObj *);
extern void (*D_801E2AEC_ovl12[6])(struct GObj *);
extern void (*D_801E2B04_ovl12[7])(struct GObj *);
extern void (*D_801E2B20_ovl12[7])(struct GObj *);
extern void (*D_801E2B3C_ovl12[6])(struct GObj *);
extern void (*D_801E2B54_ovl12[6])(struct GObj *);
extern void (*D_801E2B6C_ovl12[5])(struct GObj *);
extern void (*D_801E2B80_ovl12[5])(struct GObj *);
extern u32 *D_801E2BDC_ovl12[9];
extern u32 *D_801E2C00_ovl12[9];
extern u32 *D_801E2C54_ovl12[9];
extern u32 *D_801E2C78_ovl12[9];
extern void (*D_801E2C9C_ovl12[0xA])(struct GObj *);
extern void (*D_801E2CC4_ovl12[10])(struct GObj *);



void func_801DB200_ovl12(GObj *obj) {
    struct EnemyRecord *v0 = D_800E1B50[omCurrentObj->objId];
    obj->onAnimate = func_800B113C;
    D_800DEF90[omCurrentObj->objId] = func_801D152C_ovl8;
    func_800FF0A8(v0->unk80);
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], ARRAYLEN(D_801E2AC0_ovl12), D_801E2AC0_ovl12);
}

void func_801DB294_ovl12(struct GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], ARRAYLEN(D_801E2AD4_ovl12), D_801E2AD4_ovl12);
}

void func_801DB2DC_ovl12(GObj *arg0) {
    D_800DDA90[omCurrentObj->objId] = 0x23;
    D_800D7098.unk28 = omCurrentObj->objId;
    D_800DEF90[omCurrentObj->objId] = NULL;
    D_800DF150[omCurrentObj->objId] = func_801DB3F8_ovl12;
    func_800A9760(0x10070);
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E93A0[omCurrentObj->objId] = 0;
    D_800E9560[omCurrentObj->objId] = D_800E93A0[omCurrentObj->objId];
    D_800D7098.unk14 = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], ARRAYLEN(D_801E2AD4_ovl12), D_801E2AD4_ovl12);
    curObjSleepForever();
}

void func_801DB3F8_ovl12(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], ARRAYLEN(D_801E2AEC_ovl12), D_801E2AEC_ovl12);
    if ((D_800E9C60[D_800D7098.unk1C] == 1) && (D_800E9C60[omCurrentObj->objId] == 1)) {
        func_800BC11C(D_800D70D8.unk4);
    }
}

void func_801DB494_ovl12(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    curObjSleepForever();
}

void func_801DB4D0_ovl12(GObj *arg0) {
    if (func_801DCAB0_ovl12() == 1) {
        D_800D7098.unk10 = 0;
        D_800D7098.unk8 = 0;
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB294_ovl12);
    }
}

void func_801DB544_ovl12(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E9AA0[omCurrentObj->objId] = NULL;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800D70D8.unk4 = 12.0f;
    D_800D7098.unk18 = 3;
    while (D_800E9C60[D_800D7098.unk1C] != 1) {
        ohSleep(1);
    }
    ohSleep(0x3C);
    func_800BC1FC(D_800D70D8.unk4);
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801DB66C_ovl12(GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB294_ovl12);
    }
}

void func_801DB6D8_ovl12(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800EA360[omCurrentObj->objId] = 0;
    curObjSleepForever();
}

// https://decomp.me/scratch/Akgwm
#ifdef NON_MATCHING
void func_801DB72C_ovl12(void) {
    s32 temp_a1;
    s32 track;
    s32 i;
    s32 var_v0;

    if (D_800D7098.unk18 != -1) {
        for (i = 0; i < 3; i++) {
            track = func_801ACC34_ovl7(0x29, 0);
            if (track != 0) {
                D_800EA520[track] = i + 1;
                gEntitiesNextPosYArray[track] = gEntitiesNextPosYArray[D_800D7098.unk0] - 10.0f;
                temp_a1 = i * 2;
                var_v0 = temp_a1 + 3;
                D_800EA6E0[track] = gEntitiesNextPosYArray[track] + 80.0f;
                D_800E5F90[track] = 0;
                D_800E6BD0[track] = 0.0f;
                if (D_800EC2E0[omCurrentObj->objId].as_s32 == 2) {
                    var_v0 = temp_a1;
                }
                if (var_v0 >= 6) {
                    var_v0 -= 6;
                }
                func_800F98EC(track, ((var_v0 * 7.854f) + 3.927f) * 40.0f);
                play_sound(0x180);
            }
        }
    }
}
#else
void func_801DB72C_ovl12(void);
#pragma GLOBAL_ASM("asm/nonmatchings/ovl12/code_1EB520/func_801DB72C_ovl12.s")
#endif

void func_801DB910_ovl12(GObj *arg0) {
    if (D_800D7098.unk14 == 0) {
        D_800D7098.unk2C = 0;
        func_801DB944_ovl12();
    }
}

#ifdef NON_MATCHING
/* FACTORY: 74/82 -- MEASURED 2026-08-25, and the first measurement this draft
   has ever had. It carried no note, only m2c's provenance line, because it
   could not be measured: un-guarding it made the TU fail to compile on
   "redeclaration of 'func_801DB944_ovl12' ... Incompatible function return
   type", the implicit `int f()` created by the bare call in
   func_801DB910_ovl12 five hundred lines above. That is fixed at file scope
   now (see the prototype at the top of the file, .text-inert).
   74 of 82 words differ, so this is raw m2c and nowhere near matching -- the
   word count is 82 against the ROM's 82, which is the only thing right about
   it. Do not queue it for the permuter. */
//generated by mips_to_c commit 3c3b0cede1a99430bfd3edf8d385802b94f91307

void func_801DB944_ovl12(void) {
    s32 *var_a3;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a1;
    s32 var_v0;
    s32 var_v1;
    struct GObj *temp_a2;
    u32 temp_a0;
    u32 temp_a0_2;

    if (random_soft_s32_range(8) >= 6) {
        var_v1 = 3;
    } else {
        var_v0 = 1;
        if (random_soft_s32_range(8) >= 3) {
            var_v0 = 2;
        }
        var_v1 = var_v0;
    }
    temp_a2 = omCurrentObj;
    temp_a0 = temp_a2->objId;
    var_a3 = &D_800E9560[temp_a0];
    var_a1 = D_800E93A0[temp_a0];
    temp_v0 = *var_a3;
    if (temp_v0 == var_a1) {
        temp_v0_2 = var_v1 + 1;
        if (var_v1 == temp_v0) {
            var_v1 = temp_v0_2;
            if (temp_v0_2 >= 4) {
                var_v1 = 1;
            }
        }
    }
    if ((var_v1 == var_a1) && (var_v1 == 3)) {
        temp_a0_2 = omCurrentObj->objId;
        var_v1 = random_soft_s32_range(2) + 1;
        var_a1 = D_800E93A0[temp_a0_2];
        var_a3 = &D_800E9560[temp_a0_2];
    }
    *var_a3 = var_a1;
    D_800E93A0[temp_a2->objId] = var_v1;
    D_800D7098.unk14 = var_v1;
    if (var_v1 == 3) {
        gEntityFuncListIDArray[temp_a2->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[temp_a2->objId], func_801DB294_ovl12);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl12/code_1EB520/func_801DB944_ovl12.s")
#endif
// https://decomp.me/scratch/eXNJ2
#ifdef NON_MATCHING
/* FACTORY: 61/106 -- MEASURED 2026-08-25, and the first measurement this draft
   has ever had. It carried no note: un-guarding it failed to compile on
   "redeclaration of 'func_801DBDA8_ovl12'", the implicit `int f()` from the
   bare call inside this very body. One in-body prototype fixes it. */
void func_801DBA88_ovl12(GObj *arg0) {
    /* In-body: this draft calls func_801DBDA8_ovl12 ~40 lines before its
       definition, so with nothing in scope the call is an implicit `int f()`
       that contradicts the `void` definition and IDO refuses the whole TU
       (LEVERS 49). In-body rather than file-scope because the N64 build has no
       call site before the definition and must keep seeing none. */
    void func_801DBDA8_ovl12(void);

    D_800DEF90[omCurrentObj->objId] = func_801D152C_ovl8;
    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E9AA0[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800EA1A0[omCurrentObj->objId] = 0;
    D_800EA6E0[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    while (D_800E9560[D_800D7098.unk1C] != 1) {
        ohSleep(1);
    }
    func_801DBDA8_ovl12();
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl12/code_1EB520/func_801DBA88_ovl12.s")
#endif


void func_801DBC2C_ovl12(GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        func_801DC378_ovl12();
        if (D_800EB320[omCurrentObj->objId] >= 0.0125f) {
            func_801DECD4_ovl12();
            return;
        }
        D_800EA360[omCurrentObj->objId] = 1;
        gEntityFuncListIDArray[omCurrentObj->objId] = 4;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB294_ovl12);
    }
}

void func_801DBD00_ovl12(void) {
    if (D_800EC2E0[omCurrentObj->objId].as_s32 != 0) {
        if (D_800E9720[omCurrentObj->objId] == 0) {
            func_801DB72C_ovl12();
            D_800E9720[omCurrentObj->objId] = 15;
            D_800EC2E0[omCurrentObj->objId].as_s32--;
        } else {
            D_800E9720[omCurrentObj->objId]--;
        }
    }
}

void func_801DBDA8_ovl12(void) {
    u32 tmp[2];
    Vector posVec;

    D_800EB320[omCurrentObj->objId] = 1.0f;
    D_800E5F90[omCurrentObj->objId] = 0;
    D_800E6BD0[omCurrentObj->objId] = D_800E6BD0[0];
    D_800E6A10[omCurrentObj->objId] = D_800E6A10[D_800D7098.unk1C];
    posVec.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    posVec.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    func_800F98EC(omCurrentObj->objId, 942.0f);
    func_800F8E6C(D_800DE350[omCurrentObj->objId]);
    gEntitiesNextPosXArray[omCurrentObj->objId] = posVec.x;
    gEntitiesNextPosZArray[omCurrentObj->objId] = posVec.z;
    gEntitiesAngleYArray[omCurrentObj->objId] =
        D_800E17D0[omCurrentObj->objId]
        + (D_800E6A10[omCurrentObj->objId] * -(M_PIF / 2))
        ;
    while (gEntitiesAngleYArray[omCurrentObj->objId] >= M_TAU) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }
    D_800EAA60[omCurrentObj->objId] = -gEntitiesAngleYArray[omCurrentObj->objId];
    func_801DC094_ovl12();
}

// https://decomp.me/scratch/QLRcY
void func_801DBFAC_ovl12(void) {
    f32 temp;

    D_800E64D0[omCurrentObj->objId] = 0.0;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.5f;
    temp = D_801E2AB0_ovl12[D_800D7098.unk18];
    if (temp < 0.0f) {
        D_800E6850[omCurrentObj->objId] = -temp;
    } else {
        D_800E6850[omCurrentObj->objId] = temp;
    }
    D_800E6850[omCurrentObj->objId] = ((D_800E6850[omCurrentObj->objId] * 2) + 2.0f) * 0.75f;
}

void func_801DC094_ovl12(void) {
    struct DObj *lo0;
    struct DObj *lo1;
    struct DObj *lo2;

    lo0 = D_800DFBD0[omCurrentObj->objId][2];
    lo1 = D_800DFBD0[omCurrentObj->objId][3];
    lo2 = D_800DFBD0[omCurrentObj->objId][4];
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[D_800D7098.unk0] + 100.0f;
    lo0->pos.v.x = gEntitiesNextPosXArray[D_800D7098.unk1C];
    lo0->pos.v.z = gEntitiesNextPosZArray[D_800D7098.unk1C];
    lo1->pos.v.x = gEntitiesNextPosXArray[D_800D7098.unk20];
    lo1->pos.v.z = gEntitiesNextPosZArray[D_800D7098.unk20];
    lo2->pos.v.x = gEntitiesNextPosXArray[D_800D7098.unk24];
    lo2->pos.v.z = gEntitiesNextPosZArray[D_800D7098.unk24];
}

void func_801DC17C_ovl12(void) {
    struct DObj *temp_v0 = D_800DE350[omCurrentObj->objId]->data.dobj->firstChild;

    if ((temp_v0->angle.v.z < 1.5707964f) || (temp_v0->angle.v.z > 4.712389f)) {
        temp_v0->angle.v.z += (0.10471976f * -D_800E6A10[omCurrentObj->objId]);
    } else {
        D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
    }
    while (temp_v0->angle.v.z >= 6.2831855f) {
        temp_v0->angle.v.z -= 6.2831855f;
    }
    while (temp_v0->angle.v.z < 0.0f) {
        temp_v0->angle.v.z += 6.2831855f;
    }
}

void func_801DC278_ovl12(void) {
    struct DObj *temp_v0 = D_800DE350[omCurrentObj->objId]->data.dobj->firstChild;

    if ((temp_v0->angle.v.z <= 0.10471976f) || (temp_v0->angle.v.z >= 6.1784654f)) {
        D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
        temp_v0->angle.v.z = 0.0f;
    } else {
        temp_v0->angle.v.z -= (0.10471976f * -D_800E6A10[omCurrentObj->objId]);
    }
    while (temp_v0->angle.v.z >= 6.2831855f) {
        temp_v0->angle.v.z -= 6.2831855f;
    }
    while (temp_v0->angle.v.z < 0.0f) {
        temp_v0->angle.v.z += 6.2831855f;
    }
}

void func_801DC378_ovl12(void) {
    struct DObj *temp_v0 = D_800DE350[omCurrentObj->objId]->data.dobj->firstChild;

    temp_v0->angle.v.y = D_800EAA60[omCurrentObj->objId];
    temp_v0->angle.v.y += (0.10471976f * D_800E6A10[omCurrentObj->objId] * D_800EA1A0[omCurrentObj->objId]);
    D_800EA1A0[omCurrentObj->objId]++;
    if (D_800EA1A0[omCurrentObj->objId] == 0x3C) {
        D_800EA1A0[omCurrentObj->objId] = 0;
    }
    while (temp_v0->angle.v.y >= 6.2831855f) {
        temp_v0->angle.v.y -= 6.2831855f;
    }
    while (temp_v0->angle.v.y < 0.0f) {
        temp_v0->angle.v.y += 6.2831855f;
    }
}

void func_801DC4A8_ovl12(GObj *arg0) {
    s32 var_s0;

    D_800E9720[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 4;
    D_800E9E20[omCurrentObj->objId] = 0;
    var_s0 = 360;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    func_801DBFAC_ovl12();

    while (D_800E9E20[omCurrentObj->objId] == 0) {
        ohSleep(1);
        var_s0 -= 1;
        if ((var_s0 == 0) || (D_800D7098.unk18 == -1)) {
            D_800E9E20[omCurrentObj->objId] = 1;
        }
    }
    D_800E6690[omCurrentObj->objId] = -D_800E6690[omCurrentObj->objId];
    curObjSleepForever();
}

void func_801DC5F4_ovl12(GObj *arg0) {
    f32 var_f12;
    f32 var_f2;

    if (D_800E9720[omCurrentObj->objId] == 0) {
        play_sound(0x1B9);
        D_800E9720[omCurrentObj->objId] = 0x50;
    } else {
        D_800E9720[omCurrentObj->objId]--;
    }

    func_801DC378_ovl12();

    if (D_800E9FE0[omCurrentObj->objId].as_s32 == 0) {
        func_801DC17C_ovl12();
    }
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        var_f12 = ABSF(D_800E64D0[omCurrentObj->objId]);
        var_f2 = ABSF(D_800E6690[omCurrentObj->objId]);

        if (var_f12 < var_f2) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 5;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB294_ovl12);
        }
    }
}

void func_801DC750_ovl12(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 5;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800D7098.unk2C = 1;
    curObjSleepForever(D_800E6690);
}

void func_801DC804_ovl12(GObj *arg0) {
    func_801DC378_ovl12();
    if (D_800E9FE0[omCurrentObj->objId].as_s32 == 0) {
        func_801DC278_ovl12();
    } else if (D_800EB320[omCurrentObj->objId] < 1.0f) {
        func_801DC8CC_ovl12();
    } else {
        D_800EA360[omCurrentObj->objId] = 2;
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB294_ovl12);
    }
}

void func_801DC8CC_ovl12(void) {
    D_800EB320[omCurrentObj->objId] += 0.025f;
    if (D_800EB320[omCurrentObj->objId] > 1.0f) {
        D_800EB320[omCurrentObj->objId] = 1.0f;
    }
}

// https://decomp.me/scratch/J5YmU
void func_801DC930_ovl12(void) {
    struct EnemyRecord *temp_v0 =  D_800E1B50[omCurrentObj->objId];
    f32 x = 0.0f - temp_v0->unk0;
    f32 z = 0.0f - temp_v0->unk8;

    D_800E2090[omCurrentObj->objId] = x;
    D_800E2410[omCurrentObj->objId] = z;
    D_800E2250[omCurrentObj->objId] = 0;
    D_800EB320[omCurrentObj->objId] = 1.0f;
    if (D_800E7880[omCurrentObj->objId] == 1) {
        D_800D7098.unk10 = 0;
        D_800D7098.unkC = 0;
    }
}

void func_801DC9E8_ovl12(void) {
    D_800EB320[omCurrentObj->objId] -= 0.025f;
    if (D_800EB320[omCurrentObj->objId] < 0.025f) {
        D_800EB320[omCurrentObj->objId] = 0.0f;
    }
}

void func_801DCA4C_ovl12(void) {
    D_800EB320[omCurrentObj->objId] += 0.025f;
    if (D_800EB320[omCurrentObj->objId] > 0.55f) {
        D_800EB320[omCurrentObj->objId] = 0.55f;
    }
}

u8 func_801DCAB0_ovl12(void) {
    D_800E98E0[omCurrentObj->objId] = 0;
    if ((gEntitiesNextPosYArray[omCurrentObj->objId] - 40.0f) <= gEntitiesNextPosYArray[D_800D7098.unk0]) {
        D_800E98E0[omCurrentObj->objId] = 1;
        D_800E6A10[omCurrentObj->objId] = D_800E6A10[D_800D7098.unk1C];
        D_800E64D0[omCurrentObj->objId] = 0.0f;
        D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.5f;
        D_800E6850[omCurrentObj->objId] = 5.0f;
        D_800D7098.unk8 = 0;
        *(s32 *) &D_800D7098.unk10 = 1;
    }
    return D_800E98E0[omCurrentObj->objId];
}

void func_801DCBC4_ovl12(void) {
    if (D_800E9720[omCurrentObj->objId] != 0) {
        D_800E9720[omCurrentObj->objId]--;
    } else {
        D_800E6690[omCurrentObj->objId] = -D_800E6690[omCurrentObj->objId];
        D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
        D_800E9720[omCurrentObj->objId] = 180;
    }
}

void func_801DCC48_ovl12(void) {
    s32 track;

    track = func_801ACD48_ovl7(0x28, 0);
    if (track != 0) {
        D_800E98E0[track] = D_800E7880[omCurrentObj->objId];
        D_800E9560[omCurrentObj->objId]++;
        D_800D7098.unk8 = 1;
    }
}

void func_801DCCC4_ovl12(void) {
    struct DObj *temp_v0 = D_800DE350[omCurrentObj->objId]->data.dobj->firstChild;

    if (D_800D7098.unkC != 1) {
        D_800D7098.unkC = 1;
    }
    if (D_800E9AA0[omCurrentObj->objId] != 0) {
        temp_v0->angle.v.x += 0.13962634f;
    }
    while (temp_v0->angle.v.x >= 6.2831855f) {
        temp_v0->angle.v.x -= 6.2831855f;
    }
}

void func_801DCD70_ovl12(void) {
    struct DObj *temp_v0 = D_800DE350[omCurrentObj->objId]->data.dobj->firstChild;

    if (temp_v0->angle.v.x <= 0.01f) {
        temp_v0->angle.v.x = 0.0f;
        D_800E9AA0[omCurrentObj->objId] = 0;
        if (D_800E7880[omCurrentObj->objId] == 1) {
            D_800D7098.unkC = 0;
        }
    }
}

void func_801DCDFC_ovl12(void) {
    if (ABSF(D_800EA6E0[omCurrentObj->objId]) >= 6.0f) {
        D_800EA8A0[omCurrentObj->objId] = -D_800EA8A0[omCurrentObj->objId];
    }
}

void func_801DCE6C_ovl12(f32 arg0) {
    struct EnemyRecord *sp24 = D_800E1B50[omCurrentObj->objId];
    Vector sp18; // vec
    

    D_800E5F90[omCurrentObj->objId] = D_800E5F90[D_800D7098.unk1C];
    D_800E6BD0[omCurrentObj->objId] = D_800E6BD0[D_800D7098.unk1C];
    sp18.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    sp18.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    func_800F98EC(omCurrentObj->objId, D_800E6A10[D_800D7098.unk1C] * arg0);
    func_800F8E6C(D_800DE350[omCurrentObj->objId]);
    sp24->unk0 = gEntitiesNextPosXArray[omCurrentObj->objId];
    sp24->unk8 = gEntitiesNextPosZArray[omCurrentObj->objId];
    gEntitiesNextPosXArray[omCurrentObj->objId] = sp18.x;
    gEntitiesNextPosZArray[omCurrentObj->objId] = sp18.z;
    D_800D70D8.unk8 = D_800E6A10[D_800D7098.unk1C];
}

void func_801DCFE4_ovl12(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], ARRAYLEN(D_801E2B04_ovl12), D_801E2B04_ovl12);
}

void func_801DD02C_ovl12(GObj *arg0) {
    D_800DDA90[omCurrentObj->objId] = 0x24;
    D_800DF150[omCurrentObj->objId] = func_801DD110_ovl12;
    func_800A9760(0x10071);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800EA360[omCurrentObj->objId] = 1;
    D_800D7098.unk1C = omCurrentObj->objId;
    D_800D7098.unk8 = 0;
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 7, D_801E2B04_ovl12);
}

void func_801DD110_ovl12(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], ARRAYLEN(D_801E2B20_ovl12), D_801E2B20_ovl12);
}

void func_801DD158_ovl12(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9560[omCurrentObj->objId] = 1;
    func_801DC930_ovl12();
    curObjSleepForever();
}

void func_801DD1C8_ovl12(GObj *arg0) {
    if (D_800E98E0[omCurrentObj->objId] == 0) {
        func_801DCAB0_ovl12();
    }
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        if (D_800EB320[omCurrentObj->objId] >= 0.025f) {
            func_801DC9E8_ovl12();
        } else {
            gEntityFuncListIDArray[omCurrentObj->objId] = 1;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DCFE4_ovl12);
        }
    }
}

void func_801DD290_ovl12(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    while (D_800D7098.unkC != 0) {
        ohSleep(1);
    }
    ohSleep(0x1E);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801DD33C_ovl12(GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DCFE4_ovl12);
    }
}

void func_801DD3A8_ovl12(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E9720[omCurrentObj->objId] = 180;
    curObjSleepForever();
}

/* `s32 one; one = 1;` is load-bearing.  The ROM holds the literal 1 in an
   ALLOCATABLE register ($a0) shared by both `== 1` compares and the `+= 1`;
   spelled as three literals IDO re-materialises it into $at, which is not
   allocatable, so it has one more free temp and every temp in the function
   rotates one slot.  That is the 28/66 the old note called register-shaped.
   The distinction the note missed: an INITIALISER (`s32 one = 1;`) is folded
   back to the literal -- it has to be a separate assignment STATEMENT.
   Found by the permuter. */
void func_801DD400_ovl12(GObj *arg0) {
    s32 temp = gEntityFuncListIDArray[omCurrentObj->objId] + D_800E9560[omCurrentObj->objId];
    s32 one;

    one = 1;
    if ((D_800D7098.unk8 == one) || (D_800D7098.unk10 == 0)) {
        D_800E9560[omCurrentObj->objId] += one;
        gEntityFuncListIDArray[omCurrentObj->objId] = temp;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DCFE4_ovl12);
    } else {
        if (D_800D7098.unk10 == 0) {
            func_801DCDFC_ovl12();
        }
        if ((D_800D7098.unkC == one) && ((s32) D_800E9AA0[omCurrentObj->objId] == 1)) {
            func_801DCCC4_ovl12();
            func_801DCD70_ovl12();
        }
    }
}

void func_801DD508_ovl12(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 3;
    func_801DCC48_ovl12();
    D_800E9720[omCurrentObj->objId] = 180;
    curObjSleepForever();
}

void func_801DD56C_ovl12(GObj *arg0) {
    if (D_800D7098.unk8 == 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DCFE4_ovl12);
    } else {
        func_801DCBC4_ovl12();
    }
}

void func_801DD5E4_ovl12(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 4;
    D_800E9AA0[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801DD63C_ovl12(GObj *arg0) {
    if (D_800D7098.unk8 == 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DCFE4_ovl12);
    } else {
        func_801DCBC4_ovl12();
        func_801DCCC4_ovl12();
    }
}

void func_801DD6BC_ovl12(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 5;
    D_800E9720[omCurrentObj->objId] = 180;
    D_800EA6E0[omCurrentObj->objId] = 6.0f;
    D_800EA8A0[omCurrentObj->objId] = -0.25f;
    curObjSleepForever();
}

void func_801DD74C_ovl12(GObj *arg0) {
    if (D_800D7098.unk8 == 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DCFE4_ovl12);
    } else {
        func_801DCBC4_ovl12();
        func_801DCDFC_ovl12();
    }
}

void func_801DD7CC_ovl12(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 6;
    while (D_800E3210[D_800D7098.unk0] != 0.0f) {
        ohSleep(1);
    }
    ohSleep(0x3C);
    D_800EA8A0[omCurrentObj->objId] = 0;
    D_800EA6E0[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    D_800E7880[omCurrentObj->objId] = 4;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], ARRAYLEN(D_801E2AC0_ovl12), D_801E2AC0_ovl12);
    curObjSleepForever();
}

void func_801DD8FC_ovl12(GObj *arg0) {
    func_801DCDFC_ovl12();
    func_801DCA4C_ovl12();
}

void func_801DD924_ovl12(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], ARRAYLEN(D_801E2B3C_ovl12), D_801E2B3C_ovl12);
}

void func_801DD96C_ovl12(GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801DDA30_ovl12;
    func_800A9760(0x10072);
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800EA360[omCurrentObj->objId] = 2;
    D_800D7098.unk20 = omCurrentObj->objId;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], ARRAYLEN(D_801E2B3C_ovl12), D_801E2B3C_ovl12);
}

void func_801DDA30_ovl12(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], ARRAYLEN(D_801E2B54_ovl12), D_801E2B54_ovl12);
}

void func_801DDA78_ovl12(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9560[omCurrentObj->objId] = 2;
    func_801DC930_ovl12();
    curObjSleepForever();
}

void func_801DDAE8_ovl12(GObj *arg0) {
    if ((D_800E98E0[omCurrentObj->objId] == 0) && (func_801DCAB0_ovl12() != 0)) {
        func_801DCE6C_ovl12(502.40002f);
    }
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        if (D_800EB320[omCurrentObj->objId] >= 0.025f) {
            func_801DC9E8_ovl12();
        } else {
            gEntityFuncListIDArray[omCurrentObj->objId] = 1;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DD924_ovl12);
        }
    }
}

void func_801DDBC4_ovl12(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    while (D_800D7098.unkC != 0) {
        ohSleep(1);
    }
    ohSleep(0x1E);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801DDC70_ovl12(GObj *arg0) {
    u32 temp_v1;

    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DD924_ovl12);
    }
}

void func_801DDCDC_ovl12(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E9720[omCurrentObj->objId] = 180;
    D_800E9E20[omCurrentObj->objId] = 0;

    if (D_800EA520[omCurrentObj->objId] != 0) {
        ohSleep(D_800EA520[omCurrentObj->objId]);
    }
    D_800EA520[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

/* FACTORY: 47/100 (was 54).  The twin's cause -- `s32 one; one = 1;` as a
   separate assignment STATEMENT feeding both `== 1` compares -- is real here
   too and is worth 7 words, but unlike func_801DD400_ovl12 it does not close
   this one.  The old note's "binding the 1 to an s32 local (IDO folds it)"
   was an INITIALISER; a statement is not folded, which is the distinction.
   Measured 2026-08-25 and negative: extending `one` to the `+= 1` and the
   `temp - 1` as well scores 47 too, identical -- IDO folds both into addiu
   immediates either way (the ROM has `addiu $t4, $t0, 1` and
   `addiu $v0, $v0, -1`), so the literal spelling is kept for those two.
   What is left is a genuine temp rotation: the ROM computes `temp` into $v0
   and decrements it IN PLACE ($v0 -> $v0), where IDO keeps temp in $t0 and
   puts temp-1 in $t5, renaming every temp downstream. */
#ifdef NON_MATCHING
void func_801DDDA8_ovl12(GObj *arg0) {
    s32 temp = gEntityFuncListIDArray[omCurrentObj->objId] + D_800E9560[omCurrentObj->objId];
    s32 one;

    one = 1;
    if ((D_800D7098.unk8 == one) || (D_800D7098.unk10 == 0)) {
        D_800E9560[omCurrentObj->objId] += 1;
        gEntityFuncListIDArray[omCurrentObj->objId] = temp - 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DD924_ovl12);
    } else {
        if (D_800E9E20[omCurrentObj->objId] != 0) {
            D_800E64D0[omCurrentObj->objId] = D_800E64D0[D_800D7098.unk1C];
            D_800E6690[omCurrentObj->objId] = D_800E6690[D_800D7098.unk1C];
            D_800E6850[omCurrentObj->objId] = D_800E6850[D_800D7098.unk1C];
            D_800E9E20[omCurrentObj->objId] = 0;
        }
        if (D_800D7098.unk10 == 0) {
            func_801DCDFC_ovl12();
        }
        if ((D_800D7098.unkC == one) && ((s32) D_800E9AA0[omCurrentObj->objId] == 1)) {
            func_801DCCC4_ovl12();
            func_801DCD70_ovl12();
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl12/code_1EB520/func_801DDDA8_ovl12.s")
#endif

void func_801DDF38_ovl12(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 3;
    func_801DCC48_ovl12();
    D_800E9AA0[omCurrentObj->objId] = 1;
    D_800E9720[omCurrentObj->objId] = 180;
    curObjSleepForever();
}

#ifdef NON_MATCHING // complex math expression
void func_801DDFB4_ovl12(void) {
    f32 temp_f2;

    D_800EA520[omCurrentObj->objId] = 0x1E;
    temp_f2 = (D_80129114->unk4 + (D_800E5F90[omCurrentObj->objId] * 0x10))->footer->length;
    D_800E6A10[omCurrentObj->objId] = D_800E6A10[D_800D7098.unk1C];
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * ((((16.64f / temp_f2) / (1.0f / temp_f2)) * 10.0f) / D_800EA520[omCurrentObj->objId]);
    D_800E64D0[omCurrentObj->objId] += D_800E64D0[D_800D7098.unk1C];
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 65535.0f;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl12/code_1EB520/func_801DDFB4_ovl12.s")
#endif

void func_801DE0E4_ovl12(GObj *arg0) {
    if (D_800D7098.unk8 == 0) {
        func_801DDFB4_ovl12();
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DD924_ovl12);
    } else {
        func_801DCBC4_ovl12();
        func_801DCCC4_ovl12();
    }
}

void func_801DE16C_ovl12(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 4;
    D_800E9720[omCurrentObj->objId] = 180;
    D_800EA6E0[omCurrentObj->objId] = 6.0f;
    D_800EA8A0[omCurrentObj->objId] = -0.25f;
    curObjSleepForever();
}

void func_801DE1FC_ovl12(GObj *arg0) {
    if (D_800D7098.unk8 == 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DD924_ovl12);
    } else {
        func_801DCBC4_ovl12();
        func_801DCDFC_ovl12();
    }
}

void func_801DE27C_ovl12(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 5;
    while (D_800E3210[D_800D7098.unk0] != 0.0f) {
        ohSleep(1);
    }
    ohSleep(0x3C);
    D_800EA8A0[omCurrentObj->objId] = 0;
    D_800EA6E0[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    D_800E7880[omCurrentObj->objId] = 4;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], ARRAYLEN(D_801E2AC0_ovl12), D_801E2AC0_ovl12);
    curObjSleepForever();
}

void func_801DE3AC_ovl12(GObj *arg0) {
    func_801DCDFC_ovl12();
    func_801DCA4C_ovl12();
}

void func_801DE3D4_ovl12(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], ARRAYLEN(D_801E2B6C_ovl12), D_801E2B6C_ovl12);
}

void func_801DE41C_ovl12(GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801DE4E0_ovl12;
    func_800A9760(0x10073);
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800EA360[omCurrentObj->objId] = 3;
    D_800D7098.unk24 = omCurrentObj->objId;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], ARRAYLEN(D_801E2B6C_ovl12), D_801E2B6C_ovl12);
}

void func_801DE4E0_ovl12(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], ARRAYLEN(D_801E2B80_ovl12), D_801E2B80_ovl12);
}

void func_801DE528_ovl12(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9560[omCurrentObj->objId] = 3;
    func_801DC930_ovl12();
    curObjSleepForever();
}

void func_801DE598_ovl12(GObj *arg0) {
    if ((D_800E98E0[omCurrentObj->objId] == 0) && (func_801DCAB0_ovl12() != 0)) {
        func_801DCE6C_ovl12(336.0f);
    }
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        if (D_800EB320[omCurrentObj->objId] >= 0.025f) {
            func_801DC9E8_ovl12();
        } else {
            gEntityFuncListIDArray[omCurrentObj->objId] = 1;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DE3D4_ovl12);
        }
    }
}

void func_801DE678_ovl12(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    while (D_800D7098.unkC != 0) {
        ohSleep(1);
    }
    ohSleep(0x1E);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801DE724_ovl12(GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DE3D4_ovl12);
    }
}

void func_801DE790_ovl12(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E9720[omCurrentObj->objId] = 180;
    curObjSleepForever();
}

#ifdef NON_MATCHING
/* 11/48: structurally exact and the load order is now right; the residue is a
 * pure one-slot rotation, ROM val/sum in $t0/$a2 against our $a2/$t0. */
/* barrier_sweep.py (LEVER 71) 2026-08-25: all 3 statement placements tried, none beats the base 11/48. */
void func_801DE7E8_ovl12(GObj *arg0) {
    s32 temp;
    s32 val;


    temp = (val = D_800E9560[omCurrentObj->objId]) + gEntityFuncListIDArray[omCurrentObj->objId];
    if ((D_800D7098.unk8 == 1) || (D_800D7098.unk10 == 0)) {
        D_800E9560[omCurrentObj->objId] = val + 1;
        gEntityFuncListIDArray[omCurrentObj->objId] = temp - 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DE3D4_ovl12);
    } else if (D_800D7098.unk10 == 0) {
        func_801DCDFC_ovl12();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl12/code_1EB520/func_801DE7E8_ovl12.s")
#endif

void func_801DE8A8_ovl12(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 3;
    func_801DCC48_ovl12();
    D_800E9720[omCurrentObj->objId] = 180;
    D_800EA6E0[omCurrentObj->objId] = 6.0f;
    D_800EA8A0[omCurrentObj->objId] = -0.25f;
    curObjSleepForever();
}

void func_801DE944_ovl12(GObj *arg0) {
    if (D_800D7098.unk8 == 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DE3D4_ovl12);
    } else {
        func_801DCBC4_ovl12();
        func_801DCDFC_ovl12();
    }
}

void func_801DE9C4_ovl12(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 4;
    while (D_800E3210[D_800D7098.unk0] != 0.0f) {
        ohSleep(1);
    }
    ohSleep(0x3C);
    D_800EA8A0[omCurrentObj->objId] = 0;
    D_800EA6E0[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    D_800E7880[omCurrentObj->objId] = 4;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], ARRAYLEN(D_801E2AC0_ovl12), D_801E2AC0_ovl12);
    curObjSleepForever();
}

void func_801DEAF4_ovl12(GObj *arg0) {
    func_801DCDFC_ovl12();
    func_801DCA4C_ovl12();
}

// double-assign memes
#ifdef NON_MATCHING
void func_801DEB1C_ovl12(void) {
    struct EnemyRecord *temp_a1 = D_800E1B50[omCurrentObj->objId];
    f32 sp30;
    Vector sp18;

    D_800E5F90[omCurrentObj->objId] = D_800E5F90[0];
    D_800EB320[omCurrentObj->objId] = 0.75f;
    sp30 = D_800E6BD0[omCurrentObj->objId];
    sp18.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    sp18.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    func_800F8E6C(D_800DE350[omCurrentObj->objId]);
    temp_a1->unk0 = gEntitiesNextPosXArray[omCurrentObj->objId];
    temp_a1->unk8 = gEntitiesNextPosZArray[omCurrentObj->objId];
    D_800E2090[omCurrentObj->objId] = D_800EB320[omCurrentObj->objId] * (0.0f - temp_a1->unk0);
    D_800E2410[omCurrentObj->objId] = D_800EB320[omCurrentObj->objId] * (0.0f - temp_a1->unk8);
    D_800E2250[omCurrentObj->objId] = 0.0f;
    D_800E6BD0[omCurrentObj->objId] = sp30;
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId];
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[omCurrentObj->objId];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl12/code_1EB520/func_801DEB1C_ovl12.s")
#endif

void func_801DECD4_ovl12(void) {
    D_800EB320[omCurrentObj->objId] -= 0.0125f;
    if (D_800EB320[omCurrentObj->objId] < 0.0125f) {
        D_800EB320[omCurrentObj->objId] = 0.0f;
    }
}

void func_801DED38_ovl12(void) {
    D_800EB320[omCurrentObj->objId] += 0.025f;
    if (D_800EB320[omCurrentObj->objId] > 0.75f) {
        D_800EB320[omCurrentObj->objId] = 0.75f;
    }
}

void func_801DED9C_ovl12(u8 arg0) {
    struct DObj *temp_v0 = D_800DE350[omCurrentObj->objId]->data.dobj->firstChild;

    if (D_800E9AA0[omCurrentObj->objId] != 0) {
        if (arg0 & 1) {
            temp_v0->angle.v.x += D_800EAC20[omCurrentObj->objId];
        }
        if (arg0 & 2) {
            temp_v0->angle.v.y += D_800EAC20[omCurrentObj->objId];
        }
        if (arg0 & 4) {
            temp_v0->angle.v.z += D_800EAC20[omCurrentObj->objId];
        }
    }
    while (temp_v0->angle.v.x >= 6.2831855f) {
        temp_v0->angle.v.x -= 6.2831855f;
    }
    while (temp_v0->angle.v.x < 0.0f) {
        temp_v0->angle.v.x += 6.2831855f;
    }
    while (temp_v0->angle.v.y >= 6.2831855f) {
        temp_v0->angle.v.y -= 6.2831855f;
    }
    while (temp_v0->angle.v.y < 0.0f) {
        temp_v0->angle.v.y += 6.2831855f;
    }
    while (temp_v0->angle.v.z >= 6.2831855f) {
        temp_v0->angle.v.z -= 6.2831855f;
    }
    while (temp_v0->angle.v.z < 0.0f) {
        temp_v0->angle.v.z += 6.2831855f;
    }
}

// very complex control flow but eventually conquered
void func_801DEF88_ovl12(void) {
    struct DObj *temp_v0 = D_800DE350[omCurrentObj->objId]->data.dobj->firstChild;

    if ((temp_v0->angle.v.x <= 0.20943952f) || (6.073746f <= temp_v0->angle.v.x)) {
        if ((temp_v0->angle.v.y <= 0.20943952f) || (6.073746f <= temp_v0->angle.v.y)) {
            if ((temp_v0->angle.v.z <= 0.20943952f) || (6.073746f <= temp_v0->angle.v.z)) {
                temp_v0->angle.v.x = 0.0f;
                temp_v0->angle.v.y = 0.0f;
                temp_v0->angle.v.z = 0.0f;
                D_800E9AA0[omCurrentObj->objId] = 0;
            }
        }
    }
}

void func_801DF064_ovl12(void) {
    if (D_800E3C90[omCurrentObj->objId] <= ABSF(D_800E3210[omCurrentObj->objId])) {
        D_800E3750[omCurrentObj->objId] = -D_800E3750[omCurrentObj->objId];
    }
}

// complex control flow
void func_801DF0D8_ovl12(void) {
    s32 track;

    if (D_800E7B20[omCurrentObj->objId] > 0.0f) {
        if (D_800E93A0[omCurrentObj->objId] == -1 || D_800E93A0[omCurrentObj->objId] >= 0x11) {
            if (D_800D7098.unk18 != -1) {
                track = func_801ACD48_ovl7(0x2A, 0);
                if (track != 0) {
                    D_800E98E0[track] = D_800EA360[omCurrentObj->objId];
                }
            }
        }
    }
}

// SUPER complex control flow
#ifdef NON_MATCHING
void func_801DF18C_ovl12(void) {
    if (D_800D7098.unk18 == -1) {
        D_800E9560[omCurrentObj->objId] = 6;
    } else {
        if (D_800E9720[omCurrentObj->objId] != 0) {
            D_800E9720[omCurrentObj->objId]--;
        } else {
            if (D_800EA360[omCurrentObj->objId] == 1) {
                s32 random_chance;

                if (random_soft_s32_range(8) >= 5) {
                    random_chance = 0;
                } else {
                    random_chance = 1;
                }
                if (random_chance != 0) {
                    D_800E6690[omCurrentObj->objId] = -D_800E6690[omCurrentObj->objId];
                    D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
                }
            } else {
                D_800E6A10[omCurrentObj->objId] = D_800E6A10[D_800D7098.unk1C];
                D_800E6690[omCurrentObj->objId] = D_800E6690[D_800D7098.unk1C];
            }
            D_800E9720[omCurrentObj->objId] = 0x3C;
            D_800E9560[omCurrentObj->objId]++;
        }
    }
    if ((D_800EA360[omCurrentObj->objId] == 1) && (D_800E9560[omCurrentObj->objId] >= 6)) {
        if ((D_800EA360[omCurrentObj->objId] == 1) && (D_800E9560[omCurrentObj->objId] >= 6)) {
            D_800D7098.unk8 = 0;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl12/code_1EB520/func_801DF18C_ovl12.s")
#endif

// regalloc
void func_801DF3F0_ovl12(void);

void func_801DF394_ovl12(void) {
    f32 diff = D_800EB160[omCurrentObj->objId] - D_800E7B20[omCurrentObj->objId];

    D_800D70D8.unk4 -= diff;
    func_801DF3F0_ovl12();
}

void func_801DF3F0_ovl12(void) {
    struct DObj *sp30 = D_800DE350[omCurrentObj->objId]->data.dobj->firstChild;
    Vector pad;

    D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
    D_800D7098.unk18--;
    if (D_800D7098.unk18 < 0) {
        D_800D7098.unk18 = 0;
    }

    pad = sp30->angle.v;
    
    switch (D_800EA360[omCurrentObj->objId]) {
        case 1:
            func_800A7F74(6, 2, 3, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
            func_800A9760(0x10074);
            break;
        case 2:
            func_800A7F74(6, 2, 6, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
            func_800A9760(0x10075);
            break;
        case 3:
            func_800A7F74(6, 2, 9, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
            func_800A9760(0x10076);
            break;
    }

    sp30 = D_800DE350[omCurrentObj->objId]->data.dobj->firstChild;
    sp30->angle.v = pad;

    play_sound(0x1C3);
}

struct Ovl12AnimInfo {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 filler4[8];
    s32 unkC;
    u8 filler10[0x10];
};

void func_801DF5F0_ovl12(struct Ovl12AnimInfo *arg0) {
    void func_801DF9DC_ovl12(void);
    s32 idx;
    f32 diff;

    D_800EA520[omCurrentObj->objId] = 0;
    if ((arg0->unk0 == 1) && (arg0->unk1 == 3)) {
        idx = arg0->unkC;
        if ((D_800DD710[idx] == 0x1A) && (D_800E77A0[idx] == 0x29)) {
            if (D_800EA520[idx] == D_800EA360[omCurrentObj->objId]) {
                D_800E7B20[omCurrentObj->objId] -= 1.0f;
            }
        }
    }
    diff = D_800EB160[omCurrentObj->objId] - D_800E7B20[omCurrentObj->objId];
    if (diff > 1.0f) {
        D_800EA520[omCurrentObj->objId] = 1;
    }
    D_800D70D8.unk4 -= diff;
    if (D_800E7B20[omCurrentObj->objId] <= 0.0f) {
        func_801DF3F0_ovl12();
    } else {
        func_801DF9DC_ovl12();
    }
}

#ifdef MIPS_TO_C
/* FACTORY: 91/109 words DIFFER (measured, draft spliced alone into a scratch
   copy of this TU). Instruction count is exact and the prologue and all four
   store arms line up; the whole residue is a one-instruction shift.

   Swept and rejected: the faithful spelling, with `omCurrentObj->objId` re-read
   in the `else` arm as the ROM does, measures 102/109 because IDO then hoists
   `&omCurrentObj` into $s1 (lui/addiu at entry, `lw $x, 0($s1)` at each use)
   where the ROM re-materialises lui/lw at all seven sites. Measured threshold,
   in this TU and in a standalone repro: IDO holds a global's address in a
   callee-saved register once SEVEN materialisations of it are live in the
   function, and re-materialises at six. The listing has seven and does not
   hoist, so one of the seven re-reads is spelled some other way in the ROM
   source and I could not find which. Using the entry temp for one of them --
   below, in the `else` arm -- buys the six-materialisation form; its only cost
   is `sw $a1, 0x20($sp)` spilling the shifted objId across the calls, which is
   the single-instruction shift. Also swept: nesting the body in the null test
   instead of an early return (103), dropping the entry temp entirely (102,
   and the frame shrinks to 0x50 -- the temp's word is load-bearing), and
   folding the three store arms into one `||` chain (wrong shape: one body).
   NOTE the divergence from the ROM is only in the MIPS_TO_C arm; the PORT arm
   below re-reads omCurrentObj as the listing does. */
s32 func_801DF758_ovl12(void) {
    struct Ovl12AnimInfo sp38;
    s32 temp_v0_2;
    struct EnemyRecord *temp_s0;
    u32 temp_v0;

    temp_v0 = omCurrentObj->objId;
    temp_s0 = D_800E1B50[temp_v0];
    if (temp_s0->unk8C == NULL) {
        return 0;
    }
    D_800EB160[temp_v0] = D_800E7B20[temp_v0];
    func_80111550(omCurrentObj->objId);
    func_80111ECC(func_80111C88(temp_s0->unk8C, omCurrentObj->objId));
    if (func_80110B00(&sp38) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp38.unk2;
        temp_s0->unk43 = sp38.unk3;
    } else if (func_80110FD4(&sp38) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp38.unk2;
        temp_s0->unk43 = sp38.unk3;
    } else if (func_80110150(&sp38) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp38.unk2;
        temp_s0->unk43 = sp38.unk3;
    } else {
        D_800E83E0[temp_v0] = 0;
        temp_s0->unk43 = 0;
    }
    temp_v0_2 = D_800E83E0[omCurrentObj->objId];
    switch (temp_v0_2) {
    case 1:
        func_801DF394_ovl12();
        return 1;
    case 2:
        func_801DF5F0_ovl12(&sp38);
        return 1;
    default:
        return 0;
    }
}
#elif defined(PORT)
s32 func_80110B00(struct Ovl12AnimInfo *);
s32 func_80110FD4(struct Ovl12AnimInfo *);
s32 func_80110150(struct Ovl12AnimInfo *);
void *func_80111C88(void *, s32);
void func_80111ECC(void *);
void func_80111550(s32);

s32 func_801DF758_ovl12(void) {
    struct Ovl12AnimInfo sp38;
    struct EnemyRecord *rec;

    rec = D_800E1B50[omCurrentObj->objId];
    if (rec->unk8C == NULL) {
        return 0;
    }
    D_800EB160[omCurrentObj->objId] = D_800E7B20[omCurrentObj->objId];
    func_80111550(omCurrentObj->objId);
    func_80111ECC(func_80111C88(rec->unk8C, omCurrentObj->objId));
    if (func_80110B00(&sp38) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp38.unk2;
        rec->unk43 = sp38.unk3;
    } else if (func_80110FD4(&sp38) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp38.unk2;
        rec->unk43 = sp38.unk3;
    } else if (func_80110150(&sp38) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp38.unk2;
        rec->unk43 = sp38.unk3;
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
        rec->unk43 = 0;
    }
    switch (D_800E83E0[omCurrentObj->objId]) {
    case 1:
        func_801DF394_ovl12();
        return 1;
    case 2:
        func_801DF5F0_ovl12(&sp38);
        return 1;
    default:
        return 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl12/code_1EB520/func_801DF758_ovl12.s")
#endif

struct Ovl12Color {
    u8 r;
    u8 g;
    u8 b;
    u8 a;
};

struct Ovl12MObj {
    struct Ovl12MObj *next;
    u8 filler4[0x54];
    struct Ovl12Color primColor;
    u8 filler5C[4];
    struct Ovl12Color envColor;
};

struct Ovl12DObj {
    u8 filler0[0x80];
    struct Ovl12MObj *mobjList;
};

void func_801DF910_ovl12(void *arg0) {
    struct Ovl12Color *prim;
    struct Ovl12MObj *mobj;
    struct Ovl12Color *env;
    s32 idx;
    struct EnemyRecord *ptr = D_800E1B50[omCurrentObj->objId];

    idx = (ptr->unk6C + (D_800EA360[omCurrentObj->objId] * 3)) - 3;
    if (D_800EA520[omCurrentObj->objId] == 0) {
        prim = (struct Ovl12Color *) D_801E2BDC_ovl12[idx];
        env = (struct Ovl12Color *) D_801E2C00_ovl12[idx];
    } else {
        prim = (struct Ovl12Color *) D_801E2C54_ovl12[idx];
        env = (struct Ovl12Color *) D_801E2C78_ovl12[idx];
    }
    mobj = ((struct Ovl12DObj *) arg0)->mobjList;
    while (mobj != NULL) {
        mobj->primColor = *prim;
        mobj->envColor = *env;
        mobj = mobj->next;
    }
}

void func_801DF9DC_ovl12(void) {
    struct EnemyRecord *temp_v0 = D_800E1B50[omCurrentObj->objId];
    GObj *obj = ((GObj*)D_800DE350[omCurrentObj->objId]);
    struct DObj *child = obj->data.dobj->firstChild;

    temp_v0->unk70 = 2;
    temp_v0->unk68 = 0x15;
    temp_v0->unk6C = 1;
    D_800EA1A0[omCurrentObj->objId] = 1;
    func_801DF910_ovl12(child);
    temp_v0->unk68 -= 1;
    play_sound(0x1C9);
}

void func_801DFA7C_ovl12(void) {
    struct EnemyRecord *temp_v0 = D_800E1B50[omCurrentObj->objId];
    GObj *obj = ((GObj*)D_800DE350[omCurrentObj->objId]);
    struct DObj *temp_a1 = obj->data.dobj->firstChild;

    temp_v0->unk70--;
    if (temp_v0->unk70 == 0) {
        temp_v0->unk70 = 2;
        if (temp_v0->unk6C + 1 >= 3) {
            temp_v0->unk6C = 0;
        } else {
            temp_v0->unk6C++;
        }
        func_801DF910_ovl12(temp_a1);
        temp_v0->unk68--;
        if (temp_v0->unk68 == 0) {
            D_800EA1A0[omCurrentObj->objId] = 0;
        }
    }
}

void func_801DFB34_ovl12(void) {
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E2090[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId];
    D_800E2410[omCurrentObj->objId] = gEntitiesNextPosZArray[omCurrentObj->objId];
    D_800E9560[omCurrentObj->objId] = 1;
}

void func_801DFBEC_ovl12(void) {
    D_800E64D0[omCurrentObj->objId] = D_800E64D0[D_800D7098.unk28];
    D_800E6690[omCurrentObj->objId] = D_800E6690[D_800D7098.unk28];
    D_800E6850[omCurrentObj->objId] = D_800E6850[D_800D7098.unk28];
}

void func_801DFC64_ovl12(void) {
    Vector vec;
    f32 temp_f0;

    if (D_800EA360[omCurrentObj->objId] == 1) {
        vec.x = gEntitiesNextPosXArray[omCurrentObj->objId] * 5.0f;
        vec.z = gEntitiesNextPosZArray[omCurrentObj->objId] * 5.0f;
        vec.y = 0.0f;
        D_800E6BD0[omCurrentObj->objId] = func_800FA1D4(
            D_80129114->unk4[D_800E5F90[omCurrentObj->objId]].footer,
            &vec,
            D_80129114->unk4[D_800E5F90[omCurrentObj->objId]].loop
        );
    } else {
        D_800E6BD0[omCurrentObj->objId] = D_800E6BD0[D_800D7098.unk1C];
        temp_f0 = D_800D70D8.unk8 * 628.0f;
        if (D_800EA360[omCurrentObj->objId] == 2) {
            func_800F98EC(omCurrentObj->objId, -(temp_f0));
        } else {
            func_800F98EC(omCurrentObj->objId, (temp_f0));
        }
    }
    gEntitiesAngleZArray[omCurrentObj->objId] = 0.0f;
    gEntitiesAngleXArray[omCurrentObj->objId] = gEntitiesAngleZArray[omCurrentObj->objId];
    D_800E64D0[omCurrentObj->objId] = 0;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.5f;
    D_800E6850[omCurrentObj->objId] = ABSF(D_800EAA60[omCurrentObj->objId]);
}

void func_801DFE8C_ovl12(void) {
    if ((D_800EA360[omCurrentObj->objId] == 1) && (D_800D7098.unk18 == 0)) {
        D_800D7098.unk18 = -1;
    }
}

void func_801DFED8_ovl12(void) {
    if (gEntitiesScaleXArray[omCurrentObj->objId] > 0.5f) {
        gEntitiesScaleXArray[omCurrentObj->objId] -= 0.005f;
        gEntitiesScaleYArray[omCurrentObj->objId] -= 0.005f;
        gEntitiesScaleZArray[omCurrentObj->objId] -= 0.005f;
    } else {
        gEntitiesScaleXArray[omCurrentObj->objId] =
        gEntitiesScaleYArray[omCurrentObj->objId] =
        gEntitiesScaleZArray[omCurrentObj->objId] = 0.5f;
    }
}

void func_801DFFA8_ovl12(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], ARRAYLEN(D_801E2C9C_ovl12), D_801E2C9C_ovl12);
}

void func_801DFFF0_ovl12(GObj *arg0) {
    struct EnemyRecord *temp_a1 = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = func_801E00D8_ovl12;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_800FF0C4(temp_a1->unk80);
    D_800E9AA0[omCurrentObj->objId] = 1;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    D_800EA1A0[omCurrentObj->objId] = 0;
    D_800D7098.unk8 = 0;
    func_801DEB1C_ovl12();
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], ARRAYLEN(D_801E2C9C_ovl12), D_801E2C9C_ovl12);
}

void func_801E00D8_ovl12(GObj *arg0) {
    func_801DFE8C_ovl12();
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], ARRAYLEN(D_801E2CC4_ovl12), D_801E2CC4_ovl12);
    if (D_800E9FE0[omCurrentObj->objId].as_s32 == 0) {
        if (D_800EA1A0[omCurrentObj->objId] != 0) {
            func_801DFA7C_ovl12();
        }
        func_801DF758_ovl12();
    }
}

void func_801E016C_ovl12(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 1;
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[D_800D7098.unk1C];
    D_800EAC20[omCurrentObj->objId] = D_801E2AA0_ovl12[D_800D7098.unk18] * -D_800E6A10[omCurrentObj->objId];
    ohSleep(0x3C);
    D_800E9E20[omCurrentObj->objId] = 1;
    D_800E3210[omCurrentObj->objId] = 8.0f;
    curObjSleepForever();
}

void func_801E0298_ovl12(GObj *arg0) {
    func_801DED9C_ovl12(2);
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        f32 temp_f0 = gEntitiesNextPosYArray[D_800D7098.unk0] + 100.0f;
        if (temp_f0 <= gEntitiesNextPosYArray[omCurrentObj->objId]) {
            gEntitiesNextPosYArray[omCurrentObj->objId] = temp_f0;
            D_800E3750[omCurrentObj->objId] = 0.0f;
            D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
            D_800E3C90[omCurrentObj->objId] = 65535.0f;
            gEntityFuncListIDArray[omCurrentObj->objId] = 1;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DFFA8_ovl12);
        }
    }
}

void func_801E03B0_ovl12(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_801D152C_ovl8;
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E93A0[omCurrentObj->objId] = 0;
    D_800E9560[omCurrentObj->objId] = D_800E93A0[omCurrentObj->objId];
    D_800E9720[omCurrentObj->objId] = 0xF;
    D_800EC2E0[omCurrentObj->objId].as_s32 = 2;
    if (D_800D7098.unk18 != -1) {
        D_800E6850[omCurrentObj->objId] = D_801E2AB0_ovl12[D_800D7098.unk18];
        D_800EAC20[omCurrentObj->objId] = D_801E2AA0_ovl12[D_800D7098.unk18] * -D_800E6A10[omCurrentObj->objId];
    } else {
        D_800E6850[omCurrentObj->objId] = D_801E2AB0_ovl12[0];
        D_800E64D0[omCurrentObj->objId] = 30.0f;
        D_800E6690[omCurrentObj->objId] = 2.0f;
    }
    D_800EAA60[omCurrentObj->objId] = D_800E6850[omCurrentObj->objId];
    ohSleep(0x3C);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

// regalloc
void func_801E05E8_ovl12(GObj *arg0)
{
  s32 pad;
  s32 sp18 = gEntityFuncListIDArray[omCurrentObj->objId] + ((0, D_800D7098.unk14));
  func_801DED9C_ovl12(2);
  if (D_800EA360[omCurrentObj->objId] == 1)
  {
    func_801DBD00_ovl12();
  }
  if (D_800D7098.unk18 == (-1))
  {
    gEntityFuncListIDArray[omCurrentObj->objId] = 9;
    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DFFA8_ovl12);
  }
  else
    if (D_800E9E20[omCurrentObj->objId] != 0)
  {
    D_800E9720[omCurrentObj->objId] = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = sp18;
    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DFFA8_ovl12);
  }
}

void func_801E0714_ovl12(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = 4.0f;
    ohSleep(0xA);
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E9E20[omCurrentObj->objId] = 1;
    D_800E9720[omCurrentObj->objId] = (D_800EA360[omCurrentObj->objId] - 1) * 15.0f;
    D_800E93A0[omCurrentObj->objId] = -1;
    curObjSleepForever();
}

void func_801E0824_ovl12(GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        if (D_800EB320[omCurrentObj->objId] >= 0.0125f) {
            func_801DECD4_ovl12();
        } else {
            gEntityFuncListIDArray[omCurrentObj->objId] = 5;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DFFA8_ovl12);
        }
        if (D_800E9FE0[omCurrentObj->objId].as_s32 == 0) {
            if (D_800E9720[omCurrentObj->objId] == 0) {
                func_801DF0D8_ovl12();
                D_800E9720[omCurrentObj->objId] = 0x2D;
            } else {
                D_800E9720[omCurrentObj->objId]--;
            }
        }
    }
    func_801DED9C_ovl12(2);
}

void func_801E0938_ovl12(GObj *arg0) {
    s32 var_s0;

    D_800DDFD0[omCurrentObj->objId] = 5;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E93A0[omCurrentObj->objId] = 480;
    var_s0 = 480;
    while (D_800E9E20[omCurrentObj->objId] == 0) {
        ohSleep(1);
        var_s0--;
        D_800E93A0[omCurrentObj->objId]--;
        if ((var_s0 == 0) || (D_800D7098.unk18 == -1)) {
            D_800E9E20[omCurrentObj->objId] = 1;
        }
    }
    curObjSleepForever();
}

void func_801E0A70_ovl12(GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 6;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DFFA8_ovl12);
    } else {
        func_801DED9C_ovl12(2);
        if (D_800E9FE0[omCurrentObj->objId].as_s32 == 0) {
            if (D_800E9720[omCurrentObj->objId] == 0) {
                func_801DF0D8_ovl12();
                D_800E9720[omCurrentObj->objId] = 0x2D;
            } else {
                D_800E9720[omCurrentObj->objId]--;
            }
        }
    }
}

void func_801E0B58_ovl12(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 6;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800D7098.unk2C = 1;
    while (D_800E9E20[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    D_800E3210[omCurrentObj->objId] = -4.0f;
    ohSleep(0xA);
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E9E20[omCurrentObj->objId] = 2;
    curObjSleepForever();
}

void func_801E0C54_ovl12(GObj *arg0) {
    if (D_800EB320[omCurrentObj->objId] < 0.75f) {
        func_801DED38_ovl12();
    } else if (D_800E9E20[omCurrentObj->objId] == 2) {
        D_800D7098.unk14 = 0;
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DFFA8_ovl12);
    } else {
        D_800E9E20[omCurrentObj->objId] = 1;
    }
    func_801DED9C_ovl12(2);
}

void func_801E0D24_ovl12(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 3;
    curObjSleepForever();
}

void func_801E0D64_ovl12(GObj *arg0) {
    if (D_800EB320[omCurrentObj->objId] >= 0.0125f) {
        func_801DECD4_ovl12();
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 7;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DFFA8_ovl12);
    }
    func_801DED9C_ovl12(2);
}

// the pattern
#ifdef NON_MATCHING
/* FACTORY: 29/116, 2026-08-25 (was 43/116).  ONE LEVER 90/99 zero fork: the
 * FIRST `D_800E6690[objId] = 0.0f` must be the integer `0`, so that it does not
 * share a `mtc1 $zero` with the `= 0.0f` store to D_800E64D0 eight lines below.
 * All eight subsets of the three zero sites were measured: this one alone is
 * 29, the D_800E9E20 integer store is inert, and flipping the LATER
 * `D_800E64D0[objId] = 0.0f` is 47 -- worse, alone or in any combination. */
void func_801E0DF8_ovl12(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 7;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E6690[omCurrentObj->objId] = 0;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    while (D_800E9AA0[omCurrentObj->objId] != NULL) {
        ohSleep(1);
    }
    D_800E9E20[omCurrentObj->objId] = 1;
    D_800E9AA0[omCurrentObj->objId] = 1;
    D_800D7098.unk8 = 1;
    D_800E64D0[omCurrentObj->objId] = 0.0f;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.5f;
    D_800E6850[omCurrentObj->objId] = ABSF(D_800EAA60[omCurrentObj->objId]);
    D_800E9720[omCurrentObj->objId] = 0x3C;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl12/code_1EB520/func_801E0DF8_ovl12.s")
#endif

void func_801E0FC8_ovl12(GObj *arg0) {
    u32 pad;
    u8 sp1B;

    sp1B = 1 << (D_800EA360[omCurrentObj->objId] + 0x1F);
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        if (D_800E9560[omCurrentObj->objId] >= 6) {
            func_801DEF88_ovl12();
            if (D_800E9AA0[omCurrentObj->objId] == 0) {
                gEntityFuncListIDArray[omCurrentObj->objId] = 8;
                assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DFFA8_ovl12);
            }
        } else {
            func_801DF18C_ovl12();
        }
        func_801DED9C_ovl12(sp1B);
    } else {
        func_801DED9C_ovl12(2);
        func_801DEF88_ovl12();
    }
}

// the s32 casts are load-bearing: they let IDO share the single `1` constant
// register between the two stores instead of materialising it twice.
void func_801E10C4_ovl12(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 8;
    *(s32 *)&D_800E9AA0[omCurrentObj->objId] = 1;
    *(s32 *)&D_800D7098.unk2C = 1;
    curObjSleepForever();
}

void func_801E1124_ovl12(GObj *arg0) {
    if (D_800EB320[omCurrentObj->objId] < 0.75f) {
        func_801DED38_ovl12();
    } else {
        D_800D7098.unk14 = 0;
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DFFA8_ovl12);
    }
    func_801DED9C_ovl12(2);
}

void func_801E11CC_ovl12(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 4;
    func_801DFB34_ovl12();
    ohSleep(1);
    D_800DEF90[omCurrentObj->objId] = func_801D17F4_ovl8;
    curObjSleepForever();
}

void func_801E123C_ovl12(GObj *arg0) {
    if (D_800EA360[D_800D7098.unk28] == 2) {
        func_801DFC64_ovl12();
        D_800D7098.unk14 = 0;
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DFFA8_ovl12);
    }
    func_801DED9C_ovl12(2);
}

#ifdef NON_MATCHING
void func_801E12D0_ovl12(GObj *arg0) {
    struct EnemyRecord *sp34 = D_800E1B50[omCurrentObj->objId];
    struct EnemyAnimCue *var_v0_2;

    D_800DDFD0[omCurrentObj->objId] = 9;
    func_8019BB58_ovl7();
    while (D_800EB320[omCurrentObj->objId] != 1.0f) {
        ohSleep(1);
    }
    if (D_800EA360[omCurrentObj->objId] == 1) {
        func_8019F1EC_ovl7();
        ohSleep(0xF);
        var_v0_2 = sp34->unk94;
        if (var_v0_2->unk1C != 0x80000000) {
            play_sound(var_v0_2->unk1C);
        }
        func_800FD570(0, var_v0_2->unk18, 0.0f, 0.0f, 0.0f);
        func_800BB468(3, 0);
        ohSleep(7);
        func_801BC794_ovl7(1);
        func_800AFBB4(0);
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
    } else {
        ohSleep(0xF);
        ohSleep(7);
        func_800AFBB4(0);
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
    }
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl12/code_1EB520/func_801E12D0_ovl12.s")
#endif

void func_801E1500_ovl12(GObj *arg0) {
    func_801E1528_ovl12();
    func_801DFED8_ovl12();
}

void func_801E1528_ovl12(void) {
    D_800EB320[omCurrentObj->objId] += 0.0025f;
    if (D_800EB320[omCurrentObj->objId] > 1.0f) {
        D_800EB320[omCurrentObj->objId] = 1.0f;
    }
}

