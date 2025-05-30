#include <ultra64.h>
#include <macros.h>
#include "ovl1_6.h"
#include "omCurrentObj.h"
#include "unk_structs/D_800DE350.h"
#include "ovl0/ovl0_5.h"
#include "ovl1_5.h"
#include "ovl0/ovl0_6.h"
#include "ovl0/ovl0_4.h"

s32 func_800B3234(f32 inputX, f32 inputY, f32 inputZ);
void func_800AFA88(struct GObj *);

void func_8000BEF4_ovl1(struct GObj *, f32);

void func_800AECC0(f32 arg0) {
    if (arg0 != D_800E09D0[omCurrentObj->objId]) {
        D_800E09D0[omCurrentObj->objId] = arg0;
        func_8000BEF4_ovl1(omCurrentObj, D_800E09D0[omCurrentObj->objId]);
    }
}

extern void func_8000BFA0_ovl1(struct GObj *, f32);

void func_800AED20(f32 arg0) {
    if (arg0 != D_800E0B90[omCurrentObj->objId]) {
        D_800E0B90[omCurrentObj->objId] = arg0;
        func_8000BFA0_ovl1(omCurrentObj, D_800E0B90[omCurrentObj->objId]);
    }
}

void func_800AED80(f32 arg0, s32 arg1) {
    if (arg0 != D_800E09D0[arg1]) {
        struct UnkStruct800DE350 *tmp = D_800DE350[arg1];

        D_800E09D0[arg1] = arg0;
        func_8000BEF4_ovl1(tmp, arg0);
    }
}

void func_800AEDD0(f32 arg0, s32 arg1) {
    if (arg0 != D_800E0B90[arg1]) {
        struct UnkStruct800DE350 *tmp = D_800DE350[arg1];

        D_800E0B90[arg1] = arg0;
        func_8000BFA0_ovl1(tmp, arg0);
    }
}

void func_8000C17C_ovl1(struct GObj *, s32, f32);

void func_800AEE20(s32 arg0, f32 arg1) {
    D_800DF310[omCurrentObj->objId] = 0;
    D_800DD8D0[omCurrentObj->objId] &= 0x3FFFFFFF;
    func_8000C17C_ovl1(omCurrentObj, arg0, arg1);
    if (arg1 != 0.0f) {
        func_8000E324_ovl1(omCurrentObj);
    }
}

void animSetModelTreeTextureAnimation(struct GObj *, s32, f32);

void func_800AEEB4(s32 arg0, f32 arg1) {
    animSetModelTreeTextureAnimation(omCurrentObj, arg0, arg1);
    if (arg1 != 0.0f) {
        func_8000E324_ovl1(omCurrentObj);
    }
}

void func_800AEF0C(s32 arg0, f32 arg1, struct GObj *arg2) {
    D_800DF310[arg2->objId] = 0;
    D_800DD8D0[arg2->objId] &= 0x3FFFFFFF;
    func_8000C17C_ovl1(arg2, arg0, arg1);
    if (arg1 != 0.0f) {
        func_8000E324_ovl1(arg2);
    }
}

void func_800AEFA4(s32 arg0, f32 arg1, struct GObj *arg2) {
    animSetModelTreeTextureAnimation(arg2, arg0, arg1);
    if (arg1 != 0.0f) {
        func_8000E324_ovl1(arg2);
    }
}

// control flow meme
#ifdef NON_MATCHING
void func_800AEFFC(u16 arg0) {
    while (1) {
        if (D_800DD8D0[omCurrentObj->objId] & 0xC0000000 || --arg0 != 0) {
            D_800DD8D0[omCurrentObj->objId] &= 0x3FFFFFFF;
            ohSleep(1);
        }
        else break;
    }
    // return D_800DD8D0[omCurrentObj->objId];
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800AEFFC.s")
#endif

u32 func_800AF0F4(void);

void func_800AF09C(u16 arg0) {
    while (1) {
        if (func_800AF0F4() != 0 || --arg0 != 0) {
            ohSleep(1);
            continue;
        }
        break;
    }
}

extern f32 D_800D6700, D_800D6704, D_800D6708;

// some meme in here
#ifdef NON_MATCHING
u32 func_800AF0F4(void) {
    struct UnkStruct8004A7C4_3C_80 *sp20;
    struct UnkStruct8004A7C4_3C *s0;

    s0 = omCurrentObj->unk3C;
    while (s0 != 0) {
        if (s0->unk80 != 0) {
            sp20 = s0->unk80;
        } else {
            s0 = animModelTreeNextNode(s0);
        }
    }
    if (D_800D6700 == sp20->unk98 || D_800D6704 == sp20->unk98) {
        return 0;
    }
    if (D_800D6708 == sp20->unk98) {
        D_800DD8D0[omCurrentObj->objId] |= 0x20000000;
    } else {
        if (sp20->unkA0 < D_800E0B90[omCurrentObj->objId]) {
            if (D_800DD8D0[omCurrentObj->objId] * 4 >= 0) {
                return 0;
            }
            D_800DD8D0[omCurrentObj->objId] &= 0xDFFFFFFF;
        }
    }
    return 1;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800AF0F4.s")
#endif

u32 func_800AF230(void) {
    if ((((u32)D_800DD8D0[omCurrentObj->objId]) >> 0x1E) != 0) {
        D_800DD8D0[omCurrentObj->objId] &= 0x3FFFFFFF;
        return 1;
    }
    return 0;
}

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800AF27C.s")

void func_800AF314(void) {
    struct UnkStruct8004A7C4_3C *tmp = omCurrentObj->unk3C;

    while (tmp != 0) {
        func_8000984C_ovl1(tmp);
        tmp = animModelTreeNextNode(tmp);
    }
    D_800DF310[omCurrentObj->objId] = 0;
    D_800DD8D0[omCurrentObj->objId] = D_800DD8D0[omCurrentObj->objId] & 0x3FFFFFFF;
}

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800AF3A0.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800AF408.s")


// some meme
#ifdef NON_MATCHING
void func_800AF4BC(s32 arg0, s32 arg1, s32 arg2) {
    s32 sp30;
    f32 temp_f0;
    f32 temp_f0_2;

    sp30 = 0;
    if (omCurrentObj->unkF == 1) {
        sp30 = 1;
        func_8000BBE0_ovl1(0);
    }
    if (arg1 == 0) {
        func_8000F980_ovl1(omCurrentObj, arg0, arg2, 0x1C, 0, 0);
        temp_f0 = D_800E09D0[omCurrentObj->objId];
        if (omCurrentObj->unk3C->unk78 != temp_f0) {
            func_8000BEF4_ovl1(omCurrentObj, temp_f0);
        }
    } else {
        func_8000FB10_ovl1(omCurrentObj, arg0, arg1, arg2, 0x1C, 0, 0);
        temp_f0_2 = D_800E09D0[omCurrentObj->objId];
        if (omCurrentObj->unk3C->unk78 != temp_f0_2) {
            func_8000BEF4_ovl1(omCurrentObj, temp_f0_2);
            func_8000BFA0_ovl1(omCurrentObj, D_800E0B90[omCurrentObj->objId]);
        }
    }
    if (sp30 != 0) {
        func_800AFA88(omCurrentObj);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800AF4BC.s")
#endif

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800AF618.s")


extern void (*gDrawFuncList[])(struct GObj *);

void func_800AF7A0(s32 arg0) {
    u32 *tmp;

    if (arg0 == 0x0001869F) {
        tmp = gSegment4StartArray[omCurrentObj->objId];
        arg0 = tmp[2];
    }
    omCurrentObj->unk2C = gDrawFuncList[arg0];
}

#ifdef NON_MATCHING
u32 func_800AF7EC(u32 arg0, u8 arg1, u8 flags, u8 mode) {
    struct UnkStruct800AC954 *sprite = func_800AC954(omCurrentObj, mode, func_800A8C40());

    if (sprite == NULL) {
        return 0;
    }
    D_800E02D0[omCurrentObj->objId] = arg0;
    sprite->renderFlags |= flags;
    func_8000A5FC(omCurrentObj, func_800AD1A0, arg1, 0x80000000, arg1);
    return 1;
}
#else
u32 func_800AF7EC(s32, u8, u8, u8);
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800AF7EC.s")
#endif

u32 func_800AF890(s32 arg0, u8 arg1, u8 renderFlags) {
    return func_800AF7EC(arg0, arg1, renderFlags, 0);
}

u32 func_800AF8C0(s32 arg0, u8 arg1, u8 renderFlags) {
    return func_800AF7EC(arg0, arg1, renderFlags, 1);
}

u32 func_800AF8F0(s32 arg0, u8 arg1, u8 renderFlags) {
    return func_800AF7EC(arg0, arg1, renderFlags, 4);
}

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800AF920.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800AF96C.s")

struct GObj *func_800AF980(s32 arg0) {
    gEntityRenderPriorityArray[omCurrentObj->objId] = arg0;
    omCurrentObj->renderPriority = gEntityRenderPriorityArray[omCurrentObj->objId];
}
 
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800AF9B8.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800AFA14.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800AFA54.s")

void func_800AFA88(struct GObj *this) {
    this->unk3C->posVec.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    this->unk3C->posVec.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    this->unk3C->posVec.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    this->unk3C->angleVec.x = gEntitiesAngleXArray[omCurrentObj->objId];
    this->unk3C->angleVec.y = gEntitiesAngleYArray[omCurrentObj->objId];
    this->unk3C->angleVec.z = gEntitiesAngleZArray[omCurrentObj->objId];
    this->unk3C->scaleVec.x = gEntitiesScaleXArray[omCurrentObj->objId];
    this->unk3C->scaleVec.y = gEntitiesScaleYArray[omCurrentObj->objId];
    this->unk3C->scaleVec.z = gEntitiesScaleZArray[omCurrentObj->objId];
}

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800AFBB4.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800AFBEC.s")

void play_sound_and_wait(s32 sound, s32 tcount) {
    play_sound(sound);
    if (tcount != 0) {
        ohSleep(tcount);
    }
}

void func_800AFC54(s32 arg0, s32 tcount) {
    func_800FB914(arg0);
    if (tcount != 0) {
        ohSleep(tcount);
    }
}

void func_800AFC88(f32 arg0, f32 arg1, f32 arg2, s32 arg3) {
    if (arg0 != 65535.0f) {
        D_800E2090[omCurrentObj->objId] = arg0;
        gEntitiesNextPosXArray[omCurrentObj->objId] = D_800E2090[omCurrentObj->objId];
    }
    if (arg1 != 65535.0f) {
        D_800E2250[omCurrentObj->objId] = arg1;
        gEntitiesNextPosYArray[omCurrentObj->objId] = D_800E2250[omCurrentObj->objId];
    }
    if (arg2 != 65535.0f) {
        D_800E2410[omCurrentObj->objId] = arg2;
        gEntitiesNextPosZArray[omCurrentObj->objId] = D_800E2410[omCurrentObj->objId];
    }
    if (arg3 != 0) {
        ohSleep(arg3);
    }
}

void func_800AFDA0(f32 arg0, f32 arg1, f32 arg2, s32 arg3) {
    if (arg0 != 65535.0f) {
        D_800E4A90[omCurrentObj->objId] = arg0;
        gEntitiesAngleXArray[omCurrentObj->objId] = D_800E4A90[omCurrentObj->objId];
    }
    if (arg1 != 65535.0f) {
        D_800E4C50[omCurrentObj->objId] = arg1;
        gEntitiesAngleYArray[omCurrentObj->objId] = D_800E4C50[omCurrentObj->objId];
    }
    if (arg2 != 65535.0f) {
        D_800E4E10[omCurrentObj->objId] = arg2;
        gEntitiesAngleZArray[omCurrentObj->objId] = D_800E4E10[omCurrentObj->objId];
    }
    if (arg3 != 0) {
        ohSleep(arg3);
    }
}

void func_800AFEB8(f32 arg0, f32 arg1, f32 arg2, s32 arg3) {
    if (arg0 != 65535.0f) {
        D_800E4FD0[omCurrentObj->objId] = arg0;
        gEntitiesScaleXArray[omCurrentObj->objId] = D_800E4FD0[omCurrentObj->objId];
    }
    if (arg1 != 65535.0f) {
        D_800E5190[omCurrentObj->objId] = arg1;
        gEntitiesScaleYArray[omCurrentObj->objId] = D_800E5190[omCurrentObj->objId];
    }
    if (arg2 != 65535.0f) {
        D_800E5350[omCurrentObj->objId] = arg2;
        gEntitiesScaleZArray[omCurrentObj->objId] = D_800E5350[omCurrentObj->objId];
    }
    if (arg3 != 0) {
        ohSleep(arg3);
    }
}

void func_800AFFD0(f32 arg0, f32 arg1, f32 arg2, s32 arg3) {
    if (arg0 != 65535.0f) {
        D_800E2090[omCurrentObj->objId] += arg0;
        gEntitiesNextPosXArray[omCurrentObj->objId] = D_800E2090[omCurrentObj->objId];
    }
    if (arg1 != 65535.0f) {
        D_800E2250[omCurrentObj->objId] += arg1;
        gEntitiesNextPosYArray[omCurrentObj->objId] = D_800E2250[omCurrentObj->objId];
    }
    if (arg2 != 65535.0f) {
        D_800E2410[omCurrentObj->objId] += arg2;
        gEntitiesNextPosZArray[omCurrentObj->objId] = D_800E2410[omCurrentObj->objId];
    }
    if (arg3 != 0) {
        ohSleep(arg3);
    }
}

void func_800B0100(f32 arg0, f32 arg1, f32 arg2, s32 arg3) {
    if (arg0 != 65535.0f) {
        gEntitiesAngleXArray[omCurrentObj->objId] += arg0;
    }
    if (arg1 != 65535.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += arg1;
    }
    if (arg2 != 65535.0f) {
        gEntitiesAngleZArray[omCurrentObj->objId] += arg2;
    }
    if (arg3 != 0) {
        ohSleep(arg3);
    }
}

void func_800B01DC(f32 arg0, f32 arg1, f32 arg2, s32 arg3) {
    if (arg0 != 65535.0f) {
        D_800E4FD0[omCurrentObj->objId] += arg0;
        gEntitiesScaleXArray[omCurrentObj->objId] = D_800E4FD0[omCurrentObj->objId];
    }
    if (arg1 != 65535.0f) {
        D_800E5190[omCurrentObj->objId] += arg1;
        gEntitiesScaleYArray[omCurrentObj->objId] = D_800E5190[omCurrentObj->objId];
    }
    if (arg2 != 65535.0f) {
        D_800E5350[omCurrentObj->objId] += arg2;
        gEntitiesScaleZArray[omCurrentObj->objId] = D_800E5350[omCurrentObj->objId];
    }
    if (arg3 != 0) {
        ohSleep(arg3);
    }
}

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
        D_800E3AD0[omCurrentObj->objId] = ABSF(arg2);
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
        D_800E3C90[omCurrentObj->objId] = ABSF(arg5);
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
        D_800E3E50[omCurrentObj->objId] = ABSF(arg8);
    }
    if (arg9 != 0) {
        ohSleep(arg9);
    }
}

// regalloc
#ifdef NON_MATCHING
void func_800B07B4(u8 arg0, u8 arg1, u8 arg2, s32 arg3) {
    if (((arg0 & 1) | (2 | 4)) != 0) {
        if (arg0 & 1) {
            D_800E3050[omCurrentObj->objId] = 0.0f;
        }
        if ((arg0 & 2) != 0) {
            D_800E3210[omCurrentObj->objId] = 0.0f;
        }
        if ((arg0 & 4) != 0) {
            D_800E33D0[omCurrentObj->objId] = 0.0f;
        }
    }
    if (((arg1 & 1) | (2 | 4)) != 0) {
        if ((arg1 & 1) != 0) {
            D_800E3590[omCurrentObj->objId] = 0.0f;
        }
        if ((arg1 & 2) != 0) {
            D_800E3750[omCurrentObj->objId] = 0.0f;
        }
        if ((arg1 & 4) != 0) {
            D_800E3910[omCurrentObj->objId] = 0.0f;
        }
    }
    if (((arg2 & 1) | (2 | 4)) != 0) {
        if ((arg2 & 1) != 0) {
            D_800E3AD0[omCurrentObj->objId] = 65535.0f;
        }
        if ((arg2 & 2) != 0) {
            D_800E3C90[omCurrentObj->objId] = 65535.0f;
        }
        if ((arg2 & 4) != 0) {
            D_800E3E50[omCurrentObj->objId] = 65535.0f;
        }
    }
    if (arg3 != 0) {
        ohSleep(arg3);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800B07B4.s")
#endif

void func_800B0974(f32 arg0, f32 arg1, f32 arg2, s32 arg3) {
    f32 temp_f0;
    u32 temp_v0;
    u32 temp_v0_2;

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

    if (arg3 != 0) {
        ohSleep(arg3);
    }
}

void func_800B0AD4(f32 arg0, f32 arg1, f32 arg2, s32 arg3) {
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

    if (arg3 != 0) {
        ohSleep(arg3);
    }
}

void func_800B0BC4(f32 arg0, f32 arg1, f32 arg2, s32 arg3) {
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

    if (arg3 != 0) {
        ohSleep(arg3);
    }
}

void func_800B0D24(struct GObj *arg0) {
    func_800B1C7C(arg0);

    if (D_800DEDD0[omCurrentObj->objId] != NULL) {
        if ((D_800DD8D0[omCurrentObj->objId] & 1) == 0) {
            if ((D_800DD8D0[omCurrentObj->objId] & 0x80) == 0) {
                D_800DEDD0[omCurrentObj->objId](arg0);
            }
        }
    }
}

// this function calls D_800DF150 and D_800DEF90
s32 func_800B0D90(struct GObj *arg0) {
    if (D_800DD710[omCurrentObj->objId] != -1 && !(D_800DD8D0[omCurrentObj->objId] & 0x80)) {
        if (!(D_800DD8D0[omCurrentObj->objId] & 2)) {
            if (arg0->unk3C != NULL) {
                if (D_800DEF90[omCurrentObj->objId] != NULL) {
                    D_800DD8D0[omCurrentObj->objId] &= 0x3FFFFFFF;
                    func_8000E324_ovl1(arg0);
                }
            }
        }
        if ((D_800DD8D0[omCurrentObj->objId] & 4) == 0) {
            if (D_800DEF90[omCurrentObj->objId] != 0) {
                D_800DEF90[omCurrentObj->objId](arg0);
            }
        }
        D_800E56D0[omCurrentObj->objId] = 0.0f;
        D_800E5510[omCurrentObj->objId] = D_800E56D0[omCurrentObj->objId];
        D_800E5DD0[omCurrentObj->objId] = 0.0f;
        D_800E5A50[omCurrentObj->objId] =
        D_800E5C10[omCurrentObj->objId] = D_800E5DD0[omCurrentObj->objId];
        if (D_800DF150[omCurrentObj->objId] != NULL) {
            if (!(D_800DD8D0[omCurrentObj->objId] & 8)) {
                D_800DF150[omCurrentObj->objId](arg0);
            }
        }
    }
}

typedef union {
    u32 i;
    f32 f;
} _IF;

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800B0F28.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800B113C.s")

#ifdef NON_MATCHING
void func_800B1378(s32 arg1, s32 arg2, f32 arg3) {
    if (arg2 != -2) {
        D_800DD8D0[omCurrentObj->objId] |= 0x80000000;
    }
    else if (arg2 == -1) { // move this comparison to right after the first one somehow
        D_800DD8D0[omCurrentObj->objId] |= 0x40000000;
    }
    else if (D_800DF310[omCurrentObj->objId] != 0) {
        D_800DF310[omCurrentObj->objId](arg1, arg2, arg3);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800B1378.s")
#endif

void procMainStub(s32 arg0) {

}

void procMainMove(struct GObj *this) {
    if ((D_800DD8D0[omCurrentObj->objId] & 0x40) == 0) {
        if (this->unk3C != NULL) {
            this->unk3C->posVec.x = gEntitiesNextPosXArray[omCurrentObj->objId];
            this->unk3C->posVec.y = gEntitiesNextPosYArray[omCurrentObj->objId];
            this->unk3C->posVec.z = gEntitiesNextPosZArray[omCurrentObj->objId];
            this->unk3C->angleVec.x = gEntitiesAngleXArray[omCurrentObj->objId];
            this->unk3C->angleVec.y = gEntitiesAngleYArray[omCurrentObj->objId];
            this->unk3C->angleVec.z = gEntitiesAngleZArray[omCurrentObj->objId];
            this->unk3C->scaleVec.x = gEntitiesScaleXArray[omCurrentObj->objId];
            this->unk3C->scaleVec.y = gEntitiesScaleYArray[omCurrentObj->objId];
            this->unk3C->scaleVec.z = gEntitiesScaleZArray[omCurrentObj->objId];
        }
    }
}

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800B158C.s")

void func_800B175C(struct GObj *this) {
    if (((D_800DD8D0[omCurrentObj->objId] & 0x40) == 0) && (this->unk3C != 0)) {
        func_8019BBEC_ovl7();
        procMainMove(this);
    }
}

void func_800B17B8(struct GObj *this) {
    if (((D_800DD8D0[omCurrentObj->objId] & 0x40) == 0) && (this->unk3C != 0)) {
        procMainMove(this);
        func_801D1CAC_ovl8();
    }
}

void func_800B1814(struct GObj *this) {
    if (((D_800DD8D0[omCurrentObj->objId] & 0x40) == 0) && (this->unk3C != 0)) {
        procMainMove(this);
        func_801D1E98_ovl1();
    } 
}

void func_800B1870(s32 arg0) {

}

void func_800B1878(s32 arg0) {
    while (1) {
        ohSleep(0x7FFFFFFF);
    }
}

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800B18B4.s")

extern struct GObjProcess *D_8004A7D0;
void func_800A9D64(u16);
void func_800A99E4(u32);

// some sort of destructor?
void func_800B1900(u16 arg0) {
    struct GObj *temp_t7 = D_800DE350[arg0];

    func_800A9D64(arg0);
    func_800A99E4(arg0);
    if (temp_t7 == omCurrentObj) {
        func_800AE138(omCurrentObj->objId);
        if (D_8004A7D0->kind == 0) {
            func_8000A29C_ovl1(omCurrentObj);
            ohSleep(1);
            return;
        }
        func_8000A29C(omCurrentObj);
        return;
    }
    func_800AE138(temp_t7->objId);
    func_8000A29C_ovl1(temp_t7);
}

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/drop_process_from_list.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800B19F4.s")

void func_800B1A4C(s32 arg0, s32 arg1) {
    int i;

    for (i = 0; i < 0x70; i++) {
        if (D_800DD710[i] != -1) {
            if (i != arg1) {
                if ((D_800DD8D0[i] & 0x80) == 0) {
                    D_800DD8D0[i] = (D_800DD8D0[i] & ~0xFF) | (arg0 & 0xFF);
                    func_800B1C7C(D_800DE350[i]);
                }
            }
        }
    }
}

void func_800B1B28(s32 arg0) {
    int i;
    
    for (i = 0; i < 0x70; i++) {
        if (D_800DD710[i] != -1) {
            if ((D_800DD8D0[i] & 0x80) == 0) {
                D_800DD8D0[i] = (D_800DD8D0[i] & ~0xFF) | (arg0 & 0xFF);
                func_800B1C7C(D_800DE350[i]);
            }
        }
    }
}

void func_800B1BF0(s32 arg0, s32 arg1) {
    if (arg0 == 0x80) {
        D_800DD8D0[arg1] = (D_800DD8D0[arg1] & ~0xFF) + 0x80;
        func_800B1C7C(D_800DE350[arg1]);
    } else {
        D_800DD8D0[arg1] = D_800DD8D0[arg1] & ~0xFF;
        func_800B1C7C(D_800DE350[arg1]);
    }
}

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800B1C7C.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800B1E08.s")


// current entity stack size?
extern u32 gNewEntityStackSize;

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

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800B1F68.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800B1F70.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800B1FD0.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800B20E0.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800B21FC.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800B2288.s")

// all of these functions are easy i think if you start incorporating MtxF's
void func_800B2340(Vector *vec, struct UnkStruct8004A7C4_3C *arg1, u32 track) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f0_6;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    struct UnkStruct8004A7C4_3C *var_s0;
    u32 var_a2;

    var_a2 = track;
    var_s0 = arg1;
    if (var_a2 == 0x0000FFFF) {
        var_a2 = omCurrentObj->objId;
    }
    if (var_s0 == NULL) {
        var_s0 = omCurrentObj->unk3C;
    }
    track = var_a2;
    guMtxIdentF(&spB8[0]);
    do {
        if (var_s0->unk14 != 1) {
            temp_f0 = var_s0->scaleVec.x;
            if ((temp_f0 != 1.0f) || (var_s0->scaleVec.y != 1.0f) || (var_s0->scaleVec.z != 1.0f)) {
                HS64_MkScaleMtxF(&sp78[0], temp_f0, var_s0->scaleVec.y, var_s0->scaleVec.z);
                guMtxCatF(&spB8[0], &sp78[0], &spB8[0]);
            }
            temp_f0_2 = var_s0->angleVec.x;
            if ((temp_f0_2 != 0.0f) || (var_s0->angleVec.y != 0.0f) || (var_s0->angleVec.z != 0.0f)) {
                HS64_MkRotationMtxF(&sp78[0], temp_f0_2, var_s0->angleVec.y, var_s0->angleVec.z);
                guMtxCatF(&spB8[0], &sp78[0], &spB8[0]);
            }
            temp_f0_3 = var_s0->posVec.x;
            if ((temp_f0_3 != 0.0f) || (var_s0->posVec.y != 0.0f) || (var_s0->posVec.z != 0.0f)) {
                HS64_MkTranslateMtxF(&sp78[0], temp_f0_3, var_s0->posVec.y, var_s0->posVec.z);
                guMtxCatF(&spB8[0], &sp78[0], &spB8[0]);
            }
        } else {
            temp_f0_4 = gEntitiesScaleXArray[track];
            temp_f2 = gEntitiesScaleYArray[track];
            temp_f12 = gEntitiesScaleZArray[track];
            if ((temp_f0_4 != 1.0f) || (temp_f2 != 1.0f) || (temp_f12 != 1.0f)) {
                HS64_MkScaleMtxF(&sp78[0], temp_f0_4, temp_f2, temp_f12);
                guMtxCatF(&spB8[0], &sp78[0], &spB8[0]);
            }
            temp_f0_5 = gEntitiesAngleXArray[track];
            temp_f2_2 = gEntitiesAngleYArray[track];
            temp_f12_2 = gEntitiesAngleZArray[track];
            if ((temp_f0_5 != 0.0f) || (temp_f2_2 != 0.0f) || (temp_f12_2 != 0.0f)) {
                HS64_MkRotationMtxF(&sp78[0], temp_f0_5, temp_f2_2, temp_f12_2);
                guMtxCatF(&spB8[0], &sp78[0], &spB8[0]);
            }
            temp_f0_6 = gEntitiesNextPosXArray[track];
            temp_f2_3 = gEntitiesNextPosYArray[track];
            temp_f12_3 = gEntitiesNextPosZArray[track];
            if ((temp_f0_6 != 0.0f) || (temp_f2_3 != 0.0f) || (temp_f12_3 != 0.0f)) {
                HS64_MkTranslateMtxF(&sp78[0], temp_f0_6, temp_f2_3, temp_f12_3);
                guMtxCatF(&spB8[0], &sp78[0], &spB8[0]);
            }
        }
        var_s0 = var_s0->unk14;
    } while (var_s0 != 1);
    vec->x = spE8;
    vec->y = spEC;
    vec->z = spF0;
}
// GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800B2340.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800B26D8.s")

void func_800B2928(Vector *vec, struct UnkStruct8004A7C4_3C *userData, u32 track) {
    Mat4 finalMtx;
    Mat4 tmpMtx;

    track = track;
    if (track == 0xFFFF) {
        track = omCurrentObj->objId;
    }
    userData = userData;
    if (userData == 0) {
        userData = omCurrentObj->unk3C;
    }
    guMtxIdentF(finalMtx);
    do {
        if ((u32) userData->unk14 != 1) {
            if ((userData->scaleVec.x != 1.0f) || (userData->scaleVec.y != 1.0f) || (userData->scaleVec.z != 1.0f)) {
                HS64_MkScaleMtxF(tmpMtx, userData->scaleVec.x, userData->scaleVec.y, userData->scaleVec.z);
                guMtxCatF(finalMtx, tmpMtx, finalMtx);
            }
        } else {
            if ((gEntitiesScaleXArray[track] != 1.0f) || (gEntitiesScaleYArray[track] != 1.0f) || (gEntitiesScaleZArray[track] != 1.0f)) {
                HS64_MkScaleMtxF(tmpMtx, gEntitiesScaleXArray[track], gEntitiesScaleYArray[track], gEntitiesScaleZArray[track]);
                guMtxCatF(finalMtx, tmpMtx, finalMtx);
            }
        }
        userData = userData->unk14;
    } while ((u32) userData != 1);

    vec->x = finalMtx[0][0];
    vec->y = finalMtx[1][1];
    vec->z = finalMtx[2][2];
}

void func_800B2AD4(Vector *vec, struct UnkStruct8004A7C4_3C *userData, u32 track) {
    Vector tmp;
    Mat4 finalMtx; // 0xBC
    Mat4 tmpMtx; // 0x7C

    if (track == 0xFFFF) {
        track = omCurrentObj->objId;
    }

    if (userData == 0) {
        userData = omCurrentObj->unk3C;
    }
    guMtxIdentF(finalMtx);
    do {
        if ((u32) userData->unk14 != 1) {
            if ((userData->scaleVec.x != 1.0f) || (userData->scaleVec.y != 1.0f) || (userData->scaleVec.z != 1.0f)) {
                HS64_MkScaleMtxF(tmpMtx, 1.0f / userData->scaleVec.x, 1.0f / userData->scaleVec.y, 1.0f / userData->scaleVec.z);
                guMtxCatF(tmpMtx, finalMtx, finalMtx);
            }
            if ((userData->angleVec.x != 0.0f) || (userData->angleVec.y != 0.0f) || (userData->angleVec.z != 0.0f)) {
                func_800A465C(tmpMtx, -userData->angleVec.x, -userData->angleVec.y, -userData->angleVec.z);
                guMtxCatF(tmpMtx, finalMtx, finalMtx);
            }
            if ((userData->posVec.x != 0.0f) || (userData->posVec.y != 0.0f) || (userData->posVec.z != 0.0f)) {
                HS64_MkTranslateMtxF(tmpMtx, -userData->posVec.x, -userData->posVec.y, -userData->posVec.z);
                guMtxCatF(tmpMtx, finalMtx, finalMtx);
            }
        } else {
            if ((gEntitiesScaleXArray[track] != 1.0f) || (gEntitiesScaleYArray[track] != 1.0f) || (gEntitiesScaleZArray[track] != 1.0f)) {
                HS64_MkScaleMtxF(tmpMtx,
                    1.0f / gEntitiesScaleXArray[track],
                    1.0f / gEntitiesScaleYArray[track],
                    1.0f / gEntitiesScaleZArray[track]
                );
                guMtxCatF(tmpMtx, finalMtx, finalMtx);
            }
            if ((gEntitiesAngleXArray[track] != 0.0f) || (gEntitiesAngleYArray[track] != 0.0f) || (gEntitiesAngleZArray[track] != 0.0f)) {
                func_800A465C(tmpMtx,
                    -gEntitiesAngleXArray[track],
                    -gEntitiesAngleYArray[track],
                    -gEntitiesAngleZArray[track]
                );
                guMtxCatF(tmpMtx, finalMtx, finalMtx);
            }
            if ((gEntitiesNextPosXArray[track] != 0.0f) || (gEntitiesNextPosYArray[track] != 0.0f) || (gEntitiesNextPosZArray[track] != 0.0f)) {
                HS64_MkTranslateMtxF(tmpMtx,
                    -gEntitiesNextPosXArray[track],
                    -gEntitiesNextPosYArray[track],
                    -gEntitiesNextPosZArray[track]
                );
                guMtxCatF(tmpMtx, finalMtx, finalMtx);
            }
        }
        userData = userData->unk14;
    } while ((u32) userData != 1);

    tmp.x = vec->x;
    tmp.y = vec->y;
    tmp.z = vec->z;
    
    vec->x = ((finalMtx[0][0] * tmp.x) + (finalMtx[1][0] * tmp.y) + (finalMtx[2][0] * tmp.z))
             + finalMtx[3][0];
    vec->y = ((finalMtx[0][1] * tmp.x) + (finalMtx[1][1] * tmp.y) + (finalMtx[2][1] * tmp.z))
             + finalMtx[3][1];
    vec->z = ((finalMtx[0][2] * tmp.x) + (finalMtx[1][2] * tmp.y) + (finalMtx[2][2] * tmp.z))
             + finalMtx[3][2];
}

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800B2F54.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800B2F90.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800B3008.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800B3070.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800B3094.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800B30BC.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800B3158.s")

void func_800B31B4(void) {
    s32 pad;
    struct GObj *gobj = D_800DE350[omCurrentObj->objId];

    if (func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]) != 0) {
        gobj->unk48 = NULL;
        func_8019B7D8_ovl1(gobj);
        func_8019D8A0_ovl1((u16) omCurrentObj->objId);
    }
}

// stack diffs
// https://decomp.me/scratch/DsIpj
#ifdef NON_MATCHING
extern const f32 D_800D67E8;
extern struct GObj *D_800D799C;
f32 func_800A4F48(void *, Vector *, f32, f32);

s32 func_800B3234(f32 inputX, f32 inputY, f32 inputZ) {
    s32 sp2C;
    Vector inVec;
    Vector delVec;

    D_800E6F50[omCurrentObj->objId].z = 0.0f;
    if (gEntitiesNextPosYArray[omCurrentObj->objId] < D_800D67E8) {
        D_800E6F50[omCurrentObj->objId].z = 1.0f;
        return 1;
    }
    inVec.x = inputX;
    inVec.y = inputY;
    inVec.z = inputZ;
    sp2C = func_800A4F48(D_800D799C->unk3C, &inVec, 1.7f, 2.4f);
    D_800E6F50[omCurrentObj->objId].x = inVec.x;
    D_800E6F50[omCurrentObj->objId].y = inVec.y;

    delVec.x = inputX - gEntitiesNextPosXArray[0];
    delVec.y = inputY - (gEntitiesNextPosYArray[0] + 20.0f);
    delVec.z = inputZ - gEntitiesNextPosZArray[0];
    
    D_800E6F50[omCurrentObj->objId].originOffset = sqrtf(VEC_MAG_SQUARE(delVec));
    if (sp2C == 0) {
        if (D_800E6F50[omCurrentObj->objId].originOffset > 500.0f) {
            D_800E6F50[omCurrentObj->objId].z = 1.0f;
            return 1;
        }
    }
    return 0;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_7/func_800B3234.s")
#endif

extern f32 D_800D67EC;
void func_800B33F4(void) {
    D_800E64D0[omCurrentObj->objId] = 0.0f;

    D_800E3050[omCurrentObj->objId] =
    D_800E3210[omCurrentObj->objId] =
    D_800E33D0[omCurrentObj->objId] = D_800E64D0[omCurrentObj->objId];

    D_800E6690[omCurrentObj->objId] = 0.0f;

    D_800E3590[omCurrentObj->objId] =
    D_800E3750[omCurrentObj->objId] =
    D_800E3910[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];

    D_800E6850[omCurrentObj->objId] = D_800D67EC;

    D_800E3AD0[omCurrentObj->objId] =
    D_800E3C90[omCurrentObj->objId] =
    D_800E3E50[omCurrentObj->objId] = D_800E6850[omCurrentObj->objId];
}

extern f32 D_800D67F0;
void func_800B3520(void) {
    f32 temp_f0;

    D_800E6690[omCurrentObj->objId] = 0.0f;
    temp_f0 = D_800E6690[omCurrentObj->objId];
    D_800E3750[omCurrentObj->objId] = temp_f0;
    D_800E64D0[omCurrentObj->objId] = temp_f0;
    D_800E3210[omCurrentObj->objId] = temp_f0;
    D_800E6850[omCurrentObj->objId] = D_800D67F0;
    D_800E3C90[omCurrentObj->objId] = D_800E6850[omCurrentObj->objId];
}
