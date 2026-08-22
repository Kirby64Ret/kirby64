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

extern f32 D_801E5688_ovl17;
extern f32 D_801E56C4_ovl17;
extern f32 D_801E568C_ovl17;
extern f32 D_801E5690_ovl17;
extern f32 D_801E5694_ovl17;
extern f32 D_801E5698_ovl17;

struct Ovl17AnimInfo {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 filler4[8];
    s32 unkC;
    u8 filler10[0x10];
};

struct Ovl17AnimCmd {
    u8 filler0[0x14];
    f32 unk14;
};

struct Ovl17AnimObj {
    u8 filler0[8];
    struct Ovl17AnimCmd *unk8;
};

s32 func_80110150(struct Ovl17AnimInfo *);
s32 func_80110B00(struct Ovl17AnimInfo *);
void func_80111550(u32);
struct Ovl17AnimObj *func_80111C88(s32 *, u32);
void func_80111C4C(struct Ovl17AnimObj *);
struct Ovl17AnimObj *func_80111A04(u32, u32);
void func_80111ECC(struct Ovl17AnimObj *);
struct Ovl17AnimObj *func_801A0464_ovl7(void);
void func_801A3E80_ovl7(struct GObj *);
extern f32 D_800D715C;
extern f32 D_800D7160;
extern f32 D_800D7164;
extern f32 D_800D7168;
extern f32 D_800D716C;
extern f32 D_800D7170;

void func_801E1960_ovl17(void);
void func_800B4924(struct GObj *);
void func_801E4DD4_ovl17(struct GObj *);
void func_800A2300(void);
void func_800A8100(s32, s32, s32, struct DObj *);
void func_800B19F4(s32, u32);
void func_800FD570(s32, s32, f32, f32, f32);
void func_8019D958_ovl7(u16);
s32 func_801E220C_ovl17(void);
s32 func_801E14B0_ovl17(void);
void func_801E2320_ovl17(void);
void func_801E1424_ovl17(struct GObj *);
void func_801E3324_ovl17(Vector *);
void func_801E109C_ovl17(struct GObj *);
void func_801E15A4_ovl17(struct GObj *);

#ifdef NON_MATCHING
void func_801E0D00_ovl17(struct GObj *arg0) {
    s32 sp3C;
    s32 sp38;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp20;
    f32 temp_f0;

    if (D_800E7880[omCurrentObj->objId] == 1) {
        func_801E15A4_ovl17();
    }
    D_800DEF90[omCurrentObj->objId] = func_800B4924;
    D_800DF150[omCurrentObj->objId] = func_801E109C_ovl17;
    D_800E8920[omCurrentObj->objId] = 0;
    if (D_800E7880[omCurrentObj->objId] == 0) {
        sp3C = random_soft_s32_range(0x1E);
    } else {
        sp3C = random_soft_s32_range(0x14);
    }
    sp38 = (s32) (50.0f / ((f32) sp3C + 20.0f));
    if (D_800E7880[omCurrentObj->objId] == 2) {
        sp38 = (s32) ((f32) sp38 * 1.1f);
    }
    func_800A9864(0x100BC, 0x23, 0x10);
    D_800DDA90[omCurrentObj->objId] = 0x25;
    func_800AA018(0x105C4);
    sp2C = D_800EA6E0[omCurrentObj->objId];
    sp30 = D_800EA8A0[omCurrentObj->objId];
    sp34 = D_800EAA60[omCurrentObj->objId];
    lbvector_Normalize((Vector *) &sp2C);
    sp20 = (f32) sp38;
    lbvector_Scale((Vector *) &sp2C, sp20);
    temp_f0 = sp2C * 15.0f;
    D_800E3050[omCurrentObj->objId] = temp_f0;
    D_800E3590[omCurrentObj->objId] = (sp2C * -0.3f) * sp20;
    if (temp_f0 < 0.0f) {
        D_800E3AD0[omCurrentObj->objId] = -temp_f0;
    } else {
        D_800E3AD0[omCurrentObj->objId] = temp_f0;
    }
    temp_f0 = sp30 * 15.0f;
    D_800E3210[omCurrentObj->objId] = temp_f0;
    D_800E3750[omCurrentObj->objId] = (sp30 * -0.3f) * sp20;
    if (temp_f0 < 0.0f) {
        D_800E3C90[omCurrentObj->objId] = -temp_f0;
    } else {
        D_800E3C90[omCurrentObj->objId] = temp_f0;
    }
    temp_f0 = sp34 * 15.0f;
    D_800E33D0[omCurrentObj->objId] = temp_f0;
    D_800E3910[omCurrentObj->objId] = (sp34 * -0.3f) * sp20;
    if (temp_f0 < 0.0f) {
        D_800E3E50[omCurrentObj->objId] = -temp_f0;
    } else {
        D_800E3E50[omCurrentObj->objId] = temp_f0;
    }
    D_800E98E0[omCurrentObj->objId] = 0;
    ohSleep(sp3C + 0x14);
    func_801E1170_ovl17(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E0D00_ovl17.s")
#endif
void func_801E109C_ovl17(struct GObj *arg0) {
    f32 temp_f0;
    f32 temp_f2;
    f32 temp_f14;

    D_800E98E0[omCurrentObj->objId] += 1;
    temp_f0 = gEntitiesNextPosZArray[omCurrentObj->objId];
    temp_f2 = gEntitiesNextPosXArray[omCurrentObj->objId];
    temp_f14 = gEntitiesNextPosYArray[omCurrentObj->objId];
    if ((D_800D716C - 120.0f) < sqrtf((temp_f0 * temp_f0) + ((temp_f2 * temp_f2) + (temp_f14 * temp_f14)))) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E1170_ovl17);
    }
}

struct Ovl17Blk24 {
    s32 unk0[9];
};

extern struct Ovl17Blk24 D_801E5154_ovl17;
extern struct Ovl17Blk24 D_801E5710_ovl17;
extern s32 D_801CA28C_ovl7;
f32 random_soft_f32(void);
void func_800FD874(s32, f32, f32, f32, f32, f32, f32);
void func_800AF408(void);

void func_801E1170_ovl17(struct GObj *arg0) {
    struct UnkStruct800E1B50 *temp_s1;
    u32 temp_a0;

    temp_s1 = D_800E1B50[omCurrentObj->objId];
    gEntitiesAngleXArray[omCurrentObj->objId] = random_soft_f32() * 6.2831855f;
    gEntitiesAngleYArray[omCurrentObj->objId] = random_soft_f32() * 6.2831855f;
    gEntitiesAngleZArray[omCurrentObj->objId] = random_soft_f32() * 6.2831855f;
    func_800FD874(temp_s1->unk94->unk18, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId], gEntitiesAngleXArray[omCurrentObj->objId], gEntitiesAngleYArray[omCurrentObj->objId], gEntitiesAngleZArray[omCurrentObj->objId]);
    if (omCurrentObj->objId & 1) {
        temp_a0 = temp_s1->unk94->unk1C;
        if (temp_a0 != 0x80000000) {
            play_sound(temp_a0);
        }
    }
    D_800DDA90[omCurrentObj->objId] = 0x23;
    D_801E5710_ovl17 = D_801E5154_ovl17;
    temp_s1->unk8C = &D_801CA28C_ovl7;
    temp_s1->unk90 = 0;
    D_800E0D50[omCurrentObj->objId] = -1;
    D_800E7B20[omCurrentObj->objId] = 9999.0f;
    D_800DF150[omCurrentObj->objId] = func_801E1424_ovl17;
    func_800AFBB4(0, omCurrentObj);
    func_800AF408();
    D_800E9560[omCurrentObj->objId] = 0;
    while (D_800E9560[omCurrentObj->objId] < 0x11) {
        ohSleep(1);
        D_800E9560[omCurrentObj->objId] += 1;
    }
    ohSleep(2);
    func_8019D958_ovl7((u16) omCurrentObj->objId);
}

void func_801E1424_ovl17(struct GObj *arg0) {
    struct UnkStruct800E1B50 *temp_a0;
    s32 temp_v1;

    temp_v1 = D_800E9560[omCurrentObj->objId];
    temp_a0 = D_800E1B50[omCurrentObj->objId];
    if (temp_v1 < 0x11) {
        ((struct Ovl17AnimObj *) temp_a0->unk8C)->unk8->unk14 = (((f32) temp_v1 + 1.0f) / 17.0f) * 45.0f;
        func_801E14B0_ovl17();
    }
}

#ifdef NON_MATCHING
/* 3/61: objId must live in $v0 and move into $a0 in the jal delay slot; IDO
 * coalesces it into $a0. Swept (all 3/61): `void *` prototype + cast at the
 * call (the guide's coalescing lever), inlining omCurrentObj->objId at one or
 * both uses, s32 vs u32. Dropping/moving the leading temp gives 6/61 (frame). */
s32 func_801E14B0_ovl17(void) {
    u32 temp_v0;
    struct Ovl17AnimInfo sp2C;
    struct UnkStruct800E1B50 *temp_s0;

    temp_v0 = omCurrentObj->objId;
    temp_s0 = D_800E1B50[temp_v0];
    if (temp_s0->unk8C == NULL) {
        return 0;
    }
    func_80111550(temp_v0);
    func_80111ECC(func_80111C88(temp_s0->unk8C, omCurrentObj->objId));
    if (func_80110150(&sp2C) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp2C.unk2;
        temp_s0->unk43 = sp2C.unk3;
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
        temp_s0->unk43 = 0;
    }
    if (temp_s0->unk90 != 0) {
        func_80111C4C(func_80111A04(temp_s0->unk90, omCurrentObj->objId));
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E14B0_ovl17.s")
#endif
#ifdef MIPS_TO_C
/* FACTORY: 18/187, &omCurrentObj hoisted into a saved register.  The ROM loads
   the GObj POINTER once into $a3 at entry and re-materialises it after calls;
   ours keeps the ADDRESS of omCurrentObj in $s2 for the whole body, which
   renames most instructions.  Caching the pointer in a local (LEVERS 4) does
   not move it -- IDO still hoists the address.
   Two things were fixed here and are worth keeping:
   - the file-scope declaration was the K&R `void func_801E15A4_ovl17();`, but
     the listing homes $a0 at 0x78($sp) on entry and reloads it for the
     func_801A3E80_ovl7 tail call, so this takes `struct GObj *`.  Converted
     under the QUALITY BAR a-d protocol: match count unchanged, TU size exact,
     worth 6 diffs.
   - `u8 unused[8]` restores the ROM's 0x78 frame (we were 8 short).  Note this
     contradicts the ovl9_15 result where a dead array was dropped: IDO keeps
     the filler here, where the function already has an array local (skip[3]),
     and drops it in functions whose locals are all scalars. */
/* PORT: nine-way missile volley opener, from asm/nonmatchings/ovl17/
 * ovl17_3/func_801E15A4_ovl17.s. Plays the windup anim, rolls three
 * indices to skip, then for each of the 9 muzzle slots asks ovl7 for a
 * missile track (kind 0 for the first five, kind 2 after) and aims it
 * along the D_801E5430 direction table (3 floats per slot) rotated by the
 * boss steering basis (func_801E328C). Ends by flagging ent->unk40 and
 * tail-calling func_801A3E80_ovl7. On N64 that tail call reuses the
 * caller's leftover $a0 -- always omCurrentObj here (every caller is a
 * process main), which is what the PC arm passes explicitly. */
void func_801E15A4_ovl17(struct GObj *arg0) {
    s32 func_801ACD48_ovl7(s32, s32);
    void func_801E328C_ovl17(Vector *);
    void func_801E1890_ovl17(struct GObj *);
    extern f32 D_801E5430_ovl17[];
    struct UnkStruct800E1B50 *ent;
    Vector dir;
    s32 skip[3];
    s32 i;
    s32 track;
    u8 unused[8]; /* the ROM reserves 8 bytes here that it never touches */

    D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_800B4924;
    ent = D_800E1B50[omCurrentObj->objId];
    D_800DF150[omCurrentObj->objId] = func_801E1890_ovl17;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9864(0x100BB, 0x23, 0x10);
    D_800DDA90[omCurrentObj->objId] = 0x25;
    func_800AA018(0x105C3);
    func_801E1960_ovl17();
    ohSleep(0xD);
    skip[0] = random_soft_s32_range(5);
    skip[1] = random_soft_s32_range(4) + 5;
    skip[2] = random_soft_s32_range(0xA);
    D_800E9560[omCurrentObj->objId] = 0;
    while ((i = D_800E9560[omCurrentObj->objId]) < 9) {
        if ((i != skip[0]) && (i != skip[1]) && (i != skip[2])) {
            if (i < 5) {
                track = func_801ACD48_ovl7(0x3C, 0);
            } else {
                track = func_801ACD48_ovl7(0x3C, 2);
            }
            if (track != 0) {
                i = D_800E9560[omCurrentObj->objId];
                dir.x = D_801E5430_ovl17[i * 3 + 0];
                dir.y = D_801E5430_ovl17[i * 3 + 1];
                dir.z = D_801E5430_ovl17[i * 3 + 2];
                func_801E328C_ovl17(&dir);
                D_800EA6E0[track] = dir.x;
                D_800EA8A0[track] = dir.y;
                D_800EAA60[track] = dir.z;
            }
        }
        D_800E9560[omCurrentObj->objId] += 1;
    }
    ent->unk40 = 1;
    func_801A3E80_ovl7(arg0);
}
#elif defined(PORT)
/* PORT: nine-way missile volley opener, from asm/nonmatchings/ovl17/
 * ovl17_3/func_801E15A4_ovl17.s. Plays the windup anim, rolls three
 * indices to skip, then for each of the 9 muzzle slots asks ovl7 for a
 * missile track (kind 0 for the first five, kind 2 after) and aims it
 * along the D_801E5430 direction table (3 floats per slot) rotated by the
 * boss steering basis (func_801E328C). Ends by flagging ent->unk40 and
 * tail-calling func_801A3E80_ovl7. On N64 that tail call reuses the
 * caller's leftover $a0 -- always omCurrentObj here (every caller is a
 * process main), which is what the PC arm passes explicitly. */
void func_801E15A4_ovl17(void) {
    s32 func_801ACD48_ovl7(s32, s32);
    void func_801E328C_ovl17(Vector *);
    void func_801E1890_ovl17(struct GObj *);
    extern f32 D_801E5430_ovl17[];
    struct UnkStruct800E1B50 *ent;
    Vector dir;
    s32 skip[3];
    s32 i;
    s32 track;

    D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_800B4924;
    ent = D_800E1B50[omCurrentObj->objId];
    D_800DF150[omCurrentObj->objId] = func_801E1890_ovl17;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9864(0x100BB, 0x23, 0x10);
    D_800DDA90[omCurrentObj->objId] = 0x25;
    func_800AA018(0x105C3);
    func_801E1960_ovl17();
    ohSleep(0xD);
    skip[0] = random_soft_s32_range(5);
    skip[1] = random_soft_s32_range(4) + 5;
    skip[2] = random_soft_s32_range(0xA);
    D_800E9560[omCurrentObj->objId] = 0;
    while ((i = D_800E9560[omCurrentObj->objId]) < 9) {
        if ((i != skip[0]) && (i != skip[1]) && (i != skip[2])) {
            if (i < 5) {
                track = func_801ACD48_ovl7(0x3C, 0);
            } else {
                track = func_801ACD48_ovl7(0x3C, 2);
            }
            if (track != 0) {
                i = D_800E9560[omCurrentObj->objId];
                dir.x = D_801E5430_ovl17[i * 3 + 0];
                dir.y = D_801E5430_ovl17[i * 3 + 1];
                dir.z = D_801E5430_ovl17[i * 3 + 2];
                func_801E328C_ovl17(&dir);
                D_800EA6E0[track] = dir.x;
                D_800EA8A0[track] = dir.y;
                D_800EAA60[track] = dir.z;
            }
        }
        D_800E9560[omCurrentObj->objId] += 1;
    }
    ent->unk40 = 1;
    func_801A3E80_ovl7(omCurrentObj);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E15A4_ovl17.s")
#endif

void func_801E1890_ovl17(struct GObj *arg0) {
    f32 var_f12;
    f32 var_f2;
    f32 var_f2_2;

    if (D_800EAC20[0] < 0.0f) {
        var_f2 = -D_800EAC20[0];
    } else {
        var_f2 = D_800EAC20[0];
    }
    var_f12 = D_800D7170 * 0.5f;
    if (var_f12 <= var_f2) {
        func_801E1960_ovl17();
        var_f12 = D_800D7170 * 0.5f;
    }
    if (D_800EADE0[0] < 0.0f) {
        var_f2_2 = -D_800EADE0[0];
    } else {
        var_f2_2 = D_800EADE0[0];
    }
    if (var_f12 <= var_f2_2) {
        func_801E1960_ovl17();
    }
}

void func_801E1960_ovl17(void) {
    f32 sp34;
    Vector sp28;
    f32 temp_f0;
    f32 var_f2;

    func_801E3324_ovl17(&sp28);
    D_800EA6E0[omCurrentObj->objId] = sp28.x;
    D_800EA8A0[omCurrentObj->objId] = sp28.y;
    D_800EAA60[omCurrentObj->objId] = sp28.z;
    if (D_800EAC20[0] < 0.0f) {
        var_f2 = -D_800EAC20[0];
    } else {
        var_f2 = D_800EAC20[0];
    }
    if ((D_800D7170 * 0.75f) <= var_f2) {
        goto big;
    }
    if (D_800EADE0[0] < 0.0f) {
        var_f2 = -D_800EADE0[0];
    } else {
        var_f2 = D_800EADE0[0];
    }
    if ((D_800D7170 * 0.75f) <= var_f2) {
big:
        sp34 = 31.199999f;
    } else {
        sp34 = 24.0f;
    }
    lbvector_Normalize(&sp28);
    temp_f0 = sp28.x * sp34;
    D_800E3050[omCurrentObj->objId] = sp28.x * 24.0f;
    D_800E3590[omCurrentObj->objId] = sp28.x * 0.5f;
    if (temp_f0 < 0.0f) {
        D_800E3AD0[omCurrentObj->objId] = -temp_f0;
    } else {
        D_800E3AD0[omCurrentObj->objId] = temp_f0;
    }
    temp_f0 = sp28.y * sp34;
    D_800E3210[omCurrentObj->objId] = sp28.y * 24.0f;
    D_800E3750[omCurrentObj->objId] = sp28.y * 0.5f;
    if (temp_f0 < 0.0f) {
        D_800E3C90[omCurrentObj->objId] = -temp_f0;
    } else {
        D_800E3C90[omCurrentObj->objId] = temp_f0;
    }
    temp_f0 = sp28.z * sp34;
    D_800E33D0[omCurrentObj->objId] = sp28.z * 24.0f;
    D_800E3910[omCurrentObj->objId] = sp28.z * 0.5f;
    if (temp_f0 < 0.0f) {
        D_800E3E50[omCurrentObj->objId] = -temp_f0;
    } else {
        D_800E3E50[omCurrentObj->objId] = temp_f0;
    }
    D_800EAC20[omCurrentObj->objId] = D_800EA6E0[D_800E0D50[D_800E0D50[omCurrentObj->objId]]];
    D_800EADE0[omCurrentObj->objId] = D_800EA8A0[D_800E0D50[D_800E0D50[omCurrentObj->objId]]];
    D_800EAFA0[omCurrentObj->objId] = D_800EAA60[D_800E0D50[D_800E0D50[omCurrentObj->objId]]];
}

#ifdef MIPS_TO_C
/* FACTORY: 4/262, frame 0x50 vs the ROM's 0x48 and the opposite hoisting
   decision: the ROM keeps &omCurrentObj in $s0 for the whole body (saving it
   at 0x18), ours re-materialises it into $t6 at each use and saves nothing.
   Sibling of func_801E1CB4_ovl17 in this file, which has the same pair of
   defects -- one fix should serve both. */
/* PORT: homing-missile launch state, from asm/nonmatchings/ovl17/ovl17_3/
 * func_801E1CB4_ovl17.s. Copies the parent boss's (D_800E0D50) orientation
 * into this track, runs the shared aim pass func_801E23E0 (a bare pragma
 * on N64; still a weak abort stub on PC until it is ported), spawns the
 * muzzle-flash generator (effect 6/3, kind 3 or 6 by D_800E7880) and seeds
 * its emitter with the missile's position and angles -- through the PORT
 * Ovl1Generator view of ovl1_2_2.c (emitter ptr at +0x58, vectors at
 * +0x8/+0x14); the N64 code dereferences the generator unchecked, the PC
 * arm guards NULL -- then launches along local +Z at speed 15 (accel 0.5,
 * cap |15*dir|), sleeps 45 frames and hands the track to
 * func_801A3E80_ovl7. D_800E98E0 keeps the generator as a truncated
 * 32-bit address (established pointer-in-u32 idiom, non-PIE sub-4GiB). */
struct PcOvl17Emitter {
    /* LP64 view of Ovl1Emitter (ovl1_2_2.c PORT arm) */
    struct PcOvl17Emitter *next;
    Vector unk4;
    Vector unk10;
};
struct PcOvl17Gen {
    /* LP64 view of Ovl1Generator: emitter pointer at +0x58 */
    u8 pad0[0x58];
    struct PcOvl17Emitter *xf;
};

void func_801E1CB4_ovl17(struct GObj *arg0) {
    struct PcOvl17Gen *func_800A8234(s32, s32, s32);
    void func_801E23E0_ovl17(void);
    void func_801E343C_ovl17(Vector *);
    void func_801E2170_ovl17(struct GObj *);
    struct UnkStruct800E1B50 *ent;
    struct PcOvl17Gen *gen;
    Vector dir;
    s32 objId;
    s32 parent;
    f32 t;

    objId = omCurrentObj->objId;
    D_800DEF90[objId] = (void (*)(s32)) func_800B4924;
    ent = D_800E1B50[objId];
    D_800DF150[objId] = func_801E2170_ovl17;
    D_800E8920[objId] = 0;
    parent = D_800E0D50[objId];
    gEntitiesAngleXArray[objId] = gEntitiesAngleXArray[parent];
    gEntitiesAngleYArray[objId] = gEntitiesAngleYArray[parent];
    gEntitiesAngleZArray[objId] = gEntitiesAngleZArray[parent];
    D_800EA6E0[objId] = D_800EA6E0[parent];
    D_800EA8A0[objId] = D_800EA8A0[parent];
    D_800EAA60[objId] = D_800EAA60[parent];
    func_801E23E0_ovl17();
    if (D_800E7880[objId] == 0) {
        gen = func_800A8234(6, 3, 3);
    } else {
        gen = func_800A8234(6, 3, 6);
    }
    D_800E98E0[objId] = (s32) (uintptr_t) gen;
    if ((gen != NULL) && (gen->xf != NULL)) {
        gen->xf->unk4.x = gEntitiesNextPosXArray[objId];
        gen->xf->unk4.y = gEntitiesNextPosYArray[objId];
        gen->xf->unk4.z = gEntitiesNextPosZArray[objId];
        gen->xf->unk10.x = gEntitiesAngleXArray[objId];
        gen->xf->unk10.y = gEntitiesAngleYArray[objId];
        gen->xf->unk10.z = gEntitiesAngleZArray[objId];
    }
    setProcessMain(gEntityGObjProcessArray5[objId], procMainStub);
    func_800AFBB4(0, omCurrentObj);
    D_800DDA90[objId] = 0x25;
    func_801E343C_ovl17(&dir);
    t = dir.x * 15.0f;
    D_800E3050[objId] = t;
    D_800E3590[objId] = dir.x * 0.5f;
    D_800E3AD0[objId] = (t < 0.0f) ? -t : t;
    t = dir.y * 15.0f;
    D_800E3210[objId] = t;
    D_800E3750[objId] = dir.y * 0.5f;
    D_800E3C90[objId] = (t < 0.0f) ? -t : t;
    t = dir.z * 15.0f;
    D_800E33D0[objId] = t;
    D_800E3910[objId] = dir.z * 0.5f;
    D_800E3E50[objId] = (t < 0.0f) ? -t : t;
    ohSleep(0x2D);
    ent->unk40 = 1;
    func_801A3E80_ovl7(arg0);
}
#elif defined(PORT)
/* PORT: homing-missile launch state, from asm/nonmatchings/ovl17/ovl17_3/
 * func_801E1CB4_ovl17.s. Copies the parent boss's (D_800E0D50) orientation
 * into this track, runs the shared aim pass func_801E23E0 (a bare pragma
 * on N64; still a weak abort stub on PC until it is ported), spawns the
 * muzzle-flash generator (effect 6/3, kind 3 or 6 by D_800E7880) and seeds
 * its emitter with the missile's position and angles -- through the PORT
 * Ovl1Generator view of ovl1_2_2.c (emitter ptr at +0x58, vectors at
 * +0x8/+0x14); the N64 code dereferences the generator unchecked, the PC
 * arm guards NULL -- then launches along local +Z at speed 15 (accel 0.5,
 * cap |15*dir|), sleeps 45 frames and hands the track to
 * func_801A3E80_ovl7. D_800E98E0 keeps the generator as a truncated
 * 32-bit address (established pointer-in-u32 idiom, non-PIE sub-4GiB). */
struct PcOvl17Emitter {
    /* LP64 view of Ovl1Emitter (ovl1_2_2.c PORT arm) */
    struct PcOvl17Emitter *next;
    Vector unk4;
    Vector unk10;
};
struct PcOvl17Gen {
    /* LP64 view of Ovl1Generator: emitter pointer at +0x58 */
    u8 pad0[0x58];
    struct PcOvl17Emitter *xf;
};

void func_801E1CB4_ovl17(struct GObj *arg0) {
    struct PcOvl17Gen *func_800A8234(s32, s32, s32);
    void func_801E23E0_ovl17(void);
    void func_801E343C_ovl17(Vector *);
    void func_801E2170_ovl17(struct GObj *);
    struct UnkStruct800E1B50 *ent;
    struct PcOvl17Gen *gen;
    Vector dir;
    s32 objId;
    s32 parent;
    f32 t;

    objId = omCurrentObj->objId;
    D_800DEF90[objId] = (void (*)(s32)) func_800B4924;
    ent = D_800E1B50[objId];
    D_800DF150[objId] = func_801E2170_ovl17;
    D_800E8920[objId] = 0;
    parent = D_800E0D50[objId];
    gEntitiesAngleXArray[objId] = gEntitiesAngleXArray[parent];
    gEntitiesAngleYArray[objId] = gEntitiesAngleYArray[parent];
    gEntitiesAngleZArray[objId] = gEntitiesAngleZArray[parent];
    D_800EA6E0[objId] = D_800EA6E0[parent];
    D_800EA8A0[objId] = D_800EA8A0[parent];
    D_800EAA60[objId] = D_800EAA60[parent];
    func_801E23E0_ovl17();
    if (D_800E7880[objId] == 0) {
        gen = func_800A8234(6, 3, 3);
    } else {
        gen = func_800A8234(6, 3, 6);
    }
    D_800E98E0[objId] = (s32) (uintptr_t) gen;
    if ((gen != NULL) && (gen->xf != NULL)) {
        gen->xf->unk4.x = gEntitiesNextPosXArray[objId];
        gen->xf->unk4.y = gEntitiesNextPosYArray[objId];
        gen->xf->unk4.z = gEntitiesNextPosZArray[objId];
        gen->xf->unk10.x = gEntitiesAngleXArray[objId];
        gen->xf->unk10.y = gEntitiesAngleYArray[objId];
        gen->xf->unk10.z = gEntitiesAngleZArray[objId];
    }
    setProcessMain(gEntityGObjProcessArray5[objId], procMainStub);
    func_800AFBB4(0, omCurrentObj);
    D_800DDA90[objId] = 0x25;
    func_801E343C_ovl17(&dir);
    t = dir.x * 15.0f;
    D_800E3050[objId] = t;
    D_800E3590[objId] = dir.x * 0.5f;
    D_800E3AD0[objId] = (t < 0.0f) ? -t : t;
    t = dir.y * 15.0f;
    D_800E3210[objId] = t;
    D_800E3750[objId] = dir.y * 0.5f;
    D_800E3C90[objId] = (t < 0.0f) ? -t : t;
    t = dir.z * 15.0f;
    D_800E33D0[objId] = t;
    D_800E3910[objId] = dir.z * 0.5f;
    D_800E3E50[objId] = (t < 0.0f) ? -t : t;
    ohSleep(0x2D);
    ent->unk40 = 1;
    func_801A3E80_ovl7(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E49B8_ovl17.s")
#endif

void func_801E2170_ovl17(struct GObj *arg0) {
    struct UnkStruct800E1B50 *temp_v1;

    temp_v1 = D_800E1B50[omCurrentObj->objId];
    if (gEntityFuncListIDArray[D_800E0D50[omCurrentObj->objId]] == 4) {
        temp_v1->unk43 = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A3E80_ovl7);
        return;
    }
    func_801E220C_ovl17();
}

s32 func_801E220C_ovl17(void) {
    u8 sp4C[4];
    struct UnkStruct800E1B50 *sp48;
    struct Ovl17AnimInfo sp28;
    s32 temp_v1;

    sp48 = D_800E1B50[omCurrentObj->objId];
    func_80111ECC(func_801A0464_ovl7());
    if (sp48->unk8C == NULL) {
        return 0;
    }
    if (func_80110150(&sp28) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp28.unk2;
        sp48->unk43 = sp28.unk3;
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
        sp48->unk43 = 0;
    }
    temp_v1 = D_800E83E0[omCurrentObj->objId];
    if ((temp_v1 == 1) || (temp_v1 == 2)) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E2320_ovl17);
        return 1;
    }
    return 0;
}

void func_801E2320_ovl17(void) {
    struct UnkStruct800E1B50 *sp24;
    u32 temp_a0;

    sp24 = D_800E1B50[omCurrentObj->objId];
    func_800A2300();
    func_800FD570(0, sp24->unk94->unk18, 0.0f, 0.0f, 0.0f);
    temp_a0 = sp24->unk94->unk1C;
    if (temp_a0 != 0x80000000) {
        play_sound(temp_a0);
    }
    D_800DF150[omCurrentObj->objId] = NULL;
    func_800B19F4(0x7D, omCurrentObj->objId);
    ohSleep(1);
    func_8019D958_ovl7((u16) omCurrentObj->objId);
}

#ifdef MIPS_TO_C
/* FACTORY: 13/387.  The first 10 instructions are exact.  Two residues:
   the record spill sits at 0x54 where the ROM uses 0x50 (our locals block is
   4 bytes larger, and it is NOT the anim record -- a 0x1C local view in place
   of the file-scope 0x20 struct Ovl17AnimInfo does not move it), and the
   unk8C guard comes out as a branch-likely early-out where the ROM branches
   forward around the whole body.  Writing the body wrapped in
   `if (ent->unk8C != NULL) { ... }` instead of an early return is inert --
   IDO re-forms the early-out either way, so LEVERS 5/6 do not reach this
   one from the source side. */
/* PORT: missile launch aim pass, from asm/nonmatchings/ovl17/ovl17_3/
 * func_801E23E0_ovl17.s. Builds the target basis (Kirby's rotation, entity
 * slot 0, flipped pi about Y) and the missile track's current basis,
 * pitches the forward row 90 degrees about the right row, then takes two
 * steering steps toward the target forward -- each clamped to 20 degrees
 * (0.34906587) with a 0.5-degree dead zone -- first about the rebuilt up
 * row (row2 x row0), then about the rebuilt right row (row1 x row2).
 * Finally re-orthonormalizes and decomposes back to the D_800EA6E0/8A0/
 * AA60 Euler angles and entity angle arrays, exactly like ovl17_2's
 * func_801DEA5C. No arguments; operates on omCurrentObj's track. */
void func_801E23E0_ovl17(void) {
    f32 asinf(f32);
    f32 atan2f(f32, f32);
    Vector *vec3_normalized_cross_product(Vector *, Vector *, Vector *);
    Mat4 cur;
    Mat4 tmp;
    Mat4 tgt;
    Vector a;
    Vector b;
    Vector axis;
    Vector cr;
    Vector ang;
    f32 angle;
    s32 objId;

    guMtxIdentF(cur);
    HS64_MkRotationMtxF(tmp, 0.0f, 3.1415927f, 0.0f);
    guMtxCatF(cur, tmp, cur);
    HS64_MkRotationMtxF(tmp, D_800EA6E0[0], D_800EA8A0[0], D_800EAA60[0]);
    guMtxCatF(cur, tmp, tgt);
    guMtxIdentF(cur);
    objId = omCurrentObj->objId;
    HS64_MkRotationMtxF(tmp, D_800EA6E0[objId], D_800EA8A0[objId], D_800EAA60[objId]);
    guMtxCatF(cur, tmp, cur);

    /* pitch the forward row (row2) 90 degrees about the right row (row0) */
    a.x = cur[2][0]; a.y = cur[2][1]; a.z = cur[2][2];
    b.x = cur[0][0]; b.y = cur[0][1]; b.z = cur[0][2];
    func_800191F8(&a, &b, 1.5707964f);
    cur[2][0] = a.x; cur[2][1] = a.y; cur[2][2] = a.z;

    /* rebuild the up row: row1 = row2 x row0; steer row2 toward the
     * target forward about it, at most 20 degrees */
    vec3_normalized_cross_product(&a, &b, &cr);
    axis = cr;
    cur[1][0] = cr.x; cur[1][1] = cr.y; cur[1][2] = cr.z;
    a.x = cur[2][0]; a.y = cur[2][1]; a.z = cur[2][2];
    b.x = tgt[2][0]; b.y = tgt[2][1]; b.z = tgt[2][2];
    cr.x = cr.y = cr.z = 0.0f;
    angle = lbvector_Angle(&a, &b);
    if (angle > 0.34906587f) {
        angle = 0.34906587f;
    }
    if (angle > 0.008726646f) {
        vec3_normalized_cross_product(&a, &b, &cr);
        if ((cr.x != 0.0f) || (cr.y != 0.0f) || (cr.z != 0.0f)) {
            if (lbvector_Angle(&axis, &cr) > 1.5707964f) {
                angle *= -1.0f;
            }
            func_800191F8(&a, &axis, angle);
            cur[2][0] = a.x; cur[2][1] = a.y; cur[2][2] = a.z;
        }
    }

    /* rebuild the right row: row0 = row1 x row2; second steering step
     * about it */
    a.x = cur[1][0]; a.y = cur[1][1]; a.z = cur[1][2];
    b.x = cur[2][0]; b.y = cur[2][1]; b.z = cur[2][2];
    vec3_normalized_cross_product(&a, &b, &cr);
    axis = cr;
    cur[0][0] = cr.x; cur[0][1] = cr.y; cur[0][2] = cr.z;
    a.x = cur[2][0]; a.y = cur[2][1]; a.z = cur[2][2];
    b.x = tgt[2][0]; b.y = tgt[2][1]; b.z = tgt[2][2];
    cr.x = cr.y = cr.z = 0.0f;
    angle = lbvector_Angle(&a, &b);
    if (angle > 0.34906587f) {
        angle = 0.34906587f;
    }
    if (angle > 0.008726646f) {
        vec3_normalized_cross_product(&a, &b, &cr);
        if ((cr.x != 0.0f) || (cr.y != 0.0f) || (cr.z != 0.0f)) {
            if (lbvector_Angle(&axis, &cr) > 1.5707964f) {
                angle *= -1.0f;
            }
            func_800191F8(&a, &axis, angle);
            cur[2][0] = a.x; cur[2][1] = a.y; cur[2][2] = a.z;
        }
    }

    /* re-orthonormalize: row0 = row1 x row2, then row1 = row2 x row0 */
    a.x = cur[1][0]; a.y = cur[1][1]; a.z = cur[1][2];
    b.x = cur[2][0]; b.y = cur[2][1]; b.z = cur[2][2];
    vec3_normalized_cross_product(&a, &b, &cr);
    b = cr;
    cur[0][0] = cr.x; cur[0][1] = cr.y; cur[0][2] = cr.z;
    a.x = cur[2][0]; a.y = cur[2][1]; a.z = cur[2][2];
    vec3_normalized_cross_product(&a, &b, &cr);
    cur[1][0] = cr.x; cur[1][1] = cr.y; cur[1][2] = cr.z;

    /* Euler decomposition, gimbal-lock special-cased */
    ang.y = asinf(-cur[0][2]);
    if ((ang.y == 1.5707964f) || (ang.y == -1.5707964f)) {
        if (ang.y == 1.5707964f) {
            ang.x = atan2f(cur[1][0], cur[1][1]);
        } else {
            ang.x = atan2f(-cur[1][0], cur[1][1]);
        }
        ang.z = 0.0f;
    } else {
        ang.x = atan2f(cur[1][2], cur[2][2]);
        ang.z = atan2f(cur[0][1], cur[0][0]);
    }
    utilWrapRotation(&ang);
    D_800EA6E0[objId] = ang.x;
    D_800EA8A0[objId] = ang.y;
    D_800EAA60[objId] = ang.z;
    gEntitiesAngleXArray[objId] = D_800EA6E0[objId];
    gEntitiesAngleYArray[objId] = D_800EA8A0[objId];
    gEntitiesAngleZArray[objId] = D_800EAA60[objId];
}
#elif defined(PORT)
/* PORT: missile launch aim pass, from asm/nonmatchings/ovl17/ovl17_3/
 * func_801E23E0_ovl17.s. Builds the target basis (Kirby's rotation, entity
 * slot 0, flipped pi about Y) and the missile track's current basis,
 * pitches the forward row 90 degrees about the right row, then takes two
 * steering steps toward the target forward -- each clamped to 20 degrees
 * (0.34906587) with a 0.5-degree dead zone -- first about the rebuilt up
 * row (row2 x row0), then about the rebuilt right row (row1 x row2).
 * Finally re-orthonormalizes and decomposes back to the D_800EA6E0/8A0/
 * AA60 Euler angles and entity angle arrays, exactly like ovl17_2's
 * func_801DEA5C. No arguments; operates on omCurrentObj's track. */
void func_801E23E0_ovl17(void) {
    f32 asinf(f32);
    f32 atan2f(f32, f32);
    Vector *vec3_normalized_cross_product(Vector *, Vector *, Vector *);
    Mat4 cur;
    Mat4 tmp;
    Mat4 tgt;
    Vector a;
    Vector b;
    Vector axis;
    Vector cr;
    Vector ang;
    f32 angle;
    s32 objId;

    guMtxIdentF(cur);
    HS64_MkRotationMtxF(tmp, 0.0f, 3.1415927f, 0.0f);
    guMtxCatF(cur, tmp, cur);
    HS64_MkRotationMtxF(tmp, D_800EA6E0[0], D_800EA8A0[0], D_800EAA60[0]);
    guMtxCatF(cur, tmp, tgt);
    guMtxIdentF(cur);
    objId = omCurrentObj->objId;
    HS64_MkRotationMtxF(tmp, D_800EA6E0[objId], D_800EA8A0[objId], D_800EAA60[objId]);
    guMtxCatF(cur, tmp, cur);

    /* pitch the forward row (row2) 90 degrees about the right row (row0) */
    a.x = cur[2][0]; a.y = cur[2][1]; a.z = cur[2][2];
    b.x = cur[0][0]; b.y = cur[0][1]; b.z = cur[0][2];
    func_800191F8(&a, &b, 1.5707964f);
    cur[2][0] = a.x; cur[2][1] = a.y; cur[2][2] = a.z;

    /* rebuild the up row: row1 = row2 x row0; steer row2 toward the
     * target forward about it, at most 20 degrees */
    vec3_normalized_cross_product(&a, &b, &cr);
    axis = cr;
    cur[1][0] = cr.x; cur[1][1] = cr.y; cur[1][2] = cr.z;
    a.x = cur[2][0]; a.y = cur[2][1]; a.z = cur[2][2];
    b.x = tgt[2][0]; b.y = tgt[2][1]; b.z = tgt[2][2];
    cr.x = cr.y = cr.z = 0.0f;
    angle = lbvector_Angle(&a, &b);
    if (angle > 0.34906587f) {
        angle = 0.34906587f;
    }
    if (angle > 0.008726646f) {
        vec3_normalized_cross_product(&a, &b, &cr);
        if ((cr.x != 0.0f) || (cr.y != 0.0f) || (cr.z != 0.0f)) {
            if (lbvector_Angle(&axis, &cr) > 1.5707964f) {
                angle *= -1.0f;
            }
            func_800191F8(&a, &axis, angle);
            cur[2][0] = a.x; cur[2][1] = a.y; cur[2][2] = a.z;
        }
    }

    /* rebuild the right row: row0 = row1 x row2; second steering step
     * about it */
    a.x = cur[1][0]; a.y = cur[1][1]; a.z = cur[1][2];
    b.x = cur[2][0]; b.y = cur[2][1]; b.z = cur[2][2];
    vec3_normalized_cross_product(&a, &b, &cr);
    axis = cr;
    cur[0][0] = cr.x; cur[0][1] = cr.y; cur[0][2] = cr.z;
    a.x = cur[2][0]; a.y = cur[2][1]; a.z = cur[2][2];
    b.x = tgt[2][0]; b.y = tgt[2][1]; b.z = tgt[2][2];
    cr.x = cr.y = cr.z = 0.0f;
    angle = lbvector_Angle(&a, &b);
    if (angle > 0.34906587f) {
        angle = 0.34906587f;
    }
    if (angle > 0.008726646f) {
        vec3_normalized_cross_product(&a, &b, &cr);
        if ((cr.x != 0.0f) || (cr.y != 0.0f) || (cr.z != 0.0f)) {
            if (lbvector_Angle(&axis, &cr) > 1.5707964f) {
                angle *= -1.0f;
            }
            func_800191F8(&a, &axis, angle);
            cur[2][0] = a.x; cur[2][1] = a.y; cur[2][2] = a.z;
        }
    }

    /* re-orthonormalize: row0 = row1 x row2, then row1 = row2 x row0 */
    a.x = cur[1][0]; a.y = cur[1][1]; a.z = cur[1][2];
    b.x = cur[2][0]; b.y = cur[2][1]; b.z = cur[2][2];
    vec3_normalized_cross_product(&a, &b, &cr);
    b = cr;
    cur[0][0] = cr.x; cur[0][1] = cr.y; cur[0][2] = cr.z;
    a.x = cur[2][0]; a.y = cur[2][1]; a.z = cur[2][2];
    vec3_normalized_cross_product(&a, &b, &cr);
    cur[1][0] = cr.x; cur[1][1] = cr.y; cur[1][2] = cr.z;

    /* Euler decomposition, gimbal-lock special-cased */
    ang.y = asinf(-cur[0][2]);
    if ((ang.y == 1.5707964f) || (ang.y == -1.5707964f)) {
        if (ang.y == 1.5707964f) {
            ang.x = atan2f(cur[1][0], cur[1][1]);
        } else {
            ang.x = atan2f(-cur[1][0], cur[1][1]);
        }
        ang.z = 0.0f;
    } else {
        ang.x = atan2f(cur[1][2], cur[2][2]);
        ang.z = atan2f(cur[0][1], cur[0][0]);
    }
    utilWrapRotation(&ang);
    D_800EA6E0[objId] = ang.x;
    D_800EA8A0[objId] = ang.y;
    D_800EAA60[objId] = ang.z;
    gEntitiesAngleXArray[objId] = D_800EA6E0[objId];
    gEntitiesAngleYArray[objId] = D_800EA8A0[objId];
    gEntitiesAngleZArray[objId] = D_800EAA60[objId];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E3A20_ovl17.s")
#endif

void func_801E2A2C_ovl17(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B4B9C;
    D_800DF150[omCurrentObj->objId] = func_801E2B78_ovl17;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E7B20[omCurrentObj->objId] = 30.0f;
    func_800A9864(0x10085, 0x23, 0x10);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801E2AF0_ovl17(arg0);
}

void func_801E2AF0_ovl17(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, D_801E549C_ovl17);
    }
}

void func_801E2B78_ovl17(struct GObj *arg0) {
    if ((gEntityFuncListIDArray[omCurrentObj->objId] != 4) && (D_800EA1A0[D_800E0D50[omCurrentObj->objId]] != 0)) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 4;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E2AF0_ovl17);
        return;
    }
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 5, D_801E54B0_ovl17);
}

void func_801E2C28_ovl17(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    do {
        func_800AFBB4(0, omCurrentObj);
        ohSleep(1);
    } while (D_800E9AA0[D_800E0D50[omCurrentObj->objId]] == NULL);
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801E2CD0_ovl17(struct GObj *arg0) {
    func_801E30BC_ovl17();
}

void func_801E2CF0_ovl17(struct GObj *arg0) {
    Vector sp1C;

    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800AA018(0x10517);
    func_800AFBB4(1, omCurrentObj);
    ohSleep(6);
    utilGetTransformSRT(&sp1C, arg0->data.dobj->firstChild->firstChild);
    func_801ACD90_ovl7(0x3C, 1, &sp1C);
    play_sound(0x1C7);
    ohSleep(6);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801E2DA0_ovl17(struct GObj *arg0) {
    if (D_800E9AA0[D_800E0D50[omCurrentObj->objId]] == NULL) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E2AF0_ovl17);
    }
    func_801E30BC_ovl17();
}

void func_801E2E24_ovl17(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    func_800AA018(0x10519);
    D_800E98E0[D_800E0D50[omCurrentObj->objId]] = 1;
    func_800AFBB4(1, omCurrentObj);
    ohSleep(0xC);
    D_800E98E0[D_800E0D50[omCurrentObj->objId]] = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801E2EE8_ovl17(struct GObj *arg0) {
    func_801E30BC_ovl17();
}

void func_801E2F08_ovl17(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E98E0[D_800E0D50[omCurrentObj->objId]] = 2;
    func_800AFBB4(0, omCurrentObj);
    ohSleep(0xD2);
    D_800E98E0[D_800E0D50[omCurrentObj->objId]] = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801E2FB8_ovl17(struct GObj *arg0) {
    func_801E30BC_ovl17();
}

void func_801E2FD8_ovl17(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 4;
    func_800AFBB4(0, omCurrentObj);
    curObjSleepForever();
}

void func_801E3024_ovl17(struct GObj *arg0) {
    if ((D_800EA1A0[D_800E0D50[omCurrentObj->objId]] == 0) && (D_800E7B20[D_800E0D50[omCurrentObj->objId]] > 0.0f)) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E2AF0_ovl17);
    }
}

s32 func_801E30BC_ovl17(void) {
    u8 sp4C[4];
    struct UnkStruct800E1B50 *sp48;
    struct Ovl17AnimInfo sp28;
    s32 temp_a0;

    sp48 = D_800E1B50[omCurrentObj->objId];
    func_80111ECC(func_801A0464_ovl7());
    if (sp48->unk8C == NULL) {
        return 0;
    }
    if (func_80110B00(&sp28) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp28.unk2;
        sp48->unk43 = sp28.unk3;
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
        sp48->unk43 = 0;
    }
    temp_a0 = D_800E83E0[omCurrentObj->objId];
    if (temp_a0 != 1) {
        if (temp_a0 == 2) {
            func_800A8100(6, 3, 0, D_800DFBD0[omCurrentObj->objId][4]);
            D_800E7CE0[omCurrentObj->objId] = 1;
            play_sound(0x1BB);
            do { } while (0);
            if (sp28.unkC != 0) {
                D_800E98E0[sp28.unkC] = 1;
            }
            return 1;
        }
    } else {
        D_800E7CE0[omCurrentObj->objId] = 0xF0;
        D_800E7B20[omCurrentObj->objId] = 30.0f;
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E2AF0_ovl17);
        play_sound(0x1C0);
        return 1;
    }
    return 0;
}

void func_801E328C_ovl17(Vector *arg0) {
    lbvector_Normalize(arg0);
    lbvector_Rotate(arg0, 1, D_800EAC20[omCurrentObj->objId]);
    lbvector_Rotate(arg0, 2, D_800EADE0[omCurrentObj->objId]);
    lbvector_Rotate(arg0, 4, D_800EAFA0[omCurrentObj->objId]);
}

void func_801E3324_ovl17(Vector *arg0) {
    arg0->x = 0.0f;
    arg0->y = 0.0f;
    arg0->z = 1.0f;
    lbvector_Normalize(arg0);
    lbvector_Rotate(arg0, 1, D_800EA6E0[D_800E0D50[D_800E0D50[omCurrentObj->objId]]]);
    lbvector_Rotate(arg0, 2, D_800EA8A0[D_800E0D50[D_800E0D50[omCurrentObj->objId]]]);
    lbvector_Rotate(arg0, 4, D_800EAA60[D_800E0D50[D_800E0D50[omCurrentObj->objId]]]);
}

void func_801E343C_ovl17(Vector *arg0) {
    arg0->x = 0.0f;
    arg0->y = 0.0f;
    arg0->z = 1.0f;
    lbvector_Normalize(arg0);
    lbvector_Rotate(arg0, 1, D_800EA6E0[omCurrentObj->objId]);
    lbvector_Rotate(arg0, 2, D_800EA8A0[omCurrentObj->objId]);
    lbvector_Rotate(arg0, 4, D_800EAA60[omCurrentObj->objId]);
}

void func_801E34F4_ovl17(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B5094;
    D_800E0F10[omCurrentObj->objId] = 0x1D;
    D_800DF150[omCurrentObj->objId] = func_801E36AC_ovl17;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E7B20[omCurrentObj->objId] = 1.0f;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    while (1) {
        if (D_800E83E0[omCurrentObj->objId] == 1) {
            D_800E9FE0[D_800E0D50[omCurrentObj->objId]].as_s32 = 1;
            *(s32 *) &D_800D7098.unk4 = 1;
            while (D_800D7098.unk4 != 0) {
                D_800E7CE0[omCurrentObj->objId] = 0x1E;
                ohSleep(1);
            }
        } else {
            ohSleep(1);
        }
    }
}

void func_801E36AC_ovl17(struct GObj *arg0) {
    f32 c = 0.7f;

    gEntitiesNextPosXArray[omCurrentObj->objId] *= c;
    gEntitiesNextPosYArray[omCurrentObj->objId] *= c;
    gEntitiesNextPosZArray[omCurrentObj->objId] *= c;
    func_801E373C_ovl17();
}

s32 func_801E373C_ovl17(void) {
    u8 sp4C[4];
    struct UnkStruct800E1B50 *sp48;
    struct Ovl17AnimInfo sp28;
    s32 temp_a0;

    sp48 = D_800E1B50[omCurrentObj->objId];
    func_80111ECC(func_801A0464_ovl7());
    if (sp48->unk8C == NULL) {
        return 0;
    }
    if (func_80110B00(&sp28) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp28.unk2;
        sp48->unk43 = sp28.unk3;
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
        sp48->unk43 = 0;
    }
    temp_a0 = D_800E83E0[omCurrentObj->objId];
    if (temp_a0 != 1) {
        if (temp_a0 == 2) {
            D_800E7CE0[omCurrentObj->objId] = 1;
            return 1;
        }
    } else {
        D_800E7CE0[omCurrentObj->objId] = 0x1E;
        D_800E7B20[omCurrentObj->objId] = 1.0f;
        play_sound(0x1C4);
        do { } while (0);
        if (sp28.unkC != 0) {
            D_800E98E0[sp28.unkC] = 1;
        }
        return 1;
    }
    return 0;
}

void func_801E389C_ovl17(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B5094;
    if (D_800E7880[omCurrentObj->objId] == 0) {
        D_800E0F10[omCurrentObj->objId] = 8;
    } else {
        D_800E0F10[omCurrentObj->objId] = 0x13;
    }
    D_800DF150[omCurrentObj->objId] = func_801E3990_ovl17;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E7B20[omCurrentObj->objId] = 10.0f;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    curObjSleepForever();
}

void func_801E3990_ovl17(struct GObj *arg0) {
    gEntitiesNextPosXArray[omCurrentObj->objId] *= 0.75f;
    gEntitiesNextPosYArray[omCurrentObj->objId] *= 0.75f;
    gEntitiesNextPosZArray[omCurrentObj->objId] *= 0.75f;
    func_801E3A20_ovl17();
}

#ifndef PORT /* WIP */
/* PORT: wing-segment collision service, from asm/nonmatchings/ovl17/
 * ovl17_3/func_801E3A20_ovl17.s -- same shape as func_801E373C above but
 * for a wing piece: registers via the ovl7 helper, sweeps, then on a
 * kill (1) folds the parent's wing (flap counter D_800E9C60 or D_800E9E20
 * by side D_800E7880, set to 1), hands this track to func_801A3E80_ovl7
 * and flags D_800E98E0[info.unkC]; on a hit (2) plays 0x1BD, sets the
 * counter to 3 (flare) and sparks effect 6/3/2 on one random DObj of each
 * of the parent wing's three segment pairs; otherwise clears the counter. */
void func_801E3A20_ovl17(void) {
    struct UnkStruct800E1B50 *ent;
    struct DObj **pd;
    struct Ovl17AnimInfo sp2C;
    s32 objId;
    s32 kind;
    s32 parent;

    ent = D_800E1B50[omCurrentObj->objId];
    func_80111ECC(func_801A0464_ovl7());
    if (ent->unk8C != NULL) {
        if (func_80110B00(&sp2C) != 0) {
            D_800E83E0[omCurrentObj->objId] = sp2C.unk2;
            ent->unk43 = sp2C.unk3;
        } else {
            D_800E83E0[omCurrentObj->objId] = 0;
            ent->unk43 = 0;
        }
        objId = omCurrentObj->objId;
        kind = D_800E83E0[objId];
        parent = D_800E0D50[objId];
        if (kind == 1) {
            if (D_800E7880[objId] == 0) {
                D_800E9C60[parent] = 1;
            } else {
                D_800E9E20[parent] = 1;
            }
            assign_new_process_entry(gEntityGObjProcessArray[objId], func_801A3E80_ovl7);
            if (sp2C.unkC != 0) {
                D_800E98E0[sp2C.unkC] = 1;
            }
        } else if (kind == 2) {
            D_800E7CE0[objId] = 1;
            play_sound(0x1BD);
            if (sp2C.unkC != 0) {
                D_800E98E0[sp2C.unkC] = 1;
            }
            if (D_800E7880[objId] == 0) {
                D_800E9C60[parent] = 3;
            } else {
                D_800E9E20[parent] = 3;
            }
            pd = D_800DFBD0[parent];
            if (D_800E7880[objId] == 0) {
                func_800A8100(6, 3, 2, (random_soft_s32_range(2) != 0) ? pd[5] : pd[6]);
                func_800A8100(6, 3, 2, (random_soft_s32_range(2) != 0) ? pd[8] : pd[9]);
                func_800A8100(6, 3, 2, (random_soft_s32_range(2) != 0) ? pd[0xB] : pd[0xC]);
            } else {
                func_800A8100(6, 3, 2, (random_soft_s32_range(2) != 0) ? pd[0x10] : pd[0x11]);
                func_800A8100(6, 3, 2, (random_soft_s32_range(2) != 0) ? pd[0x13] : pd[0x14]);
                func_800A8100(6, 3, 2, (random_soft_s32_range(2) != 0) ? pd[0x16] : pd[0x17]);
            }
        } else {
            if (D_800E7880[objId] == 0) {
                D_800E9C60[parent] = 0;
            } else {
                D_800E9E20[parent] = 0;
            }
        }
    }
}

#elif defined(PORT)
/* PORT: wing-segment collision service, from asm/nonmatchings/ovl17/
 * ovl17_3/func_801E3A20_ovl17.s -- same shape as func_801E373C above but
 * for a wing piece: registers via the ovl7 helper, sweeps, then on a
 * kill (1) folds the parent's wing (flap counter D_800E9C60 or D_800E9E20
 * by side D_800E7880, set to 1), hands this track to func_801A3E80_ovl7
 * and flags D_800E98E0[info.unkC]; on a hit (2) plays 0x1BD, sets the
 * counter to 3 (flare) and sparks effect 6/3/2 on one random DObj of each
 * of the parent wing's three segment pairs; otherwise clears the counter. */
void func_801E3A20_ovl17(void) {
    struct UnkStruct800E1B50 *ent;
    struct DObj **pd;
    struct Ovl17AnimInfo sp2C;
    s32 objId;
    s32 kind;
    s32 parent;

    ent = D_800E1B50[omCurrentObj->objId];
    func_80111ECC(func_801A0464_ovl7());
    if (ent->unk8C == NULL) {
        return;
    }
    if (func_80110B00(&sp2C) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp2C.unk2;
        ent->unk43 = sp2C.unk3;
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
        ent->unk43 = 0;
    }
    objId = omCurrentObj->objId;
    kind = D_800E83E0[objId];
    parent = D_800E0D50[objId];
    if (kind == 1) {
        if (D_800E7880[objId] == 0) {
            D_800E9C60[parent] = 1;
        } else {
            D_800E9E20[parent] = 1;
        }
        assign_new_process_entry(gEntityGObjProcessArray[objId], func_801A3E80_ovl7);
        if (sp2C.unkC != 0) {
            D_800E98E0[sp2C.unkC] = 1;
        }
    } else if (kind == 2) {
        D_800E7CE0[objId] = 1;
        play_sound(0x1BD);
        if (sp2C.unkC != 0) {
            D_800E98E0[sp2C.unkC] = 1;
        }
        if (D_800E7880[objId] == 0) {
            D_800E9C60[parent] = 3;
        } else {
            D_800E9E20[parent] = 3;
        }
        pd = D_800DFBD0[parent];
        if (D_800E7880[objId] == 0) {
            func_800A8100(6, 3, 2, (random_soft_s32_range(2) != 0) ? pd[5] : pd[6]);
            func_800A8100(6, 3, 2, (random_soft_s32_range(2) != 0) ? pd[8] : pd[9]);
            func_800A8100(6, 3, 2, (random_soft_s32_range(2) != 0) ? pd[0xB] : pd[0xC]);
        } else {
            func_800A8100(6, 3, 2, (random_soft_s32_range(2) != 0) ? pd[0x10] : pd[0x11]);
            func_800A8100(6, 3, 2, (random_soft_s32_range(2) != 0) ? pd[0x13] : pd[0x14]);
            func_800A8100(6, 3, 2, (random_soft_s32_range(2) != 0) ? pd[0x16] : pd[0x17]);
        }
    } else {
        if (D_800E7880[objId] == 0) {
            D_800E9C60[parent] = 0;
        } else {
            D_800E9E20[parent] = 0;
        }
    }
}
#endif

void func_801E4030_ovl17(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B4B9C;
    D_800DF150[omCurrentObj->objId] = func_801E4178_ovl17;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E7B20[omCurrentObj->objId] = 10.0f;
    func_800A9864(0x10084, 0x23, 0x10);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801E40F4_ovl17(arg0);
}

void func_801E40F4_ovl17(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, D_801E54C4_ovl17);
    }
}

void func_801E4178_ovl17(void) {
    func_801E4668_ovl17();
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 4, D_801E54D4_ovl17);
}

void func_801E41C4_ovl17(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AA018(0x10510);
    func_800AF27C();
    if (gEntityFuncListIDArray[D_800E0D50[omCurrentObj->objId]] == 0) {
        func_800AA018(0x10514);
        ohSleep(0x38);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801E4274_ovl17(struct GObj *arg0) {
}

void func_801E427C_ovl17(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800AA018(0x10514);
    curObjSleepForever();
}

void func_801E42CC_ovl17(struct GObj *arg0) {
    func_801E4488_ovl17();
}

void func_801E42EC_ovl17(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    func_800AA018(0x1050E);
    ohSleep(8);
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801E4358_ovl17(struct GObj *arg0) {
    func_801E4488_ovl17();
}

void func_801E4378_ovl17(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 3;
    func_800AA018(0x10510);
    func_800AF27C();
    func_800AFBB4(0, omCurrentObj);
    ohSleep(0x258);
    if (D_800E7B20[D_800E0D50[omCurrentObj->objId]] <= 0.0f) {
        curObjSleepForever();
    }
    D_800E7CE0[omCurrentObj->objId] = 0;
    D_800E7B20[omCurrentObj->objId] = 10.0f;
    func_800AFBB4(1, omCurrentObj);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801E4480_ovl17(struct GObj *arg0) {
}

s32 func_801E4488_ovl17(void) {
    u8 sp4C[4];
    struct UnkStruct800E1B50 *sp48;
    struct Ovl17AnimInfo sp28;
    s32 temp_a0;

    sp48 = D_800E1B50[omCurrentObj->objId];
    func_80111ECC(func_801A0464_ovl7());
    if (sp48->unk8C == NULL) {
        return 0;
    }
    if (func_80110B00(&sp28) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp28.unk2;
        sp48->unk43 = sp28.unk3;
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
        sp48->unk43 = 0;
    }
    temp_a0 = D_800E83E0[omCurrentObj->objId];
    if (temp_a0 != 1) {
        if (temp_a0 == 2) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 2;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E40F4_ovl17);
            D_800E7CE0[omCurrentObj->objId] = 1;
            play_sound(0x1BE);
            do { } while (0);
            if (sp28.unkC != 0) {
                D_800E98E0[sp28.unkC] = 1;
            }
            return 1;
        }
    } else {
        D_800E7CE0[omCurrentObj->objId] = 0x276;
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E40F4_ovl17);
        play_sound(0x1C3);
        do { } while (0);
        if (sp28.unkC != 0) {
            D_800E98E0[sp28.unkC] = 1;
        }
        return 1;
    }
    return 0;
}

#ifdef MIPS_TO_C
/* FACTORY: 3/212, and the draft below is NOT the right shape -- read this
   before spending permuter time on it.
   What the listing actually does, which the PORT arm's comment gets wrong:
   - it reads TWO table entries, D_801E54E4_ovl17[hp] into a 4-byte record at
     sp+0x2C and [hp+1] into one at sp+0x28, and blends them PER CHANNEL with
     integer weights held in registers ($a2 = 1 and $zero), converting through
     cvt.s.w with the 0x4F000000 unsigned bias.  The weights are constant, so
     the result is the [hp] entry, but the multiply/convert machinery is all
     emitted -- writing three plain channel stores (what the draft does) is a
     different function, which is why this sits at 3/212.
   - the blended result is a THIRD 4-byte record at sp+0x30, copied into the
     MObj colour bytes with lwl/lwr + swl/swr -- an unaligned 4-byte struct
     assignment over primColor and envColor (offsets 0x58 and 0x60), alpha
     included, not three byte stores.
   - frame is 0x40 with the three records at 0x28/0x2C/0x30 and s0/s1 saved.
   Blocked from finishing here by two things outside a single TU: the tree
   root comes in as $a0 (`lw $s1,0x3C($a0)`) but ovl17.h declares this
   `void func_801E4668_ovl17(void)`, and the colour bytes need a 4-byte
   struct view that the shared SPObj/MObj header does not currently provide.
   Both are header changes and want the sha1 gate. */
/* PORT: HP-tint of the turret model, from asm/nonmatchings/ovl17/ovl17_3/
 * func_801E4668_ovl17.s. Picks the RGBA word D_801E54E4[(s32)hp] (a
 * gen_data u32[] of N64 word values, so the channels come off the
 * arithmetic top: r = w>>24) and writes the RGB into every MObj's prim
 * and env colors across the whole DObj tree. On N64 the word at hp+1 also
 * feeds a blend whose factor the compiler folded to zero, and the stores
 * are 4-byte swl/swr pairs whose 4th (alpha) byte is uninitialized stack
 * -- the PC arm writes only the three meaningful channels. The tree root
 * comes from the caller's leftover $a0, always omCurrentObj here. */
void func_801E4668_ovl17(void) {
    DObj *animModelTreeNextNode(DObj *);
    extern u32 D_801E54E4_ovl17[];
    struct DObj *dobj;
    MObj *mobj;
    u32 word;
    u8 r;
    u8 g;
    u8 b;

    dobj = omCurrentObj->data.dobj;
    word = D_801E54E4_ovl17[(s32) D_800E7B20[omCurrentObj->objId]];
    r = word >> 24;
    g = word >> 16;
    b = word >> 8;
    while (dobj != NULL) {
        for (mobj = dobj->mobjList; mobj != NULL; mobj = mobj->next) {
            mobj->texture.primColor.color.r = r;
            mobj->texture.primColor.color.g = g;
            mobj->texture.primColor.color.b = b;
            mobj->texture.envColor.color.r = r;
            mobj->texture.envColor.color.g = g;
            mobj->texture.envColor.color.b = b;
        }
        dobj = animModelTreeNextNode(dobj);
    }
}
#elif defined(PORT)
/* PORT: HP-tint of the turret model, from asm/nonmatchings/ovl17/ovl17_3/
 * func_801E4668_ovl17.s. Picks the RGBA word D_801E54E4[(s32)hp] (a
 * gen_data u32[] of N64 word values, so the channels come off the
 * arithmetic top: r = w>>24) and writes the RGB into every MObj's prim
 * and env colors across the whole DObj tree. On N64 the word at hp+1 also
 * feeds a blend whose factor the compiler folded to zero, and the stores
 * are 4-byte swl/swr pairs whose 4th (alpha) byte is uninitialized stack
 * -- the PC arm writes only the three meaningful channels. The tree root
 * comes from the caller's leftover $a0, always omCurrentObj here. */
void func_801E4668_ovl17(void) {
    DObj *animModelTreeNextNode(DObj *);
    extern u32 D_801E54E4_ovl17[];
    struct DObj *dobj;
    MObj *mobj;
    u32 word;
    u8 r;
    u8 g;
    u8 b;

    dobj = omCurrentObj->data.dobj;
    word = D_801E54E4_ovl17[(s32) D_800E7B20[omCurrentObj->objId]];
    r = word >> 24;
    g = word >> 16;
    b = word >> 8;
    while (dobj != NULL) {
        for (mobj = dobj->mobjList; mobj != NULL; mobj = mobj->next) {
            mobj->texture.primColor.color.r = r;
            mobj->texture.primColor.color.g = g;
            mobj->texture.primColor.color.b = b;
            mobj->texture.envColor.color.r = r;
            mobj->texture.envColor.color.g = g;
            mobj->texture.envColor.color.b = b;
        }
        dobj = animModelTreeNextNode(dobj);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E4668_ovl17.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 3/302, frame 0x58 vs the ROM's 0x40 (24 bytes of locals we reserve
   and it does not) plus the same &omCurrentObj hoist as
   func_801E49B8_ovl17 above: the ROM holds it in $s0, ours re-materialises
   it.  Shed the extra 24 bytes first; the register choice usually follows. */
/* PORT: turret return-fire shot spawn, from asm/nonmatchings/ovl17/
 * ovl17_3/func_801E49B8_ovl17.s. Sets up the shot track (model 0x100F2,
 * hit routine func_801E4DD4, scale 0.2, parent's angles), places it at
 * the parent boss's hand DObj (slot 0x19 via func_800B2340), aims back
 * at the origin (normalized -pos), launches at speed 15 (accel 0.4,
 * cap |25*dir|), sleeps 60 frames, then explodes via func_801E2320. */
void func_801E49B8_ovl17(struct GObj *arg0) {
    struct DObj *anchor;
    Vector pos;
    Vector dir;
    s32 objId;
    s32 parent;
    f32 t;

    objId = omCurrentObj->objId;
    D_800DEF90[objId] = (void (*)(s32)) func_800B4924;
    parent = D_800E0D50[objId];
    anchor = D_800DFBD0[parent][0x19];
    D_800DF150[objId] = func_801E4DD4_ovl17;
    D_800E8920[objId] = 0;
    func_800A9864(0x100F2, 0x23, 0x10);
    D_800DDA90[objId] = 0x23;
    D_800E98E0[objId] = 0;
    gEntitiesScaleXArray[objId] = 0.2f;
    gEntitiesScaleYArray[objId] = 0.2f;
    gEntitiesScaleZArray[objId] = 0.2f;
    gEntitiesAngleXArray[objId] = gEntitiesAngleXArray[parent];
    gEntitiesAngleYArray[objId] = gEntitiesAngleYArray[parent];
    gEntitiesAngleZArray[objId] = gEntitiesAngleZArray[parent];
    func_800B2340(&pos, anchor, 0xFFFF);
    gEntitiesNextPosXArray[objId] = pos.x;
    gEntitiesNextPosYArray[objId] = pos.y;
    gEntitiesNextPosZArray[objId] = pos.z;
    dir.x = -gEntitiesNextPosXArray[objId];
    dir.y = -gEntitiesNextPosYArray[objId];
    dir.z = -gEntitiesNextPosZArray[objId];
    lbvector_Normalize(&dir);
    t = dir.x * 25.0f;
    D_800E3050[objId] = dir.x * 15.0f;
    D_800E3590[objId] = dir.x * 0.4f;
    D_800E3AD0[objId] = (t < 0.0f) ? -t : t;
    t = dir.y * 25.0f;
    D_800E3210[objId] = dir.y * 15.0f;
    D_800E3750[objId] = dir.y * 0.4f;
    D_800E3C90[objId] = (t < 0.0f) ? -t : t;
    t = dir.z * 25.0f;
    D_800E33D0[objId] = dir.z * 15.0f;
    D_800E3910[objId] = dir.z * 0.4f;
    D_800E3E50[objId] = (t < 0.0f) ? -t : t;
    ohSleep(0x3C);
    func_801E2320_ovl17();
}
#elif defined(PORT)
/* PORT: turret return-fire shot spawn, from asm/nonmatchings/ovl17/
 * ovl17_3/func_801E49B8_ovl17.s. Sets up the shot track (model 0x100F2,
 * hit routine func_801E4DD4, scale 0.2, parent's angles), places it at
 * the parent boss's hand DObj (slot 0x19 via func_800B2340), aims back
 * at the origin (normalized -pos), launches at speed 15 (accel 0.4,
 * cap |25*dir|), sleeps 60 frames, then explodes via func_801E2320. */
void func_801E49B8_ovl17(struct GObj *arg0) {
    struct DObj *anchor;
    Vector pos;
    Vector dir;
    s32 objId;
    s32 parent;
    f32 t;

    objId = omCurrentObj->objId;
    D_800DEF90[objId] = (void (*)(s32)) func_800B4924;
    parent = D_800E0D50[objId];
    anchor = D_800DFBD0[parent][0x19];
    D_800DF150[objId] = func_801E4DD4_ovl17;
    D_800E8920[objId] = 0;
    func_800A9864(0x100F2, 0x23, 0x10);
    D_800DDA90[objId] = 0x23;
    D_800E98E0[objId] = 0;
    gEntitiesScaleXArray[objId] = 0.2f;
    gEntitiesScaleYArray[objId] = 0.2f;
    gEntitiesScaleZArray[objId] = 0.2f;
    gEntitiesAngleXArray[objId] = gEntitiesAngleXArray[parent];
    gEntitiesAngleYArray[objId] = gEntitiesAngleYArray[parent];
    gEntitiesAngleZArray[objId] = gEntitiesAngleZArray[parent];
    func_800B2340(&pos, anchor, 0xFFFF);
    gEntitiesNextPosXArray[objId] = pos.x;
    gEntitiesNextPosYArray[objId] = pos.y;
    gEntitiesNextPosZArray[objId] = pos.z;
    dir.x = -gEntitiesNextPosXArray[objId];
    dir.y = -gEntitiesNextPosYArray[objId];
    dir.z = -gEntitiesNextPosZArray[objId];
    lbvector_Normalize(&dir);
    t = dir.x * 25.0f;
    D_800E3050[objId] = dir.x * 15.0f;
    D_800E3590[objId] = dir.x * 0.4f;
    D_800E3AD0[objId] = (t < 0.0f) ? -t : t;
    t = dir.y * 25.0f;
    D_800E3210[objId] = dir.y * 15.0f;
    D_800E3750[objId] = dir.y * 0.4f;
    D_800E3C90[objId] = (t < 0.0f) ? -t : t;
    t = dir.z * 25.0f;
    D_800E33D0[objId] = dir.z * 15.0f;
    D_800E3910[objId] = dir.z * 0.4f;
    D_800E3E50[objId] = (t < 0.0f) ? -t : t;
    ohSleep(0x3C);
    func_801E2320_ovl17();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_3/func_801E1CB4_ovl17.s")
#endif

void func_801E4DD4_ovl17(struct GObj *arg0) {
    if (func_801A03B4_ovl7() != 0) {
        gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesPosXArray[omCurrentObj->objId];
        gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesPosYArray[omCurrentObj->objId];
        gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesPosZArray[omCurrentObj->objId];
    }
}
