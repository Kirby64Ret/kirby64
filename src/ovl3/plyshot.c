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

typedef struct Unk80197BF0 {
    u16 unk0;
    u8 unk2[0x56];
} Unk80197BF0;

extern Unk80197BF0 D_80197BF0_ovl3[];
extern FUNCLIST D_801966F0_ovl3;

void func_8015AC90_ovl3(s32 arg0) {
    Unk80197BF0 *p;
    GObj *obj = omCurrentObj;

    D_800E0650[obj->objId] = 0;
    p = &D_80197BF0_ovl3[obj->objId - 4];
    p->unk0 = (p->unk0 & 7) | 0x7FF8;
    D_800E10D0[obj->objId] = D_800E10D0[D_800E0D50[obj->objId]];
    D_800E1290[obj->objId] = D_800E1290[D_800E0D50[obj->objId]];
    D_800E1450[obj->objId] = D_800E1450[D_800E0D50[obj->objId]];
    D_800E8920[obj->objId] = 0;
    D_800E8760[obj->objId] = 0;
    D_800E83E0[obj->objId] = D_800E8760[obj->objId];
    utilFuncTableJump(gEntityFuncListIDArray[obj->objId], 0xC, D_801966F0_ovl3);
}

extern void func_80161CE0_ovl3();
extern void func_80161EC0_ovl3(s32, f32, f32);
extern void func_800AA018(s32);
extern void func_800B49F8(struct GObj *);
extern void func_8015B060_ovl3(s32);
extern void func_80154648_ovl3(s32, f32 *, f32 *);
extern void play_sound(s32);
extern void ohSleep(s32);
extern f32 **D_80192B5C_ovl3;
extern f32 D_80197F60_ovl3[][23];
extern f32 D_801982F8_ovl3[][8];
extern f32 D_80197050_ovl3;

void func_8015ADF8_ovl3(s32 arg0) {
    f32 temp;

    func_80161CE0_ovl3(arg0);
    func_80161EC0_ovl3(D_800EC2E0[omCurrentObj->objId].as_s32, 20.0f, 0.0f);
    D_800DEF90[omCurrentObj->objId] = func_800B49F8;
    D_800DF150[omCurrentObj->objId] = func_8015B060_ovl3;
    D_800E0490[omCurrentObj->objId] = &D_80192B5C_ovl3;
    func_80154648_ovl3(D_800E0D50[omCurrentObj->objId], D_80197F60_ovl3[omCurrentObj->objId - 4],
                       D_801982F8_ovl3[omCurrentObj->objId - 4]);
    play_sound(4);
    temp = D_80197050_ovl3;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    func_800A9864(0x20001, 0x21, 0x10);
    func_800AA018(0x20001);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 12.0f;
    D_800E6850[omCurrentObj->objId] = 12.0f;
    ohSleep(2);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 8.0f;
    ohSleep(2);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 6.0f;
    ohSleep(2);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
    ohSleep(2);
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

extern s32 func_8015550C_ovl3(f32 *, f32 *);
extern void func_800FD754(s32, f32, f32, f32);
extern s32 func_801117BC(char *, s32);
extern char D_80190B28_ovl3[];

void func_8015B060_ovl3(s32 arg0) {
    s32 temp;

    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId];
    if (D_800E6310[omCurrentObj->objId] == 0) {
        if (D_800E83E0[omCurrentObj->objId] == 0) {
            temp = func_8015550C_ovl3(D_80197F60_ovl3[omCurrentObj->objId - 4],
                                      D_801982F8_ovl3[omCurrentObj->objId - 4]);
            if ((D_800E8920[omCurrentObj->objId] == 0) && (temp == 0)) {
                func_80111C4C(func_801117BC(D_80190B28_ovl3, omCurrentObj->objId));
                return;
            }
        }
        func_800FD754(5, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId],
                      gEntitiesNextPosZArray[omCurrentObj->objId]);
    }
    func_800B1900((u16) omCurrentObj->objId);
}

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

extern void func_80162150_ovl3();
extern s32 func_80162000_ovl3(char *, s32, f32);
extern void func_800A7F74(u32, u32, u16, f32, f32, f32);
extern char D_80190D4C_ovl3[];

void func_8015E754_ovl3(s32 arg0) {
    s32 temp;
    s32 cnt;

    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId];
    if ((D_800E6310[omCurrentObj->objId] == 0) && (D_800E83E0[omCurrentObj->objId] == 0)) {
        cnt = D_800E9720[omCurrentObj->objId]--;
        if (cnt != 0) {
            temp = func_8015550C_ovl3(D_80197F60_ovl3[omCurrentObj->objId - 4],
                                      D_801982F8_ovl3[omCurrentObj->objId - 4]);
            func_80162150_ovl3();
            if ((temp == 0) && (D_800E8920[omCurrentObj->objId] == 0)) {
                func_80162000_ovl3(D_80190D4C_ovl3, (s32) D_800DFBD0[omCurrentObj->objId][1], 1.0f);
                return;
            }
        }
    }
    play_sound(0x225);
    func_800A7F74(2, 1, 0x43, gEntitiesNextPosXArray[omCurrentObj->objId],
                  gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

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

void func_80161D94_ovl3(void) {
    GObj *obj = omCurrentObj;
    f32 *p;
    f32 v;

    D_800E6310[obj->objId] = 0;
    if (D_80129114->unk4[D_800E5F90[obj->objId]].unkE != 0) {
        p = &D_800E6BD0[obj->objId];
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
    p = &D_800E6BD0[obj->objId];
    v = *p;
    if (1.0f < v) {
        *p = 1.0f;
        D_800E6310[obj->objId]++;
        return;
    }
    if (v < 0.0f) {
        *p = 0.0f;
        D_800E6310[obj->objId]++;
    }
}

void func_800B2340(Vector *, s32, s32);
void func_800F98EC(s32, f32);
void func_800F8E6C(GObj *);

void func_80161EC0_ovl3(s32 arg0, f32 arg1, f32 arg2) {
    Vector sp24;

    if (arg0 != 0) {
        func_800B2340(&sp24, arg0, D_800E0D50[omCurrentObj->objId]);
    } else {
        sp24.y = gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]];
    }
    gEntitiesNextPosXArray[omCurrentObj->objId] = 0.0;
    gEntitiesNextPosYArray[omCurrentObj->objId] = sp24.y + arg2;
    gEntitiesNextPosZArray[omCurrentObj->objId] = 0.0;
    if (D_800E6A10[omCurrentObj->objId] == -1.0f) {
        arg1 = -arg1;
    }
    if (arg1 != 0.0f) {
        func_800F98EC(omCurrentObj->objId, arg1);
    }
    func_800F8E6C(omCurrentObj);
}

typedef struct Unk80162000 {
    u8 pad0[4];
    u8 unk4;
    u8 pad5[3];
    s32 unk8;
    f32 unkC;
    f32 unk10;
    f32 unk14;
    f32 unk18;
    f32 unk1C;
    f32 unk20;
    f32 unk24;
} Unk80162000;

typedef struct Unk80162000Hdr {
    u8 pad0[0x1C];
    s32 unk1C;
    Unk80162000 *unk20;
} Unk80162000Hdr;

s32 func_80162000_ovl3(char *arg0, s32 arg1, f32 arg2) {
    Unk80162000 *p;
    Unk80162000Hdr *hdr;
    s32 i;

    if (arg2 == 0.0f) {
        return 0;
    }
    hdr = (Unk80162000Hdr *) func_801117BC(arg0, omCurrentObj->objId);
    i = 0;
    p = hdr->unk20;
    for (; i < hdr->unk1C; i++) {
        if (arg2 != 1.0f) {
            switch (p->unk4) {
            case 1:
                p->unk18 = p->unk18 * arg2;
                break;
            case 2:
                p->unkC = p->unkC * arg2;
                p->unk10 = p->unk10 * arg2;
                p->unk14 = p->unk14 * arg2;
                p->unk18 = p->unk18 * arg2;
                p->unk1C = p->unk1C * arg2;
                p->unk20 = p->unk20 * arg2;
                p->unk24 = p->unk24 * arg2;
                break;
            }
        }
        if (p->unk8 == 0) {
            if (arg1 != 0) {
                p->unk8 = arg1;
            }
        }
        p++;
    }
    func_80111C4C((s32) hdr);
    return (s32) hdr;
}

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

extern void func_8015488C_ovl3(s32, f32 *);
extern FUNCLIST D_801967F0_ovl3;
extern f32 D_80198540_ovl3[][8];

void func_80163320_ovl3(s32 arg0) {
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_8015488C_ovl3(omCurrentObj->objId, D_80198540_ovl3[omCurrentObj->objId - 60]);
    D_800E0650[omCurrentObj->objId] = 0;
    D_800E10D0[omCurrentObj->objId] = D_800E10D0[D_800E0D50[omCurrentObj->objId]];
    D_800E1290[omCurrentObj->objId] = D_800E1290[D_800E0D50[omCurrentObj->objId]];
    D_800E1450[omCurrentObj->objId] = D_800E1450[D_800E0D50[omCurrentObj->objId]];
    D_800E6A10[omCurrentObj->objId] = D_800E6A10[D_800E0D50[omCurrentObj->objId]];
    D_800E6BD0[omCurrentObj->objId] = D_800E6BD0[D_800E0D50[omCurrentObj->objId]];
    D_800E8760[omCurrentObj->objId] = 0;
    D_800E83E0[omCurrentObj->objId] = D_800E8760[omCurrentObj->objId];
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 0x16, D_801967F0_ovl3);
}

typedef struct Unk80196848 {
    s32 unk0;
    s32 unk4;
} Unk80196848;

extern Unk80196848 D_80196848_ovl3[];
extern f32 D_8019714C_ovl3;
extern void func_800A77E8(s32, s32 *, s32 *);
extern s32 func_800A8234(s32, s32, s32);
void func_800B5094(GObj *);
void curObjSleepForever(void);
void func_801636A4_ovl3(s32);

void func_801634D4_ovl3(s32 arg0) {
    f32 temp;
    s32 sp28;
    s32 sp24;

    D_800DEF90[omCurrentObj->objId] = func_800B5094;
    D_800E0F10[omCurrentObj->objId] = 8;
    D_800DF150[omCurrentObj->objId] = func_801636A4_ovl3;
    D_800E9720[omCurrentObj->objId] = -1;
    D_800E8AE0[omCurrentObj->objId] = D_800E8AE0[D_800E0D50[omCurrentObj->objId]];
    if (D_800E8AE0[omCurrentObj->objId] & 6) {
        arg0 = 1;
    } else {
        arg0 = 0;
    }
    D_800E9FE0[omCurrentObj->objId].as_ptr = &sp24;
    func_800A77E8(D_80196848_ovl3[arg0].unk0, &sp24, &sp28);
    arg0 = func_800A8234(1, 1, D_80196848_ovl3[arg0].unk4);
    temp = D_8019714C_ovl3;
    D_800EA520[omCurrentObj->objId] = arg0;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    func_800A9864(0x20041, 0x22, 0x10);
    func_801230E8(0x2028B, 0x2028C, 1);
    func_801230E8(0x2028D, 0x2028E, 0);
    curObjSleepForever();
}

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

#ifdef NON_MATCHING
/* 3/124: everything matches except the scratch register IDO picks for the
   D_800E98E0 base -- the ROM materialises it in $t0 and loads the value into
   $a1, IDO uses $a1 for both.  Levers already applied to get here: `s32 kind`
   for the switch value (8 -> 3), the chained `p[2] = ...` inside the call
   argument (10 -> 8) and `f32 temp` declared FIRST (frame 0x30 -> 0x28).
   Swept with no effect: a local for the loaded value, for the divide and for
   objId, *(p+2), ((s32 *) D_800E98E0)[i], and s32/void return types on
   func_80111C4C / func_80152070_ovl3 / func_80155D50_ovl3. */
extern char D_80191268_ovl3[];
extern char D_80191288_ovl3[];
extern char D_801912A8_ovl3[];
extern s32 D_80193C40_ovl3[];
extern s32 D_80193C4C_ovl3[];
extern s32 D_80193C58_ovl3[];
extern f32 D_80193B40_ovl3[][4];

void func_80164130_ovl3(struct GObj *arg0) {
    extern f32 D_80198540_ovl3[][8];
    s32 func_80111A04(char *, s32);
    s32 func_80152070_ovl3(f32 (*)[4], f32 (*)[4], u8, f32);
    void func_80155D50_ovl3(f32 *, s32, s32, s32);
    f32 temp;
    s32 *p;
    f32 **h;
    s32 kind;

    gEntitiesAngleYArray[omCurrentObj->objId] = 0.0f;
    temp = D_800DFBD0[omCurrentObj->objId][1]->scale.v.y;
    kind = D_800EC2E0[omCurrentObj->objId].as_s32;
    switch (kind) {
    case 5:
        p = D_80193C40_ovl3;
        h = (f32 **) func_80111A04(D_80191268_ovl3, omCurrentObj->objId);
        break;
    case 0x20:
        p = D_80193C4C_ovl3;
        h = (f32 **) func_80111A04(D_80191288_ovl3, omCurrentObj->objId);
        break;
    default:
        p = D_80193C58_ovl3;
        h = (f32 **) func_80111A04(D_801912A8_ovl3, omCurrentObj->objId);
        break;
    }
    h[8][6] = h[8][6] * temp;
    h[8][3] = gEntitiesNextPosXArray[omCurrentObj->objId];
    h[8][4] = gEntitiesNextPosYArray[omCurrentObj->objId];
    h[8][5] = gEntitiesNextPosZArray[omCurrentObj->objId];
    func_80111C4C((s32) h);
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
    func_80152070_ovl3(D_80193B40_ovl3, (f32 (*)[4]) (p[2] = D_800E98E0[omCurrentObj->objId]), 0x10, temp / 3.0f);
    func_80155D50_ovl3(D_80198540_ovl3[omCurrentObj->objId - 60], (s32) p, 0, omCurrentObj->objId);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80164130_ovl3.s")
#endif
#ifdef NON_MATCHING
/* 1 real diff (the rest of the 58/119 is the resulting one-instruction shift):
   the ROM materialises gPlayerControllers TWICE -- `lui $v0; lhu %lo(...)` for
   the pre-loop read and a separate `lui/addiu $s0` base for the three reads
   inside the loop.  IDO promotes the base in the preheader and uses it for the
   pre-loop read too, so we come out one instruction short.
   Swept with no effect: for-init vs separate statement, `((u16 *) gPC)[0]`,
   vu16 on the pre-loop read only, splitting the mask into its own statement,
   `0x300 & x`, swapping the if/else arms, an explicit `Controller *c` for the
   loop reads (112/118), do{}while(0) and if(1){} block splits (70), an
   intervening call (82). */
extern Controller_800D6FE8 gPlayerControllers[];

void func_80164320_ovl3(s32 arg0) {
    void func_800A9760(s32);
    void func_801644EC_ovl3(s32);
    s32 v;

    D_800DEF90[omCurrentObj->objId] = func_800B4B9C;
    D_800DF150[omCurrentObj->objId] = func_801644EC_ovl3;
    func_800A9864(0x20043, 0x22, 0x10);
    D_800E98E0[omCurrentObj->objId] = 1;
    func_800A9760(0x20044);
    func_800AA018(0x20298);
    while (gKirbyState.unk44 == 0) {
        ohSleep(1);
    }
    v = gPlayerControllers[0].buttonHeld & 0x300;
    for (;;) {
        if (v == 0) {
            D_800E98E0[omCurrentObj->objId] = 0;
            func_800A9760(0x20043);
            func_800AA018(0x20295);
            for (;;) {
                v = gPlayerControllers[0].buttonHeld & 0x300;
                if (v != 0) {
                    break;
                }
                ohSleep(1);
            }
        } else {
            D_800E98E0[omCurrentObj->objId] = 1;
            func_800A9760(0x20044);
            func_800AA018(0x20298);
            for (;;) {
                v = gPlayerControllers[0].buttonHeld & 0x300;
                if (v == 0) {
                    break;
                }
                ohSleep(1);
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80164320_ovl3.s")
#endif
#ifdef NON_MATCHING
/* 69/111: logic decoded and every instruction lines up -- the whole diff is a
   one-instruction shift from the extra `sw $s0, 0x18($sp)`. The ROM uses NO
   callee-saved register at all: it spills `h` to 0x1C($sp) and re-reads
   omCurrentObj->objId. IDO instead parks objId then `h` in $s0.
   Swept: s32 vs f32** for h, `volatile` on the pointer and on the pointee,
   leading and trailing pad locals, an explicit id local. Prototype knobs on
   func_80152070_ovl3/func_80155D50_ovl3/func_80111A04 all collide with the
   file's later declarations and do not compile. */
extern char D_801912EC_ovl3[];
extern f32 D_80193C64_ovl3[][4];
extern f32 D_80198700_ovl3[][4];
extern s32 D_80193D64_ovl3[];
extern s32 func_80152070_ovl3(f32 (*)[4], f32 (*)[4], u8, f32);
extern void func_80155D50_ovl3(f32 *, s32, s32, s32);

void func_801644EC_ovl3(s32 arg0) {
    f32 **h;

    if (D_8012E860 != 0) {
        if (D_800E98E0[omCurrentObj->objId] == 0) {
            h = (f32 **) func_80111A04(D_801912EC_ovl3, omCurrentObj->objId);
            h[8][6] = 85.0f;
            gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[D_800E0D50[omCurrentObj->objId]];
            func_80152070_ovl3(D_80193C64_ovl3, D_80198700_ovl3, 0x10, 1.25f);
        } else {
            h = (f32 **) func_80111A04(D_801912EC_ovl3, omCurrentObj->objId);
            h[8][6] = 45.0f;
            gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[D_800E0D50[omCurrentObj->objId]];
            func_80152070_ovl3(D_80193C64_ovl3, D_80198700_ovl3, 0x10, 0.7f);
        }
        func_80111C4C((s32) h);
        func_80155D50_ovl3(D_80198540_ovl3[omCurrentObj->objId - 60], (s32) D_80193D64_ovl3, 0,
                           omCurrentObj->objId);
        gEntitiesAngleYArray[omCurrentObj->objId] = 0.0f;
    } else {
        func_800B1900(((u16 *) omCurrentObj)[1]);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_801644EC_ovl3.s")
#endif
void func_801646A4_ovl3(s32 arg0) {
    void func_80164914_ovl3(s32);
    void func_800AF27C(void);
    void func_80164890_ovl3(s32, s32, f32);

    D_800EA520[omCurrentObj->objId] = 0;
    D_800DEF90[omCurrentObj->objId] = func_800B4B9C;
    D_800DF150[omCurrentObj->objId] = func_80164914_ovl3;
    func_800AECC0(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
    func_800AED20(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
    switch (D_800EC2E0[omCurrentObj->objId].as_s32) {
    case 0:
        func_800A9864(0x20045, 0x22, 0x10);
        func_800AA154(0x2029B);
        break;
    case 1:
        func_800A9864(0x20045, 0x22, 0x10);
        func_800AA154(0x2029D);
        break;
    case 2:
        func_800A9864(0x20046, 0x22, 0x10);
        func_800AA018(0x2029F);
        D_800DF310[omCurrentObj->objId] = func_80164890_ovl3;
        func_800AF27C();
        if (D_800EA520[omCurrentObj->objId] != 0) {
            func_800A22D4(D_800EA520[omCurrentObj->objId]);
        }
        break;
    }
    func_800B1900((u16) omCurrentObj->objId);
}

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

extern Controller_800D6FE8 gPlayerControllers[];
extern f32 D_80197174_ovl3;
void func_800B5094(GObj *);
void func_801653AC_ovl3(s32);

void func_801651FC_ovl3(s32 arg0) {
    f32 temp = D_80197174_ovl3;

    D_800E0650[omCurrentObj->objId] = 1;
    D_800DEF90[omCurrentObj->objId] = func_800B5094;
    D_800DF150[omCurrentObj->objId] = func_801653AC_ovl3;
    D_800E0F10[omCurrentObj->objId] = 0xE;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    func_800AECC0(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
    func_800AED20(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
    func_800A9864(0x2004B, 0x22, 0x10);
    play_sound(0x23);
    func_800AA154(0x202AA);
    while (gPlayerControllers[0].buttonHeld & 0x400) {
        ohSleep(1);
    }
    func_800AA018(0x202AB);
    func_800AA154(0x202AC);
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

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

extern f32 D_80197194_ovl3;
extern s32 D_801968EC_ovl3[];
void func_800B5094(GObj *);
void func_80166768_ovl3(s32);
void curObjSleepForever(void);

void func_80166588_ovl3(s32 arg0) {
    s32 val;
    s32 sentinel = -1;
    f32 temp = D_80197194_ovl3;

    D_800E0650[omCurrentObj->objId] = 1;
    D_800E98E0[omCurrentObj->objId] = sentinel;
    D_800DEF90[omCurrentObj->objId] = func_800B5094;
    D_800E0F10[omCurrentObj->objId] = 8;
    D_800DF150[omCurrentObj->objId] = func_80166768_ovl3;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    func_800A9864(0x2004F, 0x22, 0x10);
    func_800AECC0(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
    func_800AED20(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
    for (;;) {
        val = gKirbyState.unk44;
        if (sentinel == val) {
            break;
        }
        if (val != D_800E98E0[omCurrentObj->objId]) {
            D_800E98E0[omCurrentObj->objId] = val;
            func_800AA018(D_801968EC_ovl3[val]);
        }
        ohSleep(1);
    }
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80166768_ovl3.s")

extern f32 D_801971A0_ovl3;
void func_80166E2C_ovl3(s32);

void func_80166BB4_ovl3(s32 arg0) {
    f32 temp;

    temp = D_801971A0_ovl3;
    D_800EA520[omCurrentObj->objId] = 0;
    D_800DF150[omCurrentObj->objId] = func_80166E2C_ovl3;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    if (D_800EC2E0[omCurrentObj->objId].as_s32 == 0) {
        D_800E0650[omCurrentObj->objId] = 1;
        func_800AECC0(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
        func_800AED20(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
        D_800E0F10[omCurrentObj->objId] = 2;
        func_800A9864(0x20052, 0x22, 0x10);
        func_800AA154(0x202B9);
        D_800EA520[omCurrentObj->objId] =
            func_800A8100(1, 1, 0x24, D_800DFBD0[D_800E0D50[omCurrentObj->objId]][2]);
        func_800AA018(0x202BA);
        while (gKirbyState.unk44 == 0) {
            ohSleep(1);
        }
        func_800A22D4(D_800EA520[omCurrentObj->objId]);
        D_800EA520[omCurrentObj->objId] = 0;
        if (gKirbyState.unk44 == 5) {
            func_800AA154(0x202BB);
        }
        func_800B1900(((u16 *) omCurrentObj)[1]);
    } else {
        D_800E0F10[omCurrentObj->objId] = 8;
        func_800A9864(0x20053, 0x22, 0x10);
        curObjSleepForever();
    }
}

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

void func_80167330_ovl3(s32 arg0) {
    void func_800A7870(void **, u16 *);
    void func_80167578_ovl3(s32);
    s32 sp2C;
    s32 sp28;

    D_800DEF90[omCurrentObj->objId] = func_800B4B9C;
    D_800DF150[omCurrentObj->objId] = func_80167578_ovl3;
    D_800E9FE0[omCurrentObj->objId].as_ptr = &sp28;
    sp28 = 0;
    switch (D_800EC2E0[omCurrentObj->objId].as_s32) {
    case 0:
        D_800E0650[omCurrentObj->objId] = 1;
        func_800AECC0(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
        func_800AED20(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
        func_800A9864(0x2005A, 0x22, 0x10);
        func_800AA154(0x202C9);
        break;
    case 1:
        func_800A9864(0x2005B, 0x22, 0x10);
        func_800AECC0(D_800E09D0[D_800EBBE0[D_800E0D50[omCurrentObj->objId]]]);
        func_800AED20(D_800E09D0[D_800EBBE0[D_800E0D50[omCurrentObj->objId]]]);
        func_800A77E8(0x3F, &sp28, &sp2C);
        func_801230E8(0x202CB, 0x202CC, 1);
        func_800A7870((void **) &sp28, (u16 *) &sp2C);
        D_800EA520[D_800E0D50[omCurrentObj->objId]]++;
        break;
    }
    func_800B1900((u16) omCurrentObj->objId);
}

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

extern f32 D_801971AC_ovl3;
extern void func_800AF27C(void);
void func_80167B48_ovl3(s32);

void func_80167974_ovl3(s32 arg0) {
    f32 temp;

    D_800DEF90[omCurrentObj->objId] = func_800B5094;
    D_800E0F10[omCurrentObj->objId] = 0xE;
    func_800AECC0(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
    func_800AED20(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
    temp = D_801971AC_ovl3;
    D_800DF150[omCurrentObj->objId] = func_80167B48_ovl3;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    if (2.0f == D_800E09D0[omCurrentObj->objId]) {
        func_800A9864(0x2005D, 0x22, 0x10);
        play_sound(0x11);
        func_801230E8(0x202CF, 0x202D0, 1);
    } else {
        func_800A9864(0x2005E, 0x22, 0x10);
        func_801230E8(0x202D2, 0x202D3, 0);
        ohSleep(5);
        play_sound(0x11);
        func_800AF27C();
    }
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

void func_80167B48_ovl3(s32 arg0) {
    if (D_8012E860 == 0) {
        func_800B1900(((u16 *) omCurrentObj)[1]);
    }
}

extern f32 D_801971B0_ovl3;
void func_80167CCC_ovl3(s32);

void func_80167B80_ovl3(s32 arg0) {
    f32 temp;

    D_800DEF90[omCurrentObj->objId] = func_800B5094;
    D_800E0F10[omCurrentObj->objId] = 0xE;
    func_800AECC0(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
    func_800AED20(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
    temp = D_801971B0_ovl3;
    D_800DF150[omCurrentObj->objId] = func_80167CCC_ovl3;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    func_800A9864(0x2005F, 0x22, 0x10);
    func_800AA154(0x202D5);
    func_800AA018(0x202D4);
    curObjSleepForever();
}

void func_80167CCC_ovl3(s32 arg0) {
    if (D_8012E860 == 0) {
        func_800B1900(((u16 *) omCurrentObj)[1]);
    }
}

extern f32 D_801971B4_ovl3;
extern f32 D_801971B8_ovl3;
extern f32 D_800D7238;
extern void func_800BB468(s32, s32);
void func_80167F54_ovl3(s32);

void func_80167D04_ovl3(s32 arg0) {
    s32 sp2C;
    s32 sp28;

    D_800DF150[omCurrentObj->objId] = func_80167F54_ovl3;
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_ptr = &sp28;
    sp28 = 0;
    switch (D_800EC2E0[omCurrentObj->objId].as_s32) {
    case 0:
        D_800DEF90[omCurrentObj->objId] = func_800B4B9C;
        func_800A9864(0x20043, 0x22, 0x10);
        func_800AA018(0x20295);
        curObjSleepForever();
    case 1:
        D_800DEF90[omCurrentObj->objId] = func_800B4B9C;
        func_800A77E8(0x4E, &sp28, &sp2C);
        func_800A9864(0x20058, 0x22, 0x10);
        func_800AA018(0x202C5);
        curObjSleepForever();
    case 2:
        D_800EA6E0[omCurrentObj->objId] = D_801971B4_ovl3;
        D_800DEF90[omCurrentObj->objId] = func_800B5064;
        D_800E0F10[omCurrentObj->objId] = 2;
        D_800D7238 = D_800EC660[omCurrentObj->objId] * D_801971B8_ovl3;
        gEntitiesScaleXArray[omCurrentObj->objId] = D_800D7238;
        gEntitiesScaleYArray[omCurrentObj->objId] = D_800D7238;
        gEntitiesScaleZArray[omCurrentObj->objId] = D_800D7238;
        func_800BB468(6, 0x10);
        play_sound(0x4F);
        func_800A9864(0x20059, 0x22, 0x10);
        func_801230E8(0x202C7, 0x202C8, 1);
        func_800B1900(((u16 *) omCurrentObj)[1]);
        break;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80167F54_ovl3.s")

typedef struct Unk80168408 {
    u8 pad0[4];
    u8 unk4;
    u8 pad5[3];
    s32 unk8;
    f32 unkC;
    f32 unk10;
    f32 unk14;
    f32 unk18;
    f32 unk1C;
    f32 unk20;
    f32 unk24;
} Unk80168408;

typedef struct Unk80168408Hdr {
    u8 pad0[0x1C];
    s32 unk1C;
    Unk80168408 *unk20;
} Unk80168408Hdr;

s32 func_80168408_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    Unk80168408Hdr *hdr;
    Unk80168408 *p;
    s32 i;

    if (arg2 == 0.0f) {
        return 0;
    }
    hdr = (Unk80168408Hdr *) func_80111A04(arg0, omCurrentObj->objId);
    i = 0;
    p = hdr->unk20;
    for (; i < hdr->unk1C; i++) {
        if (arg2 != 1.0f) {
            switch (p->unk4) {
            case 1:
                p->unk18 = p->unk18 * arg2;
                break;
            case 2:
                p->unkC = p->unkC * arg2;
                p->unk10 = p->unk10 * arg2;
                p->unk14 = p->unk14 * arg2;
                p->unk18 = p->unk18 * arg2;
                p->unk1C = p->unk1C * arg2;
                p->unk20 = p->unk20 * arg2;
                p->unk24 = p->unk24 * arg2;
                break;
            }
        }
        if (p->unk8 == 0) {
            if (arg1 != 0) {
                p->unk8 = arg1;
            }
        }
        p++;
    }
    return (s32) hdr;
}

s32 func_8016854C_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    s32 temp = func_80168408_ovl3(arg0, arg1, arg2);

    if (temp != 0) {
        func_80111C4C(temp);
    }
    return temp;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8016858C_ovl3.s")

extern char D_80197120_ovl3[];

s32 func_801693C4_ovl3(s32 arg0) {
    s32 temp = request_track_general(0x15, 0x3C, 0x50);

    if (temp != -1) {
        gEntityFuncListIDArray[temp] = arg0;
    } else {
        utilPrintf(D_80197120_ovl3);
    }
    return temp;
}

