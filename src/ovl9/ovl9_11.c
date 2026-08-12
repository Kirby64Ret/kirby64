#include <ultra64.h>
#include <macros.h>

#include "GObj.h"
#include "buffers.h"
#include "ovl1/ovl1_6.h"
#include "unk_structs/D_800E1B50.h"
#include "unk_structs/D_800DE350.h"

extern FUNCLIST D_8021C8D8_ovl9;
extern FUNCLIST D_8021C8D0_ovl9;
extern s32 D_801CC550;

/* 65535.0f literals below: this TU owns its .rodata (migrated) */
extern s32 D_801CC670;
extern void func_800B6A2C(void);

/* 65535.0f literals below: this TU owns its .rodata (migrated) */
extern s32 D_801CC694;
IN_FILE void func_80208E44_ovl9(struct GObj *this);
IN_FILE void func_80208588_ovl9(s32 arg0);
IN_FILE void func_80207DA4_ovl9(struct GObj *this);
IN_FILE void func_80208604_ovl9(struct Normal *arg0);

/* 65535.0f literals below: this TU owns its .rodata (migrated) */
extern void func_800AECC0(f32);
extern void func_800AED20(f32);


void func_802072C0_ovl9(struct GObj *this) {
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_8021C8D0_ovl9);
}

void func_80207304_ovl9(struct GObj *this) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CC550;
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, &D_8021C8D8_ovl9);
}

IN_FILE void func_802074B0_ovl9(void);
extern void func_800B7B64(void);

/* 7 diffs: one-slot rotation -- the ROM holds D_800E1B50[objId] in $a2 and
   &D_800E6A10[objId] in $a1, IDO uses $a1/$a0. An explicit `f32 *p` local
   makes it far worse (79 diffs). */
#ifdef NON_MATCHING
extern FUNCLIST D_8021C8D8_ovl9;

void func_80207374_ovl9(void) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = func_800B7B64;
    tmp->unk98 = &D_801CC550;
    D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
    D_800DF150[omCurrentObj->objId] = func_802074B0_ovl9;
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        func_801A6C10_ovl7();
    }
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
    }
    func_801A0D50_ovl7(func_80207304_ovl9);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, &D_8021C8D8_ovl9);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_11/func_80207374_ovl9.s")
#endif
extern FUNCLIST D_8021C8E8_ovl9;
IN_FILE void func_802079F4_ovl9(f32, u8);

IN_FILE void func_80207C24_ovl9(void);
void func_802074B0_ovl9(void) {
    s32 pad;
    s32 result;

    result = func_801A0D74_ovl7();
    func_801A3198_ovl7();
    if (result == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 4, &D_8021C8E8_ovl9);
    }
    func_802079F4_ovl9(15.0f, 6);
    func_80207C24_ovl9();
    func_8019F3B0_ovl7();
}

void func_80207530_ovl9(struct GObj *this) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E9AA0[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    func_800AA864(0x000101BF, 2);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_802075C4_ovl9(void) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        func_80199F1C_ovl7();
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80207304_ovl9);
    }
}

void func_80207648_ovl9(struct GObj *this) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    func_800AA864(0x101B9, 1);
    while (tmp->unk3C != 0) {
        ohSleep(1);
    }
    func_800AA864(0x101BA, 2);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_80207710_ovl9(void) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        func_80199F1C_ovl7();
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80207304_ovl9);
    }
}

void func_80207794_ovl9(struct GObj *this) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E9E20[omCurrentObj->objId] = 0;
    func_800AA864(0x101BB, 1);
    while (tmp->unk3C != 0) {
        ohSleep(1);
    }
    D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_8020786C_ovl9(struct GObj *this) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80207304_ovl9);
    }
}

extern s32 D_801CC574;

void func_802078D8_ovl9(struct GObj *this) {
    f32 temp_f2;
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CC574;
    D_800DDFD0[omCurrentObj->objId] = 3;
    func_800A9EA4(0x101BF);
    temp_f2 = 65535.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = temp_f2;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -1.5f;
    D_800E3C90[omCurrentObj->objId] = temp_f2;
    curObjSleepForever();
}

void func_802079EC_ovl9(struct GObj *this) {
}

extern const f32 D_8021DAC4_ovl9, D_8021DAC8_ovl9;
#ifdef NON_MATCHING
void func_802079F4_ovl9(f32 arg0, u8 arg1) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (tmp->unk3C != 0) {
        if (tmp->unk3C >= arg1) {
            tmp->unk3C = 0;
            D_800E9020[omCurrentObj->objId] = 0.0f;
            D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
            D_800E9AA0[omCurrentObj->objId] = ((u32)D_800E9AA0[omCurrentObj->objId]) ^ 1;
        }
        else if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
            D_800E9020[omCurrentObj->objId] -= ((arg0 * D_8021DAC4_ovl9) / 180.0f);
        } else {
            D_800E9020[omCurrentObj->objId] += ((arg0 * D_8021DAC8_ovl9) / 180.0f);
        }
        tmp->unk3C += 1;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_11/func_802079F4_ovl9.s")
#endif
/* 65535.0f literals below: this TU owns its .rodata (migrated) */
extern s32 D_801CC598;
void func_80207B30_ovl9(struct GObj *this) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -1.5f;
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    tmp->unk98 = &D_801CC598;
}

/* 65535.0f literals below: this TU owns its .rodata (migrated) */

void func_80207BA8_ovl9(struct GObj *this) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    tmp->unk98 = &D_801CC550;
}

extern void func_80111550(void *);
extern void func_80111ECC(void *);
extern void func_801A0C70_ovl7(void);
extern s32 D_801C9178;

struct Ovl9_11AnimCmd {
    u8 filler0[8];
    struct DObj *unk8;
    u8 fillerC[0x24];
    struct DObj *unk30;
};
struct Ovl9_11AnimObj {
    u8 filler0[0x24];
    struct Ovl9_11AnimCmd *unk24;
};
extern struct Ovl9_11AnimObj *func_80111C88(s32 *, u32);

void func_80207C24_ovl9(void) {
    struct DObj *sp1C = D_800DFBD0[omCurrentObj->objId][11];
    struct DObj *sp18 = D_800DFBD0[omCurrentObj->objId][7];
    struct Ovl9_11AnimObj *temp;

    func_80111550((void *) omCurrentObj->objId);
    temp = func_80111C88(&D_801C9178, omCurrentObj->objId);
    temp->unk24->unk8 = sp18;
    temp->unk24->unk30 = sp1C;
    func_80111ECC(temp);
    func_801A0C70_ovl7();
}

extern FUNCLIST D_8021C8F8_ovl9;
extern FUNCLIST D_8021C8FC_ovl9;

void func_80207CAC_ovl9(struct GObj *this) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_8021C8F8_ovl9);
}

void func_80207CF4_ovl9(void) {
    D_800DF150[omCurrentObj->objId] = func_80207DA4_ovl9;
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        func_801A6C10_ovl7();
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801A3280_ovl7();
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_8021C8F8_ovl9);
}

void func_80207DA4_ovl9(struct GObj *this) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 1, &D_8021C8FC_ovl9);
}

void func_80207DEC_ovl9(struct GObj *this) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800A9EA4(0x101BD);
    curObjSleepForever();
}

void func_80207EA4_ovl9(struct GObj *this) {
}

extern FUNCLIST D_8021C900_ovl9;
extern void func_800B6B8C(struct GObj *);
void func_80207EAC_ovl9(struct GObj *this) {
    D_800DEF90[omCurrentObj->objId] = func_800B6B8C;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8021C900_ovl9);
}

void func_80207F0C_ovl9(void);
extern FUNCLIST D_8021C904_ovl9;
void func_80208758_ovl9();
void func_80207F0C_ovl9(void) {
    func_80208758_ovl9();
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 8, &D_8021C904_ovl9);
}

IN_FILE void func_80208020_ovl9(void);
void func_80207F58_ovl9(struct GObj *this) {
    D_800DF150[omCurrentObj->objId] = func_80208020_ovl9;
    D_800E93A0[omCurrentObj->objId] = 0;
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 4;
    }
    func_801A0D50_ovl7(func_80207F0C_ovl9);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 8, &D_8021C904_ovl9);
}

extern FUNCLIST D_8021C924_ovl9;
extern void func_8019B2C0_ovl7(s32);
void func_80208020_ovl9(void) {
    if (func_801A0D74_ovl7() == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 8, &D_8021C924_ovl9);
    }
    eneTurnCommon(6);
    func_8019B2C0_ovl7(1);
    func_8019F3B0_ovl7();
}

extern s32 D_801CC5BC;
void func_80208088_ovl9(struct GObj *this) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CC5BC;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800B3520();
    func_800A9EA4(0x101FF);
    curObjSleepForever();
}

extern s32 func_8019A7E8_ovl7(f32);
void func_80208100_ovl9(struct GObj *this) {
    if (func_8019A7E8_ovl7(200.0f) != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80207F0C_ovl9);
    }
}


void func_8020816C_ovl9(struct GObj *this, s32 arg1, f32 arg2) {
    if ((arg1 == 0) && ((s32) arg2 == 1)) {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -6.0f;
        func_80208E44_ovl9(D_800DE350[omCurrentObj->objId]);
    }
}

extern s32 D_801CC5E0;

void func_802081F4_ovl9(struct GObj *this) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CC5E0;
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    func_8019B164_ovl7();
    if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
        func_800AA018(0x101FE);
    } else {
        func_800AA018(0x101FD);
    }
    D_800DF310[omCurrentObj->objId] = func_8020816C_ovl9;
    func_800AF27C();
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_80208310_ovl9(struct GObj *this) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80207F0C_ovl9);
    }
}

void func_8020837C_ovl9(struct GObj *this) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800DEF90[omCurrentObj->objId] = func_800B6A2C;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -6.0f;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.125f;
    D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
    D_800E93A0[omCurrentObj->objId] = 0;
    D_800E9720[omCurrentObj->objId] = 0;
    func_80208E44_ovl9(this);
    func_80208588_ovl9(0xB5);
    func_800A9EA4(0x101FB);
    curObjSleepForever();
}

void func_80208488_ovl9(struct GObj *this) {
    s32 pad[2];
    Vector v;

    if (ABSF(D_800E64D0[omCurrentObj->objId]) < ABSF(D_800E6690[omCurrentObj->objId])) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80207F0C_ovl9);
        return;
    }
    if (!(D_800E8AE0[omCurrentObj->objId] & 1)) {
        v.x = 0;
        v.y = -20.0f;
        v.z = 10.0f;
        func_80208604_ovl9(&v);
    }
}

void func_80208588_ovl9(s32 arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk34 = func_800A8234(3, 2, arg0);
    D_800E9560[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId];
}

extern const f32 D_8021DAD8_ovl9, D_8021DADC_ovl9;
#ifdef NON_MATCHING
void func_80208604_ovl9(struct Normal *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    struct Sub800E1B50_Unk34 *tmp_34 = tmp->unk34;

    if (tmp_34 && tmp_34->unk4C == 0) {
        tmp_34 = 0;
    } else {
        f32 temp_f12 = D_8021DAD8_ovl9;

        tmp_34->unk4C->unk4 = gEntitiesNextPosXArray[omCurrentObj->objId] + arg0->x;
        tmp_34->unk4C->unk8 = gEntitiesNextPosYArray[omCurrentObj->objId] + arg0->y;
        tmp_34->unk4C->unkC = gEntitiesNextPosZArray[omCurrentObj->objId] + arg0->z;
        tmp_34->unk4C->unk14 = gEntitiesAngleYArray[omCurrentObj->objId] - D_8021DADC_ovl9;
        while (temp_f12 <= tmp_34->unk4C->unk14) {
            tmp_34->unk4C->unk14 -= temp_f12;
        }
        while (tmp_34->unk4C->unk14 < 0.0f) {
            tmp_34->unk4C->unk14 += temp_f12;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_11/func_80208604_ovl9.s")
#endif
void func_80208758_ovl9(struct GObj *this) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (tmp->unk34 != NULL) {
        struct Sub800E1B50_Unk34 *p = tmp->unk34;
        func_800A22D4(p);
        tmp->unk34 = NULL;
    }
}


extern s32 D_801CC604;
void func_802087AC_ovl9(struct GObj *this) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CC604;
    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E9E20[omCurrentObj->objId] = 0;
    func_800B3520();
    D_800E93A0[omCurrentObj->objId] = 0;
    func_800AA864(0x101FC, 1);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_80208878_ovl9(struct GObj *this) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 7;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80207F0C_ovl9);
    }
}

extern s32 D_801CC628;
void func_802088E4_ovl9(struct GObj *this) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CC628;
    D_800DDFD0[omCurrentObj->objId] = 7;
    func_800B3520();
    D_800E9720[omCurrentObj->objId] = 0;
    D_800E93A0[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 1;
    func_800A9EA4(0x101F9);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 6.0f;
    func_80208E44_ovl9(this);
    func_80208758_ovl9(this);
    func_80208588_ovl9(0xB7);
    curObjSleepForever();
}

void func_802089F4_ovl9(struct GObj *this) {
    struct Normal nml;

    if (!(D_800E8AE0[omCurrentObj->objId] & 1)) {
        nml.x = 0.0f;
        nml.y = 10.0f;
        nml.z = 10.0f;
        func_80208604_ovl9(&nml);
    }
}

extern s32 D_801CC64C;

void func_80208A58_ovl9(struct GObj *this) {
    f32 temp_f2;
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CC64C;
    D_800DDFD0[omCurrentObj->objId] = 4;
    func_800A9EA4(0x101FF);
    temp_f2 = 65535.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = temp_f2;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -1.5f;
    D_800E3C90[omCurrentObj->objId] = temp_f2;
    func_80208E44_ovl9(this);
    curObjSleepForever();
}

void func_80208B78_ovl9(struct GObj *this) {
}

void func_80208B80_ovl9(struct GObj *this) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CC670;
    D_800DDFD0[omCurrentObj->objId] = 5;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    if (D_800DFF50[omCurrentObj->objId] != 0x101FB) {
        D_800DEF90[omCurrentObj->objId] = func_800B6A2C;
        D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
    }
    func_800A9EA4(0x101FB);
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -1.5f;
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    func_80208E44_ovl9(this);
    curObjSleepForever();
}

void func_80208CC8_ovl9(struct GObj *this) {
}

void func_80208CD0_ovl9(struct GObj *this) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CC694;
    D_800DDFD0[omCurrentObj->objId] = 6;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9EA4(0x000101F9);
    D_800E3210[omCurrentObj->objId] = 10.0f;
    D_800E3750[omCurrentObj->objId] = -1.5f;
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    func_80208E44_ovl9(this);
    curObjSleepForever();
}

void func_80208DC0_ovl9(struct GObj *this) {

}

/* 65535.0f literals below: this TU owns its .rodata (migrated) */

void func_80208DC8_ovl9(struct GObj *this) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    tmp->unk98 = &D_801CC628;
}

void func_80208E44_ovl9(struct GObj *this) {
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        D_800E64D0[omCurrentObj->objId] = D_800E64D0[omCurrentObj->objId] * 0.5f;
        D_800E6690[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId] * 0.5f;
        D_800E3210[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] * 0.5f;
        D_800E3750[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] * 0.5f;
    }
}

void func_80208EF8_ovl9(struct GObj *this) {
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        D_800E64D0[omCurrentObj->objId] = D_800E64D0[omCurrentObj->objId] * 0.5f;
        D_800E6690[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId] * 0.5f;
        D_800E3210[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] * 0.5f;
        D_800E3750[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] * 0.5f;
    } else {
        D_800E64D0[omCurrentObj->objId] = 2.0f * D_800E64D0[omCurrentObj->objId];
        D_800E6690[omCurrentObj->objId] = 2.0f * D_800E6690[omCurrentObj->objId];
        D_800E3210[omCurrentObj->objId] = 2.0f * D_800E3210[omCurrentObj->objId];
        D_800E3750[omCurrentObj->objId] = 2.0f * D_800E3750[omCurrentObj->objId];
    }
}
