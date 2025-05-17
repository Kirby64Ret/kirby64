#include "common.h"
#include "GObj.h"
#include "ovl1/ovl1_6.h"
#include "ovl1_7.h"
#include "ovl1/ovl1_8.h"
#include "unk_structs/D_800DE350.h"

void initTrack(s32);
extern s32 D_800EC9E0;

void func_800AE0F0(void) {
    s32 i;

    for (i = 0; i < 0x70; i++) {
        initTrack(i);
    }
    D_800EC9E0 = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_6/initTrack.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_6/request_job.s")

s32 func_800AEA64(s32 id, s32 minIndex, s32 max_index) {
    s32 idx = request_job(id, minIndex, max_index, NULL, &procMainStub);

    if (idx == -1) {
        return -1;
    }
    D_800E0D50[idx] = (omCurrentObj != NULL) ? omCurrentObj->objId : -1;
    return idx;
}

s32 request_track(u8 goal, s32 id, s32 minIndex, s32 maxIndex) {
    s32 idx;

    switch (goal) {
        case 0:
            idx = request_job(id, minIndex, maxIndex, &func_800B4924, &procMainMove);
            if (idx == -1) {
                return -1;
            }
            break;
        case 1:
            return -1;
        case 2:
            idx = request_job(id, minIndex, maxIndex, &func_800B4AB8, &func_800B158C);
            if (idx == -1) {
                return -1;
            }
            D_800DE350[idx]->unk4C = 0;
            gEntitiesAngleYArray[idx] = 0.0f;
            gEntitiesAngleXArray[idx] = 0.0f;
            break;
    }
    D_800E0D50[idx] = (omCurrentObj != NULL) ? omCurrentObj->objId : -1;
    return idx;
}

// alloc object with id and index range?
s32 request_track_general(s32 id, s32 minIndex, s32 maxIndex) {
    return request_track(0, id, minIndex, maxIndex);
}

s32 request_track_2(s32 id, s32 minIndex, s32 maxIndex) {
    return request_track(1, id, minIndex, maxIndex);
}

s32 request_track_3(s32 id, s32 minIndex, s32 maxIndex) {
    return request_track(2, id, minIndex, maxIndex);
}
