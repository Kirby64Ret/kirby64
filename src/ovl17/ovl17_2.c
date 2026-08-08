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

#include "ovl17.h"

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_2/func_801DD8F0_ovl17.s")

void func_801DD920_ovl17(struct GObj *arg0) {
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, D_801E5400_ovl17);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_2/func_801DD964_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_2/func_801DDB8C_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_2/func_801DDC40_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_2/func_801DDD38_ovl17.s")

void func_801DDF24_ovl17(struct GObj *arg0) {
    struct DObj *temp_v0;

    temp_v0 = D_800DFBD0[omCurrentObj->objId][0x19];
    if ((D_800E9AA0[omCurrentObj->objId] == NULL) && (temp_v0 != NULL)) {
        temp_v0->flags = 0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_2/func_801DDF6C_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_2/func_801DE104_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_2/func_801DE214_ovl17.s")

void func_801DE3D4_ovl17(struct GObj *arg0) {
    struct DObj *temp_v0;

    temp_v0 = D_800DFBD0[omCurrentObj->objId][0x19];
    if (temp_v0 != NULL) {
        temp_v0->flags = 0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_2/func_801DE40C_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_2/func_801DE74C_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_2/func_801DE850_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_2/func_801DE9A8_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_2/func_801DEA5C_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_2/func_801DF768_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_2/func_801DFABC_ovl17.s")

void func_801E069C_ovl17(void) {
    struct DObj *temp_v0;
    s32 temp_a0;

    temp_v0 = D_800DFBD0[omCurrentObj->objId][0x1E];
    if (temp_v0 != NULL) {
        temp_a0 = D_800EA1A0[omCurrentObj->objId];
        if (temp_a0 <= 0) {
            temp_v0->scale.v.y = 0.0f;
            return;
        }
        temp_v0->scale.v.y = temp_a0 * 0.1f;
    }
}

void func_801E0704_ovl17(void) {
    struct DObj *temp_v0;

    temp_v0 = D_800DFBD0[omCurrentObj->objId][0x1D];
    if (temp_v0 != NULL) {
        temp_v0->flags = 2;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_2/func_801E073C_ovl17.s")

void func_801E0A74_ovl17(void) {
    s32 temp_v0;

    temp_v0 = request_track_general(0x19, 0x1E, 0x50);
    D_800E76C0[temp_v0] = 0xFF;
    D_800E7730[temp_v0] = 2;
    D_800E77A0[temp_v0] = 6;
    D_800E7880[temp_v0] = 0;
    gEntitiesNextPosXArray[temp_v0] = 0.0f;
    gEntitiesPosXArray[temp_v0] = 0.0f;
    gEntitiesNextPosYArray[temp_v0] = 0.0f;
    gEntitiesPosYArray[temp_v0] = 0.0f;
    gEntitiesNextPosZArray[temp_v0] = 0.0f;
    gEntitiesPosZArray[temp_v0] = 0.0f;
    D_800E8E60[temp_v0] = 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_2/func_801E0B38_ovl17.s")
