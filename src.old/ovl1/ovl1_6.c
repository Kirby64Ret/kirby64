#include <ultra64.h>
#include <macros.h>
#include "buffers.h"

#include "ovl1_6.h"
#include "GObj.h"
#include "unk_structs/D_800DE350.h"
#include "unk_structs/D_800E1B50.h"

void initTrack(s32);
extern s32 D_800EC9E0; 
void func_800AE0F0(void) {
    s32 i;

    for (i = 0; i < 0x70; i++) {
        initTrack(i);
    }
    D_800EC9E0 = 0;
}

// https://decomp.me/scratch/0l2Df
#ifdef NON_MATCHING
void initTrack(s32 track) {
    f32 lifeline, l2;
    
    struct Normal *temp_v1;

    D_800DE350[track] = 0;
    D_800DD710[track] = -1;

    gEntityGObjProcessArray[track] = gEntityGObjProcessArray2[track] =
    gEntityGObjProcessArray3[track] = gEntityGObjProcessArray4[track] =
    gEntityGObjProcessArray5[track] = NULL;

    D_800DDE10[track] = D_800DDFD0[track] = D_800DE190[track] = 0;
    gEntityFuncListIDArray[track] = 0;
    D_800DD8D0[track] = 0;
    gEntityRenderPriorityArray[track] = 0x10;
    
    D_800E09D0[track] = D_800E0B90[track] = D_800D6B10;
    
    D_800E0D50[track] = D_800E0F10[track] = -1;
    D_800E0490[track] = 0;
    D_800E0650[track] = NULL;
    D_800E1B50[track] = NULL;
    D_800E1ED0[track] = -1;
    D_800DEDD0[track] = 0;
    D_800DEF90[track] = NULL;
    D_800DF150[track] = NULL;

    gSegment4StartArray[track] = (void *) (D_800DF690[track] = D_800DF850[track] = -1);

    D_800E02D0[track] = D_800DFF50[track] = D_800E0110[track] = -1 + 1 - 1;

    D_800DFBD0[track] = (void *)-1;

    

    l2 = 0.0f;
    // monster block        
    D_800E3050[track] = D_800E3210[track] = D_800E33D0[track] =
    D_800E3590[track] = D_800E3750[track] = D_800E3910[track] =
    gEntitiesNextPosXArray[track] = gEntitiesNextPosYArray[track] = gEntitiesNextPosZArray[track] =
    gEntitiesPosXArray[track] = gEntitiesPosYArray[track] = gEntitiesPosZArray[track] =
    D_800E2090[track] = D_800E2250[track] = D_800E2410[track] =
        0.0f;
    
    D_800E3AD0[track] = D_800E3C90[track] = D_800E3E50[track] = 65535.0f;


    lifeline = 1.0f;
    // D_800E10D0[track] = D_800E1290[track] = D_800E1450[track] =
    // gEntitiesAngleXArray[track] = gEntitiesAngleYArray[track] = gEntitiesAngleZArray[track] = 0.0f;
    gEntitiesAngleZArray[track] = l2;
    gEntitiesAngleYArray[track] = l2;
    gEntitiesAngleXArray[track] = l2;

    D_800E10D0[track] = D_800E1290[track] = D_800E1450[track] = 0.0f;
        
    gEntitiesScaleZArray[track] = lifeline;
    gEntitiesScaleYArray[track] = lifeline;
    gEntitiesScaleXArray[track] = lifeline;

    // gEntitiesScaleXArray[track] = gEntitiesScaleYArray[track] = gEntitiesScaleZArray[track] = lifeline;
    

    D_800E4A90[track] = D_800E4C50[track] = D_800E4E10[track] =
    D_800E5A50[track] = D_800E5C10[track] = D_800E5DD0[track] = 0.0f;

    // float array
    D_800E5350[track] = 1;
    if (1) {
        D_800E4FD0[track] = D_800E5190[track] = D_800E5350[track];
    }

    D_800E7650[track] = 0;
    D_800E8AE0[track] = 0.0f;
    D_800E8220[track] = 0.0f;
    D_800E83E0[track] = 0.0f;
    D_800E8760[track] = 0.0f;
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
    D_800E9FE0[track].as_s32 = 0;
    D_800E9E20[track] = 0;
    D_800E9C60[track] = 0;
    D_800E9AA0[track] = NULL;
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
    D_800EC2E0[track].as_s32 = 0;
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
    
    D_800E5890[track] = D_800E5510[track] = D_800E56D0[track] = 0.0f;
    D_800E93A0[track] = D_800E9560[track] = D_800E9720[track] = 0;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_6/initTrack.s")
#endif

struct GObjProcess *omCreateProcess(s32 arg0, s32 arg1, u8 arg2, u32 arg3);
struct GObj *func_8000A180(s32 arg0, s32 arg1, u8 arg2, u32 arg3);
void func_800B0F28(void);
extern u32 D_800DDA90[];
s32 func_800B0D90(void *arg0);
void func_800B1878(s32 arg0);
void func_800B1870(s32 arg0);
void func_800B0D24(s32 arg0);
extern const char D_800D66C0[];
extern const char D_800D66D8[];

struct UnkStruct800D4FD0 {
        u8 unk0[4];
        void (*unk4)(void);
    };

extern struct UnkStruct800D4FD0 D_800D4FD0[];

// https://decomp.me/scratch/zbl2m
#ifdef NON_MATCHING
s32 request_job(s32 id, s32 minIndex, u32 max_index, void (*arg3)(), void (*userMain)()) {
    struct GObj *gobj;
    s32 v0;

    s32 why_do_i_need_to_make_this_constant_folding_explicit = -1;
    // clamp to bounds if not provided
    if (minIndex == why_do_i_need_to_make_this_constant_folding_explicit) {
        minIndex = 0;
    }
    if (max_index == why_do_i_need_to_make_this_constant_folding_explicit) {
        max_index = 0x70;
    }
    if (minIndex < max_index) {
        do {
            if (D_800DD710[minIndex] == -1) break;
        } while (++minIndex != max_index);
    }

    if (minIndex >= max_index) {
        utilPrintf("Can't request job !!!\n");
        return -1;
    }
    if ((omCurrentObj == NULL) || (omCurrentObj->link == 0x1A) || (omCurrentObj->link == 0x19)) {
        v0 = 0;
    }
    else if ((omCurrentObj->link & 0x18) == 0) {
        v0 = 8;
    }
    else {
        v0 = (omCurrentObj->link & 0x18);
        if (v0 + 8 >= 32) {
            utilPrintf("Job Request Deep OverFlow!!\n");
            return -1;
        }
    }

    D_800DD710[minIndex] = id;
    D_800DE350[minIndex] =
    gobj = HS64_omMakeGObj(minIndex, func_800B0D24, D_800D4FD0[id].unk0[0] + v0, 0);
    // D_800DE350[minIndex] = gobj;
                                    gEntityGObjProcessArray[minIndex]= omCreateProcess(gobj, D_800D4FD0[id].unk4, 0, 3);
                                    gEntityGObjProcessArray2[minIndex]= omCreateProcess(gobj, func_800B0D90, 1, 3);
    if (D_800D4FD0[id].unk0[1] & 1) gEntityGObjProcessArray3[minIndex]= omCreateProcess(gobj, objSleepForever, 0, 2);
    if (D_800D4FD0[id].unk0[1] & 2) gEntityGObjProcessArray4[minIndex] = omCreateProcess(gobj, func_800B1870, 1, 1);
                                    gEntityGObjProcessArray5[minIndex] = omCreateProcess(gobj, userMain, 1, 0);
    D_800DD8D0[minIndex] = 0;
    D_800DDA90[minIndex] = gobj->link;
    D_800DF150[minIndex] = NULL;
    if (arg3 != 0) {
        D_800DEF90[minIndex] = arg3;
    } else {
        D_800DEF90[minIndex] = 0;
    }
    gobj->unk48 = func_800B0F28;
    D_800DEDD0[minIndex] = 0;
    D_800DF310[minIndex] = 0;
    return minIndex;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_6/func_800AE7A8.s")
#endif

extern void procMainStub(void);
s32 func_800AEA64(s32 id, s32 minIndex, s32 max_index) {
    s32 idx = request_job(id, minIndex, max_index, NULL, &procMainStub);

    if (idx == -1) {
        return -1;
    }
    D_800E0D50[idx] = (omCurrentObj != NULL) ? omCurrentObj->objId : -1;
    return idx;
}

extern void func_800B4924(void);
extern void procMainMove(void);
extern void func_800B4AB8(void);
extern void func_800B158C(void);

// todo: should this really be a define?
#define FAIL -1

s32 request_track(u8 arg0, s32 id, s32 minIndex, s32 maxIndex) {
    s32 idx;

    switch (arg0) {
        case 0:
            idx = request_job(id, minIndex, maxIndex, &func_800B4924, &procMainMove);
            if (idx == FAIL) {
                return FAIL;
            }
            break;
        case 1:
            return FAIL;
        case 2:
            idx = request_job(id, minIndex, maxIndex, &func_800B4AB8, &func_800B158C);
            if (idx == FAIL) {
                return FAIL;
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

s32 func_800AEC3C(s32 id, s32 minIndex, s32 maxIndex) {
    return request_track(1, id, minIndex, maxIndex);
}

u32 func_800AEC70(s32 id, s32 minIndex, s32 maxIndex) {
    return request_track(2, id, minIndex, maxIndex);
}

