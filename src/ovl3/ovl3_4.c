#include <ultra64.h>
#include <macros.h>
#include "common.h"

extern s32 D_8012E944;

extern void func_800FF200(s32);
extern void func_800AA018(s32);
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/util.h"
#include "Player.h"

extern u8 D_801CA980;
extern FUNCLIST D_80196910_ovl3;

extern void func_801A32EC(u8 *);
extern void func_801A3938(s32);
/* D_80197278_ovl3 now emitted by this TU */

extern void func_8016BD24_ovl3(s32);
extern void func_801696F0_ovl3(s32);

extern struct GObjProcess *gEntityGObjProcessArray[];
extern struct GObjProcess *gEntityGObjProcessArray3[];
extern s32 D_8012EAE0;
/* D_801971F0_ovl3 now emitted by this TU */
/* D_801971F4_ovl3 now emitted by this TU */
extern void assign_new_process_entry(struct GObjProcess *, void (*)(struct GObj *));
extern void animResetModelAndTextureAnimation(GObj *);
extern void func_8011DC5C(void);
extern void func_8011E0E8(void);
extern void func_800A22D4(s32);
void func_80169694_ovl3(s32);
void func_80177098_ovl3(s32);

void func_80169430_ovl3(s32 arg0, s32 arg1, u8 arg2, s32 arg3) {
    f32 temp;
    f32 scale;

    D_800E8760[arg0] = 1;
    D_800EA520[arg0] = (*((u8 *) &arg1 + 3) << 8) | arg2;
    gEntityFuncListIDArray[arg0] = arg3;
    assign_new_process_entry(gEntityGObjProcessArray[arg0], func_80169694_ovl3);
    D_800DF150[arg0] = NULL;
    if (*((u8 *) &arg1 + 3) == 0) {
        *(s32 *) &gKirbyState.actionChange = -1;
        gKirbyState.unk4 = 0;
        gKirbyState.previousAction = gKirbyState.action;
        gKirbyState.action = 0x15;
        gKirbyState.abilityInUse = 0;
        gKirbyState.unk7 = 0;
        gKirbyState.isTurning = 0;
        gEntitiesAngleYArray[arg0] = D_800E17D0[arg0];
        gKirbyState.isInhaling = 0;
        gKirbyState.unkB8 = 0;
        gKirbyState.unkD = -3;
        D_800E8060[arg0] = -1;
        gKirbyState.damageType = 0;
        *(s16 *) &gKirbyState.damageFlashTimer = -1;
        gEntitiesAngleXArray[arg0] = 0.0;
        func_8011DC5C();
        func_8011E0E8();
        if (D_8012EAE0 != 0) {
            func_800A22D4(D_8012EAE0);
            D_8012EAE0 = 0;
        }
        D_800DDE10[arg0] = 0;
        assign_new_process_entry(gEntityGObjProcessArray3[arg0], func_80177098_ovl3);
    }
    temp = 65535.0f;
    scale = 0.2f;
    D_800DDA90[arg0] = 0x26;
    D_800E0D50[arg0] = omCurrentObj->objId;
    D_800E33D0[arg0] = 0.0f;
    D_800E3210[arg0] = 0.0f;
    D_800E3050[arg0] = 0.0f;
    D_800E64D0[arg0] = 0.0f;
    D_800E3910[arg0] = 0.0f;
    D_800E3750[arg0] = 0.0f;
    D_800E3590[arg0] = 0.0f;
    D_800E6690[arg0] = 0.0f;
    D_800E3E50[arg0] = temp;
    D_800E3C90[arg0] = temp;
    D_800E3AD0[arg0] = temp;
    D_800E6850[arg0] = temp;
    gEntitiesScaleZArray[arg0] = scale;
    gEntitiesScaleYArray[arg0] = scale;
    gEntitiesScaleXArray[arg0] = scale;
    animResetModelAndTextureAnimation(D_800DE350[arg0]);
}

void func_80169694_ovl3(s32 arg0) {
    func_801A32EC(&D_801CA980);
    func_801A3938(0);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 0x11, D_80196910_ovl3);
}

void func_801696F0_ovl3(s32 arg0) {
    func_800FF200(D_8012E944);
}

#ifdef NON_MATCHING
/* 3/224.  Was 12/224 with the two constants as `extern f32`; ovl3's rodata is
   MIGRATED now, and the literal form fixed nine of the twelve FP-register
   diffs on its own.  The residue is the D_800E6BD0/D_800E6D90 chained store:
   the ROM keeps it in $f0, IDO uses $f2.  Swept since: splitting the chain in
   either direction (126/61), reversing it (9), one physical line (3), dropping
   `temp`, assigning it late, and a second temp local -- all 3. */
extern void func_800A9760(s32);
extern void func_8016BBD0_ovl3(void);
extern void func_800FF0A8(s32);
extern void func_800FF0C4(s32);
extern void func_800FBE1C(void);
extern void func_800FA414(s32);
extern void func_800BB468(s32, s32);
void func_800B4924(s32);
extern void func_800B531C(struct GObj *);
void curObjSleepForever(void);
void ohSleep(s32);
void func_80169A98_ovl3(s32);

void func_80169718_ovl3(GObj *arg0) {
    f32 temp;

    if ((D_800EA520[omCurrentObj->objId] & 0xFF) == 0) {
        func_800A9760(0x20007);
    }
    D_800DF150[omCurrentObj->objId] = func_80169A98_ovl3;
    D_800DEF90[omCurrentObj->objId] = func_800B4924;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E98E0[omCurrentObj->objId] = 0;
    func_8016BBD0_ovl3();
    arg0->flags |= 1;
    func_800FF0A8(D_8012E944);
    temp = 65535.0f;
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] = D_800E33D0[omCurrentObj->objId] =
        D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = temp;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = temp;
    func_800FBE1C();
    func_800FA414(5);
    func_800BB468(0, 0);
    ohSleep(0x41);
    D_800E98E0[omCurrentObj->objId] = 1;
    arg0->flags ^= 1;
    func_800FF0C4(D_8012E944);
    D_800E5F90[omCurrentObj->objId] = D_800E6150[omCurrentObj->objId] =
        D_800E5F90[D_800E0D50[omCurrentObj->objId]];
    D_800E6BD0[omCurrentObj->objId] = D_800E6D90[omCurrentObj->objId] =
        D_800E6BD0[D_800E0D50[omCurrentObj->objId]];
    D_800E8920[omCurrentObj->objId] = 0;
    D_800DEF90[omCurrentObj->objId] = func_800B531C;
    D_800E3210[omCurrentObj->objId] = -10.0f;
    D_800E3750[omCurrentObj->objId] = -0.980665f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    func_800FA414(3);
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_4/func_80169718_ovl3.s")
#endif
extern f32 gKirbyHp;
extern void play_sound(s32);
s32 change_kirby_hp(f32);
/* K&R form is load-bearing here: an ANSI (Vector *, struct DObj *, u32)
 * prototype shifts register allocation in this TU (measured via objdump
 * A/B against the last known-good build -- a large run of instructions in
 * a caller renames $a2 to $v0). */
void func_800B2340();
void func_800B26D8(Vector *, struct DObj *, u32);

void func_80169A98_ovl3(s32 arg0) {
    struct DObj *dobj;
    Vector sp30;
    Vector sp24;

    dobj = D_800DE350[D_800E0D50[omCurrentObj->objId]]->data.dobj;
    if (D_800E98E0[omCurrentObj->objId] == 0) {
        func_800B2340(&sp30, dobj, D_800E0D50[omCurrentObj->objId]);
        gEntitiesNextPosXArray[omCurrentObj->objId] = sp30.x;
        gEntitiesNextPosYArray[omCurrentObj->objId] = sp30.y - 5.0f;
        gEntitiesNextPosZArray[omCurrentObj->objId] = sp30.z;
        func_800B26D8(&sp24, dobj, D_800E0D50[omCurrentObj->objId]);
        gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId] + sp24.y;
    }
    if (D_800E98E0[omCurrentObj->objId] > 0) {
        change_kirby_hp(-1.0f);
        if (0.0f < gKirbyHp) {
            play_sound(0xD9);
        }
        func_8016BD24_ovl3(1);
    }
    func_801696F0_ovl3(arg0);
}

#ifdef MIPS_TO_C
/* NOT MEASURABLE: redeclaration of 'curObjSleepForever'; previous declaration at line 281 in file 'src/ovl3/ovl3_4.c'
 * ovl3_4.c keeps its prototypes (curObjSleepForever, func_800B33F4,
 * func_800B531C, func_800B4924, func_800B4954) in a PORT-only block, so nothing
 * declares them for the N64 build. A draft must supply them in-body, and IDO
 * allows only ONE block-scope copy per TU -- so only one draft in this file can
 * be compiled at a time. Each of these four was measured that way in isolation
 * and then sealed; the note above records what it scored. Un-blocking the whole
 * file is a one-line coordinator change: move those prototypes to real file
 * scope. Do NOT hoist them from a lane -- the equivalent move in ovl10_1.c was
 * measured to move a matched function and grow that TU by 0x40. */

void func_80169C10_ovl3(GObj *arg0) {
    extern void func_800B531C(struct GObj *);
    extern void func_800B4954(struct GObj *);
    extern void func_800B4954(GObj *);
    extern f32 func_800F9828(s32, s32);
    void func_800B33F4(void);
    void func_8016A144_ovl3(s32);

    s32 id = omCurrentObj->objId;
    s32 i;
    f32 grav;

    if (!(D_800EA520[id] & 0xFF)) {
        func_800A9760(0x20007);
    }
    id = omCurrentObj->objId;
    D_800DF150[id] = (void (*)(struct GObj *)) func_8016A144_ovl3;
    D_800DEF90[id] = (void (*)(s32)) func_800B4954;
    D_800E8920[id] = 0;
    D_800EA1A0[id] = 0;
    D_800E98E0[id] = 0;
    func_8016BBD0_ovl3();
    func_800B33F4();
    id = omCurrentObj->objId;
    D_800E64D0[id] = func_800F9828(id, D_800E0D50[id]) * 0.25f;
    id = omCurrentObj->objId;
    D_800E3210[id] = ((gEntitiesNextPosYArray[0] + 20.0f) - gEntitiesNextPosYArray[D_800E0D50[id]]) * -0.25f;
    ohSleep(3);
    func_800B33F4();
    func_800BB468(0, 0);
    D_800E98E0[omCurrentObj->objId] = 1;
    arg0->flags |= 1;
    func_800B33F4();
    func_800FBE1C();
    func_800FA414(5);
    while (D_800E9FE0[D_800E0D50[omCurrentObj->objId]].as_u32 == 0) {
        ohSleep(1);
    }
    D_800E98E0[omCurrentObj->objId] = 2;
    arg0->flags ^= 1;
    func_800FA414(3);
    id = omCurrentObj->objId;
    D_800E5F90[id] = D_800E6150[id] = D_800E5F90[D_800E0D50[id]];
    id = omCurrentObj->objId;
    D_800E6BD0[id] = D_800E6D90[id] = D_800E6BD0[D_800E0D50[id]];
    id = omCurrentObj->objId;
    gEntitiesNextPosYArray[id] = gEntitiesNextPosYArray[D_800E0D50[id]];
    func_801A32EC(&D_801CA980);
    id = omCurrentObj->objId;
    if (D_800E7880[D_800E0D50[id]] & 1) {
        D_800E3210[id] = 8.0f;
    } else {
        D_800E3210[id] = -8.0f;
    }
    for (i = 0; i != 0xA; i++) {
        D_800E8920[omCurrentObj->objId] = 0;
        ohSleep(1);
    }
    id = omCurrentObj->objId;
    if (D_800EA1A0[id] == 0) {
        play_sound(0xDB);
        D_800EA1A0[omCurrentObj->objId] = 1;
    }
    id = omCurrentObj->objId;
    if (D_800E3210[id] > 0.0f) {
        grav = D_800E3210[id] * 0.0625f;
        D_800E3750[id] = (grav < 0.0f) ? grav : -grav;
        while ((D_800E3210[omCurrentObj->objId] > 0.0f) &&
               (D_800E98E0[omCurrentObj->objId] < 3)) {
            D_800E8920[omCurrentObj->objId] = 0;
            ohSleep(1);
        }
    }
    id = omCurrentObj->objId;
    D_800E8920[id] = 0;
    D_800DEF90[id] = (void (*)(s32)) func_800B531C;
    func_800B33F4();
    D_800E98E0[omCurrentObj->objId] = 3;
    curObjSleepForever();
}
#elif defined(PORT)
/* PORT: swallowed-by-enemy coroutine (via m2c). Drifts the player toward
 * the swallower (quarter of the track gap per tick, aiming 20 units above
 * the PLAYER entity 0's height -- the [0] index is the ROM's), then rides
 * inside it: waits for the swallower's grab word (D_800E9FE0), adopts its
 * track state, gets pushed along at +-8 by its facing (D_800E7880 bit 0),
 * decays that push with gravity -|v|/16 until it stops or the state
 * advances, and hands motion back to the normal track callback. The
 * chewed-damage handler installed here is func_8016A144_ovl3. */
extern void func_800B4954(GObj *);
extern f32 func_800F9828(s32, s32);
void func_800B33F4(void);
void func_8016A144_ovl3(s32);

void func_80169C10_ovl3(GObj *arg0) {
    s32 id = omCurrentObj->objId;
    s32 i;
    f32 grav;

    if (!(D_800EA520[id] & 0xFF)) {
        func_800A9760(0x20007);
    }
    id = omCurrentObj->objId;
    D_800DF150[id] = (void (*)(struct GObj *)) func_8016A144_ovl3;
    D_800DEF90[id] = (void (*)(s32)) func_800B4954;
    D_800E8920[id] = 0;
    D_800EA1A0[id] = 0;
    D_800E98E0[id] = 0;
    func_8016BBD0_ovl3();
    func_800B33F4();
    id = omCurrentObj->objId;
    D_800E64D0[id] = func_800F9828(id, D_800E0D50[id]) * 0.25f;
    id = omCurrentObj->objId;
    D_800E3210[id] = ((gEntitiesNextPosYArray[0] + 20.0f) - gEntitiesNextPosYArray[D_800E0D50[id]]) * -0.25f;
    ohSleep(3);
    func_800B33F4();
    func_800BB468(0, 0);
    D_800E98E0[omCurrentObj->objId] = 1;
    arg0->flags |= 1;
    func_800B33F4();
    func_800FBE1C();
    func_800FA414(5);
    while (D_800E9FE0[D_800E0D50[omCurrentObj->objId]].as_u32 == 0) {
        ohSleep(1);
    }
    D_800E98E0[omCurrentObj->objId] = 2;
    arg0->flags ^= 1;
    func_800FA414(3);
    id = omCurrentObj->objId;
    D_800E5F90[id] = D_800E6150[id] = D_800E5F90[D_800E0D50[id]];
    id = omCurrentObj->objId;
    D_800E6BD0[id] = D_800E6D90[id] = D_800E6BD0[D_800E0D50[id]];
    id = omCurrentObj->objId;
    gEntitiesNextPosYArray[id] = gEntitiesNextPosYArray[D_800E0D50[id]];
    func_801A32EC(&D_801CA980);
    id = omCurrentObj->objId;
    if (D_800E7880[D_800E0D50[id]] & 1) {
        D_800E3210[id] = 8.0f;
    } else {
        D_800E3210[id] = -8.0f;
    }
    for (i = 0; i != 0xA; i++) {
        D_800E8920[omCurrentObj->objId] = 0;
        ohSleep(1);
    }
    id = omCurrentObj->objId;
    if (D_800EA1A0[id] == 0) {
        play_sound(0xDB);
        D_800EA1A0[omCurrentObj->objId] = 1;
    }
    id = omCurrentObj->objId;
    if (D_800E3210[id] > 0.0f) {
        grav = D_800E3210[id] * 0.0625f;
        D_800E3750[id] = (grav < 0.0f) ? grav : -grav;
        while ((D_800E3210[omCurrentObj->objId] > 0.0f) &&
               (D_800E98E0[omCurrentObj->objId] < 3)) {
            D_800E8920[omCurrentObj->objId] = 0;
            ohSleep(1);
        }
    }
    id = omCurrentObj->objId;
    D_800E8920[id] = 0;
    D_800DEF90[id] = (void (*)(s32)) func_800B531C;
    func_800B33F4();
    D_800E98E0[omCurrentObj->objId] = 3;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_4/func_80169C10_ovl3.s")
#endif

extern u32 D_8012BCA0;
/* D_80197200_ovl3 now emitted by this TU */
void func_801A33B8(u8 *);

void func_8016A144_ovl3(s32 arg0) {
    if (D_800E98E0[omCurrentObj->objId] >= 2) {
        gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId];
    }
    D_800E8920[omCurrentObj->objId] = 0;
    switch (D_800E98E0[omCurrentObj->objId]) {
        case 0:
        case 1:
            break;
        case 3:
            change_kirby_hp(-1.0f);
            func_8016BD24_ovl3(1);
            break;
        case 2:
            if (D_800E6310[omCurrentObj->objId] != 0) {
                D_800E98E0[omCurrentObj->objId] = 3;
            } else {
                func_801A33B8(&D_801CA980);
                if (((D_8012BCA0 >> 19) & 0xFFF) != 0) {
                    D_800E98E0[omCurrentObj->objId] = 3;
                    D_800E3750[omCurrentObj->objId] = 0.0f;
                    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
                    D_800E3C90[omCurrentObj->objId] = 65535.0f;
                    if (D_800EA1A0[omCurrentObj->objId] == 0) {
                        play_sound(0xDB);
                        D_800EA1A0[omCurrentObj->objId] = 1;
                    }
                }
            }
            break;
    }
    func_801696F0_ovl3(arg0);
}

#ifdef MIPS_TO_C
/* NOT MEASURABLE: redeclaration of 'func_800B33F4'; previous declaration at line 451 in file 'src/ovl3/ovl3_4.c'
 * ovl3_4.c keeps its prototypes (curObjSleepForever, func_800B33F4,
 * func_800B531C, func_800B4924, func_800B4954) in a PORT-only block, so nothing
 * declares them for the N64 build. A draft must supply them in-body, and IDO
 * allows only ONE block-scope copy per TU -- so only one draft in this file can
 * be compiled at a time. Each of these four was measured that way in isolation
 * and then sealed; the note above records what it scored. Un-blocking the whole
 * file is a one-line coordinator change: move those prototypes to real file
 * scope. Do NOT hoist them from a lane -- the equivalent move in ovl10_1.c was
 * measured to move a matched function and grow that TU by 0x40. */

void func_8016A308_ovl3(s32 arg0) {
    extern void func_800B531C(struct GObj *);
    extern void func_800B4954(struct GObj *);
    extern f32 func_800F8824(Vector *, f32);
    extern s32 func_80153A18_ovl3(void);
    void func_8016A934_ovl3(s32);
    extern f32 D_80196954_ovl3[];
    extern u32 D_8019696C_ovl3[];
    struct Port34ColRec { s32 type; struct CollisionTriangle *tri; void *norm; };
    struct Port34ColBlock { u32 flagsw; u32 pad_; struct Port34ColRec rec[5]; };

    s32 id = omCurrentObj->objId;
    s32 tier;
    s32 i;
    f32 t;
    f32 frames;
    f32 dAngle;
    f32 dScale;
    f32 mult;

    if (!(D_800EA520[id] & 0xFF)) {
        func_800A9760(0x20007);
    }
    id = omCurrentObj->objId;
    D_800DF150[id] = (void (*)(struct GObj *)) func_8016A934_ovl3;
    D_800DEF90[id] = (void (*)(s32)) func_800B4954;
    D_800E8920[id] = 1;
    func_801A32EC(&D_801CA980);
    id = omCurrentObj->objId;
    t = D_800E64D0[D_800E0D50[id]];
    tier = (t < 0.0f) ? (s32) -t : (s32) t;
    if (tier >= 6) {
        tier = 5;
    }
    D_800E98E0[id] = 0;
    func_8016BBD0_ovl3();
    func_800B33F4();
    func_800FBE1C();
    func_800FA414(5);
    id = omCurrentObj->objId;
    D_800EA6E0[id] = D_800EAA60[id] = gEntitiesAngleXArray[id];
    id = omCurrentObj->objId;
    D_800EA8A0[id] = D_800EAC20[id] = gEntitiesScaleYArray[id];
    func_800BB468(0, 0);
    D_800E8920[omCurrentObj->objId] = 1;
    func_80153A18_ovl3();
    id = omCurrentObj->objId;
    {
        extern u32 D_8012BCA0;
        struct Port34ColBlock *cb = (struct Port34ColBlock *) &D_8012BCA0;

        D_800EB160[id] = -func_800F8824((Vector *) cb->rec[0].norm, D_800E17D0[id]);
    }
    while (D_800EB160[id] > 3.1415927f) {
        D_800EB160[id] -= 6.2831855f;
    }
    while (D_800EB160[id] < -3.1415927f) {
        D_800EB160[id] += 6.2831855f;
    }
    frames = D_80196954_ovl3[tier];
    dAngle = D_800EB160[id] / frames;
    dScale = D_800EA8A0[id] / frames;
    for (i = 0; i < (s32) (frames - 1.0f); i++) {
        id = omCurrentObj->objId;
        D_800EAA60[id] += dAngle;
        gEntitiesAngleXArray[id] = D_800EAA60[id];
        D_800EAC20[id] -= dScale;
        gEntitiesScaleYArray[id] = D_800EAC20[id];
        ohSleep(1);
        D_800E98E0[omCurrentObj->objId] = 1;
    }
    id = omCurrentObj->objId;
    D_800EAA60[id] += dAngle;
    gEntitiesAngleXArray[id] = D_800EAA60[id];
    func_800FA414(3);
    D_800E98E0[omCurrentObj->objId] = 2;
    change_kirby_hp(-1.0f);
    if (gKirbyHp > 0.0f) {
        play_sound(0xD9);
    }
    for (i = 0; i < 0x1E; i++) {
        id = omCurrentObj->objId;
        gEntitiesAngleXArray[id] = D_800EAA60[id];
        gEntitiesScaleYArray[id] = D_800EAC20[id];
        ohSleep(1);
    }
    D_800E98E0[omCurrentObj->objId] = 3;
    mult = *(f32 *) &D_8019696C_ovl3[tier];
    for (i = 0; i != 4; i++) {
        id = omCurrentObj->objId;
        D_800EAA60[id] -= dAngle;
        gEntitiesAngleXArray[id] = mult * D_800EAA60[id];
        D_800EAC20[id] += dScale;
        gEntitiesScaleYArray[id] = mult * D_800EAC20[id];
        ohSleep(1);
    }
    id = omCurrentObj->objId;
    D_800DEF90[id] = (void (*)(s32)) func_800B531C;
    func_800B33F4();
    id = omCurrentObj->objId;
    gEntitiesAngleXArray[id] = D_800EA6E0[id];
    gEntitiesScaleYArray[id] = D_800EA8A0[id];
    ohSleep(1);
    D_800E98E0[omCurrentObj->objId] = 4;
    curObjSleepForever();
}
#elif defined(PORT)
/* PORT: crushed/flattened coroutine (via m2c). Picks an animation speed
 * tier from the crusher's |speed| (tables D_80196954/D_8019696C, tier
 * clamped to 5), snapshots the entity's pitch and Y scale, snaps to the
 * floor (func_80153A18_ovl3) and derives the flatten pitch from the floor
 * normal (rec[0].norm of D_8012BCA0) against the track heading, wrapped to
 * +-pi. Animates the squash over the tier's frame count, deals 1 damage at
 * full squash, holds 30 frames, springs back over 4 frames with the tier's
 * overshoot multiplier, then restores the snapshot. D_800E98E0 tracks the
 * phase (1 squashing, 2 flat, 3 recovering, 4 done) for the per-frame
 * handler func_8016A934_ovl3. */
extern f32 func_800F8824(Vector *, f32);
extern s32 func_80153A18_ovl3(void);
void func_8016A934_ovl3(s32);
extern f32 D_80196954_ovl3[];
extern u32 D_8019696C_ovl3[];
struct Port34ColRec { s32 type; struct CollisionTriangle *tri; void *norm; };
struct Port34ColBlock { u32 flagsw; u32 pad_; struct Port34ColRec rec[5]; };

void func_8016A308_ovl3(s32 arg0) {
    s32 id = omCurrentObj->objId;
    s32 tier;
    s32 i;
    f32 t;
    f32 frames;
    f32 dAngle;
    f32 dScale;
    f32 mult;

    if (!(D_800EA520[id] & 0xFF)) {
        func_800A9760(0x20007);
    }
    id = omCurrentObj->objId;
    D_800DF150[id] = (void (*)(struct GObj *)) func_8016A934_ovl3;
    D_800DEF90[id] = (void (*)(s32)) func_800B4954;
    D_800E8920[id] = 1;
    func_801A32EC(&D_801CA980);
    id = omCurrentObj->objId;
    t = D_800E64D0[D_800E0D50[id]];
    tier = (t < 0.0f) ? (s32) -t : (s32) t;
    if (tier >= 6) {
        tier = 5;
    }
    D_800E98E0[id] = 0;
    func_8016BBD0_ovl3();
    func_800B33F4();
    func_800FBE1C();
    func_800FA414(5);
    id = omCurrentObj->objId;
    D_800EA6E0[id] = D_800EAA60[id] = gEntitiesAngleXArray[id];
    id = omCurrentObj->objId;
    D_800EA8A0[id] = D_800EAC20[id] = gEntitiesScaleYArray[id];
    func_800BB468(0, 0);
    D_800E8920[omCurrentObj->objId] = 1;
    func_80153A18_ovl3();
    id = omCurrentObj->objId;
    {
        extern u32 D_8012BCA0;
        struct Port34ColBlock *cb = (struct Port34ColBlock *) &D_8012BCA0;

        D_800EB160[id] = -func_800F8824((Vector *) cb->rec[0].norm, D_800E17D0[id]);
    }
    while (D_800EB160[id] > 3.1415927f) {
        D_800EB160[id] -= 6.2831855f;
    }
    while (D_800EB160[id] < -3.1415927f) {
        D_800EB160[id] += 6.2831855f;
    }
    frames = D_80196954_ovl3[tier];
    dAngle = D_800EB160[id] / frames;
    dScale = D_800EA8A0[id] / frames;
    for (i = 0; i < (s32) (frames - 1.0f); i++) {
        id = omCurrentObj->objId;
        D_800EAA60[id] += dAngle;
        gEntitiesAngleXArray[id] = D_800EAA60[id];
        D_800EAC20[id] -= dScale;
        gEntitiesScaleYArray[id] = D_800EAC20[id];
        ohSleep(1);
        D_800E98E0[omCurrentObj->objId] = 1;
    }
    id = omCurrentObj->objId;
    D_800EAA60[id] += dAngle;
    gEntitiesAngleXArray[id] = D_800EAA60[id];
    func_800FA414(3);
    D_800E98E0[omCurrentObj->objId] = 2;
    change_kirby_hp(-1.0f);
    if (gKirbyHp > 0.0f) {
        play_sound(0xD9);
    }
    for (i = 0; i < 0x1E; i++) {
        id = omCurrentObj->objId;
        gEntitiesAngleXArray[id] = D_800EAA60[id];
        gEntitiesScaleYArray[id] = D_800EAC20[id];
        ohSleep(1);
    }
    D_800E98E0[omCurrentObj->objId] = 3;
    mult = *(f32 *) &D_8019696C_ovl3[tier];
    for (i = 0; i != 4; i++) {
        id = omCurrentObj->objId;
        D_800EAA60[id] -= dAngle;
        gEntitiesAngleXArray[id] = mult * D_800EAA60[id];
        D_800EAC20[id] += dScale;
        gEntitiesScaleYArray[id] = mult * D_800EAC20[id];
        ohSleep(1);
    }
    id = omCurrentObj->objId;
    D_800DEF90[id] = (void (*)(s32)) func_800B531C;
    func_800B33F4();
    id = omCurrentObj->objId;
    gEntitiesAngleXArray[id] = D_800EA6E0[id];
    gEntitiesScaleYArray[id] = D_800EA8A0[id];
    ohSleep(1);
    D_800E98E0[omCurrentObj->objId] = 4;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_4/func_8016A308_ovl3.s")
#endif

void func_8016A934_ovl3(s32 arg0) {
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId];
    D_800E8920[omCurrentObj->objId] = 1;
    if (0.0f < gKirbyHp) {
        switch (D_800E98E0[omCurrentObj->objId]) {
            case 4:
                gEntitiesAngleXArray[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
                gEntitiesScaleYArray[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
                D_800E8920[omCurrentObj->objId] = 0;
                func_8016BD24_ovl3(1);
                break;
            case 1:
            case 2:
            case 3:
                gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId] - 20.0f;
                gEntitiesPosYArray[omCurrentObj->objId] = gEntitiesPosYArray[omCurrentObj->objId] - 20.0f;
                func_801A33B8(&D_801CA980);
                break;
            case 0:
            default:
                break;
        }
    } else {
        func_8016BD24_ovl3(1);
    }
    func_801696F0_ovl3(arg0);
}

#ifdef MIPS_TO_C
/* NOT MEASURABLE: redeclaration of 'curObjSleepForever'; previous declaration at line 795 in file 'src/ovl3/ovl3_4.c'
 * ovl3_4.c keeps its prototypes (curObjSleepForever, func_800B33F4,
 * func_800B531C, func_800B4924, func_800B4954) in a PORT-only block, so nothing
 * declares them for the N64 build. A draft must supply them in-body, and IDO
 * allows only ONE block-scope copy per TU -- so only one draft in this file can
 * be compiled at a time. Each of these four was measured that way in isolation
 * and then sealed; the note above records what it scored. Un-blocking the whole
 * file is a one-line coordinator change: move those prototypes to real file
 * scope. Do NOT hoist them from a lane -- the equivalent move in ovl10_1.c was
 * measured to move a matched function and grow that TU by 0x40. */

void func_8016AAA4_ovl3(s32 arg0) {
    extern void func_800B531C(struct GObj *);
    extern void func_800B4924(s32);
    extern void func_800B4954(struct GObj *);
    extern void func_800FBF18(s32);
    extern s32 D_800BE500;
    extern s32 D_800BE504;
    extern s32 D_800BE508;
    extern s32 D_800BE4F8;
    extern f32 sqrtf(f32);
    void func_8016B410_ovl3(s32);

    s32 id = omCurrentObj->objId;
    f32 diag;
    s32 phase;

    if (!(D_800EA520[id] & 0xFF)) {
        func_800A9760(0x20007);
    }
    id = omCurrentObj->objId;
    D_800DF150[id] = (void (*)(struct GObj *)) func_8016B410_ovl3;
    D_800DEF90[id] = func_800B4924;
    D_800E8920[id] = 0;
    D_800E98E0[id] = 0;
    func_8016BBD0_ovl3();
    id = omCurrentObj->objId;
    D_800EA6E0[id] = (gEntitiesNextPosXArray[D_800E0D50[id]] - gEntitiesNextPosXArray[id]) * 0.2f;
    D_800EA8A0[id] = ((gEntitiesNextPosYArray[D_800E0D50[id]] - 25.0f) - gEntitiesNextPosYArray[id]) * 0.2f;
    D_800EAA60[id] = (gEntitiesNextPosZArray[D_800E0D50[id]] - gEntitiesNextPosZArray[id]) * 0.2f;
    D_800E3910[id] = 0.0f;
    D_800E3750[id] = 0.0f;
    D_800E3590[id] = 0.0f;
    D_800E33D0[id] = 0.0f;
    D_800E3210[id] = 0.0f;
    D_800E3050[id] = 0.0f;
    D_800E3E50[id] = 65535.0f;
    D_800E3C90[id] = 65535.0f;
    D_800E3AD0[id] = 65535.0f;
    D_800E6690[id] = 0.0f;
    D_800E64D0[id] = 0.0f;
    D_800E6850[id] = 65535.0f;
    ohSleep(5);
    id = omCurrentObj->objId;
    gEntitiesNextPosXArray[id] = gEntitiesNextPosXArray[D_800E0D50[id]];
    gEntitiesNextPosYArray[id] = gEntitiesNextPosYArray[D_800E0D50[id]] - 25.0f;
    gEntitiesNextPosZArray[id] = gEntitiesNextPosZArray[D_800E0D50[id]];
    D_800E98E0[id] = 1;
    id = omCurrentObj->objId;
    if (D_800E7880[D_800E0D50[id]] != 0) {
        while (gEntityFuncListIDArray[D_800E0D50[omCurrentObj->objId]] != 0) {
            ohSleep(1);
        }
    }
    if ((D_800BE500 == 4) && (D_800BE504 == 1) && (D_800BE508 == 0)) {
        func_800FBF18(3);
        func_800FBE1C();
        func_800FA414(0x80000004);
    }
    D_800E98E0[omCurrentObj->objId] = 2;
    ohSleep(0xF);
    if ((D_800BE500 == 4) && (D_800BE504 == 1) && (D_800BE508 == 0)) {
        ohSleep(0x1E);
    }
    D_800E98E0[omCurrentObj->objId] = 3;
    ohSleep(4);
    id = omCurrentObj->objId;
    D_800E98E0[id] = 4;
    D_800DDA90[id] = 0x23;
    D_800DEF90[id] = (void (*)(s32)) func_800B4954;
    D_800E8920[id] = 0;
    func_801A32EC(&D_801CA980);
    id = omCurrentObj->objId;
    D_800E5F90[id] = D_800E6150[id] = D_800E5F90[D_800E0D50[id]];
    id = omCurrentObj->objId;
    D_800E6BD0[id] = D_800E6D90[id] = D_800E6BD0[D_800E0D50[id]];
    func_800BB468(7, 0);
    id = omCurrentObj->objId;
    diag = 15.0f / sqrtf(2.0f);
    switch (D_800E98E0[D_800E0D50[id]]) {
        case 0:
            D_800E3210[id] = 15.0f;
            break;
        case 1:
            D_800E64D0[id] = diag;
            D_800E3210[id] = diag;
            D_800E6A10[id] = 1.0f;
            break;
        case 2:
            D_800E64D0[id] = 15.0f;
            D_800E6A10[id] = 1.0f;
            break;
        case 3:
            D_800E64D0[id] = diag;
            D_800E3210[id] = -diag;
            D_800E6A10[id] = 1.0f;
            break;
        case 4:
            D_800E3210[id] = -15.0f;
            break;
        case 5:
            D_800E64D0[id] = -diag;
            D_800E3210[id] = -diag;
            D_800E6A10[id] = -1.0f;
            break;
        case 6:
            D_800E64D0[id] = -15.0f;
            D_800E6A10[id] = -1.0f;
            break;
        case 7:
            D_800E64D0[id] = -diag;
            D_800E3210[id] = diag;
            D_800E6A10[id] = -1.0f;
            break;
    }
    func_8016BC00_ovl3();
    while (D_800E98E0[omCurrentObj->objId] == 4) {
        ohSleep(1);
    }
    id = omCurrentObj->objId;
    phase = D_800E98E0[id];
    if (phase != 6) {
        D_800E98E0[id] = 5;
        D_800DEF90[id] = (void (*)(s32)) func_800B531C;
        D_800E8920[id] = 0;
        curObjSleepForever();
        return;
    }
    D_800BE4F8 = 2;
    curObjSleepForever();
}
#elif defined(PORT)
/* PORT: inhaled-by-enemy coroutine (via m2c). Glides the player into the
 * inhaler's mouth over 5 frames (fifth of the gap per tick, mouth 25 below
 * its origin), freezes all track motion, waits for the inhaler's action
 * script to finish when it has one (D_800E7880 gate on
 * gEntityFuncListIDArray), takes the special N.O.M.-swallow camera when
 * this is stage 4-1-0, then spits: adopts the inhaler's track state and
 * launches at 15 in one of eight directions from the inhaler's phase word
 * (diagonals at 15/sqrt(2), facing folded into D_800E6A10), picks the spin
 * animation via func_8016BC00_ovl3, and waits out phase 4 -- ending in a
 * normal release (phase 5) or, from phase 6, the level-exit fadeout. */
extern void func_800FBF18(s32);
extern s32 D_800BE500;
extern s32 D_800BE504;
extern s32 D_800BE508;
extern s32 D_800BE4F8;
extern f32 sqrtf(f32);
void func_8016B410_ovl3(s32);

void func_8016AAA4_ovl3(s32 arg0) {
    s32 id = omCurrentObj->objId;
    f32 diag;
    s32 phase;

    if (!(D_800EA520[id] & 0xFF)) {
        func_800A9760(0x20007);
    }
    id = omCurrentObj->objId;
    D_800DF150[id] = (void (*)(struct GObj *)) func_8016B410_ovl3;
    D_800DEF90[id] = func_800B4924;
    D_800E8920[id] = 0;
    D_800E98E0[id] = 0;
    func_8016BBD0_ovl3();
    id = omCurrentObj->objId;
    D_800EA6E0[id] = (gEntitiesNextPosXArray[D_800E0D50[id]] - gEntitiesNextPosXArray[id]) * 0.2f;
    D_800EA8A0[id] = ((gEntitiesNextPosYArray[D_800E0D50[id]] - 25.0f) - gEntitiesNextPosYArray[id]) * 0.2f;
    D_800EAA60[id] = (gEntitiesNextPosZArray[D_800E0D50[id]] - gEntitiesNextPosZArray[id]) * 0.2f;
    D_800E3910[id] = 0.0f;
    D_800E3750[id] = 0.0f;
    D_800E3590[id] = 0.0f;
    D_800E33D0[id] = 0.0f;
    D_800E3210[id] = 0.0f;
    D_800E3050[id] = 0.0f;
    D_800E3E50[id] = 65535.0f;
    D_800E3C90[id] = 65535.0f;
    D_800E3AD0[id] = 65535.0f;
    D_800E6690[id] = 0.0f;
    D_800E64D0[id] = 0.0f;
    D_800E6850[id] = 65535.0f;
    ohSleep(5);
    id = omCurrentObj->objId;
    gEntitiesNextPosXArray[id] = gEntitiesNextPosXArray[D_800E0D50[id]];
    gEntitiesNextPosYArray[id] = gEntitiesNextPosYArray[D_800E0D50[id]] - 25.0f;
    gEntitiesNextPosZArray[id] = gEntitiesNextPosZArray[D_800E0D50[id]];
    D_800E98E0[id] = 1;
    id = omCurrentObj->objId;
    if (D_800E7880[D_800E0D50[id]] != 0) {
        while (gEntityFuncListIDArray[D_800E0D50[omCurrentObj->objId]] != 0) {
            ohSleep(1);
        }
    }
    if ((D_800BE500 == 4) && (D_800BE504 == 1) && (D_800BE508 == 0)) {
        func_800FBF18(3);
        func_800FBE1C();
        func_800FA414(0x80000004);
    }
    D_800E98E0[omCurrentObj->objId] = 2;
    ohSleep(0xF);
    if ((D_800BE500 == 4) && (D_800BE504 == 1) && (D_800BE508 == 0)) {
        ohSleep(0x1E);
    }
    D_800E98E0[omCurrentObj->objId] = 3;
    ohSleep(4);
    id = omCurrentObj->objId;
    D_800E98E0[id] = 4;
    D_800DDA90[id] = 0x23;
    D_800DEF90[id] = (void (*)(s32)) func_800B4954;
    D_800E8920[id] = 0;
    func_801A32EC(&D_801CA980);
    id = omCurrentObj->objId;
    D_800E5F90[id] = D_800E6150[id] = D_800E5F90[D_800E0D50[id]];
    id = omCurrentObj->objId;
    D_800E6BD0[id] = D_800E6D90[id] = D_800E6BD0[D_800E0D50[id]];
    func_800BB468(7, 0);
    id = omCurrentObj->objId;
    diag = 15.0f / sqrtf(2.0f);
    switch (D_800E98E0[D_800E0D50[id]]) {
        case 0:
            D_800E3210[id] = 15.0f;
            break;
        case 1:
            D_800E64D0[id] = diag;
            D_800E3210[id] = diag;
            D_800E6A10[id] = 1.0f;
            break;
        case 2:
            D_800E64D0[id] = 15.0f;
            D_800E6A10[id] = 1.0f;
            break;
        case 3:
            D_800E64D0[id] = diag;
            D_800E3210[id] = -diag;
            D_800E6A10[id] = 1.0f;
            break;
        case 4:
            D_800E3210[id] = -15.0f;
            break;
        case 5:
            D_800E64D0[id] = -diag;
            D_800E3210[id] = -diag;
            D_800E6A10[id] = -1.0f;
            break;
        case 6:
            D_800E64D0[id] = -15.0f;
            D_800E6A10[id] = -1.0f;
            break;
        case 7:
            D_800E64D0[id] = -diag;
            D_800E3210[id] = diag;
            D_800E6A10[id] = -1.0f;
            break;
    }
    func_8016BC00_ovl3();
    while (D_800E98E0[omCurrentObj->objId] == 4) {
        ohSleep(1);
    }
    id = omCurrentObj->objId;
    phase = D_800E98E0[id];
    if (phase != 6) {
        D_800E98E0[id] = 5;
        D_800DEF90[id] = (void (*)(s32)) func_800B531C;
        D_800E8920[id] = 0;
        curObjSleepForever();
        return;
    }
    D_800BE4F8 = 2;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_4/func_8016AAA4_ovl3.s")
#endif

#ifdef NON_MATCHING
/* 11/207. Everything matches except ONE delay-slot fill: the ROM puts
   `lui $a2, %hi(D_8012BCA0)` (from the branch TARGET) in the delay slot of
   `beqz $v0` and starts the fall-through block with `lui $t5, %hi(omCurrentObj)`;
   IDO fills the slot from the fall-through instead, so everything after is
   shifted by one. Swept: else-if vs early-break vs inverted polarity, one-line
   then-block, `!= 0` vs bare call, an empty do-while, and a struct pointer over
   D_8012BCA0 (113 diffs -- much worse). The float operand swap in case 0 is
   load-bearing: it took this from 17 to 11. */
extern s32 D_800BE500;
extern s32 D_800BE504;
extern s32 D_800BE508;
extern f32 D_801292B0[];
extern u8 D_801CB1FC;
extern u8 D_801CA840;
extern void func_801A36CC(void *);
extern void func_801A38BC_ovl7(void);
extern s32 func_8016B74C_ovl3(void);
void func_8016B9D4_ovl3(s32);
extern s32 func_80111574(u8 *, s32);
extern void func_80111C4C(s32);

void func_8016B410_ovl3(s32 arg0) {
    if ((D_800BE500 == 4) && (D_800BE504 == 1) && (D_800BE508 == 0)) {
        D_801292B0[0] = gEntitiesNextPosXArray[0];
        D_801292B0[1] = gEntitiesNextPosYArray[0];
        D_801292B0[2] = gEntitiesNextPosZArray[0];
    }
    switch (D_800E98E0[omCurrentObj->objId]) {
        case 0:
            gEntitiesNextPosXArray[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId] + gEntitiesNextPosXArray[omCurrentObj->objId];
            gEntitiesNextPosYArray[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId] + gEntitiesNextPosYArray[omCurrentObj->objId];
            gEntitiesNextPosZArray[omCurrentObj->objId] = D_800EAA60[omCurrentObj->objId] + gEntitiesNextPosZArray[omCurrentObj->objId];
            break;
        case 4:
            func_801A3938((s32) &D_801CB1FC);
            func_801A36CC(func_801A38BC_ovl7);
            func_801A33B8(&D_801CA980);
            if (func_8016B74C_ovl3() != 0) {
                D_800E98E0[omCurrentObj->objId] = 6;
            } else if (((D_8012BCA0 >> 19) & 0xFFF) != 0) {
                if ((((D_8012BCA0 >> 19) & 0x1C0) != 0)
                 && (((struct CollisionTriangle **) &D_8012BCA0)[5] != NULL)
                 && ((((struct CollisionTriangle **) &D_8012BCA0)[5]->collisionType == 4)
                  || (((struct CollisionTriangle **) &D_8012BCA0)[5]->collisionType == 5))) {
                    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8016B9D4_ovl3);
                    return;
                }
                play_sound(0xD7);
                D_800E98E0[omCurrentObj->objId] = 5;
                D_800E64D0[omCurrentObj->objId] = D_800E64D0[omCurrentObj->objId] * 0.8f;
                D_800E3210[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] * 0.8f;
                if (((D_8012BCA0 >> 19) & 0x3F) != 0) {
                    D_800E64D0[omCurrentObj->objId] = -D_800E64D0[omCurrentObj->objId];
                }
                if (((D_8012BCA0 >> 19) & 0xFC0) != 0) {
                    D_800E3210[omCurrentObj->objId] = -D_800E3210[omCurrentObj->objId];
                }
            } else {
                func_80111C4C(func_80111574(&D_801CA840, omCurrentObj->objId));
            }
            break;
        case 5:
            gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 1.5707964f;
            func_8016BD24_ovl3(1);
            break;
        case 1:
        case 2:
        case 3:
        case 6:
        default:
            break;
    }
    func_801696F0_ovl3(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_4/func_8016B410_ovl3.s")
#endif
extern void *D_8012BCA8;
extern void *D_8012BCB4;
extern void *D_8012BCC0;
extern void *D_8012BCCC;
s32 func_800F9438(s32);
s32 func_80104AB4(f32 *, f32 *, u16, u16, void *);
void func_8010DC00(void *, void *);

#ifdef NON_MATCHING
/* 116/161: one-slot temp-register rotation plus IDO CSEing the four separate
   mtc1 $zero the ROM materialises per compare. */
s32 func_8016B74C_ovl3(void) {
    f32 diff1;
    f32 diff2;
    f32 sp4C[3];
    f32 sp40[3];
    f32 sp34[3];
    void *sp30;
    f32 *temp;

    if (func_800F9438(D_800E5F90[omCurrentObj->objId]) == 0) {
        return 0;
    }
    temp = D_800E0490[omCurrentObj->objId][1];
    sp40[0] = gEntitiesPosXArray[omCurrentObj->objId];
    sp40[1] = gEntitiesPosYArray[omCurrentObj->objId] + *temp;
    sp40[2] = gEntitiesPosZArray[omCurrentObj->objId];
    sp34[0] = gEntitiesNextPosXArray[omCurrentObj->objId];
    sp34[1] = gEntitiesNextPosYArray[omCurrentObj->objId] + *temp;
    sp34[2] = gEntitiesNextPosZArray[omCurrentObj->objId];
    diff1 = D_800E6BD0[omCurrentObj->objId] - D_800E6D90[omCurrentObj->objId];
    if (diff1 != 0.0f) {
        if (diff1 > 0.0f) {
            sp30 = D_8012BCC0;
        } else {
            sp30 = D_8012BCCC;
        }
        if (func_80104AB4(sp40, sp34, 1, 8, &sp30) != 0) {
            func_8010DC00(sp30, sp4C);
            if (sp4C[1] == 0.0f) {
                return 1;
            }
        }
    }
    diff2 = gEntitiesNextPosYArray[omCurrentObj->objId] - gEntitiesPosYArray[omCurrentObj->objId];
    if (diff2 != 0.0f) {
        if (diff2 > 0.0f) {
            sp30 = D_8012BCB4;
        } else {
            sp30 = D_8012BCA8;
        }
        if (func_80104AB4(sp40, sp34, 1, 8, &sp30) != 0) {
            func_8010DC00(sp30, sp4C);
            if ((sp4C[0] == 0.0f) && (sp4C[2] == 0.0f)) {
                return 1;
            }
        }
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_4/func_8016B74C_ovl3.s")
#endif
/* D_80197274_ovl3 now emitted by this TU */
void func_8016BB40_ovl3(s32);
void func_800B4924(s32);
void func_800B33F4(void);
void func_800AF27C(void);
void curObjSleepForever(void);
void ohSleep(s32);

void func_8016B9D4_ovl3(s32 arg0) {
    D_800DF150[omCurrentObj->objId] = (void (*)(struct GObj *)) func_8016BB40_ovl3;
    D_800DEF90[omCurrentObj->objId] = func_800B4924;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E98E0[omCurrentObj->objId] = 0;
    if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
        func_800AA018(0x200F7);
        func_800AA018(0x200F8);
    } else {
        func_800AA018(0x200FB);
        func_800AA018(0x200FC);
    }
    func_800B33F4();
    D_800E3210[omCurrentObj->objId] = 3.9f;
    play_sound(0xFF);
    ohSleep(10);
    D_800E3210[omCurrentObj->objId] = 0.0f;
    func_800AF27C();
    D_800E98E0[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_8016BB40_ovl3(s32 arg0) {
    switch (D_800E98E0[omCurrentObj->objId]) {
        case 0:
            break;
        case 1:
            gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 1.5707964f;
            func_8016BD24_ovl3(0);
            break;
    }
    func_801696F0_ovl3(arg0);
}

void func_8016BBD0_ovl3(void) {
    func_800AA018(0x20027);
    func_800AA018(0x20028);
}

void func_8016BC00_ovl3(void) {
    void func_800AECC0(f32);
    void func_800AED20(f32);

    switch (gEntityFuncListIDArray[omCurrentObj->objId]) {
        case 1:
        case 2:
        case 4:
        case 8:
        case 11:
        case 12:
        case 13:
        case 14:
            if (0.0f <= D_800E64D0[omCurrentObj->objId]) {
                func_800AA018(0x20029);
                func_800AA018(0x2002A);
            } else {
                func_800AA018(0x2002B);
                func_800AA018(0x2002C);
            }
            D_800E17D0[omCurrentObj->objId] = -1.5707964f;
            gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId];
            break;
        case 0:
        case 3:
        case 5:
        case 6:
        case 7:
        case 9:
        case 10:
        case 15:
        case 16:
        default:
            func_800AA018(0x20027);
            func_800AA018(0x20028);
            break;
    }
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
}

#ifdef MIPS_TO_C
/* NOT MEASURED: this draft was installed but its score was captured from the wrong
 * line of verify output, so no number here is trustworthy. Same file-wide blocker
 * as its three siblings: ovl3_4.c keeps curObjSleepForever / func_800B33F4 /
 * func_800B531C / func_800B4924 / func_800B4954 in a PORT-only block, so a draft
 * must declare them in-body and IDO permits only one block-scope copy per TU.
 * Re-measure this one alone after the coordinator moves those prototypes to file
 * scope. Do NOT hoist them from a lane -- the same move in ovl10_1.c moved a
 * matched function and grew that TU by 0x40. */

void func_8016BD24_ovl3(s32 arg0) {
    extern void func_800B531C(struct GObj *);
    extern void set_kirby_action_1(s32, s32);
    extern void func_800AECC0(f32);
    extern void func_800AED20(f32);
    extern u32 func_800FD570(s32, u32, f32, f32, f32);
    extern void func_800B1900(u16);
    extern void func_8016C510_ovl3(GObj *);
    extern void func_8016C558_ovl3(struct GObj *);
    extern void func_80152348_ovl3(f32);

    s32 id = omCurrentObj->objId;

    if (!((D_800EA520[id] >> 8) & 0xFF)) {
        if (gKirbyHp == 0.0f) {
            set_kirby_action_1(0x16, 0x17);
        } else if (arg0 == 0) {
            gKirbyState.action = 1;
            gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        } else if (arg0 == 1) {
            gKirbyState.action = 6;
            gEntityFuncListIDArray[omCurrentObj->objId] = 6;
        }
        id = omCurrentObj->objId;
        assign_new_process_entry(gEntityGObjProcessArray[id], (void (*)(struct GObj *)) func_8016C510_ovl3);
        id = omCurrentObj->objId;
        D_800DEF90[id] = (void (*)(s32)) func_800B531C;
        D_800DF150[id] = (void (*)(struct GObj *)) func_8016C558_ovl3;
        D_800DDA90[id] = 0x23;
        func_800AECC0(gameTicksPerDraw);
        func_800AED20(gameTicksPerDraw);
        id = omCurrentObj->objId;
        D_800E8760[id] = 0;
        D_800E7CE0[id] = 0x2D;
        D_800E0D50[id] = -1;
        func_80152348_ovl3(5.0f);
        return;
    }
    func_800FD570(0, 0, 0.0f, 0.0f, 0.0f);
    func_800B1900((u16) omCurrentObj->objId);
}
#elif defined(PORT)
/* PORT: release-from-grab dispatcher (via m2c). For a normal grab (high
 * byte of D_800EA520 clear) it returns control to the player: dead ->
 * action 0x16/0x17, else action/func-list 0 (arg0==0, grounded) or 6
 * (arg0==1, airborne); reinstalls the normal player process
 * (func_8016C510_ovl3) and track callbacks, restores the tick rates,
 * arms 45 invincibility frames, clears the grabber link, and lands with
 * the snap pass func_80152348_ovl3(5.0f). The asm's D_8012E7C5 byte is
 * gKirbyState.action (base 0x8012E7C0). A scripted grab instead replays
 * the object's own track (func_800FD570 reset + func_800B1900 on the low
 * half of objId). */
extern void set_kirby_action_1(s32, s32);
extern void func_800AECC0(f32);
extern void func_800AED20(f32);
extern u32 func_800FD570(s32, u32, f32, f32, f32);
extern void func_800B1900(u16);
extern void func_8016C510_ovl3(GObj *);
extern void func_8016C558_ovl3(struct GObj *);
extern void func_80152348_ovl3(f32);

void func_8016BD24_ovl3(s32 arg0) {
    s32 id = omCurrentObj->objId;

    if (!((D_800EA520[id] >> 8) & 0xFF)) {
        if (gKirbyHp == 0.0f) {
            set_kirby_action_1(0x16, 0x17);
        } else if (arg0 == 0) {
            gKirbyState.action = 1;
            gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        } else if (arg0 == 1) {
            gKirbyState.action = 6;
            gEntityFuncListIDArray[omCurrentObj->objId] = 6;
        }
        id = omCurrentObj->objId;
        assign_new_process_entry(gEntityGObjProcessArray[id], (void (*)(struct GObj *)) func_8016C510_ovl3);
        id = omCurrentObj->objId;
        D_800DEF90[id] = (void (*)(s32)) func_800B531C;
        D_800DF150[id] = (void (*)(struct GObj *)) func_8016C558_ovl3;
        D_800DDA90[id] = 0x23;
        func_800AECC0(gameTicksPerDraw);
        func_800AED20(gameTicksPerDraw);
        id = omCurrentObj->objId;
        D_800E8760[id] = 0;
        D_800E7CE0[id] = 0x2D;
        D_800E0D50[id] = -1;
        func_80152348_ovl3(5.0f);
        return;
    }
    func_800FD570(0, 0, 0.0f, 0.0f, 0.0f);
    func_800B1900((u16) omCurrentObj->objId);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_4/func_8016BD24_ovl3.s")
#endif

