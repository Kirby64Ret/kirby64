#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "main/object_helpers.h"
#include "main/object_manager.h"
#include "DObj.h"

extern struct {
    u32 unk0_80 : 1;
    u32 unk0_40 : 1;
    u32 unk0_3F : 30;
} D_8012D930;

extern f32 gameTicksPerDrawInv;
extern s32 D_800D6E14;
void func_800AECC0(f32);
void func_800AED20(f32);
extern s32 saveCurrentWorld;
extern s32 saveCurrentLevel;
extern s32 D_800D6B6C[];

struct Unk80124E2E {
    u16 unk0;
    u8 pad[26];
};

extern struct Unk80124E2E D_80124E2E[];

struct Unk80124E14 {
    /* 0x00 */ u32 unk0;
    /* 0x04 */ s32 unk4;
    /* 0x08 */ s32 unk8;
    /* 0x0C */ s32 unkC;
    /* 0x10 */ void (*unk10)(s32);
    /* 0x14 */ void (*unk14)(s32);
    /* 0x18 */ u16 unk18;
    /* 0x1A */ u16 unk1A;
};

extern struct Unk80124E14 D_80124E14[];
extern s32 D_800D6F10;
s32 func_8011E368(void);

struct Unk4C {
    /* 0x00 */ u8 unk0;
    /* 0x01 */ u8 unk1;
    /* 0x02 */ u8 unk2;
    /* 0x03 */ u8 unk3;
};

extern u8 D_8012DA01[];
extern u8 D_8012D891[];

struct Unk80126CD0 {
    u32 unk0;
    u32 unk4;
    u32 unk8;
};

extern struct Unk80126CD0 D_80126CD0[];

extern u8 D_800D6E20[];
extern u32 D_800BE508;
extern s32 D_800D6E18;
void func_800B4924(struct GObj *);
void func_800A9F98(s32, f32);
void func_800FD754(s32, f32, f32, f32);
void func_80114E80(struct DObj *, s32, f32);
f32 func_8011E2A0(void);
void curObjSleepForever(void);
void func_80112B4C(struct GObj *arg0);
void func_8011AE6C(struct GObj *arg0);
s32 request_track_general(s32, s32, s32);
extern s32 D_800D7098[];
extern s32 D_8012D940;
void func_80113F08(struct GObj *);
extern void (*D_801249C0[])(struct GObj *);
void func_80117210(s32);
void func_80115F04(s32);
void func_801173F4(s32);

struct UnkPlane {
    /* 0x00 */ f32 unk0;
    /* 0x04 */ f32 unk4;
    /* 0x08 */ f32 unk8;
    /* 0x0C */ f32 unkC;
};

struct Unk8012D934 {
    /* 0x00 */ f32 unk0[4][4];
    /* 0x40 */ f32 unk40;
    /* 0x44 */ f32 unk44;
    /* 0x48 */ f32 unk48;
    /* 0x4C */ f32 unk4C;
    /* 0x50 */ f32 unk50;
    /* 0x54 */ f32 unk54;
    /* 0x58 */ f32 unk58;
    /* 0x5C */ f32 unk5C;
    /* 0x60 */ struct UnkPlane unk60[2];
    /* 0x80 */ f32 unk80;
    /* 0x84 */ s32 unk84;
};

struct UnkRay {
    /* 0x00 */ s32 unk0;
    /* 0x04 */ f32 unk4;
    /* 0x08 */ f32 unk8;
    /* 0x0C */ f32 unkC;
    /* 0x10 */ f32 unk10;
    /* 0x14 */ f32 unk14;
    /* 0x18 */ f32 unk18;
};

extern struct Unk8012D934 *D_8012D934;

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_80111F10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_80112000.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_801121E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_801123AC.s")

s32 func_80112498(struct UnkRay *arg0) {
    s32 i;
    f32 x = arg0->unk4 + D_8012D934->unk40;
    f32 y = arg0->unk8 + arg0->unk10;
    f32 z = arg0->unkC + D_8012D934->unk44;
    f32 t;
    struct UnkPlane *pl;

    for (i = 0; i < 2; i++) {
        pl = &D_8012D934->unk60[i];
        t = (pl->unk0 * x) + (pl->unk4 * y) + (pl->unk8 * z) + pl->unkC;
        if (t > 0.0f) {
            D_8012D934->unk84 = i;
            D_8012D934->unk80 = t;
            return 1;
        }
    }
    return 0;
}

s32 func_8011253C(struct UnkRay *arg0) {
    f32 dot;
    f32 t;
    struct UnkPlane *pl;

    pl = &D_8012D934->unk60[D_8012D934->unk84];
    dot = (pl->unk0 * -D_8012D934->unk50) + (pl->unk8 * -D_8012D934->unk54);
    t = (dot < 0.0f) ? -dot : dot;
    if (t < 1e-4f) {
        return 0;
    }
    t = -D_8012D934->unk80 / dot;
    arg0->unk4 += -D_8012D934->unk50 * t;
    arg0->unkC += -D_8012D934->unk54 * t;
    return 1;
}

s32 func_80112600(struct UnkRay *arg0) {
    s32 i;
    f32 x = arg0->unk4 + D_8012D934->unk48;
    f32 y = arg0->unk8 + arg0->unk10;
    f32 z = arg0->unkC + D_8012D934->unk4C;
    f32 t;
    struct UnkPlane *pl;

    for (i = 0; i < 2; i++) {
        pl = &D_8012D934->unk60[i];
        t = (pl->unk0 * x) + (pl->unk4 * y) + (pl->unk8 * z) + pl->unkC;
        if (t > 0.0f) {
            D_8012D934->unk84 = i;
            D_8012D934->unk80 = t;
            return 1;
        }
    }
    return 0;
}

// The float literal below lands in this TU's MIGRATED .rodata block, which
// this C file emits. verify.py reports a 1-instruction diff because the object
// references `.rodata + offset` while the ROM references a named symbol; the
// offset is correct and the linked bytes are identical (proved by verify_rom.py
// and by diffing the object's .rodata against the base ROM). Keep the literal.
s32 func_801126A4(struct UnkPlane *arg0) {
    struct UnkPlane *temp_v0;
    f32 temp_f0;
    f32 temp_f12;
    f32 var_f12;

    temp_v0 = &D_8012D934->unk60[D_8012D934->unk84];
    temp_f0 = (temp_v0->unk0 * -D_8012D934->unk58) + (temp_v0->unk8 * -D_8012D934->unk5C);
    if (temp_f0 < 0.0f) {
        var_f12 = -temp_f0;
    } else {
        var_f12 = temp_f0;
    }
    if (var_f12 < 0.0001f) {
        return 0;
    }
    temp_f12 = -D_8012D934->unk80 / temp_f0;
    arg0->unk4 = arg0->unk4 + (-D_8012D934->unk58 * temp_f12);
    arg0->unkC = arg0->unkC + (-D_8012D934->unk5C * temp_f12);
    return 2;
}

s32 func_80112768(struct UnkRay *arg0) {
    f32 x = arg0->unk4;
    f32 y = arg0->unk8 + arg0->unk14;
    f32 z = arg0->unkC;
    struct UnkPlane *pl = &D_8012D934->unk60[0];

    if (((pl->unk0 * x) + (pl->unk4 * y) + (pl->unk8 * z) + pl->unkC) > 0.0f) {
        return 1;
    }
    return 0;
}

s32 func_801127D8(struct UnkRay *arg0) {
    struct UnkPlane *pl = &D_8012D934->unk60[0];

    arg0->unk8 = (-((pl->unk0 * arg0->unk4) + (pl->unk8 * arg0->unkC) + pl->unkC) / pl->unk4) - arg0->unk14;
    return 4;
}

s32 func_80112828(struct UnkRay *arg0) {
    f32 x = arg0->unk4;
    f32 y = arg0->unk8 + arg0->unk18 + 60.0f;
    f32 z = arg0->unkC;
    struct UnkPlane *pl = &D_8012D934->unk60[1];

    if (((pl->unk0 * x) + (pl->unk4 * y) + (pl->unk8 * z) + pl->unkC) > 0.0f) {
        return 1;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_801128A4.s")

void func_801129AC(void) {
    D_8012D930.unk0_80 = 1;
}

void func_801129C4(void) {
    D_8012D930.unk0_80 = 0;
}

void func_801129DC(void) {
    D_8012D930.unk0_40 = 1;
}

void func_801129F4(void) {
    D_8012D930.unk0_40 = 0;
}

void func_80112A0C(void) {
    D_8012D930.unk0_40 = 0;
    D_8012D930.unk0_80 = D_8012D930.unk0_40;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_80112A40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_80112B4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_80112CD4.s")

void func_80112ED4(f32 arg0[4][4], Vector *arg1, Vector *arg2) {
    f32 temp_f0 = arg2->x;
    f32 temp_f2 = arg2->y;
    f32 temp_f12 = arg2->z;

    arg1->x = ((arg0[0][0] * temp_f0) + (arg0[1][0] * temp_f2) + (arg0[2][0] * temp_f12)) + arg0[3][0];
    arg1->y = ((arg0[0][1] * temp_f0) + (arg0[1][1] * temp_f2) + (arg0[2][1] * temp_f12)) + arg0[3][1];
    arg1->z = ((arg0[0][2] * temp_f0) + (arg0[1][2] * temp_f2) + (arg0[2][2] * temp_f12)) + arg0[3][2];
}

void func_80112F70(f32 arg0[4][4], f32 *arg1, s16 *arg2) {
    f32 temp_f0;
    f32 temp_f2;
    f32 temp_f12;

    temp_f0 = arg2[0];
    temp_f2 = arg2[1];
    temp_f12 = arg2[2];
    arg1[0] = ((arg0[0][0] * temp_f0) + (arg0[1][0] * temp_f2) + (arg0[2][0] * temp_f12)) + arg0[3][0];
    arg1[1] = ((arg0[0][1] * temp_f0) + (arg0[1][1] * temp_f2) + (arg0[2][1] * temp_f12)) + arg0[3][1];
    arg1[2] = ((arg0[0][2] * temp_f0) + (arg0[1][2] * temp_f2) + (arg0[2][2] * temp_f12)) + arg0[3][2];
}


#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_80113028.s")

void func_80113300(struct GObj *arg0, s32 arg1) {
    struct DObj *var_v0;
    u32 var_v1;

    var_v0 = omCurrentObj->data.dobj;
    while (var_v0 != NULL) {
        for (var_v1 = 0; var_v1 < var_v0->numMatrices; var_v1++) {
            if (var_v0->matrices[var_v1]->kind == 0x1C) {
                var_v0->matrices[var_v1]->unk05 = arg1;
            }
        }
        if (var_v0->firstChild != NULL) {
            var_v0 = var_v0->firstChild;
        } else if (var_v0->next != NULL) {
            var_v0 = var_v0->next;
        } else {
            while (TRUE) {
                if ((u32) var_v0->parent == 1) {
                    var_v0 = NULL;
                    break;
                }
                if (var_v0->parent->next != NULL) {
                    var_v0 = var_v0->parent->next;
                    break;
                } else {
                    var_v0 = var_v0->parent;
                }
            }
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_801133C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_80113F08.s")

void func_80114974(void) {
    struct GObj *sp1C;

    D_8012D940 = 0;
    sp1C = HS64_omMakeGObj(0, NULL, 2, 0x80000000);
    omCreateProcess(sp1C, func_80113F08, 1, 3);
}

void func_801149C0(struct GObj *arg0) {
    ohSleep(1);
    D_801249C0[D_800E77A0[arg0->objId]](arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_80114A14.s")

void func_80114CCC(void) {
    func_80114974();
    func_800FD088();
}

void func_80114CF4(struct GObj *arg0) {
    struct Unk80126CD0 *sp1C = &D_80126CD0[(s32) arg0->unk4C];

    func_800AF980(0x17);
    func_800A9864(sp1C->unk0, 0x1869F, 0x10);
    omEndProcess(0);
}

s32 func_80114D54(s32 arg0) {
    s32 temp = D_80124E2E[arg0].unk0;

    if (temp != 0) {
        s32 ret = request_track_general(0x1E, 0x1E, 0x3C);

        D_800DE350[ret]->unk4C = (void *) temp;
        return ret;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_80114DBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_80114E80.s")

void func_80115070(struct GObj *arg0) {
    struct Unk80124E14 *temp_s0 = &D_80124E14[D_800E77A0[arg0->objId]];
    s32 temp_a0;

    func_800AF980(0x17);
    func_800A9864(temp_s0->unk4, 0x1869F, 0x10);
    func_800AA018(temp_s0->unk8);
    temp_a0 = temp_s0->unkC;
    if (temp_a0 != 0) {
        func_800AA018(temp_a0);
    }
    D_800DEF90[omCurrentObj->objId] = temp_s0->unk10;
    omEndProcess(NULL);
}

void func_8011511C(struct GObj *arg0) {
    struct Unk80124E14 *sp1C = &D_80124E14[D_800E77A0[arg0->objId]];

    func_800AF980(0x17);
    func_800A9864(sp1C->unk4, 0x1869F, 0x10);
    func_800AA018(sp1C->unkC);
    D_800DEF90[omCurrentObj->objId] = sp1C->unk10;
    omEndProcess(NULL);
}

void func_801151BC(struct GObj *arg0) {
    u8 *sp1C = arg0->unk4C;
    struct Unk80124E14 *sp18;

    if (func_8011E244() == *sp1C) {
        sp18 = &D_80124E14[D_800E77A0[arg0->objId]];
        func_800AECC0(gameTicksPerDraw);
        func_800AED20(gameTicksPerDraw);
        func_800AA018(sp18->unk8);
        D_800DEF90[omCurrentObj->objId] = sp18->unk14;
    }
}

void func_80115270(struct GObj *arg0) {
    u8 *sp1C = arg0->unk4C;
    struct Unk80124E14 *sp18;

    if (func_8011E244() == *sp1C) {
        sp18 = &D_80124E14[D_800E77A0[arg0->objId]];
        func_800AECC0(gameTicksPerDraw);
        func_800AED20(gameTicksPerDraw);
        func_80113300(arg0, 0);
        func_800AA018(sp18->unk8);
        D_800DEF90[omCurrentObj->objId] = sp18->unk14;
    }
}

void func_80115330(struct GObj *arg0) {
    u32 temp_v0;

    func_80112B4C(arg0);
    temp_v0 = arg0->objId;
    if ((D_800DD8D0[temp_v0] * 2) < 0) {
        D_800DEF90[omCurrentObj->objId] = D_80124E14[D_800E77A0[temp_v0]].unk10;
    }
}

void func_801153B8(struct GObj *arg0) {
    struct Unk80124E14 *sp1C = &D_80124E14[D_800E77A0[arg0->objId]];

    func_800AF980(0x17);
    func_800A9864(sp1C->unk4, 0x1869F, 0x10);
    D_800DEF90[omCurrentObj->objId] = sp1C->unk10;
    omEndProcess(NULL);
}

void func_8011544C(struct GObj *arg0) {
    struct Unk80124E14 *sp1C = &D_80124E14[D_800E77A0[arg0->objId]];

    func_800AF980(0x17);
    func_800A9864(sp1C->unk4, 0x1869F, 0x10);
    func_80113300(arg0, 1);
    D_800DEF90[omCurrentObj->objId] = sp1C->unk10;
    omEndProcess(NULL);
}

void func_801154F0(struct GObj *arg0) {
    struct Unk80124E14 *sp1C = &D_80124E14[D_800E77A0[arg0->objId]];

    func_800AF980(0x17);
    func_800A9864(sp1C->unk4, 0x1869F, 0x10);
    D_800DEF90[omCurrentObj->objId] = sp1C->unk10;
}

void func_80115578(struct GObj *arg0) {
    struct Unk80124E14 *temp_s0 = &D_80124E14[D_800E77A0[arg0->objId]];
    s32 temp_a0;

    func_800AF980(0x17);
    func_800A9864(temp_s0->unk4, 0x1869F, 0x10);
    func_800AA018(temp_s0->unk8);
    temp_a0 = temp_s0->unkC;
    if (temp_a0 != 0) {
        func_800AA018(temp_a0);
    }
    D_800DEF90[omCurrentObj->objId] = temp_s0->unk10;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_80115618.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_8011572C.s")

void func_80115888(struct GObj *arg0) {
    u32 temp_v1;
    struct Unk80124E14 *temp;

    func_80112B4C(arg0);
    temp_v1 = arg0->objId;
    if ((D_800DD8D0[temp_v1] * 2) < 0) {
        temp = &D_80124E14[D_800E77A0[temp_v1]];
        D_800E98E0[temp_v1] = 0;
        D_800DEF90[omCurrentObj->objId] = temp->unk10;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_8011591C.s")

void func_80115A7C(struct GObj *arg0) {
    D_800E98E0[arg0->objId] = 0;
    func_801153B8(arg0);
}

void func_80115AAC(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_80115ACC(struct GObj *arg0) {
    func_800B4924(arg0);
    if ((D_800DD8D0[arg0->objId] * 2) < 0) {
        func_800AA018(0x202E9);
        func_800AA018(0x202EA);
        D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_800B4924;
        func_80121284(0);
        return;
    }
    func_80121284(1);
}

void func_80115B64(struct GObj *arg0) {
    s32 sp2C;
    s32 sp28;
    s32 sp24;
    u32 temp_v1;

    temp_v1 = arg0->objId;
    sp24 = D_800E98E0[temp_v1];
    func_80112B4C(arg0);
    gEntitiesNextPosXArray[sp24] = gEntitiesNextPosXArray[temp_v1];
    gEntitiesNextPosYArray[sp24] = gEntitiesNextPosYArray[temp_v1] + 220.0f;
    gEntitiesNextPosZArray[sp24] = gEntitiesNextPosZArray[temp_v1];
    if ((D_800DD8D0[temp_v1] * 2) < 0) {
        omCurrentObj = D_800DE350[sp24];
        func_800AA018(0x202E7);
        func_800AA018(0x202E8);
        omCurrentObj = arg0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_80115C4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_80115D38.s")

void func_80115EAC(struct GObj *arg0) {
    D_800E98E0[arg0->objId] = 0;
    func_8011511C(arg0);
}

void func_80115EDC(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_80115EFC(s32 arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_80115F04.s")

// The float literal below lands in this TU's MIGRATED .rodata block, which
// this C file emits. verify.py reports a 1-instruction diff because the object
// references `.rodata + offset` while the ROM references a named symbol; the
// offset is correct and the linked bytes are identical (proved by verify_rom.py
// and by diffing the object's .rodata against the base ROM). Keep the literal.
void func_80116118(struct GObj *arg0) {
    u8 *sp1C = arg0->unk4C;
    f32 *temp_v0;
    f32 *temp_v1;
    f32 temp_f0;
    u32 temp_a1;

    temp_v0 = &arg0->data.dobj->angle.v.x;
    temp_a1 = arg0->objId;
    temp_v1 = &D_800EA6E0[temp_a1];
    temp_f0 = (-*temp_v0 * 0.01f) + *temp_v1;
    temp_f0 = temp_f0 * 0.8f;
    *temp_v1 = temp_f0;
    *temp_v0 += temp_f0;
    if (func_8011E244() == *sp1C) {
        D_800DEF90[omCurrentObj->objId] = func_80115F04;
    }
    func_80112B4C(arg0);
}

void func_801161D4(struct GObj *arg0) {
    D_800EA6E0[arg0->objId] = 0.0f;
    ((u8 *)arg0->unk4C)[2] |= 2;
    func_80115070(arg0);
}

void func_80116218(s32 arg0) {
    omEndProcess(0);
}

void func_8011623C(s32 arg0) {
    omEndProcess(0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_80116260.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_801162F4.s")

void func_80116438(struct GObj *arg0) {
    D_800D7098[0] = arg0->objId;
    func_801154F0(arg0);
    func_80116508(arg0);
}

void func_8011646C(struct GObj *arg0) {
    D_800D7098[1] = arg0->objId;
    func_801154F0(arg0);
    func_80116508(arg0);
}

void func_801164A0(struct GObj *arg0) {
    D_800D7098[2] = arg0->objId;
    func_801154F0(arg0);
    func_80116508(arg0);
}

void func_801164D4(struct GObj *arg0) {
    D_800D7098[3] = arg0->objId;
    func_801154F0(arg0);
    func_80116508(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_80116508.s")

void func_80116B68(struct GObj *arg0) {
    D_800D7098[0] = arg0->objId;
    func_80115070(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_80116B90.s")

void func_80116CA0(void) {
    func_80116B90();
}

void func_80116CC0(void) {
    func_80116B90();
}

void func_80116CE0(void) {
    func_80116B90();
}

void func_80116D00(void) {
    func_80116B90();
}

void func_80116D20(void) {
    func_80116B90();
}

void func_80116D40(void) {
    func_80116B90();
}

void func_80116D60(void) {
    func_80116B90();
}

void func_80116D80(void) {
    func_80116B90();
}

void func_80116DA0(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_80116DC0(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_80116DE0(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_80116E00(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_80116E20(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_80116E40(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_80116E60(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_80116E80(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_80116EA0(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_80116EC0(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_80116EE0(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_80116F00(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_80116F20(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_80116F40(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_80116F60(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_80116F80(struct GObj *arg0) {
    u8 *sp1C = arg0->unk4C;

    if (func_8011E244() == *sp1C) {
        func_800AECC0(gameTicksPerDraw);
        func_800AED20(gameTicksPerDraw);
        D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_80112B4C;
        func_8011E4E4(0x49);
    }
}

void func_80116FF8(struct GObj *arg0) {
    if (arg0->animTimer <= 900.0f) {
        func_80112B4C(arg0);
        return;
    }
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_80116F80;
}

void func_80117078(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_80117098(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_801170B8(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_801170D8(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_801170F8(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_80117118(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_80117138(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_80117158(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_80117178(struct GObj *arg0) {
    u8 *sp1C = arg0->unk4C;

    if (func_8011E244() == *sp1C) {
        func_800AA018(0x6009B);
        func_800AA018(0x6009C);
        D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_80112B4C;
        func_8011E4E4(0x4A);
    }
}

void func_801171F0(struct GObj *arg0) {
    func_801153B8(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_80117210.s")

// The float literal below lands in this TU's MIGRATED .rodata block, which
// this C file emits. verify.py reports a 1-instruction diff because the object
// references `.rodata + offset` while the ROM references a named symbol; the
// offset is correct and the linked bytes are identical (proved by verify_rom.py
// and by diffing the object's .rodata against the base ROM). Keep the literal.
void func_80117328(struct GObj *arg0) {
    u8 *sp24 = arg0->unk4C;
    s32 temp_v0;

    temp_v0 = arg0->objId;
    D_800E3210[temp_v0] = 0.0f;
    if (*sp24 != func_8011E244()) {
        D_800E98E0[temp_v0] -= 1;
        if (D_800E98E0[temp_v0] == 0) {
            D_800E3750[temp_v0] = 0.5f;
            D_800E3C90[temp_v0] = 4.4f;
            D_800DEF90[omCurrentObj->objId] = func_80117210;
        }
    } else {
        D_800E98E0[temp_v0] = 0xA;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_801173F4.s")

// The float literal below lands in this TU's MIGRATED .rodata block, which
// this C file emits. verify.py reports a 1-instruction diff because the object
// references `.rodata + offset` while the ROM references a named symbol; the
// offset is correct and the linked bytes are identical (proved by verify_rom.py
// and by diffing the object's .rodata against the base ROM). Keep the literal.
void func_80117570(struct GObj *arg0) {
    u8 *sp24 = arg0->unk4C;
    s32 temp_v0;

    temp_v0 = arg0->objId;
    D_800E3210[temp_v0] = 0.0f;
    if (*sp24 == func_8011E244()) {
        D_800E98E0[temp_v0] -= 1;
        if (D_800E98E0[temp_v0] == 0) {
            play_sound(0xC);
            D_800E3750[temp_v0] = -0.5f;
            D_800E3C90[temp_v0] = 8.8f;
            D_800DEF90[omCurrentObj->objId] = func_801173F4;
        }
    } else {
        D_800E98E0[temp_v0] = 0xA;
    }
}

void func_8011764C(struct GObj *arg0) {
    s32 id = arg0->objId;

    D_800EA6E0[id] = gEntitiesNextPosYArray[id];
    D_800E98E0[id] = 0xA;
    func_801153B8(arg0);
}

void func_80117698(struct GObj *arg0) {
    func_8011764C(arg0);
}

void func_801176B8(struct GObj *arg0) {
    func_8011764C(arg0);
}

void func_801176D8(struct GObj *arg0) {
    func_8011764C(arg0);
}

void func_801176F8(struct GObj *arg0) {
    func_8011764C(arg0);
}

void func_80117718(struct GObj *arg0) {
    func_8011764C(arg0);
}

void func_80117738(struct GObj *arg0) {
    func_8011764C(arg0);
}

void func_80117758(struct GObj *arg0) {
    ((u8 *)arg0->unk4C)[2] |= 2;
    func_801153B8(arg0);
}

void func_80117784(struct GObj *arg0) {
    ((u8 *)arg0->unk4C)[2] |= 2;
    func_801153B8(arg0);
}

void func_801177B0(struct GObj *arg0) {
    ((u8 *)arg0->unk4C)[2] |= 2;
    func_801153B8(arg0);
}

void func_801177DC(struct GObj *arg0) {
    ((u8 *)arg0->unk4C)[2] |= 2;
    func_801153B8(arg0);
}

void func_80117808(struct GObj *arg0) {
    ((u8 *)arg0->unk4C)[2] |= 2;
    func_801153B8(arg0);
}

void func_80117834(struct GObj *arg0) {
    struct Unk4C *temp_v0 = arg0->unk4C;
    struct Unk80124E14 *temp_s0 = &D_80124E14[D_800E77A0[omCurrentObj->objId]];

    temp_v0->unk2 |= 4;
    func_800AF980(0x17);
    func_800A9864(temp_s0->unk4, 0x1869F, 0x10);
    D_800DEF90[omCurrentObj->objId] = temp_s0->unk10;
    ohSleep(8);
    while (D_800D7098[11] == 0) {
        ohSleep(1);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_80117904.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_80117AB4.s")

void func_80117D70(struct GObj *arg0) {
    func_80117834(arg0);
    func_80117904(arg0);
    func_80117AB4(arg0);
}

void func_80117DA0(struct GObj *arg0) {
    func_80117834(arg0);
    ohSleep(0x1E);
    func_80117904(arg0);
    func_80117AB4(arg0);
}

void func_80117DD8(struct GObj *arg0) {
    func_80117834(arg0);
    ohSleep(0x3C);
    func_80117904(arg0);
    func_80117AB4(arg0);
}

void func_80117E10(struct GObj *arg0) {
    func_80117834(arg0);
    func_80117AB4(arg0);
}

void func_80117E38(struct GObj *arg0) {
    func_80117834(arg0);
    func_80117AB4(arg0);
}

void func_80117E60(struct GObj *arg0) {
    func_80117834(arg0);
    func_80117AB4(arg0);
}

void func_80117E88(struct GObj *arg0) {
    func_80117834(arg0);
    func_80117AB4(arg0);
}

void func_80117EB0(struct GObj *arg0) {
    func_80117834(arg0);
    func_80117AB4(arg0);
}

void func_80117ED8(struct GObj *arg0) {
    func_80117834(arg0);
    func_80117AB4(arg0);
}

void func_80117F00(struct GObj *arg0) {
    func_80117834(arg0);
    func_80117AB4(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_80117F28.s")

void func_801180B8(struct GObj *arg0) {
    func_80117834(arg0);
    while (D_800D7098[3] == 0) {
        ohSleep(1);
    }
    gEntitiesNextPosYArray[omCurrentObj->objId] = 5000.0f;
    omEndProcess(NULL);
}

void func_80118130(struct GObj *arg0) {
    func_80112B4C(arg0);
    if ((D_800DD8D0[arg0->objId] * 2) < 0) {
        D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_80112B4C;
        func_800FB914(1);
        func_800BB468(0, 0);
    }
}

void func_801181AC(struct GObj *arg0) {
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    struct Unk80124E14 *sp18;
    f32 temp_f0;
    f32 var_f2;
    s32 temp_v0;

    temp_v0 = arg0->objId;
    temp_f0 = gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[temp_v0];
    if (temp_f0 < 0.0f) {
        var_f2 = -temp_f0;
    } else {
        var_f2 = temp_f0;
    }
    if (var_f2 < 240.0f) {
        sp18 = &D_80124E14[D_800E77A0[temp_v0]];
        func_800AA018(sp18->unk8);
        D_800DEF90[omCurrentObj->objId] = sp18->unk14;
    }
}

void func_80118270(struct GObj *arg0) {
    ((u8 *)arg0->unk4C)[2] |= 2;
    func_801153B8(arg0);
}

void func_8011829C(struct GObj *arg0) {
    ((u8 *)arg0->unk4C)[2] |= 2;
    func_801153B8(arg0);
}

void func_801182C8(struct GObj *arg0) {
    ((u8 *)arg0->unk4C)[2] |= 2;
    func_801153B8(arg0);
}

void func_801182F4(struct GObj *arg0) {
    ((u8 *)arg0->unk4C)[2] |= 2;
    func_801153B8(arg0);
}

void func_80118320(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_80118340(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_80118360(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_80118380(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_801183A0(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_801183C0(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_801183E0(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_80118400(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_80118420(struct GObj *arg0) {
    func_80112B4C(arg0);
    if ((D_800DD8D0[arg0->objId] * 2) < 0) {
        func_8011E524();
        func_801129F4();
        D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_80112B4C;
    }
}

void func_80118498(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_801184B8(struct GObj *arg0) {
    struct Unk80124E14 *temp_v0;
    f32 temp_f0;
    f32 var_f2;
    s32 temp_v1;

    temp_v1 = arg0->objId;
    temp_f0 = gEntitiesNextPosYArray[0] - gEntitiesNextPosYArray[temp_v1];
    if (temp_f0 < 0.0f) {
        var_f2 = -temp_f0;
    } else {
        var_f2 = temp_f0;
    }
    if (var_f2 < 280.0f) {
        temp_v0 = &D_80124E14[D_800E77A0[temp_v1]];
        func_800AA018(temp_v0->unk8);
        D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_80112B4C;
    }
}

void func_80118578(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_80118598(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_801185B8(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_801185D8(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_801185F8(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_80118618(struct GObj *arg0) {
    func_80115070(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_80118638.s")

// The reassignment of temp (rather than a separate Vector *) is load-bearing:
// it is what makes IDO emit the addiu that rebases the last store.
void func_80118760(struct GObj *arg0) {
    struct DObj *temp;
    u32 id;

    temp = arg0->data.dobj;
    id = arg0->objId;
    temp->pos.v.x = gEntitiesNextPosXArray[id];
    temp->pos.v.y = gEntitiesNextPosYArray[id];
    temp = (struct DObj *)&temp->pos.v;
    ((Vector *)temp)->z = gEntitiesNextPosZArray[id];
}

void func_801187A4(void) {
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    ohSleep((s32) (30.0f * gameTicksPerDrawInv));
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    ohSleep((s32) (30.0f * gameTicksPerDrawInv));
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
}

void func_8011884C(u32 arg0) {
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    ohSleep((s32) (30.0f * gameTicksPerDrawInv));
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    ohSleep((s32) ((f32) arg0 * gameTicksPerDrawInv));
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
}

void func_8011890C(struct GObj *arg0, u32 arg1) {
    struct GObj *sp2C = D_800DE350[((struct Unk4C *) arg0->unk4C)->unk3];

    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    omCurrentObj = sp2C;
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    omCurrentObj = arg0;
    ohSleep((s32) (30.0f * gameTicksPerDrawInv));
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    omCurrentObj = sp2C;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    omCurrentObj = arg0;
    ohSleep((s32) ((f32) arg1 * gameTicksPerDrawInv));
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    omCurrentObj = sp2C;
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    omCurrentObj = arg0;
}

void func_80118A60(struct GObj *arg0, u32 arg1) {
    struct Unk80124E14 *temp_s0 = &D_80124E14[D_800E77A0[arg0->objId]];

    func_800AF980(0x17);
    arg0->onAnimate = NULL;
    func_800A9864(temp_s0->unk4, 0x1869F, 0x10);
    func_80118760(arg0);
    func_800A9F98(temp_s0->unk8, arg1);
    if (temp_s0->unkC != 0) {
        func_800A9F98(temp_s0->unkC, arg1);
    }
    D_800DEF90[omCurrentObj->objId] = temp_s0->unk10;
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
}

void func_80118B60(struct GObj *arg0, u32 arg1) {
    if (D_800D6E20[D_800BE508] != 0) {
        func_80118A60(arg0, arg1);
    } else {
        func_80115578(arg0);
        func_80118760(arg0);
        func_8011884C(arg1);
    }
    omEndProcess(NULL);
}

void func_80118BC8(struct GObj *arg0, u32 arg1) {
    func_80115578(arg0);
    func_80118760(arg0);
    if (D_800D6E20[D_800BE508] != 0) {
        func_800AECC0(0.0f);
        func_800AED20(0.0f);
    } else {
        func_8011884C(arg1);
        while (D_800D6E18 == 0) {
            ohSleep(1);
        }
        func_800AECC0(gameTicksPerDraw);
        func_800AED20(gameTicksPerDraw);
    }
    omEndProcess(NULL);
}

void func_80118C88(struct GObj *arg0) {
    func_80118B60(arg0, 0x1E);
}

void func_80118CA8(struct GObj *arg0) {
    func_80118BC8(arg0, 0x1E);
}

void func_80118CC8(struct GObj *arg0) {
    if (D_800D6E20[D_800BE508] != 0) {
        func_80118A60(arg0, 0x1E);
    } else {
        func_80115578(arg0);
        func_80118760(arg0);
        func_800AECC0(0.0f);
        func_800AED20(0.0f);
        while (D_800D6E18 == 0) {
            ohSleep(1);
        }
        func_800AECC0(gameTicksPerDraw);
        func_800AED20(gameTicksPerDraw);
    }
    omEndProcess(NULL);
}

void func_80118D84(struct GObj *arg0, u32 arg1) {
    struct GObj *sp24;

    if (D_800D6E20[D_800BE508] != 0) {
        sp24 = D_800DE350[((struct Unk4C *) arg0->unk4C)->unk3];
        func_8011572C(arg0, arg1);
        func_800AECC0(0.0f);
        func_800AED20(0.0f);
        omCurrentObj = sp24;
        func_800AECC0(0.0f);
        func_800AED20(0.0f);
        omCurrentObj = arg0;
    } else {
        func_80115618(arg0);
        func_8011890C(arg0, arg1);
    }
    omEndProcess(NULL);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_80118E44.s")

void func_80118F70(struct GObj *arg0) {
    ((u8 *)arg0->unk4C)[2] |= 2;
    func_80118C88(arg0);
}

void func_80118F9C(struct GObj *arg0) {
    ((u8 *)arg0->unk4C)[2] |= 2;
    func_80118CA8(arg0);
}

void func_80118FC8(struct GObj *arg0) {
    func_80118C88(arg0);
}

void func_80118FE8(struct GObj *arg0) {
    func_80118CA8(arg0);
}

void func_80119008(struct GObj *arg0) {
    func_80118C88(arg0);
}

void func_80119028(struct GObj *arg0) {
    func_80118CA8(arg0);
}

void func_80119048(struct GObj *arg0) {
    func_80118C88(arg0);
}

void func_80119068(struct GObj *arg0) {
    func_80118CA8(arg0);
}

void func_80119088(s32 arg0) {

}

void func_80119090(struct GObj *arg0) {
    func_80118CC8(arg0);
}

void func_801190B0(struct GObj *arg0) {
    ((u8 *)arg0->unk4C)[2] |= 2;
    func_80118C88(arg0);
}

void func_801190DC(struct GObj *arg0) {
    ((u8 *)arg0->unk4C)[2] |= 2;
    func_80118CA8(arg0);
}

void func_80119108(struct GObj *arg0) {
    func_80118CC8(arg0);
}

void func_80119128(struct GObj *arg0) {
    func_80118C88(arg0);
}

void func_80119148(struct GObj *arg0) {
    func_80118CC8(arg0);
}

void func_80119168(struct GObj *arg0) {
    func_80118C88(arg0);
}

void func_80119188(struct GObj *arg0) {
    if (D_800D6E20[D_800BE508] != 0) {
        func_80118A60(arg0, 0x3C);
    } else {
        func_80118A60(arg0, 0x1E);
        while (D_800D6E18 == 0) {
            ohSleep(1);
        }
        arg0->onAnimate = func_80114E80;
        func_800AECC0(gameTicksPerDraw);
        func_800AED20(gameTicksPerDraw);
        func_800FD754(1, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
    }
    omEndProcess(NULL);
}

void func_80119270(struct GObj *arg0) {
    func_80118C88(arg0);
}

void func_80119290(struct GObj *arg0) {
    func_80118CA8(arg0);
}

void func_801192B0(s32 arg0) {

}

void func_801192B8(s32 arg0) {

}

void func_801192C0(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_801192E0(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_80119300(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_80119320(struct GObj *arg0) {
    u8 *sp1C = arg0->unk4C;
    struct Unk4C *sp18;
    struct Unk80124E14 *temp;

    if (func_8011E244() == *sp1C) {
        temp = &D_80124E14[D_800E77A0[arg0->objId]];
        sp18 = arg0->unk4C;
        func_800AA018(temp->unk8);
        D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_800B4924;
        sp18->unk2 |= 1;
    }
}

void func_801193CC(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_801193EC(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011940C(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011942C(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011944C(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011946C(struct GObj *arg0) {
    func_80118B60(arg0, 0x3C);
}

void func_8011948C(struct GObj *arg0) {
    func_80118BC8(arg0, 0x3C);
}

void func_801194AC(struct GObj *arg0) {
    func_80118D84(arg0, 0x1E);
}

void func_801194CC(struct GObj *arg0) {
    func_80118E44(arg0, 0x1E);
}

void func_801194EC(struct GObj *arg0) {
    func_80118C88(arg0);
}

void func_8011950C(struct GObj *arg0) {
    func_80118CA8(arg0);
}

void func_8011952C(struct GObj *arg0) {
    func_80118C88(arg0);
}

void func_8011954C(struct GObj *arg0) {
    func_80118CA8(arg0);
}

void func_8011956C(struct GObj *arg0) {
    func_80118C88(arg0);
}

void func_8011958C(struct GObj *arg0) {
    func_80118CA8(arg0);
}

void func_801195AC(struct GObj *arg0) {
    func_80118C88(arg0);
}

void func_801195CC(struct GObj *arg0) {
    func_80118CA8(arg0);
}

void func_801195EC(struct GObj *arg0) {
    func_80118C88(arg0);
}

void func_8011960C(struct GObj *arg0) {
    func_80118CA8(arg0);
}

void func_8011962C(struct GObj *arg0) {
    func_80118C88(arg0);
}

void func_8011964C(struct GObj *arg0) {
    func_80118CA8(arg0);
}

void func_8011966C(struct GObj *arg0) {
    func_80118C88(arg0);
}

void func_8011968C(struct GObj *arg0) {
    func_80118CA8(arg0);
}

void func_801196AC(struct GObj *arg0) {
    func_80118C88(arg0);
}

void func_801196CC(struct GObj *arg0) {
    func_80118CA8(arg0);
}

void func_801196EC(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_8011970C(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_8011972C(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_8011974C(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_8011976C(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_8011978C(struct GObj *arg0) {
    s32 id = arg0->objId;
    f32 temp_f0;
    f32 var_f2;

    temp_f0 = gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[id];
    if (temp_f0 < 0.0f) {
        var_f2 = -temp_f0;
    } else {
        var_f2 = temp_f0;
    }
    if (var_f2 < 160.0f) {
        func_800AA018(0x600BB);
        D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_80112B4C;
    }
}

void func_8011982C(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_8011984C(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_8011986C(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_8011988C(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_801198AC(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_801198CC(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_801198EC(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011990C(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011992C(struct GObj *arg0) {
    struct Unk80124E14 *sp1C = &D_80124E14[D_800E77A0[arg0->objId]];

    func_800AF980(0x17);
    func_800A9864(sp1C->unk4, 0x1869F, 0x10);
    D_800DEF90[omCurrentObj->objId] = sp1C->unk10;
    func_800AA018(sp1C->unk8);
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    omEndProcess(NULL);
}

void func_801199E0(struct GObj *arg0) {
    func_8011992C(arg0);
}

void func_80119A00(struct GObj *arg0) {
    func_8011992C(arg0);
}

void func_80119A20(struct GObj *arg0) {
    func_8011992C(arg0);
}

void func_80119A40(struct GObj *arg0) {
    func_8011992C(arg0);
}

void func_80119A60(struct GObj *arg0) {
    func_8011992C(arg0);
}

void func_80119A80(struct GObj *arg0) {
    func_8011992C(arg0);
}

void func_80119AA0(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_80119AC0(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_80119AE0(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_80119B00(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_80119B20(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_80119B40(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_80119B60(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_80119B80(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_80119BA0(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_80119BC0(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_80119BE0(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_80119C00(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_80119C20(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_80119C40(struct GObj *arg0) {
    ((u8 *)arg0->unk4C)[2] |= 2;
    func_80115070(arg0);
}

void func_80119C6C(struct GObj *arg0) {
    ((u8 *)arg0->unk4C)[2] |= 2;
    func_80115070(arg0);
}

void func_80119C98(struct GObj *arg0) {
    ((u8 *)arg0->unk4C)[2] |= 2;
    func_80115070(arg0);
}

void func_80119CC4(struct GObj *arg0) {
    ((u8 *)arg0->unk4C)[2] |= 2;
    func_80115070(arg0);
}

void func_80119CF0(struct GObj *arg0) {
    ((u8 *)arg0->unk4C)[2] |= 2;
    func_80115070(arg0);
}

void func_80119D1C(struct GObj *arg0) {
    ((u8 *)arg0->unk4C)[2] |= 2;
    func_80115070(arg0);
}

void func_80119D48(struct GObj *arg0) {
    ((u8 *)arg0->unk4C)[2] |= 2;
    func_80115070(arg0);
}

void func_80119D74(struct GObj *arg0) {
    ((u8 *)arg0->unk4C)[2] |= 2;
    func_80115070(arg0);
}

void func_80119DA0(struct GObj *arg0) {
    func_8011544C(arg0);
}

void func_80119DC0(struct GObj *arg0) {
    func_8011544C(arg0);
}

void func_80119DE0(struct GObj *arg0) {
    func_8011544C(arg0);
}

void func_80119E00(struct GObj *arg0) {
    func_8011544C(arg0);
}

void func_80119E20(struct GObj *arg0) {
    func_8011544C(arg0);
}

void func_80119E40(struct GObj *arg0) {
    func_8011544C(arg0);
}

void func_80119E60(struct GObj *arg0) {
    func_8011544C(arg0);
}

void func_80119E80(struct GObj *arg0) {
    func_8011544C(arg0);
}

void func_80119EA0(struct GObj *arg0) {
    func_8011544C(arg0);
}

void func_80119EC0(struct GObj *arg0) {
    func_8011544C(arg0);
}

void func_80119EE0(struct GObj *arg0) {
    func_8011544C(arg0);
}

void func_80119F00(struct GObj *arg0) {
    func_8011544C(arg0);
}

void func_80119F20(struct GObj *arg0) {
    func_8011544C(arg0);
}

void func_80119F40(struct GObj *arg0) {
    func_8011544C(arg0);
}

void func_80119F60(struct GObj *arg0) {
    func_8011544C(arg0);
}

void func_80119F80(struct GObj *arg0) {
    func_8011544C(arg0);
}

void func_80119FA0(struct GObj *arg0) {
    func_8011544C(arg0);
}

void func_80119FC0(struct GObj *arg0) {
    func_8011544C(arg0);
}

void func_80119FE0(struct GObj *arg0) {
    func_8011544C(arg0);
}

void func_8011A000(struct GObj *arg0) {
    func_8011544C(arg0);
}

void func_8011A020(struct GObj *arg0) {
    func_8011511C(arg0);
}

void func_8011A040(struct GObj *arg0) {
    func_8011511C(arg0);
}

void func_8011A060(struct GObj *arg0) {
    struct Unk80124E14 *sp1C = &D_80124E14[D_800E77A0[arg0->objId]];
    struct GObj *sp18 = omCurrentObj;

    omCurrentObj = arg0;
    func_800AA018(sp1C->unk8);
    func_800AA018(sp1C->unkC);
    D_800DEF90[omCurrentObj->objId] = sp1C->unk14;
    omCurrentObj = sp18;
}

void func_8011A0FC(struct GObj *arg0) {
    u8 *sp1C = arg0->unk4C;

    if (func_8011E244() == *sp1C) {
        func_8011A060(arg0);
        func_8011A060(D_800DE350[D_8012DA01[*sp1C * 0xB8]]);
    }
}

void func_8011A178(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011A198(struct GObj *arg0) {
    u8 *sp1C = arg0->unk4C;

    if (func_8011E244() == *sp1C) {
        func_8011A060(arg0);
        func_8011A060(D_800DE350[D_8012D891[*sp1C * 0xB8]]);
    }
}

void func_8011A214(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011A234(struct GObj *arg0) {
    func_80118D84(arg0, 0x50);
}

void func_8011A254(struct GObj *arg0) {
    func_80118E44(arg0, 0x50);
}

void func_8011A274(struct GObj *arg0) {
    func_80118B60(arg0, 0x3C);
}

void func_8011A294(struct GObj *arg0) {
    if (!((saveCurrentWorld < 2) && (saveCurrentLevel < 4)) && (D_800D6B6C[1] == 0)) {
        curObjSleepForever();
    }
    func_80118BC8(arg0, 0x3C);
}

#ifdef MIPS_TO_C
// 13 diffs: stack layout and instruction order are exact; only the integer
// register allocation is rotated one slot (ROM idx=$v0/ptr=$v1, IDO gives
// $v1/$a1). Declaration order, block scope, chained assignment and the
// comparison shape were all swept without effect.
void func_8011A2F4(struct GObj *arg0) {
    u8 *sp24 = arg0->unk4C;
    s32 sp20;

    if (func_8011E368() != 0) {
        if (func_8011E244() == *sp24) {
            sp20 = D_800E77A0[arg0->objId];
            func_800AA018(D_80124E14[sp20].unk8);
            D_800DEF90[omCurrentObj->objId] = D_80124E14[sp20].unk14;
            (&D_800D6F10)[5] = sp20 - 0xBF;
            play_sound(0x1FD);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_8011A2F4.s")
#endif


void func_8011A3B8(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011A3D8(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011A3F8(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011A418(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011A438(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011A458(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011A478(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011A498(struct GObj *arg0) {
    func_80115618(arg0);
    omEndProcess(0);
}

void func_8011A4C0(struct GObj *arg0) {
    func_80115618(arg0);
    omEndProcess(0);
}

void func_8011A4E8(struct GObj *arg0) {
    func_80115618(arg0);
    omEndProcess(0);
}

void func_8011A510(struct GObj *arg0) {
    func_80115618(arg0);
    omEndProcess(0);
}

void func_8011A538(struct GObj *arg0) {
    func_80115618(arg0);
    omEndProcess(0);
}

void func_8011A560(struct GObj *arg0) {
    func_80115618(arg0);
    omEndProcess(0);
}

void func_8011A588(s32 arg0)
{
  f32 temp_f0;
  f32 sp1C;
  if (func_8011E270() != 0)
  {
    temp_f0 = func_8011E2A0();
 do { if (temp_f0 != 0.0f) { sp1C = temp_f0; func_800AECC0((gameTicksPerDraw * temp_f0) * 5.0f); func_800AED20((gameTicksPerDraw * temp_f0) * 5.0f); return; } func_800AECC0(0.0f); func_800AED20(0.0f); } while (0);
  }
}

void func_8011A638(struct GObj *arg0) {
    func_80115578(arg0);
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    omEndProcess(0);
}

void func_8011A678(GObj *arg0)
{
  f32 temp_f0;
  f32 temp_f0_2;
  f32 var_f2;
  f32 var_f2_2;
  u32 temp_v0;
  temp_v0 = arg0->objId;
  temp_f0 = (*gEntitiesNextPosXArray) - gEntitiesNextPosXArray[temp_v0];
  if (temp_f0 < 0.0f)
  {
    var_f2 = -temp_f0;
  }
  else
  {
 var_f2 = temp_f0; } if (var_f2 < 80.0f) {
    temp_f0_2 = (*gEntitiesNextPosYArray) - gEntitiesNextPosYArray[temp_v0];
    if (temp_f0_2 < 0.0f)
    {
      var_f2_2 = -temp_f0_2;
    }
    else
    {
      var_f2_2 = temp_f0_2;
    }
    if (var_f2_2 < 80.0f)
    {
      func_800AECC0(gameTicksPerDraw);
      func_800AED20(gameTicksPerDraw);
      D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_80112B4C;
    }
  }
  func_80112B4C(arg0);
}

void func_8011A770(struct GObj *arg0) {
    func_80115578(arg0);
    func_80118760(arg0);
    func_801187A4();
    omEndProcess(0);
}

#ifdef MIPS_TO_C
// 13 diffs: stack layout and instruction order are exact; only the integer
// register allocation is rotated one slot (ROM idx=$v0/ptr=$v1, IDO gives
// $v1/$a1). Clone twin of func_8011A2F4 -- one fix closes both.
void func_8011A7A8(struct GObj *arg0) {
    u8 *sp24 = arg0->unk4C;
    s32 sp20;

    if (func_8011E368() != 0) {
        if (func_8011E244() == *sp24) {
            sp20 = D_800E77A0[arg0->objId];
            func_800AA018(D_80124E14[sp20].unk8);
            D_800DEF90[omCurrentObj->objId] = D_80124E14[sp20].unk14;
            (&D_800D6F10)[5] = sp20 - 0xCD;
            play_sound(0x1FD);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_8011A7A8.s")
#endif
void func_8011A86C(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011A88C(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011A8AC(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011A8CC(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011A8EC(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011A90C(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011A92C(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011A94C(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_8011A96C(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_8011A98C(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_8011A9AC(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_8011A9CC(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_8011A9EC(struct GObj *arg0) {
    func_80112B4C(arg0);
    if ((D_800DD8D0[arg0->objId] * 2) < 0) {
        func_800AECC0(0.0f);
        func_800AED20(0.0f);
        func_800A9D64(omCurrentObj->objId);
        D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_80112B4C;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_8011AA7C.s")

void func_8011AB7C(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_8011AB9C(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_8011ABBC(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_8011ABDC(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_8011ABFC(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_8011AC1C(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_8011AC3C(struct GObj *arg0) {
    func_80118C88(arg0);
}

void func_8011AC5C(struct GObj *arg0) {
    func_80118CA8(arg0);
}

void func_8011AC7C(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011AC9C(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011ACBC(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011ACDC(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011ACFC(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011AD1C(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011AD3C(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011AD5C(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011AD7C(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011AD9C(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011ADBC(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011ADDC(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011ADFC(struct GObj *arg0) {
    func_80112B4C(arg0);
    if ((D_800DD8D0[arg0->objId] * 2) < 0) {
        func_8011E504();
        D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_80112B4C;
    }
}

void func_8011AE6C(struct GObj *arg0) {
    struct Unk80124E14 *temp;

    if (kirby_in_inactionable_state() == 1) {
        temp = &D_80124E14[D_800E77A0[arg0->objId]];
        func_800AA018(temp->unk8);
        D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_8011ADFC;
    }
}

void func_8011AEF0(struct GObj *arg0) {
    u8 *temp = arg0->unk4C;

    if (func_8011E244() == *temp) {
        func_8011E4E4(0x52);
        D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_8011AE6C;
    }
}

void func_8011AF50(struct GObj *arg0) {
    u8 *temp = arg0->unk4C;

    if (func_8011E244() == *temp) {
        func_8011E4E4(0x53);
        D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_8011AE6C;
    }
}

void func_8011AFB0(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011AFD0(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011AFF0(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011B010(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011B030(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011B050(struct GObj *arg0) {
    s32 id = arg0->objId;

    D_800E3050[id] = 0.0f;
    func_800B4924(arg0);
    D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_800B4924;
}

void func_8011B0A4(GObj *arg0)
{
  f32 temp_f12;
  f32 temp_f14;
  f32 var_f2;
  u32 temp_v0;
 temp_v0 = arg0->objId; temp_f14 = gEntitiesNextPosXArray[temp_v0]; temp_f12 = (*gEntitiesNextPosXArray) - (temp_f14 + (-1350.0f)); if (temp_f12 > 450.0f) {
    var_f2 = temp_f12 - 450.0f;
    if (var_f2 < 3.5f)
    {
      var_f2 = 3.5f;
    }
  }
  else
  {
    var_f2 = 3.5f;
  }
  if ((temp_f14 + var_f2) > 6450.0f)
  {
    var_f2 = 6450.0f - temp_f14;
    D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_8011B050;
  }
  D_800E3050[temp_v0] = var_f2;
  func_800B4924(arg0);
}

void func_8011B188(struct GObj *arg0) {
    s32 objId = arg0->objId;

    func_800B4924(arg0);
    if (D_800E98E0[objId] != 0) {
        D_800E98E0[objId]--;
        if (D_800E98E0[objId] == 0) {
            func_800FB914(4);
        }
    }
    D_800E9AA0[objId].as_s32--;
    if (D_800E9AA0[objId].as_s32 <= 0) {
        func_8011E504();
        D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_8011B0A4;
    }
}

void func_8011B22C(struct GObj *arg0) {
    s32 id = arg0->objId;
    u8 *ent;

    if (gEntitiesNextPosXArray[id] <= gEntitiesNextPosXArray[0]) {
        ent = arg0->unk4C;
        func_8011E4E4(0x54);
        func_800FB914(3);
        func_800BB468(0, 0);
        func_800A77E8(0x254, ent + 0x98, ent + 0x9C);
        func_800AA018(0x600D9);
        D_800DEF90[omCurrentObj->objId] = func_8011B188;
        D_800E98E0[id] = 7;
        *(s32 *) &D_800E9AA0[id] = 0x5A;
        gEntitiesNextPosXArray[id] = -1815.0f;
        D_800E3050[id] = 3.5f;
    }
}

void func_8011B328(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011B348(struct GObj *arg0) {
    func_80112B4C(arg0);
    if ((D_800DD8D0[arg0->objId] * 2) < 0) {
        func_800FB914(0);
        D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_80112B4C;
    }
}

void func_8011B3B8(struct GObj *arg0) {
    func_800FB914(5);
    ((u8 *)arg0->unk4C)[2] |= 2;
    func_80115070(arg0);
}

void func_8011B3F4(struct GObj *arg0) {
    func_80112B4C(arg0);
    if ((D_800DD8D0[arg0->objId] * 2) < 0) {
        D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_80112B4C;
        func_800FB914(1);
    }
}

void func_8011B464(struct GObj *arg0) {
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    struct Unk80124E14 *sp18;
    f32 temp_f0;
    f32 var_f2;
    s32 temp_v0;

    temp_v0 = arg0->objId;
    temp_f0 = gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[temp_v0];
    if (temp_f0 < 0.0f) {
        var_f2 = -temp_f0;
    } else {
        var_f2 = temp_f0;
    }
    if (var_f2 < 240.0f) {
        sp18 = &D_80124E14[D_800E77A0[temp_v0]];
        func_800AA018(sp18->unk8);
        D_800DEF90[omCurrentObj->objId] = sp18->unk14;
    }
}

void func_8011B528(struct GObj *arg0) {
    ((u8 *)arg0->unk4C)[2] |= 2;
    func_801153B8(arg0);
}

void func_8011B554(struct GObj *arg0) {
    ((u8 *)arg0->unk4C)[2] |= 2;
    func_801153B8(arg0);
}

void func_8011B580(struct GObj *arg0) {
    ((u8 *)arg0->unk4C)[2] |= 2;
    func_801153B8(arg0);
}

void func_8011B5AC(struct GObj *arg0) {
    ((u8 *)arg0->unk4C)[2] |= 2;
    func_801153B8(arg0);
}

void func_8011B5D8(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011B5F8(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011B618(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011B638(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011B658(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011B678(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011B698(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011B6B8(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011B6D8(struct GObj *arg0) {
    f32 temp_f0;
    f32 temp_f2;
    u32 temp_v1;

    temp_v1 = arg0->objId;
    temp_f0 = gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[temp_v1];
    temp_f2 = gEntitiesNextPosZArray[0] - gEntitiesNextPosZArray[temp_v1];
    if (((temp_f0 * temp_f0) + (temp_f2 * temp_f2)) < 6400.0f) {
        func_800AECC0(gameTicksPerDraw);
        func_800AED20(gameTicksPerDraw);
        D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_80112B4C;
    }
    func_80112B4C(arg0);
}

void func_8011B794(struct GObj *arg0) {
    func_80115578(arg0);
    func_80118760(arg0);
    func_801187A4();
    omEndProcess(0);
}

void func_8011B7CC(struct GObj *arg0) {
    u8 *temp = arg0->unk4C;

    if (func_8011E244() == *temp) {
        func_800AA018(0x6013B);
        D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_80112B4C;
        func_8011E4E4(0x55);
    }
}

void func_8011B838(struct GObj *arg0) {
    func_801153B8(arg0);
}

void func_8011B858(struct GObj *arg0) {
    func_80118C88(arg0);
}

void func_8011B878(struct GObj *arg0) {
    func_80115578(arg0);
    func_80118760(arg0);
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    while (D_800D6E14 == 0) {
        ohSleep(1);
    }
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    ohSleep((s32) (30.0f * gameTicksPerDrawInv));
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    omEndProcess(NULL);
}

void func_8011B944(struct GObj *arg0) {
    func_8011B878(arg0);
}

void func_8011B964(struct GObj *arg0) {
    func_80118C88(arg0);
}

void func_8011B984(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_8011B9A4(struct GObj *arg0) {
    func_8011B878(arg0);
}

void func_8011B9C4(struct GObj *arg0) {
    func_80118C88(arg0);
}

void func_8011B9E4(struct GObj *arg0) {
    func_8011B878(arg0);
}
