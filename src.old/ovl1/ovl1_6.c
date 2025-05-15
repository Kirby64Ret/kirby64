#include <ultra64.h>
#include <macros.h>
#include "buffers.h"

#include "ovl1_6.h"
#include "D_8004A7C4.h"
#include "unk_structs/D_800DE350.h"
#include "unk_structs/D_800E1B50.h"

void func_800AE138(s32);
extern s32 D_800EC9E0; 
void func_800AE0F0(void) {
    s32 i;

    for (i = 0; i < 0x70; i++) {
        func_800AE138(i);
    }
    D_800EC9E0 = 0;
}

// https://decomp.me/scratch/0l2Df
#ifdef NON_MATCHING
void func_800AE138(s32 arg0) {
    f32 lifeline, l2;
    
    struct Normal *temp_v1;

    D_800DE350[arg0] = 0;
    D_800DD710[arg0] = -1;

    gEntityGObjProcessArray[arg0] = gEntityGObjProcessArray2[arg0] =
    gEntityGObjProcessArray3[arg0] = gEntityGObjProcessArray4[arg0] =
    gEntityGObjProcessArray5[arg0] = NULL;

    D_800DDE10[arg0] = D_800DDFD0[arg0] = D_800DE190[arg0] = 0;
    gEntityVtableIndexArray[arg0] = 0;
    D_800DD8D0[arg0] = 0;
    D_800E0810[arg0] = 0x10;
    
    D_800E09D0[arg0] = D_800E0B90[arg0] = D_800D6B10;
    
    D_800E0D50[arg0] = D_800E0F10[arg0] = -1;
    D_800E0490[arg0] = 0;
    D_800E0650[arg0] = NULL;
    D_800E1B50[arg0] = NULL;
    D_800E1ED0[arg0] = -1;
    D_800DEDD0[arg0] = 0;
    D_800DEF90[arg0] = NULL;
    D_800DF150[arg0] = NULL;

    gSegment4StartArray[arg0] = (void *) (D_800DF690[arg0] = D_800DF850[arg0] = -1);

    D_800E02D0[arg0] = D_800DFF50[arg0] = D_800E0110[arg0] = -1 + 1 - 1;

    D_800DFBD0[arg0] = (void *)-1;

    

    l2 = 0.0f;
    // monster block        
    D_800E3050[arg0] = D_800E3210[arg0] = D_800E33D0[arg0] =
    D_800E3590[arg0] = D_800E3750[arg0] = D_800E3910[arg0] =
    gEntitiesNextPosXArray[arg0] = gEntitiesNextPosYArray[arg0] = gEntitiesNextPosZArray[arg0] =
    gEntitiesPosXArray[arg0] = gEntitiesPosYArray[arg0] = gEntitiesPosZArray[arg0] =
    D_800E2090[arg0] = D_800E2250[arg0] = D_800E2410[arg0] =
        0.0f;
    
    D_800E3AD0[arg0] = D_800E3C90[arg0] = D_800E3E50[arg0] = 65535.0f;


    lifeline = 1.0f;
    // D_800E10D0[arg0] = D_800E1290[arg0] = D_800E1450[arg0] =
    // gEntitiesAngleXArray[arg0] = gEntitiesAngleYArray[arg0] = gEntitiesAngleZArray[arg0] = 0.0f;
    gEntitiesAngleZArray[arg0] = l2;
    gEntitiesAngleYArray[arg0] = l2;
    gEntitiesAngleXArray[arg0] = l2;

    D_800E10D0[arg0] = D_800E1290[arg0] = D_800E1450[arg0] = 0.0f;
        
    gEntitiesScaleZArray[arg0] = lifeline;
    gEntitiesScaleYArray[arg0] = lifeline;
    gEntitiesScaleXArray[arg0] = lifeline;

    // gEntitiesScaleXArray[arg0] = gEntitiesScaleYArray[arg0] = gEntitiesScaleZArray[arg0] = lifeline;
    

    D_800E4A90[arg0] = D_800E4C50[arg0] = D_800E4E10[arg0] =
    D_800E5A50[arg0] = D_800E5C10[arg0] = D_800E5DD0[arg0] = 0.0f;

    // float array
    D_800E5350[arg0] = 1;
    if (1) {
        D_800E4FD0[arg0] = D_800E5190[arg0] = D_800E5350[arg0];
    }

    D_800E7650[arg0] = 0;
    D_800E8AE0[arg0] = 0.0f;
    D_800E8220[arg0] = 0.0f;
    D_800E83E0[arg0] = 0.0f;
    D_800E8760[arg0] = 0.0f;
    D_800E8E60[arg0] = 0;
    D_800E9020[arg0] = 0.0f;
    D_800E76C0[arg0] = 0xFF;
    D_800E7730[arg0] = 0xFF;
    D_800E77A0[arg0] = 0xFFFF;
    D_800E7880[arg0] = 0xFF;
    D_800E78F0[arg0] = 0;
    D_800E7B20[arg0] = 0.0f;
    D_800E7CE0[arg0] = 0;
    D_800EA520[arg0] = 0;
    D_800EA360[arg0] = 0;
    D_800EA1A0[arg0] = 0;
    D_800E9FE0[arg0].as_s32 = 0;
    D_800E9E20[arg0] = 0;
    D_800E9C60[arg0] = 0;
    D_800E9AA0[arg0] = NULL;
    D_800E98E0[arg0] = 0;
    D_800EB320[arg0] = 0.0f;
    D_800EB160[arg0] = 0.0f;
    D_800EAFA0[arg0] = 0.0f;
    D_800EADE0[arg0] = 0.0f;
    D_800EAC20[arg0] = 0.0f;
    D_800EAA60[arg0] = 0.0f;
    D_800EA8A0[arg0] = 0.0f;
    D_800EA6E0[arg0] = 0.0f;
    D_800EB6A0[arg0] = 0;
    D_800EB4E0[arg0] = 0;
    D_800EBA20[arg0] = 0.0f;
    D_800EB860[arg0] = 0.0f;
    D_800EC120[arg0] = -1;
    D_800EBF60[arg0] = -1;
    D_800EBDA0[arg0] = -1;
    D_800EBBE0[arg0] = -1;
    D_800EC4A0[arg0] = 0;
    D_800EC2E0[arg0].as_s32 = 0;
    D_800EC820[arg0] = 0.0f;
    D_800EC660[arg0] = 0.0f;
    D_800E6150[arg0] = -1;
    D_800E5F90[arg0] = -1;
    D_800E6D90[arg0] = 0.0f;
    D_800E6BD0[arg0] = 0.0f;
    D_800E17D0[arg0] = 0.0f;
    D_800E1610[arg0] = 0.0f;
    D_800E6A10[arg0] = 0.0f;
    D_800E6690[arg0] = 0.0f;
    D_800E64D0[arg0] = 0.0f;

    temp_v1 = &D_800E6F50[arg0];
    temp_v1->x = temp_v1->y = temp_v1->z = 0.0f;
    temp_v1->originOffset = 9999.0f;

    D_800E6850[arg0] = 65535.0f;
    D_800E8CA0[arg0] = 0;
    D_800E6310[arg0] = 0;
    
    D_800E5890[arg0] = D_800E5510[arg0] = D_800E56D0[arg0] = 0.0f;
    D_800E93A0[arg0] = D_800E9560[arg0] = D_800E9720[arg0] = 0;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_6/func_800AE138.s")
#endif

struct GObjProcess *func_80008A18(s32 arg0, s32 arg1, u8 arg2, u32 arg3);
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
s32 request_job(s32 id, s32 minIndex, u32 max_index, s32 *arg3, void (*arg4)()) {
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
        print_error_stub("Can't request job !!!\n");
        return -1;
    }
    if ((D_8004A7C4 == NULL) || (D_8004A7C4->link == 0x1A) || (D_8004A7C4->link == 0x19)) {
        v0 = 0;
    }
    else if ((D_8004A7C4->link & 0x18) == 0) {
        v0 = 8;
    }
    else {
        v0 = (D_8004A7C4->link & 0x18);
        if (v0 + 8 >= 32) {
            print_error_stub("Job Request Deep OverFlow!!\n");
            return -1;
        }
    }

    D_800DD710[minIndex] = id;
    D_800DE350[minIndex] =
    gobj = func_8000A180(minIndex, func_800B0D24, D_800D4FD0[id].unk0[0] + v0, 0);
    // D_800DE350[minIndex] = gobj;
    gEntityGObjProcessArray[minIndex]= func_80008A18(gobj, D_800D4FD0[id].unk4, 0, 3);
    gEntityGObjProcessArray2[minIndex]= func_80008A18(gobj, func_800B0D90, 1, 3);

    if (D_800D4FD0[id].unk0[1] & 1) {
        gEntityGObjProcessArray3[minIndex]= func_80008A18(gobj, func_800B1878, 0, 2);
    }
    if (D_800D4FD0[id].unk0[1] & 2) {
        gEntityGObjProcessArray4[minIndex] = func_80008A18(gobj, func_800B1870, 1, 1);
    }
    gEntityGObjProcessArray5[minIndex] = func_80008A18(gobj, arg4, 1, 0);
    D_800DD8D0[minIndex] = 0;
    D_800DDA90[minIndex] = gobj->link;
    D_800DF150[minIndex] = 0;
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

extern void func_800B1434(void);
s32 func_800AEA64(s32 id, s32 minIndex, s32 max_index) {
    s32 idx = request_job(id, minIndex, max_index, NULL, &func_800B1434);

    if (idx == -1) {
        return -1;
    }
    D_800E0D50[idx] = (D_8004A7C4 != NULL) ? D_8004A7C4->objId : -1;
    return idx;
}

extern void func_800B4924(void);
extern void func_800B143C(void);
extern void func_800B4AB8(void);
extern void func_800B158C(void);

// todo: should this really be a define?
#define FAIL -1

s32 request_track(u8 arg0, s32 id, s32 minIndex, s32 maxIndex) {
    s32 idx;

    switch (arg0) {
        case 0:
            idx = request_job(id, minIndex, maxIndex, &func_800B4924, &func_800B143C);
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
    D_800E0D50[idx] = (D_8004A7C4 != NULL) ? D_8004A7C4->objId : -1;
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

