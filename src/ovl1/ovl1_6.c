#include "common.h"
#include "GObj.h"
#include "ovl1/ovl1_6.h"
#include "ovl1_7.h"
#include "ovl1_8.h"
#include "unk_structs/D_800DE350.h"
#include "unk_structs/D_800E1B50.h"

#include "buffers.h"

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
    f32 lifeline, l2;
    s32 negOne;
    struct Normal *temp_v1;

    negOne = -1;
    D_800DE350[track] = 0;
    *(s32 *) &D_800DD710[track] = negOne;

    gEntityGObjProcessArray[track] = gEntityGObjProcessArray2[track] =
    gEntityGObjProcessArray3[track] = gEntityGObjProcessArray4[track] =
    gEntityGObjProcessArray5[track] = NULL;

    D_800DDE10[track] = D_800DDFD0[track] = D_800DE190[track] = 0;
    gEntityFuncListIDArray[track] = 0;
    D_800DD8D0[track] = 0;
    gEntityRenderPriorityArray[track] = 0x10;
    
    D_800E09D0[track] = D_800E0B90[track] = gameTicksPerDraw;
    
    D_800E0D50[track] = D_800E0F10[track] = negOne;
    D_800E0490[track] = 0;
    D_800E0650[track] = NULL;
    D_800E1B50[track] = NULL;
    D_800E1ED0[track] = negOne;
    D_800DEDD0[track] = 0;
    D_800DEF90[track] = NULL;
    D_800DF150[track] = NULL;

#ifdef PORT
    /* LP64: the N64 line below does 8-byte pointer stores through two arrays
     * whose entries the rest of the code treats as 4-byte u32 slots.
     * Through D_800DF850 (u32[]) that clobbers the NEXT track's entry, and
     * through D_800DF690's union it fills the slot's high half with
     * 0xFFFFFFFF -- which every later `.as_u32p` deref picks up on top of a
     * 32-bit block pointer stored via `.as_u32` (measured fault:
     * as_u32p == 0xffffffff0150a0a8 in func_800A9F98). Store each slot at
     * its own width; the union's high half stays zero, so 8-byte .as_u32p
     * reads of a 32-bit game-arena pointer are exact. */
    gSegment4StartArray[track] = (u32 *) -1;
    D_800DF690[track].as_u32 = -1;
    D_800DF850[track] = -1;
#else
    gSegment4StartArray[track] = D_800DF690[track].as_u32p = *(u32 **) &D_800DF850[track] = (u32 *) -1;
#endif

    *(u32 *) &D_800E02D0[track] = *(u32 *) &D_800DFF50[track] = *(u32 *) &D_800E0110[track] = -1;

    D_800DFBD0[track] = (struct DObj **) -1;

    

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
    D_800EC120[track] = negOne;
    D_800EBF60[track] = negOne;
    D_800EBDA0[track] = negOne;
    D_800EBBE0[track] = negOne;
    D_800EC4A0[track] = 0;
    D_800EC2E0[track].as_s32 = 0;
    D_800EC820[track] = 0.0f;
    D_800EC660[track] = 0.0f;
    D_800E6150[track] = negOne;
    D_800E5F90[track] = negOne;
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
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_6/initTrack.s")
#endif
void func_800B0F28(void);
void objSleepForever(struct GObj *arg0);
s32 func_800B0D90(void *arg0);
void func_800B1870(s32 arg0);
void func_800B0D24(s32 arg0);

struct UnkStruct800D4FD0 {
    u8 overlayIdx;
    u8 flags;
    void (*updateFunc)(void);
};

extern struct UnkStruct800D4FD0 D_800D4FD0[];

s32 request_job(s32 id, s32 minIndex, s32 max_index, void *arg3, void *userMain) {
    struct GObj *gobj;
    s32 i;
    s32 v0;

    if (minIndex == -1) {
        minIndex = 0;
    }
    if (max_index == -1) {
        max_index = 0x70;
    }
    for (i = minIndex; (u32) i < (u32) max_index; i++) {
        if (D_800DD710[i] == -1) {
            break;
        }
    }

    if ((u32) i >= (u32) max_index) {
        utilPrintf("Can't request job !!!\n");
        return -1;
    }
    if ((omCurrentObj == NULL) || (omCurrentObj->link == 0x1A) || (omCurrentObj->link == 0x19)) {
        v0 = 0;
    } else if ((omCurrentObj->link & 0x18) == 0) {
        v0 = 8;
    } else {
        v0 = (omCurrentObj->link & 0x18) + 8;
        if (v0 >= 32) {
            utilPrintf("Job Request Deep OverFlow!!\n");
            return -1;
        }
    }

    D_800DD710[i] = id;
#ifdef PORT
    /* D_800D4FD0 is part of a widened pointer-array emission (one 8-byte
     * cell per N64 word): each row is {value-preserving u32 word, update
     * callback pointer}. Reading it through the N64 byte-offset struct
     * takes overlayIdx/flags from the wrong end of the little-endian cell
     * -- flags came back 0, so the player's gEntityGObjProcessArray3/4
     * were never created and the ovl3 player init dereferenced NULL. Read
     * the row the widened way instead. */
    {
        void **pcRow = (void **) D_800D4FD0 + (id * 2);
        u32 pcW0 = (u32) (uintptr_t) pcRow[0];

        D_800DE350[i] = gobj =
            HS64_omMakeGObj(i, func_800B0D24, (u8) ((pcW0 >> 24) + v0), 0);
        gEntityGObjProcessArray[i] =
            omCreateProcess(gobj, (void (*)(void)) pcRow[1], 0, 3);
        gEntityGObjProcessArray2[i] = omCreateProcess(gobj, func_800B0D90, 1, 3);
        if ((pcW0 >> 16) & 1) {
            gEntityGObjProcessArray3[i] = omCreateProcess(gobj, objSleepForever, 0, 2);
        }
        if ((pcW0 >> 16) & 2) {
            gEntityGObjProcessArray4[i] = omCreateProcess(gobj, func_800B1870, 1, 1);
        }
    }
#else
    D_800DE350[i] = gobj = HS64_omMakeGObj(i, func_800B0D24, D_800D4FD0[id].overlayIdx + v0, 0);
    gEntityGObjProcessArray[i] = omCreateProcess(gobj, D_800D4FD0[id].updateFunc, 0, 3);
    gEntityGObjProcessArray2[i] = omCreateProcess(gobj, func_800B0D90, 1, 3);
    if (D_800D4FD0[id].flags & 1) {
        gEntityGObjProcessArray3[i] = omCreateProcess(gobj, objSleepForever, 0, 2);
    }
    if (D_800D4FD0[id].flags & 2) {
        gEntityGObjProcessArray4[i] = omCreateProcess(gobj, func_800B1870, 1, 1);
    }
#endif
    gEntityGObjProcessArray5[i] = omCreateProcess(gobj, userMain, 1, 0);
    D_800DD8D0[i] = 0;
    D_800DDA90[i] = gobj->link;
    D_800DF150[i] = NULL;
    if (arg3 != 0) {
        D_800DEF90[i] = arg3;
    } else {
        D_800DEF90[i] = 0;
    }
    gobj->onAnimate = func_800B0F28;
    D_800DEDD0[i] = 0;
    D_800DF310[i] = 0;
    return i;
}

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
