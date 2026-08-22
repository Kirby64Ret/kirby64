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

/* D_80197028_ovl3[] now emitted by this TU */

extern void func_800A22D4(s32);
extern s32 func_800A8100(s32, s32, s32, struct DObj *);
/* D_80196FF0_ovl3[] now emitted by this TU */
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

extern void func_80161CE0_ovl3(s32);
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
/* D_80197050_ovl3 now emitted by this TU */

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
    temp = 0.2f;
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

#ifdef PORT
/* PORT: shared helpers for the plyshot PORT arms.
 *
 * The looping-sound state this file threads around is an N64 stack pair
 * {SoundHandle *, u16 id} whose address is parked in D_800EA360 / D_800E9FE0
 * as an s32. On the LP64 host func_800A77E8's 8-byte handle store into the
 * pair's first (4-byte) slot leaves the id bytes overlapping the pointer's
 * high half, so an 8-byte read back through the pair is never safe. All
 * game-visible allocations sit below 4 GiB (src/pc/pc_mmio.c), so the LOW
 * word alone identifies the handle: these helpers rebuild the handle from
 * the low word and a local, and store back in a {low word, id} shape that
 * round-trips. */
static void pc_sndpair_release(void *base) {
    extern void func_800A7870(void **, u16 *);
    u32 *p = base;
    void *h;
    u16 sid;

    if (p == NULL) {
        return;
    }
    h = (void *) (uintptr_t) p[0];
    sid = *(u16 *) (p + 1);
    func_800A7870(&h, &sid);
    p[0] = 0;
    *(u16 *) (p + 1) = 0;
}

static void pc_sndpair_start(s32 fgm, void *base) {
    extern void func_800A77E8(s32, s32 *, s32 *);
    u32 *p = base;
    void *h = NULL;
    u16 sid = 0;

    func_800A77E8(fgm, (s32 *) &h, (s32 *) &sid);
    if (p != NULL) {
        p[0] = (u32) (uintptr_t) h;
        *(u16 *) (p + 1) = sid;
    }
}

/* Effect-GObj parameter block hanging off GObj.unk4C (same shape as this
 * file's Unk80167800): a kind word and up to six floats. */
struct PcPlyshotFx {
    u32 unk0;
    f32 unk4;
    f32 unk8;
    f32 unkC;
    f32 unk10;
    f32 unk14;
    f32 unk18;
};
#endif
#ifdef MIPS_TO_C
/* FACTORY: 5/370, whole-function callee-saved permutation (same floor class documented across this cluster). Replaces pc_sndpair_start with the real N64 call func_800A77E8, same pattern as func_80161058_ovl3. Queued for the permuter. */
/* PORT: the throw/carry rock init coroutine, from asm/nonmatchings/ovl3/
 * plyshot/func_8015B190_ovl3.s. Parks the shot on effect anim 0xC and waits
 * for the release signal at D_8012E7FC[0]; then classes the rock by the
 * parent's charge (D_800E9720[parent]: <5, <10, else), seats it from the
 * parameter table, opens the looping sound pair 0x1E, and launches with the
 * class's speed/arc -- halved speed and gravity -0.4 (with a 60-frame
 * lifetime instead of 30) under water. The four-float class rows are ROM
 * constants (N64 words 42000000/42140000/... at D_80196720_ovl3); the data
 * translation emitted row 0's first word as the string "B", so the rows are
 * spelled here as literals instead of read through that emission. */
void func_8015B190_ovl3(s32 arg0) {
    static const f32 pc_rock_tbl[3][4] = {
        { 32.0f, 37.0f, 6.0f, -2.0f },
        { 30.0f, 40.0f, 8.0f, 6.0f },
        { 0.0f, 57.0f, 10.0f, 12.0f },
    };
    extern f32 **D_80192B78_ovl3;
    extern f32 D_8012E7FC[];
    extern void func_800B4954(s32);
    extern void func_800B5064(struct GObj *);
    extern void func_8015B75C_ovl3(struct GObj *);
    extern s32 func_800A8234(s32, s32, s32);
    extern void func_800AF314(void);
    extern void func_800A9760(s32);
    extern s32 func_80155424_ovl3(struct PositionState *);
    extern void func_800A77E8(s32, s32 *, s32 *);
    void curObjSleepForever(void);
    s32 id = omCurrentObj->objId;
    u32 sndpair[2];
    const f32 *row;
    f32 speed;
    f32 vert;
    f32 cap;
    s32 charge;

    D_800DEF90[id] = (void (*)(s32)) func_800B5064;
    D_800DF150[id] = func_8015B75C_ovl3;
    D_800E0F10[id] = 0xE;
    gEntitiesScaleXArray[id] = 0.2f;
    gEntitiesScaleYArray[id] = 0.2f;
    gEntitiesScaleZArray[id] = 0.2f;
    func_800A9864(0x2002D, 0x21, 0x10);
    func_800AA018(0x2027D);
    D_800EA520[id] = func_800A8234(1, 1, 0xC);
    D_800E9AA0[id].as_u32 = 0;
    while (*(s32 *) &D_8012E7FC[0] == 0) {
        ohSleep(1);
    }
    D_800DEF90[id] = func_800B4954;
    D_800E83E0[id] = 0;
    D_800E9AA0[id].as_u32 = 1;
    charge = D_800E9720[D_800E0D50[id]];
    if (charge < 5) {
        D_800E98E0[id] = 0;
    } else if (charge < 10) {
        D_800E98E0[id] = 1;
    } else {
        D_800E98E0[id] = 2;
    }
    func_80161CE0_ovl3(arg0);
    row = pc_rock_tbl[D_800E98E0[id]];
    func_80161EC0_ovl3(0, row[0], row[1]);
    D_800E0490[id] = &D_80192B78_ovl3;
    func_80154648_ovl3(D_800E0D50[id], D_80197F60_ovl3[id - 4], D_801982F8_ovl3[id - 4]);
    func_800AF314();
    func_800A9760(0x2002D);
    func_80155424_ovl3(D_80197F60_ovl3[id - 4]);
    /* Looping sound pair: as on N64, the pair lives in this sleeping
     * coroutine's frame and its address is parked in D_800EA360 for the
     * service routine to release later -- but laid out {low word, id}
     * so the LP64 handle store cannot shear it. */
    D_800EA360[id] = (s32) (uintptr_t) sndpair;
    func_800A77E8(0x1E, (s32 *) &sndpair[0], (s32 *) &sndpair[1]);
    {
        s32 wet = D_800E8AE0[id] & 4;
        f32 grav;

        if (wet) {
            D_800E9720[id] = 0x3C;
            grav = -0.4f;
        } else {
            D_800E9720[id] = 0x1E;
            grav = -0.980665f;
        }
        speed = wet ? row[2] * 0.5f : row[2];
        vert = wet ? row[3] * 0.5f : row[3];
        cap = wet ? 8.0f : 16.0f;
        D_800E64D0[id] = D_800E6A10[id] * speed;
        D_800E6690[id] = 0.0f;
        D_800E6850[id] = (speed < 0.0f) ? -speed : speed;
        D_800E3210[id] = vert;
        D_800E3750[id] = grav;
        D_800E3C90[id] = (cap < 0.0f) ? -cap : cap;
    }
    curObjSleepForever();
}
#elif defined(PORT)
/* PORT: the throw/carry rock init coroutine, from asm/nonmatchings/ovl3/
 * plyshot/func_8015B190_ovl3.s. Parks the shot on effect anim 0xC and waits
 * for the release signal at D_8012E7FC[0]; then classes the rock by the
 * parent's charge (D_800E9720[parent]: <5, <10, else), seats it from the
 * parameter table, opens the looping sound pair 0x1E, and launches with the
 * class's speed/arc -- halved speed and gravity -0.4 (with a 60-frame
 * lifetime instead of 30) under water. The four-float class rows are ROM
 * constants (N64 words 42000000/42140000/... at D_80196720_ovl3); the data
 * translation emitted row 0's first word as the string "B", so the rows are
 * spelled here as literals instead of read through that emission. */
void func_8015B190_ovl3(s32 arg0) {
    static const f32 pc_rock_tbl[3][4] = {
        { 32.0f, 37.0f, 6.0f, -2.0f },
        { 30.0f, 40.0f, 8.0f, 6.0f },
        { 0.0f, 57.0f, 10.0f, 12.0f },
    };
    extern f32 **D_80192B78_ovl3;
    extern f32 D_8012E7FC[];
    extern void func_800B4954(s32);
    extern void func_800B5064(struct GObj *);
    extern void func_8015B75C_ovl3(struct GObj *);
    extern s32 func_800A8234(s32, s32, s32);
    extern void func_800AF314(void);
    extern void func_800A9760(s32);
    extern s32 func_80155424_ovl3(struct PositionState *);
    void curObjSleepForever(void);
    s32 id = omCurrentObj->objId;
    u32 sndpair[2];
    const f32 *row;
    f32 speed;
    f32 vert;
    f32 cap;
    s32 charge;

    D_800DEF90[id] = (void (*)(s32)) func_800B5064;
    D_800DF150[id] = func_8015B75C_ovl3;
    D_800E0F10[id] = 0xE;
    gEntitiesScaleXArray[id] = 0.2f;
    gEntitiesScaleYArray[id] = 0.2f;
    gEntitiesScaleZArray[id] = 0.2f;
    func_800A9864(0x2002D, 0x21, 0x10);
    func_800AA018(0x2027D);
    D_800EA520[id] = func_800A8234(1, 1, 0xC);
    D_800E9AA0[id].as_u32 = 0;
    while (*(s32 *) &D_8012E7FC[0] == 0) {
        ohSleep(1);
    }
    D_800DEF90[id] = func_800B4954;
    D_800E83E0[id] = 0;
    D_800E9AA0[id].as_u32 = 1;
    charge = D_800E9720[D_800E0D50[id]];
    if (charge < 5) {
        D_800E98E0[id] = 0;
    } else if (charge < 10) {
        D_800E98E0[id] = 1;
    } else {
        D_800E98E0[id] = 2;
    }
    func_80161CE0_ovl3(arg0);
    row = pc_rock_tbl[D_800E98E0[id]];
    func_80161EC0_ovl3(0, row[0], row[1]);
    D_800E0490[id] = &D_80192B78_ovl3;
    func_80154648_ovl3(D_800E0D50[id], D_80197F60_ovl3[id - 4], D_801982F8_ovl3[id - 4]);
    func_800AF314();
    func_800A9760(0x2002D);
    func_80155424_ovl3(D_80197F60_ovl3[id - 4]);
    /* Looping sound pair: as on N64, the pair lives in this sleeping
     * coroutine's frame and its address is parked in D_800EA360 for the
     * service routine to release later -- but laid out {low word, id}
     * so the LP64 handle store cannot shear it. */
    D_800EA360[id] = (s32) (uintptr_t) sndpair;
    pc_sndpair_start(0x1E, sndpair);
    {
        s32 wet = D_800E8AE0[id] & 4;
        f32 grav;

        if (wet) {
            D_800E9720[id] = 0x3C;
            grav = -0.4f;
        } else {
            D_800E9720[id] = 0x1E;
            grav = -0.980665f;
        }
        speed = wet ? row[2] * 0.5f : row[2];
        vert = wet ? row[3] * 0.5f : row[3];
        cap = wet ? 8.0f : 16.0f;
        D_800E64D0[id] = D_800E6A10[id] * speed;
        D_800E6690[id] = 0.0f;
        D_800E6850[id] = (speed < 0.0f) ? -speed : speed;
        D_800E3210[id] = vert;
        D_800E3750[id] = grav;
        D_800E3C90[id] = (cap < 0.0f) ? -cap : cap;
    }
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015B190_ovl3.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 13/289, whole-function callee-saved permutation (same floor class documented across this cluster). Gives the carry-effect block a local RockFx view instead of the PORT arm's guarded struct PcPlyshotFx, and inlines the real N64 sound-pair release (func_800A7870) instead of the PC-only pc_sndpair_release wrapper, same pattern as func_80161058_ovl3. Queued for the permuter. */
/* PORT: service routine for the thrown rock installed by func_8015B190_ovl3
 * above, from asm/nonmatchings/ovl3/plyshot/func_8015B75C_ovl3.s. While the
 * rock is still carried (gKirbyState.unk3C==0 and the launch latch
 * D_800E9AA0 clear) it dies when the throw action ends (action 0x15 or
 * ability drop) and otherwise just re-seats the carry effect on hand DObj
 * [3]. Once flying it pops off-screen (func_800B3158), faces the walk
 * direction, counts down the D_800E9720 lifetime while running the ground
 * probe func_80155424_ovl3, and keeps per-class speed/gravity/caps live
 * (halved speed, gravity -0.4 and cap 8 under water unless surface bit 2 is
 * set); ground contact, a hit record, the timer or a wall turns it into
 * splinter track 5 with fgm 0xE, releasing the looping pair parked in
 * D_800EA360 and the carry effect. The per-class lateral speeds are row [2]
 * of the N64 table at D_80196720 (see the init's pc_rock_tbl note on the
 * garbled data emission), spelled here as literals. */
void func_8015B75C_ovl3(struct GObj *arg0) {
    struct RockFx { u32 kind; f32 unk4, unk8, unkC, unk10, unk14, unk18; };
    extern char D_80190B6C_ovl3[];
    extern s32 func_800B3158(void);
    extern void func_800B2340(Vector *, s32, s32);
    extern void func_800B26D8(Vector *, s32, s32);
    extern s32 func_801693C4_ovl3(s32);
    extern void func_80162150_ovl3(void);
    extern s32 func_80155424_ovl3(struct PositionState *);
    extern void func_800A7870(void **, u16 *);
    static const f32 pc_rock_spd[3] = { 6.0f, 8.0f, 10.0f };
    s32 id = omCurrentObj->objId;
    struct RockFx *fx;
    Vector v;
    s32 n;

    if ((gKirbyState.unk3C == 0) && (D_800E9AA0[id].as_u32 == 0)) {
        if ((gKirbyState.action == 0x15) || (gKirbyState.abilityInUse == 0)) {
            func_800A22D4(D_800EA520[id]);
            func_800B1900((u16) id);
            return;
        }
        goto seat;
    }
    if (func_800B3158() == 0) {
        goto release;
    }
    gEntitiesAngleYArray[id] = D_800E17D0[id];
    if (D_800E6310[id] == 0) {
        s32 t = D_800E9720[id];

        D_800E9720[id] = t - 1;
        if (t != 0) {
            if ((D_800E83E0[id] == 0) && (func_80155424_ovl3(D_80197F60_ovl3[id - 4]) == 0)
                && (D_800E8920[id] == 0)) {
                s32 flags = D_800E8AE0[id];
                s32 wet = flags & 4;
                f32 grav;
                f32 spd;
                f32 cap;

                if ((wet != 0) && !(flags & 2)) {
                    grav = -0.4f;
                } else {
                    grav = -0.980665f;
                }
                spd = wet ? pc_rock_spd[D_800E98E0[id]] * 0.5f : pc_rock_spd[D_800E98E0[id]];
                cap = wet ? 8.0f : 16.0f;
                D_800E6850[id] = (spd < 0.0f) ? -spd : spd;
                D_800E3750[id] = grav;
                D_800E3C90[id] = (cap < 0.0f) ? -cap : cap;
                func_80162150_ovl3();
                func_80111C4C(func_801117BC(D_80190B6C_ovl3, id));
                goto seat;
            }
        }
    }
    play_sound(0xE);
    n = func_801693C4_ovl3(5);
    if (n != -1) {
        gEntitiesNextPosXArray[n] = gEntitiesNextPosXArray[id];
        gEntitiesNextPosYArray[n] = gEntitiesNextPosYArray[id];
        gEntitiesNextPosZArray[n] = gEntitiesNextPosZArray[id];
        D_800EA6E0[n] = D_800E17D0[id];
        D_800EC2E0[n].as_u32 = 5;
    }
release:
    {
        u32 *pair = (u32 *) D_800EA360[id];

        if (pair != NULL) {
            void *handle = (void *) pair[0];
            u16 sid = *(u16 *) (pair + 1);

            func_800A7870(&handle, &sid);
            pair[0] = 0;
            *(u16 *) (pair + 1) = 0;
        }
    }
    func_800A22D4(D_800EA520[id]);
    func_800B1900((u16) id);
    return;

seat:
    /* Re-seat the carry effect block on hand DObj [3]'s world transform. */
    fx = (struct RockFx *) ((GObj *) D_800EA520[id])->unk4C;
    func_800B2340(&v, (s32) (uintptr_t) D_800DFBD0[id][3], 0xFFFF);
    fx->unk4 = v.x;
    fx->unk8 = v.y;
    fx->unkC = v.z;
    func_800B26D8(&v, (s32) (uintptr_t) D_800DFBD0[id][3], 0xFFFF);
    fx->unk10 = v.x;
    fx->unk14 = v.y;
    fx->unk18 = v.z;
}
#elif defined(PORT)
/* PORT: service routine for the thrown rock installed by func_8015B190_ovl3
 * above, from asm/nonmatchings/ovl3/plyshot/func_8015B75C_ovl3.s. While the
 * rock is still carried (gKirbyState.unk3C==0 and the launch latch
 * D_800E9AA0 clear) it dies when the throw action ends (action 0x15 or
 * ability drop) and otherwise just re-seats the carry effect on hand DObj
 * [3]. Once flying it pops off-screen (func_800B3158), faces the walk
 * direction, counts down the D_800E9720 lifetime while running the ground
 * probe func_80155424_ovl3, and keeps per-class speed/gravity/caps live
 * (halved speed, gravity -0.4 and cap 8 under water unless surface bit 2 is
 * set); ground contact, a hit record, the timer or a wall turns it into
 * splinter track 5 with fgm 0xE, releasing the looping pair parked in
 * D_800EA360 and the carry effect. The per-class lateral speeds are row [2]
 * of the N64 table at D_80196720 (see the init's pc_rock_tbl note on the
 * garbled data emission), spelled here as literals. */
void func_8015B75C_ovl3(struct GObj *arg0) {
    extern char D_80190B6C_ovl3[];
    extern s32 func_800B3158(void);
    extern void func_800B2340(Vector *, s32, s32);
    extern void func_800B26D8(Vector *, s32, s32);
    extern s32 func_801693C4_ovl3(s32);
    extern void func_80162150_ovl3(void);
    s32 func_80155424_ovl3();
    static const f32 pc_rock_spd[3] = { 6.0f, 8.0f, 10.0f };
    s32 id = omCurrentObj->objId;
    struct PcPlyshotFx *fx;
    Vector v;
    s32 n;

    if ((gKirbyState.unk3C == 0) && (D_800E9AA0[id].as_u32 == 0)) {
        if ((gKirbyState.action == 0x15) || (gKirbyState.abilityInUse == 0)) {
            func_800A22D4(D_800EA520[id]);
            func_800B1900((u16) id);
            return;
        }
        goto seat;
    }
    if (func_800B3158() == 0) {
        goto release;
    }
    gEntitiesAngleYArray[id] = D_800E17D0[id];
    if (D_800E6310[id] == 0) {
        s32 t = D_800E9720[id];

        D_800E9720[id] = t - 1;
        if (t != 0) {
            if ((D_800E83E0[id] == 0) && (func_80155424_ovl3(D_80197F60_ovl3[id - 4]) == 0)
                && (D_800E8920[id] == 0)) {
                s32 flags = D_800E8AE0[id];
                s32 wet = flags & 4;
                f32 grav;
                f32 spd;
                f32 cap;

                if ((wet != 0) && !(flags & 2)) {
                    grav = -0.4f;
                } else {
                    grav = -0.980665f;
                }
                spd = wet ? pc_rock_spd[D_800E98E0[id]] * 0.5f : pc_rock_spd[D_800E98E0[id]];
                cap = wet ? 8.0f : 16.0f;
                D_800E6850[id] = (spd < 0.0f) ? -spd : spd;
                D_800E3750[id] = grav;
                D_800E3C90[id] = (cap < 0.0f) ? -cap : cap;
                func_80162150_ovl3();
                func_80111C4C(func_801117BC(D_80190B6C_ovl3, id));
                goto seat;
            }
        }
    }
    play_sound(0xE);
    n = func_801693C4_ovl3(5);
    if (n != -1) {
        gEntitiesNextPosXArray[n] = gEntitiesNextPosXArray[id];
        gEntitiesNextPosYArray[n] = gEntitiesNextPosYArray[id];
        gEntitiesNextPosZArray[n] = gEntitiesNextPosZArray[id];
        D_800EA6E0[n] = D_800E17D0[id];
        D_800EC2E0[n].as_u32 = 5;
    }
release:
    pc_sndpair_release((void *) (uintptr_t) (u32) D_800EA360[id]);
    func_800A22D4(D_800EA520[id]);
    func_800B1900((u16) id);
    return;

seat:
    /* Re-seat the carry effect block on hand DObj [3]'s world transform. */
    fx = ((GObj *) (uintptr_t) (u32) D_800EA520[id])->unk4C;
    func_800B2340(&v, (s32) (uintptr_t) D_800DFBD0[id][3], 0xFFFF);
    fx->unk4 = v.x;
    fx->unk8 = v.y;
    fx->unkC = v.z;
    func_800B26D8(&v, (s32) (uintptr_t) D_800DFBD0[id][3], 0xFFFF);
    fx->unk10 = v.x;
    fx->unk14 = v.y;
    fx->unk18 = v.z;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015B75C_ovl3.s")
#endif

#ifdef NON_MATCHING
/* FACTORY: 117/266, whole-function temp-register rotation.
   Instruction count, every opcode, every immediate, every branch target and
   the whole schedule are exact from insn 0. The frame (0x38) and both stack
   locals (sp30/sp34) are exact. From insn [21] onward the $t0-$t9 rotation is
   offset by one slot -- the ROM keeps $t0 out of the address-computation pool
   (it holds objId-4 there) and holds objId in $a3 across [40]-[59] where IDO
   uses $v0. No structural defect remains; this is pure allocation. Ideal
   permuter seed.
   Swept: (1) named local for the reused objId-4 table index (lever 11) --
   costs a stack slot, frame goes 0x38->0x40, rotation unchanged (123/266).
   Decoded against the matched family exemplar func_8015ADF8_ovl3 in this TU;
   note the ROM has NO `f32 temp` local here -- a declared f32 local takes a
   frame slot and pushes the frame to 0x40, so the three 0.2f scale stores are
   written as literals. */
void func_8015BBE4_ovl3(s32 arg0) {
    extern f32 **D_80192B94_ovl3;
    extern void func_800B4954(s32);
    extern void func_8015C00C_ovl3(s32);
    extern void func_800A77E8(s32, s32 *, s32 *);
    extern s32 func_800A8234(s32, s32, s32);
    void curObjSleepForever(void);
    s32 sp34;
    s32 sp30;

    func_80161CE0_ovl3(arg0);
    func_80161EC0_ovl3(0, 0.0f, 20.0f);
    D_800E0650[omCurrentObj->objId] = 1;
    D_800DEF90[omCurrentObj->objId] = func_800B4954;
    D_800DF150[omCurrentObj->objId] = func_8015C00C_ovl3;
    D_800E0490[omCurrentObj->objId] = &D_80192B94_ovl3;
    func_80154648_ovl3(D_800E0D50[omCurrentObj->objId], D_80197F60_ovl3[omCurrentObj->objId - 4],
                       D_801982F8_ovl3[omCurrentObj->objId - 4]);
    D_800E8920[omCurrentObj->objId] = D_800E8920[D_800E0D50[omCurrentObj->objId]];
    D_800E8AE0[omCurrentObj->objId] = D_800E8AE0[D_800E0D50[omCurrentObj->objId]];
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    func_800A9864(0x2002E, 0x21, 0x10);
    func_800AA018(0x2027E);
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9560[omCurrentObj->objId] = 0xA;
    if (D_800E8AE0[omCurrentObj->objId] & 4) {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 6.0f;
        D_800E6850[omCurrentObj->objId] = 6.0f;
    } else {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 10.0f;
        D_800E6850[omCurrentObj->objId] = 10.0f;
    }
    D_800EA360[omCurrentObj->objId] = (s32) &sp30;
    if (D_800E8920[omCurrentObj->objId] != 0) {
        func_800A77E8(0x22D, &sp30, &sp34);
        D_800EA520[omCurrentObj->objId] = func_800A8234(2, 1, 0x50);
        D_800EB4E0[omCurrentObj->objId] = func_800A8234(1, 1, 0x51);
    } else {
        sp30 = 0;
        D_800EB4E0[omCurrentObj->objId] = 0;
        D_800EA520[omCurrentObj->objId] = D_800EB4E0[omCurrentObj->objId];
    }
    D_800E9720[omCurrentObj->objId] = 0;
    while (D_800E9720[omCurrentObj->objId] < 30) {
        if (D_800E6310[omCurrentObj->objId] != 0) {
            D_800E64D0[omCurrentObj->objId] = -D_800E64D0[omCurrentObj->objId];
            break;
        }
        ohSleep(1);
        D_800E9720[omCurrentObj->objId]++;
    }
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -0.5f;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015BBE4_ovl3.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 5/505, whole-function callee-saved permutation (same floor class documented across this cluster). Replaces the PORT arm's pc_sndpair_release/pc_sndpair_start calls with real N64 calls through two local static helpers (plyshotSndpairRelease/plyshotSndpairStart, wrapping func_800A7870/func_800A77E8), and gives the carry-effect blocks a local BoomerangFx view instead of the guarded struct PcPlyshotFx. Adds an ANSI prototype for func_800A7F74 (declared unguarded elsewhere in this TU) to avoid an implicit-int conflict. Queued for the permuter. */
/* PORT: the boomerang-shot service routine installed by func_8015BBE4_ovl3
 * above, from asm/nonmatchings/ovl3/plyshot/func_8015C00C_ovl3.s. Bursts
 * when the ability ends (fgm 0x159, particle 2/1/0x10) and pops silently on
 * catch state 1; otherwise runs the hit records, refreshes shot collision,
 * probes 20 units around the shot (func_80155838_ovl3) to keep the two
 * water-trail effects and the looping pair 0x22D alive only in water, and
 * once the shot is past its apex (velocity against facing, or already in
 * return state D_800E98E0) steers it back toward the parent at 10 (6 in
 * water). The shared bubble-throttle word (D_80198830_ovl3.unk4) re-arms
 * from this shot's timer. */
struct BoomerangFx { u32 kind; f32 unk4, unk8, unkC, unk10, unk14, unk18; };

static void plyshotSndpairRelease(u32 *pair) {
    extern void func_800A7870(void **, u16 *);
    void *handle;
    u16 sid;

    if (pair == NULL) {
        return;
    }
    handle = (void *) pair[0];
    sid = *(u16 *) (pair + 1);
    func_800A7870(&handle, &sid);
    pair[0] = 0;
    *(u16 *) (pair + 1) = 0;
}

static void plyshotSndpairStart(s32 fgm, u32 *pair) {
    extern void func_800A77E8(s32, s32 *, s32 *);

    func_800A77E8(fgm, (s32 *) &pair[0], (s32 *) &pair[1]);
}

void func_8015C00C_ovl3(s32 arg0) {
    extern u8 D_80198834_ovl3[];
    extern char D_80190BB0_ovl3[];
    extern s32 D_8019356C_ovl3[];
    extern s32 func_800A8234(s32, s32, s32);
    extern void func_800A1F30(s32);
    extern s32 func_80155664_ovl3(f32 *);
    extern s32 func_80155838_ovl3(f32 *, f32, s32);
    extern s32 func_80155D50_ovl3(f32 *, s32, s32, s32);
    extern f32 func_800F9828(s32, s32);
    extern void func_800A7F74(u32, u32, u16, f32, f32, f32);
    f32 atan2f(f32, f32);
    float sinf(float);
    float cosf(float);
    s32 id = omCurrentObj->objId;
    u32 *sndpair = (u32 *) (uintptr_t) (u32) D_800EA360[id];
    f32 probe[3];
    s32 inWater;
    f32 spd;

    gEntitiesAngleYArray[id] = D_800E17D0[id];
    if (gKirbyState.abilityInUse == 0) {
        play_sound(0x159);
        func_800A7F74(2U, 1U, 0x10U, gEntitiesNextPosXArray[id], gEntitiesNextPosYArray[id],
                      gEntitiesNextPosZArray[id]);
        if (sndpair != NULL && sndpair[0] != 0) {
            plyshotSndpairRelease(sndpair);
        }
        if (D_800EA520[id] != 0) {
            func_800A22D4(D_800EA520[id]);
            func_800A22D4(D_800EB4E0[id]);
        }
        func_800B1900((u16) id);
        return;
    }
    if (gKirbyState.unk44 == 1) {
        if (sndpair != NULL && sndpair[0] != 0) {
            plyshotSndpairRelease(sndpair);
        }
        if (D_800EA520[id] != 0) {
            func_800A1F30(D_800EA520[id]);
            func_800A1F30(D_800EB4E0[id]);
        }
        func_800B1900((u16) id);
        return;
    }
    func_80155D50_ovl3(D_801982F8_ovl3[id - 4], (s32) (uintptr_t) D_8019356C_ovl3, 0, id);
    func_80155664_ovl3(D_80197F60_ovl3[id - 4]);
    D_800E8920[id] = 0;
    probe[0] = gEntitiesNextPosXArray[id];
    probe[1] = gEntitiesNextPosYArray[id];
    probe[2] = gEntitiesNextPosZArray[id];
    inWater = func_80155838_ovl3(probe, 20.0f, 6);
    if (D_800E8AE0[id] & 4) {
        func_800AECC0(1.0f);
        func_800AED20(1.0f);
        spd = 6.0f;
    } else {
        func_800AECC0(2.0f);
        func_800AED20(2.0f);
        spd = 10.0f;
    }
    if (D_800E98E0[id] != 0) {
        f32 ang = atan2f((gEntitiesNextPosYArray[D_800E0D50[id]] - gEntitiesNextPosYArray[id]) + 20.0f,
                         func_800F9828(id, D_800E0D50[id]));

        D_800E3210[id] = sinf(ang) * spd;
        D_800E3750[id] = 0.0f;
        D_800E3C90[id] = (spd < 0.0f) ? -spd : spd;
        D_800E64D0[id] = cosf(ang) * spd;
        D_800E6690[id] = 0.0f;
        D_800E6850[id] = (spd < 0.0f) ? -spd : spd;
    } else {
        D_800E6850[id] = (spd < 0.0f) ? -spd : spd;
        if (((D_800E6A10[id] == 1.0f) && (D_800E64D0[id] < 0.0f))
            || ((D_800E6A10[id] == -1.0f) && (D_800E64D0[id] > 0.0f))) {
            D_800E98E0[id] = 1;
        }
    }
    /* N64 D_80198830+4; the PC data emission splits that block, and this
     * build's convention (kirby.c, plylib.c PORT arms) is the splinter
     * name for each cell. */
    if (*(s32 *) D_80198834_ovl3 == 0) {
        D_800E9560[id] -= 1;
        if (D_800E9560[id] == 0) {
            *(s32 *) D_80198834_ovl3 = 1;
        }
    }
    func_80111C4C(func_801117BC(D_80190BB0_ovl3, id));
    if (inWater == 0) {
        if (sndpair != NULL && sndpair[0] != 0) {
            plyshotSndpairRelease(sndpair);
        }
        if (D_800EA520[id] != 0) {
            func_800A1F30(D_800EA520[id]);
            func_800A1F30(D_800EB4E0[id]);
            D_800EB4E0[id] = 0;
            D_800EA520[id] = 0;
        }
    } else {
        if (sndpair != NULL && sndpair[0] == 0) {
            plyshotSndpairStart(0x22D, sndpair);
        }
        if (D_800EA520[id] == 0) {
            D_800EA520[id] = func_800A8234(2, 1, 0x50);
            D_800EB4E0[id] = func_800A8234(1, 1, 0x51);
        }
    }
    if (D_800EA520[id] != 0) {
        struct BoomerangFx *fa = (struct BoomerangFx *) ((GObj *) D_800EA520[id])->unk4C;

        fa->unk4 = gEntitiesNextPosXArray[id];
        fa->unk8 = gEntitiesNextPosYArray[id];
        fa->unkC = gEntitiesNextPosZArray[id];
        if (D_800EB4E0[id] != 0) {
            struct BoomerangFx *fb = (struct BoomerangFx *) ((GObj *) D_800EB4E0[id])->unk4C;

            fb->unk4 = gEntitiesNextPosXArray[id];
            fb->unk8 = gEntitiesNextPosYArray[id];
            fb->unkC = gEntitiesNextPosZArray[id];
        }
    }
}
#elif defined(PORT)
/* PORT: the boomerang-shot service routine installed by func_8015BBE4_ovl3
 * above, from asm/nonmatchings/ovl3/plyshot/func_8015C00C_ovl3.s. Bursts
 * when the ability ends (fgm 0x159, particle 2/1/0x10) and pops silently on
 * catch state 1; otherwise runs the hit records, refreshes shot collision,
 * probes 20 units around the shot (func_80155838_ovl3) to keep the two
 * water-trail effects and the looping pair 0x22D alive only in water, and
 * once the shot is past its apex (velocity against facing, or already in
 * return state D_800E98E0) steers it back toward the parent at 10 (6 in
 * water). The shared bubble-throttle word (D_80198830_ovl3.unk4) re-arms
 * from this shot's timer. */
void func_8015C00C_ovl3(s32 arg0) {
    extern u8 D_80198834_ovl3[];
    extern char D_80190BB0_ovl3[];
    extern s32 D_8019356C_ovl3[];
    extern s32 func_800A8234(s32, s32, s32);
    extern void func_800A1F30(s32);
    extern s32 func_80155664_ovl3(f32 *);
    extern s32 func_80155838_ovl3(f32 *, f32, s32);
    extern s32 func_80155D50_ovl3(f32 *, s32, s32, s32);
    extern f32 func_800F9828(s32, s32);
    f32 atan2f(f32, f32);
    float sinf(float);
    float cosf(float);
    s32 id = omCurrentObj->objId;
    u32 *sndpair = (u32 *) (uintptr_t) (u32) D_800EA360[id];
    f32 probe[3];
    s32 inWater;
    f32 spd;

    gEntitiesAngleYArray[id] = D_800E17D0[id];
    if (gKirbyState.abilityInUse == 0) {
        play_sound(0x159);
        func_800A7F74(2U, 1U, 0x10U, gEntitiesNextPosXArray[id], gEntitiesNextPosYArray[id],
                      gEntitiesNextPosZArray[id]);
        if (sndpair != NULL && sndpair[0] != 0) {
            pc_sndpair_release(sndpair);
        }
        if (D_800EA520[id] != 0) {
            func_800A22D4(D_800EA520[id]);
            func_800A22D4(D_800EB4E0[id]);
        }
        func_800B1900((u16) id);
        return;
    }
    if (gKirbyState.unk44 == 1) {
        if (sndpair != NULL && sndpair[0] != 0) {
            pc_sndpair_release(sndpair);
        }
        if (D_800EA520[id] != 0) {
            func_800A1F30(D_800EA520[id]);
            func_800A1F30(D_800EB4E0[id]);
        }
        func_800B1900((u16) id);
        return;
    }
    func_80155D50_ovl3(D_801982F8_ovl3[id - 4], (s32) (uintptr_t) D_8019356C_ovl3, 0, id);
    func_80155664_ovl3(D_80197F60_ovl3[id - 4]);
    D_800E8920[id] = 0;
    probe[0] = gEntitiesNextPosXArray[id];
    probe[1] = gEntitiesNextPosYArray[id];
    probe[2] = gEntitiesNextPosZArray[id];
    inWater = func_80155838_ovl3(probe, 20.0f, 6);
    if (D_800E8AE0[id] & 4) {
        func_800AECC0(1.0f);
        func_800AED20(1.0f);
        spd = 6.0f;
    } else {
        func_800AECC0(2.0f);
        func_800AED20(2.0f);
        spd = 10.0f;
    }
    if (D_800E98E0[id] != 0) {
        f32 ang = atan2f((gEntitiesNextPosYArray[D_800E0D50[id]] - gEntitiesNextPosYArray[id]) + 20.0f,
                         func_800F9828(id, D_800E0D50[id]));

        D_800E3210[id] = sinf(ang) * spd;
        D_800E3750[id] = 0.0f;
        D_800E3C90[id] = (spd < 0.0f) ? -spd : spd;
        D_800E64D0[id] = cosf(ang) * spd;
        D_800E6690[id] = 0.0f;
        D_800E6850[id] = (spd < 0.0f) ? -spd : spd;
    } else {
        D_800E6850[id] = (spd < 0.0f) ? -spd : spd;
        if (((D_800E6A10[id] == 1.0f) && (D_800E64D0[id] < 0.0f))
            || ((D_800E6A10[id] == -1.0f) && (D_800E64D0[id] > 0.0f))) {
            D_800E98E0[id] = 1;
        }
    }
    /* N64 D_80198830+4; the PC data emission splits that block, and this
     * build's convention (kirby.c, plylib.c PORT arms) is the splinter
     * name for each cell. */
    if (*(s32 *) D_80198834_ovl3 == 0) {
        D_800E9560[id] -= 1;
        if (D_800E9560[id] == 0) {
            *(s32 *) D_80198834_ovl3 = 1;
        }
    }
    func_80111C4C(func_801117BC(D_80190BB0_ovl3, id));
    if (inWater == 0) {
        if (sndpair != NULL && sndpair[0] != 0) {
            pc_sndpair_release(sndpair);
        }
        if (D_800EA520[id] != 0) {
            func_800A1F30(D_800EA520[id]);
            func_800A1F30(D_800EB4E0[id]);
            D_800EB4E0[id] = 0;
            D_800EA520[id] = 0;
        }
    } else {
        if (sndpair != NULL && sndpair[0] == 0) {
            pc_sndpair_start(0x22D, sndpair);
        }
        if (D_800EA520[id] == 0) {
            D_800EA520[id] = func_800A8234(2, 1, 0x50);
            D_800EB4E0[id] = func_800A8234(1, 1, 0x51);
        }
    }
    if (D_800EA520[id] != 0) {
        struct PcPlyshotFx *fa = ((GObj *) (uintptr_t) (u32) D_800EA520[id])->unk4C;

        fa->unk4 = gEntitiesNextPosXArray[id];
        fa->unk8 = gEntitiesNextPosYArray[id];
        fa->unkC = gEntitiesNextPosZArray[id];
        if (D_800EB4E0[id] != 0) {
            struct PcPlyshotFx *fb = ((GObj *) (uintptr_t) (u32) D_800EB4E0[id])->unk4C;

            fb->unk4 = gEntitiesNextPosXArray[id];
            fb->unk8 = gEntitiesNextPosYArray[id];
            fb->unkC = gEntitiesNextPosZArray[id];
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015C00C_ovl3.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 5/291, whole-function callee-saved permutation (same floor class documented across this cluster). Queued for the permuter. */
/* PORT: spread-fragment init coroutine, from asm/nonmatchings/ovl3/plyshot/
 * func_8015C7F4_ovl3.s. Spawned at the carry target (D_800E1ED0[id-112]),
 * inherits the parent's heading, builds a launch vector {per-kind lateral
 * speed from D_80196750, 8.0 up (1.6x on a 2-in-8 roll), 0} mirrored by the
 * side flag in D_800EC660, rotates it by the parent's throw angle (sign
 * flipped when the mode word D_8012E7FC[2] is 1), scales it 0.75x under
 * water, and launches; the service routine is the already-decompiled
 * func_8015CC84_ovl3. */
void func_8015C7F4_ovl3(s32 arg0) {
    extern f32 **D_80192C3C_ovl3;
    extern f32 D_80196750_ovl3[];
    extern f32 D_8012E7FC[];
    extern void func_800B4954(s32);
    extern s32 random_soft_s32_range(s32);
    extern Vector *lbvector_Rotate(Vector *, s32, f32);
    void func_8015CC84_ovl3(s32);
    void curObjSleepForever(void);
    s32 id = omCurrentObj->objId;
    s32 kind = D_800EC2E0[id].as_u32;
    Vector v;
    s32 r;

    D_800EA520[id] = 0;
    func_80161CE0_ovl3(arg0);
    func_80161EC0_ovl3(D_800E1ED0[id - 112], 0.0f, 0.0f);
    D_800E17D0[id] = D_800E17D0[D_800E0D50[id]];
    D_800DEF90[id] = func_800B4954;
    D_800DF150[id] = (void (*)(struct GObj *)) func_8015CC84_ovl3;
    D_800E0490[id] = &D_80192C3C_ovl3;
    func_80154648_ovl3(D_800E0D50[id], D_80197F60_ovl3[id - 4], D_801982F8_ovl3[id - 4]);
    play_sound(0xB4);
    gEntitiesScaleXArray[id] = 0.2f;
    gEntitiesScaleYArray[id] = 0.2f;
    gEntitiesScaleZArray[id] = 0.2f;
    func_800A9864(0x2002F, 0x21, 0x10);
    r = random_soft_s32_range(8);
    v.x = D_80196750_ovl3[kind];
    v.y = 8.0f;
    v.z = 0.0f;
    if ((r == 2) || (r == 7)) {
        v.y = 8.0f * 1.6f;
    }
    if (D_800EC660[id] == -1.0f) {
        v.x = -v.x;
    }
    if (*(s32 *) &D_8012E7FC[2] == 1) {
        lbvector_Rotate(&v, 4, -D_800EA6E0[D_800E0D50[id]]);
    } else {
        lbvector_Rotate(&v, 4, D_800EA6E0[D_800E0D50[id]]);
    }
    if (D_800E8AE0[id] & 4) {
        D_800EA6E0[id] = v.y * 0.75f;
        D_800EA8A0[id] = v.x * 0.75f;
    } else {
        D_800EA6E0[id] = v.y;
        D_800EA8A0[id] = v.x;
    }
    D_800E9720[id] = 0x14;
    D_800E64D0[id] = D_800EA8A0[id];
    D_800E6690[id] = 0.0f;
    D_800E6850[id] = (D_800EA8A0[id] < 0.0f) ? -D_800EA8A0[id] : D_800EA8A0[id];
    D_800E3210[id] = D_800EA6E0[id];
    D_800E3750[id] = 0.0f;
    D_800E3C90[id] = (D_800EA6E0[id] < 0.0f) ? -D_800EA6E0[id] : D_800EA6E0[id];
    D_800EA520[id] = func_800A8100(1, 1, 0x29, NULL);
    curObjSleepForever();
}
#elif defined(PORT)
/* PORT: spread-fragment init coroutine, from asm/nonmatchings/ovl3/plyshot/
 * func_8015C7F4_ovl3.s. Spawned at the carry target (D_800E1ED0[id-112]),
 * inherits the parent's heading, builds a launch vector {per-kind lateral
 * speed from D_80196750, 8.0 up (1.6x on a 2-in-8 roll), 0} mirrored by the
 * side flag in D_800EC660, rotates it by the parent's throw angle (sign
 * flipped when the mode word D_8012E7FC[2] is 1), scales it 0.75x under
 * water, and launches; the service routine is the already-decompiled
 * func_8015CC84_ovl3. */
void func_8015C7F4_ovl3(s32 arg0) {
    extern f32 **D_80192C3C_ovl3;
    extern f32 D_80196750_ovl3[];
    extern f32 D_8012E7FC[];
    extern void func_800B4954(s32);
    extern s32 random_soft_s32_range(s32);
    extern Vector *lbvector_Rotate(Vector *, s32, f32);
    void func_8015CC84_ovl3(s32);
    void curObjSleepForever(void);
    s32 id = omCurrentObj->objId;
    s32 kind = D_800EC2E0[id].as_u32;
    Vector v;
    s32 r;

    D_800EA520[id] = 0;
    func_80161CE0_ovl3(arg0);
    func_80161EC0_ovl3(D_800E1ED0[id - 112], 0.0f, 0.0f);
    D_800E17D0[id] = D_800E17D0[D_800E0D50[id]];
    D_800DEF90[id] = func_800B4954;
    D_800DF150[id] = (void (*)(struct GObj *)) func_8015CC84_ovl3;
    D_800E0490[id] = &D_80192C3C_ovl3;
    func_80154648_ovl3(D_800E0D50[id], D_80197F60_ovl3[id - 4], D_801982F8_ovl3[id - 4]);
    play_sound(0xB4);
    gEntitiesScaleXArray[id] = 0.2f;
    gEntitiesScaleYArray[id] = 0.2f;
    gEntitiesScaleZArray[id] = 0.2f;
    func_800A9864(0x2002F, 0x21, 0x10);
    r = random_soft_s32_range(8);
    v.x = D_80196750_ovl3[kind];
    v.y = 8.0f;
    v.z = 0.0f;
    if ((r == 2) || (r == 7)) {
        v.y = 8.0f * 1.6f;
    }
    if (D_800EC660[id] == -1.0f) {
        v.x = -v.x;
    }
    if (*(s32 *) &D_8012E7FC[2] == 1) {
        lbvector_Rotate(&v, 4, -D_800EA6E0[D_800E0D50[id]]);
    } else {
        lbvector_Rotate(&v, 4, D_800EA6E0[D_800E0D50[id]]);
    }
    if (D_800E8AE0[id] & 4) {
        D_800EA6E0[id] = v.y * 0.75f;
        D_800EA8A0[id] = v.x * 0.75f;
    } else {
        D_800EA6E0[id] = v.y;
        D_800EA8A0[id] = v.x;
    }
    D_800E9720[id] = 0x14;
    D_800E64D0[id] = D_800EA8A0[id];
    D_800E6690[id] = 0.0f;
    D_800E6850[id] = (D_800EA8A0[id] < 0.0f) ? -D_800EA8A0[id] : D_800EA8A0[id];
    D_800E3210[id] = D_800EA6E0[id];
    D_800E3750[id] = 0.0f;
    D_800E3C90[id] = (D_800EA6E0[id] < 0.0f) ? -D_800EA6E0[id] : D_800EA6E0[id];
    D_800EA520[id] = func_800A8100(1, 1, 0x29, NULL);
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015C7F4_ovl3.s")
#endif

extern char D_80190BF4_ovl3[];
extern void func_80162150_ovl3(void);
extern void func_800A7F74(u32, u32, u16, f32, f32, f32);

void func_8015CC84_ovl3(s32 arg0) {
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId];
    if (D_800E9720[omCurrentObj->objId]--) {
        if ((D_800E6310[omCurrentObj->objId] == 0) && (D_800E83E0[omCurrentObj->objId] == 0)
         && (func_8015550C_ovl3(D_80197F60_ovl3[omCurrentObj->objId - 4],
                                D_801982F8_ovl3[omCurrentObj->objId - 4]) == 0)
         && (D_800E8920[omCurrentObj->objId] == 0)) {
            if ((D_800E8AE0[omCurrentObj->objId] & 4) == 0) {
                D_800E64D0[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
            } else {
                D_800E64D0[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId] * 0.5f;
            }
            D_800E6690[omCurrentObj->objId] = 0.0f;
            if (D_800EA8A0[omCurrentObj->objId] < 0) {
                D_800E6850[omCurrentObj->objId] = -D_800EA8A0[omCurrentObj->objId];
            } else {
                D_800E6850[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
            }
            if ((D_800E8AE0[omCurrentObj->objId] & 4) == 0) {
                D_800E3210[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
            } else {
                D_800E3210[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId] * 0.5f;
            }
            D_800E3750[omCurrentObj->objId] = 0.0f;
            if (D_800EA6E0[omCurrentObj->objId] < 0) {
                D_800E3C90[omCurrentObj->objId] = -D_800EA6E0[omCurrentObj->objId];
            } else {
                D_800E3C90[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
            }
            func_80162150_ovl3();
            func_80111C4C(func_801117BC(D_80190BF4_ovl3, omCurrentObj->objId));
            return;
        }
    }
    func_800A22D4(D_800EA520[omCurrentObj->objId]);
    play_sound(0x228);
    func_800A7F74(1, 1, 0x2D, gEntitiesNextPosXArray[omCurrentObj->objId],
                  gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

#ifdef MIPS_TO_C
/* FACTORY: 5/267, whole-function callee-saved permutation (same floor
 * class as the rest of this cluster). The N64 draft calls func_800A77E8 /
 * func_800A7870 inline, which is what the asm's jal targets show; the PORT
 * arm's pc_sndpair_start/pc_sndpair_release are static helpers defined at
 * the top of THIS file that wrap those same two calls (an earlier report
 * that they were unresolved stubs was wrong -- they are real and linked).
 * Queued for the permuter. */
/* PORT: the lobbed-throw init coroutine, from asm/nonmatchings/ovl3/plyshot/
 * func_8015CF9C_ovl3.s. Spawns at the carry target, launches along the
 * throw angle in D_800EC660 with speed 1.5x the parent's charge clamped to
 * [8,18] under gravity -0.55, then sleeps until the service routine
 * func_8015D3C8_ovl3 signals impact through D_800E98E0; on wake it detaches
 * from the parent, plays the burst (anim 0x20047 / voice 0xB7 / fgm 0x202A0)
 * and destroys the track. */
void func_8015CF9C_ovl3(s32 arg0) {
    extern f32 **D_80192CA4_ovl3;
    extern void func_800B4954(s32);
    extern void func_8015D3C8_ovl3(struct GObj *);
    extern s32 func_800A8234(s32, s32, s32);
    extern void func_800A9760(s32);
    extern void func_800A77E8(s32, s32 *, s32 *);
    extern void func_800A7870(void **, u16 *);
    float sinf(float);
    float cosf(float);
    s32 id = omCurrentObj->objId;
    s32 pairHandle;
    s32 pairSid;
    f32 spd;

    D_800EA520[id] = 0;
    D_800E98E0[id] = 0;
    func_80161CE0_ovl3(arg0);
    func_80161EC0_ovl3(D_800E1ED0[id - 112], 40.0f - (sinf(D_800EC660[id]) * 63.6396f),
                       sinf(D_800EC660[id]) * -65.0f);
    D_800DEF90[id] = func_800B4954;
    D_800DF150[id] = func_8015D3C8_ovl3;
    D_800E0490[id] = &D_80192CA4_ovl3;
    func_80154648_ovl3(D_800E0D50[id], D_80197F60_ovl3[id - 4], D_801982F8_ovl3[id - 4]);
    D_800EA520[id] = func_800A8234(1, 1, 0x2A);
    spd = (f32) D_800E9720[D_800E0D50[id]] * 1.5f;
    if (spd < 8.0f) {
        spd = 8.0f;
    } else if (spd > 18.0f) {
        spd = 18.0f;
    }
    D_800E64D0[id] = cosf(D_800EC660[id]) * spd * D_800E6A10[id];
    D_800E6690[id] = 0.0f;
    D_800E6850[id] = 18.0f;
    D_800E3210[id] = sinf(D_800EC660[id]) * spd;
    D_800E3750[id] = -0.55f;
    D_800E3C90[id] = 24.0f;
    gEntitiesScaleXArray[id] = 0.2f;
    gEntitiesScaleYArray[id] = 0.2f;
    gEntitiesScaleZArray[id] = 0.2f;
    func_800A9864(0x20030, 0x21, 0x10);
    while (D_800E98E0[id] == 0) {
        ohSleep(1);
    }
    D_800E0D50[id] = -1;
    func_800A9760(0x20047);
    func_800A77E8(0xB7, &pairHandle, &pairSid);
    func_800AA154(0x202A0);
    func_800A7870((void **) &pairHandle, (u16 *) &pairSid);
    func_800B1900((u16) id);
}
#elif defined(PORT)
/* PORT: the lobbed-throw init coroutine, from asm/nonmatchings/ovl3/plyshot/
 * func_8015CF9C_ovl3.s. Spawns at the carry target, launches along the
 * throw angle in D_800EC660 with speed 1.5x the parent's charge clamped to
 * [8,18] under gravity -0.55, then sleeps until the service routine
 * func_8015D3C8_ovl3 signals impact through D_800E98E0; on wake it detaches
 * from the parent, plays the burst (anim 0x20047 / voice 0xB7 / fgm 0x202A0)
 * and destroys the track. */
void func_8015CF9C_ovl3(s32 arg0) {
    extern f32 **D_80192CA4_ovl3;
    extern void func_800B4954(s32);
    extern void func_8015D3C8_ovl3(struct GObj *);
    extern s32 func_800A8234(s32, s32, s32);
    extern void func_800A9760(s32);
    float sinf(float);
    float cosf(float);
    s32 id = omCurrentObj->objId;
    u32 sndpair[2];
    f32 spd;

    D_800EA520[id] = 0;
    D_800E98E0[id] = 0;
    func_80161CE0_ovl3(arg0);
    func_80161EC0_ovl3(D_800E1ED0[id - 112], 40.0f - (sinf(D_800EC660[id]) * 63.6396f),
                       sinf(D_800EC660[id]) * -65.0f);
    D_800DEF90[id] = func_800B4954;
    D_800DF150[id] = func_8015D3C8_ovl3;
    D_800E0490[id] = &D_80192CA4_ovl3;
    func_80154648_ovl3(D_800E0D50[id], D_80197F60_ovl3[id - 4], D_801982F8_ovl3[id - 4]);
    D_800EA520[id] = func_800A8234(1, 1, 0x2A);
    spd = (f32) D_800E9720[D_800E0D50[id]] * 1.5f;
    if (spd < 8.0f) {
        spd = 8.0f;
    } else if (spd > 18.0f) {
        spd = 18.0f;
    }
    D_800E64D0[id] = cosf(D_800EC660[id]) * spd * D_800E6A10[id];
    D_800E6690[id] = 0.0f;
    D_800E6850[id] = 18.0f;
    D_800E3210[id] = sinf(D_800EC660[id]) * spd;
    D_800E3750[id] = -0.55f;
    D_800E3C90[id] = 24.0f;
    gEntitiesScaleXArray[id] = 0.2f;
    gEntitiesScaleYArray[id] = 0.2f;
    gEntitiesScaleZArray[id] = 0.2f;
    func_800A9864(0x20030, 0x21, 0x10);
    while (D_800E98E0[id] == 0) {
        ohSleep(1);
    }
    D_800E0D50[id] = -1;
    func_800A9760(0x20047);
    pc_sndpair_start(0xB7, sndpair);
    func_800AA154(0x202A0);
    pc_sndpair_release(sndpair);
    func_800B1900((u16) id);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015CF9C_ovl3.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 3/245, whole-function callee-saved permutation (same floor
 * class as the rest of this cluster -- correct instruction count and
 * control flow, near-total register/frame mismatch). Also gives the
 * PcPlyshotFx view a local-scope equivalent (LocalPlyshotFx) since the
 * real struct is declared inside an #ifdef PORT block elsewhere in this
 * file and can't be reached from here without a file-scope move. Queued
 * for the permuter. */
/* PORT: service routine for the lobbed throw installed by func_8015CF9C_ovl3
 * above, from asm/nonmatchings/ovl3/plyshot/func_8015D3C8_ovl3.s. Before
 * impact (D_800E98E0==0) it pops off-screen, faces the walk direction,
 * pitches the model along its velocity (-atan2(vy,|vx|)), and while nothing
 * has been hit re-seats the trail effect block from position+angles and
 * steps the flight track; any contact (ground, hit record, shot collision
 * or off-parent flag) freezes the motion and raises D_800E98E0=1, waking
 * the sleeping init coroutine to run the burst. After impact it drives the
 * burst: scales anim D_801915B4 and ring row D_801943A8 by trail DObj [1]'s
 * scale.x and runs the impact hit record D_80194458. */
void func_8015D3C8_ovl3(struct GObj *arg0) {
    extern char D_80190C38_ovl3[];
    extern s32 D_801915B4_ovl3[];
    extern f32 D_801943A8_ovl3[][4];
    extern f32 D_80198438_ovl3[];
    extern s32 D_80194458_ovl3[];
    extern s32 func_800B3158(void);
    extern s32 func_80155D50_ovl3(f32 *, s32, s32, s32);
    extern void func_80162150_ovl3(void);
    s32 func_8016854C_ovl3(s32, s32, f32);
    s32 func_80152070_ovl3(f32 (*)[4], f32 (*)[4], u8, f32);
    f32 atan2f(f32, f32);
    s32 id = omCurrentObj->objId;

    if (D_800E98E0[id] != 0) {
        f32 s = D_800DFBD0[id][1]->scale.v.x;

        func_8016854C_ovl3((s32) (uintptr_t) D_801915B4_ovl3, 0, s);
        func_80152070_ovl3(D_801943A8_ovl3, (f32 (*)[4]) D_80198438_ovl3, 0xB, s);
        func_80155D50_ovl3(D_801982F8_ovl3[id - 4], (s32) (uintptr_t) D_80194458_ovl3, 0, id);
        return;
    }
    if (func_800B3158() == 0) {
        func_800A22D4(D_800EA520[id]);
        func_800B1900((u16) id);
        return;
    }
    gEntitiesAngleYArray[id] = D_800E17D0[id];
    {
        f32 h = D_800E64D0[id];

        if (h < 0.0f) {
            h = -h;
        }
        gEntitiesAngleXArray[id] = -atan2f(D_800E3210[id], h);
    }
    if ((D_800E6310[id] == 0) && (D_800E83E0[id] == 0)
        && (func_8015550C_ovl3(D_80197F60_ovl3[id - 4], D_801982F8_ovl3[id - 4]) == 0)
        && (D_800E8920[id] == 0)) {
        struct LocalPlyshotFx { u32 unk0; f32 unk4, unk8, unkC, unk10, unk14, unk18; };
        struct LocalPlyshotFx *fx = ((GObj *) (uintptr_t) (u32) D_800EA520[id])->unk4C;

        fx->unk4 = gEntitiesNextPosXArray[id];
        fx->unk8 = gEntitiesNextPosYArray[id];
        fx->unkC = gEntitiesNextPosZArray[id];
        fx->unk10 = gEntitiesAngleXArray[id];
        fx->unk14 = gEntitiesAngleYArray[id];
        fx->unk18 = gEntitiesAngleZArray[id];
        func_80162150_ovl3();
        func_80111C4C(func_801117BC(D_80190C38_ovl3, id));
        return;
    }
    D_800E6690[id] = 0.0f;
    D_800E64D0[id] = D_800E6690[id];
    D_800E6850[id] = 65535.0f;
    D_800E3750[id] = 0.0f;
    D_800E3210[id] = D_800E3750[id];
    D_800E3C90[id] = 65535.0f;
    D_800E98E0[id] = 1;
    func_800A22D4(D_800EA520[id]);
}
#elif defined(PORT)
/* PORT: service routine for the lobbed throw installed by func_8015CF9C_ovl3
 * above, from asm/nonmatchings/ovl3/plyshot/func_8015D3C8_ovl3.s. Before
 * impact (D_800E98E0==0) it pops off-screen, faces the walk direction,
 * pitches the model along its velocity (-atan2(vy,|vx|)), and while nothing
 * has been hit re-seats the trail effect block from position+angles and
 * steps the flight track; any contact (ground, hit record, shot collision
 * or off-parent flag) freezes the motion and raises D_800E98E0=1, waking
 * the sleeping init coroutine to run the burst. After impact it drives the
 * burst: scales anim D_801915B4 and ring row D_801943A8 by trail DObj [1]'s
 * scale.x and runs the impact hit record D_80194458. */
void func_8015D3C8_ovl3(struct GObj *arg0) {
    extern char D_80190C38_ovl3[];
    extern s32 D_801915B4_ovl3[];
    extern f32 D_801943A8_ovl3[][4];
    extern f32 D_80198438_ovl3[];
    extern s32 D_80194458_ovl3[];
    extern s32 func_800B3158(void);
    extern s32 func_80155D50_ovl3(f32 *, s32, s32, s32);
    extern void func_80162150_ovl3(void);
    s32 func_8016854C_ovl3(s32, s32, f32);
    s32 func_80152070_ovl3(f32 (*)[4], f32 (*)[4], u8, f32);
    f32 atan2f(f32, f32);
    s32 id = omCurrentObj->objId;

    if (D_800E98E0[id] != 0) {
        f32 s = D_800DFBD0[id][1]->scale.v.x;

        func_8016854C_ovl3((s32) (uintptr_t) D_801915B4_ovl3, 0, s);
        func_80152070_ovl3(D_801943A8_ovl3, (f32 (*)[4]) D_80198438_ovl3, 0xB, s);
        func_80155D50_ovl3(D_801982F8_ovl3[id - 4], (s32) (uintptr_t) D_80194458_ovl3, 0, id);
        return;
    }
    if (func_800B3158() == 0) {
        func_800A22D4(D_800EA520[id]);
        func_800B1900((u16) id);
        return;
    }
    gEntitiesAngleYArray[id] = D_800E17D0[id];
    {
        f32 h = D_800E64D0[id];

        if (h < 0.0f) {
            h = -h;
        }
        gEntitiesAngleXArray[id] = -atan2f(D_800E3210[id], h);
    }
    if ((D_800E6310[id] == 0) && (D_800E83E0[id] == 0)
        && (func_8015550C_ovl3(D_80197F60_ovl3[id - 4], D_801982F8_ovl3[id - 4]) == 0)
        && (D_800E8920[id] == 0)) {
        struct PcPlyshotFx *fx = ((GObj *) (uintptr_t) (u32) D_800EA520[id])->unk4C;

        fx->unk4 = gEntitiesNextPosXArray[id];
        fx->unk8 = gEntitiesNextPosYArray[id];
        fx->unkC = gEntitiesNextPosZArray[id];
        fx->unk10 = gEntitiesAngleXArray[id];
        fx->unk14 = gEntitiesAngleYArray[id];
        fx->unk18 = gEntitiesAngleZArray[id];
        func_80162150_ovl3();
        func_80111C4C(func_801117BC(D_80190C38_ovl3, id));
        return;
    }
    D_800E6690[id] = 0.0f;
    D_800E64D0[id] = D_800E6690[id];
    D_800E6850[id] = 65535.0f;
    D_800E3750[id] = 0.0f;
    D_800E3210[id] = D_800E3750[id];
    D_800E3C90[id] = 65535.0f;
    D_800E98E0[id] = 1;
    func_800A22D4(D_800EA520[id]);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015D3C8_ovl3.s")
#endif

#ifdef NON_MATCHING
/* FACTORY: 43/273, first draft — NOT swept, one compile only.
   Decoded from the listing against the matched family exemplar
   func_8015ADF8_ovl3 in this TU; all calls, constants, branch polarities and
   the two D_800D7238/D_800D723C scratch-global arms are read directly off
   asm/nonmatchings/ovl3/plyshot/func_8015D7A0_ovl3.s, so the residue should be
   allocation-shaped rather than structural. Good permuter seed. */
void func_8015D7A0_ovl3(s32 arg0) {
    extern f32 D_800D7238;
    extern f32 D_800D723C;
    extern f32 **D_80192E9C_ovl3;
    extern void func_8015DBE4_ovl3(s32);
    extern s32 func_800A8234(s32, s32, s32);
    extern void func_800B4954(s32);
    void curObjSleepForever(void);
    f32 temp;
    f32 v;

    D_800EA520[omCurrentObj->objId] = 0;
    D_800E0650[omCurrentObj->objId] = 1;
    func_80161CE0_ovl3(arg0);
    if (D_800EC2E0[omCurrentObj->objId].as_s32 == 1) {
        D_800D7238 = 30.0f;
        D_800D723C = 20.0f;
    } else {
        D_800D723C = 0.0f;
        D_800D7238 = D_800D723C;
    }
    func_80161EC0_ovl3(0, D_800D7238, D_800D723C);
    D_800DEF90[omCurrentObj->objId] = func_800B4954;
    D_800DF150[omCurrentObj->objId] = func_8015DBE4_ovl3;
    D_800E0490[omCurrentObj->objId] = &D_80192E9C_ovl3;
    func_80154648_ovl3(D_800E0D50[omCurrentObj->objId], D_80197F60_ovl3[omCurrentObj->objId - 4],
                       D_801982F8_ovl3[omCurrentObj->objId - 4]);
    temp = 0.2f;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E8AE0[omCurrentObj->objId] = D_800E8AE0[D_800E0D50[omCurrentObj->objId]];
    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    func_800A9864(0x20032, 0x21, 0x10);
    D_800E9720[omCurrentObj->objId] = 0x46;
    D_800EA8A0[omCurrentObj->objId] = 1.0f;
    D_800EA6E0[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    func_800AA018(0x20280);
    if (D_800EC2E0[omCurrentObj->objId].as_s32 == 1) {
        gEntitiesAngleXArray[omCurrentObj->objId] = 0.0f;
        if (D_800E8AE0[omCurrentObj->objId] & 4) {
            v = 5.0f;
        } else {
            v = 10.0f;
        }
        D_800E64D0[omCurrentObj->objId] = v * D_800E6A10[omCurrentObj->objId];
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E6850[omCurrentObj->objId] = 10.0f;
    } else {
        gEntitiesAngleXArray[omCurrentObj->objId] = 1.57079637f;
        if (D_800E8AE0[omCurrentObj->objId] & 4) {
            D_800E3210[omCurrentObj->objId] = -8.5f;
        } else {
            D_800E3210[omCurrentObj->objId] = -17.0f;
        }
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3C90[omCurrentObj->objId] = 17.0f;
    }
    D_800EA520[omCurrentObj->objId] = func_800A8234(2, 1, 0x49);
    D_800EB4E0[omCurrentObj->objId] = func_800A8234(1, 1, 0x4E);
    D_800EB6A0[omCurrentObj->objId] = 0;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015D7A0_ovl3.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 2/533, whole-function callee-saved permutation (same floor class documented across this cluster). Gives the effect blocks a local NeedleFx view instead of the guarded struct PcPlyshotFx. Queued for the permuter. */
/* PORT: service routine for func_8015D7A0_ovl3's shot above (anim 0x20032,
 * the needle/spike burst -- kind 1 travels flat, kind 0 drops straight
 * down), from asm/nonmatchings/ovl3/plyshot/func_8015DBE4_ovl3.s. Kills
 * everything (both trail effects and the water-splash effect in D_800EB6A0)
 * when the ability ends; on timeout or wall hit it releases the effects and
 * shrinks away using D_800EA6E0/D_800EA8A0 as decaying scale factors.
 * While live it re-probes 40 units around the shot per kind, applies the
 * kind's velocity profile (halved in water), runs the kind's hit record and
 * anim script against DObj [1], spawns the 0x4D splash effect when inside
 * water, and re-seats both (or all three) effect parameter blocks on the
 * shot's position and orientation. */
struct NeedleFx { u32 kind; f32 unk4, unk8, unkC, unk10, unk14, unk18; };

void func_8015DBE4_ovl3(s32 arg0) {
    extern char D_80190CA0_ovl3[];
    extern char D_80190CE4_ovl3[];
    extern s32 D_801935A8_ovl3[];
    extern s32 D_801935E4_ovl3[];
    extern s32 func_800B3158(void);
    extern void func_800A1F30(s32);
    extern s32 func_800A8234(s32, s32, s32);
    extern s32 func_80155664_ovl3(f32 *);
    extern s32 func_80155838_ovl3(f32 *, f32, s32);
    extern s32 func_80155D50_ovl3(f32 *, s32, s32, s32);
    extern s32 func_80162000_ovl3(char *, s32, f32);
    extern void func_800B2340(Vector *, s32, s32);
    extern void func_800B26D8(Vector *, s32, s32);
    s32 id = omCurrentObj->objId;
    f32 probe[3];
    s32 splash = 0;
    u32 kind;

    if (func_800B3158() == 0) {
        if (D_800EA520[id] != 0) {
            func_800A22D4(D_800EA520[id]);
            func_800A22D4(D_800EB4E0[id]);
            if (D_800EB6A0[id] != 0) {
                func_800A22D4(D_800EB6A0[id]);
            }
        }
        func_800B1900((u16) id);
        return;
    }
    if ((D_800E9720[id] == 0) || (D_800E6310[id] != 0)) {
        if (D_800EA520[id] != 0) {
            func_800A1F30(D_800EA520[id]);
            func_800A1F30(D_800EB4E0[id]);
            if (D_800EB6A0[id] != 0) {
                func_800A1F30(D_800EB6A0[id]);
            }
            D_800EB6A0[id] = 0;
            D_800EB4E0[id] = 0;
            D_800EA520[id] = 0;
            D_800E6690[id] = 0.0f;
            D_800E64D0[id] = 0.0f;
            D_800E6850[id] = 65535.0f;
        }
        D_800EA6E0[id] -= 0.125f;
        if (D_800EA6E0[id] == 0.0f) {
            func_800B1900((u16) id);
        }
        D_800EA8A0[id] -= 0.07f;
        gEntitiesScaleXArray[id] = D_800EA6E0[id] * 0.2f;
        gEntitiesScaleYArray[id] = D_800EA6E0[id] * 0.2f;
        gEntitiesScaleZArray[id] = D_800EA8A0[id] * 0.2f;
        return;
    }
    D_800E9720[id] -= 1;
    gEntitiesAngleYArray[id] = D_800E17D0[id];
    func_80155664_ovl3(D_80197F60_ovl3[id - 4]);
    D_800E8920[id] = 0;
    probe[0] = gEntitiesNextPosXArray[id];
    probe[1] = gEntitiesNextPosYArray[id];
    probe[2] = gEntitiesNextPosZArray[id];
    kind = D_800EC2E0[id].as_u32;
    if (kind == 1) {
        splash = func_80155838_ovl3(probe, 40.0f, 5);
        D_800E64D0[id] = ((D_800E8AE0[id] & 4) ? 5.0f : 10.0f) * D_800E6A10[id];
        D_800E6690[id] = 0.0f;
        D_800E6850[id] = 10.0f;
        func_80155D50_ovl3(D_801982F8_ovl3[id - 4], (s32) (uintptr_t) D_801935A8_ovl3, 0, id);
        func_80162000_ovl3(D_80190CA0_ovl3, (s32) (uintptr_t) D_800DFBD0[id][1], 1.0f);
    } else if (kind == 0) {
        splash = func_80155838_ovl3(probe, -40.0f, 3);
        D_800E3210[id] = (D_800E8AE0[id] & 4) ? -8.5f : -17.0f;
        D_800E3750[id] = 0.0f;
        D_800E3C90[id] = 17.0f;
        func_80155D50_ovl3(D_801982F8_ovl3[id - 4], (s32) (uintptr_t) D_801935E4_ovl3, 0, id);
        func_80162000_ovl3(D_80190CE4_ovl3, (s32) (uintptr_t) D_800DFBD0[id][1], 1.0f);
    }
    if ((splash != 0) && (D_800EB6A0[id] == 0)) {
        D_800EB6A0[id] = func_800A8234(2, 1, 0x4D);
    }
    if ((D_800EA520[id] != 0) && (D_800EB4E0[id] != 0)) {
        struct NeedleFx *fa = (struct NeedleFx *) ((GObj *) D_800EA520[id])->unk4C;
        struct NeedleFx *fb = (struct NeedleFx *) ((GObj *) D_800EB4E0[id])->unk4C;
        Vector sp;

        func_800B2340(&sp, (s32) (uintptr_t) D_800DFBD0[id][1], 0xFFFF);
        fb->unk4 = sp.x;
        fa->unk4 = fb->unk4;
        fb->unk8 = sp.y;
        fa->unk8 = fb->unk8;
        fb->unkC = sp.z;
        fa->unkC = fb->unkC;
        func_800B26D8(&sp, (s32) (uintptr_t) D_800DFBD0[id][1], 0xFFFF);
        fb->unk10 = sp.x;
        fa->unk10 = fb->unk10;
        fb->unk14 = sp.y;
        fa->unk14 = fb->unk14;
        fb->unk18 = sp.z;
        fa->unk18 = fb->unk18;
        if (D_800EB6A0[id] != 0) {
            struct NeedleFx *fc = (struct NeedleFx *) ((GObj *) D_800EB6A0[id])->unk4C;

            fc->unk4 = fa->unk4;
            fc->unk8 = fa->unk8;
            fc->unkC = fa->unkC;
            fc->unk10 = fa->unk10;
            fc->unk14 = fa->unk14;
            fc->unk18 = fa->unk18;
        }
    }
    if (D_800E8AE0[id] & 4) {
        func_800AECC0(1.0f);
        func_800AED20(1.0f);
    } else {
        func_800AECC0(2.0f);
        func_800AED20(2.0f);
    }
}
#elif defined(PORT)
/* PORT: service routine for func_8015D7A0_ovl3's shot above (anim 0x20032,
 * the needle/spike burst -- kind 1 travels flat, kind 0 drops straight
 * down), from asm/nonmatchings/ovl3/plyshot/func_8015DBE4_ovl3.s. Kills
 * everything (both trail effects and the water-splash effect in D_800EB6A0)
 * when the ability ends; on timeout or wall hit it releases the effects and
 * shrinks away using D_800EA6E0/D_800EA8A0 as decaying scale factors.
 * While live it re-probes 40 units around the shot per kind, applies the
 * kind's velocity profile (halved in water), runs the kind's hit record and
 * anim script against DObj [1], spawns the 0x4D splash effect when inside
 * water, and re-seats both (or all three) effect parameter blocks on the
 * shot's position and orientation. */
void func_8015DBE4_ovl3(s32 arg0) {
    extern char D_80190CA0_ovl3[];
    extern char D_80190CE4_ovl3[];
    extern s32 D_801935A8_ovl3[];
    extern s32 D_801935E4_ovl3[];
    extern s32 func_800B3158(void);
    extern void func_800A1F30(s32);
    extern s32 func_800A8234(s32, s32, s32);
    extern s32 func_80155664_ovl3(f32 *);
    extern s32 func_80155838_ovl3(f32 *, f32, s32);
    extern s32 func_80155D50_ovl3(f32 *, s32, s32, s32);
    extern s32 func_80162000_ovl3(char *, s32, f32);
    extern void func_800B2340(Vector *, s32, s32);
    extern void func_800B26D8(Vector *, s32, s32);
    s32 id = omCurrentObj->objId;
    f32 probe[3];
    s32 splash = 0;
    u32 kind;

    if (func_800B3158() == 0) {
        if (D_800EA520[id] != 0) {
            func_800A22D4(D_800EA520[id]);
            func_800A22D4(D_800EB4E0[id]);
            if (D_800EB6A0[id] != 0) {
                func_800A22D4(D_800EB6A0[id]);
            }
        }
        func_800B1900((u16) id);
        return;
    }
    if ((D_800E9720[id] == 0) || (D_800E6310[id] != 0)) {
        if (D_800EA520[id] != 0) {
            func_800A1F30(D_800EA520[id]);
            func_800A1F30(D_800EB4E0[id]);
            if (D_800EB6A0[id] != 0) {
                func_800A1F30(D_800EB6A0[id]);
            }
            D_800EB6A0[id] = 0;
            D_800EB4E0[id] = 0;
            D_800EA520[id] = 0;
            D_800E6690[id] = 0.0f;
            D_800E64D0[id] = 0.0f;
            D_800E6850[id] = 65535.0f;
        }
        D_800EA6E0[id] -= 0.125f;
        if (D_800EA6E0[id] == 0.0f) {
            func_800B1900((u16) id);
        }
        D_800EA8A0[id] -= 0.07f;
        gEntitiesScaleXArray[id] = D_800EA6E0[id] * 0.2f;
        gEntitiesScaleYArray[id] = D_800EA6E0[id] * 0.2f;
        gEntitiesScaleZArray[id] = D_800EA8A0[id] * 0.2f;
        return;
    }
    D_800E9720[id] -= 1;
    gEntitiesAngleYArray[id] = D_800E17D0[id];
    func_80155664_ovl3(D_80197F60_ovl3[id - 4]);
    D_800E8920[id] = 0;
    probe[0] = gEntitiesNextPosXArray[id];
    probe[1] = gEntitiesNextPosYArray[id];
    probe[2] = gEntitiesNextPosZArray[id];
    kind = D_800EC2E0[id].as_u32;
    if (kind == 1) {
        splash = func_80155838_ovl3(probe, 40.0f, 5);
        D_800E64D0[id] = ((D_800E8AE0[id] & 4) ? 5.0f : 10.0f) * D_800E6A10[id];
        D_800E6690[id] = 0.0f;
        D_800E6850[id] = 10.0f;
        func_80155D50_ovl3(D_801982F8_ovl3[id - 4], (s32) (uintptr_t) D_801935A8_ovl3, 0, id);
        func_80162000_ovl3(D_80190CA0_ovl3, (s32) (uintptr_t) D_800DFBD0[id][1], 1.0f);
    } else if (kind == 0) {
        splash = func_80155838_ovl3(probe, -40.0f, 3);
        D_800E3210[id] = (D_800E8AE0[id] & 4) ? -8.5f : -17.0f;
        D_800E3750[id] = 0.0f;
        D_800E3C90[id] = 17.0f;
        func_80155D50_ovl3(D_801982F8_ovl3[id - 4], (s32) (uintptr_t) D_801935E4_ovl3, 0, id);
        func_80162000_ovl3(D_80190CE4_ovl3, (s32) (uintptr_t) D_800DFBD0[id][1], 1.0f);
    }
    if ((splash != 0) && (D_800EB6A0[id] == 0)) {
        D_800EB6A0[id] = func_800A8234(2, 1, 0x4D);
    }
    if ((D_800EA520[id] != 0) && (D_800EB4E0[id] != 0)) {
        struct PcPlyshotFx *fa = ((GObj *) (uintptr_t) (u32) D_800EA520[id])->unk4C;
        struct PcPlyshotFx *fb = ((GObj *) (uintptr_t) (u32) D_800EB4E0[id])->unk4C;
        Vector sp;

        func_800B2340(&sp, (s32) (uintptr_t) D_800DFBD0[id][1], 0xFFFF);
        fb->unk4 = sp.x;
        fa->unk4 = fb->unk4;
        fb->unk8 = sp.y;
        fa->unk8 = fb->unk8;
        fb->unkC = sp.z;
        fa->unkC = fb->unkC;
        func_800B26D8(&sp, (s32) (uintptr_t) D_800DFBD0[id][1], 0xFFFF);
        fb->unk10 = sp.x;
        fa->unk10 = fb->unk10;
        fb->unk14 = sp.y;
        fa->unk14 = fb->unk14;
        fb->unk18 = sp.z;
        fa->unk18 = fb->unk18;
        if (D_800EB6A0[id] != 0) {
            struct PcPlyshotFx *fc = ((GObj *) (uintptr_t) (u32) D_800EB6A0[id])->unk4C;

            fc->unk4 = fa->unk4;
            fc->unk8 = fa->unk8;
            fc->unkC = fa->unkC;
            fc->unk10 = fa->unk10;
            fc->unk14 = fa->unk14;
            fc->unk18 = fa->unk18;
        }
    }
    if (D_800E8AE0[id] & 4) {
        func_800AECC0(1.0f);
        func_800AED20(1.0f);
    } else {
        func_800AECC0(2.0f);
        func_800AED20(2.0f);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015DBE4_ovl3.s")
#endif

extern f32 D_80196764_ovl3[][2];
extern f32 **D_801967A4_ovl3[];
extern void func_800B4954(s32);
void func_8015E754_ovl3(s32);
void curObjSleepForever(void);
#ifdef NON_MATCHING
/* 65/197. */
void func_8015E43C_ovl3(s32 arg0) {
    float sinf(float);
    float cosf(float);
    f32 s;
    f32 *p;
    u32 idx;
    f32 c;

    idx = D_800EC2E0[omCurrentObj->objId].as_u32;
    func_80161CE0_ovl3(arg0);
    func_80161EC0_ovl3(0, 0.0f, 20.0f);
    D_800E0650[omCurrentObj->objId] = 1;
    D_800DEF90[omCurrentObj->objId] = func_800B4954;
    D_800DF150[omCurrentObj->objId] = func_8015E754_ovl3;
    D_800E9720[omCurrentObj->objId] = 0xA;
    if (idx >= 5) {
        D_800E6A10[omCurrentObj->objId] = -1.0f;
    } else {
        D_800E6A10[omCurrentObj->objId] = 1.0f;
    }
    D_800E0490[omCurrentObj->objId] = D_801967A4_ovl3[idx];
    func_80154648_ovl3(D_800E0D50[omCurrentObj->objId], D_80197F60_ovl3[omCurrentObj->objId - 4],
                       D_801982F8_ovl3[omCurrentObj->objId - 4]);
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    func_800A9864(0x2003C, 0x21, 0x10);
    p = D_80196764_ovl3[idx];
    s = sinf(p[0]) * 18.0f;
    c = cosf(p[0]) * 18.0f;
    D_800E64D0[omCurrentObj->objId] = s;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    if (s < 0.0f) {
        D_800E6850[omCurrentObj->objId] = -s;
    } else {
        D_800E6850[omCurrentObj->objId] = s;
    }
    D_800E3210[omCurrentObj->objId] = c;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    if (c < 0.0f) {
        D_800E3C90[omCurrentObj->objId] = -c;
    } else {
        D_800E3C90[omCurrentObj->objId] = c;
    }
    *(f32 *) ((u8 *) D_800DFBD0[omCurrentObj->objId][1] + 0x30) = p[1];
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015E43C_ovl3.s")
#endif

extern void func_80162150_ovl3(void);
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

#ifdef NON_MATCHING
/* FACTORY: 3/275, two stack-local displacements (sp+0x48/0x4C vs the ROM's
   sp+0x4C/0x50) and the mul.s operand slot at insn 210. Structure, schedule,
   frame size, every branch polarity and all register names are exact. The
   local-offset residue is the decidable +8 frame anomaly: the offsets need a
   locals total of 32 bytes but the frame only matches at 28, so no pad
   spelling reaches both. Good permuter seed. */
void func_8015E8E0_ovl3(s32 arg0) {
    extern f32 **D_80192EB8_ovl3;
    extern u8 D_8012E7C5[];
    extern void func_800B4954(s32);
    extern void func_8015ED2C_ovl3(s32);
    extern void func_800A77E8(s32, s32 *, s32 *);
    void curObjSleepForever(void);
    f32 v;
    s32 i;
    s32 sp50;
    s32 sp4C;
    s32 pad[3];

    D_800EA6E0[omCurrentObj->objId] = 0.0f;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    D_800E98E0[omCurrentObj->objId] = D_800E9AA0[omCurrentObj->objId].as_s32 =
        D_800E9C60[omCurrentObj->objId] = D_800E9FE0[omCurrentObj->objId].as_s32;
    func_80161CE0_ovl3(arg0);
    func_80161EC0_ovl3(0, 0.0f, 20.0f);
    D_800DEF90[omCurrentObj->objId] = func_800B4954;
    D_800DF150[omCurrentObj->objId] = func_8015ED2C_ovl3;
    gEntitiesAngleYArray[omCurrentObj->objId] = 0.0f;
    D_800E8760[omCurrentObj->objId] = 0;
    D_800E0490[omCurrentObj->objId] = &D_80192EB8_ovl3;
    D_800E8AE0[omCurrentObj->objId] = D_800E8AE0[D_800E0D50[omCurrentObj->objId]];
    D_800E9E20[omCurrentObj->objId] = D_800E8920[omCurrentObj->objId] =
        D_800E8920[D_800E0D50[omCurrentObj->objId]];
    func_80154648_ovl3(D_800E0D50[omCurrentObj->objId], D_80197F60_ovl3[omCurrentObj->objId - 4],
                       D_801982F8_ovl3[omCurrentObj->objId - 4]);
    D_800E8060[omCurrentObj->objId] = 0;
    if (D_800E8AE0[omCurrentObj->objId] & 4) {
        D_8012E7C5[0x11] = 0x20;
    } else {
        D_8012E7C5[0x11] = 0x10;
    }
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    func_800A9864(0x2003B, 0x21, 0x10);
    D_800EA360[omCurrentObj->objId] = (s32) &sp4C;
    func_800A77E8(0x58, &sp4C, &sp50);
    D_800EA8A0[omCurrentObj->objId] = 0.0f;
    v = ((D_800E8AE0[omCurrentObj->objId] & 4) == 0) ? 16.0f : 8.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * v;
    v = ((D_800E8AE0[omCurrentObj->objId] & 4) == 0) ? 16.0f : 8.0f;
    if (v < 0) {
        v = ((D_800E8AE0[omCurrentObj->objId] & 4) == 0) ? 16.0f : 8.0f;
        D_800E6850[omCurrentObj->objId] = -v;
    } else {
        v = ((D_800E8AE0[omCurrentObj->objId] & 4) == 0) ? 16.0f : 8.0f;
        D_800E6850[omCurrentObj->objId] = v;
    }
    func_801230E8(0x20283, 0x20284, 0);
    for (i = 0; i < 15; i++) {
        if (D_800E9AA0[omCurrentObj->objId].as_s32 != 0) {
            break;
        }
        ohSleep(1);
    }
    D_800E98E0[omCurrentObj->objId] = 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015E8E0_ovl3.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 6/776, whole-function callee-saved permutation (same floor class documented across this cluster). Inlines the real N64 sound-pair release (func_800A7870) instead of the PC-only pc_sndpair_release wrapper, and adds an ANSI prototype for func_800A7F74. Queued for the permuter. */
/* PORT: the guided-missile service routine installed by func_8015E8E0_ovl3
 * above (anim 0x2003B), from asm/nonmatchings/ovl3/plyshot/
 * func_8015ED2C_ovl3.s. Death phase: 8 frames of burst anim (D_80191A84 /
 * record D_80195270) then destroy. Live: grows the model on DObj [2] by
 * +0.15/frame, reads the cancel inputs (B press, or unk17/queued cancel in
 * D_800E8060), and while the ability holds runs its hit record
 * (D_801936F0), the shot collision pass and a wall bounce (reversing on
 * wall-class bits of the live collision flags with fgm 0x11F). It then
 * draws the guide reticle: aims DObj [1] at the parent, scales the
 * distance leg into D_80198438 with a pitch rotation of its last two
 * floats, and runs anim D_80191AC8 plus the reticle record D_8019370C.
 * With homing armed (D_800E98E0) and line-of-sight clear (func_8011D858;
 * on block: rumble 9/0x1E and detonate) it steers up to D_801967C4[close]
 * degrees per frame toward the parent at 16 (8 in water), bouncing off
 * floors once (D_800E9E20 latch) and ceilings once (D_800E9FE0 latch).
 * Detonation: mark the death phase, drop the ability, release the looping
 * pair parked in D_800EA360, clear the draw hook, camera-shake and spawn
 * particle 2/1/0x30 with fgm 0x59. */
void func_8015ED2C_ovl3(s32 arg0) {
    extern u8 D_8012BCA0[];
    extern char D_80191A84_ovl3[];
    extern char D_80190DD4_ovl3[];
    extern char D_80191AC8_ovl3[];
    extern s32 D_80192358_ovl3[];
    extern s32 D_801936F0_ovl3[];
    extern s32 D_8019370C_ovl3[];
    extern s32 D_80195270_ovl3[];
    extern f32 D_801936FC_ovl3[];
    extern f32 D_801967C4_ovl3[];
    extern f32 D_80198438_ovl3[];
    extern s32 func_80155D50_ovl3(f32 *, s32, s32, s32);
    extern s32 func_80155498_ovl3(f32 *);
    extern void func_80154578_ovl3(void *, s32, f32);
    extern s32 func_8011D858(void *, s32, f32);
    extern f32 func_800F9828(s32, s32);
    extern f32 lbvector_Angle(Vector *, Vector *);
    extern Vector *vec3_normalized_cross_product(Vector *, Vector *, Vector *);
    extern Vector *func_800191F8(Vector *, Vector *, f32);
    extern void func_800AFBB4(s32, struct GObj *);
    extern void func_800BB468(s32, s32);
    s32 func_8016854C_ovl3(s32, s32, f32);
    extern Controller_800D6FE8 gPlayerControllers[];
    extern void func_800A7870(void **, u16 *);
    extern void func_800A7F74(u32, u32, u16, f32, f32, f32);
    f32 atan2f(f32, f32);
    float sinf(float);
    float cosf(float);
    float sqrtf(float);
    s32 id = omCurrentObj->objId;
    s32 parent = D_800E0D50[id];
    s32 hits;
    f32 dyAbs;
    f32 hdist;
    f32 hy;

    if (D_800E9C60[id] != 0) {
        s32 t = D_800E9560[id];

        D_800E9560[id] = t - 1;
        if (t != 0) {
            func_80111C4C(func_801117BC(D_80191A84_ovl3, id));
            func_80155D50_ovl3(D_801982F8_ovl3[id - 4], (s32) (uintptr_t) D_80195270_ovl3, 0, id);
            return;
        }
        func_800B1900((u16) id);
        return;
    }
    if (D_800EA6E0[id] != 1.0f) {
        D_800EA6E0[id] += 0.15f;
        if (D_800EA6E0[id] >= 1.0f) {
            D_800EA6E0[id] = 1.0f;
        }
        D_800DFBD0[id][2]->scale.v.x = D_800EA6E0[id];
        D_800DFBD0[id][2]->scale.v.y = D_800EA6E0[id];
        D_800DFBD0[id][2]->scale.v.z = D_800EA6E0[id];
    }
    if (gKirbyState.unk17 != 0) {
        gKirbyState.abilityInUse = 0;
    } else if (gKirbyState.unk16 == 0) {
        if (gPlayerControllers[0].buttonPressed & 0x4000) {
            gKirbyState.abilityInUse = 0;
        } else if (D_800E8060[id] != 0) {
            gKirbyState.abilityInUse = 0;
        }
    } else if (gPlayerControllers[0].buttonPressed & 0x4000) {
        D_800E8060[id] = 1;
    }
    if ((gKirbyState.abilityInUse != 0) && (D_800E8760[id] == 0)) {
        gEntitiesAngleYArray[id] = D_800E17D0[id];
        hits = func_80155D50_ovl3(D_801982F8_ovl3[id - 4], (s32) (uintptr_t) D_801936F0_ovl3, 0, id);
        gEntitiesAngleYArray[id] = 0.0f;
        D_800E8920[id] = 0;
        func_80155498_ovl3(D_80197F60_ovl3[id - 4]);
        if ((((u32) hits | ((*(u32 *) D_8012BCA0 >> 0x13) & 0x3F)) != 0) || (D_800E6310[id] != 0)) {
            D_800E9AA0[id].as_u32 = 1;
            D_800E64D0[id] = -D_800E64D0[id];
            play_sound(0x11F);
        }
        func_80111C4C(func_801117BC(D_80190DD4_ovl3, id));
        dyAbs = gEntitiesNextPosYArray[id] - gEntitiesNextPosYArray[parent];
        if (dyAbs < 0.0f) {
            dyAbs = -dyAbs;
        }
        hdist = func_800F9828(id, parent);
        if (hdist == 9999.0f) {
            goto detonate;
        }
        {
            f32 hAbs = (hdist < 0.0f) ? -hdist : hdist;

            if (!((hAbs < 600.0f) && (dyAbs < 480.0f))) {
                goto detonate;
            }
        }
        {
            struct DObj *dobj = D_800DFBD0[id][1];
            f32 dx = gEntitiesNextPosXArray[parent] - gEntitiesNextPosXArray[id];
            f32 dz = gEntitiesNextPosZArray[parent] - gEntitiesNextPosZArray[id];
            f32 sn;
            f32 cs;
            f32 v2;
            f32 v3;
            s32 k;

            hy = (gEntitiesNextPosYArray[parent] + 20.0f) - gEntitiesNextPosYArray[id];
            dobj->angle.v.y = atan2f(dx, dz) + 3.1415927f;
            dobj->angle.v.x = atan2f(hy, sqrtf((dx * dx) + (dz * dz)));
            dobj->angle.v.z = 0.0f;
            dobj->scale.v.z = (sqrtf((dx * dx) + (hy * hy) + (dz * dz)) - 18.0f) / 120.0f;
            func_8016854C_ovl3((s32) (uintptr_t) D_80191AC8_ovl3, (s32) (uintptr_t) dobj, 1.0f);
            sn = sinf(dobj->angle.v.x);
            cs = cosf(dobj->angle.v.x);
            for (k = 0; k < 4; k++) {
                D_80198438_ovl3[k] = D_801936FC_ovl3[k] * dobj->scale.v.z;
            }
            v2 = D_80198438_ovl3[2];
            v3 = D_80198438_ovl3[3];
            D_80198438_ovl3[2] = (v2 * cs) - (v3 * sn);
            D_80198438_ovl3[3] = (v3 * cs) + (v2 * sn);
            func_80154578_ovl3(D_8019370C_ovl3, 0, dobj->angle.v.y);
        }
        if (D_800E98E0[id] != 0) {
            Vector va;
            Vector vb;
            Vector vc;
            f32 ang;
            f32 dir;
            f32 lim;
            f32 spd;
            s32 close;

            if (func_8011D858(D_80192358_ovl3, parent, 1.0f) != 0) {
                func_800BB468(9, 0x1E);
                goto detonate;
            }
            {
                f32 hAbs = (hdist < 0.0f) ? -hdist : hdist;

                close = (hAbs < 160.0f) ? 1 : 0;
            }
            va.x = D_800E64D0[id];
            va.y = D_800E3210[id];
            va.z = 0.0f;
            vb.x = hdist;
            vb.y = hy;
            vb.z = 0.0f;
            ang = lbvector_Angle(&va, &vb);
            lim = D_801967C4_ovl3[close];
            if (ang == 3.1415927f) {
                if (D_800E64D0[id] > 0.0f) {
                    dir = (lim * 3.1415927f) / 180.0f;
                } else {
                    dir = 3.1415927f - ((lim * 3.1415927f) / 180.0f);
                }
            } else {
                if (ang < ((lim * 3.1415927f) / 180.0f)) {
                    va = vb;
                } else {
                    vec3_normalized_cross_product(&va, &vb, &vc);
                    func_800191F8(&va, &vc, (lim * 3.1415927f) / 180.0f);
                }
                dir = atan2f(va.y, va.x);
            }
            spd = (D_800E8AE0[id] & 4) ? 8.0f : 16.0f;
            D_800E64D0[id] = cosf(dir) * spd;
            D_800E6690[id] = 0.0f;
            D_800E6850[id] = (spd < 0.0f) ? -spd : spd;
            D_800E3210[id] = sinf(dir) * spd;
            D_800E3750[id] = 0.0f;
            D_800E3C90[id] = (spd < 0.0f) ? -spd : spd;
            if (D_800E8920[id] != 0) {
                if (D_800E9E20[id] == 0) {
                    D_800E9E20[id] = D_800E8920[id];
                    if (D_800E3210[id] != 0.0f) {
                        if (D_800E3210[id] < 0.0f) {
                            D_800E3210[id] = -D_800E3210[id];
                        } else {
                            D_800E3210[id] = 0.0f;
                        }
                        play_sound(0x11F);
                        D_800E8920[id] = 0;
                    }
                }
            } else {
                if ((*(u32 *) D_8012BCA0 >> 0x13) & 0x1C0) {
                    if (D_800E9FE0[id].as_u32 == 0) {
                        D_800E9FE0[id].as_u32 = 1;
                        if (D_800E3210[id] > 0.0f) {
                            D_800E3210[id] = -D_800E3210[id];
                        } else {
                            D_800E3210[id] = 0.0f;
                        }
                        play_sound(0x11F);
                        D_800E9E20[id] = D_800E8920[id];
                    }
                } else {
                    D_800E9FE0[id].as_u32 = 0;
                    D_800E9E20[id] = D_800E8920[id];
                }
            }
        }
        return;
    }
detonate:
    D_800E9C60[id] = 1;
    D_800E9560[id] = 8;
    gEntitiesAngleYArray[id] = D_800E17D0[id];
    gKirbyState.abilityInUse = 0;
    {
        u32 *pair = (u32 *) D_800EA360[id];

        if (pair != NULL) {
            void *handle = (void *) pair[0];
            u16 sid = *(u16 *) (pair + 1);

            func_800A7870(&handle, &sid);
            pair[0] = 0;
            *(u16 *) (pair + 1) = 0;
        }
    }
    D_800DEF90[id] = NULL;
    func_800AFBB4(0, omCurrentObj);
    play_sound(0x59);
    func_800A7F74(2U, 1U, 0x30U, gEntitiesNextPosXArray[id], gEntitiesNextPosYArray[id],
                  gEntitiesNextPosZArray[id]);
}
#elif defined(PORT)
/* PORT: the guided-missile service routine installed by func_8015E8E0_ovl3
 * above (anim 0x2003B), from asm/nonmatchings/ovl3/plyshot/
 * func_8015ED2C_ovl3.s. Death phase: 8 frames of burst anim (D_80191A84 /
 * record D_80195270) then destroy. Live: grows the model on DObj [2] by
 * +0.15/frame, reads the cancel inputs (B press, or unk17/queued cancel in
 * D_800E8060), and while the ability holds runs its hit record
 * (D_801936F0), the shot collision pass and a wall bounce (reversing on
 * wall-class bits of the live collision flags with fgm 0x11F). It then
 * draws the guide reticle: aims DObj [1] at the parent, scales the
 * distance leg into D_80198438 with a pitch rotation of its last two
 * floats, and runs anim D_80191AC8 plus the reticle record D_8019370C.
 * With homing armed (D_800E98E0) and line-of-sight clear (func_8011D858;
 * on block: rumble 9/0x1E and detonate) it steers up to D_801967C4[close]
 * degrees per frame toward the parent at 16 (8 in water), bouncing off
 * floors once (D_800E9E20 latch) and ceilings once (D_800E9FE0 latch).
 * Detonation: mark the death phase, drop the ability, release the looping
 * pair parked in D_800EA360, clear the draw hook, camera-shake and spawn
 * particle 2/1/0x30 with fgm 0x59. */
void func_8015ED2C_ovl3(s32 arg0) {
    extern u8 D_8012BCA0[];
    extern char D_80191A84_ovl3[];
    extern char D_80190DD4_ovl3[];
    extern char D_80191AC8_ovl3[];
    extern s32 D_80192358_ovl3[];
    extern s32 D_801936F0_ovl3[];
    extern s32 D_8019370C_ovl3[];
    extern s32 D_80195270_ovl3[];
    extern f32 D_801936FC_ovl3[];
    extern f32 D_801967C4_ovl3[];
    extern f32 D_80198438_ovl3[];
    extern s32 func_80155D50_ovl3(f32 *, s32, s32, s32);
    extern s32 func_80155498_ovl3(f32 *);
    extern void func_80154578_ovl3(void *, s32, f32);
    extern s32 func_8011D858(void *, s32, f32);
    extern f32 func_800F9828(s32, s32);
    extern f32 lbvector_Angle(Vector *, Vector *);
    extern Vector *vec3_normalized_cross_product(Vector *, Vector *, Vector *);
    extern Vector *func_800191F8(Vector *, Vector *, f32);
    extern void func_800AFBB4(s32, struct GObj *);
    extern void func_800BB468(s32, s32);
    s32 func_8016854C_ovl3(s32, s32, f32);
    extern Controller_800D6FE8 gPlayerControllers[];
    extern void func_800A7F74(u32, u32, u16, f32, f32, f32);
    f32 atan2f(f32, f32);
    float sinf(float);
    float cosf(float);
    float sqrtf(float);
    s32 id = omCurrentObj->objId;
    s32 parent = D_800E0D50[id];
    s32 hits;
    f32 dyAbs;
    f32 hdist;
    f32 hy;

    if (D_800E9C60[id] != 0) {
        s32 t = D_800E9560[id];

        D_800E9560[id] = t - 1;
        if (t != 0) {
            func_80111C4C(func_801117BC(D_80191A84_ovl3, id));
            func_80155D50_ovl3(D_801982F8_ovl3[id - 4], (s32) (uintptr_t) D_80195270_ovl3, 0, id);
            return;
        }
        func_800B1900((u16) id);
        return;
    }
    if (D_800EA6E0[id] != 1.0f) {
        D_800EA6E0[id] += 0.15f;
        if (D_800EA6E0[id] >= 1.0f) {
            D_800EA6E0[id] = 1.0f;
        }
        D_800DFBD0[id][2]->scale.v.x = D_800EA6E0[id];
        D_800DFBD0[id][2]->scale.v.y = D_800EA6E0[id];
        D_800DFBD0[id][2]->scale.v.z = D_800EA6E0[id];
    }
    if (gKirbyState.unk17 != 0) {
        gKirbyState.abilityInUse = 0;
    } else if (gKirbyState.unk16 == 0) {
        if (gPlayerControllers[0].buttonPressed & 0x4000) {
            gKirbyState.abilityInUse = 0;
        } else if (D_800E8060[id] != 0) {
            gKirbyState.abilityInUse = 0;
        }
    } else if (gPlayerControllers[0].buttonPressed & 0x4000) {
        D_800E8060[id] = 1;
    }
    if ((gKirbyState.abilityInUse != 0) && (D_800E8760[id] == 0)) {
        gEntitiesAngleYArray[id] = D_800E17D0[id];
        hits = func_80155D50_ovl3(D_801982F8_ovl3[id - 4], (s32) (uintptr_t) D_801936F0_ovl3, 0, id);
        gEntitiesAngleYArray[id] = 0.0f;
        D_800E8920[id] = 0;
        func_80155498_ovl3(D_80197F60_ovl3[id - 4]);
        if ((((u32) hits | ((*(u32 *) D_8012BCA0 >> 0x13) & 0x3F)) != 0) || (D_800E6310[id] != 0)) {
            D_800E9AA0[id].as_u32 = 1;
            D_800E64D0[id] = -D_800E64D0[id];
            play_sound(0x11F);
        }
        func_80111C4C(func_801117BC(D_80190DD4_ovl3, id));
        dyAbs = gEntitiesNextPosYArray[id] - gEntitiesNextPosYArray[parent];
        if (dyAbs < 0.0f) {
            dyAbs = -dyAbs;
        }
        hdist = func_800F9828(id, parent);
        if (hdist == 9999.0f) {
            goto detonate;
        }
        {
            f32 hAbs = (hdist < 0.0f) ? -hdist : hdist;

            if (!((hAbs < 600.0f) && (dyAbs < 480.0f))) {
                goto detonate;
            }
        }
        {
            struct DObj *dobj = D_800DFBD0[id][1];
            f32 dx = gEntitiesNextPosXArray[parent] - gEntitiesNextPosXArray[id];
            f32 dz = gEntitiesNextPosZArray[parent] - gEntitiesNextPosZArray[id];
            f32 sn;
            f32 cs;
            f32 v2;
            f32 v3;
            s32 k;

            hy = (gEntitiesNextPosYArray[parent] + 20.0f) - gEntitiesNextPosYArray[id];
            dobj->angle.v.y = atan2f(dx, dz) + 3.1415927f;
            dobj->angle.v.x = atan2f(hy, sqrtf((dx * dx) + (dz * dz)));
            dobj->angle.v.z = 0.0f;
            dobj->scale.v.z = (sqrtf((dx * dx) + (hy * hy) + (dz * dz)) - 18.0f) / 120.0f;
            func_8016854C_ovl3((s32) (uintptr_t) D_80191AC8_ovl3, (s32) (uintptr_t) dobj, 1.0f);
            sn = sinf(dobj->angle.v.x);
            cs = cosf(dobj->angle.v.x);
            for (k = 0; k < 4; k++) {
                D_80198438_ovl3[k] = D_801936FC_ovl3[k] * dobj->scale.v.z;
            }
            v2 = D_80198438_ovl3[2];
            v3 = D_80198438_ovl3[3];
            D_80198438_ovl3[2] = (v2 * cs) - (v3 * sn);
            D_80198438_ovl3[3] = (v3 * cs) + (v2 * sn);
            func_80154578_ovl3(D_8019370C_ovl3, 0, dobj->angle.v.y);
        }
        if (D_800E98E0[id] != 0) {
            Vector va;
            Vector vb;
            Vector vc;
            f32 ang;
            f32 dir;
            f32 lim;
            f32 spd;
            s32 close;

            if (func_8011D858(D_80192358_ovl3, parent, 1.0f) != 0) {
                func_800BB468(9, 0x1E);
                goto detonate;
            }
            {
                f32 hAbs = (hdist < 0.0f) ? -hdist : hdist;

                close = (hAbs < 160.0f) ? 1 : 0;
            }
            va.x = D_800E64D0[id];
            va.y = D_800E3210[id];
            va.z = 0.0f;
            vb.x = hdist;
            vb.y = hy;
            vb.z = 0.0f;
            ang = lbvector_Angle(&va, &vb);
            lim = D_801967C4_ovl3[close];
            if (ang == 3.1415927f) {
                if (D_800E64D0[id] > 0.0f) {
                    dir = (lim * 3.1415927f) / 180.0f;
                } else {
                    dir = 3.1415927f - ((lim * 3.1415927f) / 180.0f);
                }
            } else {
                if (ang < ((lim * 3.1415927f) / 180.0f)) {
                    va = vb;
                } else {
                    vec3_normalized_cross_product(&va, &vb, &vc);
                    func_800191F8(&va, &vc, (lim * 3.1415927f) / 180.0f);
                }
                dir = atan2f(va.y, va.x);
            }
            spd = (D_800E8AE0[id] & 4) ? 8.0f : 16.0f;
            D_800E64D0[id] = cosf(dir) * spd;
            D_800E6690[id] = 0.0f;
            D_800E6850[id] = (spd < 0.0f) ? -spd : spd;
            D_800E3210[id] = sinf(dir) * spd;
            D_800E3750[id] = 0.0f;
            D_800E3C90[id] = (spd < 0.0f) ? -spd : spd;
            if (D_800E8920[id] != 0) {
                if (D_800E9E20[id] == 0) {
                    D_800E9E20[id] = D_800E8920[id];
                    if (D_800E3210[id] != 0.0f) {
                        if (D_800E3210[id] < 0.0f) {
                            D_800E3210[id] = -D_800E3210[id];
                        } else {
                            D_800E3210[id] = 0.0f;
                        }
                        play_sound(0x11F);
                        D_800E8920[id] = 0;
                    }
                }
            } else {
                if ((*(u32 *) D_8012BCA0 >> 0x13) & 0x1C0) {
                    if (D_800E9FE0[id].as_u32 == 0) {
                        D_800E9FE0[id].as_u32 = 1;
                        if (D_800E3210[id] > 0.0f) {
                            D_800E3210[id] = -D_800E3210[id];
                        } else {
                            D_800E3210[id] = 0.0f;
                        }
                        play_sound(0x11F);
                        D_800E9E20[id] = D_800E8920[id];
                    }
                } else {
                    D_800E9FE0[id].as_u32 = 0;
                    D_800E9E20[id] = D_800E8920[id];
                }
            }
        }
        return;
    }
detonate:
    D_800E9C60[id] = 1;
    D_800E9560[id] = 8;
    gEntitiesAngleYArray[id] = D_800E17D0[id];
    gKirbyState.abilityInUse = 0;
    pc_sndpair_release((void *) (uintptr_t) (u32) D_800EA360[id]);
    D_800DEF90[id] = NULL;
    func_800AFBB4(0, omCurrentObj);
    play_sound(0x59);
    func_800A7F74(2U, 1U, 0x30U, gEntitiesNextPosXArray[id], gEntitiesNextPosYArray[id],
                  gEntitiesNextPosZArray[id]);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015ED2C_ovl3.s")
#endif

typedef struct Unk801967CC {
    f32 unk0;
    f32 unk4;
} Unk801967CC;

typedef struct Unk80198538 {
    s32 unk0;
    s32 unk4;
} Unk80198538;

typedef struct Unk80198830 {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    s32 unkC;
} Unk80198830;

/* D_801970B4_ovl3 now emitted by this TU */

void func_8015F950_ovl3(s32 arg0) {
    extern Unk801967CC D_801967CC_ovl3[];
    extern Unk80198538 D_80198538_ovl3;
    extern Unk80198830 D_80198830_ovl3;
    extern f32 **D_80192E80_ovl3;
    extern f32 D_800D7238;
    extern void func_800B4954(s32);
    extern void func_8015FD58_ovl3(s32);
    extern void func_800A77E8(s32, s32 *, s32 *);
    void curObjSleepForever(void);
    Unk80198538 sp30;
    f32 temp;

    func_80161CE0_ovl3(arg0);
    func_80161EC0_ovl3(0, D_801967CC_ovl3[D_800EC2E0[omCurrentObj->objId].as_s32].unk0,
                       D_801967CC_ovl3[D_800EC2E0[omCurrentObj->objId].as_s32].unk4);
    D_800E0650[omCurrentObj->objId] = 1;
    D_800DEF90[omCurrentObj->objId] = func_800B4954;
    D_800DF150[omCurrentObj->objId] = func_8015FD58_ovl3;
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800E0490[omCurrentObj->objId] = &D_80192E80_ovl3;
    func_80154648_ovl3(D_800E0D50[omCurrentObj->objId], D_80197F60_ovl3[omCurrentObj->objId - 4],
                       D_801982F8_ovl3[omCurrentObj->objId - 4]);
    temp = 0.2f;
    D_800E83E0[omCurrentObj->objId] = 0;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    func_800A9864(0x2003D, 0x21, 0x10);
    D_800E9720[omCurrentObj->objId] = 0x1E;
    D_800E9560[omCurrentObj->objId] = 0;
    if ((D_800E8AE0[omCurrentObj->objId] & 4) == 0) {
        D_800D7238 = 15.0f;
    } else {
        D_800D7238 = 7.5f;
    }
    D_800E64D0[omCurrentObj->objId] = cosf(D_800EC660[omCurrentObj->objId]) * D_800D7238;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    if (D_800D7238 < 0) {
        D_800E6850[omCurrentObj->objId] = -D_800D7238;
    } else {
        D_800E6850[omCurrentObj->objId] = D_800D7238;
    }
    D_800E3210[omCurrentObj->objId] = sinf(D_800EC660[omCurrentObj->objId]) * D_800D7238;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    if (D_800D7238 < 0) {
        D_800E3C90[omCurrentObj->objId] = -D_800D7238;
    } else {
        D_800E3C90[omCurrentObj->objId] = D_800D7238;
    }
    if (D_800EC2E0[omCurrentObj->objId].as_s32 == 0) {
        D_800E9AA0[omCurrentObj->objId].as_s32 = 2;
    } else {
        D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    }
    if (D_80198830_ovl3.unkC++ == 0) {
        func_800A77E8(0x1E, &D_80198538_ovl3.unk0, &D_80198538_ovl3.unk4);
    }
    D_800EA360[omCurrentObj->objId] = (s32) &sp30;
    sp30 = D_80198538_ovl3;
    func_800AA018(0x20285);
    curObjSleepForever();
}

#ifdef MIPS_TO_C
/* FACTORY: 3/391, whole-function callee-saved permutation (same floor class documented across this cluster). Queued for the permuter. */
/* PORT: service routine for func_8015F950_ovl3's shot above (anim 0x2003D),
 * from asm/nonmatchings/ovl3/plyshot/func_8015FD58_ovl3.s. Kind 0 first
 * runs its own hit record (D_80193728) and detonates on contact, then arms
 * itself (kind := -1). While armed it drains the trail-puff counter in
 * D_800E9AA0 (re-aiming anim script D_80190D90 at DObj [1] each time),
 * flies until wall hit / catch / fuse-out, and each frame runs the contact
 * sweep plus the water tracker; once the launch grace in D_800E9560 runs
 * out it steers up to 5 degrees a frame toward the carry target in
 * D_800E1ED0[id-112] at 15 (7.5 in water), pitching the model along its
 * velocity. On burst it plays fgm 0xE with hit-spark 0, and the last shot
 * out (shared counter D_80198830_ovl3.unkC) releases the shared looping
 * sound pair copied into the init's frame. */
void func_8015FD58_ovl3(s32 arg0) {
    extern char D_80190D90_ovl3[];
    extern s32 D_80193728_ovl3[];
    extern s32 func_800B3158(void);
    extern s32 func_80155D50_ovl3(f32 *, s32, s32, s32);
    extern s32 func_801555B0_ovl3(f32 *, f32 *);
    extern f32 func_800F9828(s32, s32);
    extern f32 lbvector_Angle(Vector *, Vector *);
    extern Vector *vec3_normalized_cross_product(Vector *, Vector *, Vector *);
    extern Vector *func_800191F8(Vector *, Vector *, f32);
    extern Unk80198830 D_80198830_ovl3;
    f32 atan2f(f32, f32);
    float sinf(float);
    float cosf(float);
    struct PcShotAnimCmd {
        u8 pad0[4];
        u8 unk4;
        u8 pad5[3];
        s32 unk8;
    };
    struct PcShotAnimHdr {
        u8 pad0[0x1C];
        s32 unk1C;
        struct PcShotAnimCmd *unk20;
    };
    s32 id = omCurrentObj->objId;
    s32 impact = 0;

    if (func_800B3158() != 0) {
        u32 kind = D_800EC2E0[id].as_u32;

        if (kind != 0xFFFFFFFFU) {
            s32 hit = 0;

            if (kind == 0) {
                /* The PC func_80155D50_ovl3 is declared void at its
                 * definition but ends in the func_8011BF4C call, so its
                 * hit count comes back exactly as the N64 tail call did
                 * (verified against the generated code). */
                hit = func_80155D50_ovl3(D_801982F8_ovl3[id - 4],
                                         (s32) (uintptr_t) D_80193728_ovl3, 0, id);
            }
            if ((kind == 0) && (hit != 0)) {
                impact = 1;
            } else {
                D_800EC2E0[id].as_u32 = 0xFFFFFFFFU;
            }
        }
        if (impact == 0) {
            if (D_800E9AA0[id].as_u32 != 0) {
                struct PcShotAnimHdr *hdr =
                    (struct PcShotAnimHdr *) (uintptr_t) (u32) func_801117BC(D_80190D90_ovl3, id);

                hdr->unk20->unk8 = (s32) (uintptr_t) D_800DFBD0[id][1];
                func_80111C4C((s32) (uintptr_t) hdr);
                D_800E9AA0[id].as_u32 -= 1;
            }
            gEntitiesAngleYArray[id] = D_800E17D0[id];
            impact = 1;
            if ((D_800E6310[id] == 0) && (D_800E83E0[id] == 0)) {
                s32 fuse = D_800E9720[id];

                D_800E9720[id] = fuse - 1;
                if ((fuse != 0)
                    && (func_801555B0_ovl3(D_80197F60_ovl3[id - 4], D_801982F8_ovl3[id - 4]) == 0)) {
                    func_80162150_ovl3();
                    if (D_800E8920[id] == 0) {
                        if (D_800E9560[id] != 0) {
                            D_800E9560[id] -= 1;
                        } else {
                            s32 target = D_800E1ED0[id - 112];

                            if (target != 0) {
                                if (D_800DD710[target] != -1) {
                                    Vector va;
                                    Vector vb;
                                    f32 ang;
                                    f32 dir;
                                    f32 spd;

                                    vb.x = func_800F9828(id, target);
                                    vb.y = gEntitiesNextPosYArray[target] - gEntitiesNextPosYArray[id];
                                    vb.z = 0.0f;
                                    va.x = D_800E64D0[id];
                                    va.y = D_800E3210[id];
                                    va.z = 0.0f;
                                    ang = lbvector_Angle(&va, &vb);
                                    if (ang == 3.1415927f) {
                                        dir = (D_800E64D0[id] > 0.0f) ? 0.08726647f : 2.6790805f;
                                    } else {
                                        if (ang < 0.08726647f) {
                                            va = vb;
                                        } else {
                                            Vector vc;

                                            vec3_normalized_cross_product(&va, &vb, &vc);
                                            func_800191F8(&va, &vc, 0.08726647f);
                                        }
                                        dir = atan2f(va.y, va.x);
                                    }
                                    D_800E9560[id] = 0;
                                    spd = (D_800E8AE0[id] & 4) ? 7.5f : 15.0f;
                                    D_800E64D0[id] = cosf(dir) * spd;
                                    D_800E6690[id] = 0.0f;
                                    D_800E6850[id] = (spd < 0.0f) ? -spd : spd;
                                    D_800E3210[id] = sinf(dir) * spd;
                                    D_800E3750[id] = 0.0f;
                                    D_800E3C90[id] = (spd < 0.0f) ? -spd : spd;
                                } else {
                                    D_800E1ED0[id - 112] = 0;
                                }
                            }
                        }
                        gEntitiesAngleXArray[id] = -atan2f(D_800E3210[id], D_800E64D0[id]);
                        func_80111C4C(func_801117BC(D_80190D90_ovl3, id));
                        return;
                    }
                }
            }
        }
        play_sound(0xE);
        func_800FD754(0, gEntitiesNextPosXArray[id], gEntitiesNextPosYArray[id],
                      gEntitiesNextPosZArray[id]);
    }
    D_80198830_ovl3.unkC -= 1;
    if (D_80198830_ovl3.unkC == 0) {
        pc_sndpair_release((void *) (uintptr_t) (u32) D_800EA360[id]);
    }
    func_800B1900((u16) id);
}
#elif defined(PORT)
/* PORT: service routine for func_8015F950_ovl3's shot above (anim 0x2003D),
 * from asm/nonmatchings/ovl3/plyshot/func_8015FD58_ovl3.s. Kind 0 first
 * runs its own hit record (D_80193728) and detonates on contact, then arms
 * itself (kind := -1). While armed it drains the trail-puff counter in
 * D_800E9AA0 (re-aiming anim script D_80190D90 at DObj [1] each time),
 * flies until wall hit / catch / fuse-out, and each frame runs the contact
 * sweep plus the water tracker; once the launch grace in D_800E9560 runs
 * out it steers up to 5 degrees a frame toward the carry target in
 * D_800E1ED0[id-112] at 15 (7.5 in water), pitching the model along its
 * velocity. On burst it plays fgm 0xE with hit-spark 0, and the last shot
 * out (shared counter D_80198830_ovl3.unkC) releases the shared looping
 * sound pair copied into the init's frame. */
void func_8015FD58_ovl3(s32 arg0) {
    extern char D_80190D90_ovl3[];
    extern s32 D_80193728_ovl3[];
    extern s32 func_800B3158(void);
    extern s32 func_80155D50_ovl3(f32 *, s32, s32, s32);
    extern s32 func_801555B0_ovl3(f32 *, f32 *);
    extern f32 func_800F9828(s32, s32);
    extern f32 lbvector_Angle(Vector *, Vector *);
    extern Vector *vec3_normalized_cross_product(Vector *, Vector *, Vector *);
    extern Vector *func_800191F8(Vector *, Vector *, f32);
    extern Unk80198830 D_80198830_ovl3;
    f32 atan2f(f32, f32);
    float sinf(float);
    float cosf(float);
    struct PcShotAnimCmd {
        u8 pad0[4];
        u8 unk4;
        u8 pad5[3];
        s32 unk8;
    };
    struct PcShotAnimHdr {
        u8 pad0[0x1C];
        s32 unk1C;
        struct PcShotAnimCmd *unk20;
    };
    s32 id = omCurrentObj->objId;
    s32 impact = 0;

    if (func_800B3158() != 0) {
        u32 kind = D_800EC2E0[id].as_u32;

        if (kind != 0xFFFFFFFFU) {
            s32 hit = 0;

            if (kind == 0) {
                /* The PC func_80155D50_ovl3 is declared void at its
                 * definition but ends in the func_8011BF4C call, so its
                 * hit count comes back exactly as the N64 tail call did
                 * (verified against the generated code). */
                hit = func_80155D50_ovl3(D_801982F8_ovl3[id - 4],
                                         (s32) (uintptr_t) D_80193728_ovl3, 0, id);
            }
            if ((kind == 0) && (hit != 0)) {
                impact = 1;
            } else {
                D_800EC2E0[id].as_u32 = 0xFFFFFFFFU;
            }
        }
        if (impact == 0) {
            if (D_800E9AA0[id].as_u32 != 0) {
                struct PcShotAnimHdr *hdr =
                    (struct PcShotAnimHdr *) (uintptr_t) (u32) func_801117BC(D_80190D90_ovl3, id);

                hdr->unk20->unk8 = (s32) (uintptr_t) D_800DFBD0[id][1];
                func_80111C4C((s32) (uintptr_t) hdr);
                D_800E9AA0[id].as_u32 -= 1;
            }
            gEntitiesAngleYArray[id] = D_800E17D0[id];
            impact = 1;
            if ((D_800E6310[id] == 0) && (D_800E83E0[id] == 0)) {
                s32 fuse = D_800E9720[id];

                D_800E9720[id] = fuse - 1;
                if ((fuse != 0)
                    && (func_801555B0_ovl3(D_80197F60_ovl3[id - 4], D_801982F8_ovl3[id - 4]) == 0)) {
                    func_80162150_ovl3();
                    if (D_800E8920[id] == 0) {
                        if (D_800E9560[id] != 0) {
                            D_800E9560[id] -= 1;
                        } else {
                            s32 target = D_800E1ED0[id - 112];

                            if (target != 0) {
                                if (D_800DD710[target] != -1) {
                                    Vector va;
                                    Vector vb;
                                    f32 ang;
                                    f32 dir;
                                    f32 spd;

                                    vb.x = func_800F9828(id, target);
                                    vb.y = gEntitiesNextPosYArray[target] - gEntitiesNextPosYArray[id];
                                    vb.z = 0.0f;
                                    va.x = D_800E64D0[id];
                                    va.y = D_800E3210[id];
                                    va.z = 0.0f;
                                    ang = lbvector_Angle(&va, &vb);
                                    if (ang == 3.1415927f) {
                                        dir = (D_800E64D0[id] > 0.0f) ? 0.08726647f : 2.6790805f;
                                    } else {
                                        if (ang < 0.08726647f) {
                                            va = vb;
                                        } else {
                                            Vector vc;

                                            vec3_normalized_cross_product(&va, &vb, &vc);
                                            func_800191F8(&va, &vc, 0.08726647f);
                                        }
                                        dir = atan2f(va.y, va.x);
                                    }
                                    D_800E9560[id] = 0;
                                    spd = (D_800E8AE0[id] & 4) ? 7.5f : 15.0f;
                                    D_800E64D0[id] = cosf(dir) * spd;
                                    D_800E6690[id] = 0.0f;
                                    D_800E6850[id] = (spd < 0.0f) ? -spd : spd;
                                    D_800E3210[id] = sinf(dir) * spd;
                                    D_800E3750[id] = 0.0f;
                                    D_800E3C90[id] = (spd < 0.0f) ? -spd : spd;
                                } else {
                                    D_800E1ED0[id - 112] = 0;
                                }
                            }
                        }
                        gEntitiesAngleXArray[id] = -atan2f(D_800E3210[id], D_800E64D0[id]);
                        func_80111C4C(func_801117BC(D_80190D90_ovl3, id));
                        return;
                    }
                }
            }
        }
        play_sound(0xE);
        func_800FD754(0, gEntitiesNextPosXArray[id], gEntitiesNextPosYArray[id],
                      gEntitiesNextPosZArray[id]);
    }
    D_80198830_ovl3.unkC -= 1;
    if (D_80198830_ovl3.unkC == 0) {
        pc_sndpair_release((void *) (uintptr_t) (u32) D_800EA360[id]);
    }
    func_800B1900((u16) id);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015FD58_ovl3.s")
#endif

#ifdef NON_MATCHING
/* FACTORY: 87/202, one-slot temp rotation.
   Structure, opcodes, constants and scheduling are all exact from insn 0; the
   whole temp file is shifted one slot down from insn [18] onward ($t0->$t1,
   $t2->$t3, ...) and objId lands in $a3 rather than $v0 at [37]. No opcode,
   no immediate and no branch differs. Seeded from the matched family exemplar
   func_8015ADF8_ovl3 in this TU.
   Swept: block-scope vs file-scope externs for D_80192F10_ovl3 / D_800D7238 /
   func_801606A0_ovl3 (identical residue both ways). */
extern f32 **D_80192F10_ovl3;
extern f32 D_800D7238;
void func_801606A0_ovl3(struct GObj *);

void func_80160378_ovl3(s32 arg0) {
    f32 temp;

    func_80161CE0_ovl3(arg0);
    func_80161EC0_ovl3(D_800E1ED0[omCurrentObj->objId - 112], 20.0f, 0.0f);
    D_800DEF90[omCurrentObj->objId] = func_800B4954;
    D_800DF150[omCurrentObj->objId] = func_801606A0_ovl3;
    D_800E0490[omCurrentObj->objId] = &D_80192F10_ovl3;
    func_80154648_ovl3(D_800E0D50[omCurrentObj->objId], D_80197F60_ovl3[omCurrentObj->objId - 4],
                       D_801982F8_ovl3[omCurrentObj->objId - 4]);
    temp = 0.2f;
    gEntitiesAngleXArray[omCurrentObj->objId] = 3.14159274f;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    func_800A9864(0x2003E, 0x21, 0x10);
    D_800EA520[omCurrentObj->objId] = func_800A8100(1, 1, 0x14, D_800DFBD0[omCurrentObj->objId][1]);
    D_800EB4E0[omCurrentObj->objId] = func_800A8100(1, 1, 0x14, D_800DFBD0[omCurrentObj->objId][2]);
    D_800EA8A0[omCurrentObj->objId] = 1.0f;
    D_800EA6E0[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    if (D_800E8AE0[omCurrentObj->objId] & 4) {
        D_800E9720[omCurrentObj->objId] = 0x14;
    } else {
        D_800E9720[omCurrentObj->objId] = 0x1E;
    }
    if (D_800E8AE0[omCurrentObj->objId] & 4) {
        D_800D7238 = 6.0f;
    } else {
        D_800D7238 = 12.0f;
    }
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * D_800D7238;
    if (D_800D7238 < 0.0f) {
        D_800E6850[omCurrentObj->objId] = -D_800D7238;
    } else {
        D_800E6850[omCurrentObj->objId] = D_800D7238;
    }
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80160378_ovl3.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 2/235, whole-function callee-saved permutation (same floor
 * class documented in ovl3_1.c -- correct instruction count and control
 * flow, near-total register-naming/frame mismatch, -0x38 vs -0x48
 * frame). Queued for the permuter. */
/* PORT: service routine for func_80160378_ovl3's dropped bomb above (anim
 * 0x2003E), from asm/nonmatchings/ovl3/plyshot/func_801606A0_ovl3.s. On
 * ability end it releases the looping sound (handle parked in D_800E98E0
 * with its id in D_800E9AA0) and both attached effects and dies; on wall
 * hit or timeout it does the same release then shrinks away on the
 * D_800EA6E0/D_800EA8A0 scale decay; while live it counts the fuse down,
 * runs the contact sweep, freezes the fuse on a floor hit, and otherwise
 * plays anim script D_80190E3C_ovl3 on DObj [1]. */
void func_801606A0_ovl3(struct GObj *arg0) {
    extern char D_80190E3C_ovl3[];
    extern s32 func_800B3158(void);
    extern void func_800A1F30(s32);
    extern void func_800A7870(void **, u16 *);
    extern s32 func_801555B0_ovl3(f32 *, f32 *);
    extern s32 func_80162000_ovl3(char *, s32, f32);
    s32 id = omCurrentObj->objId;
    void *h;
    u16 sid;

    if (func_800B3158() == 0) {
        h = (void *) (uintptr_t) (u32) D_800E98E0[id];
        sid = (u16) D_800E9AA0[id].as_u32;
        func_800A7870(&h, &sid);
        func_800A1F30(D_800EA520[id]);
        func_800A1F30(D_800EB4E0[id]);
        func_800B1900((u16) id);
        return;
    }
    if ((D_800E6310[id] != 0) || (D_800E9720[id] == 0)) {
        if (D_800EA520[id] != 0) {
            h = (void *) (uintptr_t) (u32) D_800E98E0[id];
            sid = (u16) D_800E9AA0[id].as_u32;
            func_800A7870(&h, &sid);
            func_800A1F30(D_800EA520[id]);
            func_800A1F30(D_800EB4E0[id]);
            D_800EB4E0[id] = 0;
            D_800EA520[id] = D_800EB4E0[id];
            D_800E6690[id] = 0.0f;
            D_800E64D0[id] = D_800E6690[id];
            D_800E6850[id] = 65535.0f;
        }
        D_800EA6E0[id] -= 0.125f;
        if (D_800EA6E0[id] == 0.0f) {
            func_800B1900((u16) id);
        }
        D_800EA8A0[id] -= 0.07f;
        gEntitiesScaleYArray[id] = D_800EA6E0[id] * 0.2f;
        gEntitiesScaleZArray[id] = D_800EA8A0[id] * 0.2f;
        gEntitiesScaleXArray[id] = gEntitiesScaleZArray[id];
        return;
    }
    gEntitiesAngleYArray[id] = D_800E17D0[id];
    if (D_800E9720[id] != 0) {
        D_800E9720[id] -= 1;
    }
    func_801555B0_ovl3(D_80197F60_ovl3[id - 4], D_801982F8_ovl3[id - 4]);
    if (D_800E8920[id] != 0) {
        D_800E9720[id] = 0;
        return;
    }
    func_80162000_ovl3(D_80190E3C_ovl3, (s32) (uintptr_t) D_800DFBD0[id][1], 1.0f);
}
#elif defined(PORT)
/* PORT: service routine for func_80160378_ovl3's dropped bomb above (anim
 * 0x2003E), from asm/nonmatchings/ovl3/plyshot/func_801606A0_ovl3.s. On
 * ability end it releases the looping sound (handle parked in D_800E98E0
 * with its id in D_800E9AA0) and both attached effects and dies; on wall
 * hit or timeout it does the same release then shrinks away on the
 * D_800EA6E0/D_800EA8A0 scale decay; while live it counts the fuse down,
 * runs the contact sweep, freezes the fuse on a floor hit, and otherwise
 * plays anim script D_80190E3C_ovl3 on DObj [1]. */
void func_801606A0_ovl3(struct GObj *arg0) {
    extern char D_80190E3C_ovl3[];
    extern s32 func_800B3158(void);
    extern void func_800A1F30(s32);
    extern void func_800A7870(void **, u16 *);
    extern s32 func_801555B0_ovl3(f32 *, f32 *);
    extern s32 func_80162000_ovl3(char *, s32, f32);
    s32 id = omCurrentObj->objId;
    void *h;
    u16 sid;

    if (func_800B3158() == 0) {
        h = (void *) (uintptr_t) (u32) D_800E98E0[id];
        sid = (u16) D_800E9AA0[id].as_u32;
        func_800A7870(&h, &sid);
        func_800A1F30(D_800EA520[id]);
        func_800A1F30(D_800EB4E0[id]);
        func_800B1900((u16) id);
        return;
    }
    if ((D_800E6310[id] != 0) || (D_800E9720[id] == 0)) {
        if (D_800EA520[id] != 0) {
            h = (void *) (uintptr_t) (u32) D_800E98E0[id];
            sid = (u16) D_800E9AA0[id].as_u32;
            func_800A7870(&h, &sid);
            func_800A1F30(D_800EA520[id]);
            func_800A1F30(D_800EB4E0[id]);
            D_800EB4E0[id] = 0;
            D_800EA520[id] = D_800EB4E0[id];
            D_800E6690[id] = 0.0f;
            D_800E64D0[id] = D_800E6690[id];
            D_800E6850[id] = 65535.0f;
        }
        D_800EA6E0[id] -= 0.125f;
        if (D_800EA6E0[id] == 0.0f) {
            func_800B1900((u16) id);
        }
        D_800EA8A0[id] -= 0.07f;
        gEntitiesScaleYArray[id] = D_800EA6E0[id] * 0.2f;
        gEntitiesScaleZArray[id] = D_800EA8A0[id] * 0.2f;
        gEntitiesScaleXArray[id] = gEntitiesScaleZArray[id];
        return;
    }
    gEntitiesAngleYArray[id] = D_800E17D0[id];
    if (D_800E9720[id] != 0) {
        D_800E9720[id] -= 1;
    }
    func_801555B0_ovl3(D_80197F60_ovl3[id - 4], D_801982F8_ovl3[id - 4]);
    if (D_800E8920[id] != 0) {
        D_800E9720[id] = 0;
        return;
    }
    func_80162000_ovl3(D_80190E3C_ovl3, (s32) (uintptr_t) D_800DFBD0[id][1], 1.0f);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_801606A0_ovl3.s")
#endif

void func_80160A50_ovl3(s32 arg0) {
    extern f32 **D_80192F2C_ovl3;
    extern void func_800AFBB4(s32, struct GObj *);
    extern void func_80160D84_ovl3(s32);
    f32 temp;

    D_800E98E0[omCurrentObj->objId] = 0;
    func_80161CE0_ovl3(arg0);
    func_80161EC0_ovl3(0, 0.0f, 20.0f);
    D_800DEF90[omCurrentObj->objId] = func_800B49F8;
    D_800DF150[omCurrentObj->objId] = func_80160D84_ovl3;
    D_800E0490[omCurrentObj->objId] = &D_80192F2C_ovl3;
    func_80154648_ovl3(D_800E0D50[omCurrentObj->objId], D_80197F60_ovl3[omCurrentObj->objId - 4],
                       D_801982F8_ovl3[omCurrentObj->objId - 4]);
    temp = 0.2f;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    func_800A9864(0x2003F, 0x21, 0x10);
    D_800E9720[omCurrentObj->objId] = 0x1E;
    func_800AFBB4(0, omCurrentObj);
    func_800AA018(0x20287);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 20.0f;
    D_800E6850[omCurrentObj->objId] = 20.0f;
    while (1) {
        if (D_800E83E0[omCurrentObj->objId] != 0) {
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            D_800E98E0[omCurrentObj->objId] = 1;
            play_sound(0x12);
            break;
        }
        if (D_800E98E0[omCurrentObj->objId] != 0) {
            break;
        }
        ohSleep(1);
    }
    func_800AFBB4(1, omCurrentObj);
    if (D_800E98E0[omCurrentObj->objId] == 1) {
        if ((D_800E83E0[omCurrentObj->objId] & 0xFFFF) == 2) {
            ohSleep(0xA);
        } else {
            ohSleep(2);
        }
    } else {
        ohSleep(0xA);
    }
    D_800E98E0[omCurrentObj->objId] = 3;
    curObjSleepForever();
}

extern char D_80190E80_ovl3[];
extern f32 D_800EC9E4;
extern s32 func_801693C4_ovl3(s32);
s32 func_80155424_ovl3(struct PositionState *);

void func_80160D84_ovl3(s32 arg0) {
    s32 id;

    if (D_800E98E0[omCurrentObj->objId] == 0) {
        gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId];
        if (D_800E9720[omCurrentObj->objId]--) {
            if (D_800E83E0[omCurrentObj->objId] == 0) {
                func_80155424_ovl3(D_80197F60_ovl3[omCurrentObj->objId - 4]);
                if ((D_800E8920[omCurrentObj->objId] == 0) && (D_800E6310[omCurrentObj->objId] == 0)) {
                    func_80111C4C(func_801117BC(D_80190E80_ovl3, omCurrentObj->objId));
                    return;
                }
                play_sound(0x12);
                D_800E98E0[omCurrentObj->objId] = 2;
            }
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            D_800E3750[omCurrentObj->objId] = 0.0f;
            D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
            D_800E3C90[omCurrentObj->objId] = 65535.0f;
            return;
        }
    } else if (D_800E98E0[omCurrentObj->objId] == 3) {
        play_sound(0x14);
        id = func_801693C4_ovl3(5);
        if (id != -1) {
            gEntitiesNextPosXArray[id] = gEntitiesNextPosXArray[omCurrentObj->objId];
            gEntitiesNextPosYArray[id] = gEntitiesNextPosYArray[omCurrentObj->objId];
            gEntitiesNextPosZArray[id] = gEntitiesNextPosZArray[omCurrentObj->objId];
            D_800EA6E0[id] = D_800E17D0[omCurrentObj->objId];
            D_800EC2E0[id].as_s32 = 0x20;
        }
    } else {
        gEntitiesNextPosYArray[omCurrentObj->objId] -= D_800EC9E4;
        return;
    }
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

#ifdef MIPS_TO_C
/* FACTORY: 0/288, whole-function callee-saved permutation (same floor class documented across this cluster). Replaces the PORT arm's pc_sndpair_start(0x34, sndpair) call with the real N64 call it wraps, func_800A77E8 (pc_sndpair_start is a genuine PC-side helper -- defined and linked -- but it doesn't exist on the ROM, so the N64 draft calls the underlying primitive directly, same pattern as func_8015CF9C_ovl3/func_801636A4_ovl3 in ovl3_1.c/plyshot.c). Queued for the permuter. */
/* PORT: forward-shot init coroutine (anim 0x20040), from asm/nonmatchings/
 * ovl3/plyshot/func_80161058_ovl3.s -- same family as the decompiled
 * func_8015BBE4_ovl3 above. Seats the shot 20 units above the parent,
 * inherits ground/water state, opens sound pair 0x34 plus two type-0x11/
 * 0x12 effects when launched from the ground, launches at 10 (6 in water),
 * and for up to 30 frames watches for a wall hit that reverses it; then
 * hands off to func_801614D8_ovl3 with a slow upward drift. */
void func_80161058_ovl3(s32 arg0) {
    extern f32 **D_80192F48_ovl3;
    extern void func_800B4954(s32);
    extern void func_801614D8_ovl3(struct GObj *);
    extern s32 func_800A8234(s32, s32, s32);
    extern void func_800A77E8(s32 fgm, s32 *handleOut, s32 *sidOut);
    void curObjSleepForever(void);
    s32 id = omCurrentObj->objId;
    u32 sndpair[2];
    f32 spd;

    D_800E0650[id] = (s32 *) 1;
    func_80161CE0_ovl3(arg0);
    func_80161EC0_ovl3(0, 0.0f, 20.0f);
    D_800DEF90[id] = func_800B4954;
    D_800DF150[id] = func_801614D8_ovl3;
    D_800E0490[id] = &D_80192F48_ovl3;
    func_80154648_ovl3(D_800E0D50[id], D_80197F60_ovl3[id - 4], D_801982F8_ovl3[id - 4]);
    func_800AECC0(D_800E09D0[D_800E0D50[id]]);
    func_800AED20(D_800E09D0[D_800E0D50[id]]);
    D_800E8920[id] = D_800E8920[D_800E0D50[id]];
    D_800E8AE0[id] = D_800E8AE0[D_800E0D50[id]];
    gEntitiesScaleXArray[id] = 0.2f;
    gEntitiesScaleYArray[id] = 0.2f;
    gEntitiesScaleZArray[id] = 0.2f;
    func_800A9864(0x20040, 0x21, 0x10);
    D_800EA360[id] = (s32) (uintptr_t) sndpair;
    if (D_800E8920[id] != 0) {
        func_800A77E8(0x34, (s32 *) &sndpair[0], (s32 *) &sndpair[1]);
        D_800EA520[id] = func_800A8234(2, 1, 0x11);
        D_800EB4E0[id] = func_800A8234(2, 1, 0x12);
    } else {
        sndpair[0] = 0;
        D_800EB4E0[id] = 0;
        D_800EA520[id] = D_800EB4E0[id];
    }
    func_800AA018(0x20288);
    D_800E98E0[id] = 0;
    D_800E9560[id] = 0xA;
    spd = (D_800E8AE0[id] & 4) ? 6.0f : 10.0f;
    D_800E64D0[id] = D_800E6A10[id] * spd;
    D_800E6850[id] = spd;
    D_800E9720[id] = 0;
    while (D_800E9720[id] < 0x1E) {
        if (D_800E6310[id] != 0) {
            D_800E64D0[id] = -D_800E64D0[id];
            break;
        }
        ohSleep(1);
        D_800E9720[id]++;
    }
    D_800E6690[id] = D_800E6A10[id] * -0.5f;
    curObjSleepForever();
}
#elif defined(PORT)
/* PORT: forward-shot init coroutine (anim 0x20040), from asm/nonmatchings/
 * ovl3/plyshot/func_80161058_ovl3.s -- same family as the decompiled
 * func_8015BBE4_ovl3 above. Seats the shot 20 units above the parent,
 * inherits ground/water state, opens sound pair 0x34 plus two type-0x11/
 * 0x12 effects when launched from the ground, launches at 10 (6 in water),
 * and for up to 30 frames watches for a wall hit that reverses it; then
 * hands off to func_801614D8_ovl3 with a slow upward drift. */
void func_80161058_ovl3(s32 arg0) {
    extern f32 **D_80192F48_ovl3;
    extern void func_800B4954(s32);
    extern void func_801614D8_ovl3(struct GObj *);
    extern s32 func_800A8234(s32, s32, s32);
    void curObjSleepForever(void);
    s32 id = omCurrentObj->objId;
    u32 sndpair[2];
    f32 spd;

    D_800E0650[id] = (s32 *) 1;
    func_80161CE0_ovl3(arg0);
    func_80161EC0_ovl3(0, 0.0f, 20.0f);
    D_800DEF90[id] = func_800B4954;
    D_800DF150[id] = func_801614D8_ovl3;
    D_800E0490[id] = &D_80192F48_ovl3;
    func_80154648_ovl3(D_800E0D50[id], D_80197F60_ovl3[id - 4], D_801982F8_ovl3[id - 4]);
    func_800AECC0(D_800E09D0[D_800E0D50[id]]);
    func_800AED20(D_800E09D0[D_800E0D50[id]]);
    D_800E8920[id] = D_800E8920[D_800E0D50[id]];
    D_800E8AE0[id] = D_800E8AE0[D_800E0D50[id]];
    gEntitiesScaleXArray[id] = 0.2f;
    gEntitiesScaleYArray[id] = 0.2f;
    gEntitiesScaleZArray[id] = 0.2f;
    func_800A9864(0x20040, 0x21, 0x10);
    D_800EA360[id] = (s32) (uintptr_t) sndpair;
    if (D_800E8920[id] != 0) {
        pc_sndpair_start(0x34, sndpair);
        D_800EA520[id] = func_800A8234(2, 1, 0x11);
        D_800EB4E0[id] = func_800A8234(2, 1, 0x12);
    } else {
        sndpair[0] = 0;
        D_800EB4E0[id] = 0;
        D_800EA520[id] = D_800EB4E0[id];
    }
    func_800AA018(0x20288);
    D_800E98E0[id] = 0;
    D_800E9560[id] = 0xA;
    spd = (D_800E8AE0[id] & 4) ? 6.0f : 10.0f;
    D_800E64D0[id] = D_800E6A10[id] * spd;
    D_800E6850[id] = spd;
    D_800E9720[id] = 0;
    while (D_800E9720[id] < 0x1E) {
        if (D_800E6310[id] != 0) {
            D_800E64D0[id] = -D_800E64D0[id];
            break;
        }
        ohSleep(1);
        D_800E9720[id]++;
    }
    D_800E6690[id] = D_800E6A10[id] * -0.5f;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80161058_ovl3.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 4/513, whole-function callee-saved permutation (same floor class documented across this cluster). Same fixes as its sibling func_8015C00C_ovl3: real N64 sound-pair calls through local helpers instead of pc_sndpair_*, a local SpreadFx view instead of the guarded PcPlyshotFx, and an ANSI prototype for func_800A7F74. Queued for the permuter. */
/* PORT: service routine for the forward shot installed by func_80161058_ovl3
 * above, from asm/nonmatchings/ovl3/plyshot/func_801614D8_ovl3.s. Same shape
 * as the decompiled boomerang service func_8015C00C_ovl3 in this TU: bursts
 * when the ability ends (fgm 0x159, particle 2/1/0x58) and pops on catch
 * state gKirbyState.unk44==1 (both via func_800A22D4 here), otherwise runs
 * the hit record D_80193834 and the shot collision pass, probes 25 units
 * around the shot to keep the two type-0x11/0x12 water-trail effects and
 * looping pair 0x34 alive only in water, steers back toward the parent at
 * 10 (6 in water) once past the apex, re-arms the shared bubble throttle
 * (D_80198830+4, spelled through the splinter cell D_80198834 per this
 * build's data-emission convention), chains anim 0x20288 into 0x20289 when
 * it finishes, and re-seats both effect blocks on the shot's position. */
struct SpreadFx { u32 kind; f32 unk4, unk8, unkC, unk10, unk14, unk18; };

static void plyshotSndpairRelease2(u32 *pair) {
    extern void func_800A7870(void **, u16 *);
    void *handle;
    u16 sid;

    if (pair == NULL) {
        return;
    }
    handle = (void *) pair[0];
    sid = *(u16 *) (pair + 1);
    func_800A7870(&handle, &sid);
    pair[0] = 0;
    *(u16 *) (pair + 1) = 0;
}

static void plyshotSndpairStart2(s32 fgm, u32 *pair) {
    extern void func_800A77E8(s32, s32 *, s32 *);

    func_800A77E8(fgm, (s32 *) &pair[0], (s32 *) &pair[1]);
}

void func_801614D8_ovl3(struct GObj *arg0) {
    extern u8 D_80198834_ovl3[];
    extern char D_80190EC4_ovl3[];
    extern s32 D_80193834_ovl3[];
    extern s32 func_800A8234(s32, s32, s32);
    extern void func_800A1F30(s32);
    extern s32 func_800AA934(s32);
    extern s32 func_80155664_ovl3(f32 *);
    extern s32 func_80155838_ovl3(f32 *, f32, s32);
    extern s32 func_80155D50_ovl3(f32 *, s32, s32, s32);
    extern f32 func_800F9828(s32, s32);
    extern void func_800A7F74(u32, u32, u16, f32, f32, f32);
    f32 atan2f(f32, f32);
    float sinf(float);
    float cosf(float);
    s32 id = omCurrentObj->objId;
    u32 *sndpair = (u32 *) (uintptr_t) (u32) D_800EA360[id];
    f32 probe[3];
    s32 inWater;
    f32 spd;

    gEntitiesAngleYArray[id] = D_800E17D0[id];
    if (gKirbyState.abilityInUse == 0) {
        play_sound(0x159);
        func_800A7F74(2U, 1U, 0x58U, gEntitiesNextPosXArray[id], gEntitiesNextPosYArray[id],
                      gEntitiesNextPosZArray[id]);
        if (sndpair != NULL && sndpair[0] != 0) {
            plyshotSndpairRelease2(sndpair);
        }
        if (D_800EA520[id] != 0) {
            func_800A22D4(D_800EA520[id]);
            func_800A22D4(D_800EB4E0[id]);
        }
        func_800B1900((u16) id);
        return;
    }
    if (gKirbyState.unk44 == 1) {
        if (sndpair != NULL && sndpair[0] != 0) {
            plyshotSndpairRelease2(sndpair);
        }
        if (D_800EA520[id] != 0) {
            func_800A22D4(D_800EA520[id]);
            func_800A22D4(D_800EB4E0[id]);
        }
        func_800B1900((u16) id);
        return;
    }
    func_80155D50_ovl3(D_801982F8_ovl3[id - 4], (s32) (uintptr_t) D_80193834_ovl3, 0, id);
    func_80155664_ovl3(D_80197F60_ovl3[id - 4]);
    D_800E8920[id] = 0;
    probe[0] = gEntitiesNextPosXArray[id];
    probe[1] = gEntitiesNextPosYArray[id];
    probe[2] = gEntitiesNextPosZArray[id];
    inWater = func_80155838_ovl3(probe, 25.0f, 6);
    if (D_800E8AE0[id] & 4) {
        func_800AECC0(1.0f);
        func_800AED20(1.0f);
        spd = 6.0f;
    } else {
        func_800AECC0(2.0f);
        func_800AED20(2.0f);
        spd = 10.0f;
    }
    if (D_800E98E0[id] != 0) {
        f32 ang = atan2f((gEntitiesNextPosYArray[D_800E0D50[id]] - gEntitiesNextPosYArray[id]) + 20.0f,
                         func_800F9828(id, D_800E0D50[id]));

        D_800E3210[id] = sinf(ang) * spd;
        D_800E3750[id] = 0.0f;
        D_800E3C90[id] = (spd < 0.0f) ? -spd : spd;
        D_800E64D0[id] = cosf(ang) * spd;
        D_800E6690[id] = 0.0f;
        D_800E6850[id] = (spd < 0.0f) ? -spd : spd;
    } else {
        D_800E6850[id] = (spd < 0.0f) ? -spd : spd;
        if (((D_800E6A10[id] == 1.0f) && (D_800E64D0[id] < 0.0f))
            || ((D_800E6A10[id] == -1.0f) && (D_800E64D0[id] > 0.0f))) {
            D_800E98E0[id] = 1;
        }
    }
    if (*(s32 *) D_80198834_ovl3 == 0) {
        D_800E9560[id] -= 1;
        if (D_800E9560[id] == 0) {
            *(s32 *) D_80198834_ovl3 = 1;
        }
    }
    if (func_800AA934(0x20288) != 0) {
        func_800AA018(0x20289);
    }
    if (inWater == 0) {
        if (sndpair != NULL && sndpair[0] != 0) {
            plyshotSndpairRelease2(sndpair);
        }
        if (D_800EA520[id] != 0) {
            func_800A1F30(D_800EA520[id]);
            func_800A1F30(D_800EB4E0[id]);
            D_800EB4E0[id] = 0;
            D_800EA520[id] = D_800EB4E0[id];
        }
    } else {
        if (sndpair != NULL && sndpair[0] == 0) {
            plyshotSndpairStart2(0x34, sndpair);
        }
        if (D_800EA520[id] == 0) {
            D_800EA520[id] = func_800A8234(2, 1, 0x11);
            D_800EB4E0[id] = func_800A8234(2, 1, 0x12);
        }
    }
    if (D_800EA520[id] != 0) {
        struct SpreadFx *fa = (struct SpreadFx *) ((GObj *) D_800EA520[id])->unk4C;
        struct SpreadFx *fb = (struct SpreadFx *) ((GObj *) D_800EB4E0[id])->unk4C;

        fa->unk4 = gEntitiesNextPosXArray[id];
        fa->unk8 = gEntitiesNextPosYArray[id];
        fa->unkC = gEntitiesNextPosZArray[id];
        fb->unk4 = gEntitiesNextPosXArray[id];
        fb->unk8 = gEntitiesNextPosYArray[id];
        fb->unkC = gEntitiesNextPosZArray[id];
    }
    func_80111C4C(func_801117BC(D_80190EC4_ovl3, id));
}
#elif defined(PORT)
/* PORT: service routine for the forward shot installed by func_80161058_ovl3
 * above, from asm/nonmatchings/ovl3/plyshot/func_801614D8_ovl3.s. Same shape
 * as the decompiled boomerang service func_8015C00C_ovl3 in this TU: bursts
 * when the ability ends (fgm 0x159, particle 2/1/0x58) and pops on catch
 * state gKirbyState.unk44==1 (both via func_800A22D4 here), otherwise runs
 * the hit record D_80193834 and the shot collision pass, probes 25 units
 * around the shot to keep the two type-0x11/0x12 water-trail effects and
 * looping pair 0x34 alive only in water, steers back toward the parent at
 * 10 (6 in water) once past the apex, re-arms the shared bubble throttle
 * (D_80198830+4, spelled through the splinter cell D_80198834 per this
 * build's data-emission convention), chains anim 0x20288 into 0x20289 when
 * it finishes, and re-seats both effect blocks on the shot's position. */
void func_801614D8_ovl3(struct GObj *arg0) {
    extern u8 D_80198834_ovl3[];
    extern char D_80190EC4_ovl3[];
    extern s32 D_80193834_ovl3[];
    extern s32 func_800A8234(s32, s32, s32);
    extern void func_800A1F30(s32);
    extern s32 func_800AA934(s32);
    extern s32 func_80155664_ovl3(f32 *);
    extern s32 func_80155838_ovl3(f32 *, f32, s32);
    extern s32 func_80155D50_ovl3(f32 *, s32, s32, s32);
    extern f32 func_800F9828(s32, s32);
    f32 atan2f(f32, f32);
    float sinf(float);
    float cosf(float);
    s32 id = omCurrentObj->objId;
    u32 *sndpair = (u32 *) (uintptr_t) (u32) D_800EA360[id];
    f32 probe[3];
    s32 inWater;
    f32 spd;

    gEntitiesAngleYArray[id] = D_800E17D0[id];
    if (gKirbyState.abilityInUse == 0) {
        play_sound(0x159);
        func_800A7F74(2U, 1U, 0x58U, gEntitiesNextPosXArray[id], gEntitiesNextPosYArray[id],
                      gEntitiesNextPosZArray[id]);
        if (sndpair != NULL && sndpair[0] != 0) {
            pc_sndpair_release(sndpair);
        }
        if (D_800EA520[id] != 0) {
            func_800A22D4(D_800EA520[id]);
            func_800A22D4(D_800EB4E0[id]);
        }
        func_800B1900((u16) id);
        return;
    }
    if (gKirbyState.unk44 == 1) {
        if (sndpair != NULL && sndpair[0] != 0) {
            pc_sndpair_release(sndpair);
        }
        if (D_800EA520[id] != 0) {
            func_800A22D4(D_800EA520[id]);
            func_800A22D4(D_800EB4E0[id]);
        }
        func_800B1900((u16) id);
        return;
    }
    func_80155D50_ovl3(D_801982F8_ovl3[id - 4], (s32) (uintptr_t) D_80193834_ovl3, 0, id);
    func_80155664_ovl3(D_80197F60_ovl3[id - 4]);
    D_800E8920[id] = 0;
    probe[0] = gEntitiesNextPosXArray[id];
    probe[1] = gEntitiesNextPosYArray[id];
    probe[2] = gEntitiesNextPosZArray[id];
    inWater = func_80155838_ovl3(probe, 25.0f, 6);
    if (D_800E8AE0[id] & 4) {
        func_800AECC0(1.0f);
        func_800AED20(1.0f);
        spd = 6.0f;
    } else {
        func_800AECC0(2.0f);
        func_800AED20(2.0f);
        spd = 10.0f;
    }
    if (D_800E98E0[id] != 0) {
        f32 ang = atan2f((gEntitiesNextPosYArray[D_800E0D50[id]] - gEntitiesNextPosYArray[id]) + 20.0f,
                         func_800F9828(id, D_800E0D50[id]));

        D_800E3210[id] = sinf(ang) * spd;
        D_800E3750[id] = 0.0f;
        D_800E3C90[id] = (spd < 0.0f) ? -spd : spd;
        D_800E64D0[id] = cosf(ang) * spd;
        D_800E6690[id] = 0.0f;
        D_800E6850[id] = (spd < 0.0f) ? -spd : spd;
    } else {
        D_800E6850[id] = (spd < 0.0f) ? -spd : spd;
        if (((D_800E6A10[id] == 1.0f) && (D_800E64D0[id] < 0.0f))
            || ((D_800E6A10[id] == -1.0f) && (D_800E64D0[id] > 0.0f))) {
            D_800E98E0[id] = 1;
        }
    }
    if (*(s32 *) D_80198834_ovl3 == 0) {
        D_800E9560[id] -= 1;
        if (D_800E9560[id] == 0) {
            *(s32 *) D_80198834_ovl3 = 1;
        }
    }
    if (func_800AA934(0x20288) != 0) {
        func_800AA018(0x20289);
    }
    if (inWater == 0) {
        if (sndpair != NULL && sndpair[0] != 0) {
            pc_sndpair_release(sndpair);
        }
        if (D_800EA520[id] != 0) {
            func_800A1F30(D_800EA520[id]);
            func_800A1F30(D_800EB4E0[id]);
            D_800EB4E0[id] = 0;
            D_800EA520[id] = D_800EB4E0[id];
        }
    } else {
        if (sndpair != NULL && sndpair[0] == 0) {
            pc_sndpair_start(0x34, sndpair);
        }
        if (D_800EA520[id] == 0) {
            D_800EA520[id] = func_800A8234(2, 1, 0x11);
            D_800EB4E0[id] = func_800A8234(2, 1, 0x12);
        }
    }
    if (D_800EA520[id] != 0) {
        struct PcPlyshotFx *fa = ((GObj *) (uintptr_t) (u32) D_800EA520[id])->unk4C;
        struct PcPlyshotFx *fb = ((GObj *) (uintptr_t) (u32) D_800EB4E0[id])->unk4C;

        fa->unk4 = gEntitiesNextPosXArray[id];
        fa->unk8 = gEntitiesNextPosYArray[id];
        fa->unkC = gEntitiesNextPosZArray[id];
        fb->unk4 = gEntitiesNextPosXArray[id];
        fb->unk8 = gEntitiesNextPosYArray[id];
        fb->unkC = gEntitiesNextPosZArray[id];
    }
    func_80111C4C(func_801117BC(D_80190EC4_ovl3, id));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_801614D8_ovl3.s")
#endif

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

#ifdef MIPS_TO_C
/* FACTORY: 1/281 (280/281 diff; note the near-matching TOTAL count -- target has 281 insns, this draft 281 too but only 1 word agrees), whole-function callee-saved permutation plus a real defect: the ROM strength-reduces a multiply by 0x58 (id*3, *4, *8 via shift/subtract) to index D_80197BF0_ovl3, meaning each cell is 0x58 bytes -- this draft's struct PcShotColSnap is only 32 bytes (the PORT arm's reduced snapshot, not the full memcpy'd N64 cell the header comment describes). Residual work for whoever continues: widen the cell to 0x58 bytes and memcpy the whole D_8012BCA0 block per the comment. Adds an ANSI prototype for func_801625B8_ovl3 (defined later in this TU) to avoid an implicit-int redeclaration conflict. Queued for the permuter. */
/* PORT: the shot water-surface tracker, from asm/nonmatchings/ovl3/plyshot/
 * func_80162150_ovl3.s. On N64 this memcpy's the whole 0x58-byte collision
 * result block D_8012BCA0 into the shot's cell of D_80197BF0_ovl3 each call
 * and, when the shot's water state changed, probes the water volumes at the
 * shot (entering: fresh annex; leaving: LAST frame's stored annex), finds
 * the surface crossing between the previous and next positions with
 * func_8010E048, and spawns a ripple there. The LP64 block (168 bytes,
 * struct UnkBCA0 in ovl2_7.c, water annex at +128 -- locked by asserts in
 * src/pc/pc_bss_whole.c) does not fit the 0x58-byte cells, and the only
 * readers of the copy are this function and func_8015AC90_ovl3's marker
 * bits in the leading u16, so the cell stores a reduced snapshot instead:
 * the flags halfword at +0 (where the marker lives) and the water annex.
 * When the marker (unk0 >> 3 == 0xFFF, set by func_8015AC90_ovl3) is
 * present the ripple scan is skipped, exactly as on N64. */
struct PcShotColSnap {
    u16 flagsHw;    /* aliases Unk80197BF0.unk0 -- the marker halfword */
    u16 pad0;
    u32 pad4;
    void *waterRec[3];
    u32 waterSrc[3];
};

void func_80162150_ovl3(void) {
    extern u8 D_8012BCA0[];
    extern s32 func_8010DF9C(f32 *);
    extern s32 func_8010E048(void *, s32, f32 *, f32 *, void *, f32 *);
    extern void func_801625B8_ovl3(f32 *);
    s32 id = omCurrentObj->objId;
    struct PcShotColSnap *snap = (struct PcShotColSnap *) &D_80197BF0_ovl3[id - 4];
    s32 k;

    if ((u32) (snap->flagsHw >> 3) != 0xFFF) {
        s32 flags = D_800E8AE0[id];

        if ((flags != 0) && ((flags & 6) != 6)) {
            f32 *fr = (f32 *) (uintptr_t) D_800E0490[id][1];
            f32 probe[3];
            f32 posA[3];
            f32 posB[3];
            s32 hits;

            if (flags & 4) {
                /* In water: probe the next position, walk the fresh annex. */
                probe[0] = gEntitiesNextPosXArray[id];
                probe[1] = gEntitiesNextPosYArray[id] + fr[0];
                probe[2] = gEntitiesNextPosZArray[id];
                hits = func_8010DF9C(probe);
                for (k = 0; k < hits && k < 3; k++) {
                    u8 *w = *(u8 **) (D_8012BCA0 + 128 + k * 8);

                    if (w != NULL && w[4] == 1) {
                        posA[0] = gEntitiesPosXArray[id];
                        posA[1] = gEntitiesPosYArray[id] + fr[0] + fr[1];
                        posA[2] = gEntitiesPosZArray[id];
                        posB[0] = gEntitiesNextPosXArray[id];
                        posB[1] = gEntitiesNextPosYArray[id];
                        posB[2] = gEntitiesNextPosZArray[id];
                        func_8010E048(w, *(s32 *) (D_8012BCA0 + 152 + k * 4), posA, posB,
                                      D_8012BCA0 + 24 /* &rec[0].norm */, probe);
                        func_801625B8_ovl3(probe);
                        break;
                    }
                }
            } else {
                /* Just left the water: probe the previous position, walk
                 * the annex captured in last frame's snapshot. */
                void *dummyNorm;

                probe[0] = gEntitiesPosXArray[id];
                probe[1] = gEntitiesPosYArray[id] + fr[0];
                probe[2] = gEntitiesPosZArray[id];
                hits = func_8010DF9C(probe);
                for (k = 0; k < hits && k < 3; k++) {
                    u8 *w = snap->waterRec[k];

                    if (w != NULL && w[4] == 1) {
                        posA[0] = gEntitiesPosXArray[id];
                        posA[1] = gEntitiesPosYArray[id] + fr[0] + fr[1];
                        posA[2] = gEntitiesPosZArray[id];
                        posB[0] = gEntitiesNextPosXArray[id];
                        posB[1] = gEntitiesNextPosYArray[id];
                        posB[2] = gEntitiesNextPosZArray[id];
                        func_8010E048(w, snap->waterSrc[k], posA, posB, &dummyNorm, probe);
                        func_801625B8_ovl3(probe);
                        break;
                    }
                }
            }
        }
    }
    /* Refresh the snapshot from the live block (the N64 0x58-byte copy). */
    snap->flagsHw = ((u16 *) D_8012BCA0)[1]; /* PORT flags union: hw is the upper u16 */
    for (k = 0; k < 3; k++) {
        snap->waterRec[k] = *(void **) (D_8012BCA0 + 128 + k * 8);
        snap->waterSrc[k] = *(u32 *) (D_8012BCA0 + 152 + k * 4);
    }
}
#elif defined(PORT)
/* PORT: the shot water-surface tracker, from asm/nonmatchings/ovl3/plyshot/
 * func_80162150_ovl3.s. On N64 this memcpy's the whole 0x58-byte collision
 * result block D_8012BCA0 into the shot's cell of D_80197BF0_ovl3 each call
 * and, when the shot's water state changed, probes the water volumes at the
 * shot (entering: fresh annex; leaving: LAST frame's stored annex), finds
 * the surface crossing between the previous and next positions with
 * func_8010E048, and spawns a ripple there. The LP64 block (168 bytes,
 * struct UnkBCA0 in ovl2_7.c, water annex at +128 -- locked by asserts in
 * src/pc/pc_bss_whole.c) does not fit the 0x58-byte cells, and the only
 * readers of the copy are this function and func_8015AC90_ovl3's marker
 * bits in the leading u16, so the cell stores a reduced snapshot instead:
 * the flags halfword at +0 (where the marker lives) and the water annex.
 * When the marker (unk0 >> 3 == 0xFFF, set by func_8015AC90_ovl3) is
 * present the ripple scan is skipped, exactly as on N64. */
struct PcShotColSnap {
    u16 flagsHw;    /* aliases Unk80197BF0.unk0 -- the marker halfword */
    u16 pad0;
    u32 pad4;
    void *waterRec[3];
    u32 waterSrc[3];
};

void func_80162150_ovl3(void) {
    extern u8 D_8012BCA0[];
    extern s32 func_8010DF9C(f32 *);
    extern s32 func_8010E048(void *, s32, f32 *, f32 *, void *, f32 *);
    extern void func_801625B8_ovl3(f32 *);
    s32 id = omCurrentObj->objId;
    struct PcShotColSnap *snap = (struct PcShotColSnap *) &D_80197BF0_ovl3[id - 4];
    s32 k;

    if ((u32) (snap->flagsHw >> 3) != 0xFFF) {
        s32 flags = D_800E8AE0[id];

        if ((flags != 0) && ((flags & 6) != 6)) {
            f32 *fr = (f32 *) (uintptr_t) D_800E0490[id][1];
            f32 probe[3];
            f32 posA[3];
            f32 posB[3];
            s32 hits;

            if (flags & 4) {
                /* In water: probe the next position, walk the fresh annex. */
                probe[0] = gEntitiesNextPosXArray[id];
                probe[1] = gEntitiesNextPosYArray[id] + fr[0];
                probe[2] = gEntitiesNextPosZArray[id];
                hits = func_8010DF9C(probe);
                for (k = 0; k < hits && k < 3; k++) {
                    u8 *w = *(u8 **) (D_8012BCA0 + 128 + k * 8);

                    if (w != NULL && w[4] == 1) {
                        posA[0] = gEntitiesPosXArray[id];
                        posA[1] = gEntitiesPosYArray[id] + fr[0] + fr[1];
                        posA[2] = gEntitiesPosZArray[id];
                        posB[0] = gEntitiesNextPosXArray[id];
                        posB[1] = gEntitiesNextPosYArray[id];
                        posB[2] = gEntitiesNextPosZArray[id];
                        func_8010E048(w, *(s32 *) (D_8012BCA0 + 152 + k * 4), posA, posB,
                                      D_8012BCA0 + 24 /* &rec[0].norm */, probe);
                        func_801625B8_ovl3(probe);
                        break;
                    }
                }
            } else {
                /* Just left the water: probe the previous position, walk
                 * the annex captured in last frame's snapshot. */
                void *dummyNorm;

                probe[0] = gEntitiesPosXArray[id];
                probe[1] = gEntitiesPosYArray[id] + fr[0];
                probe[2] = gEntitiesPosZArray[id];
                hits = func_8010DF9C(probe);
                for (k = 0; k < hits && k < 3; k++) {
                    u8 *w = snap->waterRec[k];

                    if (w != NULL && w[4] == 1) {
                        posA[0] = gEntitiesPosXArray[id];
                        posA[1] = gEntitiesPosYArray[id] + fr[0] + fr[1];
                        posA[2] = gEntitiesPosZArray[id];
                        posB[0] = gEntitiesNextPosXArray[id];
                        posB[1] = gEntitiesNextPosYArray[id];
                        posB[2] = gEntitiesNextPosZArray[id];
                        func_8010E048(w, snap->waterSrc[k], posA, posB, &dummyNorm, probe);
                        func_801625B8_ovl3(probe);
                        break;
                    }
                }
            }
        }
    }
    /* Refresh the snapshot from the live block (the N64 0x58-byte copy). */
    snap->flagsHw = ((u16 *) D_8012BCA0)[1]; /* PORT flags union: hw is the upper u16 */
    for (k = 0; k < 3; k++) {
        snap->waterRec[k] = *(void **) (D_8012BCA0 + 128 + k * 8);
        snap->waterSrc[k] = *(u32 *) (D_8012BCA0 + 152 + k * 4);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80162150_ovl3.s")
#endif

void func_801625B8_ovl3(f32 *arg0) {
    s32 temp = request_track_general(0x15, 0x3C, 0x50);

    if (temp == -1) {
        utilPrintf("Player Shot Water Ripple Request Error![plyshot.cc]\n");
        return;
    }
    gEntitiesNextPosXArray[temp] = arg0[0];
    gEntitiesNextPosYArray[temp] = arg0[1];
    gEntitiesNextPosZArray[temp] = arg0[2];
    gEntityFuncListIDArray[temp] = 3;
}

#include "main/gtl.h"
#include "main/object_manager.h"

extern Lights1 D_800BE548;
extern Lights1 D_800BE550;

s32 func_800AB0F4(GObj *);
void func_800AB120(GObj *);
void func_800AB174(GObj *);
void func_800AB1F0(GObj *);
void func_800AB244(GObj *);
void renderDrawDObjFromGObj(GObj *);
void renderDrawObject_TypeD(GObj *);
void func_8001585C(GObj *);
void func_80015BCC(GObj *);
void func_800F90C0(s32, u8 *);

void func_8016264C_ovl3(GObj *g) {
    s32 id = g->objId;

    if (!(D_800DD8D0[id] & 0x40)) {
        switch (func_800AB0F4(g)) {
            case 19:
                gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[id]);
                if (D_800E0650[id] != 0) {
                    func_800F90C0(id, gDynamicBuffer1.top);
                    gSPNumLights(gDisplayListHeads[0]++, 1);
                    gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top + 8, 1);
                    gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top, 2);
                    gDynamicBuffer1.top += 0x18;
                }
                func_800AB120(g);
                gSPNumLights(gDisplayListHeads[0]++, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE550, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE548, 2);
                break;
            case 21:
                gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[id]);
                if (D_800E0650[id] != 0) {
                    func_800F90C0(id, gDynamicBuffer1.top);
                    gSPNumLights(gDisplayListHeads[0]++, 1);
                    gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top + 8, 1);
                    gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top, 2);
                    gDynamicBuffer1.top += 0x18;
                }
                func_800AB1F0(g);
                gSPNumLights(gDisplayListHeads[0]++, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE550, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE548, 2);
                break;
            case 23:
            case 25:
                gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[id]);
                if (D_800E0650[id] != 0) {
                    func_800F90C0(id, gDynamicBuffer1.top);
                    gSPNumLights(gDisplayListHeads[0]++, 1);
                    gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top + 8, 1);
                    gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top, 2);
                    gDynamicBuffer1.top += 0x18;
                }
                renderDrawDObjFromGObj(g);
                gSPNumLights(gDisplayListHeads[0]++, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE550, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE548, 2);
                break;
            case 27:
            case 29:
                gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[id]);
                if (D_800E0650[id] != 0) {
                    func_800F90C0(id, gDynamicBuffer1.top);
                    gSPNumLights(gDisplayListHeads[0]++, 1);
                    gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top + 8, 1);
                    gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top, 2);
                    gDynamicBuffer1.top += 0x18;
                }
                func_8001585C(g);
                gSPNumLights(gDisplayListHeads[0]++, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE550, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE548, 2);
                break;
            case 20:
                gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[id]);
                gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[id]);
                if (D_800E0650[id] != 0) {
                    func_800F90C0(id, gDynamicBuffer1.top);
                    gSPNumLights(gDisplayListHeads[0]++, 1);
                    gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top + 8, 1);
                    gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top, 2);
                    gSPLight(gDisplayListHeads[1]++, gDynamicBuffer1.top + 8, 1);
                    gSPLight(gDisplayListHeads[1]++, gDynamicBuffer1.top, 2);
                    gDynamicBuffer1.top += 0x18;
                }
                func_800AB174(g);
                gSPNumLights(gDisplayListHeads[0]++, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE550, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE548, 2);
                gSPNumLights(gDisplayListHeads[1]++, 1);
                gSPLight(gDisplayListHeads[1]++, &D_800BE550, 1);
                gSPLight(gDisplayListHeads[1]++, &D_800BE548, 2);
                break;
            case 22:
                gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[id]);
                gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[id]);
                if (D_800E0650[id] != 0) {
                    func_800F90C0(id, gDynamicBuffer1.top);
                    gSPNumLights(gDisplayListHeads[0]++, 1);
                    gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top + 8, 1);
                    gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top, 2);
                    gSPLight(gDisplayListHeads[1]++, gDynamicBuffer1.top + 8, 1);
                    gSPLight(gDisplayListHeads[1]++, gDynamicBuffer1.top, 2);
                    gDynamicBuffer1.top += 0x18;
                }
                func_800AB244(g);
                gSPNumLights(gDisplayListHeads[0]++, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE550, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE548, 2);
                gSPNumLights(gDisplayListHeads[1]++, 1);
                gSPLight(gDisplayListHeads[1]++, &D_800BE550, 1);
                gSPLight(gDisplayListHeads[1]++, &D_800BE548, 2);
                break;
            case 24:
            case 26:
                gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[id]);
                gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[id]);
                if (D_800E0650[id] != 0) {
                    func_800F90C0(id, gDynamicBuffer1.top);
                    gSPNumLights(gDisplayListHeads[0]++, 1);
                    gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top + 8, 1);
                    gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top, 2);
                    gSPLight(gDisplayListHeads[1]++, gDynamicBuffer1.top + 8, 1);
                    gSPLight(gDisplayListHeads[1]++, gDynamicBuffer1.top, 2);
                    gDynamicBuffer1.top += 0x18;
                }
                renderDrawObject_TypeD(g);
                gSPNumLights(gDisplayListHeads[0]++, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE550, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE548, 2);
                gSPNumLights(gDisplayListHeads[1]++, 1);
                gSPLight(gDisplayListHeads[1]++, &D_800BE550, 1);
                gSPLight(gDisplayListHeads[1]++, &D_800BE548, 2);
                break;
            case 28:
            case 30:
                gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[id]);
                gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[id]);
                if (D_800E0650[id] != 0) {
                    func_800F90C0(id, gDynamicBuffer1.top);
                    gSPNumLights(gDisplayListHeads[0]++, 1);
                    gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top + 8, 1);
                    gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top, 2);
                    gSPLight(gDisplayListHeads[1]++, gDynamicBuffer1.top + 8, 1);
                    gSPLight(gDisplayListHeads[1]++, gDynamicBuffer1.top, 2);
                    gDynamicBuffer1.top += 0x18;
                }
                func_80015BCC(g);
                gSPNumLights(gDisplayListHeads[0]++, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE550, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE548, 2);
                gSPNumLights(gDisplayListHeads[1]++, 1);
                gSPLight(gDisplayListHeads[1]++, &D_800BE550, 1);
                gSPLight(gDisplayListHeads[1]++, &D_800BE548, 2);
                break;
        }
    }
}

s32 func_801632B8_ovl3(s32 arg0) {
    s32 temp = request_track_general(0x14, 4, 0xE);

    if (temp == -1) {
        utilPrintf("Player Shot Request Error![plyshot.cc]\n");
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

#ifdef MIPS_TO_C
/* FACTORY: 4/262, whole-function callee-saved permutation (same floor
 * class as the rest of this cluster). Replaces the PORT arm's unresolved
 * pc_sndpair_start/pc_sndpair_release wrappers with inline equivalents
 * (myPcSndpairRelease/myPcSndpairStart, mirroring the PORT-guarded
 * static helpers earlier in this file) calling the real func_800A77E8/
 * func_800A7870; also gives PcPlyshotFx a local-scope view for the same
 * reason as func_8015D3C8_ovl3. Known residual defect: the ROM calls
 * func_800A7870 directly inline at each site (jal func_800A7870) rather
 * than through a helper -- IDO did not inline this draft's static
 * wrapper, which is a real (not just register-shaped) source of the
 * diff and a good next lever for whoever picks this back up: inline the
 * pair-unwrap by hand at each of the three call sites. Queued for the
 * permuter. */
/* PORT: per-frame service for the spit-spray cloud created by
 * func_801634D4_ovl3 (anim 0x20041), from asm/nonmatchings/ovl3/plyshot/
 * func_801636A4_ovl3.s. Ends the effect once Kirby leaves the spit action
 * (gKirbyState.unk4 == 1 or action != 0x18); otherwise it sinks 5 units a
 * frame, ramps the growth counter D_800E9720 toward 30, and on a
 * water<->air transition of the parent swaps the looping sound pair
 * (tables D_8019684C/D_80196858, stage picked from the growth counter) and
 * the attached particle effect. The effect GObj's parameter block is
 * re-seated over the parent each frame, the spray hit record is run against
 * enemies with func_80155E58_ovl3 as the break callback -- one-shot gated
 * by the byte at D_8012E860+0x11 -- and anim script D_80191044_ovl3 runs on
 * the parent. The sound pair lives at the coroutine-stack address the init
 * parked in D_800E9FE0 (as_ptr, so no truncation), accessed through the
 * pc_sndpair_* helpers. */
static void myPcSndpairRelease(void *base) {
    extern void func_800A7870(void **, u16 *);
    u32 *p = base;
    void *h;
    u16 sid;

    if (p == NULL) {
        return;
    }
    h = (void *) (uintptr_t) p[0];
    sid = *(u16 *) (p + 1);
    func_800A7870(&h, &sid);
    p[0] = 0;
    *(u16 *) (p + 1) = 0;
}

static void myPcSndpairStart(s32 fgm, void *base) {
    extern void func_800A77E8(s32, s32 *, s32 *);
    u32 *p = base;
    void *h = NULL;
    u16 sid = 0;

    func_800A77E8(fgm, (s32 *) &h, (s32 *) &sid);
    if (p != NULL) {
        p[0] = (u32) (uintptr_t) h;
        *(u16 *) (p + 1) = sid;
    }
}

void func_801636A4_ovl3(s32 arg0) {
    extern s32 D_8019684C_ovl3[];
    extern s32 D_80196858_ovl3[];
    extern s32 D_80193920_ovl3[];
    extern char D_80191044_ovl3[];
    extern s32 func_80111A04(char *, s32);
    extern s32 func_80155E58_ovl3(void);
    extern s32 func_80155D50_ovl3(f32 *, s32, s32, s32);
    extern f32 D_80198540_ovl3[][8];
    extern void func_800B26D8(Vector *, s32, s32);
    extern s32 func_800A8234(s32, s32, s32);
    s32 id = omCurrentObj->objId;
    s32 parent = D_800E0D50[id];
    void *pair = D_800E9FE0[id].as_ptr;
    struct LocalPlyshotFx2 { u32 unk0; f32 unk4, unk8, unkC, unk10, unk14, unk18; };
    struct LocalPlyshotFx2 *fx;
    Vector sp44;

    if ((gKirbyState.unk4 == 1) || (gKirbyState.action != 0x18)) {
        myPcSndpairRelease(pair);
        /* Guarded on PC: the init reads its effect id through N64 struct
         * adjacency (D_80196848_ovl3+4) that the split data emission turns
         * into padding, so D_800EA520 can legitimately be 0 here. */
        if (D_800EA520[id] != 0) {
            func_800A22D4(D_800EA520[id]);
        }
        func_800B1900((u16) id);
        return;
    }
    gEntitiesNextPosYArray[id] -= 5.0f;
    if (D_800E9720[id] < 30) {
        D_800E9720[id]++;
    }
    {
        s32 parentWet = (D_800E8AE0[parent] & 6) ? 1 : 0;
        s32 selfWet = (D_800E8AE0[id] & 6) ? 1 : 0;

        D_800E8AE0[id] = D_800E8AE0[parent];
        if (parentWet != selfWet) {
            s32 wet = (D_800E8AE0[id] & 6) ? 1 : 0;
            s32 stage = 5;

            myPcSndpairRelease(pair);
            if (D_800EA520[id] != 0) {
                func_800A22D4(D_800EA520[id]);
            }
            D_800EA520[id] = func_800A8234(1, 1, D_8019684C_ovl3[wet * 2]);
            if (D_800E98E0[id] == 0) {
                s32 t = D_800E9720[id];

                if (t < 3) {
                    stage = 0;
                } else if (t < 6) {
                    stage = 1;
                } else if (t < 12) {
                    stage = 2;
                } else if (t < 18) {
                    stage = 3;
                } else {
                    stage = 4;
                }
                D_800E98E0[id] = 1;
            } else {
                D_800E98E0[id] = 0;
            }
            myPcSndpairStart(D_80196858_ovl3[stage * 2 + wet], pair);
        }
    }
    fx = NULL;
    if (D_800EA520[id] != 0) {
        fx = (struct LocalPlyshotFx2 *) ((GObj *) (uintptr_t) (u32) D_800EA520[id])->unk4C;
    }
    if (fx != NULL) {
        fx->unk4 = gEntitiesNextPosXArray[parent];
        fx->unk8 = gEntitiesNextPosYArray[parent] + 25.0f;
        fx->unkC = gEntitiesNextPosZArray[parent];
        func_800B26D8(&sp44, (s32) (uintptr_t) D_800DFBD0[parent][8], parent);
        fx->unk10 = sp44.x;
        fx->unk14 = sp44.y;
        fx->unk18 = sp44.z;
    }
    if (((u8 *) &D_8012E860)[0x11] == 0) {
        if (func_80155D50_ovl3(D_80198540_ovl3[id - 60], (s32) (uintptr_t) D_80193920_ovl3,
                               (s32) (uintptr_t) func_80155E58_ovl3, parent) != 0) {
            ((u8 *) &D_8012E860)[0x11] += 1;
        }
    }
    func_80111C4C(func_80111A04(D_80191044_ovl3, D_800E0D50[id]));
}
#elif defined(PORT)
/* PORT: per-frame service for the spit-spray cloud created by
 * func_801634D4_ovl3 (anim 0x20041), from asm/nonmatchings/ovl3/plyshot/
 * func_801636A4_ovl3.s. Ends the effect once Kirby leaves the spit action
 * (gKirbyState.unk4 == 1 or action != 0x18); otherwise it sinks 5 units a
 * frame, ramps the growth counter D_800E9720 toward 30, and on a
 * water<->air transition of the parent swaps the looping sound pair
 * (tables D_8019684C/D_80196858, stage picked from the growth counter) and
 * the attached particle effect. The effect GObj's parameter block is
 * re-seated over the parent each frame, the spray hit record is run against
 * enemies with func_80155E58_ovl3 as the break callback -- one-shot gated
 * by the byte at D_8012E860+0x11 -- and anim script D_80191044_ovl3 runs on
 * the parent. The sound pair lives at the coroutine-stack address the init
 * parked in D_800E9FE0 (as_ptr, so no truncation), accessed through the
 * pc_sndpair_* helpers. */
void func_801636A4_ovl3(s32 arg0) {
    extern s32 D_8019684C_ovl3[];
    extern s32 D_80196858_ovl3[];
    extern s32 D_80193920_ovl3[];
    extern char D_80191044_ovl3[];
    extern s32 func_80111A04(char *, s32);
    extern s32 func_80155E58_ovl3(void);
    extern s32 func_80155D50_ovl3(f32 *, s32, s32, s32);
    extern f32 D_80198540_ovl3[][8];
    extern void func_800B26D8(Vector *, s32, s32);
    extern s32 func_800A8234(s32, s32, s32);
    s32 id = omCurrentObj->objId;
    s32 parent = D_800E0D50[id];
    void *pair = D_800E9FE0[id].as_ptr;
    struct PcPlyshotFx *fx;
    Vector sp44;

    if ((gKirbyState.unk4 == 1) || (gKirbyState.action != 0x18)) {
        pc_sndpair_release(pair);
        /* Guarded on PC: the init reads its effect id through N64 struct
         * adjacency (D_80196848_ovl3+4) that the split data emission turns
         * into padding, so D_800EA520 can legitimately be 0 here. */
        if (D_800EA520[id] != 0) {
            func_800A22D4(D_800EA520[id]);
        }
        func_800B1900((u16) id);
        return;
    }
    gEntitiesNextPosYArray[id] -= 5.0f;
    if (D_800E9720[id] < 30) {
        D_800E9720[id]++;
    }
    {
        s32 parentWet = (D_800E8AE0[parent] & 6) ? 1 : 0;
        s32 selfWet = (D_800E8AE0[id] & 6) ? 1 : 0;

        D_800E8AE0[id] = D_800E8AE0[parent];
        if (parentWet != selfWet) {
            s32 wet = (D_800E8AE0[id] & 6) ? 1 : 0;
            s32 stage = 5;

            pc_sndpair_release(pair);
            if (D_800EA520[id] != 0) {
                func_800A22D4(D_800EA520[id]);
            }
            D_800EA520[id] = func_800A8234(1, 1, D_8019684C_ovl3[wet * 2]);
            if (D_800E98E0[id] == 0) {
                s32 t = D_800E9720[id];

                if (t < 3) {
                    stage = 0;
                } else if (t < 6) {
                    stage = 1;
                } else if (t < 12) {
                    stage = 2;
                } else if (t < 18) {
                    stage = 3;
                } else {
                    stage = 4;
                }
                D_800E98E0[id] = 1;
            } else {
                D_800E98E0[id] = 0;
            }
            pc_sndpair_start(D_80196858_ovl3[stage * 2 + wet], pair);
        }
    }
    fx = NULL;
    if (D_800EA520[id] != 0) {
        fx = (struct PcPlyshotFx *) ((GObj *) (uintptr_t) (u32) D_800EA520[id])->unk4C;
    }
    if (fx != NULL) {
        fx->unk4 = gEntitiesNextPosXArray[parent];
        fx->unk8 = gEntitiesNextPosYArray[parent] + 25.0f;
        fx->unkC = gEntitiesNextPosZArray[parent];
        func_800B26D8(&sp44, (s32) (uintptr_t) D_800DFBD0[parent][8], parent);
        fx->unk10 = sp44.x;
        fx->unk14 = sp44.y;
        fx->unk18 = sp44.z;
    }
    if (((u8 *) &D_8012E860)[0x11] == 0) {
        if (func_80155D50_ovl3(D_80198540_ovl3[id - 60], (s32) (uintptr_t) D_80193920_ovl3,
                               (s32) (uintptr_t) func_80155E58_ovl3, parent) != 0) {
            ((u8 *) &D_8012E860)[0x11] += 1;
        }
    }
    func_80111C4C(func_80111A04(D_80191044_ovl3, D_800E0D50[id]));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_801636A4_ovl3.s")
#endif

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
    s32 func_80155D50_ovl3(f32 *, s32, s32, s32);
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
extern s32 func_80155D50_ovl3(f32 *, s32, s32, s32);

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

#ifdef MIPS_TO_C
/* FACTORY: 2/329, whole-function callee-saved permutation (same floor class documented across this cluster). Queued for the permuter. */
/* PORT: the ability-star init coroutine (dropped-ability star), from
 * asm/nonmatchings/ovl3/plyshot/func_80164980_ovl3.s. Parks a 16x4-float
 * bg-break line buffer from this sleeping frame in D_800E9AA0 for
 * func_80164EA8_ovl3 (the decompiled service routine above), inherits the
 * parent's height/heading/level-slot/water state and velocities with a
 * decay toward zero (halved decay in water), and starts the per-kind
 * anim/fgm triple from the D_80196888 table (stride 3 words). */
void func_80164980_ovl3(s32 arg0) {
    extern s32 D_80196888_ovl3[];
    extern s32 D_8019688C_ovl3[];
    extern s32 D_80196890_ovl3[];
    extern f32 D_80197160_ovl3;
    extern void func_800B4954(s32);
    void func_80164EA8_ovl3(s32);
    void curObjSleepForever(void);
    s32 id = omCurrentObj->objId;
    s32 parent = D_800E0D50[id];
    s32 kind;
    f32 v;
    f32 lines[16][4];

    D_800E98E0[id] = 0;
    D_800EA6E0[id] = 0.0f;
    D_800E9AA0[id].as_ptr = lines;
    D_800DEF90[id] = func_800B4954;
    D_800DF150[id] = (void (*)(struct GObj *)) func_80164EA8_ovl3;
    func_800AECC0(D_800E09D0[parent]);
    func_800AED20(D_800E09D0[parent]);
    gEntitiesScaleXArray[id] = D_80197160_ovl3;
    gEntitiesScaleYArray[id] = D_80197160_ovl3;
    gEntitiesScaleZArray[id] = D_80197160_ovl3;
    gEntitiesNextPosYArray[id] = gEntitiesNextPosYArray[parent];
    gEntitiesAngleYArray[id] = gEntitiesAngleYArray[parent];
    D_800E5F90[id] = D_800E5F90[parent];
    D_800E8AE0[id] = D_800E8AE0[parent];
    D_800E64D0[id] = D_800E64D0[parent];
    v = D_800E64D0[parent];
    D_800E6850[id] = (v < 0.0f) ? -v : v;
    if (D_800E64D0[id] > 0.0f) {
        D_800E6690[id] = (D_800E8AE0[id] & 6) ? -0.125f : -0.25f;
    } else {
        D_800E6690[id] = (D_800E8AE0[id] & 6) ? 0.125f : 0.25f;
    }
    D_800E3210[id] = D_800E3210[parent];
    v = D_800E3210[parent];
    D_800E3C90[id] = (v < 0.0f) ? -v : v;
    if (D_800E3210[id] > 0.0f) {
        D_800E3750[id] = (D_800E8AE0[id] & 6) ? -0.5f : -1.0f;
    } else {
        D_800E3750[id] = (D_800E8AE0[id] & 6) ? 0.5f : 1.0f;
    }
    play_sound(0x17);
    kind = D_800EC2E0[id].as_u32;
    func_800A9864(D_80196888_ovl3[kind * 3], 0x22, 0x10);
    func_800AA018(D_80196890_ovl3[kind * 3]);
    func_800AA154(D_8019688C_ovl3[kind * 3]);
    D_800E98E0[id] += 1;
    curObjSleepForever();
}
#elif defined(PORT)
/* PORT: the ability-star init coroutine (dropped-ability star), from
 * asm/nonmatchings/ovl3/plyshot/func_80164980_ovl3.s. Parks a 16x4-float
 * bg-break line buffer from this sleeping frame in D_800E9AA0 for
 * func_80164EA8_ovl3 (the decompiled service routine above), inherits the
 * parent's height/heading/level-slot/water state and velocities with a
 * decay toward zero (halved decay in water), and starts the per-kind
 * anim/fgm triple from the D_80196888 table (stride 3 words). */
void func_80164980_ovl3(s32 arg0) {
    extern s32 D_80196888_ovl3[];
    extern s32 D_8019688C_ovl3[];
    extern s32 D_80196890_ovl3[];
    extern f32 D_80197160_ovl3;
    extern void func_800B4954(s32);
    void func_80164EA8_ovl3(s32);
    void curObjSleepForever(void);
    s32 id = omCurrentObj->objId;
    s32 parent = D_800E0D50[id];
    s32 kind;
    f32 v;
    f32 lines[16][4];

    D_800E98E0[id] = 0;
    D_800EA6E0[id] = 0.0f;
    D_800E9AA0[id].as_ptr = lines;
    D_800DEF90[id] = func_800B4954;
    D_800DF150[id] = (void (*)(struct GObj *)) func_80164EA8_ovl3;
    func_800AECC0(D_800E09D0[parent]);
    func_800AED20(D_800E09D0[parent]);
    gEntitiesScaleXArray[id] = D_80197160_ovl3;
    gEntitiesScaleYArray[id] = D_80197160_ovl3;
    gEntitiesScaleZArray[id] = D_80197160_ovl3;
    gEntitiesNextPosYArray[id] = gEntitiesNextPosYArray[parent];
    gEntitiesAngleYArray[id] = gEntitiesAngleYArray[parent];
    D_800E5F90[id] = D_800E5F90[parent];
    D_800E8AE0[id] = D_800E8AE0[parent];
    D_800E64D0[id] = D_800E64D0[parent];
    v = D_800E64D0[parent];
    D_800E6850[id] = (v < 0.0f) ? -v : v;
    if (D_800E64D0[id] > 0.0f) {
        D_800E6690[id] = (D_800E8AE0[id] & 6) ? -0.125f : -0.25f;
    } else {
        D_800E6690[id] = (D_800E8AE0[id] & 6) ? 0.125f : 0.25f;
    }
    D_800E3210[id] = D_800E3210[parent];
    v = D_800E3210[parent];
    D_800E3C90[id] = (v < 0.0f) ? -v : v;
    if (D_800E3210[id] > 0.0f) {
        D_800E3750[id] = (D_800E8AE0[id] & 6) ? -0.5f : -1.0f;
    } else {
        D_800E3750[id] = (D_800E8AE0[id] & 6) ? 0.5f : 1.0f;
    }
    play_sound(0x17);
    kind = D_800EC2E0[id].as_u32;
    func_800A9864(D_80196888_ovl3[kind * 3], 0x22, 0x10);
    func_800AA018(D_80196890_ovl3[kind * 3]);
    func_800AA154(D_8019688C_ovl3[kind * 3]);
    D_800E98E0[id] += 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80164980_ovl3.s")
#endif

#ifdef NON_MATCHING
extern char D_801915F8_ovl3[];
extern s32 *D_80194788_ovl3[];
extern f32 D_80197164_ovl3;
extern f32 D_80197168_ovl3;
extern f32 D_8019716C_ovl3;
extern f32 D_80197170_ovl3;
extern f32 D_801968B8_ovl3[];
extern f32 (*D_801968C8_ovl3[])[4];

void func_80164EA8_ovl3(s32 arg0) {
    f32 **h;
    s32 *p;
    f32 step;
    s32 func_80111A04(char *, s32);
    s32 func_80152070_ovl3(f32 (*)[4], f32 (*)[4], u8, f32);
    s32 func_80155D50_ovl3(f32 *, s32, s32, s32);

    if (D_800E98E0[omCurrentObj->objId] != 0) {
        func_800B1900((u16) omCurrentObj->objId);
        return;
    }
    h = (f32 **) func_80111A04(D_801915F8_ovl3, omCurrentObj->objId);
    h[8][6] = D_800EA6E0[omCurrentObj->objId] * D_801968B8_ovl3[D_800EC2E0[omCurrentObj->objId].as_s32];
    func_80111C4C((s32) h);
    p = D_80194788_ovl3[D_800EC2E0[omCurrentObj->objId].as_s32];
    func_80152070_ovl3(D_801968C8_ovl3[D_800EC2E0[omCurrentObj->objId].as_s32],
                       (f32 (*)[4]) (p[2] = D_800E9AA0[omCurrentObj->objId].as_s32), 0x10,
                       D_800EA6E0[omCurrentObj->objId]);
    func_80155D50_ovl3(D_80198540_ovl3[omCurrentObj->objId - 60], (s32) p, 0, omCurrentObj->objId);
    if (D_800EA6E0[omCurrentObj->objId] != 1.0f) {
        if (D_800E8AE0[omCurrentObj->objId] & 6) {
            step = D_80197164_ovl3;
        } else {
            step = D_80197168_ovl3;
        }
        D_800EA6E0[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId] + step;
        if (D_800EA6E0[omCurrentObj->objId] > 1.0f) {
            D_800EA6E0[omCurrentObj->objId] = 1.0f;
        }
    }
    if (D_800E64D0[omCurrentObj->objId] != 0.0f) {
        if (((D_800E6690[omCurrentObj->objId] > 0.0f) && (D_800E64D0[omCurrentObj->objId] >= 0.0f)) ||
            ((D_800E6690[omCurrentObj->objId] < 0.0f) && (D_800E64D0[omCurrentObj->objId] <= 0.0f))) {
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = D_8019716C_ovl3;
        }
    }
    if (D_800E3210[omCurrentObj->objId] != 0.0f) {
        if (((D_800E3750[omCurrentObj->objId] > 0.0f) && (D_800E3210[omCurrentObj->objId] >= 0.0f)) ||
            ((D_800E3750[omCurrentObj->objId] < 0.0f) && (D_800E3210[omCurrentObj->objId] <= 0.0f))) {
            D_800E3750[omCurrentObj->objId] = 0.0f;
            D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
            D_800E3C90[omCurrentObj->objId] = D_80197170_ovl3;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80164EA8_ovl3.s")
#endif

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

extern f32 D_80197178_ovl3;
void func_800B5064(GObj *);
void func_801657BC_ovl3(s32);
void func_800A9760(s32);

#ifdef NON_MATCHING
void func_80165504_ovl3(s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B5064;
    D_800DF150[omCurrentObj->objId] = func_801657BC_ovl3;
    D_800E0F10[omCurrentObj->objId] = 1;
    gEntitiesScaleXArray[omCurrentObj->objId] = D_80197178_ovl3;
    gEntitiesScaleYArray[omCurrentObj->objId] = D_80197178_ovl3;
    gEntitiesScaleZArray[omCurrentObj->objId] = D_80197178_ovl3;
    D_800E98E0[omCurrentObj->objId] = D_800E98E0[D_800E0D50[omCurrentObj->objId]];
    func_800A9864(0x20055, 0x22, 0x10);
    while (1) {
        if (D_800E98E0[omCurrentObj->objId] == 0) {
            func_800AA018(0x202C1);
        } else if (D_800E98E0[omCurrentObj->objId] == 1) {
            func_800A9760(0x20056);
            func_800AA018(0x202C2);
        } else if (D_800E98E0[omCurrentObj->objId] == 2) {
            func_800A9760(0x20057);
            func_800AA018(0x202C3);
        } else if (D_800E98E0[omCurrentObj->objId] == 3) {
            ohSleep(2);
            D_800E98E0[omCurrentObj->objId] = 4;
            ohSleep(5);
            break;
        }
        while (D_800E98E0[omCurrentObj->objId] == D_800E98E0[D_800E0D50[omCurrentObj->objId]]) {
            ohSleep(1);
        }
        D_800E98E0[omCurrentObj->objId] = D_800E98E0[D_800E0D50[omCurrentObj->objId]];
    }
    func_800B1900(((u16 *) omCurrentObj)[1]);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80165504_ovl3.s")
#endif

extern f32 D_801968D8_ovl3[];
extern s32 D_80191C00_ovl3[];
extern s32 D_801954F4_ovl3[];
extern f32 D_801953F4_ovl3[][4];
extern f32 D_80198700_ovl3[][4];
extern s32 D_80197DDC_ovl3[][8];
extern f32 D_80198540_ovl3[][8];
extern s32 func_80155D50_ovl3(f32 *, s32, s32, s32);
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

extern f32 D_8019717C_ovl3;
extern f32 D_80197180_ovl3;
extern f32 D_80198800_ovl3[];
void func_80165CD8_ovl3(struct GObj *);

void func_8016593C_ovl3(s32 arg0) {
    f32 temp = D_8019717C_ovl3;

    D_800DF150[omCurrentObj->objId] = func_80165CD8_ovl3;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    switch (D_800EC2E0[omCurrentObj->objId].as_s32) {
        case 0:
            D_800E0650[omCurrentObj->objId] = 1;
            D_800DEF90[omCurrentObj->objId] = func_800B5094;
            D_800E0F10[omCurrentObj->objId] = 0xE;
            func_800AECC0(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
            func_800AED20(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
            func_800A9864(0x2004C, 0x22, 0x10);
            func_800AA154(0x202AD);
            func_800B1900((u16) omCurrentObj->objId);
        case 1:
            D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]] + 40.0f;
            D_800EA8A0[omCurrentObj->objId] = 25.0f;
            D_800EAA60[omCurrentObj->objId] = -2.0f;
            D_800EAC20[omCurrentObj->objId] = D_80197180_ovl3;
            D_800EADE0[omCurrentObj->objId] = D_800EAC20[omCurrentObj->objId] / 15.0f;
            D_800E9720[omCurrentObj->objId] = 0x17;
            D_800E9560[omCurrentObj->objId] = 7;
            D_800EAFA0[omCurrentObj->objId] = 0.0f;
            func_8015488C_ovl3(omCurrentObj->objId, D_80198800_ovl3);
            gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[D_800E0D50[omCurrentObj->objId]];
            gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]];
            gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]];
            gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[D_800E0D50[omCurrentObj->objId]];
            play_sound(0x1C);
            func_800A9864(0x2004D, 0x22, 0x10);
            func_801230E8(0x202AF, 0x202B0, 0);
            curObjSleepForever();
            break;
    }
}

extern char D_801918A4_ovl3[];
extern char D_801918E8_ovl3[];
extern f32 D_80194C34_ovl3[][4];
extern f32 D_80194D34_ovl3[];
extern f32 D_80194D40_ovl3[][4];
extern s32 D_80194E40_ovl3[];
extern f32 D_80197184_ovl3;
extern void func_8011BF4C(f32 *, s32);
extern s32 func_80152124_ovl3(f32 (*)[4], f32 (*)[4], u8, f32, f32, f32);

void func_80165CD8_ovl3(struct GObj *arg0) {
    f32 **h;
    s32 func_80111A04(char *, s32);

    if (D_800EC2E0[omCurrentObj->objId].as_s32 == 0) {
        if (D_8012E860 == 0) {
            func_800B1900((u16) omCurrentObj->objId);
        }
        return;
    }
    if (D_800E9720[omCurrentObj->objId]-- == 0) {
        func_800B1900((u16) omCurrentObj->objId);
    } else {
        D_800EA6E0[omCurrentObj->objId] =
            (D_800EA8A0[omCurrentObj->objId] = D_800EAA60[omCurrentObj->objId] + D_800EA8A0[omCurrentObj->objId]) +
            D_800EA6E0[omCurrentObj->objId];
        if (D_800EAC20[omCurrentObj->objId] != 1.0f) {
            D_800EAC20[omCurrentObj->objId] = D_800EADE0[omCurrentObj->objId] + D_800EAC20[omCurrentObj->objId];
            if (D_800EAC20[omCurrentObj->objId] >= 1.0f) {
                D_800EAC20[omCurrentObj->objId] = 1.0f;
            }
        }
        h = (f32 **) func_80111A04(D_801918A4_ovl3, omCurrentObj->objId);
        h[8][3] = gEntitiesNextPosXArray[omCurrentObj->objId];
        h[8][4] = D_800EA6E0[omCurrentObj->objId];
        h[8][5] = gEntitiesNextPosZArray[omCurrentObj->objId];
        h[8][6] = D_800EAC20[omCurrentObj->objId] * 120.0f;
        func_80111C4C((s32) h);
        func_80152070_ovl3(D_80194C34_ovl3, D_80198700_ovl3, 0x10, D_800EAC20[omCurrentObj->objId]);
        D_80198540_ovl3[omCurrentObj->objId - 60][3] = D_80198540_ovl3[omCurrentObj->objId - 60][0];
        D_80198540_ovl3[omCurrentObj->objId - 60][4] = D_80198540_ovl3[omCurrentObj->objId - 60][1];
        D_80198540_ovl3[omCurrentObj->objId - 60][5] = D_80198540_ovl3[omCurrentObj->objId - 60][2];
        D_80198540_ovl3[omCurrentObj->objId - 60][0] = gEntitiesNextPosXArray[omCurrentObj->objId];
        D_80198540_ovl3[omCurrentObj->objId - 60][1] = D_800EA6E0[omCurrentObj->objId];
        D_80198540_ovl3[omCurrentObj->objId - 60][2] = gEntitiesNextPosZArray[omCurrentObj->objId];
        D_80198540_ovl3[omCurrentObj->objId - 60][6] = gEntitiesAngleYArray[omCurrentObj->objId];
        *(s32 *) &D_80198540_ovl3[omCurrentObj->objId - 60][7] = (s32) D_80194D34_ovl3;
        func_8011BF4C(D_80198540_ovl3[omCurrentObj->objId - 60], 0);
    }
    if (D_800E9560[omCurrentObj->objId] != 0) {
        D_800EAFA0[omCurrentObj->objId] = D_800EAFA0[omCurrentObj->objId] + D_80197184_ovl3;
        func_80111C4C(func_80168408_ovl3((s32) D_801918E8_ovl3, 0, D_800EAFA0[omCurrentObj->objId]));
        func_80152124_ovl3(D_80194D40_ovl3, D_80198700_ovl3, 0x10, D_800EAFA0[omCurrentObj->objId], 50.0f, 0.0f);
        func_80155D50_ovl3(D_80198800_ovl3, (s32) D_80194E40_ovl3, 0, omCurrentObj->objId);
        D_800E9560[omCurrentObj->objId]--;
    }
}

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

extern f32 D_8019718C_ovl3;
extern f32 D_80197190_ovl3;
extern char D_8019181C_ovl3[];
extern f32 D_80194E4C_ovl3[][4];
extern f32 D_80194F4C_ovl3[];

void func_80166210_ovl3(struct GObj *arg0) {
    Vector sp44;
    s32 parent;
    f32 **h;
    struct DObj *d;
    s32 func_80111A04(char *, s32);

    if (gKirbyState.abilityInUse == 0) {
        func_800B1900((u16) omCurrentObj->objId);
        return;
    }
    parent = D_800E0D50[omCurrentObj->objId];
    func_800B2340(&sp44, D_800DFBD0[parent][1], parent);
    gEntitiesNextPosXArray[omCurrentObj->objId] = sp44.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = sp44.y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = sp44.z;
    d = D_800DFBD0[parent][2];
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.x = d->angle.v.x;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.y = d->angle.v.y;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.z = d->angle.v.z;
    gEntitiesAngleXArray[omCurrentObj->objId] = gEntitiesAngleXArray[parent];
    gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[parent];
    gEntitiesAngleZArray[omCurrentObj->objId] = gEntitiesAngleZArray[parent];
    if (gKirbyState.unk40 != 1.0f) {
        gEntitiesScaleXArray[omCurrentObj->objId] = gKirbyState.unk40 * D_8019718C_ovl3;
        gEntitiesScaleYArray[omCurrentObj->objId] = gKirbyState.unk40 * D_8019718C_ovl3;
        gEntitiesScaleZArray[omCurrentObj->objId] = gKirbyState.unk40 * D_8019718C_ovl3;
        gKirbyState.unk40 = gKirbyState.unk40 + D_80197190_ovl3;
        if (gKirbyState.unk40 >= 1.0f) {
            gKirbyState.unk40 = 1.0f;
        }
    }
    h = (f32 **) func_80111A04(D_8019181C_ovl3, omCurrentObj->objId);
    h[8][6] = 44.0f * gKirbyState.unk40;
    h[8][4] = 37.5f * gKirbyState.unk40;
    func_80111C4C((s32) h);
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[parent];
    func_80152070_ovl3(D_80194E4C_ovl3, D_80198700_ovl3, 0x10, gKirbyState.unk40);
    if (func_80155D50_ovl3(D_80198540_ovl3[omCurrentObj->objId - 60], (s32) D_80194F4C_ovl3, 0, omCurrentObj->objId) != 0) {
        D_800E83E0[D_800E0D50[omCurrentObj->objId]] = 1;
    }
    gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[parent];
}

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

#ifdef MIPS_TO_C
/* FACTORY: 4/275, whole-function callee-saved permutation (same floor class documented across this cluster). Queued for the permuter. */
/* PORT: service routine for func_80166588_ovl3's charge-shot above, from
 * asm/nonmatchings/ovl3/plyshot/func_80166768_ovl3.s. Idles until the
 * charge state gKirbyState.unk44 reaches -1 (release); then scans enemy
 * tracks 14..59 for live kinds 0x17/0x18/0x1A that pass the ovl7 filter
 * func_8019F234_ovl7, insertion-sorts the three nearest by |horizontal
 * distance to Kirby| (func_800F9828(0, i); the 9999 sentinel means no
 * distance), back-fills missing slots with the nearest, and spawns
 * D_800E98E0[id]+1 (the reached charge stage) type-7 shots, giving each its
 * slot index, the parent, its target track in D_800E1ED0[t-112] and its
 * spread angle from D_801968F8 (mirrored against pi when facing left). */
void func_80166768_ovl3(s32 arg0) {
    extern s32 func_8019F234_ovl7(s32);
    extern f32 func_800F9828(s32, s32);
    extern f32 D_80197198_ovl3;
    extern f32 D_8019719C_ovl3;
    extern f32 D_801968F8_ovl3[];
    s32 id = omCurrentObj->objId;
    s32 targets[3];
    s32 i;
    s32 k;

    if (gKirbyState.abilityInUse == 0) {
        func_800B1900((u16) id);
        return;
    }
    if (gKirbyState.unk44 != -1) {
        return;
    }
    targets[0] = 0;
    targets[1] = 0;
    targets[2] = 0;
    for (i = 0xE; i != 0x3C; i++) {
        s32 kindv = D_800DD710[i];
        f32 b;

        if (kindv == -1) {
            continue;
        }
        if ((kindv != 0x17) && (kindv != 0x1A) && (kindv != 0x18)) {
            continue;
        }
        if (func_8019F234_ovl7(i) != 0) {
            continue;
        }
        if (func_800F9828(0, i) == D_80197198_ovl3) {
            continue;
        }
        if (targets[0] == 0) {
            targets[0] = i;
            continue;
        }
        b = func_800F9828(0, i);
        b = (b < 0.0f) ? -b : b;
        {
            f32 a = func_800F9828(0, targets[0]);

            a = (a < 0.0f) ? -a : a;
            if (b < a) {
                targets[2] = targets[1];
                targets[1] = targets[0];
                targets[0] = i;
            } else if (targets[1] == 0) {
                targets[1] = i;
            } else {
                a = func_800F9828(0, targets[1]);
                a = (a < 0.0f) ? -a : a;
                if (b < a) {
                    targets[2] = targets[1];
                    targets[1] = i;
                } else if (targets[2] == 0) {
                    targets[2] = i;
                } else {
                    a = func_800F9828(0, targets[2]);
                    a = (a < 0.0f) ? -a : a;
                    if (b < a) {
                        targets[2] = i;
                    }
                }
            }
        }
    }
    if (((targets[0] == 0) || (targets[1] == 0) || (targets[2] == 0)) && (targets[0] != 0)) {
        if (targets[1] == 0) {
            targets[2] = targets[0];
            targets[1] = targets[0];
        } else if (targets[2] == 0) {
            targets[2] = targets[0];
        }
    }
    D_800E98E0[id] += 1;
    for (k = 0; (k < D_800E98E0[id]) && (k < 3); k++) {
        s32 t = func_801632B8_ovl3(7);

        if (t != -1) {
            D_800EC2E0[t].as_u32 = k;
            D_800E0D50[t] = D_800E0D50[id];
            D_800E1ED0[t - 112] = targets[k];
            if (D_800E6A10[id] == 1.0f) {
                D_800EC660[t] = D_801968F8_ovl3[k];
            } else {
                D_800EC660[t] = D_8019719C_ovl3 - D_801968F8_ovl3[k];
            }
        }
    }
    func_800B1900((u16) id);
}
#elif defined(PORT)
/* PORT: service routine for func_80166588_ovl3's charge-shot above, from
 * asm/nonmatchings/ovl3/plyshot/func_80166768_ovl3.s. Idles until the
 * charge state gKirbyState.unk44 reaches -1 (release); then scans enemy
 * tracks 14..59 for live kinds 0x17/0x18/0x1A that pass the ovl7 filter
 * func_8019F234_ovl7, insertion-sorts the three nearest by |horizontal
 * distance to Kirby| (func_800F9828(0, i); the 9999 sentinel means no
 * distance), back-fills missing slots with the nearest, and spawns
 * D_800E98E0[id]+1 (the reached charge stage) type-7 shots, giving each its
 * slot index, the parent, its target track in D_800E1ED0[t-112] and its
 * spread angle from D_801968F8 (mirrored against pi when facing left). */
void func_80166768_ovl3(s32 arg0) {
    extern s32 func_8019F234_ovl7(s32);
    extern f32 func_800F9828(s32, s32);
    extern f32 D_80197198_ovl3;
    extern f32 D_8019719C_ovl3;
    extern f32 D_801968F8_ovl3[];
    s32 id = omCurrentObj->objId;
    s32 targets[3];
    s32 i;
    s32 k;

    if (gKirbyState.abilityInUse == 0) {
        func_800B1900((u16) id);
        return;
    }
    if (gKirbyState.unk44 != -1) {
        return;
    }
    targets[0] = 0;
    targets[1] = 0;
    targets[2] = 0;
    for (i = 0xE; i != 0x3C; i++) {
        s32 kindv = D_800DD710[i];
        f32 b;

        if (kindv == -1) {
            continue;
        }
        if ((kindv != 0x17) && (kindv != 0x1A) && (kindv != 0x18)) {
            continue;
        }
        if (func_8019F234_ovl7(i) != 0) {
            continue;
        }
        if (func_800F9828(0, i) == D_80197198_ovl3) {
            continue;
        }
        if (targets[0] == 0) {
            targets[0] = i;
            continue;
        }
        b = func_800F9828(0, i);
        b = (b < 0.0f) ? -b : b;
        {
            f32 a = func_800F9828(0, targets[0]);

            a = (a < 0.0f) ? -a : a;
            if (b < a) {
                targets[2] = targets[1];
                targets[1] = targets[0];
                targets[0] = i;
            } else if (targets[1] == 0) {
                targets[1] = i;
            } else {
                a = func_800F9828(0, targets[1]);
                a = (a < 0.0f) ? -a : a;
                if (b < a) {
                    targets[2] = targets[1];
                    targets[1] = i;
                } else if (targets[2] == 0) {
                    targets[2] = i;
                } else {
                    a = func_800F9828(0, targets[2]);
                    a = (a < 0.0f) ? -a : a;
                    if (b < a) {
                        targets[2] = i;
                    }
                }
            }
        }
    }
    if (((targets[0] == 0) || (targets[1] == 0) || (targets[2] == 0)) && (targets[0] != 0)) {
        if (targets[1] == 0) {
            targets[2] = targets[0];
            targets[1] = targets[0];
        } else if (targets[2] == 0) {
            targets[2] = targets[0];
        }
    }
    D_800E98E0[id] += 1;
    for (k = 0; (k < D_800E98E0[id]) && (k < 3); k++) {
        s32 t = func_801632B8_ovl3(7);

        if (t != -1) {
            D_800EC2E0[t].as_u32 = k;
            D_800E0D50[t] = D_800E0D50[id];
            D_800E1ED0[t - 112] = targets[k];
            if (D_800E6A10[id] == 1.0f) {
                D_800EC660[t] = D_801968F8_ovl3[k];
            } else {
                D_800EC660[t] = D_8019719C_ovl3 - D_801968F8_ovl3[k];
            }
        }
    }
    func_800B1900((u16) id);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80166768_ovl3.s")
#endif

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

extern char D_801919D8_ovl3[];
extern s32 D_80195164_ovl3[];
void func_800B26D8(Vector *, s32, s32);

void func_80166E2C_ovl3(s32 arg0) {
    Vector sp34;
    Vector sp28;
    s32 func_80111A04(char *, s32);

    func_800B2340(&sp34, D_800DFBD0[D_800E0D50[omCurrentObj->objId]][D_800E0F10[omCurrentObj->objId]],
                  D_800E0D50[omCurrentObj->objId]);
    gEntitiesNextPosXArray[omCurrentObj->objId] = sp34.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = sp34.y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = sp34.z;
    func_800B26D8(&sp28, D_800DFBD0[D_800E0D50[omCurrentObj->objId]][D_800E0F10[omCurrentObj->objId]],
                  D_800E0D50[omCurrentObj->objId]);
    gEntitiesAngleXArray[omCurrentObj->objId] = sp28.x;
    gEntitiesAngleYArray[omCurrentObj->objId] = sp28.y;
    gEntitiesAngleZArray[omCurrentObj->objId] = sp28.z;
    switch (D_800EC2E0[omCurrentObj->objId].as_s32) {
        case 0:
            if (gKirbyState.unk44 != 0) {
                return;
            }
            if (gKirbyState.action == 0x1A) {
                if (D_800EA520[omCurrentObj->objId] != 0) {
                    func_80111C4C(func_80111A04(D_801919D8_ovl3, omCurrentObj->objId));
                    gEntitiesAngleYArray[omCurrentObj->objId] =
                        gEntitiesAngleYArray[D_800E0D50[omCurrentObj->objId]];
                    func_80155D50_ovl3(D_80198540_ovl3[omCurrentObj->objId - 60], (s32) D_80195164_ovl3, 0,
                                       omCurrentObj->objId);
                    gEntitiesAngleYArray[omCurrentObj->objId] = sp28.y;
                } else {
                    D_80197DDC_ovl3[omCurrentObj->objId][0] = 0;
                }
                return;
            }
            if (D_800EA520[omCurrentObj->objId] != 0) {
                func_800A22D4(D_800EA520[omCurrentObj->objId]);
            }
            func_800B1900((u16) omCurrentObj->objId);
            return;
        case 5:
            if (gKirbyState.unk30 != 0) {
                if (D_800EA520[omCurrentObj->objId] != 0) {
                    func_800A22D4(D_800EA520[omCurrentObj->objId]);
                }
                func_800B1900((u16) omCurrentObj->objId);
            }
            return;
        default:
            if (gKirbyState.abilityInUse == 0) {
                if (D_800EA520[omCurrentObj->objId] != 0) {
                    func_800A22D4(D_800EA520[omCurrentObj->objId]);
                }
                func_800B1900((u16) omCurrentObj->objId);
            }
            return;
    }
}

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
extern s32 func_80155D50_ovl3(f32 *, s32, s32, s32);

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

#ifdef MIPS_TO_C
/* FACTORY: 10/300, whole-function callee-saved permutation (same floor class documented across this cluster). Two real fixes over the PORT arm: (1) the kind-1 prim-color write is a raw offset chain (D_800DFBD0[id][k]+0xC -> +0x80 -> +0x58, ONE u32 sw) matched straight off the asm rather than the PORT arm's ColorPack/MObj field-path guess, since struct DObj's own field at 0xC is ->prev, not this chain -- flagged unverified rather than given wrong names; (2) inlines the real N64 sound-pair release (func_800A7870) instead of the PC-only pc_sndpair_release wrapper. Queued for the permuter. */
/* PORT: service routine for func_80167D04_ovl3's shot above, from
 * asm/nonmatchings/ovl3/plyshot/func_80167F54_ovl3.s. Three kinds: kind 0
 * tracks the parent and runs hit record D_8019570C while the charge state
 * is idle; kind 1 blinks the prim color of DObjs [3]/[5]/[7] between the
 * two words at D_80196904/D_80196908 each frame (bytes stored r,g,b,a to
 * match the PORT ColorPack layout), scales DObj [1] by the charge scale
 * gKirbyState.unk40 and runs record D_80195600 with break lines
 * D_80195500; kind 2 aims the model once at the carry target in
 * D_800E1ED0[id-112] and replays anim script D_80191C68 scaled by DObj
 * [2]'s Y scale. Any other kind, or the ability ending, releases the
 * looping sound pair parked in D_800E9FE0 and destroys the track. */
void func_80167F54_ovl3(s32 arg0) {
    extern char D_80191CAC_ovl3[];
    extern char D_80191C68_ovl3[];
    extern s32 D_8019570C_ovl3[];
    extern s32 D_80195600_ovl3[];
    extern f32 D_80195500_ovl3[][4];
    extern s32 D_80196904_ovl3[];
    extern s32 D_80196908_ovl3[];
    extern s32 func_80111A04(char *, s32);
    extern s32 func_80155D50_ovl3(f32 *, s32, s32, s32);
    extern f32 D_80198540_ovl3[][8];
    extern f32 D_80198700_ovl3[][4];
    extern void func_800A7870(void **, u16 *);
    f32 atan2f(f32, f32);
    float sqrtf(float);
    s32 id = omCurrentObj->objId;
    u32 *pair = (u32 *) D_800E9FE0[id].as_ptr;

    if (gKirbyState.abilityInUse != 0) {
        switch (D_800EC2E0[id].as_u32) {
            case 0:
                if (gKirbyState.unk44 == 0) {
                    gEntitiesAngleYArray[id] = D_800E17D0[D_800E0D50[id]];
                    func_80111C4C(func_80111A04(D_80191CAC_ovl3, id));
                    func_80155D50_ovl3(D_80198540_ovl3[id - 60],
                                       (s32) (uintptr_t) D_8019570C_ovl3, 0, id);
                    return;
                }
                break;
            case 1: {
                /* Raw offset chain read straight off the asm (0xC, 0x80,
                 * 0x58) -- NOT struct DObj's own field at 0xC (that's
                 * ->prev), so D_800DFBD0[id][k] here is not a plain DObj*
                 * the way it is elsewhere in this file. Left as an
                 * unverified byte-offset walk rather than guessing wrong
                 * field names; the ROM stores the packed u32 in one `sw`,
                 * not four `sb`s like the PORT arm's ColorPack view. */
                u32 col;
                s32 k;

                D_800E98E0[id] ^= 1;
                col = (u32) ((D_800E98E0[id] == 0) ? D_80196904_ovl3[0] : D_80196908_ovl3[0]);
                for (k = 3; k <= 7; k += 2) {
                    u8 *p1 = *(u8 **) ((u8 *) D_800DFBD0[id][k] + 0xC);
                    u8 *p2 = *(u8 **) (p1 + 0x80);

                    *(u32 *) (p2 + 0x58) = col;
                }
                D_800DFBD0[id][1]->scale.v.x = gKirbyState.unk40;
                D_800DFBD0[id][1]->scale.v.y = gKirbyState.unk40;
                D_800DFBD0[id][1]->scale.v.z = gKirbyState.unk40;
                gEntitiesAngleYArray[id] = D_800E17D0[D_800E0D50[id]];
                func_80152124_ovl3(D_80195500_ovl3, D_80198700_ovl3, 0x10, gKirbyState.unk40,
                                   20.0f, 0.0f);
                func_80155D50_ovl3(D_80198540_ovl3[id - 60], (s32) (uintptr_t) D_80195600_ovl3,
                                   0, id);
                gEntitiesAngleYArray[id] = 0.0f;
                return;
            }
            case 2: {
                struct DObj *d2;

                if (D_800E98E0[id] == 0) {
                    s32 target = D_800E1ED0[id - 112];
                    f32 dx = gEntitiesNextPosXArray[target] - gEntitiesNextPosXArray[id];
                    f32 dy = gEntitiesNextPosYArray[target] - gEntitiesNextPosYArray[id];
                    f32 dz = gEntitiesNextPosZArray[target] - gEntitiesNextPosZArray[id];

                    gEntitiesAngleYArray[id] = atan2f(dx, dz);
                    gEntitiesAngleXArray[id] = -atan2f(dy, sqrtf((dx * dx) + (dz * dz)));
                    gEntitiesAngleZArray[id] = 0.0f;
                    D_800E98E0[id] += 1;
                }
                d2 = D_800DFBD0[id][2];
                func_8016854C_ovl3((s32) (uintptr_t) D_80191C68_ovl3, (s32) (uintptr_t) d2,
                                   d2->scale.v.y);
                return;
            }
            default:
                break;
        }
    }
    if (pair != NULL && pair[0] != 0) {
        void *handle = (void *) pair[0];
        u16 sid = *(u16 *) (pair + 1);

        func_800A7870(&handle, &sid);
        pair[0] = 0;
        *(u16 *) (pair + 1) = 0;
    }
    func_800B1900((u16) id);
}
#elif defined(PORT)
/* PORT: service routine for func_80167D04_ovl3's shot above, from
 * asm/nonmatchings/ovl3/plyshot/func_80167F54_ovl3.s. Three kinds: kind 0
 * tracks the parent and runs hit record D_8019570C while the charge state
 * is idle; kind 1 blinks the prim color of DObjs [3]/[5]/[7] between the
 * two words at D_80196904/D_80196908 each frame (bytes stored r,g,b,a to
 * match the PORT ColorPack layout), scales DObj [1] by the charge scale
 * gKirbyState.unk40 and runs record D_80195600 with break lines
 * D_80195500; kind 2 aims the model once at the carry target in
 * D_800E1ED0[id-112] and replays anim script D_80191C68 scaled by DObj
 * [2]'s Y scale. Any other kind, or the ability ending, releases the
 * looping sound pair parked in D_800E9FE0 and destroys the track. */
void func_80167F54_ovl3(s32 arg0) {
    extern char D_80191CAC_ovl3[];
    extern char D_80191C68_ovl3[];
    extern s32 D_8019570C_ovl3[];
    extern s32 D_80195600_ovl3[];
    extern f32 D_80195500_ovl3[][4];
    extern s32 D_80196904_ovl3[];
    extern s32 D_80196908_ovl3[];
    extern s32 func_80111A04(char *, s32);
    extern s32 func_80155D50_ovl3(f32 *, s32, s32, s32);
    extern f32 D_80198540_ovl3[][8];
    extern f32 D_80198700_ovl3[][4];
    f32 atan2f(f32, f32);
    float sqrtf(float);
    s32 id = omCurrentObj->objId;
    void *pair = D_800E9FE0[id].as_ptr;

    if (gKirbyState.abilityInUse != 0) {
        switch (D_800EC2E0[id].as_u32) {
            case 0:
                if (gKirbyState.unk44 == 0) {
                    gEntitiesAngleYArray[id] = D_800E17D0[D_800E0D50[id]];
                    func_80111C4C(func_80111A04(D_80191CAC_ovl3, id));
                    func_80155D50_ovl3(D_80198540_ovl3[id - 60],
                                       (s32) (uintptr_t) D_8019570C_ovl3, 0, id);
                    return;
                }
                break;
            case 1: {
                u32 col;
                s32 k;

                D_800E98E0[id] ^= 1;
                col = (u32) ((D_800E98E0[id] == 0) ? D_80196904_ovl3[0] : D_80196908_ovl3[0]);
                for (k = 3; k <= 7; k += 2) {
                    struct MObj *m = D_800DFBD0[id][k]->mobjList;

                    m->texture.primColor.color.r = (u8) (col >> 24);
                    m->texture.primColor.color.g = (u8) (col >> 16);
                    m->texture.primColor.color.b = (u8) (col >> 8);
                    m->texture.primColor.color.a = (u8) col;
                }
                D_800DFBD0[id][1]->scale.v.x = gKirbyState.unk40;
                D_800DFBD0[id][1]->scale.v.y = gKirbyState.unk40;
                D_800DFBD0[id][1]->scale.v.z = gKirbyState.unk40;
                gEntitiesAngleYArray[id] = D_800E17D0[D_800E0D50[id]];
                func_80152124_ovl3(D_80195500_ovl3, D_80198700_ovl3, 0x10, gKirbyState.unk40,
                                   20.0f, 0.0f);
                func_80155D50_ovl3(D_80198540_ovl3[id - 60], (s32) (uintptr_t) D_80195600_ovl3,
                                   0, id);
                gEntitiesAngleYArray[id] = 0.0f;
                return;
            }
            case 2: {
                struct DObj *d2;

                if (D_800E98E0[id] == 0) {
                    s32 target = D_800E1ED0[id - 112];
                    f32 dx = gEntitiesNextPosXArray[target] - gEntitiesNextPosXArray[id];
                    f32 dy = gEntitiesNextPosYArray[target] - gEntitiesNextPosYArray[id];
                    f32 dz = gEntitiesNextPosZArray[target] - gEntitiesNextPosZArray[id];

                    gEntitiesAngleYArray[id] = atan2f(dx, dz);
                    gEntitiesAngleXArray[id] = -atan2f(dy, sqrtf((dx * dx) + (dz * dz)));
                    gEntitiesAngleZArray[id] = 0.0f;
                    D_800E98E0[id] += 1;
                }
                d2 = D_800DFBD0[id][2];
                func_8016854C_ovl3((s32) (uintptr_t) D_80191C68_ovl3, (s32) (uintptr_t) d2,
                                   d2->scale.v.y);
                return;
            }
            default:
                break;
        }
    }
    if (pair != NULL && *(u32 *) pair != 0) {
        pc_sndpair_release(pair);
    }
    func_800B1900((u16) id);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80167F54_ovl3.s")
#endif

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

#ifdef MIPS_TO_C
/* FACTORY: 2/910, whole-function callee-saved permutation plus a real structural gap: the ROM's frame (-0x168) is far larger than this draft's (-0x20), meaning the ROM inlines the light pre/post setup at each of the 8 switch cases rather than calling shared helpers -- pc_shot_draw_lights_pre/post would need to be inlined by hand at each case for a tighter match. Queued for the permuter. */
/* PORT: the second shot render dispatcher, from asm/nonmatchings/ovl3/
 * plyshot/func_8016858C_ovl3.s (jump table jtbl_801971BC_ovl3). Identical in
 * shape to func_8016264C_ovl3 above -- same render-kind cases 19..30, same
 * segment-4 setup and dynamic-light block per display list head -- with one
 * difference: when the object's level slot D_800E5F90 is -1 the dynamic
 * light color is sampled from the PARENT track (D_800E0D50) instead of the
 * object itself. */
static void pc_shot_draw_lights_pre(GObj *g, s32 heads) {
    s32 id = g->objId;

    gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[id]);
    if (heads > 1) {
        gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[id]);
    }
    if (D_800E0650[id] != 0) {
        if (D_800E5F90[id] == -1) {
            func_800F90C0(D_800E0D50[id], gDynamicBuffer1.top);
        } else {
            func_800F90C0(id, gDynamicBuffer1.top);
        }
        gSPNumLights(gDisplayListHeads[0]++, 1);
        gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top + 8, 1);
        gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top, 2);
        if (heads > 1) {
            gSPLight(gDisplayListHeads[1]++, gDynamicBuffer1.top + 8, 1);
            gSPLight(gDisplayListHeads[1]++, gDynamicBuffer1.top, 2);
        }
        gDynamicBuffer1.top += 0x18;
    }
}

static void pc_shot_draw_lights_post(s32 heads) {
    gSPNumLights(gDisplayListHeads[0]++, 1);
    gSPLight(gDisplayListHeads[0]++, &D_800BE550, 1);
    gSPLight(gDisplayListHeads[0]++, &D_800BE548, 2);
    if (heads > 1) {
        gSPNumLights(gDisplayListHeads[1]++, 1);
        gSPLight(gDisplayListHeads[1]++, &D_800BE550, 1);
        gSPLight(gDisplayListHeads[1]++, &D_800BE548, 2);
    }
}

void func_8016858C_ovl3(GObj *g) {
    if (!(D_800DD8D0[g->objId] & 0x40)) {
        switch (func_800AB0F4(g)) {
            case 19:
                pc_shot_draw_lights_pre(g, 1);
                func_800AB120(g);
                pc_shot_draw_lights_post(1);
                break;
            case 21:
                pc_shot_draw_lights_pre(g, 1);
                func_800AB1F0(g);
                pc_shot_draw_lights_post(1);
                break;
            case 23:
            case 25:
                pc_shot_draw_lights_pre(g, 1);
                renderDrawDObjFromGObj(g);
                pc_shot_draw_lights_post(1);
                break;
            case 27:
            case 29:
                pc_shot_draw_lights_pre(g, 1);
                func_8001585C(g);
                pc_shot_draw_lights_post(1);
                break;
            case 20:
                pc_shot_draw_lights_pre(g, 2);
                func_800AB174(g);
                pc_shot_draw_lights_post(2);
                break;
            case 22:
                pc_shot_draw_lights_pre(g, 2);
                func_800AB244(g);
                pc_shot_draw_lights_post(2);
                break;
            case 24:
            case 26:
                pc_shot_draw_lights_pre(g, 2);
                renderDrawObject_TypeD(g);
                pc_shot_draw_lights_post(2);
                break;
            case 28:
            case 30:
                pc_shot_draw_lights_pre(g, 2);
                func_80015BCC(g);
                pc_shot_draw_lights_post(2);
                break;
        }
    }
}
#elif defined(PORT)
/* PORT: the second shot render dispatcher, from asm/nonmatchings/ovl3/
 * plyshot/func_8016858C_ovl3.s (jump table jtbl_801971BC_ovl3). Identical in
 * shape to func_8016264C_ovl3 above -- same render-kind cases 19..30, same
 * segment-4 setup and dynamic-light block per display list head -- with one
 * difference: when the object's level slot D_800E5F90 is -1 the dynamic
 * light color is sampled from the PARENT track (D_800E0D50) instead of the
 * object itself. */
static void pc_shot_draw_lights_pre(GObj *g, s32 heads) {
    s32 id = g->objId;

    gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[id]);
    if (heads > 1) {
        gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[id]);
    }
    if (D_800E0650[id] != 0) {
        if (D_800E5F90[id] == -1) {
            func_800F90C0(D_800E0D50[id], gDynamicBuffer1.top);
        } else {
            func_800F90C0(id, gDynamicBuffer1.top);
        }
        gSPNumLights(gDisplayListHeads[0]++, 1);
        gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top + 8, 1);
        gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top, 2);
        if (heads > 1) {
            gSPLight(gDisplayListHeads[1]++, gDynamicBuffer1.top + 8, 1);
            gSPLight(gDisplayListHeads[1]++, gDynamicBuffer1.top, 2);
        }
        gDynamicBuffer1.top += 0x18;
    }
}

static void pc_shot_draw_lights_post(s32 heads) {
    gSPNumLights(gDisplayListHeads[0]++, 1);
    gSPLight(gDisplayListHeads[0]++, &D_800BE550, 1);
    gSPLight(gDisplayListHeads[0]++, &D_800BE548, 2);
    if (heads > 1) {
        gSPNumLights(gDisplayListHeads[1]++, 1);
        gSPLight(gDisplayListHeads[1]++, &D_800BE550, 1);
        gSPLight(gDisplayListHeads[1]++, &D_800BE548, 2);
    }
}

void func_8016858C_ovl3(GObj *g) {
    if (!(D_800DD8D0[g->objId] & 0x40)) {
        switch (func_800AB0F4(g)) {
            case 19:
                pc_shot_draw_lights_pre(g, 1);
                func_800AB120(g);
                pc_shot_draw_lights_post(1);
                break;
            case 21:
                pc_shot_draw_lights_pre(g, 1);
                func_800AB1F0(g);
                pc_shot_draw_lights_post(1);
                break;
            case 23:
            case 25:
                pc_shot_draw_lights_pre(g, 1);
                renderDrawDObjFromGObj(g);
                pc_shot_draw_lights_post(1);
                break;
            case 27:
            case 29:
                pc_shot_draw_lights_pre(g, 1);
                func_8001585C(g);
                pc_shot_draw_lights_post(1);
                break;
            case 20:
                pc_shot_draw_lights_pre(g, 2);
                func_800AB174(g);
                pc_shot_draw_lights_post(2);
                break;
            case 22:
                pc_shot_draw_lights_pre(g, 2);
                func_800AB244(g);
                pc_shot_draw_lights_post(2);
                break;
            case 24:
            case 26:
                pc_shot_draw_lights_pre(g, 2);
                renderDrawObject_TypeD(g);
                pc_shot_draw_lights_post(2);
                break;
            case 28:
            case 30:
                pc_shot_draw_lights_pre(g, 2);
                func_80015BCC(g);
                pc_shot_draw_lights_post(2);
                break;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8016858C_ovl3.s")
#endif

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

