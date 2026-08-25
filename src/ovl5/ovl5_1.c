// possibly mglib.c

#include "common.h"

#include "sounds.h"
#include "SPObj.h"

#include "main/fault.h"
#include "main/contpad.h"
#include "main/object_manager.h"
#include "ovl1/sprite.h"
#include "ovl1/ovl1_2_2.h"
#include "ovl1/track.h"
#include "ovl1/util.h"
#include "track_arrays.h"
#include "unk_structs/D_800D7178.h"

extern u32 D_800D6B24;

extern u8 D_800D6BB9, D_800D6BBA, D_800D6BBB;

void HS64_PerspectiveF(Mat4 mf, u16 *perspNorm, f32 fovy, f32 aspect, f32 near, f32 far, f32 scale);
void guLookAtF(f32 mf[4][4], f32 xEye, f32 yEye, f32 zEye, f32 xAt, f32 yAt, f32 zAt, f32 xUp, f32 yUp, f32 zUp);

SPObj *func_8015C740_ovl5(GObj *gobj, struct UnkStruct8015C740 *arg1) {
    SPObj *sprite; 

    sprite = func_800AC954(gobj, arg1->mode, func_800A8C40(arg1->image));
    if (sprite == NULL) {
        fatal_printf("Can't get spobj in mglib\n");
        while (1);
    }
    sprite->xOffset = arg1->xOffset;
    sprite->yOffset = arg1->yOffset;
    if (arg1->primColor[0] != 0x29A) {
        sprite->primColorRed = arg1->primColor[0];
        sprite->primColorGreen = arg1->primColor[1];
        sprite->primColorBlue = arg1->primColor[2];
    }
    if (arg1->envColor[0] != 0x29A) {
        sprite->envColorRed = arg1->envColor[0];
        sprite->envColorGreen = arg1->envColor[1];
        sprite->envColorBlue = arg1->envColor[2];
    }
    sprite->renderFlags |= arg1->flags;
    return sprite;
}

void func_8015C804_ovl5(SPObj *sprite, f32 x, f32 y) {
    sprite->xOffset = x - (((u32)sprite->width * sprite->xScale) / 2);
    sprite->yOffset = y - (((u32)sprite->height * sprite->yScale) / 2);
}

void func_8015C884_ovl5(f32 m1[4][4], f32 m2[4][4], f32 dst[4][4]) {
    s32 i, j, k;

    for (i = 0; i < 4; i++) {
        for (j = 0; j < 4; j++) {
            dst[i][j] = 0.0f;
            for (k = 0; k < 4; k++) {
                dst[i][j] += m1[i][k] * m2[k][j];
            }
        }
    }
}

struct UnkStruct8015C9B4 {
    u8 pad0[0x1C];
    u16 perspNorm; // 0x1C
    f32 fovy;      // 0x20
    f32 aspect;    // 0x24
    f32 near;      // 0x28
    f32 far;       // 0x2C
    f32 scale;     // 0x30
    u8 pad34[8];   // 0x34
    f32 xEye;      // 0x3C
    f32 yEye;      // 0x40
    f32 zEye;      // 0x44
    f32 xAt;       // 0x48
    f32 yAt;       // 0x4C
    f32 zAt;       // 0x50
    f32 xUp;       // 0x54
    f32 yUp;       // 0x58
    f32 zUp;       // 0x5C
};

/* FACTORY: 14 of 113 words DIFFER as the file stands (13 of 112 once the
 * swallowed stub below is written out). The whole residue is ONE FP register
 * permutation: the ROM keeps `w` in $f16 and `divisor` in $f14, this draft has
 * them the other way round and every mov.s/c.lt.s/div.s below follows.
 * Re-swept 2026-08-25 and every one of these is byte-identical at 14/113:
 * all eight declaration orders that keep the frame (moving `divisor` before
 * `w`, first, or `w` first), a ternary for `absW`, a ternary for the inner
 * -0.1/+0.1 pick, a separate reciprocal variable, dividing at each use,
 * testing `divisor < 0.0f` instead of `w < 0.0f` in the inner branch,
 * computing `absW` from `divisor`, and reversing the two multiply operands.
 * Worse: `>=` polarity 15, `divisor = w` moved below the absW branch (the
 * spill of `y` disappears), an if/else that assigns `divisor` in both arms 46,
 * hoisting `absW`'s initialiser 52, dropping `absW` entirely 36.
 * The measured law behind it: IDO ranks the three held FP webs by live-range
 * length and hands out $f18/$f16/$f14 in that order, and `divisor` (defined
 * one instruction after `w` but live to the last multiply) always outranks
 * `w`. No source spelling reorders them. Permuter fuel.
 *
 * The listing swallows the next, unnamed function of the TU inside its own
 * `.size` (`jr $ra; nop` at 0x8015CB74, with func_8015CB7C_ovl5 following --
 * padtrap.py class 'swallowed'). That is NOT a padding trap: a conversion
 * writes it out as `void func_8015CB74_ovl5(void) {}` after this one, the way
 * ovl5_2.c does for func_80160A70_ovl5, and verify.py then trims the pair
 * (the 13/112 above is measured WITH the stub). Body-blocked only. */
#ifdef NON_MATCHING
void func_8015C9B4_ovl5(struct UnkStruct8015C9B4 *arg0, Vector *vec, f32 *outX, f32 *outY) {
    Mat4 dst;
    Mat4 persp;
    Mat4 lookat;
    f32 x;
    f32 w;
    f32 absW;
    f32 divisor;
    f32 y;
    f32 pad1;
    f32 pad2;

    HS64_PerspectiveF(persp, &arg0->perspNorm, arg0->fovy, arg0->aspect, arg0->near, arg0->far, arg0->scale);
    guLookAtF(lookat,
                arg0->xEye, arg0->yEye, arg0->zEye,
                arg0->xAt, arg0->yAt, arg0->zAt,
                arg0->xUp, arg0->yUp, arg0->zUp
             );
    func_8015C884_ovl5(lookat, persp, dst);
    x = (dst[0][0] * vec->x) + (dst[1][0] * vec->y) + (dst[2][0] * vec->z) + dst[3][0];
    y = (dst[0][1] * vec->x) + (dst[1][1] * vec->y) + (dst[2][1] * vec->z) + dst[3][1];
    w = (dst[0][3] * vec->x) + (dst[1][3] * vec->y) + (dst[2][3] * vec->z) + dst[3][3];
    divisor = w;
    if (w < 0.0f) {
        absW = -w;
    } else {
        absW = w;
    }
    if (absW < 0.1f) {
        if (w < 0.0f) {
            divisor = -0.1f;
        } else {
            divisor = 0.1f;
        }
    }
    divisor = 1.0f / divisor;
    *outX = x * divisor;
    *outY = y * divisor;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_1/func_8015C9B4_ovl5.s")
#endif
void func_8015CB7C_ovl5(void) {
    if ((D_800D6B24 == 0) && (D_800D7178.unk74 == 0)) {
        if (gPlayerControllers[0].buttonPressed & START_BUTTON) {
            s32 track;

            play_sound(SOUND_MINIPAUSE1);
            utilPauseAllGObjs();
            D_800D7178.unk74 = 1;
            switch (D_800D7178.unk44) {
                case 29:
                    track = request_track_3(8, 0, 0x70);
                    break;
                case 31:
                    track = request_track_3(6, 0, 0x70);
                    break;
                case 30:
                    track = request_track_3(7, 0, 0x70);
                    break;
            }
            D_800E98E0[track] = 0;
        }
    } else {
        if (D_800D7178.unk78 != 0) {
            if (D_800D7178.unk78 == 2) {
                utilResumeAllGObjs();
            }
            D_800D7178.unk74 = 0;
            D_800D7178.unk78 = 0;
        }
    }
    omUpdateAll();
}

u8 func_8015CCA8_ovl5(s32 arg0) {
    switch (arg0) {
        case 29: return D_800D6BB9;
        case 30: return D_800D6BBB;
        case 31: return D_800D6BBA;
    }
}
