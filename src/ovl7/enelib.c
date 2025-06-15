#include "common.h"

#include "GObj.h"
#include "Player.h"
#include "ovl1/util.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/ovl1_8.h"
#include "ovl2/ovl2_3.h"
#include "buffers.h"
#include "unk_structs/D_800E1B50.h"
#include "main/gtl.h"
#include "main/lbvector.h"
#include "main/math.h"

#include "enelib.h"

// enelib.c
// prefix: ene

// helplib.h
void func_800F88C8(s32, s32, f32);

// plylib?
extern Lights1 D_800BE550, D_800BE548;

// somewhere in ovl7
extern Lights1 D_801C27D8_ovl7, D_801C27D0_ovl7;

// ent sub98 structs
extern struct Sub800E1B50_Unk98 D_801CD288_ovl7;
extern struct Sub800E1B50_Unk98 D_801CD2AC_ovl7;

// ovl7_5
void func_801AC364_ovl7(GObj *);
void func_801A69B0_ovl7(GObj *);
void func_801AC448_ovl7(GObj *);
void func_801A6DF0_ovl7(GObj *);


#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_80198880_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_80198914_ovl7.s")

void func_80198B98_ovl7(void) {
    switch (D_800E7730[omCurrentObj->objId]) {
        case 1:
        case 2:
            if (D_800E8E60[omCurrentObj->objId] == 0) {
                D_800DEF90[omCurrentObj->objId] = func_800B6474;
            } else {
                D_800DEF90[omCurrentObj->objId] = func_800B7790;
            }
            break;
        default:
        case 0:
        case 3:
        case 4:
        case 5:
        case 6:
            if (D_800E8E60[omCurrentObj->objId] == 0) {
                D_800DEF90[omCurrentObj->objId] = func_800B658C;
            } else {
                D_800DEF90[omCurrentObj->objId] = func_800B78AC;
            }
            break;
    }
    D_800DEDD0[omCurrentObj->objId] = func_8019F130_ovl7;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], func_800B175C);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_80198CA8_ovl7.s")

void func_80198DB4_ovl7(void) {
}

#ifdef MIPS_TO_C

void func_80198DBC_ovl7(void) {
    s32 temp_a1;
    s32 temp_a2;
    s32 var_v0;
    struct Sub800E1B50_Unk84 *temp_a0;
    u16 temp_a1_2;
    u16 temp_a1_3;
    u16 temp_a1_4;
    u32 temp_a3;
    u32 temp_a3_2;
    u32 temp_v1;
    u32 temp_v1_2;
    u8 temp_v0_2;
    void *temp_v0;

    D_800E8920[omCurrentObj->objId] = 0;
    temp_v1 = omCurrentObj->objId;
    temp_a2 = D_800E8920[temp_v1];
    (D_800E7CE0 + 0x1C0)[temp_v1] = temp_a2;
    D_800E7CE0[omCurrentObj->objId] = temp_a2;
    temp_a3 = omCurrentObj->objId;
    temp_v0 = func_80198914_ovl7(temp_a3, temp_a3 - 0xE, temp_a2, temp_a3);
    if (temp_v0 != NULL) {
        D_800E7B20[omCurrentObj->objId] = temp_v0->unk0;
        if (temp_v0->unk10 != 0) {
            func_801A2558_ovl7(temp_v0->unk10);
            temp_v1_2 = omCurrentObj->objId;
            temp_a0 = D_800E1B50[temp_v1_2]->unk84;
            if ((D_800DD710[temp_v1_2] == 0x1A) && (((temp_a1 = D_800E0D50[temp_v1_2], var_v0 = temp_a1 * 4, (temp_a1 != -1)) && (D_800DD710[temp_a1] == 0x17)) || (var_v0 = temp_a1 * 4, (D_800DD710[temp_a1] == 0x12))) && (temp_a0 != NULL)) {
                temp_a0->unk4 = *(gEntitiesNextPosXArray + var_v0);
                temp_a0->unk8 = gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]];
                temp_a0->unkC = gEntitiesNextPosZArray[D_800E0D50[omCurrentObj->objId]];
                if (D_800E0D50[omCurrentObj->objId] == 0) {
                    temp_a0->unk8 += 20.0f;
                }
                func_801051AC(temp_a0, temp_a1, D_800DD710, D_800E0D50);
            }
        }
        func_801A3938(0);
    }
    temp_a3_2 = omCurrentObj->objId;
    temp_v0_2 = D_800E7730[temp_a3_2];
    if (temp_v0_2 == 6) {
        temp_a1_2 = D_800E77A0[temp_a3_2];
        if ((temp_a1_2 > 0) && (temp_a1_2 < 8)) {
            D_800D7090 = temp_a3_2;
            return;
        }
    }
    if (temp_v0_2 == 6) {
        temp_a1_3 = D_800E77A0[temp_a3_2];
        if ((temp_a1_3 >= 8) && (temp_a1_3 < 0x24)) {
            func_801BC44C_ovl7(temp_a1_3, temp_a1_3);
            D_800D7090 = omCurrentObj->objId;
            return;
        }
    }
    if (temp_v0_2 == 6) {
        temp_a1_4 = D_800E77A0[temp_a3_2];
        if ((temp_a1_4 >= 0x24) && (temp_a1_4 < 0x2C)) {
            func_801BC72C_ovl7(temp_a1_4 - 0x24, temp_a1_4);
            D_800D7090 = omCurrentObj->objId;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_80198DBC_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_80199084_ovl7(void) {
    s32 var_a1;
    s32 var_a3;
    u16 temp_v0;
    u16 var_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v0_4;
    u32 var_a0;
    u8 var_a2;

    var_a0 = omCurrentObj->objId;
    var_a2 = D_800E7730[var_a0];
    switch (var_a2) {
        case 0:
            var_a1 = 0x23;
            var_a3 = *(&D_801C2E84_ovl7 + (D_800E77A0[var_a0] * 4));
            break;
        case 1:
            var_a1 = 0x23;
            var_a3 = *(&D_801F33FC + (D_800E77A0[var_a0] * 4));
            break;
        case 2:
            var_a1 = 0x23;
            var_a3 = *(&D_801D789C + (D_800E77A0[var_a0] * 4));
            break;
        case 3:
            var_a1 = 0x27;
            var_a3 = *(&D_801C3030_ovl7 + (D_800E77A0[var_a0] * 4));
            break;
        case 6:
            temp_v0 = D_800E77A0[var_a0];
            var_a3 = *(&D_801C3068_ovl7 + (temp_v0 * 4));
            if (temp_v0 == 0) {
                var_a1 = 0x27;
            } else if ((temp_v0 >= 0x24) && (temp_v0 < 0x2C)) {
                var_a1 = 0x2B;
            } else {
                var_a1 = 0x23;
            }
            break;
        default:
            var_a3 = 0;
            var_a1 = 0;
            break;
    }
    if ((var_a3 != 0) && (var_a1 != 0)) {
        func_800A9864(var_a3, var_a1, 0x10, var_a3);
        temp_v0_2 = omCurrentObj->objId;
        D_800DE350[temp_v0_2]->data.dobj->pos.x = gEntitiesNextPosXArray[temp_v0_2];
        temp_v0_3 = omCurrentObj->objId;
        D_800DE350[temp_v0_3]->data.dobj->pos.y = gEntitiesNextPosYArray[temp_v0_3];
        temp_v0_4 = omCurrentObj->objId;
        D_800DE350[temp_v0_4]->data.dobj->pos.z = gEntitiesNextPosZArray[temp_v0_4];
        var_a0 = omCurrentObj->objId;
        var_a2 = D_800E7730[var_a0];
    }
    if (var_a2 == 6) {
        var_v0 = D_800E77A0[var_a0];
        if ((var_v0 > 0) && (var_v0 < 8)) {
            func_801C06FC_ovl7(var_a0);
            var_v0 = D_800E77A0[omCurrentObj->objId];
        }
        if ((var_v0 >= 8) && (var_v0 < 0x24)) {
            func_801C1E08_ovl7();
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_80199084_ovl7.s")
#endif

void func_801992F0_ovl7(void) {
    switch (D_800E7730[omCurrentObj->objId]) {
        case 0:
        case 1:
        case 6:
            func_8019B9B0_ovl7();
            break;
        case 2:
            if (D_800E77A0[omCurrentObj->objId] != 6) {
                func_8019B9B0_ovl7();
            }
            break;
        default:
            break;
        case 3:
            func_8019BAC8_ovl7();
            break;
    }
}

#ifdef MIPS_TO_C

void func_80199384_ovl7(void) {
    UnkStruct800E1B50 *temp_v0;
    struct Sub800E1B50_Unk88 *temp_a0;
    u16 temp_v0_3;
    u16 temp_v0_4;
    u32 temp_v0_2;
    u32 var_v1;
    u8 temp_t8;

    var_v1 = omCurrentObj->objId;
    temp_v0 = D_800E1B50[var_v1];
    if (temp_v0 != NULL) {
        temp_a0 = temp_v0->unk88;
        if (temp_a0 != NULL) {
            temp_v0_2 = temp_a0->unk4;
            if (temp_v0_2 != -1) {
                if (temp_v0_2 != 0) {
                    temp_v0_2(D_800DE350[var_v1], var_v1 * 4);
                    var_v1 = omCurrentObj->objId;
                }
                temp_t8 = D_800E7730[var_v1];
                switch (temp_t8) {
                    case 1:
                    case 2:
                    case 4:
                    case 5:
                    case 6:
                        break;
                    case 3:
                        temp_v0_3 = D_800E77A0[var_v1];
                        if ((temp_v0_3 != 8) && ((temp_v0_3 != 7) || (D_800E7880[var_v1] != 2)) && ((temp_v0_3 != 0) || (D_800E7880[var_v1] != 1)) && ((temp_v0_3 != 5) || (D_800E7880[var_v1] != 1)) && ((temp_v0_3 != 9) || (D_800E7880[var_v1] != 1))) {
                        case 0:
                            temp_v0_4 = D_800E77A0[var_v1];
                            if (((temp_v0_4 < 0x4E) || (temp_v0_4 >= 0x5D)) && (D_800E0D50[var_v1] != 0) && !(D_800E78F0[var_v1] & 0x20)) {
loop_20:
                                if (func_800B3158() == 0) {
                                    func_8019D8A0(omCurrentObj->unk2);
                                    curObjSleepForever();
                                }
                                if (func_8019A7E8_ovl7(0x447A0000) == 0) {
block_24:
                                    ohSleep(1);
                                    goto loop_20;
                                }
                                if (func_800B30BC(1.2f, 1.3f, 0x44BB8000) == 0) {
                                    goto block_24;
                                }
                            }
                        }
                        break;
                }
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_80199384_ovl7.s")
#endif

void func_80199568_ovl7(void) {
    if (D_800E8E60[omCurrentObj->objId] == 0) {
        func_80198CA8_ovl7();
    } else {
        func_80198DB4_ovl7();
    }
    func_80198DBC_ovl7();
    D_800DF150[omCurrentObj->objId] = NULL;
    D_800DEF90[omCurrentObj->objId] = NULL;
    func_80199084_ovl7();
    func_80199384_ovl7();
    func_800AECC0(D_800D6B10);
    func_800AED20(D_800D6B10);
    func_801992F0_ovl7();
    func_80198B98_ovl7();
}

#ifdef MIPS_TO_C
s32 func_80199628_ovl7(s32 arg0) {
    s32 var_v0;
    u32 temp_v1;
    void (*temp_a1)(GObj *);

    temp_v1 = omCurrentObj->objId;
    temp_a1 = D_800E1B50[temp_v1]->unk9C;
    var_v0 = 0;
    if (temp_a1 != NULL) {
        assign_new_process_entry(gEntityGObjProcessArray[temp_v1], temp_a1);
        var_v0 = 1;
    }
    return var_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_80199628_ovl7.s")
#endif

#ifdef MIPS_TO_C
void func_80199688_ovl7(s32 arg0) {
    UnkStruct800E1B50 *temp_a0;
    u32 temp_v0;

    temp_v0 = omCurrentObj->objId;
    temp_a0 = D_800E1B50[temp_v0];
    D_800E83E0[temp_v0] = 1;
    if (temp_a0->unk44 == 0) {
        temp_a0->unk44 = 1;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = -1;
    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A69B0_ovl7);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_80199688_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_80199724_ovl7(s32 arg0) {
    UnkStruct800E1B50 *temp_a0;
    u32 temp_v0;

    temp_v0 = omCurrentObj->objId;
    temp_a0 = D_800E1B50[temp_v0];
    D_800E83E0[temp_v0] = 1;
    if (temp_a0->unk44 == 0) {
        temp_a0->unk44 = 1;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = -1;
    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A6DF0_ovl7);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_80199724_ovl7.s")
#endif

void func_801997C0_ovl7(s32 arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800E83E0[omCurrentObj->objId] = 1;
    if (ent->unk44 == 0) {
        ent->unk44 = 1;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = -1;
    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_801AC364_ovl7);
}

void func_8019985C_ovl7(Unused GObj *gobj) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    func_800FB914(1);
    D_800E83E0[omCurrentObj->objId] = 1;
    if (ent->unk44 == 0) {
        ent->unk44 = 1;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = -1;
    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_801A69B0_ovl7);
}

#ifdef MIPS_TO_C

void func_80199918_ovl7(s32 arg0) {
    D_800E1B50[omCurrentObj->objId]->unk40 = 1;
    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A3E80_ovl7);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_80199918_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_80199980_ovl7(s32 arg0) {
    gEntityFuncListIDArray[omCurrentObj->objId] = -1;
    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A6C10_ovl7);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_80199980_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801999DC_ovl7(s32 arg0) {
    gEntityFuncListIDArray[omCurrentObj->objId] = -1;
    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8020C710_ovl9);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_801999DC_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_80199A38_ovl7(s32 arg0) {
    UnkStruct800E1B50 *sp1C;
    GObj *temp_v1;
    UnkStruct800E1B50 *temp_a3;
    f32 *temp_v0_2;
    f32 *temp_v0_3;
    f32 var_f0;
    f32 var_f12;
    f32 var_f2;
    f32 var_f2_2;
    u32 temp_a0;
    u32 temp_a2;
    u32 temp_a2_2;
    u32 temp_v0;

    temp_v1 = omCurrentObj;
    temp_a2 = temp_v1->objId;
    temp_v0 = D_8012BCA0 >> 0x13;
    temp_a3 = D_800E1B50[temp_a2];
    D_800E8920[temp_a2] = 0;
    if (temp_v0 & 0xE3F) {
        if (temp_v0 & 0xE00) {
            temp_a0 = temp_a3->unk78;
            if (temp_a0 != 0) {
                sp1C = temp_a3;
                var_f12 = func_800F8824(temp_a0, D_800E17D0[temp_v1->objId], temp_a2 * 4, temp_a3);
            } else {
                var_f12 = 0.0f;
            }
        } else if (temp_v0 & 7) {
            var_f12 = 1.5707964f;
        } else {
            var_f12 = -1.5707964f;
        }
        temp_a2_2 = temp_v1->objId;
        var_f0 = D_800EB320[temp_a2_2] + var_f12;
        if (var_f0 > 6.2831855f) {
            do {
                var_f0 -= 6.2831855f;
            } while (var_f0 > 6.2831855f);
        }
        if (var_f0 < 0.0f) {
            do {
                var_f0 += 6.2831855f;
            } while (var_f0 < 0.0f);
        }
        if ((var_f0 >= 2.3561945f) && (var_f0 < 3.9269907f)) {
            D_800E83E0[temp_a2_2] = 1;
            temp_a3->unk44 = 1;
            gEntityFuncListIDArray[omCurrentObj->objId] = -1;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A6DF0_ovl7);
            return;
        }
        if ((var_f0 >= 1.9198622f) && (var_f0 < 4.363323f)) {
            D_800E9AA0[temp_a2_2] = 0xF;
            if (var_f0 < 3.1415927f) {
                if (var_f0 < 1.5707964f) {
                    var_f2 = -(var_f0 - 1.5707964f);
                } else {
                    var_f2 = var_f0 - 1.5707964f;
                }
                temp_v0_2 = &D_800EB320[temp_v1->objId];
                *temp_v0_2 -= 2.0f * var_f2;
                return;
            }
            if (var_f0 > 4.712389f) {
                var_f2_2 = -(4.712389f - var_f0);
            } else {
                var_f2_2 = 4.712389f - var_f0;
            }
            temp_v0_3 = &D_800EB320[temp_v1->objId];
            *temp_v0_3 += 2.0f * var_f2_2;
        }
    } else if (temp_v0 & 0x1C0) {
        D_800E83E0[temp_v1->objId] = 1;
        temp_a3->unk44 = 1;
        gEntityFuncListIDArray[omCurrentObj->objId] = -1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A6DF0_ovl7);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_80199A38_ovl7.s")
#endif

void func_80199D50_ovl7(void) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    if (!(D_800E8AE0[omCurrentObj->objId] & 1)) {
        D_800E8920[omCurrentObj->objId] = 0;
        D_800E83E0[omCurrentObj->objId] = 1;
        ent->unk44 = 1;
        gEntityFuncListIDArray[omCurrentObj->objId] = -1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_801A6DF0_ovl7);
    } else {
        func_80199A38_ovl7();
    }
}

void func_80199E14_ovl7(s32 arg0) {
    UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    ent->unk98 = &D_801CD2AC_ovl7;
    D_800E3210[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
    D_800E3750[omCurrentObj->objId] = -D_800EA8A0[omCurrentObj->objId];
}

void func_80199E90_ovl7(s32 arg0) {
    UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    ent->unk98 = &D_801CD288_ovl7;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
}

void func_80199F1C_ovl7(s32 arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    if (ent->unk3C == 0) {
        ent->unk3C = 1;
    }
}

void func_80199F58_ovl7(Unused GObj *gobj) {
    D_800E1B50[omCurrentObj->objId]->unk3C = 0;
    D_800E9020[omCurrentObj->objId] = 0.0f;
}

void func_80199FA0_ovl7(Unused GObj *gobj) {
    D_800E8920[omCurrentObj->objId] = 0;
}

void func_80199FC4_ovl7(Unused GObj *gobj) {
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
}

void func_8019A03C_ovl7(Unused GObj *gobj) {
    if (D_800E3210[omCurrentObj->objId] > 0.0f) {
        D_800E3210[omCurrentObj->objId] = 0.0f;
    }
}

void func_8019A080_ovl7(Unused GObj *gobj) {
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = 0.0f;
}

void func_8019A0C8_ovl7(Unused GObj *gobj) {
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
}

void func_8019A12C_ovl7(Unused GObj *gobj) {
    D_800E64D0[omCurrentObj->objId] = 0.0f;
}

void func_8019A154_ovl7(Unused GObj *gobj) {
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId] = 0.0f;
}

void func_8019A19C_ovl7(Unused GObj *gobj) {
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 65535.0f;
}

#ifdef MIPS_TO_C
void func_8019A200_ovl7(s32 arg0) {
    f32 *temp_a0;
    f32 *temp_a0_2;
    f32 *temp_a1;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 var_f2;
    f32 var_f2_2;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;

    temp_v1 = omCurrentObj->objId;
    temp_f0 = D_800E6850[temp_v1];
    temp_a0 = &D_800E64D0[temp_v1];
    if (temp_f0 == 65535.0f) {
        var_f2 = temp_f0;
    } else {
        var_f2 = temp_f0 * 0.5f;
    }
    *temp_a0 *= 0.5f;
    temp_v1_2 = omCurrentObj->objId;
    D_800E6690[temp_v1_2] = D_800E64D0[temp_v1_2] * 0.5f;
    if (var_f2 < 0.0f) {
        D_800E6850[omCurrentObj->objId] = -var_f2;
    } else {
        D_800E6850[omCurrentObj->objId] = var_f2;
    }
    temp_v1_3 = omCurrentObj->objId;
    temp_f0_2 = D_800E3C90[temp_v1_3];
    temp_a0_2 = &D_800E3210[temp_v1_3];
    if (temp_f0_2 == 65535.0f) {
        var_f2_2 = temp_f0_2;
    } else {
        var_f2_2 = temp_f0_2 * 0.5f;
    }
    *temp_a0_2 *= 0.5f;
    temp_a1 = &D_800E3750[omCurrentObj->objId];
    *temp_a1 *= 0.5f;
    if (var_f2_2 < 0.0f) {
        D_800E3C90[omCurrentObj->objId] = -var_f2_2;
        return;
    }
    D_800E3C90[omCurrentObj->objId] = var_f2_2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019A200_ovl7.s")
#endif

#ifdef MIPS_TO_C
void func_8019A36C_ovl7(s32 arg0) {
    f32 *temp_a0;
    f32 *temp_a0_2;
    f32 *temp_a1;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 var_f2;
    f32 var_f2_2;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;

    temp_v1 = omCurrentObj->objId;
    temp_f0 = D_800E6850[temp_v1];
    temp_a0 = &D_800E64D0[temp_v1];
    if (temp_f0 == 65535.0f) {
        var_f2 = temp_f0;
    } else {
        var_f2 = 2.0f * temp_f0;
    }
    *temp_a0 *= 2.0f;
    temp_v1_2 = omCurrentObj->objId;
    D_800E6690[temp_v1_2] = 2.0f * D_800E64D0[temp_v1_2];
    if (var_f2 < 0.0f) {
        D_800E6850[omCurrentObj->objId] = -var_f2;
    } else {
        D_800E6850[omCurrentObj->objId] = var_f2;
    }
    temp_v1_3 = omCurrentObj->objId;
    temp_f0_2 = D_800E3C90[temp_v1_3];
    temp_a0_2 = &D_800E3210[temp_v1_3];
    if (temp_f0_2 == 65535.0f) {
        var_f2_2 = temp_f0_2;
    } else {
        var_f2_2 = 2.0f * temp_f0_2;
    }
    *temp_a0_2 *= 2.0f;
    temp_a1 = &D_800E3750[omCurrentObj->objId];
    *temp_a1 *= 2.0f;
    if (var_f2_2 < 0.0f) {
        D_800E3C90[omCurrentObj->objId] = -var_f2_2;
        return;
    }
    D_800E3C90[omCurrentObj->objId] = var_f2_2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019A36C_ovl7.s")
#endif

void func_8019A4C0_ovl7(Unused GObj *gobj) {
    D_800E64D0[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] = 0.0f;
}

void func_8019A508_ovl7(Unused GObj *gobj) {
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E3210[omCurrentObj->objId] = 0.0f;
}

#ifdef MIPS_TO_C
void func_8019A580_ovl7(s32 arg0) {
    u32 temp_v1;
    u32 temp_v1_2;

    D_800E6690[omCurrentObj->objId] = 0.0f;
    temp_v1 = omCurrentObj->objId;
    D_800E64D0[temp_v1] = D_800E6690[temp_v1];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    temp_v1_2 = omCurrentObj->objId;
    D_800E3210[temp_v1_2] = D_800E3750[temp_v1_2];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019A580_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_8019A62C_ovl7(s32 arg0) {
    f32 *temp_a0;
    f32 *temp_v0_2;
    f32 *temp_v1;
    f32 temp_f2;
    f32 var_f0;
    u32 temp_v0;

    temp_v0 = omCurrentObj->objId;
    if (D_800E1B50[temp_v0]->unk3C == 0) {
        temp_f2 = D_800E6A10[temp_v0];
        if (((temp_f2 == 1.0f) && (var_f0 = D_800E64D0[temp_v0], (var_f0 > 0.0f))) || ((temp_a0 = &D_800E64D0[temp_v0], (temp_f2 == -1.0f)) && (var_f0 = *temp_a0, (var_f0 < 0.0f)))) {
            D_800E64D0[temp_v0] = -var_f0;
            temp_v1 = &D_800E6690[omCurrentObj->objId];
            *temp_v1 = -*temp_v1;
            temp_v0_2 = &D_800E6A10[omCurrentObj->objId];
            *temp_v0_2 = -*temp_v0_2;
            func_8019BC94_ovl7(0, &D_800E64D0[temp_v0], omCurrentObj, D_800E6A10);
            return;
        }
        *temp_a0 = 0.0f;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019A62C_ovl7.s")
#endif

void func_8019A740_ovl7(Unused GObj *gobj) {
    gKirbyState.unkD = -2;
    gEntityFuncListIDArray[omCurrentObj->objId] = -1;
    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_801AC448_ovl7);
}

#ifdef MIPS_TO_C

void func_8019A7A8_ovl7(s32 arg0) {
    D_800EC2E0[omCurrentObj->objId].as_u32 = 1;
    func_800B3520();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019A7A8_ovl7.s")
#endif

#ifdef MIPS_TO_C

s32 func_8019A7E8_ovl7(f32 arg0) {
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    f32 temp_f0;
    s32 var_v1;

    temp_f0 = *(&D_800E6F50->originOffset + (omCurrentObj->objId * 0x10));
    if (temp_f0 == 9999.0f) {
        sp38 = *gEntitiesNextPosYArray + 20.0f;
        sp34 = *gEntitiesNextPosXArray;
        sp3C = *gEntitiesNextPosZArray;
        sp28 = gEntitiesNextPosXArray[omCurrentObj->objId];
        sp2C = gEntitiesNextPosYArray[omCurrentObj->objId];
        sp30 = gEntitiesNextPosZArray[omCurrentObj->objId];
        var_v1 = 0;
        if (utilVec3Dist(&sp34, &sp28, gEntitiesNextPosYArray, gEntitiesNextPosZArray) < (arg0 * arg0)) {
            return 1;
        }
        goto block_6;
    }
    var_v1 = 0;
    if (temp_f0 < arg0) {
        var_v1 = 1;
    }
block_6:
    return var_v1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019A7E8_ovl7.s")
#endif


// new struct (only used once? only in this file? or a fundamental datatype?)
#ifdef NON_MATCHING
typedef struct test8019A900 {
    s32 _0;
    f32 _1;
} Test8019;
s32 func_8019A900_ovl7(Test8019 *arg0) {
    f32 temp_f0 = func_800F9828(omCurrentObj->objId, 0);

    if (temp_f0 == 9999.0f) {
        return 0;
    } else {
        arg0->_1 = temp_f0;
        arg0->_0 = (temp_f0 > 0.0f) ? 1.0f : -1.0f;
        return 1;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019A900_ovl7.s")
#endif

#ifdef MIPS_TO_C

s32 func_8019A9AC_ovl7(f32 arg0, f32 arg1) {
    ? sp30;
    s32 sp28;
    f32 temp_f0;
    f32 temp_f2;
    f32 var_f0;
    f32 var_f12;
    s32 var_v1;

    var_f12 = arg0;
    var_v1 = 0;
    if (arg0 != -1.0f) {
        temp_f0 = *gEntitiesNextPosYArray + 20.0f;
        temp_f2 = gEntitiesNextPosYArray[omCurrentObj->objId];
        if (temp_f0 < temp_f2) {
            var_f12 = -(temp_f0 - temp_f2);
        } else {
            var_f12 = temp_f0 - temp_f2;
        }
        if (var_f12 <= (arg0 * 0.5f)) {
            goto block_6;
        }
    } else {
block_6:
        var_v1 = 1;
    }
    if (arg1 != -1.0f) {
        sp28 = var_v1;
        var_v1 = sp28;
        if (func_8019A900_ovl7(var_f12, &sp30) != 0) {
            if (sp34 < 0.0f) {
                var_f0 = -sp34;
            } else {
                var_f0 = sp34;
            }
            if (var_f0 <= (arg1 * 0.5f)) {
                goto block_14;
            }
        }
    } else {
block_14:
        var_v1 |= 2;
    }
    return var_v1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019A9AC_ovl7.s")
#endif

#ifdef MIPS_TO_C

f32 func_8019AAD0_ovl7(f32 arg0, f32 arg1, f32 arg2) {
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp20;
    f32 sp18;
    f32 temp_f0;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f2;
    f32 temp_f2_2;

    temp_f2_2 = *D_800E6BD0;
    temp_f16 = *D_800E5F90;
    sp30 = temp_f2_2;
    sp2C = temp_f16;
    if (func_800F98EC(0, arg1) != 0) {
        *D_800E6BD0 = temp_f2_2;
        *D_800E5F90 = temp_f16;
        return 0.0f;
    }
    sp2C = temp_f16;
    sp30 = temp_f2_2;
    temp_f0 = func_800F9828(omCurrentObj->objId, 0, D_800E5F90);
    sp34 = temp_f0;
    if (temp_f0 == 9999.0f) {
        *D_800E6BD0 = temp_f2_2;
        *D_800E5F90 = temp_f16;
        return 0.0f;
    }
    *D_800E6BD0 = temp_f2_2;
    *D_800E5F90 = temp_f16;
    sp18 = gEntitiesNextPosYArray[omCurrentObj->objId];
    temp_f14 = (sinf(arg0) * 16.0f) + 0.0f;
    sp20 = temp_f14;
    temp_f2 = (cosf(arg0) * 16.0f) + sp18;
    return (((*gEntitiesNextPosYArray + 20.0f + arg2) - temp_f2) * (0.0f - temp_f14)) - ((sp34 - temp_f14) * (sp18 - temp_f2));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019AAD0_ovl7.s")
#endif

#ifdef MIPS_TO_C

s32 func_8019AC60_ovl7(f32 arg0, f32 arg1, s32 arg2, ? arg3) {
    f32 *temp_v0;
    f32 *var_v0;
    f32 temp_f0;
    f32 var_f0;
    f32 var_f14;

    if (func_8019A900_ovl7(arg3) == 0) {
        return 0;
    }
    temp_f0 = func_8019AAD0_ovl7(D_800EB320[omCurrentObj->objId], arg1, D_800EB320, arg2);
    if (temp_f0 == 0.0f) {
        return 0;
    }
    if (temp_f0 > 0.0f) {
        var_f14 = arg0;
    } else {
        var_f14 = -arg0;
    }
    temp_v0 = &D_800EB320[omCurrentObj->objId];
    *temp_v0 += var_f14;
    var_v0 = &D_800EB320[omCurrentObj->objId];
    var_f0 = *var_v0;
    if (var_f0 > 6.2831855f) {
        do {
            *var_v0 = var_f0 - 6.2831855f;
            var_v0 = &D_800EB320[omCurrentObj->objId];
            var_f0 = *var_v0;
        } while (var_f0 > 6.2831855f);
    }
    if (var_f0 < 0.0f) {
        do {
            *var_v0 = var_f0 + 6.2831855f;
            var_v0 = &D_800EB320[omCurrentObj->objId];
            var_f0 = *var_v0;
        } while (var_f0 < 0.0f);
    }
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019AC60_ovl7.s")
#endif

#ifdef MIPS_TO_C

s32 func_8019ADB4_ovl7(f32 arg0, ? arg1) {
    f32 *temp_v0;
    f32 *var_v0;
    f32 temp_f0;
    f32 var_f0;
    f32 var_f12;

    if (func_8019A900_ovl7(arg1) == 0) {
        return 0;
    }
    temp_f0 = func_8019AAD0_ovl7(D_800EB320[omCurrentObj->objId], 0, D_800EB320, 0);
    if (temp_f0 == 0.0f) {
        return 0;
    }
    if (temp_f0 > 0.0f) {
        var_f12 = arg0;
    } else {
        var_f12 = -arg0;
    }
    temp_v0 = &D_800EB320[omCurrentObj->objId];
    *temp_v0 += var_f12;
    var_v0 = &D_800EB320[omCurrentObj->objId];
    var_f0 = *var_v0;
    if (var_f0 > 6.2831855f) {
        do {
            *var_v0 = var_f0 - 6.2831855f;
            var_v0 = &D_800EB320[omCurrentObj->objId];
            var_f0 = *var_v0;
        } while (var_f0 > 6.2831855f);
    }
    if (var_f0 < 0.0f) {
        do {
            *var_v0 = var_f0 + 6.2831855f;
            var_v0 = &D_800EB320[omCurrentObj->objId];
            var_f0 = *var_v0;
        } while (var_f0 < 0.0f);
    }
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019ADB4_ovl7.s")
#endif

#ifdef NON_MATCHING
void func_8019AF00_ovl7(f32 arg0) {
    f32 angleSin = sinf(D_800EB320[omCurrentObj->objId]) * arg0;
    f32 angleCos = cosf(D_800EB320[omCurrentObj->objId]) * arg0;

    D_800E6690[omCurrentObj->objId] = angleSin * 0.5f;
    D_800E6850[omCurrentObj->objId] = ABS(ABS(angleSin));
    D_800E3750[omCurrentObj->objId] = D_800EB160[omCurrentObj->objId] + (angleCos * 0.5f);
    D_800E3C90[omCurrentObj->objId] = ABS(ABS(D_800EB160[omCurrentObj->objId]) + ABS(angleCos));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019AF00_ovl7.s")
#endif

// regalloc, and just returning the value doesnt seem to emit the required mov.s
#ifdef NON_MATCHING
f32 eneGetPlayerHeight(void) {
    f32 ret = gEntitiesNextPosYArray[0] + 20.f;

    return ret;
}
#else
f32 eneGetPlayerHeight(void);
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/eneGetPlayerHeight.s")
#endif

void func_8019B164_ovl7(void) {
    // TODO: struct
    f32 sp1C;
    s32 sp18;

    if (func_8019A900_ovl7(&sp18) != 0) {
        D_800E6A10[omCurrentObj->objId] = sp18;
    }
    else if (random_soft_s32_range(2) != 0) {
        D_800E6A10[omCurrentObj->objId] = 1.0f;
    } else {
        D_800E6A10[omCurrentObj->objId] = -1.0f;
    }
}

s32 eneCheckAboveBelowPlayer(void) {
    return (gEntitiesNextPosYArray[omCurrentObj->objId] < (gEntitiesNextPosYArray[0] + 20.0f)) ? 1 : -1;
}


// eneCheckAboveBelowPlayer2
// its the same as the above except with a function call and you can add an offset
s32 func_8019B260_ovl7(f32 offsetY) {
    return ((gEntitiesNextPosYArray[omCurrentObj->objId] + offsetY) < eneGetPlayerHeight()) ? 1 : -1;
}

#ifdef MIPS_TO_C
void func_8019B2C0_ovl7(s32 arg0) {
    f32 var_f2;
    u32 temp_a2;
    u32 temp_v0;
    u32 temp_v0_2;

    temp_v0 = omCurrentObj->objId;
    temp_a2 = D_800E1B50[temp_v0]->unk78;
    if (temp_a2 != 0) {
        if (D_800E8920[temp_v0] == 0) {
            var_f2 = 0.0f;
        } else {
            var_f2 = func_800F8824(temp_a2, D_800E17D0[temp_v0], temp_a2, arg0);
        }
        switch (arg0) {                             /* irregular */
            case 1:
                D_800DE350[omCurrentObj->objId]->data.dobj->parent->angle.x = -var_f2;
                return;
            case 2:
                temp_v0_2 = omCurrentObj->objId;
                D_800DE350[temp_v0_2]->data.dobj->parent->angle.z = var_f2 * D_800E6A10[temp_v0_2];
                break;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019B2C0_ovl7.s")
#endif

#ifdef MIPS_TO_C
void func_8019B3C8_ovl7(s32 arg0) {
    D_800DE350[omCurrentObj->objId]->data.dobj->parent->angle.x = 0.0f;
    D_800DE350[omCurrentObj->objId]->data.dobj->parent->angle.z = 0.0f;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019B3C8_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_8019B424_ovl7(s32 arg0) {
    UnkStruct800E1B50 *sp24;
    s32 sp1C;

    sp24 = D_800E1B50[omCurrentObj->objId];
    if ((func_8019A900_ovl7(&sp1C) != 0) && (sp1C != D_800E6A10[omCurrentObj->objId]) && (sp24->unk3C == 0)) {
        func_80199F1C_ovl7(arg0);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019B424_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_8019B4BC_ovl7(s32 arg0) {
    UnkStruct800E1B50 *sp24;
    s32 sp1C;

    sp24 = D_800E1B50[omCurrentObj->objId];
    if (func_8019A900_ovl7(&sp1C) == 0) {
        sp1C = func_8019B608_ovl7(0);
    }
    if ((sp1C != D_800E6A10[omCurrentObj->objId]) && (sp24->unk3C == 0)) {
        func_80199F1C_ovl7(arg0);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019B4BC_ovl7.s")
#endif

#ifdef MIPS_TO_C
void func_8019B570_ovl7(s32 arg0) {
    func_800AFBB4(0, omCurrentObj);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019B570_ovl7.s")
#endif

void func_8019B59C_ovl7(s32 arg0) {
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId] + ((D_800E6A10[omCurrentObj->objId] == 1.0f) ? -M_PIF/2 : M_PIF/2);
}

f32 func_8019B608_ovl7(s32 track) {
    f32 var_f2;
    f32 angleXZ = atan2f(
        gEntitiesNextPosZArray[track] - gEntitiesNextPosZArray[omCurrentObj->objId],
        gEntitiesNextPosXArray[track] - gEntitiesNextPosXArray[omCurrentObj->objId]
    )- D_800E17D0[omCurrentObj->objId];

    while (angleXZ > M_PIF) {
        angleXZ -= 6.2831855f;
    }
    while (angleXZ < -M_PIF) {
        angleXZ += 6.2831855f;
    }

    return ((D_800E6A10[omCurrentObj->objId] * angleXZ) < 0.0f) ? 1.0f : -1.0f;
}

#ifdef NON_MATCHING
// magnitude does all the calculations,
// and then does x + z + y instead of x+y+z.
// I can't find a combo that isnt a fake match
s32 eneCheckNearPlayer(f32 distanceSq) {
    Vector toPlayer;
    Vector magnitude;

    toPlayer.z = gEntitiesNextPosZArray[0] - gEntitiesNextPosZArray[omCurrentObj->objId];
    toPlayer.x = gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[omCurrentObj->objId];
    toPlayer.y = (gEntitiesNextPosYArray[0] + 20.0f) - gEntitiesNextPosYArray[omCurrentObj->objId];


    magnitude.x = (toPlayer.x * toPlayer.x);
    magnitude.y = (toPlayer.y * toPlayer.y);
    magnitude.z = (toPlayer.z * toPlayer.z);
    return ((magnitude.x + magnitude.y + magnitude.z) < distanceSq) ? 1 : 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/eneCheckNearPlayer.s")
#endif

#ifdef MIPS_TO_C
void func_8019B7D8_ovl7(void) {
    UnkStruct800E1B50 *temp_v0;
    struct Sub800E1B50_Unk88 *temp_v1;
    u32 temp_v0_2;

    temp_v0 = D_800E1B50[omCurrentObj->objId];
    if (temp_v0 != NULL) {
        temp_v1 = temp_v0->unk88;
        if (temp_v1 != NULL) {
            temp_v0_2 = temp_v1->unk8;
            if (temp_v0_2 != 0) {
                temp_v0_2();
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019B7D8_ovl7.s")
#endif

#ifdef MIPS_TO_C

s32 func_8019B834_ovl7(void) {
    f32 sp2C;
    f32 sp28;
    f32 sp24;
    s32 sp1C;

    sp24 = gEntitiesNextPosXArray[omCurrentObj->objId];
    sp28 = gEntitiesNextPosYArray[omCurrentObj->objId];
    sp2C = gEntitiesNextPosZArray[omCurrentObj->objId];
    if ((func_8019A900_ovl7(&sp1C) != 0) && (sp1C != D_800E6A10[omCurrentObj->objId]) && (func_800A4F48(D_800D799C->data.ptr, &sp24, 1.075f, 1.075f) == 0)) {
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019B834_ovl7.s")
#endif

s32 func_8019B918_ovl7(void) {
    Vector vec;

    vec.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    vec.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    vec.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    if (func_800A4F48(D_800D799C->data.ptr, &vec, 1.075f, 1.075f) == 0) {
        return 1;
    } else {
        return 0;
    }
}

void func_8019B9B0_ovl7(void) {
    UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    ent->unk80 = func_800FF144();
    if (ent->unk80 != NULL) {
        func_8019BBEC_ovl7();
        ent->unk80->unk14 = 10.0f;
        ent->unk80->unk18 = -400.0f;
        ent->unk80->unk10 = 17.5f;
        ent->unk80->unk21 = 0;
    }
}

void func_8019BA3C_ovl7(void) {
    UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    ent->unk80 = func_800FF144();
    if (ent->unk80 != NULL) {
        func_8019BBEC_ovl7();
        ent->unk80->unk14 = 20.0f;
        ent->unk80->unk18 = -800.0f;
        ent->unk80->unk10 = 35.5f;
        ent->unk80->unk21 = 0;
    }
}

void func_8019BAC8_ovl7(void) {
    UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    ent->unk80 = func_800FF144();
    if (ent->unk80 != NULL) {
        func_8019BBEC_ovl7();
        ent->unk80->unk14 = 5.0f;
        ent->unk80->unk18 = -400.0f;
        ent->unk80->unk10 = 12.5f;
        ent->unk80->unk21 = 1;
    }
}

void func_8019BB58_ovl7(void) {
    UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    if (ent->unk80 != NULL) {
        func_800FF1CC(ent->unk80);
        ent->unk80 = 0;
    }
}

void func_8019BBA8_ovl7(s32 track) {
    UnkStruct800E1B50 *ent = D_800E1B50[track];

    if (ent->unk80 != NULL) {
        func_800FF1CC(ent->unk80);
        ent->unk80 = 0;
    }
}

void func_8019BBEC_ovl7(void) {
    UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    if (ent->unk80 != NULL) {
        func_800FF200(ent->unk80);
    }
}

#ifdef MIPS_TO_C

void func_8019BC34_ovl7(f32 arg0) {
    UnkStruct800E1B50 *sp1C;
    UnkStruct800E1B50 *temp_v0;

    temp_v0 = D_800E1B50[omCurrentObj->objId];
    temp_v0->unk1C = arg0;
    sp1C = temp_v0;
    func_8019BC94_ovl7();
    temp_v0->unk1C = arg0 * 2.0f;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019BC34_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_8019BC94_ovl7(void) {
    UnkStruct800E1B50 *sp2C;
    f32 sp28;
    s32 sp24;
    UnkStruct800E1B50 *temp_a2;
    u32 temp_v0;

    temp_v0 = omCurrentObj->objId;
    temp_a2 = D_800E1B50[temp_v0];
    sp24 = D_800E5F90[temp_v0];
    sp2C = temp_a2;
    sp28 = D_800E6BD0[omCurrentObj->objId];
    if (func_800F9888(&sp24, D_800E6A10[temp_v0] * temp_a2->unk1C, temp_a2) == 0) {
        sp2C->unk2C = sp24;
        sp2C->unk28 = sp28;
        return;
    }
    sp2C->unk2C = -1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019BC94_ovl7.s")
#endif

#ifdef MIPS_TO_C

s32 func_8019BD38_ovl7(void) {
    s32 sp18;
    UnkStruct800E1B50 *temp_v1;
    f32 temp_f0;
    s32 temp_a0;
    s32 var_t0;
    u32 temp_a2;
    u32 temp_v0;

    temp_v0 = omCurrentObj->objId;
    temp_v1 = D_800E1B50[temp_v0];
    var_t0 = 0;
    temp_a2 = temp_v1->unk2C;
    if (temp_a2 == -1) {
        return 0;
    }
    temp_a0 = D_800E5F90[temp_v0];
    if (temp_a2 == temp_a0) {
        if (D_800E6A10[temp_v0] == 1.0f) {
            if (temp_v1->unk28 <= D_800E6BD0[temp_v0]) {
                goto block_12;
            }
        } else if (D_800E6BD0[temp_v0] <= temp_v1->unk28) {
            goto block_12;
        }
    } else {
        sp18 = 0;
        temp_f0 = func_800F951C(temp_a0, D_800E6BD0[temp_v0], temp_a2, temp_v1->unk28);
        var_t0 = 0;
        if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
            if (temp_f0 < 0.0f) {
                goto block_12;
            }
        } else if (temp_f0 >= 0.0f) {
block_12:
            var_t0 = 1;
        }
    }
    return var_t0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019BD38_ovl7.s")
#endif


// eneTurnCommon
#ifdef MIPS_TO_C

void eneTurnCommon(s32 arg0) {
    UnkStruct800E1B50 *sp1C;
    UnkStruct800E1B50 *temp_t0;
    f32 *temp_a0;
    f32 *temp_a0_3;
    f32 *temp_a0_4;
    f32 *temp_v0;
    f32 *temp_v0_2;
    f32 *temp_v0_3;
    f32 *temp_v0_4;
    f32 *temp_v0_5;
    f32 *temp_v0_6;
    f32 *temp_v0_7;
    f32 *temp_v0_8;
    f32 *temp_v0_9;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 var_f0;
    f32 var_f0_2;
    f32 var_f0_3;
    f32 var_f0_4;
    s32 temp_a0_2;
    s32 var_a1;
    s32 var_a2;
    u32 temp_a1;
    u32 temp_a1_2;
    u32 temp_a1_3;
    u32 temp_a1_4;
    u32 temp_a1_5;
    u8 var_a3;
    u8 var_v0;

    temp_a1 = omCurrentObj->objId;
    var_a2 = arg0;
    var_a1 = temp_a1 * 4;
    temp_t0 = D_800E1B50[temp_a1];
    var_a3 = temp_t0->unk3C;
    if (var_a3 != 0) {
        if (arg0 == 1) {
            temp_v0 = &D_800E6A10[temp_a1];
            *temp_v0 *= -1.0f;
            temp_a1_2 = omCurrentObj->objId;
            temp_a0 = &D_800E64D0[temp_a1_2];
            temp_f2 = *temp_a0;
            if (temp_f2 < 0.0f) {
                var_f0 = -temp_f2;
            } else {
                var_f0 = temp_f2;
            }
            *temp_a0 = var_f0 * D_800E6A10[temp_a1_2];
            temp_a1_3 = omCurrentObj->objId;
            temp_v0_2 = &D_800E6690[temp_a1_3];
            temp_f2_2 = *temp_v0_2;
            if (temp_f2_2 < 0.0f) {
                var_f0_2 = -temp_f2_2;
            } else {
                var_f0_2 = temp_f2_2;
            }
            *temp_v0_2 = var_f0_2 * D_800E6A10[temp_a1_3];
            temp_t0->unk3C = 0;
            func_8019BC94_ovl7(0, temp_a0, temp_a1_3 * 4, var_a2, var_a3);
            return;
        }
        if ((var_a2 % 2) == 1) {
            sp1C = temp_t0;
            utilPrintf("eneTurnCommon Error frame=%02d\n", var_a2, var_a2, var_a3);
            var_a2 = arg0 + 1;
            var_a3 = temp_t0->unk3C;
            var_a1 = omCurrentObj->objId * 4;
        }
        var_v0 = var_a3;
        if (var_a3 == 1) {
            temp_t0->unk20 = *(D_800E64D0 + var_a1);
            var_v0 = temp_t0->unk3C;
            temp_t0->unk24 = D_800E6690[omCurrentObj->objId];
            var_a1 = omCurrentObj->objId * 4;
        }
        temp_a0_2 = var_a2 / 2;
        if (var_v0 < temp_a0_2) {
            *(D_800E6690 + var_a1) = 0.0f;
            temp_a1_4 = omCurrentObj->objId;
            D_800E64D0[temp_a1_4] = D_800E6690[temp_a1_4];
            temp_a1_5 = omCurrentObj->objId;
            temp_v0_3 = &D_800E9020[temp_a1_5];
            if (D_800E6A10[temp_a1_5] == 1.0f) {
                var_f0_3 = 3.1415927f / var_a2;
            } else {
                var_f0_3 = -(3.1415927f / var_a2);
            }
            *temp_v0_3 -= var_f0_3;
            goto block_29;
        }
        if (temp_a0_2 == var_v0) {
            if (*(D_800E6A10 + var_a1) == 1.0f) {
                temp_v0_4 = D_800E9020 + var_a1;
                *temp_v0_4 -= 3.1415927f / var_a2;
                temp_a0_3 = &D_800E17D0[omCurrentObj->objId];
                *temp_a0_3 += 3.1415927f;
                temp_v0_5 = &D_800E9020[omCurrentObj->objId];
                *temp_v0_5 += 3.1415927f;
            } else {
                temp_v0_6 = D_800E9020 + var_a1;
                *temp_v0_6 += 3.1415927f / var_a2;
                temp_a0_4 = &D_800E17D0[omCurrentObj->objId];
                *temp_a0_4 -= 3.1415927f;
                temp_v0_7 = &D_800E9020[omCurrentObj->objId];
                *temp_v0_7 -= 3.1415927f;
            }
            temp_v0_8 = &D_800E6A10[omCurrentObj->objId];
            *temp_v0_8 = -*temp_v0_8;
            D_800E64D0[omCurrentObj->objId] = -temp_t0->unk20;
            D_800E6690[omCurrentObj->objId] = -temp_t0->unk24;
            goto block_29;
        }
        if (var_v0 < var_a2) {
            temp_v0_9 = D_800E9020 + var_a1;
            if (*(D_800E6A10 + var_a1) == 1.0f) {
                var_f0_4 = 3.1415927f / var_a2;
            } else {
                var_f0_4 = -(3.1415927f / var_a2);
            }
            *temp_v0_9 += var_f0_4;
block_29:
            temp_t0->unk3C += 1;
        } else {
            *(D_800E9020 + var_a1) = 0.0f;
            temp_t0->unk3C = 0;
            func_8019BC94_ovl7(temp_a0_2, var_a1, var_a2, D_800E9020);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/eneTurnCommon.s")
#endif

#ifdef MIPS_TO_C

void eneTurnCommon2(s32 arg0) {
    UnkStruct800E1B50 *sp1C;
    UnkStruct800E1B50 *temp_a3;
    f32 *temp_a0;
    f32 *temp_a0_2;
    f32 *temp_a0_3;
    f32 *temp_v0;
    f32 *temp_v0_2;
    f32 *temp_v0_3;
    f32 *temp_v0_4;
    f32 *temp_v0_5;
    f32 *temp_v0_6;
    f32 *temp_v0_7;
    f32 *temp_v0_8;
    f32 *temp_v0_9;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 var_f2;
    f32 var_f2_2;
    s32 var_a1;
    s32 var_a2;
    u32 temp_a1;
    u32 temp_a1_2;
    u32 temp_a1_3;
    u32 temp_a1_4;
    u8 var_a0;
    u8 var_v0;

    temp_a1 = omCurrentObj->objId;
    var_a2 = arg0;
    var_a1 = temp_a1 * 4;
    temp_a3 = D_800E1B50[temp_a1];
    var_v0 = temp_a3->unk3C;
    if (var_v0 != 0) {
        if (arg0 == 1) {
            temp_v0 = &D_800E6A10[temp_a1];
            *temp_v0 *= -1.0f;
            temp_a1_2 = omCurrentObj->objId;
            temp_a0 = &D_800E64D0[temp_a1_2];
            temp_f0 = *temp_a0;
            if (temp_f0 < 0.0f) {
                var_f2 = -temp_f0;
            } else {
                var_f2 = temp_f0;
            }
            *temp_a0 = var_f2 * D_800E6A10[temp_a1_2];
            temp_a1_3 = omCurrentObj->objId;
            temp_v0_2 = &D_800E6690[temp_a1_3];
            temp_f0_2 = *temp_v0_2;
            if (temp_f0_2 < 0.0f) {
                var_f2_2 = -temp_f0_2;
            } else {
                var_f2_2 = temp_f0_2;
            }
            *temp_v0_2 = var_f2_2 * D_800E6A10[temp_a1_3];
            temp_a3->unk3C = 0;
            func_8019BC94_ovl7(0, temp_a0, temp_a1_3 * 4, var_a2, temp_a3);
            return;
        }
        if ((var_a2 % 2) == 1) {
            sp1C = temp_a3;
            utilPrintf("eneTurnCommon Error frame=%02d\n", var_a2, var_a2, temp_a3);
            var_a2 = arg0 + 1;
            var_v0 = temp_a3->unk3C;
            var_a1 = omCurrentObj->objId * 4;
        }
        var_a0 = var_v0;
        if (var_v0 == 1) {
            temp_a3->unk20 = *(D_800E64D0 + var_a1);
            temp_a3->unk24 = D_800E6690[omCurrentObj->objId];
            temp_a1_4 = omCurrentObj->objId;
            if (D_800E6A10[temp_a1_4] == 1.0f) {
                temp_v0_3 = &D_800E9020[temp_a1_4];
                *temp_v0_3 -= 3.1415927f / var_a2;
                temp_a0_2 = &D_800E17D0[omCurrentObj->objId];
                *temp_a0_2 += 3.1415927f;
                temp_v0_4 = &D_800E9020[omCurrentObj->objId];
                *temp_v0_4 += 3.1415927f;
            } else {
                temp_v0_5 = &D_800E9020[temp_a1_4];
                *temp_v0_5 += 3.1415927f / var_a2;
                temp_a0_3 = &D_800E17D0[omCurrentObj->objId];
                *temp_a0_3 -= 3.1415927f;
                temp_v0_6 = &D_800E9020[omCurrentObj->objId];
                *temp_v0_6 -= 3.1415927f;
            }
            temp_v0_7 = &D_800E6A10[omCurrentObj->objId];
            *temp_v0_7 = -*temp_v0_7;
            D_800E64D0[omCurrentObj->objId] = -temp_a3->unk20;
            D_800E6690[omCurrentObj->objId] = -temp_a3->unk24;
            var_a0 = temp_a3->unk3C;
            var_a1 = omCurrentObj->objId * 4;
        }
        if (var_a0 < var_a2) {
            temp_v0_8 = D_800E9020 + var_a1;
            temp_f0_3 = 3.1415927f / var_a2;
            if (*(D_800E6A10 + var_a1) == 1.0f) {
                temp_v0_9 = D_800E9020 + var_a1;
                *temp_v0_9 += temp_f0_3;
            } else {
                *temp_v0_8 -= temp_f0_3;
            }
            temp_a3->unk3C += 1;
        } else {
            *(D_800E9020 + var_a1) = 0.0f;
            temp_a3->unk3C = 0;
            func_8019BC94_ovl7(var_a0, var_a1, var_a2, temp_a3);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/eneTurnCommon2.s")
#endif

#ifdef MIPS_TO_C

void func_8019C6AC_ovl7(s32 arg0) {
    UnkStruct800E1B50 *temp_v1;
    s32 var_v0;
    u32 temp_v0;

    temp_v0 = omCurrentObj->objId;
    var_v0 = temp_v0 * 4;
    temp_v1 = D_800E1B50[temp_v0];
    if (temp_v1->unk3C == 0) {
        temp_v1->unk3C = 1;
        var_v0 = omCurrentObj->objId * 4;
    }
    *(D_800E6690 + var_v0) = 0.0f;
    func_8019C79C_ovl7();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019C6AC_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_8019C71C_ovl7(f32 arg0) {
    UnkStruct800E1B50 *sp1C;
    u32 temp_v0;

    sp1C = D_800E1B50[omCurrentObj->objId];
    if (func_8019BD38_ovl7() != 0) {
        sp1C->unk3C = 1;
        temp_v0 = omCurrentObj->objId;
        D_800E6690[temp_v0] = D_800E6A10[temp_v0] * arg0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019C71C_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_8019C79C_ovl7(void) {
    UnkStruct800E1B50 *sp2C;
    f32 sp28;
    s32 sp24;
    UnkStruct800E1B50 *temp_a2;
    u32 temp_v0;

    temp_v0 = omCurrentObj->objId;
    temp_a2 = D_800E1B50[temp_v0];
    sp24 = D_800E5F90[temp_v0];
    sp2C = temp_a2;
    sp28 = D_800E6BD0[omCurrentObj->objId];
    if (func_800F9888(&sp24, -D_800E6A10[temp_v0] * temp_a2->unk1C, temp_a2) == 0) {
        sp2C->unk2C = sp24;
        sp2C->unk28 = sp28;
        return;
    }
    sp2C->unk2C = -1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019C79C_ovl7.s")
#endif

#ifdef MIPS_TO_C
void func_8019C844_ovl7(void *arg0) {
    UnkStruct800E1B50 *temp_v0;
    f32 *temp_v0_2;
    f32 *temp_v0_3;
    f32 *temp_v0_4;
    f32 temp_f0;
    s32 var_a1;
    u32 temp_a1;
    u32 temp_a1_2;
    u32 temp_a1_3;

    temp_a1 = omCurrentObj->objId;
    var_a1 = temp_a1 * 4;
    temp_v0 = D_800E1B50[temp_a1];
    if (temp_v0->unk3C != 0) {
        temp_v0->unk3C = 0;
        var_a1 = omCurrentObj->objId * 4;
    }
    temp_v0_2 = var_a1 + D_800E17D0;
    if (*(D_800E6A10 + var_a1) == 1.0f) {
        temp_v0_3 = var_a1 + D_800E17D0;
        *temp_v0_3 += 3.1415927f;
    } else {
        *temp_v0_2 -= 3.1415927f;
    }
    D_800E9020[omCurrentObj->objId] = 0.0f;
    temp_v0_4 = &D_800E6A10[omCurrentObj->objId];
    *temp_v0_4 = -*temp_v0_4;
    temp_a1_2 = omCurrentObj->objId;
    D_800E64D0[temp_a1_2] = D_800E6A10[temp_a1_2] * arg0->unk0;
    temp_a1_3 = omCurrentObj->objId;
    D_800E6690[temp_a1_3] = D_800E6A10[temp_a1_3] * arg0->unk4;
    temp_f0 = arg0->unk8;
    if (temp_f0 < 0.0f) {
        D_800E6850[omCurrentObj->objId] = -temp_f0;
        return;
    }
    D_800E6850[omCurrentObj->objId] = temp_f0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019C844_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_8019C9B0_ovl7(f32 arg0, u8 arg1) {
    UnkStruct800E1B50 *sp1C;
    UnkStruct800E1B50 *temp_a2;
    f32 *temp_v0_10;
    f32 *temp_v0_3;
    f32 *temp_v0_4;
    f32 *temp_v0_5;
    f32 *temp_v0_6;
    f32 *temp_v0_7;
    f32 *temp_v0_8;
    f32 *temp_v0_9;
    f32 temp_f2;
    f32 var_f0;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;
    u32 temp_v1_4;
    u8 temp_v0;
    u8 temp_v0_2;
    u8 var_a1;

    var_a1 = arg1 & 0xFF;
    temp_a2 = D_800E1B50[omCurrentObj->objId];
    temp_v0 = temp_a2->unk3C;
    if (temp_v0 != 0) {
        if (temp_v0 == 1) {
            arg1 = var_a1;
            sp1C = temp_a2;
            func_8019C79C_ovl7(&omCurrentObj, var_a1, temp_a2);
            var_a1 = arg1;
        }
        if (var_a1 != 1) {
            temp_v0_2 = temp_a2->unk3C;
            var_f0 = temp_v0_2;
            if (temp_v0_2 < 0) {
                var_f0 += 4294967296.0f;
            }
            temp_f2 = var_a1 * 0.5f;
            if (var_f0 < temp_f2) {
                temp_v1 = omCurrentObj->objId;
                if (D_800E6A10[temp_v1] == 1.0f) {
                    temp_v0_3 = &D_800E9020[temp_v1];
                    *temp_v0_3 -= (arg0 * 3.1415927f) / 180.0f;
                } else {
                    temp_v0_4 = &D_800E9020[temp_v1];
                    *temp_v0_4 += (arg0 * 3.1415927f) / 180.0f;
                }
                goto block_21;
            }
            if (temp_f2 == var_f0) {
                temp_v1_2 = omCurrentObj->objId;
                if (D_800E6A10[temp_v1_2] == 1.0f) {
                    temp_v0_5 = &D_800E9020[temp_v1_2];
                    *temp_v0_5 -= (arg0 * 3.1415927f) / 180.0f;
                } else {
                    temp_v0_6 = &D_800E9020[temp_v1_2];
                    *temp_v0_6 += (arg0 * 3.1415927f) / 180.0f;
                }
                goto block_21;
            }
            if (temp_v0_2 < var_a1) {
                temp_v1_3 = omCurrentObj->objId;
                if (D_800E6A10[temp_v1_3] == 1.0f) {
                    temp_v0_7 = &D_800E9020[temp_v1_3];
                    *temp_v0_7 -= (arg0 * 3.1415927f) / 180.0f;
                } else {
                    temp_v0_8 = &D_800E9020[temp_v1_3];
                    *temp_v0_8 += (arg0 * 3.1415927f) / 180.0f;
                }
block_21:
                temp_a2->unk3C += 1;
            } else {
                temp_a2->unk3C = 0;
                D_800E9020[omCurrentObj->objId] = 0.0f;
                temp_v1_4 = omCurrentObj->objId;
                temp_v0_9 = &D_800E9020[temp_v1_4];
                if (D_800E6A10[temp_v1_4] == 1.0f) {
                    temp_v0_10 = &D_800E9020[temp_v1_4];
                    *temp_v0_10 += 3.1415927f;
                    return;
                }
                *temp_v0_9 -= 3.1415927f;
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019C9B0_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_8019CD08_ovl7(f32 arg0) {
    UnkStruct800E1B50 *sp1C;
    UnkStruct800E1B50 *temp_v0;

    temp_v0 = D_800E1B50[omCurrentObj->objId];
    temp_v0->unk1C = arg0;
    sp1C = temp_v0;
    func_8019CD68_ovl7();
    temp_v0->unk1C = arg0 * 2.0f;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019CD08_ovl7.s")
#endif

#ifdef MIPS_TO_C
void func_8019CD68_ovl7(void) {
    UnkStruct800E1B50 *sp2C;
    f32 sp28;
    f32 sp24;
    f32 sp20;
    UnkStruct800E1B50 *temp_v1;

    temp_v1 = D_800E1B50[omCurrentObj->objId];
    sp24 = 0.0f;
    sp20 = 0.0f;
    sp28 = temp_v1->unk1C;
    sp2C = temp_v1;
    lbvector_Rotate(&sp20, 2, gEntitiesAngleYArray[omCurrentObj->objId]);
    sp2C->unkC = (bitwise u32) (gEntitiesNextPosXArray[omCurrentObj->objId] + sp20);
    sp2C->unk14 = (bitwise u32) (gEntitiesNextPosZArray[omCurrentObj->objId] + sp28);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019CD68_ovl7.s")
#endif

#ifdef MIPS_TO_C
s32 func_8019CE28_ovl7(void) {
    UnkStruct800E1B50 *temp_v0;
    f32 temp_f0;
    f32 temp_f2;
    f32 var_f0;
    f32 var_f0_2;
    f32 var_f12;
    f32 var_f12_2;
    s32 var_a0;
    u32 temp_v1;

    temp_v1 = omCurrentObj->objId;
    var_a0 = 0;
    temp_v0 = D_800E1B50[temp_v1];
    temp_f0 = gEntitiesNextPosXArray[temp_v1] - (bitwise f32) temp_v0->unkC;
    temp_f2 = gEntitiesNextPosZArray[temp_v1] - (bitwise f32) temp_v0->unk14;
    if (D_800E6A10[temp_v1] == 1.0f) {
        if (!(temp_f0 >= 0.0f)) {
            if (temp_f0 < 0.0f) {
                var_f12 = -temp_f0;
            } else {
                var_f12 = temp_f0;
            }
            if (var_f12 <= 0.001f) {
                goto block_6;
            }
            /* Duplicate return node #23. Try simplifying control flow for better match */
            return var_a0;
        }
block_6:
        if (!(temp_f2 >= 0.0f)) {
            if (temp_f2 < 0.0f) {
                var_f0 = -temp_f2;
            } else {
                var_f0 = temp_f2;
            }
            if (var_f0 <= 0.001f) {
                /* Duplicate return node #11. Try simplifying control flow for better match */
                return 1;
            }
            /* Duplicate return node #23. Try simplifying control flow for better match */
            return var_a0;
        }
        return 1;
    }
    if (!(temp_f0 <= 0.0f)) {
        if (temp_f0 < 0.0f) {
            var_f12_2 = -temp_f0;
        } else {
            var_f12_2 = temp_f0;
        }
        if (var_f12_2 <= 0.001f) {
            goto block_17;
        }
    } else {
block_17:
        if (!(temp_f2 <= 0.0f)) {
            if (temp_f2 < 0.0f) {
                var_f0_2 = -temp_f2;
            } else {
                var_f0_2 = temp_f2;
            }
            if (var_f0_2 <= 0.001f) {
                goto block_22;
            }
        } else {
block_22:
            var_a0 = 1;
        }
    }
    return var_a0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019CE28_ovl7.s")
#endif

#ifdef MIPS_TO_C
void func_8019CFD0_ovl7(void *arg0) {
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    UnkStruct800E1B50 *temp_a1;
    f32 *temp_a0;
    f32 *temp_a0_2;
    f32 *temp_v1_2;
    f32 temp_f0;
    f32 temp_f0_2;
    s32 var_v1;
    u32 temp_v1;

    temp_v1 = omCurrentObj->objId;
    var_v1 = temp_v1 * 4;
    temp_a1 = D_800E1B50[temp_v1];
    if (temp_a1->unk3C != 0) {
        temp_a1->unk3C = 0;
        var_v1 = omCurrentObj->objId * 4;
    }
    temp_a0 = var_v1 + D_800E17D0;
    if (*(D_800E6A10 + var_v1) == 1.0f) {
        temp_a0_2 = var_v1 + D_800E17D0;
        *temp_a0_2 += 3.1415927f;
    } else {
        *temp_a0 -= 3.1415927f;
    }
    D_800E9020[omCurrentObj->objId] = 0.0f;
    sp30 = 1.0f;
    sp28 = 0.0f;
    temp_v1_2 = &D_800E6A10[omCurrentObj->objId];
    sp2C = 0.0f;
    *temp_v1_2 = -*temp_v1_2;
    lbvector_Rotate(&sp28, 2, gEntitiesAngleYArray[omCurrentObj->objId]);
    D_800E3050[omCurrentObj->objId] = arg0->unk0 * sp28;
    D_800E3590[omCurrentObj->objId] = arg0->unk4 * sp28;
    temp_f0 = arg0->unk8 * sp28;
    if (temp_f0 < 0.0f) {
        D_800E3AD0[omCurrentObj->objId] = -temp_f0;
    } else {
        D_800E3AD0[omCurrentObj->objId] = temp_f0;
    }
    D_800E33D0[omCurrentObj->objId] = arg0->unk0 * sp30;
    D_800E3910[omCurrentObj->objId] = arg0->unk4 * sp30;
    temp_f0_2 = arg0->unk8 * sp30;
    if (temp_f0_2 < 0.0f) {
        D_800E3E50[omCurrentObj->objId] = -temp_f0_2;
        return;
    }
    D_800E3E50[omCurrentObj->objId] = temp_f0_2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019CFD0_ovl7.s")
#endif

#ifdef MIPS_TO_C
void func_8019D214_ovl7(void) {
    UnkStruct800E1B50 *sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    UnkStruct800E1B50 *temp_a3;
    u32 temp_v0;

    temp_v0 = omCurrentObj->objId;
    sp28 = 0.0f;
    sp2C = 0.0f;
    temp_a3 = D_800E1B50[temp_v0];
    sp34 = temp_a3;
    sp30 = D_800E6A10[omCurrentObj->objId] * temp_a3->unk1C;
    lbvector_Rotate(&sp28, 2, -D_800E6A10[temp_v0] * gEntitiesAngleYArray[temp_v0]);
    sp34->unkC = (bitwise u32) (gEntitiesNextPosXArray[omCurrentObj->objId] + sp28);
    sp34->unk14 = (bitwise u32) (gEntitiesNextPosZArray[omCurrentObj->objId] + sp30);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019D214_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_8019D2FC_ovl7(f32 arg0, u8 arg1) {
    UnkStruct800E1B50 *sp1C;
    UnkStruct800E1B50 *temp_a0;
    f32 *temp_v0_2;
    f32 *temp_v0_3;
    u32 temp_v1;
    u32 temp_v1_2;
    u8 temp_v0;

    temp_a0 = D_800E1B50[omCurrentObj->objId];
    temp_v0 = temp_a0->unk3C;
    if (temp_v0 != 0) {
        if (temp_v0 == 1) {
            sp1C = temp_a0;
            func_8019D214_ovl7(temp_a0, &omCurrentObj);
        }
        if (arg1 != 1) {
            if (temp_a0->unk3C < arg1) {
                temp_v1 = omCurrentObj->objId;
                if (D_800E6A10[temp_v1] == 1.0f) {
                    D_800E9020[temp_v1] = -((arg0 * 3.1415927f) / 180.0f);
                } else {
                    D_800E9020[temp_v1] = (arg0 * 3.1415927f) / 180.0f;
                }
                temp_a0->unk3C += 1;
            } else {
                temp_a0->unk3C = 0;
                D_800E9020[omCurrentObj->objId] = 0.0f;
                temp_v1_2 = omCurrentObj->objId;
                if (D_800E6A10[temp_v1_2] == 1.0f) {
                    temp_v0_2 = &gEntitiesAngleYArray[temp_v1_2];
                    *temp_v0_2 -= (arg0 * 3.1415927f) / 180.0f;
                    return;
                }
                temp_v0_3 = &gEntitiesAngleYArray[temp_v1_2];
                *temp_v0_3 += (arg0 * 3.1415927f) / 180.0f;
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019D2FC_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_8019D4D0_ovl7(f32 arg0, s32 arg1) {
    UnkStruct800E1B50 *temp_a2;
    f32 *temp_a0_2;
    f32 *temp_a0_3;
    f32 *temp_a0_4;
    f32 *temp_v0_7;
    f32 *temp_v1;
    f32 *temp_v1_2;
    f32 *temp_v1_3;
    f32 *temp_v1_4;
    f32 *var_at;
    f32 temp_f0;
    f32 temp_f2;
    f32 var_f6;
    f32 var_f8;
    s32 temp_a1;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v0_4;
    u32 temp_v0_5;
    u32 temp_v0_6;
    u32 temp_v0_8;
    u8 temp_a0;

    temp_v0 = omCurrentObj->objId;
    temp_a1 = arg1 & 0xFF;
    temp_a2 = D_800E1B50[temp_v0];
    temp_a0 = temp_a2->unk3C;
    if (temp_a0 != 0) {
        if (temp_a0 == 1) {
            temp_a2->unk20 = D_800E64D0[temp_v0];
            temp_a2->unk24 = D_800E6690[omCurrentObj->objId];
            D_800E6690[omCurrentObj->objId] = 0.0f;
            temp_v0_2 = omCurrentObj->objId;
            D_800E64D0[temp_v0_2] = D_800E6690[temp_v0_2];
        }
        temp_f0 = temp_a2->unk3C;
        var_f6 = temp_a1;
        if (temp_a1 < 0) {
            var_f6 += 4294967296.0f;
        }
        temp_f2 = var_f6 * 0.5f;
        if (temp_f0 < temp_f2) {
            temp_v0_3 = omCurrentObj->objId;
            if (D_800E6A10[temp_v0_3] == 1.0f) {
                temp_v1 = &D_800E9020[temp_v0_3];
                *temp_v1 -= (arg0 * 3.1415927f) / 180.0f;
            } else {
                temp_v1_2 = &D_800E9020[temp_v0_3];
                *temp_v1_2 += (arg0 * 3.1415927f) / 180.0f;
            }
            goto block_19;
        }
        if (temp_f2 == temp_f0) {
            temp_v0_4 = omCurrentObj->objId;
            temp_a0_2 = &D_800E17D0[temp_v0_4];
            if (D_800E6A10[temp_v0_4] == 1.0f) {
                temp_a0_3 = &D_800E17D0[temp_v0_4];
                *temp_a0_3 += 3.1415927f;
                temp_v0_5 = omCurrentObj->objId;
                var_at = &D_800E9020[temp_v0_5];
                var_f8 = D_800E4C50[temp_v0_5] + 1.5707964f;
            } else {
                *temp_a0_2 -= 3.1415927f;
                temp_v0_6 = omCurrentObj->objId;
                var_at = &D_800E9020[temp_v0_6];
                var_f8 = D_800E4C50[temp_v0_6] + -1.5707964f;
            }
            *var_at = var_f8;
            temp_v0_7 = &D_800E6A10[omCurrentObj->objId];
            *temp_v0_7 = -*temp_v0_7;
            temp_a0_4 = &D_800E4C50[omCurrentObj->objId];
            *temp_a0_4 = -*temp_a0_4;
            D_800E64D0[omCurrentObj->objId] = -temp_a2->unk20;
            D_800E6690[omCurrentObj->objId] = -temp_a2->unk24;
            goto block_19;
        }
        if (temp_a2->unk3C < temp_a1) {
            temp_v0_8 = omCurrentObj->objId;
            if (D_800E6A10[temp_v0_8] == 1.0f) {
                temp_v1_3 = &D_800E9020[temp_v0_8];
                *temp_v1_3 += (arg0 * 3.1415927f) / 180.0f;
            } else {
                temp_v1_4 = &D_800E9020[temp_v0_8];
                *temp_v1_4 -= (arg0 * 3.1415927f) / 180.0f;
            }
block_19:
            temp_a2->unk3C += 1;
        } else {
            temp_a2->unk3C = 0;
            D_800E9020[omCurrentObj->objId] = 0.0f;
            func_8019BC94_ovl7(temp_a2->unk3C, temp_a1, temp_a2, &omCurrentObj);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019D4D0_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_8019D8A0(s32 arg0) {
    UnkStruct800E1B50 *sp24;
    s32 sp20;
    UnkStruct800E1B50 *temp_v0;
    s32 temp_s0;
    struct Sub800E1B50_Unk34 *temp_a1;
    u8 *temp_v0_2;
    u8 temp_v1;

    temp_s0 = arg0 & 0xFFFF;
    temp_v0 = D_800E1B50[temp_s0];
    temp_a1 = temp_v0->unk34;
    if (temp_a1 != NULL) {
        sp24 = temp_v0;
        sp20 = temp_s0 * 4;
        func_800A22D4(temp_a1, temp_a1);
    }
    sp24 = temp_v0;
    func_800A2300(D_800DE350[temp_s0]);
    temp_v0->unk34 = NULL;
    func_8019BBA8_ovl7(temp_s0);
    func_801A32A8_ovl7(temp_s0);
    temp_v1 = D_800E76C0[temp_s0];
    temp_v0_2 = temp_v1 + (&D_800D6C68 + 0x28);
    if (temp_v1 < 0x40) {
        *temp_v0_2 &= 0x80;
    }
    func_800B1900(temp_s0 & 0xFFFF);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019D8A0.s")
#endif

#ifdef MIPS_TO_C
void func_8019D958_ovl7(u16 arg0) {
    UnkStruct800E1B50 *ent = D_800E1B50[track];;

    if (ent->unk34 != NULL) {
        func_800A22D4(ent->unk34);
    }
    func_800A2300(D_800DE350[track]);
    ent->unk34 = NULL;
    D_800DE350[track]->onAnimate = NULL;
    func_8019BBA8_ovl7(track);
    func_801A32A8_ovl7(track);
    if (D_800E76C0[track] < 0x40) {
        temp_v0_2 = D_800E76C0[track] + (&D_800D6C68 + 0x28);
        if ((D_801290E0 + (D_800E76C0[track] * 0x2C))->unk5 & 1) {
            *temp_v0_2 &= 0x80;
        }
    }
    func_800B1900(track);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019D958_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_8019DA50_ovl7(void) {
    func_8019DA70_ovl7(0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019DA50_ovl7.s")
#endif

#ifdef MIPS_TO_C

f32 func_8019DA70_ovl7(s32 arg0) {
    s32 sp18;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f2;
    f32 var_f2;
    u32 temp_v0;
    u32 temp_v0_2;

    temp_v0 = omCurrentObj->objId;
    sp18 = arg0 * 4;
    temp_f0 = func_800F951C(D_800E5F90[temp_v0], D_800E6BD0[temp_v0], D_800E5F90[arg0], D_800E6BD0[arg0]);
    var_f2 = temp_f0;
    if (temp_f0 == 9999.0f) {
        temp_f0_2 = gEntitiesNextPosXArray[omCurrentObj->objId] - gEntitiesNextPosXArray[arg0];
        temp_f2 = gEntitiesNextPosZArray[omCurrentObj->objId] - gEntitiesNextPosZArray[arg0];
        var_f2 = sqrtf((temp_f0_2 * temp_f0_2) + (temp_f2 * temp_f2));
    }
    return var_f2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019DA70_ovl7.s")
#endif

void func_8019DB58_ovl7(s32 arg0, s32 arg1) {
    D_800E76C0[arg1] = D_800E76C0[arg0];
    D_800E76C0[arg0] = 0xFF;
}

s32 reqChildEneTrk(u8 arg0, u8 arg1, u8 arg2) {
    s32 track;

    track = request_track_general(0x17, 0x1E, 0x3C);
    if ((track >= 0x3C) || (track == -1)) {
        utilPrintf("reqChildEneTrk  Request Error!![enelib.cc]\n");
        func_800B1900(track);
        return track;
    } else {
        gEntityFuncListIDArray[track] = gEntityFuncListIDArray[omCurrentObj->objId];
        D_800E76C0[track] = 0xFF;
        D_800E7730[track] = arg0;
        D_800E77A0[track] = arg1;
        D_800E7880[track] = arg2;
        D_800E5F90[track] = D_800E6150[track] = D_800E5F90[omCurrentObj->objId];
        D_800E6BD0[track] = D_800E6D90[track] = D_800E6BD0[omCurrentObj->objId];
        gEntitiesNextPosXArray[track] = gEntitiesNextPosXArray[omCurrentObj->objId];
        gEntitiesPosXArray[track] = gEntitiesPosXArray[omCurrentObj->objId];
        gEntitiesNextPosYArray[track] = gEntitiesNextPosYArray[omCurrentObj->objId];
        gEntitiesPosYArray[track] = gEntitiesPosYArray[omCurrentObj->objId];
        gEntitiesNextPosZArray[track] = gEntitiesNextPosZArray[omCurrentObj->objId];
        gEntitiesPosZArray[track] = gEntitiesPosZArray[omCurrentObj->objId];
        return track;
    }
}

#ifdef MIPS_TO_C

s32 func_8019DD78_ovl7(u8 arg0, s32 arg1) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    s32 temp_a1;
    s32 temp_v0;

    temp_v0 = request_track_general(0x17, 0x1E, 0x3C);
    if ((temp_v0 >= 0x3C) || (temp_v0 == -1)) {
        func_800B1900(temp_v0 & 0xFFFF);
        return -1;
    }
    D_800E76C0[temp_v0] = 0xFF;
    D_800E7730[temp_v0] = 0;
    D_800E77A0[temp_v0] = arg0;
    D_800E7880[temp_v0] = arg1;
    temp_a1 = D_800E5F90[omCurrentObj->objId];
    D_800E6150[temp_v0] = temp_a1;
    D_800E5F90[temp_v0] = temp_a1;
    temp_f0 = D_800E6BD0[omCurrentObj->objId];
    D_800E6D90[temp_v0] = temp_f0;
    D_800E6BD0[temp_v0] = temp_f0;
    temp_f0_2 = gEntitiesNextPosXArray[omCurrentObj->objId];
    gEntitiesPosXArray[temp_v0] = temp_f0_2;
    gEntitiesNextPosXArray[temp_v0] = temp_f0_2;
    temp_f0_3 = gEntitiesNextPosYArray[omCurrentObj->objId];
    gEntitiesPosYArray[temp_v0] = temp_f0_3;
    gEntitiesNextPosYArray[temp_v0] = temp_f0_3;
    temp_f0_4 = gEntitiesNextPosZArray[omCurrentObj->objId];
    gEntitiesPosZArray[temp_v0] = temp_f0_4;
    gEntitiesNextPosZArray[temp_v0] = temp_f0_4;
    D_800E0D50[temp_v0] = omCurrentObj->objId;
    return temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019DD78_ovl7.s")
#endif

#ifdef MIPS_TO_C

s32 func_8019DF0C_ovl7(u8 arg0, s32 arg1) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    s32 temp_a1;
    s32 temp_v0;

    temp_v0 = request_track_general(0x19, 0x1E, 0x3C);
    if ((temp_v0 >= 0x3C) || (temp_v0 == -1)) {
        func_800B1900(temp_v0 & 0xFFFF);
        return -1;
    }
    D_800E76C0[temp_v0] = 0xFF;
    D_800E7730[temp_v0] = 2;
    D_800E77A0[temp_v0] = arg0;
    D_800E7880[temp_v0] = arg1;
    temp_a1 = D_800E5F90[omCurrentObj->objId];
    D_800E6150[temp_v0] = temp_a1;
    D_800E5F90[temp_v0] = temp_a1;
    temp_f0 = D_800E6BD0[omCurrentObj->objId];
    D_800E6D90[temp_v0] = temp_f0;
    D_800E6BD0[temp_v0] = temp_f0;
    temp_f0_2 = gEntitiesNextPosXArray[omCurrentObj->objId];
    gEntitiesPosXArray[temp_v0] = temp_f0_2;
    gEntitiesNextPosXArray[temp_v0] = temp_f0_2;
    temp_f0_3 = gEntitiesNextPosYArray[omCurrentObj->objId];
    gEntitiesPosYArray[temp_v0] = temp_f0_3;
    gEntitiesNextPosYArray[temp_v0] = temp_f0_3;
    temp_f0_4 = gEntitiesNextPosZArray[omCurrentObj->objId];
    gEntitiesPosZArray[temp_v0] = temp_f0_4;
    gEntitiesNextPosZArray[temp_v0] = temp_f0_4;
    D_800E0D50[temp_v0] = omCurrentObj->objId;
    return temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019DF0C_ovl7.s")
#endif

#ifdef MIPS_TO_C

s32 func_8019E0A4_ovl7(void) {
    s32 temp_v0;

    temp_v0 = func_8019DF0C_ovl7();
    if (temp_v0 != -1) {
        D_800E8E60[temp_v0] = 1;
    }
    return temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019E0A4_ovl7.s")
#endif

#ifdef MIPS_TO_C

s32 func_8019E0E8_ovl7(void) {
    s32 temp_v0;

    temp_v0 = func_8019DF0C_ovl7();
    if (temp_v0 != -1) {
        D_800E8E60[temp_v0] = 0;
    }
    return temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019E0E8_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_8019E128_ovl7(s32 *arg0) {
    Gfx *temp_s0;
    Gfx *temp_s0_10;
    Gfx *temp_s0_11;
    Gfx *temp_s0_12;
    Gfx *temp_s0_13;
    Gfx *temp_s0_14;
    Gfx *temp_s0_15;
    Gfx *temp_s0_16;
    Gfx *temp_s0_17;
    Gfx *temp_s0_18;
    Gfx *temp_s0_19;
    Gfx *temp_s0_20;
    Gfx *temp_s0_21;
    Gfx *temp_s0_22;
    Gfx *temp_s0_23;
    Gfx *temp_s0_24;
    Gfx *temp_s0_25;
    Gfx *temp_s0_26;
    Gfx *temp_s0_27;
    Gfx *temp_s0_28;
    Gfx *temp_s0_29;
    Gfx *temp_s0_2;
    Gfx *temp_s0_30;
    Gfx *temp_s0_31;
    Gfx *temp_s0_32;
    Gfx *temp_s0_3;
    Gfx *temp_s0_4;
    Gfx *temp_s0_5;
    Gfx *temp_s0_6;
    Gfx *temp_s0_7;
    Gfx *temp_s0_8;
    Gfx *temp_s0_9;
    Gfx *temp_s2;
    Gfx *temp_s2_10;
    Gfx *temp_s2_11;
    Gfx *temp_s2_12;
    Gfx *temp_s2_2;
    Gfx *temp_s2_3;
    Gfx *temp_s2_4;
    Gfx *temp_s2_5;
    Gfx *temp_s2_6;
    Gfx *temp_s2_7;
    Gfx *temp_s2_8;
    Gfx *temp_s2_9;
    Gfx *var_s2;
    s32 temp_v0;

    if (!(D_800DD8D0[*arg0] & 0x40)) {
        temp_v0 = func_800AB0F4();
        switch (temp_v0) {
            case 19:
                temp_s0 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_s0 + 8;
                temp_s0->words.w0 = 0xDB060010;
                temp_s0->words.w1 = gSegment4StartArray[*arg0];
                func_800AB120(arg0, 0xDB060010, gSegment4StartArray);
                temp_s0_2 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_s0_2 + 8;
                temp_s0_2->words.w1 = 0x18;
                temp_s0_2->words.w0 = 0xDB020000;
                temp_s0_3 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_s0_3 + 8;
                temp_s0_3->words.w1 = &D_800BE550;
                temp_s0_3->words.w0 = 0xDC08060A;
                temp_s0_4 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_s0_4 + 8;
                temp_s0_4->words.w1 = &D_800BE548;
                temp_s0_4->words.w0 = 0xDC08090A;
                return;
            case 21:
                temp_s0_5 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_s0_5 + 8;
                temp_s0_5->words.w0 = 0xDB060010;
                temp_s0_5->words.w1 = gSegment4StartArray[*arg0];
                func_800AB1F0(arg0, 0xDB060010, gSegment4StartArray);
                temp_s0_6 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_s0_6 + 8;
                temp_s0_6->words.w1 = 0x18;
                temp_s0_6->words.w0 = 0xDB020000;
                temp_s0_7 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_s0_7 + 8;
                temp_s0_7->words.w1 = &D_800BE550;
                temp_s0_7->words.w0 = 0xDC08060A;
                temp_s0_8 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_s0_8 + 8;
                temp_s0_8->words.w1 = &D_800BE548;
                temp_s0_8->words.w0 = 0xDC08090A;
                return;
            case 23:
            case 25:
                temp_s0_9 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_s0_9 + 8;
                temp_s0_9->words.w0 = 0xDB060010;
                temp_s0_9->words.w1 = gSegment4StartArray[*arg0];
                func_800143A4(arg0, 0xDB060010, gSegment4StartArray);
                temp_s0_10 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_s0_10 + 8;
                temp_s0_10->words.w1 = 0x18;
                temp_s0_10->words.w0 = 0xDB020000;
                temp_s0_11 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_s0_11 + 8;
                temp_s0_11->words.w1 = &D_800BE550;
                temp_s0_11->words.w0 = 0xDC08060A;
                temp_s0_12 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_s0_12 + 8;
                temp_s0_12->words.w1 = &D_800BE548;
                temp_s0_12->words.w0 = 0xDC08090A;
                return;
            case 27:
            case 29:
                temp_s0_13 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_s0_13 + 8;
                temp_s0_13->words.w0 = 0xDB060010;
                temp_s0_13->words.w1 = gSegment4StartArray[*arg0];
                func_8001585C(arg0, 0xDB060010, gSegment4StartArray);
                temp_s0_14 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_s0_14 + 8;
                temp_s0_14->words.w1 = 0x18;
                temp_s0_14->words.w0 = 0xDB020000;
                temp_s0_15 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_s0_15 + 8;
                temp_s0_15->words.w1 = &D_800BE550;
                temp_s0_15->words.w0 = 0xDC08060A;
                temp_s0_16 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_s0_16 + 8;
                temp_s0_16->words.w1 = &D_800BE548;
                temp_s0_16->words.w0 = 0xDC08090A;
                return;
            case 20:
                temp_s0_17 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_s0_17 + 8;
                temp_s0_17->words.w0 = 0xDB060010;
                temp_s0_17->words.w1 = gSegment4StartArray[*arg0];
                temp_s2 = gDisplayListHeads[1];
                gDisplayListHeads[1] = temp_s2 + 8;
                temp_s2->words.w0 = 0xDB060010;
                temp_s2->words.w1 = gSegment4StartArray[*arg0];
                func_800AB174(arg0, 0xDB060010, gSegment4StartArray);
                temp_s0_18 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_s0_18 + 8;
                temp_s0_18->words.w1 = 0x18;
                temp_s0_18->words.w0 = 0xDB020000;
                temp_s0_19 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_s0_19 + 8;
                temp_s0_19->words.w1 = &D_800BE550;
                temp_s0_19->words.w0 = 0xDC08060A;
                temp_s0_20 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_s0_20 + 8;
                temp_s0_20->words.w1 = &D_800BE548;
                temp_s0_20->words.w0 = 0xDC08090A;
                temp_s2_2 = gDisplayListHeads[1];
                gDisplayListHeads[1] = temp_s2_2 + 8;
                temp_s2_2->words.w1 = 0x18;
                temp_s2_2->words.w0 = 0xDB020000;
                temp_s2_3 = gDisplayListHeads[1];
                gDisplayListHeads[1] = temp_s2_3 + 8;
                temp_s2_3->words.w1 = &D_800BE550;
                temp_s2_3->words.w0 = 0xDC08060A;
                var_s2 = gDisplayListHeads[1];
                gDisplayListHeads[1] = var_s2 + 8;
                var_s2->words.w1 = &D_800BE548;
block_11:
                var_s2->words.w0 = 0xDC08090A;
                break;
            case 22:
                temp_s0_21 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_s0_21 + 8;
                temp_s0_21->words.w0 = 0xDB060010;
                temp_s0_21->words.w1 = gSegment4StartArray[*arg0];
                temp_s2_4 = gDisplayListHeads[1];
                gDisplayListHeads[1] = temp_s2_4 + 8;
                temp_s2_4->words.w0 = 0xDB060010;
                temp_s2_4->words.w1 = gSegment4StartArray[*arg0];
                func_800AB244(arg0, 0xDB060010, gSegment4StartArray);
                temp_s0_22 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_s0_22 + 8;
                temp_s0_22->words.w1 = 0x18;
                temp_s0_22->words.w0 = 0xDB020000;
                temp_s0_23 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_s0_23 + 8;
                temp_s0_23->words.w1 = &D_800BE550;
                temp_s0_23->words.w0 = 0xDC08060A;
                temp_s0_24 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_s0_24 + 8;
                temp_s0_24->words.w1 = &D_800BE548;
                temp_s0_24->words.w0 = 0xDC08090A;
                temp_s2_5 = gDisplayListHeads[1];
                gDisplayListHeads[1] = temp_s2_5 + 8;
                temp_s2_5->words.w1 = 0x18;
                temp_s2_5->words.w0 = 0xDB020000;
                temp_s2_6 = gDisplayListHeads[1];
                gDisplayListHeads[1] = temp_s2_6 + 8;
                temp_s2_6->words.w1 = &D_800BE550;
                temp_s2_6->words.w0 = 0xDC08060A;
                var_s2 = gDisplayListHeads[1];
                gDisplayListHeads[1] = var_s2 + 8;
                var_s2->words.w1 = &D_800BE548;
                goto block_11;
            case 24:
            case 26:
                temp_s0_25 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_s0_25 + 8;
                temp_s0_25->words.w0 = 0xDB060010;
                temp_s0_25->words.w1 = gSegment4StartArray[*arg0];
                temp_s2_7 = gDisplayListHeads[1];
                gDisplayListHeads[1] = temp_s2_7 + 8;
                temp_s2_7->words.w0 = 0xDB060010;
                temp_s2_7->words.w1 = gSegment4StartArray[*arg0];
                func_80014AD4(arg0, 0xDB060010, gSegment4StartArray);
                temp_s0_26 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_s0_26 + 8;
                temp_s0_26->words.w1 = 0x18;
                temp_s0_26->words.w0 = 0xDB020000;
                temp_s0_27 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_s0_27 + 8;
                temp_s0_27->words.w1 = &D_800BE550;
                temp_s0_27->words.w0 = 0xDC08060A;
                temp_s0_28 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_s0_28 + 8;
                temp_s0_28->words.w1 = &D_800BE548;
                temp_s0_28->words.w0 = 0xDC08090A;
                temp_s2_8 = gDisplayListHeads[1];
                gDisplayListHeads[1] = temp_s2_8 + 8;
                temp_s2_8->words.w1 = 0x18;
                temp_s2_8->words.w0 = 0xDB020000;
                temp_s2_9 = gDisplayListHeads[1];
                gDisplayListHeads[1] = temp_s2_9 + 8;
                temp_s2_9->words.w1 = &D_800BE550;
                temp_s2_9->words.w0 = 0xDC08060A;
                var_s2 = gDisplayListHeads[1];
                gDisplayListHeads[1] = var_s2 + 8;
                var_s2->words.w1 = &D_800BE548;
                goto block_11;
            case 28:
            case 30:
                temp_s0_29 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_s0_29 + 8;
                temp_s0_29->words.w0 = 0xDB060010;
                temp_s0_29->words.w1 = gSegment4StartArray[*arg0];
                temp_s2_10 = gDisplayListHeads[1];
                gDisplayListHeads[1] = temp_s2_10 + 8;
                temp_s2_10->words.w0 = 0xDB060010;
                temp_s2_10->words.w1 = gSegment4StartArray[*arg0];
                func_80015BCC(arg0, 0xDB060010, gSegment4StartArray);
                temp_s0_30 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_s0_30 + 8;
                temp_s0_30->words.w1 = 0x18;
                temp_s0_30->words.w0 = 0xDB020000;
                temp_s0_31 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_s0_31 + 8;
                temp_s0_31->words.w1 = &D_800BE550;
                temp_s0_31->words.w0 = 0xDC08060A;
                temp_s0_32 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_s0_32 + 8;
                temp_s0_32->words.w1 = &D_800BE548;
                temp_s0_32->words.w0 = 0xDC08090A;
                temp_s2_11 = gDisplayListHeads[1];
                gDisplayListHeads[1] = temp_s2_11 + 8;
                temp_s2_11->words.w1 = 0x18;
                temp_s2_11->words.w0 = 0xDB020000;
                temp_s2_12 = gDisplayListHeads[1];
                gDisplayListHeads[1] = temp_s2_12 + 8;
                temp_s2_12->words.w1 = &D_800BE550;
                temp_s2_12->words.w0 = 0xDC08060A;
                var_s2 = gDisplayListHeads[1];
                gDisplayListHeads[1] = var_s2 + 8;
                var_s2->words.w1 = &D_800BE548;
                goto block_11;
        }
    } else {
    default:
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019E128_ovl7.s")
#endif

// either regalloc or tmp needs to be set elsewhere
#ifdef NON_MATCHING
void func_8019E860_ovl7(void) {
    Gfx **tmp;

    gSPNumLights(gDisplayListHeads[0]++, 1);
    gSPLight(gDisplayListHeads[0]++, &D_801C27D8_ovl7, 1);
    gSPLight(gDisplayListHeads[0]++, &D_801C27D0_ovl7, 2);


    gSPNumLights(gDisplayListHeads[1]++, 1);
    gSPLight(gDisplayListHeads[1]++, &D_801C27D8_ovl7, 1);

    tmp = gDisplayListHeads[1];
    gSPLight(gDisplayListHeads[1]++, &D_801C27D0_ovl7, 2);
    func_8019E128_ovl7(tmp);

    gSPNumLights(gDisplayListHeads[0]++, 1);
    gSPLight(gDisplayListHeads[0]++, &D_800BE550, 1);
    gSPLight(gDisplayListHeads[0]++, &D_800BE548, 2);

    gSPNumLights(gDisplayListHeads[1]++, 1);
    gSPLight(gDisplayListHeads[1]++, &D_800BE550, 1);
    gSPLight(gDisplayListHeads[1]++, &D_800BE548, 2);

}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019E860_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_8019E9F0_ovl7(void) {
    s32 sp1C;
    Gfx *temp_a1;
    Gfx *temp_a1_2;
    Gfx *temp_a1_3;
    Gfx *temp_a1_4;
    Gfx *temp_a1_5;
    Gfx *temp_a1_6;
    Gfx *temp_v1;
    Gfx *temp_v1_2;
    Gfx *temp_v1_3;
    Gfx *temp_v1_4;
    Gfx *temp_v1_5;
    Gfx *temp_v1_6;
    s32 temp_t9;
    void *temp_t0;
    void *temp_t1;

    temp_t9 = D_800E77A0[D_800D7090] - 0x24;
    sp1C = temp_t9;
    if ((temp_t9 >= 0) && (temp_t9 < 9)) {
        temp_v1 = gDisplayListHeads->unk0;
        gDisplayListHeads->unk0 = temp_v1 + 8;
        temp_v1->words.w1 = 0x18;
        temp_v1->words.w0 = 0xDB020000;
        temp_v1_2 = gDisplayListHeads->unk0;
        gDisplayListHeads->unk0 = temp_v1_2 + 8;
        temp_v1_2->words.w0 = 0xDC08060A;
        temp_t0 = (sp1C * 0x18) + &D_801C27E8_ovl7;
        temp_t1 = temp_t0 + 8;
        temp_v1_2->words.w1 = temp_t1;
        temp_v1_3 = gDisplayListHeads->unk0;
        gDisplayListHeads->unk0 = temp_v1_3 + 8;
        temp_v1_3->words.w1 = temp_t0;
        temp_v1_3->words.w0 = 0xDC08090A;
        temp_a1 = gDisplayListHeads[1];
        gDisplayListHeads[1] = temp_a1 + 8;
        temp_a1->words.w1 = 0x18;
        temp_a1->words.w0 = 0xDB020000;
        temp_a1_2 = gDisplayListHeads[1];
        gDisplayListHeads[1] = temp_a1_2 + 8;
        temp_a1_2->words.w1 = temp_t1;
        temp_a1_2->words.w0 = 0xDC08060A;
        temp_a1_3 = gDisplayListHeads[1];
        gDisplayListHeads[1] = temp_a1_3 + 8;
        temp_a1_3->words.w1 = temp_t0;
        temp_a1_3->words.w0 = 0xDC08090A;
        func_8019E128_ovl7(temp_a1_3);
        temp_v1_4 = gDisplayListHeads->unk0;
        gDisplayListHeads->unk0 = temp_v1_4 + 8;
        temp_v1_4->words.w1 = 0x18;
        temp_v1_4->words.w0 = 0xDB020000;
        temp_v1_5 = gDisplayListHeads->unk0;
        gDisplayListHeads->unk0 = temp_v1_5 + 8;
        temp_v1_5->words.w0 = 0xDC08060A;
        temp_v1_5->words.w1 = &D_800BE550;
        temp_v1_6 = gDisplayListHeads->unk0;
        gDisplayListHeads->unk0 = temp_v1_6 + 8;
        temp_v1_6->words.w0 = 0xDC08090A;
        temp_v1_6->words.w1 = &D_800BE548;
        temp_a1_4 = gDisplayListHeads[1];
        gDisplayListHeads[1] = temp_a1_4 + 8;
        temp_a1_4->words.w1 = 0x18;
        temp_a1_4->words.w0 = 0xDB020000;
        temp_a1_5 = gDisplayListHeads[1];
        gDisplayListHeads[1] = temp_a1_5 + 8;
        temp_a1_5->words.w1 = &D_800BE550;
        temp_a1_5->words.w0 = 0xDC08060A;
        temp_a1_6 = gDisplayListHeads[1];
        gDisplayListHeads[1] = temp_a1_6 + 8;
        temp_a1_6->words.w1 = &D_800BE548;
        temp_a1_6->words.w0 = 0xDC08090A;
        return;
    }
    func_8019E128_ovl7();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019E9F0_ovl7.s")
#endif

void func_8019EBCC_ovl7(Unused GObj *gobj) {
    UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    if (ent->unk3B == -1) {
        ent->unk3B = gEntityFuncListIDArray[omCurrentObj->objId];
    }
}

#ifdef MIPS_TO_C
void func_8019EC14_ovl7(s32 arg0) {
    s8 temp_a0;
    struct UnkStruct800E1B50 *temp_v0;
    u32 temp_v1;

    temp_v1 = omCurrentObj->objId;
    temp_v0 = D_800E1B50[temp_v1];
    temp_a0 = temp_v0->unk3B;
    if (temp_a0 != -1) {
        gEntityFuncListIDArray[temp_v1] = temp_a0;
        temp_v0->unk3B = -1;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019EC14_ovl7.s")
#endif

#ifdef MIPS_TO_C
void func_8019EC5C_ovl7(void *arg0) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f18;
    f32 var_f14;
    f32 var_f2;
    s32 temp_v0;

    temp_v0 = arg0->unk2C;
    temp_f0 = temp_v0 + 1;
    temp_f12 = arg0->unk10 - arg0->unk4;
    temp_f16 = temp_v0;
    arg0->unk18 = (arg0->unkC - arg0->unk0) / temp_f16;
    arg0->unk1C = (arg0->unk14 - arg0->unk8) / temp_f16;
    temp_f18 = -arg0->unk24 * (temp_f0 * 0.5f);
    if (temp_f12 < 0.0f) {
        var_f2 = -temp_f12;
    } else {
        var_f2 = temp_f12;
    }
    temp_f16_2 = (var_f2 / temp_f0) - temp_f18;
    if (temp_f12 <= 0.0f) {
        var_f14 = temp_f16_2 - temp_f18;
    } else {
        var_f14 = temp_f16_2 + (2.0f * temp_f18);
        if (var_f14 > 0.0f) {
            var_f14 = -var_f14;
        }
    }
    arg0->unk20 = -var_f14;
    if (temp_f12 > 0.0f) {
        arg0->unk24 = arg0->unk24;
        return;
    }
    arg0->unk24 = 2.0f * arg0->unk24;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019EC5C_ovl7.s")
#endif

#ifdef MIPS_TO_C
void func_8019ED58_ovl7(void *arg0) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f18;
    f32 temp_f2;
    f32 var_f14;
    f32 var_f16;
    s32 temp_v0;
    u32 temp_a1;
    u32 temp_a1_2;
    u32 temp_a1_3;

    temp_v0 = arg0->unk2C;
    temp_a1 = omCurrentObj->objId;
    temp_f0 = temp_v0 + 1;
    D_800E3050[temp_a1] = (*gEntitiesNextPosXArray - gEntitiesNextPosXArray[temp_a1]) / temp_v0;
    temp_a1_2 = omCurrentObj->objId;
    D_800E33D0[temp_a1_2] = (*gEntitiesNextPosZArray - gEntitiesNextPosZArray[temp_a1_2]) / arg0->unk2C;
    temp_a1_3 = omCurrentObj->objId;
    temp_f2 = (*gEntitiesNextPosYArray + 20.0f) - gEntitiesNextPosYArray[temp_a1_3];
    temp_f12 = -arg0->unk24 * (temp_f0 * 0.5f);
    if (temp_f2 < 0.0f) {
        var_f14 = -temp_f2;
    } else {
        var_f14 = temp_f2;
    }
    temp_f18 = (var_f14 / temp_f0) - temp_f12;
    if (temp_f2 <= 0.0f) {
        var_f16 = temp_f18 - temp_f12;
    } else {
        var_f16 = temp_f18 + (2.0f * temp_f12);
        if (var_f16 > 0.0f) {
            var_f16 = -var_f16;
        }
    }
    D_800E3210[temp_a1_3] = -var_f16;
    if (temp_f2 > 0.0f) {
        D_800E3750[omCurrentObj->objId] = arg0->unk24;
        return;
    }
    D_800E3750[omCurrentObj->objId] = 2.0f * arg0->unk24;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019ED58_ovl7.s")
#endif

#ifdef MIPS_TO_C
void func_8019EEE4_ovl7(void *arg0) {
    f32 temp_f18;
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 var_f0;
    f32 var_f12;
    f32 var_f12_2;
    f32 var_f14;
    f32 var_f16;
    s32 temp_v0;

    temp_v0 = arg0->unk2C;
    if (temp_v0 < 2) {
        var_f0 = 2.0f;
        arg0->unk2C = 2;
    } else {
        var_f0 = temp_v0;
    }
    temp_f2 = arg0->unk28;
    if (temp_f2 < 0.0f) {
        var_f12 = -temp_f2;
    } else {
        var_f12 = temp_f2;
    }
    var_f14 = 0.0f;
    temp_f2_2 = var_f12 / (var_f0 * var_f0);
    var_f16 = 1.0f;
    arg0->unk24 = 0.0f;
    if (var_f0 >= 1.0f) {
        do {
            temp_f20 = var_f16 + 1.0f;
            var_f14 += var_f16;
            temp_f18 = var_f16 * var_f16 * temp_f2_2;
            temp_f22 = temp_f2_2 * (temp_f20 * temp_f20);
            if (temp_f18 < temp_f22) {
                var_f12_2 = -(temp_f18 - temp_f22);
            } else {
                var_f12_2 = temp_f18 - temp_f22;
            }
            var_f16 = temp_f20;
            arg0->unk24 = arg0->unk24 + var_f12_2;
        } while (temp_f20 <= var_f0);
    }
    arg0->unk24 = arg0->unk24 / var_f14;
    arg0->unk20 = (arg0->unk28 / var_f0) + (arg0->unk24 * (var_f0 * 0.5f));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019EEE4_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_8019F000_ovl7(void *arg0, void *arg1, s32 arg2, f32 arg3) {
    s32 sp4C;
    f32 sp44;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    f32 sp24;
    f32 sp20;

    sp20 = gEntitiesNextPosXArray[omCurrentObj->objId];
    sp24 = gEntitiesNextPosYArray[omCurrentObj->objId];
    sp28 = gEntitiesNextPosZArray[omCurrentObj->objId];
    sp2C.unk0 = arg0->unk8;
    sp2C.unk4 = arg0->unkC;
    sp2C.unk8 = arg0->unk10;
    sp2C += arg1->unk0;
    sp30 += arg1->unk4;
    sp4C = arg2;
    sp44 = arg3;
    sp34 += arg1->unk8;
    func_8019EC5C_ovl7(arg3, &sp20);
    D_800E3050[omCurrentObj->objId] = sp38;
    D_800E33D0[omCurrentObj->objId] = sp3C;
    D_800E3210[omCurrentObj->objId] = sp40;
    D_800E3750[omCurrentObj->objId] = sp44;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019F000_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_8019F130_ovl7(void) {
    u16 temp_v0_2;
    u32 *temp_v1;
    u32 temp_a1;
    u32 temp_v0;
    void *temp_t0;

    temp_v0 = omCurrentObj->objId;
    temp_v1 = &D_800E7CE0[temp_v0];
    temp_a1 = *temp_v1;
    temp_t0 = *(&D_800E1B50 + (temp_v0 * 4));
    *temp_v1 = temp_a1 - 1;
    if (temp_a1 <= 0) {
        D_800E7CE0[omCurrentObj->objId] = 0;
    }
    if ((temp_t0->unk3D != 0) && ((temp_v0_2 = D_800E77A0[omCurrentObj->objId], ((temp_v0_2 < 0x4E) != 0)) || (temp_v0_2 >= 0x5D))) {
        if (temp_t0->unk6C == 2) {
            func_801A3AE0_ovl7(temp_a1, omCurrentObj);
            return;
        }
        func_801A3E0C_ovl7(temp_a1, omCurrentObj);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019F130_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_8019F1EC_ovl7(void) {
    if (gKirbyHp > 0.0f) {
        D_800BE544 = -9999;
        auSetBGMVolumeSmooth(0, 0, 0x1E);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/enelib/func_8019F1EC_ovl7.s")
#endif

s32 func_8019F234_ovl7(s32 track) {
    if ((D_800E7B20[track] == 0.0f) || (D_800E8E60[track] == 1) || ((D_800DE350[track]->flags & GOBJ_FLAGS_HIDDEN))) {
        return 1;
    }
    switch (D_800DD710[track]) {
        case 23:
            switch ((u32)D_800E77A0[track]) {
                case 0x4:
                case 0x5:
                case 0xC:
                case 0x10:
                case 0x11:
                case 0x13:
                case 0x17:
                case 0x18:
                case 0x3F:
                case 0x42:
                case 0x44:
                case 0x49:
                case 0x4B:
                case 0x4C:
                case 0x62:
                    return 1;
                default:
                    return 0;
            }
            break;
        case 26:
            switch ((u32)D_800E77A0[track]) {
                case 1:
                case 6:
                case 7:
                case 11:
                case 19:
                case 26:
                case 27:
                case 28:
                case 37:
                case 45:
                    return 0;
                default:
                    return 1;
            }
            return 1;
        case 24:
            return 0;
        case 25:
            return 1;
        default:
            utilPrintf("serach enemy list error. JN number:%d [enelib.cc]\n", D_800DD710[track]);
            return 1;
    }
}
