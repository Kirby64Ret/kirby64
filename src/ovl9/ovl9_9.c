#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "buffers.h"
#include "ovl1/ovl1_7.h"
#include "unk_structs/D_800E1B50.h"

extern s32 D_801CC1F0;
extern s32 D_801CC358;

extern FUNCLIST D_8021C654_ovl9;
extern FUNCLIST D_8021C694_ovl9;
extern FUNCLIST D_8021C6A4_ovl9;
extern FUNCLIST D_8021C6A8_ovl9;
extern FUNCLIST D_8021C6B4_ovl9;
extern FUNCLIST D_8021C6EC_ovl9;
extern FUNCLIST D_8021C72C_ovl9;
extern FUNCLIST D_8021C744_ovl9;
extern FUNCLIST D_8021C760_ovl9;
extern FUNCLIST D_8021C784_ovl9;

extern FUNCLIST D_8021C650_ovl9;
void func_800B6B8C(struct GObj *);

void func_801FBAA0_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6B8C;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8021C650_ovl9);
}

void func_801FBB00_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 7, &D_8021C654_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FBB48_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FBC50_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FBD64_ovl9.s")

void func_801FBE70_ovl9(s32 arg0) {
    func_801FCA8C_ovl9();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FBE90_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FBF50_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FC194_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FC234_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FC2B0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FC3C4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FC488_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FC54C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FC6E0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FC820_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FC93C_ovl9.s")

void func_801FCA84_ovl9(s32 arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FCA8C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FCB20_ovl9.s")

extern FUNCLIST D_8021C68C_ovl9;

void func_801FCB88_ovl9(struct GObj *arg0) {
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_8021C68C_ovl9);
}

void func_801FCBCC_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, &D_8021C694_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FCC14_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FCD1C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FCD84_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FCEA8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FCF50_ovl9.s")

void func_801FD078_ovl9(s32 arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FD080_ovl9.s")

void func_801FD108_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_8021C6A4_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FD150_ovl9.s")

void func_801FD1D4_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 1, &D_8021C6A8_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FD21C_ovl9.s")

void func_801FD274_ovl9(s32 arg0) {

}

extern FUNCLIST D_8021C6AC_ovl9;

void func_801FD27C_ovl9(struct GObj *arg0) {
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_8021C6AC_ovl9);
}

void func_801FD2C0_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 7, &D_8021C6B4_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FD308_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FD41C_ovl9.s")

void func_801FD490_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CC1F0;
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    func_800A9EA4(0x10127);
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FD53C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FD5C0_ovl9.s")

void func_801FD2C0_ovl9(struct GObj *);

void func_801FD71C_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FD2C0_ovl9);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FD788_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FD7E4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FD93C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FD9B0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FDAE0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FDB28_ovl9.s")

void func_801FDC7C_ovl9(s32 arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FDC84_ovl9.s")

void func_801FD2C0_ovl9(struct GObj *);

void func_801FDDB4_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FD2C0_ovl9);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FDE20_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FDED0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FDF50_ovl9.s")

void func_801FE100_ovl9(s32 arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FE108_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FE1EC_ovl9.s")

void func_801FE2D8_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 7, &D_8021C6EC_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FE320_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FE434_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FE4A8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FE594_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FE6F4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FE7E0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FE97C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FEAAC_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FEC1C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FECAC_ovl9.s")

void func_801FE2D8_ovl9(struct GObj *);

void func_801FEDA0_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FE2D8_ovl9);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FEE0C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FEE94_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FEF14_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FEFA4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FF028_ovl9.s")

void func_801FF17C_ovl9(s32 arg0) {

}

extern FUNCLIST D_8021C724_ovl9;

void func_801FF184_ovl9(struct GObj *arg0) {
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_8021C724_ovl9);
}

void func_801FF1C8_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_8021C72C_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FF210_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FF2D0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FF368_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FF444_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FF4E8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FF53C_ovl9.s")

void func_801FF1C8_ovl9(struct GObj *);

void func_801FF6B4_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FF1C8_ovl9);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FF720_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FF7E0_ovl9.s")

void func_801FF860_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_8021C744_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FF8A8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FF974_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FF9DC_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FFAD0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FFC60_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FFCE8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FFE78_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_801FFF2C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_8020001C_ovl9.s")

extern FUNCLIST D_8021C75C_ovl9;

void func_80200124_ovl9(struct GObj *arg0) {
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8021C75C_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_80200168_ovl9.s")

void func_802001DC_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, &D_8021C760_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_80200224_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_802002F4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_8020034C_ovl9.s")

void func_802004B8_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800A9EA4(0x10185);
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_80200504_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_8020059C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_802006F0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_80200810_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_80200908_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_80200A88_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_80200B84_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_80200BF8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_80200C80_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_80200DA4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_80200E24_ovl9.s")

extern FUNCLIST D_8021C780_ovl9;

void func_80200E68_ovl9(struct GObj *arg0) {
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8021C780_ovl9);
}

void func_80200EAC_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, &D_8021C784_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_80200EF4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_80201008_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_80201168_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_80201404_ovl9.s")

void func_80201478_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9AA0[omCurrentObj->objId].as_s32 = 1;
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800EA1A0[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CC358;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800A9EA4(0x101A7);
    D_800E64D0[omCurrentObj->objId] = 0.0f;
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_80201540_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_8020165C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_802016A8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_802017F0_ovl9.s")

void func_80200EAC_ovl9(struct GObj *);

void func_802018C0_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80200EAC_ovl9);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_8020192C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_80201984_ovl9.s")

void func_80200EAC_ovl9(struct GObj *);

void func_80201B2C_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80200EAC_ovl9);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_80201B98_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_80201C44_ovl9.s")

void func_80200EAC_ovl9(struct GObj *);

void func_80201D10_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80200EAC_ovl9);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_9/func_80201D7C_ovl9.s")

