#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "unk_structs/D_800E1B50.h"
#include "buffers.h"
#include "ovl1/ovl1_7.h"

#ifdef PORT
extern struct Sub800E1B50_Unk98 D_801CB4DC_ovl7;
void func_801ACF5C_ovl7(GObj *);
extern void func_800A9864(s32, s32, s32);
extern void func_8019D958_ovl7(u16);
extern void func_8019BAC8_ovl7(void);
extern void func_800FD570(s32, s32, f32, f32, f32);
void func_801ACF84_ovl7(GObj *);
void func_800B7514(s32);
void ohSleep(s32);
/* Turret shot projectile main: bind the projectile draw hook and hit
 * annex, start the muzzle sprite (0x10086), and detach from the
 * parent turret when it died or replaced its shot slot.  Mode 0
 * (arc shot): burst out at 30 units/tick along the parent's stored
 * aim angle for one tick, splash (func_800FD570 kind 5), then cruise
 * at 6.  Mode 1 (homing dart): aim at the parent's bone-5 world
 * position, normalized by manhattan length, 40 units/tick for one
 * tick, splash, then cruise at 8.  Both variants live 60 ticks and
 * finish through the shared ovl7 projectile epilogue. */
void func_801F0060_ovl9(GObj *arg0) {
    UnkStruct800E1B50 *rec;
    s32 parent;
    u32 id;

    id = omCurrentObj->objId;
    D_800DF150[id] = func_801ACF5C_ovl7;
    rec = D_800E1B50[id];
    parent = D_800E0D50[id];
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB4DC_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9864(0x10086, 0x23, 0x10);
    if ((D_800DD710[parent] == -1) || (omCurrentObj->objId != D_800EBBE0[parent])) {
        func_8019D958_ovl7(((u16 *) omCurrentObj)[1]);
    }
    id = omCurrentObj->objId;
    switch (D_800E7880[id]) {
        case 0:
            func_8019BAC8_ovl7();
            rec->unk80->unk10 = 8.0f;
            D_800EA8A0[omCurrentObj->objId] = D_800EA8A0[parent];
            id = omCurrentObj->objId;
            D_800E64D0[id] = sinf(D_800EA8A0[omCurrentObj->objId]) * 30.0f * D_800E6A10[id];
            D_800E3210[omCurrentObj->objId] = cosf(D_800EA8A0[omCurrentObj->objId]) * 30.0f;
            ohSleep(1);
            func_800FD570(0, 5, 0.0f, 0.0f, 0.0f);
            id = omCurrentObj->objId;
            D_800E64D0[id] = sinf(D_800EA8A0[omCurrentObj->objId]) * 6.0f * D_800E6A10[id];
            D_800E3210[omCurrentObj->objId] = cosf(D_800EA8A0[omCurrentObj->objId]) * 6.0f;
            break;
        case 1: {
            Vector sp4C;
            f32 dx;
            f32 dy;
            f32 dz;
            f32 len;

            func_8019BAC8_ovl7();
            rec->unk80->unk10 = 8.0f;
            D_800DEF90[omCurrentObj->objId] = func_800B7514;
            utilGetTransformSRT(&sp4C, D_800DFBD0[D_800E0D50[omCurrentObj->objId]][5]);
            id = omCurrentObj->objId;
            dx = sp4C.x - gEntitiesNextPosXArray[id];
            dy = sp4C.y - gEntitiesNextPosYArray[id];
            dz = sp4C.z - gEntitiesNextPosZArray[id];
            len = ((dx < 0.0f) ? -dx : dx) + ((dy < 0.0f) ? -dy : dy) + ((dz < 0.0f) ? -dz : dz);
            if (len == 0.0f) {
                len = 0.00001f;
            }
            dx /= len;
            dy /= len;
            dz /= len;
            D_800E3050[id] = dx * 40.0f;
            D_800E3210[omCurrentObj->objId] = dy * 40.0f;
            D_800E33D0[omCurrentObj->objId] = dz * 40.0f;
            ohSleep(1);
            func_800FD570(0, 5, 0.0f, 0.0f, 0.0f);
            D_800E3050[omCurrentObj->objId] = dx * 8.0f;
            D_800E3210[omCurrentObj->objId] = dy * 8.0f;
            D_800E33D0[omCurrentObj->objId] = dz * 8.0f;
            break;
        }
    }
    ohSleep(0x3C);
    func_801ACF84_ovl7(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7/func_801F0060_ovl9.s")
#endif

#ifdef PORT
extern f32 D_8021C300_ovl9[];
extern f32 D_8021C308_ovl9[];
void func_801F09E4_ovl9(GObj *);
extern void func_800AA018(s32);
extern void func_800B33F4(void);
/* Lobbed spit projectile main: attach the projectile hit annex with
 * an 8-unit radius, inherit launch parameters from the shooter --
 * mode 0 takes facing and stored pitch straight from the parent
 * turret (releasing the shot slot if the turret is gone), other
 * modes ride at the parent's height with the grandparent's facing
 * times the per-track aim factor D_800EC660 -- copy the source's
 * rail binding, then fire: one tick at the heavy launch speed from
 * D_8021C300 (mode 1 lofts with -10 on the vertical), settle to the
 * cruise speed from D_8021C308 (modes with index 1 get 3 extra ticks
 * of it), arm the hit flag and expire after 60 ticks through the
 * shared epilogue. */
void func_801F0548_ovl9(GObj *arg0) {
    UnkStruct800E1B50 *rec;
    s32 src;
    s32 idx;
    u32 id;
    u8 mode;

    rec = D_800E1B50[omCurrentObj->objId];
    func_8019BAC8_ovl7();
    rec->unk80->unk10 = 8.0f;
    D_800DF150[omCurrentObj->objId] = func_801F09E4_ovl9;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB4DC_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    id = omCurrentObj->objId;
    if (D_800E7880[id] != 0) {
        s32 parent = D_800E0D50[id];

        src = D_800E0D50[parent];
        gEntitiesNextPosYArray[id] = gEntitiesNextPosYArray[parent];
        D_800E6A10[omCurrentObj->objId] = D_800E6A10[src];
        id = omCurrentObj->objId;
        D_800EA6E0[id] = D_800E6A10[id] * D_800EC660[id];
    } else {
        src = D_800E0D50[id];
        if ((D_800DD710[src] == -1) || (id != D_800EBBE0[src])) {
            func_8019D958_ovl7(id & 0xFFFF);
            id = omCurrentObj->objId;
        }
        D_800E6A10[id] = D_800E6A10[src];
        D_800EA6E0[omCurrentObj->objId] = D_800EADE0[src];
    }
    D_800E5F90[omCurrentObj->objId] = D_800E5F90[src];
    D_800E6BD0[omCurrentObj->objId] = D_800E6BD0[src];
    func_800B33F4();
    func_800A9864(0x10089, 0x23, 0x10);
    func_800AA018(0x1051C);
    D_800E98E0[omCurrentObj->objId] = 0;
    id = omCurrentObj->objId;
    mode = D_800E7880[id];
    idx = mode & 1;
    if (mode == 0) {
        D_800E64D0[omCurrentObj->objId] = D_8021C300_ovl9[idx] * sinf(D_800EA6E0[id]);
        D_800E3210[omCurrentObj->objId] = D_8021C300_ovl9[idx] * cosf(D_800EA6E0[omCurrentObj->objId]);
    } else if (mode == 1) {
        D_800E64D0[omCurrentObj->objId] = D_8021C300_ovl9[idx] * sinf(D_800EA6E0[id]);
        D_800E3210[omCurrentObj->objId] = (D_8021C300_ovl9[idx] - 10.0f) * cosf(D_800EA6E0[omCurrentObj->objId]);
    }
    ohSleep(1);
    D_800E64D0[omCurrentObj->objId] = D_8021C308_ovl9[idx] * sinf(D_800EA6E0[omCurrentObj->objId]);
    D_800E3210[omCurrentObj->objId] = D_8021C308_ovl9[idx] * cosf(D_800EA6E0[omCurrentObj->objId]);
    if (idx != 0) {
        ohSleep(3);
    }
    D_800E98E0[omCurrentObj->objId] = 1;
    ohSleep(0x3C);
    func_801ACF84_ovl7(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7/func_801F0548_ovl9.s")
#endif

extern u32 D_800BE4EC;
void func_801A0D74_ovl7();
void func_800A8100(s32, s32, s32, void *);
void func_801A03B4_ovl7(void);

void func_801F09E4_ovl9(GObj *arg0) {
    switch (D_800BE4EC % 6) {
    case 0:
        func_800A8100(3, 2, 0x4D, arg0->data.ptr);
        break;
    case 2:
        func_800A8100(3, 2, 0x4E, arg0->data.ptr);
        break;
    case 4:
        func_800A8100(3, 2, 0x4F, arg0->data.ptr);
        break;
    }
    func_801A0D74_ovl7(arg0);
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        func_801A03B4_ovl7();
    }
}

#ifdef PORT
extern void func_801A3280_ovl7(void);
extern void func_800A22D4(void *);
extern void *func_800A8234(s32, s32, s32);
void func_800B4924(s32);
void func_801F0DFC_ovl9(GObj *);
struct PcEneCurve {
    Vector unk0;
    Vector unkC;
    Vector unk18;
    f32 unk24;
    f32 unk28;
    s32 unk2C;
};
extern void func_8019ED58_ovl7(struct PcEneCurve *);
extern void func_801A3E80_ovl7(GObj *);
/* Tossed-bomb projectile: inherit heading/rotation from the thrower,
 * attach the fuse-spark generator (3/2/0xF1), arc along the ovl7
 * lob curve (gravity -0.4 over 32 ticks), wobble vertically twice
 * (8 ticks down, 8 up), then release the spark, pop the explosion
 * puff (3/2/0xF2) with the annex's explosion cue, reset the parent's
 * 10-tick reload timer and die through the ovl7 kill path.
 * PORT: the generator handle lives in rec->unk34 (a real pointer);
 * D_800E98E0 keeps only the N64's nonzero flag for the draw hook. */
void func_801F0ABC_ovl9(GObj *arg0) {
    UnkStruct800E1B50 *rec;
    struct PcEneCurve curve;
    void *gen;
    u32 id;

    rec = D_800E1B50[omCurrentObj->objId];
    func_801A3280_ovl7();
    func_8019BAC8_ovl7();
    rec->unk80->unk10 = 8.0f;
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    id = omCurrentObj->objId;
    gEntitiesAngleYArray[id] = gEntitiesAngleYArray[D_800E0D50[id]];
    id = omCurrentObj->objId;
    D_800E17D0[id] = D_800E17D0[D_800E0D50[id]];
    id = omCurrentObj->objId;
    D_800E9020[id] = D_800E9020[D_800E0D50[id]];
    D_800DEF90[omCurrentObj->objId] = func_800B4924;
    D_800DF150[omCurrentObj->objId] = func_801F0DFC_ovl9;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    gen = func_800A8234(3, 2, 0xF1);
    rec->unk34 = gen;
    D_800E98E0[omCurrentObj->objId] = (gen != NULL);
    D_800E8920[omCurrentObj->objId] = 0;
    func_800B33F4();
    curve.unk2C = 0x20;
    curve.unk24 = -0.4f;
    func_8019ED58_ovl7(&curve);
    ohSleep(curve.unk2C);
    func_800B33F4();
    D_800E3210[omCurrentObj->objId] = -4.0f;
    D_800E3750[omCurrentObj->objId] = 1.0f;
    ohSleep(8);
    D_800E3210[omCurrentObj->objId] = 4.0f;
    D_800E3750[omCurrentObj->objId] = -1.0f;
    ohSleep(8);
    id = omCurrentObj->objId;
    if (D_800E98E0[id] != 0) {
        func_800A22D4(rec->unk34);
        rec->unk34 = NULL;
        D_800E98E0[omCurrentObj->objId] = 0;
        id = omCurrentObj->objId;
    }
    func_800A7F74(3, 2, 0xF2, gEntitiesNextPosXArray[id], gEntitiesNextPosYArray[id],
                  gEntitiesNextPosZArray[id]);
    if (rec->unk94->unk1C != 0x80000000) {
        play_sound(rec->unk94->unk1C);
    }
    D_800E9E20[D_800E0D50[omCurrentObj->objId]] = 0xA;
    rec->unk40 = 1;
    func_801A3E80_ovl7(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7/func_801F0ABC_ovl9.s")
#endif

/* FACTORY: 6/147, frame +8 from one extra saved register.  Instruction count
   is exact (147) and the body order is the ROM's, but our IDO keeps `rec` in
   $s1 (frame 0x38, s0+s1 saved) where the ROM saves only $s0 = &omCurrentObj
   and re-materialises the D_800E1B50 base in a temp, so every sp offset and
   most register names shift.  Measured: inlining D_800E1B50[objId] at each
   use (LEVERS 10) is NOT the fix -- it grows the function to 168 instructions
   (165 diffs); dropping the `id` local instead keeps 147 but does not free
   $s1.  N64 spelling already applied: the spark generator's emitter pointer
   is at offset 0x4C, not the PORT struct's 0x58. */
#ifdef MIPS_TO_C
struct PcOvl1Emitter {
    struct PcOvl1Emitter *next;
    Vector unk4;
    Vector unk10;
};
struct PcOvl1Generator {
    u8 pad0[0x4C];
    struct PcOvl1Emitter *xf;
};
void func_801A3E80_ovl7(struct GObj *);
void func_801A03B4_ovl7(void);
extern s32 D_800E83E0[];
/* Bomb draw hook: while the fuse-spark generator lives, pin its
 * emitter to the bomb's position/rotation; then run the anim-event
 * pump and, when it reports a pending event (the N64 reads the
 * pump's leftover $v0, which is func_801A07C4's "event pending"
 * result -- the port tests D_800E83E0 directly) or the bomb touched
 * ground, detonate: release the spark, pop the explosion puff with
 * the annex cue, hand the thread to the ovl7 kill path and set the
 * parent's 1-tick reload flag.
 * PORT: the generator handle lives in rec->unk34; D_800E98E0 keeps
 * only the nonzero flag (see func_801F0ABC). */
void func_801F0DFC_ovl9(GObj *arg0) {
    UnkStruct800E1B50 *rec = D_800E1B50[omCurrentObj->objId];
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        struct PcOvl1Generator *gen = (struct PcOvl1Generator *) rec->unk34;

        gen->xf->unk4.x = gEntitiesNextPosXArray[omCurrentObj->objId];
        gen->xf->unk4.y = gEntitiesNextPosYArray[omCurrentObj->objId];
        gen->xf->unk4.z = gEntitiesNextPosZArray[omCurrentObj->objId];
        gen->xf->unk10.x = gEntitiesAngleXArray[omCurrentObj->objId];
        gen->xf->unk10.y = gEntitiesAngleYArray[omCurrentObj->objId];
        gen->xf->unk10.z = gEntitiesAngleZArray[omCurrentObj->objId];
    }
    func_801A03B4_ovl7();
    if ((D_800E83E0[omCurrentObj->objId] != 0) || (D_800E8920[omCurrentObj->objId] != 0)) {
        if (D_800E98E0[omCurrentObj->objId] != 0) {
            func_800A22D4(rec->unk34);
            rec->unk34 = NULL;
            D_800E98E0[omCurrentObj->objId] = 0;
            }
        func_800A7F74(3, 2, 0xF2, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId],
                      gEntitiesNextPosZArray[omCurrentObj->objId]);
        if (rec->unk94->unk1C != 0x80000000) {
            play_sound(rec->unk94->unk1C);
        }
        rec->unk40 = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A3E80_ovl7);
        D_800E9E20[D_800E0D50[omCurrentObj->objId]] = 1;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7/func_801F0DFC_ovl9.s")
#endif
#ifdef PORT
struct PcOvl1Emitter {
    struct PcOvl1Emitter *next;
    Vector unk4;
    Vector unk10;
};
struct PcOvl1Generator {
    u8 pad0[0x18];
    Vector pos;
    u8 pad24[0x58 - 0x24];
    struct PcOvl1Emitter *xf;
};
void func_801A03B4_ovl7(void);
extern s32 D_800E83E0[];
/* Bomb draw hook: while the fuse-spark generator lives, pin its
 * emitter to the bomb's position/rotation; then run the anim-event
 * pump and, when it reports a pending event (the N64 reads the
 * pump's leftover $v0, which is func_801A07C4's "event pending"
 * result -- the port tests D_800E83E0 directly) or the bomb touched
 * ground, detonate: release the spark, pop the explosion puff with
 * the annex cue, hand the thread to the ovl7 kill path and set the
 * parent's 1-tick reload flag.
 * PORT: the generator handle lives in rec->unk34; D_800E98E0 keeps
 * only the nonzero flag (see func_801F0ABC). */
void func_801F0DFC_ovl9(GObj *arg0) {
    UnkStruct800E1B50 *rec;
    u32 id;

    id = omCurrentObj->objId;
    rec = D_800E1B50[id];
    if (D_800E98E0[id] != 0) {
        struct PcOvl1Generator *gen = (struct PcOvl1Generator *) rec->unk34;

        gen->xf->unk4.x = gEntitiesNextPosXArray[id];
        gen->xf->unk4.y = gEntitiesNextPosYArray[omCurrentObj->objId];
        gen->xf->unk4.z = gEntitiesNextPosZArray[omCurrentObj->objId];
        gen->xf->unk10.x = gEntitiesAngleXArray[omCurrentObj->objId];
        gen->xf->unk10.y = gEntitiesAngleYArray[omCurrentObj->objId];
        gen->xf->unk10.z = gEntitiesAngleZArray[omCurrentObj->objId];
    }
    func_801A03B4_ovl7();
    if ((D_800E83E0[omCurrentObj->objId] != 0) || (D_800E8920[omCurrentObj->objId] != 0)) {
        id = omCurrentObj->objId;
        if (D_800E98E0[id] != 0) {
            func_800A22D4(rec->unk34);
            rec->unk34 = NULL;
            D_800E98E0[omCurrentObj->objId] = 0;
            id = omCurrentObj->objId;
        }
        func_800A7F74(3, 2, 0xF2, gEntitiesNextPosXArray[id], gEntitiesNextPosYArray[id],
                      gEntitiesNextPosZArray[id]);
        if (rec->unk94->unk1C != 0x80000000) {
            play_sound(rec->unk94->unk1C);
        }
        rec->unk40 = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A3E80_ovl7);
        D_800E9E20[D_800E0D50[omCurrentObj->objId]] = 1;
    }
}
#endif

#ifdef PORT
extern struct Sub800E1B50_Unk98 D_801CD048;
extern f32 D_8021C320_ovl9[];
extern f32 D_8021C330_ovl9[];
extern f32 D_8021C340_ovl9[];
extern f32 D_8021C350_ovl9[];
extern void func_8019B9B0_ovl7(void);
void func_800B6A2C(s32);
void func_801F13B4_ovl9(void);
/* Two-hop bouncer projectile: pop out of the shooter 16 units up
 * with the per-mode first-hop velocity (D_8021C320/D_8021C330),
 * growing from half scale to full at 0.1 per tick until it lands,
 * then rebound with the second-hop velocity pair
 * (D_8021C340/D_8021C350) the same way, and expire through the
 * shared ovl7 projectile epilogue. */
void func_801F1044_ovl9(GObj *arg0) {
    u8 mode;
    u32 id;

    mode = D_800E7880[omCurrentObj->objId];
    func_8019B9B0_ovl7();
    D_800DEF90[omCurrentObj->objId] = func_800B6A2C;
    D_800DF150[omCurrentObj->objId] = (void (*)(GObj *)) func_801F13B4_ovl9;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CD048;
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    gEntitiesNextPosYArray[omCurrentObj->objId] += 16.0f;
    D_800EA6E0[omCurrentObj->objId] = 0.5f;
    func_800A9864(0x100A2, 0x23, 0x10);
    D_800E64D0[omCurrentObj->objId] = D_8021C320_ovl9[mode];
    D_800E3210[omCurrentObj->objId] = D_8021C330_ovl9[mode];
    D_800E3750[omCurrentObj->objId] = -0.65f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    func_800AA018(0x10560);
    D_800E8920[omCurrentObj->objId] = 0;
    id = omCurrentObj->objId;
    while (D_800E8920[id] == 0) {
        ohSleep(1);
        D_800EA6E0[omCurrentObj->objId] += 0.1f;
        id = omCurrentObj->objId;
        if (D_800EA6E0[id] > 1.0f) {
            D_800EA6E0[id] = 1.0f;
            id = omCurrentObj->objId;
        }
    }
    D_800E64D0[id] = D_8021C340_ovl9[mode];
    D_800E3210[omCurrentObj->objId] = D_8021C350_ovl9[mode];
    D_800E3750[omCurrentObj->objId] = -0.65f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    D_800E8920[omCurrentObj->objId] = 0;
    id = omCurrentObj->objId;
    while (D_800E8920[id] == 0) {
        ohSleep(1);
        D_800EA6E0[omCurrentObj->objId] += 0.1f;
        id = omCurrentObj->objId;
        if (D_800EA6E0[id] > 1.0f) {
            D_800EA6E0[id] = 1.0f;
            id = omCurrentObj->objId;
        }
    }
    func_801ACF84_ovl7(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7/func_801F1044_ovl9.s")
#endif

void func_801A0D74_ovl7();
s32 func_801F1440_ovl9(f32);

void func_801F13B4_ovl9(void) {
    f32 temp;

    temp = D_800EA6E0[omCurrentObj->objId];
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    func_801A0D74_ovl7();
    func_801F1440_ovl9(D_800EA6E0[omCurrentObj->objId]);
}

struct Ovl9AnimCmd {
    u8 filler0[0x18];
    f32 unk18;
};

struct Ovl9AnimObj {
    u8 filler0[0x24];
    struct Ovl9AnimCmd *unk24;
};

void func_80111ECC(struct Ovl9AnimObj *);
struct Ovl9AnimObj *func_801A0464_ovl7(void);
void func_801A04B8_ovl7(void);

s32 func_801F1440_ovl9(f32 arg0) {
    struct Ovl9AnimObj *temp;
    UnkStruct800E1B50 *p;

    p = D_800E1B50[omCurrentObj->objId];
    if (p->unk8C == NULL) {
        return 0;
    }
    temp = func_801A0464_ovl7();
    temp->unk24->unk18 = temp->unk24->unk18 * arg0;
    func_80111ECC(temp);
    func_801A04B8_ovl7();
}

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
void func_800B6A2C(s32);                            /* extern */
void func_801ACF5C_ovl7(GObj *);                    /* extern */
extern struct Sub800E1B50_Unk98 D_801CB470_ovl7;
extern struct Sub800E1B50_Unk98 D_801CD024;

void func_801F14B8_ovl9(s32 arg0) {
    GObj *temp_v0_2;
    s32 var_v1;
    u32 temp_v0;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;
    u32 temp_v1_4;
    u32 temp_v1_5;

    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800DEF90[omCurrentObj->objId] = func_800B6A2C;
    D_800DF150[omCurrentObj->objId] = func_801ACF5C_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB470_ovl7;
    func_800A9864(0x10095, 0x23, 0x10);
    temp_v0 = omCurrentObj->objId;
    if (D_800E7880[temp_v0] & 1) {
        D_800E6A10[temp_v0] = 1.0f;
    } else {
        D_800E6A10[temp_v0] = -1.0f;
    }
    func_800AA018(0x1053F);
    temp_v0_2 = omCurrentObj;
    D_800E8920[temp_v0_2->objId] = 0;
    temp_v1 = temp_v0_2->objId;
    D_800E64D0[temp_v1] = D_800E6A10[temp_v1] * 16.0f;
    D_800E3210[temp_v0_2->objId] = -20.0f;
    temp_v1_2 = temp_v0_2->objId;
    var_v1 = temp_v1_2 * 4;
    if (D_800E8920[temp_v1_2] == 0) {
        do {
            ohSleep(1);
            temp_v1_3 = omCurrentObj->objId;
            var_v1 = temp_v1_3 * 4;
        } while (D_800E8920[temp_v1_3] == 0);
    }
    *(D_800E3750 + var_v1) = 0.0f;
    temp_v1_4 = temp_v0_2->objId;
    D_800E3210[temp_v1_4] = D_800E3750[temp_v1_4];
    D_800E3C90[temp_v0_2->objId] = 65535.0f;
    D_800E1B50[temp_v0_2->objId]->unk98 = &D_801CD024;
    temp_v1_5 = omCurrentObj->objId;
    D_800E64D0[temp_v1_5] = D_800E6A10[temp_v1_5] * 8.0f;
    func_800AF27C(D_800E3750);
    func_800AA018(0x10541);
    ohSleep(4);
    func_801ACF84_ovl7(arg0);
}
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7/func_801F14B8_ovl9.s")
#endif

void func_801F172C_ovl9(GObj *arg0) {
    D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 8.0f;
}

#ifdef PORT
extern s32 D_801C9A4C_ovl7;
extern void func_800B6E84();
void func_801F1C68_ovl9(void);
extern f32 func_8019DA50_ovl7(void);
extern float atan2f(float, float);
extern void func_800AECC0(f32);
extern void func_800AED20(f32);
extern void func_801A3E80_ovl7(GObj *);
/* Burst dart projectile: attach the dart hit tables and annex, sink 5
 * units, inherit the shooter's facing, and aim by the absolute bearing
 * to Kirby's foot point clamped between 60 and 120 degrees; blast out
 * at 25 units for one tick, then cruise at 10 with one-unit drag for 8
 * ticks, coast 24 ticks frozen, thaw for 5, then disarm, play the
 * annex despawn cue and die through the ovl7 kill path. */
void func_801F1784_ovl9(GObj *arg0) {
    UnkStruct800E1B50 *rec;
    f32 ang;
    u32 id;

    rec = D_800E1B50[omCurrentObj->objId];
    func_8019BAC8_ovl7();
    rec->unk80->unk10 = 8.0f;
    D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_800B6E84;
    D_800DF150[omCurrentObj->objId] = (void (*)(GObj *)) func_801F1C68_ovl9;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C9A4C_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB4DC_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9864(0x100A5, 0x23, 0x10);
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    D_800E98E0[omCurrentObj->objId] = 1;
    D_800E9AA0[omCurrentObj->objId].as_u32 = 2;
    D_800E9C60[omCurrentObj->objId] = 0;
    id = omCurrentObj->objId;
    D_800E6A10[id] = D_800E6A10[D_800E0D50[id]];
    gEntitiesNextPosYArray[omCurrentObj->objId] -= 5.0f;
    id = omCurrentObj->objId;
    gEntitiesPosYArray[id] = gEntitiesNextPosYArray[id];
    ang = atan2f(func_8019DA50_ovl7(),
                 (gEntitiesNextPosYArray[0] + 20.0f) - gEntitiesNextPosYArray[omCurrentObj->objId]);
    if (ang < 0.0f) {
        ang = -ang;
    }
    if (ang < 1.0471976f) {
        ang = 1.0471976f;
    }
    if (ang > 2.0943952f) {
        ang = 2.0943952f;
    }
    id = omCurrentObj->objId;
    D_800E64D0[id] = sinf(ang) * 25.0f * D_800E6A10[id];
    D_800E3210[omCurrentObj->objId] = cosf(ang) * 25.0f;
    ohSleep(1);
    id = omCurrentObj->objId;
    D_800E64D0[id] = sinf(ang) * 10.0f * D_800E6A10[id];
    D_800E3210[omCurrentObj->objId] = cosf(ang) * 10.0f;
    id = omCurrentObj->objId;
    D_800E6690[id] = sinf(ang) * -1.0f * D_800E6A10[id];
    D_800E3750[omCurrentObj->objId] = cosf(ang) * -1.0f;
    ohSleep(8);
    D_800E3750[omCurrentObj->objId] = 0.0f;
    id = omCurrentObj->objId;
    D_800E6690[id] = D_800E3750[id];
    ohSleep(0x18);
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    ohSleep(5);
    D_800E98E0[omCurrentObj->objId] = 0;
    if (rec->unk94->unk1C != 0x80000000) {
        play_sound(rec->unk94->unk1C);
    }
    rec->unk40 = 1;
    func_801A3E80_ovl7(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7/func_801F1784_ovl9.s")
#endif

void func_801A0D74_ovl7();
void func_801A03B4_ovl7(void);

void func_801F1C68_ovl9(void) {
    func_801A0D74_ovl7();
    func_801A03B4_ovl7();
}

#ifdef PORT
extern void func_800A4DB8(Vector *, DObj *);
/* Heavy turret shell: same two-variant launcher as func_801F0060 but
 * with the shell sprite 0x100A6 and cue 0x10565 -- mode 0 bursts at
 * 30 along the parent's aim angle (also written to bone 1's X
 * rotation), splashes and cruises at 9; mode 1 copies the parent's
 * bone-2 rotation onto bone 1, aims at the parent's bone-4 world
 * position (manhattan-normalized), bursts at 36 and cruises at 11.5.
 * Lives 60 ticks, shared epilogue. */
void func_801F1C90_ovl9(GObj *arg0) {
    UnkStruct800E1B50 *rec;
    s32 parent;
    u32 id;

    id = omCurrentObj->objId;
    D_800DF150[id] = func_801ACF5C_ovl7;
    rec = D_800E1B50[id];
    parent = D_800E0D50[id];
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB4DC_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9864(0x100A6, 0x23, 0x10);
    func_800AA018(0x10565);
    if ((D_800DD710[parent] == -1) || (omCurrentObj->objId != D_800EBBE0[parent])) {
        func_8019D958_ovl7(((u16 *) omCurrentObj)[1]);
    }
    id = omCurrentObj->objId;
    switch (D_800E7880[id]) {
        case 0:
            func_8019BAC8_ovl7();
            rec->unk80->unk10 = 8.0f;
            D_800EA8A0[omCurrentObj->objId] = D_800EA8A0[parent];
            D_800DFBD0[omCurrentObj->objId][1]->angle.v.x = D_800EA8A0[omCurrentObj->objId];
            id = omCurrentObj->objId;
            D_800E64D0[id] = sinf(D_800EA8A0[omCurrentObj->objId]) * 30.0f * D_800E6A10[id];
            D_800E3210[omCurrentObj->objId] = cosf(D_800EA8A0[omCurrentObj->objId]) * 30.0f;
            ohSleep(1);
            func_800FD570(0, 5, 0.0f, 0.0f, 0.0f);
            id = omCurrentObj->objId;
            D_800E64D0[id] = sinf(D_800EA8A0[omCurrentObj->objId]) * 9.0f * D_800E6A10[id];
            D_800E3210[omCurrentObj->objId] = cosf(D_800EA8A0[omCurrentObj->objId]) * 9.0f;
            break;
        case 1: {
            Vector sp4C;
            f32 dx;
            f32 dy;
            f32 dz;
            f32 len;

            func_800A4DB8(&sp4C, D_800DFBD0[D_800E0D50[id]][2]);
            D_800DFBD0[omCurrentObj->objId][1]->angle.v.x = sp4C.x;
            D_800DFBD0[omCurrentObj->objId][1]->angle.v.y = sp4C.y;
            D_800DFBD0[omCurrentObj->objId][1]->angle.v.z = sp4C.z;
            func_8019BAC8_ovl7();
            rec->unk80->unk10 = 8.0f;
            D_800DEF90[omCurrentObj->objId] = func_800B7514;
            utilGetTransformSRT(&sp4C, D_800DFBD0[D_800E0D50[omCurrentObj->objId]][4]);
            id = omCurrentObj->objId;
            dx = sp4C.x - gEntitiesNextPosXArray[id];
            dy = sp4C.y - gEntitiesNextPosYArray[id];
            dz = sp4C.z - gEntitiesNextPosZArray[id];
            len = ((dx < 0.0f) ? -dx : dx) + ((dy < 0.0f) ? -dy : dy) + ((dz < 0.0f) ? -dz : dz);
            if (len == 0.0f) {
                len = 0.00001f;
            }
            dx /= len;
            dy /= len;
            dz /= len;
            D_800E3050[id] = dx * 36.0f;
            D_800E3210[omCurrentObj->objId] = dy * 36.0f;
            D_800E33D0[omCurrentObj->objId] = dz * 36.0f;
            ohSleep(1);
            func_800FD570(0, 5, 0.0f, 0.0f, 0.0f);
            D_800E3050[omCurrentObj->objId] = dx * 11.5f;
            D_800E3210[omCurrentObj->objId] = dy * 11.5f;
            D_800E33D0[omCurrentObj->objId] = dz * 11.5f;
            break;
        }
    }
    ohSleep(0x3C);
    func_801ACF84_ovl7(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7/func_801F1C90_ovl9.s")
#endif

extern void func_800B6E84(struct GObj *);
void func_801F23E4_ovl9(void);
extern s32 D_801C9B48_ovl7;
extern struct Sub800E1B50_Unk98 D_801CD06C;
void func_800B33F4(void);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800A9864(s32, s32, s32);
void func_800AA018(s32);
/* +-0.5235988f: literals, this TU owns its .rodata */

void func_801F2238_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = &func_800B6E84;
    D_800DF150[omCurrentObj->objId] = &func_801F23E4_ovl9;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C9B48_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CD06C;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800A9864(0x100A3, 0x23, 0x10);
    func_800AA018(0x10563);
    func_800AA018(0x10562);
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.x = -0.5235988f;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * (sinf(0.5235988f) * 15.0f);
    D_800E3210[omCurrentObj->objId] = -cosf(0.5235988f) * 15.0f;
    curObjSleepForever();
}

void func_801A0D74_ovl7();
void func_801A03E4_ovl7(struct DObj *);

void func_801F23E4_ovl9(void) {
    func_801A0D74_ovl7();
    func_801A03E4_ovl7(D_800DFBD0[omCurrentObj->objId][1]);
}

extern s32 D_801C9B48_ovl7;
/* D_8021D8E4_ovl9: literal, this TU owns its .rodata */
void func_801F24FC_ovl9(struct GObj *);
void func_800B33F4(void);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800A9760(s32);
void func_800A9F98(s32, f32);
void func_801A3E80_ovl7(struct GObj *);

void func_801F2428_ovl9(GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = &func_801F24FC_ovl9;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C9B48_ovl7;
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800A9760(0x100A4);
    func_800A9F98(0x10564, 1.0f);
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.x = -0.5235988f;
    ohSleep(0xF);
    func_801A3E80_ovl7(arg0);
}

void func_801A03E4_ovl7(struct DObj *);

void func_801F24FC_ovl9(GObj *arg0) {
    func_801A03E4_ovl7(D_800DFBD0[omCurrentObj->objId][2]);
}

extern struct GObjProcess *gEntityGObjProcessArray[];
void func_800B33F4(void);
void func_801F2428_ovl9(struct GObj *);

void func_801F253C_ovl9(GObj *arg0) {
    func_800B33F4();
    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F2428_ovl9);
}

#ifdef PORT
void func_801F2910_ovl9(void);
/* Giant homing shot: double-scale variant of the mode-1 dart --
 * 16-unit hit radius, aims at the parent's bone-5 world position
 * (manhattan-normalized), bursts at 80 units for one tick, splashes,
 * then cruises at 24 for 40 ticks before the shared epilogue.
 * Releases the parent's shot slot first when the parent is gone. */
void func_801F2584_ovl9(GObj *arg0) {
    UnkStruct800E1B50 *rec;
    Vector sp44;
    s32 parent;
    f32 dx;
    f32 dy;
    f32 dz;
    f32 len;
    u32 id;

    id = omCurrentObj->objId;
    D_800DF150[id] = (void (*)(GObj *)) func_801F2910_ovl9;
    rec = D_800E1B50[id];
    parent = D_800E0D50[id];
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB4DC_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9864(0x10086, 0x23, 0x10);
    gEntitiesScaleZArray[omCurrentObj->objId] = 2.0f;
    id = omCurrentObj->objId;
    gEntitiesScaleYArray[id] = gEntitiesScaleZArray[id];
    gEntitiesScaleXArray[omCurrentObj->objId] = gEntitiesScaleYArray[id];
    if ((D_800DD710[parent] == -1) || (omCurrentObj->objId != D_800EBBE0[parent])) {
        func_8019D958_ovl7(((u16 *) omCurrentObj)[1]);
    }
    func_8019BAC8_ovl7();
    rec->unk80->unk10 = 16.0f;
    D_800DEF90[omCurrentObj->objId] = func_800B7514;
    utilGetTransformSRT(&sp44, D_800DFBD0[D_800E0D50[omCurrentObj->objId]][5]);
    id = omCurrentObj->objId;
    dx = sp44.x - gEntitiesNextPosXArray[id];
    dy = sp44.y - gEntitiesNextPosYArray[id];
    dz = sp44.z - gEntitiesNextPosZArray[id];
    len = ((dx < 0.0f) ? -dx : dx) + ((dy < 0.0f) ? -dy : dy) + ((dz < 0.0f) ? -dz : dz);
    if (len == 0.0f) {
        len = 0.00001f;
    }
    dx /= len;
    dy /= len;
    dz /= len;
    D_800E3050[id] = dx * 80.0f;
    D_800E3210[omCurrentObj->objId] = dy * 80.0f;
    D_800E33D0[omCurrentObj->objId] = dz * 80.0f;
    ohSleep(1);
    func_800FD570(0, 5, 0.0f, 0.0f, 0.0f);
    D_800E3050[omCurrentObj->objId] = dx * 24.0f;
    D_800E3210[omCurrentObj->objId] = dy * 24.0f;
    D_800E33D0[omCurrentObj->objId] = dz * 24.0f;
    ohSleep(0x28);
    func_801ACF84_ovl7(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_7/func_801F2584_ovl9.s")
#endif

void func_801A0D74_ovl7();
void func_801A03B4_ovl7(void);

void func_801F2910_ovl9(void) {
    f32 dx;
    f32 dy;
    f32 dz;

    func_801A0D74_ovl7();
    dx = gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[omCurrentObj->objId];
    dy = (gEntitiesNextPosYArray[0] + 20.0f) - gEntitiesNextPosYArray[omCurrentObj->objId];
    dz = gEntitiesNextPosZArray[0] - gEntitiesNextPosZArray[omCurrentObj->objId];
    if (sqrtf((dx * dx) + (dy * dy) + (dz * dz)) < 80.0f) {
        func_801A03B4_ovl7();
    }
}

