#include "common.h"
#include "GObj.h"
#include "DObj.h"
#include "ovl1/ovl1_6.h"

#ifdef MIPS_TO_C
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
