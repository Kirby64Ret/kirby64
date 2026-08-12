#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "unk_structs/D_800E1B50.h"

extern FUNCLIST D_8021BE08_ovl9;

extern FUNCLIST D_8021BD60_ovl9;
extern FUNCLIST D_8021BD70_ovl9;
extern s32 D_801C8080_ovl7;
/* D_8021CF60_ovl9: literal, this TU owns its .rodata */
void func_800B6B8C(s32);
void func_801DCBAC_ovl9(struct GObj *);
void func_801DCA78_ovl9(struct GObj *);
void func_801A0D50_ovl7(void *);

void func_801DC8C0_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    ent->unk39 = -1;
    D_800DEF90[omCurrentObj->objId] = func_800B6B8C;
    D_800DF150[omCurrentObj->objId] = func_801DCBAC_ovl9;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C8080_ovl7;
    func_801A0D50_ovl7(func_801DCA78_ovl9);
    D_800EAC20[omCurrentObj->objId] = 0.0f;
    D_800EADE0[omCurrentObj->objId] = -0.041666668f;
    D_800EAFA0[omCurrentObj->objId] = 0.0f;
    D_800EB160[omCurrentObj->objId] = 0.0f;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800E9C60[omCurrentObj->objId] = 0x64;
    D_800E9E20[omCurrentObj->objId] = 0;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 4, &D_8021BD60_ovl9);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 9, D_8021BD70_ovl9);
    }
}

extern FUNCLIST D_8021BD70_ovl9;

void func_801DCA78_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 9, D_8021BD70_ovl9);
    }
}

void func_801DCAF8_ovl9(GObj *arg0) {
    D_800E8920[omCurrentObj->objId] = 1;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801DCB34_ovl9(GObj *arg0) {
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801DCB5C_ovl9(GObj *arg0) {
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801DCB84_ovl9(GObj *arg0) {
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

extern FUNCLIST D_8021BD94_ovl9;

void func_801DCBAC_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 9, &D_8021BD94_ovl9);
    if (0.0f != D_800EAC20[omCurrentObj->objId]) {
        D_800EAC20[omCurrentObj->objId] = (D_800E8AE0[omCurrentObj->objId] & 1) ? 0.5f : 1.0f;
    }
}

extern s32 D_801C8080_ovl7;
extern struct Sub800E1B50_Unk98 D_801CB764;
void func_800B33F4(void);
void func_800AECC0(f32);
void func_800AED20(f32);
extern s32 func_8019A900_ovl7(s32 *);
extern f32 func_8019B608_ovl7(s32);
void play_sound(s32);

void func_801DCC60_ovl9(struct GObj *arg0) {
    s32 pad0;
    s32 sp28;


    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C8080_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB764;
    func_800B33F4();
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        D_800EAC20[omCurrentObj->objId] = 0.5f;
    } else {
        D_800EAC20[omCurrentObj->objId] = 1.0f;
    }
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800EB160[omCurrentObj->objId] = 0.0f;
    if (func_8019A900_ovl7(&sp28) != 0) {
        D_800E6A10[omCurrentObj->objId] = sp28;
    } else {
        D_800E6A10[omCurrentObj->objId] = func_8019B608_ovl7(0);
    }
    if (D_800E8920[omCurrentObj->objId] == 1) {
        play_sound(0xA4);
    }
    if (D_800E8920[omCurrentObj->objId] == 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 4;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
    }
}

void func_8019F3F0_ovl7(void);
void func_801DF454_ovl9(GObj *);

void func_801DCE44_ovl9(GObj *arg0) {
    func_8019F3F0_ovl7();
    func_801DF454_ovl9(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_3/func_801DCE6C_ovl9.s")

void func_8019F3F0_ovl7(void);
void func_801DF454_ovl9(GObj *);

void func_801DD27C_ovl9(GObj *arg0) {
    func_8019F3F0_ovl7();
    func_801DF454_ovl9(arg0);
}

extern s32 D_801CB788;
void func_800B33F4(void);
void func_800AECC0(f32);
void func_800AED20(f32);
void ohSleep(u8);

void func_801DD2A4_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB788;
    func_800B33F4();
    D_800E8920[omCurrentObj->objId] = 1;
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800EB160[omCurrentObj->objId] = 0.0f;
    while (D_800E8920[omCurrentObj->objId] == 1) {
        ohSleep(1);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 4;
}

extern s32 D_801C8080_ovl7;
void func_801DCA78_ovl9(struct GObj *);
s32 func_801A0D74_ovl7();
void func_8019F3F0_ovl7(void);
void func_801DF454_ovl9(struct GObj *);
f32 func_800F8824(Vector *, f32);
void play_sound(s32);
extern struct GObjProcess *gEntityGObjProcessArray[];

void func_801DD3CC_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];
    Vector *v;
    f32 t;

    func_801A0D74_ovl7();
    v = (Vector *) tmp->unk78;
    if (v != NULL) {
        if (D_800E8920[omCurrentObj->objId] == 1) {
            t = func_800F8824(v, D_800E17D0[omCurrentObj->objId]);
            if (t != 0.0f) {
                if (0.0f < t) {
                    D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
                }
                gEntitiesPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId] + 10.0f;
                if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
                    D_800EAC20[omCurrentObj->objId] = 0.5f;
                } else {
                    D_800EAC20[omCurrentObj->objId] = 1.0f;
                }
                play_sound(0xA4);
                gEntityFuncListIDArray[omCurrentObj->objId] = 3;
                assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DCA78_ovl9);
            }
        }
    }
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C8080_ovl7;
    func_8019F3F0_ovl7();
    func_801DF454_ovl9(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_3/func_801DD598_ovl9.s")

s32 func_801A0D74_ovl7();
void func_8019F3F0_ovl7(void);
void func_801DF454_ovl9(GObj *);
void func_801DDD44_ovl9(struct GObj *);

void func_801DD818_ovl9(GObj *arg0) {
    if (D_800E9AA0[omCurrentObj->objId].as_s32 == 0) {
        if (D_800E3210[omCurrentObj->objId] < 0.0f) {
            D_800E98E0[omCurrentObj->objId] = D_800E98E0[omCurrentObj->objId] + 1;
        }
    } else {
        D_800E98E0[omCurrentObj->objId] = 0;
    }
    func_801A0D74_ovl7(arg0);
    func_8019F3F0_ovl7();
    func_801DDD44_ovl9(arg0);
    func_801DF454_ovl9(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_3/func_801DD8BC_ovl9.s")

s32 func_801A0D74_ovl7();
void func_8019F3F0_ovl7(void);
void func_801DF454_ovl9(GObj *);

void func_801DDD14_ovl9(GObj *arg0) {
    func_801A0D74_ovl7(arg0);
    func_8019F3F0_ovl7();
    func_801DF454_ovl9(arg0);
}

extern f32 D_8021BDC8_ovl9[];

void func_801DDD44_ovl9(GObj *arg0) {
    if (D_800E9C60[omCurrentObj->objId] < 6) {
        D_800EB160[omCurrentObj->objId] = D_8021BDC8_ovl9[D_800E9C60[omCurrentObj->objId]];
        D_800E9C60[omCurrentObj->objId]++;
        return;
    }
    D_800E9C60[omCurrentObj->objId] = 100;
    D_800EB160[omCurrentObj->objId] = 0.0f;
}

extern struct Sub800E1B50_Unk98 D_801CB71C;
extern f32 D_8021BDB8_ovl9[];
void func_800AECC0(f32);
void func_800AED20(f32);

void func_801DDDD0_ovl9(struct GObj *arg0) {
    D_800E76C0[omCurrentObj->objId] = 0xFF;
    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB71C;
    func_800B33F4();
    D_800E8920[omCurrentObj->objId] = 1;
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800EB160[omCurrentObj->objId] = 0.0f;
    while (D_800E8920[omCurrentObj->objId] == 1) {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * (D_8021BDB8_ovl9[D_800E7880[omCurrentObj->objId]] * D_800EAC20[omCurrentObj->objId]);
        ohSleep(1);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 4;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_3/func_801DDF9C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_3/func_801DE280_ovl9.s")

/* 4 diffs: the ROM materialises %hi(D_800E8AE0) before %hi(D_800EAC20);
   IDO emits them the other way round. Swept: ternary, if/else polarity,
   declaration order, `& 1` vs `!= 0`. */
#ifdef NON_MATCHING
s32 func_801A0D74_ovl7();
f32 func_800F8824(Vector *, f32);
void func_8019F3F0_ovl7(void);
void func_801DF454_ovl9(GObj *);
void func_801DCA78_ovl9(struct GObj *);
extern struct GObjProcess *gEntityGObjProcessArray[];

void func_801DE60C_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];
    f32 t;
    f32 v;

    func_801A0D74_ovl7();
    if (D_800E8920[omCurrentObj->objId] == 1) {
        t = func_800F8824((Vector *) tmp->unk78, D_800E17D0[omCurrentObj->objId]);
        if (t != 0.0f) {
            if (0.0f < t) {
                D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
            }
            if (D_800E8920[omCurrentObj->objId] == 0) {
                D_800EAC20[omCurrentObj->objId] = 0.0f;
            } else {
                if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
                    v = 0.5f;
                } else {
                    v = 1.0f;
                }
                D_800EAC20[omCurrentObj->objId] = v;
            }
            gEntitiesPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId] + 10.0f;
            if (D_800E8920[omCurrentObj->objId] == 1) {
                play_sound(0xA4);
            }
            if (D_800E8920[omCurrentObj->objId] == 0) {
                gEntityFuncListIDArray[omCurrentObj->objId] = 4;
            } else {
                gEntityFuncListIDArray[omCurrentObj->objId] = 3;
            }
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DCA78_ovl9);
        }
    }
    func_8019F3F0_ovl7();
    func_801DF454_ovl9(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_3/func_801DE60C_ovl9.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_3/func_801DE814_ovl9.s")

s32 func_801A0D74_ovl7();
void func_8019F3F0_ovl7(void);
void func_801DF454_ovl9(GObj *);

void func_801DEBC4_ovl9(GObj *arg0) {
    func_801A0D74_ovl7(arg0);
    func_8019F3F0_ovl7();
    func_801DF454_ovl9(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_3/func_801DEBF4_ovl9.s")

void func_8019F3F0_ovl7(void);
void func_801DF454_ovl9(GObj *);

void func_801DF154_ovl9(GObj *arg0) {
    if (D_800E3750[omCurrentObj->objId] != 0.0f) {
        func_8019F3F0_ovl7();
    }
    func_801DF454_ovl9(arg0);
}

f32 func_800F8824(Vector *, f32);

f32 func_801DF1B0_ovl9(void) {
    UnkStruct800E1B50 *p;
    Vector *v;
    f32 temp;

    p = D_800E1B50[omCurrentObj->objId];
    temp = 0.0f;
    if (D_800E8920[omCurrentObj->objId] == 1) {
        v = (Vector *) p->unk78;
        if (v != NULL) {
            temp = func_800F8824(v, D_800E17D0[omCurrentObj->objId]);
        }
    }
    return -temp;
}

extern f32 D_8021BDB8_ovl9[];

void func_801DF220_ovl9(GObj *arg0) {
    D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * (D_8021BDB8_ovl9[D_800E7880[omCurrentObj->objId]] * D_800EAC20[omCurrentObj->objId]);
}

extern struct GObjProcess *gEntityGObjProcessArray[];
void func_800FB914(s32);

void func_801DF29C_ovl9(struct GObj *arg0) {
    if (gEntitiesPosYArray[omCurrentObj->objId] == gEntitiesNextPosYArray[omCurrentObj->objId]) {
        func_800FB914(1);
        play_sound(0x268);
        D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
        gEntityFuncListIDArray[omCurrentObj->objId] = 6;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DCA78_ovl9);
    } else if (gEntitiesNextPosYArray[omCurrentObj->objId] < gEntitiesPosYArray[omCurrentObj->objId]) {
        D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
        gEntityFuncListIDArray[omCurrentObj->objId] = 6;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DCA78_ovl9);
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 6;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DCA78_ovl9);
        D_800EAC20[omCurrentObj->objId] = 0.0f;
    }
}

void func_800B33F4(void);

void func_801DF418_ovl9(GObj *arg0) {
    func_800B33F4();
    D_800EAC20[omCurrentObj->objId] = 0.0f;
}

/* 15 diffs, all one 3-way FP register permutation: the ROM binds 0.0f -> $f12,
   D_8021CF94_ovl9 -> $f14 and the loop value -> $f2, IDO binds them
   $f14 / $f2 / $f12. Structure, branch shapes and every other instruction are
   exact. Swept: the extern referenced directly instead of a local (26), an
   explicit `f32 zero` local (68), the local hoisted above the `if` (69),
   both operand orders of the `!=` and of each loop test, and an explicit
   local for the loop value. */
#ifdef NON_MATCHING
extern f32 D_8021CF94_ovl9;

void func_801DF454_ovl9(struct GObj *arg0) {
    f32 k;

    if (0.0f != D_800E64D0[omCurrentObj->objId]) {
        k = D_8021CF94_ovl9;
        D_800EAFA0[omCurrentObj->objId] += D_800E64D0[omCurrentObj->objId] * D_800EADE0[omCurrentObj->objId];
        while (k <= D_800EAFA0[omCurrentObj->objId]) {
            D_800EAFA0[omCurrentObj->objId] -= k;
        }
        while (D_800EAFA0[omCurrentObj->objId] < 0.0f) {
            D_800EAFA0[omCurrentObj->objId] += k;
        }
    }
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.z = D_800EAFA0[omCurrentObj->objId];
    gEntitiesAngleXArray[omCurrentObj->objId] = D_800EB160[omCurrentObj->objId];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_3/func_801DF454_ovl9.s")
#endif
struct Ovl9AnimCmd2 {
    u8 filler0[8];
    s32 unk8;
};

struct Ovl9AnimObj2 {
    u8 filler0[0x24];
    struct Ovl9AnimCmd2 *unk24;
};

void func_80111550(s32);
struct Ovl9AnimObj2 *func_80111C88(s32 *, u32);
void func_80111ECC(struct Ovl9AnimObj2 *);
s32 func_80110150(void *);

s32 func_801DF588_ovl9(s32 arg0, void *arg1) {
    struct Sub800E1B50_Unk88 *sp0;
    struct UnkStruct800E1B50 *temp;
    struct Ovl9AnimObj2 *temp_v0;

    temp = D_800E1B50[omCurrentObj->objId];
    sp0 = temp->unk88;
    if (sp0 == NULL) {
        return 0;
    }
    func_80111550(omCurrentObj->objId);
    temp_v0 = func_80111C88(temp->unk8C, omCurrentObj->objId);
    if (temp_v0 != NULL) {
        if (arg0 != 0) {
            temp_v0->unk24->unk8 = arg0;
        }
        func_80111ECC(temp_v0);
    }
    return func_80110150(arg1);
}

extern FUNCLIST D_8021BDE0_ovl9;
extern FUNCLIST D_8021BDE8_ovl9;
void func_801A6C10_ovl7(void);

void func_801DF628_ovl9(void) {
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = -1;
        func_801A6C10_ovl7();
    }
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_8021BDE0_ovl9);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 8, &D_8021BDE8_ovl9);
    }
}

extern FUNCLIST D_8021BDE8_ovl9;

void func_801DF6F8_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 8, D_8021BDE8_ovl9);
    }
}

void func_800B6A2C(s32);
void func_801DF8B8_ovl9(struct GObj *);
void func_801DF6F8_ovl9(struct GObj *);
void func_801A0D50_ovl7(void *);

void func_801DF778_ovl9(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6A2C;
    D_800DF150[omCurrentObj->objId] = &func_801DF8B8_ovl9;
    func_801A0D50_ovl7(&func_801DF6F8_ovl9);
    D_800E98E0[omCurrentObj->objId] = 5;
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 5;
    }
}

void func_8019BB58_ovl7(void);
extern void func_800B6B8C(s32);
void func_800A9760(s32);
void func_800AA154(s32);
void func_8019D958_ovl7(u16);

void func_801DF838_ovl9(GObj *arg0) {
    func_8019BB58_ovl7();
    D_800DEF90[omCurrentObj->objId] = func_800B6B8C;
    D_800DF150[omCurrentObj->objId] = NULL;
    func_800A9760(0x100DC);
    func_800AA154(0x1061D);
    func_8019D958_ovl7((u16) omCurrentObj->objId);
}

void func_801DF8B8_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_8021BE08_ovl9);
}

extern s32 D_801C8568;
extern s32 D_801CB980;
extern struct Sub800E1B50_Unk94 D_801C35C4_ovl7;
f32 func_8019DA50_ovl7(void);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800B33F4(void);
void func_800AA018(s32);
void ohSleep(u8);

void func_801DF900_ovl9(struct GObj *arg0) {
    f32 v;

    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C8568;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB980;
    D_800E1B50[omCurrentObj->objId]->unk94 = &D_801C35C4_ovl7;
    D_800E8920[omCurrentObj->objId] = 1;
    func_800AECC0(0);
    func_800AED20(0);
    func_800B33F4();
    func_800AA018(0x101AC);
    while (gEntityFuncListIDArray[omCurrentObj->objId] == 0) {
        if (ABSF((gEntitiesNextPosYArray[0] + 20.0f) - gEntitiesNextPosYArray[omCurrentObj->objId]) < 160.0f) {
            v = ABSF(func_8019DA50_ovl7());
            if (v < 320.0f) {
                gEntityFuncListIDArray[omCurrentObj->objId] = 3;
            }
        }
        ohSleep(1);
    }
}

s32 func_801A0D74_ovl7();
void func_8019F3B0_ovl7(void);

void func_801DFB28_ovl9(void) {
    func_801A0D74_ovl7();
    func_8019F3B0_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_3/func_801DFB50_ovl9.s")

s32 func_801A0D74_ovl7();
void func_8019F3B0_ovl7(void);
s32 func_8019DD78_ovl7(s32, s32);

void func_801DFE00_ovl9(void) {
    func_801A0D74_ovl7();
    func_8019F3B0_ovl7();
    if (D_800E83E0[omCurrentObj->objId] != 0) {
        D_800EBBE0[omCurrentObj->objId] = func_8019DD78_ovl7(0xD, 1);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_3/func_801DFE74_ovl9.s")

extern s32 D_801C8520_ovl7;
extern s32 D_801CB980;
extern struct Sub800E1B50_Unk94 D_801C35C4_ovl7;
extern void func_800AECC0(f32);
extern void func_800AED20(f32);
extern void func_800B33F4(void);
extern void func_800AA018(s32);
extern void ohSleep(u8);
extern void func_800AF27C(void);
void func_801E078C_ovl9(GObj *, s32, f32);

void func_801E00E0_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C8520_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB980;
    D_800E1B50[omCurrentObj->objId]->unk94 = &D_801C35C4_ovl7;
    *(u32 *) &D_800E8920[omCurrentObj->objId] = 1;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    func_800AA018(0x101A9);
    D_800DF310[omCurrentObj->objId] = func_801E078C_ovl9;
    func_800AF27C();
    D_800E9AA0[omCurrentObj->objId].as_s32 = 2;
    gEntityFuncListIDArray[omCurrentObj->objId] = 4;
}

extern struct Sub800E1B50_Unk98 D_801CB9A4;
/* D_8021CF98_ovl9: literal, this TU owns its .rodata */

void func_801E0228_ovl9(s32 arg0) {

    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C8520_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB9A4;
    D_800E1B50[omCurrentObj->objId]->unk94 = &D_801C35C4_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800B33F4();
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.65f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    func_800AA018(0x101AE);
    func_800AF27C();
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    while (gEntityFuncListIDArray[omCurrentObj->objId] == 5) {
        ohSleep(1);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 6;
}


void func_801E03E4_ovl9(GObj *arg0) {
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

extern s32 func_8019A900_ovl7(s32 *);
extern f32 func_8019B608_ovl7(s32);

void func_801E040C_ovl9(struct GObj *arg0) {
    s32 pad0;
    s32 sp28;
    s32 pad1;

    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB980;
    D_800E1B50[omCurrentObj->objId]->unk94 = &D_801C35C4_ovl7;
    D_800E8920[omCurrentObj->objId] = 1;
    if (func_8019A900_ovl7(&sp28) != 0) {
        D_800E6A10[omCurrentObj->objId] = sp28;
    } else {
        D_800E6A10[omCurrentObj->objId] = func_8019B608_ovl7(0);
    }
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    D_800E9C60[omCurrentObj->objId] = 0;
    func_800AA018(0x101AC);
    ohSleep(2);
    D_800E9C60[omCurrentObj->objId] = 1;
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801E058C_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB980;
    D_800E1B50[omCurrentObj->objId]->unk94 = &D_801C35C4_ovl7;
    D_800E8920[omCurrentObj->objId] = 1;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    D_800E9C60[omCurrentObj->objId] = 1;
    func_800AA018(0x101AE);
    ohSleep(0xA);
    D_800E9C60[omCurrentObj->objId] = 0;
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = D_800E9AA0[omCurrentObj->objId].as_s32;
}

extern s32 D_801C8520_ovl7;
extern s32 D_801C8568;

/* The byte-bias index and the `s32` return type on func_801A0D74_ovl7 are both
   load-bearing: the ROM shifts objId in place in $v1, which needs the scaled
   value to BE the variable and $v0 reserved by the callee's return value. */
void func_801E06C0_ovl9(GObj *arg0) {
    s32 id;

    func_801A0D74_ovl7(arg0);
    id = omCurrentObj->objId * 4;
    if (*(s32 *) ((u8 *) D_800E9C60 + id) != 0) {
        (*(struct UnkStruct800E1B50 **) ((u8 *) D_800E1B50 + id))->unk8C = &D_801C8520_ovl7;
        func_8019F3B0_ovl7();
        if (D_800E83E0[omCurrentObj->objId] != 0) {
            D_800EBBE0[omCurrentObj->objId] = func_8019DD78_ovl7(0xD, 1);
        }
    } else {
        (*(struct UnkStruct800E1B50 **) ((u8 *) D_800E1B50 + id))->unk8C = &D_801C8568;
        func_8019F3B0_ovl7();
    }
}
void func_801ACC34_ovl7(s32, s32);

void func_801E078C_ovl9(GObj *arg0, s32 arg1, f32 arg2) {
    if ((arg1 == 0) && ((s32) arg2 == 1)) {
        func_801ACC34_ovl7(0x17, 0);
        play_sound(0xA7);
    }
}

struct Ovl9AnimHdrSub3 {
    u8 filler0[4];
    s32 unk4;
};

struct Ovl9AnimHdr3 {
    u8 filler0[8];
    struct Ovl9AnimHdrSub3 *unk8;
};

struct Ovl9AnimInfo3 {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 filler4[8];
    s32 unkC;
    u8 filler10[0x10];
};

s32 func_80110B00(struct Ovl9AnimInfo3 *);

s32 func_801E07DC_ovl9(s32 arg0) {
    struct Ovl9AnimInfo3 sp30;
    struct UnkStruct800E1B50 *ent;
    struct Ovl9AnimObj2 *anim;
    struct Ovl9AnimHdrSub3 *hdr;

    ent = D_800E1B50[omCurrentObj->objId];
    if (ent == NULL) {
        return 0;
    }
    if (ent->unk8C == NULL) {
        return 0;
    }
    func_80111550(omCurrentObj->objId);
    anim = func_80111C88(ent->unk8C, omCurrentObj->objId);
    hdr = ((struct Ovl9AnimHdr3 *) ent->unk8C)->unk8;
    if ((hdr->unk4 == 0) && (arg0 != 0)) {
        anim->unk24->unk8 = arg0;
    }
    func_80111ECC(anim);
    if (func_80110B00(&sp30) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp30.unk2;
        ent->unk43 = sp30.unk3;
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
        ent->unk43 = 0;
    }
    return D_800E83E0[omCurrentObj->objId];
}

extern void func_800B6FD8(s32);
extern void func_801A0D50_ovl7(void *);
extern void func_801A3E80_ovl7(struct GObj *);
extern s32 D_801C7F84_ovl7;
extern s32 D_801CB494_ovl7;
void func_801E0A50_ovl9(struct GObj *);
void func_801E0908_ovl9(struct GObj *);

void func_801E0908_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = func_800B6FD8;
    D_800DF150[omCurrentObj->objId] = func_801E0A50_ovl9;
    func_801A0D50_ovl7(func_801E0908_ovl9);
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    tmp->unk42 = 0;
    *(s8 *) &tmp->unk38 = -1;
    if (D_800E8AE0[omCurrentObj->objId] == 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = -1;
        func_801A3E80_ovl7(arg0);
    }
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C7F84_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB494_ovl7;
    func_800AA018(0x10039);
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_3/func_801E0A50_ovl9.s")

