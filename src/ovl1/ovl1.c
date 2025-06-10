#include <ultra64.h>

#include "GObj.h"
#include "common.h"
#include "main/anim.h"
#include "main/gtl.h"
#include "main/object_manager.h"

// this file
extern s8 D_800BE3E0, D_800BE3E4;
extern u16 D_800D6AE2;
extern s32 D_800D6AE4;
extern u16 D_800D6AE8;
extern s16 D_800D6AEA;
extern s32 D_800D6AEC;
extern u16 D_800BE3E8;
extern u32 D_800D6A14[];

#ifdef MIPS_TO_C

s32 func_8009B550(s32 arg0, ? arg1) {
    s32 *temp_v0;
    s32 var_s0;

    D_800D6AEC = 0;
    var_s0 = 0;
    if (arg0 > 0) {
loop_1:
        temp_v0 = gtlMalloc(arg1, 4);
        if (temp_v0 == NULL) {

        } else {
            var_s0 += 1;
            *temp_v0 = D_800D6AEC;
            D_800D6AEC = temp_v0;
            if (var_s0 == arg0) {
                goto block_4;
            }
            goto loop_1;
        }
    } else {
block_4:
        D_800D6AE4 = 0;
        D_800D6AEA = 0;
    }
    return var_s0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009B550.s")
#endif

#ifdef MIPS_TO_C

s32 func_8009B5E8(s32 arg0, s32 arg1) {
    s16 temp_v0;
    s32 temp_v1;
    u16 temp_t0;

    temp_v1 = D_800D6AEC;
    if (temp_v1 != 0) {
        D_800D6AEC = temp_v1->unk0;
        temp_v1->unk2A = 1;
        temp_v1->unk28 = arg0 & 0xFF;
        temp_v1->unkB8 = arg1 & 0xFFFF;
        temp_v1->unkB4 = 0;
        temp_v1->unkBA = 0;
        temp_v1->unk29 = D_800BE3EC;
        temp_v1->unkC = 0.0f;
        temp_v1->unk8 = 0.0f;
        temp_v1->unk4 = 0.0f;
        temp_v1->unk18 = 0.0f;
        temp_v1->unk14 = 0.0f;
        temp_v1->unk10 = 0.0f;
        temp_v1->unk24 = 1.0f;
        temp_v1->unk20 = 1.0f;
        temp_v1->unk1C = 1.0f;
        temp_t0 = D_800D6AE4 + 1;
        temp_v0 = temp_t0 & 0xFFFF;
        D_800D6AE4 = temp_t0;
        if (D_800D6AEA < temp_v0) {
            D_800D6AEA = temp_v0;
        }
    }
    return temp_v1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009B5E8.s")
#endif

#ifdef MIPS_TO_C
void func_8009B69C(s32 *arg0) {
    ? (*temp_v0)();

    temp_v0 = arg0->unkB4;
    if (temp_v0 != NULL) {
        temp_v0();
    }
    arg0->unk0 = D_800D6AEC;
    D_800D6AEC = arg0;
    D_800D6AE4 -= 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009B69C.s")
#endif

#ifdef MIPS_TO_C

void func_8009B6F0(void *arg0, s32 arg1) {
    arg0->unk60 = func_8009B5E8(arg1 & 0xFF, arg0->unk4, arg1);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009B6F0.s")
#endif

#ifdef MIPS_TO_C

void func_8009B72C(void *arg0, s32 arg1) {
    arg0->unk4C = func_8009B5E8(arg1 & 0xFF, arg0->unk4, arg1);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009B72C.s")
#endif

#ifdef MIPS_TO_C

void func_8009B768(s32 arg0, s32 *arg1, s32 *arg2) {
    s32 *temp_a0;
    s32 *temp_t0;
    s32 *var_a1;
    s32 *var_a3;
    s32 temp_a1;
    s32 temp_t5;
    s32 temp_t6;
    s32 temp_t7;
    s32 temp_t7_2;
    s32 temp_t9;
    s32 var_a1_2;
    s32 var_t2;
    s32 var_t2_2;
    s32 var_t2_3;
    s32 var_v1;
    s32 var_v1_2;
    u16 temp_t2;
    u32 *var_t0;
    u32 var_a3_2;
    u32 var_a3_3;
    u32 var_a3_4;
    u32 var_t1;
    void **temp_v0;
    void *temp_t3;
    void *temp_t3_2;
    void *temp_t3_3;
    void *temp_t3_4;

    if (arg0 < 8) {
        temp_a1 = arg0 * 4;
        temp_t0 = temp_a1 + &D_800D6A38;
        *temp_t0 = *arg1;
        temp_a0 = temp_a1 + &D_800D6A58;
        *temp_a0 = *arg2;
        *(&D_800D6A78 + temp_a1) = arg1 + 4;
        temp_v0 = temp_a1 + &D_800D6A98;
        *temp_v0 = arg2 + 4;
        var_v1 = 1;
        if (*temp_t0 > 0) {
            var_a1 = arg1 + 4;
            do {
                temp_t9 = *var_a1;
                var_v1 += 1;
                var_a1 += 4;
                var_a1->unk-4 = temp_t9 + arg1;
            } while (*temp_t0 >= var_v1);
            var_v1 = 1;
        }
        var_a3 = arg2 + 4;
        if (*temp_a0 > 0) {
            do {
                temp_t7 = *var_a3;
                var_v1 += 1;
                var_a3 += 4;
                var_a3->unk-4 = temp_t7 + arg2;
            } while (*temp_a0 >= var_v1);
        }
        var_v1_2 = 0;
        if (*temp_a0 > 0) {
            var_a1_2 = 0;
            do {
                var_a3_2 = 0;
                var_t2 = 0;
                var_t0 = *(*temp_v0 + var_a1_2);
                var_t1 = *var_t0;
                if (var_t1 != 0) {
                    do {
                        temp_t3 = var_t0 + var_t2;
                        temp_t6 = temp_t3->unk18;
                        var_a3_2 += 1;
                        var_t2 += 4;
                        temp_t3->unk18 = temp_t6 + arg2;
                        var_t0 = *(*temp_v0 + var_a1_2);
                        var_t1 = *var_t0;
                    } while (var_a3_2 < var_t1);
                }
                if (var_t0->unk4 == 2) {
                    temp_t3_2 = var_t0 + (var_t1 * 4);
                    if (var_t0->unk16 & 1) {
                        temp_t3_2->unk18 = temp_t3_2->unk18 + arg2;
                    } else {
                        temp_t2 = var_t0->unk14;
                        if (temp_t2 != 0) {
                            var_a3_3 = var_t1;
                            if (var_t1 < (temp_t2 + var_t1)) {
                                var_t2_2 = var_t1 * 4;
                                do {
                                    temp_t3_3 = var_t0 + var_t2_2;
                                    temp_t7_2 = temp_t3_3->unk18;
                                    var_a3_3 += 1;
                                    var_t2_2 += 4;
                                    temp_t3_3->unk18 = temp_t7_2 + arg2;
                                    var_t0 = *(*temp_v0 + var_a1_2);
                                } while (var_a3_3 < (var_t0->unk14 + var_t0->unk0));
                            }
                        } else {
                            var_a3_4 = var_t1;
                            if (var_t1 < (var_t1 * 2)) {
                                var_t2_3 = var_t1 * 4;
                                do {
                                    temp_t3_4 = var_t0 + var_t2_3;
                                    temp_t5 = temp_t3_4->unk18;
                                    var_a3_4 += 1;
                                    var_t2_3 += 4;
                                    temp_t3_4->unk18 = temp_t5 + arg2;
                                    var_t0 = *(*temp_v0 + var_a1_2);
                                } while (var_a3_4 < (*var_t0 * 2));
                            }
                        }
                    }
                }
                var_v1_2 += 1;
                var_a1_2 += 4;
            } while (var_v1_2 < *temp_a0);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009B768.s")
#endif

#ifdef MIPS_TO_C

GObj *func_8009B99C(s32 arg0) {
    ? *temp_v0;
    ? *var_v0;
    s32 var_s0;

    D_800D69C0 = NULL;
    var_v0 = &D_800D69C8;
    do {
        var_v0 += 4;
        var_v0->unk-4 = 0;
    } while (var_v0 < &D_800D6A08);
    var_s0 = arg0 - 1;
    if (var_s0 >= 0) {
loop_3:
        temp_v0 = gtlMalloc(0x64, 4);
        if (temp_v0 == NULL) {
            return NULL;
        }
        var_s0 -= 1;
        *temp_v0 = D_800D69C0;
        D_800D69C0 = temp_v0;
        if (var_s0 < 0) {
            goto block_6;
        }
        goto loop_3;
    }
block_6:
    D_800D6AE0 = 0;
    D_800D6AE6 = 0;
    if (ohFindById(-6) != 0) {
        return NULL;
    }
    return HS64_omMakeGObj(-6, func_8009E834, 0, 0x80000000);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009B99C.s")
#endif

#ifdef MIPS_TO_C

void func_8009BA68(s32 arg0) {
    D_800D6A10 = arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009BA68.s")
#endif

#ifdef MIPS_TO_C

void *func_8009BA74(void **arg0, s8 arg1, s16 arg2, s32 arg3, s32 arg4, s32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 arg9, f32 argA, f32 argB, f32 argC, f32 argD, f32 argE, s32 argF, void *arg10) {
    s32 temp_v0;
    u16 temp_t4;
    u16 temp_t7;
    void **temp_v0_2;
    void *temp_t5;
    void *temp_v1;

    temp_v1 = D_800D69C0;
    if (temp_v1 == NULL) {
        return NULL;
    }
    temp_t7 = D_800D6AE0 + 1;
    temp_v0 = temp_t7 & 0xFFFF;
    D_800D6AE0 = temp_t7;
    if (D_800D6AE6 < temp_v0) {
        D_800D6AE6 = temp_v0;
    }
    if (arg10 != NULL) {
        temp_v1->unk4 = arg10->unk4;
    } else {
        temp_t4 = D_800BE3E8 + 1;
        D_800BE3E8 = temp_t4;
        temp_v1->unk4 = temp_t4;
    }
    if (arg10 != NULL) {
        temp_t5 = arg10->unk4C;
        temp_v1->unk60 = temp_t5;
        if (temp_t5 != NULL) {
            temp_t5->unk2A = temp_t5->unk2A + 1;
        }
    } else {
        temp_v1->unk60 = NULL;
    }
    D_800D69C0 = temp_v1->unk0;
    if (arg0 == NULL) {
        temp_v0_2 = ((arg1 >> 3) * 4) + &D_800D69C8;
        temp_v1->unk0 = *temp_v0_2;
        *temp_v0_2 = temp_v1;
    } else {
        temp_v1->unk0 = *arg0;
        *arg0 = temp_v1;
    }
    temp_v1->unk8 = arg1;
    temp_v1->unk6 = arg2;
    temp_v1->unkA = arg3 & 0xFFFF;
    temp_v1->unk24 = arg6;
    temp_v1->unk28 = arg7;
    temp_v1->unk2C = arg8;
    temp_v1->unk30 = arg9;
    temp_v1->unk34 = argA;
    temp_v1->unk38 = argB;
    temp_v1->unk44 = argC;
    temp_v1->unk3C = argD;
    temp_v1->unk40 = argE;
    temp_v1->unk1C = 0;
    temp_v1->unk1E = 0;
    temp_v1->unk22 = arg5 + 1;
    temp_v1->unk18 = arg4;
    if (argF != 0) {
        temp_v1->unk6 = arg2 | 0x10;
    }
    if (arg4 != 0) {
        temp_v1->unk10 = 1;
    } else {
        temp_v1->unk10 = 0;
    }
    temp_v1->unkC = 0xFF;
    temp_v1->unk4F = 0xFF;
    temp_v1->unk4E = 0xFF;
    temp_v1->unk4D = 0xFF;
    temp_v1->unk4C = 0xFF;
    temp_v1->unk56 = 0;
    temp_v1->unk55 = 0;
    temp_v1->unk54 = 0;
    temp_v1->unkB = 0;
    temp_v1->unk57 = 0;
    temp_v1->unk16 = 0;
    temp_v1->unk14 = 0;
    temp_v1->unk12 = 0;
    temp_v1->unk5C = arg10;
    return temp_v1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009BA74.s")
#endif

#ifdef MIPS_TO_C

s32 func_8009BC4C(s32 arg1, s32 arg2) {
    s32 temp_v0_2;
    s32 temp_v1;
    u16 temp_a3;
    void *temp_v0;

    temp_v0_2 = arg1 & 7;
    if (temp_v0_2 >= 8) {
        return 0;
    }
    temp_v1 = temp_v0_2 * 4;
    if (arg2 >= *(&D_800D6A38 + temp_v1)) {
        return 0;
    }
    temp_v0 = *(*(&D_800D6A78 + temp_v1) + (arg2 * 4));
    temp_a3 = temp_v0->unk2;
    return func_8009BA74(temp_v0->unkA, temp_a3, temp_v0 + 0x3C, temp_v0->unk6, 0.0f, 0.0f, 0.0f, temp_v0->unk14, temp_v0->unk18, temp_v0->unk1C, temp_v0->unk2C, temp_v0->unkC, temp_v0->unk10, (*(*(&D_800D6A98 + temp_v1) + (temp_a3 * 4)))->unk16, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009BC4C.s")
#endif

#ifdef MIPS_TO_C

s32 func_8009BD3C(s32 arg0, ? arg1, u16 arg2, s32 arg3, s32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 arg9, f32 argA, f32 argB, f32 argC, f32 argD, s32 argE, s32 argF) {
    s32 sp54;
    s32 temp_v0;
    s32 var_a0;

    temp_v0 = func_8009BA74(0, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, argA, argB, argC, argD, argE, argF);
    var_a0 = temp_v0;
    if (temp_v0 != 0) {
        sp54 = temp_v0;
        func_8009C4E0(var_a0, 0, arg0 >> 3);
        var_a0 = sp54;
    }
    return var_a0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009BD3C.s")
#endif

#ifdef MIPS_TO_C

s32 func_8009BE04(s32 arg0, ? arg1) {
    s32 sp1C;
    s32 temp_v0;
    s32 var_a0;

    temp_v0 = func_8009BC4C(0, arg0, arg1);
    var_a0 = temp_v0;
    if (temp_v0 != 0) {
        sp1C = temp_v0;
        func_8009C4E0(var_a0, 0, arg0 >> 3);
        var_a0 = sp1C;
    }
    return var_a0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009BE04.s")
#endif

#ifdef MIPS_TO_C

s32 func_8009BE54(s32 arg0, s32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7) {
    s32 sp54;
    s32 temp_v0;
    s32 temp_v0_3;
    s32 temp_v1;
    s32 var_a0;
    u16 temp_a3;
    void *temp_v0_2;

    temp_v0 = arg0 & 7;
    if (temp_v0 >= 8) {
        return 0;
    }
    temp_v1 = temp_v0 * 4;
    if (arg1 >= *(&D_800D6A38 + temp_v1)) {
        return 0;
    }
    temp_v0_2 = *(*(&D_800D6A78 + temp_v1) + (arg1 * 4));
    temp_a3 = temp_v0_2->unk2;
    temp_v0_3 = func_8009BA74(arg2, arg3, 0, arg0, temp_v0_2->unkA, temp_a3, temp_v0_2 + 0x3C, temp_v0_2->unk6, arg2, arg3, arg4, arg5, arg6, arg7, temp_v0_2->unk2C, temp_v0_2->unkC, temp_v0_2->unk10, (*(*(&D_800D6A98 + temp_v1) + (temp_a3 * 4)))->unk16, 0);
    var_a0 = temp_v0_3;
    if (temp_v0_3 != 0) {
        sp54 = temp_v0_3;
        func_8009C4E0(var_a0, 0, arg0 >> 3);
        var_a0 = sp54;
    }
    return var_a0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009BE54.s")
#endif

#ifdef MIPS_TO_C

void func_8009BF7C(s32 arg0, ? arg1) {
    func_8009BC4C(0, arg0, arg1);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009BF7C.s")
#endif

#ifdef MIPS_TO_C

void func_8009BFA8(void *arg0) {
    if (arg0 != NULL) {
        func_8009C4E0(0, arg0->unk8 >> 3);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009BFA8.s")
#endif

#ifdef MIPS_TO_C

void func_8009BFD4(void *arg0) {
    ? *sp18;
    ? **temp_a2;
    ? *var_v0;
    ? *var_v1;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_v1;

    temp_a2 = ((arg0->unk8 >> 3) * 4) + &D_800D69C8;
    var_v0 = *temp_a2;
    var_v1 = NULL;
    if (var_v0 != NULL) {
loop_1:
        if (var_v0 == arg0) {
            if (var_v1 == NULL) {
                *temp_a2 = *var_v0;
            } else {
                *var_v1 = *var_v0;
            }
            temp_v1 = arg0->unk5C;
            if ((temp_v1 != NULL) && (arg0->unk6 & 4) && (temp_v1->unk9 == 2)) {
                temp_v1->unk54 = temp_v1->unk54 - 1;
            }
            temp_a1 = arg0->unk60;
            if (temp_a1 != NULL) {
                temp_a1->unk2A = temp_a1->unk2A - 1;
                temp_a1_2 = arg0->unk60;
                if (temp_a1_2->unk2A == 0) {
                    sp18 = var_v0;
                    func_8009B69C(temp_a1_2, temp_a1_2, temp_a2);
                }
            }
            *var_v0 = D_800D69C0;
            D_800D69C0 = var_v0;
            D_800D6AE0 -= 1;
            return;
        }
        var_v1 = var_v0;
        var_v0 = *var_v0;
        if (var_v0 == NULL) {

        } else {
            goto loop_1;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009BFD4.s")
#endif

#ifdef MIPS_TO_C

void func_8009C0E4(void) {
    ? **var_s2;
    ? *temp_s1;
    ? *var_s0;

    var_s2 = &D_800D69C8;
    do {
        var_s0 = *var_s2;
        if (var_s0 != NULL) {
            do {
                temp_s1 = *var_s0;
                func_8009BFD4(var_s0);
                var_s0 = temp_s1;
            } while (temp_s1 != NULL);
        }
        var_s2 += 4;
    } while (var_s2 != &D_800D6A08);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009C0E4.s")
#endif

#ifdef MIPS_TO_C
void *func_8009C154(void *arg0, f32 *arg1) {
    u8 sp7;
    u8 sp6;
    u8 sp5;
    u8 sp4;

    sp4 = arg0->unk0;
    sp5 = arg0->unk1;
    sp6 = arg0->unk2;
    sp7 = arg0->unk3;
    *arg1 = sp4;
    return arg0 + 4;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009C154.s")
#endif

#ifdef MIPS_TO_C
u8 *func_8009C18C(u8 *arg0, s16 *arg1) {
    u8 *var_a0;
    u8 temp_v0;
    u8 var_v1;

    temp_v0 = *arg0;
    var_a0 = arg0 + 1;
    var_v1 = temp_v0;
    if (temp_v0 & 0x80) {
        var_v1 = (*var_a0 + ((temp_v0 & 0x7F) << 8)) & 0xFFFF;
        var_a0 += 1;
    }
    *arg1 = var_v1 + 1;
    return var_a0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009C18C.s")
#endif

#ifdef MIPS_TO_C

void func_8009C1C8(void *arg0, f32 arg1) {
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f12;
    f32 temp_f20;
    f32 temp_f20_2;
    f32 temp_f20_3;
    f32 temp_f22;
    f32 temp_f22_2;
    f32 temp_f24;
    f32 temp_f24_2;
    f32 temp_f26;
    f32 temp_f2;

    temp_f20 = arg0->unk34;
    temp_f24 = arg0->unk38;
    temp_f22 = arg0->unk30;
    temp_f0 = atan2f(temp_f20, temp_f24);
    sp58 = temp_f0;
    temp_f26 = sinf(temp_f0);
    temp_f0_2 = cosf(sp58);
    sp4C = temp_f0_2;
    temp_f0_3 = atan2f(temp_f22, (temp_f20 * temp_f26) + (temp_f24 * temp_f0_2));
    sp54 = temp_f0_3;
    sp48 = sinf(temp_f0_3);
    sp44 = cosf(sp54);
    sp5C = sqrtf((temp_f22 * temp_f22) + (temp_f20 * temp_f20) + (temp_f24 * temp_f24));
    temp_f20_2 = random_f32() * 6.2831855f;
    temp_f24_2 = sinf(arg1) * sp5C;
    temp_f22_2 = cosf(temp_f20_2) * temp_f24_2;
    temp_f20_3 = sinf(temp_f20_2) * temp_f24_2;
    temp_f2 = cosf(arg1) * sp5C;
    temp_f12 = -temp_f22_2;
    arg0->unk30 = (temp_f22_2 * sp44) + (temp_f2 * sp48);
    arg0->unk34 = (temp_f12 * temp_f26 * sp48) + (temp_f20_3 * sp4C) + (temp_f2 * temp_f26 * sp44);
    arg0->unk38 = ((temp_f12 * sp4C * sp48) - (temp_f20_3 * temp_f26)) + (temp_f2 * sp4C * sp44);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009C1C8.s")
#endif

#ifdef MIPS_TO_C
void func_8009C350(void *arg0, void *arg1) {
    f32 sp24;
    f32 sp20;
    f32 sp1C;
    f32 sp18;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;

    if (arg1 != NULL) {
        temp_f16 = arg1->unk1C - arg0->unk24;
        temp_f18 = arg1->unk20 - arg0->unk28;
        sp1C = arg1->unk24 - arg0->unk2C;
        temp_f0 = arg0->unk30;
        temp_f2 = arg0->unk34;
        temp_f14 = arg0->unk38;
        sp20 = temp_f18;
        sp24 = temp_f16;
        temp_f2_2 = sqrtf((temp_f0 * temp_f0) + (temp_f2 * temp_f2) + (temp_f14 * temp_f14));
        temp_f12 = (temp_f16 * temp_f16) + (temp_f18 * temp_f18) + (sp1C * sp1C);
        if (temp_f12 != 0.0f) {
            sp18 = temp_f2_2;
            sp24 = temp_f16;
            sp20 = temp_f18;
            temp_f2_3 = temp_f2_2 / sqrtf(temp_f12);
            arg0->unk30 = temp_f16 * temp_f2_3;
            arg0->unk34 = temp_f18 * temp_f2_3;
            arg0->unk38 = sp1C * temp_f2_3;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009C350.s")
#endif

#ifdef MIPS_TO_C
void func_8009C44C(void *arg0, void *arg1, f32 arg2) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f2;

    if (arg1 != NULL) {
        temp_f0 = arg1->unk1C - arg0->unk24;
        temp_f2 = arg1->unk20 - arg0->unk28;
        temp_f12 = arg1->unk24 - arg0->unk2C;
        temp_f16 = (temp_f0 * temp_f0) + (temp_f2 * temp_f2) + (temp_f12 * temp_f12);
        if (temp_f16 != 0.0f) {
            temp_f14 = arg2 / temp_f16;
            arg0->unk30 = arg0->unk30 + (temp_f14 * temp_f0);
            arg0->unk34 = arg0->unk34 + (temp_f14 * temp_f2);
            arg0->unk38 = arg0->unk38 + (temp_f14 * temp_f12);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009C44C.s")
#endif

#ifdef MIPS_TO_C

? *func_8009C4E0(? *arg0, ? *arg1, s32 arg2) {
    u16 sp94;
    s32 sp88;
    f32 sp80;
    f32 sp7C;
    f32 sp70;
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    f32 sp50;
    f32 sp44;
    ? *sp2C;
    ? *sp28;
    ? *temp_a2;
    ? *temp_a2_2;
    ? *temp_a2_3;
    ? *temp_s1_5;
    ? *temp_s1_7;
    ? *temp_v0_16;
    ? *temp_v0_4;
    ? *temp_v0_8;
    ? *temp_v0_9;
    ? *temp_v1;
    ? *temp_v1_2;
    ? *temp_v1_3;
    ? *var_s0;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f10;
    f32 temp_f10_2;
    f32 temp_f10_3;
    f32 temp_f10_4;
    f32 temp_f10_5;
    f32 temp_f10_6;
    f32 temp_f10_7;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f16_3;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f4_3;
    f32 temp_f4_4;
    f32 temp_f4_5;
    f32 temp_f6;
    f32 temp_f6_2;
    f32 temp_f6_3;
    f32 temp_f6_4;
    f32 temp_f6_5;
    f32 temp_f6_6;
    f32 temp_f6_7;
    f32 temp_f6_8;
    f32 temp_f8;
    f32 temp_f8_2;
    f32 temp_f8_3;
    f32 temp_f8_4;
    f32 var_f0;
    f32 var_f0_2;
    f32 var_f10;
    f32 var_f10_2;
    f32 var_f10_3;
    f32 var_f10_4;
    f32 var_f12;
    f32 var_f16;
    f32 var_f18;
    f32 var_f18_2;
    f32 var_f2;
    f32 var_f4;
    f32 var_f4_2;
    f32 var_f6;
    f32 var_f6_2;
    f32 var_f6_3;
    f32 var_f6_4;
    f32 var_f6_5;
    f32 var_f8;
    f32 var_f8_2;
    f32 var_f8_3;
    s32 temp_a1;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_s0_3;
    s32 temp_s0_5;
    s32 temp_s0_7;
    s32 temp_v0_13;
    s32 temp_v0_18;
    s32 temp_v0_19;
    s32 temp_v0_20;
    s32 temp_v0_21;
    s32 temp_v0_22;
    s32 temp_v0_23;
    s32 temp_v0_24;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v1_6;
    s32 var_v1;
    s8 *temp_s1_3;
    s8 *temp_s1_4;
    s8 *temp_s1_6;
    s8 *temp_s1_8;
    u16 temp_a3;
    u16 temp_a3_2;
    u16 temp_t0_4;
    u16 temp_t1;
    u16 temp_t2_8;
    u16 temp_t2_9;
    u16 temp_t5;
    u16 temp_t6_5;
    u16 temp_t7_8;
    u16 temp_t8;
    u16 temp_v0;
    u16 temp_v0_12;
    u16 temp_v0_14;
    u16 temp_v0_17;
    u16 temp_v0_25;
    u16 var_v0;
    u8 *temp_a0_2;
    u8 *temp_a0_3;
    u8 *temp_s1;
    u8 *temp_s1_2;
    u8 *temp_v0_10;
    u8 *temp_v0_11;
    u8 *var_s1;
    u8 temp_a0;
    u8 temp_a0_4;
    u8 temp_a0_5;
    u8 temp_a1_2;
    u8 temp_a1_3;
    u8 temp_a2_4;
    u8 temp_a2_5;
    u8 temp_s0;
    u8 temp_s0_2;
    u8 temp_s0_4;
    u8 temp_s0_6;
    u8 temp_s0_8;
    u8 temp_s0_9;
    u8 temp_t0;
    u8 temp_t0_2;
    u8 temp_t0_3;
    u8 temp_t1_2;
    u8 temp_t2;
    u8 temp_t2_3;
    u8 temp_t2_4;
    u8 temp_t2_5;
    u8 temp_t2_6;
    u8 temp_t2_7;
    u8 temp_t3;
    u8 temp_t3_2;
    u8 temp_t4_2;
    u8 temp_t4_3;
    u8 temp_t4_4;
    u8 temp_t5_2;
    u8 temp_t5_3;
    u8 temp_t5_4;
    u8 temp_t6;
    u8 temp_t6_2;
    u8 temp_t6_3;
    u8 temp_t6_4;
    u8 temp_t7;
    u8 temp_t7_2;
    u8 temp_t7_4;
    u8 temp_t7_5;
    u8 temp_t7_6;
    u8 temp_t7_7;
    u8 temp_t8_2;
    u8 temp_t8_3;
    u8 temp_t8_4;
    u8 temp_v1_4;
    u8 temp_v1_5;
    void **temp_v1_7;
    void *temp_a0_6;
    void *temp_a0_7;
    void *temp_a0_8;
    void *temp_a2_6;
    void *temp_t2_2;
    void *temp_t4;
    void *temp_t7_3;
    void *temp_t9;
    void *temp_v0_15;
    void *temp_v0_5;

    if (arg0->unk6 & 0x800) {
        goto block_217;
    }
    temp_v0 = arg0->unk10;
    if (temp_v0 != 0) {
        temp_t8 = temp_v0 - 1;
        arg0->unk10 = temp_t8;
        if (!(temp_t8 & 0xFFFF)) {
            var_s1 = arg0->unk18 + arg0->unk1C;
loop_5:
            temp_a0 = *var_s1;
            var_s1 += 1;
            if (temp_a0 >= 0x80) {
                temp_v0_2 = temp_a0 & 0xF8;
                sp94 = 0;
                var_v1 = temp_v0_2 & 0xFF;
                if ((temp_v0_2 & 0xFF) >= 0x99) {
                    temp_v0_3 = temp_a0 & 0xF0;
                    temp_a1 = temp_v0_3 & 0xFF;
                    var_v1 = temp_v0_3 & 0xFF;
                    if ((temp_a1 != 0xC0) && (temp_a1 != 0xD0)) {
                        var_v1 = temp_a0 & 0xFF;
                    }
                }
                switch (var_v1) {
                    case 0x80:
                        if (temp_a0 & 1) {
                            var_s1 = func_8009C154(var_s1, arg0 + 0x24);
                        }
                        if (temp_a0 & 2) {
                            var_s1 = func_8009C154(var_s1, arg0 + 0x28);
                        }
                        if (temp_a0 & 4) {
                            var_s1 = func_8009C154(var_s1, arg0 + 0x2C);
                        }
                        goto block_154;
                    case 0x88:
                        if (temp_a0 & 1) {
                            var_s1 = func_8009C154(var_s1, &sp80);
                            arg0->unk24 = arg0->unk24 + sp80;
                        }
                        if (temp_a0 & 2) {
                            var_s1 = func_8009C154(var_s1, &sp80);
                            arg0->unk28 = arg0->unk28 + sp80;
                        }
                        if (temp_a0 & 4) {
                            var_s1 = func_8009C154(var_s1, &sp80);
                            arg0->unk2C = arg0->unk2C + sp80;
                        }
                        goto block_154;
                    case 0x90:
                        if (temp_a0 & 1) {
                            var_s1 = func_8009C154(var_s1, arg0 + 0x30);
                        }
                        if (temp_a0 & 2) {
                            var_s1 = func_8009C154(var_s1, arg0 + 0x34);
                        }
                        if (temp_a0 & 4) {
                            var_s1 = func_8009C154(var_s1, arg0 + 0x38);
                        }
                        goto block_154;
                    case 0x98:
                        if (temp_a0 & 1) {
                            var_s1 = func_8009C154(var_s1, &sp80);
                            arg0->unk30 = arg0->unk30 + sp80;
                        }
                        if (temp_a0 & 2) {
                            var_s1 = func_8009C154(var_s1, &sp80);
                            arg0->unk34 = arg0->unk34 + sp80;
                        }
                        if (temp_a0 & 4) {
                            var_s1 = func_8009C154(var_s1, &sp80);
                            arg0->unk38 = arg0->unk38 + sp80;
                        }
                        goto block_154;
                    case 0xA0:
                        var_s1 = func_8009C154(func_8009C18C(var_s1, arg0 + 0x12), arg0 + 0x48);
                        if (arg0->unk12 == 1) {
                            arg0->unk12 = 0;
                            arg0->unk44 = arg0->unk48;
                        }
                        goto block_154;
                    case 0xA1:
                        temp_t7 = var_s1->unk0;
                        var_s1 += 1;
                        arg0->unk6 = temp_t7;
                        goto block_154;
                    case 0xA2:
                        var_s1 = func_8009C154(var_s1, arg0 + 0x3C);
                        if (arg0->unk3C == 0.0f) {
                            arg0->unk6 = arg0->unk6 & ~1;
                        } else {
                            arg0->unk6 = arg0->unk6 | 1;
                        }
                        goto block_154;
                    case 0xA3:
                        var_s1 = func_8009C154(var_s1, arg0 + 0x40);
                        if (arg0->unk40 == 1.0f) {
                            arg0->unk6 = arg0->unk6 & 0xFFFD;
                        } else {
                            arg0->unk6 = arg0->unk6 | 2;
                        }
                        goto block_154;
                    case 0xA4:
                        temp_s0 = var_s1->unk0;
                        temp_t6 = var_s1->unk1;
                        var_s1 += 2;
                        temp_v0_4 = func_8009BC4C(arg0, arg0->unk8, (temp_s0 << 8) + temp_t6);
                        if (temp_v0_4 != NULL) {
                            temp_v0_4->unk24 = arg0->unk24;
                            temp_v0_4->unk28 = arg0->unk28;
                            temp_v0_4->unk2C = arg0->unk2C;
                            temp_v0_4->unk4 = arg0->unk4;
                            temp_v0_4->unk5C = arg0->unk5C;
                            temp_t9 = arg0->unk60;
                            temp_v0_4->unk60 = temp_t9;
                            if (temp_t9 != NULL) {
                                temp_t9->unk2A = temp_t9->unk2A + 1;
                            }
                            func_8009C4E0(temp_v0_4, arg0, arg0->unk8 >> 3);
                        }
                        goto block_154;
                    case 0xA5:
                        temp_s0_2 = var_s1->unk0;
                        temp_t2 = var_s1->unk1;
                        var_s1 += 2;
                        temp_v0_5 = func_800A19EC(arg0->unk8, (temp_s0_2 << 8) + temp_t2);
                        if (temp_v0_5 != NULL) {
                            temp_v0_5->unk14 = arg0->unk24;
                            temp_v0_5->unk18 = arg0->unk28;
                            temp_v0_5->unk1C = arg0->unk2C;
                            temp_v0_5->unk4 = arg0->unk4;
                            temp_t4 = arg0->unk60;
                            temp_v0_5->unk4C = temp_t4;
                            if (temp_t4 != NULL) {
                                temp_t4->unk2A = temp_t4->unk2A + 1;
                            }
                        }
                        goto block_154;
                    case 0xA6:
                        temp_t7_2 = var_s1->unk1;
                        temp_s0_3 = var_s1->unk0 << 8;
                        temp_v0_6 = (var_s1->unk2 << 8) + var_s1->unk3;
                        var_s1 += 4;
                        sp88 = temp_v0_6;
                        arg0->unk22 = (random_f32(temp_a0) * temp_v0_6) + (temp_s0_3 + temp_t7_2);
                        goto block_154;
                    case 0xA7:
                        temp_s0_4 = var_s1->unk0;
                        var_s1 += 1;
                        if (temp_s0_4 >= (random_f32(temp_a0) * 100.0f)) {
                            arg0->unk22 = 1;
                            var_v0 = var_s1 - arg0->unk18;
                        } else {
                            goto block_154;
                        }
                        break;
                    case 0xA8:
                        temp_s1 = func_8009C154(var_s1, &sp80);
                        arg0->unk24 = arg0->unk24 + ((2.0f * sp80 * random_f32()) - sp80);
                        temp_s1_2 = func_8009C154(temp_s1, &sp80);
                        arg0->unk28 = arg0->unk28 + ((2.0f * sp80 * random_f32()) - sp80);
                        var_s1 = func_8009C154(temp_s1_2, &sp80);
                        arg0->unk2C = arg0->unk2C + ((2.0f * sp80 * random_f32()) - sp80);
                        goto block_154;
                    case 0xA9:
                        var_s1 = func_8009C154(var_s1, &sp80);
                        func_8009C1C8(arg0, sp80);
                        goto block_154;
                    case 0xAA:
                        temp_t6_2 = var_s1->unk1;
                        temp_s0_5 = var_s1->unk0 << 8;
                        temp_v0_7 = (var_s1->unk2 << 8) + var_s1->unk3;
                        var_s1 += 4;
                        sp88 = temp_v0_7;
                        temp_v0_8 = func_8009BC4C(arg0, arg0->unk8, temp_s0_5 + temp_t6_2 + (temp_v0_7 * random_f32(temp_a0)));
                        if (temp_v0_8 != NULL) {
                            temp_v0_8->unk24 = arg0->unk24;
                            temp_v0_8->unk28 = arg0->unk28;
                            temp_v0_8->unk2C = arg0->unk2C;
                            temp_v0_8->unk4 = arg0->unk4;
                            temp_v0_8->unk5C = arg0->unk5C;
                            temp_t2_2 = arg0->unk60;
                            temp_v0_8->unk60 = temp_t2_2;
                            if (temp_t2_2 != NULL) {
                                temp_t2_2->unk2A = temp_t2_2->unk2A + 1;
                            }
                            func_8009C4E0(temp_v0_8, arg0, arg0->unk8 >> 3);
                        }
                        goto block_154;
                    case 0xAB:
                        var_s1 = func_8009C154(var_s1, &sp80);
                        arg0->unk30 = arg0->unk30 * sp80;
                        arg0->unk34 = arg0->unk34 * sp80;
                        arg0->unk38 = arg0->unk38 * sp80;
                        goto block_154;
                    case 0xAC:
                        var_s1 = func_8009C154(func_8009C154(func_8009C18C(var_s1, arg0 + 0x12), arg0 + 0x48), &sp80);
                        arg0->unk48 = arg0->unk48 + (sp80 * random_f32());
                        if (arg0->unk12 == 1) {
                            arg0->unk12 = 0;
                            arg0->unk44 = arg0->unk48;
                        }
                        goto block_154;
                    case 0xAD:
                        arg0->unk6 = arg0->unk6 | 0x80;
                        goto block_154;
                    case 0xAE:
                        arg0->unk6 = arg0->unk6 & ~0x60;
                        goto block_154;
                    case 0xAF:
                        temp_t1 = arg0->unk6 & ~0x40;
                        arg0->unk6 = temp_t1;
                        arg0->unk6 = (temp_t1 & 0xFFFF) | 0x20;
                        goto block_154;
                    case 0xB0:
                        temp_t5 = arg0->unk6 & 0xFFDF;
                        arg0->unk6 = temp_t5;
                        arg0->unk6 = (temp_t5 & 0xFFFF) | 0x40;
                        goto block_154;
                    case 0xB1:
                        arg0->unk6 = arg0->unk6 | 0x60;
                        goto block_154;
                    case 0xB2:
                        arg0->unk6 = arg0->unk6 | 0x200;
                        goto block_154;
                    case 0xB3:
                        arg0->unk6 = arg0->unk6 & 0xFBFF;
                        goto block_154;
                    case 0xB4:
                        arg0->unk6 = arg0->unk6 | 0x400;
                        goto block_154;
                    case 0xB5:
                        arg0->unk6 = arg0->unk6 | 0x100;
                        goto block_154;
                    case 0xB6:
                        arg0->unk6 = arg0->unk6 & ~0x100;
                        goto block_154;
                    case 0xB7:
                        temp_s0_6 = var_s1->unk0;
                        var_s1 += 1;
                        func_8009C350(arg0, D_800D6A14[temp_s0_6 + arg0->unkD]);
                        goto block_154;
                    case 0xB8:
                        temp_s0_7 = var_s1->unk0 + arg0->unkD;
                        var_s1 = func_8009C154(var_s1 + 1, &sp80);
                        func_8009C44C(arg0, D_800D6A14[temp_s0_7], sp80);
                        goto block_154;
                    case 0xB9:
                        temp_s0_8 = var_s1->unk0;
                        temp_t4_2 = var_s1->unk1;
                        var_s1 += 2;
                        temp_v0_9 = func_8009BC4C(arg0, arg0->unk8, (temp_s0_8 << 8) + temp_t4_2);
                        if (temp_v0_9 != NULL) {
                            temp_v0_9->unk24 = arg0->unk24;
                            temp_v0_9->unk28 = arg0->unk28;
                            temp_v0_9->unk2C = arg0->unk2C;
                            temp_v0_9->unk30 = arg0->unk30;
                            temp_v0_9->unk34 = arg0->unk34;
                            temp_v0_9->unk38 = arg0->unk38;
                            temp_v0_9->unk4 = arg0->unk4;
                            temp_v0_9->unk5C = arg0->unk5C;
                            temp_t7_3 = arg0->unk60;
                            temp_v0_9->unk60 = temp_t7_3;
                            if (temp_t7_3 != NULL) {
                                temp_t7_3->unk2A = temp_t7_3->unk2A + 1;
                            }
                            func_8009C4E0(temp_v0_9, arg0, arg0->unk8 >> 3);
                        }
                        goto block_154;
                    case 0xBA:
                        temp_f6 = var_s1->unk0 * 2;
                        sp80 = temp_f6;
                        temp_t2_3 = arg0->unk50;
                        var_f10 = temp_t2_3;
                        temp_f4 = temp_f6 * random_f32(temp_a0);
                        if (temp_t2_3 < 0) {
                            var_f10 += 4294967296.0f;
                        }
                        arg0->unk50 = var_f10 + temp_f4;
                        temp_s1_3 = &var_s1[1].unk1;
                        temp_f4_2 = var_s1[1] * 2;
                        sp80 = temp_f4_2;
                        temp_t7_4 = arg0->unk51;
                        var_f6 = temp_t7_4;
                        temp_f8 = temp_f4_2 * random_f32();
                        if (temp_t7_4 < 0) {
                            var_f6 += 4294967296.0f;
                        }
                        arg0->unk51 = var_f6 + temp_f8;
                        temp_s1_4 = temp_s1_3 + 1;
                        temp_f8_2 = temp_s1_3->unk0 * 2;
                        sp80 = temp_f8_2;
                        temp_t2_4 = arg0->unk52;
                        var_f4 = temp_t2_4;
                        temp_f10 = temp_f8_2 * random_f32();
                        if (temp_t2_4 < 0) {
                            var_f4 += 4294967296.0f;
                        }
                        arg0->unk52 = var_f4 + temp_f10;
                        var_s1 = temp_s1_4 + 1;
                        temp_f10_2 = *temp_s1_4 * 2;
                        sp80 = temp_f10_2;
                        temp_t7_5 = arg0->unk53;
                        var_f8 = temp_t7_5;
                        temp_f6_2 = temp_f10_2 * random_f32();
                        if (temp_t7_5 < 0) {
                            var_f8 += 4294967296.0f;
                        }
                        arg0->unk53 = var_f8 + temp_f6_2;
                        if (arg0->unk14 == 0) {
                            arg0->unk4C = (unaligned s32) arg0->unk50;
                        }
                        goto block_154;
                    case 0xBB:
                        temp_f6_3 = var_s1->unk0 * 2;
                        sp80 = temp_f6_3;
                        temp_t5_2 = arg0->unk58;
                        var_f10_2 = temp_t5_2;
                        temp_f4_3 = temp_f6_3 * random_f32(temp_a0);
                        if (temp_t5_2 < 0) {
                            var_f10_2 += 4294967296.0f;
                        }
                        arg0->unk58 = var_f10_2 + temp_f4_3;
                        temp_s1_5 = &var_s1[1].unk1;
                        temp_f4_4 = var_s1[1] * 2;
                        sp80 = temp_f4_4;
                        temp_t0 = arg0->unk59;
                        var_f6_2 = temp_t0;
                        temp_f8_3 = temp_f4_4 * random_f32();
                        if (temp_t0 < 0) {
                            var_f6_2 += 4294967296.0f;
                        }
                        arg0->unk59 = var_f6_2 + temp_f8_3;
                        temp_s1_6 = temp_s1_5 + 1;
                        temp_f8_4 = temp_s1_5->unk0 * 2;
                        sp80 = temp_f8_4;
                        temp_t5_3 = arg0->unk5A;
                        var_f4_2 = temp_t5_3;
                        temp_f10_3 = temp_f8_4 * random_f32();
                        if (temp_t5_3 < 0) {
                            var_f4_2 += 4294967296.0f;
                        }
                        arg0->unk5A = var_f4_2 + temp_f10_3;
                        var_s1 = temp_s1_6 + 1;
                        temp_f10_4 = *temp_s1_6 * 2;
                        sp80 = temp_f10_4;
                        temp_t0_2 = arg0->unk5B;
                        var_f8_2 = temp_t0_2;
                        temp_f6_4 = temp_f10_4 * random_f32();
                        if (temp_t0_2 < 0) {
                            var_f8_2 += 4294967296.0f;
                        }
                        arg0->unk5B = var_f8_2 + temp_f6_4;
                        if (arg0->unk16 == 0) {
                            arg0->unk54 = (unaligned s32) arg0->unk58;
                        }
                        goto block_154;
                    case 0xBC:
                        temp_t6_3 = var_s1->unk0;
                        var_s1 = &var_s1[1].unk1;
                        arg0->unkB = temp_t6_3;
                        temp_t7_6 = var_s1->unk-1;
                        var_f6_3 = temp_t7_6;
                        if (temp_t7_6 < 0) {
                            var_f6_3 += 4294967296.0f;
                        }
                        sp80 = var_f6_3;
                        temp_t8_2 = arg0->unkB;
                        var_f8_3 = temp_t8_2;
                        temp_f10_5 = var_f6_3 * random_f32(temp_a0);
                        if (temp_t8_2 < 0) {
                            var_f8_3 += 4294967296.0f;
                        }
                        arg0->unkB = var_f8_3 + temp_f10_5;
                        goto block_154;
                    case 0xBD:
                        var_s1 = func_8009C154(func_8009C154(var_s1, &sp80), &sp7C);
                        sp80 += sp7C * random_f32();
                        temp_f2 = arg0->unk30;
                        temp_f14 = arg0->unk34;
                        temp_f16 = arg0->unk38;
                        temp_f0 = sqrtf((temp_f2 * temp_f2) + (temp_f14 * temp_f14) + (temp_f16 * temp_f16));
                        sp7C = temp_f0;
                        if (temp_f0 > 0.00001f) {
                            temp_f4_5 = sp80 / temp_f0;
                            sp80 = temp_f4_5;
                            arg0->unk30 = arg0->unk30 * temp_f4_5;
                            arg0->unk34 = arg0->unk34 * sp80;
                            arg0->unk38 = arg0->unk38 * sp80;
                        }
                        goto block_154;
                    case 0xBE:
                        temp_a0_2 = func_8009C154(var_s1, &sp80);
                        arg0->unk30 = arg0->unk30 * sp80;
                        temp_a0_3 = func_8009C154(temp_a0_2, &sp80);
                        arg0->unk34 = arg0->unk34 * sp80;
                        var_s1 = func_8009C154(temp_a0_3, &sp80);
                        arg0->unk38 = arg0->unk38 * sp80;
                        goto block_154;
                    case 0xBF:
                        temp_s0_9 = var_s1->unk0;
                        var_s1 += 1;
                        arg0->unk6 = arg0->unk6 | 0x8000 | (((temp_s0_9 + arg0->unkD) - 1) << 0xC);
                        goto block_154;
                    case 0xC0:
                        temp_v1 = arg0 + 0x4C;
                        temp_a2 = arg0 + 0x50;
                        sp28 = &*temp_a2;
                        sp2C = &*temp_v1;
                        temp_v0_10 = func_8009C18C(var_s1, arg0 + 0x14, temp_a2);
                        temp_v1_2 = &*temp_v1;
                        temp_a2_2 = &*temp_a2;
                        var_s1 = temp_v0_10;
                        *temp_a2_2 = (unaligned s32) *temp_v1_2;
                        if (temp_a0 & 1) {
                            var_s1 = temp_v0_10 + 1;
                            arg0->unk50 = *temp_v0_10;
                        }
                        if (temp_a0 & 2) {
                            temp_t1_2 = *var_s1;
                            var_s1 += 1;
                            arg0->unk51 = temp_t1_2;
                        }
                        if (temp_a0 & 4) {
                            temp_t3 = *var_s1;
                            var_s1 += 1;
                            arg0->unk52 = temp_t3;
                        }
                        if (temp_a0 & 8) {
                            temp_t5_4 = *var_s1;
                            var_s1 += 1;
                            arg0->unk53 = temp_t5_4;
                        }
                        if (arg0->unk14 == 1) {
                            *temp_v1_2 = (unaligned s32) *temp_a2_2;
                            arg0->unk14 = 0;
                        }
                        goto block_154;
                    case 0xD0:
                        temp_v1_3 = arg0 + 0x54;
                        temp_a2_3 = arg0 + 0x58;
                        sp28 = temp_a2_3;
                        sp2C = temp_v1_3;
                        temp_v0_11 = func_8009C18C(var_s1, arg0 + 0x16, temp_a2_3);
                        var_s1 = temp_v0_11;
                        *temp_a2_3 = (unaligned s32) *temp_v1_3;
                        if (temp_a0 & 1) {
                            var_s1 = temp_v0_11 + 1;
                            arg0->unk58 = *temp_v0_11;
                        }
                        if (temp_a0 & 2) {
                            temp_t4_3 = *var_s1;
                            var_s1 += 1;
                            arg0->unk59 = temp_t4_3;
                        }
                        if (temp_a0 & 4) {
                            temp_t6_4 = *var_s1;
                            var_s1 += 1;
                            arg0->unk5A = temp_t6_4;
                        }
                        if (temp_a0 & 8) {
                            temp_t8_3 = *var_s1;
                            var_s1 += 1;
                            arg0->unk5B = temp_t8_3;
                        }
                        if (arg0->unk16 == 1) {
                            *temp_v1_3 = (unaligned s32) *temp_a2_3;
                            arg0->unk16 = 0;
                        }
                        goto block_154;
                    case 0xE0:
                        temp_f6_5 = random_f32(temp_a0) * (var_s1->unk0 * 2);
                        sp80 = temp_f6_5;
                        temp_t4_4 = arg0->unk50;
                        var_f10_3 = temp_t4_4;
                        if (temp_t4_4 < 0) {
                            var_f10_3 += 4294967296.0f;
                        }
                        arg0->unk50 = var_f10_3 + temp_f6_5;
                        arg0->unk58 = arg0->unk58 + sp80;
                        temp_s1_7 = &var_s1[1].unk1;
                        temp_f10_6 = random_f32() * (var_s1[1] * 2);
                        sp80 = temp_f10_6;
                        temp_t2_5 = arg0->unk51;
                        var_f6_4 = temp_t2_5;
                        if (temp_t2_5 < 0) {
                            var_f6_4 += 4294967296.0f;
                        }
                        arg0->unk51 = var_f6_4 + temp_f10_6;
                        arg0->unk59 = arg0->unk59 + sp80;
                        temp_s1_8 = temp_s1_7 + 1;
                        temp_f6_6 = random_f32() * (temp_s1_7->unk0 * 2);
                        sp80 = temp_f6_6;
                        temp_t0_3 = arg0->unk52;
                        var_f10_4 = temp_t0_3;
                        if (temp_t0_3 < 0) {
                            var_f10_4 += 4294967296.0f;
                        }
                        arg0->unk52 = var_f10_4 + temp_f6_6;
                        arg0->unk5A = arg0->unk5A + sp80;
                        var_s1 = temp_s1_8 + 1;
                        temp_f10_7 = random_f32() * (*temp_s1_8 * 2);
                        sp80 = temp_f10_7;
                        temp_t8_4 = arg0->unk53;
                        var_f6_5 = temp_t8_4;
                        if (temp_t8_4 < 0) {
                            var_f6_5 += 4294967296.0f;
                        }
                        arg0->unk53 = var_f6_5 + temp_f10_7;
                        arg0->unk5B = arg0->unk5B + sp80;
                        if (arg0->unk14 == 0) {
                            arg0->unk4C = (unaligned s32) arg0->unk50;
                        }
                        if (arg0->unk16 == 0) {
                            arg0->unk54 = (unaligned s32) arg0->unk58;
                        }
                        goto block_154;
                    case 0xE2:
                        arg0->unk6 = arg0->unk6 | 8;
                        goto block_154;
                    case 0xE3:
                        temp_t2_6 = var_s1->unk0;
                        var_s1 += 1;
                        arg0->unkC = temp_t2_6;
                        goto block_154;
                    case 0xFA:
                        temp_t3_2 = var_s1->unk0;
                        var_s1 += 1;
                        arg0->unk20 = var_s1 - arg0->unk18;
                        arg0->unk9 = temp_t3_2;
                        goto block_154;
                    case 0xFB:
                        temp_t7_7 = arg0->unk9 - 1;
                        arg0->unk9 = temp_t7_7;
                        if (temp_t7_7 & 0xFF) {
                            var_s1 = arg0->unk18 + arg0->unk20;
                        }
                        goto block_154;
                    case 0xFC:
                        arg0->unk1E = var_s1 - arg0->unk18;
                        goto block_154;
                    case 0xFD:
                        var_s1 = arg0->unk18 + arg0->unk1E;
                        goto block_154;
                    case 0xFE:
                    case 0xFF:
                        arg0->unk22 = 1;
                        var_v0 = var_s1 - arg0->unk18;
                        break;
                }
            } else {
                temp_v0_12 = temp_a0 & 0x1F;
                sp94 = temp_v0_12;
                if (temp_a0 & 0x20) {
                    sp94 = var_s1->unk0 + ((temp_v0_12 & 0xFFFF) << 8);
                    var_s1 += 1;
                }
                temp_v0_13 = temp_a0 & 0xC0;
                if ((temp_v0_13 != 0) && (temp_v0_13 == 0x40)) {
                    temp_t2_7 = *var_s1;
                    var_s1 += 1;
                    arg0->unkB = temp_t2_7;
                }
            default:
block_154:
                if (sp94 != 0) {
                    var_v0 = var_s1 - arg0->unk18;
                } else {
                    goto loop_5;
                }
            }
            arg0->unk1C = var_v0;
            arg0->unk10 = sp94;
        }
    }
    temp_v0_14 = arg0->unk12;
    if (temp_v0_14 != 0) {
        temp_f0_2 = arg0->unk44;
        arg0->unk12 = temp_v0_14 - 1;
        arg0->unk44 = temp_f0_2 + ((arg0->unk48 - temp_f0_2) / temp_v0_14);
    }
    temp_a3 = arg0->unk14;
    if (temp_a3 != 0) {
        temp_lo = 0x10000 / temp_a3;
        temp_v1_4 = arg0->unk4C;
        temp_a0_4 = arg0->unk4D;
        temp_a1_2 = arg0->unk4E;
        temp_a2_4 = arg0->unk4F;
        arg0->unk4C = ((temp_v1_4 << 0x10) + ((arg0->unk50 - temp_v1_4) * temp_lo)) >> 0x10;
        arg0->unk4D = ((temp_a0_4 << 0x10) + ((arg0->unk51 - temp_a0_4) * temp_lo)) >> 0x10;
        arg0->unk4E = ((temp_a1_2 << 0x10) + ((arg0->unk52 - temp_a1_2) * temp_lo)) >> 0x10;
        arg0->unk14 = temp_a3 - 1;
        arg0->unk4F = ((temp_a2_4 << 0x10) + ((arg0->unk53 - temp_a2_4) * temp_lo)) >> 0x10;
    }
    temp_a3_2 = arg0->unk16;
    if (temp_a3_2 != 0) {
        temp_lo_2 = 0x10000 / temp_a3_2;
        temp_v1_5 = arg0->unk54;
        temp_a0_5 = arg0->unk55;
        temp_a1_3 = arg0->unk56;
        temp_a2_5 = arg0->unk57;
        arg0->unk54 = ((temp_v1_5 << 0x10) + ((arg0->unk58 - temp_v1_5) * temp_lo_2)) >> 0x10;
        arg0->unk55 = ((temp_a0_5 << 0x10) + ((arg0->unk59 - temp_a0_5) * temp_lo_2)) >> 0x10;
        arg0->unk56 = ((temp_a1_3 << 0x10) + ((arg0->unk5A - temp_a1_3) * temp_lo_2)) >> 0x10;
        arg0->unk16 = temp_a3_2 - 1;
        arg0->unk57 = ((temp_a2_5 << 0x10) + ((arg0->unk5B - temp_a2_5) * temp_lo_2)) >> 0x10;
    }
    temp_t2_8 = arg0->unk22 - 1;
    arg0->unk22 = temp_t2_8;
    if (!(temp_t2_8 & 0xFFFF)) {
        if (arg1 == NULL) {
            *(&D_800D69C8 + (arg2 * 4)) = arg0->unk0;
        } else {
            *arg1 = arg0->unk0;
        }
        temp_v0_15 = arg0->unk5C;
        var_s0 = arg0->unk0;
        if ((temp_v0_15 != NULL) && (arg0->unk6 & 4) && (temp_v0_15->unk9 == 2)) {
            temp_v0_15->unk54 = temp_v0_15->unk54 - 1;
        }
        temp_a0_6 = arg0->unk60;
        if (temp_a0_6 != NULL) {
            temp_a0_6->unk2A = temp_a0_6->unk2A - 1;
            temp_a0_7 = arg0->unk60;
            if (temp_a0_7->unk2A == 0) {
                func_8009B69C(temp_a0_7);
                if (arg1 == NULL) {
                    temp_v0_16 = *(&D_800D69C8 + (arg2 * 4));
                    if (var_s0 != temp_v0_16) {
                        var_s0 = temp_v0_16;
                    }
                }
            }
        }
        arg0->unk0 = D_800D69C0;
        D_800D69C0 = arg0;
        D_800D6AE0 -= 1;
        return var_s0;
    }
    temp_v0_17 = arg0->unk6;
    if (temp_v0_17 & 4) {
        temp_a2_6 = arg0->unk5C;
        temp_v0_18 = (arg0->unk3C * 651.8986f) & 0xFFF & 0xFFFF;
        temp_v0_19 = (temp_v0_18 + 0x400) & 0xFFFF;
        sp5C = *(&lbreflect_Int16SinTable + ((temp_v0_18 & 0x7FF) * 2));
        if (temp_v0_18 & 0x800) {
            sp5C = -sp5C;
        }
        var_f16 = *(&lbreflect_Int16SinTable + ((temp_v0_19 & 0x7FF) * 2));
        if (temp_v0_19 & 0x800) {
            var_f16 = -var_f16;
        }
        temp_v0_20 = (arg0->unk40 * 651.8986f) & 0xFFF & 0xFFFF;
        temp_v0_21 = (temp_v0_20 + 0x400) & 0xFFFF;
        sp58 = *(&lbreflect_Int16SinTable + ((temp_v0_20 & 0x7FF) * 2));
        if (temp_v0_20 & 0x800) {
            sp58 = -sp58;
        }
        var_f12 = *(&lbreflect_Int16SinTable + ((temp_v0_21 & 0x7FF) * 2));
        if (temp_v0_21 & 0x800) {
            var_f12 = -var_f12;
        }
        temp_f16_2 = var_f16 * 0.000030517578f;
        sp5C *= 0.000030517578f;
        temp_f12 = var_f12 * 0.000030517578f;
        sp58 *= 0.000030517578f;
        arg0->unk38 = arg0->unk38 + temp_a2_6->unk50;
        temp_f0_3 = temp_a2_6->unk38;
        if (temp_f0_3 < 0.0f) {
            sp70 = -temp_f0_3;
        } else {
            sp70 = temp_f0_3;
        }
        temp_f0_4 = temp_a2_6->unk3C;
        if (temp_f0_4 < 0.0f) {
            var_f2 = -temp_f0_4;
        } else {
            var_f2 = temp_f0_4;
        }
        temp_v1_6 = (var_f2 * 651.8986f) & 0xFFF & 0xFFFF;
        temp_t0_4 = *(&lbreflect_Int16SinTable + ((temp_v1_6 & 0x7FF) * 2));
        temp_v0_22 = (temp_v1_6 + 0x400) & 0xFFFF;
        var_f18 = temp_t0_4;
        if (temp_t0_4 < 0) {
            var_f18 += 4294967296.0f;
        }
        if (temp_v1_6 & 0x800) {
            var_f18 = -var_f18;
        }
        temp_t6_5 = *(&lbreflect_Int16SinTable + ((temp_v0_22 & 0x7FF) * 2));
        var_f0 = temp_t6_5;
        if (temp_t6_5 < 0) {
            var_f0 += 4294967296.0f;
        }
        sp54 = temp_f16_2;
        if (temp_v0_22 & 0x800) {
            var_f0 = -var_f0;
            sp54 = temp_f16_2;
        }
        temp_f16_3 = arg0->unk38;
        temp_f6_7 = sp70 + (temp_f16_3 * (var_f18 / var_f0));
        sp70 = temp_f6_7;
        sp70 = temp_f6_7 * arg0->unk34;
        arg0->unk30 = arg0->unk30 + temp_a2_6->unk2C;
        temp_v0_23 = (arg0->unk30 * 651.8986f) & 0xFFF & 0xFFFF;
        temp_t2_9 = *(&lbreflect_Int16SinTable + ((temp_v0_23 & 0x7FF) * 2));
        temp_v0_24 = (temp_v0_23 + 0x400) & 0xFFFF;
        var_f18_2 = temp_t2_9;
        if (temp_t2_9 < 0) {
            var_f18_2 += 4294967296.0f;
        }
        if (temp_v0_23 & 0x800) {
            var_f18_2 = -var_f18_2;
        }
        temp_t7_8 = *(&lbreflect_Int16SinTable + ((temp_v0_24 & 0x7FF) * 2));
        var_f0_2 = temp_t7_8;
        if (temp_t7_8 < 0) {
            var_f0_2 += 4294967296.0f;
        }
        sp44 = var_f0_2;
        sp50 = temp_f12;
        if (temp_v0_24 & 0x800) {
            sp50 = temp_f12;
            sp44 = -var_f0_2;
        }
        temp_f6_8 = sp70 * 0.000030517578f;
        temp_f2_2 = temp_f6_8 * sp44;
        sp70 = temp_f6_8;
        temp_f14_2 = -temp_f2_2;
        arg0->unk24 = (temp_f2_2 * sp50) + (temp_f16_3 * sp58) + temp_a2_6->unk14;
        temp_f12_2 = sp70 * var_f18_2;
        arg0->unk28 = (temp_f14_2 * sp5C * sp58) + (temp_f12_2 * sp54) + (temp_f16_3 * sp5C * sp50) + temp_a2_6->unk18;
        arg0->unk2C = ((temp_f14_2 * sp54 * sp58) - (temp_f12_2 * sp5C)) + (temp_f16_3 * sp54 * sp50) + temp_a2_6->unk1C;
    } else {
        if (temp_v0_17 & 1) {
            arg0->unk34 = arg0->unk34 - arg0->unk3C;
        }
        if (arg0->unk6 & 2) {
            temp_f0_5 = arg0->unk40;
            arg0->unk30 = arg0->unk30 * temp_f0_5;
            arg0->unk34 = arg0->unk34 * temp_f0_5;
            arg0->unk38 = arg0->unk38 * temp_f0_5;
        }
        arg0->unk24 = arg0->unk24 + arg0->unk30;
        arg0->unk28 = arg0->unk28 + arg0->unk34;
        arg0->unk2C = arg0->unk2C + arg0->unk38;
    }
    temp_v0_25 = arg0->unk6;
    if (temp_v0_25 & 0x8000) {
        temp_v1_7 = (((temp_v0_25 & 0x7000) >> 0xC) * 4) + &D_800D6A18;
        temp_a0_8 = *temp_v1_7;
        if (temp_a0_8 != NULL) {
            temp_a0_8->unk1C = arg0->unk24;
            (*temp_v1_7)->unk20 = arg0->unk28;
            (*temp_v1_7)->unk24 = arg0->unk2C;
        }
    }
block_217:
    return arg0->unk0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009C4E0.s")
#endif

#ifdef MIPS_TO_C

void func_8009E834(void *arg0) {
    s32 *temp_v0;
    s32 *var_s0;
    s32 *var_s1;
    s32 var_s2;
    u32 var_s3;

    var_s3 = arg0->unk44;
    var_s2 = 0;
    do {
        if (!(var_s3 & 0x10000)) {
            var_s0 = *(&D_800D69C8 + (var_s2 * 4));
            var_s1 = NULL;
            if (var_s0 != NULL) {
                do {
                    temp_v0 = func_8009C4E0(var_s0, var_s1, var_s2);
                    if (temp_v0 == *var_s0) {
                        var_s1 = var_s0;
                    }
                    var_s0 = temp_v0;
                } while (var_s0 != NULL);
            }
        }
        var_s2 += 1;
        var_s3 = var_s3 >> 1;
    } while (var_s2 != 0x10);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009E834.s")
#endif

// crazy large gfx function lol
// contribute here! https://decomp.me/scratch/V81WB
#ifdef MIPS_TO_C
void func_8009E8F4(void *arg0, s32 arg1, void **arg2) {
    s32 sp348;
    s32 sp344;
    s32 sp340;
    s32 sp33C;
    s32 sp338;
    f32 sp2F0;
    f32 sp2EC;
    f32 sp2E8;
    f32 sp2E0;
    f32 sp2CC;
    f32 sp250;
    f32 sp24C;
    f32 sp240;
    f32 sp23C;
    f32 sp238;
    f32 sp234;
    f32 sp230;
    f32 sp22C;
    s32 sp228;
    s32 sp224;
    s32 sp20C;
    s32 sp1EC;
    s32 spAC;
    Camera *temp_s0;
    Camera *var_s5;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f14_3;
    f32 temp_f14_4;
    f32 temp_f14_5;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f16_3;
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f22_2;
    f32 temp_f22_3;
    f32 temp_f24;
    f32 temp_f24_2;
    f32 temp_f26;
    f32 temp_f26_2;
    f32 temp_f28;
    f32 temp_f28_2;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f2_4;
    f32 temp_f2_5;
    f32 temp_f2_6;
    f32 temp_f2_7;
    f32 temp_f2_8;
    f32 var_f0;
    f32 var_f10;
    f32 var_f12;
    f32 var_f14;
    f32 var_f16;
    f32 var_f18;
    f32 var_f20;
    f32 var_f22;
    f32 var_f26;
    f32 var_f28;
    f32 var_f4;
    s16 var_a1_7;
    s16 var_a1_8;
    s16 var_v0_6;
    s16 var_v0_7;
    s32 *temp_v1;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_f10;
    s32 temp_f4;
    s32 temp_f4_2;
    s32 temp_f6;
    s32 temp_f6_2;
    s32 temp_f8;
    s32 temp_fp;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_lo_3;
    s32 temp_lo_4;
    s32 temp_ra;
    s32 temp_ra_2;
    s32 temp_ra_3;
    s32 temp_s0_8;
    s32 temp_s5;
    s32 temp_s6;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t1_3;
    s32 temp_t1_4;
    s32 temp_t1_5;
    s32 temp_t2;
    s32 temp_t2_2;
    s32 temp_t2_3;
    s32 temp_t2_4;
    s32 temp_t3;
    s32 temp_t3_2;
    s32 temp_t3_3;
    s32 temp_t3_4;
    s32 temp_t4;
    s32 temp_t4_2;
    s32 temp_t4_3;
    s32 temp_t4_4;
    s32 temp_t5;
    s32 temp_t5_2;
    s32 temp_t7;
    s32 temp_v0_14;
    s32 temp_v0_15;
    s32 temp_v0_16;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 temp_v0_9;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 temp_v1_5;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a1_4;
    s32 var_a1_5;
    s32 var_a1_6;
    s32 var_a2;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a3_4;
    s32 var_s4;
    s32 var_s4_2;
    s32 var_s7;
    s32 var_t0;
    s32 var_t9;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_4;
    s32 var_v0_5;
    s32 var_v0_8;
    s32 var_v1;
    s32 var_v1_2;
    s32 var_v1_4;
    s32 var_v1_5;
    u16 temp_a2;
    u16 temp_a2_2;
    u16 temp_a2_3;
    u8 temp_a1_2;
    u8 temp_t9;
    u8 var_v0;
    u8 var_v1_3;
    void **temp_a3;
    void *temp_s0_2;
    void *temp_s0_3;
    void *temp_s0_4;
    void *temp_s0_5;
    void *temp_s0_6;
    void *temp_s0_7;
    void *temp_s1;
    void *temp_s1_10;
    void *temp_s1_11;
    void *temp_s1_12;
    void *temp_s1_13;
    void *temp_s1_14;
    void *temp_s1_15;
    void *temp_s1_16;
    void *temp_s1_17;
    void *temp_s1_18;
    void *temp_s1_19;
    void *temp_s1_20;
    void *temp_s1_21;
    void *temp_s1_22;
    void *temp_s1_23;
    void *temp_s1_24;
    void *temp_s1_25;
    void *temp_s1_26;
    void *temp_s1_27;
    void *temp_s1_28;
    void *temp_s1_29;
    void *temp_s1_2;
    void *temp_s1_30;
    void *temp_s1_31;
    void *temp_s1_32;
    void *temp_s1_33;
    void *temp_s1_34;
    void *temp_s1_35;
    void *temp_s1_36;
    void *temp_s1_37;
    void *temp_s1_38;
    void *temp_s1_39;
    void *temp_s1_3;
    void *temp_s1_4;
    void *temp_s1_5;
    void *temp_s1_6;
    void *temp_s1_7;
    void *temp_s1_8;
    void *temp_s1_9;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *var_s1;
    void *var_s1_2;
    void *var_s1_3;
    void *var_s2;

    temp_s0 = omCurrentCamera->data;
    temp_s1 = *arg2;
    var_s4 = 0;
    var_s5 = temp_s0;
    if (temp_s0->mtxCount > 0) {
        do {
            temp_t9 = var_s5->matrices[0]->kind;
            switch (temp_t9) {                      /* switch 1 */
                case 3:                             /* switch 1 */
                    func_8001B008(&sp278[0], 0, temp_s0->perspMtx.persp.fovy, temp_s0->perspMtx.persp.aspect, temp_s0->perspMtx.persp.near, temp_s0->perspMtx.persp.far, temp_s0->perspMtx.persp.scale);
                    break;
                case 4:                             /* switch 1 */
                    func_8001B28C(&sp278[0], 0, temp_s0->perspMtx.persp.fovy, temp_s0->perspMtx.persp.aspect, temp_s0->perspMtx.persp.near, temp_s0->perspMtx.persp.far, temp_s0->perspMtx.persp.scale);
                    break;
                case 5:                             /* switch 1 */
                    guOrthoF(&sp278[0], temp_s0->perspMtx.ortho.left, temp_s0->perspMtx.persp.fovy, temp_s0->perspMtx.persp.aspect, temp_s0->perspMtx.persp.near, temp_s0->perspMtx.persp.far, temp_s0->perspMtx.persp.scale, temp_s0->perspMtx.ortho.scale);
                    break;
                case 6:                             /* switch 1 */
                case 7:                             /* switch 1 */
                case 12:                            /* switch 1 */
                case 13:                            /* switch 1 */
                    guLookAtF(&sp2F8[0], temp_s0->viewMtx.lookAt.eye.x, temp_s0->viewMtx.lookAt.eye.y, temp_s0->viewMtx.lookAt.eye.z, temp_s0->viewMtx.lookAt.at.x, temp_s0->viewMtx.lookAt.at.y, temp_s0->viewMtx.lookAt.at.z, temp_s0->viewMtx.lookAt.up.x, temp_s0->viewMtx.lookAt.up.y, temp_s0->viewMtx.lookAt.up.z);
                    break;
                case 8:                             /* switch 1 */
                case 9:                             /* switch 1 */
                case 14:                            /* switch 1 */
                case 15:                            /* switch 1 */
                    guLookAtF_2(&sp2F8[0], temp_s0->viewMtx.lookAt.eye.x, temp_s0->viewMtx.lookAt.eye.y, temp_s0->viewMtx.lookAt.eye.z, temp_s0->viewMtx.lookAt.at.x, temp_s0->viewMtx.lookAt.at.y, temp_s0->viewMtx.lookAt.at.z, temp_s0->viewMtx.lookAt.up.x, 0.0f, 1.0f, 0.0f);
                    break;
                case 10:                            /* switch 1 */
                case 11:                            /* switch 1 */
                case 16:                            /* switch 1 */
                case 17:                            /* switch 1 */
                    guLookAtF_2(&sp2F8[0], temp_s0->viewMtx.lookAt.eye.x, temp_s0->viewMtx.lookAt.eye.y, temp_s0->viewMtx.lookAt.eye.z, temp_s0->viewMtx.lookAt.at.x, temp_s0->viewMtx.lookAt.at.y, temp_s0->viewMtx.lookAt.at.z, temp_s0->viewMtx.lookAt.up.x, 0.0f, 0.0f, 1.0f);
                    break;
                default:                            /* switch 1 */
                    func_8001B008(&sp278[0], 0, temp_s0->perspMtx.persp.fovy, temp_s0->perspMtx.persp.aspect, temp_s0->perspMtx.persp.near, temp_s0->perspMtx.persp.far, temp_s0->perspMtx.persp.scale);
                    guLookAtF(&sp2F8[0], temp_s0->viewMtx.lookAt.eye.x, temp_s0->viewMtx.lookAt.eye.y, temp_s0->viewMtx.lookAt.eye.z, temp_s0->viewMtx.lookAt.at.x, temp_s0->viewMtx.lookAt.at.y, temp_s0->viewMtx.lookAt.at.z, temp_s0->viewMtx.lookAt.up.x, temp_s0->viewMtx.lookAt.up.y, temp_s0->viewMtx.lookAt.up.z);
                    break;
            }
            var_s4 += 1;
            var_s5 += 4;
        } while (var_s4 < temp_s0->mtxCount);
    }
    if (temp_s0->mtxCount != 0) {
        guMtxCatF(&sp2F8[0], &sp278[0], &sp2B8[0]);
        sp240 = temp_s0->viewport.vp.vscale[0];
        sp238 = -temp_s0->viewport.vp.vscale[1];
        sp230 = temp_s0->viewport.vp.vscale[2];
        sp23C = temp_s0->viewport.vp.vtrans[0];
        sp234 = temp_s0->viewport.vp.vtrans[1];
        sp22C = temp_s0->viewport.vp.vtrans[2];
    } else {
        temp_f26 = temp_s0->viewport.vp.vscale[0];
        temp_f24 = -temp_s0->viewport.vp.vscale[1];
        sp23C = temp_s0->viewport.vp.vtrans[0];
        temp_f22 = temp_s0->viewport.vp.vscale[2];
        sp234 = temp_s0->viewport.vp.vtrans[1];
        temp_f28 = temp_s0->viewport.vp.vtrans[2];
        guMtxIdentF(&sp2B8[0]);
        sp2B8[0] = 1.0f / temp_f26;
        sp2CC = 1.0f / temp_f24;
        sp2E0 = -1.0f / temp_f22;
        sp2E8 = -sp23C / temp_f26;
        sp2EC = -sp234 / temp_f24;
        sp2F0 = temp_f28 / temp_f22;
        memcpy(&sp278[0], &sp2B8[0], 0x40);
        sp230 = temp_f22;
        sp238 = temp_f24;
        sp240 = temp_f26;
        sp22C = temp_f28;
    }
    sp250 = sqrtf((sp2D8 * sp2D8) + ((sp2B8[0] * sp2B8[0]) + (sp2C8 * sp2C8)));
    sp24C = sqrtf((sp2DC * sp2DC) + ((sp2B8[1] * sp2B8[1]) + (sp2CC * sp2CC)));
    temp_s1_2 = temp_s1 + 8;
    temp_s1->unk0 = 0xE7000000;
    temp_s1->unk4 = 0;
    temp_s1_3 = temp_s1_2 + 8;
    temp_s1_2->unk0 = 0xE3000C00;
    temp_s1_2->unk4 = 0;
    temp_s1_4 = temp_s1_3 + 8;
    temp_s1_3->unk4 = 4;
    temp_s1_3->unk0 = 0xE2001D00;
    temp_s1_4->unk0 = 0xE3001801;
    temp_s1_5 = temp_s1_4 + 8;
    temp_s1_4->unk4 = D_800BE3E0;
    temp_s1_5->unk0 = 0xE3001A01;
    temp_s1_5->unk4 = D_800BE3E4;
    sp340 = -1;
    var_s1 = temp_s1_5 + 8;
    sp348 = 0;
    sp344 = 0;
    sp33C = -1;
    sp338 = -1;
    D_800BE3EC += 1;
    sp20C = 0;
    do {
        if (arg0->unk30 & (1 << sp20C)) {
            var_s2 = *(&D_800D69C8 + (sp20C * 4));
            if (var_s2 != NULL) {
                do {
                    if (var_s2->unk6 & 8) {
                        if (!(arg1 & 1)) {

                        } else {
                            goto block_22;
                        }
                    } else if (arg1 & 2) {
block_22:
                        if (var_s2->unk44 != 0.0f) {
                            temp_s0_2 = var_s2->unk60;
                            temp_f26_2 = var_s2->unk24;
                            temp_f28_2 = var_s2->unk28;
                            temp_f20 = var_s2->unk2C;
                            if (temp_s0_2 != NULL) {
                                if (D_800BE3EC != temp_s0_2->unk29) {
                                    var_v0 = temp_s0_2->unk28;
                                    if (var_v0 != 2) {
                                        func_8001C2E4(temp_s0_2 + 0x2C, temp_s0_2->unk4, temp_s0_2->unk8, temp_s0_2->unkC, temp_s0_2->unk10, temp_s0_2->unk14, temp_s0_2->unk18, temp_s0_2->unk1C, temp_s0_2->unk20, temp_s0_2->unk24);
                                        var_v0 = var_s2->unk60->unk28;
                                    }
                                    if (var_v0 == 1) {
                                        var_s2->unk60->unk28 = 2;
                                    }
                                    guMtxCatF(var_s2->unk60 + 0x2C, &sp2B8[0], var_s2->unk60 + 0x6C);
                                    temp_s0_3 = var_s2->unk60;
                                    temp_f2 = temp_s0_3->unk6C;
                                    temp_f14 = temp_s0_3->unk7C;
                                    temp_f0 = temp_s0_3->unk8C;
                                    var_s2->unk60->unkAC = sqrtf((temp_f0 * temp_f0) + ((temp_f2 * temp_f2) + (temp_f14 * temp_f14)));
                                    temp_s0_4 = var_s2->unk60;
                                    temp_f14_2 = temp_s0_4->unk70;
                                    temp_f16 = temp_s0_4->unk80;
                                    temp_f2_2 = temp_s0_4->unk90;
                                    var_s2->unk60->unkB0 = sqrtf((temp_f2_2 * temp_f2_2) + ((temp_f14_2 * temp_f14_2) + (temp_f16 * temp_f16)));
                                    temp_s0_5 = var_s2->unk60;
                                    if (temp_s0_5->unkBA != 0) {
                                        temp_f2_3 = temp_s0_5->unk2C;
                                        temp_f14_3 = temp_s0_5->unk3C;
                                        temp_f0_2 = temp_s0_5->unk4C;
                                        temp_s0_6 = var_s2->unk60;
                                        temp_f22_2 = sqrtf((temp_f0_2 * temp_f0_2) + ((temp_f2_3 * temp_f2_3) + (temp_f14_3 * temp_f14_3)));
                                        temp_f14_4 = temp_s0_6->unk30;
                                        temp_f16_2 = temp_s0_6->unk40;
                                        temp_f2_4 = temp_s0_6->unk50;
                                        temp_s0_7 = var_s2->unk60;
                                        temp_f24_2 = sqrtf((temp_f2_4 * temp_f2_4) + ((temp_f14_4 * temp_f14_4) + (temp_f16_2 * temp_f16_2)));
                                        temp_f14_5 = temp_s0_7->unk34;
                                        temp_f16_3 = temp_s0_7->unk44;
                                        temp_f2_5 = temp_s0_7->unk54;
                                        temp_f0_3 = sqrtf((temp_f2_5 * temp_f2_5) + ((temp_f14_5 * temp_f14_5) + (temp_f16_3 * temp_f16_3)));
                                        var_s2->unk60->unk6C = sp278[0] * temp_f22_2;
                                        var_s2->unk60->unk70 = 0.0f;
                                        var_s2->unk60->unk74 = 0.0f;
                                        var_s2->unk60->unk78 = 0.0f;
                                        var_s2->unk60->unk7C = 0.0f;
                                        var_s2->unk60->unk80 = sp28C * temp_f24_2;
                                        var_s2->unk60->unk84 = 0.0f;
                                        var_s2->unk60->unk88 = 0.0f;
                                        var_s2->unk60->unk8C = 0.0f;
                                        var_s2->unk60->unk90 = 0.0f;
                                        var_s2->unk60->unk94 = sp2A0 * temp_f0_3;
                                        var_s2->unk60->unk98 = sp2A4 * temp_f0_3;
                                    }
                                    var_s2->unk60->unk29 = D_800BE3EC;
                                }
                                var_f14 = var_s2->unk60->unkAC;
                                var_f16 = var_s2->unk60->unkB0;
                                var_f0 = var_s2->unk60->unk9C + ((var_s2->unk60->unk6C * temp_f26_2) + (var_s2->unk60->unk7C * temp_f28_2) + (var_s2->unk60->unk8C * temp_f20));
                                var_f12 = var_s2->unk60->unkA0 + ((var_s2->unk60->unk70 * temp_f26_2) + (var_s2->unk60->unk80 * temp_f28_2) + (var_s2->unk60->unk90 * temp_f20));
                                var_f22 = var_s2->unk60->unkA4 + ((var_s2->unk60->unk74 * temp_f26_2) + (var_s2->unk60->unk84 * temp_f28_2) + (var_s2->unk60->unk94 * temp_f20));
                                var_f4 = var_s2->unk60->unkA8;
                                var_f10 = (var_s2->unk60->unk78 * temp_f26_2) + (var_s2->unk60->unk88 * temp_f28_2) + (var_s2->unk60->unk98 * temp_f20);
                            } else {
                                var_f14 = sp250;
                                var_f16 = sp24C;
                                var_f0 = sp2E8 + ((sp2B8[0] * temp_f26_2) + (sp2C8 * temp_f28_2) + (sp2D8 * temp_f20));
                                var_f12 = sp2EC + ((sp2B8[1] * temp_f26_2) + (sp2CC * temp_f28_2) + (sp2DC * temp_f20));
                                var_f22 = sp2F0 + ((sp2B8[2] * temp_f26_2) + (sp2D0 * temp_f28_2) + (sp2E0 * temp_f20));
                                var_f4 = sp2F4;
                                var_f10 = (sp2B8[3] * temp_f26_2) + (sp2D4 * temp_f28_2) + (sp2E4 * temp_f20);
                            }
                            temp_f2_6 = var_f4 + var_f10;
                            if (temp_f2_6 != 0.0f) {
                                temp_f2_7 = 1.0f / temp_f2_6;
                                temp_f0_4 = var_f0 * temp_f2_7;
                                temp_f12 = var_f12 * temp_f2_7;
                                temp_f22_3 = var_f22 * temp_f2_7;
                                if (!(temp_f0_4 < -1.0f) && !(temp_f0_4 > 1.0f) && !(temp_f12 < -1.0f) && !(temp_f12 > 1.0f) && !(temp_f22_3 < -1.0f) && !(temp_f22_3 > 1.0f)) {
                                    temp_f2_8 = temp_f2_7 * var_s2->unk44;
                                    temp_a2 = var_s2->unk6;
                                    var_s7 = 2;
                                    temp_f0_5 = (temp_f0_4 * sp240) + sp23C;
                                    var_f18 = (((temp_f2_8 * var_f14) + temp_f0_4) * sp240) + sp23C;
                                    if (temp_f0_5 < var_f18) {
                                        var_f26 = temp_f0_5 - (var_f18 - temp_f0_5);
                                    } else {
                                        var_f26 = var_f18;
                                        var_f18 = temp_f0_5 - (var_f18 - temp_f0_5);
                                    }
                                    temp_f12_2 = (temp_f12 * sp238) + sp234;
                                    var_f20 = (((temp_f2_8 * var_f16) + temp_f12) * sp238) + sp234;
                                    if (temp_f12_2 < var_f20) {
                                        var_f28 = temp_f12_2 - (var_f20 - temp_f12_2);
                                    } else {
                                        var_f28 = var_f20;
                                        var_f20 = temp_f12_2 - (var_f20 - temp_f12_2);
                                    }
                                    temp_a1 = (var_s2->unk8 & 7) * 4;
                                    temp_v0 = *(*(&D_800D6A98 + temp_a1) + (var_s2->unkA * 4));
                                    temp_a0 = var_s2->unkB * 4;
                                    temp_s6 = temp_v0->unk4;
                                    temp_fp = (temp_v0 + temp_a0)->unk18;
                                    temp_t1 = temp_v0->unk8;
                                    temp_s0_8 = temp_v0->unkC;
                                    temp_s5 = temp_v0->unk10;
                                    spAC = temp_a1;
                                    if (temp_s6 == 2) {
                                        temp_a1_2 = var_s2->unkC;
                                        temp_v1 = temp_v0 + (temp_v0->unk0 * 4) + 0x18;
                                        if (temp_a1_2 != 0xFF) {
                                            var_t9 = *(temp_v1 + (temp_a1_2 * 4));
                                            goto block_53;
                                        }
                                        if (!(temp_a2 & 0x10)) {
                                            sp1EC = *(temp_v1 + temp_a0);
                                        } else {
                                            var_t9 = *temp_v1;
block_53:
                                            sp1EC = var_t9;
                                        }
                                    }
                                    temp_f4 = (temp_s0_8 * 4096.0f) / (var_f18 - var_f26);
                                    sp228 = temp_f4;
                                    temp_f6 = (temp_s5 * 4096.0f) / (var_f20 - var_f28);
                                    sp224 = temp_f6;
                                    if (temp_a2 & 0x20) {
                                        sp228 = temp_f4 * 2;
                                        var_s7 = 1;
                                        switch (temp_s0_8) { /* switch 4; irregular */
                                            case 0x2: /* switch 4 */
                                                var_t0 = 1;
                                                break;
                                            case 0x4: /* switch 4 */
                                                var_t0 = 2;
                                                break;
                                            case 0x8: /* switch 4 */
                                                var_t0 = 3;
                                                break;
                                            case 0x10: /* switch 4 */
                                                var_t0 = 4;
                                                break;
                                            case 0x20: /* switch 4 */
                                                var_t0 = 5;
                                                break;
                                            case 0x40: /* switch 4 */
                                                var_t0 = 6;
                                                break;
                                            case 0x80: /* switch 4 */
                                                var_t0 = 7;
                                                break;
                                            case 0x100: /* switch 4 */
                                                var_t0 = 8;
                                                break;
                                            case 0x3: /* switch 4 */
                                            case 0x5: /* switch 4 */
                                            case 0x6: /* switch 4 */
                                            case 0x7: /* switch 4 */
                                            case 0x9: /* switch 4 */
                                            case 0xA: /* switch 4 */
                                            case 0xB: /* switch 4 */
                                            case 0xC: /* switch 4 */
                                            case 0xD: /* switch 4 */
                                            case 0xE: /* switch 4 */
                                            case 0xF: /* switch 4 */
                                            case 0x11: /* switch 4 */
                                            case 0x12: /* switch 4 */
                                            case 0x13: /* switch 4 */
                                            case 0x14: /* switch 4 */
                                            case 0x15: /* switch 4 */
                                            case 0x16: /* switch 4 */
                                            case 0x17: /* switch 4 */
                                            case 0x18: /* switch 4 */
                                            case 0x19: /* switch 4 */
                                            case 0x1A: /* switch 4 */
                                            case 0x1B: /* switch 4 */
                                            case 0x1C: /* switch 4 */
                                            case 0x1D: /* switch 4 */
                                            case 0x1E: /* switch 4 */
                                            case 0x1F: /* switch 4 */
                                                goto block_73;
                                        }
                                    } else {
block_73:
                                        var_t0 = 0;
                                    }
                                    var_s4_2 = 2;
                                    if (temp_a2 & 0x40) {
                                        sp224 = temp_f6 * 2;
                                        var_s4_2 = 1;
                                        switch (temp_s5) { /* switch 5; irregular */
                                            case 0x2: /* switch 5 */
                                                var_a2 = 1;
                                                break;
                                            case 0x4: /* switch 5 */
                                                var_a2 = 2;
                                                break;
                                            case 0x8: /* switch 5 */
                                                var_a2 = 3;
                                                break;
                                            case 0x10: /* switch 5 */
                                                var_a2 = 4;
                                                break;
                                            case 0x20: /* switch 5 */
                                                var_a2 = 5;
                                                break;
                                            case 0x40: /* switch 5 */
                                                var_a2 = 6;
                                                break;
                                            case 0x80: /* switch 5 */
                                                var_a2 = 7;
                                                break;
                                            case 0x100: /* switch 5 */
                                                var_a2 = 8;
                                                break;
                                            case 0x3: /* switch 5 */
                                            case 0x5: /* switch 5 */
                                            case 0x6: /* switch 5 */
                                            case 0x7: /* switch 5 */
                                            case 0x9: /* switch 5 */
                                            case 0xA: /* switch 5 */
                                            case 0xB: /* switch 5 */
                                            case 0xC: /* switch 5 */
                                            case 0xD: /* switch 5 */
                                            case 0xE: /* switch 5 */
                                            case 0xF: /* switch 5 */
                                            case 0x11: /* switch 5 */
                                            case 0x12: /* switch 5 */
                                            case 0x13: /* switch 5 */
                                            case 0x14: /* switch 5 */
                                            case 0x15: /* switch 5 */
                                            case 0x16: /* switch 5 */
                                            case 0x17: /* switch 5 */
                                            case 0x18: /* switch 5 */
                                            case 0x19: /* switch 5 */
                                            case 0x1A: /* switch 5 */
                                            case 0x1B: /* switch 5 */
                                            case 0x1C: /* switch 5 */
                                            case 0x1D: /* switch 5 */
                                            case 0x1E: /* switch 5 */
                                            case 0x1F: /* switch 5 */
                                                goto block_93;
                                        }
                                    } else {
block_93:
                                        var_a2 = 0;
                                    }
                                    if (temp_s6 == 2) {
                                        if (sp1EC != sp344) {
                                            temp_s1_6 = var_s1 + 8;
                                            var_s1->unk0 = 0xFD100000;
                                            var_s1->unk4 = sp1EC;
                                            temp_s1_7 = temp_s1_6 + 8;
                                            temp_s1_6->unk0 = 0xE8000000;
                                            temp_s1_6->unk4 = 0;
                                            temp_s1_8 = temp_s1_7 + 8;
                                            temp_s1_7->unk4 = 0x07000000;
                                            temp_s1_7->unk0 = 0xF5000100;
                                            temp_s1_9 = temp_s1_8 + 8;
                                            temp_s1_8->unk0 = 0xE6000000;
                                            temp_s1_8->unk4 = 0;
                                            temp_s1_9->unk0 = 0xF0000000;
                                            temp_s1_10 = temp_s1_9 + 8;
                                            sp344 = sp1EC;
                                            temp_s1_9->unk4 = 0x073FC000;
                                            temp_s1_10->unk0 = 0xE7000000;
                                            temp_s1_10->unk4 = 0;
                                            var_s1 = temp_s1_10 + 8;
                                        }
                                        if (sp338 != 1) {
                                            var_s1->unk4 = 0x8000;
                                            var_s1->unk0 = 0xE3001001;
                                            var_s1 += 8;
                                            sp338 = 1;
                                        }
                                    } else if (sp338 != 0) {
                                        var_s1->unk0 = 0xE3001001;
                                        var_s1->unk4 = 0;
                                        var_s1 += 8;
                                        sp338 = 0;
                                    }
                                    if (temp_fp != sp348) {
                                        switch (temp_t1) { /* switch 6; irregular */
                                            case 0: /* switch 6 */
                                                temp_lo = temp_s0_8 * temp_s5;
                                                temp_v0_2 = (temp_s6 & 7) << 0x15;
                                                temp_ra = temp_v0_2 | 0xF5000000;
                                                temp_t1_2 = (var_s4_2 & 3) << 0x12;
                                                temp_s1_11 = var_s1 + 8;
                                                temp_t2 = (var_a2 & 0xF) << 0xE;
                                                var_s1->unk0 = temp_v0_2 | 0xFD000000 | 0x100000;
                                                temp_t3 = (var_s7 & 3) << 8;
                                                var_s1->unk4 = temp_fp;
                                                temp_s1_11->unk0 = temp_ra | 0x100000;
                                                temp_t4 = (var_t0 & 0xF) * 0x10;
                                                temp_s1_12 = temp_s1_11 + 8;
                                                temp_s1_11->unk4 = temp_t1_2 | 0x07000000 | temp_t2 | temp_t3 | temp_t4;
                                                temp_v0_3 = ((temp_lo + 3) >> 2) - 1;
                                                temp_s1_13 = temp_s1_12 + 8;
                                                temp_s1_12->unk0 = 0xE6000000;
                                                temp_s1_12->unk4 = 0;
                                                temp_s1_13->unk0 = 0xF3000000;
                                                temp_s1_14 = temp_s1_13 + 8;
                                                if (temp_v0_3 < 0x7FF) {
                                                    var_a3 = temp_v0_3;
                                                } else {
                                                    var_a3 = 0x7FF;
                                                }
                                                temp_v1_2 = temp_s0_8 / 16;
                                                var_a1 = temp_v1_2;
                                                if (temp_v1_2 <= 0) {
                                                    var_a1 = 1;
                                                }
                                                if (temp_v1_2 <= 0) {
                                                    var_v0_2 = 1;
                                                } else {
                                                    var_v0_2 = temp_v1_2;
                                                }
                                                temp_s1_13->unk4 = (((var_a1 + 0x7FF) / var_v0_2) & 0xFFF) | 0x07000000 | ((var_a3 & 0xFFF) << 0xC);
                                                temp_s1_14->unk0 = 0xE7000000;
                                                temp_s1_15 = temp_s1_14 + 8;
                                                temp_s1_14->unk4 = 0;
                                                temp_s1_15->unk4 = temp_t1_2 | temp_t2 | temp_t3 | temp_t4;
                                                temp_s1_15->unk0 = temp_ra | (((((temp_s0_8 >> 1) + 7) >> 3) & 0x1FF) << 9);
                                                temp_s1_16 = temp_s1_15 + 8;
                                                temp_s1_16->unk0 = 0xF2000000;
                                                temp_s1_16->unk4 = ((((temp_s0_8 - 1) * 4) & 0xFFF) << 0xC) | (((temp_s5 - 1) * 4) & 0xFFF);
                                                var_s1 = temp_s1_16 + 8;
                                                if (temp_lo >= 0x1000) {
block_146:
                                                    sp344 = 0;
                                                }
                                                break;
                                            case 1: /* switch 6 */
                                                temp_lo_2 = temp_s0_8 * temp_s5;
                                                temp_v0_4 = (temp_s6 & 7) << 0x15;
                                                temp_ra_2 = temp_v0_4 | 0xF5000000;
                                                temp_t1_3 = (var_s4_2 & 3) << 0x12;
                                                temp_s1_17 = var_s1 + 8;
                                                temp_t2_2 = (var_a2 & 0xF) << 0xE;
                                                var_s1->unk0 = temp_v0_4 | 0xFD000000 | 0x100000;
                                                temp_t3_2 = (var_s7 & 3) << 8;
                                                var_s1->unk4 = temp_fp;
                                                temp_s1_17->unk0 = temp_ra_2 | 0x100000;
                                                temp_t4_2 = (var_t0 & 0xF) * 0x10;
                                                temp_s1_18 = temp_s1_17 + 8;
                                                temp_s1_17->unk4 = temp_t1_3 | 0x07000000 | temp_t2_2 | temp_t3_2 | temp_t4_2;
                                                temp_v0_5 = ((temp_lo_2 + 1) >> 1) - 1;
                                                temp_s1_19 = temp_s1_18 + 8;
                                                temp_s1_18->unk0 = 0xE6000000;
                                                temp_s1_18->unk4 = 0;
                                                temp_s1_19->unk0 = 0xF3000000;
                                                temp_s1_20 = temp_s1_19 + 8;
                                                if (temp_v0_5 < 0x7FF) {
                                                    var_a3_2 = temp_v0_5;
                                                } else {
                                                    var_a3_2 = 0x7FF;
                                                }
                                                temp_v1_3 = temp_s0_8 / 8;
                                                var_a1_2 = temp_v1_3;
                                                if (temp_v1_3 <= 0) {
                                                    var_a1_2 = 1;
                                                }
                                                if (temp_v1_3 <= 0) {
                                                    var_v0_3 = 1;
                                                } else {
                                                    var_v0_3 = temp_v1_3;
                                                }
                                                temp_s1_19->unk4 = (((var_a1_2 + 0x7FF) / var_v0_3) & 0xFFF) | 0x07000000 | ((var_a3_2 & 0xFFF) << 0xC);
                                                temp_s1_20->unk0 = 0xE7000000;
                                                temp_s1_21 = temp_s1_20 + 8;
                                                temp_s1_20->unk4 = 0;
                                                temp_s1_21->unk4 = temp_t1_3 | temp_t2_2 | temp_t3_2 | temp_t4_2;
                                                temp_s1_21->unk0 = temp_ra_2 | 0x80000 | ((((temp_s0_8 + 7) >> 3) & 0x1FF) << 9);
                                                temp_s1_22 = temp_s1_21 + 8;
                                                temp_s1_22->unk0 = 0xF2000000;
                                                temp_s1_22->unk4 = ((((temp_s0_8 - 1) * 4) & 0xFFF) << 0xC) | (((temp_s5 - 1) * 4) & 0xFFF);
                                                var_s1 = temp_s1_22 + 8;
                                                if (temp_lo_2 >= 0x800) {
                                                    goto block_146;
                                                }
                                                break;
                                            case 2: /* switch 6 */
                                                temp_lo_3 = temp_s0_8 * temp_s5;
                                                temp_v0_6 = (temp_s6 & 7) << 0x15;
                                                temp_t1_4 = (var_s4_2 & 3) << 0x12;
                                                temp_t2_3 = (var_a2 & 0xF) << 0xE;
                                                temp_s1_23 = var_s1 + 8;
                                                temp_t3_3 = (var_s7 & 3) << 8;
                                                var_s1->unk0 = temp_v0_6 | 0xFD000000 | 0x100000;
                                                temp_t4_3 = (var_t0 & 0xF) * 0x10;
                                                temp_s1_24 = temp_s1_23 + 8;
                                                var_s1->unk4 = temp_fp;
                                                temp_ra_3 = temp_v0_6 | 0xF5000000 | 0x100000;
                                                temp_s1_23->unk4 = temp_t1_4 | 0x07000000 | temp_t2_3 | temp_t3_3 | temp_t4_3;
                                                temp_s1_23->unk0 = temp_ra_3;
                                                temp_v0_7 = temp_lo_3 - 1;
                                                temp_s1_25 = temp_s1_24 + 8;
                                                temp_s1_24->unk0 = 0xE6000000;
                                                temp_s1_24->unk4 = 0;
                                                temp_s1_25->unk0 = 0xF3000000;
                                                temp_s1_26 = temp_s1_25 + 8;
                                                if (temp_v0_7 < 0x7FF) {
                                                    var_a3_3 = temp_v0_7;
                                                } else {
                                                    var_a3_3 = 0x7FF;
                                                }
                                                temp_t5 = temp_s0_8 * 2;
                                                temp_v1_4 = temp_t5 / 8;
                                                var_a1_3 = temp_v1_4;
                                                if (temp_v1_4 <= 0) {
                                                    var_a1_3 = 1;
                                                }
                                                if (temp_v1_4 <= 0) {
                                                    var_v0_4 = 1;
                                                } else {
                                                    var_v0_4 = temp_v1_4;
                                                }
                                                temp_s1_25->unk4 = (((var_a1_3 + 0x7FF) / var_v0_4) & 0xFFF) | 0x07000000 | ((var_a3_3 & 0xFFF) << 0xC);
                                                temp_s1_26->unk0 = 0xE7000000;
                                                temp_s1_27 = temp_s1_26 + 8;
                                                temp_s1_26->unk4 = 0;
                                                temp_s1_27->unk4 = temp_t1_4 | temp_t2_3 | temp_t3_3 | temp_t4_3;
                                                temp_s1_27->unk0 = temp_ra_3 | ((((temp_t5 + 7) >> 3) & 0x1FF) << 9);
                                                temp_s1_28 = temp_s1_27 + 8;
                                                temp_s1_28->unk0 = 0xF2000000;
                                                temp_s1_28->unk4 = ((((temp_s0_8 - 1) * 4) & 0xFFF) << 0xC) | (((temp_s5 - 1) * 4) & 0xFFF);
                                                var_s1 = temp_s1_28 + 8;
                                                if (temp_lo_3 >= 0x400) {
                                                    goto block_146;
                                                }
                                                break;
                                            case 3: /* switch 6 */
                                                temp_lo_4 = temp_s0_8 * temp_s5;
                                                temp_v0_8 = (temp_s6 & 7) << 0x15;
                                                temp_t1_5 = (var_s4_2 & 3) << 0x12;
                                                temp_t2_4 = (var_a2 & 0xF) << 0xE;
                                                temp_s1_29 = var_s1 + 8;
                                                temp_t3_4 = (var_s7 & 3) << 8;
                                                var_s1->unk0 = temp_v0_8 | 0xFD000000 | 0x180000;
                                                temp_t4_4 = (var_t0 & 0xF) * 0x10;
                                                temp_s1_30 = temp_s1_29 + 8;
                                                var_s1->unk4 = temp_fp;
                                                temp_t5_2 = temp_v0_8 | 0xF5000000 | 0x180000;
                                                temp_s1_29->unk4 = temp_t1_5 | 0x07000000 | temp_t2_4 | temp_t3_4 | temp_t4_4;
                                                temp_s1_29->unk0 = temp_t5_2;
                                                temp_v0_9 = temp_lo_4 - 1;
                                                temp_s1_31 = temp_s1_30 + 8;
                                                temp_s1_30->unk0 = 0xE6000000;
                                                temp_s1_30->unk4 = 0;
                                                temp_s1_31->unk0 = 0xF3000000;
                                                temp_s1_32 = temp_s1_31 + 8;
                                                if (temp_v0_9 < 0x7FF) {
                                                    var_a3_4 = temp_v0_9;
                                                } else {
                                                    var_a3_4 = 0x7FF;
                                                }
                                                temp_v1_5 = (temp_s0_8 * 4) / 8;
                                                var_a1_4 = temp_v1_5;
                                                if (temp_v1_5 <= 0) {
                                                    var_a1_4 = 1;
                                                }
                                                if (temp_v1_5 <= 0) {
                                                    var_v0_5 = 1;
                                                } else {
                                                    var_v0_5 = temp_v1_5;
                                                }
                                                temp_s1_31->unk4 = (((var_a1_4 + 0x7FF) / var_v0_5) & 0xFFF) | 0x07000000 | ((var_a3_4 & 0xFFF) << 0xC);
                                                temp_s1_32->unk0 = 0xE7000000;
                                                temp_s1_33 = temp_s1_32 + 8;
                                                temp_s1_32->unk4 = 0;
                                                temp_s1_33->unk4 = temp_t1_5 | temp_t2_4 | temp_t3_4 | temp_t4_4;
                                                temp_s1_33->unk0 = temp_t5_2 | (((((temp_s0_8 * 2) + 7) >> 3) & 0x1FF) << 9);
                                                temp_s1_34 = temp_s1_33 + 8;
                                                temp_s1_34->unk0 = 0xF2000000;
                                                temp_s1_34->unk4 = ((((temp_s0_8 - 1) * 4) & 0xFFF) << 0xC) | (((temp_s5 - 1) * 4) & 0xFFF);
                                                var_s1 = temp_s1_34 + 8;
                                                if (temp_lo_4 >= 0x200) {
                                                    goto block_146;
                                                }
                                                break;
                                        }
                                        sp348 = temp_fp;
                                    }
                                    temp_a3 = spAC + &D_800D6AB8;
                                    temp_v0_10 = *temp_a3;
                                    if (temp_v0_10 != NULL) {
                                        var_v1 = ((temp_v0_10->unk0 * var_s2->unk4C) >> 0x10) & 0xFFFF;
                                        var_a0 = ((temp_v0_10->unk2 * var_s2->unk4D) >> 0x10) & 0xFFFF;
                                        var_a1_5 = ((temp_v0_10->unk4 * var_s2->unk4E) >> 0x10) & 0xFFFF;
                                        if (var_v1 >= 0x100) {
                                            var_v1 = 0xFF;
                                        }
                                        if (var_a0 >= 0x100) {
                                            var_a0 = 0xFF;
                                        }
                                        if (var_a1_5 >= 0x100) {
                                            var_a1_5 = 0xFF;
                                        }
                                        var_s1->unk0 = 0xFA000000;
                                        var_s1_2 = var_s1 + 8;
                                        var_s1->unk4 = (var_v1 << 0x18) | ((var_a0 & 0xFF) << 0x10) | ((var_a1_5 & 0xFF) << 8) | var_s2->unk4F;
                                    } else {
                                        var_s1->unk0 = 0xFA000000;
                                        var_s1_2 = var_s1 + 8;
                                        var_s1->unk4 = (var_s2->unk4C << 0x18) | (var_s2->unk4D << 0x10) | (var_s2->unk4E << 8) | var_s2->unk4F;
                                    }
                                    temp_a2_2 = var_s2->unk6;
                                    if (temp_a2_2 & 0x80) {
                                        temp_v0_11 = *temp_a3;
                                        if (temp_v0_11 != NULL) {
                                            temp_v0_12 = var_s1_2;
                                            var_v1_2 = (temp_v0_11->unk0 * var_s2->unk54) >> 0x10;
                                            var_a0_2 = (temp_v0_11->unk2 * var_s2->unk55) >> 0x10;
                                            var_a1_6 = (temp_v0_11->unk4 * var_s2->unk56) >> 0x10;
                                            if (var_v1_2 >= 0x100) {
                                                var_v1_2 = 0xFF;
                                            }
                                            if (var_a0_2 >= 0x100) {
                                                var_a0_2 = 0xFF;
                                            }
                                            if (var_a1_6 >= 0x100) {
                                                var_a1_6 = 0xFF;
                                            }
                                            temp_v0_12->unk0 = 0xFB000000;
                                            var_s1_2 += 8;
                                            temp_v0_12->unk4 = (var_v1_2 << 0x18) | ((var_a0_2 & 0xFF) << 0x10) | ((var_a1_6 & 0xFF) << 8) | var_s2->unk57;
                                        } else {
                                            temp_v0_13 = var_s1_2;
                                            temp_v0_13->unk0 = 0xFB000000;
                                            var_s1_2 += 8;
                                            temp_v0_13->unk4 = (var_s2->unk54 << 0x18) | (var_s2->unk55 << 0x10) | (var_s2->unk56 << 8) | var_s2->unk57;
                                        }
                                        var_s1_2->unk0 = 0xFC30B261;
                                        var_s1_2->unk4 = 0x5566DB6D;
                                    } else if (temp_a2_2 & 0x100) {
                                        var_s1_2->unk0 = 0xFC7096E1;
                                        var_s1_2->unk4 = 0xFF2FFFFF;
                                    } else {
                                        var_s1_2->unk0 = 0xFC119623;
                                        var_s1_2->unk4 = 0xFF2FFFFF;
                                    }
                                    var_s1_3 = var_s1_2 + 8;
                                    temp_a2_3 = var_s2->unk6;
                                    temp_f6_2 = var_f18;
                                    if (temp_a2_3 & 0x400) {
                                        var_a0_3 = 3;
                                    } else {
                                        var_a0_3 = 1;
                                        if (temp_a2_3 & 0x200) {
                                            var_v1_3 = var_s2->unk57;
                                        } else {
                                            var_v1_3 = 8;
                                        }
                                        if (sp33C != var_v1_3) {
                                            var_s1_3->unk0 = 0xF9000000;
                                            var_s1_3->unk4 = var_v1_3 & 0xFF;
                                            var_s1_3 += 8;
                                            sp33C = var_v1_3;
                                        }
                                    }
                                    if (sp340 != var_a0_3) {
                                        var_s1_3->unk0 = 0xE2001E01;
                                        var_s1_3->unk4 = var_a0_3;
                                        var_s1_3 += 8;
                                        sp340 = var_a0_3;
                                    }
                                    var_s1_3->unk0 = 0xEE000000;
                                    temp_s1_35 = var_s1_3 + 8;
                                    var_s1_3->unk4 = (((temp_f22_3 * sp230) + sp22C) * 32.0f) << 0x10;
                                    temp_s1_36 = temp_s1_35 + 8;
                                    if (temp_f6_2 > 0) {
                                        var_a1_7 = temp_f6_2;
                                    } else {
                                        var_a1_7 = 0;
                                    }
                                    temp_f8 = var_f20;
                                    temp_s1_37 = temp_s1_36 + 8;
                                    temp_f10 = var_f28;
                                    temp_f4_2 = var_f26;
                                    if (temp_f8 > 0) {
                                        var_v0_6 = temp_f8;
                                    } else {
                                        var_v0_6 = 0;
                                    }
                                    temp_s1_35->unk0 = (var_v0_6 & 0xFFF) | 0xE4000000 | ((var_a1_7 & 0xFFF) << 0xC);
                                    if (temp_f4_2 > 0) {
                                        var_a1_8 = temp_f4_2;
                                    } else {
                                        var_a1_8 = 0;
                                    }
                                    if (temp_f10 > 0) {
                                        var_v0_7 = temp_f10;
                                    } else {
                                        var_v0_7 = 0;
                                    }
                                    temp_s1_35->unk4 = (var_v0_7 & 0xFFF) | ((var_a1_8 & 0xFFF) << 0xC);
                                    temp_s1_36->unk0 = 0xE1000000;
                                    if (temp_f4_2 < 0) {
                                        if (unksp22A < 0) {
                                            temp_v0_14 = (temp_f4_2 * unksp22A) >> 7;
                                            if (temp_v0_14 > 0) {
                                                var_a0_4 = temp_v0_14;
                                            } else {
                                                var_a0_4 = 0;
                                            }
                                        } else {
                                            var_v1_4 = 0;
                                            temp_v0_15 = (temp_f4_2 * unksp22A) >> 7;
                                            if (temp_v0_15 < 0) {
                                                var_v1_4 = temp_v0_15;
                                            }
                                            var_a0_4 = var_v1_4;
                                        }
                                    } else {
                                        var_a0_4 = 0;
                                    }
                                    if (temp_f10 < 0) {
                                        if (unksp226 < 0) {
                                            var_v0_8 = (temp_f10 * unksp226) >> 7;
                                            if (var_v0_8 > 0) {

                                            } else {
                                                var_v0_8 = 0;
                                            }
                                        } else {
                                            var_v1_5 = 0;
                                            temp_v0_16 = (temp_f10 * unksp226) >> 7;
                                            if (temp_v0_16 < 0) {
                                                var_v1_5 = temp_v0_16;
                                            }
                                            var_v0_8 = var_v1_5;
                                        }
                                    } else {
                                        var_v0_8 = 0;
                                    }
                                    temp_s1_36->unk4 = (-var_v0_8 & 0xFFFF) | (var_a0_4 * -0x10000);
                                    temp_s1_37->unk0 = 0xF1000000;
                                    var_s1 = temp_s1_37 + 8;
                                    temp_s1_37->unk4 = (sp228 << 0x10) | (sp224 & 0xFFFF);
                                }
                            }
                        }
                    }
                    var_s2 = var_s2->unk0;
                } while (var_s2 != NULL);
            }
        }
        temp_t7 = sp20C + 1;
        sp20C = temp_t7;
    } while (temp_t7 != 0x10);
    if (sp338 != 0) {
        var_s1->unk0 = 0xE3001001;
        var_s1->unk4 = 0;
        var_s1 += 8;
    }
    temp_s1_38 = var_s1 + 8;
    var_s1->unk4 = 0x80000;
    var_s1->unk0 = 0xE3000C00;
    temp_s1_39 = temp_s1_38 + 8;
    temp_s1_38->unk0 = 0xE2001D00;
    temp_s1_38->unk4 = 0;
    temp_s1_39->unk0 = 0xE2001E01;
    temp_s1_39->unk4 = 0;
    *arg2 = temp_s1_39 + 8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009E8F4.s")
#endif

void func_800A043C(void *arg0, u32 flag) {
    func_8009E8F4(arg0, flag, &gDisplayListHeads[0]);
}

void func_800A0460(void *arg0) {
    func_800A043C(arg0, 0x00000003);
}

void func_800A0480(s32 arg0, u32 arg1) {
    if (arg0 > 0) {
        if (arg0 < 9) {
            D_800D6A14[arg0] = arg1;
        }
    }
}

void func_800A04A4(u32 arg0, u32 arg1) {
    D_800BE3E0 = arg0;
    D_800BE3E4 = arg1;
}

#ifdef MIPS_TO_C

GObj *func_800A04B8(s32 arg0) {
    ? *temp_v0;
    s32 var_s0;

    var_s0 = arg0 - 1;
    D_800D6A08 = NULL;
    D_800D6A0C = 0;
    if (var_s0 >= 0) {
loop_1:
        temp_v0 = gtlMalloc(0x78, 4);
        if (temp_v0 == NULL) {
            return NULL;
        }
        var_s0 -= 1;
        *temp_v0 = D_800D6A08;
        D_800D6A08 = temp_v0;
        if (var_s0 < 0) {
            goto block_4;
        }
        goto loop_1;
    }
block_4:
    D_800D6AE2 = 0;
    D_800D6AE8 = 0;
    return HS64_omMakeGObj(-7, func_800A09AC, 0, 0x80000000);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A04B8.s")
#endif

#ifdef MIPS_TO_C

void func_800A0558(void *arg0, void *arg1, void *arg2) {
    f32 spE0;
    f32 spDC;
    f32 spD8;
    f32 spD0;
    f32 spCC;
    f32 spC8;
    f32 sp6C;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f0_6;
    f32 temp_f20;
    f32 temp_f22;
    s32 var_a0;
    u8 *temp_v0;
    u8 *var_a1;
    u8 temp_v0_2;
    void *var_s0;
    void *var_s1;
    void *var_s3;
    void *var_t0;
    void *var_v1;

    var_s3 = arg2;
    guMtxIdentF(&spB8[0]);
    do {
        temp_f0 = var_s3->unk40;
        if ((temp_f0 != 1.0f) || (var_s3->unk44 != 1.0f) || (var_s3->unk48 != 1.0f)) {
            HS64_MkScaleMtxF(&sp78[0], temp_f0, var_s3->unk44, var_s3->unk48);
            guMtxCatF(&spB8[0], &sp78[0], &spB8[0]);
        }
        temp_f0_2 = var_s3->unk30;
        if ((temp_f0_2 != 0.0f) || (var_s3->unk34 != 0.0f) || (var_s3->unk38 != 0.0f)) {
            HS64_MkRotationMtxF(&sp78[0], temp_f0_2, var_s3->unk34, var_s3->unk38);
            guMtxCatF(&spB8[0], &sp78[0], &spB8[0]);
        }
        temp_f0_3 = var_s3->unk1C;
        if ((temp_f0_3 != 0.0f) || (var_s3->unk20 != 0.0f) || (var_s3->unk24 != 0.0f)) {
            HS64_MkTranslateMtxF(&sp78[0], temp_f0_3, var_s3->unk20, var_s3->unk24);
            guMtxCatF(&spB8[0], &sp78[0], &spB8[0]);
        }
        temp_v0 = var_s3->unk4C;
        var_s1 = NULL;
        var_s0 = NULL;
        var_t0 = NULL;
        if (temp_v0 != NULL) {
            var_v1 = temp_v0 + 4;
            var_a0 = 0;
            var_a1 = temp_v0;
            do {
                temp_v0_2 = *var_a1;
                var_a0 += 1;
                switch (temp_v0_2) {                /* irregular */
                    case 0:
                        break;
                    case 1:
                        var_s1 = var_v1;
block_23:
                        var_v1 += 0x10;
                        break;
                    case 2:
                        var_s0 = var_v1;
                        var_v1 += 0x14;
                        break;
                    case 3:
                        var_t0 = var_v1;
                        goto block_23;
                }
                var_a1 += 1;
            } while (var_a0 != 3);
            if ((var_t0 != NULL) && ((temp_f0_4 = var_t0->unk4, (temp_f0_4 != 1.0f)) || (var_t0->unk8 != 1.0f) || (var_t0->unkC != 1.0f))) {
                HS64_MkScaleMtxF(&sp78[0], temp_f0_4, var_t0->unk8, var_t0->unkC);
                guMtxCatF(&spB8[0], &sp78[0], &spB8[0]);
            }
            if ((var_s0 != NULL) && ((temp_f0_5 = var_s0->unk8, (temp_f0_5 != 0.0f)) || (var_s0->unkC != 0.0f) || (var_s0->unk10 != 0.0f))) {
                HS64_MkRotationMtxF(&sp78[0], temp_f0_5, var_s0->unkC, var_s0->unk10);
                guMtxCatF(&spB8[0], &sp78[0], &spB8[0]);
            }
            if ((var_s1 != NULL) && ((temp_f0_6 = var_s1->unk4, (temp_f0_6 != 0.0f)) || (var_s1->unk8 != 0.0f) || (var_s1->unkC != 0.0f))) {
                HS64_MkTranslateMtxF(&sp78[0], temp_f0_6, var_s1->unk8, var_s1->unkC);
                guMtxCatF(&spB8[0], &sp78[0], &spB8[0]);
            }
        }
        var_s3 = var_s3->unk14;
    } while (var_s3 != 1);
    arg0->unk0 = spE8;
    arg0->unk4 = spEC;
    arg0->unk8 = spF0;
    temp_f22 = arg1->unk4;
    temp_f20 = arg1->unk0;
    sp6C = arg1->unk8;
    guNormalize(&spB8[0], &spC8, &spD8);
    guNormalize(&spB8[1], &spCC, &spDC);
    guNormalize(&spB8[2], &spD0, &spE0);
    arg1->unk0 = (spD8 * sp6C) + ((spB8[0] * temp_f20) + (spC8 * temp_f22));
    arg1->unk4 = (spDC * sp6C) + ((spB8[1] * temp_f20) + (spCC * temp_f22));
    arg1->unk8 = (spE0 * sp6C) + ((spB8[2] * temp_f20) + (spD0 * temp_f22));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A0558.s")
#endif

#ifdef MIPS_TO_C

void func_800A09AC(void *arg0) {
    ? *sp140;
    f32 sp130;
    f32 sp12C;
    f32 sp128;
    f32 sp124;
    f32 sp110;
    f32 sp10C;
    f32 sp104;
    f32 sp100;
    f32 spFC;
    f32 spF8;
    f32 spF4;
    f32 spF0;
    f32 spE4;
    f32 spD0;
    f32 spC0;
    f32 spBC;
    f32 spA8;
    f32 spA0;
    f32 sp9C;
    f32 sp98;
    ? *temp_v0_4;
    ? *var_s0;
    f32 temp_f0;
    f32 temp_f0_10;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f0_6;
    f32 temp_f0_7;
    f32 temp_f0_8;
    f32 temp_f0_9;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f32 temp_f12_4;
    f32 temp_f14;
    f32 temp_f20;
    f32 temp_f20_2;
    f32 temp_f20_3;
    f32 temp_f22;
    f32 temp_f22_2;
    f32 temp_f22_3;
    f32 temp_f22_4;
    f32 temp_f22_5;
    f32 temp_f22_6;
    f32 temp_f22_7;
    f32 temp_f24;
    f32 temp_f24_2;
    f32 temp_f24_3;
    f32 temp_f24_4;
    f32 temp_f24_5;
    f32 temp_f24_6;
    f32 temp_f26;
    f32 temp_f26_2;
    f32 temp_f26_3;
    f32 temp_f28;
    f32 temp_f2;
    f32 temp_f2_10;
    f32 temp_f2_11;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f2_4;
    f32 temp_f2_5;
    f32 temp_f2_6;
    f32 temp_f2_7;
    f32 temp_f2_8;
    f32 temp_f2_9;
    f32 temp_f30;
    f32 temp_f30_2;
    f32 temp_f30_3;
    f32 temp_f30_4;
    f32 temp_f30_5;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f6;
    f32 temp_f6_2;
    f32 temp_f8;
    f32 temp_f8_2;
    f32 temp_f8_3;
    f32 var_f0;
    f32 var_f0_2;
    f32 var_f14;
    f32 var_f16;
    f32 var_f18;
    f32 var_f20;
    f32 var_f20_2;
    f32 var_f20_3;
    f32 var_f20_4;
    f32 var_f22;
    f32 var_f22_2;
    f32 var_f24;
    f32 var_f24_2;
    f32 var_f24_3;
    f32 var_f26;
    f32 var_f28;
    f32 var_f28_2;
    f32 var_f28_3;
    f32 var_f28_4;
    f32 var_f30;
    f32 var_f30_2;
    f32 var_f4;
    s32 temp_a2;
    u16 temp_t5;
    u16 temp_v0_3;
    u8 temp_t4;
    u8 temp_t7;
    u8 temp_v0;
    u8 temp_v0_2;
    void *temp_a0;
    void *temp_a0_2;

    var_s0 = D_800D6A0C;
    D_800D6AF0 = NULL;
    if (var_s0 != NULL) {
        do {
            if (arg0->unk44 & (1 << ((var_s0->unkA >> 3) + 0x10))) {
                D_800D6AF0 = var_s0;
                goto block_105;
            }
            if (var_s0->unk6 & 0x800) {
                D_800D6AF0 = var_s0;
                goto block_105;
            }
            temp_f0 = var_s0->unk40;
            if (temp_f0 < 0.0f) {
                var_f4 = var_s0->unk44 - temp_f0;
            } else {
                var_f4 = var_s0->unk44 + (random_f32() * var_s0->unk40);
            }
            var_s0->unk44 = var_f4;
            if (var_s0->unk44 >= 1.0f) {
                sp124 = var_s0->unk20;
                sp128 = var_s0->unk24;
                sp12C = var_s0->unk28;
                temp_a2 = var_s0->unk48;
                if (temp_a2 != 0) {
                    func_800A0558(&sp130, &sp124, temp_a2);
                    var_s0->unk14 = sp130;
                    var_s0->unk18 = sp134;
                    var_s0->unk1C = sp138;
                }
                if (var_s0->unk3C < 0.0f) {
                    temp_t4 = var_s0->unk9;
                    switch (temp_t4) {              /* switch 1 */
                        case 0:                     /* switch 1 */
                        case 3:                     /* switch 1 */
                        case 4:                     /* switch 1 */
                            temp_f2 = var_s0->unk50;
                            temp_f12 = (var_s0->unk54 - temp_f2) / var_s0->unk44;
                            temp_f8 = random_f32() * temp_f12;
                            spC0 = temp_f12;
                            spE4 = temp_f8 + temp_f2;
                            break;
                        case 6:                     /* switch 1 */
                        case 7:                     /* switch 1 */
                            temp_f2_2 = var_s0->unk50;
                            temp_f12_2 = (var_s0->unk54 - temp_f2_2) / var_s0->unk44;
                            temp_f6 = random_f32() * temp_f12_2;
                            spC0 = temp_f12_2;
                            spE4 = temp_f6 + temp_f2_2;
                            break;
                        default:                    /* switch 1 */
                            spE4 = random_f32() * 6.2831855f;
                            spC0 = 6.2831855f / var_s0->unk44;
                            break;
                    }
                }
            }
            if (var_s0->unk44 >= 1.0f) {
                do {
                    temp_t7 = var_s0->unk9;
                    switch (temp_t7) {              /* switch 2 */
                        case 0:                     /* switch 2 */
                        case 3:                     /* switch 2 */
                        case 4:                     /* switch 2 */
                        case 6:                     /* switch 2 */
                        case 7:                     /* switch 2 */
                            var_f22 = sp128;
                            if (var_s0->unk8 & 1) {
                                var_f24 = D_800D6A10->unk3C - var_s0->unk14;
                                var_f22 = D_800D6A10->unk40 - var_s0->unk18;
                                var_f20 = D_800D6A10->unk44 - var_s0->unk1C;
                                var_f0 = sqrtf((sp124 * sp124) + (sp128 * sp128) + (sp12C * sp12C));
                            } else {
                                var_f20 = sp12C;
                                var_f24 = sp124;
                                var_f0 = sqrtf((sp124 * sp124) + (var_f22 * var_f22) + (var_f20 * var_f20));
                            }
                            sp110 = var_f0;
                            temp_f0_2 = atan2f(var_f22, var_f20);
                            sp10C = temp_f0_2;
                            temp_f26 = sinf(temp_f0_2);
                            temp_f0_3 = cosf(sp10C);
                            sp100 = temp_f0_3;
                            temp_f0_4 = atan2f(var_f24, (var_f22 * temp_f26) + (var_f20 * temp_f0_3));
                            spFC = sinf(temp_f0_4);
                            sp104 = temp_f26;
                            spF8 = cosf(temp_f0_4);
                            temp_f2_3 = var_s0->unk38;
                            if (temp_f2_3 < 0.0f) {
                                var_f28 = 1.0f;
                                var_f24_2 = -temp_f2_3;
                                spBC = 1.0f;
                            } else {
                                var_f0_2 = random_f32();
                                spBC = var_f0_2;
                                temp_v0 = var_s0->unk9;
                                var_f28 = var_f0_2;
                                if ((temp_v0 == 3) || (temp_v0 == 4)) {
                                    var_f0_2 = sqrtf(var_f28);
                                    spBC = var_f0_2;
                                    var_f28 = var_f0_2;
                                }
                                var_f24_2 = var_s0->unk38 * var_f0_2;
                            }
                            switch (var_s0->unk9) { /* switch 3; irregular */
                                case 6:             /* switch 3 */
                                    if (var_s0->unk3C < 0.0f) {
                                        spE4 += spC0;
                                        var_f28_2 = (1.5707964f - atan2f(var_s0->unk58, var_f24_2)) - var_s0->unk3C;
                                    } else {
                                        temp_f2_4 = var_s0->unk50;
                                        spE4 = (random_f32() * (var_s0->unk54 - temp_f2_4)) + temp_f2_4;
                                        var_f28_2 = (1.5707964f - atan2f(var_s0->unk58, var_f24_2)) + var_s0->unk3C;
                                    }
                                    break;
                                case 7:             /* switch 3 */
                                    temp_f0_5 = var_s0->unk3C;
                                    if (temp_f0_5 < 0.0f) {
                                        spE4 += spC0;
                                        var_f28_2 = 1.5707964f - temp_f0_5;
                                    } else {
                                        temp_f2_5 = var_s0->unk50;
                                        spE4 = (random_f32() * (var_s0->unk54 - temp_f2_5)) + temp_f2_5;
                                        var_f28_2 = var_s0->unk3C + 1.5707964f;
                                    }
                                    break;
                                default:            /* switch 3 */
                                    temp_f0_6 = var_s0->unk3C;
                                    if (temp_f0_6 < 0.0f) {
                                        var_f28_2 = -temp_f0_6;
                                        spE4 += spC0;
                                    } else {
                                        temp_f2_6 = var_s0->unk50;
                                        spE4 = (random_f32() * (var_s0->unk54 - temp_f2_6)) + temp_f2_6;
                                        var_f28_2 = var_f28 * var_s0->unk3C;
                                    }
                                    break;
                            }
                            var_f22_2 = cosf(spE4) * var_f24_2;
                            temp_v0_2 = var_s0->unk9;
                            var_f26 = sinf(spE4) * var_f24_2;
                            if ((temp_v0_2 == 6) || (temp_v0_2 == 7)) {
                                temp_f0_7 = random_f32();
                                if (var_s0->unk9 == 6) {
                                    temp_f2_7 = 1.0f - temp_f0_7;
                                    var_f22_2 *= temp_f2_7;
                                    var_f26 *= temp_f2_7;
                                }
                                var_f30 = temp_f0_7 * var_s0->unk58;
                            } else {
                                var_f30 = 0.0f;
                            }
                            temp_f20 = sinf(var_f28_2) * sp110;
                            temp_f24 = cosf(spE4) * temp_f20;
                            spF4 = var_f22_2;
                            spF0 = var_f26;
                            temp_f22 = sinf(spE4) * temp_f20;
                            temp_f0_8 = cosf(var_f28_2);
                            sp9C = spFC;
                            sp98 = spF8;
                            spA0 = sp100;
                            temp_f2_8 = -spF4;
                            temp_f12_3 = -temp_f24;
                            temp_f8_2 = sp98;
                            temp_f2_9 = temp_f0_8 * sp110;
                            spD0 = ((temp_f2_8 * sp100 * spFC) - (spF0 * sp104)) + (var_f30 * sp100 * spF8) + var_s0->unk1C;
                            temp_f6_2 = sp9C;
                            sp9C = sp104;
                            temp_f28 = (temp_f24 * temp_f8_2) + (temp_f2_9 * temp_f6_2);
                            temp_f4 = sp9C;
                            sp9C = temp_f8_2;
                            temp_f8_3 = spA0;
                            spA0 = temp_f4;
                            sp98 = temp_f8_3;
                            var_f14 = temp_f28;
                            spA0 = temp_f6_2;
                            sp9C = temp_f4;
                            temp_f30 = (temp_f12_3 * temp_f4 * temp_f6_2) + (temp_f22 * temp_f8_3) + (temp_f2_9 * temp_f4 * temp_f8_2);
                            var_f16 = temp_f30;
                            temp_f4_2 = ((temp_f12_3 * sp98 * spA0) - (temp_f22 * temp_f4)) + (temp_f2_9 * sp98 * temp_f8_2);
                            spA8 = temp_f4_2;
                            var_f18 = temp_f4_2;
                            if (var_s0->unk9 == 3) {
                                var_f14 = temp_f28 * spBC;
                                var_f16 = temp_f30 * spBC;
                                var_f18 = temp_f4_2 * spBC;
                            }
                            func_8009BD3C(temp_f12_3, var_f14, var_s0->unkA, var_s0->unk6, var_s0->unkB, var_s0->unk10, (bitwise f32) var_s0->unkC, (spF4 * spF8) + (var_f30 * spFC) + var_s0->unk14, (temp_f2_8 * sp104 * spFC) + (spF0 * sp100) + (var_f30 * sp104 * spF8) + var_s0->unk18, spD0, var_f14, var_f16, var_f18, var_s0->unk34, var_s0->unk2C, var_s0->unk30, 0, var_s0);
                            break;
                        case 1:                     /* switch 2 */
                            temp_f0_9 = random_f32();
                            temp_f2_10 = var_s0->unk14;
                            temp_f12_4 = var_s0->unk18;
                            temp_f14 = var_s0->unk1C;
                            func_8009BD3C(temp_f12_4, temp_f14, var_s0->unkA, var_s0->unk6, var_s0->unkB, var_s0->unk10, (bitwise f32) var_s0->unkC, temp_f2_10 + (temp_f0_9 * (var_s0->unk50 - temp_f2_10)), temp_f12_4 + (temp_f0_9 * (var_s0->unk54 - temp_f12_4)), temp_f14 + (temp_f0_9 * (var_s0->unk58 - temp_f14)), sp124, sp128, sp12C, var_s0->unk34, var_s0->unk2C, var_s0->unk30, 0, var_s0);
                            break;
                        case 2:                     /* switch 2 */
                            temp_f0_10 = atan2f(sp128, sp12C);
                            sp10C = temp_f0_10;
                            temp_f26_2 = sinf(temp_f0_10);
                            temp_f30_2 = atan2f(sp124, (sp128 * temp_f26_2) + (sp12C * cosf(sp10C)));
                            temp_f22_2 = sqrtf((sp124 * sp124) + (sp128 * sp128) + (sp12C * sp12C));
                            if (var_s0->unk38 < 0.0f) {
                                var_f28_3 = 1.0f;
                            } else {
                                var_f28_3 = random_f32();
                            }
                            if (var_s0->unk3C < 0.0f) {
                                spE4 += spC0;
                            } else {
                                spE4 = random_f32() * 6.2831855f;
                            }
                            var_s0->unk50 = temp_f22_2;
                            if (func_8009BD3C((bitwise f32) var_s0->unkA, (bitwise f32) (var_s0->unk6 | 4), var_s0->unkB, (bitwise u16) var_s0->unk10, var_s0->unkC, 0.0f, 0.0f, 0.0f, spE4, var_f28_3, 0.0f, var_s0->unk34, sp10C, temp_f30_2, 0.0f, var_s0) != 0) {
                                var_s0->unk54 = (bitwise u16) var_s0->unk54 + 1;
                            }
                            break;
                        case 5:                     /* switch 2 */
                            temp_f24_2 = var_s0->unk14;
                            temp_f22_3 = var_s0->unk18;
                            temp_f30_3 = var_s0->unk1C;
                            if (var_s0->unk74 & 1) {
                                if (random_f32() > 0.5f) {
                                    var_f20_2 = 0.5f;
                                } else {
                                    var_f20_2 = -0.5f;
                                }
                            } else {
                                var_f20_2 = random_f32() - 0.5f;
                            }
                            temp_f24_3 = temp_f24_2 + (var_s0->unk50 * var_f20_2);
                            temp_f22_4 = temp_f22_3 + (var_s0->unk54 * var_f20_2);
                            temp_f30_4 = temp_f30_3 + (var_s0->unk58 * var_f20_2);
                            if (var_s0->unk74 & 2) {
                                if (random_f32() > 0.5f) {
                                    var_f20_3 = 0.5f;
                                } else {
                                    var_f20_3 = -0.5f;
                                }
                            } else {
                                var_f20_3 = random_f32() - 0.5f;
                            }
                            temp_f24_4 = temp_f24_3 + (var_s0->unk5C * var_f20_3);
                            temp_f22_5 = temp_f22_4 + (var_s0->unk60 * var_f20_3);
                            temp_f30_5 = temp_f30_4 + (var_s0->unk64 * var_f20_3);
                            if (var_s0->unk74 & 4) {
                                if (random_f32() > 0.5f) {
                                    var_f20_4 = 0.5f;
                                } else {
                                    var_f20_4 = -0.5f;
                                }
                            } else {
                                var_f20_4 = random_f32() - 0.5f;
                            }
                            func_8009BD3C((bitwise f32) var_s0->unkA, (bitwise f32) var_s0->unk6, var_s0->unkB, (bitwise u16) var_s0->unk10, var_s0->unkC, temp_f24_4 + (var_s0->unk68 * var_f20_4), temp_f22_5 + (var_s0->unk6C * var_f20_4), temp_f30_5 + (var_s0->unk70 * var_f20_4), sp124, sp128, sp12C, var_s0->unk34, var_s0->unk2C, (bitwise f32) var_s0->unk30, 0.0f, var_s0);
                            break;
                        case 8:                     /* switch 2 */
                            temp_f24_5 = sqrtf(random_f32());
                            temp_f20_2 = random_f32() * 6.2831855f;
                            if (var_s0->unk60 == 0.0f) {
                                sp10C = random_f32() * 6.2831855f;
                            } else {
                                sp10C = (cosf(temp_f20_2) * temp_f24_5 * var_s0->unk60) + var_s0->unk5C;
                            }
                            if (var_s0->unk58 == 0.0f) {
                                var_f30_2 = (1.0f - sqrtf(random_f32())) * 1.5707964f;
                                if (random_f32() < 0.5f) {
                                    var_f30_2 = -var_f30_2;
                                }
                            } else {
                                var_f30_2 = (sinf(temp_f20_2) * temp_f24_5 * var_s0->unk58) + var_s0->unk54;
                            }
                            temp_f24_6 = var_s0->unk38;
                            if (temp_f24_6 < 0.0f) {
                                var_f24_3 = -temp_f24_6;
                                var_f28_4 = var_s0->unk50 / var_f24_3;
                            } else {
                                var_f28_4 = var_s0->unk50 / temp_f24_6;
                                var_f24_3 = temp_f24_6 * random_f32();
                            }
                            spE4 = temp_f20_2;
                            temp_f22_6 = cosf(sp10C);
                            temp_f26_3 = cosf(var_f30_2) * (var_f24_3 * temp_f22_6);
                            temp_f20_3 = sinf(var_f30_2) * var_f24_3;
                            temp_f22_7 = sinf(sp10C);
                            temp_f2_11 = cosf(var_f30_2) * (var_f24_3 * temp_f22_7);
                            func_8009BD3C((bitwise f32) var_s0->unkA, (bitwise f32) var_s0->unk6, var_s0->unkB, (bitwise u16) var_s0->unk10, var_s0->unkC, var_s0->unk14 + temp_f26_3, var_s0->unk18 + temp_f20_3, var_s0->unk1C + temp_f2_11, temp_f26_3 * var_f28_4, temp_f20_3 * var_f28_4, temp_f2_11 * var_f28_4, var_s0->unk34, var_s0->unk2C, (bitwise f32) var_s0->unk30, 0.0f, var_s0);
                            break;
                        default:                    /* switch 2 */
                            if (D_800D6AD8 != NULL) {
                                D_800D6AD8(var_s0, &sp124);
                            }
                            break;
                    }
                    var_s0->unk44 = var_s0->unk44 - 1.0f;
                } while (var_s0->unk44 >= 1.0f);
            }
            temp_v0_3 = var_s0->unkE;
            temp_t5 = temp_v0_3 - 1;
            if ((temp_v0_3 != 0) && (var_s0->unkE = temp_t5, ((temp_t5 & 0xFFFF) == 0))) {
                if ((var_s0->unk9 == 2) && ((bitwise u16) var_s0->unk54 != 0)) {
                    var_s0->unkE = 1;
                    var_s0->unk40 = 0.0f;
                    goto block_104;
                }
                if (D_800D6AF0 == NULL) {
                    D_800D6A0C = var_s0->unk0;
                } else {
                    *D_800D6AF0 = var_s0->unk0;
                }
                temp_a0 = var_s0->unk4C;
                temp_v0_4 = var_s0->unk0;
                if (temp_a0 != NULL) {
                    temp_a0->unk2A = temp_a0->unk2A - 1;
                    temp_a0_2 = var_s0->unk4C;
                    if (temp_a0_2->unk2A == 0) {
                        sp140 = temp_v0_4;
                        func_8009B69C(temp_a0_2);
                    }
                }
                var_s0->unk0 = D_800D6A08;
                D_800D6A08 = var_s0;
                var_s0 = temp_v0_4;
                D_800D6AE2 -= 1;
            } else {
block_104:
                D_800D6AF0 = var_s0;
block_105:
                var_s0 = var_s0->unk0;
            }
        } while (var_s0 != NULL);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A09AC.s")
#endif

#ifdef MIPS_TO_C

? *func_800A194C(void) {
    ? *temp_v1;
    s32 temp_v0;
    u16 temp_t4;
    u16 temp_t7;

    temp_v1 = D_800D6A08;
    if (temp_v1 == NULL) {
        return NULL;
    }
    temp_t7 = D_800D6AE2 + 1;
    temp_v0 = temp_t7 & 0xFFFF;
    D_800D6AE2 = temp_t7;
    if (D_800D6AE8 < temp_v0) {
        D_800D6AE8 = temp_v0;
    }
    D_800D6A08 = temp_v1->unk0;
    temp_v1->unk0 = D_800D6A0C;
    D_800D6A0C = temp_v1;
    if (D_800D6AF0 == NULL) {
        D_800D6AF0 = temp_v1;
    }
    temp_t4 = D_800BE3E8 + 1;
    D_800BE3E8 = temp_t4;
    temp_v1->unk4 = temp_t4;
    temp_v1->unk4C = 0;
    return temp_v1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A194C.s")
#endif

#ifdef MIPS_TO_C

void *func_800A19EC(s32 arg0, s32 arg1) {
    s32 sp2C;
    s32 sp28;
    s32 *sp24;
    f32 temp_f0;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    s32 *temp_a0;
    s32 temp_a1;
    s32 temp_v0_2;
    s32 temp_v1;
    u8 temp_t5;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_v0;
    void *temp_v0_3;
    void *var_a1;

    temp_v0_2 = arg0 & 7;
    if (temp_v0_2 >= 8) {
        return NULL;
    }
    temp_a1 = temp_v0_2 * 4;
    if (arg1 >= *(&D_800D6A38 + temp_a1)) {
        return NULL;
    }
    sp28 = temp_a1;
    temp_v0 = func_800A194C(temp_a1, arg0, arg1);
    if (temp_v0 != NULL) {
        temp_a0 = temp_a1 + &D_800D6A78;
        temp_v1 = arg1 * 4;
        temp_v0->unkA = arg0;
        temp_v0->unk9 = **(*temp_a0 + temp_v1);
        temp_v0->unk6 = (*(*temp_a0 + temp_v1))->unkA;
        temp_v0->unk8 = (*(*temp_a0 + temp_v1))->unk8;
        temp_v0->unkB = (*(*temp_a0 + temp_v1))->unk2;
        temp_v0->unkC = (*(*temp_a0 + temp_v1))->unk6;
        temp_v0->unk14 = 0.0f;
        temp_v0->unk18 = 0.0f;
        temp_v0->unk1C = 0.0f;
        temp_v0->unkE = (*(*temp_a0 + temp_v1))->unk4;
        temp_v0->unk20 = (*(*temp_a0 + temp_v1))->unk14;
        temp_v0->unk24 = (*(*temp_a0 + temp_v1))->unk18;
        temp_v0->unk28 = (*(*temp_a0 + temp_v1))->unk1C;
        temp_v0->unk2C = (*(*temp_a0 + temp_v1))->unkC;
        temp_v0->unk30 = (*(*temp_a0 + temp_v1))->unk10;
        temp_v0->unk34 = (*(*temp_a0 + temp_v1))->unk2C;
        temp_v0->unk10 = *(*temp_a0 + temp_v1) + 0x3C;
        temp_v0->unk38 = (*(*temp_a0 + temp_v1))->unk20;
        temp_v0->unk3C = (*(*temp_a0 + temp_v1))->unk24;
        temp_v0->unk44 = 0.0f;
        temp_v0->unk40 = (*(*temp_a0 + temp_v1))->unk28;
        if ((*(*(&D_800D6A98 + temp_a1) + ((*(*temp_a0 + temp_v1))->unk2 * 4)))->unk16 != 0) {
            temp_v0->unk6 = temp_v0->unk6 | 0x10;
        }
        temp_t5 = temp_v0->unk9;
        temp_v0->unk48 = 0;
        switch (temp_t5) {
            case 0:
            case 3:
            case 4:
                temp_a1_2 = *(*temp_a0 + temp_v1);
                temp_f2 = temp_a1_2->unk30;
                if ((temp_f2 == 0.0f) && (temp_a1_2->unk34 == 0.0f)) {
                    temp_v0->unk50 = 0.0f;
                    temp_v0->unk54 = 6.2831855f;
                } else {
                    temp_v0->unk50 = temp_f2;
                    temp_v0->unk54 = (*(*temp_a0 + temp_v1))->unk34;
                }
                break;
            case 1:
                temp_v0->unk50 = (*(*temp_a0 + temp_v1))->unk30;
                temp_v0->unk54 = (*(*temp_a0 + temp_v1))->unk34;
                temp_v0->unk58 = (*(*temp_a0 + temp_v1))->unk38;
                break;
            case 2:
                temp_v0->unk54 = 0;
                break;
            case 6:
            case 7:
                temp_a1_3 = *(*temp_a0 + temp_v1);
                temp_f2_2 = temp_a1_3->unk30;
                if ((temp_f2_2 == 0.0f) && (temp_a1_3->unk34 == 0.0f)) {
                    temp_v0->unk50 = 0.0f;
                    temp_v0->unk54 = 6.2831855f;
                } else {
                    temp_v0->unk50 = temp_f2_2;
                    temp_v0->unk54 = (*(*temp_a0 + temp_v1))->unk34;
                }
                temp_v0->unk58 = (*(*temp_a0 + temp_v1))->unk38;
                break;
            case 5:
                temp_v0->unk50 = (*(*temp_a0 + temp_v1))->unk30;
                temp_v0->unk60 = (*(*temp_a0 + temp_v1))->unk34;
                temp_v0->unk54 = 0.0f;
                temp_v0->unk58 = 0.0f;
                temp_v0->unk5C = 0.0f;
                temp_v0->unk64 = 0.0f;
                temp_v0->unk68 = 0.0f;
                temp_v0->unk6C = 0.0f;
                temp_v0->unk74 = 0;
                temp_v0->unk70 = (*(*temp_a0 + temp_v1))->unk38;
                var_a1 = *(*temp_a0 + temp_v1);
                if (var_a1->unk30 < 0.0f) {
                    temp_v0->unk74 = 1;
                    var_a1 = *(*temp_a0 + temp_v1);
                }
                if (var_a1->unk34 < 0.0f) {
                    temp_v0->unk74 = temp_v0->unk74 | 2;
                    var_a1 = *(*temp_a0 + temp_v1);
                }
                if (var_a1->unk38 < 0.0f) {
                    temp_v0->unk74 = temp_v0->unk74 | 4;
                }
                break;
            case 8:
                temp_f0 = temp_v0->unk20;
                temp_f2_3 = temp_v0->unk24;
                temp_f14 = temp_v0->unk28;
                sp24 = temp_a0;
                sp2C = temp_v1;
                temp_f14_2 = temp_v0->unk28;
                temp_v0->unk50 = sqrtf((temp_f0 * temp_f0) + (temp_f2_3 * temp_f2_3) + (temp_f14 * temp_f14));
                temp_v0->unk54 = atan2f(temp_v0->unk24, sqrtf((temp_v0->unk14 * temp_v0->unk20) + (temp_f14_2 * temp_f14_2)));
                temp_v0->unk5C = atan2f(temp_v0->unk28, temp_v0->unk20);
                temp_v0->unk58 = (*(*temp_a0 + temp_v1))->unk30;
                temp_v0->unk60 = (*(*temp_a0 + temp_v1))->unk34;
                break;
            default:
                if (D_800D6ADC != NULL) {
                    D_800D6ADC(temp_v0, temp_a1, arg0, arg1);
                }
                break;
        }
        if (temp_v0->unk8 & 2) {
            temp_v0_3 = func_8009B5E8(0, temp_v0->unk4);
            temp_v0->unk4C = temp_v0_3;
            if (temp_v0_3 != NULL) {
                temp_v0_3->unkBA = 1;
            }
        }
    }
    return temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A19EC.s")
#endif

#ifdef MIPS_TO_C

void func_800A1F30(void *arg0) {
    ? *sp18;
    ? *var_v0;
    ? *var_v1;
    void *temp_a1;
    void *temp_a1_2;

    var_v0 = D_800D6A0C;
    var_v1 = NULL;
    if (var_v0 != NULL) {
loop_1:
        if (var_v0 == arg0) {
            if ((arg0->unk9 == 2) && (arg0->unk54 != 0)) {
                arg0->unkE = 1;
                arg0->unk40 = 0.0f;
                return;
            }
            if (var_v1 == NULL) {
                D_800D6A0C = *var_v0;
            } else {
                *var_v1 = *var_v0;
            }
            temp_a1 = arg0->unk4C;
            if (temp_a1 != NULL) {
                temp_a1->unk2A = temp_a1->unk2A - 1;
                temp_a1_2 = arg0->unk4C;
                if (temp_a1_2->unk2A == 0) {
                    sp18 = var_v0;
                    func_8009B69C(temp_a1_2, temp_a1_2);
                }
            }
            *var_v0 = D_800D6A08;
            D_800D6A08 = var_v0;
            D_800D6AE2 -= 1;
            return;
        }
        var_v1 = var_v0;
        var_v0 = *var_v0;
        if (var_v0 == NULL) {

        } else {
            goto loop_1;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A1F30.s")
#endif

#ifdef MIPS_TO_C

void func_800A2024(void) {
    ? *temp_s1;
    ? *var_s0;

    var_s0 = D_800D6A0C;
    if (var_s0 != NULL) {
        do {
            temp_s1 = *var_s0;
            func_800A1F30(var_s0);
            var_s0 = temp_s1;
        } while (temp_s1 != NULL);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A2024.s")
#endif

#ifdef MIPS_TO_C

void func_800A206C(s32 arg0, s32 arg1) {
    D_800D6ADC = arg0;
    D_800D6AD8 = arg1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A206C.s")
#endif

#ifdef MIPS_TO_C

void func_800A2080(s32 arg0, s32 arg1) {
    ? **temp_s6;
    ? *temp_v0;
    ? *temp_v0_3;
    ? *var_s0;
    ? *var_s0_2;
    ? *var_s1;
    ? *var_s1_2;
    s32 temp_fp;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a0_4;
    void *temp_v0_2;

    temp_s6 = (arg1 * 4) + &D_800D69C8;
    var_s0 = *temp_s6;
    temp_fp = arg0 & 0xFFFF;
    var_s1 = NULL;
    if (var_s0 != NULL) {
        do {
            temp_v0 = var_s0->unk0;
            if (temp_fp == var_s0->unk4) {
                if (var_s1 == NULL) {
                    *temp_s6 = temp_v0;
                } else {
                    *var_s1 = temp_v0;
                }
                temp_v0_2 = var_s0->unk5C;
                if ((temp_v0_2 != NULL) && (var_s0->unk6 & 4) && (temp_v0_2->unk9 == 2)) {
                    temp_v0_2->unk54 = temp_v0_2->unk54 - 1;
                }
                temp_a0 = var_s0->unk60;
                if (temp_a0 != NULL) {
                    temp_a0->unk2A = temp_a0->unk2A - 1;
                    temp_a0_2 = var_s0->unk60;
                    if (temp_a0_2->unk2A == 0) {
                        func_8009B69C(temp_a0_2);
                    }
                }
                var_s0->unk0 = D_800D69C0;
                D_800D69C0 = var_s0;
                D_800D6AE0 -= 1;
            } else {
                var_s1 = var_s0;
            }
            var_s0 = temp_v0;
        } while (temp_v0 != NULL);
    }
    var_s0_2 = D_800D6A0C;
    var_s1_2 = NULL;
    if (var_s0_2 != NULL) {
        do {
            temp_v0_3 = var_s0_2->unk0;
            if (temp_fp == var_s0_2->unk4) {
                if ((var_s0_2->unk9 == 2) && (var_s0_2->unk54 != 0)) {
                    var_s0_2->unk40 = 0.0f;
                    var_s0_2->unkE = 1;
                    goto block_29;
                }
                if (var_s1_2 == NULL) {
                    D_800D6A0C = temp_v0_3;
                } else {
                    *var_s1_2 = temp_v0_3;
                }
                temp_a0_3 = var_s0_2->unk4C;
                if (temp_a0_3 != NULL) {
                    temp_a0_3->unk2A = temp_a0_3->unk2A - 1;
                    temp_a0_4 = var_s0_2->unk4C;
                    if (temp_a0_4->unk2A == 0) {
                        func_8009B69C(temp_a0_4);
                    }
                }
                var_s0_2->unk0 = D_800D6A08;
                D_800D6A08 = var_s0_2;
                D_800D6AE2 -= 1;
            } else {
block_29:
                var_s1_2 = var_s0_2;
            }
            var_s0_2 = temp_v0_3;
        } while (temp_v0_3 != NULL);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A2080.s")
#endif

#ifdef MIPS_TO_C

void func_800A22A8(void *arg0) {
    func_800A2080(arg0->unk4, arg0->unk8 >> 3, arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A22A8.s")
#endif

#ifdef MIPS_TO_C

void func_800A22D4(void *arg0) {
    func_800A2080(arg0->unk4, arg0->unkA >> 3, arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A22D4.s")
#endif

#ifdef MIPS_TO_C

void func_800A2300(void *arg0) {
    DObj *temp_v0;
    DObj *var_s1;
    void *temp_s0;
    void *var_a0;

    if (arg0->unkF == 1) {
        var_s1 = arg0->unk3C;
        if (var_s1 != NULL) {
            do {
                var_a0 = D_800D6A0C;
                if (var_a0 != NULL) {
                    do {
                        temp_s0 = var_a0->unk0;
                        if (var_s1 == var_a0->unk48) {
                            func_800A1F30(var_a0);
                        }
                        var_a0 = temp_s0;
                    } while (temp_s0 != NULL);
                }
                temp_v0 = animModelTreeNextNode(var_s1);
                var_s1 = temp_v0;
            } while (temp_v0 != NULL);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A2300.s")
#endif

#ifdef MIPS_TO_C

void func_800A238C(f32 arg0, f32 arg1, f32 arg2) {
    void **var_v1;
    void *var_v0;
    void *var_v0_2;

    var_v1 = &D_800D69C8;
    do {
        var_v0 = *var_v1;
        var_v1 += 4;
        if (var_v0 != NULL) {
            do {
                var_v0->unk24 = var_v0->unk24 + arg0;
                var_v0->unk28 = var_v0->unk28 + arg1;
                var_v0->unk2C = var_v0->unk2C + arg2;
                var_v0 = var_v0->unk0;
            } while (var_v0 != NULL);
        }
    } while (var_v1 < &D_800D6A08);
    var_v0_2 = D_800D6A0C;
    if (var_v0_2 != NULL) {
        do {
            var_v0_2->unk14 = var_v0_2->unk14 + arg0;
            var_v0_2->unk18 = var_v0_2->unk18 + arg1;
            var_v0_2->unk1C = var_v0_2->unk1C + arg2;
            var_v0_2 = var_v0_2->unk0;
        } while (var_v0_2 != NULL);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A238C.s")
#endif

#ifdef MIPS_TO_C

void func_800A2440(s32 arg0, s32 arg1) {
    s32 temp_a0;
    void *var_v0;
    void *var_v0_2;

    var_v0 = *(&D_800D69C8 + (arg1 * 4));
    temp_a0 = arg0 & 0xFFFF;
    if (var_v0 != NULL) {
        do {
            if (temp_a0 == var_v0->unk4) {
                var_v0->unk6 = var_v0->unk6 | 0x800;
            }
            var_v0 = var_v0->unk0;
        } while (var_v0 != NULL);
    }
    var_v0_2 = D_800D6A0C;
    if (var_v0_2 != NULL) {
        do {
            if (temp_a0 == var_v0_2->unk4) {
                var_v0_2->unk6 = var_v0_2->unk6 | 0x800;
            }
            var_v0_2 = var_v0_2->unk0;
        } while (var_v0_2 != NULL);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A2440.s")
#endif

#ifdef MIPS_TO_C

void func_800A24C4(s32 arg0, s32 arg1) {
    s32 temp_a0;
    void *var_v0;
    void *var_v0_2;

    var_v0 = *(&D_800D69C8 + (arg1 * 4));
    temp_a0 = arg0 & 0xFFFF;
    if (var_v0 != NULL) {
        do {
            if (temp_a0 == var_v0->unk4) {
                var_v0->unk6 = var_v0->unk6 & ~0x800;
            }
            var_v0 = var_v0->unk0;
        } while (var_v0 != NULL);
    }
    var_v0_2 = D_800D6A0C;
    if (var_v0_2 != NULL) {
        do {
            if (temp_a0 == var_v0_2->unk4) {
                var_v0_2->unk6 = var_v0_2->unk6 & ~0x800;
            }
            var_v0_2 = var_v0_2->unk0;
        } while (var_v0_2 != NULL);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A24C4.s")
#endif

#ifdef MIPS_TO_C

void func_800A2550(void *arg0) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    s32 temp_t7;
    s32 temp_t9;
    s32 temp_v0;
    u8 temp_t8;
    void *temp_v0_2;
    void *var_s1;
    void *var_s1_2;

    var_s1 = arg0;
    if (arg0->unk0 != 0x12) {
        do {
            temp_t7 = var_s1->unk2C;
            var_s1 += 0x2C;
        } while (temp_t7 != 0x12);
    }
    var_s1_2 = var_s1 + 0x2C;
    if (var_s1->unk4 != 0) {
        func_8001C2E4(&spA4[0], arg0->unk8, arg0->unkC, arg0->unk10, arg0->unk14, arg0->unk18, arg0->unk1C, arg0->unk20, arg0->unk24, arg0->unk28);
        do {
            temp_v0 = var_s1_2->unk0;
            temp_v0_2 = func_800A19EC((temp_v0 >> 0x10) & 0xF, temp_v0 & 0xFFFF);
            if (temp_v0_2 != NULL) {
                func_8001C2E4(&sp64[0], var_s1_2->unk8, var_s1_2->unkC, var_s1_2->unk10, var_s1_2->unk14, var_s1_2->unk18, var_s1_2->unk1C, var_s1_2->unk20, var_s1_2->unk24, var_s1_2->unk28);
                guMtxCatF(&sp64[0], &spA4[0], &sp64[0]);
                temp_f0 = temp_v0_2->unk20;
                temp_f2 = temp_v0_2->unk24;
                temp_v0_2->unk14 = sp94;
                temp_f12 = temp_v0_2->unk28;
                temp_t8 = temp_v0_2->unk9;
                temp_v0_2->unk18 = sp98;
                temp_v0_2->unk1C = sp9C;
                temp_v0_2->unk20 = (sp84 * temp_f12) + ((sp64[0] * temp_f0) + (sp74 * temp_f2));
                temp_v0_2->unk24 = (sp88 * temp_f12) + ((sp64[1] * temp_f0) + (sp78 * temp_f2));
                temp_v0_2->unk28 = (sp8C * temp_f12) + ((sp64[2] * temp_f0) + (sp7C * temp_f2));
                switch (temp_t8) {
                    case 0:
                    case 2:
                    case 3:
                    case 4:
                    case 6:
                    case 7:
                    case 8:
                        temp_v0_2->unk38 = temp_v0_2->unk38 * sqrtf((sp84 * sp84) + ((sp64[0] * sp64[0]) + (sp74 * sp74)));
                        break;
                    case 1:
                        temp_f0_2 = temp_v0_2->unk50;
                        temp_f2_2 = temp_v0_2->unk54;
                        temp_f12_2 = temp_v0_2->unk58;
                        temp_v0_2->unk50 = sp94 + ((sp64[0] * temp_f0_2) + (sp74 * temp_f2_2) + (sp84 * temp_f12_2));
                        temp_v0_2->unk54 = sp98 + ((sp64[1] * temp_f0_2) + (sp78 * temp_f2_2) + (sp88 * temp_f12_2));
                        temp_v0_2->unk58 = sp9C + ((sp64[2] * temp_f0_2) + (sp7C * temp_f2_2) + (sp8C * temp_f12_2));
                        break;
                    case 5:
                        temp_f0_3 = temp_v0_2->unk50;
                        temp_f2_3 = temp_v0_2->unk60;
                        temp_f12_3 = temp_v0_2->unk70;
                        temp_v0_2->unk50 = sp64[0] * temp_f0_3;
                        temp_v0_2->unk54 = sp74 * temp_f2_3;
                        temp_v0_2->unk58 = sp84 * temp_f12_3;
                        temp_v0_2->unk5C = sp64[1] * temp_f0_3;
                        temp_v0_2->unk60 = sp78 * temp_f2_3;
                        temp_v0_2->unk64 = sp88 * temp_f12_3;
                        temp_v0_2->unk68 = sp64[2] * temp_f0_3;
                        temp_v0_2->unk6C = sp7C * temp_f2_3;
                        temp_v0_2->unk70 = sp8C * temp_f12_3;
                        break;
                }
            }
            temp_t9 = var_s1_2->unk0;
            var_s1_2 += 0x2C;
        } while (!(temp_t9 & 0x80000000));
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A2550.s")
#endif

