#include <PR/gbi.h>
#include "common.h"
#include "ovl1/ovl1_6.h"
#include "GObj.h"

// All the filesystem loading magic happens here

extern Gfx *gDisplayListHeads[4];

#ifdef MIPS_TO_C

void func_800A82C0(void) {
    s32 temp_t8;

    temp_t8 = (gDynamicBuffer2.top + 0xFF) & ~0xFF;
    D_800D7BB4 = temp_t8;
    D_800D7BB0 = temp_t8;
    D_800D7BB8 = gDynamicBuffer2.poolEnd - temp_t8;
    D_800D7C10 = 0x80400000;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A82C0.s")
#endif

#ifdef MIPS_TO_C

s32 func_800A8310(s32 arg0) {
    s32 temp_a0;
    s32 temp_t0;
    s32 temp_t7;

    temp_a0 = arg0 & ~0xF;
    temp_t7 = D_800D7BB8 - temp_a0;
    D_800D7BB8 = temp_t7;
    if (temp_t7 < 0) {
        return 0;
    }
    temp_t0 = D_800D7BB4 + temp_a0;
    D_800D7BB4 = temp_t0;
    return temp_t0 - temp_a0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A8310.s")
#endif

#ifdef MIPS_TO_C

void *func_800A8358(s32 arg0) {
    ? *temp_a2_2;
    ? *var_a1;
    s32 temp_v1;
    u32 temp_a0;
    void *temp_a2;

    temp_v1 = arg0 & 3;
    temp_a0 = ((arg0 - temp_v1) + 0xC) & ~0xF;
    var_a1 = *(&D_800D7BD0 + (temp_v1 * 4));
loop_1:
    if (var_a1->unkC != 0) {
block_3:
        var_a1 = var_a1->unk4;
        goto loop_1;
    }
    if (var_a1->unk8 < (temp_a0 + 0x10)) {
        goto block_3;
    }
    temp_a2 = var_a1 + temp_a0;
    temp_a2->unk10 = var_a1;
    temp_a2_2 = temp_a2 + 0x10;
    temp_a2_2->unk4 = var_a1->unk4;
    temp_a2_2->unkC = 0;
    temp_a2_2->unk8 = (var_a1->unk8 - temp_a0) - 0x10;
    var_a1->unk4 = temp_a2_2;
    *temp_a2_2->unk4 = temp_a2_2;
    *(&D_800D7BD0 + (temp_v1 * 4)) = *temp_a2_2->unk4;
    D_800D7BBC = var_a1;
    var_a1->unk8 = temp_a0;
    var_a1->unkC = 1;
    return var_a1 + 0x10;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A8358.s")
#endif

#ifdef MIPS_TO_C

void *func_800A840C(u32 arg0, s32 arg1) {
    void *sp1C;
    void *temp_a3;
    void *temp_v0;
    void *temp_v0_2;

    if (*(&D_800D7BD0 + ((arg1 & 3) * 4)) != 0) {
        return NULL;
    }
    if (arg0 < 0x40) {
        return NULL;
    }
    temp_v0 = func_800A8310();
    if (temp_v0 == NULL) {
        return NULL;
    }
    *(&D_800D7BD0 + (arg1 * 4)) = temp_v0;
    temp_v0_2 = (temp_v0 + arg0) - 0x20;
    temp_v0->unk0 = temp_v0_2;
    temp_v0->unk4 = temp_v0_2;
    temp_v0->unk8 = arg0 - 0x30;
    temp_v0->unkC = 0;
    temp_v0_2->unk4 = temp_v0;
    temp_a3 = temp_v0->unk4;
    temp_a3->unk0 = temp_a3->unk4;
    temp_v0->unk4->unk8 = 0x10;
    temp_v0->unk4->unkC = 0xFF000000;
    sp1C = temp_v0;
    memcpy(temp_v0->unk4 + 0x10, &D_800C4640, 0x10, temp_a3);
    return sp1C;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A840C.s")
#endif

#ifdef MIPS_TO_C

void func_800A84F0(s32 arg0) {
    D_800D7C10 += (arg0 + 0xF) & 0xFFFFF0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A84F0.s")
#endif

#ifdef MIPS_TO_C
void func_800A8518(s32 arg0) {
    s32 temp_t7;
    void *temp_v0;

    temp_v0 = arg0 - 0x10;
    temp_t7 = temp_v0->unkC & 0xFFFFFF;
    temp_v0->unkC = temp_t7;
    temp_v0->unkC = temp_t7 | 0x99000000;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A8518.s")
#endif

#ifdef MIPS_TO_C
void func_800A8540(s32 arg0) {
    void *temp_v0;

    temp_v0 = arg0 - 0x10;
    temp_v0->unkC = temp_v0->unkC & 0xFFFFFF;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A8540.s")
#endif

#ifdef MIPS_TO_C
void func_800A855C(void *arg0, s32 arg1) {
    arg0->unk-4 = arg1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A855C.s")
#endif

#ifdef MIPS_TO_C
void func_800A8564(s32 arg0, s32 arg1) {
    void *temp_v0;

    temp_v0 = arg0 - 0x10;
    temp_v0->unkC = temp_v0->unkC + arg1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A8564.s")
#endif

#ifdef MIPS_TO_C

u32 func_800A8578(s32 arg0) {
    s32 *temp_a1_3;
    s32 temp_v1;
    s32 var_v0;
    u32 temp_a1;
    u32 temp_v0;
    void *temp_a1_2;
    void *var_v1;

    temp_v1 = (arg0 - 0x10) & ~3;
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
    temp_a1_2 = temp_v1->unk0;
    temp_v1->unkC = 0;
    if (temp_a1_2->unkC == 0) {
        var_v0 = temp_a1_2;
    }
    var_v1 = var_v0->unk4;
    temp_a1_3 = ((arg0 & 3) * 4) + &D_800D7BD0;
    if (var_v1->unkC == 0) {
        do {
            if (var_v1 == *temp_a1_3) {
                *temp_a1_3 = var_v0;
                var_v1 = var_v0->unk4;
            }
            var_v0->unk8 = var_v0->unk8 + var_v1->unk8 + 0x10;
            *var_v1->unk4 = var_v0;
            var_v1 = var_v0->unk4->unk4;
            var_v0->unk4 = var_v1;
        } while (var_v1->unkC == 0);
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A8578.s")
#endif

#ifdef MIPS_TO_C

s32 func_800A8648(void) {
    ? *var_s1;
    ? *var_s2;
    s32 temp_v0;
    s32 var_s0;
    s32 var_s3;

    var_s3 = 0;
    var_s2 = &D_800D7C00;
    var_s1 = &D_800D7BF0;
    var_s0 = 0;
    do {
        temp_v0 = func_800A86C8(var_s0, var_s1, var_s2);
        var_s0 += 1;
        var_s1 += 4;
        var_s2 += 4;
        var_s3 += temp_v0;
    } while (var_s0 != 4);
    return var_s3;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A8648.s")
#endif

#ifdef MIPS_TO_C

s32 func_800A86C8(s32 arg0, s32 *arg1, s32 *arg2) {
    s32 var_a3;
    s32 var_v1;
    void *temp_v0;
    void *var_t0;

    temp_v0 = *(&D_800D7BC0 + ((arg0 & 3) * 4));
    var_v1 = 0;
    var_a3 = 0x30;
    var_t0 = temp_v0;
    do {
        if (var_t0->unkC & 0xFF) {
            var_v1 += 1;
            var_a3 = var_a3 + var_t0->unk8 + 0x10;
        }
        var_t0 = var_t0->unk4;
    } while (var_t0 != temp_v0);
    *arg1 = var_a3;
    *arg2 = var_v1;
    return var_a3;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A86C8.s")
#endif

#ifdef MIPS_TO_C

s32 func_800A8724(s32 arg0) {
    ? *var_s3;
    ? *var_s4;
    s32 *var_s0;
    s32 *var_s2;
    s32 temp_a2;
    s32 temp_s5;
    s32 temp_t9;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a0;
    s32 var_a3;
    s32 var_s6;
    s32 var_v0;
    s32 var_v0_2;
    u32 *var_a1;
    u32 *var_a2;
    u32 var_s1;
    u32 var_v1;

    var_s6 = 0;
    func_800A82C0();
    var_a1 = &D_800D0124;
    var_a2 = &D_800D00E4;
    var_a3 = 0;
    do {
        var_v1 = 0;
        if (*var_a2 != 0) {
            var_v0 = 0;
            do {
                var_v1 += 1;
                *(*(var_a3 + &D_800D00C4) + var_v0) = 0;
                var_v0 += 4;
            } while (var_v1 < *var_a2);
            var_v1 = 0;
        }
        var_a2 += 4;
        var_v0_2 = 0;
        if (*var_a1 != 0) {
            do {
                var_v1 += 1;
                *(*(var_a3 + &D_800D0104) + var_v0_2) = 0;
                var_v0_2 += 4;
            } while (var_v1 < *var_a1);
        }
        var_a1 += 4;
        var_a3 += 4;
    } while (var_a1 < &D_800D0144);
    var_s4 = &D_800D7BE0;
    var_s3 = &D_800D7BC0;
    var_s2 = (arg0 * 0x10) + &D_800C4654;
    var_a0 = D_800D7BB8;
    var_s0 = &D_800D7BD0;
    var_s1 = 0;
    do {
        temp_a2 = *var_s2;
        *var_s0 = 0;
        temp_s5 = var_a0;
        if (temp_a2 != 0) {
            if (temp_a2 == -1) {
                temp_v0 = func_800A840C(var_a0, var_s1, temp_a2);
                *var_s0 = temp_v0;
                if (temp_v0 == 0) {
                    var_s6 += 1;
                }
            } else {
                temp_v0_2 = func_800A840C(temp_a2, var_s1, temp_a2);
                *var_s0 = temp_v0_2;
                if (temp_v0_2 == 0) {
                    var_s6 += 1;
                }
            }
            var_a0 = D_800D7BB8;
        }
        temp_t9 = *var_s0;
        var_s1 += 1;
        var_s0 += 4;
        var_s2 += 4;
        var_s3 += 4;
        var_s4 += 4;
        var_s4->unk-4 = temp_s5 - var_a0;
        var_s3->unk-4 = temp_t9;
    } while (var_s1 < 4);
    D_800D6E78 = 0;
    D_800D6E68 = 0;
    D_800D6E7C = 0;
    D_800D6E6C = 0;
    D_800D6E80 = 0;
    D_800D6E70 = 0;
    D_800D6E84 = 0;
    D_800D6E74 = 0;
    return var_s6;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A8724.s")
#endif

#ifdef MIPS_TO_C

s32 func_800A8934(u32 arg0, s32 arg1, s32 arg2, ? arg3) {
    s32 var_a2;
    void *temp_v0;
    void *temp_v1;

    temp_v1 = *(&D_800D0184 + ((arg0 >> 0x10) * 4));
    temp_v0 = temp_v1->unk8 + ((arg0 & 0xFFFF) * 4);
    if (arg2 == 0) {
        var_a2 = (((temp_v0->unk4 - temp_v0->unk0) + 3) & 0xFFFFFC) - arg1;
        if (var_a2 < 0x10) {
            return -1;
        }
        goto block_4;
    }
    var_a2 = (arg2 + 3) & 0xFFFFFC;
block_4:
    arg2 = var_a2;
    dma_read(temp_v0->unk0 + temp_v1->unkC + arg1, arg3, var_a2);
    return arg2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A8934.s")
#endif

#ifdef MIPS_TO_C

s32 func_800A89E0(u32 arg0) {
    s32 sp24;
    s32 sp20;
    void *sp1C;
    s32 sp18;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_v0;
    void *temp_v0_2;
    void *temp_v1;

    temp_v0_2 = *(&D_800D0184 + ((arg0 >> 0x10) * 4));
    temp_a1 = arg0 & 0xFFFF;
    temp_v1 = temp_v0_2->unk8 + (temp_a1 * 4);
    sp18 = temp_v0_2->unkC;
    temp_a3 = (temp_v1->unk4 - temp_v1->unk0) + 3;
    temp_a0 = temp_a3 & 0xFFFFFC;
    sp24 = temp_a0;
    sp1C = temp_v1;
    temp_v0 = func_800A84F0(temp_a0, temp_a1, temp_a3);
    sp20 = temp_v0;
    dma_read(temp_v1->unk0 + sp18, temp_v0, sp24 & 0xFFFFFC, sp24);
    return temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A89E0.s")
#endif

#ifdef MIPS_TO_C

s32 func_800A8A7C(u32 arg0) {
    s32 *sp1C;
    s32 sp18;
    s32 *temp_v1;
    s32 temp_a2;
    s32 temp_a3;

    temp_v1 = ((arg0 >> 0x10) * 4) + &D_800D0104;
    temp_a3 = (arg0 & 0xFFFF) * 4;
    temp_a2 = *(*temp_v1 + temp_a3);
    if (temp_a2 != 0) {
        sp1C = temp_v1;
        sp18 = temp_a3;
        func_800A8564(temp_a2, 1, temp_a2, temp_a3);
    } else {
        sp1C = temp_v1;
        sp18 = temp_a3;
        *(*temp_v1 + temp_a3) = func_800A89E0(1, temp_a2, temp_a3);
    }
    return *(*temp_v1 + temp_a3);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A8A7C.s")
#endif

#ifdef MIPS_TO_C

s32 func_800A8B0C(u32 arg0, s32 arg1) {
    s32 sp24;
    s32 sp20;
    void *sp1C;
    s32 sp18;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_v0;
    void *temp_v0_2;
    void *temp_v1;

    temp_v0_2 = *(&D_800D0184 + ((arg0 >> 0x10) * 4));
    temp_a2 = arg0 & 0xFFFF;
    temp_v1 = temp_v0_2->unk8 + (temp_a2 * 4);
    sp18 = temp_v0_2->unkC;
    temp_a3 = ((temp_v1->unk4 - temp_v1->unk0) + 3) & 0xFFFFFC;
    sp24 = temp_a3;
    sp1C = temp_v1;
    temp_v0 = func_800A8358(temp_a3 | arg1, temp_a2, temp_a3);
    sp20 = temp_v0;
    dma_read(temp_v1->unk0 + sp18, temp_v0, temp_a3 & 0xFFFFFC, temp_a3);
    return temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A8B0C.s")
#endif

#ifdef MIPS_TO_C

s32 func_800A8BAC(u32 arg0) {
    s32 *sp1C;
    s32 sp18;
    s32 *temp_v1;
    s32 temp_a2;
    s32 temp_a3;

    temp_v1 = ((arg0 >> 0x10) * 4) + &D_800D0104;
    temp_a3 = (arg0 & 0xFFFF) * 4;
    temp_a2 = *(*temp_v1 + temp_a3);
    if (temp_a2 != 0) {
        sp1C = temp_v1;
        sp18 = temp_a3;
        func_800A8564(temp_a2, 1, temp_a2, temp_a3);
    } else {
        sp1C = temp_v1;
        sp18 = temp_a3;
        *(*temp_v1 + temp_a3) = func_800A8B0C(3, temp_a2, temp_a3);
    }
    return *(*temp_v1 + temp_a3);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A8BAC.s")
#endif

#ifdef MIPS_TO_C

s32 func_800A8C40(u32 arg0) {
    s32 *sp20;
    s32 sp1C;
    s32 *temp_a2;
    s32 temp_a3;
    s32 var_a1;
    void *temp_v1;

    temp_a2 = ((arg0 >> 0x10) * 4) + &D_800D0104;
    temp_a3 = (arg0 & 0xFFFF) * 4;
    var_a1 = *(*temp_a2 + temp_a3);
    if (var_a1 == 0) {
        sp20 = temp_a2;
        sp1C = temp_a3;
        *(*temp_a2 + temp_a3) = func_800A8B0C(3, temp_a2, temp_a3);
        temp_v1 = *(*temp_a2 + temp_a3);
        temp_v1->unk8 = temp_v1->unk8 + temp_v1;
        temp_v1->unkC = temp_v1->unkC + temp_v1;
        var_a1 = *(*temp_a2 + temp_a3);
    }
    return var_a1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A8C40.s")
#endif

#ifdef MIPS_TO_C

s32 func_800A8CE0(u32 arg0, s32 arg1) {
    s32 sp2C;
    s32 sp20;
    void *sp1C;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_v0;
    void *temp_v1;

    temp_a2 = (arg0 & 0xFFFF) * 2;
    temp_v1 = **(&D_800D0184 + ((arg0 >> 0x10) * 4)) + (temp_a2 * 4);
    sp1C = temp_v1;
    temp_a0 = (temp_v1->unk4 - temp_v1->unk0) | arg1;
    sp2C = temp_a0;
    temp_v0 = func_800A8358(temp_a0, temp_a2);
    sp20 = temp_v0;
    dma_read(temp_v1->unk0, temp_v0, sp2C & 0xFFFFFC, sp2C);
    return temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A8CE0.s")
#endif

#ifdef MIPS_TO_C

void func_800A8D64(u32 arg0, s32 arg1) {
    s32 sp20;
    s32 *temp_s0;
    s32 temp_a1;
    s32 temp_s1;
    s32 temp_v1;
    u32 *var_s0;
    u32 temp_v0;
    u32 var_v1;

    temp_s0 = ((arg0 >> 0x10) * 4) + &D_800D00C4;
    temp_v1 = (arg0 & 0xFFFF) * 4;
    temp_s1 = *(*temp_s0 + temp_v1);
    if (temp_s1 != 0) {
        sp20 = temp_v1;
        if (func_800A8578(temp_s1 | arg1) == 0) {
            *(*temp_s0 + temp_v1) = 0;
            var_s0 = temp_s1->unkC;
            var_v1 = *var_s0;
            if (var_v1 != 0) {
                do {
                    temp_a1 = *(*(&D_800D0104 + ((var_v1 >> 0x10) * 4)) + ((var_v1 & 0xFFFF) * 4));
                    if ((temp_a1 != 0) && (func_800A8578(temp_a1 | 3, temp_a1) == 0)) {
                        temp_v0 = var_s0->unk0;
                        *(*(&D_800D0104 + ((temp_v0 >> 0x10) * 4)) + ((temp_v0 & 0xFFFF) * 4)) = 0;
                    }
                    var_v1 = var_s0->unk4;
                    var_s0 += 4;
                } while (var_v1 != 0);
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A8D64.s")
#endif

#ifdef MIPS_TO_C

void func_800A8E54(u32 arg0, s32 arg1) {
    s32 *sp1C;
    s32 sp18;
    s32 *temp_v1;
    s32 temp_a2;
    s32 temp_v0;

    temp_v1 = ((arg0 >> 0x10) * 4) + &D_800D0104;
    temp_a2 = (arg0 & 0xFFFF) * 4;
    temp_v0 = *(*temp_v1 + temp_a2);
    if (temp_v0 != 0) {
        sp1C = temp_v1;
        sp18 = temp_a2;
        if (func_800A8578(temp_v0 | arg1, temp_a2) == 0) {
            *(*temp_v1 + temp_a2) = 0;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A8E54.s")
#endif

#ifdef MIPS_TO_C

void func_800A8EC0(u32 arg0) {
    u32 **sp18;
    GObj *temp_v1;
    s32 *var_v0_3;
    s32 temp_t2;
    s32 var_a1;
    s32 var_v0_2;
    s32 var_v1;
    s32 var_v1_2;
    u32 **temp_a2;
    u32 **var_at;
    u32 *temp_t1;
    u32 *var_v0;
    u32 *var_v0_4;

    var_a1 = -1;
    var_v0 = &D_800D6E68;
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
                temp_t1 = &(&D_800D6E68)[var_v0_2];
                var_v0_2 -= 1;
                *temp_t1 = (&D_800D6E68)[var_v1_2];
            }
            var_v1_2 -= 1;
        } while (var_v1_2 >= 0);
    } else {
        if (D_800D6E68.unk8 != 0) {
            func_800A8D64(D_800D6E68.unk8, 3, &D_800D6E68, arg0);
        }
        var_v0_3 = &D_800D6E6C;
        do {
            temp_t2 = *var_v0_3;
            var_v0_3 -= 4;
            var_v0_3->unk8 = temp_t2;
        } while (var_v0_3 >= &D_800D6E68);
    }
    D_800D6E68.unk0 = arg0;
    temp_v1 = omCurrentObj;
    D_800E02D0[temp_v1->objId] = arg0;
    temp_a2 = *(&D_800D00C4 + ((arg0 >> 0x10) * 4)) + ((arg0 & 0xFFFF) * 4);
    var_v0_4 = *temp_a2;
    if (var_v0_4 != NULL) {
        var_at = &gSegment4StartArray[temp_v1->objId];
    } else {
        sp18 = temp_a2;
        var_v0_4 = func_800A9250(arg0, 3, temp_a2, arg0);
        *temp_a2 = var_v0_4;
        var_at = &gSegment4StartArray[omCurrentObj->objId];
    }
    *var_at = var_v0_4;
    func_800A9D64(temp_v1->objId);
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

#ifdef MIPS_TO_C

void func_800A9760(u32 arg0) {
    u32 **sp1C;
    u32 **temp_a2;
    u32 *temp_v0;
    u32 *temp_v0_2;

    D_800E02D0[omCurrentObj->objId] = arg0;
    temp_a2 = *(&D_800D00C4 + ((arg0 >> 0x10) * 4)) + ((arg0 & 0xFFFF) * 4);
    temp_v0 = *temp_a2;
    if (temp_v0 != NULL) {
        gSegment4StartArray[omCurrentObj->objId] = temp_v0;
        func_800A8564(*temp_a2, 1, temp_a2);
    } else {
        sp1C = temp_a2;
        temp_v0_2 = func_800A9250(3, temp_a2);
        *temp_a2 = temp_v0_2;
        gSegment4StartArray[omCurrentObj->objId] = temp_v0_2;
    }
    func_800A9D64(omCurrentObj->objId);
    func_800A99E4(omCurrentObj->objId);
    func_800A9A2C(omCurrentObj->objId);
    func_800A9648(gSegment4StartArray[omCurrentObj->objId]);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A9760.s")
#endif

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
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A9864.s")
#endif

#ifdef MIPS_TO_C

void func_800A99E4(s32 arg0) {
    struct LayoutNode ***sp1C;
    struct LayoutNode ***temp_v0;
    struct LayoutNode **temp_v1;

    temp_v0 = &D_800DFBD0[arg0];
    temp_v1 = *temp_v0;
    if (temp_v1 != -1) {
        sp1C = temp_v0;
        func_800A8578(temp_v1 | 1);
    }
    *temp_v0 = -1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A99E4.s")
#endif

#ifdef MIPS_TO_C

void func_800A9A2C(s32 arg0) {
    s32 temp_v1;

    temp_v1 = gSegment4StartArray[arg0]->unk1C;
    if (temp_v1 == 0) {
        D_800DFBD0[omCurrentObj->objId] = -1;
        return;
    }
    D_800DFBD0[omCurrentObj->objId] = func_800A8358((temp_v1 * 4) | 1);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A9A2C.s")
#endif

#ifdef MIPS_TO_C

s32 func_800A9AA8(u32 arg0, s32 arg1) {
    s32 sp24;
    s32 sp20;
    void *sp1C;
    s32 sp18;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_v0;
    void *temp_v0_2;
    void *temp_v1;

    temp_v0_2 = *(&D_800D0184 + ((arg0 >> 0x10) * 4));
    temp_a2 = arg0 & 0xFFFF;
    temp_v1 = temp_v0_2->unk18 + (temp_a2 * 4);
    sp18 = temp_v0_2->unk1C;
    temp_a3 = ((temp_v1->unk4 - temp_v1->unk0) + 3) & 0xFFFFFC;
    sp24 = temp_a3;
    sp1C = temp_v1;
    temp_v0 = func_800A8358(temp_a3 | arg1, temp_a2, temp_a3);
    sp20 = temp_v0;
    dma_read(temp_v1->unk0 + sp18, temp_v0, temp_a3 & 0xFFFFFC, temp_a3);
    return temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A9AA8.s")
#endif

#ifdef MIPS_TO_C

s32 func_800A9B48(s32 arg0) {
    s32 sp24;
    void *sp1C;
    GObj *temp_v1;
    GObj *temp_v1_2;
    s32 temp_a2;
    u32 *var_a0;
    u32 *var_a0_2;
    u32 temp_v0_2;
    u32 temp_v0_3;
    void *temp_v0;

    temp_v0 = func_800A94F4();
    temp_a2 = temp_v0->unk4;
    if (temp_a2 != 0) {
        temp_v1 = omCurrentObj;
        var_a0 = &D_800DF850[temp_v1->objId];
        temp_v0_2 = *var_a0;
        if (temp_v0_2 != -1) {
            sp1C = temp_v0;
            sp24 = temp_a2;
            func_800A8578(temp_v0_2 | 2, temp_v0, temp_a2);
            var_a0 = &D_800DF850[omCurrentObj->objId];
        }
        *var_a0 = temp_v0;
        D_800E0110[temp_v1->objId] = arg0;
    } else {
        temp_v1_2 = omCurrentObj;
        var_a0_2 = &D_800DF690[temp_v1_2->objId];
        temp_v0_3 = *var_a0_2;
        if (temp_v0_3 != -1) {
            sp1C = temp_v0;
            sp24 = temp_a2;
            func_800A8578(temp_v0_3 | 2, temp_v0, temp_a2);
            var_a0_2 = &D_800DF690[omCurrentObj->objId];
        }
        *var_a0_2 = temp_v0;
        D_800DFF50[temp_v1_2->objId] = arg0;
    }
    return temp_a2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A9B48.s")
#endif

#ifdef MIPS_TO_C

s32 func_800A9C78(s32 arg0, s32 arg1) {
    s32 sp2C;
    void *sp24;
    s32 sp20;
    u32 *sp1C;
    s32 temp_a3;
    u32 *temp_a1;
    u32 *temp_a1_2;
    u32 temp_v0_2;
    u32 temp_v0_3;
    void *temp_v0;

    temp_v0 = func_800A94F4();
    temp_a3 = temp_v0->unk4;
    if (temp_a3 != 0) {
        temp_a1 = &D_800DF850[arg1];
        temp_v0_2 = *temp_a1;
        if (temp_v0_2 != -1) {
            sp20 = arg1 * 4;
            sp1C = temp_a1;
            sp24 = temp_v0;
            sp2C = temp_a3;
            func_800A8578(temp_v0_2 | 2, temp_a1, temp_v0, temp_a3);
        }
        *temp_a1 = temp_v0;
        D_800E0110[arg1] = arg0;
    } else {
        temp_a1_2 = &D_800DF690[arg1];
        temp_v0_3 = *temp_a1_2;
        if (temp_v0_3 != -1) {
            sp20 = arg1 * 4;
            sp1C = temp_a1_2;
            sp24 = temp_v0;
            sp2C = temp_a3;
            func_800A8578(temp_v0_3 | 2, temp_a1_2, temp_v0, temp_a3);
        }
        *temp_a1_2 = temp_v0;
        D_800DFF50[arg1] = arg0;
    }
    return temp_a3;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A9C78.s")
#endif

#ifdef MIPS_TO_C

void func_800A9D64(s32 arg0) {
    s32 sp1C;
    u32 *sp18;
    u32 *temp_v1;
    u32 *temp_v1_2;
    u32 temp_a1;
    u32 temp_a1_2;

    temp_v1 = &D_800DF690[arg0];
    temp_a1 = *temp_v1;
    if (temp_a1 != -1) {
        sp1C = arg0 * 4;
        sp18 = temp_v1;
        func_800A8578(temp_a1 | 2, temp_a1, -1);
        *temp_v1 = -1;
    }
    temp_v1_2 = &D_800DF850[arg0];
    temp_a1_2 = *temp_v1_2;
    if (temp_a1_2 != -1) {
        sp18 = temp_v1_2;
        func_800A8578(temp_a1_2 | 2, temp_a1_2, -1);
        *temp_v1_2 = -1;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A9D64.s")
#endif

#ifdef MIPS_TO_C

void func_800A9DE4(s32 arg0, f32 arg1) {
    u32 temp_v0;

    temp_v0 = omCurrentObj->objId;
    if ((arg0 != D_800DFF50[temp_v0]) && (arg0 != D_800E0110[temp_v0])) {
        if (func_800A9B48(arg1) != 0) {
            func_800AEEB4(arg1, *D_800DF850[omCurrentObj->objId], arg1);
            return;
        }
        func_800AEE20(arg1, *D_800DF690[omCurrentObj->objId], arg1);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A9DE4.s")
#endif

#ifdef MIPS_TO_C

void func_800A9EA4(void) {
    func_800A9DE4(0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A9EA4.s")
#endif

#ifdef MIPS_TO_C

void func_800A9EC4(s32 arg0, f32 arg1, u16 arg2) {
    u32 temp_v0;

    temp_v0 = omCurrentObj->objId;
    if ((arg0 != D_800DFF50[temp_v0]) && (arg0 != D_800E0110[temp_v0])) {
        if (func_800A9B48(arg1) != 0) {
            func_800AEEB4(arg1, *D_800DF850[omCurrentObj->objId], arg1);
            func_800AF09C(arg2);
            return;
        }
        func_800AEE20(arg1, *D_800DF690[omCurrentObj->objId], arg1);
        func_800AEFFC(arg2);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A9EC4.s")
#endif

#ifdef MIPS_TO_C

void func_800A9F98(f32 arg1) {
    if (func_800A9B48() != 0) {
        func_800AEEB4(*D_800DF850[omCurrentObj->objId], arg1);
        return;
    }
    func_800AEE20(*D_800DF690[omCurrentObj->objId], arg1);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A9F98.s")
#endif

#ifdef MIPS_TO_C

void func_800AA018(void) {
    func_800A9F98(0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800AA018.s")
#endif

#ifdef MIPS_TO_C

void func_800AA038(f32 arg1, s32 arg2) {
    if (func_800A9C78(arg2) != 0) {
        func_800AEFA4(*D_800DF850[arg2], arg1, *(&D_800DE350 + (arg2 * 4)), arg2);
        return;
    }
    func_800AEF0C(*D_800DF690[arg2], arg1, *(&D_800DE350 + (arg2 * 4)), arg2);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800AA038.s")
#endif

#ifdef MIPS_TO_C

void func_800AA0C4(f32 arg1) {
    if (func_800A9B48() != 0) {
        func_800AEEB4(*D_800DF850[omCurrentObj->objId], arg1);
        func_800AF09C(1);
    } else {    
        func_800AEE20(*D_800DF690[omCurrentObj->objId], arg1);
        func_800AF27C();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800AA0C4.s")
#endif

#ifdef MIPS_TO_C

void func_800AA154(void) {
    func_800AA0C4(0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800AA154.s")
#endif

void func_800AA174(void) {
    ((GObj_3C *)omCurrentObj->data)->posVec.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    ((GObj_3C *)omCurrentObj->data)->posVec.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    ((GObj_3C *)omCurrentObj->data)->posVec.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    ((GObj_3C *)omCurrentObj->data)->angleVec.x = gEntitiesAngleXArray[omCurrentObj->objId];
    ((GObj_3C *)omCurrentObj->data)->angleVec.y = gEntitiesAngleYArray[omCurrentObj->objId];
    ((GObj_3C *)omCurrentObj->data)->angleVec.z = gEntitiesAngleZArray[omCurrentObj->objId];
    ((GObj_3C *)omCurrentObj->data)->scaleVec.x = gEntitiesScaleXArray[omCurrentObj->objId];
    ((GObj_3C *)omCurrentObj->data)->scaleVec.y = gEntitiesScaleYArray[omCurrentObj->objId];
    ((GObj_3C *)omCurrentObj->data)->scaleVec.z = gEntitiesScaleZArray[omCurrentObj->objId];
}

#ifdef MIPS_TO_C

void func_800AA2A0(void) {
    func_800A9760();
    func_800AA174();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800AA2A0.s")
#endif

#ifdef MIPS_TO_C

void func_800AA2C8(void) {
    func_800A9864();
    func_800AA174();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800AA2C8.s")
#endif

#ifdef MIPS_TO_C

void func_800AA2F0(f32 arg1) {
    if (func_800A9B48() != 0) {
        func_800B2288(D_800DF850[omCurrentObj->objId], arg1);
        return;
    }
    func_800B21FC(D_800DF690[omCurrentObj->objId], arg1);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800AA2F0.s")
#endif

#ifdef MIPS_TO_C

s32 func_800AA368(void *arg0) {
    u32 *temp_v1;
    u32 temp_a1;

    if (arg0->unk74 == -3.4028235e38f) {
        temp_a1 = omCurrentObj->objId;
        temp_v1 = *(&D_800DFA10 + (temp_a1 * 4));
        gSegment4StartArray[temp_a1] = temp_v1;
        *(&D_800DFA10 + (omCurrentObj->objId * 4)) = temp_v1->unk0;
        *(&D_800DFD90 + (omCurrentObj->objId * 4)) = temp_v1->unk4;
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800AA368.s")
#endif

#ifdef MIPS_TO_C

void func_800AA3F0(void *arg0) {
    u32 *temp_v0;
    u32 temp_a0;

loop_1:
    if (arg0->unk74 != -3.4028235e38f) {
        ohSleep(1);
        goto loop_1;
    }
    temp_a0 = omCurrentObj->objId;
    temp_v0 = *(&D_800DFA10 + (temp_a0 * 4));
    gSegment4StartArray[temp_a0] = temp_v0;
    *(&D_800DFA10 + (omCurrentObj->objId * 4)) = temp_v0->unk0;
    *(&D_800DFD90 + (omCurrentObj->objId * 4)) = temp_v0->unk4;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800AA3F0.s")
#endif

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

#ifdef MIPS_TO_C

void func_800AA5C4(s32 arg0, ? arg1, f32 arg2) {
    func_800AA49C(arg2, omCurrentObj->unk3C->unk10, arg0, 0, arg1, arg2);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800AA5C4.s")
#endif

#ifdef MIPS_TO_C

void func_800AA608(void *arg0, s32 arg1, ? arg2, u32 arg3, f32 arg4) {
    u32 *sp34;
    u32 **sp30;
    u32 **temp_a2;
    u32 *temp_t0;
    u32 *temp_v0;
    u32 *var_a3;
    u32 temp_v1;

    D_800E02D0[omCurrentObj->objId] = arg3;
    temp_a2 = *(&D_800D00C4 + ((arg3 >> 0x10) * 4)) + ((arg3 & 0xFFFF) * 4);
    temp_t0 = *temp_a2;
    if (temp_t0 != NULL) {
        gSegment4StartArray[omCurrentObj->objId] = temp_t0;
        sp34 = temp_t0;
        func_800A8564(*temp_a2, 1, temp_a2);
        var_a3 = sp34;
    } else {
        sp30 = temp_a2;
        temp_v0 = func_800A9250(arg3, 3, temp_a2);
        *temp_a2 = temp_v0;
        var_a3 = temp_v0;
        gSegment4StartArray[omCurrentObj->objId] = temp_v0;
    }
    *(&D_800DFA10 + (omCurrentObj->objId * 4)) = var_a3->unk0;
    *(&D_800DFD90 + (omCurrentObj->objId * 4)) = var_a3->unk4;
    func_800A9B48(arg1);
    temp_v1 = omCurrentObj->objId;
    func_800B1FD0(arg0, *D_800DF690[temp_v1], arg2, *(&D_800DFA10 + (temp_v1 * 4)), arg4);
loop_4:
    if (arg0->unk74 != -3.4028235e38f) {
        ohSleep(1);
        goto loop_4;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800AA608.s")
#endif

#ifdef MIPS_TO_C

void func_800AA78C(s32 arg0, s32 arg1, f32 arg2) {
    func_800AA608(arg2, omCurrentObj->unk3C->unk10, arg0, 0, arg1, arg2);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800AA78C.s")
#endif

#ifdef MIPS_TO_C

void func_800AA7D0(f32 arg1, u16 arg2) {
    if (func_800A9B48() != 0) {
        func_800AEEB4(*D_800DF850[omCurrentObj->objId], arg1);
        func_800AF09C(arg2);
        return;
    }
    func_800AEE20(*D_800DF690[omCurrentObj->objId], arg1);
    func_800AEFFC(arg2);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800AA7D0.s")
#endif

#ifdef MIPS_TO_C

void func_800AA864(? arg1) {
    func_800AA7D0(0, arg1);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800AA864.s")
#endif

// Is current obj's model loaded?
#ifdef MIPS_TO_C
s32 func_800AA888(u32 model) {
    if (gSegment4StartArray[omCurrentObj->objId] == *(*(&D_800D00C4 + ((model >> 0x10) * 4)) + ((model & 0xFFFF) * 4))) {
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800AA888.s")
#endif

extern u32 *D_800D00C4[][2];
// Is model loaded?
#ifdef MIPS_TO_C
s32 func_800AA8E4(s32 track, u32 model) {
    if (gSegment4StartArray[track] == D_800D00C4[model >> 0x10][model & 0xFFFF]) {
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800AA8E4.s")
#endif

#ifdef MIPS_TO_C
s32 func_800AA934(s32 arg0) {
    if (arg0 == D_800DFF50[omCurrentObj->objId]) {
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800AA934.s")
#endif

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

#ifdef MIPS_TO_C

void func_800AAB3C(s32 *arg0, ? arg3, f32 arg4) {
    struct LayoutNode *temp_s0;

    func_800AA96C(arg3, arg3, arg4);
    temp_s0 = D_800DFBD0[omCurrentObj->objId][*arg0];
loop_1:
    if ((bitwise f32) temp_s0->unk74 != -3.4028235e38f) {
        ohSleep(1);
        goto loop_1;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800AAB3C.s")
#endif

#ifdef MIPS_TO_C
void func_800AABD4(s32 *arg0, f32 arg1, f32 arg2) {
    s32 *var_a1;
    s32 *var_a1_2;
    s32 var_v1;
    s32 var_v1_2;
    void *var_a0;

    if (arg1 != 65535.0f) {
        var_v1 = *arg0;
        var_a1 = arg0;
        if (var_v1 != -1) {
            do {
                var_a1 += 4;
                D_800DFBD0[omCurrentObj->objId][var_v1]->unk78 = (bitwise u32) arg1;
                var_v1 = *var_a1;
            } while (var_v1 != -1);
        }
    }
    if (arg2 != 65535.0f) {
        var_v1_2 = *arg0;
        var_a1_2 = arg0;
        if (var_v1_2 != -1) {
            do {
                var_a0 = D_800DFBD0[omCurrentObj->objId][var_v1_2]->unk80;
                if (var_a0 != NULL) {
                    do {
                        var_a0->unk9C = arg2;
                        var_a0 = var_a0->unk0;
                    } while (var_a0 != NULL);
                }
                var_v1_2 = var_a1_2->unk4;
                var_a1_2 += 4;
            } while (var_v1_2 != -1);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800AABD4.s")
#endif

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
            temp_v0 = func_8000BE90(var_s2);
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
                func_8000C10C(temp_s2, temp_a1, arg3);
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
                                func_8000C144(var_s0_2, temp_a1_2, arg3);
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

#ifdef MIPS_TO_C

void func_800AAF04(? arg3) {
    func_800AACC8(arg3, arg3);
    func_800AF27C();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800AAF04.s")
#endif

#ifdef MIPS_TO_C

void func_800AAF34(s32 arg0, s32 arg1, s32 arg2) {
    s32 sp20;
    s32 *sp1C;
    s32 *temp_v1;
    s32 temp_a3;
    s32 temp_v0;
    s32 temp_v0_2;

    temp_a3 = ((arg0 - 0xA) >> 1) * 4;
    temp_v1 = temp_a3 + &D_800D7A00;
    temp_v0 = *temp_v1;
    if (temp_v0 != 0) {
        sp1C = temp_v1;
        sp20 = temp_a3;
        func_800A8578(temp_v0 | 2, temp_a3);
        *temp_v1 = 0;
    }
    sp1C = temp_v1;
    sp20 = temp_a3;
    temp_v0_2 = func_800A94F4(arg1);
    *temp_v1 = temp_v0_2;
    func_8000FE2C(*(&D_800D79D8 + temp_a3), *temp_v0_2, arg2, temp_a3);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800AAF34.s")
#endif

#ifdef MIPS_TO_C

void func_800AAFC4(s32 arg0, ? arg2) {
    void *temp_s0;

    func_800AAF34(arg2, arg2);
    temp_s0 = *(&D_800D79D8 + (((arg0 - 0xA) >> 1) * 4));
loop_1:
    if (temp_s0->unk74 != -3.4028235e38f) {
        ohSleep(1);
        goto loop_1;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800AAFC4.s")
#endif

#ifdef MIPS_TO_C

void func_800AB040(s32 arg0) {
    void *temp_s0;

    temp_s0 = *(&D_800D79D8 + (((arg0 - 0xA) >> 1) * 4));
loop_1:
    if (temp_s0->unk74 != -3.4028235e38f) {
        ohSleep(1);
        goto loop_1;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800AB040.s")
#endif

#ifdef MIPS_TO_C

void func_800AB0A8(s32 arg0, f32 arg1) {
    (*(&D_800D79D8 + (((arg0 - 0xA) >> 1) * 4)))->unk78 = arg1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800AB0A8.s")
#endif

#ifdef MIPS_TO_C

void func_800AB0CC(s32 arg0) {
    (*(&D_800D79D8 + (((arg0 - 0xA) >> 1) * 4)))->unk74 = -3.4028235e38f;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800AB0CC.s")
#endif

#ifdef MIPS_TO_C
s32 func_800AB0F4(GObj *g) {
    return gSegment4StartArray[g->objId][2];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800AB0F4.s")
#endif

void func_800AB110(GObj *g) {

}

void func_800AB118(GObj *g) {

}

void func_800AB120(GObj *g) {
    gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[g->objId]);
    func_800141D4(g);
}

void func_800AB174(GObj *g) {
    gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[g->objId]);
    gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[g->objId]);
    func_80014768(g);
}

void func_800AB1F0(GObj *g) {
    gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[g->objId]);
    func_80014B4C(g);
}

void func_800AB244(GObj *g) {
    gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[g->objId]);
    gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[g->objId]);
    func_80014FA4(g);
}

void func_800AB2C0(GObj *g) {
    gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[g->objId]);
    func_800143A4(g);
}

void func_800AB314(GObj *g) {
    gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[g->objId]);
    gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[g->objId]);
    func_80014AD4(g);
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
