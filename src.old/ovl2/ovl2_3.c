#include <ultra64.h>
#include <macros.h>
#include "types.h"
#include "ovl0/ovl0_5.h"

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800F88A0.s")

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800F88C8.s")


// gets the angle difference between two vectors, and
// negates the result if the cross product has a negative Y component
f32 vec3_abs_angle_diff(Vector *arg0, Vector *arg1) {
    Vector sp1C;

    vec3_normalized_cross_product(arg0, arg1, &sp1C);
    if (0.0f < sp1C.y) {
        return lbvector_Angle(arg1, arg0);
    }
    return -lbvector_Angle(arg1, arg0);
}

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800F8A24.s")

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800F8B1C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800F8C70.s")

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800F8E6C.s")

#include "ovl2_6.h"
extern s32 D_80129118;

#include "unk_structs/D_80129114.h"

extern void mtxGetInterpolatedPosition(f32 a, s32 b, f32 c, s32 d);

u32 func_800F9020(struct Normal *arg0, s32 arg1, f32 arg2) {
    if (arg1 >= D_80129118 || arg1 < 0 || arg2 < 0.0f || arg2 > 1.0f) {
        arg0->z = 0.0f;
        arg0->y = 0.0f;
        arg0->x = 0.0f;
        return 1;
    } else {
        mtxGetInterpolatedPosition(arg2, D_80129114->unk4[arg1].unk4, arg2, arg1);
        return 0;
    }
}

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800F90C0.s")

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800F93EC.s")

extern f32 D_801287B8, D_801287BC;

extern f32 D_8012912C, *D_80129130, D_801287C0;
GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800F951C.s")

extern u32 D_800E5F90[];
extern f32 D_800E6BD0[];
extern f32 func_800F951C(s32, f32, s32, f32);

f32 func_800F9828(s32 arg0, s32 arg1) {
    return func_800F951C(D_800E5F90[arg0], D_800E6BD0[arg0], D_800E5F90[arg1], D_800E6BD0[arg1]);
}

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800F9888.s")

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800F98EC.s")

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800F9974.s")


GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800F9C54.s")

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800F9C94.s")

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800F9F10.s")

f32 func_800F9F80(Vector *arg0, Vector *arg1, Vector *arg2) {
    Vector sp2C;
    Vector sp20;

    lbvector_Diff(&sp2C, arg2, arg1);
    lbvector_Diff(&sp20, arg0, arg1);
    return (utilVec3Dot(&sp2C, &sp20) / utilVec3Mag(&sp2C));
}

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800F9FDC.s")

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800FA1D4.s")

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800FA2D4.s")

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800FA414.s")

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800FA438.s")

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800FA5C0.s")

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800FA608.s")

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800FA7EC.s")

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800FA92C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800FAC74.s")

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800FB164.s")

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800FB814.s")

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800FB914.s")

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800FB9B4.s")

void func_800FBA78(void) {
    func_801DC98C_ovl2();
}

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800FBA98.s")

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800FBBB8.s")

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800FBDE8.s")

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800FBE1C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800FBF18.s")

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800FC03C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800FC164.s")

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800FC3D8.s")

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800FC500.s")

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800FC53C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800FC62C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_3/func_800FC804.s")

s32 func_800FCD14(u32 arg0, u8 node, f32 yScale, u8 bankID, u8 entID,
    u8 action, u8 respawnFlag, u8 unk5, s16 saveToEeprom,
    Vec3f *pos, Vec3f *angle, Vec3f *scale);

s32 func_800FCDC0(u32 arg0, u8 bankID, u8 entID,
    u8 action, u8 respawnFlag, u8 unk5, s16 saveToEeprom,
    Vec3f *pos, Vec3f *angle, Vec3f *scale);

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

extern s32 D_800D6E10;
extern s8 D_800E7650[];
extern s8 D_800E76C0[];
extern u8 D_800E7730[];
extern u16 D_800E77A0[];
extern s8 D_800E7880[];
extern s8 D_800E78F0[];
extern s32 D_800E8AE0[];
extern f32 gEntitiesNextPosXArray[];
extern f32 gEntitiesNextPosYArray[];
extern f32 gEntitiesNextPosZArray[];
extern f32 gEntitiesAngleXArray[];
extern f32 gEntitiesAngleYArray[];
extern f32 gEntitiesAngleZArray[];
extern s32 D_800E91E0[];
extern f32 gEntitiesScaleZArray[];
extern f32 gEntitiesScaleYArray[];
extern f32 gEntitiesScaleXArray[];

s32 func_800FCA84(s32 arg0, u8 bankID, u8 entID,
    u8 action, u8 respawnFlag, u8 unk5, s16 saveToEeprom,
    Vec3f *pos, Vec3f *angle, Vec3f *scale) {
    s32 temp_v0;
    s8 temp_a0;

    u8 bank = bankID;
    switch (bank) {
    case 0:
        if (entID >= 0x6b) {
            return -1;
        }
        temp_a0 = 0x17;
        break;
    case 1:
        if (entID >= 3) {
            return -1;
        }
        temp_a0 = 0x18;
        break;
    case 2:
        if (entID >= 7) {
            return -1;
        }
        temp_a0 = 0x19;
        break;
    case 3:
        if (entID >= 0xe) {
            return -1;
        }
        temp_a0 = 0x1c;
        break;
    case 5:
        return -1;
    case 7:
        if (entID >= 0xb) {
            return -1;
        }
        temp_a0 = 0x20;
        break;
    case 8:
        temp_a0 = 0x21;
        break;
    default:
        utilPrintf("setUpDispose failed. DisType =%02d\n", bank);
        return -1;
    }

    temp_v0 = request_track_general(temp_a0, 0x1E, 0x3C);
    if (temp_v0 == -1) {
        return -1;
    }

    if (++D_800D6E10 >= 0x100) {
        D_800D6E10 = 1;
    }

    D_800E7650[temp_v0] = D_800D6E10;
    D_800E76C0[temp_v0] = arg0;
    D_800E7730[temp_v0] = bankID;
    D_800E77A0[temp_v0] = entID;
    D_800E7880[temp_v0] = action;
    D_800E78F0[temp_v0] = unk5;

    D_800E8AE0[temp_v0] = (respawnFlag & 2) ? 2 : 0;

    gEntitiesNextPosXArray[temp_v0] = (*pos)[0];
    gEntitiesNextPosYArray[temp_v0] = (*pos)[1];
    gEntitiesNextPosZArray[temp_v0] = (*pos)[2];
    gEntitiesAngleXArray[temp_v0] = (*angle)[0];
    gEntitiesAngleYArray[temp_v0] = (*angle)[1];
    gEntitiesAngleZArray[temp_v0] = (*angle)[2];
    D_800E91E0[temp_v0] = saveToEeprom;
    gEntitiesScaleXArray[temp_v0] = gEntitiesScaleYArray[temp_v0] = gEntitiesScaleZArray[temp_v0] = *scale[0];
}

extern u32 D_800E8E60[];

s32 func_800FCD14(u32 arg0, u8 node, f32 yScale, u8 bankID, u8 entID,
    u8 action, u8 respawnFlag, u8 unk5, s16 saveToEeprom,
    Vec3f *pos, Vec3f *angle, Vec3f *scale) {
    s32 temp_v0;

    temp_v0 = func_800FCA84(arg0, bankID, entID, action, respawnFlag, unk5, saveToEeprom, pos, angle, scale);
    if (temp_v0 == -1) {
        return -1;
    }
    
    D_800E5F90[temp_v0] = node;
    D_800E6BD0[temp_v0] = yScale;
    D_800E8E60[temp_v0] = 0;
    return temp_v0;
}

s32 func_800FCDC0(u32 arg0, u8 bankID, u8 entID,
    u8 action, u8 respawnFlag, u8 unk5, s16 saveToEeprom,
    Vec3f *pos, Vec3f *angle, Vec3f *scale) {
    s32 temp_v0;

    temp_v0 = func_800FCA84(arg0, bankID, entID, action, respawnFlag, unk5, saveToEeprom, pos, angle, scale);
    if (temp_v0 == -1) {
        return -1;
    }
    D_800E8E60[temp_v0] = 1;
    return temp_v0;
}

#include "omCurrentObj.h"

typedef struct {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 unk5;
    u8 filler6[0x26];
} Struct_801290E0;

extern Struct_801290E0 *D_801290E0[];
extern s8 D_800E76C0[];
extern u32 D_801290E8;

void *func_800FCE50(void) {
    u8 index = D_800E76C0[omCurrentObj->objId];
    Struct_801290E0 *str;

    if (index != 0xFF) {
        str = *D_801290E0;
        if ((str[index].unk5 & 0xC) == 4) {
            return str + (index + 1);
        }
        else {
            return NULL;
        }
    }
    return D_801290E0 + 2;
}

void func_800FCED8(UNUSED s32 arg0) {
    func_800B1900((u16)omCurrentObj->objId);
}

void func_800FCF04(UNUSED s32 arg0) {

}

extern u32 D_801242D0;

void func_800FCF0C(UNUSED s32 arg0) {
    func_80199568_ovl2();
    utilFuncTableJump(D_800E77A0[omCurrentObj->objId], 0x6B, &D_801242D0);
}

extern u32 D_8012447C;

void func_800FCF58(UNUSED s32 arg0) {
    func_80199568_ovl2();
    utilFuncTableJump(D_800E77A0[omCurrentObj->objId], 3, &D_8012447C);
}

extern u32 D_80124488;

void func_800FCFA4(UNUSED s32 arg0) {
    func_80199568_ovl2();
    utilFuncTableJump(D_800E77A0[omCurrentObj->objId], 7, &D_80124488);
}

extern u32 D_801244A4;

void func_800FCFF0(UNUSED s32 arg0) {
    func_80199568_ovl2();
    utilFuncTableJump(D_800E77A0[omCurrentObj->objId], 0xE, &D_801244A4);
}

extern u32 D_801244DC;

void func_800FD03C(UNUSED s32 arg0) {
    func_80199568_ovl2();
    utilFuncTableJump(D_800E77A0[omCurrentObj->objId], 0x2C, &D_801244DC);
}

extern u32 D_80129124;
extern u8 D_800D6C90[];

void func_800FD088(void) {
    s32 temp_s1;
    s32 temp_v0;
    Struct_801290E0 *phi_s0;
    u32 phi_s2;

    phi_s0 = *D_801290E0;
    for (phi_s2 = 0; phi_s2 < D_80129124; phi_s2++) {
        if (5 == phi_s0->unk1) {
            temp_s1 = (phi_s0->unk3 << 8) + phi_s0->unk2;
            temp_v0 = func_80114DBC(temp_s1, (u8*)phi_s0 + 8);
            D_800D6C90[phi_s2] = 1;
            if (temp_v0 != 0) {
                D_800E7730[temp_v0] = phi_s0->unk1;
                D_800E77A0[temp_v0] = temp_s1;
                D_800E7880[temp_v0] = phi_s0->unk3;
            }
        }
        phi_s0++;
    }
}

extern f32 D_800E3910[];
extern f32 D_800E3750[];
extern f32 D_800E3590[];
extern f32 D_800E33D0[];
extern f32 D_800E3210[];
extern f32 D_800E3050[];
extern f32 D_800E3E50[];
extern f32 D_800E3C90[];
extern f32 D_800E3AD0[];
extern f32 D_800E6690[];
extern f32 D_800E64D0[];
extern f32 D_800E6850[];
extern u32 D_800E0490[];
extern u32 D_801D02AC[][8];
extern u32 D_8012458C;
extern void func_800E3910(void);

void func_800FD194(s32 arg0) {
    f32 temp1, temp2;

    D_800E3910[omCurrentObj->objId] = 0.0f;
    temp1 = D_800E3910[omCurrentObj->objId];
    D_800E3750[omCurrentObj->objId] = temp1;
    D_800E3590[omCurrentObj->objId] = temp1;
    D_800E33D0[omCurrentObj->objId] = temp1;
    D_800E3210[omCurrentObj->objId] = temp1;
    D_800E3050[omCurrentObj->objId] = temp1;
    D_800E3E50[omCurrentObj->objId] = 65535.0f;
    temp2 = D_800E3E50[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = temp2;
    D_800E3AD0[omCurrentObj->objId] = temp2;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E0490[omCurrentObj->objId] = 0;
    D_801D02AC[omCurrentObj->objId][0] = 0;
    utilFuncTableJump(D_800E77A0[omCurrentObj->objId], 0xB, &D_8012458C, D_800E3910);
}
