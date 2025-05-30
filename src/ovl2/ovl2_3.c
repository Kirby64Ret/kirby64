#include <ultra64.h>
#include <PR/rcp.h>
#include "common.h"
#include "types.h"
#include "GObj.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "main/lbvector.h"
#include "main/lbmatrix.h"
#include "unk_structs/D_80129114.h"

extern s32 D_800D6E10;
extern u32 D_801D02AC[][8];
extern s32 D_80129118;

s32 func_800FCD14(u32 arg0, u8 node, f32 yScale, u8 bankID, u8 entID,
    u8 action, u8 respawnFlag, u8 unk5, s16 saveToEeprom,
    Vec3f *pos, Vec3f *angle, Vec3f *scale);

s32 func_800FCDC0(u32 arg0, u8 bankID, u8 entID,
    u8 action, u8 respawnFlag, u8 unk5, s16 saveToEeprom,
    Vec3f *pos, Vec3f *angle, Vec3f *scale);

// another self-verification check
s32 func_800F88A0(void) {
    s32 ret;

    if (IO_READ(0x200) == 0xAC290000) {
        ret = 1;
    } else {
        ret = 0;
    }
    return ret;
}

// regalloc https://decomp.me/scratch/uC9Ye
#ifdef NON_MATCHING
void func_800F88C8(GObj *g, s32 arg1, f32 arg2) {
    s32 objId = g->objId;
    struct Unk80129114_4_4 *sub4_4;
    struct Unk80129114_4 *sub4;
    s32 var_v0;

    D_800E6150[objId] = arg1;
    D_800E5F90[objId] = arg1;
    sub4 = &D_80129114->unk4[arg1];
    sub4_4 = sub4->unk4;
    if (arg2 <= 0.0f) {
        arg2 = 0.001f;
    }
    if (arg2 >= 1.0f) {
        arg2 = 0.999f;
    }
    var_v0 = 0;
    if (sub4_4->unk0 != 0) {
        var_v0 = 1;
    }
    if (arg2 > 0.5f) {
        var_v0 += sub4_4->unk2 - 1;
    }
    gEntitiesNextPosYArray[objId] = sub4_4->unk8[var_v0].unk4 + sub4->unk0->unkC;
    D_800E6D90[objId] = arg2;
    D_800E6BD0[objId] = arg2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800F88C8.s")
#endif

f32 vec3_abs_angle_diff(Vector *v1, Vector *v2) {
    Vector tmp;

    vec3_normalized_cross_product(v1, v2, &tmp);
    if (tmp.y > 0.0f) {
        return lbvector_Angle(v2, v1);
    }
    return -lbvector_Angle(v2, v1);
}

void func_800F8A24(s32 arg0) {
    D_800E6310[arg0] = 0;
    if (D_80129114->unk4[D_800E5F90[arg0]].unkE != 0) {
        if (D_800E6BD0[arg0] > 1.0f) {
            D_800E6BD0[arg0] -= 1.0f;
        }
        if (D_800E6BD0[arg0] < 0.0f) {
            D_800E6BD0[arg0] += 1.0f;
        }
    } else {
        if (D_800E6BD0[arg0] > 1.0f) {
            D_800E6BD0[arg0] = 1.0f;
            D_800E6310[arg0] += 1;
        }
        if (D_800E6BD0[arg0] < 0.0f) {
            D_800E6BD0[arg0] = 0.0f;
            D_800E6310[arg0] += 1;
        }
    }
}

#ifdef MIPS_TO_C

s32 func_800F8B1C(s32 arg0) {
    f32 *temp_t1;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f2;
    f32 var_f12;
    f32 var_f2;
    s16 temp_t0;
    s32 *temp_a1;
    s32 temp_a2;
    s32 temp_a3;
    s32 var_a0;
    s32 var_t2;
    u8 *temp_t3;
    u8 temp_t0_2;
    void *temp_v0;

    temp_a1 = &D_800E5F90[arg0];
    temp_a2 = *temp_a1;
    temp_a3 = D_80129114->unk4;
    temp_v0 = (temp_a2 * 0x10) + temp_a3;
    temp_t0 = temp_v0->unkC;
    temp_t1 = &D_800E6BD0[arg0];
    if (temp_t0 == 0) {
        return 0;
    }
    temp_f0 = *temp_t1;
    var_a0 = 0;
    var_t2 = -1;
    if (temp_f0 > 1.0f) {
        var_a0 = 1;
    }
    if (temp_f0 < 0.0f) {
        var_a0 = -1;
    }
    if (var_a0 == 0) {
        return 0;
    }
    temp_t3 = temp_v0->unk8;
    if (var_a0 > 0) {
        if ((temp_t0 != 0) && ((temp_t3 + (temp_t0 * 4))->unk-4 != 0)) {
            var_t2 = temp_t0 - 1;
        }
    } else if (*temp_t3 == 0) {
        var_t2 = 0;
    }
    if (var_t2 == -1) {
        return 0;
    }
    temp_f2 = temp_v0->unk4->unkC;
    if (var_a0 > 0) {
        var_f12 = (temp_f0 * temp_f2) - temp_f2;
    } else {
        var_f12 = temp_f0 * temp_f2;
    }
    temp_t0_2 = (temp_t3 + (var_t2 * 4))->unk2;
    temp_f0_2 = (temp_a3 + (temp_t0_2 * 0x10))->unk4->unkC;
    if (var_a0 > 0) {
        var_f2 = var_f12 / temp_f0_2;
    } else {
        var_f2 = (temp_f0_2 + var_f12) / temp_f0_2;
    }
    D_800E6150[arg0] = temp_a2;
    *temp_a1 = temp_t0_2;
    D_800E6D90[arg0] = var_f2;
    *temp_t1 = var_f2;
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800F8B1C.s")
#endif

#ifdef MIPS_TO_C

void func_800F8C70(s32 *arg0) {
    f32 sp68;
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    void *sp50;
    s32 sp4C;
    void *sp48;
    s32 sp34;
    s32 sp2C;
    s32 *sp28;
    f32 *temp_v0_3;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f6;
    f32 var_f2;
    s32 *temp_a3;
    s32 temp_v0;
    u16 temp_a1;
    u16 temp_a2;
    u16 var_t0;
    void *temp_a0;
    void *temp_v0_2;

    temp_v0 = *arg0;
    temp_f6 = (gEntitiesPosYArray[temp_v0] + gEntitiesNextPosYArray[temp_v0] + 20.0f) / 2.0f;
    sp2C = temp_v0 * 4;
    sp60 = gEntitiesPosXArray[temp_v0];
    sp68 = gEntitiesPosZArray[temp_v0];
    sp54 = gEntitiesNextPosXArray[temp_v0];
    sp5C = gEntitiesNextPosZArray[temp_v0];
    sp58 = temp_f6;
    sp64 = temp_f6;
    if (func_801046A0(&sp60, &sp54, 0, 0, 0, &sp50) != 0) {
        temp_a3 = sp2C + D_800E5F90;
        temp_a1 = sp50->unkE;
        if (temp_a1 != *temp_a3) {
            temp_a2 = sp50->unk12;
            temp_a0 = (D_80129114->unk4 + (temp_a1 * 0x10))->unk4;
            var_t0 = temp_a2;
            if (temp_a0->unk0 != 0) {
                var_t0 = temp_a2 + 1;
            }
            temp_v0_2 = temp_a0->unk8 + (var_t0 * 0xC);
            temp_f0 = sp54 - temp_v0_2->unk0;
            sp28 = temp_a3;
            sp34 = temp_a2;
            temp_f2 = sp5C - temp_v0_2->unk8;
            sp4C = temp_a1;
            sp48 = temp_a0;
            temp_f0_2 = sqrtf((temp_f0 * temp_f0) + (temp_f2 * temp_f2));
            *temp_a3 = temp_a1;
            temp_v0_3 = sp2C + D_800E6BD0;
            *temp_v0_3 = *(temp_a0->unk10 + (temp_a2 * 4));
            temp_f2_2 = temp_f0_2 / temp_a0->unkC;
            if (*(D_800E6A10 + sp2C) >= 0.0f) {
                var_f2 = temp_f2_2 * 0.1f;
            } else {
                var_f2 = temp_f2_2 * -0.1f;
            }
            *temp_v0_3 += var_f2;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800F8C70.s")
#endif

#ifdef MIPS_TO_C

void func_800F8E6C(s32 *arg0) {
    s32 sp78;
    s32 sp74;
    f32 sp64;
    f32 sp5C;
    ? sp58;
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    s32 *sp34;
    f32 *sp2C;
    f32 *temp_v0;
    f32 *temp_v0_2;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 var_f0;
    s32 *temp_t0;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_t1;
    s32 var_a3;
    void *temp_a1;
    void *temp_v1;

    temp_a2 = *arg0;
    temp_t0 = &D_800E5F90[temp_a2];
    temp_t1 = *temp_t0;
    if (temp_t1 != -1) {
        temp_v1 = D_80129114;
        var_a3 = temp_t1 * 0x10;
        temp_a1 = (temp_v1->unk4 + var_a3)->unk4;
        temp_v0 = &D_800E6BD0[temp_a2];
        temp_f0 = *temp_v0;
        *temp_v0 = temp_f0 + ((D_800E64D0[temp_a2] * 0.1f) / temp_a1->unkC);
        var_f0 = *temp_v0;
        if (temp_f0 != var_f0) {
            D_800E6D90[temp_a2] = temp_f0;
            sp2C = temp_v0;
            sp74 = temp_a2;
            sp34 = temp_t0;
            func_800F8B1C(temp_a2, temp_a1, temp_a2, var_a3);
            func_800F8A24(sp74);
            var_f0 = *temp_v0;
            var_a3 = *temp_t0 * 0x10;
        } else {
            D_800E6D90[temp_a2] = var_f0;
        }
        temp_a1_2 = (temp_v1->unk4 + var_a3)->unk4;
        sp2C = temp_v0;
        sp78 = temp_a1_2;
        mtxGetInterpolatedPosition(&sp64, temp_a1_2, var_f0, var_a3);
        gEntitiesNextPosXArray[temp_a2] = sp64;
        gEntitiesNextPosZArray[temp_a2] = sp6C;
        sp4C = 0.0f;
        sp50 = 0.0f;
        sp54 = D_800E6A10[temp_a2];
        func_8001E344(&sp58, sp78, *sp2C);
        sp5C = 0.0f;
        temp_f0_2 = vec3_abs_angle_diff(&sp4C, &sp58);
        temp_v0_2 = &D_800E17D0[temp_a2];
        *temp_v0_2 = temp_f0_2;
        if (temp_f0_2 < 0.0f) {
            *temp_v0_2 += 6.2831855f;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800F8E6C.s")
#endif

s32 func_800F9020(Vector *v, s32 arg1, f32 param) {
    if ((arg1 >= D_80129118) || (arg1 < 0) || (param < 0.0f) || (param > 1.0f)) {
        v->x = v->y = v->z = 0.0f;
        return 1;
    } else {
        mtxGetInterpolatedPosition(v, D_80129114->unk4[arg1].unk4, param);
        return 0;
    }
}

#ifdef MIPS_TO_C

void func_800F90C0(s32 arg0, f32 arg1) {
    s8 sp3F;
    s8 sp3E;
    s8 sp3D;
    ? sp3A;
    ? sp34;
    ? *var_v0;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f16;
    f32 temp_f2;
    f32 var_f2;
    f32 var_f4;
    s16 temp_a1;
    s16 temp_v1;
    s32 temp_f6;
    s32 var_a1;
    s32 var_f18;
    s8 *var_a0_2;
    s8 *var_v1_2;
    u8 *temp_t0;
    u8 *temp_t1;
    u8 *var_a0;
    u8 *var_v1;
    u8 temp_a1_2;
    u8 temp_t8;
    u8 var_a2;
    u8 var_a2_2;
    u8 var_a3;
    void *temp_v0;
    void *var_v0_2;

    temp_v0 = *(D_80129114->unk4 + (D_800E5F90[arg0] * 0x10));
    if (temp_v0->unkE & 0x10) {
        var_a2 = temp_v0->unk9;
        temp_a1 = temp_v0->unk10;
        temp_f6 = gEntitiesNextPosYArray[arg0];
        var_a3 = temp_v0->unkA;
        if (temp_f6 >= temp_a1) {
            func_800A5404(arg1, (var_a2 * 0xC) + &D_800D478C, var_a2, var_a3);
            return;
        }
        temp_v1 = temp_v0->unk12;
        if (temp_v1 >= temp_f6) {
            func_800A5404(arg1, (var_a3 * 0xC) + &D_800D478C, var_a2, var_a3);
            return;
        }
        var_f2 = (temp_a1 - temp_f6) / (temp_a1 - temp_v1);
        goto block_9;
    }
    temp_f2 = D_800E6BD0[arg0];
    if (temp_f2 <= 0.5f) {
        var_a2 = temp_v0->unk9;
        var_a3 = temp_v0->unkA;
        var_f2 = 2.0f * temp_f2;
    } else {
        var_a2 = temp_v0->unkA;
        var_a3 = temp_v0->unkB;
        var_f2 = (temp_f2 - 0.5f) * 2.0f;
    }
block_9:
    temp_t1 = (var_a2 * 0xC) + &D_800D478C;
    temp_t0 = (var_a3 * 0xC) + &D_800D478C;
    var_v1 = temp_t0;
    var_a0 = temp_t1;
    var_v0 = &sp34;
    do {
        temp_a1_2 = *var_a0;
        temp_t8 = *var_v1;
        var_v1 += 1;
        var_f4 = temp_a1_2;
        if (temp_a1_2 < 0) {
            var_f4 += 4294967296.0f;
        }
        var_a0 += 1;
        var_v0 += 1;
        var_v0->unk-1 = ((temp_t8 - temp_a1_2) * var_f2) + var_f4;
    } while (var_v0 < &sp3A);
    var_v1_2 = temp_t0 + 6;
    var_a0_2 = temp_t1 + 6;
    var_v0_2 = &sp3A + 1;
    var_a1 = *var_a0_2 + 0x64;
    var_a2_2 = *var_v1_2 + 0x64;
    var_f18 = var_a2_2 - var_a1;
    if (var_v0_2 != &sp3D) {
        do {
            var_v0_2 += 1;
            temp_f14 = var_a1;
            temp_f16 = var_f18 * var_f2;
            var_a1 = var_a0_2->unk1 + 0x64;
            var_a2_2 = var_v1_2->unk1 + 0x64;
            var_f18 = var_a2_2 - var_a1;
            var_v1_2 += 1;
            var_a0_2 += 1;
            var_v0_2->unk-2 = (temp_f14 + temp_f16) - 100.0f;
        } while (var_v0_2 != &sp3D);
    }
    temp_f14_2 = var_a1;
    var_v0_2->unk-1 = (temp_f14_2 + (var_f18 * var_f2)) - 100.0f;
    sp3E = 0;
    sp3D = 0;
    sp3F = 0;
    func_800A5404(temp_f14_2, (bitwise void *) arg1, &sp34, var_a2_2, &sp3D);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800F90C0.s")
#endif

#ifdef MIPS_TO_C

s32 func_800F93EC(s32 arg0) {
    if ((*(D_80129114->unk4 + (D_800E5F90[arg0] * 0x10)))->unkE & 1) {
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800F93EC.s")
#endif

#ifdef MIPS_TO_C

s32 func_800F9438(s32 arg0) {
    u8 temp_v1;
    void *temp_v0;

    if (D_800D6F4C != 0) {
        return 0;
    }
    if (D_800BE4F8 != 1) {
        return 0;
    }
    temp_v0 = *(D_80129114->unk4 + (arg0 * 0x10));
    if (!(temp_v0->unkE & 1)) {
        return 0;
    }
    if ((temp_v0->unk7 == 0x1F) && (D_800D6E40 == 0)) {
        return 0;
    }
    D_800BE52C = temp_v0->unk4;
    D_800BE530 = temp_v0->unk5;
    D_800BE534 = temp_v0->unk6;
    temp_v1 = temp_v0->unk7;
    if (temp_v1 == 0x1F) {
        D_800BE538 = 0x1F - temp_v1;
    } else {
        D_800BE538 = temp_v1;
    }
    D_800BE4FC = 2;
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800F9438.s")
#endif

#ifdef MIPS_TO_C

f32 func_800F951C(s32 arg0, f32 arg1, s32 arg2, f32 arg3) {
    f32 temp_f0;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f18_2;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 var_f0;
    f32 var_f0_2;
    f32 var_f12;
    f32 var_f12_2;
    f32 var_f2;
    f32 var_f2_2;
    s32 temp_t1;
    s32 temp_v0;
    u8 temp_v1_2;
    void *temp_v1;

    if (arg0 < 0) {
        return 9999.0f;
    }
    if (arg2 < 0) {
        return 9999.0f;
    }
    temp_v0 = D_80129114->unk4;
    temp_v1 = temp_v0 + (arg0 * 0x10);
    temp_f16 = temp_v1->unk4->unkC;
    if (arg0 == arg2) {
        if (temp_v1->unkE != 0) {
            temp_f18_2 = arg3 - arg1;
            if (arg3 <= arg1) {
                var_f2_2 = (1.0f - arg1) + arg3;
            } else {
                var_f2_2 = ((1.0f - arg3) + arg1) * -1.0f;
            }
            if (temp_f18_2 < 0.0f) {
                var_f0 = -temp_f18_2;
            } else {
                var_f0 = temp_f18_2;
            }
            if (var_f2_2 < 0.0f) {
                var_f12 = -var_f2_2;
            } else {
                var_f12 = var_f2_2;
            }
            if (var_f0 < var_f12) {
                return temp_f18_2 * 10.0f * temp_f16;
            }
            return var_f2_2 * 10.0f * temp_f16;
        }
        return (arg3 - arg1) * temp_f16 * 10.0f;
    }
    temp_t1 = (arg0 * D_80129118) + arg2;
    temp_v1_2 = *(temp_t1 + D_8012912C);
    if (temp_v1_2 == 0) {
        return 9999.0f;
    }
    temp_f0 = (temp_v0 + (arg2 * 0x10))->unk4->unkC;
    if (*D_80129130 == 0.0f) {
        temp_f18 = (D_80129130[temp_v1_2 & 0x7F] + ((arg1 * temp_f16) + ((1.0f - arg3) * temp_f0))) * -10.0f;
        temp_f2 = (D_80129130[*(temp_t1 + (D_80129118 * D_80129118) + D_8012912C) & 0x7F] + (((1.0f - arg1) * temp_f16) + (arg3 * temp_f0))) * 10.0f;
        if (temp_f18 < 0.0f) {
            var_f0_2 = -temp_f18;
        } else {
            var_f0_2 = temp_f18;
        }
        if (temp_f2 < 0.0f) {
            var_f12_2 = -temp_f2;
        } else {
            var_f12_2 = temp_f2;
        }
        if (var_f0_2 < var_f12_2) {
            return temp_f18;
        }
        return temp_f2;
    }
    temp_f2_2 = D_80129130[temp_v1_2 & 0x7F];
    if (temp_v1_2 & 0x80) {
        var_f2 = (temp_f2_2 + ((arg1 * temp_f16) + ((1.0f - arg3) * temp_f0))) * -10.0f;
    } else {
        var_f2 = (temp_f2_2 + (((1.0f - arg1) * temp_f16) + (arg3 * temp_f0))) * 10.0f;
    }
    return var_f2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800F951C.s")
#endif

#ifdef MIPS_TO_C

void func_800F9828(s32 arg0, s32 arg1) {
    func_800F951C(D_800E5F90[arg0], D_800E6BD0[arg0], D_800E5F90[arg1], D_800E6BD0[arg1]);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800F9828.s")
#endif

#ifdef MIPS_TO_C

s32 func_800F9888(void *arg0, ? arg1) {
    s32 sp20;
    f32 sp1C;
    s32 temp_v0;

    sp20 = arg0->unk0;
    sp1C = arg0->unk4;
    temp_v0 = func_800F9974(arg1, &sp20, &sp1C, arg1, arg0);
    if (temp_v0 == 0) {
        arg0->unk0 = sp20;
        arg0->unk4 = sp1C;
    }
    return temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800F9888.s")
#endif

#ifdef MIPS_TO_C

s32 func_800F98EC(s32 arg0, ? arg1) {
    s32 sp28;
    f32 sp24;
    s32 *sp20;
    f32 *sp1C;
    f32 *temp_a3;
    s32 *temp_v1;
    s32 temp_v0;

    temp_v1 = &D_800E5F90[arg0];
    temp_a3 = &D_800E6BD0[arg0];
    sp1C = temp_a3;
    sp20 = temp_v1;
    sp28 = *temp_v1;
    sp24 = *temp_a3;
    temp_v0 = func_800F9974(arg1, &sp28, &sp24, arg1, temp_a3);
    if (temp_v0 == 0) {
        *sp20 = sp28;
        *sp1C = sp24;
    }
    return temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800F98EC.s")
#endif

#ifdef MIPS_TO_C

s32 func_800F9974(s32 *arg0, f32 *arg1, f32 arg2) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f12;
    f32 temp_f16;
    f32 temp_f2;
    f32 var_f12;
    f32 var_f12_2;
    f32 var_f2;
    s16 temp_a2_2;
    s16 temp_a2_4;
    s32 temp_a2;
    s32 temp_a2_3;
    s32 temp_a2_5;
    s32 temp_a3;
    s32 temp_t2;
    s32 temp_v0;
    s32 var_t1;
    s32 var_t1_2;
    u8 temp_v1;
    u8 temp_v1_2;
    u8 var_v1_2;
    void *var_t0;
    void *var_t0_2;
    void *var_v1;

    temp_v0 = *arg0;
    if (temp_v0 < 0) {
        return 0x270F;
    }
    temp_f0 = *arg1;
    if ((temp_f0 < 0.0f) || (temp_f0 > 1.0f)) {
        return 0x270F;
    }
    temp_a3 = D_80129114->unk4;
    temp_a2 = temp_v0 * 0x10;
    temp_f16 = arg2 * 0.1f;
    var_v1 = temp_a2 + temp_a3;
    temp_f2 = var_v1->unk4->unkC;
    temp_f12 = temp_f0 + (temp_f16 / temp_f2);
    if ((temp_a3 + temp_a2)->unkE != 0) {
        *arg1 = temp_f12;
        if (temp_f12 < 0.0f) {
            *arg1 = 1.0f + temp_f12;
        }
        if (temp_f12 > 1.0f) {
            *arg1 = temp_f12 - 1.0f;
        }
        return 0;
    }
    if ((temp_f12 >= 0.0f) && (temp_f12 <= 1.0f)) {
        *arg1 = temp_f12;
        return 0;
    }
    if (temp_f12 < 0.0f) {
        var_f12 = (arg2 * -0.1f) - (temp_f0 * temp_f2);
loop_16:
        temp_a2_2 = var_v1->unkC;
        var_t1 = 0;
        if (temp_a2_2 == 0) {
            return 1;
        }
        var_t0 = var_v1->unk8;
        if (temp_a2_2 > 0) {
loop_19:
            temp_v1 = var_t0->unk0;
            if ((temp_v1 != 0) || (var_t0->unk1 & 0xF0)) {
                var_t1 += 1;
                if (temp_v1 != 0) {
                    return 1;
                }
                var_t0 += 4;
                if (var_t1 == temp_a2_2) {
                    goto block_24;
                }
                goto loop_19;
            }
            goto block_24;
        }
block_24:
        if (var_t1 == temp_a2_2) {
            return 1;
        }
        var_v1_2 = var_t0->unk2;
        temp_a2_3 = var_v1_2 * 0x10;
        temp_f0_2 = (temp_a3 + temp_a2_3)->unk4->unkC;
        if (var_f12 <= temp_f0_2) {
            var_f2 = (temp_f0_2 - var_f12) / temp_f0_2;
            goto block_43;
        }
        var_f12 -= temp_f0_2;
        var_v1 = temp_a3 + temp_a2_3;
        goto loop_16;
    }
    var_f12_2 = temp_f16 - (temp_f2 - (temp_f0 * temp_f2));
loop_30:
    temp_a2_4 = var_v1->unkC;
    if (temp_a2_4 == 0) {
        return 1;
    }
    var_t1_2 = temp_a2_4 - 1;
    var_t0_2 = (var_v1->unk8 + (temp_a2_4 * 4)) - 4;
    temp_t2 = var_v1->unk4->unk2 - 1;
    if (var_t1_2 >= 0) {
loop_33:
        temp_v1_2 = var_t0_2->unk0;
        if ((temp_t2 != temp_v1_2) || (var_t0_2->unk1 & 0xF0)) {
            var_t1_2 += 1;
            if (temp_t2 != temp_v1_2) {
                return 1;
            }
            var_t0_2 -= 4;
            if (var_t1_2 < 0) {
                goto block_38;
            }
            goto loop_33;
        }
        goto block_38;
    }
block_38:
    if (var_t1_2 < 0) {
        return 1;
    }
    var_v1_2 = var_t0_2->unk2;
    temp_a2_5 = var_v1_2 * 0x10;
    temp_f0_3 = (temp_a3 + temp_a2_5)->unk4->unkC;
    if (var_f12_2 <= temp_f0_3) {
        var_f2 = var_f12_2 / temp_f0_3;
block_43:
        if (*((temp_v0 * D_80129118) + var_v1_2 + D_8012912C) == 0) {
            return 1;
        }
        *arg0 = var_v1_2;
        *arg1 = var_f2;
        return 0;
    }
    var_f12_2 -= temp_f0_3;
    var_v1 = temp_a3 + temp_a2_5;
    goto loop_30;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800F9974.s")
#endif

#ifdef MIPS_TO_C
void func_800F9C54(Vector* arg0, f32 arg1, Vector* arg2, s32 arg3) {
    Vector tmp;

    mtxGetInterpolatedPosition(&tmp, arg0, arg1, arg3);
    vec3_dist_square(arg2, &tmp);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800F9C54.s")
#endif

#ifdef MIPS_TO_C

f32 func_800F9C94(s32 arg0, s32 arg1, f32 arg2, f32 arg3, s32 arg4) {
    f32 sp58;
    f32 sp54;
    f32 sp50;
    f32 sp48;
    f32 sp44;
    u32 sp3C;
    f32 *var_s0;
    f32 *var_v0;
    f32 *var_v0_2;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f16;
    f32 temp_f18;
    f32 var_f14;
    f32 var_f20;
    f32 var_f2;
    s32 var_v1;

    var_f20 = arg2;
    if (arg3 > 2e-05) {
        temp_f18 = arg3 * 0.5f;
        var_f14 = temp_f18 + var_f20;
        temp_f16 = var_f20 - temp_f18;
        if (arg4 == 1) {
            if (var_f20 < 0.0f) {
                var_f20 += 1.0f;
            } else if (var_f20 > 1.0f) {
                var_f20 -= 1.0f;
            }
            if (var_f14 < 0.0f) {
                var_f14 += 1.0f;
                goto block_10;
            }
            sp54 = var_f14;
            if (var_f14 > 1.0f) {
                var_f14 -= 1.0f;
block_10:
                sp54 = var_f14;
            }
            if (temp_f16 < 0.0f) {
                sp58 = temp_f16 + 1.0f;
            } else {
                sp58 = temp_f16;
                if (temp_f16 > 1.0f) {
                    sp58 = temp_f16 - 1.0f;
                }
            }
        } else {
            if (var_f20 < 0.0f) {
                var_f20 = 0.0f;
            } else if (var_f20 > 1.0f) {
                var_f20 = 1.0f;
            }
            if (var_f14 < 0.0f) {
                sp54 = 0.0f;
            } else {
                sp54 = var_f14;
                if (var_f14 > 1.0f) {
                    sp54 = 1.0f;
                }
            }
            if (temp_f16 < 0.0f) {
                sp58 = 0.0f;
            } else {
                sp58 = temp_f16;
                if (temp_f16 > 1.0f) {
                    sp58 = 1.0f;
                }
            }
        }
        sp44 = temp_f18;
        var_f2 = func_800F9C54(arg3, var_f14, arg0, var_f20, arg1);
        var_s0 = &sp54;
        var_v0 = &sp48;
        do {
            sp50 = var_f2;
            sp3C = var_v0;
            temp_f0 = func_800F9C54((bitwise f32) arg0, *var_s0, arg1);
            var_v0 += 4;
            var_s0 += 4;
            var_v0->unk-4 = temp_f0;
        } while (var_v0 < &sp50);
        var_v1 = 0;
        var_v0_2 = &sp48;
        do {
            temp_f0_2 = *var_v0_2;
            var_v0_2 += 4;
            if (temp_f0_2 < var_f2) {
                var_f20 = *(&sp54 + var_v1);
                var_f2 = temp_f0_2;
            }
            var_v1 += 4;
        } while (var_v0_2 != &sp50);
        var_f20 = func_800F9C94(arg0, arg1, var_f20, sp44, arg4);
    }
    return var_f20;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800F9C94.s")
#endif

#ifdef MIPS_TO_C
f32 func_800F9F10(f32 arg0, s32 arg1) {
    f32 var_f12;

    var_f12 = arg0;
    if (var_f12 > 1.0f) {
        if (arg1 == 1) {
            return var_f12 - 1.0f;
        }
        return 1.0f;
    }
    if (var_f12 < 0.0f) {
        if (arg1 == 1) {
            return var_f12 + 1.0f;
        }
        var_f12 = 0.0f;
        /* Duplicate return node #8. Try simplifying control flow for better match */
        return var_f12;
    }
    return var_f12;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800F9F10.s")
#endif

#ifdef MIPS_TO_C

f32 func_800F9F80(s32 arg0, s32 arg1, s32 arg2) {
    ? sp2C;
    ? sp20;
    f32 sp1C;

    lbvector_Diff(&sp2C, arg2, arg1);
    lbvector_Diff(&sp20, arg0, arg1);
    sp1C = vec3_dot_product(&sp2C, &sp20);
    return sp1C / vec3_mag_square(&sp2C);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800F9F80.s")
#endif

#ifdef MIPS_TO_C

void func_800F9FDC(void *arg0, Vector *arg1, s32 arg2, s32 arg3) {
    f32 spAC;
    f32 spA8;
    f32 spA0;
    f32 sp9C;
    f32 sp90;
    f32 sp8C;
    Vector sp7C;
    Vector sp70;
    Vector sp64;
    Vector sp58;
    Vector sp4C;
    Vector sp40;
    f32 *temp_v0;
    f32 temp_f0;
    f32 var_f12;
    f32 var_f20;
    f32 var_f2;
    f32 var_f2_2;
    s16 temp_a0;
    void *temp_v1;

    temp_v0 = arg0->unk10;
    temp_v1 = temp_v0 + (arg2 * 4);
    var_f20 = temp_v1->unk0;
    if (arg2 == 0) {
        var_f2 = *temp_v0;
        var_f20 = var_f2 + 0.002;
    } else {
        var_f2 = temp_v1->unk-4;
    }
    temp_a0 = arg0->unk2;
    if (arg2 >= (temp_a0 - 1)) {
        sp9C = (temp_v0 + (temp_a0 * 4))->unk-4;
        var_f20 = sp9C - 0.002;
    } else {
        sp9C = temp_v1->unk4;
    }
    spA0 = var_f2;
    mtxGetInterpolatedPosition(&sp70, arg0, var_f2);
    mtxGetInterpolatedPosition(&sp7C, arg0, var_f20);
    mtxGetInterpolatedPosition(&sp64, arg0, sp9C);
    spAC = (func_800F9F80(arg1, &sp70, &sp7C) * (var_f20 - spA0)) + spA0;
    spA8 = (func_800F9F80(arg1, &sp7C, &sp64) * (sp9C - var_f20)) + var_f20;
    spAC = func_800F9F10(spAC, arg3);
    spA8 = func_800F9F10(spA8, arg3);
    mtxGetInterpolatedPosition(&sp4C, arg0, spAC);
    mtxGetInterpolatedPosition(&sp40, arg0, spA8);
    mtxGetInterpolatedPosition(&sp58, arg0, var_f20);
    sp8C = vec3_dist_square(&sp4C, arg1);
    sp90 = vec3_dist_square(&sp58, arg1);
    temp_f0 = vec3_dist_square(&sp40, arg1);
    if (sp8C < temp_f0) {
        var_f2_2 = spAC;
        var_f12 = sp8C;
    } else {
        var_f2_2 = spA8;
        var_f12 = temp_f0;
    }
    if (sp90 < var_f12) {
        var_f2_2 = var_f20;
    }
    func_800F9C94(var_f12, sp8C, arg0, arg1, var_f2_2, 0x3CA3D70A, arg3);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800F9FDC.s")
#endif

#ifdef MIPS_TO_C

f32 func_800FA1D4(void *arg0, ? arg1, s32 arg2) {
    ? sp44;
    f32 temp_f0;
    f32 var_f20;
    s16 temp_s4;
    s32 var_s0;
    s32 var_s1;
    s32 var_s3;
    void *temp_t7;

    temp_s4 = arg0->unk2;
    var_f20 = 1000000.0f;
    var_s3 = -1;
    var_s1 = 0;
    if (temp_s4 > 0) {
        var_s0 = 0;
        do {
            temp_t7 = arg0->unk8 + var_s0;
            sp44.unk0 = temp_t7->unk0;
            sp44.unk4 = temp_t7->unk4;
            sp44.unk8 = temp_t7->unk8;
            temp_f0 = lbvector_DiffLen(arg1, &sp44);
            if (temp_f0 < var_f20) {
                var_f20 = temp_f0;
                var_s3 = var_s1;
            }
            var_s1 += 1;
            var_s0 += 0xC;
        } while (var_s1 != temp_s4);
    }
    if (var_s3 != -1) {
        return func_800F9FDC(arg0, arg1, var_s3, arg2);
    }
    return -1.0f;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FA1D4.s")
#endif

#ifdef MIPS_TO_C

void func_800FA2D4(void *arg0, void *arg1) {
    f32 temp_f0;
    f32 temp_f2;
    void *temp_v0;

    temp_v0 = D_800D799C->data;
    D_800D7B38.unk0 = D_800D7B20.unk0;
    D_800D7B38.unk4 = D_800D7B20.unk4;
    D_800D7B38.unk8 = D_800D7B20.unk8;
    D_800D7B38.unkC = D_800D7B20.unkC;
    temp_f0 = D_8012940C * 0.01f;
    D_800D7B38.unk10 = D_800D7B20.unk10;
    temp_f2 = D_80129408 * 0.01f;
    D_800D7B38.unk14 = D_800D7B20.unk14;
    temp_v0->data = arg1->unk24 + (D_80129400 * temp_f0);
    temp_v0->unk40 = arg1->unk28 + (D_80129404 * temp_f0);
    temp_v0->unk44 = arg1->unk2C;
    temp_v0->unk48 = arg1->unk18 + (D_80129400 * temp_f2);
    temp_v0->unk4C = arg1->unk1C + (D_80129404 * temp_f2);
    temp_v0->unk50 = arg1->unk20;
    D_800D7B20.unk0 = temp_v0->unk48;
    D_800D7B20.unk4 = temp_v0->unk4C;
    D_800D7B20.unk8 = temp_v0->unk50;
    D_800D7B2C.unk0 = temp_v0->data;
    D_800D7B2C.unk4 = temp_v0->unk40;
    D_800D7B2C.unk8 = temp_v0->unk44;
    temp_v0->unk20 = arg0->unk10;
    temp_v0->unk28 = arg0->unk54;
    temp_v0->unk2C = arg0->unk58;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FA2D4.s")
#endif

#ifdef MIPS_TO_C

void func_800FA414(s32 arg0) {
    if (!(D_800D7088 & 0x80000000)) {
        D_800D7088 = arg0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FA414.s")
#endif

#ifdef MIPS_TO_C

void func_800FA438(s32 arg0, void *arg1) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f14;
    f32 temp_f2;
    f32 temp_f2_2;
    void *temp_v1;
    void *temp_v1_2;

    temp_v1 = *(D_80129114->unk4 + (D_800E5F90[arg0] * 0x10));
    temp_f0 = D_800E6BD0[arg0];
    temp_v1_2 = temp_v1 + 0x20;
    arg1->unk0 = temp_v1->unk20;
    arg1->unk2 = temp_v1_2->unk1;
    temp_f2 = temp_v1_2->unk20;
    arg1->unk4 = ((temp_v1_2->unk24 - temp_f2) * temp_f0) + temp_f2;
    temp_f12 = temp_v1_2->unk28;
    arg1->unk8 = ((temp_v1_2->unk2C - temp_f12) * temp_f0) + temp_f12;
    temp_f14 = temp_v1_2->unk30;
    arg1->unkC = ((temp_v1_2->unk34 - temp_f14) * temp_f0) + temp_f14;
    temp_f2_2 = temp_v1_2->unk38;
    arg1->unk10 = ((temp_v1_2->data - temp_f2_2) * temp_f0) + temp_f2_2;
    temp_f12_2 = temp_v1_2->unk40;
    arg1->unk14 = ((temp_v1_2->unk44 - temp_f12_2) * temp_f0) + temp_f12_2;
    arg1->unk18 = temp_v1_2->unk2;
    arg1->unk19 = temp_v1_2->unk3;
    arg1->unk1A = temp_v1_2->unk4;
    arg1->unk1C = temp_v1_2->unk6;
    arg1->unk1D = temp_v1_2->unk7;
    arg1->unk1E = temp_v1_2->unk8;
    arg1->unk1F = temp_v1_2->unk9;
    arg1->unk20 = temp_v1_2->unk48;
    arg1->unk24 = temp_v1_2->unk4C;
    arg1->unk28 = temp_v1_2->unk50;
    arg1->unk2C = temp_v1_2->unk54;
    arg1->unk30 = temp_v1_2->unk58;
    arg1->unk34 = temp_v1_2->unk5C;
    arg1->unk38 = temp_v1_2->unk60;
    arg1->data = temp_v1_2->unk64;
    arg1->unk40 = temp_v1_2->unk68;
    arg1->unk44 = temp_v1_2->unk6C;
    arg1->unk48 = temp_v1_2->unkC;
    arg1->unk4C = temp_v1_2->unk10;
    arg1->unk50 = temp_v1_2->unk14;
    arg1->unk54 = temp_v1_2->unk18;
    arg1->unk58 = temp_v1_2->unk1C;
    arg1->unk5C = temp_v1_2->unkA;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FA438.s")
#endif

#ifdef MIPS_TO_C
void func_800FA5C0(s32 arg0, void *arg1, void *arg2) {
    arg2->unk0 = gEntitiesNextPosXArray[arg0];
    arg2->unk4 = gEntitiesNextPosYArray[arg0];
    arg2->unk8 = gEntitiesNextPosZArray[arg0];
    arg2->unk4 = arg2->unk4 + arg1->unk14;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FA5C0.s")
#endif

#ifdef MIPS_TO_C

void func_800FA608(s32 arg0, void *arg1, void *arg2) {
    s32 sp54;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    ? sp38;
    f32 sp2C;
    s16 temp_v0;

    sp54 = D_800D799C->data;
    temp_v0 = arg1->unk0;
    switch (temp_v0) {                              /* irregular */
        case 0:
            sp44 = cosf((arg1->unk8 * 3.1415927f) / 180.0f);
            sp4C = -sinf((arg1->unk8 * 3.1415927f) / 180.0f);
            sp48 = 0.0f;
            break;
        case 1:
            func_8001E344(&sp44, (D_80129114->unk4 + (D_800E5F90[arg0] * 0x10))->unk4, D_800E6BD0[arg0], arg0);
            sp48 = 0.0f;
            lbvector_Normalize(&sp44);
            lbvector_Rotate(&sp44, 2, (arg1->unk8 * 3.1415927f) / 180.0f);
            break;
    }
    lbvector_Scale(&sp44, -arg1->unkC);
    lbvector_Add(&sp44, arg2);
    lbvector_Diff(&sp2C, arg2, &sp44);
    vec3_normalized_cross_product(sp54 + 0x54, &sp2C, &sp38);
    func_800191F8(&sp2C, &sp38, ((arg1->unk4 - 90.0f) * 3.1415927f) / 180.0f);
    arg2->unkC = arg2->unk0 - sp2C;
    arg2->unk10 = arg2->unk4 - sp30;
    arg2->unk14 = arg2->unk8 - sp34;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FA608.s")
#endif

#ifdef MIPS_TO_C
void func_800FA7EC(s32 arg0, void *arg1, void *arg2) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f0_6;

    arg2->unk30 = 0;
    arg2->unk34 = 0;
    arg2->unk38 = 0;
    arg2->unk24 = arg2->unkC;
    arg2->unk28 = arg2->unk10;
    arg2->unk2C = arg2->unk14;
    if (arg1->unk18 != 0) {
        temp_f0 = arg1->unk20;
        if (arg2->unk24 <= temp_f0) {
            arg2->unk24 = temp_f0;
            arg2->unk30 = 1;
        }
        temp_f0_2 = arg1->unk24;
        if (temp_f0_2 <= arg2->unk24) {
            arg2->unk24 = temp_f0_2;
            arg2->unk30 = arg2->unk30 | 2;
        }
    }
    if (arg1->unk19 != 0) {
        temp_f0_3 = arg1->unk28;
        if (arg2->unk28 <= temp_f0_3) {
            arg2->unk28 = temp_f0_3;
            arg2->unk34 = arg2->unk34 | 1;
        }
        temp_f0_4 = arg1->unk2C;
        if (temp_f0_4 <= arg2->unk28) {
            arg2->unk28 = temp_f0_4;
            arg2->unk34 = arg2->unk34 | 2;
        }
    }
    if (arg1->unk1A != 0) {
        temp_f0_5 = arg1->unk30;
        if (arg2->unk2C <= temp_f0_5) {
            arg2->unk2C = temp_f0_5;
            arg2->unk38 = arg2->unk38 | 1;
        }
        temp_f0_6 = arg1->unk34;
        if (temp_f0_6 <= arg2->unk2C) {
            arg2->unk2C = temp_f0_6;
            arg2->unk38 = arg2->unk38 | 2;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FA7EC.s")
#endif

#ifdef MIPS_TO_C

void func_800FA92C(s32 arg0, void *arg1, void *arg2) {
    s32 sp6C;
    s32 sp68;
    s32 sp64;
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    ? sp40;
    f32 sp3C;
    f32 sp38;
    void *sp28;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f0_6;
    f32 temp_f12;
    f32 temp_f14;
    f32 var_f12;
    f32 var_f2;
    s32 var_v0;
    void *temp_a2;

    sp64 = 0;
    sp6C = D_800D799C->data;
    arg2->unk18 = arg2->unk0;
    arg2->unk1C = arg2->unk4;
    arg2->unk20 = arg2->unk8;
    temp_f0 = arg1->unk48;
    if (temp_f0 != 9999.0f) {
        arg2->unk18 = temp_f0;
    }
    temp_f0_2 = arg1->unk4C;
    if (temp_f0_2 != 9999.0f) {
        arg2->unk1C = temp_f0_2 + arg1->unk14;
    }
    temp_f0_3 = arg1->unk50;
    if (temp_f0_3 != 9999.0f) {
        arg2->unk20 = temp_f0_3;
    }
    if (arg1->unk1D != 0) {
        temp_a2 = arg2 + 0x24;
        if ((arg2->unk30 | arg2->unk38) != 0) {
            sp68 = 0;
            sp28 = temp_a2;
            lbvector_Diff(&sp4C, arg2, temp_a2, arg1);
            var_v0 = sp68;
            temp_f12 = (atan2f(sp54, -sp4C) / 3.1415927f) * 180.0f;
            var_f2 = temp_f12;
            if (temp_f12 < 0.0f) {
                var_f2 = temp_f12 + 360.0f;
            }
            temp_f0_4 = arg1->unk40;
            if (var_f2 < temp_f0_4) {
                var_f2 = temp_f0_4;
                var_v0 = 1;
            }
            temp_f0_5 = arg1->unk44;
            if (temp_f0_5 < var_f2) {
                var_f2 = temp_f0_5;
                var_v0 |= 2;
            }
            if (var_v0 != 0) {
                sp3C = var_f2;
                sp4C = -sqrtf((sp54 * sp54) + (sp4C * sp4C));
                sp50 = 0.0f;
                sp54 = 0.0f;
                func_800191F8(0.0f, &sp4C, sp6C + 0x54, (var_f2 * 3.1415927f) / 180.0f);
                lbvector_Add(&sp4C, sp28);
                arg2->unk18 = sp4C;
                arg2->unk20 = sp54;
            }
        }
    }
    if ((arg1->unk1C != 0) && (arg2->unk34 != 0)) {
        lbvector_Diff(&sp4C, arg2 + 0x18, arg2 + 0x24, arg1);
        temp_f14 = arg1->unk38;
        var_f12 = 180.0f - ((atan2f(sqrtf((sp54 * sp54) + (sp4C * sp4C)), sp50) / 3.1415927f) * 180.0f);
        if (var_f12 < temp_f14) {
            var_f12 = temp_f14;
            sp64 = 1;
        }
        temp_f0_6 = arg1->data;
        if (temp_f0_6 < var_f12) {
            var_f12 = temp_f0_6;
            sp64 |= 2;
        }
        if (sp64 != 0) {
            sp38 = var_f12;
            sp50 = 0.0f;
            vec3_normalized_cross_product(var_f12, temp_f14, sp6C + 0x54, &sp4C, &sp40, arg1);
            func_800191F8(sp38, &sp4C, &sp40, ((sp38 - 90.0f) * 3.1415927f) / 180.0f);
            arg2->unk18 = arg2->unk24 + sp4C;
            arg2->unk1C = arg2->unk28 - sp50;
            arg2->unk20 = arg2->unk2C + sp54;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FA92C.s")
#endif

#ifdef MIPS_TO_C

void func_800FAC74(void *arg0, void *arg1, void *arg2) {
    s32 sp5C;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f32 var_f0;
    f32 var_f0_2;
    f32 var_f2;
    f32 var_f2_2;
    f32 var_f2_3;
    s32 var_v0;

    sp5C = D_800D799C->data;
    if (D_801292E0 == 9999.0f) {
        M2C_MEMCPY_ALIGNED(arg0, arg2, 0x3C);
    }
    var_v0 = 0;
    if (gPlayerControllers->buttonHeld & 0x100) {
        var_v0 = 1;
    }
    if (gPlayerControllers->buttonHeld & 0x200) {
        var_v0 -= 1;
    }
    if (D_800BE4F8 == 1) {
        if ((var_v0 != 0) && (arg1->unk1E != 0)) {
            var_f2 = D_801293C4;
            if (var_v0 > 0) {
                if (D_801293BC < 0.0f) {
                    var_f2 *= D_801293CC;
                }
                D_801293BC += var_f2;
                var_f0 = D_801293BC;
                if (D_801293B4 <= var_f0) {
                    D_801293BC = D_801293B4;
                    goto block_18;
                }
            } else {
                if (D_801293BC > 0.0f) {
                    var_f2 *= D_801293CC;
                }
                D_801293BC -= var_f2;
                var_f0 = D_801293BC;
                temp_f12 = -D_801293B4;
                if (var_f0 <= temp_f12) {
                    D_801293BC = temp_f12;
block_18:
                    var_f0 = D_801293BC;
                }
            }
            D_801293AC += var_f0;
        } else if (D_801293AC > 0.0f) {
            D_801293BC -= D_801293C4;
            if (D_801293BC <= -1.0f) {
                D_801293BC = -1.0f;
            }
            D_801293AC += D_801293BC;
            if (D_801293AC <= 0.0f) {
                D_801293AC = 0.0f;
                goto block_31;
            }
        } else if (D_801293AC < 0.0f) {
            D_801293BC += D_801293C4;
            if (D_801293BC >= 1.0f) {
                D_801293BC = 1.0f;
            }
            D_801293AC += D_801293BC;
            if (D_801293AC >= 0.0f) {
                D_801293AC = 0.0f;
                goto block_31;
            }
        } else {
            D_801293AC = 0.0f;
block_31:
            D_801293BC = 0.0f;
        }
    }
    var_f0_2 = arg1->unk5C;
    if (var_f0_2 <= D_801293AC) {
        D_801293AC = var_f0_2;
        var_f0_2 = arg1->unk5C;
    }
    temp_f12_2 = -var_f0_2;
    if (D_801293AC <= temp_f12_2) {
        D_801293AC = temp_f12_2;
    }
    lbvector_Diff(temp_f12_2, &sp38, arg2 + 0x18, arg2 + 0x24, arg0);
    temp_f12_3 = (atan2f(sp40, -sp38) / 3.1415927f) * 180.0f;
    var_f2_2 = temp_f12_3;
    if (temp_f12_3 < 0.0f) {
        var_f2_2 = temp_f12_3 + 360.0f;
    }
    var_f2_3 = var_f2_2 + 90.0f;
    if (var_f2_3 >= 360.0f) {
        var_f2_3 -= 360.0f;
    }
    sp3C = 0.0f;
    sp40 = 0.0f;
    sp38 = -D_801293AC;
    func_800191F8(temp_f12_3, 3.1415927f, &sp38, sp5C + 0x54, (var_f2_3 * 3.1415927f) / 180.0f, arg0);
    arg0->unk24 = arg2->unk24;
    arg0->unk2C = arg2->unk2C;
    arg0->unk18 = arg2->unk18 - sp38;
    arg0->unk20 = arg2->unk20 - sp40;
    if (arg1->unk1F != 0) {
        D_801293D8 = 0;
        arg0->unk28 = func_800FB814(arg0->unk28, arg2->unk28, D_801293C0, arg0);
        arg0->unk1C = func_800FB814(arg0->unk1C, arg2->unk1C, D_801293C0, arg0);
        return;
    }
    if (D_801293D8 != 0) {
        arg0->unk28 = arg2->unk28;
        arg0->unk1C = arg2->unk1C;
        return;
    }
    arg0->unk28 = func_800FB814(arg0->unk28, arg2->unk28, D_801293D4, arg0);
    arg0->unk1C = func_800FB814(arg0->unk1C, arg2->unk1C, D_801293D4, arg0);
    if (arg2->unk28 == arg0->unk28) {
        D_801293D8 += 1;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FAC74.s")
#endif

#ifdef MIPS_TO_C

void func_800FB164(void *arg0, void *arg1, void *arg2) {
    s32 sp4C;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f32 temp_f12_4;
    f32 temp_f12_5;
    f32 temp_f12_6;
    f32 var_f0;
    f32 var_f0_2;
    f32 var_f0_3;
    f32 var_f0_4;
    f32 var_f2;
    f32 var_f2_2;
    f32 var_f2_3;
    f32 var_f2_4;
    f32 var_f2_5;
    s32 var_a0;
    s32 var_v1;

    sp4C = D_800D799C->data;
    if (D_801292E0 == 9999.0f) {
        M2C_MEMCPY_ALIGNED(arg0, arg2, 0x3C);
    }
    D_801293B4 = 8.0f;
    D_801293B8 = 8.0f;
    D_801293CC = 8.0f;
    D_801293C4 = 4.0f;
    D_801293C8 = 4.0f;
    var_v1 = 0;
    if (gPlayerControllers->buttonHeld & 0x100) {
        var_v1 = 1;
    }
    if (gPlayerControllers->buttonHeld & 0x200) {
        var_v1 -= 1;
    }
    var_a0 = 0;
    if (gPlayerControllers->buttonHeld & 0x800) {
        var_a0 = 1;
    }
    if (gPlayerControllers->buttonHeld & 0x400) {
        var_a0 -= 1;
    }
    if ((var_v1 != 0) && (arg1->unk1E != 0)) {
        var_f2 = D_801293C4;
        if (var_v1 > 0) {
            if (D_801293BC < 0.0f) {
                var_f2 *= D_801293CC;
            }
            D_801293BC += var_f2;
            var_f0 = D_801293BC;
            if (D_801293B4 <= var_f0) {
                D_801293BC = D_801293B4;
                goto block_21;
            }
        } else {
            if (D_801293BC > 0.0f) {
                var_f2 *= D_801293CC;
            }
            D_801293BC -= var_f2;
            var_f0 = D_801293BC;
            temp_f12 = -D_801293B4;
            if (var_f0 <= temp_f12) {
                D_801293BC = temp_f12;
block_21:
                var_f0 = D_801293BC;
            }
        }
        D_801293AC += var_f0;
        var_f2_2 = D_801293AC;
    } else if (D_801293AC > 0.0f) {
        D_801293BC -= D_801293C4;
        if (D_801293BC <= -1.0f) {
            D_801293BC = -1.0f;
        }
        D_801293AC += D_801293BC;
        var_f2_2 = D_801293AC;
        if (var_f2_2 <= 0.0f) {
            D_801293AC = 0.0f;
            var_f2_2 = D_801293AC;
            D_801293BC = 0.0f;
        }
    } else if (D_801293AC < 0.0f) {
        D_801293BC += D_801293C4;
        if (D_801293BC >= 1.0f) {
            D_801293BC = 1.0f;
        }
        D_801293AC += D_801293BC;
        var_f2_2 = D_801293AC;
        if (var_f2_2 >= 0.0f) {
            D_801293AC = 0.0f;
            var_f2_2 = D_801293AC;
            D_801293BC = 0.0f;
        }
    } else {
        D_801293AC = 0.0f;
        var_f2_2 = D_801293AC;
        D_801293BC = 0.0f;
    }
    var_f0_2 = arg1->unk5C;
    if (var_f0_2 <= var_f2_2) {
        D_801293AC = var_f0_2;
        var_f2_2 = D_801293AC;
        var_f0_2 = arg1->unk5C;
    }
    temp_f12_2 = -var_f0_2;
    if (var_f2_2 <= temp_f12_2) {
        D_801293AC = temp_f12_2;
    }
    if ((var_a0 != 0) && (arg1->unk1E != 0)) {
        var_f2_3 = D_801293C8;
        if (var_a0 > 0) {
            if (D_801293C0 < 0.0f) {
                var_f2_3 *= D_801293CC;
            }
            D_801293C0 += var_f2_3;
            var_f0_3 = D_801293C0;
            if (D_801293B8 <= var_f0_3) {
                D_801293C0 = D_801293B8;
                goto block_51;
            }
        } else {
            if (D_801293C0 > 0.0f) {
                var_f2_3 *= D_801293CC;
            }
            D_801293C0 -= var_f2_3;
            var_f0_3 = D_801293C0;
            temp_f12_3 = -D_801293B8;
            if (var_f0_3 <= temp_f12_3) {
                D_801293C0 = temp_f12_3;
block_51:
                var_f0_3 = D_801293C0;
            }
        }
        D_801293B0 += var_f0_3;
        var_f2_4 = D_801293B0;
    } else if (D_801293B0 > 0.0f) {
        D_801293C0 -= D_801293C8;
        if (D_801293C0 <= -1.0f) {
            D_801293C0 = -1.0f;
        }
        D_801293B0 += D_801293C0;
        var_f2_4 = D_801293B0;
        if (var_f2_4 <= 0.0f) {
            D_801293B0 = 0.0f;
            var_f2_4 = D_801293B0;
            goto block_64;
        }
    } else if (D_801293B0 < 0.0f) {
        D_801293C0 += D_801293C8;
        if (D_801293C0 >= 1.0f) {
            D_801293C0 = 1.0f;
        }
        D_801293B0 += D_801293C0;
        var_f2_4 = D_801293B0;
        if (var_f2_4 >= 0.0f) {
            D_801293B0 = 0.0f;
            var_f2_4 = D_801293B0;
            goto block_64;
        }
    } else {
        D_801293B0 = 0.0f;
        var_f2_4 = D_801293B0;
block_64:
        D_801293C0 = 0.0f;
    }
    var_f0_4 = arg1->unk5C;
    temp_f12_4 = var_f0_4 * 0.6f;
    if (temp_f12_4 <= var_f2_4) {
        D_801293B0 = temp_f12_4;
        var_f2_4 = D_801293B0;
        var_f0_4 = arg1->unk5C;
    }
    temp_f12_5 = -var_f0_4 * 0.6f;
    if (var_f2_4 <= temp_f12_5) {
        D_801293B0 = temp_f12_5;
    }
    lbvector_Diff(temp_f12_5, 0.6f, &sp28, arg2 + 0x18, arg2 + 0x24, &D_801293AC);
    temp_f12_6 = (atan2f(sp30, -sp28) / 3.1415927f) * 180.0f;
    var_f2_5 = temp_f12_6;
    if (temp_f12_6 < 0.0f) {
        var_f2_5 = temp_f12_6 + 360.0f;
    }
    sp30 = 0.0f;
    sp28 = -D_801293AC;
    sp2C = D_801293B0;
    func_800191F8(temp_f12_6, 3.1415927f, &sp28, sp4C + 0x54, ((var_f2_5 + 90.0f) * 3.1415927f) / 180.0f, &D_801293AC);
    arg0->unk24 = arg2->unk24;
    arg0->unk28 = arg2->unk28;
    arg0->unk2C = arg2->unk2C;
    arg0->unk18 = arg2->unk18 - sp28;
    arg0->unk1C = arg2->unk1C - sp2C;
    arg0->unk20 = arg2->unk20 - sp30;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FB164.s")
#endif

#ifdef MIPS_TO_C

f32 func_800FB814(f32 arg0, f32 arg1, f32 arg2) {
    f32 var_f0;
    f32 var_f0_2;
    f32 var_f0_3;
    f32 var_f12;
    f32 var_f2;
    f32 var_f2_2;

    if (arg1 < arg0) {
        var_f2 = arg1 - arg0;
        var_f0 = -var_f2;
    } else {
        var_f2 = arg1 - arg0;
        var_f0 = var_f2;
    }
    if (D_801293C0 < var_f0) {
        if (var_f2 > 0.0f) {
            var_f12 = arg0 + arg2;
            if (arg1 <= var_f12) {
                goto block_9;
            }
        } else {
            var_f12 = arg0 - arg2;
            if (var_f12 <= arg1) {
                goto block_9;
            }
        }
    } else {
block_9:
        var_f12 = arg1;
    }
    if (arg1 < var_f12) {
        var_f2_2 = arg1 - var_f12;
        var_f0_2 = -var_f2_2;
    } else {
        var_f2_2 = arg1 - var_f12;
        var_f0_2 = var_f2_2;
    }
    if (D_801293D0 < var_f0_2) {
        if (var_f2_2 > 0.0f) {
            var_f0_3 = var_f2_2 - D_801293D0;
        } else {
            var_f0_3 = var_f2_2 + D_801293D0;
        }
        var_f12 += var_f0_3;
    }
    return var_f12;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FB814.s")
#endif

#ifdef MIPS_TO_C

s32 func_800FB914(s32 arg0) {
    if (arg0 == 0) {
        D_801293F8 = 0;
        D_801293FC = -2;
        D_80129404 = 0.0f;
        D_80129400 = D_80129404;
        return 1;
    }
    if ((arg0 & 0x8000) || ((arg0 & 0xF) >= D_801293F8)) {
        D_801293F8 = arg0 & 0xF;
        D_801293FC = -2;
        D_80129404 = 0.0f;
        D_80129400 = D_80129404;
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FB914.s")
#endif

#ifdef MIPS_TO_C

void func_800FB9B4(void) {
    f32 *var_a0;
    f32 var_f0;
    s32 temp_t8;
    s32 temp_v1;

    if (D_801293F8 != 0) {
        temp_v1 = *(&D_801242B4 + (D_801293F8 * 4));
        temp_t8 = D_801293FC + 2;
        D_801293FC = temp_t8;
        var_a0 = temp_v1 + (temp_t8 * 4);
        var_f0 = *var_a0;
        if (var_f0 == 8888.0f) {
            D_801293F8 = 0;
            D_801293FC = -2;
            D_80129404 = 0.0f;
            D_80129400 = D_80129404;
            return;
        }
        if (var_f0 == 9999.0f) {
            var_a0 = temp_v1 + (0 * 4);
            D_801293FC = 0;
            var_f0 = *var_a0;
        }
        D_80129400 = var_f0;
        D_80129404 = var_a0->unk4;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FB9B4.s")
#endif

#ifdef MIPS_TO_C

void func_800FBA78(void) {
    func_801DC98C_ovl17();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FBA78.s")
#endif

#ifdef MIPS_TO_C

void func_800FBA98(void) {
    M2C_MEMCPY_ALIGNED(&D_80129150, &D_801291B0, 0x60);
    M2C_MEMCPY_ALIGNED(&D_80129270, &D_801292F0, 0x3C);
    func_800FA438(D_80129138, &D_801291B0);
    func_800FA5C0(D_80129138, &D_801291B0, &D_801292F0);
    func_800FA608(D_80129138, &D_801291B0, &D_801292F0);
    func_800FA7EC(D_80129138, &D_801291B0, &D_801292F0);
    func_800FA92C(D_80129138, &D_801291B0, &D_801292F0);
    func_800FAC74(&D_801292B0, &D_801291B0, &D_801292F0);
    func_800FA2D4(&D_801291B0, &D_801292B0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FBA98.s")
#endif

#ifdef MIPS_TO_C

void func_800FBBB8(void) {
    s32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    ? sp34;
    f32 sp28;

    sp4C = D_800D799C->data;
    M2C_MEMCPY_ALIGNED(&D_80129150, &D_80129210, 0x60);
    M2C_MEMCPY_ALIGNED(&D_80129270, &D_801292B0, 0x3C);
    D_80129330.unk0 = D_801292B0.unk0;
    D_80129330.unk8 = D_801292B0.unk8;
    D_80129330.unk4 = D_801292B0.unk4 + D_80129210.unk14;
    sp40 = cosf((D_80129210.unk8 * 3.1415927f) / 180.0f);
    sp48 = -sinf((D_80129210.unk8 * 3.1415927f) / 180.0f);
    sp44 = 0.0f;
    lbvector_Scale(&sp40, -D_80129210.unkC);
    lbvector_Add(&sp40, &D_80129330);
    lbvector_Diff(&sp28, &D_80129330, &sp40);
    vec3_normalized_cross_product(sp4C + 0x54, &sp28, &sp34);
    func_800191F8(&sp28, &sp34, ((D_80129210.unk4 - 90.0f) * 3.1415927f) / 180.0f);
    D_80129330.unkC = D_80129330.unk0 - sp28;
    D_80129330.unk10 = D_80129330.unk4 - sp2C;
    D_80129330.unk14 = D_80129330.unk8 - sp30;
    func_800FA7EC(0, &D_80129210, &D_80129330);
    func_800FA92C(0, &D_80129210, &D_80129330);
    D_801292B0.unk18 = D_80129330.unk18;
    D_801292B0.unk1C = D_80129330.unk1C;
    D_801292B0.unk20 = D_80129330.unk20;
    D_801292B0.unk24 = D_80129330.unk24;
    D_801292B0.unk28 = D_80129330.unk28;
    D_801292B0.unk2C = D_80129330.unk2C;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FBBB8.s")
#endif

#ifdef MIPS_TO_C

void func_800FBDE8(void) {
    func_800FBBB8();
    func_800FA2D4(&D_80129210, &D_801292B0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FBDE8.s")
#endif

#ifdef MIPS_TO_C

void func_800FBE1C(void) {
    void *temp_v0;

    temp_v0 = D_800D799C->data;
    D_801293F0 = 0.0f;
    D_801293EC = D_801293F0;
    D_801293E8 = D_801293EC;
    D_801293E4 = D_801293E8;
    D_801293E0 = D_801293E4;
    D_801293DC = D_801293E0;
    D_80129370.unk0 = temp_v0->unk48;
    D_80129370.unk4 = temp_v0->unk4C;
    D_80129370.unk8 = temp_v0->unk50;
    D_8012937C.unk0 = temp_v0->data;
    D_8012937C.unk4 = temp_v0->unk40;
    D_8012937C.unk8 = temp_v0->unk44;
    D_801293F4 = 1.0f;
    D_800D7B38.unk4 = D_800D7B20.unk4;
    D_800D7B38.unk0 = D_800D7B20.unk0;
    D_800D7B38.unk8 = D_800D7B20.unk8;
    D_800D7B38.unkC = D_800D7B20.unkC;
    D_800D7B38.unk14 = D_800D7B20.unk14;
    D_800D7B38.unk10 = D_800D7B20.unk10;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FBE1C.s")
#endif

#ifdef MIPS_TO_C

void func_800FBF18(s32 arg0) {
    void *temp_v0;
    void *temp_v0_2;

    temp_v0 = *(D_80129114->unk4 + (arg0 * 0x10));
    temp_v0_2 = temp_v0 + 0x20;
    D_80129210.unk0 = temp_v0->unk20;
    D_80129210.unk2 = temp_v0_2->unk1;
    D_80129210.unk4 = temp_v0_2->unk20;
    D_80129210.unk8 = temp_v0_2->unk28;
    D_80129210.unkC = temp_v0_2->unk30;
    D_80129210.unk10 = temp_v0_2->unk38;
    D_80129210.unk14 = temp_v0_2->unk40;
    D_80129210.unk18 = temp_v0_2->unk2;
    D_80129210.unk19 = temp_v0_2->unk3;
    D_80129210.unk1A = temp_v0_2->unk4;
    D_80129210.unk1C = temp_v0_2->unk6;
    D_80129210.unk1D = temp_v0_2->unk7;
    D_80129210.unk1E = temp_v0_2->unk8;
    D_80129210.unk1F = temp_v0_2->unk9;
    D_80129210.unk20 = temp_v0_2->unk48;
    D_80129210.unk24 = temp_v0_2->unk4C;
    D_80129210.unk28 = temp_v0_2->unk50;
    D_80129210.unk2C = temp_v0_2->unk54;
    D_80129210.unk30 = temp_v0_2->unk58;
    D_80129210.unk34 = temp_v0_2->unk5C;
    D_80129210.unk38 = temp_v0_2->unk60;
    D_80129210.data = temp_v0_2->unk64;
    D_80129210.unk40 = temp_v0_2->unk68;
    D_80129210.unk44 = temp_v0_2->unk6C;
    D_80129210.unk48 = temp_v0_2->unkC;
    D_80129210.unk4C = temp_v0_2->unk10;
    D_80129210.unk50 = temp_v0_2->unk14;
    D_80129210.unk54 = temp_v0_2->unk18;
    D_80129210.unk58 = temp_v0_2->unk1C;
    D_80129210.unk5C = temp_v0_2->unkA;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FBF18.s")
#endif

#ifdef MIPS_TO_C

s32 func_800FC03C(f32 *arg0, f32 *arg1, f32 *arg2) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f2;
    f32 var_f12;

    temp_f0 = *arg2;
    if (temp_f0 == 9999.0f) {
        *arg0 = *arg1;
        return 1;
    }
    temp_f2 = *arg1;
    if ((temp_f2 == 9999.0f) || (temp_f2 == -9999.0f)) {
        return 1;
    }
    temp_f14 = temp_f2 + 20000.0f;
    *arg2 = temp_f0 + D_801293F4;
    temp_f12 = *arg0 + 20000.0f;
    if (*arg2 >= 20.0f) {
        *arg2 = 20.0f;
    }
    if (temp_f12 < temp_f14) {
        var_f12 = temp_f12 + *arg2;
        if (temp_f14 <= var_f12) {
            *arg2 = 9999.0f;
            *arg0 = *arg1;
            return 1;
        }
        /* Duplicate return node #12. Try simplifying control flow for better match */
        *arg0 = var_f12 - 20000.0f;
        return 0;
    }
    var_f12 = temp_f12 - *arg2;
    if (var_f12 <= temp_f14) {
        *arg2 = 9999.0f;
        *arg0 = *arg1;
        return 1;
    }
    *arg0 = var_f12 - 20000.0f;
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FC03C.s")
#endif

#ifdef MIPS_TO_C

s32 func_800FC164(void *arg0) {
    f32 sp30;
    f32 sp2C;
    s32 var_s0;
    s32 var_v0;
    void *temp_s1;

    temp_s1 = D_800D799C->data;
    var_s0 = 0;
    sp30 = D_8012940C * 0.01f;
    sp2C = D_80129408 * 0.01f;
    if (func_800FC03C(&D_80129370, &D_801292C8, &D_801293DC) != 0) {
        var_s0 = 1;
    }
    if (func_800FC03C(&D_80129374, &D_801292CC, &D_801293E0) != 0) {
        var_s0 += 1;
    }
    if (func_800FC03C(&D_80129378, &D_801292D0, &D_801293E4) != 0) {
        var_s0 += 1;
    }
    if (func_800FC03C(&D_8012937C, &D_801292D4, &D_801293E8) != 0) {
        var_s0 += 1;
    }
    if (func_800FC03C(&D_80129380, &D_801292D8, &D_801293EC) != 0) {
        var_s0 += 1;
    }
    if (func_800FC03C(&D_80129384, &D_801292DC, &D_801293F0) != 0) {
        var_s0 += 1;
    }
    D_800D7B38.unk0 = D_800D7B20.unk0;
    D_800D7B38.unk4 = D_800D7B20.unk4;
    D_800D7B38.unk8 = D_800D7B20.unk8;
    D_800D7B38.unkC = D_800D7B20.unkC;
    D_800D7B38.unk10 = D_800D7B20.unk10;
    D_800D7B38.unk14 = D_800D7B20.unk14;
    temp_s1->unk48 = (D_80129400 * sp2C) + D_80129370.unk0;
    temp_s1->unk4C = (D_80129404 * sp2C) + D_80129370.unk4;
    temp_s1->unk50 = D_80129370.unk8;
    temp_s1->data = (D_80129400 * sp30) + D_80129370.unkC;
    temp_s1->unk40 = (D_80129404 * sp30) + D_80129370.unk10;
    temp_s1->unk44 = D_80129370.unk14;
    D_800D7B20.unk0 = temp_s1->unk48;
    D_800D7B20.unk4 = temp_s1->unk4C;
    D_800D7B20.unk8 = temp_s1->unk50;
    var_v0 = 0;
    D_800D7B2C.unk0 = temp_s1->data;
    D_800D7B2C.unk4 = temp_s1->unk40;
    D_800D7B2C.unk8 = temp_s1->unk44;
    temp_s1->unk20 = arg0->unk10;
    temp_s1->unk28 = arg0->unk54;
    temp_s1->unk2C = arg0->unk58;
    if (var_s0 == 6) {
        var_v0 = 1;
    }
    return var_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FC164.s")
#endif

#ifdef MIPS_TO_C

void func_800FC3D8(void) {
    M2C_MEMCPY_ALIGNED(&D_80129150, &D_801291B0, 0x60);
    M2C_MEMCPY_ALIGNED(&D_80129270, &D_801292F0, 0x3C);
    func_800FA438(D_80129138, &D_801291B0);
    func_800FA5C0(D_80129138, &D_801291B0, &D_801292F0);
    func_800FA608(D_80129138, &D_801291B0, &D_801292F0);
    func_800FA7EC(D_80129138, &D_801291B0, &D_801292F0);
    func_800FA92C(D_80129138, &D_801291B0, &D_801292F0);
    func_800FAC74(&D_801292B0, &D_801291B0, &D_801292F0);
    if (func_800FC164(&D_801291B0) != 0) {
        D_800D7088 = 2;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FC3D8.s")
#endif

#ifdef MIPS_TO_C

void func_800FC500(void) {
    func_800FBBB8();
    if (func_800FC164(&D_80129210) != 0) {
        D_800D7088 = 0xB;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FC500.s")
#endif

#ifdef MIPS_TO_C

void func_800FC53C(void) {
    void *sp1C;
    f32 temp_f0;
    f32 temp_f2;
    void *temp_v0;

    temp_v0 = D_800D799C->data;
    sp1C = temp_v0;
    func_800FA438(D_80129138, &D_801291B0);
    temp_f0 = D_8012940C * 0.01f;
    temp_f2 = D_80129408 * 0.01f;
    temp_v0->unk48 = temp_v0->unk48 + (D_80129400 * temp_f2);
    temp_v0->unk4C = temp_v0->unk4C + (D_80129404 * temp_f2);
    temp_v0->data = temp_v0->data + (D_80129400 * temp_f0);
    temp_v0->unk40 = temp_v0->unk40 + (D_80129404 * temp_f0);
    temp_v0->unk20 = D_801291B0.unk10;
    temp_v0->unk28 = D_801291B0.unk54;
    temp_v0->unk2C = D_801291B0.unk58;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FC53C.s")
#endif

#ifdef MIPS_TO_C

void func_800FC62C(void) {
    void *sp1C;
    f32 temp_f0;
    f32 temp_f2;
    void *temp_v0;
    void *temp_v1;
    void *temp_v1_2;

    temp_v0 = D_800D799C->data;
    D_800D7B38 = D_800D7B20;
    if (D_800D6B54 == 0) {
        sp1C = temp_v0;
        animUpdateCameraAnimation(&D_800D7B20);
        temp_v1 = &D_800D7B38 + 0x18;
        if (temp_v0->unk74 == -3.4028235e38f) {
            temp_v0->unk48 = temp_v1->unk0;
            temp_v0->unk4C = temp_v1->unk4;
            temp_v0->unk50 = temp_v1->unk8;
            temp_v0->data = temp_v1->unkC;
            temp_v0->unk40 = temp_v1->unk10;
            temp_v0->unk44 = temp_v1->unk14;
        } else {
            temp_v1_2 = &D_800D7B38 + 0x18;
            temp_v1_2->unk0 = temp_v0->unk48;
            temp_v1_2->unk4 = temp_v0->unk4C;
            temp_v1_2->unk8 = temp_v0->unk50;
            temp_v1_2->unkC = temp_v0->data;
            temp_v1_2->unk10 = temp_v0->unk40;
            temp_v1_2->unk14 = temp_v0->unk44;
        }
        temp_f0 = D_8012940C * 0.01f;
        temp_f2 = D_80129408 * 0.01f;
        temp_v0->unk48 = temp_v0->unk48 + (D_80129400 * temp_f2);
        D_800D7B20.unk0 = temp_v0->unk48;
        temp_v0->unk4C = temp_v0->unk4C + (D_80129404 * temp_f2);
        D_800D7B20.unk4 = temp_v0->unk4C;
        D_800D7B20.unk8 = temp_v0->unk50;
        temp_v0->data = temp_v0->data + (D_80129400 * temp_f0);
        D_800D7B20.unkC = temp_v0->data;
        temp_v0->unk40 = temp_v0->unk40 + (D_80129404 * temp_f0);
        D_800D7B20.unk10 = temp_v0->unk40;
        D_800D7B20.unk14 = temp_v0->unk44;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FC62C.s")
#endif

#ifdef MIPS_TO_C

void func_800FC804(s32 arg0) {
    s32 *temp_v0;
    s32 temp_t1;
    s32 var_t0;
    u32 temp_t7;
    void *temp_v0_2;

    func_800FB9B4();
    temp_t7 = D_800D7088 & 0xFF;
    switch (temp_t7) {
        case 2:
            func_800FBA98(arg0);
            break;
        case 3:
            func_800FC3D8(arg0);
            break;
        case 4:
            func_800FC500(arg0);
            break;
        case 11:
            func_800FBDE8(arg0);
            break;
        case 6:
            temp_v0 = &D_800D7088 + 4;
            if (M2C_ERROR(/* cfc1 */) & 0x78) {
                if (!(M2C_ERROR(/* cfc1 */) & 0x78)) {
                    var_t0 = (D_800D6B10 - 2.1474836e9f) | 0x80000000;
                } else {
                    goto block_9;
                }
            } else {
                var_t0 = D_800D6B10;
                if (var_t0 < 0) {
block_9:
                    var_t0 = -1;
                }
            }
            temp_t1 = *temp_v0 - var_t0;
            *temp_v0 = temp_t1;
            if (temp_t1 >= 0) {
                temp_v0_2 = D_800D799C->data;
                temp_v0_2->unk4C = temp_v0_2->unk4C + *D_800E3210;
            }
            D_800D7B38.unk0 = D_800D7B20.unk0;
            D_800D7B38.unk4 = D_800D7B20.unk4;
            D_800D7B38.unkC = D_800D7B20.unkC;
            D_800D7B38.unk8 = D_800D7B20.unk8;
            D_800D7B38.unk10 = D_800D7B20.unk10;
            D_800D7B38.unk14 = D_800D7B20.unk14;
            break;
        case 13:
            func_800FC62C(arg0);
            break;
        case 12:
            func_800FBA78(arg0);
            break;
        default:
            animUpdateCameraAnimation(arg0);
            break;
    }
    D_800D7B68 = 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FC804.s")
#endif

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

// The string literal in here is in late_rodata,
//  but we need to decomp the rest of the file for that to automatically fall into place
#ifdef RODATA
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
            print_error_stub("setUpDispose failed. DisType =%02d\n", disType);
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
    Vec3f *pos, Vec3f *angle, Vec3f *scale);
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/setUpDispose.s")
#endif

s32 func_800FCD14(u32 arg0, u8 node, f32 yScale, u8 bankID, u8 entID,
    u8 action, u8 respawnFlag, u8 unk5, s16 saveToEeprom,
    Vec3f *pos, Vec3f *angle, Vec3f *scale) {
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
    Vec3f *pos, Vec3f *angle, Vec3f *scale) {
    s32 track;

    track = setUpDispose(arg0, bankID, entID, action, respawnFlag, unk5, saveToEeprom, pos, angle, scale);
    if (track == -1) {
        return -1;
    }
    D_800E8E60[track] = 1;
    return track;
}

#ifdef MIPS_TO_C

? *func_800FCE50(void) {
    u8 temp_v0;

    temp_v0 = D_800E76C0[omCurrentObj->objId];
    if (temp_v0 != 0xFF) {
        if (((D_801290E0 + (temp_v0 * 0x2C))->unk5 & 0xC) == 4) {
            return (temp_v0 * 0x2C) + D_801290E0 + 0x2C;
        }
        return NULL;
    }
    return &D_801290E8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FCE50.s")
#endif

void func_800FCED8(GObj *gobj) {
    func_800B1900(omCurrentObj->objId);
}

void func_800FCF04(GObj *gobj) {

}

#ifdef MIPS_TO_C

void func_800FCF0C(s32 arg0) {
    func_80199568_ovl7();
    call_virtual_function(D_800E77A0[omCurrentObj->objId], 0x6B, &D_801242D0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FCF0C.s")
#endif

#ifdef MIPS_TO_C

void func_800FCF58(s32 arg0) {
    func_80199568_ovl7();
    call_virtual_function(D_800E77A0[omCurrentObj->objId], 3, &D_8012447C);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FCF58.s")
#endif

#ifdef MIPS_TO_C

void func_800FCFA4(s32 arg0) {
    func_80199568_ovl7();
    call_virtual_function(D_800E77A0[omCurrentObj->objId], 7, &D_80124488);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FCFA4.s")
#endif

#ifdef MIPS_TO_C

void func_800FCFF0(s32 arg0) {
    func_80199568_ovl7();
    call_virtual_function(D_800E77A0[omCurrentObj->objId], 0xE, &D_801244A4);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FCFF0.s")
#endif

#ifdef MIPS_TO_C

void func_800FD03C(s32 arg0) {
    func_80199568_ovl7();
    call_virtual_function(D_800E77A0[omCurrentObj->objId], 0x2C, &D_801244DC);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FD03C.s")
#endif

#ifdef MIPS_TO_C

void func_800FD088(void) {
    s32 temp_v0;
    u16 temp_s1;
    u32 var_s2;
    void *var_s0;

    var_s0 = D_801290E0;
    var_s2 = 0;
    if (D_80129124 != 0) {
        do {
            if (var_s0->unk1 == 5) {
                temp_s1 = (var_s0->unk3 << 8) + var_s0->unk2;
                temp_v0 = func_80114DBC(temp_s1, var_s0 + 8);
                *(var_s2 + (&D_800D6C68 + 0x28)) = 1;
                if (temp_v0 != 0) {
                    D_800E7730[temp_v0] = var_s0->unk1;
                    D_800E77A0[temp_v0] = temp_s1;
                    D_800E7880[temp_v0] = var_s0->unk3;
                }
            }
            var_s2 += 1;
            var_s0 += 0x2C;
        } while (var_s2 < D_80129124);
    }
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FD088.s")
#endif

extern VTABLE D_8012458C;
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
    call_virtual_function(D_800E77A0[omCurrentObj->objId], 0xB, &D_8012458C);
}

