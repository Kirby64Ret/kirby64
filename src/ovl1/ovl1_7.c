#include "common.h"
#include "ovl1_3.h"
#include "ovl1/ovl1_6.h"
#include "GObj.h"
#include "unk_structs/D_800DE350.h"
#include "main/lbvector.h"
#include "main/lbmatrix.h"
#include "buffers.h"
#include "ovl2/ovl2_8.h"
#include "unk_structs/D_800D79D8.h"

// wherever ovl0_3 or code_CA90 is
extern void func_8000BEF4(GObj *, f32);
extern void func_8000BFA0(GObj *, f32);
extern void func_8000C17C(GObj *, GObj *, f32);
extern void func_8000C218(GObj *, GObj *, f32);

extern u32 gNewEntityStackSize;

// in this file
s32 func_800B3234(f32 arg0, f32 arg1, f32 arg2);
s32 func_800B1E08(u32 bit, GObj *gobj, s32 track);

void func_800AECC0(f32 arg0) {
    if (arg0 != D_800E09D0[omCurrentObj->objId]) {
        D_800E09D0[omCurrentObj->objId] = arg0;
        func_8000BEF4(omCurrentObj, D_800E09D0[omCurrentObj->objId]);
    }
}

void func_800AED20(f32 arg0) {
    if (arg0 != D_800E0B90[omCurrentObj->objId]) {
        D_800E0B90[omCurrentObj->objId] = arg0;
        func_8000BFA0(omCurrentObj, D_800E0B90[omCurrentObj->objId]);
    }
}

#ifdef NON_MATCHING
void func_800AED80(f32 arg0, s32 track) {
    if (D_800E09D0[track] != arg0) {
        D_800E09D0[track] = arg0;
        func_8000BEF4(D_800DE350[track], arg0);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800AED80.s")
#endif

#ifdef MIPS_TO_C

void func_800AEDD0(f32 arg0, s32 arg1) {
    f32 *temp_v1;

    temp_v1 = &D_800E0B90[arg1];
    if (arg0 != *temp_v1) {
        *temp_v1 = arg0;
        func_8000BFA0(*(&D_800DE350 + (arg1 * 4)), arg0);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800AEDD0.s")
#endif

void func_800AEE20(GObj *arg0, f32 arg1) {
    D_800DF310[omCurrentObj->objId] = NULL;
    D_800DD8D0[omCurrentObj->objId] &= 0x3FFFFFFF;
    func_8000C17C(omCurrentObj, arg0, arg1);
    if (arg1 != 0.0f) {
        func_8000E324(omCurrentObj);
    }
}

void func_800AEEB4(GObj *arg0, f32 arg1) {
    func_8000C218(omCurrentObj, arg0, arg1);
    if (arg1 != 0.0f) {
        func_8000E324(omCurrentObj);
    }
}

void func_800AEF0C(GObj *arg0, f32 arg1, GObj *arg2) {
    D_800DF310[arg2->objId] = NULL;
    D_800DD8D0[arg2->objId] &= 0x3FFFFFFF;
    func_8000C17C(arg2, arg0, arg1);
    if (arg1 != 0.0f) {
        func_8000E324(arg2);
    }
}

void func_800AEFA4(GObj *arg0, f32 arg1, GObj *arg2) {
    func_8000C218(arg2, arg0, arg1);
    if (arg1 != 0.0f) {
        func_8000E324(arg2);
    }
}

#ifdef MIPS_TO_C
void func_800AEFFC(u16 arg0) {
    s32 *temp_v0;
    s32 temp_v1;
    s32 var_s0;

    var_s0 = arg0 & 0xFFFF;
loop_1:
    temp_v0 = &;
    temp_v1 = *temp_v0;
    while (!(D_800DD8D0[omCurrentObj->objId] & 0xC0000000)) {
block_3:
        ohSleep(1);
        goto loop_1;
    }
    var_s0 = (var_s0 - 1) & 0xFFFF;
    *temp_v0 = temp_v1 & 0x3FFFFFFF;
    if (var_s0 != 0) {
        goto block_3;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800AEFFC.s")
#endif

void func_800AF09C(u16 arg0) {
    while (1) {
        if (func_800AF0F4() != 0 || --arg0 != 0) {
            ohSleep(1);
            continue;
        }
        break;
    }
}

#ifdef MIPS_TO_C
s32 func_800AF0F4(void) {
    struct UnkStruct8004A7C4_3C_80 *sp20;
    f32 temp_f0;
    s32 *temp_v0_3;
    s32 *temp_v0_4;
    s32 temp_v1;
    struct UnkStruct8004A7C4_3C *temp_v0_2;
    struct UnkStruct8004A7C4_3C *var_s0;
    struct UnkStruct8004A7C4_3C_80 *temp_v0;
    u32 temp_a0;

    var_s0 = omCurrentObj->unk3C;
    if (var_s0 != NULL) {
loop_1:
        temp_v0 = var_s0->unk80;
        if (temp_v0 != NULL) {
            sp20 = temp_v0;
        } else {
            temp_v0_2 = func_8000BE90(var_s0);
            var_s0 = temp_v0_2;
            if (temp_v0_2 != NULL) {
                goto loop_1;
            }
        }
    }
    temp_f0 = sp20->unk98;
    if ((temp_f0 == -3.4028235e38f) || (temp_f0 == -1.1342745e38f)) {
        return 0;
    }
    if (temp_f0 == -1.7014117e38f) {
        temp_v0_3 = &D_800DD8D0[omCurrentObj->objId];
        *temp_v0_3 |= 0x20000000;
        goto block_13;
    }
    temp_a0 = omCurrentObj->objId;
    if (sp20->unkA0 < D_800E0B90[temp_a0]) {
        temp_v0_4 = &D_800DD8D0[temp_a0];
        temp_v1 = *temp_v0_4;
        if (temp_v1 & 0x20000000) {
            *temp_v0_4 = temp_v1 & 0xDFFFFFFF;
            goto block_13;
        }
        return 0;
    }
block_13:
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800AF0F4.s")
#endif

u32 func_800AF230(void) {
    if ((((u32)D_800DD8D0[omCurrentObj->objId]) >> 0x1E) != 0) {
        D_800DD8D0[omCurrentObj->objId] &= 0x3FFFFFFF;
        return 1;
    }
    return 0;
}

#ifdef MIPS_TO_C
void func_800AF27C(void) {
    s32 *var_v0;
    s32 var_v1;

    var_v0 = &D_800DD8D0[omCurrentObj->objId];
    var_v1 = *var_v0;
    if ((var_v1 >> 0x1E) == 0) {
        do {
            ohSleep(1);
            var_v0 = &D_800DD8D0[omCurrentObj->objId];
            var_v1 = *var_v0;
        } while (!(var_v1 & 0xC0000000));
    }
    *var_v0 = var_v1 & 0x3FFFFFFF;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800AF27C.s")
#endif

void func_800AF314(void) {
    struct UnkStruct8004A7C4_3C *tmp = omCurrentObj->data;

    while (tmp != 0) {
        func_8000984C(tmp);
        tmp = func_8000BE90(tmp);
    }
    D_800DF310[omCurrentObj->objId] = 0;
    D_800DD8D0[omCurrentObj->objId] = D_800DD8D0[omCurrentObj->objId] & 0x3FFFFFFF;
}

#ifdef MIPS_TO_C

void func_800AF3A0(void) {
    struct UnkStruct8004A7C4_3C *temp_v0;
    struct UnkStruct8004A7C4_3C *var_s1;
    struct UnkStruct8004A7C4_3C_80 *var_s0;

    var_s1 = omCurrentObj->unk3C;
    if (var_s1 != NULL) {
        do {
            var_s0 = var_s1->unk80;
            if (var_s0 != NULL) {
                do {
                    func_80009918(var_s0);
                    var_s0 = var_s0->unk0;
                } while (var_s0 != NULL);
            }
            temp_v0 = func_8000BE90(var_s1);
            var_s1 = temp_v0;
        } while (temp_v0 != NULL);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800AF3A0.s")
#endif

#ifdef MIPS_TO_C

void func_800AF408(void) {
    GObj *temp_v1;
    s32 *temp_v0_2;
    struct UnkStruct8004A7C4_3C *temp_v0;
    struct UnkStruct8004A7C4_3C *var_s1;
    struct UnkStruct8004A7C4_3C_80 *var_s0;

    temp_v1 = omCurrentObj;
    var_s1 = temp_v1->unk3C;
    if (var_s1 != NULL) {
        do {
            func_8000984C(var_s1);
            var_s0 = var_s1->unk80;
            if (var_s0 != NULL) {
                do {
                    func_80009918(var_s0);
                    var_s0 = var_s0->unk0;
                } while (var_s0 != NULL);
            }
            temp_v0 = func_8000BE90(var_s1);
            var_s1 = temp_v0;
        } while (temp_v0 != NULL);
    }
    D_800DF310[temp_v1->objId] = NULL;
    temp_v0_2 = &D_800DD8D0[temp_v1->objId];
    *temp_v0_2 &= 0x3FFFFFFF;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800AF408.s")
#endif

#ifdef MIPS_TO_C

void func_800AF4BC(GObj *arg0, s32 arg1, s32 arg2) {
    s32 sp30;
    GObj *temp_s0;
    f32 temp_f0;
    f32 temp_f0_2;

    temp_s0 = omCurrentObj;
    sp30 = 0;
    if (temp_s0->kind == 1) {
        sp30 = 1;
        func_8000BBE0(0);
    }
    if (arg1 == 0) {
        func_8000F980(temp_s0, arg0, arg2, 0x1C, 0, 0);
        temp_f0 = D_800E09D0[omCurrentObj->objId];
        if (temp_s0->unk3C->unk78 != temp_f0) {
            func_8000BEF4(omCurrentObj, temp_f0);
        }
    } else {
        func_8000FB10(temp_s0, arg0, arg1, arg2, 0x1C, 0, 0);
        temp_f0_2 = D_800E09D0[omCurrentObj->objId];
        if (temp_s0->unk3C->unk78 != temp_f0_2) {
            func_8000BEF4(omCurrentObj, temp_f0_2);
            func_8000BFA0(omCurrentObj, D_800E0B90[omCurrentObj->objId]);
        }
    }
    if (sp30 != 0) {
        func_800AFA88(omCurrentObj);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800AF4BC.s")
#endif

#ifdef MIPS_TO_C

void func_800AF618(GObj *arg0, s32 **arg1, s32 *arg2) {
    s32 sp30;
    s32 sp2C;
    GObj *temp_s0;
    GObj *temp_s0_2;
    f32 temp_f0;
    s32 **var_s3;
    s32 *temp_v0_3;
    s32 *var_s0;
    s32 temp_v0;
    s32 var_s1;
    struct UnkStruct8004A7C4_3C *temp_v0_2;
    struct UnkStruct8004A7C4_3C *var_s2;

    temp_s0 = omCurrentObj;
    sp2C = 0;
    sp30 = 0;
    var_s3 = arg1;
    if (temp_s0->kind == 1) {
        sp2C = 1;
        func_8000BBE0(0);
    }
    temp_v0 = omGObjAddDObj(temp_s0, arg0);
    *arg2 = temp_v0;
    func_8000F448(temp_v0);
    temp_s0_2 = omCurrentObj;
    var_s2 = temp_s0_2->unk3C;
    if (var_s3 != NULL) {
        sp30 = 1;
    }
    if (var_s2 != NULL) {
        do {
            if (var_s3 != NULL) {
                temp_v0_3 = *var_s3;
                if (temp_v0_3 != NULL) {
                    var_s1 = *temp_v0_3;
                    var_s0 = temp_v0_3;
                    if (var_s1 != 0) {
                        do {
                            func_80009A44(var_s2, var_s1);
                            var_s1 = var_s0->unk4;
                            var_s0 += 4;
                        } while (var_s1 != 0);
                    }
                }
                var_s3 += 4;
            }
            temp_v0_2 = func_8000BE90(var_s2);
            var_s2 = temp_v0_2;
        } while (temp_v0_2 != NULL);
    }
    if (sp2C != 0) {
        func_800AFA88(temp_s0_2);
    }
    temp_f0 = D_800E09D0[temp_s0_2->objId];
    if (temp_s0_2->unk3C->unk78 != temp_f0) {
        func_8000BEF4(temp_s0_2, temp_f0);
        if (sp30 != 0) {
            func_8000BFA0(omCurrentObj, D_800E0B90[omCurrentObj->objId]);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800AF618.s")
#endif

#ifdef MIPS_TO_C
void func_800AF7A0(u32 arg0) {
    if (arg0 == 0x1869F) {
        arg0 = gSegment4StartArray[omCurrentObj->objId]->unk8;
    }
    omCurrentObj->onDraw = D_800D4F10[arg0];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800AF7A0.s")
#endif

#ifdef MIPS_TO_C

s32 func_800AF7EC(GObj *arg0, u8 arg1, u8 arg2, u8 arg3) {
    void *temp_v0;

    temp_v0 = func_800AC954(omCurrentObj, arg3, func_800A8C40());
    if (temp_v0 == NULL) {
        return 0;
    }
    D_800E02D0[omCurrentObj->objId] = arg0;
    temp_v0->unk13 = temp_v0->unk13 | arg2;
    omLinkGObjDL(omCurrentObj, &func_800AD1A0, arg1, 0x80000000, arg1);
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800AF7EC.s")
#endif

#ifdef MIPS_TO_C

void func_800AF890(s32 arg1, s32 arg2) {
    func_800AF7EC(arg1 & 0xFF, arg2 & 0xFF, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800AF890.s")
#endif

#ifdef MIPS_TO_C

void func_800AF8C0(s32 arg1, s32 arg2) {
    func_800AF7EC(arg1 & 0xFF, arg2 & 0xFF, 1);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800AF8C0.s")
#endif

#ifdef MIPS_TO_C

void func_800AF8F0(s32 arg1, s32 arg2) {
    func_800AF7EC(arg1 & 0xFF, arg2 & 0xFF, 4);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800AF8F0.s")
#endif

#ifdef MIPS_TO_C
void func_800AF920(GObj *arg0) {
    u32 temp_v0;

    temp_v0 = omCurrentObj->unk4C;
    if (arg0 < 0) {
        temp_v0->unk13 = temp_v0->unk13 ^ 8;
        return;
    }
    if (arg0 != 0) {
        temp_v0->unk13 = temp_v0->unk13 & 0xFFF7;
        return;
    }
    temp_v0->unk13 = temp_v0->unk13 | 8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800AF920.s")
#endif

#ifdef MIPS_TO_C
void func_800AF96C(s8 arg0) {
    omCurrentObj->unk4C->unk11 = arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800AF96C.s")
#endif

#ifdef MIPS_TO_C
void func_800AF980(GObj *arg0) {
    D_800E0810[omCurrentObj->objId] = arg0;
    omCurrentObj->renderPriority = D_800E0810[omCurrentObj->objId];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800AF980.s")
#endif

#ifdef MIPS_TO_C

void func_800AF9B8(u16 track, u8 link) {
    omLinkGObjDL(omCurrentObj, D_800D4F10[track], link, D_800E0810[omCurrentObj->objId], link);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800AF9B8.s")
#endif

void curObjSleepForever(void) {
    while (1) {
        ohSleep(0x7FFFFFFF);
    }
}

#ifdef MIPS_TO_C

void func_800AFA54(GObj *arg0) {
    func_8000FD78(omCurrentObj, arg0);
    func_800AFA88(omCurrentObj);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800AFA54.s")
#endif

#ifdef MIPS_TO_C
void func_800AFA88(void *arg0) {
    arg0->unk3C->unk1C = gEntitiesNextPosXArray[omCurrentObj->objId];
    arg0->unk3C->unk20 = gEntitiesNextPosYArray[omCurrentObj->objId];
    arg0->unk3C->unk24 = gEntitiesNextPosZArray[omCurrentObj->objId];
    arg0->unk3C->unk30 = gEntitiesAngleXArray[omCurrentObj->objId];
    arg0->unk3C->unk34 = gEntitiesAngleYArray[omCurrentObj->objId];
    arg0->unk3C->unk38 = gEntitiesAngleZArray[omCurrentObj->objId];
    arg0->unk3C->unk40 = gEntitiesScaleXArray[omCurrentObj->objId];
    arg0->unk3C->flags = gEntitiesScaleYArray[omCurrentObj->objId];
    arg0->unk3C->unk48 = gEntitiesScaleZArray[omCurrentObj->objId];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800AFA88.s")
#endif

#ifdef MIPS_TO_C

void func_800AFBB4(GObj *gobj, GObj *gobj2) {
    if (gobj == 0) {
        gobj2->flags |= 1;
    } else {
        gobj2->flags &= ~1;
    }
    gobj2->unkE = D_8003DCA8 - 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800AFBB4.s")
#endif

void func_800AFBEC(u32 player, u32 music, s32 sleep) {
    play_music(player, music);
    if (sleep != 0) {
        ohSleep(sleep);
    }
}

void func_800AFC20(u32 sound, s32 sleep) {
    play_sound(sound);
    if (sleep != 0) {
        ohSleep(sleep);
    }
}

void func_800AFC54(s32 arg0, s32 sleep) {
    func_800FB914(arg0);
    if (sleep != 0) {
        ohSleep(sleep);
    }
}

void func_800AFC88(f32 x, f32 y, f32 z, s32 sleep) {
    if (x != 65535.0f) {
        gEntitiesNextPosXArray[omCurrentObj->objId] = D_800E2090[omCurrentObj->objId] = x;
    }
    if (y != 65535.0f) {
        gEntitiesNextPosYArray[omCurrentObj->objId] = D_800E2250[omCurrentObj->objId] = y;
    }
    if (z != 65535.0f) {
        gEntitiesNextPosZArray[omCurrentObj->objId] = D_800E2410[omCurrentObj->objId] = z;
    }
    if (sleep != 0) {
        ohSleep(sleep);
    }
}

void func_800AFDA0(f32 x, f32 y, f32 z, s32 sleep) {
    if (x != 65535.0f) {
        gEntitiesAngleXArray[omCurrentObj->objId] = D_800E4A90[omCurrentObj->objId] = x;
    }
    if (y != 65535.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] = D_800E4C50[omCurrentObj->objId] = y;
    }
    if (z != 65535.0f) {
        gEntitiesAngleZArray[omCurrentObj->objId] = D_800E4E10[omCurrentObj->objId] = z;
    }
    if (sleep != 0) {
        ohSleep(sleep);
    }
}

void func_800AFEB8(f32 x, f32 y, f32 z, s32 sleep) {
    if (x != 65535.0f) {
        gEntitiesScaleXArray[omCurrentObj->objId] = D_800E4FD0[omCurrentObj->objId] = x;
    }
    if (y != 65535.0f) {
        gEntitiesScaleYArray[omCurrentObj->objId] = D_800E5190[omCurrentObj->objId] = y;
    }
    if (z != 65535.0f) {
        gEntitiesScaleZArray[omCurrentObj->objId] = D_800E5350[omCurrentObj->objId] = z;
    }
    if (sleep != 0) {
        ohSleep(sleep);
    }
}

void func_800AFFD0(f32 x, f32 y, f32 z, s32 sleep) {
    if (x != 65535.0f) {
        gEntitiesNextPosXArray[omCurrentObj->objId] = D_800E2090[omCurrentObj->objId] += x;
    }
    if (y != 65535.0f) {
        gEntitiesNextPosYArray[omCurrentObj->objId] = D_800E2250[omCurrentObj->objId] += y;
    }
    if (z != 65535.0f) {
        gEntitiesNextPosZArray[omCurrentObj->objId] = D_800E2410[omCurrentObj->objId] += z;
    }
    if (sleep != 0) {
        ohSleep(sleep);
    }
}

void func_800B0100(f32 x, f32 y, f32 z, s32 sleep) {
    if (x != 65535.0f) {
        gEntitiesAngleXArray[omCurrentObj->objId] += x;
    }
    if (y != 65535.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += y;
    }
    if (z != 65535.0f) {
        gEntitiesAngleZArray[omCurrentObj->objId] += z;
    }
    if (sleep != 0) {
        ohSleep(sleep);
    }
}

void func_800B01DC(f32 x, f32 y, f32 z, s32 sleep) {
    if (x != 65535.0f) {
        gEntitiesScaleXArray[omCurrentObj->objId] = D_800E4FD0[omCurrentObj->objId] += x;
    }
    if (y != 65535.0f) {
        gEntitiesScaleYArray[omCurrentObj->objId] = D_800E5190[omCurrentObj->objId] += y;
    }
    if (z != 65535.0f) {
        gEntitiesScaleZArray[omCurrentObj->objId] = D_800E5350[omCurrentObj->objId] += z;
    }
    if (sleep != 0) {
        ohSleep(sleep);
    }
}

#ifdef MIPS_TO_C
void func_800B030C(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8, s32 arg9) {
    if (arg0 != 65535.0f) {
        D_800E2090[omCurrentObj->objId] = arg0;
    }
    if (arg3 != 65535.0f) {
        D_800E2250[omCurrentObj->objId] = arg3;
    }
    if (arg6 != 65535.0f) {
        D_800E2410[omCurrentObj->objId] = arg6;
    }
    if (arg1 != 65535.0f) {
        D_800E4A90[omCurrentObj->objId] = arg1;
    }
    if (arg4 != 65535.0f) {
        D_800E4C50[omCurrentObj->objId] = arg4;
    }
    if (arg7 != 65535.0f) {
        D_800E4E10[omCurrentObj->objId] = arg7;
    }
    if (arg2 != 65535.0f) {
        D_800E4FD0[omCurrentObj->objId] = arg2;
    }
    if (arg5 != 65535.0f) {
        D_800E5190[omCurrentObj->objId] = arg5;
    }
    if (arg8 != 65535.0f) {
        D_800E5350[omCurrentObj->objId] = arg8;
    }
    if (arg9 != 0) {
        ohSleep(arg9);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800B030C.s")
#endif

#ifdef MIPS_TO_C
void func_800B04D4(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8, s32 arg9) {
    if (arg0 != 65535.0f) {
        D_800E3050[omCurrentObj->objId] = arg0;
    }
    if (arg1 != 65535.0f) {
        D_800E3590[omCurrentObj->objId] = arg1;
    }
    if (arg2 == 65536.0f) {
        D_800E3AD0[omCurrentObj->objId] = 65535.0f;
    } else if (arg2 != 65535.0f) {
        if (arg2 < 0.0f) {
            D_800E3AD0[omCurrentObj->objId] = -arg2;
        } else {
            D_800E3AD0[omCurrentObj->objId] = arg2;
        }
    }
    if (arg3 != 65535.0f) {
        D_800E3210[omCurrentObj->objId] = arg3;
    }
    if (arg4 != 65535.0f) {
        D_800E3750[omCurrentObj->objId] = arg4;
    }
    if (arg5 == 65536.0f) {
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
    } else if (arg5 != 65535.0f) {
        if (arg5 < 0.0f) {
            D_800E3C90[omCurrentObj->objId] = -arg5;
        } else {
            D_800E3C90[omCurrentObj->objId] = arg5;
        }
    }
    if (arg6 != 65535.0f) {
        D_800E33D0[omCurrentObj->objId] = arg6;
    }
    if (arg7 != 65535.0f) {
        D_800E3910[omCurrentObj->objId] = arg7;
    }
    if (arg8 == 65536.0f) {
        D_800E3E50[omCurrentObj->objId] = 65535.0f;
    } else if (arg8 != 65535.0f) {
        if (arg8 < 0.0f) {
            D_800E3E50[omCurrentObj->objId] = -arg8;
        } else {
            D_800E3E50[omCurrentObj->objId] = arg8;
        }
    }
    if (arg9 != 0) {
        ohSleep(arg9);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800B04D4.s")
#endif

#ifdef MIPS_TO_C
void func_800B07B4(GObj *arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v1;

    temp_v1 = arg0 & 0xFF;
    temp_v0 = temp_v1 & 1;
    temp_a2 = arg2 & 0xFF;
    temp_a1 = arg1 & 0xFF;
    if ((temp_v0 | 6) != 0) {
        if (temp_v0 != 0) {
            D_800E3050[omCurrentObj->objId] = 0.0f;
        }
        if (temp_v1 & 2) {
            D_800E3210[omCurrentObj->objId] = 0.0f;
        }
        if (temp_v1 & 4) {
            D_800E33D0[omCurrentObj->objId] = 0.0f;
        }
    }
    temp_v0_2 = temp_a1 & 1;
    if ((temp_v0_2 | 6) != 0) {
        if (temp_v0_2 != 0) {
            D_800E3590[omCurrentObj->objId] = 0.0f;
        }
        if (temp_a1 & 2) {
            D_800E3750[omCurrentObj->objId] = 0.0f;
        }
        if (temp_a1 & 4) {
            D_800E3910[omCurrentObj->objId] = 0.0f;
        }
    }
    temp_v0_3 = temp_a2 & 1;
    if ((temp_v0_3 | 6) != 0) {
        if (temp_v0_3 != 0) {
            D_800E3AD0[omCurrentObj->objId] = 65535.0f;
        }
        if (temp_a2 & 2) {
            D_800E3C90[omCurrentObj->objId] = 65535.0f;
        }
        if (temp_a2 & 4) {
            D_800E3E50[omCurrentObj->objId] = 65535.0f;
        }
    }
    if (arg3 != 0) {
        ohSleep(arg3);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800B07B4.s")
#endif

void func_800B0974(f32 arg0, f32 arg1, f32 arg2, s32 sleep) {
    if (arg0 != 65535.0f) {
        if (D_800E10D0[omCurrentObj->objId] == 1.0f) {
            D_800E3050[omCurrentObj->objId] = arg0;
        } else {
            D_800E3050[omCurrentObj->objId] = -arg0;
        }
    }
    if (arg1 != 65535.0f) {
        if (D_800E10D0[omCurrentObj->objId] == 1.0f) {
            D_800E3590[omCurrentObj->objId] = arg1;
        } else {
            D_800E3590[omCurrentObj->objId] = -arg1;
        }
    }
    if (arg2 == 65536.0f) {
        D_800E3AD0[omCurrentObj->objId] = 65535.0f;
    } else if (arg2 != 65535.0f) {
        D_800E3AD0[omCurrentObj->objId] = arg2;
    }
    if (sleep != 0) {
        ohSleep(sleep);
    }
}

void func_800B0AD4(f32 arg0, f32 arg1, f32 arg2, s32 sleep) {
    if (arg0 != 65535.0f) {
        D_800E64D0[omCurrentObj->objId] = arg0;
    }
    if (arg1 != 65535.0f) {
        D_800E6690[omCurrentObj->objId] = arg1;
    }
    if (arg2 == 65536.0f) {
        D_800E6850[omCurrentObj->objId] = 65535.0f;
    } else if (arg2 != 65535.0f) {
        D_800E6850[omCurrentObj->objId] = arg2;
    }
    if (sleep != 0) {
        ohSleep(sleep);
    }
}

void func_800B0BC4(f32 arg0, f32 arg1, f32 arg2, s32 sleep) {
    if (arg0 != 65535.0f) {
        if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
            D_800E64D0[omCurrentObj->objId] = arg0;
        } else {
            D_800E64D0[omCurrentObj->objId] = -arg0;
        }
    }
    if (arg1 != 65535.0f) {
        if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
            D_800E6690[omCurrentObj->objId] = arg1;
        } else {
            D_800E6690[omCurrentObj->objId] = -arg1;
        }
    }
    if (arg2 == 65536.0f) {
        D_800E6850[omCurrentObj->objId] = 65535.0f;
    } else if (arg2 != 65535.0f) {
        D_800E6850[omCurrentObj->objId] = arg2;
    }
    if (sleep != 0) {
        ohSleep(sleep);
    }
}

void func_800B0D24(GObj *gobj) {
    func_800B1C7C(gobj);
    if (D_800DEDD0[omCurrentObj->objId] != NULL) {
        if (!(D_800DD8D0[omCurrentObj->objId] & 1) && !(D_800DD8D0[omCurrentObj->objId] & 0x80)) {
            D_800DEDD0[omCurrentObj->objId](gobj);
        }
    }
}

#ifdef MIPS_TO_C

void func_800B0D90(void *arg0) {
    ? (*temp_a1)(void *, ?);
    f32 temp_f0;
    s32 *temp_a2;
    s32 var_a1;
    s32 var_v0;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v0_4;
    u32 temp_v0_5;
    void (*temp_a1_2)(s32);

    temp_v0 = omCurrentObj->objId;
    var_v0 = temp_v0 * 4;
    temp_a2 = &D_800DD8D0[temp_v0];
    if (D_800DD710[temp_v0] != -1) {
        var_a1 = *temp_a2;
        if (!(var_a1 & 0x80)) {
            if (!(var_a1 & 2) && (arg0->unk3C != 0) && (D_800DEF90[temp_v0] != NULL)) {
                *temp_a2 = var_a1 & 0x3FFFFFFF;
                func_8000E324(var_a1, temp_a2);
                temp_v0_2 = omCurrentObj->objId;
                var_v0 = temp_v0_2 * 4;
                var_a1 = D_800DD8D0[temp_v0_2];
            }
            if (!(var_a1 & 4)) {
                temp_a1 = *(D_800DEF90 + var_v0);
                if (temp_a1 != NULL) {
                    temp_a1(arg0, temp_a1);
                    var_v0 = omCurrentObj->objId * 4;
                }
            }
            *(D_800E56D0 + var_v0) = 0.0f;
            temp_v0_3 = omCurrentObj->objId;
            D_800E5510[temp_v0_3] = D_800E56D0[temp_v0_3];
            D_800E5DD0[omCurrentObj->objId] = 0.0f;
            temp_v0_4 = omCurrentObj->objId;
            temp_f0 = D_800E5DD0[temp_v0_4];
            D_800E5C10[temp_v0_4] = temp_f0;
            D_800E5A50[omCurrentObj->objId] = temp_f0;
            temp_v0_5 = omCurrentObj->objId;
            temp_a1_2 = D_800DF150[temp_v0_5];
            if ((temp_a1_2 != NULL) && !(D_800DD8D0[temp_v0_5] & 8)) {
                temp_a1_2(arg0);
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800B0D90.s")
#endif

#ifdef MIPS_TO_C

void func_800B0F28(struct LayoutNode *arg0, s32 arg1, f32 arg2) {
    f32 sp44;
    void *sp3C;
    f32 sp38;
    Vector sp20;
    s32 *temp_v0_2;
    s32 *temp_v0_3;
    s32 temp_a0;
    s32 temp_a1;
    void (*temp_v0_4)(s32, s32, f32);
    void *temp_v0;

    switch (arg1) {
        case 9:
            func_800BB468(arg2, arg2, 0, arg0);
            return;
        case 12:
            sp44 = arg2;
            if ((bitwise s32) sp44 >= 0) {
                play_sound(arg2, sp44, arg0);
                return;
            }
            return;
        case 13:
            sp38 = arg2;
            temp_a1 = (bitwise s32) sp38 & 0xFFFF;
            temp_a0 = (bitwise s32) sp38 >> 0x10;
            if ((temp_a1 >= 0) && (*(&D_800D6A38 + (temp_a0 * 4)) != 0)) {
                temp_v0 = func_800A19EC(arg2, temp_a0, temp_a1, arg0);
                if (temp_v0 != NULL) {
                    if (temp_v0->unk4C != 0) {
                        sp3C = temp_v0;
                        func_800B2340(&sp20, arg0, 0xFFFF);
                        sp3C->unk4C->unk4 = sp20;
                        sp3C->unk4C->unk8 = sp20.y;
                        sp3C->unk4C->unkC = sp20.z;
                        return;
                    }
                    temp_v0->unk48 = arg0;
                    return;
                }
            }
            break;
        case -1:
            temp_v0_2 = &D_800DD8D0[omCurrentObj->objId];
            *temp_v0_2 |= 0x40000000;
            return;
        case -2:
            temp_v0_3 = &D_800DD8D0[omCurrentObj->objId];
            *temp_v0_3 |= 0x80000000;
            return;
        default:
            temp_v0_4 = D_800DF310[omCurrentObj->objId];
            if (temp_v0_4 != NULL) {
                temp_v0_4(arg0, arg1, arg2);
            }
            break;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800B0F28.s")
#endif

// dispatch D_800DF310
#ifdef MIPS_TO_C
void func_800B113C(s32 arg0, s32 arg1, f32 arg2) {
    f32 sp24;
    f32 sp18;
    s32 *temp_v0_4;
    s32 *temp_v0_5;
    s32 temp_a1;
    void (*temp_v0)(s32, s32, f32);
    void (*temp_v0_3)(s32, s32, f32);
    void (*temp_v0_6)(s32, s32, f32);
    void *temp_v0_2;

    switch (arg1) {
        case 9:
            func_800BB468(arg2, arg2, 0, arg1);
            return;
        case 12:
            sp24 = arg2;
            if ((bitwise s32) sp24 >= 0) {
                play_sound(arg2, sp24, arg1);
            }
            temp_v0 = D_800DF310[omCurrentObj->objId];
            if (temp_v0 != NULL) {
                temp_v0(arg0, arg1, arg2);
                return;
            }
            return;
        case 13:
            sp18 = arg2;
            temp_a1 = (bitwise s32) sp18 & 0xFFFF;
            if (temp_a1 >= 0) {
                temp_v0_2 = func_800A19EC(arg2, (bitwise s32) sp18 >> 0x10, temp_a1, arg1);
                if (temp_v0_2 != NULL) {
                    temp_v0_2->unk48 = arg0;
                }
            }
            temp_v0_3 = D_800DF310[omCurrentObj->objId];
            if (temp_v0_3 != NULL) {
                temp_v0_3(arg0, arg1, arg2);
                return;
            }
            break;
        case -1:
            temp_v0_4 = &D_800DD8D0[omCurrentObj->objId];
            *temp_v0_4 |= 0x40000000;
            return;
        case -2:
            temp_v0_5 = &D_800DD8D0[omCurrentObj->objId];
            *temp_v0_5 |= 0x80000000;
            return;
        default:
            temp_v0_6 = D_800DF310[omCurrentObj->objId];
            if (temp_v0_6 != NULL) {
                temp_v0_6(arg0, arg1, arg2);
            }
            break;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800B113C.s")
#endif

#ifdef MIPS_TO_C
void func_800B1378(GObj *arg0, s32 arg1, f32 arg2) {
    s32 *temp_v0;
    s32 *temp_v0_3;
    void (*temp_v0_2)(s32, s32, f32);

    if (arg1 != -2) {
        if (arg1 == -1) {
            temp_v0 = &D_800DD8D0[omCurrentObj->objId];
            *temp_v0 |= 0x40000000;
            return;
        }
        temp_v0_2 = D_800DF310[omCurrentObj->objId];
        if (temp_v0_2 != NULL) {
            temp_v0_2(arg0, arg1, arg2);
        }
        return;
    }
    temp_v0_3 = &D_800DD8D0[omCurrentObj->objId];
    *temp_v0_3 |= 0x80000000;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800B1378.s")
#endif

#ifdef MIPS_TO_C
void func_800B1434(GObj *arg0) {

}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800B1434.s")
#endif

void func_800B143C(GObj *gobj) {
    if (!(D_800DD8D0[omCurrentObj->objId] & 0x40)) {
        if (gobj->data != NULL) {
            ((struct LayoutNode *)gobj->data)->pos.x = gEntitiesNextPosXArray[omCurrentObj->objId];
            ((struct LayoutNode *)gobj->data)->pos.y = gEntitiesNextPosYArray[omCurrentObj->objId];
            ((struct LayoutNode *)gobj->data)->pos.z = gEntitiesNextPosZArray[omCurrentObj->objId];
            ((struct LayoutNode *)gobj->data)->angle.x = gEntitiesAngleXArray[omCurrentObj->objId];
            ((struct LayoutNode *)gobj->data)->angle.y = gEntitiesAngleYArray[omCurrentObj->objId];
            ((struct LayoutNode *)gobj->data)->angle.z = gEntitiesAngleZArray[omCurrentObj->objId];
            ((struct LayoutNode *)gobj->data)->scale.x = gEntitiesScaleXArray[omCurrentObj->objId];
            ((struct LayoutNode *)gobj->data)->scale.y = gEntitiesScaleYArray[omCurrentObj->objId];
            ((struct LayoutNode *)gobj->data)->scale.z = gEntitiesScaleZArray[omCurrentObj->objId];
        }
    }
}

#ifdef MIPS_TO_C
void func_800B158C(void *arg0) {
    s16 var_a0;
    s32 temp_f10;
    s32 temp_f18;
    u32 temp_v1;
    u8 temp_t1;
    void *temp_v0;

    temp_v0 = arg0->unk4C;
    if (temp_v0 != NULL) {
        var_a0 = 0;
        temp_v0->unk20 = gEntitiesNextPosXArray[omCurrentObj->objId];
        temp_v0->unk24 = gEntitiesNextPosYArray[omCurrentObj->objId];
        temp_v0->unk28 = gEntitiesScaleXArray[omCurrentObj->objId];
        temp_v0->unk2C = gEntitiesScaleYArray[omCurrentObj->objId];
        temp_v0->unk30 = gEntitiesAngleZArray[omCurrentObj->objId];
        switch (temp_v0->unk10) {
            case 0:
            case 1:
            case 2:
            case 3:
                if (D_800E10D0[omCurrentObj->objId] != 0.0f) {
                    var_a0 = 1;
                }
                temp_v0->unkBA = var_a0;
                temp_v0->unk5A = var_a0;
                return;
            case 4:
                temp_v1 = omCurrentObj->objId;
                if (D_800E10D0[temp_v1] != 0.0f) {
                    var_a0 = 1;
                }
                if (D_800E1290[temp_v1] != 0.0f) {
                    var_a0 = (var_a0 | 0x10) & 0xFFFF;
                }
                temp_v0->unkCF = var_a0;
                temp_v0->unk6F = var_a0;
                temp_f10 = gEntitiesAngleXArray[omCurrentObj->objId];
                temp_v0->unkB8 = temp_f10;
                temp_v0->unk58 = temp_f10;
                temp_f18 = gEntitiesAngleYArray[omCurrentObj->objId];
                temp_v0->unkC0 = temp_f18;
                temp_v0->unk60 = temp_f18;
                break;
        }
    } else {
    default:
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800B158C.s")
#endif

#ifdef MIPS_TO_C

void func_800B175C(void *arg0) {
    if (!(D_800DD8D0[omCurrentObj->objId] & 0x40) && (arg0->unk3C != 0)) {
        func_8019BBEC_ovl7();
        func_800B143C(arg0);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800B175C.s")
#endif

void func_800B17B8(GObj *gobj) {
    if (!(D_800DD8D0[omCurrentObj->objId] & 0x40) && (gobj->data != NULL)) {
        func_800B143C(gobj);
        func_801D1CAC_ovl8();
    }
}

void func_800B1814(GObj *gobj) {
    if (!(D_800DD8D0[omCurrentObj->objId] & 0x40) && (gobj->data != NULL)) {
        func_800B143C(gobj);
        func_801D1E98_ovl8();
    }
}

void func_800B1870(GObj *arg0) {

}

void objSleepForever(GObj *arg0) {
    while (1) {
        ohSleep(0x7FFFFFFF);
    }
}

#ifdef MIPS_TO_C
void func_800B18B4(GObj *arg0) {
    u32 *temp_v1;
    u32 temp_a0;

    temp_v1 = &D_800E7CE0[omCurrentObj->objId];
    temp_a0 = *temp_v1;
    if (temp_a0 != 0) {
        *temp_v1 = temp_a0 - 1;
        if (temp_a0 <= 0) {
            D_800E7CE0[omCurrentObj->objId] = 0;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800B18B4.s")
#endif

void func_800B1900(u16 track) {
    GObj *gobj;

    gobj = D_800DE350[track];
    func_800A9D64(track);
    func_800A99E4(track);
    if (gobj == omCurrentObj) {
        initTrack(omCurrentObj->objId);
        if (omCurrentProc->kind == 0) {
            omGDeleteObj(omCurrentObj);
            ohSleep(1);
        } else {
            omGDeleteObj(omCurrentObj);
        }
    } else {
        initTrack(gobj->objId);
        omGDeleteObj(gobj);
    }
}

#ifdef MIPS_TO_C

void func_800B19B8(GObj *arg0, s32 arg1) {
    s32 *sp18;
    s32 *temp_v0;
    s32 temp_a2;

    temp_v0 = arg0 + (arg1 * 4);
    temp_a2 = *temp_v0;
    if (temp_a2 != 0) {
        sp18 = temp_v0;
        func_80008DA8(temp_a2, temp_a2);
        *temp_v0 = 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800B19B8.s")
#endif

#ifdef MIPS_TO_C

void func_800B19F4(GObj *arg0, s32 arg1) {
    s32 *temp_v1;
    s32 temp_a2;

    temp_v1 = &D_800DD8D0[arg1];
    temp_a2 = *temp_v1;
    if (!(temp_a2 & 0x80)) {
        *temp_v1 = (temp_a2 & ~0xFF) | (arg0 & 0xFF);
        func_800B1C7C(*(&D_800DE350 + (arg1 * 4)), temp_a2);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800B19F4.s")
#endif

#ifdef MIPS_TO_C

void func_800B1A4C(GObj *arg0, s32 arg1) {
    s32 *temp_v0;
    s32 *var_s2;
    s32 temp_v1;
    s32 var_s0;
    s32 var_s1;

    var_s2 = D_800DD710;
    var_s0 = 0;
    var_s1 = 0;
    do {
        if (*var_s2 != -1) {
            temp_v0 = D_800DD8D0 + var_s1;
            if (var_s0 != arg1) {
                temp_v1 = *temp_v0;
                if (!(temp_v1 & 0x80)) {
                    *temp_v0 = (temp_v1 & ~0xFF) | (arg0 & 0xFF);
                    func_800B1C7C(*(&D_800DE350 + var_s1));
                }
            }
        }
        var_s0 += 1;
        var_s1 += 4;
        var_s2 += 4;
    } while (var_s0 != 0x70);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800B1A4C.s")
#endif

#ifdef MIPS_TO_C

void func_800B1B28(GObj *arg0) {
    s32 *temp_v0;
    s32 *var_s1;
    s32 temp_v1;
    s32 var_s0;

    var_s1 = D_800DD710;
    var_s0 = 0;
    do {
        temp_v0 = D_800DD8D0 + var_s0;
        if (*var_s1 != -1) {
            temp_v1 = *temp_v0;
            if (!(temp_v1 & 0x80)) {
                *temp_v0 = (temp_v1 & ~0xFF) | (arg0 & 0xFF);
                func_800B1C7C(*(&D_800DE350 + var_s0));
            }
        }
        var_s1 += 4;
        var_s0 += 4;
    } while (var_s1 != D_800DD8D0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800B1B28.s")
#endif

#ifdef MIPS_TO_C

void func_800B1BF0(GObj *arg0, s32 arg1) {
    s32 *temp_v1;
    s32 *temp_v1_2;

    if (arg0 == 0x80) {
        temp_v1 = &D_800DD8D0[arg1];
        *temp_v1 = (*temp_v1 & ~0xFF) + 0x80;
        func_800B1C7C(*(&D_800DE350 + (arg1 * 4)));
        return;
    }
    temp_v1_2 = &D_800DD8D0[arg1];
    *temp_v1_2 &= ~0xFF;
    func_800B1C7C(*(&D_800DE350 + (arg1 * 4)));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800B1BF0.s")
#endif

#ifdef NON_MATCHING
void func_800B1C7C(GObj *gobj) {
    u32 flag = D_800DD8D0[gobj->objId];
    if ((flag & 0x80) && !(flag & 0x8000)) {
        ohGObjPause(gobj);
        gobj->flags |= 1;
        D_800DD8D0[gobj->objId] |= 0x8000;
    } else if (!(flag & 0x80) && (flag & 0x8000)) {
        ohGObjResume(gobj);
        gobj->flags &= ~1;
        D_800DD8D0[gobj->objId] ^= 0x8000;
    } else {
        func_800B1E08(0x01,                                  NULL, gobj->objId);
        func_800B1E08(0x02,  gEntityGObjProcessArray[gobj->objId], gobj->objId);
        func_800B1E08(0x04,                                  NULL, gobj->objId);
        func_800B1E08(0x08,                                  NULL, gobj->objId);
        func_800B1E08(0x10, gEntityGObjProcessArray3[gobj->objId], gobj->objId);
        func_800B1E08(0x20, gEntityGObjProcessArray4[gobj->objId], gobj->objId);
        switch (func_800B1E08(0x40, gEntityGObjProcessArray5[gobj->objId], gobj->objId)) {
            case 1:
                gobj->flags |= 1;
                break;
            case 2:
                gobj->flags &= ~1;
                break;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800B1C7C.s")
#endif

#ifdef MIPS_TO_C
s32 func_800B1E08(s32 bit, GObj *gobj, s32 track) {
    s32 *sp28;
    s32 sp1C;
    s32 *temp_v1;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a3;
    s32 var_t0;
    s32 var_v0;

    temp_v1 = &D_800DD8D0[track];
    var_v0 = *temp_v1;
    temp_a3 = var_v0 & bit;
    var_t0 = 0;
    if ((temp_a3 != 0) && (temp_a1 = bit << 8, ((var_v0 & temp_a1) == 0))) {
        if (gobj != 0) {
            sp28 = temp_v1;
            sp1C = temp_a1;
            ohPause(gobj, temp_a1, temp_a3);
            var_v0 = *temp_v1;
        }
        *temp_v1 = var_v0 | temp_a1;
        var_t0 = 1;
    } else {
        temp_a1_2 = bit << 8;
        if ((temp_a3 == 0) && (var_v0 & temp_a1_2)) {
            if (gobj != 0) {
                sp28 = temp_v1;
                sp1C = temp_a1_2;
                ohResume(gobj, temp_a1_2, temp_a3);
                var_v0 = *temp_v1;
            }
            *temp_v1 = var_v0 ^ temp_a1_2;
            var_t0 = 2;
        }
    }
    return var_t0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800B1E08.s")
#endif

void assign_new_process_entry(struct GObjProcess *ts, void (*func)(struct GObj *)) {
    struct GObjThread *gthread;
    s32 id;

    gthread = ts->payload.thread;
    id = gthread->thread.id;
    ts->entryPoint = func;
    osDestroyThread(&gthread->thread);
    osCreateThread(&gthread->thread,
                   id,
                   func,
                   ts->gobj,
                   &gthread->objStack->stack[gNewEntityStackSize / 8],
                   0x33);
    gthread->objStack->stack[7] = STACK_TOP_MAGIC;
}

void setProcessMain(GObjProcess *proc, void (*cb)(GObj *)) {
    proc->payload.callback = cb;
}

#ifdef MIPS_TO_C
s32 func_800B1F70(void *arg0, s32 arg1) {
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v1;
    void *temp_v0_3;
    void *var_a0;

    var_a0 = arg0;
    temp_v0_2 = var_a0->unk10;
    if (temp_v0_2 != 0) {
        return temp_v0_2;
    }
    temp_v0 = var_a0->unk8;
    if (temp_v0 != 0) {
        return temp_v0;
    }
loop_4:
    temp_v0_3 = var_a0->unk14;
    if (arg1 == temp_v0_3) {
        return 0;
    }
    temp_v1 = temp_v0_3->unk8;
    if (temp_v1 != 0) {
        return temp_v1;
    }
    var_a0 = temp_v0_3;
    goto loop_4;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800B1F70.s")
#endif

#ifdef MIPS_TO_C

void func_800B1FD0(GObj *arg0, s32 arg1, ? arg2, s32 arg3, f32 arg4) {
    s32 var_s1;
    s32 var_s2;
    s32 var_s3;
    s32 var_s4;
    struct UnkStruct8004A7C4_3C *temp_v0;
    struct UnkStruct8004A7C4_3C *var_s0;
    struct UnkStruct8004A7C4_3C *var_s5;

    var_s5 = omCurrentObj->unk3C;
    var_s3 = arg1;
    var_s4 = arg3;
    if (arg0 != var_s5) {
        do {
            if (var_s3 != 0) {
                var_s3 += 4;
            }
            if (var_s4 != 0) {
                var_s4 += 0x2C;
            }
            temp_v0 = func_8000BE90(var_s5);
            var_s5 = temp_v0;
        } while (arg0 != temp_v0);
    }
    var_s0 = var_s5;
    var_s1 = var_s4;
    var_s2 = var_s3;
    if (var_s5 != NULL) {
        do {
            func_8000EC98(var_s0, var_s2, arg2, var_s1, 0, arg4, 0.0f, 0.0f, 0.0f);
            var_s0 = func_800B1F70(var_s0, var_s5);
            if (var_s2 != 0) {
                var_s2 += 4;
            }
            if (var_s1 != 0) {
                var_s1 += 0x2C;
            }
        } while (var_s0 != NULL);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800B1FD0.s")
#endif

#ifdef MIPS_TO_C
void func_800B20E0(void *arg0, void ***arg1) {
    UserData8000BE90 *temp_v0;
    UserData8000BE90 *var_s0;
    void ***var_s1;
    void **temp_a0;
    void *temp_v0_2;

    var_s0 = arg0->unk3C;
    var_s1 = arg1;
    if (var_s0 != NULL) {
        do {
            if (var_s1 != NULL) {
                temp_a0 = *var_s1;
                var_s1 += 4;
                if (temp_a0 != NULL) {
                    temp_v0_2 = *temp_a0;
                    var_s0->unk80->unk8 = temp_v0_2->unk0;
                    var_s0->unk80->unkA = temp_v0_2->unk2;
                    var_s0->unk80->unkB = temp_v0_2->unk3;
                    var_s0->unk80->unkC = temp_v0_2->unk4;
                    var_s0->unk80->unk10 = temp_v0_2->unk8;
                    var_s0->unk80->unk12 = temp_v0_2->unkA;
                    var_s0->unk80->unk14 = temp_v0_2->unkC;
                    var_s0->unk80->unk16 = temp_v0_2->unkE;
                    var_s0->unk80->unk18 = temp_v0_2->unk10;
                    var_s0->unk80->unk1C = temp_v0_2->unk14;
                    var_s0->unk80->unk20 = temp_v0_2->unk18;
                    var_s0->unk80->unk24 = temp_v0_2->unk1C;
                    var_s0->unk80->unk28 = temp_v0_2->unk20;
                    var_s0->unk80->unk2C = temp_v0_2->unk14;
                    var_s0->unk80->unk30 = temp_v0_2->unk1C;
                    var_s0->unk80->unk80 = 0;
                }
            }
            temp_v0 = func_8000BE90(var_s0);
            var_s0 = temp_v0;
        } while (temp_v0 != NULL);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800B20E0.s")
#endif

#ifdef MIPS_TO_C

void func_800B21FC(s32 **arg0, f32 arg1) {
    s32 *var_s1;
    s32 temp_a1;
    s8 var_s2;
    struct UnkStruct8004A7C4_3C *temp_v0;
    struct UnkStruct8004A7C4_3C *var_s0;

    var_s0 = omCurrentObj->unk3C;
    var_s1 = *arg0;
    var_s2 = 1;
    var_s0->unk0.y->unk40 = arg1;
    if (var_s0 != NULL) {
        do {
            temp_a1 = *var_s1;
            if (temp_a1 != 0) {
                func_8000C10C(var_s0, temp_a1, arg1);
                var_s0->unk55 = var_s2;
                var_s2 = 0;
            }
            var_s1 += 4;
            temp_v0 = func_8000BE90(var_s0);
            var_s0 = temp_v0;
        } while (temp_v0 != NULL);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800B21FC.s")
#endif

#ifdef MIPS_TO_C

void func_800B2288(s32 **arg0, ? arg1) {
    s32 **var_s2;
    s32 *temp_v0_2;
    s32 *var_s1;
    s32 temp_a1;
    struct UnkStruct8004A7C4_3C *temp_v0;
    struct UnkStruct8004A7C4_3C *var_s3;
    struct UnkStruct8004A7C4_3C_80 *var_s0;

    var_s3 = omCurrentObj->unk3C;
    var_s2 = arg0;
    if (var_s3 != NULL) {
        do {
            if (var_s2 != NULL) {
                temp_v0_2 = *var_s2;
                if (temp_v0_2 != NULL) {
                    var_s0 = var_s3->unk80;
                    var_s1 = temp_v0_2;
                    if (var_s0 != NULL) {
                        do {
                            temp_a1 = *var_s1;
                            if (temp_a1 != 0) {
                                func_8000C144(var_s0, temp_a1, arg1);
                            }
                            var_s0 = var_s0->unk0;
                            var_s1 += 4;
                        } while (var_s0 != NULL);
                    }
                }
                var_s2 += 4;
            }
            temp_v0 = func_8000BE90(var_s3);
            var_s3 = temp_v0;
        } while (temp_v0 != NULL);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800B2288.s")
#endif

void func_800B2340(Vector *vec, struct LayoutNode *node, u32 track) {
    float finalMtx[4][4];
    float tmpMtx[4][4];

    if (track == 0xFFFF) {
        track = omCurrentObj->objId;
    }
    if (node == NULL) {
        node = (struct LayoutNode *)omCurrentObj->data;
    }
    guMtxIdentF(&finalMtx);
    do {
        if ((u32)node->child != 1) {
            if ((node->scale.x != 1.0f) || (node->scale.y != 1.0f) || (node->scale.z != 1.0f)) {
                HS64_MkScaleMtxF(tmpMtx, node->scale.x, node->scale.y, node->scale.z);
                guMtxCatF(&finalMtx, tmpMtx, &finalMtx);
            }
            if ((node->angle.x != 0.0f) || (node->angle.y != 0.0f) || (node->angle.z != 0.0f)) {
                HS64_MkRotationMtxF(tmpMtx, node->angle.x, node->angle.y, node->angle.z);
                guMtxCatF(&finalMtx, tmpMtx, &finalMtx);
            }
            if ((node->pos.x != 0.0f) || (node->pos.y != 0.0f) || (node->pos.z != 0.0f)) {
                HS64_MkTranslateMtxF(tmpMtx, node->pos.x, node->pos.y, node->pos.z);
                guMtxCatF(&finalMtx, tmpMtx, &finalMtx);
            }
        } else {
            if ((gEntitiesScaleXArray[track] != 1.0f) || (gEntitiesScaleYArray[track] != 1.0f) || (gEntitiesScaleZArray[track] != 1.0f)) {
                HS64_MkScaleMtxF(tmpMtx, gEntitiesScaleXArray[track], gEntitiesScaleYArray[track], gEntitiesScaleZArray[track]);
                guMtxCatF(&finalMtx, tmpMtx, &finalMtx);
            }
            if ((gEntitiesAngleXArray[track] != 0.0f) || (gEntitiesAngleYArray[track] != 0.0f) || (gEntitiesAngleZArray[track] != 0.0f)) {
                HS64_MkRotationMtxF(tmpMtx, gEntitiesAngleXArray[track], gEntitiesAngleYArray[track], gEntitiesAngleZArray[track]);
                guMtxCatF(&finalMtx, tmpMtx, &finalMtx);
            }
            if ((gEntitiesNextPosXArray[track] != 0.0f) || (gEntitiesNextPosYArray[track] != 0.0f) || (gEntitiesNextPosZArray[track] != 0.0f)) {
                HS64_MkTranslateMtxF(tmpMtx, gEntitiesNextPosXArray[track], gEntitiesNextPosYArray[track], gEntitiesNextPosZArray[track]);
                guMtxCatF(&finalMtx, tmpMtx, &finalMtx);
            }
        }
        node = node->child;
    } while ((u32)node != 1);
    vec->x = finalMtx[3][0];
    vec->y = finalMtx[3][1];
    vec->z = finalMtx[3][2];
}

#ifdef MIPS_TO_C

void func_800B26D8(Vector *vec, struct LayoutNode *node, u32 track) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f12;
    f32 temp_f2;
    struct LayoutNode *var_s0;
    u32 var_s5;

    var_s0 = node;
    var_s5 = track;
    if (track == 0xFFFF) {
        var_s5 = omCurrentObj->objId;
    }
    if (var_s0 == NULL) {
        var_s0 = omCurrentObj->unk3C;
    }
    guMtxIdentF(&sp90[0]);
    do {
        if (var_s0->child != 1) {
            temp_f0 = var_s0->angle.x;
            if ((temp_f0 != 0.0f) || (var_s0->angle.y != 0.0f) || (var_s0->angle.z != 0.0f)) {
                HS64_MkRotationMtxF(&sp50[0], temp_f0, var_s0->angle.y, var_s0->angle.z);
                guMtxCatF(&sp90[0], &sp50[0], &sp90[0]);
            }
        } else {
            temp_f0_2 = gEntitiesAngleXArray[var_s5];
            temp_f2 = gEntitiesAngleYArray[var_s5];
            temp_f12 = gEntitiesAngleZArray[var_s5];
            if ((temp_f0_2 != 0.0f) || (temp_f2 != 0.0f) || (temp_f12 != 0.0f)) {
                HS64_MkRotationMtxF(&sp50[0], temp_f0_2, temp_f2, temp_f12);
                guMtxCatF(&sp90[0], &sp50[0], &sp90[0]);
            }
        }
        var_s0 = var_s0->child;
    } while (var_s0->child != 1);
    temp_f0_3 = asinf(-sp90[2]);
    vec->y = temp_f0_3;
    if ((temp_f0_3 == 1.5707964f) || (vec->y == -1.5707964f)) {
        if (vec->y == 1.5707964f) {
            vec->x = atan2f(spA0, spA4);
        } else {
            vec->x = atan2f(-spA0, spA4);
        }
        vec->z = 0.0f;
    } else {
        vec->x = atan2f(spA8, spB8);
        vec->z = atan2f(sp90[1], sp90[0]);
    }
    func_800A4598(vec);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800B26D8.s")
#endif

#ifdef MIPS_TO_C
void func_800B2928(Vector *vec, struct LayoutNode *node, u32 track) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f12;
    f32 temp_f2;
    struct LayoutNode *var_s0;
    u32 var_s5;

    var_s0 = node;
    var_s5 = track;
    if (track == 0xFFFF) {
        var_s5 = omCurrentObj->objId;
    }
    if (var_s0 == NULL) {
        var_s0 = omCurrentObj->unk3C;
    }
    guMtxIdentF(&sp90[0]);
    do {
        if (var_s0->child != 1) {
            temp_f0 = var_s0->scale.x;
            if ((temp_f0 != 1.0f) || (var_s0->scale.y != 1.0f) || (var_s0->scale.z != 1.0f)) {
                HS64_MkScaleMtxF(&sp50[0], temp_f0, var_s0->scale.y, var_s0->scale.z);
                guMtxCatF(&sp90[0], &sp50[0], &sp90[0]);
            }
        } else {
            temp_f0_2 = gEntitiesScaleXArray[var_s5];
            temp_f2 = gEntitiesScaleYArray[var_s5];
            temp_f12 = gEntitiesScaleZArray[var_s5];
            if ((temp_f0_2 != 1.0f) || (temp_f2 != 1.0f) || (temp_f12 != 1.0f)) {
                HS64_MkScaleMtxF(&sp50[0], temp_f0_2, temp_f2, temp_f12);
                guMtxCatF(&sp90[0], &sp50[0], &sp90[0]);
            }
        }
        var_s0 = var_s0->child;
    } while (var_s0->child != 1);
    vec->x = sp90[0];
    vec->y = spA4;
    vec->z = spB8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800B2928.s")
#endif

#ifdef MIPS_TO_C
void func_800B2AD4(void *arg0, struct UnkStruct8004A7C4_3C *arg1, u32 arg2) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f0_6;
    f32 temp_f0_7;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f32 temp_f12_4;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f2_4;
    struct UnkStruct8004A7C4_3C *var_s0;
    u32 var_a2;

    var_a2 = arg2;
    var_s0 = arg1;
    if (var_a2 == 0xFFFF) {
        var_a2 = omCurrentObj->objId;
    }
    if (var_s0 == NULL) {
        var_s0 = omCurrentObj->unk3C;
    }
    arg2 = var_a2;
    guMtxIdentF(&spBC[0]);
    do {
        if (var_s0->unk14 != 1) {
            temp_f0 = var_s0->scaleVec.x;
            if ((temp_f0 != 1.0f) || (var_s0->scaleVec.y != 1.0f) || (var_s0->scaleVec.z != 1.0f)) {
                HS64_MkScaleMtxF(&sp7C[0], 1.0f / temp_f0, 1.0f / var_s0->scaleVec.y, 1.0f / var_s0->scaleVec.z);
                guMtxCatF(&sp7C[0], &spBC[0], &spBC[0]);
            }
            temp_f0_2 = var_s0->angleVec.x;
            if ((temp_f0_2 != 0.0f) || (var_s0->angleVec.y != 0.0f) || (var_s0->angleVec.z != 0.0f)) {
                func_800A465C(&sp7C[0], -temp_f0_2, -var_s0->angleVec.y, -var_s0->angleVec.z);
                guMtxCatF(&sp7C[0], &spBC[0], &spBC[0]);
            }
            temp_f0_3 = var_s0->posVec.x;
            if ((temp_f0_3 != 0.0f) || (var_s0->posVec.y != 0.0f) || (var_s0->posVec.z != 0.0f)) {
                HS64_MkTranslateMtxF(&sp7C[0], -temp_f0_3, -var_s0->posVec.y, -var_s0->posVec.z);
                guMtxCatF(&sp7C[0], &spBC[0], &spBC[0]);
            }
        } else {
            temp_f0_4 = gEntitiesScaleXArray[arg2];
            temp_f2 = gEntitiesScaleYArray[arg2];
            temp_f12 = gEntitiesScaleZArray[arg2];
            if ((temp_f0_4 != 1.0f) || (temp_f2 != 1.0f) || (temp_f12 != 1.0f)) {
                HS64_MkScaleMtxF(&sp7C[0], 1.0f / temp_f0_4, 1.0f / temp_f2, 1.0f / temp_f12);
                guMtxCatF(&sp7C[0], &spBC[0], &spBC[0]);
            }
            temp_f0_5 = gEntitiesAngleXArray[arg2];
            temp_f2_2 = gEntitiesAngleYArray[arg2];
            temp_f12_2 = gEntitiesAngleZArray[arg2];
            if ((temp_f0_5 != 0.0f) || (temp_f2_2 != 0.0f) || (temp_f12_2 != 0.0f)) {
                func_800A465C(&sp7C[0], -temp_f0_5, -temp_f2_2, -temp_f12_2);
                guMtxCatF(&sp7C[0], &spBC[0], &spBC[0]);
            }
            temp_f0_6 = gEntitiesNextPosXArray[arg2];
            temp_f2_3 = gEntitiesNextPosYArray[arg2];
            temp_f12_3 = gEntitiesNextPosZArray[arg2];
            if ((temp_f0_6 != 0.0f) || (temp_f2_3 != 0.0f) || (temp_f12_3 != 0.0f)) {
                HS64_MkTranslateMtxF(&sp7C[0], -temp_f0_6, -temp_f2_3, -temp_f12_3);
                guMtxCatF(&sp7C[0], &spBC[0], &spBC[0]);
            }
        }
        var_s0 = var_s0->unk14;
    } while (var_s0 != 1);
    temp_f0_7 = arg0->unk0;
    temp_f2_4 = arg0->unk4;
    temp_f12_4 = arg0->unk8;
    arg0->unk0 = spEC + ((spBC[0] * temp_f0_7) + (spCC * temp_f2_4) + (spDC * temp_f12_4));
    arg0->unk4 = spF0 + ((spBC[1] * temp_f0_7) + (spD0 * temp_f2_4) + (spE0 * temp_f12_4));
    arg0->unk8 = spF4 + ((spBC[2] * temp_f0_7) + (spD4 * temp_f2_4) + (spE4 * temp_f12_4));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800B2AD4.s")
#endif

#ifdef MIPS_TO_C

void func_800B2F54(GObj *arg0, ? arg2) {
    func_8000FE2C(arg2, *(&D_800D79D8 + (((arg0 - 0xA) >> 1) * 4)), arg2);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800B2F54.s")
#endif

#ifdef MIPS_TO_C

void func_800B2F90(GObj *arg0, ? arg2) {
    void *temp_s0;

    temp_s0 = *(&D_800D79D8 + (((arg0 - 0xA) >> 1) * 4));
    func_8000FE2C(arg2, temp_s0, arg2);
loop_1:
    while (temp_s0->unk74 != -3.4028235e38f) {
        ohSleep(1);
        goto loop_1;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800B2F90.s")
#endif

#ifdef MIPS_TO_C
void func_800B3008(int arg0) {
    struct UnkStruct800D79D8 *tmp = D_800D79D8[(arg0 - 10) / 2];

loop:
    if (tmp->unk74 != -3.4028235e38f) {
        ohSleep(1);
        goto loop;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800B3008.s")
#endif

#ifdef MIPS_TO_C

void func_800B3070(GObj *arg0, f32 arg1) {
    (*(&D_800D79D8 + (((arg0 - 0xA) >> 1) * 4)))->unk78 = arg1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800B3070.s")
#endif

#ifdef MIPS_TO_C

void func_800B3094(GObj *arg0) {
    (*(&D_800D79D8 + (((arg0 - 0xA) >> 1) * 4)))->unk74 = -3.4028235e38f;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800B3094.s")
#endif

#ifdef MIPS_TO_C
s32 func_800B30BC(f32 arg0, f32 arg1, ? arg2) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 var_f2;
    f32 var_f2_2;
    s32 var_v0;
    struct Normal *temp_v1;

    temp_v1 = &D_800E6F50[omCurrentObj->objId];
    temp_f0 = temp_v1->x;
    if (temp_f0 < 0.0f) {
        var_f2 = -temp_f0;
    } else {
        var_f2 = temp_f0;
    }
    var_v0 = 0;
    if (var_f2 < arg0) {
        var_v0 = 1;
    }
    if (var_v0 != 0) {
        temp_f0_2 = temp_v1->y;
        if (temp_f0_2 < 0.0f) {
            var_f2_2 = -temp_f0_2;
        } else {
            var_f2_2 = temp_f0_2;
        }
        var_v0 = 0;
        if (var_f2_2 < arg1) {
            var_v0 = 1;
        }
    }
    return var_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800B30BC.s")
#endif

s32 func_800B3158(void) {
    if (func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]) != 0) {
        return 0;
    }
    return 1;
}

void func_800B31B4(void) {
    s32 pad;
    struct GObj *gobj = D_800DE350[omCurrentObj->objId];

    if (func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]) != 0) {
        gobj->unk48 = NULL;
        func_8019B7D8_ovl7(gobj);
        func_8019D8A0((u16) omCurrentObj->objId);
    }
}

#ifdef MIPS_TO_C

s32 func_800B3234(f32 arg0, f32 arg1, f32 arg2) {
    f32 sp38;
    f32 sp34;
    f32 sp30;
    s32 sp2C;
    f32 temp_f0;
    f32 temp_f14;
    f32 temp_f2;
    struct Normal *temp_a0_2;
    u32 temp_a0;

    D_800E6F50[omCurrentObj->objId].z = 0.0f;
    temp_a0 = omCurrentObj->objId;
    if (gEntitiesNextPosYArray[temp_a0] < -10000.0f) {
        D_800E6F50[temp_a0].z = 1.0f;
        return 1;
    }
    sp30 = arg0;
    sp34 = arg1;
    sp38 = arg2;
    sp2C = func_800A4F48(D_800D799C->unk3C, &sp30, 0x3FD9999A, 0x4019999A);
    D_800E6F50[omCurrentObj->objId].x = sp30;
    D_800E6F50[omCurrentObj->objId].y = sp34;
    temp_f0 = arg0 - *gEntitiesNextPosXArray;
    temp_f2 = arg1 - (*gEntitiesNextPosYArray + 20.0f);
    temp_f14 = arg2 - *gEntitiesNextPosZArray;
    D_800E6F50[omCurrentObj->objId].originOffset = sqrtf((temp_f0 * temp_f0) + (temp_f2 * temp_f2) + (temp_f14 * temp_f14));
    if (sp2C == 0) {
        temp_a0_2 = &D_800E6F50[omCurrentObj->objId];
        if (temp_a0_2->originOffset > 500.0f) {
            temp_a0_2->z = 1.0f;
            return 1;
        }
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_7/func_800B3234.s")
#endif

void func_800B33F4(void) {
    D_800E64D0[omCurrentObj->objId] = 0.0f;

    D_800E3050[omCurrentObj->objId] =
    D_800E3210[omCurrentObj->objId] =
    D_800E33D0[omCurrentObj->objId] = D_800E64D0[omCurrentObj->objId];

    D_800E6690[omCurrentObj->objId] = 0.0f;

    D_800E3590[omCurrentObj->objId] =
    D_800E3750[omCurrentObj->objId] =
    D_800E3910[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];

    D_800E6850[omCurrentObj->objId] = 65535.0f;

    D_800E3AD0[omCurrentObj->objId] =
    D_800E3C90[omCurrentObj->objId] =
    D_800E3E50[omCurrentObj->objId] = D_800E6850[omCurrentObj->objId];
}

void func_800B3520(void) {
    f32 temp_f0;

    D_800E6690[omCurrentObj->objId] = 0.0f;
    temp_f0 = D_800E6690[omCurrentObj->objId];
    D_800E3750[omCurrentObj->objId] = temp_f0;
    D_800E64D0[omCurrentObj->objId] = temp_f0;
    D_800E3210[omCurrentObj->objId] = temp_f0;
    D_800E6850[omCurrentObj->objId] =  65535.0f;
    D_800E3C90[omCurrentObj->objId] = D_800E6850[omCurrentObj->objId];
}
