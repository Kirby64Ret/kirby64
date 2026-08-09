#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "unk_structs/D_800E1B50.h"

extern FUNCLIST D_8021BF1C_ovl9;
extern FUNCLIST D_8021BF64_ovl9;
extern FUNCLIST D_8021C008_ovl9;
extern FUNCLIST D_8021C054_ovl9;

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E5720_ovl9.s")

extern FUNCLIST D_8021BEF0_ovl9;

void func_801E5858_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 11, D_8021BEF0_ovl9);
    }
}

extern s32 D_801C8838_ovl7[];
void func_800AFBB4(s32, struct GObj *);

void func_801E58D8_ovl9(GObj *arg0) {
    func_800AFBB4(1, omCurrentObj);
    D_800E1B50[omCurrentObj->objId]->unk8C = D_801C8838_ovl7;
    if (D_800E8920[omCurrentObj->objId] == 1) { gEntityFuncListIDArray[omCurrentObj->objId] = 4; } else { gEntityFuncListIDArray[omCurrentObj->objId] = 6; }
}

void func_801E5974_ovl9(GObj *arg0) {
    func_800AFBB4(1, omCurrentObj);
    D_800E1B50[omCurrentObj->objId]->unk8C = D_801C8838_ovl7;
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    } else {
        *(u32 *) &gEntityFuncListIDArray[omCurrentObj->objId] = 1;
    }
}

extern s32 D_801C8838_ovl7[];

void func_801E5A0C_ovl9(GObj *arg0) {
    D_800E1B50[omCurrentObj->objId]->unk8C = D_801C8838_ovl7;
    D_800E8920[omCurrentObj->objId] = 1;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0xA;
}

void func_801E5A74_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 11, &D_8021BF1C_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E5ABC_ovl9.s")

extern s32 D_800BE4EC;
void func_801E5D2C_ovl9(void);
void func_801E5DE0_ovl9(void);
void func_8019F410_ovl7(struct DObj *);

void func_801E5C8C_ovl9(void) {
    switch (D_800E7880[omCurrentObj->objId]) {
    case 0:
    case 1:
    case 3:
        func_801E5D2C_ovl9();
        break;
    case 2:
        if ((D_800BE4EC & 1) == (omCurrentObj->objId & 1)) {
            func_801E5DE0_ovl9();
        } else {
            func_8019F410_ovl7(D_800DFBD0[omCurrentObj->objId][1]);
        }
        break;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E5D2C_ovl9.s")

void func_8019B2C0_ovl7(s32);
void func_801A0D74_ovl7();

void func_801E5DE0_ovl9(void) {
    f32 temp;

    func_801A0D74_ovl7();
    func_8019B2C0_ovl7(1);
    temp = D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.x;
    D_800DFBD0[omCurrentObj->objId][1]->pos.v.y = ((temp < 0.0f) ? -temp : temp) * 10.0f;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E5E70_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E5FC4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E6088_ovl9.s")

extern s32 D_800BE4EC;
void func_801E5D2C_ovl9(void);
void func_801E5DE0_ovl9(void);
void func_8019F410_ovl7(struct DObj *);

void func_801E6168_ovl9(void) {
    switch (D_800E7880[omCurrentObj->objId]) {
    case 0:
    case 1:
    case 3:
        func_801E5D2C_ovl9();
        break;
    case 2:
        if ((D_800BE4EC & 1) == (omCurrentObj->objId & 1)) {
            func_801E5DE0_ovl9();
        } else {
            func_8019F410_ovl7(D_800DFBD0[omCurrentObj->objId][1]);
        }
        break;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E6208_ovl9.s")

extern s32 D_800BE4EC;
void func_801E5D2C_ovl9(void);
void func_801E5DE0_ovl9(void);
void func_8019F410_ovl7(struct DObj *);

void func_801E6394_ovl9(void) {
    switch (D_800E7880[omCurrentObj->objId]) {
    case 0:
    case 1:
    case 3:
        func_801E5D2C_ovl9();
        break;
    case 2:
        if ((D_800BE4EC & 1) == (omCurrentObj->objId & 1)) {
            func_801E5DE0_ovl9();
        } else {
            func_8019F410_ovl7(D_800DFBD0[omCurrentObj->objId][1]);
        }
        break;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E6434_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E65A4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E6648_ovl9.s")

extern s32 D_800BE4EC;
void func_801E5D2C_ovl9(void);
void func_801E5DE0_ovl9(void);
void func_8019F410_ovl7(struct DObj *);

void func_801E67A0_ovl9(void) {
    switch (D_800E7880[omCurrentObj->objId]) {
    case 0:
    case 1:
    case 3:
        func_801E5D2C_ovl9();
        break;
    case 2:
        if ((D_800BE4EC & 1) == (omCurrentObj->objId & 1)) {
            func_801E5DE0_ovl9();
        } else {
            func_8019F410_ovl7(D_800DFBD0[omCurrentObj->objId][1]);
        }
        break;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E6840_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E6BD4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E6C98_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E6D50_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E6F9C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E7060_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E7170_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E7320_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E73C4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E7628_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E76EC_ovl9.s")

void func_801E7944_ovl9(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E794C_ovl9.s")

void func_800AFBB4(s32, struct GObj *);

void func_801E79F4_ovl9(GObj *arg0) {
    func_800AFBB4(0, omCurrentObj);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E7A20_ovl9.s")

extern FUNCLIST D_8021BF50_ovl9;

void func_801E7BB8_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, D_8021BF50_ovl9);
    }
}

void func_801E7C38_ovl9(GObj *arg0) {
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        return;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

void func_801E7C88_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 2, &D_8021BF64_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E7CD0_ovl9.s")

void func_801A0D74_ovl7();
void func_8019F3B0_ovl7(void);

void func_801E7F0C_ovl9(void) {
    func_801A0D74_ovl7();
    func_8019F3B0_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E7F34_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E8290_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E8484_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E85CC_ovl9.s")

extern s32 D_801C8880_ovl7[];
extern s32 D_801C88C8[];
void func_801A0D74_ovl7();
void func_8019F3B0_ovl7(void);
void func_8019F9D0_ovl7(s32);

void func_801E87C0_ovl9(void) {
    func_801A0D74_ovl7();
    D_800E1B50[omCurrentObj->objId]->unk8C = D_801C8880_ovl7;
    func_8019F3B0_ovl7();
    if (D_800E83E0[omCurrentObj->objId] == 0) {
        if (D_800E9AA0[omCurrentObj->objId].as_s32 != 0) {
            D_800E1B50[omCurrentObj->objId]->unk8C = D_801C88C8;
            func_8019F9D0_ovl7(0);
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E8860_ovl9.s")

extern FUNCLIST D_8021BFFC_ovl9;

void func_801E89B8_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, D_8021BFFC_ovl9);
    }
}

void func_801E8A38_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_8021C008_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E8A80_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E8C7C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E8DD0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E8EC8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E8F74_ovl9.s")

void func_801E92DC_ovl9(void);

void func_801E9298_ovl9(void) {
    if (D_800E7880[omCurrentObj->objId] == 0xB) {
        func_801E92DC_ovl9();
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E92DC_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E9648_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E9724_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E979C_ovl9.s")

extern struct GObjProcess *gEntityGObjProcessArray[];
void func_801E89B8_ovl9(struct GObj *);

void func_801E9928_ovl9(GObj *arg0) {
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        if (D_800E8920[omCurrentObj->objId] == 0) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 1;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E89B8_ovl9);
        }
    }
}

extern struct GObjProcess *gEntityGObjProcessArray[];
void func_801E89B8_ovl9(struct GObj *);

void func_801E99A8_ovl9(GObj *arg0) {
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        if (D_800E8920[omCurrentObj->objId] == 1) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 0;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E89B8_ovl9);
        }
    }
}

extern f32 D_8021D154_ovl9;

void func_801E9A28_ovl9(GObj *arg0) {
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        if (D_800E8AE0[omCurrentObj->objId] & 1) {
            D_800E3750[omCurrentObj->objId] = D_8021D154_ovl9;
            D_800E3C90[omCurrentObj->objId] = 5.0f;
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E9AA0_ovl9.s")

extern FUNCLIST D_8021C04C_ovl9;

void func_801E9C98_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, D_8021C04C_ovl9);
    }
}

void func_801E9D18_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 2, &D_8021C054_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E9D60_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801E9F08_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801EA048_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801EA190_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801EA2F8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801EA628_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801EA9A0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_5/func_801EAB4C_ovl9.s")

