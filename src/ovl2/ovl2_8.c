#include "common.h"
#include "track_arrays.h"
#include "GObj.h"

#ifdef PORT
/* PORT: this file's shape structs are views over the Shape28 arenas that
 * ovl2_9.c rebuilds each frame (D_8012D198 / D_8012CF30, 40 bytes per entry,
 * offset-stable on LP64). The entries are copied word-for-word from the
 * generated data tables (build/pc/data/*.data.c), which keep the N64 WORD
 * values: floats and the joint word (offset 8) carry correct native values,
 * but the shape TYPE byte -- an N64 byte-0 read -- sits in bits 24-31 of the
 * head word at offset 4. Every PORT reader below decodes it as (unk4 >> 24);
 * the u8-at-4 read of the N64 structs would see the always-zero low byte.
 * unk18 really holds an f32 (the sphere radius; see the MIPS_TO_C note at
 * func_8010E8F0), and IDO only passed it through integer registers, which is
 * bit-identical on o32 but an ABI mismatch on x86-64 -- so the PORT arms use
 * the real types throughout. */
struct UnkEA20 {
    /* 0x00 */ char pad0[0xC];
    /* 0x0C */ Vector unkC;
    /* 0x18 */ f32 unk18;
};

s32 func_8010E8F0(Vector *, f32, Vector *, f32, Vector *);
#else
struct UnkEA20 {
    /* 0x00 */ char pad0[0xC];
    /* 0x0C */ Vector unkC;
    /* 0x18 */ s32 unk18;
};

s32 func_8010E8F0(Vector *, f32, Vector *, f32, Vector *);
#endif

struct Unk8010E5B0Node {
    u8 pad0[0x14];
    struct Unk8010E5B0Node *unk14;
};

#ifdef PORT
/* The cache descriptors D_80124990/49A0/49B0 alias into the
 * ovl2_after_spawn data blob (build/pc/data), where every N64 word occupies
 * an 8-byte slot -- so the four fields sit at 0/8/16/24 and the struct is 32
 * bytes, matching the 0x10-apart N64 aliases scaled by two. unk0 stays an
 * s32 in the slot's low half because ovl2_9.c resets these caches through
 * `extern s32 D_801249A0/B0` writes. */
struct Unk8010E5B0Arg3 {
    s32 unk0;
    s32 pad0_;
    s32 unk4;
    s32 pad4_;
    struct Unk8010E5B0Node **unk8;
    f32 (*unkC)[4][3];
};
_Static_assert(sizeof(struct Unk8010E5B0Arg3) == 32, "blob slot layout");
#else
struct Unk8010E5B0Arg3 {
    s32 unk0;
    s32 unk4;
    struct Unk8010E5B0Node **unk8;
    f32 (*unkC)[4][3];
};
#endif

#ifdef PORT
/* Same 40-byte arena entry; unk4 is the whole N64 head word (type in bits
 * 24-31, see the note above). Offsets are unchanged. */
struct Unk8010E740 {
    u8 unk0;
    u8 pad1[3];
    u32 unk4;
    s32 unk8;
    Vector unkC;
    Vector unk18;
};
#else
struct Unk8010E740 {
    u8 unk0;
    u8 pad1[3];
    u8 unk4;
    u8 pad5[3];
    s32 unk8;
    Vector unkC;
    Vector unk18;
};
#endif

extern s32 D_8012D0C0;
extern s32 D_8012D580;
extern struct Unk8010E5B0Arg3 D_80124990;
extern struct Unk8010E5B0Arg3 D_801249A0;
extern struct Unk8010E5B0Arg3 D_801249B0;

void func_800A5D88(void *, void *);
void func_800A5F94(s32, void *);
void func_800A6208(f32 (*)[3], Vector *);


#ifdef PORT
/* PORT: arg1 is really a DObj, and the joint chain is dobj->parent with
 * (DObj *) 1 as the root sentinel (src/main/object_manager.c). The N64 view
 * below read the parent pointer at byte 0x14, which on LP64 lands in the
 * middle of DObj.prev. The node caches (D_8012C8D0/C908/CC18) take 8-byte
 * entries and the matrix runs keep their native 48-byte stride; both fit
 * because gen_data doubles every N64 bss span (D_8012C948's 15-matrix run
 * spills into D_8012C9E4, a label nothing references -- the doubled pair is
 * exactly the doubled N64 run). While func_800A5D88/func_800A5F94
 * (src/ovl1/util.c) remain unimplemented stubs the cached matrices stay
 * zero, so bound shapes transform to the joint-chain translation of a zero
 * matrix; the walk itself, and the cache bookkeeping, are correct. */
void func_8010E5B0(Vector *arg0, struct Unk8010E5B0Node *arg1, s32 arg2,
                   struct Unk8010E5B0Arg3 *arg3) {
    s32 i;
    f32 (*p)[3];
    struct DObj *node = (struct DObj *) arg1;

    do {
        for (i = 0; i < arg3->unk0; i++) {
            if ((struct DObj *) arg3->unk8[i] == node) {
                break;
            }
        }
        if (i == arg3->unk0) {
            if (i == arg3->unk4) {
                i--;
            }
            p = arg3->unkC[i];
            if (node->parent != (struct DObj *) 1) {
                func_800A5D88(node, p);
            } else {
                func_800A5F94(arg2, p);
            }
            arg3->unk8[i] = (struct Unk8010E5B0Node *) node;
            arg3->unk0 = i + 1;
        } else {
            p = arg3->unkC[i];
        }
        func_800A6208(p, arg0);
        node = node->parent;
    } while (node != (struct DObj *) 1);
}
#else
void func_8010E5B0(Vector *arg0, struct Unk8010E5B0Node *arg1, s32 arg2,
                   struct Unk8010E5B0Arg3 *arg3) {
    s32 i;
    f32 (*p)[3];

    do {
        for (i = 0; i < arg3->unk0; i++) {
            if (arg1 == arg3->unk8[i]) {
                break;
            }
        }
        if (i == arg3->unk0) {
            if (i == arg3->unk4) {
                i--;
            }
            p = arg3->unkC[i];
            if (arg1->unk14 != (struct Unk8010E5B0Node *) 1) {
                func_800A5D88(arg1, p);
            } else {
                func_800A5F94(arg2, p);
            }
            arg3->unk8[i] = arg1;
            arg3->unk0 = i + 1;
        } else {
            p = arg3->unkC[i];
        }
        func_800A6208(p, arg0);
        arg1 = arg1->unk14;
    } while (arg1 != (struct Unk8010E5B0Node *) 1);
}
#endif

void func_8010E6F0(Vector *arg0, s32 arg1) {
    arg0->x += gEntitiesNextPosXArray[arg1];
    arg0->y += gEntitiesNextPosYArray[arg1];
    arg0->z += gEntitiesNextPosZArray[arg1];
}

#ifdef NON_MATCHING
#ifdef PORT
/* PORT copy of the draft below with two LP64/endian fixes: the shape type is
 * decoded from the top byte of the head word (see the file-top note), and
 * the joint value stored in unk8 -- a real pointer on the non -1/-2/-3
 * paths, stored truncated by func_8011D4A4 et al. -- is rebuilt by
 * zero-extension, which is lossless because the -no-pie image keeps
 * everything the game can see below 4 GiB (src/pc/pc_mmio.c). */
void func_8010E740(struct Unk8010E740 *arg0, s32 arg1) {
    struct Unk8010E5B0Arg3 *q;
    struct Unk8010E5B0Node *node;
    s32 v;

    v = arg0->unk8;
    if (v == -1) {
        switch (arg0->unk4 >> 24) {
        case 0:
            break;
        case 1:
            break;
        case 2:
            break;
        }
    } else if (arg0->unk8 == -2) {
        switch (arg0->unk4 >> 24) {
        case 0:
            func_8010E6F0(&arg0->unkC, arg1);
            break;
        case 1:
            func_8010E6F0(&arg0->unkC, arg1);
            break;
        case 2:
            func_8010E6F0(&arg0->unkC, arg1);
            func_8010E6F0(&arg0->unk18, arg1);
            break;
        }
    } else {
        node = (struct Unk8010E5B0Node *) (uintptr_t) (u32) v;
        if (arg0->unk8 == -3) {
            node = D_800DE350[arg1]->data.ptr;
        }
        if (arg1 == D_8012D0C0) {
            q = &D_801249A0;
        } else {
            if (arg1 == D_8012D580) {
                q = &D_801249B0;
            } else {
                q = &D_80124990;
            }
            q->unk0 = 0;
        }
        switch (arg0->unk4 >> 24) {
        case 0:
            func_8010E5B0(&arg0->unkC, node, arg1, q);
            break;
        case 1:
            func_8010E5B0(&arg0->unkC, node, arg1, q);
            break;
        case 2:
            func_8010E5B0(&arg0->unkC, node, arg1, q);
            func_8010E5B0(&arg0->unk18, node, arg1, q);
            break;
        }
    }
    arg0->unk0 = 1;
}
#else
void func_8010E740(struct Unk8010E740 *arg0, s32 arg1) {
    struct Unk8010E5B0Arg3 *q;
    struct Unk8010E5B0Node *node;
    s32 v;

    v = arg0->unk8;
    if (v == -1) {
        switch (arg0->unk4) {
        case 0:
            break;
        case 1:
            break;
        case 2:
            break;
        }
    } else if (arg0->unk8 == -2) {
        switch (arg0->unk4) {
        case 0:
            func_8010E6F0(&arg0->unkC, arg1);
            break;
        case 1:
            func_8010E6F0(&arg0->unkC, arg1);
            break;
        case 2:
            func_8010E6F0(&arg0->unkC, arg1);
            func_8010E6F0(&arg0->unk18, arg1);
            break;
        }
    } else {
        node = (struct Unk8010E5B0Node *) v;
        if (arg0->unk8 == -3) {
            node = D_800DE350[arg1]->data.ptr;
        }
        if (arg1 == D_8012D0C0) {
            q = &D_801249A0;
        } else {
            if (arg1 == D_8012D580) {
                q = &D_801249B0;
            } else {
                q = &D_80124990;
            }
            q->unk0 = 0;
        }
        switch (arg0->unk4) {
        case 0:
            func_8010E5B0(&arg0->unkC, node, arg1, q);
            break;
        case 1:
            func_8010E5B0(&arg0->unkC, node, arg1, q);
            break;
        case 2:
            func_8010E5B0(&arg0->unkC, node, arg1, q);
            func_8010E5B0(&arg0->unk18, node, arg1, q);
            break;
        }
    }
    arg0->unk0 = 1;
}
#endif
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_8/func_8010E740.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 25/76, exact structure incl. mtc1 prologue (true ANSI f32
 * signature recovered); residue is a two-slot FP temp rotation
 * (f0/f18 swap). */
s32 func_8010E8F0(Vector *arg0, f32 arg1, Vector *arg2, f32 arg3, Vector *arg4) {
    f32 temp_f0;
    f32 temp_f2;
    f32 temp_f16;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f18;

    temp_f18 = arg2->x;
    temp_f2 = arg1 + arg3;
    temp_f16 = arg0->x - temp_f18;
    if ((temp_f2 < temp_f16) || (temp_f16 < (temp_f0 = -temp_f2))) {
        return 0;
    }
    temp_f12 = arg0->y - arg2->y;
    if ((temp_f2 < temp_f12) || (temp_f12 < temp_f0)) {
        return 0;
    }
    temp_f14 = arg0->z - arg2->z;
    if ((temp_f2 < temp_f14) || (temp_f14 < temp_f0)) {
        return 0;
    }
    if (((temp_f16 * temp_f16) + (temp_f12 * temp_f12) + (temp_f14 * temp_f14)) <= (temp_f2 * temp_f2)) {
        if (arg4 != NULL) {
            arg4->x = (temp_f16 * 0.5f) + temp_f18;
            arg4->y = (temp_f12 * 0.5f) + arg2->y;
            arg4->z = (temp_f14 * 0.5f) + arg2->z;
        }
        return 1;
    }
    return 0;
}
#elif defined(PORT)
/* PORT: sphere-vs-sphere. Same body as the near-matching draft above (its
 * whole residue is one FP register swap); real f32/pointer types per the
 * PORT prototype at the top of the file. arg4, when non-NULL, receives the
 * contact point (midpoint of the center delta) as three floats. */
s32 func_8010E8F0(Vector *arg0, f32 arg1, Vector *arg2, f32 arg3, Vector *arg4) {
    f32 x = arg2->x;
    f32 r = arg1 + arg3;
    f32 dx = arg0->x - x;
    f32 dy;
    f32 dz;

    if ((r < dx) || (dx < -r)) {
        return 0;
    }
    dy = arg0->y - arg2->y;
    if ((r < dy) || (dy < -r)) {
        return 0;
    }
    dz = arg0->z - arg2->z;
    if ((r < dz) || (dz < -r)) {
        return 0;
    }
    if (dx * dx + dy * dy + dz * dz <= r * r) {
        if (arg4 != NULL) {
            arg4->x = dx * 0.5f + x;
            arg4->y = dy * 0.5f + arg2->y;
            arg4->z = dz * 0.5f + arg2->z;
        }
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_8/func_8010E8F0.s")
#endif

#ifdef PORT
/* PORT: same trampoline with the real types (UnkEA20.unk18 is an f32 and
 * the out parameter is a pointer under PORT; the s32s were an o32
 * bit-passing trick, see the file-top note). */
s32 func_8010EA20(struct UnkEA20 *arg0, struct UnkEA20 *arg1, Vector *arg2) {
    return func_8010E8F0(&arg0->unkC, arg0->unk18, &arg1->unkC, arg1->unk18, arg2);
}
#else
s32 func_8010EA20(struct UnkEA20 *arg0, struct UnkEA20 *arg1, s32 arg2) {
    return func_8010E8F0(&arg0->unkC, arg0->unk18, &arg1->unkC, arg1->unk18, arg2);
}
#endif

#ifdef PORT
/* Full-width view of the 40-byte arena entry: unk4 is the whole N64 head
 * word (type = unk4 >> 24, see the file-top note), unk8 the joint word, and
 * unk24 the capsule radius the N64 struct left as padding. Offsets and size
 * are unchanged. */
struct UnkF9AC {
    /* 0x00 */ u8 unk0;
    /* 0x01 */ char pad1[0x3];
    /* 0x04 */ u32 unk4;
    /* 0x08 */ s32 unk8;
    /* 0x0C */ Vector unkC;
    /* 0x18 */ Vector unk18;
    /* 0x24 */ f32 unk24;
};
_Static_assert(sizeof(struct UnkF9AC) == 0x28, "arena entry stride");
#else
struct UnkF9AC {
    /* 0x00 */ u8 unk0;
    /* 0x01 */ char pad1[0x3];
    /* 0x04 */ u8 unk4;
    /* 0x05 */ char pad5[0x7];
    /* 0x0C */ Vector unkC;
    /* 0x18 */ Vector unk18;
    /* 0x24 */ f32 unk24;
};
#endif

s32 func_8010EA68(struct UnkF9AC *, struct UnkF9AC *, struct UnkF9AC *);
s32 func_8010F140(struct UnkF9AC *, struct UnkF9AC *, struct UnkF9AC *);

#ifdef MIPS_TO_C
/* FACTORY: 249/252, exact insn count and spill semantics; residue is a
 * uniform +0x20 frame shift (spill slots land 0x44 high) plus the FP temp
 * rename cascade that follows. */
s32 func_8010EA68(struct UnkF9AC *arg0, struct UnkF9AC *arg1, struct UnkF9AC *arg2) {
    f32 sp8C;
    f32 sp88;
    f32 sp84;
    f32 sp78;
    f32 sp74;
    f32 sp70;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 sp24;
    f32 temp_f0;
    f32 temp_f16;
    f32 temp_f12;
    f32 temp_f14;
    f32 var_f18;
    f32 var_f2;
    f32 var_f14;
    f32 temp_f2_2;
    f32 temp_f12_2;
    f32 temp_f16_4;
    s32 var_v0;

    sp50 = arg0->unk18.x;
    sp4C = arg1->unk24;
    sp48 = arg1->unkC.x;
    temp_f0 = sp50 + sp4C;
    sp44 = arg1->unk18.x;
    if (sp48 < sp44) {
        sp40 = arg0->unkC.x;
        if ((sp40 < (sp48 - temp_f0)) || ((sp44 + temp_f0) < sp40)) {
            return 0;
        }
    } else {
        f32 temp_f2 = arg0->unkC.x;

        if ((temp_f2 < (sp44 - temp_f0)) || ((sp40 = temp_f2, (sp48 + temp_f0) < temp_f2))) {
            return 0;
        }
    }
    temp_f16 = arg1->unkC.y;
    sp38 = arg1->unk18.y;
    if (temp_f16 < sp38) {
        var_f18 = arg0->unkC.y;
        if ((var_f18 < (temp_f16 - temp_f0)) || ((sp38 + temp_f0) < var_f18)) {
            return 0;
        }
    } else {
        var_f18 = arg0->unkC.y;
        if ((var_f18 < (sp38 - temp_f0)) || ((temp_f16 + temp_f0) < var_f18)) {
            return 0;
        }
    }
    temp_f12 = arg1->unkC.z;
    temp_f14 = arg1->unk18.z;
    if (temp_f12 < temp_f14) {
        var_f2 = arg0->unkC.z;
        if ((var_f2 < (temp_f12 - temp_f0)) || ((temp_f14 + temp_f0) < var_f2)) {
            return 0;
        }
        sp3C = temp_f16;
    } else {
        var_f2 = arg0->unkC.z;
        if ((var_f2 < (temp_f14 - temp_f0)) || ((sp3C = temp_f16, (temp_f12 + temp_f0) < var_f2))) {
            return 0;
        }
    }
    sp8C = sp44 - sp48;
    sp88 = sp38 - sp3C;
    sp84 = temp_f14 - temp_f12;
    sp24 = (sp8C * sp8C) + (sp88 * sp88) + (sp84 * sp84);
    if (sp24 == 0.0f) {
        return func_8010E8F0(&arg0->unkC, sp50, &arg1->unkC, sp4C, (Vector *) arg2);
    }
    sp78 = sp48 - sp40;
    var_v0 = 0;
    sp74 = sp3C - var_f18;
    sp70 = temp_f12 - var_f2;
    var_f14 = -((sp8C * sp78) + (sp88 * sp74) + (sp84 * sp70)) / sp24;
    if (var_f14 < 0.0f) {
        var_f14 = 0.0f;
    } else if (var_f14 > 1.0f) {
        var_f14 = 1.0f;
    }
    temp_f2_2 = (sp8C * var_f14) + sp78;
    temp_f12_2 = (sp88 * var_f14) + sp74;
    temp_f16_4 = (sp84 * var_f14) + sp70;
    if (((temp_f2_2 * temp_f2_2) + (temp_f12_2 * temp_f12_2) + (temp_f16_4 * temp_f16_4)) <= (temp_f0 * temp_f0)) {
        if (arg2 != NULL) {
            ((f32 *) arg2)[0] = (temp_f2_2 * 0.5f) + sp40;
            ((f32 *) arg2)[1] = (temp_f12_2 * 0.5f) + arg0->unkC.y;
            ((f32 *) arg2)[2] = (temp_f16_4 * 0.5f) + arg0->unkC.z;
        }
        var_v0 = 1;
    }
    return var_v0;
}
#elif defined(PORT)
/* The PORT implementation of func_8010EA68 lives below func_8010F9AC's
 * forward declarations: it needs struct UnkF9AC, which this spot in the
 * file predates. */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_8/func_8010EA68.s")
#endif

struct UnkEE24 {
    /* 0x00 */ char pad0[0xC];
    /* 0x0C */ f32 unkC;
    /* 0x10 */ f32 unk10;
    /* 0x14 */ f32 unk14;
    /* 0x18 */ f32 unk18;
    /* 0x1C */ f32 unk1C;
};

s32 func_8010EE24(struct UnkEE24 *arg0, struct UnkEE24 *arg1) {
    f32 rx = arg0->unk18 + arg1->unk18;
    f32 dx = arg0->unkC - arg1->unkC;
    f32 ry;
    f32 dy;
    f32 dz;

    if ((rx < dx) || (dx < -rx)) {
        return 0;
    }
    ry = arg0->unk1C + arg1->unk1C;
    dy = arg0->unk10 - arg1->unk10;
    if ((ry < dy) || (dy < -ry)) {
        return 0;
    }
    dz = arg0->unk14 - arg1->unk14;
    if ((rx < dz) || (dz < -rx)) {
        return 0;
    }
    return 1;
}

s32 func_8010EEE8(struct UnkEE24 *arg0, struct UnkEE24 *arg1) {
    f32 rx = arg0->unk18 + arg1->unk18;
    f32 dx = arg0->unkC - arg1->unkC;
    f32 ry;
    f32 dy;
    f32 dz;

    if ((rx < dx) || (dx < -rx)) {
        return 0;
    }
    ry = arg0->unk1C + arg1->unk18;
    dy = arg0->unk10 - arg1->unk10;
    if ((ry < dy) || (dy < -ry)) {
        return 0;
    }
    dz = arg0->unk14 - arg1->unk14;
    if ((rx < dz) || (dz < -rx)) {
        return 0;
    }
    return 1;
}

struct UnkEFA8 {
    /* 0x00 */ char pad0[0xC];
    /* 0x0C */ f32 unkC;
    /* 0x10 */ f32 unk10;
    /* 0x14 */ f32 unk14;
    /* 0x18 */ f32 unk18;
    /* 0x1C */ f32 unk1C;
    /* 0x20 */ f32 unk20;
    /* 0x24 */ f32 unk24;
};

s32 func_8010EFA8(struct UnkEE24 *arg0, struct UnkEFA8 *arg1) {
    f32 r = arg0->unk18 + arg1->unk24;
    f32 r2;

    if (arg1->unkC < arg1->unk18) {
        if ((arg0->unkC < arg1->unkC - r) || (arg1->unk18 + r < arg0->unkC)) {
            return 0;
        }
    } else {
        if ((arg0->unkC < arg1->unk18 - r) || (arg1->unkC + r < arg0->unkC)) {
            return 0;
        }
    }
    r2 = arg0->unk1C + arg1->unk24;
    if (arg1->unk10 < arg1->unk1C) {
        if ((arg0->unk10 < arg1->unk10 - r2) || (arg1->unk1C + r2 < arg0->unk10)) {
            return 0;
        }
    } else {
        if ((arg0->unk10 < arg1->unk1C - r2) || (arg1->unk10 + r2 < arg0->unk10)) {
            return 0;
        }
    }
    if (arg1->unk14 < arg1->unk20) {
        if ((arg0->unk14 < arg1->unk14 - r) || (arg1->unk20 + r < arg0->unk14)) {
            return 0;
        }
    } else {
        if ((arg0->unk14 < arg1->unk20 - r) || (arg1->unk14 + r < arg0->unk14)) {
            return 0;
        }
    }
    return 1;
}

#ifdef MIPS_TO_C
/* FACTORY: 527/535, capsule-capsule closest-segment test; semantics fully
 * transcribed from the asm incl. the ROM's spill-slot reuse, but the temp
 * population doubles the frame (0x148 vs 0xA0) and drags an f20 save in.
 * Needs temp merging -- permuter or a second pass. */
s32 func_8010F140(struct UnkF9AC *arg0, struct UnkF9AC *arg1, struct UnkF9AC *arg2) {
    f32 sp9C;
    f32 sp98;
    f32 sp94;
    f32 sp8C;
    f32 sp88;
    f32 sp84;
    f32 sp7C;
    f32 sp78;
    f32 sp74;
    f32 sp70;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    f32 sp24;
    f32 sp20;
    f32 sp1C;
    f32 sp14;
    f32 sp10;
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f0_6;
    f32 temp_f10;
    f32 temp_f10_2;
    f32 temp_f10_3;
    f32 temp_f10_4;
    f32 temp_f10_5;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f14_3;
    f32 temp_f14_4;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f16_3;
    f32 temp_f18;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f2_4;
    f32 temp_f2_5;
    f32 temp_f2_6;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f4_3;
    f32 temp_f4_4;
    f32 temp_f6;
    f32 temp_f6_2;
    f32 temp_f6_3;
    f32 temp_f6_4;
    f32 temp_f8;
    f32 temp_f8_2;
    f32 var_f0;
    f32 var_f0_2;
    f32 var_f16;
    s32 var_v0;

    sp34 = arg0->unkC.x;
    temp_f18 = arg0->unk24 + arg1->unk24;
    sp30 = arg0->unk18.x;
    if (sp34 < sp30) {
        temp_f8 = arg1->unkC.x;
        sp2C = temp_f8;
        temp_f4 = arg1->unk18.x;
        sp28 = temp_f4;
        if (temp_f8 < temp_f4) {
            if ((temp_f4 < (sp34 - temp_f18)) || ((sp30 + temp_f18) < temp_f8)) {
                return 0;
            }
            goto block_16;
        }
        if ((sp2C < (sp34 - temp_f18)) || ((sp30 + temp_f18) < sp28)) {
            return 0;
        }
        goto block_16;
    }
    temp_f2 = arg1->unkC.x;
    temp_f0 = arg1->unk18.x;
    if (temp_f2 < temp_f0) {
        if ((temp_f0 < (sp30 - temp_f18)) || ((sp34 + temp_f18) < temp_f2)) {
            return 0;
        }
        sp28 = temp_f0;
        sp2C = temp_f2;
        goto block_16;
    }
    if ((temp_f2 < (sp30 - temp_f18)) || (sp28 = temp_f0, sp2C = temp_f2, ((sp34 + temp_f18) < temp_f0))) {
        return 0;
    }
block_16:
    sp24 = arg0->unkC.y;
    sp20 = arg0->unk18.y;
    if (sp24 < sp20) {
        sp1C = arg1->unkC.y;
        temp_f16 = arg1->unk18.y;
        if (sp1C < temp_f16) {
            if ((temp_f16 < (sp24 - temp_f18)) || ((sp20 + temp_f18) < sp1C)) {
                return 0;
            }
            goto block_32;
        }
        if ((sp1C < (sp24 - temp_f18)) || ((sp20 + temp_f18) < temp_f16)) {
            return 0;
        }
        goto block_32;
    }
    temp_f0_2 = arg1->unkC.y;
    temp_f16_2 = arg1->unk18.y;
    if (temp_f0_2 < temp_f16_2) {
        if ((temp_f16_2 < (sp20 - temp_f18)) || ((sp24 + temp_f18) < temp_f0_2)) {
            return 0;
        }
        sp1C = temp_f0_2;
        goto block_32;
    }
    if ((temp_f0_2 < (sp20 - temp_f18)) || (sp1C = temp_f0_2, ((sp24 + temp_f18) < temp_f16_2))) {
        return 0;
    }
block_32:
    temp_f14 = arg0->unkC.z;
    temp_f12 = arg0->unk18.z;
    if (temp_f14 < temp_f12) {
        temp_f0_3 = arg1->unkC.z;
        temp_f2_2 = arg1->unk18.z;
        if (temp_f0_3 < temp_f2_2) {
            if ((temp_f2_2 < (temp_f14 - temp_f18)) || ((temp_f12 + temp_f18) < temp_f0_3)) {
                return 0;
            }
            goto block_47;
        }
        if ((temp_f0_3 < (temp_f14 - temp_f18)) || ((temp_f12 + temp_f18) < temp_f2_2)) {
            return 0;
        }
        goto block_47;
    }
    temp_f0_4 = arg1->unkC.z;
    temp_f2_3 = arg1->unk18.z;
    if (temp_f0_4 < temp_f2_3) {
        if ((temp_f2_3 < (temp_f12 - temp_f18)) || ((temp_f14 + temp_f18) < temp_f0_4)) {
            return 0;
        }
        goto block_47;
    }
    if ((temp_f0_4 < (temp_f12 - temp_f18)) || ((temp_f14 + temp_f18) < temp_f2_3)) {
        return 0;
    }
block_47:
    var_v0 = 0;
    temp_f8_2 = sp30 - sp34;
    sp0 = sp34;
    temp_f6 = temp_f12 - temp_f14;
    sp8 = sp24;
    sp9C = temp_f8_2;
    temp_f10 = sp20 - sp24;
    sp94 = temp_f6;
    sp4 = temp_f8_2;
    sp98 = temp_f10;
    spC = temp_f10;
    temp_f10_2 = arg1->unk18.y - sp1C;
    sp10 = sp1C;
    sp88 = temp_f10_2;
    temp_f10_3 = arg1->unk18.z - arg1->unkC.z;
    temp_f4_2 = spC;
    temp_f6_2 = sp28 - sp2C;
    sp84 = temp_f10_3;
    temp_f10_4 = sp4;
    sp4 = sp2C;
    sp8C = temp_f6_2;
    spC = temp_f10_4;
    sp14 = temp_f6_2;
    temp_f12_2 = (temp_f10_4 * temp_f6_2) + (temp_f4_2 * temp_f10_2) + (sp94 * sp84);
    sp7C = temp_f12_2;
    sp78 = sp34 - sp2C;
    sp74 = sp8 - sp10;
    sp70 = temp_f14 - arg1->unkC.z;
    temp_f2_4 = (spC * spC) + (temp_f4_2 * temp_f4_2) + (sp94 * temp_f6);
    sp30 = temp_f2_4;
    temp_f10_5 = (temp_f6_2 * temp_f6_2) + (temp_f10_2 * sp88) + (sp84 * temp_f10_3);
    sp28 = temp_f10_5;
    temp_f16_3 = (temp_f2_4 * temp_f10_5) - (temp_f12_2 * temp_f12_2);
    if (temp_f16_3 == 0.0f) {
        temp_f14_2 = (sp9C * sp78) + (temp_f4_2 * sp74) + (sp94 * sp70);
        temp_f0_5 = temp_f14_2 / temp_f12_2;
        var_f16 = temp_f0_5;
        if (temp_f0_5 < 0.0f) {
            var_f0 = -temp_f14_2 / sp30;
        } else if (temp_f0_5 > 1.0f) {
            var_f0 = (temp_f12_2 - temp_f14_2) / sp30;
        } else {
            var_f0 = 0.0f;
        }
    } else {
        sp14 = sp78;
        sp10 = sp74;
        temp_f4_3 = sp14;
        sp14 = sp70;
        temp_f6_3 = (sp8C * sp78) + (sp88 * sp74) + (sp84 * sp70);
        sp24 = temp_f6_3;
        temp_f14_3 = (sp9C * temp_f4_3) + (sp98 * sp10) + (sp94 * sp14);
        var_f0_2 = ((sp7C * temp_f6_3) - (sp28 * temp_f14_3)) / temp_f16_3;
        if (var_f0_2 < 0.0f) {
            var_f0_2 = 0.0f;
        } else if (var_f0_2 > 1.0f) {
            var_f0_2 = 1.0f;
        }
        temp_f2_5 = ((temp_f12_2 * var_f0_2) + sp24) / sp28;
        var_f16 = temp_f2_5;
        if (temp_f2_5 < 0.0f) {
            var_f0 = -temp_f14_3 / sp30;
        } else if (temp_f2_5 > 1.0f) {
            var_f0 = (temp_f12_2 - temp_f14_3) / sp30;
        } else {
            var_f0 = ((temp_f12_2 * var_f16) - temp_f14_3) / sp30;
        }
    }
    if (var_f0 < 0.0f) {
        var_f0 = 0.0f;
    } else if (var_f0 > 1.0f) {
        var_f0 = 1.0f;
    }
    sp34 = (sp9C * var_f0) + sp78;
    sp30 = (sp98 * var_f0) + sp74;
    sp28 = (sp94 * var_f0) + sp70;
    if (var_f16 < 0.0f) {
        var_f16 = 0.0f;
    } else if (var_f16 > 1.0f) {
        var_f16 = 1.0f;
    }
    temp_f0_6 = sp8C * var_f16;
    temp_f6_4 = sp88 * var_f16;
    temp_f2_6 = sp34 - temp_f0_6;
    sp20 = temp_f6_4;
    temp_f12_3 = sp30 - temp_f6_4;
    temp_f4_4 = sp84 * var_f16;
    sp1C = temp_f4_4;
    temp_f14_4 = sp28 - temp_f4_4;
    if (((temp_f2_6 * temp_f2_6) + (temp_f12_3 * temp_f12_3) + (temp_f14_4 * temp_f14_4)) <= (temp_f18 * temp_f18)) {
        if (arg2 != NULL) {
            ((f32 *) arg2)[0] = ((temp_f2_6 * 0.5f) + temp_f0_6 + sp2C);
            ((f32 *) arg2)[1] = ((temp_f12_3 * 0.5f) + sp20 + arg1->unkC.y);
            ((f32 *) arg2)[2] = (temp_f14_4 * 0.5f) + sp1C + arg1->unkC.z;
        }
        var_v0 = 1;
    }
    return var_v0;
}
#elif defined(PORT)
/* The PORT implementation of func_8010F140 also lives below the forward
 * declarations, next to func_8010EA68's. */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_8/func_8010F140.s")
#endif

void func_8010F964(f32 *arg0, f32 *arg1) {
    arg0[0] = (arg1[6] + arg1[3]) * 0.5f;
    arg0[1] = (arg1[7] + arg1[4]) * 0.5f;
    arg0[2] = (arg1[8] + arg1[5]) * 0.5f;
}


#ifdef PORT
/* PORT: sphere (arg0: center unkC, radius unk18.x) vs capsule (arg1:
 * segment unkC..unk18, radius unk24), from
 * asm/nonmatchings/ovl2/ovl2_8/func_8010EA68.s. Per-axis reject against the
 * capsule's expanded extent, then closest-point-on-segment; a degenerate
 * (zero-length) segment tail-calls the sphere-sphere test. arg2, when
 * non-NULL, receives the contact point as three floats at offset 0 (the
 * m2c sketch shows the same unk0/unk4/unk8 stores; the asm confirms swc1 to
 * 0x0/0x4/0x8 off the raw third argument). */
s32 func_8010EA68(struct UnkF9AC *arg0, struct UnkF9AC *arg1, struct UnkF9AC *arg2) {
    f32 *out = (f32 *) arg2;
    f32 r = arg0->unk18.x + arg1->unk24;
    f32 ax = arg0->unkC.x;
    f32 ay = arg0->unkC.y;
    f32 az = arg0->unkC.z;
    f32 b1x = arg1->unkC.x;
    f32 b1y = arg1->unkC.y;
    f32 b1z = arg1->unkC.z;
    f32 b2x = arg1->unk18.x;
    f32 b2y = arg1->unk18.y;
    f32 b2z = arg1->unk18.z;
    f32 dx, dy, dz, dd;
    f32 fx, fy, fz;
    f32 cx, cy, cz;
    f32 t;

    if (b1x < b2x) {
        if ((ax < b1x - r) || (b2x + r < ax)) {
            return 0;
        }
    } else {
        if ((ax < b2x - r) || (b1x + r < ax)) {
            return 0;
        }
    }
    if (b1y < b2y) {
        if ((ay < b1y - r) || (b2y + r < ay)) {
            return 0;
        }
    } else {
        if ((ay < b2y - r) || (b1y + r < ay)) {
            return 0;
        }
    }
    if (b1z < b2z) {
        if ((az < b1z - r) || (b2z + r < az)) {
            return 0;
        }
    } else {
        if ((az < b2z - r) || (b1z + r < az)) {
            return 0;
        }
    }
    dx = b2x - b1x;
    dy = b2y - b1y;
    dz = b2z - b1z;
    dd = dx * dx + dy * dy + dz * dz;
    if (dd == 0.0f) {
        return func_8010E8F0(&arg0->unkC, arg0->unk18.x, &arg1->unkC, arg1->unk24, (Vector *) out);
    }
    fx = b1x - ax;
    fy = b1y - ay;
    fz = b1z - az;
    t = -(dx * fx + dy * fy + dz * fz) / dd;
    if (t < 0.0f) {
        t = 0.0f;
    } else if (t > 1.0f) {
        t = 1.0f;
    }
    cx = dx * t + fx;
    cy = dy * t + fy;
    cz = dz * t + fz;
    if (cx * cx + cy * cy + cz * cz <= r * r) {
        if (out != NULL) {
            out[0] = cx * 0.5f + ax;
            out[1] = cy * 0.5f + ay;
            out[2] = cz * 0.5f + az;
        }
        return 1;
    }
    return 0;
}

/* PORT: capsule vs capsule (segments unkC..unk18, radii unk24), from
 * asm/nonmatchings/ovl2/ovl2_8/func_8010F140.s. Per-axis reject on both
 * expanded extents, then the classic closest-point-between-segments solve
 * (a = dA.dA, e = dB.dB, b = dA.dB, denom = a*e - b*b, with the parallel
 * case going through t = dA.r / b exactly as the ROM does, division by an
 * unclamped b included). arg2, when non-NULL, receives the contact point --
 * the midpoint of the closest-approach segment -- as three floats at offset
 * 0 (asm: swc1 to 0x0/0x4/0x8 off $a2). */
s32 func_8010F140(struct UnkF9AC *arg0, struct UnkF9AC *arg1, struct UnkF9AC *arg2) {
    f32 *out = (f32 *) arg2;
    f32 r = arg0->unk24 + arg1->unk24;
    f32 a1x = arg0->unkC.x;
    f32 a1y = arg0->unkC.y;
    f32 a1z = arg0->unkC.z;
    f32 a2x = arg0->unk18.x;
    f32 a2y = arg0->unk18.y;
    f32 a2z = arg0->unk18.z;
    f32 b1x = arg1->unkC.x;
    f32 b1y = arg1->unkC.y;
    f32 b1z = arg1->unkC.z;
    f32 b2x = arg1->unk18.x;
    f32 b2y = arg1->unk18.y;
    f32 b2z = arg1->unk18.z;
    f32 minA, maxA, minB, maxB;
    f32 dAx, dAy, dAz;
    f32 dBx, dBy, dBz;
    f32 rx, ry, rz;
    f32 a, b, c, e, f, denom;
    f32 s, t;
    f32 wx, wy, wz;
    f32 ux, uy, uz;
    f32 dx, dy, dz;

    if (a1x < a2x) {
        minA = a1x;
        maxA = a2x;
    } else {
        minA = a2x;
        maxA = a1x;
    }
    if (b1x < b2x) {
        minB = b1x;
        maxB = b2x;
    } else {
        minB = b2x;
        maxB = b1x;
    }
    if ((maxB < minA - r) || (maxA + r < minB)) {
        return 0;
    }
    if (a1y < a2y) {
        minA = a1y;
        maxA = a2y;
    } else {
        minA = a2y;
        maxA = a1y;
    }
    if (b1y < b2y) {
        minB = b1y;
        maxB = b2y;
    } else {
        minB = b2y;
        maxB = b1y;
    }
    if ((maxB < minA - r) || (maxA + r < minB)) {
        return 0;
    }
    if (a1z < a2z) {
        minA = a1z;
        maxA = a2z;
    } else {
        minA = a2z;
        maxA = a1z;
    }
    if (b1z < b2z) {
        minB = b1z;
        maxB = b2z;
    } else {
        minB = b2z;
        maxB = b1z;
    }
    if ((maxB < minA - r) || (maxA + r < minB)) {
        return 0;
    }
    dAx = a2x - a1x;
    dAy = a2y - a1y;
    dAz = a2z - a1z;
    dBx = b2x - b1x;
    dBy = b2y - b1y;
    dBz = b2z - b1z;
    b = dAx * dBx + dAy * dBy + dAz * dBz;
    rx = a1x - b1x;
    ry = a1y - b1y;
    rz = a1z - b1z;
    a = dAx * dAx + dAy * dAy + dAz * dAz;
    e = dBx * dBx + dBy * dBy + dBz * dBz;
    denom = a * e - b * b;
    if (denom == 0.0f) {
        c = dAx * rx + dAy * ry + dAz * rz;
        t = c / b;
        if (t < 0.0f) {
            s = -c / a;
        } else if (t > 1.0f) {
            s = (b - c) / a;
        } else {
            s = 0.0f;
        }
    } else {
        f = dBx * rx + dBy * ry + dBz * rz;
        c = dAx * rx + dAy * ry + dAz * rz;
        s = (b * f - e * c) / denom;
        if (s < 0.0f) {
            s = 0.0f;
        } else if (s > 1.0f) {
            s = 1.0f;
        }
        t = (b * s + f) / e;
        if (t < 0.0f) {
            s = -c / a;
        } else if (t > 1.0f) {
            s = (b - c) / a;
        } else {
            s = (b * t - c) / a;
        }
    }
    if (s < 0.0f) {
        s = 0.0f;
    } else if (s > 1.0f) {
        s = 1.0f;
    }
    wx = dAx * s + rx;
    wy = dAy * s + ry;
    wz = dAz * s + rz;
    if (t < 0.0f) {
        t = 0.0f;
    } else if (t > 1.0f) {
        t = 1.0f;
    }
    ux = dBx * t;
    uy = dBy * t;
    uz = dBz * t;
    dx = wx - ux;
    dy = wy - uy;
    dz = wz - uz;
    if (dx * dx + dy * dy + dz * dz <= r * r) {
        if (out != NULL) {
            out[0] = dx * 0.5f + ux + b1x;
            out[1] = dy * 0.5f + uy + b1y;
            out[2] = dz * 0.5f + uz + b1z;
        }
        return 1;
    }
    return 0;
}
#endif
#ifdef PORT
/* PORT copy of the dispatcher below; the only changes are the type decode
 * (unk4 >> 24 -- the u8 read would see the head word's always-zero low
 * byte and route every pair through the 0/0 AABB test), the pointer-true
 * out argument to func_8010EA20 (the (s32) cast truncates on LP64), and an
 * explicit 0 for an out-of-range type pair. */
s32 func_8010F9AC(struct UnkF9AC *arg0, struct UnkF9AC *arg1, struct UnkF9AC *arg2) {
    s32 ret;

    switch (arg0->unk4 >> 24) {
    case 0:
        switch (arg1->unk4 >> 24) {
        case 0:
            return func_8010EE24((struct UnkEE24 *) arg0, (struct UnkEE24 *) arg1);
        case 1:
            return func_8010EEE8((struct UnkEE24 *) arg0, (struct UnkEE24 *) arg1);
        case 2:
            return func_8010EFA8((struct UnkEE24 *) arg0, (struct UnkEFA8 *) arg1);
        }
        break;
    case 1:
        switch (arg1->unk4 >> 24) {
        case 0:
            return func_8010EEE8((struct UnkEE24 *) arg1, (struct UnkEE24 *) arg0);
        case 1:
            ret = func_8010EA20((struct UnkEA20 *) arg0, (struct UnkEA20 *) arg1, (Vector *) arg2);
            if (ret != 0) {
                arg2->unkC = arg0->unkC;
                arg2->unk18 = arg1->unkC;
            }
            return ret;
        case 2:
            ret = func_8010EA68(arg0, arg1, arg2);
            if (ret != 0) {
                arg2->unkC = arg0->unkC;
                func_8010F964((f32 *) &arg2->unk18, (f32 *) arg1);
            }
            return ret;
        }
        break;
    case 2:
        switch (arg1->unk4 >> 24) {
        case 0:
            return func_8010EFA8((struct UnkEE24 *) arg1, (struct UnkEFA8 *) arg0);
        case 1:
            ret = func_8010EA68(arg1, arg0, arg2);
            if (ret != 0) {
                func_8010F964((f32 *) &arg2->unkC, (f32 *) arg0);
                arg2->unk18 = arg1->unkC;
            }
            return ret;
        case 2:
            ret = func_8010F140(arg0, arg1, arg2);
            if (ret != 0) {
                func_8010F964((f32 *) &arg2->unkC, (f32 *) arg0);
                func_8010F964((f32 *) &arg2->unk18, (f32 *) arg1);
            }
            return ret;
        }
        break;
    }
    return 0;
}
#else
s32 func_8010F9AC(struct UnkF9AC *arg0, struct UnkF9AC *arg1, struct UnkF9AC *arg2) {
    s32 ret;

    switch (arg0->unk4) {
    case 0:
        switch (arg1->unk4) {
        case 0:
            return func_8010EE24((struct UnkEE24 *) arg0, (struct UnkEE24 *) arg1);
        case 1:
            return func_8010EEE8((struct UnkEE24 *) arg0, (struct UnkEE24 *) arg1);
        case 2:
            return func_8010EFA8((struct UnkEE24 *) arg0, (struct UnkEFA8 *) arg1);
        }
        break;
    case 1:
        switch (arg1->unk4) {
        case 0:
            return func_8010EEE8((struct UnkEE24 *) arg1, (struct UnkEE24 *) arg0);
        case 1:
            ret = func_8010EA20((struct UnkEA20 *) arg0, (struct UnkEA20 *) arg1, (s32) arg2);
            if (ret != 0) {
                arg2->unkC = arg0->unkC;
                arg2->unk18 = arg1->unkC;
            }
            return ret;
        case 2:
            ret = func_8010EA68(arg0, arg1, arg2);
            if (ret != 0) {
                arg2->unkC = arg0->unkC;
                func_8010F964((f32 *) &arg2->unk18, (f32 *) arg1);
            }
            return ret;
        }
        break;
    case 2:
        switch (arg1->unk4) {
        case 0:
            return func_8010EFA8((struct UnkEE24 *) arg1, (struct UnkEFA8 *) arg0);
        case 1:
            ret = func_8010EA68(arg1, arg0, arg2);
            if (ret != 0) {
                func_8010F964((f32 *) &arg2->unkC, (f32 *) arg0);
                arg2->unk18 = arg1->unkC;
            }
            return ret;
        case 2:
            ret = func_8010F140(arg0, arg1, arg2);
            if (ret != 0) {
                func_8010F964((f32 *) &arg2->unkC, (f32 *) arg0);
                func_8010F964((f32 *) &arg2->unk18, (f32 *) arg1);
            }
            return ret;
        }
        break;
    }
}
#endif

#ifdef PORT
/* These are views over the HOST PlySlot/CollSlot arenas (ovl2_9.c), whose
 * LP64 layouts put the shape head/count/list at 32/40/48 in both (PlySlot's
 * EntryInfo is 20 bytes + pad, CollSlot's CollInfo is 24). The N64-offset
 * views read half of the info block as the head pointer and crashed the
 * ply-vs-enemy sweep the moment an enemy entered a slot. Sizes must equal
 * the host slot (56) because the sweep strides the arenas with these. */
struct UnkFC30A {
    s32 unk0;
    s32 unk0hi_;
    char pad4[24];
    struct UnkF9AC *unk18;
    s32 unk1C;
    struct UnkF9AC *unk20;
};

struct UnkFC30B {
    s32 unk0;
    s32 unk0hi_;
    char pad4[24];
    struct UnkF9AC *unk1C;
    s32 unk20;
    struct UnkF9AC *unk24;
};
_Static_assert(sizeof(struct UnkFC30A) == 56, "PlySlot view size");
_Static_assert(sizeof(struct UnkFC30B) == 56, "CollSlot view size");
_Static_assert(__builtin_offsetof(struct UnkFC30A, unk18) == 32, "A head");
_Static_assert(__builtin_offsetof(struct UnkFC30B, unk1C) == 32, "B head");
#else
struct UnkFC30A {
    /* 0x00 */ s32 unk0;
    /* 0x04 */ char pad4[0x14];
    /* 0x18 */ struct UnkF9AC *unk18;
    /* 0x1C */ s32 unk1C;
    /* 0x20 */ struct UnkF9AC *unk20;
};

struct UnkFC30B {
    /* 0x00 */ s32 unk0;
    /* 0x04 */ char pad4[0x18];
    /* 0x1C */ struct UnkF9AC *unk1C;
    /* 0x20 */ s32 unk20;
    /* 0x24 */ struct UnkF9AC *unk24;
};
#endif

/* The definition above takes `struct Unk8010E740 *`. This second, later
 * declaration named a different tag, which gcc rejects outright and which
 * broke the build for every lane; IDO accepted it, so the ROM was never
 * affected. Both are pointers so the codegen at the call site is
 * identical -- only the tag differed. */
void func_8010E740(struct Unk8010E740 *, s32);

s32 func_8010FC30(struct UnkFC30A *arg0, struct UnkFC30B *arg1, struct UnkF9AC *arg2) {
    struct UnkF9AC *p;
    struct UnkF9AC *q;
    s32 i;
    s32 j;

    if (arg0->unk18 != NULL) {
        if (arg1->unk1C != NULL) {
            if (arg0->unk18->unk0 == 0) {
                func_8010E740(arg0->unk18, arg0->unk0);
            }
            if (arg1->unk1C->unk0 == 0) {
                func_8010E740(arg1->unk1C, arg1->unk0);
            }
            if (func_8010F9AC(arg0->unk18, arg1->unk1C, NULL) != 0) {
                                for (i = 0, p = arg0->unk20; i < arg0->unk1C; i++, p++) {
                    if (p->unk0 == 0) {
                        func_8010E740(p, arg0->unk0);
                    }
                                        for (j = 0, q = arg1->unk24; j < arg1->unk20; j++, q++) {
                        if (q->unk0 == 0) {
                            func_8010E740(q, arg1->unk0);
                        }
                        if (func_8010F9AC(p, q, arg2) != 0) {
                            return 1;
                        }
                    }
                }
            }
        } else {
            if (arg0->unk18->unk0 == 0) {
                func_8010E740(arg0->unk18, arg0->unk0);
            }
                        for (j = 0, q = arg1->unk24; j < arg1->unk20; j++, q++) {
                if (q->unk0 == 0) {
                    func_8010E740(q, arg1->unk0);
                }
                if (func_8010F9AC(arg0->unk18, q, NULL) != 0) {
                                        for (i = 0, p = arg0->unk20; i < arg0->unk1C; i++, p++) {
                        if (p->unk0 == 0) {
                            func_8010E740(p, arg0->unk0);
                        }
                        if (func_8010F9AC(p, q, arg2) != 0) {
                            return 1;
                        }
                    }
                }
            }
        }
    } else {
        if (arg1->unk1C != NULL) {
            if (arg1->unk1C->unk0 == 0) {
                func_8010E740(arg1->unk1C, arg1->unk0);
            }
                        for (i = 0, p = arg0->unk20; i < arg0->unk1C; i++, p++) {
                if (p->unk0 == 0) {
                    func_8010E740(p, arg0->unk0);
                }
                if (func_8010F9AC(p, arg1->unk1C, NULL) != 0) {
                                        for (j = 0, q = arg1->unk24; j < arg1->unk20; j++, q++) {
                        if (q->unk0 == 0) {
                            func_8010E740(q, arg1->unk0);
                        }
                        if (func_8010F9AC(p, q, arg2) != 0) {
                            return 1;
                        }
                    }
                }
            }
        } else {
                        for (i = 0, p = arg0->unk20; i < arg0->unk1C; i++, p++) {
                if (p->unk0 == 0) {
                    func_8010E740(p, arg0->unk0);
                }
                                for (j = 0, q = arg1->unk24; j < arg1->unk20; j++, q++) {
                    if (q->unk0 == 0) {
                        func_8010E740(q, arg1->unk0);
                    }
                    if (func_8010F9AC(p, q, arg2) != 0) {
                        return 1;
                    }
                }
            }
        }
    }
    return 0;
}

void func_80110014(Mtx *m, f32 dx, f32 dy, f32 dz, f32 sx, f32 sy, f32 sz) {
    s32 e1, e2;

    e1 = FTOFIX32(sx);
    e2 = FTOFIX32(0.0f);
    m->m[0][0] = (e1 & 0xFFFF0000) | ((e2 >> 16) & 0xFFFF);
    m->m[2][0] = ((e1 << 16) & 0xFFFF0000) | (e2 & 0xFFFF);

    e1 = FTOFIX32(0.0f);
    e2 = FTOFIX32(0.0f);
    m->m[0][1] = (e1 & 0xFFFF0000) | ((e2 >> 16) & 0xFFFF);
    m->m[2][1] = ((e1 << 16) & 0xFFFF0000) | (e2 & 0xFFFF);

    e1 = FTOFIX32(0.0f);
    e2 = FTOFIX32(sy);
    m->m[0][2] = (e1 & 0xFFFF0000) | ((e2 >> 16) & 0xFFFF);
    m->m[2][2] = ((e1 << 16) & 0xFFFF0000) | (e2 & 0xFFFF);

    e1 = FTOFIX32(0.0f);
    e2 = FTOFIX32(0.0f);
    m->m[0][3] = (e1 & 0xFFFF0000) | ((e2 >> 16) & 0xFFFF);
    m->m[2][3] = ((e1 << 16) & 0xFFFF0000) | (e2 & 0xFFFF);

    e1 = FTOFIX32(0.0f);
    e2 = FTOFIX32(0.0f);
    m->m[1][0] = (e1 & 0xFFFF0000) | ((e2 >> 16) & 0xFFFF);
    m->m[3][0] = ((e1 << 16) & 0xFFFF0000) | (e2 & 0xFFFF);

    e1 = FTOFIX32(sz);
    e2 = FTOFIX32(0.0f);
    m->m[1][1] = (e1 & 0xFFFF0000) | ((e2 >> 16) & 0xFFFF);
    m->m[3][1] = ((e1 << 16) & 0xFFFF0000) | (e2 & 0xFFFF);

    e2 = FTOFIX32(dy);
    e1 = FTOFIX32(dx);
    m->m[1][2] = (e1 & 0xFFFF0000) | ((e2 >> 16) & 0xFFFF);
    m->m[3][2] = ((e1 << 16) & 0xFFFF0000) | (e2 & 0xFFFF);

    m->m[1][3] = (FTOFIX32(dz) & 0xFFFF0000) | ((FTOFIX32(1.0f) >> 16) & 0xFFFF);
    m->m[3][3] = ((FTOFIX32(dz) << 16) & 0xFFFF0000) | (FTOFIX32(1.0f) & 0xFFFF);
}

void func_80110130(void) {
}

void func_80110138(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
}
