#include "common.h"

#include "GObj.h"
#include "Player.h"
#include "ovl1/util.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/ovl1_8.h"
#include "ovl2/ovl2_3.h"
#include "buffers.h"
#include "unk_structs/D_800E1B50.h"
#include "main/gtl.h"
#include "main/lbvector.h"
#include "main/math.h"

#include "enelib.h"

typedef struct EneCurve {
    Vector unk0;
    Vector unkC;
    Vector unk18;
    f32 unk24;
    f32 unk28;
    s32 unk2C;
} EneCurve;


extern u8 D_800D6C68[];
extern u8 D_800D6C90[];
void func_800A22D4(void *);
void func_800A2300(GObj *);
void func_801A32A8_ovl7(s32);

// enelib.c
// prefix: ene

// helplib.h
void func_800F88C8(s32, s32, f32);

// ovl1_7
void func_800B3520(void);

// ovl1 util
f32 utilVec3Dist(Vector *, Vector *);

// ovl2_3
struct TrackPosition {
    s32 unk0;
    f32 unk4;
};
s32 func_800F9888(struct TrackPosition *, f32);
f32 func_800F951C(s32, f32, s32, f32);

// audio
void auSetBGMVolumeSmooth(s32, u32, u32);

extern f32 gKirbyHp;
extern s32 D_800BE544;

// plylib?
extern Lights1 D_800BE550, D_800BE548;

// somewhere in ovl7
extern Lights1 D_801C27D8_ovl7, D_801C27D0_ovl7;
extern u8 D_801C27E8_ovl7;
extern u32 D_8012BCA0;

// ent sub98 structs
extern struct Sub800E1B50_Unk98 D_801CD288_ovl7;
extern struct Sub800E1B50_Unk98 D_801CD2AC_ovl7;

// ovl7_5
void func_801AC364_ovl7(GObj *);
void func_801A69B0_ovl7(GObj *);
void func_801AC448_ovl7(GObj *);
void func_801A6DF0_ovl7(GObj *);
void func_801A3E80_ovl7(GObj *);
void func_801A6C10_ovl7(GObj *);

// ovl9
void func_8020C710_ovl9(GObj *);

// ovl7_3
void func_801A2558_ovl7(s32);
void func_801A3938(void *);

// ovl2_7
void func_801051AC();

// ovl7_14?
void func_801BC44C_ovl7(s32);
void func_801BC72C_ovl7(s32);
void func_801C06FC_ovl7(void);
void func_801C1E08_ovl7(void);

// audio
void func_800A9864(s32, s32, s32);

// sound id tables
extern u32 D_801C2E84_ovl7[];
extern u32 D_801F33FC[];
extern u32 D_801D789C[];
extern u32 D_801C3030_ovl7[];
extern u32 D_801C3068_ovl7[];

extern s32 D_800D7090;

// enemy setup tables
extern struct UnkStruct800E1B50 D_801CE790_ovl7[];
extern struct Sub800E1B50_Unk88 *D_801F33F0_ovl10[];
extern struct Sub800E1B50_Unk88 *D_801D7880_ovl8[];
extern struct Sub800E1B50_Unk88 *D_801C2B6C_ovl7[];
extern u32 D_801C2C84_ovl7[];
extern struct Sub800E1B50_Unk88 *D_801C2D9C_ovl7[];
extern struct Sub800E1B50_Unk88 *D_801C2DD4_ovl7[];
extern struct Sub800E1B50_Unk88 *D_801C29C0_ovl7[];

// object_helpers
void ohSleep(s32);

// ovl1_7
s32 func_800B3158(void);
s32 func_800B30BC(f32, f32, s32);

// forward declared
void func_8019D8A0(s32);
s32 func_8019A7E8_ovl7(f32);
void func_8019B164_ovl7(void);
f32 func_8019B608_ovl7(s32 track);
void func_8019BC94_ovl7(void);
void func_8019C79C_ovl7(void);
void func_8019CD68_ovl7(void);


void func_80198880_ovl7(struct Sub800E1B50_Unk88 *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];
    s32 temp;

    ent->unk88 = arg0;
    ent->unk94 = arg0->unk18;
    ent->unk8C = arg0->unk14;
    ent->unk98 = 0;
    ent->unk9C = NULL;
    ent->unk48 = arg0->unk20;
    D_800E7B20[omCurrentObj->objId] = arg0->unk0;
    temp = arg0->unk10;
    if (temp != 0) {
        func_801A2558_ovl7(temp);
    }
    func_801A3938(NULL);
}

#ifdef NON_MATCHING
// NEAR MISS (63/161 insns differ, count equal): remaining diffs are systemic:
// target keeps arg0*4 in $a2 and &D_800E7730[arg0] in $v0 (ours swapped), and
// target never hoists loads from D_800E7730/D_800E77A0 above stores through ent
// (case 4 sw unk88 before 2nd lhu; *kind reload late). Tried: temp var
// permutations, chained/two-step D_800E1B50 assignment, register/volatile,
// K&R decl, signature type variants, unused 3rd arg (homes to stack - wrong).
// Constants: target uses TWO regs holding 1 (unk42/unk41 via late $a0,
// unk38 via $t2 hoisted into beqz delay slot) - could not reproduce split.
struct Sub800E1B50_Unk88 *func_80198914_ovl7(s32 arg0, s32 arg1) {
    struct UnkStruct800E1B50 *ent;
    u8 *kind;

    kind = &D_800E7730[arg0];
    ent = &D_801CE790_ovl7[arg1];
    D_800E1B50[arg0] = ent;
    ent->unk90 = 0;
    switch (*kind) {
        case 1:
            ent->unk88 = D_801F33F0_ovl10[D_800E77A0[arg0]];
            break;
        case 2:
            ent->unk88 = D_801D7880_ovl8[D_800E77A0[arg0]];
            break;
        case 4:
            ent->unk88 = D_801C2B6C_ovl7[D_800E77A0[arg0]];
            ent->unk90 = D_801C2C84_ovl7[D_800E77A0[arg0]];
            break;
        case 3:
            ent->unk88 = D_801C2D9C_ovl7[D_800E77A0[arg0]];
            break;
        case 6:
            ent->unk88 = D_801C2DD4_ovl7[D_800E77A0[arg0]];
            break;
        case 0:
        case 5:
        default:
            ent->unk88 = D_801C29C0_ovl7[D_800E77A0[arg0]];
            break;
    }
    if (ent->unk88 != NULL) {
        ent->unk94 = ent->unk88->unk18;
        ent->unk8C = ent->unk88->unk14;
        ent->unk48 = ent->unk88->unk20;
    } else {
        ent->unk94 = NULL;
        ent->unk8C = NULL;
        ent->unk48 = (void *)-1;
    }
    ent->unk98 = 0;
    ent->unk9C = NULL;
    ent->unk42 = 1;
    ent->unk41 = 1;
    ent->unk38 = 1;
    if (*kind == 4) {
        ent->unk39 = -1;
    } else {
        ent->unk39 = 0x1E;
    }
    ent->unk74 = 0;
    ent->unk78 = 0;
    ent->unk7C = 0;
    ent->unk80 = NULL;
    ent->unk84 = NULL;
    ent->unk30 = 0;
    ent->unk3D = 0;
    ent->unk44 = 0;
    ent->unk43 = 0;
    ent->unk3F = 0;
    ent->unk3E = 0;
    ent->unk3B = -1;
    ent->unk18 = gEntitiesScaleXArray[arg0];
    ent->unk0 = gEntitiesNextPosXArray[arg0];
    ent->unk4 = gEntitiesNextPosYArray[arg0];
    ent->unk8 = gEntitiesNextPosZArray[arg0];
    ent->unk3C = 0;
    ent->unk2C = 0;
    ent->unk1C = 0.0f;
    ent->unk28 = 0.0f;
    *(f32 *)&ent->unkC = 0.0f;
    *(f32 *)&ent->unk10 = 0.0f;
    *(f32 *)&ent->unk14 = 0.0f;
    ent->unk20 = 0.0f;
    ent->unk24 = 0.0f;
    ent->unk40 = 0;
    ent->unk3A = -1;
    ent->unk34 = NULL;
    return ent->unk88;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_80198914_ovl7.s")
#endif
void func_80198B98_ovl7(void) {
    switch (D_800E7730[omCurrentObj->objId]) {
        case 1:
        case 2:
            if (D_800E8E60[omCurrentObj->objId] == 0) {
                D_800DEF90[omCurrentObj->objId] = func_800B6474;
            } else {
                D_800DEF90[omCurrentObj->objId] = func_800B7790;
            }
            break;
        default:
        case 0:
        case 3:
        case 4:
        case 5:
        case 6:
            if (D_800E8E60[omCurrentObj->objId] == 0) {
                D_800DEF90[omCurrentObj->objId] = func_800B658C;
            } else {
                D_800DEF90[omCurrentObj->objId] = func_800B78AC;
            }
            break;
    }
    D_800DEDD0[omCurrentObj->objId] = func_8019F130_ovl7;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], func_800B175C);
}

void func_80198CA8_ovl7(void) {
    f32 tmpY;

    tmpY = gEntitiesNextPosYArray[omCurrentObj->objId];
    func_800F88C8(D_800DE350[omCurrentObj->objId],
                  D_800E5F90[omCurrentObj->objId],
                  D_800E6BD0[omCurrentObj->objId]);
    gEntitiesNextPosYArray[omCurrentObj->objId] = tmpY;
    if (D_800E7730[omCurrentObj->objId] != 6) {
        if (D_800E6A10[omCurrentObj->objId] == 0.0f) {
            func_8019B164_ovl7();
        }
    }
    func_800F8E6C(D_800DE350[omCurrentObj->objId]);
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId];
}

void func_80198DB4_ovl7(void) {
}

void func_80198DBC_ovl7(void) {
    struct Sub800E1B50_Unk88 *cfg;
    struct UnkStruct800E1B50 *ent;
    struct Sub800E1B50_Unk84 *sub;

    D_800E8920[omCurrentObj->objId] = 0;
    D_800E7CE0[omCurrentObj->objId] = D_800E7EA0[omCurrentObj->objId] = D_800E8920[omCurrentObj->objId];
    cfg = func_80198914_ovl7((s32) omCurrentObj->objId, omCurrentObj->objId - 0xE);
    if (cfg != NULL) {
        D_800E7B20[omCurrentObj->objId] = cfg->unk0;
        if (cfg->unk10 != 0) {
            func_801A2558_ovl7(cfg->unk10);
            ent = D_800E1B50[omCurrentObj->objId];
            sub = ent->unk84;
            if ((D_800DD710[omCurrentObj->objId] == 0x1A)
                && (((D_800E0D50[omCurrentObj->objId] != -1) && (D_800DD710[D_800E0D50[omCurrentObj->objId]] == 0x17))
                    || (D_800DD710[D_800E0D50[omCurrentObj->objId]] == 0x12))
                && (sub != NULL)) {
                sub->unk4 = gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]];
                sub->unk8 = gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]];
                sub->unkC = gEntitiesNextPosZArray[D_800E0D50[omCurrentObj->objId]];
                if (D_800E0D50[omCurrentObj->objId] == 0) {
                    sub->unk8 += 20.0f;
                }
                func_801051AC(sub);
            }
        }
        func_801A3938(NULL);
    }
    if (D_800E7730[omCurrentObj->objId] == 6) {
        if ((D_800E77A0[omCurrentObj->objId] > 0) && (D_800E77A0[omCurrentObj->objId] < 8)) {
            D_800D7090 = omCurrentObj->objId;
            return;
        }
    }
    if (D_800E7730[omCurrentObj->objId] == 6) {
        if ((D_800E77A0[omCurrentObj->objId] >= 8) && (D_800E77A0[omCurrentObj->objId] < 0x24)) {
            func_801BC44C_ovl7(D_800E77A0[omCurrentObj->objId]);
            D_800D7090 = omCurrentObj->objId;
            return;
        }
    }
    if (D_800E7730[omCurrentObj->objId] == 6) {
        if ((D_800E77A0[omCurrentObj->objId] >= 0x24) && (D_800E77A0[omCurrentObj->objId] < 0x2C)) {
            func_801BC72C_ovl7(D_800E77A0[omCurrentObj->objId] - 0x24);
            D_800D7090 = omCurrentObj->objId;
        }
    }
}

#ifdef NON_MATCHING
// NEAR MISS (33/156, equal insn count, all semantic ops identical): remaining
// diffs are pure register-allocation: target puts the case-6/tail u16 val web
// in $v0 (ours lands in $v1 + one extra move after the tail lhu), and after the
// func_801C06FC_ovl7 call target re-reads omCurrentObj with a folded lui+lw
// (fresh single-use web) while ours re-materializes the shared addiu base web.
// Tried: val type variants (s32/u32/s16/s8/u8/int), separate tail var,
// assignment-in-condition, register hint, all five-local declaration orders,
// expression-only case 6, idx reassignment.
void func_80199084_ovl7(void) {
    u32 idx;
    u32 kind;
    u32 snd;
    s32 mode;
    u16 val;

    idx = omCurrentObj->objId;
    kind = D_800E7730[idx];
    switch (kind) {
        case 0:
            mode = 0x23;
            snd = D_801C2E84_ovl7[D_800E77A0[idx]];
            break;
        case 1:
            mode = 0x23;
            snd = D_801F33FC[D_800E77A0[idx]];
            break;
        case 2:
            mode = 0x23;
            snd = D_801D789C[D_800E77A0[idx]];
            break;
        case 3:
            mode = 0x27;
            snd = D_801C3030_ovl7[D_800E77A0[idx]];
            break;
        case 6:
            val = D_800E77A0[idx];
            snd = D_801C3068_ovl7[val];
            if (val == 0) {
                mode = 0x27;
            } else if ((val >= 0x24) && (val < 0x2C)) {
                mode = 0x2B;
            } else {
                mode = 0x23;
            }
            break;
        case 4:
        case 5:
        default:
            snd = 0;
            mode = 0;
            break;
    }
    if ((snd != 0) && (mode != 0)) {
        func_800A9864(snd, mode, 0x10);
        D_800DE350[omCurrentObj->objId]->data.dobj->pos.v.x = gEntitiesNextPosXArray[omCurrentObj->objId];
        D_800DE350[omCurrentObj->objId]->data.dobj->pos.v.y = gEntitiesNextPosYArray[omCurrentObj->objId];
        D_800DE350[omCurrentObj->objId]->data.dobj->pos.v.z = gEntitiesNextPosZArray[omCurrentObj->objId];
        idx = omCurrentObj->objId;
        kind = D_800E7730[idx];
    }
    if (kind == 6) {
        val = D_800E77A0[idx];
        if ((val > 0) && (val < 8)) {
            func_801C06FC_ovl7();
            val = D_800E77A0[omCurrentObj->objId];
        }
        if ((val >= 8) && (val < 0x24)) {
            func_801C1E08_ovl7();
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_80199084_ovl7.s")
#endif
void func_801992F0_ovl7(void) {
    switch (D_800E7730[omCurrentObj->objId]) {
        case 0:
        case 1:
        case 6:
            func_8019B9B0_ovl7();
            break;
        case 2:
            if (D_800E77A0[omCurrentObj->objId] != 6) {
                func_8019B9B0_ovl7();
            }
            break;
        default:
            break;
        case 3:
            func_8019BAC8_ovl7();
            break;
    }
}

void func_80199384_ovl7(void) {
    UnkStruct800E1B50 *ent;
    u32 id;
    u32 cb;
    s32 w;

    id = omCurrentObj->objId;
    ent = D_800E1B50[id];
    if (ent != NULL) {
        if (ent->unk88 != NULL) {
            cb = ent->unk88->unk4;
            if (cb != -1) {
                if (cb != 0) {
                    ((void (*)(GObj *)) cb)(D_800DE350[id]);
                    id = omCurrentObj->objId;
                }
                switch (D_800E7730[id]) {
                    case 1:
                    case 2:
                    case 4:
                    case 5:
                    case 6:
                        break;
                    case 3:
                        w = D_800E77A0[id];
                        if (w == 8) {
                            break;
                        }
                        if ((w == 7) && (D_800E7880[id] == 2)) {
                            break;
                        }
                        if ((w == 0) && (D_800E7880[id] == 1)) {
                            break;
                        }
                        if ((w == 5) && (D_800E7880[id] == 1)) {
                            break;
                        }
                        if ((w == 9) && (D_800E7880[id] == 1)) {
                            break;
                        }
                    case 0:
                        w = D_800E77A0[id];
                        if (((w < 0x4E) || (w >= 0x5D)) && (D_800E0D50[id] != 0) && !(D_800E78F0[id] & 0x20)) {
                            while (1) {
                                if (func_800B3158() == 0) {
                                    func_8019D8A0((u16) omCurrentObj->objId);
                                    curObjSleepForever();
                                }
                                if ((func_8019A7E8_ovl7(1000.0f) != 0) && (func_800B30BC(1.2f, 1.3f, 0x44BB8000) != 0)) {
                                    break;
                                }
                                ohSleep(1);
                            }
                        }
                        break;
                }
            }
        }
    }
}

void func_80199568_ovl7(void) {
    if (D_800E8E60[omCurrentObj->objId] == 0) {
        func_80198CA8_ovl7();
    } else {
        func_80198DB4_ovl7();
    }
    func_80198DBC_ovl7();
    D_800DF150[omCurrentObj->objId] = NULL;
    D_800DEF90[omCurrentObj->objId] = NULL;
    func_80199084_ovl7();
    func_80199384_ovl7();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_801992F0_ovl7();
    func_80198B98_ovl7();
}

s32 func_80199628_ovl7(Unused GObj *gobj) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    if (ent->unk9C != NULL) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], ent->unk9C);
        return 1;
    }
    return 0;
}

void func_80199688_ovl7(Unused GObj *gobj) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800E83E0[omCurrentObj->objId] = 1;
    if (ent->unk44 == 0) {
        ent->unk44 = 1;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = -1;
    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_801A69B0_ovl7);
}

void func_80199724_ovl7(Unused GObj *gobj) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800E83E0[omCurrentObj->objId] = 1;
    if (ent->unk44 == 0) {
        ent->unk44 = 1;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = -1;
    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_801A6DF0_ovl7);
}

void func_801997C0_ovl7(s32 arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800E83E0[omCurrentObj->objId] = 1;
    if (ent->unk44 == 0) {
        ent->unk44 = 1;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = -1;
    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_801AC364_ovl7);
}

void func_8019985C_ovl7(Unused GObj *gobj) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    func_800FB914(1);
    D_800E83E0[omCurrentObj->objId] = 1;
    if (ent->unk44 == 0) {
        ent->unk44 = 1;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = -1;
    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_801A69B0_ovl7);
}

void func_80199918_ovl7(Unused GObj *gobj) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    ent->unk40 = 1;
    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_801A3E80_ovl7);
}

void func_80199980_ovl7(Unused GObj *gobj) {
    gEntityFuncListIDArray[omCurrentObj->objId] = -1;
    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_801A6C10_ovl7);
}

void func_801999DC_ovl7(Unused GObj *gobj) {
    gEntityFuncListIDArray[omCurrentObj->objId] = -1;
    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_8020C710_ovl9);
}

// m2c draft, measured 198/205 diffs
#ifdef NON_MATCHING
void func_80199A38_ovl7(void) {
    UnkStruct800E1B50 *sp1C;
    GObj *temp_v1;
    UnkStruct800E1B50 *temp_a3;
    f32 *temp_v0_2;
    f32 *temp_v0_3;
    f32 var_f0;
    f32 var_f12;
    f32 var_f2;
    f32 var_f2_2;
    u32 temp_a0;
    u32 temp_a2;
    u32 temp_a2_2;
    u32 temp_v0;

    temp_v1 = omCurrentObj;
    temp_a2 = temp_v1->objId;
    temp_v0 = D_8012BCA0 >> 0x13;
    temp_a3 = D_800E1B50[temp_a2];
    D_800E8920[temp_a2] = 0;
    if (temp_v0 & 0xE3F) {
        if (temp_v0 & 0xE00) {
            temp_a0 = temp_a3->unk78;
            if (temp_a0 != 0) {
                sp1C = temp_a3;
                var_f12 = func_800F8824((Vector *) temp_a0, D_800E17D0[temp_v1->objId]);
            } else {
                var_f12 = 0.0f;
            }
        } else if (temp_v0 & 7) {
            var_f12 = 1.5707964f;
        } else {
            var_f12 = -1.5707964f;
        }
        temp_a2_2 = temp_v1->objId;
        var_f0 = D_800EB320[temp_a2_2] + var_f12;
        if (var_f0 > 6.2831855f) {
            do {
                var_f0 -= 6.2831855f;
            } while (var_f0 > 6.2831855f);
        }
        if (var_f0 < 0.0f) {
            do {
                var_f0 += 6.2831855f;
            } while (var_f0 < 0.0f);
        }
        if ((var_f0 >= 2.3561945f) && (var_f0 < 3.9269907f)) {
            D_800E83E0[temp_a2_2] = 1;
            temp_a3->unk44 = 1;
            gEntityFuncListIDArray[omCurrentObj->objId] = -1;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A6DF0_ovl7);
            return;
        }
        if ((var_f0 >= 1.9198622f) && (var_f0 < 4.363323f)) {
            D_800E9AA0[temp_a2_2] = 0xF;
            if (var_f0 < 3.1415927f) {
                if (var_f0 < 1.5707964f) {
                    var_f2 = -(var_f0 - 1.5707964f);
                } else {
                    var_f2 = var_f0 - 1.5707964f;
                }
                temp_v0_2 = &D_800EB320[temp_v1->objId];
                *temp_v0_2 -= 2.0f * var_f2;
                return;
            }
            if (var_f0 > 4.712389f) {
                var_f2_2 = -(4.712389f - var_f0);
            } else {
                var_f2_2 = 4.712389f - var_f0;
            }
            temp_v0_3 = &D_800EB320[temp_v1->objId];
            *temp_v0_3 += 2.0f * var_f2_2;
        }
    } else if (temp_v0 & 0x1C0) {
        D_800E83E0[temp_v1->objId] = 1;
        temp_a3->unk44 = 1;
        gEntityFuncListIDArray[omCurrentObj->objId] = -1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A6DF0_ovl7);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_80199A38_ovl7.s")
#endif
void func_80199D50_ovl7(void) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    if (!(D_800E8AE0[omCurrentObj->objId] & 1)) {
        D_800E8920[omCurrentObj->objId] = 0;
        D_800E83E0[omCurrentObj->objId] = 1;
        ent->unk44 = 1;
        gEntityFuncListIDArray[omCurrentObj->objId] = -1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_801A6DF0_ovl7);
    } else {
        func_80199A38_ovl7();
    }
}

void func_80199E14_ovl7(s32 arg0) {
    UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    ent->unk98 = &D_801CD2AC_ovl7;
    D_800E3210[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
    D_800E3750[omCurrentObj->objId] = -D_800EA8A0[omCurrentObj->objId];
}

void func_80199E90_ovl7(s32 arg0) {
    UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    ent->unk98 = &D_801CD288_ovl7;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
}

void func_80199F1C_ovl7(s32 arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    if (ent->unk3C == 0) {
        ent->unk3C = 1;
    }
}

void func_80199F58_ovl7(Unused GObj *gobj) {
    D_800E1B50[omCurrentObj->objId]->unk3C = 0;
    D_800E9020[omCurrentObj->objId] = 0.0f;
}

void func_80199FA0_ovl7(Unused GObj *gobj) {
    D_800E8920[omCurrentObj->objId] = 0;
}

void func_80199FC4_ovl7(Unused GObj *gobj) {
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
}

void func_8019A03C_ovl7(Unused GObj *gobj) {
    if (D_800E3210[omCurrentObj->objId] > 0.0f) {
        D_800E3210[omCurrentObj->objId] = 0.0f;
    }
}

void func_8019A080_ovl7(Unused GObj *gobj) {
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = 0.0f;
}

void func_8019A0C8_ovl7(Unused GObj *gobj) {
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
}

void func_8019A12C_ovl7(Unused GObj *gobj) {
    D_800E64D0[omCurrentObj->objId] = 0.0f;
}

void func_8019A154_ovl7(Unused GObj *gobj) {
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId] = 0.0f;
}

void func_8019A19C_ovl7(Unused GObj *gobj) {
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 65535.0f;
}

void func_8019A200_ovl7(Unused GObj *gobj) {
    f32 max = 65535.0f;
    f32 temp_f0_2;
    f32 var_f2;
    f32 var_f2_2;

    if (max == D_800E6850[omCurrentObj->objId]) {
        var_f2 = D_800E6850[omCurrentObj->objId];
    } else {
        var_f2 = D_800E6850[omCurrentObj->objId] * 0.5f;
    }
    D_800E64D0[omCurrentObj->objId] *= 0.5f;
    D_800E6690[omCurrentObj->objId] = D_800E64D0[omCurrentObj->objId] * 0.5f;
    if (var_f2 < 0.0f) {
        D_800E6850[omCurrentObj->objId] = -var_f2;
    } else {
        D_800E6850[omCurrentObj->objId] = var_f2;
    }
    temp_f0_2 = D_800E3C90[omCurrentObj->objId];
    if (max == temp_f0_2) {
        var_f2_2 = temp_f0_2;
    } else {
        var_f2_2 = temp_f0_2 * 0.5f;
    }
    D_800E3210[omCurrentObj->objId] *= 0.5f;
    D_800E3750[omCurrentObj->objId] *= 0.5f;
    if (var_f2_2 < 0.0f) {
        D_800E3C90[omCurrentObj->objId] = -var_f2_2;
        return;
    }
    D_800E3C90[omCurrentObj->objId] = var_f2_2;
}

void func_8019A36C_ovl7(Unused GObj *gobj) {
    f32 max = 65535.0f;
    f32 var_f2;
    f32 var_f2_2;

    if (max == D_800E6850[omCurrentObj->objId]) {
        var_f2 = D_800E6850[omCurrentObj->objId];
    } else {
        var_f2 = D_800E6850[omCurrentObj->objId] * 2.0f;
    }
    D_800E64D0[omCurrentObj->objId] *= 2.0f;
    D_800E6690[omCurrentObj->objId] = D_800E64D0[omCurrentObj->objId] * 2.0f;
    if (var_f2 < 0.0f) {
        D_800E6850[omCurrentObj->objId] = -var_f2;
    } else {
        D_800E6850[omCurrentObj->objId] = var_f2;
    }
    if (max == D_800E3C90[omCurrentObj->objId]) {
        var_f2_2 = D_800E3C90[omCurrentObj->objId];
    } else {
        var_f2_2 = D_800E3C90[omCurrentObj->objId] * 2.0f;
    }
    D_800E3210[omCurrentObj->objId] *= 2.0f;
    D_800E3750[omCurrentObj->objId] *= 2.0f;
    if (var_f2_2 < 0.0f) {
        D_800E3C90[omCurrentObj->objId] = -var_f2_2;
        return;
    }
    D_800E3C90[omCurrentObj->objId] = var_f2_2;
}

void func_8019A4C0_ovl7(Unused GObj *gobj) {
    D_800E64D0[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] = 0.0f;
}

void func_8019A508_ovl7(Unused GObj *gobj) {
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E3210[omCurrentObj->objId] = 0.0f;
}

void func_8019A580_ovl7(Unused GObj *gobj) {
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
}

// m2c draft, measured 69/70 diffs
#ifdef NON_MATCHING
void func_8019A62C_ovl7(s32 arg0) {
    f32 *temp_a0;
    f32 *temp_v0_2;
    f32 *temp_v1;
    f32 temp_f2;
    f32 var_f0;
    u32 temp_v0;

    temp_v0 = omCurrentObj->objId;
    if (D_800E1B50[temp_v0]->unk3C == 0) {
        temp_f2 = D_800E6A10[temp_v0];
        if (((temp_f2 == 1.0f) && (var_f0 = D_800E64D0[temp_v0], (var_f0 > 0.0f))) || ((temp_a0 = &D_800E64D0[temp_v0], (temp_f2 == -1.0f)) && (var_f0 = *temp_a0, (var_f0 < 0.0f)))) {
            D_800E64D0[temp_v0] = -var_f0;
            temp_v1 = &D_800E6690[omCurrentObj->objId];
            *temp_v1 = -*temp_v1;
            temp_v0_2 = &D_800E6A10[omCurrentObj->objId];
            *temp_v0_2 = -*temp_v0_2;
            func_8019BC94_ovl7();
            return;
        }
        *temp_a0 = 0.0f;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019A62C_ovl7.s")
#endif
void func_8019A740_ovl7(Unused GObj *gobj) {
    gKirbyState.unkD = -2;
    gEntityFuncListIDArray[omCurrentObj->objId] = -1;
    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_801AC448_ovl7);
}

void func_8019A7A8_ovl7(Unused GObj *gobj) {
    D_800EC2E0[omCurrentObj->objId].as_u32 = 1;
    func_800B3520();
}

#ifdef NON_MATCHING
// 17/69. Residue is in two places and neither is register naming.
// (1) insn 14: the ROM compares `c.eq.s $f4,$f0` (fs = the 9999.0f literal,
//     ft = originOffset); IDO emits `c.eq.s $f0,$f4` for BOTH source orders --
//     `9999.0f == temp_f0` and `temp_f0 == 9999.0f` compile byte-identically,
//     so IDO canonicalises the operands of a commutative FP compare and source
//     order cannot reach this one.
// (2) the tail: the ROM writes the two `if`s un-rotated (`bc1f` + `nop` +
//     `b` + a delay-slot assignment) where IDO folds them into `bc1fl`.
//     Replacing the draft's `goto block_6` with a plain `return var_v1;` gets
//     the ROM's two-separate-returns block layout but costs more than it buys
//     (22/69): IDO then constant-propagates `var_v1 == 0` into
//     `move $v0,$zero`, while the ROM keeps the live `or $v0,$v1,$zero`.
//     So the ROM's `var_v1` is not provably 0 at that return in its source
//     shape, and the goto form -- which shares the return -- is still the
//     lower count. Keep the goto.
s32 func_8019A7E8_ovl7(f32 arg0) {
    Vector sp34;
    Vector sp28;
    f32 temp_f0 = D_800E6F50[omCurrentObj->objId].originOffset;
    s32 var_v1;

    if (9999.0f == temp_f0) {
        sp34.x = gEntitiesNextPosXArray[0];
        sp34.y = gEntitiesNextPosYArray[0] + 20.0f;
        sp34.z = gEntitiesNextPosZArray[0];
        sp28.x = gEntitiesNextPosXArray[omCurrentObj->objId];
        sp28.y = gEntitiesNextPosYArray[omCurrentObj->objId];
        sp28.z = gEntitiesNextPosZArray[omCurrentObj->objId];
        temp_f0 = utilVec3Dist(&sp34, &sp28);
        var_v1 = 0;
        if (temp_f0 < (arg0 * arg0)) {
            return 1;
        } else {
            goto block_6;
        }
    }
    var_v1 = 0;
    if (temp_f0 < arg0) {
        var_v1 = 1;
    } else {
    }
block_6:
    return var_v1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019A7E8_ovl7.s")
#endif
s32 func_8019A900_ovl7(struct TrackPosition *arg0) {
    f32 temp_f0 = func_800F9828(omCurrentObj->objId, 0);

    if (temp_f0 == 9999.0f) {
        return 0;
    }
    arg0->unk4 = temp_f0;
    arg0->unk0 = (temp_f0 > 0.0f) ? 1.0f : -1.0f;
    return 1;
}

// m2c draft, measured 36/72 diffs
#ifdef NON_MATCHING
s32 func_8019A9AC_ovl7(f32 arg0, f32 arg1) {
    struct TrackPosition sp30;
    s32 sp28;
    f32 temp_f0;
    f32 temp_f2;
    f32 var_f0;
    f32 var_f12;
    s32 var_v1;

    var_f12 = arg0;
    var_v1 = 0;
    if (arg0 != -1.0f) {
        temp_f0 = *gEntitiesNextPosYArray + 20.0f;
        temp_f2 = gEntitiesNextPosYArray[omCurrentObj->objId];
        if (temp_f0 < temp_f2) {
            var_f12 = -(temp_f0 - temp_f2);
        } else {
            var_f12 = temp_f0 - temp_f2;
        }
        if (var_f12 <= (arg0 * 0.5f)) {
            goto block_6;
        }
    } else {
block_6:
        var_v1 = 1;
    }
    if (arg1 != -1.0f) {
        sp28 = var_v1;
        var_v1 = sp28;
        if (func_8019A900_ovl7(&sp30) != 0) {
            if (sp30.unk4 < 0.0f) {
                var_f0 = -sp30.unk4;
            } else {
                var_f0 = sp30.unk4;
            }
            if (var_f0 <= (arg1 * 0.5f)) {
                goto block_14;
            }
        }
    } else {
block_14:
        var_v1 |= 2;
    }
    return var_v1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019A9AC_ovl7.s")
#endif
// m2c draft, measured 89/100 diffs
#ifdef NON_MATCHING
f32 func_8019AAD0_ovl7(f32 arg0, f32 arg1, f32 arg2) {
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp20;
    f32 sp18;
    f32 temp_f0;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f2;
    f32 temp_f2_2;

    temp_f2_2 = *D_800E6BD0;
    temp_f16 = *D_800E5F90;
    sp30 = temp_f2_2;
    sp2C = temp_f16;
    if (func_800F98EC(0, arg1) != 0) {
        *D_800E6BD0 = temp_f2_2;
        *D_800E5F90 = temp_f16;
        return 0.0f;
    }
    sp2C = temp_f16;
    sp30 = temp_f2_2;
    temp_f0 = func_800F9828(omCurrentObj->objId, 0);
    sp34 = temp_f0;
    if (temp_f0 == 9999.0f) {
        *D_800E6BD0 = temp_f2_2;
        *D_800E5F90 = temp_f16;
        return 0.0f;
    }
    *D_800E6BD0 = temp_f2_2;
    *D_800E5F90 = temp_f16;
    sp18 = gEntitiesNextPosYArray[omCurrentObj->objId];
    temp_f14 = (sinf(arg0) * 16.0f) + 0.0f;
    sp20 = temp_f14;
    temp_f2 = (cosf(arg0) * 16.0f) + sp18;
    return (((*gEntitiesNextPosYArray + 20.0f + arg2) - temp_f2) * (0.0f - temp_f14)) - ((sp34 - temp_f14) * (sp18 - temp_f2));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019AAD0_ovl7.s")
#endif
// m2c draft, measured 79/90 diffs
#ifdef NON_MATCHING
s32 func_8019AC60_ovl7(f32 arg0, f32 arg1, s32 arg2, struct TrackPosition *arg3) {
    f32 *temp_v0;
    f32 *var_v0;
    f32 temp_f0;
    f32 var_f0;
    f32 var_f14;

    if (func_8019A900_ovl7(arg3) == 0) {
        return 0;
    }
    temp_f0 = func_8019AAD0_ovl7(D_800EB320[omCurrentObj->objId], arg1, arg2);
    if (temp_f0 == 0.0f) {
        return 0;
    }
    if (temp_f0 > 0.0f) {
        var_f14 = arg0;
    } else {
        var_f14 = -arg0;
    }
    temp_v0 = &D_800EB320[omCurrentObj->objId];
    *temp_v0 += var_f14;
    var_v0 = &D_800EB320[omCurrentObj->objId];
    var_f0 = *var_v0;
    if (var_f0 > 6.2831855f) {
        do {
            *var_v0 = var_f0 - 6.2831855f;
            var_v0 = &D_800EB320[omCurrentObj->objId];
            var_f0 = *var_v0;
        } while (var_f0 > 6.2831855f);
    }
    if (var_f0 < 0.0f) {
        do {
            *var_v0 = var_f0 + 6.2831855f;
            var_v0 = &D_800EB320[omCurrentObj->objId];
            var_f0 = *var_v0;
        } while (var_f0 < 0.0f);
    }
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019AC60_ovl7.s")
#endif
// m2c draft, measured 74/85 diffs
#ifdef NON_MATCHING
s32 func_8019ADB4_ovl7(f32 arg0, struct TrackPosition *arg1) {
    f32 *temp_v0;
    f32 *var_v0;
    f32 temp_f0;
    f32 var_f0;
    f32 var_f12;

    if (func_8019A900_ovl7(arg1) == 0) {
        return 0;
    }
    temp_f0 = func_8019AAD0_ovl7(D_800EB320[omCurrentObj->objId], 0, 0);
    if (temp_f0 == 0.0f) {
        return 0;
    }
    if (temp_f0 > 0.0f) {
        var_f12 = arg0;
    } else {
        var_f12 = -arg0;
    }
    temp_v0 = &D_800EB320[omCurrentObj->objId];
    *temp_v0 += var_f12;
    var_v0 = &D_800EB320[omCurrentObj->objId];
    var_f0 = *var_v0;
    if (var_f0 > 6.2831855f) {
        do {
            *var_v0 = var_f0 - 6.2831855f;
            var_v0 = &D_800EB320[omCurrentObj->objId];
            var_f0 = *var_v0;
        } while (var_f0 > 6.2831855f);
    }
    if (var_f0 < 0.0f) {
        do {
            *var_v0 = var_f0 + 6.2831855f;
            var_v0 = &D_800EB320[omCurrentObj->objId];
            var_f0 = *var_v0;
        } while (var_f0 < 0.0f);
    }
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019ADB4_ovl7.s")
#endif
#ifdef NON_MATCHING
void func_8019AF00_ovl7(f32 arg0) {
    f32 angleSin = sinf(D_800EB320[omCurrentObj->objId]) * arg0;
    f32 angleCos = cosf(D_800EB320[omCurrentObj->objId]) * arg0;

    D_800E6690[omCurrentObj->objId] = angleSin * 0.5f;
    D_800E6850[omCurrentObj->objId] = ABS(ABS(angleSin));
    D_800E3750[omCurrentObj->objId] = D_800EB160[omCurrentObj->objId] + (angleCos * 0.5f);
    D_800E3C90[omCurrentObj->objId] = ABS(ABS(D_800EB160[omCurrentObj->objId]) + ABS(angleCos));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019AF00_ovl7.s")
#endif

f32 eneGetPlayerHeight(void) {
    f32 ret = gEntitiesNextPosYArray[0];

    ret += 20.0f;
    return ret;
}

#ifdef PORT
/* PORT: func_8019A900_ovl7 stores a whole 8-byte struct TrackPosition
 * through its pointer. The matching body below hands it &sp18 and relies on
 * the N64 frame placing sp1C right above it; gcc on LP64 neither orders nor
 * packs locals that way, so the unk4 store lands on the stack canary
 * (caught as "stack smashing detected" on the level's first enemy tick).
 * Same read, spelled with the real struct. */
void func_8019B164_ovl7(void) {
    struct TrackPosition sp18;

    if (func_8019A900_ovl7(&sp18) != 0) {
        D_800E6A10[omCurrentObj->objId] = sp18.unk0;
    }
    else if (random_soft_s32_range(2) != 0) {
        D_800E6A10[omCurrentObj->objId] = 1.0f;
    } else {
        D_800E6A10[omCurrentObj->objId] = -1.0f;
    }
}
#else
#ifdef PORT
/* func_8019A900_ovl7 writes a full 8-byte TrackPosition through its arg; the
 * draft below hands it a lone s32 and banks on the neighbouring stack slot,
 * which the host's stack protector rightly calls a smash (first enemy spawn
 * in level 1-1 aborted here). Give it the real struct. */
void func_8019B164_ovl7(void) {
    struct TrackPosition sp;

    if (func_8019A900_ovl7(&sp) != 0) {
        D_800E6A10[omCurrentObj->objId] = sp.unk0;
    }
    else if (random_soft_s32_range(2) != 0) {
        D_800E6A10[omCurrentObj->objId] = 1.0f;
    } else {
        D_800E6A10[omCurrentObj->objId] = -1.0f;
    }
}
#else
void func_8019B164_ovl7(void) {
    // TODO: struct
    f32 sp1C;
    s32 sp18;

    if (func_8019A900_ovl7(&sp18) != 0) {
        D_800E6A10[omCurrentObj->objId] = sp18;
    }
    else if (random_soft_s32_range(2) != 0) {
        D_800E6A10[omCurrentObj->objId] = 1.0f;
    } else {
        D_800E6A10[omCurrentObj->objId] = -1.0f;
    }
}
#endif
#endif

s32 eneCheckAboveBelowPlayer(void) {
    return (gEntitiesNextPosYArray[omCurrentObj->objId] < (gEntitiesNextPosYArray[0] + 20.0f)) ? 1 : -1;
}


// eneCheckAboveBelowPlayer2
// its the same as the above except with a function call and you can add an offset
s32 func_8019B260_ovl7(f32 offsetY) {
    return ((gEntitiesNextPosYArray[omCurrentObj->objId] + offsetY) < eneGetPlayerHeight()) ? 1 : -1;
}

// m2c draft, measured 63/70 diffs
#ifdef NON_MATCHING
void func_8019B2C0_ovl7(s32 arg0) {
    f32 var_f2;
    u32 temp_a2;
    u32 temp_v0;
    u32 temp_v0_2;

    temp_v0 = omCurrentObj->objId;
    temp_a2 = D_800E1B50[temp_v0]->unk78;
    if (temp_a2 != 0) {
        if (D_800E8920[temp_v0] == 0) {
            var_f2 = 0.0f;
        } else {
            var_f2 = func_800F8824((Vector *) temp_a2, D_800E17D0[temp_v0]);
        }
        switch (arg0) {                             /* irregular */
            case 1:
                D_800DE350[omCurrentObj->objId]->data.dobj->parent->angle.v.x = -var_f2;
                return;
            case 2:
                temp_v0_2 = omCurrentObj->objId;
                D_800DE350[temp_v0_2]->data.dobj->parent->angle.v.z = var_f2 * D_800E6A10[temp_v0_2];
                break;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019B2C0_ovl7.s")
#endif
void func_8019B3C8_ovl7(Unused GObj *gobj) {
    D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.x = 0.0f;
    D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.z = 0.0f;
}

#ifdef PORT
/* PORT: same 4-byte-local landmine as func_8019B164_ovl7 above -- the
 * callee stores 8 bytes, the matching bodies lend it a lone s32 and count
 * on the N64 frame layout for the spill. Real struct locals instead. */
void func_8019B424_ovl7(s32 arg0) {
    UnkStruct800E1B50 *sp24;
    struct TrackPosition sp1C;

    sp24 = D_800E1B50[omCurrentObj->objId];
    if ((func_8019A900_ovl7(&sp1C) != 0) && (sp1C.unk0 != D_800E6A10[omCurrentObj->objId]) && (sp24->unk3C == 0)) {
        func_80199F1C_ovl7(arg0);
    }
}

void func_8019B4BC_ovl7(s32 arg0) {
    UnkStruct800E1B50 *sp24;
    struct TrackPosition sp1C;

    sp24 = D_800E1B50[omCurrentObj->objId];
    if (func_8019A900_ovl7(&sp1C) == 0) {
        sp1C.unk0 = func_8019B608_ovl7(0);
    }
    if ((sp1C.unk0 != D_800E6A10[omCurrentObj->objId]) && (sp24->unk3C == 0)) {
        func_80199F1C_ovl7(arg0);
    }
}
#else
void func_8019B424_ovl7(s32 arg0) {
    UnkStruct800E1B50 *sp24;
    f32 sp20;
    s32 sp1C;

    sp24 = D_800E1B50[omCurrentObj->objId];
    if ((func_8019A900_ovl7(&sp1C) != 0) && (sp1C != D_800E6A10[omCurrentObj->objId]) && (sp24->unk3C == 0)) {
        func_80199F1C_ovl7(arg0);
    }
}

void func_8019B4BC_ovl7(s32 arg0) {
    UnkStruct800E1B50 *sp24;
    f32 sp20;
    s32 sp1C;

    sp24 = D_800E1B50[omCurrentObj->objId];
    if (func_8019A900_ovl7(&sp1C) == 0) {
        sp1C = func_8019B608_ovl7(0);
    }
    if ((sp1C != D_800E6A10[omCurrentObj->objId]) && (sp24->unk3C == 0)) {
        func_80199F1C_ovl7(arg0);
    }
}
#endif

void func_8019B570_ovl7(Unused GObj *gobj) {
    func_800AFBB4(0, omCurrentObj);
}

void func_8019B59C_ovl7(s32 arg0) {
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId] + ((D_800E6A10[omCurrentObj->objId] == 1.0f) ? -M_PIF/2 : M_PIF/2);
}

f32 func_8019B608_ovl7(s32 track) {
    f32 var_f2;
    f32 angleXZ = atan2f(
        gEntitiesNextPosZArray[track] - gEntitiesNextPosZArray[omCurrentObj->objId],
        gEntitiesNextPosXArray[track] - gEntitiesNextPosXArray[omCurrentObj->objId]
    )- D_800E17D0[omCurrentObj->objId];

    while (angleXZ > M_PIF) {
        angleXZ -= 6.2831855f;
    }
    while (angleXZ < -M_PIF) {
        angleXZ += 6.2831855f;
    }

    return ((D_800E6A10[omCurrentObj->objId] * angleXZ) < 0.0f) ? 1.0f : -1.0f;
}

s32 eneCheckNearPlayer(f32 distanceSq) {
    Vector toPlayer;
    Vector magnitude;
    f32 sum;

    toPlayer.z = gEntitiesNextPosZArray[0] - gEntitiesNextPosZArray[omCurrentObj->objId];
    toPlayer.x = gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[omCurrentObj->objId];
    toPlayer.y = (gEntitiesNextPosYArray[0] + 20.0f) - gEntitiesNextPosYArray[omCurrentObj->objId];

    magnitude.x = (toPlayer.x * toPlayer.x);
    magnitude.y = (toPlayer.y * toPlayer.y);
    magnitude.z = (toPlayer.z * toPlayer.z);
    sum = magnitude.x + magnitude.y;
    return ((magnitude.z + sum) < distanceSq) ? 1 : 0;
}

void func_8019B7D8_ovl7(void) {
    UnkStruct800E1B50 *temp_v0;
    struct Sub800E1B50_Unk88 *temp_v1;
    void (*temp_v0_2)(void);

    temp_v0 = D_800E1B50[omCurrentObj->objId];
    if (temp_v0 != NULL) {
        temp_v1 = temp_v0->unk88;
        if (temp_v1 != NULL) {
            temp_v0_2 = (void (*)(void)) temp_v1->unk8;
            if (temp_v0_2 != NULL) {
                temp_v0_2();
            }
        }
    }
}

#ifdef NON_MATCHING
#ifdef PORT
/* PORT: same 4-byte-local landmine as func_8019B164_ovl7 -- and here the
 * spilled unk4 would corrupt the live sp24/sp28/sp2C position vector that
 * func_800A4F48 reads. Real struct local instead. */
s32 func_8019B834_ovl7(void) {
    f32 sp2C;
    f32 sp28;
    f32 sp24;
    struct TrackPosition sp1C;

    sp24 = gEntitiesNextPosXArray[omCurrentObj->objId];
    sp28 = gEntitiesNextPosYArray[omCurrentObj->objId];
    sp2C = gEntitiesNextPosZArray[omCurrentObj->objId];
    if ((func_8019A900_ovl7(&sp1C) != 0) && (sp1C.unk0 != D_800E6A10[omCurrentObj->objId]) && (func_800A4F48(D_800D799C->data.ptr, &sp24, 1.075f, 1.075f) == 0)) {
        return 1;
    }
    return 0;
}
#else
s32 func_8019B834_ovl7(void) {
    f32 sp2C;
    f32 sp28;
    f32 sp24;
    s32 sp1C;

    sp24 = gEntitiesNextPosXArray[omCurrentObj->objId];
    sp28 = gEntitiesNextPosYArray[omCurrentObj->objId];
    sp2C = gEntitiesNextPosZArray[omCurrentObj->objId];
    if ((func_8019A900_ovl7(&sp1C) != 0) && (sp1C != D_800E6A10[omCurrentObj->objId]) && (func_800A4F48(D_800D799C->data.ptr, &sp24, 1.075f, 1.075f) == 0)) {
        return 1;
    }
    return 0;
}
#endif
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019B834_ovl7.s")
#endif
s32 func_8019B918_ovl7(void) {
    Vector vec;

    vec.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    vec.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    vec.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    if (func_800A4F48(D_800D799C->data.ptr, &vec, 1.075f, 1.075f) == 0) {
        return 1;
    } else {
        return 0;
    }
}

void func_8019B9B0_ovl7(void) {
    UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    ent->unk80 = func_800FF144();
    if (ent->unk80 != NULL) {
        func_8019BBEC_ovl7();
        ent->unk80->unk14 = 10.0f;
        ent->unk80->unk18 = -400.0f;
        ent->unk80->unk10 = 17.5f;
        ent->unk80->unk21 = 0;
    }
}

void func_8019BA3C_ovl7(void) {
    UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    ent->unk80 = func_800FF144();
    if (ent->unk80 != NULL) {
        func_8019BBEC_ovl7();
        ent->unk80->unk14 = 20.0f;
        ent->unk80->unk18 = -800.0f;
        ent->unk80->unk10 = 35.5f;
        ent->unk80->unk21 = 0;
    }
}

void func_8019BAC8_ovl7(void) {
    UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    ent->unk80 = func_800FF144();
    if (ent->unk80 != NULL) {
        func_8019BBEC_ovl7();
        ent->unk80->unk14 = 5.0f;
        ent->unk80->unk18 = -400.0f;
        ent->unk80->unk10 = 12.5f;
        ent->unk80->unk21 = 1;
    }
}

void func_8019BB58_ovl7(void) {
    UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    if (ent->unk80 != NULL) {
        func_800FF1CC(ent->unk80);
        ent->unk80 = 0;
    }
}

void func_8019BBA8_ovl7(s32 track) {
    UnkStruct800E1B50 *ent = D_800E1B50[track];

    if (ent->unk80 != NULL) {
        func_800FF1CC(ent->unk80);
        ent->unk80 = 0;
    }
}

void func_8019BBEC_ovl7(void) {
    UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    if (ent->unk80 != NULL) {
        func_800FF200(ent->unk80);
    }
}

void func_8019BC34_ovl7(f32 arg0) {
    UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];
    f32 *tmp = &arg0;
    f32 two = 2.0f;

    ent->unk1C = *tmp;
    func_8019BC94_ovl7();
    ent->unk1C = *tmp * two;
}

void func_8019BC94_ovl7(void) {
    UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];
    struct TrackPosition sp24;
    f32 speed = D_800E6A10[omCurrentObj->objId] * ent->unk1C;

    sp24.unk0 = D_800E5F90[omCurrentObj->objId];
    sp24.unk4 = D_800E6BD0[omCurrentObj->objId];
    if (func_800F9888(&sp24, speed) == 0) {
        ent->unk2C = sp24.unk0;
        ent->unk28 = sp24.unk4;
        return;
    }
    ent->unk2C = -1;
}

s32 func_8019BD38_ovl7(void) {
    UnkStruct800E1B50 *temp_v1 = D_800E1B50[omCurrentObj->objId];
    s32 var_t0 = 0;
    u32 temp_a2 = temp_v1->unk2C;
    u32 temp_a0;

    if (temp_a2 == -1) {
        return 0;
    }
    temp_a0 = D_800E5F90[omCurrentObj->objId];
    if (temp_a2 == temp_a0) {
        if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
            if (temp_v1->unk28 <= D_800E6BD0[omCurrentObj->objId]) {
                var_t0 = 1;
            }
        } else if (D_800E6BD0[omCurrentObj->objId] <= temp_v1->unk28) {
            var_t0 = 1;
        }
    } else {
        f32 temp_f0 = func_800F951C(temp_a0, D_800E6BD0[omCurrentObj->objId], temp_a2, temp_v1->unk28);

        if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
            if (temp_f0 < 0.0f) {
                var_t0 = 1;
            }
        } else if (temp_f0 >= 0.0f) {
            var_t0 = 1;
        }
    }
    return var_t0;
}


// eneTurnCommon
// m2c draft, measured 296/296 diffs
#ifdef NON_MATCHING
void eneTurnCommon(s32 arg0) {
    UnkStruct800E1B50 *sp1C;
    UnkStruct800E1B50 *temp_t0;
    f32 *temp_a0;
    f32 *temp_a0_3;
    f32 *temp_a0_4;
    f32 *temp_v0;
    f32 *temp_v0_2;
    f32 *temp_v0_3;
    f32 *temp_v0_4;
    f32 *temp_v0_5;
    f32 *temp_v0_6;
    f32 *temp_v0_7;
    f32 *temp_v0_8;
    f32 *temp_v0_9;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 var_f0;
    f32 var_f0_2;
    f32 var_f0_3;
    f32 var_f0_4;
    s32 temp_a0_2;
    s32 var_a1;
    s32 var_a2;
    u32 temp_a1;
    u32 temp_a1_2;
    u32 temp_a1_3;
    u32 temp_a1_4;
    u32 temp_a1_5;
    u8 var_a3;
    u8 var_v0;

    temp_a1 = omCurrentObj->objId;
    var_a2 = arg0;
    var_a1 = temp_a1 * 4;
    temp_t0 = D_800E1B50[temp_a1];
    var_a3 = temp_t0->unk3C;
    if (var_a3 != 0) {
        if (arg0 == 1) {
            temp_v0 = &D_800E6A10[temp_a1];
            *temp_v0 *= -1.0f;
            temp_a1_2 = omCurrentObj->objId;
            temp_a0 = &D_800E64D0[temp_a1_2];
            temp_f2 = *temp_a0;
            if (temp_f2 < 0.0f) {
                var_f0 = -temp_f2;
            } else {
                var_f0 = temp_f2;
            }
            *temp_a0 = var_f0 * D_800E6A10[temp_a1_2];
            temp_a1_3 = omCurrentObj->objId;
            temp_v0_2 = &D_800E6690[temp_a1_3];
            temp_f2_2 = *temp_v0_2;
            if (temp_f2_2 < 0.0f) {
                var_f0_2 = -temp_f2_2;
            } else {
                var_f0_2 = temp_f2_2;
            }
            *temp_v0_2 = var_f0_2 * D_800E6A10[temp_a1_3];
            temp_t0->unk3C = 0;
            func_8019BC94_ovl7();
            return;
        }
        if ((var_a2 % 2) == 1) {
            sp1C = temp_t0;
            utilPrintf("eneTurnCommon Error frame=%02d\n", var_a2, var_a2, var_a3);
            var_a2 = arg0 + 1;
            var_a3 = temp_t0->unk3C;
            var_a1 = omCurrentObj->objId * 4;
        }
        var_v0 = var_a3;
        if (var_a3 == 1) {
            temp_t0->unk20 = *(D_800E64D0 + var_a1);
            var_v0 = temp_t0->unk3C;
            temp_t0->unk24 = D_800E6690[omCurrentObj->objId];
            var_a1 = omCurrentObj->objId * 4;
        }
        temp_a0_2 = var_a2 / 2;
        if (var_v0 < temp_a0_2) {
            *(D_800E6690 + var_a1) = 0.0f;
            temp_a1_4 = omCurrentObj->objId;
            D_800E64D0[temp_a1_4] = D_800E6690[temp_a1_4];
            temp_a1_5 = omCurrentObj->objId;
            temp_v0_3 = &D_800E9020[temp_a1_5];
            if (D_800E6A10[temp_a1_5] == 1.0f) {
                var_f0_3 = 3.1415927f / var_a2;
            } else {
                var_f0_3 = -(3.1415927f / var_a2);
            }
            *temp_v0_3 -= var_f0_3;
            goto block_29;
        }
        if (temp_a0_2 == var_v0) {
            if (*(D_800E6A10 + var_a1) == 1.0f) {
                temp_v0_4 = D_800E9020 + var_a1;
                *temp_v0_4 -= 3.1415927f / var_a2;
                temp_a0_3 = &D_800E17D0[omCurrentObj->objId];
                *temp_a0_3 += 3.1415927f;
                temp_v0_5 = &D_800E9020[omCurrentObj->objId];
                *temp_v0_5 += 3.1415927f;
            } else {
                temp_v0_6 = D_800E9020 + var_a1;
                *temp_v0_6 += 3.1415927f / var_a2;
                temp_a0_4 = &D_800E17D0[omCurrentObj->objId];
                *temp_a0_4 -= 3.1415927f;
                temp_v0_7 = &D_800E9020[omCurrentObj->objId];
                *temp_v0_7 -= 3.1415927f;
            }
            temp_v0_8 = &D_800E6A10[omCurrentObj->objId];
            *temp_v0_8 = -*temp_v0_8;
            D_800E64D0[omCurrentObj->objId] = -temp_t0->unk20;
            D_800E6690[omCurrentObj->objId] = -temp_t0->unk24;
            goto block_29;
        }
        if (var_v0 < var_a2) {
            temp_v0_9 = D_800E9020 + var_a1;
            if (*(D_800E6A10 + var_a1) == 1.0f) {
                var_f0_4 = 3.1415927f / var_a2;
            } else {
                var_f0_4 = -(3.1415927f / var_a2);
            }
            *temp_v0_9 += var_f0_4;
block_29:
            temp_t0->unk3C += 1;
        } else {
            *(D_800E9020 + var_a1) = 0.0f;
            temp_t0->unk3C = 0;
            func_8019BC94_ovl7();
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/eneTurnCommon.s")
#endif
// m2c draft, measured 232/236 diffs
#ifdef NON_MATCHING
void eneTurnCommon2(s32 arg0) {
    UnkStruct800E1B50 *sp1C;
    UnkStruct800E1B50 *temp_a3;
    f32 *temp_a0;
    f32 *temp_a0_2;
    f32 *temp_a0_3;
    f32 *temp_v0;
    f32 *temp_v0_2;
    f32 *temp_v0_3;
    f32 *temp_v0_4;
    f32 *temp_v0_5;
    f32 *temp_v0_6;
    f32 *temp_v0_7;
    f32 *temp_v0_8;
    f32 *temp_v0_9;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 var_f2;
    f32 var_f2_2;
    s32 var_a1;
    s32 var_a2;
    u32 temp_a1;
    u32 temp_a1_2;
    u32 temp_a1_3;
    u32 temp_a1_4;
    u8 var_a0;
    u8 var_v0;

    temp_a1 = omCurrentObj->objId;
    var_a2 = arg0;
    var_a1 = temp_a1 * 4;
    temp_a3 = D_800E1B50[temp_a1];
    var_v0 = temp_a3->unk3C;
    if (var_v0 != 0) {
        if (arg0 == 1) {
            temp_v0 = &D_800E6A10[temp_a1];
            *temp_v0 *= -1.0f;
            temp_a1_2 = omCurrentObj->objId;
            temp_a0 = &D_800E64D0[temp_a1_2];
            temp_f0 = *temp_a0;
            if (temp_f0 < 0.0f) {
                var_f2 = -temp_f0;
            } else {
                var_f2 = temp_f0;
            }
            *temp_a0 = var_f2 * D_800E6A10[temp_a1_2];
            temp_a1_3 = omCurrentObj->objId;
            temp_v0_2 = &D_800E6690[temp_a1_3];
            temp_f0_2 = *temp_v0_2;
            if (temp_f0_2 < 0.0f) {
                var_f2_2 = -temp_f0_2;
            } else {
                var_f2_2 = temp_f0_2;
            }
            *temp_v0_2 = var_f2_2 * D_800E6A10[temp_a1_3];
            temp_a3->unk3C = 0;
            func_8019BC94_ovl7();
            return;
        }
        if ((var_a2 % 2) == 1) {
            sp1C = temp_a3;
            utilPrintf("eneTurnCommon Error frame=%02d\n", var_a2, var_a2, temp_a3);
            var_a2 = arg0 + 1;
            var_v0 = temp_a3->unk3C;
            var_a1 = omCurrentObj->objId * 4;
        }
        var_a0 = var_v0;
        if (var_v0 == 1) {
            temp_a3->unk20 = *(D_800E64D0 + var_a1);
            temp_a3->unk24 = D_800E6690[omCurrentObj->objId];
            temp_a1_4 = omCurrentObj->objId;
            if (D_800E6A10[temp_a1_4] == 1.0f) {
                temp_v0_3 = &D_800E9020[temp_a1_4];
                *temp_v0_3 -= 3.1415927f / var_a2;
                temp_a0_2 = &D_800E17D0[omCurrentObj->objId];
                *temp_a0_2 += 3.1415927f;
                temp_v0_4 = &D_800E9020[omCurrentObj->objId];
                *temp_v0_4 += 3.1415927f;
            } else {
                temp_v0_5 = &D_800E9020[temp_a1_4];
                *temp_v0_5 += 3.1415927f / var_a2;
                temp_a0_3 = &D_800E17D0[omCurrentObj->objId];
                *temp_a0_3 -= 3.1415927f;
                temp_v0_6 = &D_800E9020[omCurrentObj->objId];
                *temp_v0_6 -= 3.1415927f;
            }
            temp_v0_7 = &D_800E6A10[omCurrentObj->objId];
            *temp_v0_7 = -*temp_v0_7;
            D_800E64D0[omCurrentObj->objId] = -temp_a3->unk20;
            D_800E6690[omCurrentObj->objId] = -temp_a3->unk24;
            var_a0 = temp_a3->unk3C;
            var_a1 = omCurrentObj->objId * 4;
        }
        if (var_a0 < var_a2) {
            temp_v0_8 = D_800E9020 + var_a1;
            temp_f0_3 = 3.1415927f / var_a2;
            if (*(D_800E6A10 + var_a1) == 1.0f) {
                temp_v0_9 = D_800E9020 + var_a1;
                *temp_v0_9 += temp_f0_3;
            } else {
                *temp_v0_8 -= temp_f0_3;
            }
            temp_a3->unk3C += 1;
        } else {
            *(D_800E9020 + var_a1) = 0.0f;
            temp_a3->unk3C = 0;
            func_8019BC94_ovl7();
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/eneTurnCommon2.s")
#endif
void func_8019C6AC_ovl7(Unused GObj *gobj) {
    UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    if (ent->unk3C == 0) {
        ent->unk3C = 1;
    }
    D_800E6690[omCurrentObj->objId] = 0.0f;
    func_8019C79C_ovl7();
}

void func_8019C71C_ovl7(f32 arg0) {
    UnkStruct800E1B50 *sp1C;

    sp1C = D_800E1B50[omCurrentObj->objId];
    if (func_8019BD38_ovl7() != 0) {
        sp1C->unk3C = 1;
        D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * arg0;
    }
}

void func_8019C79C_ovl7(void) {
    UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];
    struct TrackPosition sp24;
    f32 speed = -D_800E6A10[omCurrentObj->objId] * ent->unk1C;

    sp24.unk0 = D_800E5F90[omCurrentObj->objId];
    sp24.unk4 = D_800E6BD0[omCurrentObj->objId];
    if (func_800F9888(&sp24, speed) == 0) {
        ent->unk2C = sp24.unk0;
        ent->unk28 = sp24.unk4;
        return;
    }
    ent->unk2C = -1;
}

// m2c draft, measured 86/91 diffs
#ifdef NON_MATCHING
void func_8019C844_ovl7(Vector *arg0) {
    UnkStruct800E1B50 *temp_v0;
    f32 *temp_v0_2;
    f32 *temp_v0_3;
    f32 *temp_v0_4;
    f32 temp_f0;
    s32 var_a1;
    u32 temp_a1;
    u32 temp_a1_2;
    u32 temp_a1_3;

    temp_a1 = omCurrentObj->objId;
    var_a1 = temp_a1;
    temp_v0 = D_800E1B50[temp_a1];
    if (temp_v0->unk3C != 0) {
        temp_v0->unk3C = 0;
        var_a1 = omCurrentObj->objId;
    }
    temp_v0_2 = D_800E17D0 + var_a1;
    if (*(D_800E6A10 + var_a1) == 1.0f) {
        temp_v0_3 = D_800E17D0 + var_a1;
        *temp_v0_3 += 3.1415927f;
    } else {
        *temp_v0_2 -= 3.1415927f;
    }
    D_800E9020[omCurrentObj->objId] = 0.0f;
    temp_v0_4 = &D_800E6A10[omCurrentObj->objId];
    *temp_v0_4 = -*temp_v0_4;
    temp_a1_2 = omCurrentObj->objId;
    D_800E64D0[temp_a1_2] = D_800E6A10[temp_a1_2] * arg0->x;
    temp_a1_3 = omCurrentObj->objId;
    D_800E6690[temp_a1_3] = D_800E6A10[temp_a1_3] * arg0->y;
    temp_f0 = arg0->z;
    if (temp_f0 < 0.0f) {
        D_800E6850[omCurrentObj->objId] = -temp_f0;
        return;
    }
    D_800E6850[omCurrentObj->objId] = temp_f0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019C844_ovl7.s")
#endif
// m2c draft, measured 211/220 diffs
#ifdef NON_MATCHING
void func_8019C9B0_ovl7(f32 arg0, u8 arg1) {
    UnkStruct800E1B50 *sp1C;
    UnkStruct800E1B50 *temp_a2;
    f32 *temp_v0_10;
    f32 *temp_v0_3;
    f32 *temp_v0_4;
    f32 *temp_v0_5;
    f32 *temp_v0_6;
    f32 *temp_v0_7;
    f32 *temp_v0_8;
    f32 *temp_v0_9;
    f32 temp_f2;
    f32 var_f0;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;
    u32 temp_v1_4;
    u8 temp_v0;
    u8 temp_v0_2;
    u8 var_a1;

    var_a1 = arg1 & 0xFF;
    temp_a2 = D_800E1B50[omCurrentObj->objId];
    temp_v0 = temp_a2->unk3C;
    if (temp_v0 != 0) {
        if (temp_v0 == 1) {
            arg1 = var_a1;
            sp1C = temp_a2;
            func_8019C79C_ovl7();
            var_a1 = arg1;
        }
        if (var_a1 != 1) {
            temp_v0_2 = temp_a2->unk3C;
            var_f0 = temp_v0_2;
            if (temp_v0_2 < 0) {
                var_f0 += 4294967296.0f;
            }
            temp_f2 = var_a1 * 0.5f;
            if (var_f0 < temp_f2) {
                temp_v1 = omCurrentObj->objId;
                if (D_800E6A10[temp_v1] == 1.0f) {
                    temp_v0_3 = &D_800E9020[temp_v1];
                    *temp_v0_3 -= (arg0 * 3.1415927f) / 180.0f;
                } else {
                    temp_v0_4 = &D_800E9020[temp_v1];
                    *temp_v0_4 += (arg0 * 3.1415927f) / 180.0f;
                }
                goto block_21;
            }
            if (temp_f2 == var_f0) {
                temp_v1_2 = omCurrentObj->objId;
                if (D_800E6A10[temp_v1_2] == 1.0f) {
                    temp_v0_5 = &D_800E9020[temp_v1_2];
                    *temp_v0_5 -= (arg0 * 3.1415927f) / 180.0f;
                } else {
                    temp_v0_6 = &D_800E9020[temp_v1_2];
                    *temp_v0_6 += (arg0 * 3.1415927f) / 180.0f;
                }
                goto block_21;
            }
            if (temp_v0_2 < var_a1) {
                temp_v1_3 = omCurrentObj->objId;
                if (D_800E6A10[temp_v1_3] == 1.0f) {
                    temp_v0_7 = &D_800E9020[temp_v1_3];
                    *temp_v0_7 -= (arg0 * 3.1415927f) / 180.0f;
                } else {
                    temp_v0_8 = &D_800E9020[temp_v1_3];
                    *temp_v0_8 += (arg0 * 3.1415927f) / 180.0f;
                }
block_21:
                temp_a2->unk3C += 1;
            } else {
                temp_a2->unk3C = 0;
                D_800E9020[omCurrentObj->objId] = 0.0f;
                temp_v1_4 = omCurrentObj->objId;
                temp_v0_9 = &D_800E9020[temp_v1_4];
                if (D_800E6A10[temp_v1_4] == 1.0f) {
                    temp_v0_10 = &D_800E9020[temp_v1_4];
                    *temp_v0_10 += 3.1415927f;
                    return;
                }
                *temp_v0_9 -= 3.1415927f;
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019C9B0_ovl7.s")
#endif
void func_8019CD08_ovl7(f32 arg0) {
    UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];
    f32 *tmp = &arg0;
    f32 two = 2.0f;

    ent->unk1C = *tmp;
    func_8019CD68_ovl7();
    ent->unk1C = *tmp * two;
}

void func_8019CD68_ovl7(void) {
    UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];
    Vector vec;

    vec.x = vec.y = 0.0f;
    vec.z = ent->unk1C;
    lbvector_Rotate(&vec, 2, gEntitiesAngleYArray[omCurrentObj->objId]);
    *(f32 *)&ent->unkC = gEntitiesNextPosXArray[omCurrentObj->objId] + vec.x;
    *(f32 *)&ent->unk14 = gEntitiesNextPosZArray[omCurrentObj->objId] + vec.z;
}

// m2c draft, measured 70/106 diffs
#ifdef NON_MATCHING
s32 func_8019CE28_ovl7(void) {
    UnkStruct800E1B50 *temp_v0;
    f32 temp_f0;
    f32 temp_f2;
    f32 var_f0;
    f32 var_f0_2;
    f32 var_f12;
    f32 var_f12_2;
    s32 var_a0;
    u32 temp_v1;

    temp_v1 = omCurrentObj->objId;
    var_a0 = 0;
    temp_v0 = D_800E1B50[temp_v1];
    temp_f0 = gEntitiesNextPosXArray[temp_v1] - *(f32 *) &temp_v0->unkC;
    temp_f2 = gEntitiesNextPosZArray[temp_v1] - *(f32 *) &temp_v0->unk14;
    if (D_800E6A10[temp_v1] == 1.0f) {
        if (!(temp_f0 >= 0.0f)) {
            if (temp_f0 < 0.0f) {
                var_f12 = -temp_f0;
            } else {
                var_f12 = temp_f0;
            }
            if (var_f12 <= 0.001f) {
                goto block_6;
            }
            /* Duplicate return node #23. Try simplifying control flow for better match */
            return var_a0;
        }
block_6:
        if (!(temp_f2 >= 0.0f)) {
            if (temp_f2 < 0.0f) {
                var_f0 = -temp_f2;
            } else {
                var_f0 = temp_f2;
            }
            if (var_f0 <= 0.001f) {
                /* Duplicate return node #11. Try simplifying control flow for better match */
                return 1;
            }
            /* Duplicate return node #23. Try simplifying control flow for better match */
            return var_a0;
        }
        return 1;
    }
    if (!(temp_f0 <= 0.0f)) {
        if (temp_f0 < 0.0f) {
            var_f12_2 = -temp_f0;
        } else {
            var_f12_2 = temp_f0;
        }
        if (var_f12_2 <= 0.001f) {
            goto block_17;
        }
    } else {
block_17:
        if (!(temp_f2 <= 0.0f)) {
            if (temp_f2 < 0.0f) {
                var_f0_2 = -temp_f2;
            } else {
                var_f0_2 = temp_f2;
            }
            if (var_f0_2 <= 0.001f) {
                goto block_22;
            }
        } else {
block_22:
            var_a0 = 1;
        }
    }
    return var_a0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019CE28_ovl7.s")
#endif
// m2c draft, measured 137/144 diffs
#ifdef NON_MATCHING
void func_8019CFD0_ovl7(Vector *arg0) {
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    UnkStruct800E1B50 *temp_a1;
    f32 *temp_a0;
    f32 *temp_a0_2;
    f32 *temp_v1_2;
    f32 temp_f0;
    f32 temp_f0_2;
    s32 var_v1;
    u32 temp_v1;

    temp_v1 = omCurrentObj->objId;
    var_v1 = temp_v1;
    temp_a1 = D_800E1B50[temp_v1];
    if (temp_a1->unk3C != 0) {
        temp_a1->unk3C = 0;
        var_v1 = omCurrentObj->objId;
    }
    temp_a0 = D_800E17D0 + var_v1;
    if (*(D_800E6A10 + var_v1) == 1.0f) {
        temp_a0_2 = D_800E17D0 + var_v1;
        *temp_a0_2 += 3.1415927f;
    } else {
        *temp_a0 -= 3.1415927f;
    }
    D_800E9020[omCurrentObj->objId] = 0.0f;
    sp30 = 1.0f;
    sp28 = 0.0f;
    temp_v1_2 = &D_800E6A10[omCurrentObj->objId];
    sp2C = 0.0f;
    *temp_v1_2 = -*temp_v1_2;
    lbvector_Rotate(&sp28, 2, gEntitiesAngleYArray[omCurrentObj->objId]);
    D_800E3050[omCurrentObj->objId] = arg0->x * sp28;
    D_800E3590[omCurrentObj->objId] = arg0->y * sp28;
    temp_f0 = arg0->z * sp28;
    if (temp_f0 < 0.0f) {
        D_800E3AD0[omCurrentObj->objId] = -temp_f0;
    } else {
        D_800E3AD0[omCurrentObj->objId] = temp_f0;
    }
    D_800E33D0[omCurrentObj->objId] = arg0->x * sp30;
    D_800E3910[omCurrentObj->objId] = arg0->y * sp30;
    temp_f0_2 = arg0->z * sp30;
    if (temp_f0_2 < 0.0f) {
        D_800E3E50[omCurrentObj->objId] = -temp_f0_2;
        return;
    }
    D_800E3E50[omCurrentObj->objId] = temp_f0_2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019CFD0_ovl7.s")
#endif
void func_8019D214_ovl7(void) {
    UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];
    Vector vec;
    f32 angle = gEntitiesAngleYArray[omCurrentObj->objId] * -D_800E6A10[omCurrentObj->objId];

    vec.x = 0.0f;
    vec.y = 0.0f;
    vec.z = D_800E6A10[omCurrentObj->objId] * ent->unk1C;
    lbvector_Rotate(&vec, 2, angle);
    *(f32 *)&ent->unkC = gEntitiesNextPosXArray[omCurrentObj->objId] + vec.x;
    *(f32 *)&ent->unk14 = gEntitiesNextPosZArray[omCurrentObj->objId] + vec.z;
}

void func_8019D2FC_ovl7(f32 arg0, u8 arg1) {
    UnkStruct800E1B50 *temp_a0;
    u8 temp_v0;

    temp_a0 = D_800E1B50[omCurrentObj->objId];
    temp_v0 = temp_a0->unk3C;
    if (temp_v0 != 0) {
        if (temp_v0 == 1) {
            func_8019D214_ovl7();
        }
        if (arg1 != 1) {
            if (arg1 > temp_a0->unk3C) {
                if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
                    D_800E9020[omCurrentObj->objId] = -((arg0 * 3.1415927f) / 180.0f);
                } else {
                    D_800E9020[omCurrentObj->objId] = (arg0 * 3.1415927f) / 180.0f;
                }
            } else {
                temp_a0->unk3C = 0;
                D_800E9020[omCurrentObj->objId] = 0.0f;
                if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
                    gEntitiesAngleYArray[omCurrentObj->objId] -= (arg0 * 3.1415927f) / 180.0f;
                } else {
                    gEntitiesAngleYArray[omCurrentObj->objId] += (arg0 * 3.1415927f) / 180.0f;
                }
                return;
            }
            temp_a0->unk3C += 1;
        }
    }
}

// m2c draft, measured 230/249 diffs
#ifdef NON_MATCHING
void func_8019D4D0_ovl7(f32 arg0, s32 arg1) {
    UnkStruct800E1B50 *temp_a2;
    f32 *temp_a0_2;
    f32 *temp_a0_3;
    f32 *temp_a0_4;
    f32 *temp_v0_7;
    f32 *temp_v1;
    f32 *temp_v1_2;
    f32 *temp_v1_3;
    f32 *temp_v1_4;
    f32 *var_at;
    f32 temp_f0;
    f32 temp_f2;
    f32 var_f6;
    f32 var_f8;
    s32 temp_a1;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v0_4;
    u32 temp_v0_5;
    u32 temp_v0_6;
    u32 temp_v0_8;
    u8 temp_a0;

    temp_v0 = omCurrentObj->objId;
    temp_a1 = arg1 & 0xFF;
    temp_a2 = D_800E1B50[temp_v0];
    temp_a0 = temp_a2->unk3C;
    if (temp_a0 != 0) {
        if (temp_a0 == 1) {
            temp_a2->unk20 = D_800E64D0[temp_v0];
            temp_a2->unk24 = D_800E6690[omCurrentObj->objId];
            D_800E6690[omCurrentObj->objId] = 0.0f;
            temp_v0_2 = omCurrentObj->objId;
            D_800E64D0[temp_v0_2] = D_800E6690[temp_v0_2];
        }
        temp_f0 = temp_a2->unk3C;
        var_f6 = temp_a1;
        if (temp_a1 < 0) {
            var_f6 += 4294967296.0f;
        }
        temp_f2 = var_f6 * 0.5f;
        if (temp_f0 < temp_f2) {
            temp_v0_3 = omCurrentObj->objId;
            if (D_800E6A10[temp_v0_3] == 1.0f) {
                temp_v1 = &D_800E9020[temp_v0_3];
                *temp_v1 -= (arg0 * 3.1415927f) / 180.0f;
            } else {
                temp_v1_2 = &D_800E9020[temp_v0_3];
                *temp_v1_2 += (arg0 * 3.1415927f) / 180.0f;
            }
            goto block_19;
        }
        if (temp_f2 == temp_f0) {
            temp_v0_4 = omCurrentObj->objId;
            temp_a0_2 = &D_800E17D0[temp_v0_4];
            if (D_800E6A10[temp_v0_4] == 1.0f) {
                temp_a0_3 = &D_800E17D0[temp_v0_4];
                *temp_a0_3 += 3.1415927f;
                temp_v0_5 = omCurrentObj->objId;
                var_at = &D_800E9020[temp_v0_5];
                var_f8 = D_800E4C50[temp_v0_5] + 1.5707964f;
            } else {
                *temp_a0_2 -= 3.1415927f;
                temp_v0_6 = omCurrentObj->objId;
                var_at = &D_800E9020[temp_v0_6];
                var_f8 = D_800E4C50[temp_v0_6] + -1.5707964f;
            }
            *var_at = var_f8;
            temp_v0_7 = &D_800E6A10[omCurrentObj->objId];
            *temp_v0_7 = -*temp_v0_7;
            temp_a0_4 = &D_800E4C50[omCurrentObj->objId];
            *temp_a0_4 = -*temp_a0_4;
            D_800E64D0[omCurrentObj->objId] = -temp_a2->unk20;
            D_800E6690[omCurrentObj->objId] = -temp_a2->unk24;
            goto block_19;
        }
        if (temp_a2->unk3C < temp_a1) {
            temp_v0_8 = omCurrentObj->objId;
            if (D_800E6A10[temp_v0_8] == 1.0f) {
                temp_v1_3 = &D_800E9020[temp_v0_8];
                *temp_v1_3 += (arg0 * 3.1415927f) / 180.0f;
            } else {
                temp_v1_4 = &D_800E9020[temp_v0_8];
                *temp_v1_4 -= (arg0 * 3.1415927f) / 180.0f;
            }
block_19:
            temp_a2->unk3C += 1;
        } else {
            temp_a2->unk3C = 0;
            D_800E9020[omCurrentObj->objId] = 0.0f;
            func_8019BC94_ovl7();
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019D4D0_ovl7.s")
#endif
#ifdef NON_MATCHING
// 20/46 diffs: body is right; ROM frame is 0x28 with the arg home slot
// stored (sw $a0, 0x28($sp)) and temps at 0x20/0x24. K&R form, u16 param
// and inlining ent all fail to reproduce the home-slot store.
// Measured further: a K&R definition with a single s32 parameter does NOT
// home it (contrast a K&R definition with several parameters, which homes
// all of them) -- so the wave-7 "K&R solves the home-slot problem" note is
// arity-dependent. A narrow K&R/prototyped `u16 arg0` DOES emit the home
// store but then re-reads it with `lhu 0x2(sp)` instead of keeping
// `andi $s0, $a0, 0xFFFF` in a saved register (42/46), and assigning to the
// parameter kills the $s0 copy entirely (37/45). Also swept: demoting the
// forward declaration to `void f();`, a 2-parameter K&R form.
void func_8019D8A0(arg0)
s32 arg0;
{
    struct UnkStruct800E1B50 *ent = D_800E1B50[(u16) arg0];

    if (ent->unk34 != NULL) {
        func_800A22D4(ent->unk34);
    }
    func_800A2300(D_800DE350[(u16) arg0]);
    ent->unk34 = NULL;
    func_8019BBA8_ovl7((u16) arg0);
    func_801A32A8_ovl7((u16) arg0);
    if (D_800E76C0[(u16) arg0] < 0x40) {
        D_800D6C90[D_800E76C0[(u16) arg0]] &= 0x80;
    }
    func_800B1900((u16) arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019D8A0.s")
#endif
struct EneSpawnEntry {
    /* 0x00 */ u8 pad0[5];
    /* 0x05 */ u8 unk5;
    /* 0x06 */ u8 pad6[0x26];
}; /* size = 0x2C */

extern struct EneSpawnEntry *D_801290E0;

#ifdef NON_MATCHING
void func_8019D958_ovl7(s32 arg0) {
    UnkStruct800E1B50 *temp_v0;
    s32 temp_s0;
    struct Sub800E1B50_Unk34 *temp_a1;
    u8 *temp_v0_2;
    u8 temp_v1;

    temp_s0 = (u16) arg0;
    temp_v0 = D_800E1B50[temp_s0];
    temp_a1 = temp_v0->unk34;
    if (temp_a1 != NULL) {
        func_800A22D4(temp_a1);
    }
    func_800A2300(D_800DE350[temp_s0]);
    temp_v0->unk34 = NULL;
    D_800DE350[temp_s0]->onAnimate = NULL;
    func_8019BBA8_ovl7(temp_s0);
    func_801A32A8_ovl7(temp_s0);
    temp_v1 = D_800E76C0[temp_s0];
    if (temp_v1 < 0x40) {
        temp_v0_2 = &D_800D6C68[0x28] + temp_v1;
        if (D_801290E0[temp_v1].unk5 & 1) {
            *temp_v0_2 &= 0x80;
        }
    }
    func_800B1900(temp_s0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019D958_ovl7.s")
#endif
f32 func_8019DA70_ovl7(s32 track);

f32 func_8019DA50_ovl7(void) {
    return func_8019DA70_ovl7(0);
}

f32 func_8019DA70_ovl7(s32 arg0)
{
  f32 var_f2;
  f32 temp_f0_2;
  f32 temp_f2;
 do { var_f2 = func_800F951C(D_800E5F90[omCurrentObj->objId], D_800E6BD0[omCurrentObj->objId], D_800E5F90[arg0], D_800E6BD0[arg0]); if (var_f2 == 9999.0f) { temp_f0_2 = gEntitiesNextPosXArray[omCurrentObj->objId] - gEntitiesNextPosXArray[arg0]; temp_f2 = gEntitiesNextPosZArray[omCurrentObj->objId] - gEntitiesNextPosZArray[arg0]; var_f2 = sqrtf((temp_f0_2 * temp_f0_2) + (temp_f2 * temp_f2)); } } while (0);
  return var_f2;
}

void func_8019DB58_ovl7(s32 arg0, s32 arg1) {
    D_800E76C0[arg1] = D_800E76C0[arg0];
    D_800E76C0[arg0] = 0xFF;
}

s32 reqChildEneTrk(u8 arg0, u8 arg1, u8 arg2) {
    s32 track;

    track = request_track_general(0x17, 0x1E, 0x3C);
    if ((track >= 0x3C) || (track == -1)) {
        utilPrintf("reqChildEneTrk  Request Error!![enelib.cc]\n");
        func_800B1900(track);
        return track;
    } else {
        gEntityFuncListIDArray[track] = gEntityFuncListIDArray[omCurrentObj->objId];
        D_800E76C0[track] = 0xFF;
        D_800E7730[track] = arg0;
        D_800E77A0[track] = arg1;
        D_800E7880[track] = arg2;
        D_800E5F90[track] = D_800E6150[track] = D_800E5F90[omCurrentObj->objId];
        D_800E6BD0[track] = D_800E6D90[track] = D_800E6BD0[omCurrentObj->objId];
        gEntitiesNextPosXArray[track] = gEntitiesNextPosXArray[omCurrentObj->objId];
        gEntitiesPosXArray[track] = gEntitiesPosXArray[omCurrentObj->objId];
        gEntitiesNextPosYArray[track] = gEntitiesNextPosYArray[omCurrentObj->objId];
        gEntitiesPosYArray[track] = gEntitiesPosYArray[omCurrentObj->objId];
        gEntitiesNextPosZArray[track] = gEntitiesNextPosZArray[omCurrentObj->objId];
        gEntitiesPosZArray[track] = gEntitiesPosZArray[omCurrentObj->objId];
        return track;
    }
}
#ifdef PORT
/* 0x8019DB7C IS reqChildEneTrk (tools/symbol_addrs.txt), but ovl9_13.c
 * calls it by the raw address name, which until now only the weak stub
 * satisfied.  Alias it so the call reaches the real function. */
s32 func_8019DB7C_ovl7(u8 arg0, s32 arg1, s32 arg2) {
    return reqChildEneTrk(arg0, arg1, arg2);
}
#endif

s32 func_8019DD78_ovl7(u8 arg0, s32 arg1) {
    s32 track;

    track = request_track_general(0x17, 0x1E, 0x3C);
    if ((track >= 0x3C) || (track == -1)) {
        func_800B1900(track);
        return -1;
    }
    D_800E76C0[track] = 0xFF;
    D_800E7730[track] = 0;
    D_800E77A0[track] = arg0;
    D_800E7880[track] = arg1;
    D_800E5F90[track] = D_800E6150[track] = D_800E5F90[omCurrentObj->objId];
    D_800E6BD0[track] = D_800E6D90[track] = D_800E6BD0[omCurrentObj->objId];
    gEntitiesNextPosXArray[track] = gEntitiesPosXArray[track] = gEntitiesNextPosXArray[omCurrentObj->objId];
    gEntitiesNextPosYArray[track] = gEntitiesPosYArray[track] = gEntitiesNextPosYArray[omCurrentObj->objId];
    gEntitiesNextPosZArray[track] = gEntitiesPosZArray[track] = gEntitiesNextPosZArray[omCurrentObj->objId];
    D_800E0D50[track] = omCurrentObj->objId;
    return track;
}

s32 func_8019DF0C_ovl7(arg0, arg1)
u8 arg0;
s32 arg1;
{
    s32 track;

    track = request_track_general(0x19, 0x1E, 0x3C);
    if ((track >= 0x3C) || (track == -1)) {
        func_800B1900(track);
        return -1;
    }
    D_800E76C0[track] = 0xFF;
    D_800E7730[track] = 2;
    D_800E77A0[track] = arg0;
    D_800E7880[track] = arg1;
    D_800E5F90[track] = D_800E6150[track] = D_800E5F90[omCurrentObj->objId];
    D_800E6BD0[track] = D_800E6D90[track] = D_800E6BD0[omCurrentObj->objId];
    gEntitiesNextPosXArray[track] = gEntitiesPosXArray[track] = gEntitiesNextPosXArray[omCurrentObj->objId];
    gEntitiesNextPosYArray[track] = gEntitiesPosYArray[track] = gEntitiesNextPosYArray[omCurrentObj->objId];
    gEntitiesNextPosZArray[track] = gEntitiesPosZArray[track] = gEntitiesNextPosZArray[omCurrentObj->objId];
    D_800E0D50[track] = omCurrentObj->objId;
    return track;
}

s32 func_8019E0A4_ovl7(s32 arg0, s32 arg1) {
    s32 track = func_8019DF0C_ovl7(arg0, arg1);

    if (track != -1) {
        D_800E8E60[track] = 1;
    }
    return track;
}

s32 func_8019E0E8_ovl7(s32 arg0, s32 arg1) {
    s32 track = func_8019DF0C_ovl7(arg0, arg1);

    if (track != -1) {
        D_800E8E60[track] = 0;
    }
    return track;
}

// m2c draft, measured 462/462 diffs
#ifdef NON_MATCHING
void func_8019E128_ovl7(arg0)
    s32 *arg0;
{
    Gfx *temp_s0;
    Gfx *temp_s0_10;
    Gfx *temp_s0_11;
    Gfx *temp_s0_12;
    Gfx *temp_s0_13;
    Gfx *temp_s0_14;
    Gfx *temp_s0_15;
    Gfx *temp_s0_16;
    Gfx *temp_s0_17;
    Gfx *temp_s0_18;
    Gfx *temp_s0_19;
    Gfx *temp_s0_20;
    Gfx *temp_s0_21;
    Gfx *temp_s0_22;
    Gfx *temp_s0_23;
    Gfx *temp_s0_24;
    Gfx *temp_s0_25;
    Gfx *temp_s0_26;
    Gfx *temp_s0_27;
    Gfx *temp_s0_28;
    Gfx *temp_s0_29;
    Gfx *temp_s0_2;
    Gfx *temp_s0_30;
    Gfx *temp_s0_31;
    Gfx *temp_s0_32;
    Gfx *temp_s0_3;
    Gfx *temp_s0_4;
    Gfx *temp_s0_5;
    Gfx *temp_s0_6;
    Gfx *temp_s0_7;
    Gfx *temp_s0_8;
    Gfx *temp_s0_9;
    Gfx *temp_s2;
    Gfx *temp_s2_10;
    Gfx *temp_s2_11;
    Gfx *temp_s2_12;
    Gfx *temp_s2_2;
    Gfx *temp_s2_3;
    Gfx *temp_s2_4;
    Gfx *temp_s2_5;
    Gfx *temp_s2_6;
    Gfx *temp_s2_7;
    Gfx *temp_s2_8;
    Gfx *temp_s2_9;
    Gfx *var_s2;
    s32 temp_v0;

    if (!(D_800DD8D0[*arg0] & 0x40)) {
        temp_v0 = func_800AB0F4();
        switch (temp_v0) {
            case 19:
                temp_s0 = gDisplayListHeads[0];
                gDisplayListHeads[0] = temp_s0 + 1;
                temp_s0->words.w0 = 0xDB060010;
                temp_s0->words.w1 = gSegment4StartArray[*arg0];
                func_800AB120(arg0, 0xDB060010, gSegment4StartArray);
                temp_s0_2 = gDisplayListHeads[0];
                gDisplayListHeads[0] = temp_s0_2 + 1;
                temp_s0_2->words.w1 = 0x18;
                temp_s0_2->words.w0 = 0xDB020000;
                temp_s0_3 = gDisplayListHeads[0];
                gDisplayListHeads[0] = temp_s0_3 + 1;
                temp_s0_3->words.w1 = &D_800BE550;
                temp_s0_3->words.w0 = 0xDC08060A;
                temp_s0_4 = gDisplayListHeads[0];
                gDisplayListHeads[0] = temp_s0_4 + 1;
                temp_s0_4->words.w1 = &D_800BE548;
                temp_s0_4->words.w0 = 0xDC08090A;
                return;
            case 21:
                temp_s0_5 = gDisplayListHeads[0];
                gDisplayListHeads[0] = temp_s0_5 + 1;
                temp_s0_5->words.w0 = 0xDB060010;
                temp_s0_5->words.w1 = gSegment4StartArray[*arg0];
                func_800AB1F0(arg0, 0xDB060010, gSegment4StartArray);
                temp_s0_6 = gDisplayListHeads[0];
                gDisplayListHeads[0] = temp_s0_6 + 1;
                temp_s0_6->words.w1 = 0x18;
                temp_s0_6->words.w0 = 0xDB020000;
                temp_s0_7 = gDisplayListHeads[0];
                gDisplayListHeads[0] = temp_s0_7 + 1;
                temp_s0_7->words.w1 = &D_800BE550;
                temp_s0_7->words.w0 = 0xDC08060A;
                temp_s0_8 = gDisplayListHeads[0];
                gDisplayListHeads[0] = temp_s0_8 + 1;
                temp_s0_8->words.w1 = &D_800BE548;
                temp_s0_8->words.w0 = 0xDC08090A;
                return;
            case 23:
            case 25:
                temp_s0_9 = gDisplayListHeads[0];
                gDisplayListHeads[0] = temp_s0_9 + 1;
                temp_s0_9->words.w0 = 0xDB060010;
                temp_s0_9->words.w1 = gSegment4StartArray[*arg0];
                renderDrawDObjFromGObj(arg0, 0xDB060010, gSegment4StartArray);
                temp_s0_10 = gDisplayListHeads[0];
                gDisplayListHeads[0] = temp_s0_10 + 1;
                temp_s0_10->words.w1 = 0x18;
                temp_s0_10->words.w0 = 0xDB020000;
                temp_s0_11 = gDisplayListHeads[0];
                gDisplayListHeads[0] = temp_s0_11 + 1;
                temp_s0_11->words.w1 = &D_800BE550;
                temp_s0_11->words.w0 = 0xDC08060A;
                temp_s0_12 = gDisplayListHeads[0];
                gDisplayListHeads[0] = temp_s0_12 + 1;
                temp_s0_12->words.w1 = &D_800BE548;
                temp_s0_12->words.w0 = 0xDC08090A;
                return;
            case 27:
            case 29:
                temp_s0_13 = gDisplayListHeads[0];
                gDisplayListHeads[0] = temp_s0_13 + 1;
                temp_s0_13->words.w0 = 0xDB060010;
                temp_s0_13->words.w1 = gSegment4StartArray[*arg0];
                func_8001585C(arg0, 0xDB060010, gSegment4StartArray);
                temp_s0_14 = gDisplayListHeads[0];
                gDisplayListHeads[0] = temp_s0_14 + 1;
                temp_s0_14->words.w1 = 0x18;
                temp_s0_14->words.w0 = 0xDB020000;
                temp_s0_15 = gDisplayListHeads[0];
                gDisplayListHeads[0] = temp_s0_15 + 1;
                temp_s0_15->words.w1 = &D_800BE550;
                temp_s0_15->words.w0 = 0xDC08060A;
                temp_s0_16 = gDisplayListHeads[0];
                gDisplayListHeads[0] = temp_s0_16 + 1;
                temp_s0_16->words.w1 = &D_800BE548;
                temp_s0_16->words.w0 = 0xDC08090A;
                return;
            case 20:
                temp_s0_17 = gDisplayListHeads[0];
                gDisplayListHeads[0] = temp_s0_17 + 1;
                temp_s0_17->words.w0 = 0xDB060010;
                temp_s0_17->words.w1 = gSegment4StartArray[*arg0];
                temp_s2 = gDisplayListHeads[1];
                gDisplayListHeads[1] = temp_s2 + 1;
                temp_s2->words.w0 = 0xDB060010;
                temp_s2->words.w1 = gSegment4StartArray[*arg0];
                func_800AB174(arg0, 0xDB060010, gSegment4StartArray);
                temp_s0_18 = gDisplayListHeads[0];
                gDisplayListHeads[0] = temp_s0_18 + 1;
                temp_s0_18->words.w1 = 0x18;
                temp_s0_18->words.w0 = 0xDB020000;
                temp_s0_19 = gDisplayListHeads[0];
                gDisplayListHeads[0] = temp_s0_19 + 1;
                temp_s0_19->words.w1 = &D_800BE550;
                temp_s0_19->words.w0 = 0xDC08060A;
                temp_s0_20 = gDisplayListHeads[0];
                gDisplayListHeads[0] = temp_s0_20 + 1;
                temp_s0_20->words.w1 = &D_800BE548;
                temp_s0_20->words.w0 = 0xDC08090A;
                temp_s2_2 = gDisplayListHeads[1];
                gDisplayListHeads[1] = temp_s2_2 + 1;
                temp_s2_2->words.w1 = 0x18;
                temp_s2_2->words.w0 = 0xDB020000;
                temp_s2_3 = gDisplayListHeads[1];
                gDisplayListHeads[1] = temp_s2_3 + 1;
                temp_s2_3->words.w1 = &D_800BE550;
                temp_s2_3->words.w0 = 0xDC08060A;
                var_s2 = gDisplayListHeads[1];
                gDisplayListHeads[1] = var_s2 + 1;
                var_s2->words.w1 = &D_800BE548;
block_11:
                var_s2->words.w0 = 0xDC08090A;
                break;
            case 22:
                temp_s0_21 = gDisplayListHeads[0];
                gDisplayListHeads[0] = temp_s0_21 + 1;
                temp_s0_21->words.w0 = 0xDB060010;
                temp_s0_21->words.w1 = gSegment4StartArray[*arg0];
                temp_s2_4 = gDisplayListHeads[1];
                gDisplayListHeads[1] = temp_s2_4 + 1;
                temp_s2_4->words.w0 = 0xDB060010;
                temp_s2_4->words.w1 = gSegment4StartArray[*arg0];
                func_800AB244(arg0, 0xDB060010, gSegment4StartArray);
                temp_s0_22 = gDisplayListHeads[0];
                gDisplayListHeads[0] = temp_s0_22 + 1;
                temp_s0_22->words.w1 = 0x18;
                temp_s0_22->words.w0 = 0xDB020000;
                temp_s0_23 = gDisplayListHeads[0];
                gDisplayListHeads[0] = temp_s0_23 + 1;
                temp_s0_23->words.w1 = &D_800BE550;
                temp_s0_23->words.w0 = 0xDC08060A;
                temp_s0_24 = gDisplayListHeads[0];
                gDisplayListHeads[0] = temp_s0_24 + 1;
                temp_s0_24->words.w1 = &D_800BE548;
                temp_s0_24->words.w0 = 0xDC08090A;
                temp_s2_5 = gDisplayListHeads[1];
                gDisplayListHeads[1] = temp_s2_5 + 1;
                temp_s2_5->words.w1 = 0x18;
                temp_s2_5->words.w0 = 0xDB020000;
                temp_s2_6 = gDisplayListHeads[1];
                gDisplayListHeads[1] = temp_s2_6 + 1;
                temp_s2_6->words.w1 = &D_800BE550;
                temp_s2_6->words.w0 = 0xDC08060A;
                var_s2 = gDisplayListHeads[1];
                gDisplayListHeads[1] = var_s2 + 1;
                var_s2->words.w1 = &D_800BE548;
                goto block_11;
            case 24:
            case 26:
                temp_s0_25 = gDisplayListHeads[0];
                gDisplayListHeads[0] = temp_s0_25 + 1;
                temp_s0_25->words.w0 = 0xDB060010;
                temp_s0_25->words.w1 = gSegment4StartArray[*arg0];
                temp_s2_7 = gDisplayListHeads[1];
                gDisplayListHeads[1] = temp_s2_7 + 1;
                temp_s2_7->words.w0 = 0xDB060010;
                temp_s2_7->words.w1 = gSegment4StartArray[*arg0];
                renderDrawObject_TypeD(arg0, 0xDB060010, gSegment4StartArray);
                temp_s0_26 = gDisplayListHeads[0];
                gDisplayListHeads[0] = temp_s0_26 + 1;
                temp_s0_26->words.w1 = 0x18;
                temp_s0_26->words.w0 = 0xDB020000;
                temp_s0_27 = gDisplayListHeads[0];
                gDisplayListHeads[0] = temp_s0_27 + 1;
                temp_s0_27->words.w1 = &D_800BE550;
                temp_s0_27->words.w0 = 0xDC08060A;
                temp_s0_28 = gDisplayListHeads[0];
                gDisplayListHeads[0] = temp_s0_28 + 1;
                temp_s0_28->words.w1 = &D_800BE548;
                temp_s0_28->words.w0 = 0xDC08090A;
                temp_s2_8 = gDisplayListHeads[1];
                gDisplayListHeads[1] = temp_s2_8 + 1;
                temp_s2_8->words.w1 = 0x18;
                temp_s2_8->words.w0 = 0xDB020000;
                temp_s2_9 = gDisplayListHeads[1];
                gDisplayListHeads[1] = temp_s2_9 + 1;
                temp_s2_9->words.w1 = &D_800BE550;
                temp_s2_9->words.w0 = 0xDC08060A;
                var_s2 = gDisplayListHeads[1];
                gDisplayListHeads[1] = var_s2 + 1;
                var_s2->words.w1 = &D_800BE548;
                goto block_11;
            case 28:
            case 30:
                temp_s0_29 = gDisplayListHeads[0];
                gDisplayListHeads[0] = temp_s0_29 + 1;
                temp_s0_29->words.w0 = 0xDB060010;
                temp_s0_29->words.w1 = gSegment4StartArray[*arg0];
                temp_s2_10 = gDisplayListHeads[1];
                gDisplayListHeads[1] = temp_s2_10 + 1;
                temp_s2_10->words.w0 = 0xDB060010;
                temp_s2_10->words.w1 = gSegment4StartArray[*arg0];
                func_80015BCC(arg0, 0xDB060010, gSegment4StartArray);
                temp_s0_30 = gDisplayListHeads[0];
                gDisplayListHeads[0] = temp_s0_30 + 1;
                temp_s0_30->words.w1 = 0x18;
                temp_s0_30->words.w0 = 0xDB020000;
                temp_s0_31 = gDisplayListHeads[0];
                gDisplayListHeads[0] = temp_s0_31 + 1;
                temp_s0_31->words.w1 = &D_800BE550;
                temp_s0_31->words.w0 = 0xDC08060A;
                temp_s0_32 = gDisplayListHeads[0];
                gDisplayListHeads[0] = temp_s0_32 + 1;
                temp_s0_32->words.w1 = &D_800BE548;
                temp_s0_32->words.w0 = 0xDC08090A;
                temp_s2_11 = gDisplayListHeads[1];
                gDisplayListHeads[1] = temp_s2_11 + 1;
                temp_s2_11->words.w1 = 0x18;
                temp_s2_11->words.w0 = 0xDB020000;
                temp_s2_12 = gDisplayListHeads[1];
                gDisplayListHeads[1] = temp_s2_12 + 1;
                temp_s2_12->words.w1 = &D_800BE550;
                temp_s2_12->words.w0 = 0xDC08060A;
                var_s2 = gDisplayListHeads[1];
                gDisplayListHeads[1] = var_s2 + 1;
                var_s2->words.w1 = &D_800BE548;
                goto block_11;
            default:
                break;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019E128_ovl7.s")
#endif
void func_8019E860_ovl7(s32 *arg0) {
    gSPNumLights(gDisplayListHeads[0]++, 1);
    gSPLight(gDisplayListHeads[0]++, &D_801C27D8_ovl7, 1);
    gSPLight(gDisplayListHeads[0]++, &D_801C27D0_ovl7, 2);
    gSPNumLights(gDisplayListHeads[1]++, 1);
    gSPLight(gDisplayListHeads[1]++, &D_801C27D8_ovl7, 1);
    gSPLight(gDisplayListHeads[1]++, &D_801C27D0_ovl7, 2);
    func_8019E128_ovl7(arg0);
    gSPNumLights(gDisplayListHeads[0]++, 1);
    gSPLight(gDisplayListHeads[0]++, &D_800BE550, 1);
    gSPLight(gDisplayListHeads[0]++, &D_800BE548, 2);
    gSPNumLights(gDisplayListHeads[1]++, 1);
    gSPLight(gDisplayListHeads[1]++, &D_800BE550, 1);
    gSPLight(gDisplayListHeads[1]++, &D_800BE548, 2);
}

// m2c draft, measured 114/118 diffs
#ifdef NON_MATCHING
void func_8019E9F0_ovl7(void) {
    s32 sp1C;
    Gfx *temp_a1;
    Gfx *temp_a1_2;
    Gfx *temp_a1_3;
    Gfx *temp_a1_4;
    Gfx *temp_a1_5;
    Gfx *temp_a1_6;
    Gfx *temp_v1;
    Gfx *temp_v1_2;
    Gfx *temp_v1_3;
    Gfx *temp_v1_4;
    Gfx *temp_v1_5;
    Gfx *temp_v1_6;
    s32 temp_t9;
    u8 *temp_t0;
    u8 *temp_t1;

    temp_t9 = D_800E77A0[D_800D7090] - 0x24;
    sp1C = temp_t9;
    if ((temp_t9 >= 0) && (temp_t9 < 9)) {
        temp_v1 = gDisplayListHeads[0];
        gDisplayListHeads[0] = temp_v1 + 1;
        temp_v1->words.w1 = 0x18;
        temp_v1->words.w0 = 0xDB020000;
        temp_v1_2 = gDisplayListHeads[0];
        gDisplayListHeads[0] = temp_v1_2 + 1;
        temp_v1_2->words.w0 = 0xDC08060A;
        temp_t0 = (sp1C * 0x18) + &D_801C27E8_ovl7;
        temp_t1 = temp_t0 + 8;
        temp_v1_2->words.w1 = temp_t1;
        temp_v1_3 = gDisplayListHeads[0];
        gDisplayListHeads[0] = temp_v1_3 + 1;
        temp_v1_3->words.w1 = temp_t0;
        temp_v1_3->words.w0 = 0xDC08090A;
        temp_a1 = gDisplayListHeads[1];
        gDisplayListHeads[1] = temp_a1 + 1;
        temp_a1->words.w1 = 0x18;
        temp_a1->words.w0 = 0xDB020000;
        temp_a1_2 = gDisplayListHeads[1];
        gDisplayListHeads[1] = temp_a1_2 + 1;
        temp_a1_2->words.w1 = temp_t1;
        temp_a1_2->words.w0 = 0xDC08060A;
        temp_a1_3 = gDisplayListHeads[1];
        gDisplayListHeads[1] = temp_a1_3 + 1;
        temp_a1_3->words.w1 = temp_t0;
        temp_a1_3->words.w0 = 0xDC08090A;
        func_8019E128_ovl7(temp_a1_3);
        temp_v1_4 = gDisplayListHeads[0];
        gDisplayListHeads[0] = temp_v1_4 + 1;
        temp_v1_4->words.w1 = 0x18;
        temp_v1_4->words.w0 = 0xDB020000;
        temp_v1_5 = gDisplayListHeads[0];
        gDisplayListHeads[0] = temp_v1_5 + 1;
        temp_v1_5->words.w0 = 0xDC08060A;
        temp_v1_5->words.w1 = &D_800BE550;
        temp_v1_6 = gDisplayListHeads[0];
        gDisplayListHeads[0] = temp_v1_6 + 1;
        temp_v1_6->words.w0 = 0xDC08090A;
        temp_v1_6->words.w1 = &D_800BE548;
        temp_a1_4 = gDisplayListHeads[1];
        gDisplayListHeads[1] = temp_a1_4 + 1;
        temp_a1_4->words.w1 = 0x18;
        temp_a1_4->words.w0 = 0xDB020000;
        temp_a1_5 = gDisplayListHeads[1];
        gDisplayListHeads[1] = temp_a1_5 + 1;
        temp_a1_5->words.w1 = &D_800BE550;
        temp_a1_5->words.w0 = 0xDC08060A;
        temp_a1_6 = gDisplayListHeads[1];
        gDisplayListHeads[1] = temp_a1_6 + 1;
        temp_a1_6->words.w1 = &D_800BE548;
        temp_a1_6->words.w0 = 0xDC08090A;
        return;
    }
    func_8019E128_ovl7();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019E9F0_ovl7.s")
#endif
void func_8019EBCC_ovl7(Unused GObj *gobj) {
    UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    if (ent->unk3B == -1) {
        ent->unk3B = gEntityFuncListIDArray[omCurrentObj->objId];
    }
}

void func_8019EC14_ovl7(GObj *gobj)
{
  s8 temp_a0;
  struct UnkStruct800E1B50 *temp_v0;
  temp_v0 = D_800E1B50[omCurrentObj->objId];
  temp_a0 = temp_v0->unk3B;
  if (temp_v0->unk3B != (-1))
  {
    gEntityFuncListIDArray[omCurrentObj->objId] = temp_v0->unk3B;
    temp_v0->unk3B = -1;
  }
}

#ifdef NON_MATCHING
/* 63/66 */
void func_8019EC5C_ovl7(EneCurve *arg0) {
    f32 f0;
    f32 dy;
    f32 fv;
    f32 f18;
    f32 t;
    f32 var_f14;
    f32 var_f2;
    s32 n;

    n = arg0->unk2C;
    f0 = n + 1;
    dy = arg0->unkC.y - arg0->unk0.y;
    arg0->unk18.x = (arg0->unkC.x - arg0->unk0.x) / n;
    arg0->unk18.y = (arg0->unkC.z - arg0->unk0.z) / n;
    f18 = -arg0->unk24 * (f0 * 0.5f);
    if (dy < 0.0f) { var_f2 = -dy; } else { var_f2 = dy; }
    t = (var_f2 / f0) - f18;
    if (dy <= 0.0f) {
        var_f14 = t - f18;
    } else {
        var_f14 = t + (f18 + f18);
        if (0.0f < var_f14) { var_f14 = -var_f14; }
    }
    arg0->unk18.z = -var_f14;
    if (0.0f < dy) {
        arg0->unk24 = arg0->unk24;
        return;
    }
    arg0->unk24 = arg0->unk24 + arg0->unk24;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019EC5C_ovl7.s")
#endif

// m2c draft, measured 96/101 diffs
#ifdef NON_MATCHING
void func_8019ED58_ovl7(EneCurve *arg0) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f18;
    f32 temp_f2;
    f32 var_f14;
    f32 var_f16;
    s32 temp_v0;
    u32 temp_a1;
    u32 temp_a1_2;
    u32 temp_a1_3;

    temp_v0 = arg0->unk2C;
    temp_a1 = omCurrentObj->objId;
    temp_f0 = temp_v0 + 1;
    D_800E3050[temp_a1] = (*gEntitiesNextPosXArray - gEntitiesNextPosXArray[temp_a1]) / temp_v0;
    temp_a1_2 = omCurrentObj->objId;
    D_800E33D0[temp_a1_2] = (*gEntitiesNextPosZArray - gEntitiesNextPosZArray[temp_a1_2]) / arg0->unk2C;
    temp_a1_3 = omCurrentObj->objId;
    temp_f2 = (*gEntitiesNextPosYArray + 20.0f) - gEntitiesNextPosYArray[temp_a1_3];
    temp_f12 = -arg0->unk24 * (temp_f0 * 0.5f);
    if (temp_f2 < 0.0f) {
        var_f14 = -temp_f2;
    } else {
        var_f14 = temp_f2;
    }
    temp_f18 = (var_f14 / temp_f0) - temp_f12;
    if (temp_f2 <= 0.0f) {
        var_f16 = temp_f18 - temp_f12;
    } else {
        var_f16 = temp_f18 + (2.0f * temp_f12);
        if (var_f16 > 0.0f) {
            var_f16 = -var_f16;
        }
    }
    D_800E3210[temp_a1_3] = -var_f16;
    if (temp_f2 > 0.0f) {
        D_800E3750[omCurrentObj->objId] = arg0->unk24;
        return;
    }
    D_800E3750[omCurrentObj->objId] = 2.0f * arg0->unk24;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019ED58_ovl7.s")
#endif
// m2c draft, measured 39/71 diffs
#ifdef NON_MATCHING
void func_8019EEE4_ovl7(EneCurve *arg0) {
    f32 temp_f18;
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 var_f0;
    f32 var_f12;
    f32 var_f12_2;
    f32 var_f14;
    f32 var_f16;
    s32 temp_v0;

    temp_v0 = arg0->unk2C;
    if (temp_v0 < 2) {
        var_f0 = 2.0f;
        arg0->unk2C = 2;
    } else {
        var_f0 = temp_v0;
    }
    temp_f2 = arg0->unk28;
    if (temp_f2 < 0.0f) {
        var_f12 = -temp_f2;
    } else {
        var_f12 = temp_f2;
    }
    var_f14 = 0.0f;
    temp_f2_2 = var_f12 / (var_f0 * var_f0);
    var_f16 = 1.0f;
    arg0->unk24 = 0.0f;
    if (var_f0 >= 1.0f) {
        do {
            temp_f20 = var_f16 + 1.0f;
            var_f14 += var_f16;
            temp_f18 = var_f16 * var_f16 * temp_f2_2;
            temp_f22 = temp_f2_2 * (temp_f20 * temp_f20);
            if (temp_f18 < temp_f22) {
                var_f12_2 = -(temp_f18 - temp_f22);
            } else {
                var_f12_2 = temp_f18 - temp_f22;
            }
            var_f16 = temp_f20;
            arg0->unk24 = arg0->unk24 + var_f12_2;
        } while (temp_f20 <= var_f0);
    }
    arg0->unk24 = arg0->unk24 / var_f14;
    arg0->unk18.z = (arg0->unk28 / var_f0) + (arg0->unk24 * (var_f0 * 0.5f));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019EEE4_ovl7.s")
#endif
void func_8019F000_ovl7(void *arg0, f32 *arg1, s32 arg2, f32 arg3) {
    EneCurve sp20;

    sp20.unk0.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    sp20.unk0.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    sp20.unk0.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    sp20.unkC = *(Vector *) ((u8 *) arg0 + 8);
    sp20.unkC.x += arg1[0];
    sp20.unkC.y += arg1[1];
    sp20.unkC.z += arg1[2];
    sp20.unk2C = arg2;
    sp20.unk24 = arg3;
    func_8019EC5C_ovl7(&sp20);
    D_800E3050[omCurrentObj->objId] = sp20.unk18.x;
    D_800E33D0[omCurrentObj->objId] = sp20.unk18.y;
    D_800E3210[omCurrentObj->objId] = sp20.unk18.z;
    D_800E3750[omCurrentObj->objId] = sp20.unk24;
}

#ifdef NON_MATCHING
// 20/47, re-measured: every diff is register naming, the instruction stream is
// otherwise identical. The ROM puts objId in $v0, the D_800E7CE0 value in $a1
// and the D_800E1B50 element in $t0; IDO swaps the first two ($a1/$v0) and
// gives the element $a3. Swept: assigning the element before the value,
// s32 vs u32 for the objId local, and dropping the objId local entirely so
// `omCurrentObj->objId` is written inline at every use. That last one is the
// ROM's real shape -- it is what produces the in-place `sll $v1,$v1,2` the ROM
// has, where a named index local keeps the unscaled value alive in a second
// register -- but it scores 23 because it rotates the whole allocation one
// further. The named-index form is the lower count, the inline form is the
// right shape; neither reaches the $v0/$a1 assignment.
void func_8019F130_ovl7(void) {
    struct UnkStruct800E1B50 *temp_t0;
    s32 temp_a1;
    u32 temp_v0;
    u16 temp_v0_2;

    temp_v0 = omCurrentObj->objId;
    temp_a1 = D_800E7CE0[temp_v0];
    temp_t0 = D_800E1B50[temp_v0];
    D_800E7CE0[temp_v0] = temp_a1 - 1;
    if (temp_a1 <= 0) {
        D_800E7CE0[omCurrentObj->objId] = 0;
    }
    if (temp_t0->unk3D != 0) {
        temp_v0_2 = D_800E77A0[omCurrentObj->objId];
        if ((temp_v0_2 < 0x4E) || (temp_v0_2 >= 0x5D)) {
            if (temp_t0->unk6C == 2) {
                func_801A3AE0_ovl7();
            } else {
                func_801A3E0C_ovl7();
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019F130_ovl7.s")
#endif
void func_8019F1EC_ovl7(void) {
    if (gKirbyHp > 0.0f) {
        D_800BE544 = -9999;
        auSetBGMVolumeSmooth(0, 0, 0x1E);
    }
}

s32 func_8019F234_ovl7(s32 track) {
    if ((D_800E7B20[track] == 0.0f) || (D_800E8E60[track] == 1) || ((D_800DE350[track]->flags & GOBJ_FLAGS_HIDDEN))) {
        return 1;
    }
    switch (D_800DD710[track]) {
        case 23:
            switch ((u32)D_800E77A0[track]) {
                case 0x4:
                case 0x5:
                case 0xC:
                case 0x10:
                case 0x11:
                case 0x13:
                case 0x17:
                case 0x18:
                case 0x3F:
                case 0x42:
                case 0x44:
                case 0x49:
                case 0x4B:
                case 0x4C:
                case 0x62:
                    return 1;
                default:
                    return 0;
            }
            break;
        case 26:
            switch ((u32)D_800E77A0[track]) {
                case 1:
                case 6:
                case 7:
                case 11:
                case 19:
                case 26:
                case 27:
                case 28:
                case 37:
                case 45:
                    return 0;
                default:
                    return 1;
            }
            return 1;
        case 24:
            return 0;
        case 25:
            return 1;
        default:
            utilPrintf("serach enemy list error. JN number:%d [enelib.cc]\n", D_800DD710[track]);
            return 1;
    }
}
