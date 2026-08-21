#include "common.h"
#include "Player.h"
#include "track_arrays.h"

void func_80110138(s32, s32, s32, s32);

extern s32 D_8012D580;
extern s32 D_8012D190;
extern s32 D_801249B0;
extern s32 D_8012D0C0;
extern s32 D_8012CF28;
extern s32 D_8012D0C4;
extern s32 D_801249A0;
extern s32 D_8012D584;
extern s32 D_8012D588;
extern s32 D_8012D58C;
extern s32 D_8012D918;
extern u32 D_8012D924;
extern u16 D_8012E828;
extern s32 D_800E85A0[];

struct ShapeHead {
    s32 unk0;
    s32 unk4;
};

struct ShapeBody {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    s32 unkC;
    s32 unk10;
    s32 unk14;
    s32 unk18;
};

struct Shape24 {
    struct ShapeHead unk0;
    struct ShapeBody unk8;
};

struct Shape28 {
    u8 unk0;
    u8 pad1[3];
    struct ShapeHead unk4;
    struct ShapeBody unkC;
};

struct EntryInfo {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    s32 unkC;
    s32 unk10;
};

struct PlyEntry {
    struct Shape24 *unk0;
    s32 unk4;
    struct Shape24 *unk8;
    struct EntryInfo unkC;
};

struct PlySlot {
    void *unk0;
    struct EntryInfo unk4;
    struct Shape28 *unk18;
    s32 unk1C;
    struct Shape28 *unk20;
};

extern struct Shape28 D_8012D198[];
extern struct PlySlot D_8012D590[];
extern struct PlySlot D_8012D648[];
extern struct PlySlot D_8012D7B0[];

struct CollInfo {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    s32 unkC;
    s32 unk10;
    s32 unk14;
};

struct CollSlot {
    void *unk0;
    struct CollInfo unk4;
    struct Shape28 *unk1C;
    s32 unk20;
    struct Shape28 *unk24;
};

struct CollEntry {
    struct Shape24 *unk0;
    s32 unk4;
    struct Shape24 *unk8;
    struct CollInfo unkC;
};

extern struct Shape28 D_8012CF30[];
extern struct CollSlot D_8012D0C8[];



struct UnkStruct8011145C_A {
    s32 unk0;
    u16 unk4;
    u8 pad6[6];
    u8 unkC;
    u8 padD[3];
    s32 unk10;
    s32 unk14;
    s32 unk18;
    u8 pad1C[12];
};

struct UnkStruct80110438_C {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 pad5[3];
    s32 unk8;
    s32 unkC;
    f32 unk10;
    f32 unk14;
    f32 unk18;
};

struct UnkStruct8011145C_B {
    s32 unk0;
    f32 unk4;
    u8 unk8;
    u8 unk9;
    u8 padA[2];
    s32 unkC;
    s32 unk10;
    s32 unk14;
    u8 pad18[12];
};

s32 func_8010FC30(struct UnkStruct8011145C_B *, struct UnkStruct8011145C_A *, f32 *);
void func_80110CCC(struct UnkStruct8011145C_A *, struct UnkStruct8011145C_B *, struct UnkStruct80110438_C *);
void func_80110E94(struct UnkStruct8011145C_A *, struct UnkStruct8011145C_B *);
void func_80111184(struct UnkStruct8011145C_A *, struct UnkStruct8011145C_B *, struct UnkStruct80110438_C *);
void func_8011145C(struct UnkStruct8011145C_A *, struct UnkStruct8011145C_B *);
void func_80110438(struct UnkStruct8011145C_A *, struct UnkStruct8011145C_B *, struct UnkStruct80110438_C *);
void func_801105E8(struct UnkStruct8011145C_A *, struct UnkStruct8011145C_B *, f32 *);
s32 func_801103C4(s32);

extern u8 D_8012E7C5;
extern f32 gKirbyHp;

#ifdef PORT
/* PORT copy of the ply-body vs enemy sweep below. The rows are HOST
 * PlySlot/CollSlot slots (stride 56): id word at +0, 4 bytes pad, then the
 * N64 info words at +8 -- each host word holds the N64 word VALUE natively,
 * so a u16/u8 the N64 kept in a word's top half/byte is read from the
 * arithmetic top (>> 16 / >> 24) -- and 8-byte pointers at 32/40/48. The
 * N64-offset views under #else read padding for every field past +0 (the
 * attack-class test a->unk4 & 1 was always false), so the slots are strided
 * with the host types and the fields decoded by byte offset. Also folds in
 * the sp4C[9] widen: func_8010F9AC's narrow-phase writes a 36-byte contact
 * record (contact + both shape anchors); the N64 frame absorbed the spill. */
s32 func_80110150(struct UnkStruct80110438_C *arg0) {
    struct PlySlot *b;
    struct CollSlot *a;
    s32 i;
    s32 j;
    s32 id;
    s32 sp58[5];
    f32 sp4C[9];
    s32 sp40[3];

    arg0->unk2 = 0;
    arg0->unk3 = 0;
    b = D_8012D590;
    for (i = 0; i < D_8012D584; i++) {
        for (j = 0, a = D_8012D0C8; j < D_8012D0C4; j++) {
            if (func_8010FC30((struct UnkStruct8011145C_B *) b, (struct UnkStruct8011145C_A *) a,
                              sp4C) != 0) {
                u8 *pa = (u8 *) a;
                u8 *pb = (u8 *) b;
                u32 a4 = *(u32 *) (pa + 8) >> 16; /* _A->unk4 (u16, N64 +4) */

                id = *(s32 *) pb; /* _B->unk0 */
                if (a4 & 1) {
                    if (id == -1) {
                        return 0;
                    }
                    if (id == 0) {
                        if ((D_8012E7C5 == 0x15) || (func_801103C4(id) != 0) || (gKirbyHp == 0.0f)) {
                            return 0;
                        }
                    }
                    if (*(u32 *) (pb + 0x14) & 0x80000004) { /* _B->unk10 */
                        arg0->unk3 = 0x11;
                    } else {
                        arg0->unk3 = 0x10;
                    }
                    arg0->unk0 = *(u32 *) (pb + 12) >> 24;          /* _B->unk8 */
                    arg0->unk1 = (*(u32 *) (pb + 12) >> 16) & 0xFF; /* _B->unk9 */
                    arg0->unk8 = *(s32 *) (pb + 0x18);              /* _B->unk14 */
                    arg0->unkC = id;
                    return 1;
                }
                if (a4 & 6) {
                    if (id == 0) {
                        if (gKirbyHp == 0.0f) {
                            return 0;
                        }
                    }
                    arg0->unk2 = 5;
                    arg0->unkC = id;
                    arg0->unk10 = sp4C[0];
                    arg0->unk14 = sp4C[1];
                    arg0->unk18 = sp4C[2];
                    return 1;
                }
                arg0->unk2 = 0;
                func_80110438((struct UnkStruct8011145C_A *) a, (struct UnkStruct8011145C_B *) b,
                              arg0);
                func_801105E8((struct UnkStruct8011145C_A *) a, (struct UnkStruct8011145C_B *) b,
                              sp4C);
                if (arg0->unk2 != 0) {
                    arg0->unk0 = *(u32 *) (pb + 12) >> 24;          /* _B->unk8 */
                    arg0->unk1 = (*(u32 *) (pb + 12) >> 16) & 0xFF; /* _B->unk9 */
                    arg0->unk8 = *(s32 *) (pb + 0x18);              /* _B->unk14 */
                    arg0->unkC = id;
                    arg0->unk10 = sp4C[0];
                    arg0->unk14 = sp4C[1];
                    arg0->unk18 = sp4C[2];
                    return 1;
                }
                return 0;
            }
            a++;
        }
        b++;
    }
    return 0;
}
#else
/* Left live by a lane mid-work, at 116/161 insns. Draft kept. */
s32 func_80110150(struct UnkStruct80110438_C *arg0) {
    struct UnkStruct8011145C_B *b;
    struct UnkStruct8011145C_A *a;
    s32 i;
    s32 j;
    s32 id;
    s32 sp58[5];
    f32 sp4C[3];
    s32 sp40[3];

    arg0->unk2 = 0;
    arg0->unk3 = 0;
    b = (struct UnkStruct8011145C_B *) D_8012D590;
    for (i = 0; i < D_8012D584; i++) {
        for (j = 0, a = (struct UnkStruct8011145C_A *) D_8012D0C8; j < D_8012D0C4; j++) {
            if (func_8010FC30(b, a, sp4C) != 0) {
                id = b->unk0;
                if (a->unk4 & 1) {
                    if (id == -1) {
                        return 0;
                    }
                    if (id == 0) {
                        if ((D_8012E7C5 == 0x15) || (func_801103C4(id) != 0) || (gKirbyHp == 0.0f)) {
                            return 0;
                        }
                    }
                    if (b->unk10 & 0x80000004) {
                        arg0->unk3 = 0x11;
                    } else {
                        arg0->unk3 = 0x10;
                    }
                    arg0->unk0 = b->unk8;
                    arg0->unk1 = b->unk9;
                    arg0->unk8 = b->unk14;
                    arg0->unkC = id;
                    return 1;
                }
                if (a->unk4 & 6) {
                    if (id == 0) {
                        if (gKirbyHp == 0.0f) {
                            return 0;
                        }
                    }
                    arg0->unk2 = 5;
                    arg0->unkC = id;
                    arg0->unk10 = sp4C[0];
                    arg0->unk14 = sp4C[1];
                    arg0->unk18 = sp4C[2];
                    return 1;
                }
                arg0->unk2 = 0;
                func_80110438(a, b, arg0);
                func_801105E8(a, b, sp4C);
                if (arg0->unk2 != 0) {
                    arg0->unk0 = b->unk8;
                    arg0->unk1 = b->unk9;
                    arg0->unk8 = b->unk14;
                    arg0->unkC = id;
                    arg0->unk10 = sp4C[0];
                    arg0->unk14 = sp4C[1];
                    arg0->unk18 = sp4C[2];
                    return 1;
                }
                return 0;
            }
            a++;
        }
        b++;
    }
    return 0;
}
#endif

s32 func_801103C4(s32 arg0) {
    if ((arg0 != -1) && (arg0 < 4)) {
        if ((D_800E7CE0[arg0] != 0) || (gKirbyState.action == 0x16) || (gKirbyState.unk68 == 1) ||
            (gKirbyState.unk68 == 2)) {
            return 1;
        }
        return 0;
    }
    return -1;
}

#ifdef PORT
/* PORT copy of the ply-body damage router below: arg0/arg1 are HOST
 * CollSlot/PlySlot rows (id at +0, N64 info field K >= 4 at host K+4, with
 * u16/u8 subfields in the arithmetic top of their word). Only the accessors
 * change; the logic is the N64 body verbatim. */
void func_80110438(struct UnkStruct8011145C_A *arg0, struct UnkStruct8011145C_B *arg1,
                   struct UnkStruct80110438_C *arg2) {
    s32 idx;
    s32 id;
    u8 *pa = (u8 *) arg0;
    u8 *pb = (u8 *) arg1;

    id = *(s32 *) pb;  /* _B->unk0 */
    idx = *(s32 *) pa; /* _A->unk0 */
    if (*(u32 *) (pb + 0x14) & 0x40000000) { /* _B->unk10 */
        return;
    }
    if (idx == -1) {
        arg2->unk2 = 2;
        arg2->unk3 = *(s32 *) (pb + 0x10); /* _B->unkC */
        arg2->unk8 = *(s32 *) (pb + 0x18); /* _B->unk14 */
        return;
    }
    if (id != -1) {
        if ((*(u32 *) (pa + 0x14) & 0x80000000) || (D_800E7CE0[idx] != 0)) { /* _A->unk10 */
            arg2->unk2 = 0;
            return;
        }
    }
    if (*(u32 *) (pa + 0x14) & 1) {
        arg2->unk2 = 6;
    } else if (*(u32 *) (pa + 0x14) & 0x20000000) {
        arg2->unk2 = 2;
    }
    if (arg2->unk2 != 0) {
        if (*(u32 *) (pa + 0x14) & 0x10000000) {
            arg2->unk2 = 0;
        }
        return;
    }
    if ((D_8012E828 == 1) || (D_8012E828 == 2)) {
        arg2->unk2 = 1;
        D_800E7B20[idx] = 0.0f;
        return;
    }
    arg2->unk3 = *(s32 *) (pb + 0x10); /* _B->unkC */
    if (!(*(u32 *) (pa + 0x14) & 0x08000000)) {
        D_800E7B20[idx] -= *(f32 *) (pb + 8); /* _B->unk4 */
    }
    if (D_800E7B20[idx] <= 0.0f) {
        arg2->unk2 = 1;
        D_800E7B20[idx] = 0.0f;
        return;
    }
    arg2->unk2 = 2;
    if (!(*(u32 *) (pa + 0x14) & 0x08000000)) {
        if (D_800DD710[idx] == 0x17) {
            D_800E7CE0[idx] = 0xF;
        } else {
            D_800E7CE0[idx] = 0x2D;
        }
    } else {
        D_800E7CE0[idx] = 0;
    }
}
#else
void func_80110438(struct UnkStruct8011145C_A *arg0, struct UnkStruct8011145C_B *arg1,
                   struct UnkStruct80110438_C *arg2) {
    s32 idx;
    s32 id;

    id = arg1->unk0;
    idx = arg0->unk0;
    if (arg1->unk10 & 0x40000000) {
        return;
    }
    if (idx == -1) {
        arg2->unk2 = 2;
        arg2->unk3 = arg1->unkC;
        arg2->unk8 = arg1->unk14;
        return;
    }
    if (id != -1) {
        if ((arg0->unk10 & 0x80000000) || (D_800E7CE0[idx] != 0)) {
            arg2->unk2 = 0;
            return;
        }
    }
    if (arg0->unk10 & 1) {
        arg2->unk2 = 6;
    } else if (arg0->unk10 & 0x20000000) {
        arg2->unk2 = 2;
    }
    if (arg2->unk2 != 0) {
        if (arg0->unk10 & 0x10000000) {
            arg2->unk2 = 0;
        }
        return;
    }
    if ((D_8012E828 == 1) || (D_8012E828 == 2)) {
        arg2->unk2 = 1;
        D_800E7B20[idx] = 0.0f;
        return;
    }
    arg2->unk3 = arg1->unkC;
    if (!(arg0->unk10 & 0x08000000)) {
        D_800E7B20[idx] -= arg1->unk4;
    }
    if (D_800E7B20[idx] <= 0.0f) {
        arg2->unk2 = 1;
        D_800E7B20[idx] = 0.0f;
        return;
    }
    arg2->unk2 = 2;
    if (!(arg0->unk10 & 0x08000000)) {
        if (D_800DD710[idx] == 0x17) {
            D_800E7CE0[idx] = 0xF;
        } else {
            D_800E7CE0[idx] = 0x2D;
        }
    } else {
        D_800E7CE0[idx] = 0;
    }
}
#endif

#ifdef PORT
/* Kirby-takes-a-hit resolver (from asm/nonmatchings/ovl2/ovl2_9/
 * func_801105E8.s via m2c): decides the outcome word D_800E83E0 (0 ignore,
 * 1 died, 6 blocked, (class << 16) + 2 hit) and the knockback direction
 * D_800E85A0 from the attacker's record. The attacker slot arg0 / defender
 * slot arg1 are HOST slots: the id word sits at +0 and the N64 info fields
 * shift +4 (damage N64 +8 -> +12, class byte +0xC -> +0x10, flags +0x10 ->
 * +0x14). arg2 is func_8010F9AC's 36-byte contact record; the attacker
 * anchor is floats [6]/[8]. */
void func_801105E8(struct UnkStruct8011145C_A *arg0, struct UnkStruct8011145C_B *arg1, f32 *arg2) {
    extern u8 D_800D6F58[];
    extern s32 D_800E83E0[];
    s32 change_kirby_hp(f32);
    void func_8011DC5C(void);
    s32 func_80120BCC(void);
    f32 func_8011D9E0(s32, f32, s32, f32);
    void set_kirby_action_2(s32, u32);
    u8 *pa = (u8 *) arg0;
    u8 *pb = (u8 *) arg1;
    s32 id = *(s32 *) pa;
    f32 dmg = *(f32 *) (pa + 12);
    /* info words hold the N64 word values natively: the class byte is the
     * TOP byte of the host word at +0x10 (N64 +0xC). This handler runs on
     * Kirby's object (objId 0). */
    u32 acls = *(u32 *) (pa + 0x10) >> 24;
    u32 aflags = *(u32 *) (pa + 0x14);
    u32 bflags = *(u32 *) (pb + 0x14);
    u32 objId = 0;

    if ((aflags & 0x40000000) || (gKirbyState.unk24 & 1)) {
        D_800E83E0[0] = 0;
        return;
    }
    if ((*(u32 *) (D_800D6F58 + 0x58) >> 8) & 1) {
        D_800E83E0[objId] = 0;
        return;
    }
    if (id != -1) {
        if (gKirbyState.unk68 == 2) {
            D_800E83E0[0] = 0;
            return;
        }
        if (func_801103C4(0) != 0 || (bflags & 0x80000000)) {
            if (D_800E7CE0[id] != 0 || (aflags & 0x80000000)) {
                if (gKirbyState.action == 0x15 || gKirbyState.unk28 != 0) {
                    D_800E83E0[0] = 0;
                    return;
                }
                gKirbyState.unk24 = 1;
                set_kirby_action_2(0x15, 0x16);
                gKirbyState.isTurning &= ~7;
                func_8011DC5C();
                goto knock_dir;
            }
            D_800E83E0[0] = 0;
            return;
        }
    }
    if (dmg == 0.0f) {
        gKirbyState.unk24 = 1;
        set_kirby_action_2(0x15, 0x16);
        gKirbyState.isTurning &= ~7;
        func_8011DC5C();
        play_sound(0x1E9);
        goto knock_dir;
    }
    if (bflags & 1) {
        D_800E83E0[0] = 6;
        return;
    }
    func_8011DC5C();
    if (change_kirby_hp(-dmg) == 0) {
        if (gKirbyState.action != 0x15) {
            D_800E83E0[0] = 1;
            if (gKirbyState.unk28 == 0) {
                set_kirby_action_2(0x16, 0x17);
                goto finish;
            }
        } else {
            D_800E83E0[0] = 0;
            goto finish;
        }
        return;
    }
    if (gKirbyState.action == 0x15) {
        D_800E83E0[0] = 0;
        return;
    }
    gKirbyState.unk24 = 1;
    D_800E83E0[0] = (acls << 0x10) + 2;
    if (gKirbyState.unk28 != 0) {
        return;
    }
    set_kirby_action_2(0x14, 0x16);
    gKirbyState.isTurning &= ~7;
    if (dmg != 0.0f) {
        func_80120BCC();
    }
knock_dir:
    {
        s32 trk = (id == -1) ? -1 : D_800E5F90[id];

        if (trk == -1) {
            f32 s = sinf(D_800E17D0[0]);

            if (((arg2[8] - gEntitiesNextPosZArray[0]) * cosf(D_800E17D0[0])) +
                (s * (arg2[6] - gEntitiesNextPosXArray[0])) >= 0.0f) {
                D_800E85A0[0] = (D_800E6A10[0] == 1.0f) ? -1 : 1;
            } else {
                D_800E85A0[0] = (D_800E6A10[0] == -1.0f) ? -1 : 1;
            }
        } else if (gKirbyState.unk170 == (u32) trk) {
            D_800E85A0[0] = (D_800E6D90[0] < D_800E6BD0[id]) ? -1 : 1;
        } else {
            f32 d = func_8011D9E0(gKirbyState.unk170, D_800E6D90[0], trk, D_800E6BD0[id]);

            if (d != 9999.0f) {
                D_800E85A0[0] = (d > 0.0f) ? -1 : 1;
            } else {
                D_800E85A0[0] = (D_800E64D0[objId] > 0.0f) ? -1 : 1;
            }
        }
    }
finish:
    if (gKirbyState.abilityInUse != 0x12) {
        gKirbyState.abilityInUse = 0;
    }
    gKirbyState.isInhalingBlock = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_9/func_801105E8.s")
#endif

#ifdef PORT
/* PORT copy of the ply-shot vs enemy sweep below, on HOST slot rows (see
 * func_80110150's PORT note for the layout). Folds in the sp4C[9] widen for
 * func_8010F9AC's 36-byte contact record. */
s32 func_80110B00(struct UnkStruct80110438_C *arg0) {
    struct PlySlot *b;
    struct CollSlot *a;
    s32 i;
    s32 j;
    s32 id;
    s32 sp58[5];
    f32 sp4C[9];
    s32 sp40[3];

    arg0->unk2 = 0;
    arg0->unk3 = 0;
    b = D_8012D648;
    for (i = 0; i < D_8012D588; i++) {
        for (j = 0, a = D_8012D0C8; j < D_8012D0C4; j++) {
            if (func_8010FC30((struct UnkStruct8011145C_B *) b, (struct UnkStruct8011145C_A *) a,
                              sp4C) != 0) {
                u8 *pa = (u8 *) a;
                u8 *pb = (u8 *) b;

                id = *(s32 *) pb;                       /* _B->unk0 */
                if ((*(u32 *) (pa + 8) >> 16) & 1) {    /* _A->unk4 */
                    if (id != -1) {
                        if (*(u32 *) (pb + 0x14) & 0x80000004) { /* _B->unk10 */
                            arg0->unk3 = 0x11;
                        } else {
                            arg0->unk3 = 0x10;
                        }
                        arg0->unkC = id;
                        arg0->unk0 = *(u32 *) (pb + 12) >> 24;          /* _B->unk8 */
                        arg0->unk1 = (*(u32 *) (pb + 12) >> 16) & 0xFF; /* _B->unk9 */
                        arg0->unk8 = *(s32 *) (pb + 0x18);              /* _B->unk14 */
                        return 1;
                    }
                    return 0;
                }
                arg0->unk2 = 0;
                func_80110CCC((struct UnkStruct8011145C_A *) a, (struct UnkStruct8011145C_B *) b,
                              arg0);
                func_80110E94((struct UnkStruct8011145C_A *) a, (struct UnkStruct8011145C_B *) b);
                if (arg0->unk2 != 0) {
                    arg0->unk0 = *(u32 *) (pb + 12) >> 24;          /* _B->unk8 */
                    arg0->unk1 = (*(u32 *) (pb + 12) >> 16) & 0xFF; /* _B->unk9 */
                    arg0->unk8 = *(s32 *) (pb + 0x18);              /* _B->unk14 */
                    arg0->unk10 = sp4C[0];
                    arg0->unk14 = sp4C[1];
                    arg0->unk18 = sp4C[2];
                    arg0->unkC = id;
                    return 1;
                }
                return 0;
            }
            a++;
        }
        b++;
    }
    return 0;
}
#else
s32 func_80110B00(struct UnkStruct80110438_C *arg0) {
    struct UnkStruct8011145C_B *b;
    struct UnkStruct8011145C_A *a;
    s32 i;
    s32 j;
    s32 id;
    s32 sp58[5];
    f32 sp4C[3];
    s32 sp40[3];

    arg0->unk2 = 0;
    arg0->unk3 = 0;
    b = (struct UnkStruct8011145C_B *) D_8012D648;
    for (i = 0; i < D_8012D588; i++) {
        for (j = 0, a = (struct UnkStruct8011145C_A *) D_8012D0C8; j < D_8012D0C4; j++) {
            if (func_8010FC30(b, a, sp4C) != 0) {
                id = b->unk0;
                if (a->unk4 & 1) {
                    if (id != -1) {
                        if (b->unk10 & 0x80000004) {
                            arg0->unk3 = 0x11;
                        } else {
                            arg0->unk3 = 0x10;
                        }
                        arg0->unkC = id;
                        arg0->unk0 = b->unk8;
                        arg0->unk1 = b->unk9;
                        arg0->unk8 = b->unk14;
                        return 1;
                    }
                    return 0;
                }
                arg0->unk2 = 0;
                func_80110CCC(a, b, arg0);
                func_80110E94(a, b);
                if (arg0->unk2 != 0) {
                    arg0->unk0 = b->unk8;
                    arg0->unk1 = b->unk9;
                    arg0->unk8 = b->unk14;
                    arg0->unk10 = sp4C[0];
                    arg0->unk14 = sp4C[1];
                    arg0->unk18 = sp4C[2];
                    arg0->unkC = id;
                    return 1;
                }
                return 0;
            }
            a++;
        }
        b++;
    }
    return 0;
}
#endif

#ifdef PORT
/* PORT copy of the ply-shot damage router below, on HOST slot rows (id at
 * +0, N64 info field K >= 4 at host K+4, u16/u8 subfields in the arithmetic
 * top of their word). Only the accessors change. */
void func_80110CCC(struct UnkStruct8011145C_A *arg0, struct UnkStruct8011145C_B *arg1,
                   struct UnkStruct80110438_C *arg2) {
    s32 flags;
    s32 idx;
    u8 *pa = (u8 *) arg0;
    u8 *pb = (u8 *) arg1;
    u32 b9;

    idx = *(s32 *) pa; /* _A->unk0 */
    if (*(u32 *) (pb + 0x14) & 0x40000000) { /* _B->unk10 */
        return;
    }
    if (idx == -1) {
        arg2->unk2 = 2;
        arg2->unk3 = *(s32 *) (pb + 0x10); /* _B->unkC */
        return;
    }
    flags = *(s32 *) (pa + 0x18); /* _A->unk14 */
    if (flags & 0x80000000) {
        return;
    }
    if (D_800E7CE0[idx] != 0) {
        return;
    }
    b9 = (*(u32 *) (pb + 12) >> 16) & 0xFF; /* _B->unk9 */
    switch (b9) {
    case 1:
        if (flags & 1) {
            arg2->unk2 = 7;
            if (*(s32 *) (pa + 0x18) & 0x10000000) {
                arg2->unk2 = 0;
            }
            return;
        }
        break;
    case 2:
        if (flags & 2) {
            arg2->unk2 = 8;
            if (*(s32 *) (pa + 0x18) & 0x10000000) {
                arg2->unk2 = 0;
            }
            return;
        }
        break;
    case 3:
        if (flags & 4) {
            arg2->unk2 = 9;
            if (*(s32 *) (pa + 0x18) & 0x10000000) {
                arg2->unk2 = 0;
            }
            return;
        }
        break;
    default:
        utilPrintf("unknown player shot sub kind:%x\n", b9);
        return;
    }
    arg2->unk3 = *(s32 *) (pb + 0x10); /* _B->unkC */
    if (!(*(s32 *) (pa + 0x18) & 0x08000000)) {
        D_800E7B20[idx] -= *(f32 *) (pb + 8); /* _B->unk4 */
    }
    if (D_800E7B20[idx] <= 0.0f) {
        arg2->unk2 = 1;
        D_800E7B20[idx] = 0.0f;
        return;
    }
    arg2->unk2 = 2;
    if (!(*(s32 *) (pa + 0x18) & 0x08000000)) {
        if (D_800DD710[idx] == 0x17) {
            D_800E7CE0[idx] = 0xF;
        } else {
            D_800E7CE0[idx] = 0x2D;
        }
    } else {
        D_800E7CE0[idx] = 0;
    }
}
#else
void func_80110CCC(struct UnkStruct8011145C_A *arg0, struct UnkStruct8011145C_B *arg1,
                   struct UnkStruct80110438_C *arg2) {
    s32 flags;
    s32 idx;

    idx = arg0->unk0;
    if (arg1->unk10 & 0x40000000) {
        return;
    }
    if (idx == -1) {
        arg2->unk2 = 2;
        arg2->unk3 = arg1->unkC;
        return;
    }
    flags = arg0->unk14;
    if (flags & 0x80000000) {
        return;
    }
    if (D_800E7CE0[idx] != 0) {
        return;
    }
    switch (arg1->unk9) {
    case 1:
        if (flags & 1) {
            arg2->unk2 = 7;
            if (arg0->unk14 & 0x10000000) {
                arg2->unk2 = 0;
            }
            return;
        }
        break;
    case 2:
        if (flags & 2) {
            arg2->unk2 = 8;
            if (arg0->unk14 & 0x10000000) {
                arg2->unk2 = 0;
            }
            return;
        }
        break;
    case 3:
        if (flags & 4) {
            arg2->unk2 = 9;
            if (arg0->unk14 & 0x10000000) {
                arg2->unk2 = 0;
            }
            return;
        }
        break;
    default:
        utilPrintf("unknown player shot sub kind:%x\n", arg1->unk9);
        return;
    }
    arg2->unk3 = arg1->unkC;
    if (!(arg0->unk14 & 0x08000000)) {
        D_800E7B20[idx] -= arg1->unk4;
    }
    if (D_800E7B20[idx] <= 0.0f) {
        arg2->unk2 = 1;
        D_800E7B20[idx] = 0.0f;
        return;
    }
    arg2->unk2 = 2;
    if (!(arg0->unk14 & 0x08000000)) {
        if (D_800DD710[idx] == 0x17) {
            D_800E7CE0[idx] = 0xF;
        } else {
            D_800E7CE0[idx] = 0x2D;
        }
    } else {
        D_800E7CE0[idx] = 0;
    }
}
#endif

#ifdef PORT
/* PORT copy of the enemy-reaction writer below, on HOST slot rows. The
 * attack class byte is the top byte of the host word at +0x10 (N64 +0xC). */
void func_80110E94(struct UnkStruct8011145C_A *arg0, struct UnkStruct8011145C_B *arg1) {
    s32 idx;
    s32 id;
    s32 flags;
    u8 *pa = (u8 *) arg0;
    u8 *pb = (u8 *) arg1;

    idx = *(s32 *) pb; /* _B->unk0 */
    id = *(s32 *) pa;  /* _A->unk0 */
    if (!((*(u32 *) (pa + 8) >> 16) & 6)) { /* _A->unk4 */
        if (idx != -1) {
            flags = *(s32 *) (pa + 0x18); /* _A->unk14 */
            if (!(flags & 0x40000000)) {
                if (!(*(u32 *) (pb + 0x14) & 0x80000000)) { /* _B->unk10 */
                    if (*(s32 *) (pb + 0x10) == 0xA) {      /* _B->unkC */
                        if (D_800DD710[id] != 0x17) {
                            D_800E83E0[idx] = 6;
                            return;
                        }
                    }
                    switch ((*(u32 *) (pb + 12) >> 16) & 0xFF) { /* _B->unk9 */
                    case 1:
                        if ((flags & 1) || (flags & 0x80000000)) {
                            D_800E83E0[idx] = 6;
                            return;
                        }
                        break;
                    case 2:
                        if ((flags & 2) || (flags & 0x80000000)) {
                            D_800E83E0[idx] = 6;
                            return;
                        }
                        break;
                    case 3:
                        if ((flags & 4) || (flags & 0x80000000)) {
                            D_800E83E0[idx] = 6;
                            return;
                        }
                        break;
                    }
                    D_800E83E0[idx] = ((*(u32 *) (pa + 0x10) >> 24) << 16) + 2; /* _A->unkC */
                }
            }
        }
    }
}
#else
void func_80110E94(struct UnkStruct8011145C_A *arg0, struct UnkStruct8011145C_B *arg1) {
    s32 idx;
    s32 id;
    s32 flags;

    idx = arg1->unk0;
    id = arg0->unk0;
    if (!(arg0->unk4 & 6)) {
        if (idx != -1) {
            flags = arg0->unk14;
            if (!(flags & 0x40000000)) {
                if (!(arg1->unk10 & 0x80000000)) {
                    if (arg1->unkC == 0xA) {
                        if (D_800DD710[id] != 0x17) {
                            D_800E83E0[idx] = 6;
                            return;
                        }
                    }
                    switch (arg1->unk9) {
                    case 1:
                        if ((flags & 1) || (flags & 0x80000000)) {
                            D_800E83E0[idx] = 6;
                            return;
                        }
                        break;
                    case 2:
                        if ((flags & 2) || (flags & 0x80000000)) {
                            D_800E83E0[idx] = 6;
                            return;
                        }
                        break;
                    case 3:
                        if ((flags & 4) || (flags & 0x80000000)) {
                            D_800E83E0[idx] = 6;
                            return;
                        }
                        break;
                    }
                    D_800E83E0[idx] = (arg0->unkC << 16) + 2;
                }
            }
        }
    }
}
#endif

#ifdef PORT
/* PORT copy of the ply-effect vs enemy sweep below, on HOST slot rows (see
 * func_80110150's PORT note for the layout). Folds in the sp4C[9] widen for
 * func_8010F9AC's 36-byte contact record. */
s32 func_80110FD4(struct UnkStruct80110438_C *arg0) {
    struct PlySlot *b;
    struct CollSlot *a;
    s32 i;
    s32 j;
    s32 id;
    s32 t;
    s32 sp58[4];
    f32 sp4C[9];
    s32 sp40[3];

    arg0->unk2 = 0;
    arg0->unk3 = 0;
    b = D_8012D7B0;
    for (i = 0; i < D_8012D58C; i++) {
        for (j = 0, a = D_8012D0C8; j < D_8012D0C4; j++) {
            if (func_8010FC30((struct UnkStruct8011145C_B *) b, (struct UnkStruct8011145C_A *) a,
                              sp4C) != 0) {
                u8 *pa = (u8 *) a;
                u8 *pb = (u8 *) b;

                id = *(s32 *) pb;                    /* _B->unk0 */
                if ((*(u32 *) (pa + 8) >> 16) & 1) { /* _A->unk4 */
                    return 0;
                }
                arg0->unk2 = 0;
                func_80111184((struct UnkStruct8011145C_A *) a, (struct UnkStruct8011145C_B *) b,
                              arg0);
                func_8011145C((struct UnkStruct8011145C_A *) a, (struct UnkStruct8011145C_B *) b);
                if (arg0->unk2 != 0) {
                    arg0->unk0 = *(u32 *) (pb + 12) >> 24;          /* _B->unk8 */
                    arg0->unk1 = (*(u32 *) (pb + 12) >> 16) & 0xFF; /* _B->unk9 */
                    arg0->unk8 = *(s32 *) (pb + 0x18);              /* _B->unk14 */
                    arg0->unk10 = sp4C[0];
                    arg0->unk14 = sp4C[1];
                    arg0->unk18 = sp4C[2];
                    if ((D_800E0D50[id] != -1) && (D_800DD710[D_800E0D50[id]] != -1)) {
                        arg0->unkC = D_800E0D50[id];
                    } else {
                        arg0->unkC = id;
                    }
                    return 1;
                }
                return 0;
            }
            a++;
        }
        b++;
    }
    return 0;
}
#else
/* Left live by a lane mid-work, at 1/108 insns. Draft kept. */
s32 func_80110FD4(struct UnkStruct80110438_C *arg0) {
    struct UnkStruct8011145C_B *b;
    struct UnkStruct8011145C_A *a;
    s32 i;
    s32 j;
    s32 id;
    s32 t;
    s32 sp58[4];
    f32 sp4C[3];
    s32 sp40[3];

    arg0->unk2 = 0;
    arg0->unk3 = 0;
    b = (struct UnkStruct8011145C_B *) D_8012D7B0;
    for (i = 0; i < D_8012D58C; i++) {
        for (j = 0, a = (struct UnkStruct8011145C_A *) D_8012D0C8; j < D_8012D0C4; j++) {
            if (func_8010FC30(b, a, sp4C) != 0) {
                id = b->unk0;
                if (a->unk4 & 1) {
                    return 0;
                }
                arg0->unk2 = 0;
                func_80111184(a, b, arg0);
                func_8011145C(a, b);
                if (arg0->unk2 != 0) {
                    arg0->unk0 = b->unk8;
                    arg0->unk1 = b->unk9;
                    arg0->unk8 = b->unk14;
                    arg0->unk10 = sp4C[0];
                    arg0->unk14 = sp4C[1];
                    arg0->unk18 = sp4C[2];
                    if ((D_800E0D50[id] != -1) && (D_800DD710[D_800E0D50[id]] != -1)) {
                        arg0->unkC = D_800E0D50[id];
                    } else {
                        arg0->unkC = id;
                    }
                    return 1;
                }
                return 0;
            }
            a++;
        }
        b++;
    }
    return 0;
}
#endif

#ifdef PORT
/* PORT copy of the ply-effect damage router below, on HOST slot rows (id at
 * +0, N64 info field K >= 4 at host K+4, u16/u8 subfields in the arithmetic
 * top of their word). Only the accessors change. */
void func_80111184(struct UnkStruct8011145C_A *arg0, struct UnkStruct8011145C_B *arg1,
                   struct UnkStruct80110438_C *arg2) {
    s32 flags;
    s32 idx;
    s32 id;
    u8 *pa = (u8 *) arg0;
    u8 *pb = (u8 *) arg1;
    u32 b9;

    id = *(s32 *) pb;  /* _B->unk0 */
    idx = *(s32 *) pa; /* _A->unk0 */
    if (*(u32 *) (pb + 0x14) & 0x40000000) { /* _B->unk10 */
        return;
    }
    flags = *(s32 *) (pa + 0x1C); /* _A->unk18 */
    if (flags & 0x80000000) {
        return;
    }
    if (D_800E7CE0[idx] != 0) {
        return;
    }
    if (idx == -1) {
        arg2->unk2 = 2;
        arg2->unk3 = *(s32 *) (pb + 0x10); /* _B->unkC */
        return;
    }
    b9 = (*(u32 *) (pb + 12) >> 16) & 0xFF; /* _B->unk9 */
    switch (b9) {
    case 0:
        return;
    case 2:
        if (flags & 2) {
            arg2->unk2 = 0xA;
            if (*(s32 *) (pa + 0x1C) & 0x10000000) {
                arg2->unk2 = 0;
            }
            return;
        }
        if (id != -1) {
            if (D_800E6A10[id] == 1.0f) {
                D_800E85A0[idx] = -1;
            } else {
                D_800E85A0[idx] = 1;
            }
            arg2->unk2 = 3;
            arg2->unk4 = 0;
            return;
        }
        arg2->unk2 = 0;
        utilPrintf("effect master inhale? trk:%x\n", id);
        return;
    case 1:
        if (flags & 1) {
            arg2->unk2 = 6;
            if (*(s32 *) (pa + 0x1C) & 0x10000000) {
                arg2->unk2 = 0;
            }
            return;
        }
        break;
    case 3:
        if (flags & 8) {
            arg2->unk2 = 0xC;
            if (*(s32 *) (pa + 0x1C) & 0x10000000) {
                arg2->unk2 = 0;
            }
            return;
        }
        break;
    case 4:
        if (flags & 0x10) {
            arg2->unk2 = 0xD;
            if (*(s32 *) (pa + 0x1C) & 0x10000000) {
                arg2->unk2 = 0;
            }
            return;
        }
        break;
    case 5:
        if (flags & 0x20) {
            arg2->unk2 = 0xE;
            if (*(s32 *) (pa + 0x1C) & 0x10000000) {
                arg2->unk2 = 0;
            }
            return;
        }
        break;
    case 6:
        if (flags & 0x40) {
            arg2->unk2 = 0xF;
            if (*(s32 *) (pa + 0x1C) & 0x10000000) {
                arg2->unk2 = 0;
            }
            return;
        }
        break;
    default:
        utilPrintf("unknown player effect sub kind:%x\n", b9);
        return;
    }
    arg2->unk3 = *(s32 *) (pb + 0x10); /* _B->unkC */
    if (!(*(s32 *) (pa + 0x1C) & 0x08000000)) {
        D_800E7B20[idx] -= *(f32 *) (pb + 8); /* _B->unk4 */
    }
    if (D_800E7B20[idx] <= 0.0f) {
        arg2->unk2 = 1;
        D_800E7B20[idx] = 0.0f;
        return;
    }
    arg2->unk2 = 2;
    if (!(*(s32 *) (pa + 0x1C) & 0x08000000)) {
        if (D_800DD710[idx] == 0x17) {
            D_800E7CE0[idx] = 0xF;
        } else {
            D_800E7CE0[idx] = 0x2D;
        }
    } else {
        D_800E7CE0[idx] = 0;
    }
}
#else
void func_80111184(struct UnkStruct8011145C_A *arg0, struct UnkStruct8011145C_B *arg1,
                   struct UnkStruct80110438_C *arg2) {
    s32 flags;
    s32 idx;
    s32 id;

    id = arg1->unk0;
    idx = arg0->unk0;
    if (arg1->unk10 & 0x40000000) {
        return;
    }
    flags = arg0->unk18;
    if (flags & 0x80000000) {
        return;
    }
    if (D_800E7CE0[idx] != 0) {
        return;
    }
    if (idx == -1) {
        arg2->unk2 = 2;
        arg2->unk3 = arg1->unkC;
        return;
    }
    switch (arg1->unk9) {
    case 0:
        return;
    case 2:
        if (flags & 2) {
            arg2->unk2 = 0xA;
            if (arg0->unk18 & 0x10000000) {
                arg2->unk2 = 0;
            }
            return;
        }
        if (id != -1) {
            if (D_800E6A10[id] == 1.0f) {
                D_800E85A0[idx] = -1;
            } else {
                D_800E85A0[idx] = 1;
            }
            arg2->unk2 = 3;
            arg2->unk4 = 0;
            return;
        }
        arg2->unk2 = 0;
        utilPrintf("effect master inhale? trk:%x\n", id);
        return;
    case 1:
        if (flags & 1) {
            arg2->unk2 = 6;
            if (arg0->unk18 & 0x10000000) {
                arg2->unk2 = 0;
            }
            return;
        }
        break;
    case 3:
        if (flags & 8) {
            arg2->unk2 = 0xC;
            if (arg0->unk18 & 0x10000000) {
                arg2->unk2 = 0;
            }
            return;
        }
        break;
    case 4:
        if (flags & 0x10) {
            arg2->unk2 = 0xD;
            if (arg0->unk18 & 0x10000000) {
                arg2->unk2 = 0;
            }
            return;
        }
        break;
    case 5:
        if (flags & 0x20) {
            arg2->unk2 = 0xE;
            if (arg0->unk18 & 0x10000000) {
                arg2->unk2 = 0;
            }
            return;
        }
        break;
    case 6:
        if (flags & 0x40) {
            arg2->unk2 = 0xF;
            if (arg0->unk18 & 0x10000000) {
                arg2->unk2 = 0;
            }
            return;
        }
        break;
    default:
        utilPrintf("unknown player effect sub kind:%x\n", arg1->unk9);
        return;
    }
    arg2->unk3 = arg1->unkC;
    if (!(arg0->unk18 & 0x08000000)) {
        D_800E7B20[idx] -= arg1->unk4;
    }
    if (D_800E7B20[idx] <= 0.0f) {
        arg2->unk2 = 1;
        D_800E7B20[idx] = 0.0f;
        return;
    }
    arg2->unk2 = 2;
    if (!(arg0->unk18 & 0x08000000)) {
        if (D_800DD710[idx] == 0x17) {
            D_800E7CE0[idx] = 0xF;
        } else {
            D_800E7CE0[idx] = 0x2D;
        }
    } else {
        D_800E7CE0[idx] = 0;
    }
}
#endif

#ifdef PORT
/* PORT copy of the effect-reaction writer below, on HOST slot rows. The
 * IDO codegen notes on the #else arm do not bind here -- only the accessors
 * change; the logic is kept verbatim. */
void func_8011145C(struct UnkStruct8011145C_A *arg0, struct UnkStruct8011145C_B *arg1) {
    s32 idx;
    s32 flags;
    s32 sign;
    u8 *pa = (u8 *) arg0;
    u8 *pb = (u8 *) arg1;

    idx = *(s32 *) pb; /* _B->unk0 */
    if (!(*(u32 *) (pb + 0x14) & 0x80000000)) { /* _B->unk10 */
        flags = *(s32 *) (pa + 0x1C);           /* _A->unk18 */
        if (!(flags & 0x40000000)) {
            sign = flags & 0x80000000;
            if (!((*(u32 *) (pa + 8) >> 16) & 6)) { /* _A->unk4 */
                if (sign || (flags & 0x78)) {
                    D_800E83E0[idx] = 6;
                } else {
                    D_800E83E0[idx] = ((*(u32 *) (pa + 0x10) >> 24) << 16) + 2; /* _A->unkC */
                }
            }
        }
    }
}
#else
// The bit tests are load-bearing: `x & 0x80000000` in a boolean context gives
// IDO's `sll rd, rt, 0` + `bltz` pair, while `x >= 0` gives a bare `bltz`; and
// `sign` has to be its own local so the mask lands in a register (`and`) rather
// than folding into another sign test.
void func_8011145C(struct UnkStruct8011145C_A *arg0, struct UnkStruct8011145C_B *arg1) {
    s32 idx;
    s32 flags;
    s32 sign;

    idx = arg1->unk0;
    if (!(arg1->unk10 & 0x80000000)) {
        flags = arg0->unk18;
        if (!(flags & 0x40000000)) {
            sign = flags & 0x80000000;
            if (!(arg0->unk4 & 6)) {
                if (sign || (flags & 0x78)) {
                    D_800E83E0[idx] = 6;
                } else {
                    D_800E83E0[idx] = (arg0->unkC << 16) + 2;
                }
            }
        }
    }
}
#endif

void func_801114E0(void) {
    D_8012D580 = D_8012D0C0 = 0x50;
    D_8012D584 = D_8012D588 = D_8012D58C = 0;
    D_8012D918 = 0;
    D_8012D924 = 0xFF800080;
}

void func_80111534(s32 arg0) {
    D_8012D580 = arg0;
    D_8012D190 = 0;
    D_801249B0 = 0;
}

void func_80111550(s32 arg0) {
    D_8012D0C0 = arg0;
    D_8012CF28 = 0;
    D_8012D0C4 = 0;
    D_801249A0 = 0;
}

/* Left live by a lane mid-work, at 117/160 insns. Draft kept. */
/* Left live by a lane mid-work, at 117/160 insns. Draft kept. */
struct PlySlot *func_80111574(struct PlyEntry *arg0, void *arg1) {
    struct PlySlot *e;
    struct Shape28 *d;
    struct Shape24 *s;
    s32 i;
    s32 n;

    if (arg0->unk0 != NULL) {
        n = 1;
    } else {
        n = 0;
    }
    if ((n + D_8012D190 + arg0->unk4) >= 0x1A) {
        utilPrintf("Entry Error. PlyBdy Global Shape Buff Over!!\n");
        while (1);
    }
    if (D_8012D584 == 5) {
        utilPrintf("Entry Error. PlyBdy Buff Over!!\n");
        while (1);
    }
    e = &D_8012D590[D_8012D584];
    e->unk0 = arg1;
    e->unk4 = arg0->unkC;
    if (arg0->unk0 != NULL) {
        e->unk18 = &D_8012D198[D_8012D190];
        D_8012D190++;
        e->unk18->unk0 = 0;
        e->unk18->unk4 = arg0->unk0->unk0;
        e->unk18->unkC = arg0->unk0->unk8;
    } else {
        e->unk18 = NULL;
    }
    e->unk1C = arg0->unk4;
    e->unk20 = &D_8012D198[D_8012D190];
    d = e->unk20;
    s = arg0->unk8;
    for (i = 0; i < e->unk1C; i++) {
        d->unk0 = 0;
        d->unk4 = s->unk0;
        d->unkC = s->unk8;
        s++;
        d++;
    }
    D_8012D190 += arg0->unk4;
    D_8012D584++;
    D_8012D924 = 0xFF800080;
    return e;
}

struct PlySlot *func_801117BC(struct PlyEntry *arg0, void *arg1) {
    struct PlySlot *e;
    struct Shape28 *d;
    struct Shape24 *s;
    s32 i;
    s32 n;

    if (arg0->unk0 != NULL) {
        n = 1;
    } else {
        n = 0;
    }
    if ((n + D_8012D190 + arg0->unk4) >= 0x1A) {
        utilPrintf("Entry Error. PlySht Global Shape Buff Over!!\n");
        while (1);
    }
    if (D_8012D588 == 0xA) {
        utilPrintf("Entry Error. PlySht Buff Over!!\n");
        while (1);
    }
    e = &D_8012D648[D_8012D588];
    e->unk0 = arg1;
    e->unk4 = arg0->unkC;
    if (arg0->unk0 != NULL) {
        e->unk18 = &D_8012D198[D_8012D190];
        D_8012D190++;
        e->unk18->unk0 = 0;
        e->unk18->unk4 = arg0->unk0->unk0;
        e->unk18->unkC = arg0->unk0->unk8;
    } else {
        e->unk18 = NULL;
    }
    e->unk1C = arg0->unk4;
    e->unk20 = &D_8012D198[D_8012D190];
    d = e->unk20;
    s = arg0->unk8;
    for (i = 0; i < e->unk1C; i++) {
        d->unk0 = 0;
        d->unk4 = s->unk0;
        d->unkC = s->unk8;
        s++;
        d++;
    }
    D_8012D190 += arg0->unk4;
    D_8012D588++;
    D_8012D924 = 0xFFFF00A0;
    return e;
}

struct PlySlot *func_80111A04(struct PlyEntry *arg0, void *arg1) {
    struct PlySlot *e;
    struct Shape28 *d;
    struct Shape24 *s;
    s32 i;
    s32 n;

    if (arg0->unk0 != NULL) {
        n = 1;
    } else {
        n = 0;
    }
    if ((n + D_8012D190 + arg0->unk4) >= 0x1A) {
        utilPrintf("Entry Error. PlyEff Global Shape Buff Over!!\n");
        while (1);
    }
    if (D_8012D58C == 0xA) {
        utilPrintf("Entry Error. PlyEff Buff Over!!\n");
        while (1);
    }
    e = &D_8012D7B0[D_8012D58C];
    e->unk0 = arg1;
    e->unk4 = arg0->unkC;
    if (arg0->unk0 != NULL) {
        e->unk18 = &D_8012D198[D_8012D190];
        D_8012D190++;
        e->unk18->unk0 = 0;
        e->unk18->unk4 = arg0->unk0->unk0;
        e->unk18->unkC = arg0->unk0->unk8;
    } else {
        e->unk18 = NULL;
    }
    e->unk1C = arg0->unk4;
    e->unk20 = &D_8012D198[D_8012D190];
    d = e->unk20;
    s = arg0->unk8;
    for (i = 0; i < e->unk1C; i++) {
        d->unk0 = 0;
        d->unk4 = s->unk0;
        d->unkC = s->unk8;
        s++;
        d++;
    }
    D_8012D190 += arg0->unk4;
    D_8012D58C++;
    D_8012D924 = 0x00FF0080;
    return e;
}

void func_80111C4C(s32 *arg0) {
    if (arg0 != NULL) {
        func_80110138(arg0[0], arg0[6], arg0[7], arg0[8]);
    }
}

struct CollSlot *func_80111C88(struct CollEntry *arg0, void *arg1) {
    struct CollSlot *e;
    struct Shape28 *d;
    struct Shape24 *s;
    s32 i;
    s32 n;

    if (arg0->unk0 != NULL) {
        n = 1;
    } else {
        n = 0;
    }
    if ((n + D_8012CF28 + arg0->unk4) >= 0xB) {
        utilPrintf("Entry Error. CollEne Global Shape Buff Over!!\n");
        while (1);
    }
    if (D_8012D0C4 == 5) {
        utilPrintf("Entry Error. CollEne Buff Over!!\n");
        while (1);
    }
    e = &D_8012D0C8[D_8012D0C4];
    e->unk0 = arg1;
    e->unk4 = arg0->unkC;
    if (arg0->unk0 != NULL) {
        e->unk1C = &D_8012CF30[D_8012CF28];
        D_8012CF28++;
        e->unk1C->unk0 = 0;
        e->unk1C->unk4 = arg0->unk0->unk0;
        e->unk1C->unkC = arg0->unk0->unk8;
    } else {
        e->unk1C = NULL;
    }
    e->unk20 = arg0->unk4;
    e->unk24 = &D_8012CF30[D_8012CF28];
    d = e->unk24;
    s = arg0->unk8;
    for (i = 0; i < e->unk20; i++) {
        d->unk0 = 0;
        d->unk4 = s->unk0;
        d->unkC = s->unk8;
        s++;
        d++;
    }
    D_8012CF28 += e->unk20;
    D_8012D0C4++;
    D_8012D924 = 0x80FFFF80;
    return e;
}

void func_80111ECC(s32 *arg0) {
    if (arg0 != NULL) {
        func_80110138(arg0[0], arg0[7], arg0[8], arg0[9]);
    }
}
