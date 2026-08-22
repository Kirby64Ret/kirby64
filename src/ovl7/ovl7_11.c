#include "common.h"

#include "GObj.h"
#include "unk_structs/D_800E1B50.h"
#include "DObj.h"
#include "ovl1/util.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"

#include "main/object_helpers.h"
#include "unk_structs/D_800E1B50.h"
void assign_new_process_entry(struct GObjProcess *, void (*)(struct GObj *));
extern struct GObjProcess *gEntityGObjProcessArray[];
extern struct EnemyEventTable D_801CC064_ovl7;
extern struct EnemyEventTable D_801CC088_ovl7;
extern struct EnemyEventTable D_801CC0AC_ovl7;
extern struct EnemyEventTable D_801CC0F4_ovl7;
extern FUNCLIST D_801CD6D0_ovl7;

struct Unk801CD648 {
    f32 unk0;
    s32 unk4;
};

extern struct Unk801CD648 D_801CD648_ovl7[];
extern f32 D_801CD688_ovl7[];
extern s32 random_soft_s32_range(s32);
extern FUNCLIST D_801CD718_ovl7;
void func_8019B424_ovl7(struct GObj *);
void eneTurnCommon(s32);
void func_8019F3B0_ovl7(void);
/* K&R form is load-bearing on every repeat of this declaration in this file
 * (3x): its real signature is s32 func_801A0D74_ovl7(GObj *), but this file
 * calls it with both 1 arg (line ~154) and 0 args (lines ~297, ~505, ~644,
 * ~841) -- the ROM relies on whatever GObj* is already sitting in $a0 at the
 * 0-arg sites. An ANSI prototype breaks compilation with "too few
 * arguments". */
s32 func_801A0D74_ovl7();
void func_801A3280_ovl7(void);
void func_801B76CC_ovl7(GObj *);
s32 func_8019A7E8_ovl7(f32);
void func_800AA018(s32);
void func_801B57A0_ovl7(GObj *);
void func_801B4DB0_ovl7(GObj *);
void func_801B5A84_ovl7(GObj *, s32, f32);

void play_sound(s32);
void func_800A7F74(s32, s32, s32, f32, f32, f32);
void func_800AA864(s32, u32);
void func_800B3520(void);
void func_800A2300(GObj *);
void func_800FD570(s32, s32, f32, f32, f32);

void func_80199628_ovl7(void);
void func_800A9EA4(s32);
void func_801B51F0_ovl7(void);
void curObjSleepForever(void);

extern FUNCLIST D_801CD620_ovl7;
extern FUNCLIST D_801CD628_ovl7;
extern FUNCLIST D_801CD6A8_ovl7;
extern FUNCLIST D_801CD6B8_ovl7;
void ohSleep(s32);
void curObjSleepForever(void);
void func_801ACF84_ovl7(GObj *);
void func_801A03B4_ovl7(void);
extern s32 D_800E98E0[];
void func_801B6588_ovl7(void);
void func_801B63E4_ovl7(GObj *);
extern s32 D_800EA360[];
extern f32 D_800E64D0[], D_800E6690[], D_800E6850[], D_800E6A10[];
extern FUNCLIST D_801CD6E8_ovl7;
extern struct EnemyEventTable D_801CC118_ovl7;
extern s32 D_800DDFD0[], D_800E9C60[];
extern f32 D_800E3910[], D_800E3750[], D_800E3590[], D_800E33D0[], D_800E3210[], D_800E3050[];
extern f32 D_800E3E50[], D_800E3C90[], D_800E3AD0[];
extern f32 D_801CE354_ovl7;
void func_801A2558_ovl7(u32);
extern s32 D_800E9E20[], D_800E8920[], D_800E5F90[];
extern s32 D_800EA520[];
extern f32 D_800E6BD0[], D_800EB320[];
void func_801B58A8_ovl7(GObj *);
void func_801A0D50_ovl7(void *);
extern FUNCLIST D_801CD6E8_ovl7;
extern FUNCLIST D_801CD6F4_ovl7;
extern FUNCLIST D_801CD700_ovl7;
extern FUNCLIST D_801CD70C_ovl7;
extern FUNCLIST D_801CD718_ovl7;
extern FUNCLIST D_801CD71C_ovl7;
void func_800AECC0(f32);
s32 func_801A0D74_ovl7();
void eneTurnCommon(s32);
void func_8019F3B0_ovl7(void);
void func_8019D2FC_ovl7(f32, s32);
void func_8019B424_ovl7(GObj *);
void func_800B6B8C(GObj *);


void func_800AECC0(f32);
s32 func_801A0D74_ovl7();
void eneTurnCommon(s32);
void func_8019F3B0_ovl7(void);
void func_8019D2FC_ovl7(f32, s32);
void func_8019B424_ovl7(GObj *);
void func_800B6B8C(GObj *);

void func_801B4D50_ovl7(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6B8C;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_801CD620_ovl7);
}

void func_801B4DB0_ovl7(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, &D_801CD628_ovl7);
}

extern struct EnemyEventTable D_801CC52C_ovl7;
extern FUNCLIST D_801CD628_ovl7;
extern void (*D_800DF150[])(struct GObj *);
extern s32 D_800E9720[], D_800EA520[], D_800E5F90[];
extern f32 D_800EB320[], D_800E6BD0[];
void func_8019BB58_ovl7(void);
void func_801B4F60_ovl7(struct GObj *);
void func_801B4DB0_ovl7(struct GObj *);
void func_801A6C10_ovl7(struct GObj *);
void func_801A0D50_ovl7(void *);

void func_801B4DF8_ovl7(struct GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    func_8019BB58_ovl7();
    ent->unk98 = &D_801CC52C_ovl7;
    D_800DF150[omCurrentObj->objId] = func_801B4F60_ovl7;
    D_800E9720[omCurrentObj->objId] = 0;
    D_800EB320[omCurrentObj->objId] = D_800E6BD0[omCurrentObj->objId];
    D_800EA520[omCurrentObj->objId] = D_800E5F90[omCurrentObj->objId];
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        func_801A6C10_ovl7(arg0);
    }
    if (D_800E7880[omCurrentObj->objId] == 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
    }
    func_801A0D50_ovl7(func_801B4DB0_ovl7);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, &D_801CD628_ovl7);
}

void func_801B4F60_ovl7(struct GObj *arg0) {
    extern u32 D_8012BCA0;
    extern FUNCLIST D_801CD638_ovl7;
    void func_801A3E80_ovl7(struct GObj *);
    struct EnemyRecord *ent;
    s32 r;
    f32 temp;

    ent = D_800E1B50[omCurrentObj->objId];
    r = 0;
    temp = gEntitiesNextPosYArray[omCurrentObj->objId];
    if (D_800E9C60[omCurrentObj->objId] == 0) {
        r = func_801A0D74_ovl7(arg0);
    }
    gEntitiesNextPosYArray[omCurrentObj->objId] = temp;
    if (D_800E7880[omCurrentObj->objId] == 1) {
        if (((D_8012BCA0 >> 0x13) & 0xFFF) != 0) {
            ent->unk40 = 1;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A3E80_ovl7);
        }
    }
    if (r == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 4, &D_801CD638_ovl7);
    }
    if (D_800E9C60[omCurrentObj->objId] == 0) {
        func_8019F3B0_ovl7();
    }
}

void func_801B50B8_ovl7(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    func_800A9EA4(0x10205);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801B514C_ovl7(GObj *arg0) {
    s32 *p = &D_800E9720[omCurrentObj->objId];

    if (*p == 0) {
        if (func_8019A7E8_ovl7(200.0f) != 0) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 1;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801B4DB0_ovl7);
        }
    } else {
        *p = *p - 1;
    }
}

void func_801B51F0_ovl7(void) {
    s32 r = random_soft_s32_range(8);

    D_800E3210[omCurrentObj->objId] = D_801CD648_ovl7[r].unk0;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    D_800E9720[omCurrentObj->objId] = D_801CD648_ovl7[r].unk4;
    D_800E64D0[omCurrentObj->objId] = D_801CD688_ovl7[r];
}

void func_801B5294_ovl7(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    func_800A9EA4(0x10201);
    func_801B51F0_ovl7();
    curObjSleepForever();
}

void func_801B5314_ovl7(GObj *arg0) {
}

void func_801B531C_ovl7(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    func_800A7F74(3, 2, 0x9D, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId] - 20.0f, gEntitiesNextPosZArray[omCurrentObj->objId]);
    func_800AA864(0x10204, 1);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801B5408_ovl7(GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    if (D_800E9E20[omCurrentObj->objId] != 0) {
        func_800B3520();
        D_800E8920[omCurrentObj->objId] = 0;
        gEntitiesNextPosXArray[omCurrentObj->objId] = ent->unk0;
        gEntitiesNextPosYArray[omCurrentObj->objId] = ent->unk4;
        gEntitiesNextPosZArray[omCurrentObj->objId] = ent->unk8;
        D_800E5F90[omCurrentObj->objId] = D_800EA520[omCurrentObj->objId];
        D_800E6BD0[omCurrentObj->objId] = D_800EB320[omCurrentObj->objId];
        func_801A2558_ovl7(ent->unk88->unk10);
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801B4DB0_ovl7);
    }
}

void func_801B554C_ovl7(GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];
    u32 temp;

    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    func_800B3520();
    func_800A2300(arg0);
    temp = ent->unk94->unk1C;
    if (temp != 0x80000000) {
        play_sound(temp);
    }
    func_800FD570(0, ent->unk94->unk18, 0.0f, 0.0f, 0.0f);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801B5638_ovl7(GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    if (D_800E9E20[omCurrentObj->objId] != 0) {
        D_800E8920[omCurrentObj->objId] = 0;
        gEntitiesNextPosXArray[omCurrentObj->objId] = ent->unk0;
        gEntitiesNextPosYArray[omCurrentObj->objId] = ent->unk4;
        gEntitiesNextPosZArray[omCurrentObj->objId] = ent->unk8;
        D_800E5F90[omCurrentObj->objId] = D_800EA520[omCurrentObj->objId];
        D_800E6BD0[omCurrentObj->objId] = D_800EB320[omCurrentObj->objId];
        func_801A2558_ovl7(ent->unk88->unk10);
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801B4DB0_ovl7);
    }
}

void func_801B575C_ovl7(GObj *arg0) {
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 4, &D_801CD6A8_ovl7);
}

void func_801B57A0_ovl7(GObj *arg0) {
    func_800AECC0(gameTicksPerDraw);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 6, &D_801CD6B8_ovl7);
}

void func_801B57F4_ovl7(GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801B58A8_ovl7;
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
    }
    func_801A0D50_ovl7(func_801B57A0_ovl7);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 6, &D_801CD6B8_ovl7);
}

void func_801B58A8_ovl7(struct GObj *arg0) {
    s32 unused; /* load-bearing: puts the spill of `v` at 0x18 */
    s32 v = func_801A0D74_ovl7();

    if (D_800E9C60[omCurrentObj->objId] != 0) {
        func_8019B424_ovl7(arg0);
    }
    if (v == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 6, &D_801CD6D0_ovl7);
    }
    eneTurnCommon(6);
    func_8019F3B0_ovl7();
}

void func_801B5940_ovl7(GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 0;
    ent->unk98 = &D_801CC064_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9EA4(0x100C4);
    curObjSleepForever();
}

void func_801B59EC_ovl7(GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    if (ent->unk3C == 0) {
        if (func_8019A7E8_ovl7(240.0f) != 0) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 1;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801B57A0_ovl7);
        }
    }
}

void func_801B5A84_ovl7(GObj *arg0, s32 arg1, f32 arg2) {
    if ((arg1 == 0) && ((s32) arg2 == 1)) {
        D_800E3210[omCurrentObj->objId] = 13.0f;
        D_800E3750[omCurrentObj->objId] = -0.5f;
        D_800E3C90[omCurrentObj->objId] = 13.0f;
    }
}

void func_801B5B04_ovl7(GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800AA018(0x100BF);
    D_800DF310[omCurrentObj->objId] = func_801B5A84_ovl7;
    curObjSleepForever();
}

void func_801B5BB0_ovl7(GObj *arg0) {
    if (D_800E8AE0[omCurrentObj->objId] & 2) {
        play_sound(0x16B);
    }
    if (D_800E3210[omCurrentObj->objId] < 1.5f) {
        if (D_800E3750[omCurrentObj->objId] != 0.0f) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 4;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801B57A0_ovl7);
        }
    }
}

void func_801B5C7C_ovl7(GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 4;
    ent->unk98 = &D_801CC064_ovl7;
    func_800AA864(0x100C0, 1);
    D_800E3210[omCurrentObj->objId] = -13.0f;
    D_800E3750[omCurrentObj->objId] = 0.5f;
    D_800E3C90[omCurrentObj->objId] = 13.0f;
    func_800AA018(0x100C1);
    while (D_800E9E20[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    func_800AA864(0x100C2, 1);
    D_800E9E20[omCurrentObj->objId] = 2;
    curObjSleepForever();
}

void func_801B5DEC_ovl7(GObj *arg0) {
    void func_801B57A0_ovl7(GObj *);
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    if ((D_800E8AE0[omCurrentObj->objId] & 2) != 0) {
        play_sound(0x16C);
    }
    if (ABSF(D_800E3210[omCurrentObj->objId]) < 0.5f) {
        D_800E3750[omCurrentObj->objId] = 0;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
    }
    if (ABSF(D_800E3210[omCurrentObj->objId]) < 1.5f) {
        if (D_800E3750[omCurrentObj->objId] == 0.5f) {
            D_800E9E20[omCurrentObj->objId] = 1;
        }
    }
    if (gEntitiesNextPosYArray[omCurrentObj->objId] <= ent->unk4) {
        if (D_800E9E20[omCurrentObj->objId] == 0) {
            D_800E9E20[omCurrentObj->objId] = 1;
            D_800E3750[omCurrentObj->objId] = 0;
            D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
            D_800E3C90[omCurrentObj->objId] = 65535.0f;
        }
    }
    if (D_800E9E20[omCurrentObj->objId] == 2) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801B57A0_ovl7);
    }
}

/* 65535.0f = 65535.0f : now emitted by this TU */

void func_801B6020_ovl7(s32 arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 3;
    ent->unk98 = &D_801CC064_ovl7;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    func_800AA864(0x100C4, 2);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801B6130_ovl7(GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    if (ent->unk3C == 0) {
        if (D_800E9E20[omCurrentObj->objId] != 0) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 0;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801B57A0_ovl7);
        }
    }
}

void func_801B61B0_ovl7(GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 2;
    ent->unk98 = &D_801CC088_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = 4.0f;
    D_800E3750[omCurrentObj->objId] = -1.0f;
    D_800E3C90[omCurrentObj->objId] = 4.0f;
    func_800A9EA4(0x100C5);
    curObjSleepForever();
}

void func_801B62A8_ovl7(GObj *arg0) {
}

void func_801B62B0_ovl7(GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    D_800E9C60[omCurrentObj->objId] = 0;
    ent->unk98 = &D_801CC088_ovl7;
    D_800DDFD0[omCurrentObj->objId] = 5;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    D_800E3C90[omCurrentObj->objId] = 5.0f;
    curObjSleepForever();
}

void func_801B6374_ovl7(GObj *arg0) {
}

void func_801B637C_ovl7(void) {
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 4;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
    }
    func_80199628_ovl7();
}

void func_801B63E4_ovl7(GObj *arg0) {
    func_800AECC0(gameTicksPerDraw);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_801CD6E8_ovl7);
}

void func_801B6438_ovl7(GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801B6588_ovl7;
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
    }
    func_801A0D50_ovl7(func_801B63E4_ovl7);
    D_800EA360[omCurrentObj->objId] = 1;
    D_800EA520[omCurrentObj->objId] = -1;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 13.0f;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -2.0f;
    D_800E6850[omCurrentObj->objId] = 13.0f;
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_801CD6E8_ovl7);
}

void func_801B6588_ovl7(void) {
    if (func_801A0D74_ovl7() == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_801CD6F4_ovl7);
    }
    eneTurnCommon(6);
    func_8019F3B0_ovl7();
}

void func_801B65E8_ovl7(GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 0;
    ent->unk98 = &D_801CC0AC_ovl7;
    func_800A9EA4(0x100C4);
    curObjSleepForever();
}

void func_801B6678_ovl7(GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    if (ent->unk3C == 0) {
        if (ABSF(D_800E64D0[omCurrentObj->objId]) <= ABSF(D_800E6690[omCurrentObj->objId])) {
            if (D_800EA520[omCurrentObj->objId] == -1) {
                D_800E6690[omCurrentObj->objId] = 0;
                D_800EA520[omCurrentObj->objId] = 0x34;
                return;
            }
        }
    }
    if (D_800EA520[omCurrentObj->objId] == 0) {
        D_800E6690[omCurrentObj->objId] = 0;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801B63E4_ovl7);
    } else if (D_800EA520[omCurrentObj->objId] != -1) {
        D_800EA520[omCurrentObj->objId] -= 1;
    }
}

void func_801B6810_ovl7(GObj *arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800EA360[omCurrentObj->objId] = 2;
    D_800EA520[omCurrentObj->objId] = -1;
    D_800DDFD0[omCurrentObj->objId] = 1;
    ohSleep(8);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801B68BC_ovl7(GObj *arg0) {
    f32 temp;

    if (D_800E9E20[omCurrentObj->objId] != 0) {
        D_800E64D0[omCurrentObj->objId] =
            D_800E6A10[omCurrentObj->objId] * ((f32) D_800EA360[omCurrentObj->objId] * 13.0f);
        D_800E6690[omCurrentObj->objId] =
            D_800E6A10[omCurrentObj->objId] * ((f32) D_800EA360[omCurrentObj->objId] * -2.0f);
        temp = (f32) D_800EA360[omCurrentObj->objId] * 13.0f;
        D_800E6850[omCurrentObj->objId] = ABSF(temp);
        func_80199F1C_ovl7(arg0);
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801B63E4_ovl7);
    }
}

extern struct EnemyEventTable D_801CC0D0_ovl7;
void func_800B3520(void);
void func_800A9EA4(s32);

void func_801B6A14_ovl7(s32 arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 2;
    ent->unk98 = &D_801CC0D0_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800B3520();
    D_800E3210[omCurrentObj->objId] = 4.0f;
    D_800E3750[omCurrentObj->objId] = -1.0f;
    D_800E3C90[omCurrentObj->objId] = 4.0f;
    func_800A9EA4(0x100C5);
    curObjSleepForever();
}

void func_801B6B18_ovl7(GObj *arg0) {
}

void func_801B6B20_ovl7(void) {
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
    }
    func_80199628_ovl7();
}

void func_801B6B88_ovl7(GObj *arg0) {
    func_800AECC0(gameTicksPerDraw);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_801CD700_ovl7);
}

void func_801B6BDC_ovl7(GObj *arg0) {
    void func_800B78AC(s32);
    void func_801B6E28_ovl7(void);
    void func_801B6B88_ovl7(GObj *);
    void lbvector_Rotate(Vector *, s32, f32);
    f32 t1;
    Vector sp20;

    D_800DEF90[omCurrentObj->objId] = func_800B78AC;
    D_800DF150[omCurrentObj->objId] = func_801B6E28_ovl7;
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    sp20.z = 1.0f;
    sp20.y = 0.0f;
    sp20.x = 0.0f;
    lbvector_Rotate(&sp20, 2, gEntitiesAngleYArray[omCurrentObj->objId]);
    t1 = sp20.x * 13.0f;
    D_800E3050[omCurrentObj->objId] = t1;
    D_800E3590[omCurrentObj->objId] = sp20.x * -2.0f;
    D_800E3AD0[omCurrentObj->objId] = (t1 < 0) ? -t1 : t1;
    t1 = sp20.z * 13.0f;
    D_800E33D0[omCurrentObj->objId] = t1;
    D_800E3910[omCurrentObj->objId] = sp20.z * -2.0f;
    D_800E3E50[omCurrentObj->objId] = (t1 < 0) ? -t1 : t1;
    D_800EA360[omCurrentObj->objId] = 1;
    D_800EA520[omCurrentObj->objId] = -1;
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
    }
    func_801A0D50_ovl7(func_801B6B88_ovl7);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_801CD700_ovl7);
}

void func_801B6E28_ovl7(void) {
    if (func_801A0D74_ovl7() == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_801CD70C_ovl7);
    }
    func_8019D2FC_ovl7(30.0f, 6);
}

void func_801B6E88_ovl7(GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 0;
    ent->unk98 = &D_801CC0F4_ovl7;
    func_800A9EA4(0x100C4);
    curObjSleepForever();
}

#ifdef NON_MATCHING
/* 11/165 */
void func_801B6F18_ovl7(GObj *arg0) {
    void func_801B6B88_ovl7(GObj *);
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    if (ent->unk3C == 0) {
        if (ABSF(D_800E3050[omCurrentObj->objId]) <= ABSF(D_800E3590[omCurrentObj->objId])) {
            if (ABSF(D_800E33D0[omCurrentObj->objId]) <= ABSF(D_800E3910[omCurrentObj->objId])) {
                if (D_800EA520[omCurrentObj->objId] == -1) {
                    D_800E3910[omCurrentObj->objId] = 0;
                    D_800E3590[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
                    D_800EA520[omCurrentObj->objId] = 0x2A;
                    return;
                }
            }
        }
    }
    if (D_800EA520[omCurrentObj->objId] == 0) {
        D_800E3910[omCurrentObj->objId] = 0;
        D_800E3050[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] = D_800E33D0[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
        D_800E3E50[omCurrentObj->objId] = 65535.0f;
        D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801B6B88_ovl7);
    } else if (D_800EA520[omCurrentObj->objId] != -1) {
        D_800EA520[omCurrentObj->objId] -= 1;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_11/func_801B6F18_ovl7.s")
#endif

void func_801B71AC_ovl7(GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800EA360[omCurrentObj->objId] = 2;
    D_800EA520[omCurrentObj->objId] = -1;
    D_800DDFD0[omCurrentObj->objId] = 1;
    ohSleep(8);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

/* 7 diffs: stack layout, spill slot and every instruction are exact; the
   D_800E1B50 element lives in $a0 where the ROM uses $a1 (one-slot argument
   register rotation). Callee return types, prototypes and a dummy parameter
   were all swept. */
#ifdef NON_MATCHING
extern s32 D_800EA360[], D_800E9E20[], D_800E9C60[];
void func_80199F1C_ovl7(void);
void func_8019CFD0_ovl7(void *);
void func_801B6B88_ovl7(struct GObj *);

void func_801B726C_ovl7(void) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];
    Vector sp20;

    if (D_800E9E20[omCurrentObj->objId] != 0) {
        if (D_800E9C60[omCurrentObj->objId] == 0) {
            func_80199F1C_ovl7();
            D_800E9C60[omCurrentObj->objId] = 1;
        }
        if (ent->unk3C == 0) {
            sp20.x = D_800EA360[omCurrentObj->objId] * 13.0f;
            sp20.y = D_800EA360[omCurrentObj->objId] * -2.0f;
            sp20.z = D_800EA360[omCurrentObj->objId] * 13.0f;
            func_8019CFD0_ovl7(&sp20);
            gEntityFuncListIDArray[omCurrentObj->objId] = 0;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801B6B88_ovl7);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_11/func_801B726C_ovl7.s")
#endif
#ifdef NON_MATCHING
// 99/125 diffs: all stores are right; every base-address temp is rotated
// one register (ROM $a2/$a3/$t0.., IDO $t0/$t1..) and $v0/$v1 are swapped.
void func_801B73C0_ovl7(GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 2;
    ent->unk98 = &D_801CC118_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3590[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E33D0[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3210[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3050[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = D_801CE354_ovl7;
    D_800E3C90[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    D_800E3AD0[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    D_800E3210[omCurrentObj->objId] = 4.0f;
    D_800E3750[omCurrentObj->objId] = -1.0f;
    D_800E3C90[omCurrentObj->objId] = 4.0f;
    func_800A9EA4(0x100C5);
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_11/func_801B73C0_ovl7.s")
#endif
void func_801B7590_ovl7(GObj *arg0) {
}

void func_801B7598_ovl7(void) {
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
    }
    func_80199628_ovl7();
}

void func_801B7600_ovl7(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_801CD718_ovl7);
}

void func_801B7648_ovl7(struct GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801B76CC_ovl7;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801A3280_ovl7();
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_801CD718_ovl7);
}

void func_801B76CC_ovl7(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 1, &D_801CD71C_ovl7);
    func_8019B424_ovl7(arg0);
    eneTurnCommon(6);
    func_8019F3B0_ovl7();
}

void func_801B772C_ovl7(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800A9EA4(0x100C4);
    curObjSleepForever();
}

void func_801B7778_ovl7(GObj *arg0) {
}

void func_801B7780_ovl7(GObj *arg0) {
    void func_800A9864(s32, s32, s32);
    void func_801B793C_ovl7(void);
    extern struct EnemyEventTable D_801CB4DC_ovl7;
    struct EnemyRecord *ent;

    ent = D_800E1B50[omCurrentObj->objId];
    D_800E98E0[omCurrentObj->objId] = 0x28;
    D_800DF150[omCurrentObj->objId] = func_801B793C_ovl7;
    ent->unk98 = &D_801CB4DC_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9864(0x10094, 0x23, 0x10);
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        func_800A9EA4(0x1053B);
    } else {
        func_800A9EA4(0x1053C);
    }
    if (D_800E7880[omCurrentObj->objId] == 0) {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 5.0f;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E6850[omCurrentObj->objId] = 5.0f;
    } else {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 8.0f;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E6850[omCurrentObj->objId] = 8.0f;
    }
    curObjSleepForever();
}

#ifdef NON_MATCHING
// 7/28 diffs: only the D_800E98E0 value lands in $a0 where the ROM uses $a1.
void func_801B793C_ovl7(void) {
    if (D_800E98E0[omCurrentObj->objId] == 0) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801ACF84_ovl7);
    } else {
        D_800E98E0[omCurrentObj->objId] -= 1;
        func_801A0D74_ovl7();
        func_801A03B4_ovl7();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_11/func_801B793C_ovl7.s")
#endif