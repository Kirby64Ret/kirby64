#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "DObj.h"
#include "sounds.h"
#include "main/lbvector.h"
#include "main/object_helpers.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/track.h"
#include "ovl1/util.h"
#include "ovl2/ovl2_3.h"
#include "ovl2/ovl2_8.h"
#include "unk_structs/D_800D7098.h"
#include "unk_structs/D_800DE350.h"
#include "unk_structs/D_800E1B50.h"
#include "unk_structs/D_80129114.h"
#include "buffers.h"

#include "ovl17.h"

extern f32 D_801E55E8_ovl17;
extern f32 D_801E567C_ovl17;
extern f32 D_801E55EC_ovl17;
extern f32 D_801E55F0_ovl17;
extern f32 D_801E55F4_ovl17;
extern f32 D_801E55F8_ovl17;

extern f32 D_800D7170;
extern f32 D_801E5700_ovl17;
extern f32 D_801E5704_ovl17;
void func_801DDB8C_ovl17(struct GObj *);
void func_801DDC40_ovl17(struct GObj *);
void func_801DFABC_ovl17(void);
void func_801E069C_ovl17(void);
void func_801E0704_ovl17(void);
void func_801E073C_ovl17(void);
void func_801DEA5C_ovl17(void);
void func_801DF768_ovl17(f32);
void func_800A9EA4(s32, s32);
void func_800AA608(struct DObj *, s32, f32, u32, f32);
void func_800A9F98(s32, f32);
void func_801DE9A8_ovl17(struct GObj *);
void func_800FD570(s32, s32, f32, f32, f32);
void func_801AE7E0_ovl7(s32);
void func_800BB468(s32, s32);
void func_8019F1EC_ovl7(void);
void func_800F6C88(void);
void play_music(s32, u32);
void auFunc80020C88(void);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_2/func_801DD8F0_ovl17.s")

void func_801DD920_ovl17(struct GObj *arg0) {
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, D_801E5400_ovl17);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_2/func_801DD964_ovl17.s")

#ifdef MIPS_TO_C
void func_801DDB8C_ovl17(struct GObj *arg0) {
    while (1) {
        D_800DF150[omCurrentObj->objId] = func_801DDC40_ovl17;
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, D_801E5404_ovl17);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_2/func_801DDB8C_ovl17.s")
#endif

void func_801DDC40_ovl17(struct GObj *arg0) {
    func_801DFABC_ovl17();
    func_801E069C_ovl17();
    func_801E0704_ovl17();
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 5, D_801E5418_ovl17);
    if (D_800E9FE0[omCurrentObj->objId].as_u32 != 0) {
        D_800E98E0[omCurrentObj->objId] = 0;
        D_800E9FE0[omCurrentObj->objId].as_u32 = 0;
        D_800EA1A0[omCurrentObj->objId] = 0xA;
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DDB8C_ovl17);
    }
    func_801E073C_ovl17();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_2/func_801DDD38_ovl17.s")

void func_801DDF24_ovl17(struct GObj *arg0) {
    struct DObj *temp_v0;

    temp_v0 = D_800DFBD0[omCurrentObj->objId][0x19];
    if ((D_800E9AA0[omCurrentObj->objId] == NULL) && (temp_v0 != NULL)) {
        temp_v0->flags = 0;
    }
}

#ifdef MIPS_TO_C
void func_801DDF6C_ovl17(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800AA018(0x1050C);
    func_800AA608(arg0->data.dobj->firstChild, 0x1050B, 8.0f, 0x10083, 8.0f);
    func_800A9F98(0x1050B, 8.0f);
    while (1) {
        *(s32 *) &D_800E9AA0[omCurrentObj->objId] = 2;
        ohSleep(1);
        D_800E9560[omCurrentObj->objId] = 0;
        while (D_800E9560[omCurrentObj->objId] < 0xC) {
            *(s32 *) &D_800E9AA0[omCurrentObj->objId] = 1;
            if (D_800E98E0[omCurrentObj->objId] != 0) {
                break;
            }
            ohSleep(1);
            D_800E9560[omCurrentObj->objId] += 1;
        }
        *(s32 *) &D_800E9AA0[omCurrentObj->objId] = 0;
        ohSleep(0x1C);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_2/func_801DDF6C_ovl17.s")
#endif

void func_801DE104_ovl17(struct GObj *arg0) {
    struct DObj *sp1C;

    sp1C = D_800DFBD0[omCurrentObj->objId][0x19];
    func_801DEA5C_ovl17();
    switch (D_800E98E0[omCurrentObj->objId]) {
    case 0:
        if (D_800E9AA0[omCurrentObj->objId] == (struct EntityThing800E9AA0 *) 1) {
            if (sp1C != NULL) {
                sp1C->flags = 2;
            }
        } else {
            if (sp1C != NULL) {
                sp1C->flags = 0;
            }
        }
        break;
    case 1:
        if (sp1C != NULL) {
            sp1C->flags = 2;
        }
        break;
    case 2:
        if (sp1C != NULL) {
            sp1C->flags = 0;
        }
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DDB8C_ovl17);
        break;
    }
}

void func_801DE214_ovl17(struct GObj *arg0) {
    f32 temp_f20;

    D_800DDFD0[omCurrentObj->objId] = 2;
    func_800AA018(0x1050A);
    func_800AA608(arg0->data.dobj->firstChild, 0x10509, 4.0f, 0x10083, 4.0f);
    func_800A9F98(0x10509, 4.0f);
    func_800AF27C();
    func_800AA018(0x10507);
    func_800AA018(0x10508);
    D_800E9560[omCurrentObj->objId] = 0;
    while (D_800E9560[omCurrentObj->objId] < 6) {
        func_801DF768_ovl17((D_800D7170 * 1.8f) * 3.0f);
        ohSleep(1);
        D_800E9560[omCurrentObj->objId] += 1;
    }
    ohSleep(0xC2);
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800EA520[omCurrentObj->objId] = 0x3C;
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801DE3D4_ovl17(struct GObj *arg0) {
    struct DObj *temp_v0;

    temp_v0 = D_800DFBD0[omCurrentObj->objId][0x19];
    if (temp_v0 != NULL) {
        temp_v0->flags = 0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_2/func_801DE40C_ovl17.s")

void func_801DE74C_ovl17(struct GObj *arg0) {
    struct DObj *temp_v0;
    s32 temp_a1;

    temp_v0 = D_800DFBD0[omCurrentObj->objId][0x19];
    if (temp_v0 != NULL) {
        temp_v0->flags = 0;
    }
    if (D_800E93A0[omCurrentObj->objId] > 0) {
        func_801DF768_ovl17(-(D_800D7170 * D_801E55EC_ovl17) * 3.0f);
        D_800E93A0[omCurrentObj->objId] -= 1;
    }
    temp_a1 = D_800EA360[omCurrentObj->objId];
    if (temp_a1 > 0) {
        D_800EA360[omCurrentObj->objId] = temp_a1 - 1;
        func_800A9EA4(0x10502, temp_a1);
        return;
    }
    func_800A9EA4(0x10504, temp_a1);
}

void func_801DE850_ovl17(struct GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801DE9A8_ovl17;
    D_800D7098.unk0 = 1;
    func_800AA018(0x10506);
    play_sound(0x2A);
    func_800FD570(0, 2, 0.0f, 0.0f, 0.0f);
    func_801AE7E0_ovl7(0x11);
    func_800BB468(3, 0);
    D_800EA1A0[omCurrentObj->objId] = 0;
    func_8019F1EC_ovl7();
    func_800AA608(arg0->data.dobj->firstChild, 0x10505, 4.0f, 0x10083, 4.0f);
    func_800A9F98(0x10505, 4.0f);
    ohSleep(0x12);
    play_sound(0x25D);
    ohSleep(0x2D);
    func_800F6C88();
    play_music(0, 0x99999999);
    ohSleep(0xFA);
    auFunc80020C88();
    ohSleep(-0x15);
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    curObjSleepForever();
}

void func_801DE9A8_ovl17(struct GObj *arg0) {
    struct DObj *temp_v0;

    temp_v0 = D_800DFBD0[omCurrentObj->objId][0x19];
    if (temp_v0 != NULL) {
        temp_v0->flags = 0;
    }
    func_801DFABC_ovl17();
    func_801E069C_ovl17();
    func_801E0704_ovl17();
    D_801E5700_ovl17 = (D_800D7170 * 0.09f) * 0.3f;
    D_801E5704_ovl17 = (D_800D7170 * 1.8f) * 0.3f;
    func_801DEA5C_ovl17();
    func_801E073C_ovl17();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_2/func_801DEA5C_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_2/func_801DF768_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_2/func_801DFABC_ovl17.s")

void func_801E069C_ovl17(void) {
    struct DObj *temp_v0;
    s32 temp_a0;

    temp_v0 = D_800DFBD0[omCurrentObj->objId][0x1E];
    if (temp_v0 != NULL) {
        temp_a0 = D_800EA1A0[omCurrentObj->objId];
        if (temp_a0 <= 0) {
            temp_v0->scale.v.y = 0.0f;
            return;
        }
        temp_v0->scale.v.y = temp_a0 * D_801E567C_ovl17;
    }
}

void func_801E0704_ovl17(void) {
    struct DObj *temp_v0;

    temp_v0 = D_800DFBD0[omCurrentObj->objId][0x1D];
    if (temp_v0 != NULL) {
        temp_v0->flags = 2;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_2/func_801E073C_ovl17.s")

void func_801E0A74_ovl17(void) {
    s32 temp_v0;

    temp_v0 = request_track_general(0x19, 0x1E, 0x50);
    D_800E76C0[temp_v0] = 0xFF;
    D_800E7730[temp_v0] = 2;
    D_800E77A0[temp_v0] = 6;
    D_800E7880[temp_v0] = 0;
    gEntitiesNextPosXArray[temp_v0] = 0.0f;
    gEntitiesPosXArray[temp_v0] = 0.0f;
    gEntitiesNextPosYArray[temp_v0] = 0.0f;
    gEntitiesPosYArray[temp_v0] = 0.0f;
    gEntitiesNextPosZArray[temp_v0] = 0.0f;
    gEntitiesPosZArray[temp_v0] = 0.0f;
    D_800E8E60[temp_v0] = 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_2/func_801E0B38_ovl17.s")
