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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15_2/func_801E5E10_ovl15.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15_2/func_801E613C_ovl15.s")

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
