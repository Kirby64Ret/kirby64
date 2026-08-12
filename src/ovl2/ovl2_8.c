#include "common.h"
#include "track_arrays.h"
#include "GObj.h"

struct UnkEA20 {
    /* 0x00 */ char pad0[0xC];
    /* 0x0C */ Vector unkC;
    /* 0x18 */ s32 unk18;
};

s32 func_8010E8F0(Vector *, s32, Vector *, s32, s32);

struct Unk8010E5B0Node {
    u8 pad0[0x14];
    struct Unk8010E5B0Node *unk14;
};

struct Unk8010E5B0Arg3 {
    s32 unk0;
    s32 unk4;
    struct Unk8010E5B0Node **unk8;
    f32 (*unkC)[4][3];
};

struct Unk8010E740 {
    u8 unk0;
    u8 pad1[3];
    u8 unk4;
    u8 pad5[3];
    s32 unk8;
    Vector unkC;
    Vector unk18;
};

extern s32 D_8012D0C0;
extern s32 D_8012D580;
extern struct Unk8010E5B0Arg3 D_80124990;
extern struct Unk8010E5B0Arg3 D_801249A0;
extern struct Unk8010E5B0Arg3 D_801249B0;

void func_800A5D88(void *, void *);
void func_800A5F94(s32, void *);
void func_800A6208(f32 (*)[3], Vector *);


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

void func_8010E6F0(Vector *arg0, s32 arg1) {
    arg0->x += gEntitiesNextPosXArray[arg1];
    arg0->y += gEntitiesNextPosYArray[arg1];
    arg0->z += gEntitiesNextPosZArray[arg1];
}

#ifdef NON_MATCHING
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
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_8/func_8010E740.s")
#endif

#ifdef MIPS_TO_C
/* 25/76 diffs. Structure is instruction-for-instruction exact; the whole
 * residue is one FP register swap: IDO puts arg2->x in $f0 and -r in $f18,
 * the ROM puts arg2->x in $f18 and -r in $f0. The register SET is identical.
 * Swept: (r,dx) decl/assign order, (dx,r), (x,r,dx) [best, this one],
 * (r,x,dx), and reloading arg2->x at the tail instead of reusing x.
 * Requires the file-scope prototype and UnkEA20.unk18 to become f32/Vector*,
 * which was A/B'd and leaves func_8010EA20 matching. */
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

s32 func_8010EA20(struct UnkEA20 *arg0, struct UnkEA20 *arg1, s32 arg2) {
    return func_8010E8F0(&arg0->unkC, arg0->unk18, &arg1->unkC, arg1->unk18, arg2);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_8/func_8010EA68.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_8/func_8010F140.s")

void func_8010F964(f32 *arg0, f32 *arg1) {
    arg0[0] = (arg1[6] + arg1[3]) * 0.5f;
    arg0[1] = (arg1[7] + arg1[4]) * 0.5f;
    arg0[2] = (arg1[8] + arg1[5]) * 0.5f;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_8/func_8010F9AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_8/func_8010FC30.s")

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
