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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_9/func_801105E8.s")

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
