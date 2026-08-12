#include "common.h"

#include "GObj.h"
#include "DObj.h"
#include "ovl1/util.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "unk_structs/D_800E1B50.h"

#include "Player.h"
#include "main/object_helpers.h"
void func_801A6434_ovl7(void);

void func_800A4B34(Vector *, struct DObj *);
#include "unk_structs/D_800DE350.h"

struct Ovl7Unk94 {
    u8 filler0[0xC];
    s32 unkC;
    s32 unk10;
    f32 unk14;
    s32 unk18;
    u32 unk1C;
};


void func_801A3CA8_ovl7(void);
void func_800AF408(void);
void func_800AED20(f32);
void func_800A9F98(s32, f32);
extern f32 D_800EC9E4;

void func_801A0B10_ovl7(void);
void func_800FD570(s32, s32, f32, f32, f32);
void func_800A7F74(s32, s32, s32, f32, f32, f32);
s32 func_801A0D74_ovl7(void);
extern u32 D_8012BCA0;
extern void *D_801CA28C_ovl7[], *D_801CA2B0_ovl7[], *D_801CA2F4_ovl7[], *D_801CA318_ovl7[];
/* D_801CDFB8_ovl7 = 9999.0f, D_801CDFC0_ovl7 = 65535.0f : now emitted by this TU */
void func_801A522C_ovl7(GObj *);
void func_801A6610_ovl7(void);
void func_801A4414_ovl7(GObj *);
void ohSleep(s32);
extern f32 D_800E6690[], D_800E64D0[], D_800E6850[];
extern f32 D_800E3910[], D_800E3750[], D_800E3590[], D_800E33D0[], D_800E3210[], D_800E3050[];
extern f32 D_800E3E50[], D_800E3C90[], D_800E3AD0[];
void func_801A42B8_ovl7(GObj *);
void func_800B19F4(s32, s32);
void func_8019BB58_ovl7(void);
void func_8019D958_ovl7(u16);
void ohSleep(s32);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A3E80_ovl7.s")

void func_801A41D4_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800DDA90[omCurrentObj->objId] = 0x23;
    ent->unk8C = &D_801CA28C_ovl7;
    ent->unk90 = &D_801CA2B0_ovl7;
    D_800E0D50[omCurrentObj->objId] = -1;
    D_800E7B20[omCurrentObj->objId] = 9999.0f;
    D_800DF150[omCurrentObj->objId] = func_801A42B8_ovl7;
    func_800B19F4(0x74, omCurrentObj->objId);
    func_8019BB58_ovl7();
    ohSleep(0x1B);
    func_8019D958_ovl7((u16) omCurrentObj->objId);
}

void func_801A42B8_ovl7(GObj *arg0) {
    func_801A0B10_ovl7();
}

void func_801A42D8_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800DDA90[omCurrentObj->objId] = 0x23;
    ent->unk8C = &D_801CA2F4_ovl7;
    ent->unk90 = &D_801CA318_ovl7;
    D_800E0D50[omCurrentObj->objId] = -1;
    D_800E7B20[omCurrentObj->objId] = 9999.0f;
    D_800DF150[omCurrentObj->objId] = func_801A42B8_ovl7;
    func_800B19F4(0x74, omCurrentObj->objId);
    func_8019BB58_ovl7();
    ohSleep(7);
    func_8019D958_ovl7((u16) omCurrentObj->objId);
}

void func_801A43BC_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    func_800FD570(0, ent->unk94->unk18, 0.0f, 0.0f, 0.0f);
}

void func_801A4414_ovl7(GObj *arg0) {
    func_800A7F74(3, 2, 0x77, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}

void func_801A447C_ovl7(GObj *arg0) {
    func_800A7F74(3, 2, 0x64, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A44E4_ovl7.s")

void func_801A470C_ovl7(void) {
    func_801A0D74_ovl7();
    D_800EC2E0[omCurrentObj->objId].as_s32 = (D_8012BCA0 >> 19) & 0xFFF;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A4754_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A4C0C_ovl7.s")

struct TrackPosition7 {
    s32 unk0;
    f32 unk4;
};

void func_801A4DFC_ovl7(GObj *arg0) {
    s32 func_8019A900_ovl7(struct TrackPosition7 *);
    void func_801A4F70_ovl7(void);
    s32 pad;
    struct TrackPosition7 sp34;

    D_800DF150[omCurrentObj->objId] = func_801A4F70_ovl7;
    D_800DDA90[omCurrentObj->objId] = 0x23;
    D_800EC2E0[omCurrentObj->objId].as_s32 = 0;
    D_800E83E0[omCurrentObj->objId] = 0;
    play_sound(0xC2);
    func_8019A900_ovl7(&sp34);
    D_800E64D0[omCurrentObj->objId] = (f32) sp34.unk0 * -10.0f;
    D_800E9720[omCurrentObj->objId] = 0x3C;
    while ((D_800EC2E0[omCurrentObj->objId].as_s32 == 0) && (D_800E9720[omCurrentObj->objId] != 0)) {
        ohSleep(1);
        D_800E9720[omCurrentObj->objId] -= 1;
    }
    D_800EC2E0[omCurrentObj->objId].as_s32 = 1;
}

struct UnkStruct800D7118_7 {
    u8 pad0[0x3C];
    s32 unk3C;
};

void func_801A4F70_ovl7(void) {
    extern struct UnkStruct800D7118_7 D_800D7118;
    extern void *D_801CA884_ovl7[];
    s32 func_801117BC(void *, u32);
    void func_80111C4C(s32);

    if (D_800EC9E4 != 0.0f) {
        D_800E3210[omCurrentObj->objId] = -D_800EC9E4;
    }
    if (D_800E83E0[omCurrentObj->objId] != 0) {
        D_800E9720[omCurrentObj->objId] = 1;
    } else {
        func_801A0D74_ovl7();
        D_800E8920[omCurrentObj->objId] = 0;
        D_800EC2E0[omCurrentObj->objId].as_u32 = (D_8012BCA0 >> 0x13) & 0x1FF;
        D_800EC2E0[omCurrentObj->objId].as_s32 |= D_800E6310[omCurrentObj->objId];
        func_80111C4C(func_801117BC(D_801CA884_ovl7, omCurrentObj->objId));
        if (D_800D7118.unk3C == 0) {
            D_800EC2E0[omCurrentObj->objId].as_s32 = 1;
        }
    }
}

/* The chained assignments are load-bearing: separate statements are 84 diffs
 * off. */
void func_801A50B0_ovl7(GObj *arg0) {
    f32 c = 65535.0f;

    D_800DF150[omCurrentObj->objId] = func_801A522C_ovl7;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = c;
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] = D_800E33D0[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = c;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    func_801A6610_ovl7();
    func_800AF408();
    ohSleep(0xA);
    func_801A4414_ovl7(arg0);
}
void func_801A522C_ovl7(GObj *arg0) {
    if (D_800EC9E4 != 0.0f) {
        D_800E3210[omCurrentObj->objId] = -D_800EC9E4;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A5274_ovl7.s")

void func_801A557C_ovl7(void) {
    f32 dx;
    f32 dz;
    f32 ax;
    f32 az;

    if (D_800E8E60[omCurrentObj->objId] == 1) { return; }
    func_801A0D74_ovl7();
    if (D_800E8920[omCurrentObj->objId] != 1) { return; }
    if (D_800EC2E0[omCurrentObj->objId].as_s32 != 0) { return; }
    dx = gEntitiesNextPosXArray[omCurrentObj->objId] - gEntitiesPosXArray[omCurrentObj->objId];
    dz = gEntitiesNextPosZArray[omCurrentObj->objId] - gEntitiesPosZArray[omCurrentObj->objId];
    if (dx < 0.0f) { ax = -dx; } else { ax = dx; }
    if (!(0.01f <= ax)) {
        if (dz < 0.0f) { az = -dz; } else { az = dz; }
        if (!(0.01f <= az)) { return; }
    }
    D_800EC2E0[omCurrentObj->objId].as_u32 = 1;
}

void func_801A56A0_ovl7(GObj *arg0) {
    D_800EC2E0[omCurrentObj->objId].as_s32 = 1;
}

#ifdef NON_MATCHING
void func_801A56C8_ovl7(void) {
    Vector sp20;

    sp20.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    sp20.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    sp20.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    func_800A4B34(&sp20, D_800DE350[D_800E0D50[omCurrentObj->objId]]->data.dobj->firstChild);
    D_800E2090[omCurrentObj->objId] = sp20.x;
    D_800E2250[omCurrentObj->objId] = sp20.y;
    D_800E2410[omCurrentObj->objId] = sp20.z;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A56C8_ovl7.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A57A8_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A5DE8_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A5FF4_ovl7.s")

void func_801A630C_ovl7(void) {
    f32 x;
    f32 y;
    f32 z;

    x = gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[omCurrentObj->objId];
    y = (gEntitiesNextPosYArray[0] + 20.0f) - gEntitiesNextPosYArray[omCurrentObj->objId];
    z = gEntitiesNextPosZArray[0] - gEntitiesNextPosZArray[omCurrentObj->objId];
    x = x / 10.0f;
    y = y / 10.0f;
    z = z / 10.0f;
    D_800E3050[omCurrentObj->objId] = x;
    D_800E3210[omCurrentObj->objId] = y;
    D_800E33D0[omCurrentObj->objId] = z;
}

void func_801A63BC_ovl7(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = NULL;
    func_800AFBB4(0, omCurrentObj);
    while (gKirbyState.abilityInUse != 0) {
        ohSleep(1);
    }
    func_801A6434_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A6434_ovl7.s")

void func_801A6610_ovl7(void) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];
    struct Ovl7Unk94 *p;

    func_801A3CA8_ovl7();
    p = (struct Ovl7Unk94 *) ent->unk94;
    if (p->unkC != -1) {
        func_800AECC0(p->unk14);
        func_800AED20(((struct Ovl7Unk94 *) ent->unk94)->unk14);
        func_800A9F98(((struct Ovl7Unk94 *) ent->unk94)->unkC, 1.0f);
        if (((struct Ovl7Unk94 *) ent->unk94)->unk10 != -1) {
            func_800A9F98(((struct Ovl7Unk94 *) ent->unk94)->unk10, 1.0f);
        }
    } else {
        func_800AF408();
    }
}

s32 func_801A66B4_ovl7(void) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];
    s32 temp = ent->unk94->unk18;

    if ((temp == 6) || (temp == 7)) {
        return 1;
    }
    return 0;
}

s32 func_801A66FC_ovl7(void) {
    void func_801A2558_ovl7(u32);
    extern u8 D_800E7730[];
    extern u32 D_801CA9F8_ovl7[];
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];
    u8 ret;
    s32 pad0;
    s32 pad1;
    u32 sel;
    struct Sub800E1B50_Unk84 *sub;

    ret = ent->unk43;
    sel = ret;
    sub = ent->unk84;
    if (ret >= 13) {
        ret = 0;
        sel = 0;
    }
    if ((D_800E7730[omCurrentObj->objId] == 0) && (sub == NULL)) {
        if (ent->unk88->unk10 != 0) {
            func_801A2558_ovl7(ent->unk88->unk10);
        } else {
            func_801A2558_ovl7(&D_801CA9F8_ovl7);
        }
    }
    if ((sel == 1) && (ent->unk3E == 2) && (ent->unk3F == 6)) {
        ret = 7;
    } else {
        switch (sel) {
        case 0:
        case 1:
        case 5:
        case 6:
        case 7:
        case 8:
            ret = 0;
            break;
        case 2:
            ret = 1;
            break;
        case 3:
            ret = 2;
            break;
        case 4:
            ret = 3;
            break;
        case 9:
            ret = 4;
            break;
        case 10:
            ret = 5;
            break;
        case 11:
            ret = 6;
            break;
        case 12:
            ret = 8;
            break;
        }
    }
    return ret;
}

void func_801A6850_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    func_800FD570(0, ent->unk94->unk18, 0.0f, 0.0f, 0.0f);
}

void func_801A68A8_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    func_800FD570(0, ent->unk94->unk18, 0.0f, 0.0f, 0.0f);
}

void func_801A6900_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    func_800FD570(0, ent->unk94->unk18, 0.0f, 0.0f, 0.0f);
}

void func_801A6958_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    func_800FD570(0, ent->unk94->unk18, 0.0f, 0.0f, 0.0f);
}

void func_801A69B0_ovl7(GObj *arg0) {
    void func_800A22D4(u32);
    void func_800A2300(struct GObj *);
    void func_800B6474(s32);
    extern f32 gameTicksPerDraw;
    extern FUNCLIST D_801C2994_ovl7;
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];
    s32 v = ent->unk44;
    f32 c;

    if (v == 0) {
        v = 1;
    }
    D_800DF150[omCurrentObj->objId] = NULL;
    D_800DEF90[omCurrentObj->objId] = func_800B6474;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    c = 65535.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = c;
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] = D_800E33D0[omCurrentObj->objId] =
        D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = c;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    if (ent->unk34 != 0) {
        func_800A22D4(ent->unk34);
    }
    func_800A2300(arg0);
    ent->unk34 = 0;
    if (v == 1) {
        ent->unk43 = 1;
    } else {
        if (ent->unk94->unk1C != 0x80000000) {
            play_sound(ent->unk94->unk1C);
        }
        gEntityFuncListIDArray[omCurrentObj->objId] = v - 1;
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, &D_801C2994_ovl7);
        ent->unk40 = 1;
    }
    func_801A3E80_ovl7(arg0);
}

void func_801A6C10_ovl7(GObj *arg0) {
    void func_801A6DD0_ovl7();
    void func_800A22D4(u32);
    void func_800A2300(struct GObj *);
    void func_801A3D6C_ovl7(void);
    extern struct Sub800E1B50_Unk98 D_801CB470_ovl7;
/* D_801CE010_ovl7 = 0.2f : now emitted by this TU */
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800E9020[omCurrentObj->objId] = 0.0f;
    D_800DF150[omCurrentObj->objId] = func_801A6DD0_ovl7;
    ent->unk48 = 0;
    ent->unk98 = &D_801CB470_ovl7;
    if (ent->unk34 != 0) {
        func_800A22D4(ent->unk34);
    }
    func_800A2300(arg0);
    ent->unk34 = 0;
    func_801A3D6C_ovl7();
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E3210[omCurrentObj->objId] = -3.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3C90[omCurrentObj->objId] = 3.0f;
    ohSleep(3);
    D_800E3750[omCurrentObj->objId] = 0.2f;
    ohSleep(0xC);
    func_800FD570(0, ent->unk94->unk18, 0.0f, 0.0f, 0.0f);
    if (ent->unk94->unk1C != 0x80000000) {
        play_sound(ent->unk94->unk1C);
    }
    ent->unk40 = 1;
    func_801A3E80_ovl7(arg0);
}

void func_801A6DD0_ovl7(void) {
    func_801A0D74_ovl7();
}

/* Last function of ovl7_4: the 6 words after its `.size` are the SGI linker's
   fill up to the next object's alignment, not instructions. `- [0x14D060, pad]`
   in kirby64.yaml declares them (splat renders it `. += 0x10;`), so this is
   plain C. */
void func_801A6DF0_ovl7(GObj *arg0) {
    void func_8019B7D8_ovl7(void);
    void func_800A22D4(u32);
    void func_800A2300(struct GObj *);
    extern f32 gameTicksPerDraw;

    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];
    f32 c;

    func_8019B7D8_ovl7();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    c = 65535.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = c;
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] = D_800E33D0[omCurrentObj->objId] =
        D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = c;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    arg0->onAnimate = NULL;
    D_800DF310[omCurrentObj->objId] = 0;
    if (ent->unk34 != 0) {
        func_800A22D4(ent->unk34);
    }
    func_800A2300(arg0);
    ent->unk34 = 0;
    func_800FD570(0, 6, 0.0f, 0.0f, 0.0f);
    play_sound(0x92);
    func_801A41D4_ovl7(arg0);
}

