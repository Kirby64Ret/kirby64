#include <ultra64.h>
#include <macros.h>
#include "common.h"
#include "GObj.h"

extern s32 D_8012E860;

extern void func_800B1900(s32);
extern void func_80111C4C(s32);
extern s32 func_80168408_ovl3(s32, s32, f32);
#include "Player.h"
#include "track_arrays.h"
#include "ovl1/track.h"
#include "ovl1/util.h"

extern char D_80197028_ovl3[];

extern void func_800A22D4(s32);
extern s32 func_800A8100(s32, s32, s32, struct DObj *);
extern char D_80196FF0_ovl3[];
extern f32 D_8019715C_ovl3;

extern void func_800AECC0(f32);
extern void func_800AED20(f32);
extern void func_80164130_ovl3(struct GObj *);
extern void func_800B4B9C(s32);
extern void func_800AA154(s32);
extern void func_800A9864(s32, s32, s32);
extern void func_801230E8(s32, s32, s32);
extern void func_801654CC_ovl3(s32);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015AC90_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015ADF8_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015B060_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015B190_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015B75C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015BBE4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015C00C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015C7F4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015CC84_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015CF9C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015D3C8_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015D7A0_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015DBE4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015E43C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015E754_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015E8E0_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015ED2C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015F950_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015FD58_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80160378_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_801606A0_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80160A50_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80160D84_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80161058_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_801614D8_ovl3.s")

void func_80161CE0_ovl3(s32 arg0) {
    s32 id = D_800E0D50[omCurrentObj->objId];

    D_800E5F90[omCurrentObj->objId] = D_800E5F90[id];
    D_800E6D90[omCurrentObj->objId] = D_800E6BD0[omCurrentObj->objId] = D_800E6BD0[id];
    D_800E6A10[omCurrentObj->objId] = D_800E6A10[id];
    gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[id];
}

#include "unk_structs/D_80129114.h"

#ifdef MIPS_TO_C
/* 66/75: one instruction long -- IDO materialises &omCurrentObj with lui+addiu
   where the ROM uses lui+lw straight into $v0; everything after shifts. */
void func_80161D94_ovl3(void) {
    f32 *p;
    f32 v;

    D_800E6310[omCurrentObj->objId] = 0;
    p = &D_800E6BD0[omCurrentObj->objId];
    if (D_80129114->unk4[D_800E5F90[omCurrentObj->objId]].unkE != 0) {
        v = *p;
        if (1.0f < v) {
            *p = v - 1.0f;
            return;
        }
        if (v < 0.0f) {
            *p = v + 1.0f;
        }
        return;
    }
    v = *p;
    if (1.0f < v) {
        *p = 1.0f;
        D_800E6310[omCurrentObj->objId]++;
        return;
    }
    if (v < 0.0f) {
        *p = 0.0f;
        D_800E6310[omCurrentObj->objId]++;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80161D94_ovl3.s")
#endif

void func_800B2340(Vector *, s32, s32);
void func_800F98EC(s32, f32);
void func_800F8E6C(void);

#ifdef MIPS_TO_C
/* 38/79: stack layout and code are exact; IDO keeps the merged omCurrentObj
   value in $v0 where the ROM uses $a0 (one-slot allocator offset). */
void func_80161EC0_ovl3(s32 arg0, f32 arg1, f32 arg2) {
    Vector sp24;

    if (arg0 != 0) {
        func_800B2340(&sp24, arg0, D_800E0D50[omCurrentObj->objId]);
    } else {
        sp24.y = gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]];
    }
    gEntitiesNextPosXArray[omCurrentObj->objId] = 0.0f;
    gEntitiesNextPosYArray[omCurrentObj->objId] = sp24.y + arg2;
    gEntitiesNextPosZArray[omCurrentObj->objId] = 0.0f;
    if (D_800E6A10[omCurrentObj->objId] == -1.0f) {
        arg1 = -arg1;
    }
    if (arg1 != 0.0f) {
        func_800F98EC(omCurrentObj->objId, arg1);
    }
    func_800F8E6C();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80161EC0_ovl3.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80162000_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80162150_ovl3.s")

void func_801625B8_ovl3(f32 *arg0) {
    s32 temp = request_track_general(0x15, 0x3C, 0x50);

    if (temp == -1) {
        utilPrintf(D_80196FF0_ovl3);
        return;
    }
    gEntitiesNextPosXArray[temp] = arg0[0];
    gEntitiesNextPosYArray[temp] = arg0[1];
    gEntitiesNextPosZArray[temp] = arg0[2];
    gEntityFuncListIDArray[temp] = 3;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8016264C_ovl3.s")

s32 func_801632B8_ovl3(s32 arg0) {
    s32 temp = request_track_general(0x14, 4, 0xE);

    if (temp == -1) {
        utilPrintf(D_80197028_ovl3);
    } else {
        gEntityFuncListIDArray[temp] = arg0;
    }
    return temp;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80163320_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_801634D4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_801636A4_ovl3.s")

extern f32 D_80197150_ovl3;
extern f32 D_80197158_ovl3;
extern void func_800AA018(s32);

void func_80163AC0_ovl3(s32 arg0) {
    f32 temp = D_80197150_ovl3;

    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesNextPosYArray[omCurrentObj->objId] =
        gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]] + D_800EC660[omCurrentObj->objId];
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[D_800E0D50[omCurrentObj->objId]];
    func_800A9864(0x20006, 0x1869F, 0x10);
    if (D_800EC2E0[omCurrentObj->objId].as_s32 == 0) {
        func_800AA018(0x2000F);
        func_800AA154(0x2000E);
    } else {
        func_800AA018(0x2000B);
        func_800AA154(0x2000A);
    }
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

extern f32 D_80197154_ovl3;

void func_80163C48_ovl3(s32 arg0) {
    f32 temp;

    gEntitiesNextPosXArray[omCurrentObj->objId] = gKirbyState.unk144;
    gEntitiesNextPosYArray[omCurrentObj->objId] = gKirbyState.unk148;
    gEntitiesNextPosZArray[omCurrentObj->objId] = gKirbyState.unk14C;
    if (gKirbyState.abilityInUse != 0xF) {
        func_800A9864(0x20004, 0x1869F, 0x10);
        func_800AA018(0x20004);
        func_800AA154(0x20003);
    } else {
        temp = D_80197154_ovl3;
        gEntitiesScaleXArray[omCurrentObj->objId] = temp;
        gEntitiesScaleYArray[omCurrentObj->objId] = temp;
        gEntitiesScaleZArray[omCurrentObj->objId] = temp;
        func_800A9864(0x20005, 0x1869F, 0x10);
        func_800AA018(0x20008);
        func_800AA154(0x20007);
    }
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

#include "DObj.h"
extern struct GObjProcess *gEntityGObjProcessArray5[];
void func_800B491C(GObj *);
void procMainStub(GObj *);
void setProcessMain(struct GObjProcess *, void (*)(GObj *));

void func_80163D84_ovl3(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B491C;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    func_800A9864(0x100D7, 0x1869F, 0x10);
    arg0->data.dobj->pos.v.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    arg0->data.dobj->pos.v.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    arg0->data.dobj->pos.v.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    arg0->data.dobj->angle.v.x = 0.0f;
    arg0->data.dobj->angle.v.y = 0.0f;
    arg0->data.dobj->angle.v.z = 0.0f;
    arg0->data.dobj->scale.v.x = 1.0f;
    arg0->data.dobj->scale.v.y = 1.0f;
    arg0->data.dobj->scale.v.z = 1.0f;
    func_800AA018(0x10611);
    func_800AA154(0x10610);
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

void func_80163ED0_ovl3(s32 arg0) {
    f32 temp = D_80197158_ovl3;

    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesNextPosYArray[omCurrentObj->objId] =
        gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]] + D_800EC660[omCurrentObj->objId];
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[D_800E0D50[omCurrentObj->objId]];
    func_800A9864(0x20006, 0x1869F, 0x10);
    if (D_800EC2E0[omCurrentObj->objId].as_s32 == 0) {
        func_800AA018(0x2000D);
        func_800AA154(0x2000C);
    } else {
        func_800AA018(0x2000B);
        func_800AA154(0x2000A);
    }
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

void func_80164058_ovl3(s32 arg0) {
    s32 sp20[0x40];
    f32 temp = D_8019715C_ovl3;

    D_800E98E0[omCurrentObj->objId] = (s32) sp20;
    D_800DF150[omCurrentObj->objId] = func_80164130_ovl3;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    func_800A9864(0x20042, 0x22, 0x10);
    func_801230E8(0x20292, 0x20293, 1);
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80164130_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80164320_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_801644EC_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_801646A4_ovl3.s")

void func_80164890_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            D_800EA520[omCurrentObj->objId] = func_800A8100(1, 1, 0x28, D_800DFBD0[omCurrentObj->objId][1]);
        }
    }
}

void func_80164914_ovl3(s32 arg0) {
    if (gKirbyState.action != 0x1A) {
        if (D_800EA520[omCurrentObj->objId] != 0) {
            func_800A22D4(D_800EA520[omCurrentObj->objId]);
        }
        func_800B1900(omCurrentObj->objId & 0xFFFF);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80164980_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80164EA8_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_801651FC_ovl3.s")

void func_801653AC_ovl3(s32 arg0) {
    if ((gKirbyState.unk30 != 0) || (gKirbyState.action != 0xE)) {
        func_800B1900(((u16 *) omCurrentObj)[1]);
    }
}

void func_801653F4_ovl3(s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B4B9C;
    D_800DF150[omCurrentObj->objId] = func_801654CC_ovl3;
    if (D_800EC2E0[omCurrentObj->objId].as_s32 == 0) {
        func_800A9864(0x20050, 0x22, 0x10);
        func_800AA154(0x202B5);
    } else {
        func_800A9864(0x20051, 0x22, 0x10);
        func_801230E8(0x202B7, 0x202B8, 1);
    }
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

void func_801654CC_ovl3(s32 arg0) {
    if (D_8012E860 == 0) {
        func_800B1900(((u16 *) omCurrentObj)[1]);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80165504_ovl3.s")

extern f32 D_801968D8_ovl3[];
extern s32 D_80191C00_ovl3[];
extern s32 D_801954F4_ovl3[];
extern f32 D_801953F4_ovl3[][4];
extern f32 D_80198700_ovl3[][4];
extern s32 D_80197DDC_ovl3[][8];
extern f32 D_80198540_ovl3[][8];
extern void func_80155D50_ovl3(f32 *, s32, s32, s32);
s32 func_8016854C_ovl3(s32, s32, f32);
s32 func_80152070_ovl3(f32 (*)[4], f32 (*)[4], u8, f32);

void func_801657BC_ovl3(s32 arg0) {
    f32 val;

    if (D_8012E860 != 0) {
        val = D_801968D8_ovl3[D_800E98E0[omCurrentObj->objId]];
        if (val != 0.0f) {
            gEntitiesAngleYArray[omCurrentObj->objId] = 0.0;
            func_8016854C_ovl3((s32) D_80191C00_ovl3, 0, D_801968D8_ovl3[D_800E98E0[omCurrentObj->objId]]);
            gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[D_800E0D50[omCurrentObj->objId]];
            func_80152070_ovl3(D_801953F4_ovl3, D_80198700_ovl3, 0x10,
                               D_801968D8_ovl3[D_800E98E0[omCurrentObj->objId]]);
            func_80155D50_ovl3(D_80198540_ovl3[omCurrentObj->objId - 60], (s32) D_801954F4_ovl3, 0,
                               omCurrentObj->objId);
        } else {
            D_80197DDC_ovl3[omCurrentObj->objId][0] = 0;
        }
    } else {
        func_800B1900(((u16 *) omCurrentObj)[1]);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8016593C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80165CD8_ovl3.s")

extern f32 D_8012E7FC[];
extern f32 D_80197188_ovl3;
extern void func_80166210_ovl3(struct GObj *);
void curObjSleepForever(void);

void func_801660F4_ovl3(s32 arg0) {
    D_800E0650[omCurrentObj->objId] = 1;
    D_800DF150[omCurrentObj->objId] = func_80166210_ovl3;
    gEntitiesScaleZArray[omCurrentObj->objId] = gEntitiesScaleYArray[omCurrentObj->objId] =
        gEntitiesScaleXArray[omCurrentObj->objId] = D_8012E7FC[1] * D_80197188_ovl3;
    func_800AECC0(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
    func_800AED20(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
    func_800A9864(0x2004E, 0x22, 0x10);
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80166210_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80166588_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80166768_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80166BB4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80166E2C_ovl3.s")

extern f32 D_801971A4_ovl3;
void func_800B5094(GObj *);
void func_80167290_ovl3(s32);

void func_8016714C_ovl3(s32 arg0) {
    f32 temp = D_801971A4_ovl3;

    D_800DEF90[omCurrentObj->objId] = func_800B5094;
    D_800E0F10[omCurrentObj->objId] = 2;
    D_800DF150[omCurrentObj->objId] = func_80167290_ovl3;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    func_800AECC0(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
    func_800AED20(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
    func_800A9864(0x20054, 0x22, 0x10);
    func_801230E8(0x202BF, 0x202C0, 1);
    curObjSleepForever();
}

void func_80167290_ovl3(s32 arg0) {
    if (D_8012E860 != 0) {
        func_800AECC0(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
        func_800AED20(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
    } else {
        func_800B1900(((u16 *) omCurrentObj)[1]);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80167330_ovl3.s")

typedef struct Unk800E9FE0 {
    void *unk0;
    u16 unk4;
} Unk800E9FE0;

extern char D_80192170_ovl3[];
extern s32 D_80196154_ovl3[];
extern f32 D_80198540_ovl3[][8];
extern s32 func_80111A04(char *, s32);
extern void func_800A7870(void **, u16 *);
extern void func_80155D50_ovl3(f32 *, s32, s32, s32);

void func_80167578_ovl3(s32 arg0) {
    Unk800E9FE0 *sound;

    if (D_8012E860 == 0) {
        sound = D_800E9FE0[omCurrentObj->objId].as_ptr;
        if (sound->unk0 != NULL) {
            func_800A7870(&sound->unk0, &sound->unk4);
        }
        func_800B1900(omCurrentObj->objId & 0xFFFF);
    } else if (D_800EC2E0[omCurrentObj->objId].as_s32 == 0) {
        gEntitiesAngleYArray[omCurrentObj->objId] = 0.0f;
        func_80111C4C(func_80111A04(D_80192170_ovl3, omCurrentObj->objId));
        gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[D_800E0D50[omCurrentObj->objId]];
        func_80155D50_ovl3(D_80198540_ovl3[omCurrentObj->objId - 60], (s32) D_80196154_ovl3, 0, omCurrentObj->objId);
    }
}

extern f32 D_801971A8_ovl3;
void func_800B5064(GObj *);
s32 func_800A8234(s32, s32, s32);
void func_80167800_ovl3(s32);

void func_8016769C_ovl3(s32 arg0) {
    f32 temp = D_801971A8_ovl3;

    D_800DEF90[omCurrentObj->objId] = func_800B5064;
    D_800E0F10[omCurrentObj->objId] = 2;
    D_800DF150[omCurrentObj->objId] = func_80167800_ovl3;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    func_800A9864(0x2005C, 0x22, 0x10);
    D_800EA520[omCurrentObj->objId] = func_800A8234(2, 1, 0x15);
    func_800AECC0(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
    func_800AED20(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
    func_800AA018(0x202CD);
    curObjSleepForever();
}

typedef struct Unk80167800 {
    u32 unk0;
    f32 unk4;
    f32 unk8;
    f32 unkC;
} Unk80167800;

extern char D_80191EE4_ovl3[];
extern s32 D_801962D8_ovl3[];

void func_80167800_ovl3(s32 arg0) {
    GObj *obj;

    if ((gKirbyState.abilityInUse == 0) || ((gKirbyState.unk44 != 4) && (gKirbyState.unk44 != 5))) {
        func_800A22D4(D_800EA520[omCurrentObj->objId]);
        func_800B1900(((u16 *) omCurrentObj)[1]);
    } else {
        obj = (GObj *) D_800EA520[omCurrentObj->objId];
        ((Unk80167800 *) obj->unk4C)->unk4 = gEntitiesNextPosXArray[omCurrentObj->objId];
        ((Unk80167800 *) obj->unk4C)->unk8 = gEntitiesNextPosYArray[omCurrentObj->objId];
        ((Unk80167800 *) obj->unk4C)->unkC = gEntitiesNextPosZArray[omCurrentObj->objId];
        gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[D_800E0D50[omCurrentObj->objId]];
        func_80111C4C(func_80111A04(D_80191EE4_ovl3, omCurrentObj->objId));
        func_80155D50_ovl3(D_80198540_ovl3[omCurrentObj->objId - 60], (s32) D_801962D8_ovl3, 0, omCurrentObj->objId);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80167974_ovl3.s")

void func_80167B48_ovl3(s32 arg0) {
    if (D_8012E860 == 0) {
        func_800B1900(((u16 *) omCurrentObj)[1]);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80167B80_ovl3.s")

void func_80167CCC_ovl3(s32 arg0) {
    if (D_8012E860 == 0) {
        func_800B1900(((u16 *) omCurrentObj)[1]);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80167D04_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80167F54_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80168408_ovl3.s")

s32 func_8016854C_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    s32 temp = func_80168408_ovl3(arg0, arg1, arg2);

    if (temp != 0) {
        func_80111C4C(temp);
    }
    return temp;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8016858C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_801693C4_ovl3.s")

