#include <ultra64.h>
#include <macros.h>
#include "common.h"
#include "ovl1/ovl1_2_2.h"

extern u8 *func_8011BABC();
#include "GObj.h"
#include "track_arrays.h"

extern void func_8011BF4C(f32 *, s32);
#include "Player.h"

extern void func_8015439C_ovl3(f32 *);
extern s32 func_80154428_ovl3(f32 *);
extern void func_80154CFC_ovl3();
extern void func_801548DC_ovl3(void);
extern void func_80155088_ovl3(void);
extern s32 func_801BBE50_ovl7(u8 *, void *, s32);
extern void func_801529C0_ovl3(void);
#include "ovl1/util.h"

/* D_80196E10_ovl3[] now emitted by this TU */
/* D_80196E3C_ovl3[] now emitted by this TU */
/* D_80196E68_ovl3[] now emitted by this TU */
/* D_80196E94_ovl3[] now emitted by this TU */

extern s32 func_80155C68_ovl3(s32, f32 *);

extern s32 func_8010DA28(void *);


s32 func_80152070_ovl3(f32 (*arg0)[4], f32 (*arg1)[4], u8 arg2, f32 arg3) {
    u8 i;

    if (arg2 >= 0x11) {
        utilPrintf("generate bg break line over. max line %d.\n", 0x10);
        return 0;
    }
    for (i = 0; i < arg2; i++) {
        arg1[i][0] = arg0[i][0] * arg3;
        arg1[i][1] = arg0[i][1] * arg3;
        arg1[i][2] = arg0[i][2] * arg3;
        arg1[i][3] = arg0[i][3] * arg3;
    }
    return 1;
}

s32 func_80152124_ovl3(f32 (*arg0)[4], f32 (*arg1)[4], u8 arg2, f32 arg3, f32 arg4, f32 arg5) {
    u8 i;

    if (arg2 >= 0x11) {
        utilPrintf("generate bg break line over. max line %d.\n", 0x10);
        return 0;
    }
    for (i = 0; i < arg2; i++) {
        arg1[i][0] = (arg0[i][0] * arg3) + arg4;
        arg1[i][1] = (arg0[i][1] * arg3) + arg5;
        arg1[i][2] = (arg0[i][2] * arg3) + arg4;
        arg1[i][3] = (arg0[i][3] * arg3) + arg5;
    }
    return 1;
}

s32 func_801521F0_ovl3(f32 (*arg0)[4], f32 (*arg1)[4], u8 arg2, f32 arg3) {
    u8 i;

    if (arg2 >= 0x11) {
        utilPrintf("generate bg break line over. max line %d.\n", 0x10);
        return 0;
    }
    for (i = 0; i < arg2; i++) {
        arg1[i][0] = arg0[i][0];
        arg1[i][1] = arg0[i][1] * arg3;
        arg1[i][2] = arg0[i][2];
        arg1[i][3] = arg0[i][3] * arg3;
    }
    return 1;
}

s32 func_8015229C_ovl3(f32 (*arg0)[4], f32 (*arg1)[4], u8 arg2, f32 arg3) {
    u8 i;

    if (arg2 >= 0x11) {
        utilPrintf("generate bg break line over. max line %d.\n", 0x10);
        return 0;
    }
    for (i = 0; i < arg2; i++) {
        arg1[i][0] = arg0[i][0] * arg3;
        arg1[i][1] = arg0[i][1];
        arg1[i][2] = arg0[i][2] * arg3;
        arg1[i][3] = arg0[i][3];
    }
    return 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_80152348_ovl3.s")

s32 func_80152828_ovl3(f32 *arg0, f32 *arg1) {
    s32 ret;
    extern u8 D_8012BCA0[];
    s32 func_80109E44(f32 *);
    s32 func_8010B11C(f32 *);
    void func_80105238(f32 *, u8 *);

    arg1[1] = gEntitiesNextPosXArray[omCurrentObj->objId];
    arg1[2] = gEntitiesNextPosYArray[omCurrentObj->objId];
    arg1[3] = gEntitiesNextPosZArray[omCurrentObj->objId];
    arg1[4] = arg0[0];
    arg1[5] = arg0[0] + arg0[1];
    arg1[6] = arg0[0] + arg0[2];
    if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
        arg1[7] = arg0[3];
        arg1[8] = arg0[4];
    } else {
        arg1[7] = arg0[4];
        arg1[8] = arg0[3];
    }
    if (gKirbyState.isTurning & 1) {
        arg1[9] = gKirbyState.unk7C;
    } else {
        arg1[9] = D_800E17D0[omCurrentObj->objId];
    }
    if (D_800E8920[omCurrentObj->objId] == 0) {
        ret = func_80109E44(arg1);
    } else {
        ret = func_8010B11C(arg1);
    }
    func_80105238(arg1, D_8012BCA0);
    return ret;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_801529C0_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_801530BC_ovl3.s")

#ifdef NON_MATCHING
void func_80153668_ovl3(void) {
    f32 sp20[3];
    register u16 count;
    register u16 i;
    extern u8 *D_8012BCA0_p[];
    s32 func_8010DF9C(f32 *);

    if (gKirbyState.unk140 != 0) {
        return;
    }
    sp20[0] = gEntitiesNextPosXArray[omCurrentObj->objId];
    sp20[1] = gEntitiesNextPosYArray[omCurrentObj->objId];
    sp20[2] = gEntitiesNextPosZArray[omCurrentObj->objId];
    count = func_8010DF9C(sp20);
    if (count != 0) {
        for (i = 0; i < count; i++) {
            if ((D_8012BCA0_p[i + 0x10][4] == 0) && (D_8012BCA0_p[i + 0x10][5] == 2)) {
                gKirbyState.unk140 = 0x20001;
            }
        }
    } else {
        sp20[1] = gEntitiesNextPosYArray[omCurrentObj->objId] + 20.0f;
        count = func_8010DF9C(sp20);
        if (count != 0) {
            for (i = 0; i < count; i++) {
                if ((D_8012BCA0_p[i + 0x10][4] == 0) && (D_8012BCA0_p[i + 0x10][5] == 2)) {
                    gKirbyState.unk140 = 0x20001;
                }
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_80153668_ovl3.s")
#endif

void func_80153808_ovl3(void) {
    if (gKirbyState.floorCollisionNext & 0xC00) {
        if (gKirbyState.floorCollisionNext & 0x400) {
            if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
                gKirbyState.unk150 = 2;
            } else {
                gKirbyState.unk150 = 1;
            }
        } else {
            if (D_800E6A10[omCurrentObj->objId] == -1.0f) {
                gKirbyState.unk150 = 2;
            } else {
                gKirbyState.unk150 = 1;
            }
        }
    } else {
        gKirbyState.unk150 = 0;
    }
}

void func_801538C8_ovl3(void) {
    if ((gKirbyState.ceilingCollisionNext == 0)
     && (((D_800E6A10[omCurrentObj->objId] == 1.0f) && (gKirbyState.rightCollisionNext & 4))
      || ((D_800E6A10[omCurrentObj->objId] == -1.0f) && (gKirbyState.leftCollisionNext & 0x20)))
     && (func_8010DA28(&gPositionState) == 0)) {
        gKirbyState.unk151 = 1;
    } else {
        gKirbyState.unk151 = 0;
    }
}

s32 func_80153984_ovl3(void) {
    if (D_800E0490[omCurrentObj->objId] == NULL) {
        D_800E8AE0[omCurrentObj->objId] = 0;
        D_800E8920[omCurrentObj->objId] = D_800E8AE0[omCurrentObj->objId];
        return 0;
    }
    func_801529C0_ovl3();
    return D_800E8920[omCurrentObj->objId];
}

s32 func_80153A18_ovl3(void) {
    s32 unused;
    Vector sp20;

    if (D_800E0490[omCurrentObj->objId] == NULL) {
        D_800E8AE0[omCurrentObj->objId] = 0;
        D_800E8920[omCurrentObj->objId] = D_800E8AE0[omCurrentObj->objId];
        return 0;
    }
    sp20.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    sp20.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    sp20.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    func_801529C0_ovl3();
    return func_80154428_ovl3((f32 *) &sp20);
}

s32 func_80153AD4_ovl3(void) {
    s32 ret;
    Vector sp20;

    if (D_800E0490[omCurrentObj->objId] == NULL) {
        D_800E8AE0[omCurrentObj->objId] = 0;
        D_800E8920[omCurrentObj->objId] = D_800E8AE0[omCurrentObj->objId];
        return 0;
    }
    sp20.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    sp20.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    sp20.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    ret = func_80154428_ovl3((f32 *) &sp20);
    func_801529C0_ovl3();
    return ret;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_80153B98_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_80153FC8_ovl3.s")

void func_8015439C_ovl3(f32 *arg0) {
    extern f32 D_8012E948[];
    f32 *dst = D_8012E948;

    dst[0] = arg0[0];
    dst[1] = arg0[1];
    dst[2] = arg0[2];
    dst[3] = gEntitiesPosXArray[omCurrentObj->objId];
    dst[4] = gEntitiesPosYArray[omCurrentObj->objId];
    dst[5] = gEntitiesPosZArray[omCurrentObj->objId];
    dst[6] = D_800E17D0[omCurrentObj->objId];
}

#ifdef NON_MATCHING
/* 17/28 (was 19/29). Two residues, both measured in wave 8 after ovl3's rodata
   migration:
     1. IDO folds the single store through the constant address into
        `lui $at; sw ..., %lo(sym+0x1C)($at)`; the ROM materialises the base
        into $a2 with lui+addiu and stores at 0x1C($a2). Swept: D_8012E948 vs
        &D_8012E944[1], a named dst local vs the symbol inline, and a struct
        pointer.
     2. the ROM hoists ONE `or $v0, $zero, $zero` above both early exits and
        emits a duplicated `lw $ra` epilogue (29 insns); every `||`-merged
        form comes out 28. The separate-if form (variant a) reaches the right
        LENGTH at 19/29 -- if you attack this again, start from that one, not
        from this body. Swept: `s32 ret = 0` at declaration and as a statement,
        goto into a shared return block, trailing `return 0` vs falling off. */
s32 func_80154428_ovl3(f32 *arg0) {
    extern f32 D_8012E948[];
    f32 *dst = D_8012E948;
    f32 **temp;

    temp = D_800E0490[omCurrentObj->objId];
    if ((temp == NULL) || ((*(f32 **) &dst[7] = temp[0]) == NULL)) {
        return 0;
    }
    func_8015439C_ovl3(arg0);
    func_8011BF4C(dst, 0);
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_80154428_ovl3.s")
#endif
void func_8015449C_ovl3(void *arg0, s32 arg1) {
    extern f32 D_8012E948[];
    f32 *dst = D_8012E948;

    dst[0] = gEntitiesNextPosXArray[omCurrentObj->objId];
    dst[1] = gEntitiesNextPosYArray[omCurrentObj->objId];
    dst[2] = gEntitiesNextPosZArray[omCurrentObj->objId];
    dst[3] = gEntitiesPosXArray[omCurrentObj->objId];
    dst[4] = gEntitiesPosYArray[omCurrentObj->objId];
    dst[5] = gEntitiesPosZArray[omCurrentObj->objId];
    dst[6] = D_800E17D0[omCurrentObj->objId];
    *(void **) &dst[7] = arg0;
    func_8011BF4C(dst, arg1);
}

void func_80154578_ovl3(void *arg0, s32 arg1, f32 arg2) {
    extern f32 D_8012E948[];
    f32 *dst = D_8012E948;

    dst[0] = gEntitiesNextPosXArray[omCurrentObj->objId];
    dst[1] = gEntitiesNextPosYArray[omCurrentObj->objId];
    dst[2] = gEntitiesNextPosZArray[omCurrentObj->objId];
    dst[3] = gEntitiesPosXArray[omCurrentObj->objId];
    dst[4] = gEntitiesPosYArray[omCurrentObj->objId];
    dst[5] = gEntitiesPosZArray[omCurrentObj->objId];
    dst[6] = arg2;
    *(void **) &dst[7] = arg0;
    func_8011BF4C(dst, arg1);
}

void func_80154648_ovl3(s32 arg0, f32 *arg1, f32 *arg2) {
    f32 *temp;
    f32 **p;

    func_80105180(arg1);
    p = D_800E0490[omCurrentObj->objId];
    temp = p[1];
    arg1[1] = gEntitiesNextPosXArray[arg0];
    arg1[2] = gEntitiesNextPosYArray[arg0] + 20.0f;
    arg1[3] = gEntitiesNextPosZArray[arg0];
    arg1[4] = temp[0];
    arg1[5] = temp[0] + temp[1];
    arg1[6] = temp[0] + temp[2];
    if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
        arg1[7] = temp[3];
        arg1[8] = temp[4];
    } else {
        arg1[7] = temp[4];
        arg1[8] = temp[3];
    }
    arg1[9] = D_800E17D0[omCurrentObj->objId];
    func_801051AC(arg1);
    arg1[1] = gEntitiesNextPosXArray[omCurrentObj->objId];
    arg1[2] = gEntitiesNextPosYArray[omCurrentObj->objId];
    arg1[3] = gEntitiesNextPosZArray[omCurrentObj->objId];
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E8AE0[omCurrentObj->objId] = D_800E8AE0[arg0] & 6;
    if (arg2 != 0) {
        arg2[0] = arg2[3] = gEntitiesNextPosXArray[arg0];
        arg2[1] = arg2[4] = gEntitiesNextPosYArray[arg0];
        arg2[2] = arg2[5] = gEntitiesNextPosZArray[arg0];
        arg2[6] = 0.0f;
        *(s32 *) &arg2[7] = 0;
    }
}

void func_8015488C_ovl3(s32 arg0, f32 *arg1) {
    arg1[0] = arg1[3] = gEntitiesNextPosXArray[arg0];
    arg1[1] = arg1[4] = gEntitiesNextPosYArray[arg0];
    arg1[2] = arg1[5] = gEntitiesNextPosZArray[arg0];
    arg1[6] = 0.0f;
    *(s32 *) &arg1[7] = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_801548DC_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_80154CFC_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_80155088_ovl3.s")

s32 func_80155424_ovl3(void) {
    if (D_800E0490[omCurrentObj->objId] == NULL) {
        D_800E8920[omCurrentObj->objId] = 0;
        return 0;
    }
    func_80154CFC_ovl3();
    return D_800E8920[omCurrentObj->objId];
}

s32 func_80155498_ovl3(void) {
    if (D_800E0490[omCurrentObj->objId] == NULL) {
        D_800E8920[omCurrentObj->objId] = 0;
        return 0;
    }
    func_801548DC_ovl3();
    return D_800E8920[omCurrentObj->objId];
}

s32 func_8015550C_ovl3(s32 arg0, s32 arg1) {
    f32 sp20[4];

    if (D_800E0490[omCurrentObj->objId] == NULL) {
        D_800E8920[omCurrentObj->objId] = 0;
        return 0;
    }
    sp20[0] = gEntitiesNextPosXArray[omCurrentObj->objId];
    sp20[1] = gEntitiesNextPosYArray[omCurrentObj->objId];
    sp20[2] = gEntitiesNextPosZArray[omCurrentObj->objId];
    func_80154CFC_ovl3(arg0);
    return func_80155C68_ovl3(arg1, sp20);
}

s32 func_801555B0_ovl3(GObj *arg0, s32 arg1) {
    s32 ret;
    Vector sp20;

    if (D_800E0490[omCurrentObj->objId] == NULL) {
        D_800E8920[omCurrentObj->objId] = 0;
        return 0;
    }
    sp20.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    sp20.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    sp20.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    ret = func_80155C68_ovl3(arg1, &sp20);
    func_80154CFC_ovl3(arg0);
    return ret;
}

s32 func_80155664_ovl3(void) {
    if (D_800E0490[omCurrentObj->objId] == NULL) {
        D_800E8920[omCurrentObj->objId] = 0;
        return 0;
    }
    func_80155088_ovl3();
    return D_800E8920[omCurrentObj->objId];
}

#ifdef NON_MATCHING
/* 22/88. Frame, stack layout, control flow and the FP block are all exact.
   Residue is one register-allocation cluster: the ROM puts the D_800E0490
   element in $a1 and its ->[1] deref in $a0, which frees $t8 and leaves every
   later objId temp one slot lower (t8/t9/t0/t1 vs t9/t0/t1/t2). Swept: p as a
   named local (in and out of the 4-scalar block), obj hoisted vs omCurrentObj
   inline, ternary vs if/else vs pre-initialised temp, all four tail shapes. */
s32 func_801556D8_ovl3(f32 arg0) {
    s32 sp6C;
    GObj *obj;
    f32 temp;
    s32 ret;
    f32 sp54[3];
    f32 sp48[3];
    f32 sp3C[3];
    s32 d0;
    s32 d1;
    s32 d2;
    s32 func_80103EA0();

    obj = omCurrentObj;
    temp = (D_800E0490[obj->objId] != NULL) ? D_800E0490[obj->objId][1][0] : 0.0f;
    sp3C[2] = 0.0f;
    sp3C[0] = 0.0f;
    sp48[0] = gEntitiesNextPosXArray[obj->objId];
    sp54[0] = sp48[0];
    sp48[2] = gEntitiesNextPosZArray[obj->objId];
    sp54[2] = sp48[2];
    sp54[1] = gEntitiesNextPosYArray[obj->objId] + temp;
    sp3C[1] = 1.0f;
    sp48[1] = sp54[1] + arg0;
    sp6C = func_80103EA0(sp54, sp48, sp3C, 0, 0, 0, 0, 0);
    sp3C[1] = -1.0f;
    sp48[1] = sp54[1] - arg0;
    if (func_80103EA0(sp54, sp48, sp3C, 0, 0, 0, 0, 0) != 0) {
        ret = 1;
    } else {
        ret = 0;
    }
    if (sp6C != 0) {
        ret |= 2;
    }
    return ret;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_801556D8_ovl3.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_80155838_ovl3.s")

/* 47/58: the ROM hoists one `or $v0, $zero, $zero` above both early exits and
   keeps arg1 in $a1 until the last read; IDO instead relocates arg1 into $a3 at
   entry, materialises the `a1 = 0` for func_8011BF4C two slots early, and emits
   a per-exit `move v0,zero`. Swept: separate ifs vs `||` vs nested ifs vs `&&`,
   a `ret` local (init 0 and plain), a goto into a shared return block, the
   fused `(*(f32**)&dst[7] = p[0]) == NULL` vs a separate store, an extra local
   for p[0], declaration order and position of dst/p, dropping the (f32*)arg0
   cast, and a K&R prototype for func_8011BF4C. */
#ifdef NON_MATCHING
s32 func_80155C68_ovl3(s32 arg0, f32 *arg1) {
    f32 *dst = (f32 *) arg0;
    f32 **p = D_800E0490[omCurrentObj->objId];

    if ((p == NULL) || ((*(f32 **) &dst[7] = p[0]) == NULL)) {
        return 0;
    }
    dst[0] = arg1[0];
    dst[1] = arg1[1];
    dst[2] = arg1[2];
    dst[3] = gEntitiesPosXArray[omCurrentObj->objId];
    dst[4] = gEntitiesPosYArray[omCurrentObj->objId];
    dst[5] = gEntitiesPosZArray[omCurrentObj->objId];
    dst[6] = gEntitiesAngleYArray[omCurrentObj->objId];
    func_8011BF4C(dst, 0);
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_80155C68_ovl3.s")
#endif
void func_80155D50_ovl3(f32 *arg0, s32 arg1, s32 arg2, s32 arg3) {
    arg0[0] = gEntitiesNextPosXArray[arg3];
    arg0[1] = gEntitiesNextPosYArray[arg3];
    arg0[2] = gEntitiesNextPosZArray[arg3];
    arg0[3] = gEntitiesPosXArray[arg3];
    arg0[4] = gEntitiesPosYArray[arg3];
    arg0[5] = gEntitiesPosZArray[arg3];
    arg0[6] = gEntitiesAngleYArray[arg3];
    *(s32 *) &arg0[7] = arg1;
    func_8011BF4C(arg0, arg2);
}

void func_80155DF0_ovl3(f32 *arg0, s32 arg1, f32 *arg2, s32 arg3, s32 arg4) {
    arg0[0] = arg0[3] = arg2[0];
    arg0[1] = arg0[4] = arg2[1];
    arg0[2] = arg0[5] = arg2[2];
    arg0[6] = gEntitiesAngleYArray[arg4];
    *(s32 *) &arg0[7] = arg1;
    func_8011BF4C(arg0, arg3);
}

s32 func_80155E58_ovl3(void) {
    u8 *temp;
    s32 idx;
    s32 ret;

    temp = func_8011BABC();
    temp[0x54] = 2;
    idx = D_800E0D50[omCurrentObj->objId];
    ret = func_801BBE50_ovl7(temp, D_800DE350[idx]->data.ptr, idx);
    D_800E83E0[ret] = 3;
    D_800E8220[ret] = 0;
    return 0;
}

s32 func_80155ED8_ovl3(void) {
    func_8011BABC()[0x54] = 2;
    play_sound(0x25A);
    return 1;
}

extern s32 D_8012E7FC;
extern u8 *func_8011BD30();
extern void func_800A4DB8(Vector *, void *);
extern void func_800A802C(s32, s32, s32, Vector *, Vector *);
extern void func_800A7F74(s32, s32, u32, f32, f32, f32);
extern void func_800BB468(s32, s32);

s32 func_80155F0C_ovl3(struct CollisionTriangle *tri) {
    u8 *temp;
    Vector sp38;
    Vector sp2C;

    if ((*(s32 *) ((u8 *) &D_8012E7FC + 8) == 2) || (tri->collisionParameter == 0)) {
        temp = func_8011BABC(tri);
        temp[0x54] = 2;
        play_sound(0xA);
        utilGetTransformSRT(&sp38, temp);
        func_800A4DB8(&sp2C, temp);
        func_800A802C(6, 3, tri->breakParticle * 2, &sp38, &sp2C);
        func_800BB468(0, 0);
        goto ret0;
    }
    utilGetTransformSRT(&sp38, func_8011BD30(tri));
    func_800A7F74(6, 3, tri->breakParticle * 2 + 1, D_800EA6E0[omCurrentObj->objId],
                  D_800EA8A0[omCurrentObj->objId], D_800EAA60[omCurrentObj->objId]);
    D_800E8220[omCurrentObj->objId] = 1;
    return 1;
ret0:
    return 0;
}


