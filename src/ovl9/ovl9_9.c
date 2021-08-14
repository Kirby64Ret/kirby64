#include <ultra64.h>
#include <macros.h>

#include "buffers.h"
#include "D_8004A7C4.h"
#include "ovl1/ovl1_6.h"
#include "unk_structs/D_800E1B50.h"

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_802072B8_ovl9(struct GObj *this) {
    call_virtual_function(D_800E7880[D_8004A7C4->objId], 2, &D_8021C8D0);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_802072B8_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_80207304_ovl9(struct GObj *this) {
    D_800E1B50[D_8004A7C4->objId]->unk98 = &D_801CC550;
    call_virtual_function(gEntityVtableIndexArray[D_8004A7C4->objId], 4, &D_8021C8D8);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_80207304_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_80207374_ovl9(void) {
    f32 *temp_a1;
    struct GObj *temp_v1;
    struct UnkStruct800E1B50 *temp_a2;
    u32 temp_v0;
    u32 temp_v0_2;
    s32 phi_v0;

    temp_v0 = D_8004A7C4->objId;
    temp_a2 = D_800E1B50[temp_v0];
    D_800DEF90[temp_v0] = &D_800B7B64;
    temp_a2->unk98 = &D_801CC550;
    temp_v1 = D_8004A7C4;
    temp_a1 = &D_800E6A10[temp_v1->objId];
    *temp_a1 = -*temp_a1;
    D_800DF150[temp_v1->objId] = &D_802074B0;
    temp_v0_2 = temp_v1->objId;
    phi_v0 = temp_v0_2 * 4;
    if ((D_800E8AE0[temp_v0_2] & 1) != 0) {
        D_801A6C10_ovl9(temp_a1, temp_a2);
        phi_v0 = D_8004A7C4->objId * 4;
    }
    if (*(D_800E8920 + phi_v0) == 1) {
        *(gEntityVtableIndexArray + phi_v0) = 0;
    } else {
        *(gEntityVtableIndexArray + phi_v0) = 3;
    }
    func_801A0D50(&D_80207304);
    call_virtual_function(gEntityVtableIndexArray[D_8004A7C4->objId], 4, &D_8021C8D8);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_80207374_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_802074B0_ovl9(void) {
    s32 sp18;

    sp18 = func_801A0D74_ovl9();
    func_801A3198_ovl9();
    if (sp18 == 0) {
        call_virtual_function(D_800DDFD0[D_8004A7C4->objId], 4, &D_8021C8E8);
    }
    func_802079F4_ovl9(0x41700000, 6);
    func_80207C24_ovl9();
    func_8019F3B0_ovl9();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_802074B0_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_80207530_ovl9(struct GObj *this) {
    struct GObj *temp_v0;

    temp_v0 = D_8004A7C4;
    D_800DDFD0[temp_v0->objId] = 0;
    D_800E9AA0[temp_v0->objId] = 0;
    D_800E9E20[temp_v0->objId] = 0;
    func_800AA864(0x101BF, 2);
    D_800E9E20[D_8004A7C4->objId] = 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_80207530_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_802075C4_ovl9(void) {
    struct GObj *temp_v0;

    if (D_800E9E20[D_8004A7C4->objId] != 0) {
        func_80199F1C_ovl9();
        temp_v0 = D_8004A7C4;
        gEntityVtableIndexArray[temp_v0->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[temp_v0->objId], &D_80207304);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_802075C4_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_80207648_ovl9(struct GObj *this) {
    struct GObj *temp_v0;
    struct UnkStruct800E1B50 *temp_s0;
    u32 temp_v1;

    temp_v0 = D_8004A7C4;
    temp_v1 = temp_v0->objId;
    D_800DDFD0[temp_v1] = 1;
    temp_s0 = D_800E1B50[temp_v1];
    D_800E9E20[temp_v0->objId] = 0;
    func_800AA864(0x101B9, 1);
    if (temp_s0->unk3C != 0) {
loop_1:
        finish_current_thread(1);
        if (temp_s0->unk3C != 0) {
            goto loop_1;
        }
    }
    func_800AA864(0x101BA, 2);
    D_800E9E20[D_8004A7C4->objId] = 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_80207648_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_80207710_ovl9(void) {
    struct GObj *temp_v0;

    if (D_800E9E20[D_8004A7C4->objId] != 0) {
        func_80199F1C_ovl9();
        temp_v0 = D_8004A7C4;
        gEntityVtableIndexArray[temp_v0->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[temp_v0->objId], &D_80207304);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_80207710_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_80207794_ovl9(struct GObj *this) {
    f32 *temp_v1_2;
    struct GObj *temp_v0;
    struct GObj *temp_v0_2;
    struct UnkStruct800E1B50 *temp_s0;
    u32 temp_v1;

    temp_v0 = D_8004A7C4;
    temp_v1 = temp_v0->objId;
    D_800DDFD0[temp_v1] = 2;
    temp_s0 = D_800E1B50[temp_v1];
    D_800E9E20[temp_v0->objId] = 0;
    func_800AA864(0x101BB, 1);
    if (temp_s0->unk3C != 0) {
loop_1:
        finish_current_thread(1);
        if (temp_s0->unk3C != 0) {
            goto loop_1;
        }
    }
    temp_v0_2 = D_8004A7C4;
    temp_v1_2 = &D_800E6A10[temp_v0_2->objId];
    *temp_v1_2 = -*temp_v1_2;
    D_800E9E20[temp_v0_2->objId] = 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_80207794_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_8020786C_ovl9(struct GObj *this) {
    struct GObj *temp_v0;
    u32 temp_v1;

    temp_v0 = D_8004A7C4;
    temp_v1 = temp_v0->objId;
    if (D_800E9E20[temp_v1] != 0) {
        gEntityVtableIndexArray[temp_v1] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[temp_v0->objId], &D_80207304);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_8020786C_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_802078D8_ovl9(struct GObj *this) {
    f32 temp_f2;
    struct GObj *temp_v0;
    u32 temp_v1;

    D_800E1B50[D_8004A7C4->objId]->unk98 = &D_801CC574;
    D_800DDFD0[D_8004A7C4->objId] = 3;
    func_800A9EA4(0x101BF);
    temp_v0 = D_8004A7C4;
    temp_f2 = D_8021DAC0;
    D_800E6690[temp_v0->objId] = 0.0f;
    temp_v1 = temp_v0->objId;
    D_800E64D0[temp_v1] = D_800E6690[temp_v1];
    D_800E6850[temp_v0->objId] = temp_f2;
    D_800E3210[temp_v0->objId] = 0.0f;
    D_800E3750[temp_v0->objId] = -1.5f;
    D_800E3C90[temp_v0->objId] = temp_f2;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_802078D8_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_802079EC_ovl9(struct GObj *this) {

}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_802079EC_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
struct UnkStruct800E1B50 *func_802079F4_ovl9(f32 arg0, s32 arg1) {
    f32 *temp_a0_2;
    f32 *temp_a0_3;
    f32 *temp_a0_4;
    s32 *temp_a1;
    struct GObj *temp_v1_2;
    struct UnkStruct800E1B50 *temp_v0;
    u32 temp_v1;
    u8 temp_a0;

    temp_v1 = D_8004A7C4->objId;
    temp_v0 = D_800E1B50[temp_v1];
    temp_a0 = temp_v0->unk3C;
    if (temp_a0 != 0) {
        if (temp_a0 >= (arg1 & 0xFF)) {
            temp_v0->unk3C = 0;
            temp_v1_2 = D_8004A7C4;
            D_800E9020[temp_v1_2->objId] = 0.0f;
            temp_a0_4 = &D_800E6A10[temp_v1_2->objId];
            *temp_a0_4 = -*temp_a0_4;
            temp_a1 = &D_800E9AA0[temp_v1_2->objId];
            *temp_a1 = *temp_a1 ^ 1;
            return temp_v0;
        }
        if (D_800E6A10[temp_v1] == 1.0f) {
            temp_a0_2 = &D_800E9020[temp_v1];
            *temp_a0_2 = *temp_a0_2 - ((arg0 * D_8021DAC4) / 180.0f);
        } else {
            temp_a0_3 = &D_800E9020[temp_v1];
            *temp_a0_3 = *temp_a0_3 + ((arg0 * D_8021DAC8) / 180.0f);
        }
        temp_v0->unk3C += 1;
    }
    return temp_v0;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_802079F4_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
struct UnkStruct800E1B50 *func_80207B30_ovl9(struct GObj *this) {
    struct GObj *temp_v1;
    struct UnkStruct800E1B50 *temp_v0;
    u32 temp_a0;

    temp_v1 = D_8004A7C4;
    temp_a0 = temp_v1->objId;
    D_800E3210[temp_a0] = 0.0f;
    D_800E3750[temp_v1->objId] = -1.5f;
    temp_v0 = D_800E1B50[temp_a0];
    D_800E3C90[temp_v1->objId] = D_8021DACC;
    temp_v0->unk98 = &D_801CC598;
    return temp_v0;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_80207B30_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
struct UnkStruct800E1B50 *func_80207BA8_ovl9(struct GObj *this) {
    struct GObj *temp_v1;
    struct UnkStruct800E1B50 *temp_v0;
    u32 temp_a0;
    u32 temp_a0_2;

    temp_v1 = D_8004A7C4;
    temp_a0 = temp_v1->objId;
    temp_v0 = D_800E1B50[temp_a0];
    D_800E3750[temp_a0] = 0.0f;
    temp_a0_2 = temp_v1->objId;
    D_800E3210[temp_a0_2] = D_800E3750[temp_a0_2];
    D_800E3C90[temp_v1->objId] = D_8021DAD0;
    temp_v0->unk98 = &D_801CC550;
    return temp_v0;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_80207BA8_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_80207C24_ovl9(void) {
    s32 sp1C;
    s32 sp18;
    s32 *temp_v1;
    u32 temp_a0;
    void *temp_a0_2;
    void *temp_v0;

    temp_a0 = D_8004A7C4->objId;
    temp_v1 = D_800DFBD0[temp_a0];
    sp1C = temp_v1[0xB];
    sp18 = temp_v1[7];
    func_80111550(temp_a0);
    temp_v0 = func_80111C88(&D_801C9178, D_8004A7C4->objId);
    temp_a0_2 = temp_v0;
    temp_v0->unk24->unk8 = sp18;
    temp_v0->unk24->unk30 = sp1C;
    func_80111ECC(temp_a0_2);
    func_801A0C70_ovl9();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_80207C24_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_80207CAC_ovl9(struct GObj *this) {
    call_virtual_function(gEntityVtableIndexArray[D_8004A7C4->objId], 1, &D_8021C8F8);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_80207CAC_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_80207CF4_ovl9(void) {
    struct GObj *temp_v0;
    u32 temp_v1;
    s32 phi_v1;

    temp_v0 = D_8004A7C4;
    D_800DF150[temp_v0->objId] = &D_80207DA4;
    temp_v1 = temp_v0->objId;
    phi_v1 = temp_v1 * 4;
    if ((D_800E8AE0[temp_v1] & 1) != 0) {
        D_801A6C10_ovl9();
        phi_v1 = D_8004A7C4->objId * 4;
    }
    *(gEntityVtableIndexArray + phi_v1) = 0;
    func_801A3280_ovl9();
    call_virtual_function(gEntityVtableIndexArray[D_8004A7C4->objId], 1, &D_8021C8F8);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_80207CF4_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_80207DA4_ovl9(struct GObj *this) {
    call_virtual_function(D_800DDFD0[D_8004A7C4->objId], 1, &D_8021C8FC);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_80207DA4_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_80207DEC_ovl9(struct GObj *this) {
    struct GObj *temp_v0;
    u32 temp_v1;

    temp_v0 = D_8004A7C4;
    D_800DDFD0[temp_v0->objId] = 0;
    D_800E3750[temp_v0->objId] = 0.0f;
    temp_v1 = temp_v0->objId;
    D_800E3210[temp_v1] = D_800E3750[temp_v1];
    D_800E3C90[temp_v0->objId] = D_8021DAD4;
    func_800AECC0(D_800D6B10);
    func_800AED20(D_800D6B10);
    func_800A9EA4(0x101BD);
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_80207DEC_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_80207EA4_ovl9(struct GObj *this) {

}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_80207EA4_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_80207EAC_ovl9(struct GObj *this) {
    struct GObj *temp_v0;

    temp_v0 = D_8004A7C4;
    D_800DEF90[temp_v0->objId] = &D_800B6B8C;
    call_virtual_function(D_800E7880[temp_v0->objId], 1, &D_8021C900);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_80207EAC_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_80207F0C_ovl9(void) {
    func_80208758_ovl9();
    call_virtual_function(gEntityVtableIndexArray[D_8004A7C4->objId], 8, &D_8021C904);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_80207F0C_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_80207F58_ovl9(struct GObj *this) {
    struct GObj *temp_v0;
    u32 temp_v1;

    temp_v0 = D_8004A7C4;
    D_800DF150[temp_v0->objId] = &D_80208020;
    D_800E93A0[temp_v0->objId] = 0;
    temp_v1 = temp_v0->objId;
    if (D_800E8920[temp_v1] == 1) {
        gEntityVtableIndexArray[temp_v1] = 0;
    } else {
        gEntityVtableIndexArray[temp_v1] = 4;
    }
    func_801A0D50(&D_80207F0C);
    call_virtual_function(gEntityVtableIndexArray[D_8004A7C4->objId], 8, &D_8021C904);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_80207F58_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_80208020_ovl9(void) {
    if (func_801A0D74_ovl9() == 0) {
        call_virtual_function(D_800DDFD0[D_8004A7C4->objId], 8, &D_8021C924);
    }
    func_8019BE9C_ovl9(6);
    func_8019B2C0_ovl9(1);
    func_8019F3B0_ovl9();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_80208020_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_80208088_ovl9(struct GObj *this) {
    D_800E1B50[D_8004A7C4->objId]->unk98 = &D_801CC5BC;
    D_800DDFD0[D_8004A7C4->objId] = 0;
    func_800B3520();
    func_800A9EA4(0x101FF);
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_80208088_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_80208100_ovl9(struct GObj *this) {
    struct GObj *temp_v0;

    if (func_8019A7E8_ovl9(0x43480000) != 0) {
        temp_v0 = D_8004A7C4;
        gEntityVtableIndexArray[temp_v0->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[temp_v0->objId], &D_80207F0C);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_80208100_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_8020816C_ovl9(struct GObj *this, s32 arg1, f32 arg2) {
    struct GObj *temp_v0;
    u32 temp_v1;

    if ((arg1 == 0) && (arg2 == 1)) {
        temp_v0 = D_8004A7C4;
        temp_v1 = temp_v0->objId;
        D_800E64D0[temp_v1] = D_800E6A10[temp_v1] * -6.0f;
        func_80208E44_ovl9(arg2, D_800DE350[temp_v0->objId]);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_8020816C_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_802081F4_ovl9(struct GObj *this) {
    struct GObj *temp_v0;

    D_800E1B50[D_8004A7C4->objId]->unk98 = &D_801CC5E0;
    temp_v0 = D_8004A7C4;
    D_800DDFD0[temp_v0->objId] = 1;
    D_800E9E20[temp_v0->objId] = 0;
    func_8019B164_ovl9(&D_8004A7C4);
    if (D_800E6A10[D_8004A7C4->objId] == 1.0f) {
        func_800AA018(0x101FE);
    } else {
        func_800AA018(0x101FD);
    }
    D_800DF310[D_8004A7C4->objId] = &D_8020816C;
    func_800AF27C();
    D_800E9E20[D_8004A7C4->objId] = 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_802081F4_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_80208310_ovl9(struct GObj *this) {
    struct GObj *temp_v0;
    u32 temp_v1;

    temp_v0 = D_8004A7C4;
    temp_v1 = temp_v0->objId;
    if (D_800E9E20[temp_v1] != 0) {
        gEntityVtableIndexArray[temp_v1] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[temp_v0->objId], &D_80207F0C);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_80208310_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_8020837C_ovl9(void) {
    f32 *temp_a1;
    struct GObj *temp_v0;
    u32 temp_v1;
    u32 temp_v1_2;

    temp_v0 = D_8004A7C4;
    D_800DDFD0[temp_v0->objId] = 2;
    D_800DEF90[temp_v0->objId] = &func_800B6A2C;
    temp_v1 = temp_v0->objId;
    D_800E64D0[temp_v1] = D_800E6A10[temp_v1] * -6.0f;
    temp_v1_2 = temp_v0->objId;
    D_800E6690[temp_v1_2] = D_800E6A10[temp_v1_2] * 0.125f;
    temp_a1 = &D_800E6A10[temp_v0->objId];
    *temp_a1 = -*temp_a1;
    D_800E93A0[temp_v0->objId] = 0;
    D_800E9720[temp_v0->objId] = 0;
    func_80208E44_ovl9(temp_a1, D_800E6A10);
    func_80208588_ovl9(0xB5);
    func_800A9EA4(0x101FB);
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_8020837C_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_80208488_ovl9(struct GObj *this) {
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 *temp_a0;
    f32 temp_f0;
    f32 temp_f0_2;
    struct GObj *temp_v1;
    u32 temp_v0;
    f32 phi_f12;
    f32 phi_f2;

    temp_v1 = D_8004A7C4;
    temp_v0 = temp_v1->objId;
    temp_f0 = D_800E64D0[temp_v0];
    if (temp_f0 < 0.0f) {
        phi_f12 = -temp_f0;
    } else {
        phi_f12 = temp_f0;
    }
    temp_f0_2 = D_800E6690[temp_v0];
    if (temp_f0_2 < 0.0f) {
        phi_f2 = -temp_f0_2;
    } else {
        phi_f2 = temp_f0_2;
    }
    if (phi_f12 < phi_f2) {
        gEntityVtableIndexArray[temp_v0] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[temp_v1->objId], &D_80207F0C);
        return;
    }
    temp_a0 = &sp2C;
    if ((D_800E8AE0[temp_v0] & 1) == 0) {
        sp30 = -20.0f;
        sp2C = 0.0f;
        sp34 = 10.0f;
        func_80208604_ovl9(phi_f12, temp_a0);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_80208488_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_80208588_ovl9(struct GObj *this) {
    struct UnkStruct800E1B50 *sp1C;
    u32 temp_v1;

    sp1C = D_800E1B50[D_8004A7C4->objId];
    sp1C->unk34 = func_800A8234(3, 2, arg0);
    temp_v1 = D_8004A7C4->objId;
    D_800E9560[temp_v1] = D_800E6A10[temp_v1];
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_80208588_ovl9.s")
#endif

#ifdef NON_MATCHING
extern const f32 D_8021DAD8_ovl9, D_8021DADC_ovl9;
void func_80208604_ovl9(struct Normal *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[D_8004A7C4->objId];

    struct Sub800E1B50_Unk34 *tmp_34 = tmp->unk34;

    if (tmp_34 && tmp_34->unk4C == 0) {
        tmp_34 = 0;
    } else {
        f32 temp_f12 = D_8021DAD8_ovl9;

        tmp_34->unk4C->unk4 = gEntitiesNextPosXArray[D_8004A7C4->objId] + arg0->x;
        tmp_34->unk4C->unk8 = gEntitiesNextPosYArray[D_8004A7C4->objId] + arg0->y;
        tmp_34->unk4C->unkC = gEntitiesNextPosZArray[D_8004A7C4->objId] + arg0->z;
        tmp_34->unk4C->unk14 = gEntitiesAngleYArray[D_8004A7C4->objId] - D_8021DADC_ovl9;
        while (temp_f12 <= tmp_34->unk4C->unk14) {
            tmp_34->unk4C->unk14 -= temp_f12;
        }
        while (tmp_34->unk4C->unk14 < 0.0f) {
            tmp_34->unk4C->unk14 += temp_f12;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_80208604_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
struct UnkStruct800E1B50 *func_80208758_ovl9(struct GObj *this) {
    struct UnkStruct800E1B50 *sp1C;
    struct UnkStruct800E1B50 **tmp;
    struct UnkStruct800E1B50 *tmp_2;
    u32 temp_v1;

    tmp = &D_800E1B50[D_8004A7C4->objId];
    tmp_2 = *tmp;
    temp_v1 = tmp_2->unk34;
    if (temp_v1 != 0) {
        sp1C = tmp_2;
        func_800A22D4(temp_v1);
        tmp_2->unk34 = 0;
    }
    return *tmp;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_80208758_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_802087AC_ovl9(struct GObj *this) {
    struct GObj *temp_v0;

    D_800E1B50[D_8004A7C4->objId]->unk98 = &D_801CC604;
    temp_v0 = D_8004A7C4;
    D_800DDFD0[temp_v0->objId] = 3;
    D_800E9E20[temp_v0->objId] = 0;
    func_800B3520();
    D_800E93A0[D_8004A7C4->objId] = 0;
    func_800AA864(0x101FC, 1);
    D_800E9E20[D_8004A7C4->objId] = 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_802087AC_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_80208878_ovl9(struct GObj *this) {
    struct GObj *temp_v0;
    u32 temp_v1;

    temp_v0 = D_8004A7C4;
    temp_v1 = temp_v0->objId;
    if (D_800E9E20[temp_v1] != 0) {
        gEntityVtableIndexArray[temp_v1] = 7;
        assign_new_process_entry(gEntityGObjProcessArray[temp_v0->objId], &D_80207F0C);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_80208878_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_802088E4_ovl9(struct GObj *this) {
    struct GObj *temp_v0;
    u32 temp_v0_2;

    D_800E1B50[D_8004A7C4->objId]->unk98 = &D_801CC628;
    D_800DDFD0[D_8004A7C4->objId] = 7;
    func_800B3520();
    temp_v0 = D_8004A7C4;
    D_800E9720[temp_v0->objId] = 0;
    D_800E93A0[temp_v0->objId] = 0;
    D_800E9E20[temp_v0->objId] = 1;
    func_800A9EA4(0x101F9);
    temp_v0_2 = D_8004A7C4->objId;
    D_800E64D0[temp_v0_2] = D_800E6A10[temp_v0_2] * 6.0f;
    func_80208E44_ovl9(arg0);
    func_80208758_ovl9(arg0);
    func_80208588_ovl9(0xB7);
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_802088E4_ovl9.s")
#endif

void func_802089F4_ovl9(struct GObj *this) {
    struct Normal nml;

    if (!(D_800E8AE0[D_8004A7C4->objId] & 1)) {
        nml.x = 0.0f;
        nml.y = 10.0f;
        nml.z = 10.0f;
        func_80208604_ovl9(&nml);
    }
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_80208A58_ovl9(struct GObj *this) {
    f32 temp_f2;
    struct GObj *temp_v0;
    u32 temp_v1;

    D_800E1B50[D_8004A7C4->objId]->unk98 = &D_801CC64C;
    D_800DDFD0[D_8004A7C4->objId] = 4;
    func_800A9EA4(0x101FF);
    temp_v0 = D_8004A7C4;
    temp_f2 = D_8021DAE0;
    D_800E6690[temp_v0->objId] = 0.0f;
    temp_v1 = temp_v0->objId;
    D_800E64D0[temp_v1] = D_800E6690[temp_v1];
    D_800E6850[temp_v0->objId] = temp_f2;
    D_800E3210[temp_v0->objId] = 0.0f;
    D_800E3750[temp_v0->objId] = -1.5f;
    D_800E3C90[temp_v0->objId] = temp_f2;
    func_80208E44_ovl9(arg0, D_800E6690);
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_80208A58_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_80208B78_ovl9(struct GObj *this) {

}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_80208B78_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_80208B80_ovl9(struct GObj *this) {
    f32 *temp_v1;
    struct GObj *temp_v0;
    struct GObj *temp_v0_2;
    u32 temp_a1;

    D_800E1B50[D_8004A7C4->objId]->unk98 = &D_801CC670;
    temp_v0 = D_8004A7C4;
    D_800DDFD0[temp_v0->objId] = 5;
    D_800E6690[temp_v0->objId] = 0.0f;
    temp_a1 = temp_v0->objId;
    if (D_800DFF50[temp_a1] != 0x101FB) {
        D_800DEF90[temp_a1] = &func_800B6A2C;
        temp_v1 = &D_800E6A10[temp_v0->objId];
        *temp_v1 = -*temp_v1;
    }
    func_800A9EA4(0x101FB);
    temp_v0_2 = D_8004A7C4;
    D_800E3210[temp_v0_2->objId] = 0.0f;
    D_800E3750[temp_v0_2->objId] = -1.5f;
    D_800E3C90[temp_v0_2->objId] = D_8021DAE4;
    func_80208E44_ovl9(arg0);
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_80208B80_ovl9.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_80208CC8_ovl9(struct GObj *this) {

}
#else
GLOBAL_ASM("asm/non_matchings/ovl9/ovl9_9/func_80208CC8_ovl9.s")
#endif

extern const f32 D_8021DAE8;
extern s32 D_801CC694;
IN_FILE void func_80208E44_ovl9(struct GObj *this);

void func_80208CD0_ovl9(struct GObj *this) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[D_8004A7C4->objId];

    tmp->unk98 = &D_801CC694;
    D_800DDFD0[D_8004A7C4->objId] = 6;
    D_800E8920[D_8004A7C4->objId] = 0;
    func_800A9EA4(0x000101F9);
    D_800E3210[D_8004A7C4->objId] = 10.0f;
    D_800E3750[D_8004A7C4->objId] = -1.5f;
    D_800E3C90[D_8004A7C4->objId] = D_8021DAE8;
    func_80208E44_ovl9(this);
    func_800AFA14();
}

void func_80208DC0_ovl9(struct GObj *this) {

}

extern const f32 D_8021DAEC_ovl9;
extern s32 D_801CC628;

void func_80208DC8_ovl9(struct GObj *this) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[D_8004A7C4->objId];

    D_800E3750[D_8004A7C4->objId] = 0.0f;
    D_800E3210[D_8004A7C4->objId] = D_800E3750[D_8004A7C4->objId];
    D_800E3C90[D_8004A7C4->objId] = D_8021DAEC_ovl9;
    tmp->unk98 = &D_801CC628;
}

void func_80208E44_ovl9(struct GObj *this) {
    if (D_800E8AE0[D_8004A7C4->objId] & 1) {
        D_800E64D0[D_8004A7C4->objId] = D_800E64D0[D_8004A7C4->objId] * 0.5f;
        D_800E6690[D_8004A7C4->objId] = D_800E6690[D_8004A7C4->objId] * 0.5f;
        D_800E3210[D_8004A7C4->objId] = D_800E3210[D_8004A7C4->objId] * 0.5f;
        D_800E3750[D_8004A7C4->objId] = D_800E3750[D_8004A7C4->objId] * 0.5f;
    }
}

void func_80208EF8_ovl9(struct GObj *this) {
    if (D_800E8AE0[D_8004A7C4->objId] & 1) {
        D_800E64D0[D_8004A7C4->objId] = D_800E64D0[D_8004A7C4->objId] * 0.5f;
        D_800E6690[D_8004A7C4->objId] = D_800E6690[D_8004A7C4->objId] * 0.5f;
        D_800E3210[D_8004A7C4->objId] = D_800E3210[D_8004A7C4->objId] * 0.5f;
        D_800E3750[D_8004A7C4->objId] = D_800E3750[D_8004A7C4->objId] * 0.5f;
    } else {
        D_800E64D0[D_8004A7C4->objId] = 2.0f * D_800E64D0[D_8004A7C4->objId];
        D_800E6690[D_8004A7C4->objId] = 2.0f * D_800E6690[D_8004A7C4->objId];
        D_800E3210[D_8004A7C4->objId] = 2.0f * D_800E3210[D_8004A7C4->objId];
        D_800E3750[D_8004A7C4->objId] = 2.0f * D_800E3750[D_8004A7C4->objId];
    }
}
