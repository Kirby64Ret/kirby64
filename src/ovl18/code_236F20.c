#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "ovl18_1.h"
#include "ovl18_3.h"
#include "ovl18_5.h"

extern f32 D_8022ACA4_ovl18[];
/* 65535.0f now emitted by this TU */
/* 65535.0f now emitted by this TU */
/* 65535.0f now emitted by this TU */
/* 1.5707964f now emitted by this TU */
/* 65535.0f now emitted by this TU */
extern s32 D_8022ACAC_ovl18[];
extern s32 D_8022ACB0_ovl18[];
extern s32 D_8022A4E4_ovl18;

/* K&R form is load-bearing on all three declarations below: each has a real
 * fixed-arity signature (func_800AA018(s32), func_800AA864(s32, u32),
 * func_800AFBB4(s32, GObj *)), but this file calls each with one extra
 * argument at some sites (e.g. line ~173 passes func_800AA018 2 args,
 * line ~90 passes func_800AA864 3, line ~365 passes func_800AFBB4 3) --
 * the ROM ignores the extra value. An ANSI prototype breaks compilation
 * with "too many arguments" wherever the extra arg is passed. */
void func_800AA018();
void func_800AA864();
void func_800AF27C(void);
void curObjSleepForever(void);
void func_800AFBB4();
void func_800AEFFC(s32);
void func_800B3520(void);
void func_80110150(s32 *);
s32 func_80110B00(s32 *);
s32 func_80110FD4(s32 *);
void func_80111550(s32);
s32 func_80111C88(s32 *, u32);
void func_80111ECC(s32);
void func_801A0D50_ovl7(void *);
s32 func_801A0D74_ovl7(void);
void func_801A3280_ovl7(void);
void func_801ACC34_ovl7(s32, s32);
void func_8021F4A0_ovl18(void);
void func_8021F5CC_ovl18(void);
void eneTurnCommon(s32);
void ohSleep(s32);
void play_sound(s32);
s32 random_soft_s32_range(s32);
Vector *lbvector_Rotate(Vector *, s32, f32);

void func_80224738_ovl18(void);
void func_80224ABC_ovl18(s32 arg0, s32 arg1, f32 arg2);
void func_802255C0_ovl18(s32 arg0);
void func_80225B44_ovl18(void);
void func_802252A4_ovl18(void);
void func_80224CAC_ovl18(void);
void func_80225958_ovl18(void);
void func_80224B54_ovl18(s32 arg0);
void func_80225478_ovl18(s32 arg0);
void func_802245E0_ovl18(s32 arg0);
void func_8022514C_ovl18(s32 arg0);

void func_80224580_ovl18(UNUSED s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = &func_800B72AC;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8022AB80_ovl18[60]);
}

void func_802245E0_ovl18(UNUSED s32 arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, &D_8022AB80_ovl18[61]);
}

void func_80224628_ovl18(UNUSED s32 arg0) {
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];

    func_8021F4A0_ovl18();
    sp1C->unk98 = &D_8022AA84_ovl18;
    D_800DF150[omCurrentObj->objId] = &func_80224738_ovl18;
    gEntitiesScaleZArray[omCurrentObj->objId] = 2.0f;
    gEntitiesScaleXArray[omCurrentObj->objId] = gEntitiesScaleYArray[omCurrentObj->objId] = gEntitiesScaleZArray[omCurrentObj->objId];
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801A0D50_ovl7(&func_802245E0_ovl18);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, &D_8022AB80_ovl18[61]);
}

void func_80224738_ovl18(void) {
    if (func_801A0D74_ovl7() == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 2, &D_8022AB80_ovl18[63]);
    }
    func_8021F5CC_ovl18();
}

void func_80224790_ovl18(UNUSED s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    func_800AA864(0x1003C, 2, &D_800E6690);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_80224864_ovl18(UNUSED s32 arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_802245E0_ovl18);
    }
}

void func_802248D0_ovl18(UNUSED s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    func_800AA018(0x1003B);
    D_800DF310[omCurrentObj->objId] = &func_80224ABC_ovl18;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    play_sound(0xA1);
    func_800AF27C();
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_802249D8_ovl18(UNUSED s32 arg0) {
    s32 sp28[8];

    if (D_800E9C60[omCurrentObj->objId] == 1) {
        func_80111550(omCurrentObj->objId);
        func_80111ECC(func_80111C88(&D_8022A4E4_ovl18, omCurrentObj->objId));
        if ((func_80110B00(&sp28) == 0) && (func_80110FD4(&sp28) == 0)) {
            func_80110150(&sp28);
        }
    }
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_802245E0_ovl18);
    }
}

void func_80224ABC_ovl18(UNUSED s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        D_800E9C60[omCurrentObj->objId] = arg2;
    }
}

void func_80224AF4_ovl18(UNUSED s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = &func_800B7138;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8022AB80_ovl18[65]);
}

void func_80224B54_ovl18(UNUSED s32 arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, &D_8022AB80_ovl18[66]);
}

void func_80224B9C_ovl18(UNUSED s32 arg0) {
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];

    func_8021F4A0_ovl18();
    sp1C->unk98 = &D_8022AAA8_ovl18;
    D_800DF150[omCurrentObj->objId] = &func_80224CAC_ovl18;
    gEntitiesScaleZArray[omCurrentObj->objId] = 2.0f;
    gEntitiesScaleXArray[omCurrentObj->objId] = gEntitiesScaleYArray[omCurrentObj->objId] = gEntitiesScaleZArray[omCurrentObj->objId];
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801A0D50_ovl7(&func_80224B54_ovl18);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, &D_8022AB80_ovl18[66]);
}

void func_80224CAC_ovl18(void) {
    if (func_801A0D74_ovl7() == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 2, &D_8022AB80_ovl18[68]);
    }
    func_8021F5CC_ovl18();
}

void func_80224D04_ovl18(UNUSED s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    func_800AA018(0x101DB, &D_800E6690);
    func_800AA864(0x101DA, 3);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_80224DE4_ovl18(UNUSED s32 arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_80224B54_ovl18);
    }
}

void func_80224E50_ovl18(UNUSED s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    func_800AA018(0x101DC);
    func_800AA018(0x101DD);
    func_800B3520();
    D_800E98E0[omCurrentObj->objId] = 0;
    func_800AF27C();
    func_800AA018(0x101CC);
    func_800AA018(0x101CD);
    func_800AF27C();
    func_800AA018(0x101CE);
    func_800AA018(0x101CF);
    D_800E98E0[omCurrentObj->objId] = 1;
    play_sound(0x160);
    ohSleep(5);
    D_800E98E0[omCurrentObj->objId] = 2;
    func_800AEFFC(7);
    func_800AA018(0x101D0);
    func_800AA018(0x101D1);
    ohSleep(4);
    D_800E98E0[omCurrentObj->objId] = 0;
    func_800AF27C();
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

#ifdef NON_MATCHING
/* 53/71: structure exact. The ROM keeps objId in $v0 and copies it into $a1 at
 * BOTH func_80111C88 call sites; IDO coalesces the load straight into $a1, so
 * we come out one `or $a1, $v0, $zero` short and the whole else-arm schedule
 * shifts. Inert: every prototype form for func_80111C88, switch instead
 * of if/else, parameter-as-scratch, inline vs hoisted objId. */
void func_80224FCC_ovl18(s32 arg0) {
    s32 sp28[8];

    if (D_800E98E0[omCurrentObj->objId] != 0) {
        func_80111550(omCurrentObj->objId);
        arg0 = omCurrentObj->objId;
        if (D_800E98E0[arg0] == 1) {
            func_80111ECC(func_80111C88(&D_8022A628_ovl18, arg0));
        } else {
            func_80111ECC(func_80111C88(&D_8022A5BC_ovl18, arg0));
        }
        if ((func_80110B00(&sp28) == 0) && (func_80110FD4(&sp28) == 0)) {
            func_80110150(&sp28);
        }
    }
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_80224B54_ovl18);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl18/code_236F20/func_80224FCC_ovl18.s")
#endif

void func_802250EC_ovl18(UNUSED s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = &func_800B7138;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8022AB80_ovl18[70]);
}

void func_8022514C_ovl18(UNUSED s32 arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_8022AB80_ovl18[71]);
}

void func_80225194_ovl18(UNUSED s32 arg0) {
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];

    func_8021F4A0_ovl18();
    sp1C->unk98 = &D_8022AACC_ovl18;
    D_800DF150[omCurrentObj->objId] = &func_802252A4_ovl18;
    gEntitiesScaleZArray[omCurrentObj->objId] = 1.5f;
    gEntitiesScaleXArray[omCurrentObj->objId] = gEntitiesScaleYArray[omCurrentObj->objId] = gEntitiesScaleZArray[omCurrentObj->objId];
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801A0D50_ovl7(&func_8022514C_ovl18);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_8022AB80_ovl18[71]);
}

void func_802252A4_ovl18(void) {
    if (func_801A0D74_ovl7() == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 1, &D_8022AB80_ovl18[72]);
    }
    eneTurnCommon(6);
    func_8021F5CC_ovl18();
}

void func_80225304_ovl18(UNUSED s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800AA018(0x10135);
    func_800AA018(0x10136);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 3.5f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 3.5f;
    while (1) {
        func_801ACC34_ovl7(0x45, 0);
        play_sound(0x169);
        ohSleep(random_soft_s32_range(0xA) + 0x1E);
    }
}

void func_80225410_ovl18(UNUSED s32 arg0) {

}

void func_80225418_ovl18(UNUSED s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = &func_800B7790;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8022AB80_ovl18[89]);
}

void func_80225478_ovl18(UNUSED s32 arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, &D_8022AB80_ovl18[90]);
}

void func_802254C0_ovl18(UNUSED s32 arg0) {
    func_8021F4A0_ovl18();
    func_801A3280_ovl7();
    D_800DF150[omCurrentObj->objId] = &func_802255C0_ovl18;
    gEntitiesScaleZArray[omCurrentObj->objId] = 2.0f;
    gEntitiesScaleXArray[omCurrentObj->objId] = gEntitiesScaleYArray[omCurrentObj->objId] = gEntitiesScaleZArray[omCurrentObj->objId];
    D_800E93A0[omCurrentObj->objId] = 0;
    gEntitiesAngleYArray[omCurrentObj->objId] = 0.0f;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, &D_8022AB80_ovl18[90]);
}

void func_802255C0_ovl18(UNUSED s32 arg0) {
    D_800E17D0[omCurrentObj->objId] = 1.5707964f;
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 2, &D_8022AB80_ovl18[92]);
    if (D_800E9C60[omCurrentObj->objId] != 0) {
        func_8021F5CC_ovl18();
    }
}

void func_80225650_ovl18(UNUSED s32 arg0) {
    D_800E9AA0[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9720[omCurrentObj->objId] = 0x50;
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800AFBB4(1, omCurrentObj);
    gEntitiesAngleYArray[omCurrentObj->objId] = 0.0f;
    func_80225958_ovl18();
    func_80225B44_ovl18();
    play_sound(0x168);
    curObjSleepForever();
}

/* The byte-scaled index is load-bearing: with `s32 id = objId;` and normal
 * `arr[id]` indexing IDO keeps id in $v0 and puts objId*4 in $a2, where the ROM
 * overwrites $v0 with the shift.  Pre-scaling by 4 and indexing through a u8*
 * bias is the only form that reuses the register (3/32 -> MATCH). */
void func_80225724_ovl18(struct GObj *arg0) {
    s32 id;
    s32 *p;
    s32 temp_a1;

    id = omCurrentObj->objId * 4;
    p = (s32 *) ((u8 *) D_800E9720 + id);
    temp_a1 = *p;
    if (temp_a1 == 0) {
        *(s32 *) ((u8 *) gEntityFuncListIDArray + id) = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80225478_ovl18);
    } else {
        *p = temp_a1 - 1;
    }
}

void func_802257A4_ovl18(UNUSED s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E9AA0[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] =
        D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId];
    func_800AFBB4(0, omCurrentObj, D_800E3C90);
    ohSleep(0xF);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_802258EC_ovl18(UNUSED s32 arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_80225478_ovl18);
    }
}

/* 113/125, new draft.  The control flow, the `if (t < 4) v = t; else v = 0;`
 * arms and the Vector-on-the-stack call to lbvector_Rotate are all right; the
 * residue is one global-caching decision that then rotates every temp: the ROM
 * CSEs the VALUE of omCurrentObj into $a1 and reloads it with lui/lw after each
 * call, while IDO materialises the ADDRESS &omCurrentObj once and pays a second
 * `lw` at every one of the ten uses.  Swept: both polarities of the inner
 * if/else (113 vs 115) and an explicit `struct GObj *obj = omCurrentObj;`
 * local (120).  Anything that gets IDO to the value-CSE closes most of this. */
#ifdef NON_MATCHING
void func_80225958_ovl18(void) {
    struct UnkStruct800E1B50 *sp3C;
    Vector sp2C;
    s32 r;
    s32 t;
    s32 *p;
    s32 v;

    sp3C = D_800E1B50[omCurrentObj->objId];
    r = random_soft_s32_range(4);
    t = r + 1;
    v = r;
    p = &D_800E93A0[omCurrentObj->objId];
    if (r == *p) {
        if (t < 4) {
            v = t;
        } else {
            v = 0;
        }
    }
    *p = v;
    v = random_soft_s32_range(D_8022ACAC_ovl18[D_800E93A0[omCurrentObj->objId] * 4]) +
        D_8022ACB0_ovl18[D_800E93A0[omCurrentObj->objId] * 4];
    D_800E9560[omCurrentObj->objId] = v;
    sp2C.z = 0.0f;
    sp2C.y = 0.0f;
    sp2C.x = -6.0f;
    lbvector_Rotate(&sp2C, 4, (f32) v * 0.7853982f);
    D_800E3050[omCurrentObj->objId] = sp2C.x;
    D_800E3210[omCurrentObj->objId] = sp2C.y;
    D_800E8920[omCurrentObj->objId] = 0;
    gEntitiesNextPosXArray[omCurrentObj->objId] =
        ((f32 *) D_8022ACA4_ovl18)[D_800E93A0[omCurrentObj->objId] * 4];
    gEntitiesNextPosYArray[omCurrentObj->objId] =
        ((f32 *) D_8022ACA4_ovl18)[D_800E93A0[omCurrentObj->objId] * 4 + 1];
    gEntitiesNextPosZArray[omCurrentObj->objId] = sp3C->unk8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl18/code_236F20/func_80225958_ovl18.s")
#endif

void func_80225B44_ovl18(void) {
    D_800E6A10[omCurrentObj->objId] = -1.0f;
    switch (D_800E9560[omCurrentObj->objId]) {
        case 1:
        case 0:
            func_800AA018(0x1023F, D_800E6A10);
            break;
        case 2:
            func_800AA018(0x10241, D_800E6A10);
            break;
        case 3:
        case 4:
            D_800E6A10[omCurrentObj->objId] = 1.0f;
            func_800AA018(0x10240, D_800E6A10);
    }
}
