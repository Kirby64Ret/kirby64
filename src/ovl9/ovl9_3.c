#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "unk_structs/D_800E1B50.h"

extern FUNCLIST D_8021BE08_ovl9;

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_3/func_801DC8C0_ovl9.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_3/func_801DCC60_ovl9.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_3/func_801DD3CC_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_3/func_801DD598_ovl9.s")

void func_801A0D74_ovl7();
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

void func_801A0D74_ovl7();
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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_3/func_801DDDD0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_3/func_801DDF9C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_3/func_801DE280_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_3/func_801DE60C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_3/func_801DE814_ovl9.s")

void func_801A0D74_ovl7();
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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_3/func_801DF29C_ovl9.s")

void func_800B33F4(void);

void func_801DF418_ovl9(GObj *arg0) {
    func_800B33F4();
    D_800EAC20[omCurrentObj->objId] = 0.0f;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_3/func_801DF454_ovl9.s")

struct Ovl9AnimCmd2 {
    u8 filler0[8];
    s32 unk8;
};

struct Ovl9AnimObj2 {
    u8 filler0[0x24];
    struct Ovl9AnimCmd2 *unk24;
};

void func_80111550(u32);
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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_3/func_801DF900_ovl9.s")

void func_801A0D74_ovl7();
void func_8019F3B0_ovl7(void);

void func_801DFB28_ovl9(void) {
    func_801A0D74_ovl7();
    func_8019F3B0_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_3/func_801DFB50_ovl9.s")

void func_801A0D74_ovl7();
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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_3/func_801E0228_ovl9.s")

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

/* 2 diffs: ROM keeps the objId index in $v1, this form puts it in $v0 and the
   shift result in $v1.  Declaration order / extra locals do not move it. */
#ifdef MIPS_TO_C
// 5 diffs: objId<<2 is in $v0, the ROM uses $v1.
void func_801E06C0_ovl9(GObj *arg0) {
    s32 id;

    func_801A0D74_ovl7(arg0);
    id = omCurrentObj->objId;
    if (D_800E9C60[id] != 0) {
        D_800E1B50[id]->unk8C = &D_801C8520_ovl7;
        func_8019F3B0_ovl7();
        if (D_800E83E0[omCurrentObj->objId] != 0) {
            D_800EBBE0[omCurrentObj->objId] = func_8019DD78_ovl7(0xD, 1);
        }
    } else {
        D_800E1B50[id]->unk8C = &D_801C8568;
        func_8019F3B0_ovl7();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_3/func_801E06C0_ovl9.s")
#endif

void func_801ACC34_ovl7(s32, s32);

void func_801E078C_ovl9(GObj *arg0, s32 arg1, f32 arg2) {
    if ((arg1 == 0) && ((s32) arg2 == 1)) {
        func_801ACC34_ovl7(0x17, 0);
        play_sound(0xA7);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_3/func_801E07DC_ovl9.s")

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

