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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F29D0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F2B80_ovl9.s")

extern FUNCLIST D_8021C3A0_ovl9;

void func_801F2CAC_ovl9(struct GObj *arg0) {
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 5, &D_8021C3A0_ovl9);
}

void func_801F2CF0_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_8021C3B4_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F2D38_ovl9.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F2E6C_ovl9.s")

extern struct GObjProcess *gEntityGObjProcessArray[];
void func_801F2CF0_ovl9(struct GObj *);

void func_801F2F94_ovl9(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId]--;
    if (D_800E98E0[omCurrentObj->objId] == 0x12) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F2CF0_ovl9);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F3020_ovl9.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F3350_ovl9.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F347C_ovl9.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F3600_ovl9.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F3748_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F3870_ovl9.s")

void func_801F399C_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_8021C3DC_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F39E4_ovl9.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F3B50_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F3C38_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F3D2C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F3E60_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F40C8_ovl9.s")

void func_801F422C_ovl9(GObj *arg0) {
}

void func_801F4234_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_8021C3F4_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F427C_ovl9.s")

extern FUNCLIST D_8021C400_ovl9;
void func_8019F3B0_ovl7(void);

void func_801F4368_ovl9(struct GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_8021C400_ovl9);
    func_8019F3B0_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F43B8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F4480_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F4588_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F471C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F4860_ovl9.s")

void func_801F4934_ovl9(GObj *arg0) {
}

extern f32 D_8021D908_ovl9;

void func_801F493C_ovl9(GObj *arg0) {
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = D_8021D908_ovl9;
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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F4A68_ovl9.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F4BBC_ovl9.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F4D7C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F4E58_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F4F84_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F50E0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F51B4_ovl9.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F5328_ovl9.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F550C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F5604_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F57C8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F58A0_ovl9.s")

void func_801F52D4_ovl9(struct GObj *);

void func_801F59B8_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F52D4_ovl9);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F5A24_ovl9.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F5C18_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F5CD4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F5E00_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F5EDC_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F5FA8_ovl9.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F61BC_ovl9.s")

void func_801F638C_ovl9(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F6394_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F651C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F66D4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F6794_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F68C0_ovl9.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F6AE4_ovl9.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F6C98_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F6D84_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F6E50_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F6F08_ovl9.s")

extern struct GObjProcess *gEntityGObjProcessArray[];
void func_801F6A9C_ovl9(struct GObj *);

void func_801F71B0_ovl9(GObj *arg0) {
    if (D_800E9AA0[omCurrentObj->objId].as_s32 == 2) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F6A9C_ovl9);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F721C_ovl9.s")

void func_801F7394_ovl9(GObj *arg0) {
    if (D_800E9AA0[omCurrentObj->objId].as_s32 == 0) {
        if (D_800E3210[omCurrentObj->objId] < 8.0f) {
            D_800E9AA0[omCurrentObj->objId].as_s32 = 1;
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F73F4_ovl9.s")

extern struct GObjProcess *gEntityGObjProcessArray[];
void func_801F6A9C_ovl9(struct GObj *);

void func_801F74CC_ovl9(GObj *arg0) {
    if (D_800E9AA0[omCurrentObj->objId].as_s32 != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F6A9C_ovl9);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F7538_ovl9.s")

void func_801F7664_ovl9(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F766C_ovl9.s")

void func_801F774C_ovl9(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F7754_ovl9.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F7A50_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F7B90_ovl9.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F7DE0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F7F2C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F8010_ovl9.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F81B8_ovl9.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F83B0_ovl9.s")

void func_801F7A08_ovl9(struct GObj *);

void func_801F846C_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F7A08_ovl9);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F84D8_ovl9.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7_2/func_801F86E4_ovl9.s")

