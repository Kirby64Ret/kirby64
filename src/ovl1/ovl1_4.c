#include "common.h"
#include "GObj.h"
#include "DObj.h"
#include "ovl1/ovl1_6.h"

/* Formation check for template arg0: XORs each of the 49 template flag
 * bytes (D_800D4DC0, row arg0) against the corresponding tracked object's
 * flags field, walking the object id list D_800D4D8C (first) then
 * D_800D4D8D[] (rest, 0xFF-terminated, two ids per loop). matchCount
 * only increments where flag and id-slot state disagree (XOR), so a
 * return of 1 means every slot in the row diverged as the template wants.
 *
 * FACTORY: 121/122, UNCERTAIN -- fresh derivation, time-boxed. Compiles,
 * word count matches (122/122), residue extreme (121/122). The whole
 * residue is not a plain register floor: the ROM computes `arg0 * 0x31`
 * via shift-strength-reduction (sll/subu/sll) independently at each of
 * the three use sites, while IDO here recognizes them as one redundant
 * subexpression and emits a single real `multu` reused across sites.
 * Rewriting the outer XOR ladder as a flat `(cond) == (cond)` expression
 * (mechanically equivalent, tested) made it WORSE (131/132) -- the
 * goto-ladder shape m2c produced is load-bearing, kept as-is with real
 * names. Worth a fresh m2c pass with the multiply-CSE angle specifically
 * before feeding to the permuter. */
#ifdef MIPS_TO_C
s32 func_800AB490(s32 arg0) {
    extern u8 D_800D4D8C;
    extern u8 D_800D4D8D[];
    extern u8 D_800D4DC0[];
    extern s32 D_801290D0;
    u8 *restIds;
    u8 *tmpl;
    u8 firstId;
    s32 matchCount;
    s32 i;
    u8 id0;
    u8 id1;
    struct DObj **objs0;
    struct DObj **objs1;

    firstId = D_800D4D8C;
    matchCount = 1;
    tmpl = D_800D4DC0;
    if (firstId == 0xFF) {
    } else if (tmpl[arg0 * 0x31] != 0) {
        if (D_800DFBD0[D_801290D0][firstId]->flags == 0) {
            goto slotMatched;
        }
    } else if (D_800DFBD0[D_801290D0][firstId]->flags != 0) {
    slotMatched:
        matchCount = 2;
    }
    restIds = D_800D4D8D;
    i = 1;
    do {
        id0 = restIds[0];
        if (id0 != 0xFF) {
            objs0 = D_800DFBD0[D_801290D0];
            if (tmpl[arg0 * 0x31 + i] != 0) {
                if (objs0[id0]->flags == 0) {
                    goto slot0Matched;
                }
            } else if (objs0[id0]->flags != 0) {
            slot0Matched:
                matchCount += 1;
            }
        }
        id1 = restIds[1];
        if (id1 != 0xFF) {
            objs1 = D_800DFBD0[D_801290D0];
            if (tmpl[arg0 * 0x31 + i + 1] != 0) {
                if (objs1[id1]->flags == 0) {
                    goto slot1Matched;
                }
            } else if (objs1[id1]->flags != 0) {
            slot1Matched:
                matchCount += 1;
            }
        }
        i += 2;
        restIds += 2;
    } while (i != 0x31);
    if (matchCount == 0x31) {
        return 1;
    }
    return 0;
}
#elif defined(PORT)
/* PORT: identical to the MIPS_TO_C matching draft above -- the logic is
 * LP64-clean (native DObj** table, byte tables); kept as a separate arm
 * so the draft stays permuter-editable until it matches. */
s32 func_800AB490(s32 arg0) {
    extern u8 D_800D4D8C;
    extern u8 D_800D4D8D[];
    extern u8 D_800D4DC0[];
    extern s32 D_801290D0;
    u8 *var_a0;
    u8 *tmpl;
    u8 first;
    s32 var_v0;
    s32 var_v1;
    u8 temp_a1;
    u8 temp_a1_2;
    struct DObj **temp_a3;
    struct DObj **temp_a3_2;

    first = D_800D4D8C;
    var_v0 = 1;
    tmpl = D_800D4DC0;
    if (first == 0xFF) {
    } else if (tmpl[arg0 * 0x31] != 0) {
        if (D_800DFBD0[D_801290D0][first]->flags == 0) {
            goto block_6;
        }
    } else if (D_800DFBD0[D_801290D0][first]->flags != 0) {
    block_6:
        var_v0 = 2;
    }
    var_a0 = D_800D4D8D;
    var_v1 = 1;
    do {
        temp_a1 = var_a0[0];
        if (temp_a1 != 0xFF) {
            temp_a3 = D_800DFBD0[D_801290D0];
            if (tmpl[arg0 * 0x31 + var_v1] != 0) {
                if (temp_a3[temp_a1]->flags == 0) {
                    goto block_13;
                }
            } else if (temp_a3[temp_a1]->flags != 0) {
            block_13:
                var_v0 += 1;
            }
        }
        temp_a1_2 = var_a0[1];
        if (temp_a1_2 != 0xFF) {
            temp_a3_2 = D_800DFBD0[D_801290D0];
            if (tmpl[arg0 * 0x31 + var_v1 + 1] != 0) {
                if (temp_a3_2[temp_a1_2]->flags == 0) {
                    goto block_19;
                }
            } else if (temp_a3_2[temp_a1_2]->flags != 0) {
            block_19:
                var_v0 += 1;
            }
        }
        var_v1 += 2;
        var_a0 += 2;
    } while (var_v1 != 0x31);
    if (var_v0 == 0x31) {
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_4/func_800AB490.s")
#endif
