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
/* K&R form is load-bearing here: its real signature is
 * s32 func_801A0D74_ovl7(GObj *), but this file calls it with both 0 args
 * (lines ~289, ~467, ~624, ~1169) and 1 arg (lines ~410, ~767) -- the ROM
 * relies on whatever GObj* is already sitting in $a0 at the 0-arg sites.
 * An ANSI prototype breaks compilation with "too few arguments". */
s32 func_801A0D74_ovl7();
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

/* src/ovl1/ovl1.c:5409 defines this as func_800A22D4(UnkA22A8 *) and
   dereferences it, and every argument in this TU is EnemyRecord.unk34, a
   real pointer -- but the u32 spelling is LOAD-BEARING and stays.
   MEASURED: retyping this declaration (and the two matching in-guard copies)
   to `void *` breaks the ROM -- 14 words in ovl7_4 at 0x14CAAC, 0x14CBC8,
   0x14CEB8 and 0x14D048. IDO stages a pointer argument straight into $a0
   while the ROM builds it in $a1 and copies (`or $a0, $a1, $zero` at
   0x14CBD8), so the narrower prototype is what the game was compiled
   against. The call sites truncate explicitly instead; lossless, the
   -no-pie image keeps the arena below 4 GiB. */
void func_800A22D4(u32);
void func_800A2300(struct GObj *);
void func_800B3520(void);
void func_800B6474(GObj *);
void func_800BB468(s32, s32);
void func_80111550(u32);
s32 *func_80111C88(void *, u32);
void func_80111C4C(s32);
void func_80111ECC(s32 *);
s32 func_801117BC(void *, u32);
void func_80198880_ovl7(struct EnemyKindDesc *);
void func_8019B7D8_ovl7(void);
/* u32, though the definition in src/ovl7/ovl7_3.c says (s32). MEASURED: the
 * (s32) spelling changes 5 instructions in this TU ($a1/$a2 swap and a branch
 * target shift), so the u32 the ROM was built against stays. */
void func_801A2558_ovl7(u32);
void func_801A3D6C_ovl7(void);
void func_801A470C_ovl7(void);
void func_801A4C0C_ovl7(GObj *);
void func_801A4DFC_ovl7(GObj *);
void func_801A4F70_ovl7(void);
void func_801A5DE8_ovl7(GObj *);
void func_801A6DD0_ovl7(void);
s32 func_801AE7E0_ovl7(s32);

#ifdef MIPS_TO_C
/* FACTORY: 9/213, $v0/$v1 transposition ONLY (the CSE'd-load-in-the-
   neighbouring-register floor from LEVERS). Re-confirmed 2026-08-23,
   identical 9/213.  Instruction count, schedule,
   frame (0x30, s0 saved, arg0 homed at 0x30, desc spilled at 0x28), every
   branch and every other register are the ROM's.  The nine diffs are the
   ent->unk94 chain: the ROM holds unk94 in $v0 and unk94->unk18 in $v1,
   ours has them swapped, and the structure around them is already identical
   (unk94 re-read at each use, single read before the NULL test feeding both
   type-6 and type-7 checks).
   Same clone-family lever as func_801A5274_ovl7: the chained clear-block
   spelling copied from the matched func_801A50B0_ovl7 is what makes the
   middle of this function land.  Note the in-guard prototype must be
   `void func_800A22D4(u32)` to agree with the other guarded drafts already
   in this TU -- declaring it (void *) is a redeclaration error, and the u32
   is load-bearing besides (see the file-scope declaration), so the pointer
   is passed as (u32) ent->unk34 (a no-op in codegen). Good permuter
   seed. */
void func_801A3E80_ovl7(GObj *arg0) {
    void func_800A22D4(u32);
    void func_800A2300(struct GObj *);
    s32 func_801A66B4_ovl7(void);
    s32 func_801A66FC_ovl7(void);
    void func_801A41D4_ovl7(GObj *);
    void func_801A42D8_ovl7(GObj *);
    void func_80198880_ovl7(struct EnemyKindDesc *);
    void func_8019B7D8_ovl7(void);
    void func_8019BB58_ovl7(void);
    void func_8019D958_ovl7(u16);
    extern f32 gameTicksPerDraw;
    extern FUNCLIST D_801C2970_ovl7;
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];
    struct EnemyKindDesc *desc = ent->unk88;
    f32 c;

    func_8019B7D8_ovl7();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    c = 65535.0f;
    D_800DF150[omCurrentObj->objId] = NULL;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = c;
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] = D_800E33D0[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = c;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    arg0->onAnimate = NULL;
    D_800DF310[omCurrentObj->objId] = NULL;
    if (ent->unk34 != NULL) {
        func_800A22D4((u32) (uintptr_t) ent->unk34);
    }
    func_800A2300(arg0);
    ent->unk34 = NULL;
    if (ent->unk40 != 1) {
        if (func_801A66B4_ovl7() != 0) {
            func_800FD570(0, ent->unk94->unk18, 0.0f, 0.0f, 0.0f);
        } else {
            gEntityFuncListIDArray[omCurrentObj->objId] = func_801A66FC_ovl7();
            utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 9, D_801C2970_ovl7);
            func_80198880_ovl7(desc);
            D_800E7B20[omCurrentObj->objId] = 0.0f;
        }
        if ((ent->unk94->unk1C != 0x80000000) && (ent->unk40 != 1)) {
            play_sound(ent->unk94->unk1C);
        }
        if (ent->unk94 != NULL) {
            if (ent->unk94->unk18 == 6) {
                func_801A41D4_ovl7(arg0);
            }
            if (ent->unk94->unk18 == 7) {
                func_801A42D8_ovl7(arg0);
            }
        }
    }
    D_800DF150[omCurrentObj->objId] = NULL;
    func_800B19F4(0x7D, omCurrentObj->objId);
    func_8019BB58_ovl7();
    ohSleep(0xF);
    func_8019D958_ovl7((u16) omCurrentObj->objId);
}
#elif defined(PORT)
/* The enemy "return to idle" epilogue every FUNCLIST tail jumps to (ported
 * from m2c): stop the anim driver, clear the velocity/accel banks, drop
 * the attached effect object (func_800A22D4 takes just ent->unk34 -- m2c's
 * extra args were leftover registers), then unless the entity is flagged
 * done (unk40): either play the type-specific death effect
 * (func_801A66B4_ovl7 types 6/7) or re-enter the enemy FUNCLIST at the
 * state func_801A66FC_ovl7 derives and rebind the descriptor, play the
 * death cry (unk1C != 0x80000000), and hand types 6/7 to their respawn
 * setups; finally detach, become entity 0x7D, sleep 15 and free the
 * track (func_8019D958_ovl7 takes the u16 low half of objId -- the ROM's
 * lhu obj+2 is the big-endian half of the same word). */
void func_801A3E80_ovl7(GObj *arg0) {
    void func_800A22D4(u32); /* takes ent->unk34; u32 is load-bearing, see
                              * the file-scope declaration above */
    void func_800A2300(struct GObj *);
    void func_800AECC0(f32);
    s32 func_801A66B4_ovl7(void);
    s32 func_801A66FC_ovl7(void);
    void func_801A41D4_ovl7(GObj *);
    void func_801A42D8_ovl7(GObj *);
    void func_80198880_ovl7(struct EnemyKindDesc *);
    void func_8019B7D8_ovl7(void);
    extern f32 gameTicksPerDraw;
    extern FUNCLIST D_801C2970_ovl7;
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];
    struct EnemyKindDesc *desc = ent->unk88;
    f32 c;

    func_8019B7D8_ovl7();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800DF150[omCurrentObj->objId] = NULL;
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
    D_800DF310[omCurrentObj->objId] = NULL;
    if (ent->unk34 != NULL) {
        func_800A22D4((u32) (uintptr_t) ent->unk34);
    }
    func_800A2300(arg0);
    ent->unk34 = NULL;
    if (ent->unk40 != 1) {
        u32 snd;

        if (func_801A66B4_ovl7() != 0) {
            func_800FD570(0, ent->unk94->unk18, 0.0f, 0.0f, 0.0f);
        } else {
            gEntityFuncListIDArray[omCurrentObj->objId] = func_801A66FC_ovl7();
            utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 9, D_801C2970_ovl7);
            func_80198880_ovl7(desc);
            D_800E7B20[omCurrentObj->objId] = 0.0f;
        }
        snd = ent->unk94->unk1C;
        if ((snd != 0x80000000) && (ent->unk40 != 1)) {
            play_sound(snd);
        }
        if (ent->unk94 != NULL) {
            if (ent->unk94->unk18 == 6) {
                func_801A41D4_ovl7(arg0);
            }
            if (ent->unk94->unk18 == 7) {
                func_801A42D8_ovl7(arg0);
            }
        }
    }
    D_800DF150[omCurrentObj->objId] = NULL;
    func_800B19F4(0x7D, omCurrentObj->objId);
    func_8019BB58_ovl7();
    ohSleep(0xF);
    func_8019D958_ovl7((u16) omCurrentObj->objId);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A3E80_ovl7.s")
#endif

void func_801A41D4_ovl7(GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

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
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

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
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    func_800FD570(0, ent->unk94->unk18, 0.0f, 0.0f, 0.0f);
}

void func_801A4414_ovl7(GObj *arg0) {
    func_800A7F74(3, 2, 0x77, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}

void func_801A447C_ovl7(GObj *arg0) {
    func_800A7F74(3, 2, 0x64, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}

void func_801A44E4_ovl7(GObj *arg0) {
    struct EnemyRecord *ent;

    ent = D_800E1B50[omCurrentObj->objId];
    D_800DF150[omCurrentObj->objId] = func_801A470C_ovl7;
    ent->unk48 = 0;
    ent->unk98 = NULL;
    func_801A3D6C_ovl7();
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = 8.0f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    D_800EC2E0[omCurrentObj->objId].as_s32 = 0;
    play_sound(0x157);
    func_800BB468(0xC, 0);
    while ((ABSF(D_800E3210[omCurrentObj->objId]) > ABSF(D_800E3750[omCurrentObj->objId])) && (D_800EC2E0[omCurrentObj->objId].as_s32 == 0)) {
        ohSleep(1);
    }
    func_800B3520();
    func_800FD570(0, ent->unk94->unk18, 0, 0, 0);
}

void func_801A470C_ovl7(void) {
    func_801A0D74_ovl7();
    D_800EC2E0[omCurrentObj->objId].as_s32 = (D_8012BCA0 >> 19) & 0xFFF;
}

/* MATCHED (302 insns).  The two-step `cc = ent->unk88->unkC; info = cc->unk0;`
   split is load-bearing: chained as one expression it is 136/302 (the ROM
   holds unkC in $a1 across the clear-block and spills unk0 at 0x3C, which
   also costs the frame 8 bytes).  Clear-block spelling is the matched
   func_801A50B0_ovl7 clone family, as in func_801A3E80_ovl7/func_801A5274_ovl7.
   LP64-clean, so the PORT arm is deleted. */
void func_801A4754_ovl7(GObj *arg0) {
    extern struct EnemyKindDesc D_801C5360_ovl7;
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];
    struct SubSub800E1B50_Unk88_UnkC *cc = ent->unk88->unkC;
    struct SubSub800E1B50_Unk88_UnkC_Unk0 *info = cc->unk0;
    f32 c = 65535.0f;

    D_800DF150[omCurrentObj->objId] = func_801A4C0C_ovl7;
    D_800DDA90[omCurrentObj->objId] = 0x24;
    ent->unk48 = NULL;
    ent->unk98 = NULL;
    D_800EC2E0[omCurrentObj->objId].as_u32 = 0;
    D_800EC4A0[omCurrentObj->objId] = 0;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = c;
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] = D_800E33D0[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = c;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    func_801A6610_ovl7();
    func_800AF408();
    D_800E9720[omCurrentObj->objId] = 0xB4;
    D_800EA520[omCurrentObj->objId] = 0;
    D_800E83E0[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = func_801AE7E0_ovl7(7);
    gEntitiesScaleXArray[omCurrentObj->objId] = info->scale;
    gEntitiesScaleYArray[omCurrentObj->objId] = info->scale;
    gEntitiesScaleZArray[omCurrentObj->objId] = info->scale;
    func_80198880_ovl7(&D_801C5360_ovl7);
    D_800E8920[omCurrentObj->objId] = 0;
    play_sound(0xC1);
    if (D_800E8E60[omCurrentObj->objId] == 1) {
        while ((D_800E9AA0[D_800E9C60[omCurrentObj->objId]] == NULL) &&
               (D_800DE350[D_800E9C60[omCurrentObj->objId]] != NULL)) {
            ohSleep(1);
        }
    } else {
        while ((D_800EC4A0[omCurrentObj->objId] == 0) &&
               (D_800E9720[omCurrentObj->objId] != 0) &&
               (D_800E9E20[omCurrentObj->objId] == 0)) {
            ohSleep(1);
            D_800E9720[omCurrentObj->objId] -= 1;
        }
        if ((D_800E9720[omCurrentObj->objId] != 0) && (D_800E9E20[omCurrentObj->objId] == 0)) {
            func_801A4DFC_ovl7(arg0);
        }
    }
    D_800EC2E0[omCurrentObj->objId].as_s32 = 1;
    func_800A7F74(3, 2, 0x6F, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}


struct Ovl7AnimInfo {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 filler4[8];
    s32 unkC;
    u8 filler10[0x10];
};

s32 func_80110B00(struct Ovl7AnimInfo *);
s32 func_80110FD4(struct Ovl7AnimInfo *);
s32 func_80110150(struct Ovl7AnimInfo *);

/* 8/124 insns */
void func_801A4C0C_ovl7(GObj *arg0)
{
  extern s32 D_8012E860;
  extern s32 D_800D7118[];
  struct EnemyRecord *ent;
  struct Ovl7AnimInfo sp2C;
  ent = D_800E1B50[omCurrentObj->objId];
  if (D_800EC9E4 != 0.0f)
  {
    D_800E3210[omCurrentObj->objId] = -D_800EC9E4;
  }
  if (((s32) D_800E8E60[omCurrentObj->objId]) != 1)
  {
    func_80111550(omCurrentObj->objId ^ 0);
    func_80111ECC(func_80111C88(ent->unk8C, omCurrentObj->objId));
    if (D_800EA520[omCurrentObj->objId] == 1)
    {
      if (func_80110B00(&sp2C) == 0)
      {
        if (func_80110FD4(&sp2C) == 0)
        {
          func_80110150(&sp2C);
        }
      }
    }
    else
    {
      func_80110150(&sp2C);
    }
    if (sp2C.unk2 != 0)
    {
      D_800EC4A0[omCurrentObj->objId] = 1;
    }
  }
  if (((s32) D_800E8E60[omCurrentObj->objId]) != 1)
  {
    func_801A0D74_ovl7(arg0);
    D_800E9E20[omCurrentObj->objId] = (D_8012BCA0 >> 19) & 0x1FF;
  }
  if (D_8012E860 == 0)
  {
    D_800EA520[omCurrentObj->objId] = 1;
  }
  if (D_800D7118[15] == 0)
  {
    D_800EC4A0[omCurrentObj->objId] = 1;
    D_800E9720[omCurrentObj->objId] = 1;
  }
}

struct TrackPosition7 {
    s32 unk0;
    f32 unk4;
};

s32 func_8019A900_ovl7(struct TrackPosition7 *);

void func_801A4DFC_ovl7(GObj *arg0) {
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
    extern s32 D_800D7118[];
    extern void *D_801CA884_ovl7[];

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
        if (D_800D7118[15] == 0) {
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

/* FACTORY: 161/194, one-slot temp rotation only.  Same instruction count,
   same schedule, same frame (0x30, s0-s4 saved, arg0 homed at 0x30), same
   branch targets; the residue is $t6/$t7/$t8/$t9 shifted by one slot from
   index 24 onward, which starts where the ROM shares $v1 between the
   D_800DF150 subscript and the D_800E1B50 lookup while our IDO shares it
   with the D_800DDA90 subscript instead.  CLONE-FAMILY LEVER (LEVERS 1) did
   the work here: the already-matched sibling func_801A50B0_ovl7 six
   functions up has this exact clear-block, and copying its spelling
   verbatim -- `f32 c = 65535.0f`, the two CHAINED assignment cascades
   (D_800E3050 = ... = D_800E3910 and D_800E3AD0 = D_800E3C90 = D_800E3E50),
   0.0f literals rather than a `zero` local, and the uncast
   D_800DF150 assignment -- took this from 165/204 to 33/194 in one edit.
   Separate per-array statements cost 84 diffs, exactly as that sibling's
   own comment warns.  The wait loop must be written as an if + do/while
   (the ROM tests the three conditions once before entering). */
#ifdef MIPS_TO_C
void func_801A5274_ovl7(GObj *arg0) {
    void func_801A557C_ovl7(void);
    void func_801A56C8_ovl7(void);
    void func_800B83C8(GObj *);
    void func_800B74B8(GObj *);
    extern struct EnemyEventTable D_801CD264_ovl7;
    struct EnemyRecord *ent;
    f32 c = 65535.0f;

    D_800DF150[omCurrentObj->objId] = func_801A557C_ovl7;
    ent = D_800E1B50[omCurrentObj->objId];
    D_800DDA90[omCurrentObj->objId] = 0x23;
    func_801A6610_ovl7();
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = c;
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] = D_800E33D0[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = c;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    func_800AF408();
    ent->unk48 = NULL;
    ent->unk98 = &D_801CD264_ovl7;
    D_800EC2E0[omCurrentObj->objId].as_u32 = 0;
    D_800E9720[omCurrentObj->objId] = 0xA;
    play_sound(0x222);
    if (D_800E8E60[omCurrentObj->objId] != 1) {
        D_800E0D50[omCurrentObj->objId] = 0;
        D_800DEF90[omCurrentObj->objId] = func_800B83C8;
        func_801A56C8_ovl7();
        if ((D_800EC2E0[omCurrentObj->objId].as_u32 == 0) &&
            (D_800E9720[omCurrentObj->objId] != 0) &&
            (gKirbyState.abilityInUse != 0)) {
            do {
                ohSleep(1);
                D_800E9720[omCurrentObj->objId] -= 1;
            } while ((D_800EC2E0[omCurrentObj->objId].as_u32 == 0) &&
                     (D_800E9720[omCurrentObj->objId] != 0) &&
                     (gKirbyState.abilityInUse != 0));
        }
    }
    D_800DEF90[omCurrentObj->objId] = func_800B74B8;
    func_801A43BC_ovl7(arg0);
}
#elif defined(PORT)
/* Thrown/spat launch state (ported from m2c): per-frame hook becomes the
 * landed-check func_801A557C_ovl7, physics cleared, contact FUNCLIST
 * D_801CD264_ovl7 installed, 10-frame timer; when not held, latch onto
 * the player (D_800E0D50[id] = 0, knockback carrier func_800B83C8),
 * snapshot the carry offset via func_801A56C8_ovl7 and wait until the
 * throw resolves (D_800EC2E0), the timer runs out, or the ability ends;
 * then restore the plain carrier func_800B74B8 and pop the type effect. */
void func_801A5274_ovl7(GObj *arg0) {
    void func_801A557C_ovl7(void);
    void func_801A56C8_ovl7(void);
    void func_800B83C8(GObj *);
    void func_800B74B8(GObj *);
    extern struct EnemyEventTable D_801CD264_ovl7;
    u32 id = omCurrentObj->objId;
    struct EnemyRecord *ent = D_800E1B50[id];
    f32 c;

    D_800DF150[id] = (void (*)(GObj *)) func_801A557C_ovl7;
    D_800DDA90[omCurrentObj->objId] = 0x23;
    func_801A6610_ovl7();
    c = 65535.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = c;
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] = D_800E33D0[omCurrentObj->objId] =
        D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = c;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    func_800AF408();
    ent->unk48 = NULL;
    ent->unk98 = &D_801CD264_ovl7;
    D_800EC2E0[omCurrentObj->objId].as_u32 = 0;
    D_800E9720[omCurrentObj->objId] = 0xA;
    play_sound(0x222);
    id = omCurrentObj->objId;
    if (D_800E8E60[id] != 1) {
        D_800E0D50[id] = 0;
        D_800DEF90[omCurrentObj->objId] = func_800B83C8;
        func_801A56C8_ovl7();
        while ((D_800EC2E0[omCurrentObj->objId].as_u32 == 0)
            && (D_800E9720[omCurrentObj->objId] != 0)
            && (gKirbyState.abilityInUse != 0)) {
            ohSleep(1);
            D_800E9720[omCurrentObj->objId] -= 1;
        }
    }
    D_800DEF90[omCurrentObj->objId] = func_800B74B8;
    func_801A43BC_ovl7(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A5274_ovl7.s")
#endif

void func_801A557C_ovl7(void) {
    f32 dx;
    f32 dz;
    f32 ax;
    f32 az;

    if (D_800E8E60[omCurrentObj->objId] == 1) { return; }
    func_801A0D74_ovl7();
    if ((D_800E8920[omCurrentObj->objId] != 1) || (D_800EC2E0[omCurrentObj->objId].as_s32 != 0)) { return; }
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
/* MATCHED (400 insns).  Sibling of func_801A4754_ovl7 and shares its two
   levers -- the split `cc = ent->unk88->unkC; info = cc->unk0;` and the
   func_801A50B0_ovl7 chained clear-block -- plus two of its own, both worth
   the whole function: (1) the arc-wait test must use ABS(), not ABSF():
   ABSF hoists its 0.0f into the callee-saved $f20 and adds an sdc1/ldc1 to
   the frame, while the ROM re-materialises `mtc1 $zero,$f14` inside the loop
   (LEVERS 3), 391/400 -> 159/400; (2) the operands must be written
   `ABS(D_800E3210[..] + D_800EC9E4) > ABS(D_800E3750[..])` -- the ROM
   evaluates the sum first into $f12 and compares c.lt.s $f2,$f12, so the
   `<` spelling with the operands the other way round is evaluation-order
   backwards, 159/400 -> MATCH.  LP64-clean, so the PORT arm is deleted. */
void func_801A57A8_ovl7(GObj *arg0) {
    extern struct EnemyKindDesc D_801C5360_ovl7;
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];
    struct SubSub800E1B50_Unk88_UnkC *cc = ent->unk88->unkC;
    struct SubSub800E1B50_Unk88_UnkC_Unk0 *info = cc->unk0;
    f32 c = 65535.0f;

    D_800DF150[omCurrentObj->objId] = func_801A5DE8_ovl7;
    D_800DDA90[omCurrentObj->objId] = 0x24;
    ent->unk48 = NULL;
    ent->unk98 = NULL;
    D_800EC2E0[omCurrentObj->objId].as_u32 = 0;
    D_800EC4A0[omCurrentObj->objId] = 0;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = c;
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] = D_800E33D0[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = c;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    func_801A6610_ovl7();
    func_800AF408();
    D_800E9720[omCurrentObj->objId] = 0xB4;
    D_800EA520[omCurrentObj->objId] = 0;
    D_800E83E0[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = func_801AE7E0_ovl7(7);
    gEntitiesScaleXArray[omCurrentObj->objId] = info->scale;
    gEntitiesScaleYArray[omCurrentObj->objId] = info->scale;
    gEntitiesScaleZArray[omCurrentObj->objId] = info->scale;
    func_80198880_ovl7(&D_801C5360_ovl7);
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = 8.0f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_u32 = 0;
    play_sound(0xC1);
    if (D_800E8E60[omCurrentObj->objId] == 1) {
        while ((D_800E9AA0[D_800E9C60[omCurrentObj->objId]] == NULL) &&
               (D_800DE350[D_800E9C60[omCurrentObj->objId]] != NULL)) {
            ohSleep(1);
        }
    } else {
        while ((ABS(D_800E3210[omCurrentObj->objId] + D_800EC9E4) >
                ABS(D_800E3750[omCurrentObj->objId])) &&
               (D_800E9E20[omCurrentObj->objId] == 0)) {
            ohSleep(1);
        }
        func_800B3520();
        D_800E9FE0[omCurrentObj->objId].as_u32 = 1;
        if (D_800E9E20[omCurrentObj->objId] == 0) {
            while ((D_800EC4A0[omCurrentObj->objId] == 0) &&
                   (D_800E9720[omCurrentObj->objId] != 0) &&
                   (D_800E9E20[omCurrentObj->objId] == 0)) {
                ohSleep(1);
                D_800E9720[omCurrentObj->objId] -= 1;
            }
            if ((D_800E9720[omCurrentObj->objId] != 0) && (D_800E9E20[omCurrentObj->objId] == 0)) {
                func_801A4DFC_ovl7(arg0);
            }
        }
    }
    D_800EC2E0[omCurrentObj->objId].as_s32 = 1;
    func_800A7F74(3, 2, 0x6F, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}


void func_801A5DE8_ovl7(GObj *arg0) {
    extern s32 D_8012E860;
    extern s32 D_800D7118[];
    struct EnemyRecord *ent;
    struct Ovl7AnimInfo sp34;

    ent = D_800E1B50[omCurrentObj->objId];
    if (D_800EC9E4 != 0.0f) {
        D_800E3210[omCurrentObj->objId] = -D_800EC9E4;
    }
    if (((s32) D_800E8E60[omCurrentObj->objId] != 1) && (D_800E9FE0[omCurrentObj->objId].as_s32 != 0) && (D_800EA520[omCurrentObj->objId] == 1)) {
        func_80111550(omCurrentObj->objId);
        func_80111ECC(func_80111C88(ent->unk8C, omCurrentObj->objId));
        if (func_80110B00(&sp34) == 0) {
            if (func_80110FD4(&sp34) == 0) {
                func_80110150(&sp34);
            }
        }
        if (sp34.unk2 != 0) {
            D_800EC4A0[omCurrentObj->objId] = 1;
        }
    }
    if ((s32) D_800E8E60[omCurrentObj->objId] != 1) {
        func_801A0D74_ovl7(arg0);
        D_800E9E20[omCurrentObj->objId] = (D_8012BCA0 >> 19) & 0x1FF;
    }
    if (D_8012E860 == 0) {
        D_800EA520[omCurrentObj->objId] = 1;
    }
    if (D_800D7118[15] == 0) {
        D_800EC2E0[omCurrentObj->objId].as_s32 = 1;
        func_800B3520();
        D_800E9E20[omCurrentObj->objId] = 1;
        D_800EC4A0[omCurrentObj->objId] = 1;
        D_800E9720[omCurrentObj->objId] = 1;
    }
}

#ifdef NON_MATCHING
/* 46/198 */
void func_801A5FF4_ovl7(GObj *arg0) {
    extern s32 D_800D7118[];
    void func_800B7790(GObj *);
    void func_801A63BC_ovl7(GObj *);
    void func_801A630C_ovl7(void);
    struct EnemyRecord *ent;
    s32 idx;
    s32 unk88;
    s32 temp2;
    s32 temp;

    ent = D_800E1B50[omCurrentObj->objId];
    idx = D_800D7118[0];
    unk88 = (s32) ent->unk88;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] = D_800E33D0[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = 65535.0f;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    func_800AF408();
    D_800E98E0[omCurrentObj->objId] = 0;
    play_sound(0xC4);
    if (D_800D7118[0] == 1) {
        temp = D_800D7118[14] + 1;
        if (temp >= 6) { D_800D7118[14] = 1; } else { D_800D7118[14] = temp; }
    }
    if (D_800D7118[0] == -1) {
        D_800D7118[0] = 1;
        idx = 1;
        D_800E98E0[omCurrentObj->objId] = 1;
        D_800D7118[14] = 1;
    }
    D_800D7118[idx] = D_800E77A0[omCurrentObj->objId];
    D_800D7118[idx + 5] = unk88;
    temp2 = D_800D7118[0] + 1;
    if (temp2 >= 6) { D_800D7118[0] = 1; } else { D_800D7118[0] = temp2; }
    D_800DEF90[omCurrentObj->objId] = func_800B7790;
    *(s32 *) &D_800E8E60[omCurrentObj->objId] = 1;
    func_801A630C_ovl7();
    ohSleep(5);
    D_800E33D0[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] = D_800E33D0[omCurrentObj->objId];
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        func_801A63BC_ovl7(arg0);
    }
    ent->unk40 = 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A5FF4_ovl7.s")
#endif

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

/* FACTORY: 24/119, base-register hoisting + prologue scheduling.  The ROM's
   whole skeleton is reproduced: frame 0x48, the s0-s7/fp/f20 save set (20.0f
   lives in the callee-saved $f20), the roster walk through a POINTER $s0 into
   D_800D7118 (a plain `slot` index does not reproduce it), the wrap to
   &D_800D7118[1] at slot 6, the pre-increment `count` stored into
   D_800E9C60, the paired p[5] word, and the 4-words-per-iteration unrolled
   reset loop from D_800D7118 to D_800D7158.  Residues: our IDO hoists the
   D_800E6A10 base into $a1 where the ROM re-materialises it with lui/%lo at
   each of its two uses, and it emits the register saves in a different order
   from the ROM's (which interleaves them with `s3 = D_800D7118[14]`); those
   two shift the rest.  Note `eneId = *p` as a named local IS correct even
   though it raises the raw count 87 -> 95: without it IDO reads *p twice
   where the ROM reads it once into $a0 and feeds both the D_800E98E0 store
   and the D_801C2E84_ovl7 subscript. */
#ifdef MIPS_TO_C
void func_801A6434_ovl7(void) {
    s32 func_801AE7E0_ovl7(s32);
    extern s32 D_800D7118[];
    extern u32 D_801C2E84_ovl7[];
    s32 *p;
    s32 slot;
    s32 count;
    s32 t;
    s32 eneId;

    slot = D_800D7118[14];
    p = &D_800D7118[slot];
    count = 0;
    while (*p != -1) {
        t = func_801AE7E0_ovl7(0x14);
        if (t != 0) {
            gEntitiesNextPosXArray[t] = gEntitiesNextPosXArray[0];
            gEntitiesNextPosYArray[t] = gEntitiesNextPosYArray[0] + 20.0f;
            gEntitiesNextPosZArray[t] = gEntitiesNextPosZArray[0];
            eneId = *p;
            D_800E98E0[t] = eneId;
            D_800E9AA0[t] = (struct EntityThing800E9AA0 *) D_801C2E84_ovl7[eneId];
            D_800E9C60[t] = count;
            D_800E9E20[t] = p[5];
            D_800E8E60[t] = 0;
            D_800E5F90[t] = D_800E5F90[0];
            D_800E6BD0[t] = D_800E6BD0[0];
            D_800E6A10[t] = D_800E6A10[0];
        }
        if (slot + 1 < 6) {
            slot = slot + 1;
            p = p + 1;
        } else {
            p = &D_800D7118[1];
            slot = 1;
        }
        count += 1;
        if (count == 5) {
            break;
        }
    }
    for (p = &D_800D7118[0]; p != &D_800D7118[16]; p += 4) {
        p[0] = -1;
        p[1] = -1;
        p[2] = -1;
        p[3] = -1;
    }
}
#elif defined(PORT)
/* Release the stored enemy-card roster around the player (ported from
 * m2c): starting at ring slot D_800D7118[14], walk up to 5 stored ids
 * (slots 1..5 wrap), spawn a card track for each (func_801AE7E0_ovl7(0x14)),
 * park it 20 above the player and copy the player's path/track state,
 * stamping the id, its D_801C2E84_ovl7 token into D_800E9AA0, the ring
 * position and the paired D_800D7118[i+5] word; then reset the whole
 * 16-word roster to -1. */
void func_801A6434_ovl7(void) {
    s32 func_801AE7E0_ovl7(s32);
    extern s32 D_800D7118[];
    extern u32 D_801C2E84_ovl7[];
    s32 slot = D_800D7118[14];
    s32 count = 0;
    s32 i;

    while ((D_800D7118[slot] != -1) && (count != 5)) {
        s32 t = func_801AE7E0_ovl7(0x14);

        if (t != 0) {
            s32 eneId = D_800D7118[slot];

            gEntitiesNextPosXArray[t] = gEntitiesNextPosXArray[0];
            gEntitiesNextPosYArray[t] = gEntitiesNextPosYArray[0] + 20.0f;
            gEntitiesNextPosZArray[t] = gEntitiesNextPosZArray[0];
            D_800E98E0[t] = eneId;
            D_800E9AA0[t] = (struct EntityThing800E9AA0 *) (uintptr_t) D_801C2E84_ovl7[eneId];
            D_800E9C60[t] = count;
            D_800E9E20[t] = D_800D7118[slot + 5];
            D_800E8E60[t] = 0;
            D_800E5F90[t] = D_800E5F90[0];
            D_800E6BD0[t] = D_800E6BD0[0];
            D_800E6A10[t] = D_800E6A10[0];
        }
        count += 1;
        slot += 1;
        if (slot >= 6) {
            slot = 1;
        }
    }
    for (i = 0; i < 16; i++) {
        D_800D7118[i] = -1;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A6434_ovl7.s")
#endif

void func_801A6610_ovl7(void) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];
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
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];
    s32 temp = ent->unk94->unk18;

    if ((temp == 6) || (temp == 7)) {
        return 1;
    }
    return 0;
}

s32 func_801A66FC_ovl7(void) {
    extern u8 D_800E7730[];
    extern u32 D_801CA9F8_ovl7[];
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];
    u8 ret;
    s32 pad0;
    s32 pad1;
    u32 sel;
    struct EnemyProbe *sub;

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
            func_801A2558_ovl7((u32) (uintptr_t) &D_801CA9F8_ovl7);
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
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    func_800FD570(0, ent->unk94->unk18, 0.0f, 0.0f, 0.0f);
}

void func_801A68A8_ovl7(GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    func_800FD570(0, ent->unk94->unk18, 0.0f, 0.0f, 0.0f);
}

void func_801A6900_ovl7(GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    func_800FD570(0, ent->unk94->unk18, 0.0f, 0.0f, 0.0f);
}

void func_801A6958_ovl7(GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    func_800FD570(0, ent->unk94->unk18, 0.0f, 0.0f, 0.0f);
}

void func_801A69B0_ovl7(GObj *arg0) {
    extern f32 gameTicksPerDraw;
    extern FUNCLIST D_801C2994_ovl7;
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];
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
        func_800A22D4((u32) (uintptr_t) ent->unk34);
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
    extern struct EnemyEventTable D_801CB470_ovl7;
/* D_801CE010_ovl7 = 0.2f : now emitted by this TU */
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    D_800E9020[omCurrentObj->objId] = 0.0f;
    D_800DF150[omCurrentObj->objId] = func_801A6DD0_ovl7;
    ent->unk48 = 0;
    ent->unk98 = &D_801CB470_ovl7;
    if (ent->unk34 != 0) {
        func_800A22D4((u32) (uintptr_t) ent->unk34);
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
    extern f32 gameTicksPerDraw;

    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];
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
        func_800A22D4((u32) (uintptr_t) ent->unk34);
    }
    func_800A2300(arg0);
    ent->unk34 = 0;
    func_800FD570(0, 6, 0.0f, 0.0f, 0.0f);
    play_sound(0x92);
    func_801A41D4_ovl7(arg0);
}

