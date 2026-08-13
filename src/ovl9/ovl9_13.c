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
extern struct Sub800E1B50_Unk98 D_801CC940;
/* D_8021DBDC_ovl9: literal, this TU owns its .rodata */
/* D_8021DBE0_ovl9: literal, this TU owns its .rodata */
/* D_8021DBE4_ovl9: literal, this TU owns its .rodata */
/* D_8021DBE8_ovl9: literal, this TU owns its .rodata */
/* D_8021DBEC_ovl9: literal, this TU owns its .rodata */
/* D_8021DBF0_ovl9: literal, this TU owns its .rodata */
extern void func_800AFBB4();
extern struct Sub800E1B50_Unk98 D_801CC8F8;
extern struct Sub800E1B50_Unk98 D_801CC91C;
/* D_8021DBC8_ovl9: literal, this TU owns its .rodata */
/* D_8021DBCC_ovl9: literal, this TU owns its .rodata */
/* D_8021DBD0_ovl9: literal, this TU owns its .rodata */
/* D_8021DBD4_ovl9: literal, this TU owns its .rodata */
/* D_8021DBD8_ovl9: literal, this TU owns its .rodata */
extern void func_800FB914(s32);
void func_8020D594_ovl9(struct GObj *);
void func_8020D618_ovl9(struct GObj *);
extern struct Sub800E1B50_Unk88 D_801C44B0_ovl7;
extern struct Sub800E1B50_Unk88 D_801C44F4;
extern s32 D_801CA9E4_ovl7;
extern s32 D_801CACB4_ovl7;
extern struct Sub800E1B50_Unk98 D_801CC88C;
extern struct Sub800E1B50_Unk98 D_801CC8B0;
extern struct Sub800E1B50_Unk98 D_801CC8D4;
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
extern struct Sub800E1B50_Unk88 D_801C446C;
extern struct Sub800E1B50_Unk88 D_801C4428_ovl7;
extern s32 D_801C92E0;
extern struct Sub800E1B50_Unk98 D_801CB470_ovl7;
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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020998C_ovl9.s")

void func_80209CEC_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

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
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

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
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

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
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 3;
    tmp->unk98 = &D_801CC724;
    D_800E3750[omCurrentObj->objId] = -0.65f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    curObjSleepForever();
}

void func_8020A2A4_ovl9(s32 arg0) {

}

void func_8020A2AC_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

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
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

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
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

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
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

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
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

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
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];
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
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

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
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

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
    struct UnkStruct800E1B50 *sp18 = D_800E1B50[omCurrentObj->objId];
    struct Sub800E1B50_Unk88 *p;

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
        sp18->unk8C = p->unk14;
        func_801A2ADC_ovl7(p->unk10);
        D_800E7B20[omCurrentObj->objId] = sp18->unk88->unk0;
    }
}

void func_8020BDC8_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CC7FC;
    func_800A9EA4(0x1006E);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    curObjSleepForever();
}

void func_8020BE84_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];

    func_8019B424_ovl7(arg0);
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        D_800E98E0[omCurrentObj->objId] = D_800E98E0[omCurrentObj->objId] - 1;
    } else if ((sp1C->unk3C == 0) && (func_8019A7E8_ovl7(200.0f) != 0)) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8020BC24_ovl9);
    }
}

void func_8020BF50_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

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
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

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
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];

    sp1C->unk88 = &D_801C4428_ovl7;
    sp1C->unk8C = D_801C4428_ovl7.unk14;
    func_801A2ADC_ovl7(D_801C4428_ovl7.unk10);
    D_800E7B20[omCurrentObj->objId] = sp1C->unk88->unk0;
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
// 24 diffs.
void func_8020C378_ovl9(void) {
    f32 sp1C;
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (D_800E9AA0[omCurrentObj->objId].as_s32 > 0) {
        D_800E9AA0[omCurrentObj->objId].as_s32 -= 1;
        if (D_800E9AA0[omCurrentObj->objId].as_s32 == 0) {
            tmp->unk8C = tmp->unk88->unk14;
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
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

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
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

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
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

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
    struct UnkStruct800E1B50 *tmp;

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
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];

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
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

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
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (((D_8012BCA0 >> 19) & 0x200) == 0) {
        tmp->unk3C = 1;
    }
}

void func_8020CFE4_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

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
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

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
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

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
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

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
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (tmp->unk84 != NULL) {
        *(f32 *) &tmp->unk84->unk14 = arg0->data.dobj->firstChild->pos.v.y + 8.0f;
    }
    func_801A0D74_ovl7();
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 6, &D_8021CA88_ovl9);
    func_8019F3F0_ovl7();
}

void func_8020D6B0_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

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
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

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
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

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
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

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
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

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
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (tmp->unk4 <= gEntitiesNextPosYArray[omCurrentObj->objId]) {
        gEntitiesNextPosYArray[omCurrentObj->objId] = tmp->unk4;
        gEntityFuncListIDArray[omCurrentObj->objId] = 5;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8020D594_ovl9);
    }
}

void func_8020DE9C_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

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
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

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
    UnkStruct800E1B50 *sp24;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;

    temp_v1 = omCurrentObj->objId * 4;
    sp24 = *(UnkStruct800E1B50 **) ((u8 *) D_800E1B50 + temp_v1);
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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020EB60_ovl9.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020F078_ovl9.s")

void func_8020F244_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

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
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

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
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 2;
    tmp->unk98 = &D_801CC9F4;
    func_800AA018(0x100F2);
    curObjSleepForever();
}

void func_8020F5D4_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];

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
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

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
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020F8A8_ovl9.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020FD34_ovl9.s")

