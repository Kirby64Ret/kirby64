#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "main/contpad.h"
#include "main/gtl.h"
#include "main/object_helpers.h"
#include "main/object_manager.h"
#include "main/vi.h"
#include "buffers.h"
#include "ovl1/game.h"
#include "ovl1/ovl1_2_2.h"
#include "ovl1/ovl1_3.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/track.h"
#include "ovl1/util.h"
#include "sounds.h"

extern s32 saveCurrentWorld;
extern s32 savePercentComplete;
extern u8 D_800D6BC5;
extern s32 saveCheckCutsceneWatched(s32 arg0);

extern s32 D_800D6B78;
extern s32 D_800D6B7C;
extern s32 D_800D6B98;
extern s32 D_800D6B9C;

extern s32 D_8015C360_ovl4[];
extern s32 D_8015C710_ovl4;
extern s32 D_8015C714_ovl4;
extern s32 D_8015C718_ovl4;
extern s32 D_8015C71C_ovl4;
extern Gfx D_8015C028_ovl4[];
extern f32 D_8015C368_ovl4[];
extern f32 D_8015C3A0_ovl4[];
extern ScreenSettings D_8015C058_ovl4;
extern SceneSetup D_8015C074_ovl4;
extern s32 D_800D6B24;
extern u16 D_8012EB00[][320];
extern u16 D_803D6900[];
extern u16 D_803FC100[];
extern u16 gFrameBuffer[][320];
extern void *D_8018EE60;

extern void func_800A6BC0(s32);
extern void func_800A6E64(void);
extern void func_800A71A0(s32);
extern void func_800A78D0(s32);
extern void func_800A7A40(void);
extern void func_800A8724(s32);
extern void func_800AE048(s32);
extern void func_800AE0F0(void);
extern s32 func_800AEA64(s32, s32, s32);
extern void func_800B2F54(s32, s32, f32);
extern void play_music(s32, s32);

f32 func_80159124_ovl4(s32 arg0);
void func_80158428_ovl4(GObj *arg0);
void func_80158E98_ovl4(s32, s32, s32);
void setProcessMain(struct GObjProcess *, void (*)(struct GObj *));
extern struct GObjProcess *gEntityGObjProcessArray5[];
extern void procMainMove(struct GObj *);
extern void func_800B4924(s32);
extern void func_800A9F98(s32, f32);
extern void func_800AECC0(f32);
extern void func_800AED20(f32);
/* 65535.0f (65535.0f) is emitted by this TU now */
void func_8015986C_ovl4(GObj *arg0);
s32 func_8015874C_ovl4(void);
struct DObj *func_801587CC_ovl4(u32 arg0);
void func_80158CFC_ovl4(GObj *arg0);
extern s32 D_8015C300_ovl4[];
extern s32 D_8015C31C_ovl4;
extern s32 D_8015C320_ovl4;
extern s32 D_8015C324_ovl4;
extern void *D_8015C328_ovl4[][2];
/* 5.5e+02f (5.5e+02f) is emitted by this TU now */
extern void func_800A1F30(s32);
extern s32 func_800A8234(s32, s32, s32);
extern void func_800B1900(u16);
void func_800B2340(Vector *vec, struct DObj *node, u32 track);
void func_800B26D8(Vector *vec, struct DObj *node, u32 track);

// The listing for this function is 0x70 and spans the empty
// func_80158188_ovl4 that follows it -- splat merged them because there
// is no symbol at 0x80158188. 26 instructions here + 2 in that empty
// function is the listing's 28. verify.py reports 1 diff for exactly
// that reason and is wrong; check_layout.py and check_tu_size.py agree
// with this split.
s32 func_80158120_ovl4(void) {
    s32 ret = 0;

    if (D_800E98E0[omCurrentObj->objId] > 0) {
        D_800E98E0[omCurrentObj->objId]--;
        return 0;
    }
    if (gPlayerControllers[0].buttonHeldLong & R_JPAD) {
        ret = 1;
    }
    if (gPlayerControllers[0].buttonHeldLong & L_JPAD) {
        ret = -1;
    }
    return ret;
}

void func_80158188_ovl4(void) {
}

void func_80158190_ovl4(GObj *arg0) {
    void func_801593A4_ovl4(GObj *);
    void func_80158224_ovl4(GObj *);
    void func_80159160_ovl4(GObj *);
    void func_801588F4_ovl4(GObj *, s32);

    switch (D_800E98E0[omCurrentObj->objId]) {
        case 0:
            func_80158224_ovl4(arg0);
            break;
        case 1:
            func_80159160_ovl4(arg0);
            break;
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
            func_801588F4_ovl4(arg0, D_800E98E0[omCurrentObj->objId] - 2);
            break;
        case 9:
            func_801593A4_ovl4(arg0);
            break;
    }
    curObjSleepForever();
}

void func_80158224_ovl4(GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = NULL;
    D_8015C718_ovl4 = omCurrentObj->objId;
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 5;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = D_800D6B98;
    func_800B2F54(0x10, D_8015C360_ovl4[D_8015C71C_ovl4], func_80159124_ovl4(D_800D6B98));
    func_800A71A0(0x10);
    if (D_800D6B7C != 0) {
        play_sound(SOUND_SELECTJET1);
        D_800E9E20[omCurrentObj->objId] = D_800D6B98 + 1;
        ohSleep(5);
        D_800D6B7C = 0;
        D_800E9C60[omCurrentObj->objId] = 2;
        D_800D6B9C = 0;
        while (D_800E9C60[omCurrentObj->objId] != 0) {
            ohSleep(1);
        }
        ohSleep(5);
    }
    D_800DF150[omCurrentObj->objId] = func_80158428_ovl4;
    while (D_8015C710_ovl4 == 0) {
        ohSleep(1);
    }
    D_800DF150[omCurrentObj->objId] = NULL;
    D_8015C710_ovl4 = 2;
    curObjSleepForever();
}

void func_80158428_ovl4(GObj *arg0) {
    s32 tmp_func_return;

    if (D_800E9AA0[omCurrentObj->objId].as_s32 != 0) {
        D_800E9AA0[omCurrentObj->objId].as_s32 = D_800E9AA0[omCurrentObj->objId].as_s32 - 1;
        return;
    }
    if (D_800E9C60[omCurrentObj->objId] != 0) {
        D_800E98E0[D_8015C718_ovl4] = 0;
        return;
    }
    if (gPlayerControllers[0].buttonPressed & (A_BUTTON | START_BUTTON)) {
        D_8015C710_ovl4 = 1;
        play_sound(SOUND_KETTEIWL);
        return;
    }
    tmp_func_return = func_80158120_ovl4();
    if (tmp_func_return == 1) {
        if (D_800D6B98 < func_8015874C_ovl4()) {
            D_800E9E20[omCurrentObj->objId] = D_800D6B98 + 1;
            D_800E9C60[omCurrentObj->objId] = 2;
            play_sound(SOUND_SELECTJET1);
            D_800D6B9C = 0;
            D_800E98E0[omCurrentObj->objId] = 0x25;
        } else {
            if ((D_8015C71C_ovl4 == 0) && (func_8015874C_ovl4() == 5)
             || ((D_8015C71C_ovl4 == 1) && (func_8015874C_ovl4() == 6)))
            {
                D_800E9E20[omCurrentObj->objId] = 0;
                D_800E9C60[omCurrentObj->objId] = 2;
                play_sound(SOUND_SELECTJET1);
                D_800D6B9C = 0;
                D_800E98E0[omCurrentObj->objId] = 0x25;
            }
        }
    }
    if (tmp_func_return == -1) {
        if (D_800D6B98 > 0) {
            D_800E9E20[omCurrentObj->objId] = D_800D6B98 - 1;
            D_800E9C60[omCurrentObj->objId] = 1;
            play_sound(SOUND_SELECTJET1);
            D_800D6B9C = 0;
            D_800E98E0[omCurrentObj->objId] = 0x25;
            return;
        }
        if ((D_8015C71C_ovl4 == 0) && (func_8015874C_ovl4() == 5)
         || ((D_8015C71C_ovl4 == 1) && (func_8015874C_ovl4() == 6)))
        {
                D_800E9E20[omCurrentObj->objId] = func_8015874C_ovl4();
                D_800E9C60[omCurrentObj->objId] = 1;
                play_sound(SOUND_SELECTJET1);
                D_800D6B9C = 0;
                D_800E98E0[omCurrentObj->objId] = 0x25;
        }
    }
}

s32 func_8015874C_ovl4(void) {
    if (saveCurrentWorld < 6) {
        return saveCurrentWorld - 1;
    }
    if (D_800D6BC5 == 0) {
        return 5;
    }
    if (savePercentComplete != 0x64) {
        return 5;
    }
    if (saveCheckCutsceneWatched(0xD) == 0) {
        return 5;
    }
    return 6;
}

/* The out-of-range case returns an uninitialised stack word; that is what the
 * ROM does. */
struct DObj *func_801587CC_ovl4(u32 arg0) {
    struct DObj *ret;

    switch (arg0) {
        case 0:
            ret = D_800DFBD0[D_8015C714_ovl4][0x6C / 4];
            break;
        case 1:
            ret = D_800DFBD0[D_8015C714_ovl4][0x58 / 4];
            break;
        case 2:
            ret = D_800DFBD0[D_8015C714_ovl4][0x74 / 4];
            break;
        case 3:
            ret = D_800DFBD0[D_8015C714_ovl4][0x1C / 4];
            break;
        case 4:
            ret = D_800DFBD0[D_8015C714_ovl4][0x18 / 4];
            break;
        case 5:
            ret = D_800DFBD0[D_8015C714_ovl4][0x70 / 4];
            break;
        case 6:
            ret = D_800DFBD0[D_8015C714_ovl4][0x3C / 4];
            break;
    }
    return ret;
}

void func_801588F4_ovl4(GObj *arg0, s32 arg1) {
    s32 unused;
    Vector posVec;
    Vector angleVec;
    s32 unused2;

    D_800E98E0[omCurrentObj->objId] = arg1;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    if (func_8015874C_ovl4() < arg1) {
        func_800B1900(((u16 *) omCurrentObj)[1]);
    }
    D_800DF150[omCurrentObj->objId] = func_80158CFC_ovl4;
    func_800B2340(&posVec, func_801587CC_ovl4(arg1), D_8015C714_ovl4);
    gEntitiesNextPosXArray[omCurrentObj->objId] = posVec.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = posVec.y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = posVec.z;
    func_800B26D8(&angleVec, func_801587CC_ovl4(arg1), D_8015C714_ovl4);
    gEntitiesAngleXArray[omCurrentObj->objId] = angleVec.x;
    gEntitiesAngleYArray[omCurrentObj->objId] = angleVec.y;
    gEntitiesAngleZArray[omCurrentObj->objId] = angleVec.z;
    if ((arg1 == 5) && (func_8015874C_ovl4() != 6)) {
        func_800A9864(D_8015C31C_ovl4, 0x1869F, 0x10);
        if (D_8015C320_ovl4 != 0) {
            func_800AA018(D_8015C320_ovl4);
        }
        if (D_8015C324_ovl4 != 0) {
            func_800AA018(D_8015C324_ovl4);
        }
    } else {
        func_800A9864(D_8015C300_ovl4[arg1], 0x1869F, 0x10);
        if (D_8015C328_ovl4[arg1][0] != NULL) {
            func_800AA018((s32) D_8015C328_ovl4[arg1][0]);
        }
        if (D_8015C328_ovl4[arg1][1] != NULL) {
            func_800AA018((s32) D_8015C328_ovl4[arg1][1]);
        }
    }
    if (arg1 == 6) {
        D_800E9AA0[omCurrentObj->objId].as_s32 = func_800A8234(1, 0, 6);
    }
    while (1) {
        if (arg1 == 2) {
            if ((arg0->animTimer == 24.0f)
             || (arg0->animTimer == 124.0f)
             || (arg0->animTimer == 224.0f)
             || (arg0->animTimer == 324.0f)
             || (arg0->animTimer == 424.0f)
             || (arg0->animTimer == 524.0f)) {
                D_800E9AA0[omCurrentObj->objId].as_s32 = func_800A8234(1, 0, 2);
            }
            if ((arg0->animTimer == 50.0f)
             || (arg0->animTimer == 150.0f)
             || (arg0->animTimer == 250.0f)
             || (arg0->animTimer == 350.0f)
             || (arg0->animTimer == 450.0f)
             || (arg0->animTimer == 5.5e+02f)) {
                func_800A1F30(D_800E9AA0[omCurrentObj->objId].as_s32);
                D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
            }
        }
        ohSleep(1);
    }
}

typedef struct {
    /* 0x00 */ u32 unk0;
    /* 0x04 */ f32 unk4;
    /* 0x08 */ f32 unk8;
    /* 0x0C */ f32 unkC;
    /* 0x10 */ f32 unk10;
    /* 0x14 */ f32 unk14;
    /* 0x18 */ f32 unk18;
} Unk8015C740Node;

void func_80158CFC_ovl4(GObj *arg0) {
    Vector posVec;
    Vector angleVec;
    s32 v;
    s32 unused;
    GObj *g;

    v = D_800E98E0[omCurrentObj->objId];
    g = D_800E9AA0[omCurrentObj->objId].as_ptr;
    func_800B2340(&posVec, func_801587CC_ovl4(v), D_8015C714_ovl4);
    func_800B26D8(&angleVec, func_801587CC_ovl4(D_800E98E0[omCurrentObj->objId]), D_8015C714_ovl4);
    gEntitiesNextPosXArray[omCurrentObj->objId] = posVec.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = posVec.y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = posVec.z;
    gEntitiesAngleXArray[omCurrentObj->objId] = angleVec.x;
    gEntitiesAngleYArray[omCurrentObj->objId] = angleVec.y;
    gEntitiesAngleZArray[omCurrentObj->objId] = angleVec.z;
    if (((v == 2) && (g != NULL)) || (v == 6)) {
        ((Unk8015C740Node *) g->unk4C)->unk4 = posVec.x;
        ((Unk8015C740Node *) g->unk4C)->unk8 = posVec.y;
        ((Unk8015C740Node *) g->unk4C)->unkC = posVec.z;
        ((Unk8015C740Node *) g->unk4C)->unk10 = angleVec.x;
        ((Unk8015C740Node *) g->unk4C)->unk14 = angleVec.y;
        ((Unk8015C740Node *) g->unk4C)->unk18 = angleVec.z;
    }
}

/* 6/163: semantically complete. Residue is the stack slot of the f32 temp
 * (ROM 0x24, IDO 0x20 -- the local block anchors one word lower) and the FP
 * register pairing of the `== 0.0f` compare (ROM materialises 0.0 into $f16
 * first, IDO loads the temp there). Swept: 0..3 dead scalars in every position
 * around the f32, f32 vs s32 pads, both compare operand orders, the empty-then
 * polarity form. */
#ifdef NON_MATCHING
extern f32 D_8015C3BC_ovl4[];
extern f32 D_8015C384_ovl4[];
extern s32 saveCurrentFileNum;
void func_800B3070(s32, f32);
void func_800B9C50(s32);
void animUpdateModelTreeAnimation(GObj *);

void func_80158E98_ovl4(s32 arg0, s32 arg1, s32 arg2) {
    f32 sp24;
    s32 pad0;
    s32 pad1;
    s32 v;
    s32 i;

    if (D_8015C71C_ovl4 == 1) {
        if (arg2 == 2) {
            v = D_8015C3A0_ovl4[arg0];
        } else {
            v = D_8015C3BC_ovl4[arg0];
        }
    } else {
        if (arg2 == 2) {
            v = D_8015C368_ovl4[arg0];
        } else {
            v = D_8015C384_ovl4[arg0];
        }
    }
    if (D_8015C71C_ovl4 == 1) {
        sp24 = v;
        func_800A9F98(0x30012, sp24);
    } else {
        sp24 = v;
        func_800A9F98(0x30014, sp24);
    }
    if (0.0f == sp24) {
        animUpdateModelTreeAnimation(D_800DE350[omCurrentObj->objId]);
    }
    func_800AECC0(2.0f);
    func_800AED20(2.0f);
    func_800B3070(0x10, 2.0f);
    func_800B2F54(0x10, D_8015C360_ovl4[D_8015C71C_ovl4], sp24);
    func_800A71A0(0x10);
    if ((D_8015C71C_ovl4 == 1)
     && ((((arg0 == 5) || (arg0 == 6)) && (arg2 == 2)) || (((arg0 == 0) || (arg0 == 6)) && (arg2 == 1)))) {
        for (i = 0; i != 0x23; i++) {
            func_800A71A0(0x10);
            ohSleep(1);
        }
    } else {
        for (i = 0; i != 0x19; i++) {
            func_800A71A0(0x10);
            ohSleep(1);
        }
    }
    D_800E9C60[D_8015C718_ovl4] = 0;
    D_800D6B98 = D_800E9E20[D_8015C718_ovl4];
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    func_800B9C50(saveCurrentFileNum);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_4/func_80158E98_ovl4.s")
#endif

f32 func_80159124_ovl4(s32 arg0) {
    if (D_8015C71C_ovl4 == 1) {
        return D_8015C3A0_ovl4[arg0];
    }
    return D_8015C368_ovl4[arg0];
}

void func_80159160_ovl4(GObj *arg0) {
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainMove);
    D_800DEF90[omCurrentObj->objId] = func_800B4924;
    D_800DF150[omCurrentObj->objId] = NULL;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    gEntitiesNextPosXArray[omCurrentObj->objId] = 0.0f;
    gEntitiesNextPosYArray[omCurrentObj->objId] = 0.0f;
    gEntitiesNextPosZArray[omCurrentObj->objId] = 0.0f;
    D_8015C714_ovl4 = omCurrentObj->objId;
    D_800E98E0[omCurrentObj->objId] = D_800D6B98;
    func_800A9864(0x3000A, 0x1869F, 0x10, &D_800E3750);
    if (D_8015C71C_ovl4 == 1) {
        func_800A9F98(0x30012, func_80159124_ovl4(D_800D6B98));
    } else {
        func_800A9F98(0x30014, func_80159124_ovl4(D_800D6B98));
    }
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    while (D_8015C710_ovl4 == 0) {
        if (D_800E9C60[D_8015C718_ovl4] != 0) {
            func_80158E98_ovl4(D_800D6B98, D_800E9E20[D_8015C718_ovl4], D_800E9C60[D_8015C718_ovl4]);
        }
        ohSleep(1);
    }
    curObjSleepForever();
}

/* 174/289: control flow and every branch target line up with the listing; the
 * residue is a whole-function saved-register rotation (ROM s2=arg0 s3=&D_8015C718,
 * IDO s1/s2) plus the local block sitting 0x10 higher (ROM frame 0x98 with the
 * two 7-word copies at the BOTTOM, IDO 0x90 with them at the top). Swept:
 * scalar locals declared before/after/around the two array copies, three dead
 * pads, non-void return types on the prototypes this function introduces,
 * peeled vs plain `for` for the alpha-clear walk. */
#ifdef NON_MATCHING
#include "SPObj.h"

typedef struct {
    s32 unk0[7];
} Unk7Words;

struct UnkStruct8015C740;
extern Unk7Words D_8015BFF0_ovl4;
extern Unk7Words D_8015C00C_ovl4;
extern struct UnkStruct8015C740 D_8015C1E0_ovl4;
extern struct UnkStruct8015C740 D_8015C200_ovl4;
extern s32 D_8015C718_ovl4;
extern s32 D_800D6B7C;
SPObj *func_8015C740_ovl5(GObj *, struct UnkStruct8015C740 *);
void func_800ACBDC(GObj *);
void func_800AD1A0(GObj *);
void procMainStub(GObj *);
void omLinkGObjDL(GObj *, void (*)(GObj *), u8, s32, s32);

void func_801593A4_ovl4(GObj *arg0) {
    Unk7Words sp64 = D_8015BFF0_ovl4;
    Unk7Words sp48 = D_8015C00C_ovl4;
    SPObj *sp;
    s32 cur;
    s32 a;

    cur = D_800E9E20[D_8015C718_ovl4];
    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    omLinkGObjDL(arg0, func_800AD1A0, 0xA, 0x80000000, 0xA);
    func_8015C740_ovl5(arg0, (struct UnkStruct8015C740 *) sp64.unk0[cur]);
    func_8015C740_ovl5(arg0, &D_8015C1E0_ovl4);
    func_8015C740_ovl5(arg0, &D_8015C200_ovl4);
    func_8015C740_ovl5(arg0, (struct UnkStruct8015C740 *) sp48.unk0[cur]);
    if (D_800D6B7C != 0) {
        for (sp = arg0->unk4C; sp != NULL; sp = (SPObj *) sp->unk8) {
            sp->primColorAlpha = 0;
        }
        while ((D_800E9C60[D_8015C718_ovl4] != 0) || (D_800D6B7C != 0)) {
            ohSleep(1);
        }
        sp = arg0->unk4C;
        while (sp->primColorAlpha < 0xFF) {
            if (cur != D_800E9E20[D_8015C718_ovl4]) {
                break;
            }
            while (sp != NULL) {
                a = sp->primColorAlpha + 0x1E;
                if (a < 0x100) {
                    sp->primColorAlpha = a;
                } else {
                    sp->primColorAlpha = 0xFF;
                }
                sp = (SPObj *) sp->unk8;
            }
            ohSleep(1);
            sp = arg0->unk4C;
        }
    }
    while (1) {
        if (cur == D_800E9E20[D_8015C718_ovl4]) {
            ohSleep(1);
            continue;
        }
        sp = arg0->unk4C;
        if (sp->primColorAlpha > 0) {
            do {
                while (sp != NULL) {
                    a = sp->primColorAlpha - 0x28;
                    if (a >= 0) {
                        sp->primColorAlpha = a;
                    } else {
                        sp->primColorAlpha = 0;
                    }
                    sp = (SPObj *) sp->unk8;
                }
                ohSleep(1);
                sp = arg0->unk4C;
            } while (sp->primColorAlpha > 0);
        }
        cur = D_800E9E20[D_8015C718_ovl4];
        func_800ACBDC(arg0);
        func_8015C740_ovl5(arg0, (struct UnkStruct8015C740 *) sp64.unk0[cur])->primColorAlpha = 0;
        func_8015C740_ovl5(arg0, &D_8015C1E0_ovl4)->primColorAlpha = 0;
        func_8015C740_ovl5(arg0, (struct UnkStruct8015C740 *) sp48.unk0[cur])->primColorAlpha = 0;
        func_8015C740_ovl5(arg0, &D_8015C200_ovl4)->primColorAlpha = 0;
        while (D_800E9C60[D_8015C718_ovl4] != 0) {
            ohSleep(1);
        }
        sp = arg0->unk4C;
        while (sp->primColorAlpha < 0xFF) {
            if (cur != D_800E9E20[D_8015C718_ovl4]) {
                break;
            }
            while (sp != NULL) {
                a = sp->primColorAlpha + 0x1E;
                if (a < 0x100) {
                    sp->primColorAlpha = a;
                } else {
                    sp->primColorAlpha = 0xFF;
                }
                sp = (SPObj *) sp->unk8;
            }
            ohSleep(1);
            sp = arg0->unk4C;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_4/func_801593A4_ovl4.s")
#endif

void func_80159828_ovl4(void) {
    D_800D6B78 = 0;
    if (func_8015874C_ovl4() == 6) {
        D_8015C71C_ovl4 = 1;
    } else {
        D_8015C71C_ovl4 = 0;
    }
}

void func_8015986C_ovl4(GObj *arg0) {
    if ((D_800D6B24 == 0) && (D_8015C710_ovl4 == 2)) {
        utilSetRectColorFullScreen(0, 0, 0);
        utilSpawnRect(0, 0x10, 2);
    }
}

void func_801598C4_ovl4(void) {
    s32 i;

    gameSetUpdateRate(2.0f);
    ohCreateCameraWrapper(0x19, 0x80000000, 0x63, 3, 0xA0A32FF);
    func_800AE048(0x80);
    func_800AE0F0();
    func_800A6E64();
    func_800A78D0(0);
    func_800A8724(0);
    func_800A7A40();
    func_80159828_ovl4();
    play_music(0, 0x25);
    func_800A6BC0(0xB);
    D_800E98E0[func_800AEA64(2, 0, 0x70)] = 0;
    D_800E98E0[request_track_general(2, 0, 0x70)] = 1;
    for (i = 2; i < 9; i++) {
        D_800E98E0[request_track_general(2, 0, 0x70)] = i;
    }
    D_800E98E0[request_track_3(2, 0, 0x70)] = 9;
    HS64_omMakeGObj(0, func_8015986C_ovl4, 0x1A, 0x80000000);
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0xFF, -0x10, 0);
}

void func_80159A30_ovl4(Gfx **gp) {
    gSPDisplayList((*gp)++, &D_8015C028_ovl4);
}

// The vu16 casts in the clear loop are load-bearing: they stop IDO hoisting the
// induction bump to the top of the 4x-unrolled body.  See func_8017CC3C_ovl5.
void func_80159A54_ovl4(void) {
    s32 i;

    D_8015C058_ovl4.zBuffer = (u16 *) ((u32) D_8012EB00 - 0x1900);
    viApplyScreenSettings(&D_8015C058_ovl4);
    D_8015C074_ovl4.gtlSetup.heapSize = (u8 *) gFrameBuffer - (u8 *) &D_8018EE60;
    i = 0;
    do {
        ((vu16 *) gFrameBuffer)[i] = 1;
        ((vu16 *) D_803D6900)[i + 0x1F80] = 1;
        i++;
    } while (i != 320 * 240);
    D_8015C710_ovl4 = 0;
    gtlCreateScene(&D_8015C074_ovl4);
}
