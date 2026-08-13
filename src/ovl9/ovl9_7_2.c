#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "buffers.h"
#include "ovl1/ovl1_7.h"
#include "unk_structs/D_800E1B50.h"

extern FUNCLIST D_8021C3B4_ovl9;
extern FUNCLIST D_8021C3CC_ovl9;
extern FUNCLIST D_8021C3D4_ovl9;
extern FUNCLIST D_8021C3DC_ovl9;
extern FUNCLIST D_8021C3F4_ovl9;
extern FUNCLIST D_8021C45C_ovl9;
extern FUNCLIST D_8021C488_ovl9;
extern FUNCLIST D_8021C4C4_ovl9;

void func_801F29D0_ovl9(void) {
    s32 v = D_800E9AA0[omCurrentObj->objId].as_s32;
    f32 dir = D_800E6A10[omCurrentObj->objId];
    s32 sum;

    if (v != 0) {
        sum = D_800E9C60[omCurrentObj->objId] + v;
        if (sum < 0xB4) {
            if (dir == 1.0f) {
                D_800E9020[omCurrentObj->objId] -= ((f32) v * 3.141592741f) / 180.0f;
            } else {
                D_800E9020[omCurrentObj->objId] += ((f32) v * 3.141592741f) / 180.0f;
            }
        } else {
            D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
            D_800E9E20[omCurrentObj->objId] = 1;
            if (dir == 1.0f) {
                D_800E17D0[omCurrentObj->objId] += 3.141592741f;
            } else {
                D_800E17D0[omCurrentObj->objId] -= 3.141592741f;
            }
            D_800E9020[omCurrentObj->objId] = 0.0f;
            D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
        }
        D_800E9C60[omCurrentObj->objId] = sum;
    }
}

void func_8019C844_ovl7(Vector *);

void func_801F2B80_ovl9(Vector *arg0) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 var_f12;
    f32 var_f2;
    u32 temp_v0;

    temp_v0 = omCurrentObj->objId * 4;
    temp_f0 = *(f32 *) ((u8 *) D_800E64D0 + temp_v0);
    if (temp_f0 < 0.0f) {
        var_f12 = -temp_f0;
    } else {
        var_f12 = temp_f0;
    }
    temp_f0_2 = *(f32 *) ((u8 *) D_800E6690 + temp_v0);
    if (temp_f0_2 < 0.0f) {
        var_f2 = -temp_f0_2;
    } else {
        var_f2 = temp_f0_2;
    }
    if ((var_f12 < var_f2) && (func_8019C844_ovl7(arg0), (arg0->y != 0.0f))) {
        D_800E64D0[omCurrentObj->objId] = arg0->x;
        D_800E6690[omCurrentObj->objId] = arg0->y;
        temp_f0_3 = arg0->z;
        if (temp_f0_3 < 0.0f) {
            D_800E6850[omCurrentObj->objId] = -temp_f0_3;
            return;
        }
        D_800E6850[omCurrentObj->objId] = temp_f0_3;
    }
}

extern FUNCLIST D_8021C3A0_ovl9;

void func_801F2CAC_ovl9(struct GObj *arg0) {
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 5, &D_8021C3A0_ovl9);
}

void func_801F2CF0_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_8021C3B4_ovl9);
}

void func_801F2E04_ovl9(void);
void func_801F2CF0_ovl9(struct GObj *);
void func_801A6C10_ovl7();
void func_801A0D50_ovl7(void *);

void func_801F2D38_ovl9(void) {
    D_800DF150[omCurrentObj->objId] = &func_801F2E04_ovl9;
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        func_801A6C10_ovl7();
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    func_801A0D50_ovl7(&func_801F2CF0_ovl9);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_8021C3B4_ovl9);
}

extern FUNCLIST D_8021C3C0_ovl9;
s32 func_801A0D74_ovl7(void);
void func_8019C9B0_ovl7(f32, u8);
void func_8019F3B0_ovl7(void);

void func_801F2E04_ovl9(void) {
    if (func_801A0D74_ovl7() == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_8021C3C0_ovl9);
    }
    func_8019C9B0_ovl7(30.0f, 6);
    func_8019F3B0_ovl7();
}

extern struct Sub800E1B50_Unk98 D_801CBC98;
void func_800AA018(s32);

void func_801F2E6C_ovl9(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CBC98;
    D_800E98E0[omCurrentObj->objId] = 0x1F;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AA018(0x10011);
    D_800E64D0[omCurrentObj->objId] = 0.0f;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.5f;
    D_800E6850[omCurrentObj->objId] = 3.5f;
    D_800E3210[omCurrentObj->objId] = 4.0f;
    D_800E3750[omCurrentObj->objId] = -0.25f;
    curObjSleepForever();
}

extern struct GObjProcess *gEntityGObjProcessArray[];
void func_801F2CF0_ovl9(struct GObj *);

void func_801F2F94_ovl9(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId]--;
    if (D_800E98E0[omCurrentObj->objId] == 0x12) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F2CF0_ovl9);
    }
}

void func_801F3020_ovl9(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E98E0[omCurrentObj->objId] = 0x3E;
    D_800E64D0[omCurrentObj->objId] = 0.0f;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.5f;
    D_800E6850[omCurrentObj->objId] = 3.5f;
    D_800E3210[omCurrentObj->objId] = -4.0f;
    D_800E3750[omCurrentObj->objId] = 0.25f;
    ohSleep(0x1F);
    D_800E3210[omCurrentObj->objId] = 4.0f;
    D_800E3750[omCurrentObj->objId] = -0.25f;
    curObjSleepForever();
}

extern struct GObjProcess *gEntityGObjProcessArray[];
void func_801F2CF0_ovl9(struct GObj *);

void func_801F3158_ovl9(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId]--;
    if (D_800E98E0[omCurrentObj->objId] == 0x12) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F2CF0_ovl9);
    }
}

void func_801F31E4_ovl9(GObj *arg0) {
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0xA;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 2;
    ohSleep(0xA);
    D_800E6690[omCurrentObj->objId] = -D_800E6690[omCurrentObj->objId];
    curObjSleepForever();
}

extern struct GObjProcess *gEntityGObjProcessArray[];
void func_801F29D0_ovl9(void);
void func_801F2CF0_ovl9(struct GObj *);

void func_801F3294_ovl9(GObj *arg0) {
    func_801F29D0_ovl9();
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F2CF0_ovl9);
    }
}

void func_801F3308_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_8021C3CC_ovl9);
}

void func_801F3408_ovl9(struct GObj *);
void func_801F3308_ovl9(struct GObj *);
void func_801A6C10_ovl7();
void func_801A0D50_ovl7(void *);

void func_801F3350_ovl9(void) {
    D_800DF150[omCurrentObj->objId] = &func_801F3408_ovl9;
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        func_801A6C10_ovl7();
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801A0D50_ovl7(&func_801F3308_ovl9);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_8021C3CC_ovl9);
}

extern FUNCLIST D_8021C3D0_ovl9;
s32 func_801A0D74_ovl7(void);
void func_8019B424_ovl7(struct GObj *);
void eneTurnCommon(s32);
void func_8019F3B0_ovl7(void);

void func_801F3408_ovl9(GObj *arg0) {
    s32 temp;

    temp = func_801A0D74_ovl7();
    func_8019B424_ovl7(arg0);
    eneTurnCommon(6);
    if (temp == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 1, &D_8021C3D0_ovl9);
    }
    func_8019F3B0_ovl7();
}

extern struct Sub800E1B50_Unk98 D_801CBC98;
void func_800AA018(s32);

void func_801F347C_ovl9(GObj *arg0) {
    UnkStruct800E1B50 *temp;

    temp = D_800E1B50[omCurrentObj->objId];
    temp->unk98 = &D_801CBC98;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AA018(0x10011);
    D_800E3210[omCurrentObj->objId] = 6.5f;
    D_800E3750[omCurrentObj->objId] = -0.25f;
    D_800E3C90[omCurrentObj->objId] = 6.5f;
    curObjSleepForever();
}

void func_801F3540_ovl9(GObj *arg0) {
    f32 temp;

    temp = (D_800E3210[omCurrentObj->objId] < 0.0f) ? -D_800E3210[omCurrentObj->objId] : D_800E3210[omCurrentObj->objId];
    if (D_800E3C90[omCurrentObj->objId] <= temp) {
        D_800E3750[omCurrentObj->objId] = -D_800E3750[omCurrentObj->objId];
    }
}

void func_801F35B8_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_8021C3D4_ovl9);
}

extern struct Sub800E1B50_Unk98 D_801CBCBC;
void func_801F36E0_ovl9(void);
void func_801F35B8_ovl9(struct GObj *);
void func_801A6C10_ovl7();
void func_801A0D50_ovl7(void *);

void func_801F3600_ovl9(void) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CBCBC;
    D_800DF150[omCurrentObj->objId] = &func_801F36E0_ovl9;
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        func_801A6C10_ovl7();
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801A0D50_ovl7(&func_801F35B8_ovl9);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_8021C3D4_ovl9);
}

extern FUNCLIST D_8021C3D8_ovl9;
s32 func_801A0D74_ovl7(void);
void func_8019C9B0_ovl7(f32, u8);
void func_8019F3B0_ovl7(void);

void func_801F36E0_ovl9(void) {
    if (func_801A0D74_ovl7() == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 1, &D_8021C3D8_ovl9);
    }
    func_8019C9B0_ovl7(30.0f, 6);
    func_8019F3B0_ovl7();
}

extern struct Sub800E1B50_Unk98 D_801CBCBC;
s32 func_8019BC34_ovl7(f32);
void func_800A9EA4(s32);

void func_801F3748_ovl9(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CBCBC;
    func_8019BC34_ovl7(80.0f);
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800A9EA4(0x10011);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 3.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 3.0f;
    D_800E3210[omCurrentObj->objId] = 1.0f;
    D_800E3750[omCurrentObj->objId] = -0.125f;
    D_800E3C90[omCurrentObj->objId] = 1.0f;
    curObjSleepForever();
}

void func_8019C71C_ovl7(f32);
void func_8019C844_ovl7(Vector *);
void func_801F2B80_ovl9(Vector *);

#ifdef NON_MATCHING
void func_801F3870_ovl9(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp;
    Vector sp28;
    f32 *p;
    f32 v;
    f32 a;

    tmp = D_800E1B50[omCurrentObj->objId];
    if (0.0f == D_800E6690[omCurrentObj->objId]) {
        if (tmp->unk3C == 0) {
            func_8019C71C_ovl7(-0.5f);
        } else {
            sp28.x = 3.0f;
            sp28.y = 0.0f;
            sp28.z = 3.0f;
            func_8019C844_ovl7(&sp28);
        }
    } else {
        sp28.x = 3.0f;
        sp28.y = 0.0f;
        sp28.z = 3.0f;
        func_801F2B80_ovl9(&sp28);
    }
    v = D_800E3210[omCurrentObj->objId];
    a = (v < 0.0f) ? -v : v;
    p = &D_800E3750[omCurrentObj->objId];
    if (D_800E3C90[omCurrentObj->objId] <= a) {
        *p = -*p;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F3870_ovl9.s")
#endif
void func_801F399C_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_8021C3DC_ovl9);
}

void func_801F3AC4_ovl9(void);
void func_801F399C_ovl9(struct GObj *);

extern FUNCLIST D_8021C3DC_ovl9;
extern void func_801A6C10_ovl7();
void func_801F3AC4_ovl9(void);
void func_801F399C_ovl9(struct GObj *);

void func_801F39E4_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = func_801F3AC4_ovl9;
    tmp->unk42 = 2;
    *(s8 *) &tmp->unk38 = -1;
    tmp->unk39 = -1;
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        func_801A6C10_ovl7(arg0);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801A0D50_ovl7(func_801F399C_ovl9);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_8021C3DC_ovl9);
}

extern FUNCLIST D_8021C3E8_ovl9;
s32 func_801A0D74_ovl7(void);
void eneTurnCommon(s32);
void func_8019F3B0_ovl7(void);

void func_801F3AC4_ovl9(void) {
    s32 temp;

    temp = 0;
    if (D_800E9FE0[omCurrentObj->objId].as_s32 != 0) {
        temp = func_801A0D74_ovl7();
    }
    if (temp == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_8021C3E8_ovl9);
    }
    eneTurnCommon(6);
    func_8019F3B0_ovl7();
}

extern struct Sub800E1B50_Unk98 D_801CBCE0;
void func_800A9EA4(s32);

void func_801F3B50_ovl9(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
    tmp->unk98 = &D_801CBCE0;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800A9EA4(0x10011);
    D_800E3210[omCurrentObj->objId] = 1.0f;
    D_800E3750[omCurrentObj->objId] = -0.125f;
    D_800E3C90[omCurrentObj->objId] = 1.0f;
    curObjSleepForever();
}

s32 func_8019A9AC_ovl7(f32, f32);
void func_801F399C_ovl9(struct GObj *);

void func_801F3C38_ovl9(GObj *arg0) {
    f32 v;
    f32 a;

    if (func_8019A9AC_ovl7(320.0f, 480.0f) == 3) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F399C_ovl9);
    } else {
        func_8019B424_ovl7(arg0);
        v = D_800E3210[omCurrentObj->objId];
        a = (v < 0.0f) ? -v : v;
        if (D_800E3C90[omCurrentObj->objId] <= a) {
            D_800E3750[omCurrentObj->objId] = -D_800E3750[omCurrentObj->objId];
        }
    }
}

void func_801F3D2C_ovl9(GObj *arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
    D_800DDFD0[omCurrentObj->objId] = 1;
    ohSleep(0xF);
    D_800E9E20[omCurrentObj->objId] = 1;
    D_800E98E0[omCurrentObj->objId] = 0x96;
    D_800E64D0[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 5.0f;
    D_800E3C90[omCurrentObj->objId] = 6.0f;
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F3E60_ovl9.s")

void func_800A9EA4(s32);

void func_801F40C8_ovl9(struct GObj *arg0) {
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    D_800DDFD0[omCurrentObj->objId] = 2;
    func_800A9EA4(0x10011);
    D_800E64D0[omCurrentObj->objId] = ABSF(D_800E64D0[omCurrentObj->objId]) * D_800EA1A0[omCurrentObj->objId];
    D_800E6690[omCurrentObj->objId] = ABSF(D_800E6690[omCurrentObj->objId]) * D_800EA1A0[omCurrentObj->objId];
    D_800E3210[omCurrentObj->objId] = 0;
    D_800E3750[omCurrentObj->objId] = 2.0f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    curObjSleepForever();
}

void func_801F422C_ovl9(GObj *arg0) {
}

void func_801F4234_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_8021C3F4_ovl9);
}

void func_800B7514(s32);
void func_801F4368_ovl9(struct GObj *);
void func_801F4234_ovl9(struct GObj *);

void func_801F427C_ovl9(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = func_800B7514;
    D_800DF150[omCurrentObj->objId] = &func_801F4368_ovl9;
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    tmp->unk42 = 2;
    *(s8 *) &tmp->unk38 = -1;
    tmp->unk39 = -1;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801A0D50_ovl7(&func_801F4234_ovl9);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_8021C3F4_ovl9);
}

extern FUNCLIST D_8021C400_ovl9;
void func_8019F3B0_ovl7(void);

void func_801F4368_ovl9(struct GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_8021C400_ovl9);
    func_8019F3B0_ovl7();
}

void func_800A9EA4(s32);

void func_801F43B8_ovl9(GObj *arg0) {
    D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800A9EA4(0x10011);
    D_800E3210[omCurrentObj->objId] = 1.0f;
    D_800E3750[omCurrentObj->objId] = -0.125f;
    D_800E3C90[omCurrentObj->objId] = 1.0f;
    curObjSleepForever();
}

void func_801F4234_ovl9(struct GObj *);

void func_801F4480_ovl9(GObj *arg0) {
    f32 v;
    f32 a;
    f32 *p;

    v = gEntitiesNextPosXArray[omCurrentObj->objId] - gEntitiesNextPosXArray[0];
    a = (v < 0.0f) ? -v : v;
    if (a <= 200.0f) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F4234_ovl9);
    } else {
        v = D_800E3210[omCurrentObj->objId];
        a = (v < 0.0f) ? -v : v;
        if (D_800E3C90[omCurrentObj->objId] <= a) {
            p = &D_800E3750[omCurrentObj->objId];
            *p = -*p;
        }
    }
}

void func_801F4588_ovl9(struct GObj *arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
    D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosZArray[0];
    D_800DDFD0[omCurrentObj->objId] = 1;
    ohSleep(0xF);
    D_800E9E20[omCurrentObj->objId] = 1;
    D_800E98E0[omCurrentObj->objId] = 0x96;
    D_800E3050[omCurrentObj->objId] = 0.0f;
    D_800E3590[omCurrentObj->objId] = 0.0f;
    D_800E3AD0[omCurrentObj->objId] = 3.0f;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3C90[omCurrentObj->objId] = 3.0f;
    D_800E33D0[omCurrentObj->objId] = 0.0f;
    D_800E3910[omCurrentObj->objId] = 2.0f;
    D_800E3E50[omCurrentObj->objId] = 20.0f;
    curObjSleepForever();
}

/* D_8021D904_ovl9: literal, this TU owns its .rodata */
void func_801F4234_ovl9(struct GObj *);

void func_801F471C_ovl9(GObj *arg0) {
    s32 vy;
    s32 vx;

    if (D_800E9E20[omCurrentObj->objId] != 0) {
        if (D_800EA6E0[omCurrentObj->objId] <= gEntitiesNextPosZArray[omCurrentObj->objId]) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 2;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F4234_ovl9);
        } else {
            vy = (gEntitiesNextPosYArray[0] + 40.0f < gEntitiesNextPosYArray[omCurrentObj->objId]) ? -1 : 1;
            vx = (gEntitiesNextPosXArray[0] < gEntitiesNextPosXArray[omCurrentObj->objId]) ? -1 : 1;
            D_800E3590[omCurrentObj->objId] = vx * 0.4f;
            D_800E3750[omCurrentObj->objId] = vy * 0.4f;
        }
    }
}

void func_801F4860_ovl9(GObj *arg0) {
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    D_800DDFD0[omCurrentObj->objId] = 2;
    func_800A9EA4(0x10011);
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = 2.0f;
    D_800E3C90[omCurrentObj->objId] = 20.0f;
    D_800E3910[omCurrentObj->objId] = -1.5f;
    curObjSleepForever();
}

void func_801F4934_ovl9(GObj *arg0) {
}

/* D_8021D908_ovl9: literal, this TU owns its .rodata */

void func_801F493C_ovl9(GObj *arg0) {
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    D_800E8920[omCurrentObj->objId] = 0;
}

extern FUNCLIST D_8021C40C_ovl9;
void func_800B6B8C(struct GObj *);

void func_801F49B4_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6B8C;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_8021C40C_ovl9);
}

extern FUNCLIST D_8021C414_ovl9;
void func_800AECC0(f32);

void func_801F4A14_ovl9(GObj *arg0) {
    func_800AECC0(gameTicksPerDraw);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, &D_8021C414_ovl9);
}

extern FUNCLIST D_8021C414_ovl9;
void func_801F4B30_ovl9(void);
void func_801F4A14_ovl9(struct GObj *);
s32 func_8019BC34_ovl7(f32);

void func_801F4A68_ovl9(GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = &func_801F4B30_ovl9;
    if (D_800E8920[omCurrentObj->objId] == 1) {
        *(u32 *) &gEntityFuncListIDArray[omCurrentObj->objId] = 1;
    } else {
        *(u32 *) &gEntityFuncListIDArray[omCurrentObj->objId] = 3;
    }
    func_8019BC34_ovl7(100.0f);
    func_801A0D50_ovl7(&func_801F4A14_ovl9);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, &D_8021C414_ovl9);
}

extern FUNCLIST D_8021C424_ovl9;
s32 func_801A0D74_ovl7(void);
void eneTurnCommon(s32);
void func_8019B2C0_ovl7(s32);
void func_8019F3B0_ovl7(void);

void func_801F4B30_ovl9(void) {
    if (func_801A0D74_ovl7() == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 4, &D_8021C424_ovl9);
    }
    eneTurnCommon(1);
    if (D_800E9C60[omCurrentObj->objId] != 0) {
        func_8019B2C0_ovl7(2);
    }
    func_8019F3B0_ovl7();
}

extern struct Sub800E1B50_Unk98 D_801CBD28;
void func_800AA864(s32, s32);

void func_801F4BBC_ovl9(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CBD28;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 2.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 2.0f;
    func_800AECC0(gameTicksPerDraw);
    func_800AA864(0x10054, 6);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

extern struct GObjProcess *gEntityGObjProcessArray[];
s32 func_8019BD38_ovl7(void);
void func_80199F1C_ovl7(struct GObj *);
void func_801F4A14_ovl9(struct GObj *);

void func_801F4CD8_ovl9(GObj *arg0) {
    UnkStruct800E1B50 *sp1C;

    sp1C = D_800E1B50[omCurrentObj->objId];
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F4A14_ovl9);
    } else if (func_8019BD38_ovl7() != 0) {
        if (sp1C->unk3C == 0) {
            func_80199F1C_ovl7(arg0);
        }
    }
}

extern struct Sub800E1B50_Unk98 D_801CBD28;
void func_800B3520(void);
void func_800AA018(s32);

void func_801F4D7C_ovl9(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9C60[omCurrentObj->objId] = 1;
    D_800DDFD0[omCurrentObj->objId] = 1;
    tmp->unk98 = &D_801CBD28;
    func_800B3520();
    func_800AA018(0x10054);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 2.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 2.0f;
    curObjSleepForever();
}

s32 func_8019BD38_ovl7(void);
void func_80199F1C_ovl7(struct GObj *);
s32 func_8019A7E8_ovl7(f32);
void func_8019B164_ovl7(void);
void func_801F4A14_ovl9(struct GObj *);

void func_801F4E58_ovl9(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];
    s32 sp18;

    if (func_8019BD38_ovl7() != 0) {
        if (tmp->unk3C == 0) {
            func_80199F1C_ovl7(arg0);
            return;
        }
    }
    if (func_8019A7E8_ovl7(200.0f) != 0) {
        sp18 = D_800E6A10[omCurrentObj->objId];
        func_8019B164_ovl7();
        D_800E9AA0[omCurrentObj->objId].as_s32 = D_800E6A10[omCurrentObj->objId];
        D_800E6A10[omCurrentObj->objId] = sp18;
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F4A14_ovl9);
    }
}

/* D_8021D90C_ovl9: literal, this TU owns its .rodata */
void func_800AA864(s32, s32);

void func_801F4F84_ovl9(GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800DDFD0[omCurrentObj->objId] = 2;
    ohSleep(8);
    if (1.0f == (f32) D_800E9AA0[omCurrentObj->objId].as_s32) {
        func_800AA864(0x1004E, 1);
    } else {
        func_800AA864(0x1004D, 1);
    }
    func_800AECC0(0.0f);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

struct Ovl9AnimCmd3 {
    u8 filler0[8];
    void *unk8;
    u8 filler0C[0x24];
    void *unk30;
};

struct Ovl9AnimObj3 {
    u8 filler0[0x24];
    struct Ovl9AnimCmd3 *unk24;
};

extern struct GObjProcess *gEntityGObjProcessArray[];
extern s32 D_801C8B08;
void func_80111550(void *);
struct Ovl9AnimObj3 *func_80111C88(s32 *, u32);
void func_80111ECC(struct Ovl9AnimObj3 *);
void func_801A0C70_ovl7(void);
void func_801F4A14_ovl9(struct GObj *);

void func_801F50E0_ovl9(GObj *arg0) {
    void *sp1C;
    void *sp18;
    struct Ovl9AnimObj3 *temp;

    sp1C = D_800DFBD0[omCurrentObj->objId][4];
    sp18 = D_800DFBD0[omCurrentObj->objId][14];
    if (D_800E9E20[omCurrentObj->objId] == 0) {
        func_80111550((void *) omCurrentObj->objId);
        temp = func_80111C88(&D_801C8B08, omCurrentObj->objId);
        temp->unk24->unk8 = sp18;
        temp->unk24->unk30 = sp1C;
        func_80111ECC(temp);
        func_801A0C70_ovl7();
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F4A14_ovl9);
    }
}

extern struct Sub800E1B50_Unk98 D_801CBD4C;
void func_800B3520(void);
void func_800A9EA4(s32);

void func_801F51B4_ovl9(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E8920[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CBD4C;
    D_800DDFD0[omCurrentObj->objId] = 3;
    func_800B3520();
    func_800A9EA4(0x10054);
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    D_800E3C90[omCurrentObj->objId] = 5.0f;
    curObjSleepForever();
}

void func_801F52A4_ovl9(GObj *arg0) {
}

s32 func_8019BC34_ovl7(f32);

void func_801F52AC_ovl9(GObj *arg0) {
    func_8019BC34_ovl7(100.0f);
}

extern FUNCLIST D_8021C434_ovl9;
void func_800AECC0(f32);

void func_801F52D4_ovl9(GObj *arg0) {
    func_800AECC0(gameTicksPerDraw);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, &D_8021C434_ovl9);
}

extern struct Sub800E1B50_Unk98 D_801CBD70;
extern FUNCLIST D_8021C434_ovl9;
void func_801F5408_ovl9(void);
void func_801F52D4_ovl9(struct GObj *);

void func_801F5328_ovl9(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CBD70;
    D_800DF150[omCurrentObj->objId] = &func_801F5408_ovl9;
    gEntityFuncListIDArray[omCurrentObj->objId] = (D_800E8920[omCurrentObj->objId] == 1) ? 0 : 3;
    func_801A0D50_ovl7(&func_801F52D4_ovl9);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, &D_8021C434_ovl9);
}

extern FUNCLIST D_8021C444_ovl9;
s32 func_801A0D74_ovl7(void);
void func_8019B2C0_ovl7(s32);
void func_8019F3B0_ovl7(void);

void func_801F5408_ovl9(void) {
    if (func_801A0D74_ovl7() == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 4, &D_8021C444_ovl9);
    }
    if (D_800E9C60[omCurrentObj->objId] != 0) {
        func_8019B2C0_ovl7(2);
    }
    func_8019F3B0_ovl7();
}

void func_800AECC0(f32);
void func_800A9EA4(s32);

void func_801F548C_ovl9(GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AECC0(0.0f);
    func_800A9EA4(0x10053);
    curObjSleepForever();
}

s32 func_8019A7E8_ovl7(f32);
void func_8019B164_ovl7(void);

void func_801F550C_ovl9(GObj *arg0) {
    s32 pad;
    s32 sp18;

    if (func_8019A7E8_ovl7(200.0f) != 0) {
        sp18 = D_800E6A10[omCurrentObj->objId];
        func_8019B164_ovl7();
        D_800E9AA0[omCurrentObj->objId].as_s32 = D_800E6A10[omCurrentObj->objId];
        D_800E6A10[omCurrentObj->objId] = sp18;
        func_800AECC0(gameTicksPerDraw);
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F52D4_ovl9);
    }
}

/* D_8021D910_ovl9: literal, this TU owns its .rodata */
void func_800AA864(s32, s32);
void func_800AECC0(f32);

void func_801F5604_ovl9(struct GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800DDFD0[omCurrentObj->objId] = 2;
    func_800AA864(0x10052, 1);
    if (1.0f == (f32) D_800E9AA0[omCurrentObj->objId].as_s32) {
        func_800AA864(0x1004E, 1);
        func_800AA864(0x1004D, 1);
        func_800AA864(0x1004E, 1);
        func_800AA864(0x1004D, 1);
    } else {
        func_800AA864(0x1004D, 1);
        func_800AA864(0x1004E, 1);
        func_800AA864(0x1004D, 1);
        func_800AA864(0x1004E, 1);
    }
    func_800AECC0(0.0f);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801F52D4_ovl9(struct GObj *);

void func_801F57C8_ovl9(GObj *arg0) {
    void *sp1C;
    void *sp18;
    struct Ovl9AnimObj3 *temp;

    sp1C = D_800DFBD0[omCurrentObj->objId][4];
    sp18 = D_800DFBD0[omCurrentObj->objId][14];
    if (D_800E9E20[omCurrentObj->objId] == 0) {
        func_80111550((void *) omCurrentObj->objId);
        temp = func_80111C88(&D_801C8B08, omCurrentObj->objId);
        temp->unk24->unk8 = sp18;
        temp->unk24->unk30 = sp1C;
        func_80111ECC(temp);
        func_801A0C70_ovl7();
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F52D4_ovl9);
    }
}

extern f32 D_8021D914_ovl9;
void func_800AA864(s32, s32);
void func_800A9EA4(s32);

/* 7/70 diffs: pure $a2/$a3 swap -- the ROM keeps the constant 1 in $a3 and
   &D_800E6690 in $a2, IDO the other way round.  Type-splitting both stores
   took this from 36 to 7.  Swept since with no effect: s32 return type on
   func_800AA864 and on func_800A9EA4 (applied file-wide, --all stayed 0),
   (u32) cast on the call argument, `struct GObj *obj = omCurrentObj;` hoist,
   an explicit f32 temp for the read-back (11/70), dropping the parameter
   (65/69 -- the parameter and its home slot are required). */
#ifdef NON_MATCHING
/* 7/70: pure $a2/$a3 swap. The ROM parks the shared u32 `1` in $a3 and the
   hoisted D_800E6690 base in $a2; IDO assigns them the other way round. Every
   other instruction matches. This is the named argument-register rotation. */
void func_801F58A0_ovl9(struct GObj *arg0) {
    *(u32 *) &D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    *(u32 *) &D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = D_8021D914_ovl9;
    func_800AA864(0x10050, 1);
    func_800AECC0(0.0f);
    func_800A9EA4(0x10053);
    ohSleep(0x3C);
    func_800AECC0(gameTicksPerDraw);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F58A0_ovl9.s")
#endif
void func_801F52D4_ovl9(struct GObj *);

void func_801F59B8_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F52D4_ovl9);
    }
}

extern struct Sub800E1B50_Unk98 D_801CBD94;
void func_800B3520(void);
void func_800A9EA4(s32);

void func_801F5A24_ovl9(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E8920[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CBD94;
    D_800DDFD0[omCurrentObj->objId] = 3;
    func_800B3520();
    func_800A9EA4(0x10054);
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    D_800E3C90[omCurrentObj->objId] = 5.0f;
    curObjSleepForever();
}

void func_801F5B14_ovl9(GObj *arg0) {
}

extern FUNCLIST D_8021C454_ovl9;
void func_800B6CF8(s32);
void func_8019BB58_ovl7(void);

void func_801F5B1C_ovl9(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6CF8;
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800E98E0[omCurrentObj->objId] = 0x5A;
    D_800E8920[omCurrentObj->objId] = 0;
    func_8019BB58_ovl7();
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_8021C454_ovl9);
}

void func_801F5BD0_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, &D_8021C45C_ovl9);
}

extern struct Sub800E1B50_Unk98 D_801CBDB8;
void func_801F5CD4_ovl9();
void func_801F5BD0_ovl9(struct GObj *);

void func_801F5C18_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = func_801F5CD4_ovl9;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    tmp->unk3B = gEntityFuncListIDArray[omCurrentObj->objId];
    tmp->unk98 = &D_801CBDB8;
    func_801A0D50_ovl7(func_801F5BD0_ovl9);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, &D_8021C45C_ovl9);
}
extern FUNCLIST D_8021C470_ovl9;
extern struct GObjProcess *gEntityGObjProcessArray[];
s32 func_801A0D74_ovl7(void);
/* the s32 return type is load-bearing: it reserves $v0 and rotates every temp
   in func_801F5CD4_ovl9 up one slot (9 diffs -> 7). */
s32 func_8019F3F0_ovl7(void);
void func_801F5BD0_ovl9(struct GObj *);

void func_801F5CD4_ovl9(void) {
    s32 ret;
    s32 v;
    GObj *o;
    s32 *p;

    ret = 0;
    if (D_800EA1A0[omCurrentObj->objId] != 0) {
        ret = func_801A0D74_ovl7();
    }
    if (ret == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 5, &D_8021C470_ovl9);
    }
    if (D_800E9C60[omCurrentObj->objId] != 0) {
        func_8019F3F0_ovl7();
        o = omCurrentObj;
        p = &D_800E98E0[o->objId];
        v = *p;
        if (v > 0) {
            *p = v - 1;
        } else if (v == 0) {
            *p = -1;
            if (ret == 0) {
                gEntityFuncListIDArray[o->objId] = 3;
                assign_new_process_entry(gEntityGObjProcessArray[o->objId], func_801F5BD0_ovl9);
            }
        }
    }
}

void func_800B74B8(s32);
void func_800AFBB4(s32, struct GObj *);

void func_801F5E00_ovl9(GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    D_800EA1A0[omCurrentObj->objId] = 0;
    D_800DEF90[omCurrentObj->objId] = func_800B74B8;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    func_800AFBB4(0, omCurrentObj);
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AECC0(gameTicksPerDraw);
    curObjSleepForever();
}

extern struct GObjProcess *gEntityGObjProcessArray[];
s32 eneCheckAboveBelowPlayer(void);
s32 func_8019A9AC_ovl7(f32, f32);
void func_801F5BD0_ovl9(struct GObj *);

void func_801F5EDC_ovl9(GObj *arg0) {
    s32 sp1C;

    if (func_8019A9AC_ovl7(-1.0f, 80.0f) == 3) {
        sp1C = D_800E9E20[omCurrentObj->objId];
        D_800E9E20[omCurrentObj->objId] = eneCheckAboveBelowPlayer();
        if (sp1C != 0) {
            if (sp1C != D_800E9E20[omCurrentObj->objId]) {
                gEntityFuncListIDArray[omCurrentObj->objId] = 1;
                assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F5BD0_ovl9);
            }
        }
    }
}

void func_800B6CF8(s32);
void func_800AFBB4(s32, struct GObj *);
void func_800AA864(s32, s32);
void func_800AA018(s32);

void func_801F5FA8_ovl9(GObj *arg0) {
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800DEF90[omCurrentObj->objId] = func_800B6CF8;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainMove);
    func_800AFBB4(1, omCurrentObj);
    func_800AECC0(gameTicksPerDraw + gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw + gameTicksPerDraw);
    if (D_800E7880[omCurrentObj->objId] == 0) {
        func_800AA018(0x1005B);
        func_800AA864(0x1005A, 1);
        func_800AA018(0x1005D);
        func_800AA864(0x1005C, 2);
        func_800AA018(0x1005F);
        func_800AA864(0x1005E, 1);
    } else {
        func_800AA018(0x10059);
        func_800AA864(0x10058, 1);
    }
    D_800E9AA0[omCurrentObj->objId].as_s32 = 1;
    curObjSleepForever();
}

extern struct GObjProcess *gEntityGObjProcessArray[];
s32 eneCheckAboveBelowPlayer(void);
void func_801F5BD0_ovl9(struct GObj *);

void func_801F6120_ovl9(GObj *arg0) {
    if (D_800E9AA0[omCurrentObj->objId].as_s32 != 0) {
        D_800E9E20[omCurrentObj->objId] = eneCheckAboveBelowPlayer();
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F5BD0_ovl9);
    }
}

/* D_8021D918_ovl9: literal, this TU owns its .rodata */
void func_801A2558_ovl7(u32);
void func_800AA018(s32);

void func_801F61BC_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
    D_800EA1A0[omCurrentObj->objId] = 1;
    func_800AECC0(gameTicksPerDraw);
    func_801A2558_ovl7(ent->unk88->unk10);
    D_800DDFD0[omCurrentObj->objId] = 2;
    func_800AA018(0x10060);
    func_800AA018(0x10061);
    if (D_800E7880[omCurrentObj->objId] == 0) {
        D_800E3210[omCurrentObj->objId] = D_800E9E20[omCurrentObj->objId] * 5.0f;
        D_800E3750[omCurrentObj->objId] = D_800E9E20[omCurrentObj->objId] * 0.3f;
        D_800E3C90[omCurrentObj->objId] = 5.0f;
    } else {
        D_800E3210[omCurrentObj->objId] = D_800E9E20[omCurrentObj->objId] * 4.0f;
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3C90[omCurrentObj->objId] = 4.0f;
    }
    curObjSleepForever();
}

void func_801F638C_ovl9(GObj *arg0) {
}

extern struct Sub800E1B50_Unk98 D_801CBDDC;
extern struct Sub800E1B50_Unk98 D_801CBDB8;
/* D_8021D91C_ovl9: literal, this TU owns its .rodata */
void func_800AFBB4(s32, struct GObj *);
void func_800AA864(s32, s32);
void func_800AA018(s32);

void func_801F6394_ovl9(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CBDDC;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E9C60[omCurrentObj->objId] = 0;
    func_800AECC0(gameTicksPerDraw + gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw + gameTicksPerDraw);
    func_800AA018(0x10057);
    func_800AA864(0x10056, 1);
    func_800AFBB4(0, omCurrentObj);
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    D_800EA1A0[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CBDB8;
    ohSleep(0x1E);
    D_800E9AA0[omCurrentObj->objId].as_s32 = 1;
    curObjSleepForever();
}

/* D_8021D920_ovl9: literal, this TU owns its .rodata */
void func_801F5BD0_ovl9(struct GObj *);

void func_801F651C_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    if (D_800E9AA0[omCurrentObj->objId].as_s32 != 0) {
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
        D_800E6A10[omCurrentObj->objId] = 1.0f;
        D_800E8920[omCurrentObj->objId] = 0;
        D_800E98E0[omCurrentObj->objId] = 0x5A;
        D_800E9E20[omCurrentObj->objId] = 0;
        D_800E9AA0[omCurrentObj->objId].as_s32 = D_800E9C60[omCurrentObj->objId] = D_800E9E20[omCurrentObj->objId];
        D_800EA1A0[omCurrentObj->objId] = 0;
        gEntitiesNextPosXArray[omCurrentObj->objId] = ent->unk0;
        gEntitiesNextPosYArray[omCurrentObj->objId] = ent->unk4;
        gEntitiesNextPosZArray[omCurrentObj->objId] = ent->unk8;
        gEntityFuncListIDArray[omCurrentObj->objId] = ent->unk3B;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F5BD0_ovl9);
    }
}

void func_801F6794_ovl9();

void func_801F66D4_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = func_801F6794_ovl9;
    gEntityFuncListIDArray[omCurrentObj->objId] = 4;
    tmp->unk3B = gEntityFuncListIDArray[omCurrentObj->objId];
    tmp->unk98 = &D_801CBDB8;
    func_801A0D50_ovl7(func_801F5BD0_ovl9);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, &D_8021C45C_ovl9);
}

void func_801F6794_ovl9(void) {
    s32 ret;
    s32 v;
    GObj *o;
    s32 *p;

    ret = 0;
    if (D_800EA1A0[omCurrentObj->objId] != 0) {
        ret = func_801A0D74_ovl7();
    }
    if (ret == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 5, &D_8021C470_ovl9);
    }
    if (D_800E9C60[omCurrentObj->objId] != 0) {
        func_8019F3F0_ovl7();
        o = omCurrentObj;
        p = &D_800E98E0[o->objId];
        v = *p;
        if (v > 0) {
            *p = v - 1;
        } else if (v == 0) {
            *p = -1;
            if (ret == 0) {
                gEntityFuncListIDArray[o->objId] = 3;
                assign_new_process_entry(gEntityGObjProcessArray[o->objId], func_801F5BD0_ovl9);
            }
        }
    }
}

extern struct GObjProcess *gEntityGObjProcessArray5[];
void setProcessMain(struct GObjProcess *, void (*)(struct GObj *));
void procMainStub(struct GObj *);
void func_800AFBB4(s32, struct GObj *);

void func_801F68C0_ovl9(GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    D_800EA1A0[omCurrentObj->objId] = 0;
    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    func_800AFBB4(0, omCurrentObj);
    D_800DDFD0[omCurrentObj->objId] = 4;
    curObjSleepForever();
}

extern struct GObjProcess *gEntityGObjProcessArray[];
s32 func_8019A9AC_ovl7(f32, f32);
s32 eneCheckAboveBelowPlayer(void);
void func_801F5BD0_ovl9(struct GObj *);

void func_801F6988_ovl9(GObj *arg0) {
    if (func_8019A9AC_ovl7(240.0f, 80.0f) == 3) {
        D_800E9E20[omCurrentObj->objId] = eneCheckAboveBelowPlayer();
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F5BD0_ovl9);
    }
}

void func_8019A0C8_ovl7(void);

void func_801F6A20_ovl9(void) {
    func_8019A0C8_ovl7();
    D_800EA1A0[omCurrentObj->objId] = 0;
}

extern FUNCLIST D_8021C484_ovl9;

void func_801F6A58_ovl9(struct GObj *arg0) {
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8021C484_ovl9);
}

void func_801F6A9C_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 7, &D_8021C488_ovl9);
}

extern struct Sub800E1B50_Unk98 D_801CBE00;
void func_801F6C00_ovl9(struct GObj *);
void func_801F6A9C_ovl9(struct GObj *);

void func_801F6AE4_ovl9(void) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CBE00;
    D_800DF150[omCurrentObj->objId] = &func_801F6C00_ovl9;
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        func_801A6C10_ovl7();
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = (D_800E8920[omCurrentObj->objId] == 1) ? 0 : 4;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    func_801A0D50_ovl7(&func_801F6A9C_ovl9);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 7, &D_8021C488_ovl9);
}

extern FUNCLIST D_8021C4A4_ovl9;
s32 func_801A0D74_ovl7(void);
void func_8019B424_ovl7(struct GObj *);
void eneTurnCommon(s32);
void func_8019F3B0_ovl7(void);

void func_801F6C00_ovl9(GObj *arg0) {
    s32 unused;
    s32 temp;

    temp = func_801A0D74_ovl7();
    func_8019B424_ovl7(arg0);
    if (temp == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 7, &D_8021C4A4_ovl9);
    }
    if (D_800E9C60[omCurrentObj->objId] != 0) {
        eneTurnCommon(6);
    }
    func_8019F3B0_ovl7();
}

extern struct Sub800E1B50_Unk98 D_801CBE00;
/* D_8021D924_ovl9: literal, this TU owns its .rodata */
void func_800A9EA4(s32);

void func_801F6C98_ovl9(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9C60[omCurrentObj->objId] = 1;
    D_800EA520[omCurrentObj->objId] = 0;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    tmp->unk98 = &D_801CBE00;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800A9EA4(0x10067);
    curObjSleepForever();
}

extern struct GObjProcess *gEntityGObjProcessArray[];
s32 func_8019A7E8_ovl7(f32);
void func_801F6A9C_ovl9(struct GObj *);

void func_801F6D84_ovl9(GObj *arg0) {
    UnkStruct800E1B50 *temp;

    temp = D_800E1B50[omCurrentObj->objId];
    if (temp->unk3C == 0) {
        if (func_8019A7E8_ovl7(200.0f) != 0) {
            if (eneCheckAboveBelowPlayer() == 1) {
                gEntityFuncListIDArray[omCurrentObj->objId] = 2;
            } else {
                gEntityFuncListIDArray[omCurrentObj->objId] = 1;
            }
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F6A9C_ovl9);
        }
    }
}

s32 func_801ACCA0_ovl7(s32, s32, f32, f32);
s32 func_801AE940_ovl7(s32, f32, f32);
void func_800AECC0(f32);

void func_801F6E50_ovl9(GObj *arg0, s32 arg1, f32 arg2) {
    if ((arg1 == 0) && ((s32) arg2 == 1)) {
        D_800EA1A0[omCurrentObj->objId] = func_801ACCA0_ovl7(5, 0, 14.0f, 4.0f);
        gEntitiesAngleYArray[func_801AE940_ovl7(5, 0.0f, -20.0f)] = gEntitiesAngleYArray[omCurrentObj->objId];
        play_sound(0x96);
        func_800AECC0(0.0f);
    }
}

extern struct Sub800E1B50_Unk98 D_801CBE24;
/* D_8021D928_ovl9: literal, this TU owns its .rodata */
void func_800A9EA4(s32);
void func_800AA7D0(s32, f32, u32);
void func_800AA864(s32, s32);

void func_801F6F08_ovl9(GObj *arg0) {
    s32 pad0;
    struct DObj *d = D_800DFBD0[omCurrentObj->objId][4];
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    D_800EA1A0[omCurrentObj->objId] = 0;
    D_800EA360[omCurrentObj->objId] = 0x57;
    tmp->unk98 = &D_801CBE24;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800A9EA4(0x10065);
    D_800DF310[omCurrentObj->objId] = (void *) &func_801F6E50_ovl9;
    while (D_800E9FE0[omCurrentObj->objId].as_s32 == 0) {
        ohSleep(1);
        D_800EA360[omCurrentObj->objId]--;
        if (D_800EA360[omCurrentObj->objId] == 0) {
            D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
            if (D_800DE350[D_800EA1A0[omCurrentObj->objId]] != 0) {
                D_800E9FE0[D_800EA1A0[omCurrentObj->objId]].as_s32 = 1;
            }
        }
    }
    func_800AECC0(gameTicksPerDraw);
    d->flags = 0;
    func_800AA7D0(0x10065, 85.0f, 1);
    D_800E9AA0[omCurrentObj->objId].as_s32 = 1;
    func_800AA864(0x10067, 2);
    D_800E9AA0[omCurrentObj->objId].as_s32 = 2;
    curObjSleepForever();
}

extern struct GObjProcess *gEntityGObjProcessArray[];
void func_801F6A9C_ovl9(struct GObj *);

void func_801F71B0_ovl9(GObj *arg0) {
    if (D_800E9AA0[omCurrentObj->objId].as_s32 == 2) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F6A9C_ovl9);
    }
}

extern struct Sub800E1B50_Unk98 D_801CBE90;
void func_800A9EA4(s32);
void func_800AA018(s32);

void func_801F721C_ovl9(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CBE90;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 2;
    func_800A9EA4(0x10066);
    D_800E3210[omCurrentObj->objId] = 11.0f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    D_800E3C90[omCurrentObj->objId] = 11.0f;
    while (D_800E9AA0[omCurrentObj->objId].as_s32 == 0) {
        ohSleep(1);
    }
    func_800AA018(0x10064);
    D_800DF310[omCurrentObj->objId] = (void *) &func_801F6E50_ovl9;
    curObjSleepForever();
}

void func_801F7394_ovl9(GObj *arg0) {
    if (D_800E9AA0[omCurrentObj->objId].as_s32 == 0) {
        if (D_800E3210[omCurrentObj->objId] < 8.0f) {
            D_800E9AA0[omCurrentObj->objId].as_s32 = 1;
        }
    }
}

extern struct Sub800E1B50_Unk98 D_801CBE00;
void func_800AA864(s32, s32);
void func_800AECC0(f32);

void func_801F73F4_ovl9(GObj *arg0) {
    UnkStruct800E1B50 *temp;

    temp = D_800E1B50[omCurrentObj->objId];
    D_800E9C60[omCurrentObj->objId] = 1;
    temp->unk98 = &D_801CBE00;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800DDFD0[omCurrentObj->objId] = 3;
    func_800AECC0(gameTicksPerDraw);
    func_800AA864(0x10062, 1);
    func_800AA864(0x10067, 2);
    D_800E9AA0[omCurrentObj->objId].as_s32 = 1;
    curObjSleepForever();
}

extern struct GObjProcess *gEntityGObjProcessArray[];
void func_801F6A9C_ovl9(struct GObj *);

void func_801F74CC_ovl9(GObj *arg0) {
    if (D_800E9AA0[omCurrentObj->objId].as_s32 != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F6A9C_ovl9);
    }
}

extern struct Sub800E1B50_Unk98 D_801CBE48;
/* D_8021D92C_ovl9: literal, this TU owns its .rodata */
void func_800A9EA4(s32);

void func_801F7538_ovl9(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9C60[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CBE48;
    D_800DDFD0[omCurrentObj->objId] = 4;
    func_800A9EA4(0x10068);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    if (-0.5f != D_800E3750[omCurrentObj->objId]) {
        D_800E3210[omCurrentObj->objId] = 0.0f;
        D_800E3750[omCurrentObj->objId] = -0.5f;
    }
    curObjSleepForever();
}

void func_801F7664_ovl9(GObj *arg0) {
}

extern struct Sub800E1B50_Unk98 D_801CBE6C;
void func_800AA7D0(s32, f32, u32);

void func_801F766C_ovl9(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9C60[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CBE6C;
    D_800DDFD0[omCurrentObj->objId] = 5;
    func_800AECC0(gameTicksPerDraw);
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    func_800AA7D0(0x10065, 85.0f, 1);
    func_800A9EA4(0x10068);
    curObjSleepForever();
}

void func_801F774C_ovl9(GObj *arg0) {
}

/* D_8021D930_ovl9: literal, this TU owns its .rodata */
extern struct Sub800E1B50_Unk98 D_801CBE00;
void func_800AA864(s32, s32);

void func_801F7754_ovl9(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800EA520[omCurrentObj->objId] = 0;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    tmp->unk98 = &D_801CBE00;
    D_800DDFD0[omCurrentObj->objId] = 6;
    func_800AA864(0x10067, 2);
    D_800E9AA0[omCurrentObj->objId].as_s32 = 1;
    curObjSleepForever();
}

extern struct GObjProcess *gEntityGObjProcessArray[];
void func_801F6A9C_ovl9(struct GObj *);

void func_801F7878_ovl9(GObj *arg0) {
    if (D_800E9AA0[omCurrentObj->objId].as_s32 != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F6A9C_ovl9);
    }
}

void func_80199628_ovl7(void);

void func_801F78E4_ovl9(void) {
    gEntityFuncListIDArray[omCurrentObj->objId] =
        ((D_800E9FE0[omCurrentObj->objId].as_s32 == 0) && (D_800EA1A0[omCurrentObj->objId] != 0)) ? 5 : 4;
    func_80199628_ovl7();
}

void func_801F795C_ovl9(GObj *arg0) {
    D_800EA520[omCurrentObj->objId] = 1;
    if (D_800EA1A0[omCurrentObj->objId] != 0) {
        if (D_800DE350[D_800EA1A0[omCurrentObj->objId]] != NULL) {
            D_800EA520[D_800EA1A0[omCurrentObj->objId]] = 1;
        }
    }
}

extern FUNCLIST D_8021C4C0_ovl9;

void func_801F79C4_ovl9(struct GObj *arg0) {
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8021C4C0_ovl9);
}

void func_801F7A08_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 6, &D_8021C4C4_ovl9);
}

void func_801F7B90_ovl9(void);
void func_801F7A08_ovl9(struct GObj *);
void func_800A9EA4(s32);

void func_801F7A50_ovl9(void) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = &func_801F7B90_ovl9;
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        func_801A6C10_ovl7();
    }
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    } else {
        func_800A9EA4(0x10094);
        if (tmp->unk30 != 0) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        } else {
            gEntityFuncListIDArray[omCurrentObj->objId] = 5;
        }
    }
    func_801A0D50_ovl7(&func_801F7A08_ovl9);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 6, &D_8021C4C4_ovl9);
}

extern FUNCLIST D_8021C4DC_ovl9;
void func_8019B2C0_ovl7(s32);

void func_801F7B90_ovl9(void) {
    s32 pad;
    s32 ret;
    s32 *p;
    GObj *o;

    ret = func_801A0D74_ovl7();
    if (D_800E9AA0[omCurrentObj->objId].as_s32 != 0) {
        func_8019B2C0_ovl7(1);
    }
    if (ret == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 6, &D_8021C4DC_ovl9);
        o = omCurrentObj;
        if (D_800E9C60[o->objId] != 0) {
            p = &D_800E98E0[o->objId];
            *p = *p - 1;
            if (D_800E98E0[o->objId] == 0) {
                gEntityFuncListIDArray[o->objId] = 3;
                assign_new_process_entry(gEntityGObjProcessArray[o->objId], func_801F7A08_ovl9);
            }
        }
    }
    eneTurnCommon(6);
    func_8019F3B0_ovl7();
}

extern struct Sub800E1B50_Unk98 D_801CBEB4;
void func_800A9EA4(s32);

void func_801F7CAC_ovl9(GObj *arg0) {
    UnkStruct800E1B50 *temp;

    temp = D_800E1B50[omCurrentObj->objId];
    D_800E98E0[omCurrentObj->objId] = 0x78;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 1;
    D_800E9C60[omCurrentObj->objId] = 0;
    temp->unk98 = &D_801CBEB4;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800A9EA4(0x10098);
    curObjSleepForever();
}

extern struct GObjProcess *gEntityGObjProcessArray[];
s32 func_8019A7E8_ovl7(f32);
void func_801F7A08_ovl9(struct GObj *);

void func_801F7D5C_ovl9(GObj *arg0) {
    if (func_8019A7E8_ovl7(280.0f) != 0) {
        if (((u32) D_800DD8D0[omCurrentObj->objId] >> 30) != 0) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 1;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F7A08_ovl9);
        }
    }
}

extern struct Sub800E1B50_Unk98 D_801CBED8;
void func_800AA864(s32, s32);
void func_800AA018(s32);

void func_801F7DE0_ovl9(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800AA864(0x10097, 1);
    D_800E9E20[omCurrentObj->objId] = 1;
    D_800E8920[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CBED8;
    D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.x = 0.0f;
    play_sound(0x162);
    func_800AA018(0x10094);
    D_800E3210[omCurrentObj->objId] = 9.0f;
    D_800E3750[omCurrentObj->objId] = -0.25f;
    curObjSleepForever();
}

/* D_8021D934_ovl9: literal, this TU owns its .rodata */
void func_801F7A08_ovl9(struct GObj *);

void func_801F7F2C_ovl9(GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        if (D_800E3210[omCurrentObj->objId] < 0.25f) {
            D_800E3750[omCurrentObj->objId] = 0.0f;
            D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
            D_800E3C90[omCurrentObj->objId] = 65535.0f;
            gEntityFuncListIDArray[omCurrentObj->objId] = 2;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F7A08_ovl9);
        }
    }
}

void func_801F8010_ovl9(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800DDFD0[omCurrentObj->objId] = 2;
    func_8019B424_ovl7(arg0);
    while (tmp->unk3C != 0) {
        ohSleep(1);
    }
    D_800E64D0[omCurrentObj->objId] = 0.0f;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.5f;
    D_800E6850[omCurrentObj->objId] = 10.0f;
    curObjSleepForever();
}

extern struct GObjProcess *gEntityGObjProcessArray[];
s32 func_8019A9AC_ovl7(f32, f32);
void func_801F7A08_ovl9(struct GObj *);

void func_801F8118_ovl9(GObj *arg0) {
    UnkStruct800E1B50 *temp;

    temp = D_800E1B50[omCurrentObj->objId];
    if (temp->unk3C == 0) {
        if (func_8019A9AC_ovl7(-1.0f, 40.0f) == 3) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 3;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F7A08_ovl9);
        }
    }
}

extern struct Sub800E1B50_Unk98 D_801CBEFC;
extern s32 random_soft_s32_range(s32);
void func_800AA864(s32, s32);
void func_800AA018(s32);

void func_801F81B8_ovl9(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CBEFC;
    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 10.0f;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -0.5f;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -3.0f;
    D_800E3C90[omCurrentObj->objId] = 12.0f;
    func_800AA864(0x10093, 1);
    if (random_soft_s32_range(2) != 0) {
        func_800AA018(0x10095);
    } else {
        func_800AA018(0x10096);
    }
    curObjSleepForever();
}

extern struct GObjProcess *gEntityGObjProcessArray[];
void func_801F7A08_ovl9(struct GObj *);

void func_801F8328_ovl9(GObj *arg0) {
    if (D_800E8920[omCurrentObj->objId] == 1) {
        if (((u32) D_800DD8D0[omCurrentObj->objId] >> 30) != 0) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 4;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F7A08_ovl9);
        }
    }
}

void func_800AA864(s32, s32);

void func_801F83B0_ovl9(GObj *arg0) {
    UnkStruct800E1B50 *temp;

    temp = D_800E1B50[omCurrentObj->objId];
    D_800E9AA0[omCurrentObj->objId].as_s32 = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    temp->unk98 = &D_801CBEB4;
    D_800DDFD0[omCurrentObj->objId] = 4;
    func_800AA864(0x10098, 2);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801F7A08_ovl9(struct GObj *);

void func_801F846C_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F7A08_ovl9);
    }
}

extern struct Sub800E1B50_Unk98 D_801CBEFC;
/* D_8021D938_ovl9: literal, this TU owns its .rodata */
extern s32 random_soft_s32_range(s32);
void func_800AA018(s32);

void func_801F84D8_ovl9(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    tmp->unk98 = &D_801CBEFC;
    D_800DDFD0[omCurrentObj->objId] = 5;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    if ((D_800DFF50[omCurrentObj->objId] != 0x10095) && (D_800DFF50[omCurrentObj->objId] != 0x10096)) {
        if (random_soft_s32_range(2) != 0) {
            func_800AA018(0x10095);
        } else {
            func_800AA018(0x10096);
        }
    }
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -1.0f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    curObjSleepForever();
}

extern struct GObjProcess *gEntityGObjProcessArray[];
void func_801F7A08_ovl9(struct GObj *);

void func_801F8660_ovl9(GObj *arg0) {
    if (D_800E8920[omCurrentObj->objId] == 1) {
        if (((u32) D_800DD8D0[omCurrentObj->objId] >> 30) != 0) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 0;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F7A08_ovl9);
        }
    }
}

extern void func_8019A580_ovl7(struct GObj *);

void func_801F86E4_ovl9(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CBEB4;
    func_8019A580_ovl7(arg0);
}

