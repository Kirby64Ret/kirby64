#include <ultra64.h>

#include <PR/gbi.h>
#include <PR/gu.h>
#include <PR/gs2dex.h>
#include "common.h"
#include "GObj.h"
#include "SPObj.h"

void func_800AC5E0(SPObj *);
void func_800ACB7C(SPObj *);

extern SPObj *D_800DD6E0; // SPObj head
extern SPObj *D_800DD6E4;
extern SPObj *D_800DD6E8;
extern SPObj *D_800DD6EC;
extern SPObj *D_800DD6F0;
extern u8 D_800D4E60[];
extern s16 D_800D4E64;
extern s16 D_800D4E68;
extern s16 D_800D4E6C;
extern s16 D_800D4E70;
extern u8 D_800D4E74;
extern u32 sTextureImageCommand;
extern u32 sSetTileCommand;
extern s8 D_800DD70A;
// mainseg bss
extern Gfx *gDisplayListHeads[4];

struct C954Arg2 {
    /* 0x00 */ u8 unk0;
    /* 0x01 */ u8 unk1;
    /* 0x02 */ u8 unk2;
    /* 0x03 */ u8 unk3;
    /* 0x04 */ u16 width;
    /* 0x06 */ u16 height;
    /* 0x08 */ u32 unk8;
    /* 0x0C */ u32 unkC;
};

#define G_CC_PRIM_RGBA PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0

// The `(u16)` casts are LOAD-BEARING: the target burns TWO virtual registers per
// s16 store (t7/t9/t1/t3/t5) and the uncast form burns one, so every temp came
// out rotated. The cast forks the extra one. `u16` PARAMETERS do not work.
void func_800AB680(s32 arg0, s32 arg1, s32 arg2, s32 arg3, u8 arg4) {
    D_800D4E64 = (u16) arg0 * 4;
    D_800D4E68 = (u16) arg1 * 4;
    D_800D4E6C = (u16) arg2 * 4;
    D_800D4E70 = (u16) arg3 * 4;
    if (arg4 != 0) {
        D_800D4E74 = 1;
        return;
    }
    D_800D4E74 = 0;
}
void func_800AB6D8(Gfx **gp, u32 arg1, s16 arg2, s16 arg3) {
    (*gp)->words.w0 = sTextureImageCommand;
    (*gp)->words.w1 = arg1;
    (*gp)++;
    (*gp)->words.w0 = 0xE6000000;
    (*gp)++;
    (*gp)->words.w0 = 0xF4000000;
    if (D_800DD70A == 3) {
        (*gp)->words.w1 = ((arg3 - 1) << 16) | 0x07000000;
    } else {
        (*gp)->words.w1 = (((arg3 - 1) << 16) | 0x07000000) | ((arg2 * 4) - 1);
    }
    (*gp)++;
}

void func_800AB6D8(Gfx **gp, u32 arg1, s16 arg2, s16 arg3);

void func_800AB790(Gfx **gp, u32 arg1, s16 arg2, s16 arg3, s16 arg4) {
    (*gp)->words.w0 = 0xE8000000;
    (*gp)++;
    (*gp)->words.w0 = arg3 | sSetTileCommand;
    (*gp)->words.w1 = 0x07000000;
    (*gp)++;
    func_800AB6D8(gp, arg1, arg2, arg4);
}

// libreultra/src/gu/us2dex_emu.c `tmemLoad`. The file's statics live in bss:
// D_800DD6FC tmemSliceWmax, D_800DD6FE imageSrcWsize, D_800DD700 flagSplit,
// D_800DD702 imagePtrX0, D_800DD704 imageTop, D_800DD708 tmemSrcLines.
extern u16 D_800DD6FC;
extern u16 D_800DD6FE;
extern s16 D_800DD700;
extern u16 D_800DD702;
extern u32 D_800DD704;
extern s16 D_800DD708;

void func_800AB804(Gfx **pkt, u32 *imagePtr, s16 *imageRemain, s16 drawLines, s16 flagBilerp) {
    s16 loadLines = drawLines + flagBilerp;
    s16 iLoadable = (*imageRemain) - D_800DD700;

    if (iLoadable >= loadLines) {
        func_800AB6D8(pkt, *imagePtr, loadLines, D_800DD6FC);
        (*imagePtr) += D_800DD6FE * drawLines;
        (*imageRemain) -= drawLines;
    } else {
        s16 SubSliceL2, SubSliceD2, SubSliceY2;
        u32 imageTopSeg = D_800DD704 & 0xff000000;

        SubSliceY2 = *imageRemain;
        SubSliceL2 = loadLines - SubSliceY2;
        SubSliceD2 = drawLines - SubSliceY2;

        if (SubSliceL2 > 0) {
            u32 imagePtr2;

            imagePtr2 = D_800DD704 + D_800DD702;
            if (SubSliceY2 & 1) {
                imagePtr2 -= D_800DD6FE;
                imagePtr2 = imageTopSeg | (imagePtr2 & 0x00ffffff);
                SubSliceY2--;
                SubSliceL2++;
            }
            func_800AB790(pkt, imagePtr2, SubSliceL2, SubSliceY2 * D_800DD6FC, D_800DD6FC);
        }
        if (D_800DD700) {
            u32 imagePtr1A, imagePtr1B;
            s16 SubSliceY1, SubSliceL1;
            s16 tmemSH_A, tmemSH_B;

            imagePtr1A = (*imagePtr) + iLoadable * D_800DD6FE;
            imagePtr1B = D_800DD704;
            SubSliceY1 = iLoadable;
            if (SubSliceL1 = iLoadable & 1) {
                imagePtr1A -= D_800DD6FE;
                imagePtr1B -= D_800DD6FE;
                imagePtr1B = imageTopSeg | (imagePtr1B & 0x00ffffff);
                SubSliceY1--;
            }
            SubSliceL1++;
            tmemSH_A = (D_800DD6FE - D_800DD702) >> 3;
            tmemSH_B = D_800DD6FC - tmemSH_A;
            func_800AB790(pkt, imagePtr1B, SubSliceL1, SubSliceY1 * D_800DD6FC + tmemSH_A, tmemSH_B);
            func_800AB790(pkt, imagePtr1A, SubSliceL1, SubSliceY1 * D_800DD6FC, tmemSH_A);
        }
        if (iLoadable > 0) {
            func_800AB790(pkt, *imagePtr, iLoadable, 0, D_800DD6FC);
        } else {
            (*pkt)->words.w0 = sSetTileCommand;
            (*pkt)->words.w1 = 0x07000000;
            (*pkt)++;
        }

        (*imageRemain) -= drawLines;
        if ((*imageRemain) > 0) {
            (*imagePtr) += D_800DD6FE * drawLines;
        } else {
            (*imageRemain) = D_800DD708 - SubSliceD2;
            (*imagePtr) = D_800DD704 + SubSliceD2 * D_800DD6FE + D_800DD702;
        }
    }
}

#ifdef NON_MATCHING
// DRAFT, 657/665. The instruction sequence lines up 1:1 with the ROM but is
// offset by two: the ROM saves s0-s4 and uses $ra as a general register
// (frame 0xE0), this saves s0-s2 (frame 0xD8), so every register differs.
// Two more callee-saved live values are needed. Swept dead locals and
// hoisting the inner-block declarations: no movement.
// libreultra/src/gu/us2dex_emu.c `guS2DEmuBgRect1Cyc`, with Kirby's changes:
// the scale guards, the cached imageSiz in D_800DD70A, and the imageSiz==3 case.
extern s16 D_800D4E78[]; // TMEMSIZE[]
extern s16 D_800D4E84[]; // TMEMMASK[]
extern s16 D_800D4E8C[]; // TMEMSHIFT[]

void func_800ABB4C(Gfx **pkt, uObjBg *bg) {
    s16 frameX0, frameX1, framePtrY0, frameRemain;
    s16 imageX0, imageY0, imageSliceW, imageW;
    s32 imageYorig;
    s16 scaleW, scaleH;

    s16 imageSrcW, imageSrcH;
    s16 tmemSliceLines, imageSliceLines;
    s32 frameSliceLines, frameSliceCount;
    u16 imageS, imageT;
    u32 imagePtr;

    s16 imageISliceL0, imageIY0;
    s32 frameLSliceL0;

    scaleW = bg->s.scaleW;
    scaleH = bg->s.scaleH;
    D_800DD70A = bg->s.imageSiz;
    if (scaleW == 0) {
        scaleW = 1;
    }
    if (scaleH == 0) {
        scaleH = 1;
    }

    {
        s16 pixX0, pixY0, pixX1, pixY1;
        s16 frameY0, frameW, frameH;
        s32 frameWmax, frameHmax;

        frameWmax = ((((s32) bg->s.imageW << 10) / scaleW) - 1) & ~3;
        frameHmax = ((((s32) bg->s.imageH << 10) / scaleH) - 1) & ~3;

        frameW = bg->s.frameW;
        frameH = bg->s.frameH;
        frameX0 = bg->s.frameX;
        frameY0 = bg->s.frameY;
        if ((frameWmax = bg->s.frameW - frameWmax) < 0) frameWmax = 0;
        if ((frameHmax = bg->s.frameH - frameHmax) < 0) frameHmax = 0;
        frameW -= frameWmax;
        frameH -= frameHmax;
        if (bg->s.imageFlip & G_BG_FLAG_FLIPS) {
            frameX0 += frameWmax;
        }

        pixX0 = D_800D4E64 - frameX0;
        pixY0 = D_800D4E68 - frameY0;
        pixX1 = frameW - D_800D4E6C + frameX0;
        pixY1 = frameH - D_800D4E70 + frameY0;

        if (pixX0 < 0) pixX0 = 0;
        if (pixY0 < 0) pixY0 = 0;
        if (pixX1 < 0) pixX1 = 0;
        if (pixY1 < 0) pixY1 = 0;

        frameW = frameW - (pixX0 + pixX1);
        frameH = frameH - (pixY0 + pixY1);
        frameX0 = frameX0 + pixX0;
        frameY0 = frameY0 + pixY0;

        if (frameW <= 0 || frameH <= 0) return;

        frameX1 = frameX0 + frameW;
        framePtrY0 = frameY0 >> 2;
        frameRemain = frameH >> 2;

        imageSrcW = bg->s.imageW << 3;
        imageSrcH = bg->s.imageH << 3;

        imageSliceW = (imageW = frameW * scaleW >> 7) + D_800D4E74 * 32;
        if (bg->s.imageFlip & G_BG_FLAG_FLIPS) {
            imageX0 = bg->s.imageX + (pixX1 * scaleW >> 7);
        } else {
            imageX0 = bg->s.imageX + (pixX0 * scaleW >> 7);
        }
        imageY0 = bg->s.imageY + (pixY0 * scaleH >> 7);
        imageYorig = bg->s.imageYorig;

        while (imageX0 >= imageSrcW) {
            imageX0 -= imageSrcW;
            imageY0 += 32;
            imageYorig += 32;
        }

        while (imageY0 >= imageSrcH) {
            imageY0 -= imageSrcH;
            imageYorig -= imageSrcH;
        }
    }

    D_800DD700 = (imageX0 + imageSliceW >= imageSrcW);
    D_800DD708 = imageSrcH >> 5;

    {
        s16 tmemSize, tmemMask, tmemShift;
        s32 imageNumSlice;
        s32 imageSliceWmax;
        s32 imageLYoffset, frameLYoffset;
        s32 imageLHidden, frameLHidden;
        s32 frameLYslice;

        tmemSize = D_800D4E78[bg->s.imageFmt];
        tmemMask = D_800D4E84[bg->s.imageSiz];
        tmemShift = D_800D4E8C[bg->s.imageSiz];

        if (D_800DD70A == 3) {
            tmemSize = 0x1E0;
            imageSliceWmax = 0x2800;
        } else {
            imageSliceWmax = (((s32) bg->s.frameW * (s32) scaleW) >> 7) + (D_800D4E74 << 5);
            if (imageSliceWmax > imageSrcW) imageSliceWmax = imageSrcW;
        }
        D_800DD6FC = (imageSliceWmax + tmemMask) / tmemShift + 1;

        tmemSliceLines = tmemSize / D_800DD6FC;
        imageSliceLines = tmemSliceLines - D_800D4E74;
        frameSliceLines = (imageSliceLines << 20) / scaleH;

        imageLYoffset = ((s32) imageY0 - imageYorig) << 5;
        if (imageLYoffset < 0) imageLYoffset -= (scaleH - 1);
        frameLYoffset = imageLYoffset / scaleH;
        frameLYoffset <<= 10;

        if (frameLYoffset >= 0) {
            imageNumSlice = frameLYoffset / frameSliceLines;
        } else {
            imageNumSlice = (frameLYoffset - frameSliceLines + 1) / frameSliceLines;
        }

        frameLYslice = (frameLSliceL0 = frameSliceLines * imageNumSlice) & ~1023;
        frameLHidden = frameLYoffset - frameLYslice;
        imageLHidden = (frameLHidden >> 10) * scaleH;

        frameLSliceL0 = (frameLSliceL0 & 1023) + frameSliceLines - frameLHidden;

        imageT = (imageLHidden >> 5) & 31;
        imageLHidden >>= 10;
        imageISliceL0 = imageSliceLines - imageLHidden;
        imageIY0 = imageSliceLines * imageNumSlice + (imageYorig & ~31) / 32 + imageLHidden;
        if (imageIY0 < 0) imageIY0 += (bg->s.imageH >> 2);
        if (imageIY0 >= (bg->s.imageH >> 2)) imageIY0 -= (bg->s.imageH >> 2);
        D_800DD704 = (u32) bg->s.imagePtr;
        D_800DD6FE = (imageSrcW / tmemShift) << 3;
        D_800DD702 = (imageX0 / tmemShift) << 3;
        imagePtr = D_800DD704 + D_800DD6FE * imageIY0 + D_800DD702;

        imageS = imageX0 & tmemMask;
        if (bg->s.imageFlip & G_BG_FLAG_FLIPS) {
            imageS = -(imageS + imageW);
        }
    }

    sTextureImageCommand = 0xfd100000 + (D_800DD6FE >> 1) - 1;
    sSetTileCommand = 0xf5100000 + (D_800DD6FC << 9);

    (*pkt)->words.w0 = sSetTileCommand;
    (*pkt)->words.w1 = 0x07000000;
    (*pkt)++;
    (*pkt)->words.w0 = sSetTileCommand;
    ((u8 *) &((*pkt)->words.w0))[1] = (bg->s.imageFmt << 5) | (bg->s.imageSiz << 3);
    (*pkt)->words.w1 = 0x0007c1f0 | (bg->s.imagePal << 20);
    (*pkt)++;
    (*pkt)->words.w0 = 0xf2000000;
    (*pkt)->words.w1 = 0x00000000;
    (*pkt)++;

    {
        s16 imageRemain;
        s16 imageSliceH, frameSliceH;

        imageRemain = D_800DD708 - imageIY0;
        imageSliceH = imageISliceL0;
        frameSliceCount = frameLSliceL0;

        while (1) {
            frameSliceH = frameSliceCount >> 10;
            if (frameSliceH <= 0) {
                imageRemain -= imageSliceH;
                if (imageRemain > 0) {
                    imagePtr += D_800DD6FE * imageSliceH;
                } else {
                    imagePtr = D_800DD704 - (imageRemain * D_800DD6FE) + D_800DD702;
                    imageRemain += D_800DD708;
                }
            } else {
                s16 framePtrY1;

                frameSliceCount &= 1023;
                if ((frameRemain -= frameSliceH) < 0) {
                    frameSliceH += frameRemain;
                    imageSliceH += ((frameRemain * scaleH) >> 10) + 1;
                    if (imageSliceH > imageSliceLines) imageSliceH = imageSliceLines;
                }
                func_800AB804(pkt, &imagePtr, &imageRemain, imageSliceH, D_800D4E74);

                framePtrY1 = framePtrY0 + frameSliceH;

                (*pkt)->words.w0 = 0xe7000000;
                (*pkt)++;

                (*pkt)->words.w0 = 0xe4000000 | (frameX1 << 12) | (framePtrY1 << 2);
                (*pkt)->words.w1 = (frameX0 << 12) | (framePtrY0 << 2);
                (*pkt)++;
                (*pkt)->words.w0 = G_RDPHALF_1 << 24;
                (*pkt)->words.w1 = (imageS << 16) | imageT;
                (*pkt)++;
                (*pkt)->words.w0 = G_RDPHALF_2 << 24;
                (*pkt)->words.w1 = (scaleW << 16) | scaleH;
                (*pkt)++;

                framePtrY0 = framePtrY1;

                if (frameRemain <= 0) {
                    return;
                }
            }
            frameSliceCount += frameSliceLines;
            imageSliceH = imageSliceLines;
            imageT = 0;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/sprite/func_800ABB4C.s")
#endif

SPObj *pop_spobj(void) {
    SPObj *ret;

    ret = D_800DD6E0;
    if (ret == NULL) {
        return NULL;
    }
    D_800DD6E0 = ret->next;
    return ret;
}

void func_800AC5E0(SPObj *spobj) {
    if (D_800DD6E8 == NULL) {
        D_800DD6E8 = spobj;
    }
    spobj->next = D_800DD6E4;
    D_800DD6E4 = spobj;
}

void func_800AC610(void) {
    if (D_800DD6EC != NULL) {
        D_800DD6F0->next = D_800DD6E0;
        D_800DD6E0 = D_800DD6EC;
        D_800DD6EC = D_800DD6F0 = NULL;
    }
    if (D_800DD6E4 != NULL) {
        D_800DD6EC = D_800DD6E4;
        D_800DD6F0 = D_800DD6E8;
        D_800DD6E8 = D_800DD6E4 = NULL;
    }
}

void func_800AC688(uObjBg *bg, struct C954Arg2 *arg1) {
    bg->b.imageX = bg->b.imageY = 0;
    bg->b.frameW = bg->b.imageW = arg1->width * 4;
    bg->b.frameH = bg->b.imageH = arg1->height * 4;
    bg->b.frameX = bg->b.frameY = 0;
    bg->b.imagePtr = (u64 *)arg1->unk8;
    bg->b.imageLoad = G_BGLT_LOADTILE;
    bg->b.imageFmt = arg1->unk0;
    bg->b.imageSiz = arg1->unk1;
    bg->b.imagePal = 0;
    bg->b.imageFlip = 0;
    guS2DInitBg(bg);
}

void func_800AC700(uObjBg *bg, struct C954Arg2 *arg1) {
    s32 tmemW = (arg1->width + D_800D4E60[arg1->unk1]) & ~D_800D4E60[arg1->unk1];

    bg->s.imageX = bg->s.imageY = 0;
    bg->s.frameW = arg1->width * 4;
    bg->s.imageW = tmemW * 4;
    bg->s.frameH = bg->s.imageH = arg1->height * 4;
    bg->s.frameX = bg->s.frameY = 0;
    bg->s.imagePtr = (u64 *) arg1->unk8;
    bg->s.imageLoad = G_BGLT_LOADTILE;
    bg->s.imageFmt = arg1->unk0;
    bg->s.imageSiz = arg1->unk1;
    bg->s.imagePal = 0;
    bg->s.imageFlip = 0;
    bg->s.scaleW = bg->s.scaleH = 0x400;
    bg->s.imageYorig = 0;
}

// The chained `paddingX = paddingY = 0` and putting `imageAdrs = 0` AFTER
// imageStride are both load-bearing: they are what schedules the ~mask/and pair
// where the ROM has it. Separate padding stores cost 14 diffs, imageAdrs before
// imageStride costs 3.
void func_800AC794(uObjSprite *sp, struct C954Arg2 *arg1) {
    s32 tmemW = (arg1->width + D_800D4E60[arg1->unk1]) & ~D_800D4E60[arg1->unk1];

    sp->s.objX = sp->s.objY = 0;
    sp->s.scaleW = sp->s.scaleH = 0x400;
    sp->s.imageW = arg1->width * 0x20;
    sp->s.imageH = arg1->height * 0x20;
    sp->s.paddingX = sp->s.paddingY = 0;
    sp->s.imageStride = GS_PIX2TMEM(tmemW, arg1->unk1);
    sp->s.imageAdrs = 0;
    sp->s.imageFmt = arg1->unk0;
    sp->s.imageSiz = arg1->unk1;
    sp->s.imagePal = 0;
    sp->s.imageFlags = 0;
}
void func_800AC820(uObjTxtr *tx, struct C954Arg2 *arg1) {
    s32 tmemW = (arg1->width + D_800D4E60[arg1->unk1]) & ~D_800D4E60[arg1->unk1];

    tx->block.type = G_OBJLT_TXTRBLOCK;
    tx->block.image = (u64 *) arg1->unk8;
    tx->block.tmem = GS_PIX2TMEM(0, arg1->unk1);
    tx->block.tsize = GS_TB_TSIZE(arg1->height * tmemW, arg1->unk1);
    tx->block.tline = GS_TB_TLINE(tmemW, arg1->unk1);
    tx->block.sid = 0;
    tx->block.flag = arg1->unk8;
    tx->block.mask = -1;
}

void func_800AC8E0(struct SPObj_68 *arg0, struct C954Arg2 *arg1) {
    arg0->unk0 = 0x30;
    arg0->unk4 = arg1->unkC;
    arg0->unk8 = 0x100;
    arg0->unkA = (arg1->unk2 - 1) & 0xFF;
    arg0->unkC = 0;
    arg0->unkE = 0;
    arg0->unk10 = arg1->unkC;
    arg0->unk14 = -1;
}

void func_800AC924(uObjMtx *mtx) {
    mtx->m.A = mtx->m.D = FTOFIX32(1.0f);
    mtx->m.B = mtx->m.C = 0;
    mtx->m.X = mtx->m.Y = 0;
    mtx->m.BaseScaleX = mtx->m.BaseScaleY = FTOFIX16(1.0f);
}

// SPObj is double-buffered: the 0x60-byte RSP command block at 0x40 has a second
// copy at 0xA0 and spobj->unk12 selects which one the CPU rewrites. SPObj.h
// declares unk40/unkA0 as pointers, so the block copy at the end of
// func_800AC954 is spelled through this local type instead. Its size is what
// makes IDO emit the ROM's 3-words-per-pass loop.
struct SPObjBlk { u32 w[0x18]; };

// The RSP command block SPObj carries twice, at 0x40 and at 0xA0; spobj->unk12
// selects the copy so the CPU never rewrites the block the RSP is reading.
typedef union SPObjGfx {
    struct {
        /* 0x00 */ uObjBg bg;
        /* 0x28 */ uObjTxtr tlut;
    } b;
    struct {
        /* 0x00 */ uObjTxSprite ts;
        /* 0x30 */ uObjTxtr tlut;
        /* 0x48 */ uObjMtx mtx;
    } t;
} SPObjGfx;

typedef struct SPObjBufs {
    /* 0x00 */ u8 head[0x40];
    /* 0x40 */ SPObjGfx gfx[2];
} SPObjBufs;

#define SPOBJ_GFX(sp) (&((SPObjBufs *) (sp))->gfx[(sp)->unk12])

SPObj* func_800AC954(GObj* gobj, u32 kind, struct C954Arg2 *arg2) {
    SPObj* sprite;
    SPObj* gobj_4C;

    sprite = pop_spobj();
    if (sprite == NULL) {
        return NULL;
    }
    gobj_4C = gobj->unk4C;
    if (gobj_4C != NULL) {
        SPObj *tail = gobj_4C;
        SPObj *next = (SPObj *) tail->unk8;

        if (next != NULL) {
            do {
                tail = next;
                next = (SPObj *) tail->unk8;
            } while (next != NULL);
        }
        tail->unk8 = (u32) sprite;
        sprite->unkC = (u32) tail;
    } else {
        gobj->unk4C = sprite;
        sprite->unkC = 0;
    }
    sprite->unk8 = 0;
    /* offset 4 is u32, not a pointer -- widening it would move every field
       after it under LP64. */
    sprite->unk4 = (u32) (uintptr_t) gobj;
    sprite->unk10 = (u8) kind;
    sprite->unk11 = 0;
    sprite->unk12 = 0;
    sprite->renderFlags = 0;
    sprite->primColorRed =
    sprite->primColorGreen =
    sprite->primColorBlue =
    sprite->primColorAlpha = 0xFF;
    sprite->envColorRed =
    sprite->envColorGreen =
    sprite->envColorBlue =
    sprite->envColorAlpha = 0;
    sprite->width = arg2->width;
    sprite->height = arg2->height;
    sprite->xOffset = sprite->yOffset = 0.0f;
    sprite->unk30 = sprite->unk34 = sprite->unk38 = 0.0f;
    sprite->xScale = sprite->yScale = 1.0f;
    switch (kind) {
        case 0:
            func_800AC688(&sprite->unk40, arg2);
            if (arg2->unk0 == 2) {
                func_800AC8E0(&sprite->unk68, arg2);
            }
            break;
        case 1:
            func_800AC700(&sprite->unk40, arg2);
            if (arg2->unk0 == 2) {
                func_800AC8E0(&sprite->unk68, arg2);
            }
            break;
        case 2:
            func_800AC794(&sprite->unk58, arg2);
            func_800AC820(&sprite->unk40, arg2);
            if (arg2->unk0 == 2) {
                func_800AC8E0((struct SPObj_68** ) &sprite->unk70, arg2);
            }
            break;
        case 3:
        case 4:
            func_800AC794(&sprite->unk58, arg2);
            func_800AC820(&sprite->unk40, arg2);
            if (arg2->unk0 == 2) {
                func_800AC8E0((struct SPObj_68** ) &sprite->unk70, arg2);
            }
            func_800AC924((uObjMtx* ) &sprite->unk88);
            break;
    }
    *(struct SPObjBlk *) ((u8 *) sprite + 0xA0) = *(struct SPObjBlk *) ((u8 *) sprite + 0x40);
    return sprite;
}

void func_800ACB7C(SPObj *sp) {
    GObj *gobj;
    SPObj *other;

    gobj = (GObj *) sp->unk4;
    if (sp == gobj->unk4C) {
        gobj->unk4C = (void *) sp->unk8;
    }
    other = (SPObj *) sp->unkC;
    if (other != NULL) {
        other->unk8 = sp->unk8;
    }
    other = (SPObj *) sp->unk8;
    if (other != NULL) {
        other->unkC = sp->unkC;
    }
    func_800AC5E0(sp);
}

void func_800ACBDC(GObj *gobj) {
    if (gobj == 0) {
        gobj = omCurrentObj;
    }
    while (gobj->unk4C != 0) {
        func_800ACB7C(gobj->unk4C);
    }
}

void func_800ACC30(s16 *arg0, s16 *arg1, SPObj *spobj) {
    *arg0 = spobj->xOffset * 4.0f;
    *arg1 = spobj->yOffset * 4.0f;
}

// The one-line `do { ... } while (0)` is LOAD-BEARING (permuter result, applied
// verbatim): it splits the basic block so the 1024.0f `lui` is materialised
// before the 0x8000 `ori`. The `(u16 *)` casts are what make 0x8000 an `ori`
// rather than a sign-extending `addiu`.
void func_800ACC68(s16 *arg0, s16 *arg1, SPObj *spobj) {
    f32 scale;
    f32 mag;

    do { scale = spobj->xScale; mag = (scale < 0.0f) ? -scale : scale; if (mag < 0.03125f) { *(u16 *) arg0 = 0x8000; } else { *arg0 = (u32) (1024.0f / scale); } scale = spobj->yScale; } while (0);
    mag = (scale < 0.0f) ? -scale : scale;
    if (mag < 0.03125f) {
        *(u16 *) arg1 = 0x8000;
    } else {
        *arg1 = (u32) (1024.0f / scale);
    }
}

s32 func_800ACE1C(u8 arg0, u16 *tlut) {
    if (arg0 == 2) {
        gDPSetTextureLUT(gDisplayListHeads[0]++, G_TT_RGBA16);
        gSPObjLoadTxtr(gDisplayListHeads[0]++, tlut);
        return 1;
    }
    return 0;
}

s32 func_800ACE88(SPObj *spobj, u8 colortype) {
    gDPSetCycleType(gDisplayListHeads[0]++, G_CYC_1CYCLE);
    if (spobj->renderFlags & SPOBJ_RF_AA) { // antialias flag
        if (spobj->renderFlags & SPOBJ_RF_XLU) { // transparency flag
            gDPSetRenderMode(gDisplayListHeads[0]++, G_RM_AA_XLU_SPRITE, G_RM_AA_XLU_SPRITE2);
            gSPObjRenderMode(gDisplayListHeads[0]++, G_OBJRM_XLU | G_OBJRM_ANTIALIAS | G_OBJRM_BILERP)
        } else {
            gDPSetRenderMode(gDisplayListHeads[0]++, G_RM_AA_SPRITE, G_RM_AA_SPRITE2);
            gSPObjRenderMode(gDisplayListHeads[0]++, G_OBJRM_ANTIALIAS | G_OBJRM_BILERP);
        }
    } else if (spobj->renderFlags & SPOBJ_RF_XLU) {
        gDPSetRenderMode(gDisplayListHeads[0]++, G_RM_XLU_SPRITE, G_RM_XLU_SPRITE2);
        gSPObjRenderMode(gDisplayListHeads[0]++, G_OBJRM_XLU | G_OBJRM_BILERP);
    } else {
        gDPSetRenderMode(gDisplayListHeads[0]++, G_RM_SPRITE, G_RM_SPRITE2);
        gSPObjRenderMode(gDisplayListHeads[0]++, G_OBJRM_BILERP);
    }
    switch (colortype) {
        case SPOBJ_CT_PRIM_TEX_EDGE: // prim color, tex alpha
            gDPSetPrimColor(gDisplayListHeads[0]++, 0, 0,
                            spobj->primColorRed,
                            spobj->primColorGreen,
                            spobj->primColorBlue,
                            spobj->primColorAlpha
            );
            gDPSetCombineLERP(gDisplayListHeads[0]++, 0, 0, 0, PRIMITIVE, 0, 0, 0, TEXEL0, 0, 0, 0, PRIMITIVE, 0, 0, 0, TEXEL0);
            break;
        case SPOBJ_CT_PRIM_ENV_TEX: // prim + env
            gDPSetPrimColor(gDisplayListHeads[0]++, 0, 0,
                            spobj->primColorRed,
                            spobj->primColorGreen,
                            spobj->primColorBlue,
                            spobj->primColorAlpha
            );
            gDPSetEnvColor(gDisplayListHeads[0]++,
                            spobj->envColorRed,
                            spobj->envColorGreen,
                            spobj->envColorBlue,
                            spobj->envColorAlpha
            );
            gDPSetCombineLERP(gDisplayListHeads[0]++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
            break;
        case SPOBJ_CT_PRIM_TEX: // prim colored texture
            gDPSetPrimColor(gDisplayListHeads[0]++, 0, 0,
                            spobj->primColorRed,
                            spobj->primColorGreen,
                            spobj->primColorBlue,
                            spobj->primColorAlpha
            );
            gDPSetCombineMode(gDisplayListHeads[0]++, G_CC_PRIM_RGBA, G_CC_PRIM_RGBA);
            break;
        case SPOBJ_CT_NONE: // no color
            gDPSetCombineMode(gDisplayListHeads[0]++, G_CC_DECALRGBA, G_CC_DECALRGBA);
            break;
    }
}

#define spDL(pkt, hi, lo)                                                      \
{                                                                              \
    Gfx *_g = (Gfx *) (pkt);                                                   \
                                                                               \
    _g->words.w0 = (hi);                                                       \
    _g->words.w1 = (lo);                                                       \
}

void func_800ACC68(s16 *, s16 *, SPObj *);
void func_800ABB4C(Gfx **, uObjBg *);
s32 lbreflect_Int16Sin(f32);
s32 lbreflect_Int16Cos(f32);

// The `(s16) (s32)` double cast on frameX/frameY in case 0 is LOAD-BEARING.
// A 16-bit store of a computed value costs the target TWO virtual registers and
// the single-cast form costs one, so case 0 advanced IDO's temp cursor by 6
// instead of 16 and EVERY temp in the remaining 700 instructions came out
// rotated by 6. Same lever as the `(u16)` casts in func_800AB680.
void func_800AD1A0(GObj *gobj) {
    SPObj *sp;
    uObjBg *bg;
    uObjBg *bg0;
    uObjSprite *obj;
    uObjMtx *mtx;
    SPObjGfx *gfx;
    s32 loadedTlut;
    f32 scale;
    f32 mag;
    f32 sn;
    f32 cs;

    loadedTlut = 0;
    sp = gobj->unk4C;
    if (sp == NULL) {
        return;
    }

    do {
        if (sp->unk11 != 2) {
            sp->unk12 ^= 1;
            switch (sp->unk10) {
                case 0:
                    bg0 = &SPOBJ_GFX(sp)->b.bg;
                    bg0->b.frameX = (s16) (s32) (sp->xOffset * 4.0f) & ~3;
                    bg0->b.frameY = (s16) (s32) (sp->yOffset * 4.0f) & ~3;
                    bg0->b.imageX = (u32) (sp->unk34 * 32.0f);
                    bg0->b.imageY = (u32) (sp->unk38 * 32.0f);
                    break;
                case 1:
                    bg = &SPOBJ_GFX(sp)->b.bg;
                    func_800ACC30(&bg->s.frameX, &bg->s.frameY, sp);
                    scale = sp->xScale;
                    mag = (scale < 0.0f) ? -scale : scale;
                    if (mag < 0.03125f) {
                        bg->s.scaleW = 0x8000;
                        if (!(sp->renderFlags & 4)) {
                            bg->s.frameW = 0;
                        }
                    } else {
                        bg->s.scaleW = (u32) (1024.0f / scale);
                        if (!(sp->renderFlags & 4)) {
                            bg->s.frameW = (u32) ((f32) sp->width * sp->xScale * 4.0f);
                        }
                    }
                    scale = sp->yScale;
                    mag = (scale < 0.0f) ? -scale : scale;
                    if (mag < 0.03125f) {
                        bg->s.scaleH = 0x8000;
                        if (!(sp->renderFlags & 4)) {
                            bg->s.frameH = 0;
                        }
                    } else {
                        bg->s.scaleH = (u32) (1024.0f / scale);
                        if (!(sp->renderFlags & 4)) {
                            bg->s.frameH = (u32) ((f32) sp->height * sp->yScale * 4.0f);
                        }
                    }
                    bg->s.imageX = (u32) (sp->unk34 * 32.0f);
                    bg->s.imageY = (u32) (sp->unk38 * 32.0f);
                    break;
                case 2:
                    obj = &SPOBJ_GFX(sp)->t.ts.sprite;
                    func_800ACC30(&obj->s.objX, &obj->s.objY, sp);
                    func_800ACC68((s16 *) &obj->s.scaleW, (s16 *) &obj->s.scaleH, sp);
                    break;
                case 3:
                    mtx = &SPOBJ_GFX(sp)->t.mtx;
                    func_800ACC30(&mtx->m.X, &mtx->m.Y, sp);
                    func_800ACC68((s16 *) &mtx->m.BaseScaleX, (s16 *) &mtx->m.BaseScaleY, sp);
                    break;
                case 4:
                    mtx = &SPOBJ_GFX(sp)->t.mtx;
                    func_800ACC30(&mtx->m.X, &mtx->m.Y, sp);
                    cs = (f32) (lbreflect_Int16Cos(sp->unk30) * 2);
                    sn = (f32) (lbreflect_Int16Sin(sp->unk30) * 2);
                    mtx->m.A = sp->xScale * cs;
                    mtx->m.B = sp->yScale * sn;
                    mtx->m.C = -sn * sp->xScale;
                    mtx->m.D = sp->yScale * cs;
                    break;
            }
            if (sp->unk11 == 1) {
                sp->unk11 = 2;
            }
        }

        if (!(sp->renderFlags & 8)) {
            spDL(gDisplayListHeads[0]++, 0xE7000000, 0);

            switch (sp->unk10) {
                case 0:
                    gfx = SPOBJ_GFX(sp);
                    spDL(gDisplayListHeads[0]++, 0xE200001C, 0);
                    spDL(gDisplayListHeads[0]++, 0xE3000A01, 0x00200000);
                    spDL(gDisplayListHeads[0]++, 0xFCFFFFFF, 0xFFFCF279);
                    loadedTlut = func_800ACE1C(gfx->b.bg.b.imageFmt, (u16 *) &SPOBJ_GFX(sp)->b.tlut);
                    spDL(gDisplayListHeads[0]++, 0x0A000000, (u32) gfx);
                    break;
                case 1:
                    gfx = SPOBJ_GFX(sp);
                    func_800ACE88(sp, gfx->b.bg.s.imageFmt);
                    loadedTlut = func_800ACE1C(gfx->b.bg.s.imageFmt, (u16 *) &SPOBJ_GFX(sp)->b.tlut);
                    if (gfx->b.bg.s.imageFmt == 0 && gfx->b.bg.s.imageSiz == 3) {
                        func_800ABB4C(gDisplayListHeads, &gfx->b.bg);
                    } else {
                        spDL(gDisplayListHeads[0]++, 0x09000000, (u32) gfx);
                    }
                    break;
                case 2:
                    gfx = SPOBJ_GFX(sp);
                    func_800ACE88(sp, gfx->t.ts.sprite.s.imageFmt);
                    loadedTlut = func_800ACE1C(gfx->t.ts.sprite.s.imageFmt, (u16 *) &SPOBJ_GFX(sp)->t.tlut);
                    spDL(gDisplayListHeads[0]++, 0x0700002F, (u32) gfx);
                    break;
                case 3:
                    gfx = SPOBJ_GFX(sp);
                    func_800ACE88(sp, gfx->t.ts.sprite.s.imageFmt);
                    spDL(gDisplayListHeads[0]++, 0xDC070002, (u32) &SPOBJ_GFX(sp)->t.mtx.m.X);
                    loadedTlut = func_800ACE1C(gfx->t.ts.sprite.s.imageFmt, (u16 *) &SPOBJ_GFX(sp)->t.tlut);
                    spDL(gDisplayListHeads[0]++, 0x0800002F, (u32) gfx);
                    break;
                case 4:
                    gfx = SPOBJ_GFX(sp);
                    func_800ACE88(sp, gfx->t.ts.sprite.s.imageFmt);
                    spDL(gDisplayListHeads[0]++, 0xDC170000, (u32) &SPOBJ_GFX(sp)->t.mtx);
                    loadedTlut = func_800ACE1C(gfx->t.ts.sprite.s.imageFmt, (u16 *) &SPOBJ_GFX(sp)->t.tlut);
                    spDL(gDisplayListHeads[0]++, 0x0600002F, (u32) gfx);
                    break;
            }

            if (loadedTlut != 0) {
                spDL(gDisplayListHeads[0]++, 0xE3001001, 0);
            }
        }

        sp = (SPObj *) sp->unk8;
    } while (sp != NULL);
}

// Camera payload of the GObj this draw callback is registered on. sprite.c does
// not include main/object_manager.h, so only the two fields this function reads
// are spelled out; the offsets are the real Camera's.
struct SpriteDrawCamera {
    /* 0x00 */ u8 unk00[0x8];
    /* 0x08 */ Vp viewport;
    /* 0x18 */ u8 unk18[0x68];
    /* 0x80 */ u32 flags;
};

extern Gfx D_800D4E98[];
extern u16 D_8004A444;
extern s32 viCFBFmt;
extern s32 gCurrScreenWidth;
extern s32 gCurrScreenHeight;

void gtlLoadUcode(Gfx **, u32);
void func_80017E84(GObj *, s32);

void func_800ADD14(GObj *camObj) {
    struct SpriteDrawCamera *cam;
    u32 savedUcode;
    s32 ulx;
    s32 uly;
    s32 lrx;
    s32 lry;

    cam = camObj->data.ptr;
    savedUcode = D_8004A444;
    gtlLoadUcode(gDisplayListHeads, 0xA);
    gSPDisplayList(gDisplayListHeads[0]++, D_800D4E98);

    ulx = cam->viewport.vp.vtrans[0] / 4 - cam->viewport.vp.vscale[0] / 4;
    uly = cam->viewport.vp.vtrans[1] / 4 - cam->viewport.vp.vscale[1] / 4;
    lrx = cam->viewport.vp.vtrans[0] / 4 + cam->viewport.vp.vscale[0] / 4;
    lry = cam->viewport.vp.vtrans[1] / 4 + cam->viewport.vp.vscale[1] / 4;

    if (ulx < 10.0f * (gCurrScreenWidth / 320)) {
        ulx = 10.0f * (gCurrScreenWidth / 320);
    }
    if (uly < 10.0f * (gCurrScreenHeight / 240)) {
        uly = 10.0f * (gCurrScreenHeight / 240);
    }
    if (gCurrScreenWidth - 10.0f * (gCurrScreenWidth / 320) < lrx) {
        lrx = gCurrScreenWidth - 10.0f * (gCurrScreenWidth / 320);
    }
    if (gCurrScreenHeight - 10.0f * (gCurrScreenHeight / 240) < lry) {
        lry = gCurrScreenHeight - 10.0f * (gCurrScreenHeight / 240);
    }

    gDPSetScissor(gDisplayListHeads[0]++, G_SC_NON_INTERLACE, ulx, uly, lrx, lry);
    func_800AB680(ulx, uly, lrx, lry, 1);
    gDPPipeSync(gDisplayListHeads[0]++);
    gDPSetColorImage(gDisplayListHeads[0]++, G_IM_FMT_RGBA, viCFBFmt, gCurrScreenWidth, 0x0F000000);
    func_80017E84(camObj, (cam->flags & 8) ? 1 : 0);
    gtlLoadUcode(gDisplayListHeads, savedUcode);
}

// Pool slot stride. On the N64 an SPObj is 0xBC bytes rounded up to a 0x100
// pool slot. Under LP64 the embedded gfx[2] blocks make sizeof(SPObj) 0x128
// (> 0x100), so the port derives the stride from the real size (it is already
// 8-aligned; SPObj.h asserts that) or the freelist would thread each SPObj's
// buffers into the next slot.
#define SPOBJ_POOL_STRIDE 0x100

// The `q` pointer local and the `n ^ 0` are LOAD-BEARING (permuter result,
// applied verbatim): `q` forks the extra source-level temp IDO needs to keep
// the loop's `sltu` ahead of the `sw`, and the xor keeps the compare on `n`
// from being folded back into the induction variable.
void func_800AE048(u32 count) {
    SPObj *p;
    u32 i;
    u32 n;
    u8 *q;

    if (count == 0) {
        D_800DD6E0 = NULL;
    } else {
        p = gtlMalloc(count * SPOBJ_POOL_STRIDE, 8);
        D_800DD6E0 = p;
        n = count - 1;
        for (i = 0; i < (n ^ 0); i++) {
            q = (u8 *) p;
            p->next = (SPObj *) (q + SPOBJ_POOL_STRIDE);
            p = p->next;
        }
        p->next = NULL;
    }
    D_800DD6E4 = D_800DD6E8 = D_800DD6EC = D_800DD6F0 = NULL;
}
