#include "common.h"

#ifdef PORT
/* Ported from asm/nonmatchings/ovl1/ovl1_4/func_800AB490.s (140 insns).
 * Compares the visibility flag (DObj byte +0x54) of the 0x31 tracked nodes
 * named by the byte table D_800D4D8C[0x31] against row arg0 of the byte
 * template D_800D4DC0[arg0][0x31], on the D_801290D0 track's DObj list.
 * A slot "matches" when the template byte and the node's flags byte
 * disagree as booleans (template nonzero expects flags == 0 and vice
 * versa); a 0xFF slot never matches. Returns 1 when the base count (1)
 * plus matches reaches 0x31, else 0. */
#include "GObj.h"
#include "DObj.h"
#include "ovl1/ovl1_6.h"

s32 func_800AB490(s32 arg0) {
    extern u8 D_800D4D8C[];
    extern u8 D_800D4DC0[];
    extern s32 D_801290D0;
    s32 count = 1;
    s32 i;
    u8 *tmpl = &D_800D4DC0[arg0 * 0x31];

    for (i = 0; i < 0x31; i++) {
        u8 idx = D_800D4D8C[i];

        if (idx != 0xFF) {
            u8 flags = D_800DFBD0[D_801290D0][idx]->flags;

            if (tmpl[i] != 0 ? flags == 0 : flags != 0) {
                count++;
            }
        }
    }
    return count == 0x31;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_4/func_800AB490.s")
#endif
