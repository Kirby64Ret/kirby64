#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "DObj.h"
#include "sounds.h"
#include "main/lbvector.h"
#include "main/object_helpers.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/track.h"
#include "ovl1/util.h"
#include "ovl2/ovl2_3.h"
#include "ovl2/ovl2_8.h"
#include "unk_structs/D_800D7098.h"
#include "unk_structs/D_800DE350.h"
#include "unk_structs/D_800E1B50.h"
#include "unk_structs/D_80129114.h"
#include "buffers.h"

#include "ovl15.h"

/* D_801E6920_ovl15 = 65535.0f : now emitted by this TU */
void func_801E6074_ovl15(void);

void func_801E5E10_ovl15(struct GObj *arg0) {
    struct EnemyRecord *sp1C = D_800E1B50[omCurrentObj->objId];

    D_800EC660[omCurrentObj->objId] = 40.0f;
    D_800EC820[omCurrentObj->objId] = 0.0f;
    func_801ABBA0_ovl7(arg0);
    D_800DF150[omCurrentObj->objId] = func_801E6074_ovl15;
    sp1C->unk48 = func_8010C274;
    sp1C->unk98 = &D_801CB56C_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AA018(0x00010530);
    /* the one-line if/else is load-bearing: expanding it swaps two lui's */
    if ((D_800E8AE0[D_800E0D50[omCurrentObj->objId]] & 6) != 0) { D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 1.75f; D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.25f; D_800E6850[omCurrentObj->objId] = 7.0f; } else { D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 3.5f; D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.5f; D_800E6850[omCurrentObj->objId] = 14.0f; }
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    ohSleep(0x3C);
    func_801AC364_ovl7(arg0);
}


void func_801E6074_ovl15(void) {
    s32 temp_v1;

    temp_v1 = D_800E83E0[omCurrentObj->objId];
    if (temp_v1 != 0) {
        if (temp_v1 == 0x12) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801AC33C_ovl7);
            return;
        }
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801AC364_ovl7);
        return;
    }
    if (func_801A0D74_ovl7() != 0) {
        func_801A3938(&D_801CB044_ovl7);
        func_801A36CC(&func_801A3864_ovl7);
    }
    func_80111C4C(func_801117BC(&D_801CA738_ovl7, omCurrentObj->objId));
}

/* D_801E6924_ovl15 = 65535.0f : now emitted by this TU */
void func_801E6374_ovl15(struct GObj *);

void func_801E613C_ovl15(struct GObj *arg0) {
    struct EnemyRecord *sp1C = D_800E1B50[omCurrentObj->objId];

    D_800EC660[omCurrentObj->objId] = 40.0f;
    D_800EC820[omCurrentObj->objId] = 0.0f;
    func_801ABBA0_ovl7(arg0);
    D_800DF150[omCurrentObj->objId] = func_801E6374_ovl15;
    sp1C->unk48 = func_8010C274;
    sp1C->unk98 = &D_801CB56C_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    if ((D_800E8AE0[D_800E0D50[omCurrentObj->objId]] & 6) != 0) {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 1.75f;
        D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.25f;
        D_800E6850[omCurrentObj->objId] = 7.0f;
    } else {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 3.5f;
        D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.5f;
        D_800E6850[omCurrentObj->objId] = 14.0f;
    }
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    ohSleep(0x3C);
    func_801AC364_ovl7(arg0);
}


void func_801E6374_ovl15(struct GObj *arg0) {
    s32 temp_v1;

    temp_v1 = D_800E83E0[omCurrentObj->objId];
    if (temp_v1 != 0) {
        if (temp_v1 == 0x12) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801AC33C_ovl7);
            return;
        }
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801AC364_ovl7);
        return;
    }
    func_801AB008_ovl7();
    if (func_801A0D74_ovl7(arg0) != 0) {
        func_801A3938(&D_801CB044_ovl7);
        func_801A36CC(&func_801A3864_ovl7);
    }
    func_80111C4C(func_801117BC(&D_801CA738_ovl7, omCurrentObj->objId));
}
