#include "common.h"
#include "types.h"
#include <macros.h>
#include <ultra64.h>
#include <PR/gs2dex.h>
#include "PR/gbi.h"
#include "ovl1/ovl1_5.h"
#include "main/gtl.h"

struct UNK_D_8012BBF8 {
    struct UNK_D_8012BBF8_unk0 *unk0;
    float unk4;
    u16 unk8;
    u16 unkA;
    u32 unkC;
};

struct UNK_D_8012B9B8 {
    /*0x00*/ u32 unk0;
    /*0x04*/ u32 unk4;
    /*0x08*/ u16 unk8;
    /*0x0A*/ u16 unkA;
    /*0x0C*/ u32 unkC;
    /*0x10*/ float unk10;
    /*0x14*/ float unk14;
    /*0x18*/ u32 unk18;
    /*0x1C*/ u32 unk1C;
    /*0x20*/ u32 unk20;
    /*0x24*/ u32 unk24;
    /*0x28*/ u32 unk28;
    /*0x2C*/ u32 unk2C;
};

struct UNK_D_8012BBF8_unk0 {
    /*0x00*/ float unk0;
    /*0x04*/ u32 unk4;
    /*0x08*/ float unk8;
    /*0x0C*/ float unkC;
    /*0x10*/ float unk10;
    /*0x14*/ u8 unk14;
    /*0x15*/ u8 unk15;
    /*0x16*/ u8 unk16;
    /*0x17*/ u8 unk17;
    /*0x18*/ u8 unk18;
    /*0x19*/ u8 unk19;
    /*0x1A*/ u8 unk1A;
    /*0x1B*/ u8 unk1B;
    /*0x1C*/ float unk1C;
    /*0x20*/ float unk20;
    /*0x24*/ float unk24;
    /*0x28*/ float unk28;
    /*0x2C*/ float unk2C;
};

extern struct UNK_D_8012BBF8 D_8012BBF8[10];
extern struct UNK_D_8012B9B8 D_8012B9B8[];
extern u32 D_8012B9B0;
extern u32 D_80124740[];

#ifdef PORT
/* The PORT arms below poke real GObj/Camera fields, so pull the object
 * manager's own declarations in place of the two loose ones the N64 build
 * uses (their s32-shaped prototypes clash with the real ones). */
#include "GObj.h"
#include "main/object_manager.h"
#include "main/math.h"
#else
s32 HS64_omMakeGObj(s32, void *, s32, s32);
void omCreateProcess(s32, void *, s32, s32);
#endif
void *func_80100AC8(void *arg0);
f32 func_80100EE4(s32 arg0);

void func_800FF5E0(s32 arg0, f32 arg1, f32 arg2) {
    struct UNK_D_8012B9B8 *temp_a1;
    struct UNK_D_8012BBF8 *temp_v0;
    struct UNK_D_8012BBF8_unk0 *temp_v1;

    temp_v0 = &D_8012BBF8[arg0];
    temp_v1 = temp_v0->unk0;
    temp_v0->unk4 = temp_v0->unk4 + arg2;
    temp_a1 = &D_8012B9B8[arg0];
    temp_v1->unk20 = temp_v1->unk20 + arg1;
    temp_v1->unk24 = temp_v1->unk24 + arg2;
    temp_v1->unk28 = temp_a1->unk10;
    temp_v1->unk2C = temp_a1->unk14;
}

void func_800FF64C(u32 arg0) {
    extern u8 D_800D478C[];
    struct UNK_D_8012BBF8_unk0 *temp_v1;
    u8 *temp_a3;
    u8 *temp_t1;
    u16 temp_a1;
    u32 i;

    for (i = 0; i < *(vu32 *)&D_8012B9B0; i++) {
        temp_a1 = D_8012B9B8[i].unk8;
        if ((temp_a1 & 0xC0) == 0) {
            continue;
        }
        if (arg0 != D_8012B9B8[i].unkA) {
            continue;
        }
        temp_v1 = D_8012BBF8[i].unk0;
        if (temp_v1 == NULL) {
            continue;
        }
        temp_a3 = &D_800D478C[arg0 * 12];
        temp_v1->unk14 = temp_a3[0];
        temp_v1->unk15 = temp_a3[1];
        temp_v1->unk16 = temp_a3[2];
        temp_t1 = temp_a3 + 2;
        if (temp_a1 & 0x40) {
            temp_v1->unk18 = temp_t1[1];
            temp_v1->unk19 = temp_t1[2];
            temp_t1 += 3;
            temp_v1->unk1A = temp_t1[0];
        }
    }
}

#define G_CC_UNK1 PRIMITIVE, 0, TEXEL0, 0, 0, 0, 0, TEXEL0
#define G_CC_UNK2 0, 0, 0, PRIMITIVE, 0, 0, 0, TEXEL0

#define TRANSPARENT_SURFACE (1 << 1)

void func_800FF71C(struct UnkStruct800AC954 *arg0, u8 arg1, u8 arg2) {
    gDPPipeSync(gDisplayListHeads[0]++);
    gDPSetCycleType(gDisplayListHeads[0]++, G_CYC_1CYCLE)
    if (arg0->renderFlags & TRANSPARENT_SURFACE) {
        gDPSetRenderMode(gDisplayListHeads[0]++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
        gSPObjRenderMode(gDisplayListHeads[0]++, (G_OBJRM_BILERP | G_OBJRM_XLU));
    } else {
        gDPSetRenderMode(gDisplayListHeads[0]++, G_RM_OPA_SURF, G_RM_OPA_SURF2);
        gSPObjRenderMode(gDisplayListHeads[0]++, G_OBJRM_BILERP);
    }
    if (arg2 & (1 | 2)) {
        if (arg2 & 1) {
            gDPSetPrimColor(gDisplayListHeads[0]++, 0, 0,
                            arg0->primColorRed,
                            arg0->primColorGreen,
                            arg0->primColorBlue,
                            arg0->primColorAlpha);
            gDPSetEnvColor(gDisplayListHeads[0]++,
                           arg0->envColorRed,
                           arg0->envColorGreen,
                           arg0->envColorBlue,
                           arg0->envColorAlpha);
            gDPSetCombineMode(gDisplayListHeads[0]++, G_CC_BLENDPEDECALA, G_CC_BLENDPEDECALA);
            return;
        } else {
            gDPSetPrimColor(gDisplayListHeads[0]++, 0, 0,
                            arg0->primColorRed,
                            arg0->primColorGreen,
                            arg0->primColorBlue,
                            arg0->primColorAlpha);
            gDPSetCombineMode(gDisplayListHeads[0]++, G_CC_UNK1, G_CC_UNK1);
            return;
        }
    }
    if (arg1 == 4) {
        gDPSetPrimColor(gDisplayListHeads[0]++, 0, 0,
                        arg0->primColorRed,
                        arg0->primColorGreen,
                        arg0->primColorBlue,
                        arg0->primColorAlpha);
        gDPSetCombineMode(gDisplayListHeads[0]++, G_CC_UNK2, G_CC_UNK2);
        return;
    }
    gDPSetCombineMode(gDisplayListHeads[0]++, G_CC_DECALRGBA, G_CC_DECALRGBA);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_6/func_800FF9B4.s")

#ifdef MIPS_TO_C
/* FACTORY: 203/206, exact insn count and full save set; residue is a +0x28
 * frame delta (temp locals over-slotted) with its offset cascade. */
void func_80100790(void *arg0) {
    void func_800FF9B4(Gfx **, void *, f32 *, void *, f32, f32);
    void func_800FF71C(SPObj *, u8, u8);
    s32 func_800ACE1C(u8, u16 *);
    extern u8 D_8012BB98[];
    f32 sp74;
    f32 sp78;
    f32 sp7C;
    f32 sp80;
    SPObj *var_s0;
    u8 *temp_s3;
    s32 var_s6;

    var_s0 = *(SPObj **) ((u8 *) arg0 + 0x4C);
    temp_s3 = &D_8012BB98[*(s32 *) arg0 * 0x18];
    if (var_s0 != NULL) {
        do {
            void *temp_v1 = var_s0->unk3C;
            u16 temp_v0;

            sp74 = var_s0->xOffset;
            if (!(*(f32 *) (temp_s3 + 0x10) < sp74)) {
                sp78 = var_s0->yOffset;
                if (!(*(f32 *) (temp_s3 + 0x14) < sp78)) {
                    temp_v0 = *(u16 *) ((u8 *) temp_v1 + 0xE);
                    if (temp_v0 & 4) {
                        sp7C = *(f32 *) (temp_s3 + 0x10);
                    } else {
                        sp7C = ((f32) var_s0->width * var_s0->unk28) + sp74;
                    }
                    if (!(sp7C < *(f32 *) (temp_s3 + 8))) {
                        f32 temp_f20 = (f32) var_s0->height * var_s0->unk2C;

                        if (temp_v0 & 8) {
                            u8 temp_t4 = var_s0->unk12 ^ 1;
                            u8 *temp_s1;
                            f32 temp_f8;

                            var_s0->unk12 = temp_t4;
                            temp_s1 = (u8 *) var_s0 + (temp_t4 * 0x60) + 0x40;
                            func_800FF71C(var_s0, temp_s1[0x16], *((u8 *) temp_v1 + 0xF));
                            var_s6 = func_800ACE1C(temp_s1[0x16], (u8 *) var_s0 + (var_s0->unk12 * 0x60) + 0x68);
                            temp_f8 = sp78 + 1.0f;
                            sp80 = temp_f8;
                            if (temp_f8 != *(f32 *) (temp_s3 + 0x14)) {
                                do {
                                    f32 temp_f18 = sp80 - 1.0f;
                                    f32 temp_f6 = temp_f18 + temp_f20;

                                    sp78 = temp_f18;
                                    sp80 = temp_f6;
                                    if (*(f32 *) (temp_s3 + 0x14) < temp_f6) {
                                        sp80 = *(f32 *) (temp_s3 + 0x14);
                                    }
                                    func_800FF9B4(gDisplayListHeads, temp_s1, &sp74, temp_s3 + 8, var_s0->unk28, var_s0->unk2C);
                                } while (sp80 != *(f32 *) (temp_s3 + 0x14));
                            }
                            goto block_20;
                        }
                        sp80 = temp_f20 + sp78;
                        if (!(sp80 < *(f32 *) (temp_s3 + 0xC))) {
                            u8 temp_t0 = var_s0->unk12 ^ 1;
                            u8 *temp_s1_2;

                            var_s0->unk12 = temp_t0;
                            temp_s1_2 = (u8 *) var_s0 + (temp_t0 * 0x60) + 0x40;
                            func_800FF71C(var_s0, temp_s1_2[0x16], *((u8 *) temp_v1 + 0xF));
                            var_s6 = func_800ACE1C(temp_s1_2[0x16], (u8 *) var_s0 + (var_s0->unk12 * 0x60) + 0x68);
                            func_800FF9B4(gDisplayListHeads, temp_s1_2, &sp74, temp_s3 + 8, var_s0->unk28, var_s0->unk2C);
block_20:
                            if (var_s6 != 0) {
                                Gfx *temp_v1_2 = *gDisplayListHeads;

                                *gDisplayListHeads = temp_v1_2 + 1;
                                temp_v1_2->words.w1 = 0;
                                temp_v1_2->words.w0 = 0xE3001001;
                            }
                        }
                    }
                }
            }
            var_s0 = (SPObj *) var_s0->unk8;
        } while (var_s0 != NULL);
    }
}
#elif defined(PORT)
/* PORT: skybox-layer draw callback (behavioral). The ROM walks the GObj's
 * SPObj chain, culls each layer against the D_8012BB98 screen rect, and
 * emits it as rows of RDP tile rectangles (asm func_800FF9B4, a 900-insn
 * per-format emitter). Here each visible layer is emitted as ONE S2DEX
 * BG_1CYC command over its clipped span: the bg block already carries the
 * image setup from creation, the frame rect is set to the span, and 1:1
 * scale lets the bg pipeline wrap the image across the frame -- the same
 * path the compiled generic sprite draw (sprite.c func_800AD1A0 case 1)
 * uses. Mode/color setup and TLUT handling mirror that function exactly.
 * Block access is by raw PC offsets (+0x48, 0x70 stride), the same layout
 * PC_SPOBJ_FLIP below documents against include/SPObj.h's asserts. */
void func_80100790(struct GObj *gobj) {
    extern Gfx *gDisplayListHeads[];
    s32 func_800ACE1C(u8, u16 *);
    extern f32 D_8012BB98[];
    struct UnkStruct800AC954 *sp = (struct UnkStruct800AC954 *) (uintptr_t) gobj->unk4C;
    f32 *rect = &D_8012BB98[gobj->objId * 6];

    while (sp != NULL) {
        struct UNK_D_8012BBF8 *slot = (struct UNK_D_8012BBF8 *) (uintptr_t) sp->unk3C;
        u16 out = slot != NULL ? ((u16 *) &slot->unkC)[1] : 0;
        f32 x0 = sp->xOffset;
        f32 y0 = sp->yOffset;
        f32 spanW = (f32) sp->width * sp->unk28;
        f32 spanH = (f32) sp->height * sp->unk2C;
        f32 x1 = (out & 4) ? rect[4] : x0 + spanW;
        f32 y1 = (out & 8) ? rect[5] : y0 + spanH;

        if (rect[4] < x0 || rect[5] < y0 || x1 < rect[2] || y1 < rect[3]) {
            sp = (struct UnkStruct800AC954 *) (uintptr_t) sp->unk8;
            continue;
        }
        if (x0 < rect[2]) {
            x0 = rect[2];
        }
        if (y0 < rect[3]) {
            y0 = rect[3];
        }
        if (rect[4] < x1) {
            x1 = rect[4];
        }
        if (rect[5] < y1) {
            y1 = rect[5];
        }
        if (x1 > x0 && y1 > y0) {
            u8 buf = (sp->unk12 ^= 1);
            uObjBg *bg = (uObjBg *) ((u8 *) sp + 0x48 + buf * 0x70);
            u16 *tlut = (u16 *) ((u8 *) bg + sizeof(uObjBg));
            s32 loadedTlut;
            Gfx *g;

            bg->s.frameX = (s16) (s32) (x0 * 4.0f) & ~3;
            bg->s.frameY = (s16) (s32) (y0 * 4.0f) & ~3;
            bg->s.frameW = (u16) (s32) ((x1 - x0) * 4.0f);
            bg->s.frameH = (u16) (s32) ((y1 - y0) * 4.0f);
            bg->s.scaleW = 1 << 10;
            bg->s.scaleH = 1 << 10;
            bg->s.imageX = 0;
            bg->s.imageY = 0;

            gDPPipeSync(gDisplayListHeads[0]++);
            func_800FF71C(sp, 0, (u8) out);
            loadedTlut = func_800ACE1C(bg->s.imageFmt, tlut);
            g = gDisplayListHeads[0]++;
            g->words.w0 = 0x09000000;
            g->words.w1 = (u32) (uintptr_t) bg;
            if (loadedTlut != 0) {
                g = gDisplayListHeads[0]++;
                g->words.w0 = 0xE3001001;
                g->words.w1 = 0;
            }
        }
        sp = (struct UnkStruct800AC954 *) (uintptr_t) sp->unk8;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_6/func_80100790.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 152/205 (152 words differ; measure_seeds convention), callee-saved
 * permutation. IDO hoists the constant 1 into $s6 where the ROM
 * hoists &D_800D478C into $fp, rotating $s0-$fp by one and shifting the
 * whole body by a single instruction. Body shape, scheduling and the
 * entire loop are otherwise identical. */
void *func_80100AC8(void *arg0) {
    extern u8 D_800D478C[];
    extern u8 D_8012BB98[];
    extern void *D_800D79D8[];
    void func_80100790(void *);
    s32 func_800A8C40(u32);
    SPObj *func_800AC954(void *, s32, s32);
    void omLinkGObjDL(void *, void *, u8, s32, s32);
    s32 objId;
    u32 code;
    s16 *vp;
    u8 *rect;
    f32 cx;
    f32 cy;
    f32 hw;
    f32 hh;
    u32 i;
    u16 out;

    objId = *(s32 *) arg0;
    code = D_80124740[objId];
    omLinkGObjDL(arg0, func_80100790, (u8) code, 0x80000000, code);
    vp = (s16 *) D_800D79D8[(code - 0xA) >> 1];
    rect = &D_8012BB98[objId * 0x18];
    cx = (f32) vp[8] * 0.25f;
    cy = (f32) vp[9] * 0.25f;
    *(f32 *) (rect + 0) = (f32) vp[4] * 0.5f;
    vp += 4;
    *(f32 *) (rect + 4) = (f32) vp[1] * 0.5f;
    hw = *(f32 *) (rect + 0) * 0.5f;
    hh = *(f32 *) (rect + 4) * 0.5f;
    *(f32 *) (rect + 8) = cx - hw;
    *(f32 *) (rect + 0xC) = cy - hh;
    *(f32 *) (rect + 0x10) = cx + hw;
    *(f32 *) (rect + 0x14) = cy + hh;
    for (i = 0; i < D_8012B9B0; i++) {
        struct UNK_D_8012B9B8 *rec = &D_8012B9B8[i];
        struct UNK_D_8012BBF8 *slot;
        SPObj *sprite;
        s16 *pos;
        u8 *col;
        u16 flags;

        out = 0;
        if (code == rec->unk4) {
            slot = &D_8012BBF8[i];
            sprite = func_800AC954(arg0, 1, func_800A8C40(rec->unk0));
            pos = (s16 *) &rec->unkC;
            flags = rec->unk8;
            sprite->xOffset = (f32) pos[0] + *(f32 *) (rect + 8);
            sprite->yOffset = (f32) pos[1] + *(f32 *) (rect + 0xC);
            sprite->unk28 = *(f32 *) &rec->unk10;
            sprite->unk2C = *(f32 *) &rec->unk14;
            if (flags & 0x20) {
                sprite->renderFlags |= 2;
            }
            if (flags & 0xC0) {
                col = D_800D478C + rec->unkA * 12;
                sprite->primColorRed = col[0];
                sprite->primColorGreen = col[1];
                sprite->primColorBlue = col[2];
                sprite->primColorAlpha = 0xFF;
                col += 2;
                if (flags & 0x40) {
                    out = 1;
                    sprite->envColorRed = col[1];
                    sprite->envColorGreen = col[2];
                    col += 3;
                    sprite->envColorBlue = col[0];
                    sprite->envColorAlpha = 0xFF;
                } else if (flags & 0x80) {
                    out = 2;
                }
            }
            if ((flags & 0x105) || (*(f32 *) &rec->unk18 != 0.0f)) {
                out |= 4;
                if (flags & 0x400) {
                    out |= 0x10;
                    sprite->unkBA = 1;
                    sprite->unk5A = 1;
                }
            }
            if ((flags & 0x200) || (*(f32 *) &rec->unk1C != 0.0f)) {
                out |= 8;
            }
            slot->unk0 = (struct UNK_D_8012BBF8_unk0 *) sprite;
            *(s16 *) &slot->unkC = (s16) objId;
            *((s16 *) &slot->unkC + 1) = out;
            *(f32 *) &slot->unk8 = 0.0f;
            slot->unk4 = sprite->yOffset;
            sprite->unk3C = (u32) slot;
        }
    }
    *(s32 *) ((u8 *) arg0 + 0x14) = 0;
}
#elif defined(PORT)
/* PORT: skybox-layer GObj init, from asm/nonmatchings/ovl2/ovl2_6/
 * func_80100AC8.s. One GObj per skybox camera link (D_80124740[objId] in
 * {0xA,0xE,0x12,0x16}); it computes the camera's screen rect into
 * D_8012BB98[objId] from the Camera viewport (the N64 reads Vp halves at
 * +0x8/+0x10; here through the host Camera struct), then creates one SPObj
 * per matching D_8012B9B8 record. Record fields are native (see the skybox
 * copy in ovl2_2.c's func_800F78E4 arm): u16 pair at +8, s16 pair packed in
 * the native u32 at +0xC, value-preserving f32 words after. Colors come
 * from D_800D478C's value-preserving u32 words, so bytes are sub-word
 * extracted big-endian style. The D_8012BBF8 record keeps its LP64 struct
 * layout: the float accumulator lives on unk8/unkA and the u16 pair
 * (objId, computed flags) on unkC -- func_80100EE4's arm below reads them
 * back the same way. */
extern f32 D_800D7B20[];
extern f32 D_800D7B38[];
extern void *D_800D79D8[];
extern f32 D_8012BB98[];
/* These three are PORT-only, and the MIPS_TO_C drafts above declare the same
 * symbols with placeholder types (`s32` for the BGHeader return, `void *`/
 * `s32` for func_800AC954's GObj and C954Arg2 pointers). check_local_protos
 * lists both sets, but the two configurations are disjoint, so nothing is
 * ever compiled with a wrong type. The drafts keep the placeholders because
 * struct BGHeader and struct C954Arg2 are not declared in this TU and naming
 * them inside a prototype would declare fresh incomplete tags. */
struct BGHeader *func_800A8C40(u32);
SPObj *func_800AC954(struct GObj *, u32, void *);
void func_80100790(struct GObj *);

/* D_800D478C is emitted as value-preserving u32 words; this file's compiled
 * func_800FF64C above declares it u8[], so N64 byte offsets are re-mapped to
 * the little-endian host bytes instead of redeclaring the type. */
static u8 pc_sky_color_byte(u32 off) {
    extern u8 D_800D478C[];
    return D_800D478C[(off & ~3u) + (3u - (off & 3u))];
}

/* The mirror-flip flags live inside the SPObj's double-buffered RSP command
 * blocks (include/SPObj.h: gfx[] at LP64 +0x48, sizeof(SPObjGfx) == 0x70,
 * both statically asserted there; imageFlip via the uObjBg overlay). That
 * header's SPObj typedef collides with ovl1_5.h's, so the two offsets are
 * spelled here against ovl1_5.h's view. */
#define PC_SPOBJ_FLIP(sp, buf)                                              \
    (*(u16 *) ((u8 *) (sp) + 0x48 + ((buf) * 0x70) +                        \
               __builtin_offsetof(uObjBg, s.imageFlip)))

void *func_80100AC8(void *arg0) {
    GObj *gobj = arg0;
    s32 objId = gobj->objId;
    u32 code = D_80124740[objId];
    Camera *cam;
    f32 *rect = &D_8012BB98[objId * 6];
    f32 cx;
    f32 cy;
    f32 hw;
    f32 hh;
    u32 i;

    omLinkGObjDL(gobj, func_80100790, (u8) (code & 0xFF), 0x80000000,
                 (s32) code);
    cam = (Camera *) D_800D79D8[(code - 0xA) >> 1];
    cx = (f32) cam->viewport.vp.vtrans[0] * 0.25f;
    cy = (f32) cam->viewport.vp.vtrans[1] * 0.25f;
    rect[0] = (f32) cam->viewport.vp.vscale[0] * 0.5f;
    rect[1] = (f32) cam->viewport.vp.vscale[1] * 0.5f;
    hw = rect[0] * 0.5f;
    hh = rect[1] * 0.5f;
    rect[2] = cx - hw;
    rect[3] = cy - hh;
    rect[4] = cx + hw;
    rect[5] = cy + hh;
    for (i = 0; i < D_8012B9B0; i++) {
        struct UNK_D_8012B9B8 *rec = &D_8012B9B8[i];
        struct UNK_D_8012BBF8 *slot = &D_8012BBF8[i];
        SPObj *sprite;
        u16 flags;
        u16 out;

        if (code != rec->unk4) {
            continue;
        }
        sprite = func_800AC954(gobj, 1, func_800A8C40(rec->unk0));
        sprite->xOffset = (f32) (s16) (rec->unkC >> 16) + rect[2];
        sprite->yOffset = (f32) (s16) rec->unkC + rect[3];
        sprite->unk28 = rec->unk10;
        sprite->unk2C = rec->unk14;
        flags = rec->unk8;
        out = 0;
        if (flags & 0x20) {
            sprite->renderFlags |= 2;
        }
        if (flags & 0xC0) {
            u32 base = rec->unkA * 12;

            sprite->primColorRed = pc_sky_color_byte(base + 0);
            sprite->primColorGreen = pc_sky_color_byte(base + 1);
            sprite->primColorBlue = pc_sky_color_byte(base + 2);
            sprite->primColorAlpha = 0xFF;
            if (flags & 0x40) {
                sprite->envColorRed = pc_sky_color_byte(base + 3);
                sprite->envColorGreen = pc_sky_color_byte(base + 4);
                sprite->envColorBlue = pc_sky_color_byte(base + 5);
                sprite->envColorAlpha = 0xFF;
                out = 1;
            } else if (flags & 0x80) {
                out = 2;
            }
        }
        if ((flags & 0x105) || (*(f32 *) &rec->unk18 != 0.0f)) {
            out |= 4;
            if (flags & 0x400) {
                out |= 0x10;
                PC_SPOBJ_FLIP(sprite, 1) = 1;
                PC_SPOBJ_FLIP(sprite, 0) = 1;
            }
        }
        if ((flags & 0x200) || (*(f32 *) &rec->unk1C != 0.0f)) {
            out |= 8;
        }
        slot->unk0 = (struct UNK_D_8012BBF8_unk0 *) sprite;
        slot->unk4 = sprite->yOffset;
        *(f32 *) &slot->unk8 = 0.0f;
        ((u16 *) &slot->unkC)[0] = (u16) objId;
        ((u16 *) &slot->unkC)[1] = out;
        sprite->unk3C = (u32) (uintptr_t) slot;
    }
    gobj->onUpdate = NULL;
    return NULL;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_6/func_80100AC8.s")
#endif

u32 func_80100DF8(s32 arg0) {
    u32 phi_v0;
    u32 i;

    phi_v0 = D_80124740[arg0];
    for (i = 0; i < D_8012B9B0; i++) {
        if (phi_v0 == D_8012B9B8[i].unk4) {
            return 1;
        }
    }
    return 0;
}

void func_80100E50(u32 arg0) {
    HS64_omMakeGObj(arg0, &func_80100AC8, 0, 0);
}

u32 func_80100E7C(f32 arg0) {
    if (0.0f <= arg0) {
        if (arg0 <= 1.570796371f) {
            return 0;
        }
        return 1;
    }
    if (-1.570796371f <= arg0) {
        return 3;
    }
    return 2;
}

#ifdef MIPS_TO_C
/* FACTORY: 78/278 (78 words differ; measure_seeds convention), FP temp rotation.
 * Exact instruction count, frame (0x48) and stack-slot layout; every
 * branch and every load/store
 * offset matches. The residue is one $f4/$f6 rotation seeded by the
 * `fovy * 3.141592741f` multiply: IDO emits `mul.s $f8,$f6,$f4` for
 * either source spelling (writing the operands swapped only swaps the
 * two lwc1 destinations), i.e. the documented invariant mul.s source
 * operand order, and it cascades as a one-slot rename through the rest
 * of the FP temps. */
f32 func_80100EE4(s32 arg0) {
    extern f32 D_800D7B20[];
    extern f32 D_800D7B38[];
    extern void *D_800D799C;
    extern u8 D_8012BB98[];
    f32 atan2f(f32, f32);
    f32 sqrtf(f32);
    void *cam;
    f32 dEyeX;
    f32 oldEyeY;
    f32 yawFrac;
    f32 pitchFrac;
    f32 oldYaw;
    f32 curYaw;
    f32 dx;
    f32 dz;
    s32 pad;
    u32 quadOld;
    u32 quadCur;
    struct UNK_D_8012BBF8 *slot;
    struct UNK_D_8012B9B8 *rec;
    SPObj *sprite;
    f32 spanY;
    f32 posY;
    f32 overY;
    f32 spanX;
    f32 posX;
    f32 overX;
    u32 w;
    u16 flags;
    u16 idx;
    u32 i;
    s32 n;

    dEyeX = D_800D7B38[3] - D_800D7B20[3];
    oldEyeY = D_800D7B38[4];
    dx = D_800D7B20[0] - D_800D7B20[3];
    dz = D_800D7B20[2] - D_800D7B20[5];
    oldYaw = atan2f(D_800D7B38[2] - D_800D7B38[5], D_800D7B38[0] - D_800D7B38[3]);
    curYaw = atan2f(dz, dx);
    quadOld = func_80100E7C(oldYaw);
    quadCur = func_80100E7C(curYaw);
    if ((quadOld == 1) && (quadCur == 2)) {
        curYaw += 6.283185482f;
    } else if ((quadOld == 2) && (quadCur == 1)) {
        curYaw -= 6.283185482f;
    }
    cam = *(void **) ((u8 *) D_800D799C + 0x3C);
    yawFrac = (oldYaw - curYaw)
              / (((*(f32 *) ((u8 *) cam + 0x20) * 3.141592741f) / 180.0f)
                 * *(f32 *) ((u8 *) cam + 0x24));
    pitchFrac = atan2f(D_800D7B20[1] - D_800D7B20[4], sqrtf((dx * dx) + (dz * dz)))
                / ((*(f32 *) ((u8 *) *(void **) ((u8 *) D_800D799C + 0x3C) + 0x20)
                    * 3.141592741f) / 180.0f);
    for (i = 0; i < D_8012B9B0; i++) {
        slot = &D_8012BBF8[i];
        sprite = (SPObj *) slot->unk0;
        if (sprite != NULL) {
            idx = *(u16 *) &slot->unkC;
            rec = &D_8012B9B8[i];
            flags = rec->unk8;
            if ((flags & 0xA) || (*(f32 *) &rec->unk1C != 0.0f)) {
                posY = slot->unk4;
                spanY = (f32) (sprite->height - 1) * sprite->unk2C;
                if (*(f32 *) &rec->unk1C != 0.0f) {
                    *(f32 *) &slot->unk8 = *(f32 *) &rec->unk1C + *(f32 *) &slot->unk8;
                    *(f32 *) &slot->unk8 = *(f32 *) &slot->unk8
                        - ((f32) (s32) (*(f32 *) &slot->unk8 / spanY) * spanY);
                    posY += *(f32 *) &slot->unk8;
                }
                if (flags & 8) {
                    posY += *(f32 *) &D_8012BB98[idx * 0x18 + 4] * pitchFrac
                            * *(f32 *) &rec->unk2C;
                }
                if (flags & 2) {
                    posY += oldEyeY * *(f32 *) &rec->unk24;
                }
                if (*(u16 *) ((u8 *) &slot->unkC + 2) & 8) {
                    overY = posY - *(f32 *) &D_8012BB98[idx * 0x18 + 0xC];
                    if (0.0f < overY) {
                        n = 1;
                    } else {
                        n = 0;
                    }
                    posY -= (f32) ((s32) (overY / spanY) + n) * spanY;
                }
                sprite->yOffset = posY;
            }
            if ((flags & 5) || (*(f32 *) &rec->unk18 != 0.0f)) {
                posX = sprite->xOffset;
                w = sprite->width;
                spanX = (f32) w * sprite->unk28;
                posX += *(f32 *) &rec->unk18;
                if (flags & 1) {
                    posX += dEyeX * *(f32 *) &rec->unk20;
                }
                if (flags & 4) {
                    posX += *(f32 *) &D_8012BB98[idx * 0x18] * yawFrac
                            * *(f32 *) &rec->unk28;
                }
                if (*(u16 *) ((u8 *) &slot->unkC + 2) & 4) {
                    overX = posX - *(f32 *) &D_8012BB98[idx * 0x18 + 8];
                    if (0.0f < overX) {
                        n = (s32) (overX / spanX) + 1;
                    } else {
                        n = (s32) (overX / spanX);
                    }
                    if ((*(u16 *) ((u8 *) &slot->unkC + 2) & 4) && (n & 1)) {
                        n += 1;
                    }
                    posX -= (f32) n * spanX;
                }
                sprite->xOffset = posX;
            }
        }
    }
}
#elif defined(PORT)
/* PORT: per-frame skybox-layer scroll, from asm/nonmatchings/ovl2/ovl2_6/
 * func_80100EE4.s. Derives this frame's camera yaw/pitch deltas from the
 * D_800D7B20/D_800D7B38 at/eye snapshots (six floats each, ovl2_3.c keeps
 * them), converts them to screen fractions via the scene camera's
 * fovy/aspect, and advances every live layer sprite's x/y offsets by its
 * record's autoscroll speeds and parallax factors, wrapping against the
 * D_8012BB98 rect (horizontal wrap rounds to an even tile count -- the
 * layers are mirror-tiled). Field spelling matches the func_80100AC8 arm
 * above: accumulator on D_8012BBF8.unk8, u16 pair on unkC. */
f32 func_80100EE4(s32 arg0) {
    f32 *b20 = D_800D7B20;
    f32 *b38 = D_800D7B38;
    Camera *cam;
    f32 oldYaw;
    f32 curYaw;
    f32 dEyeX;
    f32 oldEyeY;
    f32 yawFrac;
    f32 pitchFrac;
    f32 mag;
    u32 quadOld;
    u32 quadCur;
    u32 i;

    (void) arg0;
    dEyeX = b38[3] - b20[3];
    oldEyeY = b38[4];
    oldYaw = atan2f(b38[2] - b38[5], b38[0] - b38[3]);
    curYaw = atan2f(b20[2] - b20[5], b20[0] - b20[3]);
    quadOld = func_80100E7C(oldYaw);
    quadCur = func_80100E7C(curYaw);
    if ((quadOld == 1) && (quadCur == 2)) {
        curYaw += 6.283185482f;
    } else if ((quadOld == 2) && (quadCur == 1)) {
        curYaw -= 6.283185482f;
    }
    cam = D_800D799C->data.cam;
    yawFrac = (oldYaw - curYaw) /
              (((cam->perspMtx.persp.fovy * 3.141592741f) / 180.0f) *
               cam->perspMtx.persp.aspect);
    mag = sqrtf(((b20[0] - b20[3]) * (b20[0] - b20[3])) +
                ((b20[2] - b20[5]) * (b20[2] - b20[5])));
    pitchFrac = atan2f(b20[1] - b20[4], mag) /
                ((cam->perspMtx.persp.fovy * 3.141592741f) / 180.0f);
    for (i = 0; i < D_8012B9B0; i++) {
        struct UNK_D_8012BBF8 *slot = &D_8012BBF8[i];
        SPObj *sprite = (SPObj *) slot->unk0;
        struct UNK_D_8012B9B8 *rec = &D_8012B9B8[i];
        f32 *rect;
        u16 idx;
        u16 flags;
        f32 span;
        f32 pos;

        if (sprite == NULL) {
            continue;
        }
        idx = ((u16 *) &slot->unkC)[0];
        flags = rec->unk8;
        rect = &D_8012BB98[idx * 6];
        if ((flags & 0xA) || (*(f32 *) &rec->unk1C != 0.0f)) {
            span = (f32) (sprite->height - 1) * sprite->unk2C;
            pos = slot->unk4;
            if (*(f32 *) &rec->unk1C != 0.0f) {
                f32 acc = *(f32 *) &slot->unk8 + *(f32 *) &rec->unk1C;
                acc -= (f32) (s32) (acc / span) * span;
                *(f32 *) &slot->unk8 = acc;
                pos += acc;
            }
            if (flags & 8) {
                pos += rect[1] * pitchFrac * (*(f32 *) &rec->unk2C);
            }
            if (flags & 2) {
                pos += oldEyeY * (*(f32 *) &rec->unk24);
            }
            if (((u16 *) &slot->unkC)[1] & 8) {
                f32 over = pos - rect[3];
                s32 n = (s32) (over / span);

                if (0.0f < over) {
                    n += 1;
                }
                pos -= (f32) n * span;
            }
            sprite->yOffset = pos;
        }
        if ((flags & 5) || (*(f32 *) &rec->unk18 != 0.0f)) {
            span = (f32) sprite->width * sprite->unk28;
            pos = sprite->xOffset + *(f32 *) &rec->unk18;
            if (flags & 1) {
                pos += dEyeX * (*(f32 *) &rec->unk20);
            }
            if (flags & 4) {
                pos += rect[0] * yawFrac * (*(f32 *) &rec->unk28);
            }
            if (((u16 *) &slot->unkC)[1] & 4) {
                f32 over = pos - rect[2];
                s32 n;

                if (0.0f < over) {
                    n = (s32) (over / span) + 1;
                } else {
                    n = (s32) (over / span);
                }
                if (n & 1) {
                    n += 1;
                }
                pos -= (f32) n * span;
            }
            sprite->xOffset = pos;
        }
    }
    return 0.0f;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_6/func_80100EE4.s")
#endif

void func_8010133C(void) {
    u32 i;

    for (i = 0; i < 10; i++) {
        D_8012BBF8[i].unk0 = NULL;
    }
}

void func_8010137C(void) {
    s32 i;

    func_8010133C();
    for (i = 0; i < 4; i++) {
        if (func_80100DF8(i) != 0) {
            func_80100E50(i);
        }
    }
    omCreateProcess(HS64_omMakeGObj(0, 0, 0x1A, 0x80000000), &func_80100EE4, 1, 0);
}
