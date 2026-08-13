#include <PR/gbi.h>
#include "common.h"
#include "ovl1/ovl1_6.h"
#include "GObj.h"
#include "main/gtl.h"
#include "main/anim.h"
#include "unk_structs/D_800D79D8.h"

// All the filesystem loading magic happens here
extern u32 **D_800D00C4[];

// not in this file?
extern u32 D_800DFA10[];
extern u32 *D_800DFD90[];


// In this file
void func_800B1FD0(DObj *, u32, f32, u32, f32);
s32 func_800A9B48(s32);
void func_800AA49C(DObj *, s32, f32, u32, f32);
void func_800AACC8(s32 *, s32, s32, f32);
void func_800AA96C(s32 *, u32, s32, f32, f32);
void func_800AAF34(s32, s32, f32);
void func_800AA608(DObj *, s32, f32, u32, f32);

// ovl1_7
void func_800AEE20(struct GObj *, f32);
void func_800AEEB4(struct GObj *, f32);
void func_800AEF0C(struct GObj *, f32, struct GObj *);
void func_800AEFA4(struct GObj *, f32, struct GObj *);
void func_800AEFFC(u16);
void func_800AF09C(u16);
void func_800AF27C(void);
void func_800B21FC(AnimCmd ***, f32);
void func_800B2288(AnimCmd ***, f32);
void ohSleep(s32);

extern GObj *D_800DE350[];

// A node in the dynamic-buffer free-list allocator (see func_800A82C0 / func_800A8358).
struct CacheLine {
    struct CacheLine *unk0;
    struct CacheLine *unk4;
    u32 unk8;
    u32 unkC;
};

extern u32 D_800D7BB0;
extern u32 D_800D7BB4;
extern u32 D_800D7BB8;
extern struct CacheLine *D_800D7BBC;
extern u32 D_800D7C10;

extern struct CacheLine *D_800D7BC0[4];
extern struct CacheLine *D_800D7BD0[4];
extern u32 D_800D7BE0[4];
extern s32 D_800D7BF0[];
extern s32 D_800D7C00[];

s32 func_800A86C8(s32, s32 *, s32 *);

extern u32 D_800D00E4[];
extern u32 D_800D0124[];
extern struct BGHeader **D_800D0104[];
extern u32 D_800D0144;

struct CacheEntry800C4654 {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
};
extern struct CacheEntry800C4654 D_800C4654[];
extern u8 D_800C4640[];

extern u32 D_800D6E68;
extern u32 D_800D6E6C;
extern u32 D_800D6E70;
extern u32 D_800D6E74;
extern u32 D_800D6E78;
extern u32 D_800D6E7C;
extern u32 D_800D6E80;
extern u32 D_800D6E84;

extern struct BankHeader *D_800D0184[];

extern struct UnkStruct800D79D8 *D_800D79D8[];
extern u32 D_800D7A00[];

// Result of func_800A94F4: a DMA'd-in animation block with a small
// relocation table (unk8 entries starting at unkC) that gets fixed up
// to point inside the block itself.
struct AnimBlock {
    void *unk0;
    u32 unk4;
    s32 unk8;
    void *unkC[1];
};

void animSetModelAnimation(void *, void *, f32);
void animSetTextureAnimation(void *, s32, f32);

void func_800A82C0(void) {
    D_800D7BB0 = D_800D7BB4 = ((u32)gDynamicBuffer2.top + 0xFF) & ~0xFF;
    D_800D7BB8 = (u32)gDynamicBuffer2.poolEnd - D_800D7BB0;
    D_800D7C10 = 0x80400000;
}

s32 func_800A8310(s32 arg0) {
    arg0 = arg0 & ~0xF;
    D_800D7BB8 -= arg0;
    if ((s32)D_800D7BB8 < 0) {
        return 0;
    }
    D_800D7BB4 += arg0;
    return D_800D7BB4 - arg0;
}

#ifdef NON_MATCHING
// Correct structure; remaining diff is register allocation only (compiler
// caches &D_800D7BD0[temp_v1] in a2, target keeps base + recomputes index).
void *func_800A8358(s32 arg0) {
    s32 temp_v1;
    struct CacheLine *var_a1;
    u32 lim;
    struct CacheLine *found;
    struct CacheLine *temp_a2;

    temp_v1 = arg0 & 3;
    arg0 = ((arg0 - temp_v1) + 0xC) & ~0xF;
    var_a1 = D_800D7BD0[temp_v1];
    lim = arg0 + 0x10;
loop_1:
    if (var_a1->unkC != 0) {
        goto advance;
    }
    if (var_a1->unk8 >= lim) {
        goto block_found;
    }
advance:
    var_a1 = var_a1->unk4;
    goto loop_1;
block_found:
    found = (struct CacheLine *)((u8 *)var_a1 + arg0);
    temp_a2 = found + 1;
    temp_a2->unk0 = var_a1;
    temp_a2->unk4 = var_a1->unk4;
    temp_a2->unkC = 0;
    temp_a2->unk8 = (var_a1->unk8 - arg0) - 0x10;
    var_a1->unk4 = temp_a2;
    temp_a2->unk4->unk0 = temp_a2;
    D_800D7BD0[temp_v1] = temp_a2->unk4->unk0;
    D_800D7BBC = var_a1;
    var_a1->unk8 = arg0;
    var_a1->unkC = 1;
    return (u8 *)var_a1 + 0x10;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A8358.s")
#endif
struct CacheLine *func_800A840C(u32 arg0, s32 arg1) {
    struct CacheLine *sp1C;
    struct CacheLine *temp_a3;
    struct CacheLine *temp_v0_2;

    if (D_800D7BD0[arg1 & 3] != NULL) {
        return NULL;
    }
    if (arg0 < 0x40) {
        return NULL;
    }
    sp1C = (struct CacheLine *)func_800A8310(arg0);
    if (sp1C == NULL) {
        return NULL;
    }
    D_800D7BD0[arg1] = sp1C;
    temp_v0_2 = (struct CacheLine *)((u8 *)sp1C + arg0);
    temp_v0_2 -= 2;
    sp1C->unk0 = temp_v0_2;
    sp1C->unk4 = temp_v0_2;
    sp1C->unk8 = arg0 - 0x30;
    sp1C->unkC = 0;
    temp_v0_2->unk4 = sp1C;
    temp_a3 = sp1C->unk4;
    temp_a3->unk0 = temp_a3->unk4;
    sp1C->unk4->unk8 = 0x10;
    sp1C->unk4->unkC = 0xFF000000;
    memcpy((u8 *)sp1C->unk4 + 0x10, D_800C4640, 0x10);
    return sp1C;
}

#ifdef NON_MATCHING
// 4/10, one-slot temp rotation (t7/t8/t9 vs t6/t7/t8). Swept: 24 source forms
// (temps, decl order/count, K&R, 2 params, void ret, ptr local, mask spelling).
u32 func_800A84F0(s32 arg0) {
    u32 temp_v0;
    u32 size;

    temp_v0 = D_800D7C10;
    size = (arg0 + 0xF) & 0xFFFFF0;
    D_800D7C10 = temp_v0 + size;
    return temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A84F0.s")
#endif
void *func_800A8518(struct CacheLine *arg0) {
    arg0 = (struct CacheLine *)((u8 *)arg0 - 0x10);
    arg0->unkC &= 0xFFFFFF;
    arg0->unkC |= 0x99000000;
    return arg0;
}

void *func_800A8540(struct CacheLine *arg0) {
    arg0 = (struct CacheLine *)((u8 *)arg0 - 0x10);
    arg0->unkC &= 0xFFFFFF;
    return arg0;
}

void func_800A855C(void *arg0, s32 arg1) {
    ((s32 *)arg0)[-1] = arg1;
}

void *func_800A8564(struct CacheLine *arg0, s32 arg1) {
    arg0 = (struct CacheLine *)((u8 *)arg0 - 0x10);
    arg0->unkC += arg1;
    return arg0;
}

#ifdef NON_MATCHING
// Nearly matching (28/52 insns identical incl. all structure); remaining diff
// is a one-slot temp-register rotation in the free path (t8/t9/t0.. vs t7/t8/t9..).
// K&R definition needed: callers pass 1-4 args for regalloc.
u32 func_800A8578(arg0)
s32 arg0;
{
    struct CacheLine *temp_v1;
    struct CacheLine *var_v0;
    struct CacheLine *prev;
    struct CacheLine *var_v1;
    struct CacheLine **slot;
    u32 temp_a1;
    u32 temp_v0;

    temp_v1 = (struct CacheLine *)((arg0 - 0x10) & ~3);
    temp_a1 = temp_v1->unkC;
    var_v0 = temp_v1;
    if ((temp_a1 & 0xFF000000) == 0x99000000) {
        return 0x99000000;
    }
    if (temp_a1 >= 2) {
        temp_v0 = temp_a1 - 1;
        temp_v1->unkC = temp_v0;
        return temp_v0;
    }
    prev = temp_v1->unk0;
    temp_v1->unkC = 0;
    if (prev->unkC == 0) {
        var_v0 = prev;
    }
    var_v1 = var_v0->unk4;
    slot = &D_800D7BD0[arg0 & 3];
    if (var_v1->unkC == 0) {
        do {
            if (var_v1 == *slot) {
                *slot = var_v0;
                var_v1 = var_v0->unk4;
            }
            var_v0->unk8 = var_v0->unk8 + var_v1->unk8 + 0x10;
            var_v1->unk4->unk0 = var_v0;
            var_v1 = var_v0->unk4->unk4;
            var_v0->unk4 = var_v1;
        } while (var_v1->unkC == 0);
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A8578.s")
#endif
s32 func_800A8648(void) {
    s32 ret;
    s32 i;

    ret = 0;
    for (i = 0; i < 4; i++) {
        ret += func_800A86C8(i, &D_800D7BF0[i], &D_800D7C00[i]);
    }
    return ret;
}

s32 func_800A86C8(s32 arg0, s32 *arg1, s32 *arg2) {
    struct CacheLine *start;
    struct CacheLine *cur;
    s32 count;
    s32 total;
    s32 size;

    start = D_800D7BC0[arg0 & 3];
    count = 0;
    total = 0x30;
    cur = start;
    do {
        if (cur->unkC & 0xFF) {
            size = cur->unk8;
            count++;
            total = total + size + 0x10;
        }
        cur = cur->unk4;
    } while (cur != start);
    *arg1 = total;
    *arg2 = count;
    return total;
}

/* NON_MATCHING draft at 130/134. It was left UNGUARDED, which put the ROM
 * at b3dcd30e and drifted ovl1_3 by +8 -- the exact failure verify.py --all
 * reports as "1 diff" while check_tu_size stays silent.
 *
 * Guarded NON_MATCHING rather than MIPS_TO_C on purpose: it compiles, so the
 * PC port executes it, and this function is the port boot path's current
 * blocking stub. The ROM assembles the pragma below. */
#ifdef NON_MATCHING
s32 func_800A8724(s32 arg0) {
    /* D_800D6E68 is declared `u32 []` at file scope for the indexed read in
     * func_800A8DE4; the ROM writes a single word here, so this function
     * needs the scalar view. Block scope keeps it off every other user. */
    extern u32 D_800D6E68;
    struct CacheLine *func_800A840C(u32, s32);
    s32 count;
    s32 i;
    s32 j;
    u32 k;
    u32 before;
    u32 *sizes;

    count = 0;
    func_800A82C0();
    for (i = 0; i < 8; i++) {
        for (j = 0; j < D_800D00E4[i]; j++) {
            D_800D00C4[i][j] = NULL;
        }
        for (j = 0; j < D_800D0124[i]; j++) {
            D_800D0104[i][j] = NULL;
        }
    }
    sizes = (u32 *)&D_800C4654[arg0];
    for (k = 0; k < 4; k++) {
        before = D_800D7BB8;
        D_800D7BD0[k] = NULL;
        if (sizes[k] != 0) {
            if (sizes[k] == -1) {
                D_800D7BD0[k] = func_800A840C(D_800D7BB8, k);
            } else {
                D_800D7BD0[k] = func_800A840C(sizes[k], k);
            }
            if (D_800D7BD0[k] == NULL) {
                count++;
            }
        }
        D_800D7BE0[k] = before - D_800D7BB8;
        D_800D7BC0[k] = D_800D7BD0[k];
    }
    D_800D6E78 = 0;
    D_800D6E68 = 0;
    D_800D6E7C = 0;
    D_800D6E6C = 0;
    D_800D6E80 = 0;
    D_800D6E70 = 0;
    D_800D6E84 = 0;
    D_800D6E74 = 0;
    return count;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A8724.s")
#endif

s32 func_800A8934(u32 arg0, s32 arg1, s32 arg2, void *arg3) {
    u32 *entry;
    u32 *rom;

    entry = D_800D0184[arg0 >> 16]->imageBlockTable;
    rom = D_800D0184[arg0 >> 16]->imageROMOffset;
    arg0 &= 0xFFFF;
    entry += arg0;
    if (arg2 == 0) {
        arg2 = entry[1] - entry[0];
        arg2 += 3;
        arg2 &= 0xFFFFFC;
        arg2 -= arg1;
        if (arg2 < 0x10) {
            return -1;
        }
    } else {
        arg2 = (arg2 + 3) & 0xFFFFFC;
    }
    dma_read(entry[0] + (u32)rom + arg1, arg3, arg2);
    return arg2;
}

// Reusing `arg0` as the scratch for the masked index is load-bearing: a
// declared local (in any position) puts the index in $t9 and rotates every
// later temp one slot, where the ROM keeps it in the free argument register.
void *func_800A89E0(u32 arg0) {
    s32 size;
    void *buf;
    u32 *entry;
    u32 *rom;

    entry = D_800D0184[arg0 >> 16]->imageBlockTable;
    rom = D_800D0184[arg0 >> 16]->imageROMOffset;
    arg0 &= 0xFFFF;
    entry += arg0;
    size = ((entry[1] - entry[0]) + 3) & 0xFFFFFC;
    buf = (void *)func_800A84F0(size);
    dma_read(entry[0] + (u32)rom, buf, size & 0xFFFFFC);
    return buf;
}
struct BGHeader *func_800A8A7C(u32 arg0) {
    struct BGHeader ***temp_v1;
    s32 idx;

    temp_v1 = &D_800D0104[arg0 >> 16];
    idx = arg0 & 0xFFFF;
    if ((*temp_v1)[idx] != NULL) {
        func_800A8564((struct CacheLine *)(*temp_v1)[idx], 1);
    } else {
        (*temp_v1)[idx] = (struct BGHeader *)func_800A89E0(arg0);
    }
    return (*temp_v1)[idx];
}

// `arg0 &= 0xFFFF;` as the scratch is load-bearing -- see func_800A89E0.
void *func_800A8B0C(u32 arg0, s32 arg1) {
    s32 size;
    void *buf;
    u32 *entry;
    u32 *rom;

    entry = D_800D0184[arg0 >> 16]->imageBlockTable;
    rom = D_800D0184[arg0 >> 16]->imageROMOffset;
    arg0 &= 0xFFFF;
    entry += arg0;
    size = ((entry[1] - entry[0]) + 3) & 0xFFFFFC;
    buf = (void *)func_800A8358(size | arg1);
    dma_read(entry[0] + (u32)rom, buf, size & 0xFFFFFC);
    return buf;
}

struct BGHeader *func_800A8BAC(u32 arg0) {
    struct BGHeader ***temp_v1;
    s32 idx;

    temp_v1 = &D_800D0104[arg0 >> 16];
    idx = arg0 & 0xFFFF;
    if ((*temp_v1)[idx] != NULL) {
        func_800A8564((struct CacheLine *)(*temp_v1)[idx], 1);
    } else {
        (*temp_v1)[idx] = (struct BGHeader *)func_800A8B0C(arg0, 3);
    }
    return (*temp_v1)[idx];
}

struct BGHeader *func_800A8C40(u32 arg0) {
    struct BGHeader ***temp_a2;
    s32 idx;
    u32 *temp_v1;

    temp_a2 = &D_800D0104[arg0 >> 16];
    idx = arg0 & 0xFFFF;
    if ((*temp_a2)[idx] == NULL) {
        (*temp_a2)[idx] = (struct BGHeader *)func_800A8B0C(arg0, 3);
        temp_v1 = (u32 *)(*temp_a2)[idx];
        temp_v1[2] = temp_v1[2] + (u32)temp_v1;
        temp_v1[3] = temp_v1[3] + (u32)temp_v1;
    }
    return (*temp_a2)[idx];
}

#ifdef NON_MATCHING
// 2/33 (was 9): reusing `arg0` as the scratch for the masked, doubled index --
// the same lever that closed func_800A89E0/func_800A8B0C -- plus the two dead
// pads for the ROM's 0x30 frame and 0x1C/0x20/0x2C spills. All 120 declaration
// permutations swept at this shape; the floor is 2. Residue: the ROM loads the
// block table into $v0 and writes the element pointer to $v1, where IDO reuses
// $v1 for both (`lw $v1` / `addu $v1,$v1,$t9`). An explicit `base` local for
// the table makes it worse (3), as does any pad count other than two.
void *func_800A8CE0(u32 arg0, s32 arg1) {
    s32 size;
    s32 pad0;
    s32 pad1;
    void *buf;
    u32 *entry;

    entry = D_800D0184[arg0 >> 16]->geoBlockTable;
    arg0 &= 0xFFFF;
    arg0 *= 2;
    entry += arg0;
    size = (entry[1] - entry[0]) | arg1;
    buf = (void *)func_800A8358(size);
    dma_read(entry[0], buf, size & 0xFFFFFC);
    return buf;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A8CE0.s")
#endif
// Draft, 60/62: shape and frame are right; the residue is that the ROM keeps
// `slot` (&D_800D00C4[arg0>>16]) in $s0 across the func_800A8578 call and
// reuses $s0 for `p` afterwards, where IDO leaves it in $v1 and spills it.
// Swept: idx as a variable vs inline, block-scoped inner locals.
#ifdef NON_MATCHING
void func_800A8D64(u32 arg0, s32 arg1) {
    u32 ***slot;
    u32 *obj;

    slot = &D_800D00C4[arg0 >> 16];
    obj = (*slot)[arg0 & 0xFFFF];
    if (obj != NULL) {
        if (func_800A8578((s32)obj | arg1) == 0) {
            u32 *p;
            u32 id;
            u32 id2;
            struct BGHeader *entry;

            (*slot)[arg0 & 0xFFFF] = NULL;
            p = (u32 *)obj[3];
            while ((id = *p) != 0) {
                entry = D_800D0104[id >> 16][id & 0xFFFF];
                if (entry != NULL) {
                    if (func_800A8578((s32)entry | 3) == 0) {
                        id2 = *p;
                        D_800D0104[id2 >> 16][id2 & 0xFFFF] = NULL;
                    }
                }
                p++;
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A8D64.s")
#endif

void func_800A8E54(u32 arg0, s32 arg1) {
    struct BGHeader ***temp_v1;
    s32 idx;
    struct BGHeader *tmp;
    s32 ret;

    temp_v1 = &D_800D0104[arg0 >> 16];
    idx = arg0 & 0xFFFF;
    tmp = (*temp_v1)[idx];
    if (tmp != NULL) {
        ret = func_800A8578((s32)tmp | arg1);
        if (ret == 0) {
            (*temp_v1)[idx] = NULL;
        }
    }
}

// Draft, 95/113: behaviourally complete and the instruction count matches.
// Residue is a frame 0x10 short of the ROM's 0x30 plus a systematic v0/v1
// swap in both leading loops (the ROM puts the walking pointer in $v0 and the
// counter in $v1). m2c-shaped do/while loops with an explicit pointer local
// are worse (111).
#ifdef NON_MATCHING
void func_800A8EC0(u32 arg0) {
    void func_800A8D64(u32, s32);
    u32 *func_800A9250(u32, s32);
    void func_800A99E4(s32);
    void func_800A9A2C(s32);
    void func_800A9D64(s32);
    void *func_800A9648(u32 *);
    u32 **slot;
    u32 *ptr;
    u32 *r;
    s32 found;
    s32 i;
    s32 j;
    s32 k;

    found = -1;
    for (i = 0; i < 3; i++) {
        if (arg0 == (&D_800D6E68)[i]) {
            found = i;
        }
    }
    if (found != -1) {
        j = 2;
        for (k = 2; k >= 0; k--) {
            if (found != k) {
                (&D_800D6E68)[j] = (&D_800D6E68)[k];
                j--;
            }
        }
    } else {
        if ((&D_800D6E68)[2] != 0) {
            func_800A8D64((&D_800D6E68)[2], 3);
        }
        r = &(&D_800D6E68)[1];
        do {
            r[1] = *r;
            r--;
        } while (r >= &D_800D6E68);
    }
    D_800D6E68 = arg0;
    slot = &D_800D00C4[arg0 >> 16][arg0 & 0xFFFF];
    D_800E02D0[omCurrentObj->objId] = arg0;
    if (*slot != NULL) {
        gSegment4StartArray[omCurrentObj->objId] = *slot;
    } else {
        ptr = func_800A9250(arg0, 3);
        *slot = ptr;
        gSegment4StartArray[omCurrentObj->objId] = ptr;
    }
    func_800A9D64(omCurrentObj->objId);
    func_800A99E4(omCurrentObj->objId);
    func_800A9A2C(omCurrentObj->objId);
    func_800A9648(gSegment4StartArray[omCurrentObj->objId]);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A8EC0.s")
#endif

#ifdef MIPS_TO_C

void func_800A9088(u32 arg0) {
    u32 **sp20;
    u32 *sp1C;
    GObj *temp_v1;
    s32 *var_v0_3;
    s32 temp_t2;
    s32 var_a1;
    s32 var_v0_2;
    s32 var_v1;
    s32 var_v1_2;
    u32 **temp_a2;
    u32 *temp_a0;
    u32 *temp_t1;
    u32 *temp_v0;
    u32 *var_v0;

    var_a1 = -1;
    var_v0 = &D_800D6E78;
    var_v1 = 0;
    do {
        if (arg0 == *var_v0) {
            var_a1 = var_v1;
        }
        var_v1 += 1;
        var_v0 += 4;
    } while (var_v1 < 3);
    if (var_a1 != -1) {
        var_v0_2 = 2;
        var_v1_2 = 2;
        do {
            if (var_a1 != var_v1_2) {
                temp_t1 = &(&D_800D6E78)[var_v0_2];
                var_v0_2 -= 1;
                *temp_t1 = (&D_800D6E78)[var_v1_2];
            }
            var_v1_2 -= 1;
        } while (var_v1_2 >= 0);
    } else {
        if (D_800D6E78.unk8 != 0) {
            func_800A8D64(D_800D6E78.unk8, 3, &D_800D6E78, arg0);
        }
        var_v0_3 = &D_800D6E7C;
        do {
            temp_t2 = *var_v0_3;
            var_v0_3 -= 4;
            var_v0_3->unk8 = temp_t2;
        } while (var_v0_3 >= &D_800D6E78);
    }
    D_800D6E78.unk0 = arg0;
    temp_v1 = omCurrentObj;
    D_800E02D0[temp_v1->objId] = arg0;
    temp_a2 = *(&D_800D00C4 + ((arg0 >> 0x10) * 4)) + ((arg0 & 0xFFFF) * 4);
    temp_a0 = *temp_a2;
    if (temp_a0 != NULL) {
        sp1C = temp_a0;
        gSegment4StartArray[temp_v1->objId] = temp_a0;
    } else {
        sp20 = temp_a2;
        temp_v0 = func_800A9250(arg0, 3, temp_a2, arg0);
        *temp_a2 = temp_v0;
        sp1C = temp_v0;
        gSegment4StartArray[omCurrentObj->objId] = temp_v0;
    }
    func_800A9D64(temp_v1->objId);
    func_800AF9B8(sp1C->unkA, 0x10);
    func_800A99E4(omCurrentObj->objId);
    func_800A9A2C(omCurrentObj->objId);
    func_800A9648(sp1C);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A9088.s")
#endif

#ifdef MIPS_TO_C

void *func_800A9250(u32 arg0, s32 arg1) {
    s32 *temp_a0;
    s32 *temp_s2_2;
    s32 *var_s0_3;
    s32 *var_s0_4;
    s32 *var_s2;
    s32 *var_s5;
    s32 *var_s5_2;
    s32 *var_v0_4;
    s32 temp_a2;
    s32 temp_s0_2;
    s32 temp_s0_3;
    s32 temp_s1;
    s32 temp_s5;
    s32 temp_s5_2;
    s32 temp_t1;
    s32 temp_t4;
    s32 temp_t9_2;
    s32 temp_v0_2;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v1;
    u32 temp_v0_3;
    void *temp_s0;
    void *temp_s2;
    void *temp_t9;
    void *temp_v0;
    void *temp_v1;

    temp_a2 = (arg0 & 0xFFFF) * 2;
    temp_s0 = **(&D_800D0184 + ((arg0 >> 0x10) * 4)) + (temp_a2 * 4);
    temp_s1 = (temp_s0->unk4 - temp_s0->unk0) | arg1;
    temp_v0 = func_800A8358(temp_s1, temp_a2);
    dma_read(temp_s0->unk0, temp_v0, temp_s1 & 0xFFFFFC);
    temp_s5 = temp_v0->unkC & 0xFFFFFF;
    var_s5 = temp_s5 + temp_v0;
    if (temp_s5 != 0) {
        temp_v0->unkC = var_s5;
        var_s0 = *var_s5;
        if (var_s0 != 0) {
            do {
                temp_s2 = (var_s0 & 0xFFFFFF) + temp_v0;
                temp_s2_2 = temp_s2 + 4;
                var_s5->unk0 = temp_s2->unk4;
                *temp_s2_2 = func_800A8BAC(*temp_s2_2);
                var_s0 = var_s5->unk4;
                var_s5 += 4;
            } while (var_s0 != 0);
        }
    }
    temp_s5_2 = temp_v0->unk4 & 0xFFFFFF;
    var_s5_2 = temp_s5_2 + temp_v0;
    if (temp_s5_2 != 0) {
        temp_v0->unk4 = var_s5_2;
        var_s0_2 = *var_s5_2;
        var_a0 = var_s0_2;
        if (var_s0_2 != 0x99999999) {
            do {
                if (var_s0_2 != 0) {
                    var_s2 = (var_a0 & 0xFFFFFF) + temp_v0;
                    var_s5_2->unk0 = var_s2;
                    var_v1 = *var_s2;
                    var_v0 = var_v1;
                    if (var_v1 != 0x99999999) {
                        do {
                            if (var_v1 != 0) {
                                temp_t9 = (var_v0 & 0xFFFFFF) + temp_v0;
                                var_s2->unk0 = temp_t9;
                                temp_s0_2 = temp_t9->unk4 & 0xFFFFFF;
                                var_s0_3 = temp_s0_2 + temp_v0;
                                if (temp_s0_2 != 0) {
                                    temp_t9->unk4 = var_s0_3;
                                    var_v0_2 = *var_s0_3;
                                    var_a0_2 = var_v0_2;
                                    if (var_v0_2 != 0x99999999) {
                                        do {
                                            if (var_v0_2 != 0) {
                                                var_s0_3->unk0 = func_800A8BAC(var_a0_2);
                                            }
                                            var_v0_2 = var_s0_3->unk4;
                                            var_s0_3 += 4;
                                            var_a0_2 = var_v0_2;
                                        } while (var_v0_2 != 0x99999999);
                                    }
                                }
                                temp_v1 = var_s2->unk0;
                                temp_s0_3 = temp_v1->unk2C & 0xFFFFFF;
                                var_s0_4 = temp_s0_3 + temp_v0;
                                if (temp_s0_3 != 0) {
                                    temp_v1->unk2C = var_s0_4;
                                    var_v0_3 = *var_s0_4;
                                    var_a0_3 = var_v0_3;
                                    if (var_v0_3 != 0x99999999) {
                                        do {
                                            if (var_v0_3 != 0) {
                                                var_s0_4->unk0 = func_800A8BAC(var_a0_3);
                                            }
                                            var_v0_3 = var_s0_4->unk4;
                                            var_s0_4 += 4;
                                            var_a0_3 = var_v0_3;
                                        } while (var_v0_3 != 0x99999999);
                                    }
                                }
                            }
                            var_v1 = var_s2->unk4;
                            var_s2 += 4;
                            var_v0 = var_v1;
                        } while (var_v1 != 0x99999999);
                    }
                }
                var_s0_2 = var_s5_2->unk4;
                var_s5_2 += 4;
                var_a0 = var_s0_2;
            } while (var_s0_2 != 0x99999999);
        }
    }
    temp_a0 = temp_v0 + (temp_v0->unk0 & 0xFFFFFF);
    temp_v0->unk0 = temp_a0;
    if (temp_v0->unk14 != 0) {
        temp_v0_2 = temp_v0->unk18;
        if (temp_v0_2 != 0) {
            temp_v0->unk18 = temp_v0 + (temp_v0_2 & 0xFFFFFF);
        }
    }
    temp_v0_3 = temp_v0->unk8;
    switch (temp_v0_3) {                            /* irregular */
        case 0x18:
        case 0x1A:
        case 0x1B:
        case 0x1C:
        case 0x1D:
        case 0x1E:
            var_v0_4 = temp_a0;
            if (*temp_a0 != 0x12) {
                do {
                    temp_t9_2 = var_v0_4->unk4;
                    temp_t1 = temp_t9_2 & 0xFFFFFF;
                    if (temp_t9_2 != 0) {
                        var_v0_4->unk4 = temp_t1;
                        var_v0_4->unk4 = temp_t1 + temp_v0;
                    }
                    temp_t4 = var_v0_4->unk2C;
                    var_v0_4 += 0x2C;
                } while (temp_t4 != 0x12);
            }
            break;
    }
    return temp_v0;
}
#elif defined(PORT)
/* PORT: the geo/model bank entry loader + relocator, rewritten for the host
 * from asm/nonmatchings/ovl1/ovl1_3/func_800A9250.s in the style of
 * func_8009B768's PORT arm (ovl1.c).
 *
 * D_800D0184[bank] and its geoBlockTable are native host data on the PC
 * build (regenerated as C initializers), so the table reads at the top are
 * plain loads, exactly like the compiled func_800A8B0C. The blob dma_read()
 * pulls in, however, is raw BIG-ENDIAN ROM data: every word this function
 * inspects is decoded with pc_be32(), and every word it REWRITES becomes a
 * native host value in place -- a real pointer (all game-visible allocations
 * sit below 4 GiB, see pc_mmio.c, so a u32 slot holds one) or, for the image
 * reference list slots, the decoded bank-id word. Words this function does
 * not touch stay big-endian for their consumers to decode at their own read
 * sites.
 *
 * Native after this returns:
 *   header +0x00 (layout, always), +0x04 (texScroll, when nonzero),
 *   +0x0C (imgRefs, when nonzero), +0x18 (animation refs, when +0x14 and the
 *   word are both nonzero); every list slot and node word the walks below
 *   rewrite (detailed at each walk).
 * Still big-endian: everything else, including header +0x08 (layoutMode),
 *   +0x14 (numAnimations), +0x1C (lenLayout), the 0x2C-stride layout node
 *   type words, and all display list / vertex / texel payload.
 *
 * Return type is u32 * rather than void *: the block-scope declarations the
 * callers in this file compile (func_800A8EC0/func_800A9760/func_800A9864/
 * func_800AA608) all say u32 *, and a void * definition is a conflicting
 * type to GCC. */

static inline u32 pc_be32(u32 v) { return __builtin_bswap32(v); }

/* Decoded read of the big-endian blob word at p. */
static inline u32 geo_rd(const void *p) { return pc_be32(*(const u32 *)p); }
/* In-place rewrite of a blob word with a native value/pointer. */
static inline void geo_wr(void *p, u32 v) { *(u32 *)p = v; }

u32 *func_800A9250(u32 arg0, s32 arg1) {
    u32 *entry;
    u8 *blob;
    u8 *list;
    u8 *mid;
    u8 *node;
    u8 *sub;
    u8 *n;
    s32 size;
    u32 w;
    u32 mw;
    u32 sw;
    u32 off;
    u32 bank;

    entry = D_800D0184[arg0 >> 16]->geoBlockTable;
    entry += (arg0 & 0xFFFF) * 2;
    size = (entry[1] - entry[0]) | arg1;
    blob = func_800A8358(size);
    dma_read(entry[0], blob, size & 0xFFFFFC);

    /* +0xC: G_SETTIMG reference list -- stride 4, 0-terminated. Each slot
     * holds a 24-bit offset to a node; the node's word +4 holds an image
     * bank id. The slot is rewritten with that (decoded) bank id -- which is
     * what func_800A8D64's compiled walk reads natively -- and the node's
     * word +4 with the BGHeader pointer func_800A8BAC resolves it to. */
    off = geo_rd(blob + 0xC) & 0xFFFFFF;
    if (off != 0) {
        list = blob + off;
        geo_wr(blob + 0xC, (u32)(uintptr_t)list);
        while ((w = geo_rd(list)) != 0) {
            node = blob + (w & 0xFFFFFF);
            bank = geo_rd(node + 4);
            geo_wr(list, bank);
            geo_wr(node + 4, (u32)(uintptr_t)func_800A8BAC(bank));
            list += 4;
        }
    }

    /* +0x4: texture scroll section -- lists nested two deep, each stride 4,
     * terminated by 0x99999999, with 0 slots skipped (but still stepped
     * over). Outer and middle slots become native pointers into the blob;
     * each level-3 node hangs two bank-id lists off its words +0x4 and
     * +0x2C (those words become native pointers to the lists, and each
     * nonzero list slot becomes a native BGHeader pointer from
     * func_800A8BAC, called with the full decoded bank-id word). */
    off = geo_rd(blob + 4) & 0xFFFFFF;
    if (off != 0) {
        list = blob + off;
        geo_wr(blob + 4, (u32)(uintptr_t)list);
        while ((w = geo_rd(list)) != 0x99999999U) {
            if (w != 0) {
                mid = blob + (w & 0xFFFFFF);
                geo_wr(list, (u32)(uintptr_t)mid);
                while ((mw = geo_rd(mid)) != 0x99999999U) {
                    if (mw != 0) {
                        node = blob + (mw & 0xFFFFFF);
                        geo_wr(mid, (u32)(uintptr_t)node);
                        off = geo_rd(node + 4) & 0xFFFFFF;
                        if (off != 0) {
                            sub = blob + off;
                            geo_wr(node + 4, (u32)(uintptr_t)sub);
                            while ((sw = geo_rd(sub)) != 0x99999999U) {
                                if (sw != 0) {
                                    geo_wr(sub, (u32)(uintptr_t)func_800A8BAC(sw));
                                }
                                sub += 4;
                            }
                        }
                        off = geo_rd(node + 0x2C) & 0xFFFFFF;
                        if (off != 0) {
                            sub = blob + off;
                            geo_wr(node + 0x2C, (u32)(uintptr_t)sub);
                            while ((sw = geo_rd(sub)) != 0x99999999U) {
                                if (sw != 0) {
                                    geo_wr(sub, (u32)(uintptr_t)func_800A8BAC(sw));
                                }
                                sub += 4;
                            }
                        }
                    }
                    mid += 4;
                }
            }
            list += 4;
        }
    }

    /* +0x0: layout section pointer. The asm relocates it unconditionally,
     * so a 0 offset yields the blob base itself. */
    w = geo_rd(blob + 0x0);
    n = blob + (w & 0xFFFFFF);
    geo_wr(blob + 0x0, (u32)(uintptr_t)n);

    /* +0x18: animation refs pointer -- only when the count at +0x14 and the
     * word itself are both nonzero. */
    if (geo_rd(blob + 0x14) != 0) {
        w = geo_rd(blob + 0x18);
        if (w != 0) {
            geo_wr(blob + 0x18, (u32)(uintptr_t)(blob + (w & 0xFFFFFF)));
        }
    }

    /* +0x8: layout mode. For modes 0x18 and 0x1A..0x1E the layout section
     * is an array of 0x2C-byte nodes ending at a node whose type word (+0)
     * is 0x12: word +4 of every node before the terminator becomes a native
     * pointer into the blob (0 stays 0, and the terminator node itself is
     * not touched). All other modes leave the layout section alone. */
    switch (geo_rd(blob + 8)) {
    case 0x18:
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1D:
    case 0x1E:
        if (geo_rd(n) != 0x12) {
            for (;;) {
                w = geo_rd(n + 4);
                if (w != 0) {
                    geo_wr(n + 4, (u32)(uintptr_t)(blob + (w & 0xFFFFFF)));
                }
                w = geo_rd(n + 0x2C);
                n += 0x2C;
                if (w == 0x12) {
                    break;
                }
            }
        }
        break;
    }
    return (u32 *)blob;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A9250.s")
#endif

#ifdef MIPS_TO_C

void *func_800A94F4(s32 arg0) {
    s32 sp2C;
    void *sp24;
    void *sp1C;
    s32 sp18;
    s32 *var_v0;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_t0;
    s32 temp_t6;
    s32 temp_v1_2;
    s32 var_a0;
    void **temp_t1;
    void **temp_t3;
    void **temp_t5;
    void **temp_t7;
    void **temp_t9;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v1;

    temp_v0 = *(&D_800D0184 + ((arg0 >> 0x10) * 4));
    temp_a1 = arg0 & 0xFFFF;
    temp_v1 = temp_v0->unk10 + (temp_a1 * 4);
    sp18 = temp_v0->unk14;
    sp1C = temp_v1;
    temp_a0 = (temp_v1->unk4 - temp_v1->unk0) | 2;
    sp2C = temp_a0;
    temp_v0_2 = func_800A8358(temp_a0, temp_a1);
    sp24 = temp_v0_2;
    dma_read(temp_v1->unk0 + sp18, temp_v0_2, sp2C & 0xFFFFFC);
    var_a0 = sp24->unk8;
    var_v0 = sp24 + 0xC;
    sp24->unk0 = sp24->unk0 + sp24;
    if (var_a0 != 0) {
        temp_v1_2 = -(var_a0 & 3);
        temp_a1_2 = temp_v1_2 + var_a0;
        if (temp_v1_2 != 0) {
            do {
                temp_t6 = *var_v0;
                var_a0 -= 1;
                var_v0 += 4;
                temp_t7 = temp_t6 + sp24;
                var_v0->unk-4 = temp_t7;
                *temp_t7 += sp24;
            } while (temp_a1_2 != var_a0);
            if (var_a0 != 0) {
                goto loop_4;
            }
        } else {
            do {
loop_4:
                temp_t0 = *var_v0;
                var_a0 -= 4;
                var_v0 += 0x10;
                temp_t1 = temp_t0 + sp24;
                var_v0->unk-10 = temp_t1;
                *temp_t1 += sp24;
                temp_t5 = var_v0->unk-C + sp24;
                var_v0->unk-C = temp_t5;
                *temp_t5 += sp24;
                temp_t9 = var_v0->unk-8 + sp24;
                var_v0->unk-8 = temp_t9;
                *temp_t9 += sp24;
                temp_t3 = var_v0->unk-4 + sp24;
                var_v0->unk-4 = temp_t3;
                *temp_t3 += sp24;
            } while (var_a0 != 0);
        }
    }
    return sp24;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A94F4.s")
#endif

#ifdef MIPS_TO_C

void *func_800A9648(void *arg0) {
    s32 temp_a0;
    s32 temp_a1_2;
    s32 temp_a3;
    s32 temp_a3_2;
    u32 temp_a1;

    temp_a1 = arg0->unk8;
    switch (temp_a1) {                              /* irregular */
        case 0x11:
        case 0x12:
        case 0x13:
        case 0x14:
        case 0x15:
        case 0x16:
            temp_a0 = arg0->unk0;
            *(&D_800DFA10 + (omCurrentObj->objId * 4)) = temp_a0;
            temp_a3 = arg0->unk4;
            *(&D_800DFD90 + (omCurrentObj->objId * 4)) = temp_a3;
            func_800AF618(temp_a0, temp_a3, D_800DFBD0[omCurrentObj->objId], temp_a3);
            break;
        case 0x17:
        case 0x18:
        case 0x19:
        case 0x1A:
        case 0x1B:
        case 0x1C:
        case 0x1D:
        case 0x1E:
            temp_a3_2 = arg0->unk0;
            *(&D_800DFA10 + (omCurrentObj->objId * 4)) = temp_a3_2;
            temp_a1_2 = arg0->unk4;
            *(&D_800DFD90 + (omCurrentObj->objId * 4)) = temp_a1_2;
            func_800AF4BC(temp_a3_2, temp_a1_2, D_800DFBD0[omCurrentObj->objId], temp_a3_2);
            break;
    }
    return arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A9648.s")
#endif

void func_800A9760(u32 arg0) {
    u32 *func_800A9250(u32, s32);
    void func_800A99E4(s32);
    void func_800A9A2C(s32);
    void func_800A9D64(s32);
    void *func_800A9648(u32 *);
    u32 **slot;
    u32 *ptr;

    slot = &D_800D00C4[arg0 >> 16][arg0 & 0xFFFF];
    D_800E02D0[omCurrentObj->objId] = arg0;
    if (*slot != NULL) {
        gSegment4StartArray[omCurrentObj->objId] = *slot;
        func_800A8564((struct CacheLine *)*slot, 1);
    } else {
        ptr = func_800A9250(arg0, 3);
        *slot = ptr;
        gSegment4StartArray[omCurrentObj->objId] = ptr;
    }
    func_800A9D64(omCurrentObj->objId);
    func_800A99E4(omCurrentObj->objId);
    func_800A9A2C(omCurrentObj->objId);
    func_800A9648(gSegment4StartArray[omCurrentObj->objId]);
}

#ifdef MIPS_TO_C

void func_800A9864(u32 arg0, s32 arg1, s32 arg2) {
    u32 *sp1C;
    u32 **sp18;
    f32 var_f16;
    f32 var_f6;
    u32 **temp_a3;
    u32 *temp_t0;
    u32 *temp_v0;

    D_800E02D0[omCurrentObj->objId] = arg0;
    temp_a3 = *(&D_800D00C4 + ((arg0 >> 0x10) * 4)) + ((arg0 & 0xFFFF) * 4);
    temp_t0 = *temp_a3;
    if (temp_t0 != NULL) {
        sp1C = temp_t0;
        gSegment4StartArray[omCurrentObj->objId] = temp_t0;
        func_800A8564(*temp_a3, 1, temp_a3);
    } else {
        sp18 = temp_a3;
        temp_v0 = func_800A9250(3, temp_a3);
        *temp_a3 = temp_v0;
        sp1C = temp_v0;
        gSegment4StartArray[omCurrentObj->objId] = temp_v0;
    }
    func_800A9D64(omCurrentObj->objId);
    var_f6 = arg1;
    if (arg1 < 0) {
        var_f6 += 4294967296.0f;
    }
    if (var_f6 == 99999.0f) {
        arg1 = sp1C->unk8;
    }
    var_f16 = arg2;
    if (arg2 < 0) {
        var_f16 += 4294967296.0f;
    }
    if (var_f16 == 99999.0f) {
        arg2 = 0x10;
    }
    func_800AF9B8(arg1, arg2);
    func_800A99E4(omCurrentObj->objId);
    func_800A9A2C(omCurrentObj->objId);
    func_800A9648(sp1C);
}
#elif defined(PORT)
/* PORT: behavioral port from the asm listing, modeled on the matched sibling
 * func_800A9760 above -- identical bank-slot bind plus two sentinel-defaulted
 * animation args handed to func_800AF9B8. 99999 (D_800D5DD8) means "use the
 * default": arg1 falls back to the entry's word at +8, arg2 to 0x10. The bank
 * entry is raw ROM data, so that +8 word is read big-endian on the host. */
void func_800A9864(u32 arg0, s32 arg1, s32 arg2) {
    u32 *func_800A9250(u32, s32);
    void func_800A99E4(s32);
    void func_800A9A2C(s32);
    void func_800A9D64(s32);
    void *func_800A9648(u32 *);
    void func_800AF9B8(u16, u8);
    u32 **slot;
    u32 *ptr;
    const u8 *raw;

    slot = &D_800D00C4[arg0 >> 16][arg0 & 0xFFFF];
    D_800E02D0[omCurrentObj->objId] = arg0;
    if (*slot != NULL) {
        ptr = *slot;
        gSegment4StartArray[omCurrentObj->objId] = ptr;
        func_800A8564((struct CacheLine *)ptr, 1);
    } else {
        ptr = func_800A9250(arg0, 3);
        *slot = ptr;
        gSegment4StartArray[omCurrentObj->objId] = ptr;
    }
    func_800A9D64(omCurrentObj->objId);
    if ((u32)arg1 == 99999) {
        raw = (const u8 *)ptr + 8;
        arg1 = ((u32)raw[0] << 24) | ((u32)raw[1] << 16) | ((u32)raw[2] << 8) | raw[3];
    }
    if ((u32)arg2 == 99999) {
        arg2 = 0x10;
    }
    func_800AF9B8((u16)arg1, (u8)arg2);
    func_800A99E4(omCurrentObj->objId);
    func_800A9A2C(omCurrentObj->objId);
    func_800A9648(ptr);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A9864.s")
#endif

void func_800A99E4(s32 track) {
    if ((u32)D_800DFBD0[track] != -1) {
        func_800A8578((u32)D_800DFBD0[track] | 1);
    }
    D_800DFBD0[track] = (struct DObj**)-1;
}

void func_800A9A2C(s32 arg0) {
    u32 *temp_v0;
    s32 temp_v1;

    temp_v0 = gSegment4StartArray[arg0];
    temp_v1 = temp_v0[7];
    if (temp_v1 == 0) {
        D_800DFBD0[omCurrentObj->objId] = (struct DObj **)-1;
        return;
    }
    D_800DFBD0[omCurrentObj->objId] = (struct DObj **)func_800A8358((temp_v1 * 4) | 1);
}

// `arg0 &= 0xFFFF;` as the scratch is load-bearing -- see func_800A89E0.
void *func_800A9AA8(u32 arg0, s32 arg1) {
    s32 size;
    void *buf;
    u32 *entry;
    u32 *rom;
    struct BankHeader *bank;

    bank = D_800D0184[arg0 >> 16];
    entry = bank->miscBlockTable;
    rom = bank->miscROMOffset;
    arg0 &= 0xFFFF;
    entry += arg0;
    size = ((entry[1] - entry[0]) + 3) & 0xFFFFFC;
    buf = (void *)func_800A8358(size | arg1);
    dma_read(entry[0] + (u32)rom, buf, size & 0xFFFFFC);
    return buf;
}

#ifdef NON_MATCHING
s32 func_800A9B48(s32 arg0) {
    u32 *temp_v0;
    GObj *temp_v1;
    s32 temp_a2;
    u32 *var_a0;
    u32 temp_v0_2;

    temp_v0 = func_800A94F4(arg0);
    temp_a2 = temp_v0[1];
    if (temp_a2 != 0) {
        temp_v1 = omCurrentObj;
        var_a0 = &D_800DF850[temp_v1->objId];
        temp_v0_2 = *var_a0;
        if (temp_v0_2 != -1) {
            func_800A8578(temp_v0_2 | 2, temp_v0, temp_a2);
            temp_v1 = omCurrentObj;
            var_a0 = &D_800DF850[temp_v1->objId];
        }
        *var_a0 = (u32)temp_v0;
        D_800E0110[temp_v1->objId] = arg0;
    } else {
        temp_v1 = omCurrentObj;
        var_a0 = (u32 *)&D_800DF690[temp_v1->objId];
        temp_v0_2 = *var_a0;
        if (temp_v0_2 != -1) {
            func_800A8578(temp_v0_2 | 2, temp_v0, temp_a2);
            temp_v1 = omCurrentObj;
            var_a0 = (u32 *)&D_800DF690[temp_v1->objId];
        }
        *var_a0 = (u32)temp_v0;
        D_800DFF50[temp_v1->objId] = arg0;
    }
    return temp_a2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A9B48.s")
#endif
// Draft, 30/59: structure, frame (the two pads are load-bearing) and every
// spill slot layout are right. Residue is the one-slot register rotation --
// the ROM reuses $v0 for the loaded table entry and keeps the block pointer
// in $a2/flag in $a3, where IDO reserves $v0 and shifts to $a3/$t0.
#ifdef NON_MATCHING
s32 func_800A9C78(s32 arg0, s32 arg1) {
    s32 pad0;
    struct AnimBlock *temp_v0;
    s32 pad1;
    s32 temp_a3;

    temp_v0 = (struct AnimBlock *)func_800A94F4(arg0);
    temp_a3 = temp_v0->unk4;
    if (temp_a3 != 0) {
        if (D_800DF850[arg1] != -1) {
            func_800A8578(D_800DF850[arg1] | 2, D_800DF850[arg1]);
        }
        D_800DF850[arg1] = (u32)temp_v0;
        D_800E0110[arg1] = arg0;
    } else {
        if (D_800DF690[arg1].as_u32 != -1) {
            func_800A8578(D_800DF690[arg1].as_u32 | 2, D_800DF690[arg1].as_u32);
        }
        D_800DF690[arg1].as_u32 = (u32)temp_v0;
        D_800DFF50[arg1] = arg0;
    }
    return temp_a3;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A9C78.s")
#endif

void func_800A9D64(s32 track) {
    if (D_800DF690[track].as_u32 != -1) {
        func_800A8578(D_800DF690[track].as_u32 | 2, D_800DF690[track].as_u32);
        D_800DF690[track].as_u32 = -1;
    }
    if (D_800DF850[track] != -1) {
        func_800A8578(D_800DF850[track] | 2, D_800DF850[track]);
        D_800DF850[track] = -1;
    }
}

void func_800A9DE4(s32 arg0, f32 arg1) {
    if ((arg0 != D_800DFF50[omCurrentObj->objId]) && (arg0 != D_800E0110[omCurrentObj->objId])) {
        if (func_800A9B48(arg0) != 0) {
            func_800AEEB4(*(struct GObj **)D_800DF850[omCurrentObj->objId], arg1);
            return;
        }
        func_800AEE20((struct GObj *)*D_800DF690[omCurrentObj->objId].as_u32p, arg1);
    }
}

void func_800A9EA4(s32 arg0) {
    func_800A9DE4(arg0, 0.0f);
}

void func_800A9EC4(s32 arg0, f32 arg1, u16 arg2) {
    if ((arg0 != D_800DFF50[omCurrentObj->objId]) && (arg0 != D_800E0110[omCurrentObj->objId])) {
        if (func_800A9B48(arg0) != 0) {
            func_800AEEB4(*(struct GObj **)D_800DF850[omCurrentObj->objId], arg1);
            func_800AF09C(arg2);
            return;
        }
        func_800AEE20((struct GObj *)*D_800DF690[omCurrentObj->objId].as_u32p, arg1);
        func_800AEFFC(arg2);
    }
}

void func_800A9F98(s32 arg0, f32 arg1) {
    if (func_800A9B48(arg0) != 0) {
        func_800AEEB4(*(struct GObj **)D_800DF850[omCurrentObj->objId], arg1);
        return;
    }
    func_800AEE20((struct GObj *)*D_800DF690[omCurrentObj->objId].as_u32p, arg1);
}

void func_800AA018(s32 arg0) {
    func_800A9F98(arg0, 0.0f);
}

void func_800AA038(s32 arg0, f32 arg1, s32 arg2) {
    if (func_800A9C78(arg0, arg2) != 0) {
        func_800AEFA4(*(struct GObj **)D_800DF850[arg2], arg1, D_800DE350[arg2]);
        return;
    }
    func_800AEF0C((struct GObj *)*D_800DF690[arg2].as_u32p, arg1, D_800DE350[arg2]);
}

void func_800AA0C4(s32 arg0, f32 arg1) {
    if (func_800A9B48(arg0) != 0) {
        func_800AEEB4(*(struct GObj **)D_800DF850[omCurrentObj->objId], arg1);
        func_800AF09C(1);
    } else {
        func_800AEE20((struct GObj *)*D_800DF690[omCurrentObj->objId].as_u32p, arg1);
        func_800AF27C();
    }
}

void func_800AA154(s32 arg0) {
    func_800AA0C4(arg0, 0.0f);
}

void func_800AA174(void) {
    omCurrentObj->data.dobj->pos.v.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    omCurrentObj->data.dobj->pos.v.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    omCurrentObj->data.dobj->pos.v.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    omCurrentObj->data.dobj->angle.v.x = gEntitiesAngleXArray[omCurrentObj->objId];
    omCurrentObj->data.dobj->angle.v.y = gEntitiesAngleYArray[omCurrentObj->objId];
    omCurrentObj->data.dobj->angle.v.z = gEntitiesAngleZArray[omCurrentObj->objId];
    omCurrentObj->data.dobj->scale.v.x = gEntitiesScaleXArray[omCurrentObj->objId];
    omCurrentObj->data.dobj->scale.v.y = gEntitiesScaleYArray[omCurrentObj->objId];
    omCurrentObj->data.dobj->scale.v.z = gEntitiesScaleZArray[omCurrentObj->objId];
}

void func_800AA2A0(u32 arg0) {
    func_800A9760(arg0);
    func_800AA174();
}

void func_800AA2C8(u32 arg0, s32 arg1, s32 arg2) {
    func_800A9864(arg0, arg1, arg2);
    func_800AA174();
}

void func_800AA2F0(s32 arg0, f32 arg1) {
    if (func_800A9B48(arg0) != 0) {
        func_800B2288((AnimCmd ***)D_800DF850[omCurrentObj->objId], arg1);
        return;
    }
    func_800B21FC((AnimCmd ***)D_800DF690[omCurrentObj->objId].as_u32, arg1);
}

s32 func_800AA368(DObj *arg0) {
    u32 *temp_v1;

    if (arg0->timeRemaining == -3.4028235e38f) {
        temp_v1 = (u32 *)D_800DFA10[omCurrentObj->objId];
        gSegment4StartArray[omCurrentObj->objId] = temp_v1;
        D_800DFA10[omCurrentObj->objId] = temp_v1[0];
        D_800DFD90[omCurrentObj->objId] = (u32 *)temp_v1[1];
        return 1;
    }
    return 0;
}

void func_800AA3F0(DObj *arg0) {
    u32 *temp_v0;

    while (1) {
        if (arg0->timeRemaining == -3.4028235e38f) {
            break;
        }
        ohSleep(1);
    }
    temp_v0 = (u32 *)D_800DFA10[omCurrentObj->objId];
    gSegment4StartArray[omCurrentObj->objId] = temp_v0;
    D_800DFA10[omCurrentObj->objId] = temp_v0[0];
    D_800DFD90[omCurrentObj->objId] = (u32 *)temp_v0[1];
}

#ifdef MIPS_TO_C

void func_800AA49C(s32 arg0, s32 arg1, s32 arg2, u32 arg3, f32 arg4) {
    s32 *sp24;
    s32 *temp_v1;
    s32 temp_a2;
    s32 temp_v0;
    u32 temp_v1_2;

    D_800E02D0[omCurrentObj->objId] = arg3;
    *(&D_800DFD90 + (omCurrentObj->objId * 4)) = arg0;
    temp_v1 = *(&D_800D00C4 + ((arg3 >> 0x10) * 4)) + ((arg3 & 0xFFFF) * 4);
    temp_a2 = *temp_v1;
    if (temp_a2 != 0) {
        *(&D_800DFA10 + (omCurrentObj->objId * 4)) = temp_a2;
        func_800A8564(*temp_v1, 1, temp_a2);
    } else {
        sp24 = temp_v1;
        temp_v0 = func_800A9250(arg3, 3, temp_a2);
        *temp_v1 = temp_v0;
        *(&D_800DFA10 + (omCurrentObj->objId * 4)) = temp_v0;
    }
    func_800A9B48(arg1);
    temp_v1_2 = omCurrentObj->objId;
    func_800B1FD0(arg0, *D_800DF690[temp_v1_2], arg2, **(&D_800DFA10 + (temp_v1_2 * 4)), arg4);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800AA49C.s")
#endif

void func_800AA5C4(s32 arg0, u32 arg1, f32 arg2) {
    func_800AA49C(omCurrentObj->data.dobj->firstChild, arg0, 0.0f, arg1, arg2);
}

#ifdef NON_MATCHING
// https://decomp.me/scratch/fS0Iu
void func_800AA608(DObj *dobj, s32 arg1, f32 arg2, u32 model, f32 arg4) {
    /* K&R, not a prototype: func_800A9250 is called with three arguments at
     * line ~607 and FOUR at ~680, which no single prototype accepts. The
     * file-scope declaration lives inside func_800A8DE4, so it is invisible
     * here. */
    extern u32 *func_800A9250();
    u32 *func_800A9250(u32, s32);
    u32 *tmpPtr;
    u32 **modelPtr = &D_800D00C4[model >> 16][model & 0xFFFF];

    D_800E02D0[omCurrentObj->objId] = model;
    if (*modelPtr != NULL) {
        u32 *tmp = *modelPtr;
        gSegment4StartArray[omCurrentObj->objId] = tmp;
        func_800A8564(*modelPtr, 1);
        tmpPtr = *modelPtr;
    } else {
        u32 *result = func_800A9250(model, 3);
        *modelPtr = result;
        gSegment4StartArray[omCurrentObj->objId] = result;
        tmpPtr = result;
    }
    D_800DFA10[omCurrentObj->objId] = tmpPtr[0];
    D_800DFD90[omCurrentObj->objId] = tmpPtr[1];
    func_800A9B48(arg1);
    func_800B1FD0(
        dobj,
        *D_800DF690[omCurrentObj->objId].as_u32p,
        arg2,
        D_800DFA10[omCurrentObj->objId],
        arg4
    );

sleep_loop:
    if (dobj->timeRemaining != -FLOAT_MAX) {
        ohSleep(1);
        goto sleep_loop;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800AA608.s")
#endif

void func_800AA78C(s32 arg0, u32 arg1, f32 arg2) {
    func_800AA608(omCurrentObj->data.dobj->firstChild, arg0, 0.0f, arg1, arg2);
}

void func_800AA7D0(s32 arg0, f32 arg1, u32 arg2) {
    if (func_800A9B48(arg0) != 0) {
        func_800AEEB4(*(struct GObj **)D_800DF850[omCurrentObj->objId], arg1);
        func_800AF09C((u16)arg2);
        return;
    }
    func_800AEE20((struct GObj *)*D_800DF690[omCurrentObj->objId].as_u32p, arg1);
    func_800AEFFC((u16)arg2);
}

void func_800AA864(s32 arg0, u32 arg1) {
    func_800AA7D0(arg0, 0.0f, arg1);
}

// Is current obj's model loaded?
s32 func_800AA888(u32 model) {
    u32 **modelPtr = &D_800D00C4[model >> 16][model & 0xFFFF];

    if (gSegment4StartArray[omCurrentObj->objId] == *modelPtr) {
        return 1;
    } else {
        return 0;
    }
}

// Match History: https://decomp.me/scratch/wW3bP
s32 func_800AA8E4(s32 track, u32 model) {
    u32 **modelPtr = &D_800D00C4[model >> 16][model & 0xFFFF];

    if (gSegment4StartArray[track] == *modelPtr) {
        return 1;
    } else {
        return 0;
    }
}

s32 func_800AA934(s32 arg0) {
    if (arg0 == D_800DFF50[omCurrentObj->objId]) {
        return 1;
    }
    return 0;
}

#ifdef MIPS_TO_C

void func_800AA96C(s32 *arg0, u32 arg1, ? arg2, ? arg3, f32 arg4) {
    s32 *temp_s0;
    s32 *var_s1;
    s32 temp_s2;
    s32 temp_s3;
    s32 temp_v0;
    s32 temp_v1;
    s32 var_s0;
    u32 temp_v1_2;

    D_800E02D0[omCurrentObj->objId] = arg1;
    temp_s0 = *(&D_800D00C4 + ((arg1 >> 0x10) * 4)) + ((arg1 & 0xFFFF) * 4);
    temp_v1 = *temp_s0;
    if (temp_v1 != 0) {
        *(&D_800DFA10 + (omCurrentObj->objId * 4)) = temp_v1;
        func_800A8564(*temp_s0, 1, arg1);
    } else {
        temp_v0 = func_800A9250(arg1, 3, arg1);
        *temp_s0 = temp_v0;
        *(&D_800DFA10 + (omCurrentObj->objId * 4)) = temp_v0;
    }
    func_800A9B48(arg2);
    var_s0 = *arg0;
    temp_v1_2 = omCurrentObj->objId;
    var_s1 = arg0;
    temp_s2 = *D_800DF690[temp_v1_2];
    temp_s3 = **(&D_800DFA10 + (temp_v1_2 * 4));
    if (var_s0 != -1) {
        do {
            func_8000EC98(D_800DFBD0[omCurrentObj->objId][var_s0], (var_s0 * 4) + temp_s2, arg3, (var_s0 * 0x2C) + temp_s3, 0, arg4, 0.0f, 0.0f, 0.0f);
            var_s0 = var_s1->unk4;
            var_s1 += 4;
        } while (var_s0 != -1);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800AA96C.s")
#endif

void func_800AAB3C(s32 *arg0, u32 arg1, s32 arg2, f32 arg3, f32 arg4) {
    struct DObj *temp_s0;

    func_800AA96C(arg0, arg1, arg2, arg3, arg4);
    temp_s0 = D_800DFBD0[omCurrentObj->objId][*arg0];
    while (1) {
        if (temp_s0->timeRemaining == -3.4028235e38f) {
            break;
        }
        ohSleep(1);
    }
}

void func_800AABD4(s32 *arg0, f32 arg1, f32 arg2)
{
  s32 *var_a1;
  s32 var_v1;
  DObj *dobj;
  MObj *mobj;
  unsigned int new_var;
  if ((arg1 != 65535.0f) ^ 0)
  {
    var_v1 = (new_var = *arg0);
    var_a1 = arg0;
    if (var_v1 != (-1))
    {
      do
      {
        var_a1++;
        dobj = D_800DFBD0[omCurrentObj->objId][var_v1];
        dobj->animSpeed = arg1;
        var_v1 = *var_a1;
      }
      while (var_v1 != (-1));
    }
  }
  if (arg2 != 65535.0f)
  {
    var_a1 = arg0;
    var_v1 = *arg0;
    if (var_v1 != (-1))
    {
      do
      {
        dobj = D_800DFBD0[omCurrentObj->objId][var_v1];
        mobj = dobj->mobjList;
        if (mobj != ((void *) 0))
        {
          do
          {
            mobj->animSpeed = arg2;
            mobj = mobj->next;
          }
          while (mobj != ((void *) 0));
        }
        var_v1 = var_a1[1];
        var_a1++;
      }
      while (var_v1 != (-1));
    }
  }
}

#ifdef MIPS_TO_C

void func_800AACC8(s32 *arg0, s32 arg1, s32 arg2, f32 arg3) {
    ? *var_s0_2;
    s32 **var_s0;
    s32 **var_s4;
    s32 *temp_v0_2;
    s32 *temp_v1;
    s32 *var_s1;
    s32 *var_s3;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_s6;
    s32 var_v0;
    s32 var_v1;
    s8 var_s5;
    struct UnkStruct8004A7C4_3C *temp_v0;
    struct UnkStruct8004A7C4_3C *var_s2;
    void *temp_s2;

    var_s2 = omCurrentObj->unk3C;
    var_s5 = 1;
    if (var_s2 != NULL) {
        do {
            var_s2->unk55 = 0;
            temp_v0 = animModelTreeNextNode(var_s2);
            var_s2 = temp_v0;
        } while (temp_v0 != NULL);
    }
    var_s4 = NULL;
    if (arg2 != -1) {
        func_800A9B48(arg2);
        var_s4 = *D_800DF850[omCurrentObj->objId];
    }
    func_800A9B48(arg1);
    var_v1 = *arg0;
    var_s3 = arg0;
    temp_s6 = *D_800DF690[omCurrentObj->objId];
    if (var_v1 != -1) {
        do {
            var_v0 = var_v1 * 4;
            var_s0 = var_v0 + var_s4;
            if (var_s4 == NULL) {
                var_s0 = var_s4;
                var_v0 = var_v1 * 4;
            }
            temp_a1 = *(var_v0 + temp_s6);
            temp_s2 = *(D_800DFBD0[omCurrentObj->objId] + var_v0);
            if (temp_a1 != 0) {
                animSetModelAnimation(temp_s2, temp_a1, arg3);
                temp_s2->unk55 = var_s5;
                temp_s2->unk4->unk40 = arg3;
                D_800DF310[omCurrentObj->objId] = NULL;
                var_s5 = 0;
                temp_v1 = &D_800DD8D0[omCurrentObj->objId];
                *temp_v1 &= 0x3FFFFFFF;
            } else {
                temp_s2->unk74 = -3.4028235e38f;
                temp_s2->unk55 = 0;
            }
            if (var_s0 != NULL) {
                temp_v0_2 = *var_s0;
                if (temp_v0_2 != NULL) {
                    var_s0_2 = temp_s2->unk80;
                    var_s1 = temp_v0_2;
                    if (var_s0_2 != NULL) {
                        do {
                            temp_a1_2 = *var_s1;
                            if (temp_a1_2 != 0) {
                                animSetTextureAnimation(var_s0_2, temp_a1_2, arg3);
                            }
                            var_s0_2 = *var_s0_2;
                            var_s1 += 4;
                        } while (var_s0_2 != NULL);
                    }
                }
            }
            var_v1 = var_s3->unk4;
            var_s3 += 4;
        } while (var_v1 != -1);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800AACC8.s")
#endif

void func_800AAF04(s32 *arg0, s32 arg1, s32 arg2, f32 arg3) {
    func_800AACC8(arg0, arg1, arg2, arg3);
    func_800AF27C();
}

void func_800AAF34(s32 arg0, s32 arg1, f32 arg2) {
    u32 *slot;

    slot = &D_800D7A00[(arg0 - 0xA) >> 1];
    if (*slot != 0) {
        func_800A8578(*slot | 2);
        *slot = 0;
    }
    *slot = (u32)func_800A94F4(arg1);
    animSetCameraAnimation((Camera *)D_800D79D8[(arg0 - 0xA) >> 1], (AnimCmd *)*(u32 *)*slot, arg2);
}

void func_800AAFC4(s32 arg0, s32 arg1, f32 arg2) {
    struct UnkStruct800D79D8 *temp_s0;

    func_800AAF34(arg0, arg1, arg2);
    temp_s0 = D_800D79D8[(arg0 - 0xA) >> 1];
    while (1) {
        if (temp_s0->unk74 == -3.4028235e38f) {
            break;
        }
        ohSleep(1);
    }
}

void func_800AB040(s32 arg0) {
    struct UnkStruct800D79D8 *temp_s0 = D_800D79D8[(arg0 - 0xA) >> 1];

    while (1) {
        if (temp_s0->unk74 == -3.4028235e38f) {
            break;
        }
        ohSleep(1);
    }
}

void func_800AB0A8(s32 arg0, f32 arg1) {
    struct UnkStruct800D79D8 *new_var = D_800D79D8[(arg0 - 0xA) >> 1];

    new_var->unk78 = arg1;
}

void func_800AB0CC(s32 arg0) {
    s32 tmp;
    struct UnkStruct800D79D8 *tmp2;

    tmp = (arg0 - 0xA) >> 1;
    tmp2 = D_800D79D8[tmp];
    tmp2->unk74 = -3.4028235e38f;
}

s32 func_800AB0F4(GObj *g) {
    u32 **buf = gSegment4StartArray[g->objId];

    return buf[2];
}

void func_800AB110(GObj *g) {

}

void func_800AB118(GObj *g) {

}

void func_800AB120(GObj *g) {
    gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[g->objId]);
    renderDrawGObjList0(g);
}

void func_800AB174(GObj *g) {
    gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[g->objId]);
    gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[g->objId]);
    renderDrawObject_TypeC(g);
}

void func_800AB1F0(GObj *g) {
    gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[g->objId]);
    renderDrawGObjWithDObjTypeE(g);
}

void func_800AB244(GObj *g) {
    gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[g->objId]);
    gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[g->objId]);
    renderDrawObject_TypeG(g);
}

void func_800AB2C0(GObj *g) {
    gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[g->objId]);
    renderDrawDObjFromGObj(g);
}

void func_800AB314(GObj *g) {
    gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[g->objId]);
    gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[g->objId]);
    renderDrawObject_TypeD(g);
}

void func_800AB390(GObj *g) {

}

void func_800AB398(GObj *g) {

}

void func_800AB3A0(GObj *g) {
    gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[g->objId]);
    func_8001585C(g);
}

void func_800AB3F4(GObj *g) {
    gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[g->objId]);
    gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[g->objId]);
    func_80015BCC(g);
}

void func_800AB470(GObj *g) {

}

void func_800AB478(GObj *g) {

}

void func_800AB480(GObj *g) {

}
