#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "unk_structs/D_800E1B50.h"
#include "buffers.h"

extern void func_8019BB58_ovl7(void);
extern FUNCLIST D_8021CA88_ovl9;
void func_8020B498_ovl9(struct GObj *);

extern void func_800AA864(s32, s32);
extern s32 func_80110150(void *);
extern void func_80169430_ovl3(s32, u8, u8, s32);
extern s32 D_801CC7D8;
extern s32 D_801C9544;
extern s32 D_801CA3C4;

struct Ovl9AnimInfo {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 filler4[8];
    s32 unkC;
    u8 filler10[0x10];
};
struct Ovl9AnimCmd {
    u8 filler0[8];
    void *unk8;
    u8 fillerC[0x24];
    void *unk30;
};
struct Ovl9AnimObj {
    u8 filler0[0x24];
    struct Ovl9AnimCmd *unk24;
};

extern void func_800B67A8(struct GObj *);
extern FUNCLIST D_8021C994_ovl9;
extern FUNCLIST D_8021C9A8_ovl9;
extern FUNCLIST D_8021CAB8_ovl9;
s32 func_8020BA70_ovl9(struct GObj *);

extern void func_8019B2C0_ovl7(s32);
extern FUNCLIST D_8021CA5C_ovl9;

extern void func_8019B424_ovl7(struct GObj *);
extern s32 func_8019A7E8_ovl7(f32);
/* D_8021DB88_ovl9: literal, this TU owns its .rodata */
void func_8020A510_ovl9(struct GObj *);

extern s32 func_8019A9AC_ovl7(f32, f32);
extern void func_801ACCA0_ovl7(s32, s32, f32, f32);
void func_8020B420_ovl9(struct GObj *);

extern void func_8019F3B0_ovl7(void);
extern void eneTurnCommon(s32);
/* pointer parameter is load-bearing: it forces the `or $a0, $v0, $zero` move */
extern void func_80111550(void *);
extern void *func_80111C88(s32 *, u32);
extern void func_80111ECC(void *);
extern void func_801A0C70_ovl7(void);
extern s32 D_801C9208;
extern FUNCLIST D_8021C96C_ovl9;
void func_8020998C_ovl9(struct GObj *);
void func_8020EA94_ovl9(struct GObj *);

extern void func_800AF27C(void);

/* D_8021DB78_ovl9: literal, this TU owns its .rodata */

extern s32 func_8019DB7C_ovl7(u8, s32, s32);
extern void func_8019DB58_ovl7(s32, s32);
void func_8020A768_ovl9(struct GObj *);
extern FUNCLIST D_8021CA10_ovl9;

extern void func_8019F3F0_ovl7(void);
extern void func_800AF314(void);
void func_8020E178_ovl9(struct GObj *);
void func_8020E0F4_ovl9(struct GObj *);

extern s32 func_801AE7E0_ovl7(s32);
extern void func_800AF408(void);
extern u32 D_8012BCA0;
void func_8020EAD4_ovl9(struct GObj *);

extern s32 D_801CC724;
extern s32 D_801CCA18;
/* D_8021DB70_ovl9: literal, this TU owns its .rodata */
/* D_8021DC2C_ovl9: literal, this TU owns its .rodata */
/* D_8021DC30_ovl9: literal, this TU owns its .rodata */
/* D_8021DC34_ovl9: literal, this TU owns its .rodata */
/* D_8021DC38_ovl9: literal, this TU owns its .rodata */
extern s32 D_801CC7FC;
extern s32 D_801CC820;
extern s32 D_801CC844;
extern s32 D_801CC868;
extern s32 D_801CC9F4;
/* D_8021DB94_ovl9: literal, this TU owns its .rodata */
/* D_8021DB98_ovl9: literal, this TU owns its .rodata */
/* D_8021DB9C_ovl9: literal, this TU owns its .rodata */
/* D_8021DBA0_ovl9: literal, this TU owns its .rodata */
/* D_8021DBA4_ovl9: literal, this TU owns its .rodata */
/* D_8021DBA8_ovl9: literal, this TU owns its .rodata */
extern s32 D_801CC7B4;
extern s32 D_801CC700;
extern s32 D_801CC748;
/* D_8021DB80_ovl9: literal, this TU owns its .rodata */
/* D_8021DB8C_ovl9: literal, this TU owns its .rodata */
/* D_8021DB90_ovl9: literal, this TU owns its .rodata */

extern FUNCLIST D_8021C9C0_ovl9;
extern FUNCLIST D_8021C9DC_ovl9;
void func_8020C0FC_ovl9(s32, s32, f32);

extern FUNCLIST D_8021C9FC_ovl9;
/* D_8021DC1C_ovl9: literal, this TU owns its .rodata */
/* D_8021DC20_ovl9: literal, this TU owns its .rodata */
/* D_8021DC24_ovl9: literal, this TU owns its .rodata */
/* D_8021DC28_ovl9: literal, this TU owns its .rodata */
/* D_8021DC3C_ovl9: literal, this TU owns its .rodata */
/* D_8021DC40_ovl9: literal, this TU owns its .rodata */
/* D_8021DC44_ovl9: literal, this TU owns its .rodata */
/* D_8021DC48_ovl9: literal, this TU owns its .rodata */
/* D_8021DC4C_ovl9: literal, this TU owns its .rodata */
/* D_8021DC50_ovl9: literal, this TU owns its .rodata */
/* D_8021DC54_ovl9: literal, this TU owns its .rodata */
/* D_8021DC58_ovl9: literal, this TU owns its .rodata */
/* D_8021DC5C_ovl9: literal, this TU owns its .rodata */
/* D_8021DC60_ovl9: literal, this TU owns its .rodata */
/* D_8021DC64_ovl9: literal, this TU owns its .rodata */
extern s32 D_801CACF0_ovl7;
extern s32 D_801CAD04_ovl7;
extern void func_801A2558_ovl7(s32 *);
void func_8020F008_ovl9(struct GObj *);
void func_8020F078_ovl9(void);
extern FUNCLIST D_8021CAA0_ovl9;
extern struct EnemyEventTable D_801CC940;
/* D_8021DBDC_ovl9: literal, this TU owns its .rodata */
/* D_8021DBE0_ovl9: literal, this TU owns its .rodata */
/* D_8021DBE4_ovl9: literal, this TU owns its .rodata */
/* D_8021DBE8_ovl9: literal, this TU owns its .rodata */
/* D_8021DBEC_ovl9: literal, this TU owns its .rodata */
/* D_8021DBF0_ovl9: literal, this TU owns its .rodata */
extern void func_800AFBB4(s32, GObj *);
extern struct EnemyEventTable D_801CC8F8;
extern struct EnemyEventTable D_801CC91C;
/* D_8021DBC8_ovl9: literal, this TU owns its .rodata */
/* D_8021DBCC_ovl9: literal, this TU owns its .rodata */
/* D_8021DBD0_ovl9: literal, this TU owns its .rodata */
/* D_8021DBD4_ovl9: literal, this TU owns its .rodata */
/* D_8021DBD8_ovl9: literal, this TU owns its .rodata */
extern void func_800FB914(s32);
void func_8020D594_ovl9(struct GObj *);
void func_8020D618_ovl9(struct GObj *);
extern struct EnemyKindDesc D_801C44B0_ovl7;
extern struct EnemyKindDesc D_801C44F4;
extern s32 D_801CA9E4_ovl7;
extern s32 D_801CACB4_ovl7;
extern struct EnemyEventTable D_801CC88C;
extern struct EnemyEventTable D_801CC8B0;
extern struct EnemyEventTable D_801CC8D4;
/* D_8021DBB4_ovl9: literal, this TU owns its .rodata */
/* D_8021DBB8_ovl9: literal, this TU owns its .rodata */
/* D_8021DBBC_ovl9: literal, this TU owns its .rodata */
/* D_8021DBC0_ovl9: literal, this TU owns its .rodata */
/* D_8021DBC4_ovl9: literal, this TU owns its .rodata */
extern void func_800B658C(struct GObj *);
extern void func_800A9F98(s32, f32);
extern void func_8019B164_ovl7(void);
extern void func_800AF3A0(void);
void func_8020CA4C_ovl9(struct GObj *);
void func_8020CAD8_ovl9(void);
extern FUNCLIST D_8021CA24_ovl9;
extern FUNCLIST D_8021CA3C_ovl9;
extern void func_8019F410_ovl7(struct DObj *);
extern s32 func_800A9760(s32);
extern void func_801A2ADC_ovl7(u32);
extern struct EnemyKindDesc D_801C446C;
extern struct EnemyKindDesc D_801C4428_ovl7;
extern s32 D_801C92E0;
extern struct EnemyEventTable D_801CB470_ovl7;
extern void func_800A2300(struct GObj *);
extern void func_800FD570(s32, s32, f32, f32, f32);
extern void func_801A3E80_ovl7(struct GObj *);
/* D_8021DBAC_ovl9: literal, this TU owns its .rodata */
/* D_8021DBB0_ovl9: literal, this TU owns its .rodata */
void func_8020C0A4_ovl9(void);
void func_8020C2EC_ovl9(struct GObj *);
void func_8020C378_ovl9(void);
void func_8020C918_ovl9(void);
extern s32 D_801CC790;
extern s32 D_801CC76C;
/* D_8021DB7C_ovl9: literal, this TU owns its .rodata */
/* D_8021DB84_ovl9: literal */
extern s32 random_soft_s32_range(s32);
void func_8020B350_ovl9(s32, s32, f32);
void func_8020B19C_ovl9(struct GObj *);
void func_8020B218_ovl9(void);
void func_8020BC24_ovl9(struct GObj *);
void func_8020BC98_ovl9(struct GObj *);
extern void func_8019BC34_ovl7(f32);
/* D_8021DB58_ovl9: literal, this TU owns its .rodata */
/* D_8021DB5C_ovl9: literal, this TU owns its .rodata */
/* D_8021DB60_ovl9: literal, this TU owns its .rodata */
/* D_8021DB64_ovl9: literal, this TU owns its .rodata */
/* D_8021DB68_ovl9: literal, this TU owns its .rodata */
/* D_8021DB6C_ovl9: literal, this TU owns its .rodata */
/* D_8021DB74_ovl9: literal, this TU owns its .rodata */
void func_8020A598_ovl9(struct GObj *);
void func_8020A510_ovl9(struct GObj *);
void func_8020A934_ovl9(struct GObj *);
void func_8020A9B8_ovl9(void);
extern void func_8019AF00_ovl7(f32);
extern s32 func_8019ADB4_ovl7(f32, s32 *);
/* D_8021DB54_ovl9: literal, this TU owns its .rodata */
extern FUNCLIST D_8021C950_ovl9;
extern void func_801A6C10_ovl7(struct GObj *);
extern void func_800AECC0(f32);
extern void func_800AED20(f32);
extern s32 D_801CC6B8;
extern s32 D_801CC6DC;
/* D_8021DB4C_ovl9: literal, this TU owns its .rodata */
/* D_8021DB50_ovl9: literal, this TU owns its .rodata */
void func_80209918_ovl9(struct GObj *);
void func_8020989C_ovl9(struct GObj *);

void func_80209720_ovl9(struct GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800EA520[omCurrentObj->objId] = 0;
    D_800EA6E0[omCurrentObj->objId] = 0.0;
    D_800EB160[omCurrentObj->objId] = 0.0f;
    D_800EB320[omCurrentObj->objId] = 0.0f;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_8021C950_ovl9);
}

void func_802097D0_ovl9(struct GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_80209918_ovl9;
    func_801A0D50_ovl7(func_8020989C_ovl9);
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        func_801A6C10_ovl7(arg0);
    }
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 4;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
    }
    func_8020989C_ovl9(arg0);
}

extern FUNCLIST D_8021C958_ovl9;

void func_8020989C_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, D_8021C958_ovl9);
    }
}

void func_80209918_ovl9(struct GObj *arg0) {
    s32 temp = func_801A0D74_ovl7();

    eneTurnCommon(6);
    if (temp == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 5, &D_8021C96C_ovl9);
    }
    func_8020998C_ovl9(arg0);
    func_8019F3B0_ovl7();
}

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
void func_8020998C_ovl9(GObj *arg0) {
    f32 *var_a1;
    f32 temp_f2;
    f32 var_f0;
    f32 var_f12;
    f32 var_f14;
    u32 temp_v1;

    temp_v1 = omCurrentObj->objId;
    var_a1 = &D_800EA6E0[temp_v1];
    temp_f2 = D_800EB320[temp_v1];
    var_f0 = *var_a1;
    if (var_f0 < temp_f2) {
        var_f14 = var_f0 - temp_f2;
        var_f12 = -var_f14;
    } else {
        var_f14 = var_f0 - temp_f2;
        var_f12 = var_f14;
    }
    if (var_f12 < 3.1415927f) {
        if (var_f14 > 0.13962634f) {
            *var_a1 = var_f0 - 0.13962634f;
            var_a1 = &D_800EA6E0[omCurrentObj->objId];
            goto block_28;
        }
        if (var_f14 > 0.06981317f) {
            *var_a1 = var_f0 - 0.06981317f;
            var_a1 = &D_800EA6E0[omCurrentObj->objId];
            goto block_28;
        }
        if (var_f14 >= 0.017453292f) {
            *var_a1 = var_f0 - 0.017453292f;
            var_a1 = &D_800EA6E0[omCurrentObj->objId];
            goto block_28;
        }
        if (var_f14 < -0.13962634f) {
            *var_a1 = var_f0 + 0.13962634f;
            var_a1 = &D_800EA6E0[omCurrentObj->objId];
            goto block_28;
        }
        if (var_f14 < -0.06981317f) {
            *var_a1 = var_f0 + 0.06981317f;
            var_a1 = &D_800EA6E0[omCurrentObj->objId];
            goto block_28;
        }
        if (var_f14 <= -0.017453292f) {
            *var_a1 = var_f0 + 0.017453292f;
            var_a1 = &D_800EA6E0[omCurrentObj->objId];
            goto block_28;
        }
    } else {
        if (var_f14 > 0.13962634f) {
            *var_a1 = var_f0 + 0.13962634f;
            var_a1 = &D_800EA6E0[omCurrentObj->objId];
            goto block_28;
        }
        if (var_f14 > 0.06981317f) {
            *var_a1 = var_f0 + 0.06981317f;
            var_a1 = &D_800EA6E0[omCurrentObj->objId];
            goto block_28;
        }
        if (var_f14 >= 0.017453292f) {
            *var_a1 = var_f0 + 0.017453292f;
            var_a1 = &D_800EA6E0[omCurrentObj->objId];
            goto block_28;
        }
        if (var_f14 < -0.13962634f) {
            *var_a1 = var_f0 - 0.13962634f;
            var_a1 = &D_800EA6E0[omCurrentObj->objId];
            goto block_28;
        }
        if (var_f14 < -0.06981317f) {
            *var_a1 = var_f0 - 0.06981317f;
            var_a1 = &D_800EA6E0[omCurrentObj->objId];
            goto block_28;
        }
        if (var_f14 <= -0.017453292f) {
            *var_a1 = var_f0 - 0.017453292f;
            var_a1 = &D_800EA6E0[omCurrentObj->objId];
block_28:
            var_f0 = *var_a1;
        }
    }
    if (var_f0 > 6.2831855f) {
        do {
            *var_a1 = var_f0 - 6.2831855f;
            var_a1 = &D_800EA6E0[omCurrentObj->objId];
            var_f0 = *var_a1;
        } while (var_f0 > 6.2831855f);
    }
    if (var_f0 < 0.0f) {
        do {
            *var_a1 = var_f0 + 6.2831855f;
            var_a1 = &D_800EA6E0[omCurrentObj->objId];
            var_f0 = *var_a1;
        } while (var_f0 < 0.0f);
    }
    arg0->data.dobj->firstChild->angle.v.x = var_f0;
}
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020998C_ovl9.s")
#endif

void func_80209CEC_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CC6B8;
    func_800AA018(0x10013);
    func_800AA018(0x10014);
    func_800AECC0(gameTicksPerDraw * 4.0f);
    func_800AED20(gameTicksPerDraw * 4.0f);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    func_800AF27C();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_80209E28_ovl9(s32 arg0) {

}

void func_80209E30_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 1;
    tmp->unk98 = &D_801CC6DC;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = 0.5f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3C90[omCurrentObj->objId] = 0.5f;
    D_800E98E0[omCurrentObj->objId] = 1;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800EB160[omCurrentObj->objId] = 0.0f;
    if (D_800E6A10[omCurrentObj->objId] == -1.0f) {
        f32 sp = 6.2831855f;

        D_800E6A10[omCurrentObj->objId] = 1.0f;
        D_800EB320[omCurrentObj->objId] = sp - D_800EB320[omCurrentObj->objId];
        D_800EA6E0[omCurrentObj->objId] = sp - D_800EA6E0[omCurrentObj->objId];
    }
    func_800AA018(0x10019);
    func_800AA018(0x1001A);
    ohSleep(0x96);
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

void func_80209FE4_ovl9(struct GObj *arg0) {
    s32 sp20[2];

    if (D_800E9AA0[omCurrentObj->objId].as_s32 != 0) {
        D_800E9AA0[omCurrentObj->objId].as_s32 -= 1;
        func_8019AF00_ovl7(4.0f);
    } else if (func_8019ADB4_ovl7(0.034906585f, sp20) != 0) {
        func_8019AF00_ovl7(4.0f);
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8020989C_ovl9);
    }
}

void func_8020A0AC_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 2;
    tmp->unk98 = &D_801CC700;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9EA4(0x10019);
    func_800A9EA4(0x1001A);
    curObjSleepForever();
}

void func_8020A13C_ovl9(struct GObj *arg0) {
    if ((0.34906587f < D_800EB320[omCurrentObj->objId]) && (D_800EB320[omCurrentObj->objId] < 3.1415927f)) {
        D_800EB320[omCurrentObj->objId] = D_800EB320[omCurrentObj->objId] - 0.06981317f;
    } else if ((3.1415927f <= D_800EB320[omCurrentObj->objId]) && (D_800EB320[omCurrentObj->objId] < 5.934119f)) {
        D_800EB320[omCurrentObj->objId] = D_800EB320[omCurrentObj->objId] + 0.06981317f;
    }
    func_8019AF00_ovl7(4.0f);
}

void func_8020A20C_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 3;
    tmp->unk98 = &D_801CC724;
    D_800E3750[omCurrentObj->objId] = -0.65f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    curObjSleepForever();
}

void func_8020A2A4_ovl9(s32 arg0) {

}

void func_8020A2AC_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 4;
    tmp->unk98 = &D_801CC6B8;
    func_8019BC34_ovl7(60.0f);
    func_800A9EA4(0x1001D);
    func_800A9EA4(0x1001E);
    D_800E64D0[omCurrentObj->objId] = 0.0f;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.05f;
    D_800E6850[omCurrentObj->objId] = 2.0f;
    curObjSleepForever();
}

void func_8020A390_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    if ((tmp->unk3C == 0) && (func_8019A7E8_ovl7(200.0f) != 0)) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8020989C_ovl9);
    } else if (func_8019BD38_ovl7() != 0) {
        func_80199F1C_ovl7(arg0);
    }
}

void func_8020A444_ovl9(struct GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_8020A598_ovl9;
    func_801A0D50_ovl7(func_8020A510_ovl9);
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        func_801A6C10_ovl7(arg0);
    }
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 4;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
    }
    func_8020A510_ovl9(arg0);
}

extern FUNCLIST D_8021C980_ovl9;

void func_8020A510_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, D_8021C980_ovl9);
    }
}

void func_8020A598_ovl9(struct GObj *arg0) {
    f32 temp = func_801A0D74_ovl7();

    eneTurnCommon(6);
    if (temp == 0.0f) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 5, &D_8021C994_ovl9);
    }
    func_8020998C_ovl9(arg0);
    func_8019F3B0_ovl7();
}

void func_8020A620_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 4;
    tmp->unk98 = &D_801CC748;
    func_800A9EA4(0x1001B);
    func_800A9EA4(0x1001C);
    curObjSleepForever();
}

void func_8020A694_ovl9(struct GObj *arg0) {
    if (func_8019A7E8_ovl7(200.0f) != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8020A510_ovl9);
    } else {
        func_8019B424_ovl7(arg0);
    }
}

void func_8020A70C_ovl9(struct GObj *arg0) {
    if (D_800E0D50[omCurrentObj->objId] == 0) {
        if (D_800E8220[omCurrentObj->objId] == 1) {
            func_8020A768_ovl9(arg0);
        }
    }
}

void func_8020A768_ovl9(struct GObj *arg0) {
    arg0->data.dobj->firstChild->angle.v.x = 1.5707964f;
    if (D_800EA520[omCurrentObj->objId] == 0) {
        D_800EA520[omCurrentObj->objId] = (s32) arg0->onAnimate;
        arg0->onAnimate = NULL;
        func_800A2300(arg0);
    }
}

void func_8020A7CC_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B67A8;
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_8021C9A8_ovl9);
}

void func_8020A854_ovl9(struct GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = (void (*)(struct GObj *)) func_8020A9B8_ovl9;
    func_801A0D50_ovl7(func_8020A934_ovl9);
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        func_801A6C10_ovl7(arg0);
    }
    if (D_800E8920[omCurrentObj->objId] == 1) {
        D_800E9AA0[omCurrentObj->objId].as_s32 = 2;
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
    } else {
        *(u32 *) &gEntityFuncListIDArray[omCurrentObj->objId] = 1;
    }
    func_8020A934_ovl9(arg0);
}

extern FUNCLIST D_8021C9B0_ovl9;

void func_8020A934_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, D_8021C9B0_ovl9);
    }
}

void func_8020A9B8_ovl9(void) {
    f32 temp = func_801A0D74_ovl7();

    if (temp == 0.0f) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 4, &D_8021C9C0_ovl9);
    }
    func_8019F3B0_ovl7();
    if (D_800E83E0[omCurrentObj->objId] == 3) {
        func_800AA018(0x1003C);
    }
}

void func_8020AA5C_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CC790;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AA018(0x1003A);
    D_800DF310[omCurrentObj->objId] = func_8020B350_ovl9;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    play_sound(0xA0);
    func_800AF27C();
    D_800E6A10[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -1.0f;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 4;
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

void func_8020ABAC_ovl9(struct GObj *arg0) {
    if (D_800E9C60[omCurrentObj->objId] == 1) {
        func_80111550((void *) omCurrentObj->objId);
        func_80111ECC(func_80111C88(&D_801C9208, omCurrentObj->objId));
        func_801A0C70_ovl7();
    }
}

void func_8020AC20_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CC7B4;
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 2;
    func_800AA018(0x1003C);
    D_800E3750[omCurrentObj->objId] = -0.65f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    curObjSleepForever();
}

void func_8020ACEC_ovl9(s32 arg0) {

}

void func_8020ACF4_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];
    s32 i;
    f32 v;

    tmp->unk98 = &D_801CC76C;
    D_800DDFD0[omCurrentObj->objId] = 2;
    func_800AA018(0x1003D);
    v = 65535.0f;
    for (i = 0; i < D_800E9AA0[omCurrentObj->objId].as_s32; i++) {
        D_800E64D0[omCurrentObj->objId] = 0.0f;
        D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.375f;
        D_800E6850[omCurrentObj->objId] = 3.0f;
        ohSleep(0x13);
        D_800E6690[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId] * -2.0f;
        ohSleep(4);
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = v;
        ohSleep(6);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}
void func_8020AF0C_ovl9(struct GObj *arg0) {
    if (D_800E8920[omCurrentObj->objId] == 0) {
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
    }
}

void func_8020AF88_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CC7B4;
    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800AA018(0x1003C);
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.05f;
    D_800E6850[omCurrentObj->objId] = 2.0f;
    D_800E3210[omCurrentObj->objId] = 7.5f;
    D_800E3750[omCurrentObj->objId] = -0.65f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    curObjSleepForever();
}

void func_8020B0B4_ovl9(s32 arg0) {

}

void func_8020B0BC_ovl9(struct GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = (void (*)(struct GObj *)) func_8020B218_ovl9;
    func_801A0D50_ovl7(func_8020B19C_ovl9);
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        func_801A6C10_ovl7(arg0);
    }
    if (D_800E8920[omCurrentObj->objId] == 1) {
        D_800E9AA0[omCurrentObj->objId].as_s32 = 2;
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
    } else {
        *(u32 *) &gEntityFuncListIDArray[omCurrentObj->objId] = 1;
    }
    func_8020B19C_ovl9(arg0);
}

extern FUNCLIST D_8021C9D0_ovl9;

void func_8020B19C_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, D_8021C9D0_ovl9);
    }
}

void func_8020B218_ovl9(void) {
    f32 temp = func_801A0D74_ovl7();

    if (temp == 0.0f) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_8021C9DC_ovl9);
    }
    func_8019F3B0_ovl7();
    if (D_800E83E0[omCurrentObj->objId] == 3) {
        func_800AA018(0x1003C);
    }
}

void func_8020B2BC_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CC7D8;
    D_800DDFD0[omCurrentObj->objId] = 2;
    func_800AA864(0x1003C, 2);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_8020B348_ovl9(s32 arg0) {

}

void func_8020B350_ovl9(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        D_800E9C60[omCurrentObj->objId] = (s32) arg2;
    }
}

void func_8020B388_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B67A8;
    func_8019BB58_ovl7();
    D_800DF150[omCurrentObj->objId] = func_8020B498_ovl9;
    func_801A0D50_ovl7(func_8020B420_ovl9);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_8020B420_ovl9(arg0);
}

extern FUNCLIST D_8021C9E8_ovl9;

void func_8020B420_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, D_8021C9E8_ovl9);
    }
}

void func_8020B498_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 5, &D_8021C9FC_ovl9);
}

void func_8020B4E0_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AF408();
    curObjSleepForever();
}

void func_8020B524_ovl9(struct GObj *arg0) {
    if (func_8019A9AC_ovl7(640.0f, 640.0f) == 3) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8020B420_ovl9);
    }
}

void func_8020B598_ovl9(struct GObj *arg0)
{
  D_800DDFD0[omCurrentObj->objId] = 1;
  D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
  if (omCurrentObj->objId)
  {
  }
  do
  {
    func_800AA018(0x10040);
    ohSleep(0x13);
    D_800E9AA0[omCurrentObj->objId].as_s32 = 1;
    D_800E9560[omCurrentObj->objId] = random_soft_s32_range(0x3C);
    while (D_800E9560[omCurrentObj->objId] > 0)
    {
      D_800E9560[omCurrentObj->objId] = D_800E9560[omCurrentObj->objId] - 1;
      ohSleep(1);
      if (func_8019A9AC_ovl7(640.0f, 640.0f) != 3)
      {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        D_800E9560[omCurrentObj->objId] = 0;
      }
    }

  }
  while (gEntityFuncListIDArray[omCurrentObj->objId] == 1);
}
void func_8020B718_ovl9(struct GObj *arg0) {
    if (D_800E9AA0[omCurrentObj->objId].as_s32 != 0) {
        if (func_8019A9AC_ovl7(240.0f, 160.0f) == 3) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 2;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8020B420_ovl9);
        }
    }
}

void func_8020B7B8_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E98E0[omCurrentObj->objId] = 0;
    ohSleep(0xC);
    func_800AA018(0x1003E);
    play_sound(0x9D);
    ohSleep(7);
    D_800E98E0[omCurrentObj->objId] = 1;
    ohSleep(3);
    D_800E98E0[omCurrentObj->objId] = 0;
    func_800AF27C();
    func_800AA018(0x10041);
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 4;
}

void func_8020B8A4_ovl9(struct GObj *arg0) {
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        if (func_8020BA70_ovl9(arg0) != 0) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 3;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8020B420_ovl9);
        }
    }
}

void func_8020B92C_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 3;
    func_800AA018(0x10042);
    play_sound(0xA2);
    ohSleep(0xF);
    play_sound(0xA2);
    ohSleep(0xF);
    play_sound(0xA2);
    ohSleep(0x1E);
    play_sound(0x9E);
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 4;
}

void func_8020B9D0_ovl9(s32 arg0) {

}

void func_8020B9D8_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 4;
    func_800AA018(0x1003F);
    func_800AF27C();
    ohSleep(0x96);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_8020BA48_ovl9(s32 arg0) {

}

void func_8020BA50_ovl9(void) {
    func_8019B59C_ovl7();
}

s32 func_8020BA70_ovl9(struct GObj *arg0) {
    struct Ovl9AnimInfo sp20;
    struct Ovl9AnimObj *obj;
    struct DObj *d;

    func_80111550((void *) omCurrentObj->objId);
    obj = func_80111C88(&D_801CA3C4, omCurrentObj->objId);
    d = arg0->data.dobj;
    obj->unk24->unk30 = d;
    obj->unk24->unk8 = d;
    func_80111ECC(obj);
    if (func_80110150(&sp20) != 0) {
        func_80169430_ovl3(sp20.unkC, sp20.unk0, sp20.unk1, 0);
        return 1;
    }
    return 0;
}

void func_8020BB00_ovl9(struct GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = 0x1C;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_8021CA10_ovl9);
}

void func_8020BB5C_ovl9(struct GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_8020BC98_ovl9;
    func_801A0D50_ovl7(func_8020BC24_ovl9);
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        func_801A6C10_ovl7(arg0);
    }
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
    }
    func_8020BC24_ovl9(arg0);
}

extern FUNCLIST D_8021CA18_ovl9;

void func_8020BC24_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, D_8021CA18_ovl9);
    }
}

void func_8020BC98_ovl9(struct GObj *arg0) {
    f32 sp1C;
    struct EnemyRecord *sp18 = D_800E1B50[omCurrentObj->objId];
    struct EnemyKindDesc *p;

    sp1C = func_801A0D74_ovl7();
    eneTurnCommon(6);
    if (sp1C == 0.0f) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_8021CA24_ovl9);
    }
    func_8019F410_ovl7(arg0->data.dobj->firstChild->next);
    if (D_800E83E0[omCurrentObj->objId] == 3) {
        func_8020C0A4_ovl9();
        func_800A9760(0x10019);
        p = &D_801C446C;
        sp18->unk88 = p;
        sp18->unk8C = p->animTable;
        func_801A2ADC_ovl7(p->unk10);
        D_800E7B20[omCurrentObj->objId] = sp18->unk88->rangeGate;
    }
}

void func_8020BDC8_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CC7FC;
    func_800A9EA4(0x1006E);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    curObjSleepForever();
}

void func_8020BE84_ovl9(struct GObj *arg0) {
    struct EnemyRecord *sp1C = D_800E1B50[omCurrentObj->objId];

    func_8019B424_ovl7(arg0);
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        D_800E98E0[omCurrentObj->objId] = D_800E98E0[omCurrentObj->objId] - 1;
    } else if ((sp1C->unk3C == 0) && (func_8019A7E8_ovl7(200.0f) != 0)) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8020BC24_ovl9);
    }
}

void func_8020BF50_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 1;
    tmp->unk98 = &D_801CC7FC;
    func_800AA018(0x10069);
    D_800DF310[omCurrentObj->objId] = func_8020C0FC_ovl9;
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_8020BFF0_ovl9(s32 arg0) {

}

void func_8020BFF8_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 2;
    tmp->unk98 = &D_801CC820;
    func_800A9EA4(0x1006E);
    D_800E3750[omCurrentObj->objId] = -0.65f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    curObjSleepForever();
}

void func_8020C09C_ovl9(s32 arg0) {

}

void func_8020C0A4_ovl9(void) {
    s32 temp = func_8019DB7C_ovl7(D_800E7730[omCurrentObj->objId], 0x63, 1);

    if (temp != -1) {
        func_8019DB58_ovl7(omCurrentObj->objId, temp);
    }
}

void func_8020C0FC_ovl9(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if ((s32) arg2 == 1) {
            func_801ACCA0_ovl7(4, 0, 20.0f, 10.0f);
            play_sound(0xBB);
            D_800E98E0[omCurrentObj->objId] = 0x1C;
        }
    }
}

void func_8020C170_ovl9(struct GObj *arg0) {
    struct EnemyRecord *sp1C = D_800E1B50[omCurrentObj->objId];

    sp1C->unk88 = &D_801C4428_ovl7;
    sp1C->unk8C = D_801C4428_ovl7.animTable;
    func_801A2ADC_ovl7(D_801C4428_ovl7.unk10);
    D_800E7B20[omCurrentObj->objId] = sp1C->unk88->rangeGate;
    D_800DF150[omCurrentObj->objId] = func_8020C378_ovl9;
    func_801A0D50_ovl7(func_8020C2EC_ovl9);
    D_800E6A10[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -1.0f;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0x14;
    sp1C->unk8C = &D_801C92E0;
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        func_801A6C10_ovl7(arg0);
    }
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
    }
    func_8020C2EC_ovl9(arg0);
}

extern FUNCLIST D_8021CA30_ovl9;

void func_8020C2EC_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, D_8021CA30_ovl9);
    }
}

#ifdef NON_MATCHING
// 22/55 diffs: structurally exact, a pervasive whole-function
// $a0/$a1/$a2/$a3 register-naming cascade starting from the very first
// instruction (omCurrentObj held in $a1 by the ROM, $a0 here). Re-measured
// this session (old note said 24, corrected to 22). Swapping declaration
// order of `tmp`/`sp1C` made it WORSE (24, reverted).
//
// LEVER 58 RULED OUT HERE, and this is the negative control for it. The
// signature is present: `jal func_801A0D74_ovl7` at 8020C3DC has $a0 untouched
// by everything above it, and func_801A0D74_ovl7 really is `s32 (GObj *)`.
// But declaring `struct GObj *arg0` and passing it scores 54/55, because IDO
// then HOMES the parameter (`sw $a0, 0x20($sp)`) and the ROM has no such
// store -- one extra instruction at the top and the whole body shifts.
// func_801D4594_ovl9 (ovl9_1.c), func_80211B1C_ovl9 (ovl9_14.c) and
// func_80207374_ovl9 (ovl9_11.c) all closed on exactly that change today, and
// all three have frame 0x18: an argument-save area and no stack locals. This
// one has `f32 sp1C` living at 0x1C($sp) and a 0x20 frame. So the jal alone is
// not evidence for lever 58; the prologue is. Do not re-cost this without a
// theory for why the ROM can hold a live parameter in $a0 through a frame
// that has stack locals.
void func_8020C378_ovl9(void) {
    f32 sp1C;
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    if (D_800E9AA0[omCurrentObj->objId].as_s32 > 0) {
        D_800E9AA0[omCurrentObj->objId].as_s32 -= 1;
        if (D_800E9AA0[omCurrentObj->objId].as_s32 == 0) {
            tmp->unk8C = tmp->unk88->animTable;
        }
    }
    sp1C = func_801A0D74_ovl7();
    eneTurnCommon(6);
    if (sp1C == 0.0f) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_8021CA3C_ovl9);
    }
    func_8019F3B0_ovl7();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020C378_ovl9.s")
#endif
void func_8020C454_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CC844;
    func_800A9EA4(0x1006A);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * (f32)2;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.05f;
    D_800E6850[omCurrentObj->objId] = 4.0f;
    curObjSleepForever();
}

void func_8020C530_ovl9(s32 arg0) {

}

void func_8020C538_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 2;
    tmp->unk98 = &D_801CC868;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9EA4(0x1006A);
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.05f;
    D_800E6850[omCurrentObj->objId] = 4.0f;
    D_800E3210[omCurrentObj->objId] = 7.5f;
    D_800E3750[omCurrentObj->objId] = -0.65f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    curObjSleepForever();
}

void func_8020C65C_ovl9(s32 arg0) {

}

void func_8020C664_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 2;
    tmp->unk98 = &D_801CC868;
    func_800A9EA4(0x1006A);
    D_800E3750[omCurrentObj->objId] = -0.65f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    curObjSleepForever();
}

void func_8020C708_ovl9(s32 arg0) {

}

void func_8020C710_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp;

    tmp = D_800E1B50[omCurrentObj->objId];
    D_800E9020[omCurrentObj->objId] = 0.0f;
    D_800DF150[omCurrentObj->objId] = (void (*)(struct GObj *)) func_8020C918_ovl9;
    tmp->unk48 = NULL;
    tmp->unk98 = &D_801CB470_ovl7;
    func_800A2300(arg0);
    if (tmp->unk94->unk0 != -1) {
        func_800AECC0(tmp->unk94->unk8);
        func_800AED20(tmp->unk94->unk8);
        func_800AA018(tmp->unk94->unk0);
        if (tmp->unk94->unk4 != -1) {
            func_800AA018(tmp->unk94->unk4);
        }
    } else {
        func_800AF408();
    }
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E3210[omCurrentObj->objId] = -3.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3C90[omCurrentObj->objId] = 3.0f;
    ohSleep(3);
    D_800E3750[omCurrentObj->objId] = 0.2f;
    ohSleep(0xC);
    func_800FD570(0, tmp->unk94->unk18, 0.0f, 0.0f, 0.0f);
    if (tmp->unk94->unk1C != 0x80000000) {
        play_sound(tmp->unk94->unk1C);
    }
    tmp->unk40 = 1;
    func_801A3E80_ovl7(arg0);
}

void func_8020C918_ovl9(void) {
    func_801A0D74_ovl7();
}

void func_8020C938_ovl9(struct GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800DF150[omCurrentObj->objId] = (void (*)(struct GObj *)) func_8020CAD8_ovl9;
    func_801A0D50_ovl7(func_8020CA4C_ovl9);
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        func_801A6C10_ovl7(arg0);
    }
    if (D_800E8920[omCurrentObj->objId] == 1) {
        if (D_800E98E0[omCurrentObj->objId] == 0) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        } else {
            gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        }
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 4;
    }
    func_8020CA4C_ovl9(arg0);
}

extern FUNCLIST D_8021CA48_ovl9;

void func_8020CA4C_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, D_8021CA48_ovl9);
    }
}

void func_8020CAD8_ovl9(void) {
    f32 temp = func_801A0D74_ovl7();

    func_8019B2C0_ovl7(1);
    if (temp == 0.0f) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 5, &D_8021CA5C_ovl9);
    }
    func_8019F3B0_ovl7();
}

void func_8020CB58_ovl9(struct GObj *arg0) {
    struct EnemyRecord *sp1C = D_800E1B50[omCurrentObj->objId];

    D_800E98E0[omCurrentObj->objId] = 0;
    sp1C->unk88 = &D_801C44B0_ovl7;
    func_801A2ADC_ovl7((u32) &D_801CA9E4_ovl7);
    D_800DEF90[omCurrentObj->objId] = func_800B67A8;
    D_800DDFD0[omCurrentObj->objId] = 0;
    sp1C->unk98 = &D_801CC88C;
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    func_800AA018(0x10077);
    func_800AA018(0x10078);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    curObjSleepForever();
}

void func_8020CC8C_ovl9(struct GObj *arg0) {
    if (D_800E9AA0[omCurrentObj->objId].as_s32 != 0) {
        D_800E9AA0[omCurrentObj->objId].as_s32 -= 1;
    } else if (func_8019A9AC_ovl7(280.0f, 600.0f) == 3) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8020CA4C_ovl9);
    }
}

void func_8020CD38_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = func_800B67A8;
    D_800DDFD0[omCurrentObj->objId] = 1;
    tmp->unk98 = &D_801CC88C;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    if (D_800E98E0[omCurrentObj->objId] == 0) {
        func_800AA018(0x10079);
        func_800AA018(0x1007A);
        ohSleep(0x19);
        func_8019B164_ovl7();
        if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
            func_800A9F98(0x10079, 50.0f);
            func_800A9F98(0x1007A, 50.0f);
        } else {
            func_800A9F98(0x10077, 50.0f);
            func_800A9F98(0x10078, 50.0f);
        }
        func_800AF27C();
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
    } else {
        if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
            func_800AA018(0x10071);
            func_800AA018(0x10072);
        } else {
            func_800AA018(0x1006F);
            func_800AA018(0x10070);
        }
        func_800AF27C();
        D_800E9AA0[omCurrentObj->objId].as_s32 = 0x1E;
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    }
}

void func_8020CFA0_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    if (((D_8012BCA0 >> 19) & 0x200) == 0) {
        tmp->unk3C = 1;
    }
}

void func_8020CFE4_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E98E0[omCurrentObj->objId] = 1;
    tmp->unk88 = &D_801C44F4;
    func_801A2ADC_ovl7((u32) &D_801CACB4_ovl7);
    D_800DEF90[omCurrentObj->objId] = func_800B658C;
    D_800DDFD0[omCurrentObj->objId] = 2;
    tmp->unk98 = &D_801CC8B0;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AA018(0x1007D);
    func_800AF3A0();
    D_800E64D0[omCurrentObj->objId] = 0.0f;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.1f;
    D_800E6850[omCurrentObj->objId] = 3.0f;
    ohSleep(0x69);
    ohSleep(random_soft_s32_range(0xF));
    while (tmp->unk3C != 0) {
        ohSleep(1);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_8020D17C_ovl9(s32 arg0) {
    eneTurnCommon(6);
}

void func_8020D1A0_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 3;
    tmp->unk98 = &D_801CC88C;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    if (D_800E98E0[omCurrentObj->objId] == 0) {
        D_800DEF90[omCurrentObj->objId] = func_800B67A8;
        func_800AA018(0x10073);
        func_800AA018(0x10074);
        func_800AF27C();
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    } else {
        D_800DEF90[omCurrentObj->objId] = func_800B658C;
        func_800AA018(0x1007F);
        func_800AA018(0x10080);
        func_800AF27C();
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
    }
}

void func_8020D328_ovl9(s32 arg0) {

}

void func_8020D330_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 4;
    tmp->unk98 = &D_801CC8D4;
    if (D_800E98E0[omCurrentObj->objId] == 0) {
        D_800DEF90[omCurrentObj->objId] = func_800B67A8;
        func_800AA018(0x1007B);
        func_800AA018(0x1007C);
    } else {
        D_800DEF90[omCurrentObj->objId] = func_800B658C;
        func_800AA018(0x10081);
        func_800AA018(0x10082);
    }
    D_800E3750[omCurrentObj->objId] = -0.65f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    curObjSleepForever();
}

void func_8020D448_ovl9(s32 arg0) {
    eneTurnCommon(6);
}

void func_8020D46C_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = func_800B67A8;
    tmp->unk80->unk10 = 38.0f;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E98E0[omCurrentObj->objId] = 0;
    tmp->unk4 = gEntitiesNextPosYArray[omCurrentObj->objId];
    tmp->unk39 = -1;
    D_800DF150[omCurrentObj->objId] = func_8020D618_ovl9;
    func_801A0D50_ovl7(func_8020D594_ovl9);
    if (D_800E8920[omCurrentObj->objId] == 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 4;
    }
    func_8020D594_ovl9(arg0);
}

extern FUNCLIST D_8021CA70_ovl9;

void func_8020D594_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 6, D_8021CA70_ovl9);
    }
}

void func_8020D618_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    if (tmp->unk84 != NULL) {
        *(f32 *) &tmp->unk84->headOffsetY = arg0->data.dobj->firstChild->pos.v.y + 8.0f;
    }
    func_801A0D74_ovl7();
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 6, &D_8021CA88_ovl9);
    func_8019F3F0_ovl7();
}

void func_8020D6B0_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CB470_ovl7;
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    func_800AA018(0x10086);
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    curObjSleepForever();
}

void func_8020D780_ovl9(struct GObj *arg0) {
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        D_800E98E0[omCurrentObj->objId] -= 1;
    } else if (func_8019A9AC_ovl7(-1.0f, 480.0f) == 3) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8020D594_ovl9);
    }
}

void func_8020D82C_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 1;
    tmp->unk98 = &D_801CB470_ovl7;
    D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
    D_800EA8A0[omCurrentObj->objId] = arg0->data.dobj->firstChild->pos.v.y;
    func_800AA018(0x10086);
    while (1) {
        func_800AECC0(8.0f);
        func_800AED20(8.0f);
        func_800AF27C();
        func_800AF27C();
        if (func_8019A9AC_ovl7(-1.0f, 480.0f) != 3) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 0;
            return;
        }
        func_800AECC0(0.0f);
        func_800AED20(0.0f);
        ohSleep(0x1E);
    }
}

void func_8020D984_ovl9(struct GObj *arg0) {
    gEntitiesNextPosYArray[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId] + (D_800EA8A0[omCurrentObj->objId] - arg0->data.dobj->firstChild->pos.v.y);
    if (func_8019A9AC_ovl7(-1.0f, 200.0f) == 3) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8020D594_ovl9);
    }
}

void func_8020DA44_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 2;
    tmp->unk98 = &D_801CC8F8;
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        D_800E3210[omCurrentObj->objId] = -5.0f;
        D_800E3750[omCurrentObj->objId] = -0.65f;
        D_800E3C90[omCurrentObj->objId] = 6.66666f;
    } else {
        D_800E3210[omCurrentObj->objId] = -5.0f;
        D_800E3750[omCurrentObj->objId] = -0.97499996f;
        D_800E3C90[omCurrentObj->objId] = 20.0f;
    }
    curObjSleepForever();
}

void func_8020DB78_ovl9(s32 arg0) {

}

void func_8020DB80_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 3;
    tmp->unk98 = &D_801CC91C;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800A9F98(0x10083, 1.0f);
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    play_sound(0x268);
    func_800FB914(1);
    func_800AF27C();
    func_800AA018(0x10085);
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 4;
}

void func_8020DCA0_ovl9(s32 arg0) {

}

void func_8020DCA8_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 4;
    tmp->unk98 = &D_801CC940;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E98E0[omCurrentObj->objId] = 0x3C;
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        D_800E3210[omCurrentObj->objId] = 0.0f;
        D_800E3750[omCurrentObj->objId] = 0.325f;
        D_800E3C90[omCurrentObj->objId] = 1.6666601f;
    } else {
        D_800E3210[omCurrentObj->objId] = 0.0f;
        D_800E3750[omCurrentObj->objId] = 0.65f;
        D_800E3C90[omCurrentObj->objId] = 5.0f;
    }
    curObjSleepForever();
}

void func_8020DE04_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    if (tmp->unk4 <= gEntitiesNextPosYArray[omCurrentObj->objId]) {
        gEntitiesNextPosYArray[omCurrentObj->objId] = tmp->unk4;
        gEntityFuncListIDArray[omCurrentObj->objId] = 5;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8020D594_ovl9);
    }
}

void func_8020DE9C_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 5;
    tmp->unk98 = &D_801CB470_ovl7;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AA018(0x10084);
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_8020DF8C_ovl9(s32 arg0) {

}

extern FUNCLIST D_8021CAA0_ovl9;

void func_8020DF94_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = func_800B67A8;
    func_800AFBB4(1, omCurrentObj);
    func_8019BB58_ovl7();
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId] - 60.0f;
    tmp->unk4 = gEntitiesNextPosYArray[omCurrentObj->objId];
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_8021CAA0_ovl9);
}

void func_8020E0A0_ovl9(struct GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_8020E178_ovl9;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_8020E0F4_ovl9(arg0);
}

extern FUNCLIST D_8021CAA8_ovl9;

void func_8020E0F4_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, D_8021CAA8_ovl9);
    }
}

void func_8020E178_ovl9(struct GObj *arg0) {
    s32 v;

    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 4, &D_8021CAB8_ovl9);
    v = D_800E83E0[omCurrentObj->objId];
    if ((v == 3) || (v == 4)) {
        arg0->data.dobj->firstChild->flags = 0;
    }
}

void func_8020E200_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AA018(0x10087);
    func_800AF314();
    curObjSleepForever();
}

void func_8020E254_ovl9(struct GObj *arg0) {
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        D_800E98E0[omCurrentObj->objId] -= 1;
    } else if (func_8019A9AC_ovl7(-1.0f, 640.0f) == 3) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8020E0F4_ovl9);
    }
}

void func_8020E300_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800AA018(0x10087);
    func_800AF314();
    while (1) {
        func_8020EA94_ovl9(NULL);
        ohSleep(0xF);
    }
}

void func_8020E370_ovl9(struct GObj *arg0) {
    if (func_8019A9AC_ovl7(-1.0f, 400.0f) == 3) {
        if ((ABSF(D_800E64D0[0]) > 5.0f) || (D_800E7880[omCurrentObj->objId] == 1)) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        } else {
            gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        }
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8020E0F4_ovl9);
    } else if (func_8019A9AC_ovl7(-1.0f, 640.0f) != 3) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8020E0F4_ovl9);
    }
}

void func_8020E4C0_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E9C60[omCurrentObj->objId] = 0;
    func_800AA018(0x10088);
    D_800E3210[omCurrentObj->objId] = 3.3333333f;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    ohSleep(7);
    play_sound(0xA7);
    ohSleep(3);
    D_800E9AA0[omCurrentObj->objId].as_s32 = 1;
    ohSleep(2);
    D_800E3210[omCurrentObj->objId] = 0.0f;
    ohSleep(0xA);
    D_800E3210[omCurrentObj->objId] = -1.6666666f;
    play_sound(0x94);
    ohSleep(0x14);
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    ohSleep(4);
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E98E0[omCurrentObj->objId] = 0x3C;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_8020E650_ovl9(struct GObj *arg0) {
    if (D_800E9AA0[omCurrentObj->objId].as_s32 != 0) {
        func_8020EAD4_ovl9(arg0);
    }
}




/* D_8021DBF4_ovl9: literal, this TU owns its .rodata */
/* D_8021DBF8_ovl9: literal, this TU owns its .rodata */
/* D_8021DBFC_ovl9: literal, this TU owns its .rodata */
/* D_8021DC00_ovl9: literal, this TU owns its .rodata */
/* D_8021DC04_ovl9: literal, this TU owns its .rodata */

void func_8020E694_ovl9(s32 arg0) {
    EnemyRecord *sp24;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;

    temp_v1 = omCurrentObj->objId * 4;
    sp24 = *(EnemyRecord **) ((u8 *) D_800E1B50 + temp_v1);
    *(s32 *) ((u8 *) D_800DDFD0 + temp_v1) = 3;
    D_800E9C60[omCurrentObj->objId] = 1;
    func_800AA018(0x10089);
    ohSleep(5);
    temp_v1_2 = omCurrentObj->objId;
    if (D_800E7880[temp_v1_2] == 0) {
        D_800E3210[temp_v1_2] = 12.0f;
        D_800E3750[omCurrentObj->objId] = -0.78000003f;
        D_800E3C90[omCurrentObj->objId] = 15.0f;
        D_800E9AA0[omCurrentObj->objId].as_u32 = 0;
        func_8020EA94_ovl9((GObj *)1);
        ohSleep(3);
        play_sound(0xA7);
        ohSleep(8);
        D_800E3750[omCurrentObj->objId] = -0.65f;
        D_800E3C90[omCurrentObj->objId] = 10.0f;
        D_800E9AA0[omCurrentObj->objId].as_u32 = 1;
        ohSleep(0xA);
        play_sound(0x94);
        D_800E9AA0[omCurrentObj->objId].as_u32 = 3;
        ohSleep(0xF);
        D_800E9AA0[omCurrentObj->objId].as_u32 = 0;
        ohSleep(6);
    } else {
        D_800E3210[temp_v1_2] = 13.0f;
        D_800E3750[omCurrentObj->objId] = -0.81899995f;
        D_800E3C90[omCurrentObj->objId] = 15.0f;
        D_800E9AA0[omCurrentObj->objId].as_u32 = 0;
        func_8020EA94_ovl9((GObj *)1);
        ohSleep(3);
        play_sound(0xA7);
        ohSleep(8);
        D_800E3750[omCurrentObj->objId] = -0.585f;
        D_800E3C90[omCurrentObj->objId] = 10.0f;
        D_800E9AA0[omCurrentObj->objId].as_u32 = 1;
        ohSleep(0xA);
        play_sound(0x94);
        D_800E9AA0[omCurrentObj->objId].as_u32 = 3;
        ohSleep(0xF);
        D_800E9AA0[omCurrentObj->objId].as_u32 = 0;
        D_800E3C90[omCurrentObj->objId] = 5.0f;
        ohSleep(6);
    }
    D_800E3750[omCurrentObj->objId] = 0.0f;
    temp_v1_3 = omCurrentObj->objId * 4;
    *(f32 *) ((u8 *) D_800E3210 + temp_v1_3) = *(f32 *) ((u8 *) D_800E3750 + temp_v1_3);
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    gEntitiesNextPosYArray[omCurrentObj->objId] = sp24->unk4;
    D_800E98E0[omCurrentObj->objId] = 0x3C;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}



void func_8020EA44_ovl9(struct GObj *arg0) {
    if (D_800E9AA0[omCurrentObj->objId].as_s32 & 1) {
        func_8020EAD4_ovl9(arg0);
    }
    func_8019F3F0_ovl7();
}

void func_8020EA94_ovl9(struct GObj *arg0) {
    s32 temp = func_801AE7E0_ovl7(0);

    if (temp != -1) {
        D_800EC2E0[temp].as_ptr = arg0;
    }
}

void func_8020EAD4_ovl9(struct GObj *arg0) {
    struct Ovl9AnimObj *obj;

    func_80111550((void *) omCurrentObj->objId);
    obj = func_80111C88(&D_801C9544, omCurrentObj->objId);
    obj->unk24->unk8 = arg0->data.dobj->firstChild->next->firstChild;
    obj->unk24->unk30 = arg0->data.dobj->firstChild->next->next->firstChild;
    func_80111ECC(obj);
    func_801A0C70_ovl7();
}

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
extern void (*D_8021CAC8_ovl9)(GObj *);

void func_8020EB60_ovl9(s32 arg0) {
    f32 *temp_v0_2;
    f32 *var_v0;
    f32 temp_f12;
    f32 var_f0;
    s32 var_v1;
    u32 temp_t0;
    u32 temp_t0_2;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;
    u8 temp_v0;

    D_800E8920[omCurrentObj->objId] = 0;
    D_800EB160[omCurrentObj->objId] = 0.0f;
    D_800EB320[omCurrentObj->objId] = 0.0f;
    temp_t0 = omCurrentObj->objId;
    temp_v0 = D_800E7880[temp_t0];
    var_v1 = temp_t0 * 4;
    if (((temp_v0 == 1) && (D_800E98E0[temp_t0] != 0)) || (var_v1 = temp_t0 * 4, (temp_v0 == 0))) {
        var_v0 = gEntitiesAngleZArray + var_v1;
        var_f0 = *var_v0;
        if (var_f0 > 6.2831855f) {
            do {
                *var_v0 = var_f0 - 6.2831855f;
                temp_v1 = omCurrentObj->objId;
                var_v1 = temp_v1 * 4;
                var_v0 = &gEntitiesAngleZArray[temp_v1];
                var_f0 = *var_v0;
            } while (var_f0 > 6.2831855f);
        }
        if (var_f0 < 0.0f) {
            do {
                *var_v0 = var_f0 + 6.2831855f;
                temp_v1_2 = omCurrentObj->objId;
                var_v1 = temp_v1_2 * 4;
                var_v0 = &gEntitiesAngleZArray[temp_v1_2];
                var_f0 = *var_v0;
            } while (var_f0 < 0.0f);
        }
        temp_f12 = 6.2831855f - var_f0;
        *(D_800EA6E0 + var_v1) = temp_f12;
        D_800EB320[omCurrentObj->objId] = temp_f12;
        D_800E6A10[omCurrentObj->objId] = 1.0f;
    } else {
        D_800EA6E0[temp_t0] = 1.5707964f;
        temp_v1_3 = omCurrentObj->objId;
        D_800EB320[temp_v1_3] = D_800EA6E0[temp_v1_3];
    }
    temp_t0_2 = omCurrentObj->objId;
    if (D_800E7880[temp_t0_2] != 0) {
        gEntitiesAngleZArray[temp_t0_2] = 0.0f;
        temp_v0_2 = &gEntitiesAngleZArray[omCurrentObj->objId];
        *temp_v0_2 = *temp_v0_2;
    }
    D_800E9C60[omCurrentObj->objId] = 8;
    utilFuncTableJump((u32) D_800E7880[omCurrentObj->objId], 2U, &D_8021CAC8_ovl9);
}
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020EB60_ovl9.s")
#endif

/* The three constants must be LITERALS: as extern references IDO emitted the
   three callee-saved FP loads in source order, where the ROM has $f24 first.
   The literal form is what the original source used and it schedules right. */
extern s32 D_800D6B54;
extern struct GObjProcess *gEntityGObjProcessArray5[];
void setProcessMain(struct GObjProcess *, void (*)(struct GObj *));
void procMainStub(struct GObj *);
void func_800B74B8(s32);
void func_801A3280_ovl7(void);
s32 func_800B30BC(f32, f32, f32);
void func_8020FD34_ovl9(void);

void func_8020ED74_ovl9(struct GObj *arg0) {
    f32 a;
    f32 b;
    f32 c;

    D_800DEDD0[omCurrentObj->objId] = 0;
    D_800DEF90[omCurrentObj->objId] = func_800B74B8;
    D_800DF150[omCurrentObj->objId] = 0;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    func_800AFBB4(0, omCurrentObj);
    func_8019BB58_ovl7();
    func_801A3280_ovl7();
    ohSleep(random_soft_s32_range(0x3C));
    a = 1.2f;
    b = 1.3f;
    c = 1500.0f;
    while (1) {
        if ((func_800B30BC(a, b, c) != 0) && (D_800D6B54 == 0)) {
            func_8020FD34_ovl9();
        }
        ohSleep(random_soft_s32_range(0x1E) + 0x78);
    }
}

void func_8020EEBC_ovl9(struct GObj *arg0) {
    f32 temp;

    D_800DF150[omCurrentObj->objId] = (void (*)(struct GObj *)) func_8020F078_ovl9;
    func_801A0D50_ovl7(func_8020F008_ovl9);
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0x14;
    temp = D_800EA6E0[omCurrentObj->objId];
    if (((1.553343f <= temp) && (temp <= 1.5882497f)) || ((4.694936f <= temp) && (temp <= 4.7298427f))) {
        func_801A2558_ovl7(&D_801CAD04_ovl7);
    } else {
        func_801A2558_ovl7(&D_801CACF0_ovl7);
    }
    if (D_800E98E0[omCurrentObj->objId] == 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 4;
    }
    func_8020F008_ovl9(arg0);
}

extern FUNCLIST D_8021CAD0_ovl9;

void func_8020F008_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, D_8021CAD0_ovl9);
    }
}

#ifdef MIPS_TO_C
/* FACTORY: 89/115 [was noted 26/115], frame + argument-passing shape.  The ROM homes $a0 at
   0x20($sp) and runs on a 0x20 frame; this draft is declared void (line 138
   of this TU declares `void func_8020F078_ovl9(void);` and the D_800DF150
   install at line 1860 casts through it), derives arg0 from omCurrentObj and
   lands on a 0x28 frame, so every sp offset and most temps shift.
   Measured, then reverted: giving the draft a real `GObj *arg0` parameter AND
   retyping that file-scope declaration is NOT the fix either -- it is worse
   (89 -> 96), so the home store comes from something else in the ROM's
   prologue, not simply from having a parameter.  Worth a permuter pass on the
   frame shape before spending more source effort here. */
extern void func_801051AC(void *);
extern FUNCLIST D_8021CAE4_ovl9;
void func_8020FC68_ovl9(struct GObj *arg0);
void func_8020F8A8_ovl9(GObj *);
/* K&R form is load-bearing on every repeat of this declaration in this file
 * (2x): its real signature is s32 func_801A0D74_ovl7(GObj *), but call
 * sites here and across the tree omit the arg -- the ROM relies on
 * whatever GObj* is already sitting in $a0. An ANSI prototype breaks
 * compilation with "too few arguments". */
s32 func_801A0D74_ovl7();
void func_8019F3B0_ovl7(void);
/* Carried-critter per-frame hook: run the shared mover with facing
 * temporarily made positive (matching the run direction), except
 * while the grab counter D_800E9FE0 is live -- then drain it and
 * instead pin the hitbox to the carrier's position through the
 * carried-collision resolver func_801051AC.  Restore facing, run the
 * squash/turn helper, dispatch the 5-entry anim-state table when the
 * mover reported idle (the N64 reads an uninitialized flag on the
 * carried path; the port skips the dispatch there), then the shared
 * draw/epilogue pair. */
void func_8020F078_ovl9(void) {
    GObj *arg0 = omCurrentObj;
    struct EnemyProbe *hit;
    f32 savedFacing;
    s32 moved;
    u32 id;

    id = omCurrentObj->objId;
    hit = D_800E1B50[id]->unk84;
    savedFacing = D_800E6A10[id];
    if (D_800E64D0[id] < 0.0f) {
        D_800E6A10[id] = savedFacing * -1.0f;
        id = omCurrentObj->objId;
    }
    moved = 1;
    if (D_800E9FE0[id].as_s32 > 0) {
        D_800E9FE0[id].as_s32--;
        if (hit != NULL) {
            hit->posX = gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]];
            hit->posY = gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]];
            hit->posZ = gEntitiesNextPosZArray[D_800E0D50[omCurrentObj->objId]];
            func_801051AC(hit);
        }
    } else {
        moved = func_801A0D74_ovl7(arg0);
    }
    D_800E6A10[omCurrentObj->objId] = savedFacing;
    func_8020FC68_ovl9(arg0);
    if (moved == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 5, &D_8021CAE4_ovl9);
    }
    func_8020F8A8_ovl9(arg0);
    func_8019F3B0_ovl7();
}
#elif defined(PORT)
extern void func_801051AC(void *);
extern FUNCLIST D_8021CAE4_ovl9;
void func_8020FC68_ovl9(struct GObj *arg0);
void func_8020F8A8_ovl9(GObj *);
s32 func_801A0D74_ovl7();
void func_8019F3B0_ovl7(void);
/* Carried-critter per-frame hook: run the shared mover with facing
 * temporarily made positive (matching the run direction), except
 * while the grab counter D_800E9FE0 is live -- then drain it and
 * instead pin the hitbox to the carrier's position through the
 * carried-collision resolver func_801051AC.  Restore facing, run the
 * squash/turn helper, dispatch the 5-entry anim-state table when the
 * mover reported idle (the N64 reads an uninitialized flag on the
 * carried path; the port skips the dispatch there), then the shared
 * draw/epilogue pair. */
void func_8020F078_ovl9(void) {
    GObj *arg0 = omCurrentObj;
    struct EnemyProbe *hit;
    f32 savedFacing;
    s32 moved;
    u32 id;

    id = omCurrentObj->objId;
    hit = D_800E1B50[id]->unk84;
    savedFacing = D_800E6A10[id];
    if (D_800E64D0[id] < 0.0f) {
        D_800E6A10[id] = savedFacing * -1.0f;
        id = omCurrentObj->objId;
    }
    moved = 1;
    if (D_800E9FE0[id].as_s32 > 0) {
        D_800E9FE0[id].as_s32--;
        if (hit != NULL) {
            hit->posX = gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]];
            hit->posY = gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]];
            hit->posZ = gEntitiesNextPosZArray[D_800E0D50[omCurrentObj->objId]];
            func_801051AC(hit);
        }
    } else {
        moved = func_801A0D74_ovl7(arg0);
    }
    D_800E6A10[omCurrentObj->objId] = savedFacing;
    func_8020FC68_ovl9(arg0);
    if (moved == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 5, &D_8021CAE4_ovl9);
    }
    func_8020F8A8_ovl9(arg0);
    func_8019F3B0_ovl7();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020F078_ovl9.s")
#endif

void func_8020F244_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CCA18;
    D_800EB320[omCurrentObj->objId] = 3.1415927f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        D_800E3750[omCurrentObj->objId] = -0.65f;
        D_800E3C90[omCurrentObj->objId] = 5.0f;
    } else {
        D_800E3750[omCurrentObj->objId] = -0.65f;
        D_800E3C90[omCurrentObj->objId] = 10.0f;
    }
    curObjSleepForever();
}

void func_8020F398_ovl9(s32 arg0) {

}

void func_8020F3A0_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 1;
    tmp->unk98 = &D_801CC9F4;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9EA4(0x100F2);
    curObjSleepForever();
}

void func_8020F424_ovl9(struct GObj *arg0) {
    if ((0.0f < D_800EB320[omCurrentObj->objId]) && (D_800EB320[omCurrentObj->objId] < 2.3561945f)) {
        D_800EB320[omCurrentObj->objId] = D_800EB320[omCurrentObj->objId] + 0.06981317f;
    } else if ((2.3561945f <= D_800EB320[omCurrentObj->objId]) && (D_800EB320[omCurrentObj->objId] < 3.0543263f)) {
        D_800EB320[omCurrentObj->objId] = D_800EB320[omCurrentObj->objId] + 0.034906585f;
    } else if ((3.9269907f <= D_800EB320[omCurrentObj->objId]) && (D_800EB320[omCurrentObj->objId] < 6.2831855f)) {
        D_800EB320[omCurrentObj->objId] = D_800EB320[omCurrentObj->objId] - 0.06981317f;
    } else if ((3.2288592f <= D_800EB320[omCurrentObj->objId]) && (D_800EB320[omCurrentObj->objId] < 3.9269907f)) {
        D_800EB320[omCurrentObj->objId] = D_800EB320[omCurrentObj->objId] - 0.034906585f;
    }
    func_8019AF00_ovl7(4.5f);
}

void func_8020F56C_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 2;
    tmp->unk98 = &D_801CC9F4;
    func_800AA018(0x100F2);
    curObjSleepForever();
}

void func_8020F5D4_ovl9(struct GObj *arg0) {
    struct EnemyRecord *sp1C = D_800E1B50[omCurrentObj->objId];

    func_8019B424_ovl7(arg0);
    eneTurnCommon(6);
    if (sp1C->unk3C == 0) {
        if (func_8019A9AC_ovl7(160.0f, 480.0f) == 3) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 3;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8020F008_ovl9);
        }
    }
}

void func_8020F684_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 3;
    tmp->unk98 = &D_801CC9F4;
    func_800AA018(0x100F2);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 4;
}

void func_8020F760_ovl9(s32 arg0) {

}

extern s32 D_801CC9F4;
/* D_8021DC68_ovl9: literal, this TU owns its .rodata */
extern void func_8019AF00_ovl7(f32);

void func_8020F768_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 4;
    tmp->unk98 = &D_801CC9F4;
    D_800EB160[omCurrentObj->objId] = 0.0f;
    if (D_800E6A10[omCurrentObj->objId] == -1.0f) {
        f32 temp = 6.2831855f;

        D_800E6A10[omCurrentObj->objId] = 1.0f;
        D_800EB320[omCurrentObj->objId] = temp - D_800EB320[omCurrentObj->objId];
        D_800EA6E0[omCurrentObj->objId] = temp - D_800EA6E0[omCurrentObj->objId];
    }
    func_800AA018(0x100F2);
    func_8019AF00_ovl7(4.5f);
    ohSleep(0xF0);
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_8020F8A0_ovl9(s32 arg0) {

}

#ifdef MIPS_TO_C
/* FACTORY: 213/219 [was noted 6/219], $v0/$v1 transposition for the omCurrentObj pointer.  Frame,
   schedule and body order are the ROM's. */
/* Turn-lean easer: walk the display heading D_800EA6E0 toward the
 * target heading D_800EB320 by a speed tiered on the remaining gap
 * (8, 4 or 1 degrees per tick), taking the short way around the
 * circle (direction flips when the gap exceeds pi), renormalize to
 * [0, 2pi), and pose the model root's X spin a quarter-turn back
 * from it. */
void func_8020F8A8_ovl9(GObj *arg0) {
    u32 id;
    f32 cur;
    f32 d;
    f32 ad;
    f32 step;

    id = omCurrentObj->objId;
    cur = D_800EA6E0[id];
    d = cur - D_800EB320[id];
    ad = (d < 0.0f) ? -d : d;
    step = 0.0f;
    if (ad > 0.13962634f) {
        step = 0.13962634f;
    } else if (ad > 0.06981317f) {
        step = 0.06981317f;
    } else if (ad >= 0.017453292f) {
        step = 0.017453292f;
    }
    if (step != 0.0f) {
        if (ad < 3.1415927f) {
            D_800EA6E0[id] = cur + ((d > 0.0f) ? -step : step);
        } else {
            D_800EA6E0[id] = cur + ((d > 0.0f) ? step : -step);
        }
        id = omCurrentObj->objId;
    }
    while (D_800EA6E0[id] > 6.2831855f) {
        D_800EA6E0[id] -= 6.2831855f;
        id = omCurrentObj->objId;
    }
    while (D_800EA6E0[id] < 0.0f) {
        D_800EA6E0[id] += 6.2831855f;
        id = omCurrentObj->objId;
    }
    arg0->data.dobj->firstChild->angle.v.x = D_800EA6E0[id] - 1.5707964f;
}
#elif defined(PORT)
/* Turn-lean easer: walk the display heading D_800EA6E0 toward the
 * target heading D_800EB320 by a speed tiered on the remaining gap
 * (8, 4 or 1 degrees per tick), taking the short way around the
 * circle (direction flips when the gap exceeds pi), renormalize to
 * [0, 2pi), and pose the model root's X spin a quarter-turn back
 * from it. */
void func_8020F8A8_ovl9(GObj *arg0) {
    u32 id;
    f32 cur;
    f32 d;
    f32 ad;
    f32 step;

    id = omCurrentObj->objId;
    cur = D_800EA6E0[id];
    d = cur - D_800EB320[id];
    ad = (d < 0.0f) ? -d : d;
    step = 0.0f;
    if (ad > 0.13962634f) {
        step = 0.13962634f;
    } else if (ad > 0.06981317f) {
        step = 0.06981317f;
    } else if (ad >= 0.017453292f) {
        step = 0.017453292f;
    }
    if (step != 0.0f) {
        if (ad < 3.1415927f) {
            D_800EA6E0[id] = cur + ((d > 0.0f) ? -step : step);
        } else {
            D_800EA6E0[id] = cur + ((d > 0.0f) ? step : -step);
        }
        id = omCurrentObj->objId;
    }
    while (D_800EA6E0[id] > 6.2831855f) {
        D_800EA6E0[id] -= 6.2831855f;
        id = omCurrentObj->objId;
    }
    while (D_800EA6E0[id] < 0.0f) {
        D_800EA6E0[id] += 6.2831855f;
        id = omCurrentObj->objId;
    }
    arg0->data.dobj->firstChild->angle.v.x = D_800EA6E0[id] - 1.5707964f;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020F8A8_ovl9.s")
#endif

void func_8020FC14_ovl9(struct GObj *arg0) {
    if (D_800E0D50[omCurrentObj->objId] == 0) {
        arg0->data.dobj->firstChild->angle.v.x = 0.0f;
        arg0->onAnimate = NULL;
        func_800A2300(arg0);
    }
}

extern void utilGetTransformSRT(Vector *, struct DObj *);
extern void func_800A7F74(s32, s32, s32, f32, f32, f32);

void func_8020FC68_ovl9(struct GObj *arg0) {
    Vector sp2C;
    struct DObj *sp28;

    sp28 = D_800DFBD0[omCurrentObj->objId][3];

    D_800E9C60[omCurrentObj->objId] = D_800E9C60[omCurrentObj->objId] + 1;
    if (D_800E9C60[omCurrentObj->objId] >= 0xA) {
        D_800E9C60[omCurrentObj->objId] = random_soft_s32_range(2);
        utilGetTransformSRT(&sp2C, sp28);
        func_800A7F74(3, 2, 0xC5, sp2C.x, sp2C.y, sp2C.z);
    }
}

#ifdef MIPS_TO_C
/* FACTORY: PADDING-TRAPPED, 25/141 (scored by hand -- verify.py refuses this
   listing and reports it unverifiable).
   padtrap.classify() says `trap, 6`: six words sit after this function's own
   .size, so even a byte-exact conversion would leave the TU 24 bytes short
   under kirby.ld's SUBALIGN(16).  DO NOT UN-GUARD IT, whatever the score --
   closing it needs a `pad` subsegment in kirby64.yaml plus the matching
   `. += 0x10;` in kirby.ld in the SAME edit, which is outside this lane.
   Draft state: ours is 147 instructions against the ROM's 141, and the shape
   is right (the pool-exhausted complaint with its own .asciz, then the clone
   stamp) but the register colouring diverges from the entry block on. */
extern s32 request_track_general(s32, s32, s32);
extern void func_800B1900(u16);
/* Clone spawner: request a fresh enemy track (kind 0x17); when the
 * pool is exhausted (slot >= 60 or -1) log the "enemy req over 18"
 * complaint and release it.  Otherwise stamp the clone as mode-1 of
 * the same species -- copying this entity's state id, species words,
 * rail binding (into both current and previous slots), full
 * position/prev-position, roll angle -- and mark it live. */
void func_8020FD34_ovl9(void) {
    s32 track;

    track = request_track_general(0x17, 0x1E, 0x50);
    if ((track >= 0x3C) || (track == -1)) {
        utilPrintf("enemy req over 18. Track Num:%d\n", track);
        func_800B1900(track);
        return;
    }
    gEntityFuncListIDArray[track] = gEntityFuncListIDArray[omCurrentObj->objId];
    D_800E76C0[track] = 0xFF;
    D_800E7730[track] = D_800E7730[omCurrentObj->objId];
    D_800E77A0[track] = D_800E77A0[omCurrentObj->objId];
    D_800E7880[track] = 1;
    D_800E6150[track] = D_800E5F90[omCurrentObj->objId];
    D_800E5F90[track] = D_800E6150[track];
    D_800E6D90[track] = D_800E6BD0[omCurrentObj->objId];
    D_800E6BD0[track] = D_800E6D90[track];
    gEntitiesNextPosXArray[track] = gEntitiesNextPosXArray[omCurrentObj->objId];
    gEntitiesPosXArray[track] = gEntitiesPosXArray[omCurrentObj->objId];
    gEntitiesNextPosYArray[track] = gEntitiesNextPosYArray[omCurrentObj->objId];
    gEntitiesPosYArray[track] = gEntitiesPosYArray[omCurrentObj->objId];
    gEntitiesNextPosZArray[track] = gEntitiesNextPosZArray[omCurrentObj->objId];
    gEntitiesPosZArray[track] = gEntitiesPosZArray[omCurrentObj->objId];
    D_800E98E0[track] = 1;
    gEntitiesAngleZArray[track] = gEntitiesAngleZArray[omCurrentObj->objId];
}
#elif defined(PORT)
extern s32 request_track_general(s32, s32, s32);
extern void func_800B1900(u16);
/* Clone spawner: request a fresh enemy track (kind 0x17); when the
 * pool is exhausted (slot >= 60 or -1) log the "enemy req over 18"
 * complaint and release it.  Otherwise stamp the clone as mode-1 of
 * the same species -- copying this entity's state id, species words,
 * rail binding (into both current and previous slots), full
 * position/prev-position, roll angle -- and mark it live. */
void func_8020FD34_ovl9(void) {
    s32 track;

    track = request_track_general(0x17, 0x1E, 0x50);
    if ((track >= 0x3C) || (track == -1)) {
        utilPrintf("enemy req over 18. Track Num:%d\n", track);
        func_800B1900(track);
        return;
    }
    gEntityFuncListIDArray[track] = gEntityFuncListIDArray[omCurrentObj->objId];
    D_800E76C0[track] = 0xFF;
    D_800E7730[track] = D_800E7730[omCurrentObj->objId];
    D_800E77A0[track] = D_800E77A0[omCurrentObj->objId];
    D_800E7880[track] = 1;
    D_800E6150[track] = D_800E5F90[omCurrentObj->objId];
    D_800E5F90[track] = D_800E6150[track];
    D_800E6D90[track] = D_800E6BD0[omCurrentObj->objId];
    D_800E6BD0[track] = D_800E6D90[track];
    gEntitiesNextPosXArray[track] = gEntitiesNextPosXArray[omCurrentObj->objId];
    gEntitiesPosXArray[track] = gEntitiesPosXArray[omCurrentObj->objId];
    gEntitiesNextPosYArray[track] = gEntitiesNextPosYArray[omCurrentObj->objId];
    gEntitiesPosYArray[track] = gEntitiesPosYArray[omCurrentObj->objId];
    gEntitiesNextPosZArray[track] = gEntitiesNextPosZArray[omCurrentObj->objId];
    gEntitiesPosZArray[track] = gEntitiesPosZArray[omCurrentObj->objId];
    D_800E98E0[track] = 1;
    gEntitiesAngleZArray[track] = gEntitiesAngleZArray[omCurrentObj->objId];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020FD34_ovl9.s")
#endif

