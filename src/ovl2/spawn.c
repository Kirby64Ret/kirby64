#include <ultra64.h>
#include <PR/rcp.h>
#include "common.h"
#include "types.h"
#include "GObj.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "main/lbvector.h"
#include "main/lbmatrix.h"
#include "ovl1/util.h"
#include "unk_structs/D_80129114.h"

extern s32 D_800D6E10;
extern u32 D_801D02AC[][8];
extern s32 D_80129118;
extern void *D_801242D0;
extern void *D_8012447C;
extern void *D_80124488;
extern void *D_801244A4;
extern void *D_801244DC;

s32 func_800FCD14(u32 arg0, u8 node, f32 yScale, u8 bankID, u8 entID,
    u8 action, u8 respawnFlag, u8 unk5, s16 saveToEeprom,
    Vector *pos, Vector *angle, Vector *scale);

s32 func_800FCDC0(u32 arg0, u8 bankID, u8 entID,
    u8 action, u8 respawnFlag, u8 unk5, s16 saveToEeprom,
    Vector *pos, Vector *angle, Vector *scale);

u32 spawn_entity(u32 arg0, struct Entity *arg1) {
    if (!(arg1->respawnFlag & 1)) {
        return func_800FCD14(arg0, arg1->nodeNum, arg1->scale[1], arg1->bankID,
            arg1->entityID, arg1->action, arg1->respawnFlag,
            arg1->unk5, arg1->saveToEeprom,
            &arg1->pos, &arg1->angle, &arg1->scale);
    }
    else {
        return func_800FCDC0(arg0, arg1->bankID, arg1->entityID, arg1->action,
            arg1->respawnFlag, arg1->unk5, arg1->saveToEeprom,
            &arg1->pos, &arg1->angle, &arg1->scale);
    }
}

#ifdef NON_MATCHING
s32 setUpDispose(s32 arg0, u8 disType, u8 entID, u8 arg3, u8 arg4, u8 arg5, s16 save, Vector *pos, Vector *angle, f32 *scale) {
    s32 id;
    s32 track;
    s32 temp;
    f32 tmpscale;

    switch (disType) {
        case 0:
            if (entID >= 0x6B) {
                return -1;
            }
            id = 0x17;
            break;
        case 1:
            if (entID >= 3) {
                return -1;
            }
            id = 0x18;
            break;
        case 2:
            if (entID >= 7) {
                return -1;
            }
            id = 0x19;
            break;
        case 3:
            if (entID >= 0xE) {
                return -1;
            }
            id = 0x1C;
            break;
        case 5:
            return -1;
        case 7:
            if (entID >= 0xB) {
                return -1;
            }
            id = 0x20;
            break;
        case 8:
            id = 0x21;
            break;
        default:
            utilPrintf("setUpDispose failed. DisType =%02d\n", disType);
            return -1;
    }

    track = request_track_general(id, 0x1E, 0x3C);
    if (track == -1) {
        return -1;
    }
    if (++D_800D6E10 >= 0x100) {
        D_800D6E10 = 1;
    }
    D_800E7650[track] = D_800D6E10;
    D_800E76C0[track] = arg0;
    D_800E7730[track] = disType;
    D_800E77A0[track] = entID;
    D_800E7880[track] = arg3;
    D_800E78F0[track] = arg5;
    if (arg4 & 2) {
        D_800E8AE0[track] = 2;
    } else {
        D_800E8AE0[track] = 0;
    }
    gEntitiesNextPosXArray[track] = pos->x;
    gEntitiesNextPosYArray[track] = pos->y;
    gEntitiesNextPosZArray[track] = pos->z;
    gEntitiesAngleXArray[track] = angle->x;
    gEntitiesAngleYArray[track] = angle->y;
    gEntitiesAngleZArray[track] = angle->z;
    ((s32*)D_800E9020)[112 + track] = save;
    tmpscale = *scale;
    gEntitiesScaleZArray[track] = tmpscale;
    gEntitiesScaleYArray[track] = tmpscale;
    gEntitiesScaleXArray[track] = tmpscale;

    return track;
}
#else
s32 setUpDispose(s32 arg0, u8 bankID, u8 entID,
    u8 action, u8 respawnFlag, u8 unk5, s16 saveToEeprom,
    Vector *pos, Vector *angle, Vector *scale);
#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
s32 request_track_general(?, ?, ?);                 /* extern */

s32 setUpDispose(s32 arg0, u8 disType, u8 entID, u8 arg3, u8 arg4, u8 arg5, s16 save, Vector *pos, Vector *angle, f32 *scale) {
    s32 sp1C;
    ? var_a0;
    f32 temp_f0;
    s32 temp_v0;
    s32 var_v1;
    s32 var_v1_2;

    sp1C = (s32) disType;
    switch (disType) {
    case 0:
        if ((s32) entID >= 0x6B) {
            return -1;
        }
        var_a0 = 0x17;
block_20:
        temp_v0 = request_track_general(var_a0, 0x1E, 0x3C);
        if (temp_v0 == -1) {
            return -1;
        }
        var_v1 = D_800D6E10 + 1;
        D_800D6E10 = var_v1;
        if (var_v1 >= 0x100) {
            var_v1 = 1;
            D_800D6E10 = 1;
        }
        D_800E7650[temp_v0] = (u8) var_v1;
        D_800E76C0[temp_v0] = (u8) arg0;
        D_800E7730[temp_v0] = disType;
        D_800E77A0[temp_v0] = (u16) entID;
        D_800E7880[temp_v0] = arg3;
        D_800E78F0[temp_v0] = arg5;
        if (arg4 & 2) {
            var_v1_2 = temp_v0 * 4;
            D_800E8AE0[temp_v0] = 2;
        } else {
            var_v1_2 = temp_v0 * 4;
            D_800E8AE0[temp_v0] = 0;
        }
        *(gEntitiesNextPosXArray + var_v1_2) = pos->x;
        *(gEntitiesNextPosYArray + var_v1_2) = pos->y;
        *(gEntitiesNextPosZArray + var_v1_2) = pos->z;
        *(gEntitiesAngleXArray + var_v1_2) = angle->x;
        *(gEntitiesAngleYArray + var_v1_2) = angle->y;
        *(gEntitiesAngleZArray + var_v1_2) = angle->z;
        *(D_800E9020 + 0x1C0 + var_v1_2) = (s32) save;
        temp_f0 = *scale;
        *(gEntitiesScaleZArray + var_v1_2) = temp_f0;
        *(gEntitiesScaleYArray + var_v1_2) = temp_f0;
        *(gEntitiesScaleXArray + var_v1_2) = temp_f0;
        return temp_v0;
    case 1:
        if ((s32) entID >= 3) {
            return -1;
        }
        var_a0 = 0x18;
        goto block_20;
    case 2:
        if ((s32) entID >= 7) {
            return -1;
        }
        var_a0 = 0x19;
        goto block_20;
    case 3:
        if ((s32) entID >= 0xE) {
            return -1;
        }
        var_a0 = 0x1C;
        goto block_20;
    case 5:
        return -1;
    case 7:
        if ((s32) entID >= 0xB) {
            return -1;
        }
        var_a0 = 0x20;
        goto block_20;
    case 8:
        var_a0 = 0x21;
        goto block_20;
    default:
        utilPrintf("setUpDispose failed. DisType =%02d\n", sp1C);
        return -1;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/spawn/setUpDispose.s")
#endif
#endif

s32 func_800FCD14(u32 arg0, u8 node, f32 yScale, u8 bankID, u8 entID,
    u8 action, u8 respawnFlag, u8 unk5, s16 saveToEeprom,
    Vector *pos, Vector *angle, Vector *scale) {
    s32 track;

    track = setUpDispose(arg0, bankID, entID, action, respawnFlag, unk5, saveToEeprom, pos, angle, scale);
    if (track == -1) {
        return -1;
    }
    
    D_800E5F90[track] = node;
    D_800E6BD0[track] = yScale;
    D_800E8E60[track] = 0;
    return track;
}

s32 func_800FCDC0(u32 arg0, u8 bankID, u8 entID,
    u8 action, u8 respawnFlag, u8 unk5, s16 saveToEeprom,
    Vector *pos, Vector *angle, Vector *scale) {
    s32 track;

    track = setUpDispose(arg0, bankID, entID, action, respawnFlag, unk5, saveToEeprom, pos, angle, scale);
    if (track == -1) {
        return -1;
    }
    D_800E8E60[track] = 1;
    return track;
}

extern struct Entity *D_801290E0;
extern struct Entity D_801290E8;

struct Entity *func_800FCE50(void) {
    u8 temp_v0 = D_800E76C0[omCurrentObj->objId];

    if (temp_v0 != 0xFF) {
        if ((D_801290E0[temp_v0].unk5 & 0xC) == 4) {
            return &D_801290E0[temp_v0 + 1];
        }
        return NULL;
    }
    return &D_801290E8;
}

void func_800FCED8(GObj *gobj) {
    func_800B1900(omCurrentObj->objId);
}

void func_800FCF04(GObj *gobj) {

}

void func_800FCF0C(s32 arg0) {
    func_80199568_ovl7();
    utilFuncTableJump(D_800E77A0[omCurrentObj->objId], 0x6B, &D_801242D0);
}

void func_800FCF58(s32 arg0) {
    func_80199568_ovl7();
    utilFuncTableJump(D_800E77A0[omCurrentObj->objId], 3, &D_8012447C);
}

void func_800FCFA4(s32 arg0) {
    func_80199568_ovl7();
    utilFuncTableJump(D_800E77A0[omCurrentObj->objId], 7, &D_80124488);
}

void func_800FCFF0(s32 arg0) {
    func_80199568_ovl7();
    utilFuncTableJump(D_800E77A0[omCurrentObj->objId], 0xE, &D_801244A4);
}

void func_800FD03C(s32 arg0) {
    func_80199568_ovl7();
    utilFuncTableJump(D_800E77A0[omCurrentObj->objId], 0x2C, &D_801244DC);
}

extern u32 D_80129124;
extern u8 D_800D6C68[];
extern u8 D_800D6C90[];
s32 func_80114DBC(s32, Vec3f *);

void func_800FD088(void) {
    struct Entity *e;
    u32 i;
    s32 temp_v0;
    s32 temp_s1;

    e = D_801290E0;
    for (i = 0; i < D_80129124; i++) {
        if (e->bankID == 5) {
            temp_s1 = (e->action << 8) + e->entityID;
            temp_v0 = func_80114DBC(temp_s1, &e->pos);
            D_800D6C90[i] = 1;
            if (temp_v0 != 0) {
                D_800E7730[temp_v0] = e->bankID;
                D_800E77A0[temp_v0] = temp_s1;
                D_800E7880[temp_v0] = e->action;
            }
        }
        e++;
    }
}

extern FUNCLIST D_8012458C;
void func_800FD194(s32 arg0) {
    f32 temp_f0;

    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] =
    D_800E3210[omCurrentObj->objId] =
    D_800E33D0[omCurrentObj->objId] =
    D_800E3590[omCurrentObj->objId] =
    D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];;
    D_800E3E50[omCurrentObj->objId] = 65535.0f;
    temp_f0 = D_800E3E50[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = temp_f0;
    D_800E3AD0[omCurrentObj->objId] = temp_f0;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E0490[omCurrentObj->objId] = NULL;
    D_801D02AC[omCurrentObj->objId][0] = 0;
    utilFuncTableJump(D_800E77A0[omCurrentObj->objId], 0xB, &D_8012458C);
}

