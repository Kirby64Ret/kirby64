#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1_7.h"
#include "ovl1_8.h"
#include "unk_structs/D_800DE350.h"
#include "unk_structs/D_800E1B50.h"

#include "track.h"

void func_800AE0F0(void) {
    s32 i;

    for (i = 0; i < 0x70; i++) {
        initTrack(i);
    }
    D_800EC9E0 = 0;
}

#ifdef NON_MATCHING
void initTrack(s32 track) {
    struct Normal *temp_v1;

    D_800DE350[track] = NULL;
    D_800DD710[track] = -1;
    gEntityGObjProcessArray5[track] = 0;
    gEntityGObjProcessArray4[track] = 0;
    gEntityGObjProcessArray3[track] = 0;
    gEntityGObjProcessArray2[track] = 0;
    gEntityGObjProcessArray[track] = 0;
    D_800DE190[track] = 0;
    D_800DDFD0[track] = 0;
    D_800DDE10[track] = 0;
    gEntityFuncListIDArray[track] = 0;
    D_800DD8D0[track] = 0;
    gEntityRenderPriorityArray[track] = 0x10;
    gEntityTextureAnimationSpeedArray[track] = gameTicksPerDraw;
    gEntityModelAnimationSpeedArray[track] = gameTicksPerDraw;
    D_800E0F10[track] = -1;
    D_800E0D50[track] = -1;
    D_800E0490[track] = NULL;
    D_800E0650[track] = NULL;
    D_800E1B50[track] = 0;
    D_800E1ED0[track] = -1;
    D_800DEDD0[track] = NULL;
    D_800DEF90[track] = NULL;
    D_800DF150[track] = NULL;
    D_800DF850[track].as_u32 = -1;
    D_800DF690[track].as_u32 = -1;
    gEntityGeoDataArray[track] = -1;
    D_800E0110[track] = -1;
    D_800DFF50[track] = -1;
    gEntityGeoFileNameArray[track] = -1;
    D_800DFBD0[track] = -1;
    D_800E2410[track] = 0.0f;
    D_800E2250[track] = 0.0f;
    D_800E2090[track] = 0.0f;
    gEntitiesPosZArray[track] = 0.0f;
    gEntitiesPosYArray[track] = 0.0f;
    gEntitiesPosXArray[track] = 0.0f;
    gEntitiesNextPosZArray[track] = 0.0f;
    gEntitiesNextPosYArray[track] = 0.0f;
    gEntitiesNextPosXArray[track] = 0.0f;
    D_800E3910[track] = 0.0f;
    D_800E3750[track] = 0.0f;
    D_800E3590[track] = 0.0f;
    D_800E33D0[track] = 0.0f;
    D_800E3210[track] = 0.0f;
    D_800E3050[track] = 0.0f;
    D_800E3E50[track] = 65535.0f;
    D_800E3C90[track] = 65535.0f;
    D_800E3AD0[track] = 65535.0f;
    gEntitiesAngleZArray[track] = 0.0f;
    gEntitiesAngleYArray[track] = 0.0f;
    gEntitiesAngleXArray[track] = 0.0f;
    D_800E1450[track] = 0.0f;
    D_800E1290[track] = 0.0f;
    D_800E10D0[track] = 0.0f;
    gEntitiesScaleZArray[track] = 1.0f;
    gEntitiesScaleYArray[track] = 1.0f;
    gEntitiesScaleXArray[track] = 1.0f;
    D_800E5DD0[track] = 0.0f;
    D_800E5C10[track] = 0.0f;
    D_800E5A50[track] = 0.0f;
    D_800E4E10[track] = 0.0f;
    D_800E4C50[track] = 0.0f;
    D_800E4A90[track] = 0.0f;
    D_800E5350[track] = 1.0f;
    D_800E4FD0[track] = D_800E5190[track] = D_800E5350[track];
    D_800E7650[track] = 0;
    D_800E8AE0[track] = 0;
    D_800E8220[track] = 0;
    D_800E83E0[track] = 0;
    D_800E8760[track] = 0;
    D_800E8E60[track] = 0;
    D_800E9020[track] = 0.0f;
    D_800E76C0[track] = 0xFF;
    D_800E7730[track] = 0xFF;
    D_800E77A0[track] = 0xFFFF;
    D_800E7880[track] = 0xFF;
    D_800E78F0[track] = 0;
    D_800E7B20[track] = 0.0f;
    D_800E7CE0[track] = 0;
    D_800EA520[track] = 0;
    D_800EA360[track] = 0;
    D_800EA1A0[track] = 0;
    D_800E9FE0[track].as_u32 = 0;
    D_800E9E20[track] = 0;
    D_800E9C60[track] = 0;
    D_800E9AA0[track].as_u32 = 0;
    D_800E98E0[track] = 0;
    D_800EB320[track] = 0.0f;
    D_800EB160[track] = 0.0f;
    D_800EAFA0[track] = 0.0f;
    D_800EADE0[track] = 0.0f;
    D_800EAC20[track] = 0.0f;
    D_800EAA60[track] = 0.0f;
    D_800EA8A0[track] = 0.0f;
    D_800EA6E0[track] = 0.0f;
    D_800EB6A0[track] = 0;
    D_800EB4E0[track] = 0;
    D_800EBA20[track] = 0.0f;
    D_800EB860[track] = 0.0f;
    D_800EC120[track] = -1;
    D_800EBF60[track] = -1;
    D_800EBDA0[track] = -1;
    D_800EBBE0[track] = -1;
    D_800EC4A0[track] = 0;
    D_800EC2E0[track].as_u32 = 0;
    D_800EC820[track] = 0.0f;
    D_800EC660[track] = 0.0f;
    D_800E6150[track] = -1;
    D_800E5F90[track] = -1;
    D_800E6D90[track] = 0.0f;
    D_800E6BD0[track] = 0.0f;
    D_800E17D0[track] = 0.0f;
    D_800E1610[track] = 0.0f;
    D_800E6A10[track] = 0.0f;
    D_800E6690[track] = 0.0f;
    D_800E64D0[track] = 0.0f;
    temp_v1 = &D_800E6F50[track];
    temp_v1->x = temp_v1->y = temp_v1->z = 0.0f;
    temp_v1->originOffset = 9999.0f;
    D_800E6850[track] = 65535.0f;
    D_800E8CA0[track] = 0;
    D_800E6310[track] = 0;
    D_800E56D0[track] = 0.0f;
    D_800E5510[track] = 0.0f;
    D_800E5890[track] = 0.0f;
    D_800E9720[track] = 0;
    D_800E9560[track] = 0;
    D_800E93A0[track] = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_6/initTrack.s")
#endif

#ifdef MIPS_TO_C

s32 request_job(s32 id, s32 minIndex, s32 maxIndex, void *arg3, void *arg4) {
    GObj *sp34;
    s32 sp28;
    u8 *sp24;
    GObj *temp_v0_2;
    s32 *var_v0;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 var_a1;
    s32 var_a2;
    s32 var_s0;
    s32 var_v0_2;
    s32 var_v1;
    u8 *temp_t0;
    u8 temp_v0;
    u8 var_a0;

    var_a1 = minIndex;
    var_a2 = maxIndex;
    if (var_a1 == -1) {
        var_a1 = 0;
    }
    if (var_a2 == -1) {
        var_a2 = 0x70;
    }
    var_s0 = var_a1;
    if (var_a1 < var_a2) {
        var_v0 = &D_800DD710[var_a1];
loop_6:
        if (*var_v0 != -1) {
            var_s0 += 1;
            var_v0 += 4;
            if (var_s0 != var_a2) {
                goto loop_6;
            }
        }
    }
    if (var_s0 >= var_a2) {
        utilPrintf("Can't request job !!!\n");
        return -1;
    }
    if ((omCurrentObj == NULL) || (temp_v0 = omCurrentObj->link, (temp_v0 == 0x1A)) || (temp_v1 = temp_v0 & 0x18, (temp_v0 == 0x19))) {
        var_v0_2 = 0;
        goto block_18;
    }
    var_v0_2 = temp_v1 + 8;
    if (temp_v1 == 0) {
        var_v0_2 = 8;
        goto block_18;
    }
    if (var_v0_2 >= 0x20) {
        utilPrintf("Job Request Deep OverFlow!!\n");
        return -1;
    }
block_18:
    temp_v1_2 = var_s0 * 4;
    D_800DD710[var_s0] = id;
    temp_t0 = (id * 8) + &D_800D4FD0;
    sp24 = temp_t0;
    sp28 = temp_v1_2;
    temp_v0_2 = HS64_omMakeGObj(var_s0, func_800B0D24, (*temp_t0 + var_v0_2) & 0xFF, 0);
    D_800DE350[var_s0] = temp_v0_2;
    sp34 = temp_v0_2;
    *(&gEntityGObjProcessArray + temp_v1_2) = omCreateProcess(temp_v0_2, sp24->unk4, 0, 3);
    var_v1 = temp_v1_2;
    *(&gEntityGObjProcessArray2 + var_v1) = omCreateProcess(sp34, &func_800B0D90, 1, 3);
    var_a0 = sp24->unk1;
    if (var_a0 & 1) {
        sp28 = var_v1;
        *(&gEntityGObjProcessArray3 + var_v1) = omCreateProcess(sp34, &objSleepForever, 0, 2);
        var_a0 = sp24->unk1;
    }
    if (var_a0 & 2) {
        sp28 = var_v1;
        *(&gEntityGObjProcessArray4 + var_v1) = omCreateProcess(sp34, &func_800B1870, 1, 1);
    }
    sp28 = var_v1;
    *(&gEntityGObjProcessArray5 + var_v1) = omCreateProcess(sp34, arg4, 1, 0);
    *(D_800DD8D0 + var_v1) = 0;
    *(D_800DDA90 + var_v1) = sp34->link;
    *(D_800DF150 + var_v1) = 0;
    if (arg3 != NULL) {
        *(D_800DEF90 + var_v1) = arg3;
    } else {
        *(D_800DEF90 + var_v1) = 0;
    }
    sp34->onAnimate = func_800B0F28;
    *(D_800DEDD0 + var_v1) = 0;
    *(D_800DF310 + var_v1) = 0;
    return var_s0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_6/request_job.s")
#endif

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
