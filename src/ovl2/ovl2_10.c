#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "main/object_helpers.h"
#include "main/object_manager.h"
#include "DObj.h"
#include "unk_structs/D_80129114.h"

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
    /* 0x18 */ s16 unk18;
    /* 0x1A */ u16 unk1A;
};

extern struct Unk80124E14 D_80124E14[];
extern s32 D_800D6F10;
s32 func_8011E368(void);
void func_800AA018(s32);

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
    s32 unk4;
    s32 unk8;
};

extern struct Unk80126CD0 D_80126CD0[];

extern u8 D_800D6E20[];
extern u32 D_800BE508;
extern s32 D_800D6E18;
void func_800B4924(struct GObj *);
void func_800A9F98(s32, f32);
s32 func_800FD754(s32, f32, f32, f32);
void func_80114E80(struct DObj *, s32, f32);
void func_80112ED4(f32 arg0[4][4], Vector *arg1, Vector *arg2);
void func_800AF27C(void);
f32 func_8011E2A0(void);
void curObjSleepForever(void);
void func_80112B4C(struct GObj *arg0);
void func_8011AE6C(struct GObj *arg0);
s32 request_track_general(s32, s32, s32);
extern s32 D_800D7098[];
extern s32 D_8012D940;
void func_80113F08(struct GObj *);
extern void (*D_801249C0[])(struct GObj *);
void func_80117210(struct GObj *);
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

void vec3_sub_normalize(Vector *, Vector *, Vector *);
void vec3_normalized_cross_product(Vector *, Vector *, Vector *);
void vec3_cross_product(Vector *, Vector *, Vector *);

void func_80111F10(void) {
    Camera *cam;
    struct Unk8012D934 *m;
    Vector sp4C;
    Vector sp40;
    Vector sp34;

    cam = D_800D799C->data.cam;
    m = D_8012D934;
    vec3_sub_normalize(&sp4C, &cam->viewMtx.lookAt.at, &cam->viewMtx.lookAt.eye);
    vec3_normalized_cross_product(&cam->viewMtx.lookAt.up, &sp4C, &sp40);
    vec3_cross_product(&cam->viewMtx.lookAt.up, &sp4C, &sp40);
    vec3_cross_product(&sp4C, &sp40, &sp34);
    m->unk0[0][0] = sp40.x;
    m->unk0[0][1] = sp40.y;
    m->unk0[0][2] = sp40.z;
    m->unk0[1][0] = sp34.x;
    m->unk0[1][1] = sp34.y;
    m->unk0[1][2] = sp34.z;
    m->unk0[2][0] = sp4C.x;
    m->unk0[2][1] = sp4C.y;
    m->unk0[2][2] = sp4C.z;
    m->unk0[0][3] = m->unk0[1][3] = m->unk0[2][3] = m->unk0[3][0] = m->unk0[3][1] = m->unk0[3][2] = 0.0f;
    m->unk0[3][3] = 1.0f;
}

void func_80112000(void) {
    Camera *cam;
    struct Unk8012D934 *m;
    struct UnkPlane *pl;
    Vector *eye;
    f32 ang;
    f32 c;
    f32 s;
    f32 nx;
    f32 ny;
    f32 nz;
    f32 inv;
    f32 d;
    s32 i;

    cam = D_800D799C->data.cam;
    ang = -(((cam->perspMtx.persp.fovy - 2.0f) * 0.5f * 3.141592741f) / 180.0f) * cam->perspMtx.persp.aspect;
    m = D_8012D934;
    c = -cosf(ang);
    s = sinf(ang);
    eye = &cam->viewMtx.lookAt.eye;
    for (i = 0;; i++) {
        nx = ((m->unk0[0][0] * c) + (m->unk0[2][0] * s)) + m->unk0[3][0];
        ny = ((m->unk0[0][1] * c) + (m->unk0[2][1] * s)) + m->unk0[3][1];
        nz = ((m->unk0[0][2] * c) + (m->unk0[2][2] * s)) + m->unk0[3][2];
        inv = 1.0f / sqrtf(((nx * nx) + (ny * ny)) + (nz * nz));
        nx *= inv;
        ny *= inv;
        nz *= inv;
        pl = &D_8012D934->unk60[i];
        d = -(((eye->x * nx) + (ny * eye->y)) + (nz * eye->z));
        pl->unkC = d;
        pl->unk0 = nx;
        pl->unk4 = ny;
        pl->unk8 = nz;
        if (i == 1) {
            break;
        }
        ang = -ang;
        c = cosf(ang);
        s = -sinf(ang);
    }

}

void func_801121E0(void) {
    Camera *cam;
    struct Unk8012D934 *m;
    struct UnkPlane *pl;
    Vector *eye;
    f32 ang;
    f32 c;
    f32 s;
    f32 nx;
    f32 ny;
    f32 nz;
    f32 inv;
    f32 d;
    s32 i;

    cam = D_800D799C->data.cam;
    ang = -((cam->perspMtx.persp.fovy * 0.5f * 3.141592741f) / 180.0f);
    m = D_8012D934;
    c = cosf(ang);
    s = sinf(ang);
    eye = &cam->viewMtx.lookAt.eye;
    for (i = 0;; i++) {
        nx = ((m->unk0[1][0] * c) + (m->unk0[2][0] * s)) + m->unk0[3][0];
        ny = ((m->unk0[1][1] * c) + (m->unk0[2][1] * s)) + m->unk0[3][1];
        nz = ((m->unk0[1][2] * c) + (m->unk0[2][2] * s)) + m->unk0[3][2];
        inv = 1.0f / sqrtf(((nx * nx) + (ny * ny)) + (nz * nz));
        nx *= inv;
        ny *= inv;
        nz *= inv;
        pl = &D_8012D934->unk60[i];
        d = -(((eye->x * nx) + (ny * eye->y)) + (nz * eye->z));
        pl->unkC = d;
        pl->unk0 = nx;
        pl->unk4 = ny;
        pl->unk8 = nz;
        if (i == 1) {
            break;
        }
        ang = -ang;
        c = -cosf(ang);
        s = -sinf(ang);
    }

}

// Load-bearing: the `p = &arg0[1]` element-address local is what produces the
// ROM's bare `addiu $v0, $v0, 0x10` base bias -- a `(u8 *)arg0 + 0x10` cast, a
// 2D-array row pointer and plain member access all get folded into the
// displacements instead.  `f32 pad0;` sizes the frame to 0x28.
struct Unk801123AC {
    /* 0x0 */ f32 unk0;
    /* 0x4 */ f32 unk4;
    /* 0x8 */ f32 unk8;
    /* 0xC */ f32 unkC;
};

void func_801123AC(struct Unk801123AC *arg0) {
    f32 pad0;
    f32 s;
    f32 c;
    struct Unk801123AC *p;

    p = &arg0[1];
    c = cosf(arg0[2].unk4);
    s = sinf(arg0[2].unk4);
    D_8012D934->unk40 = p[0].unkC * s;
    D_8012D934->unk44 = p[0].unkC * c;
    D_8012D934->unk48 = p[1].unk0 * s;
    D_8012D934->unk4C = p[1].unk0 * c;
    if (0.0f < p[0].unkC) {
        D_8012D934->unk50 = s;
        D_8012D934->unk54 = c;
    } else {
        D_8012D934->unk50 = -s;
        D_8012D934->unk54 = -c;
    }
    D_8012D934->unk58 = -D_8012D934->unk50;
    D_8012D934->unk5C = -D_8012D934->unk54;
}

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

s32 func_801128A4(struct UnkRay *arg0) {
    s32 ret;
    struct Unk8012D934 sp2C;

    ret = 0;
    D_8012D934 = &sp2C;
    if (D_8012D930.unk0_80 || D_8012D930.unk0_40) {
        func_80111F10();
        if (D_8012D930.unk0_80) {
            func_801123AC((struct Unk801123AC *) arg0);
            func_80112000();
            if (func_80112498(arg0) != 0) {
                ret = func_8011253C(arg0);
            }
            if (func_80112600(arg0) != 0) {
                ret = func_801126A4((struct UnkPlane *) arg0);
            }
        }
        if (D_8012D930.unk0_40) {
            func_801121E0();
            if (func_80112768(arg0) != 0) {
                ret |= func_801127D8(arg0);
            }
            if (func_80112828(arg0) != 0) {
                ret |= 8;
            }
        }
    }
    return ret;
}

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

void func_80112A40(s32 arg0, Vector *arg1, Vector *arg2) {
    struct struct8011BA10_temp *temp;
    Vector sp30;
    Vector sp24;
    s32 idx;

    if (arg0 != 0x14) {
        temp = &D_8012D948[arg0];
        if (temp->unk2 & 2) {
            func_80112ED4((f32 (*)[4]) &temp->unk18, &sp30, arg1);
            func_80112ED4((f32 (*)[4]) &temp->unk58, &sp24, &sp30);
            arg2->x = sp24.x - arg1->x;
            arg2->y = sp24.y - arg1->y;
            arg2->z = sp24.z - arg1->z;
        } else {
            idx = temp->unk1;
            arg2->x = D_800E3050[idx];
            arg2->y = D_800E3210[idx];
            arg2->z = D_800E33D0[idx];
        }
    } else {
        arg2->x = arg2->y = arg2->z = 0.0f;
    }
}

/* Publishes this frame's DObj transform into the entity arrays and records the
 * per-tick position delta in D_800E3050/3210/33D0.
 * The three delta slots are written through the ARRAYS, not through named
 * `f32 *` locals: IDO CSEs each `&D_800E33D0[id]` across the func_800B4924
 * call and spills it (sp+0x1C/0x20/0x24), which is what the ROM does. Naming
 * them costs three declared local words and pushes the frame 0x40 -> 0x48.
 * The `pad` is one of the ROM's own dead local words; it is what puts the
 * spill block at 0x1C instead of 0x18. */
void func_80112B4C(struct GObj *arg0) {
    Vector *pos = &arg0->data.dobj->pos.v;
    s32 id = arg0->objId;
    Vector *scl;
    s32 pad;

    D_800E3050[id] = D_800E3210[id] = D_800E33D0[id] = 0.0f;
    func_800B4924(arg0);
    D_800E3050[id] = pos->x - gEntitiesPosXArray[id];
    D_800E3210[id] = pos->y - gEntitiesPosYArray[id];
    D_800E33D0[id] = pos->z - gEntitiesPosZArray[id];
    gEntitiesNextPosXArray[id] = pos->x;
    gEntitiesNextPosYArray[id] = pos->y;
    gEntitiesNextPosZArray[id] = pos->z;
    if (((u8 *) arg0->unk4C)[2] & 2) {
        pos = &arg0->data.dobj->angle.v;
        scl = &arg0->data.dobj->scale.v;
        gEntitiesAngleXArray[id] = pos->x;
        gEntitiesAngleYArray[id] = pos->y;
        gEntitiesAngleZArray[id] = pos->z;
        gEntitiesScaleXArray[id] = scl->x;
        gEntitiesScaleYArray[id] = scl->y;
        gEntitiesScaleZArray[id] = scl->z;
    }
}
void func_80112CD4(s32 arg0, f32 arg1[4][4]) {
    f32 sx;
    f32 sy;
    f32 sz;
    f32 cx;
    f32 cy;
    f32 cz;
    f32 ax;
    f32 ay;
    f32 az;

    sx = sinf(gEntitiesAngleXArray[arg0]);
    cx = cosf(gEntitiesAngleXArray[arg0]);
    sy = sinf(gEntitiesAngleYArray[arg0]);
    cy = cosf(gEntitiesAngleYArray[arg0]);
    sz = sinf(gEntitiesAngleZArray[arg0]);
    cz = cosf(gEntitiesAngleZArray[arg0]);
    ax = gEntitiesScaleXArray[arg0];
    ay = gEntitiesScaleYArray[arg0];
    az = gEntitiesScaleZArray[arg0];
    arg1[0][0] = cy * cz * ax;
    arg1[0][1] = cy * sz * ax;
    arg1[0][2] = -sy * ax;
    arg1[1][0] = ((sx * sy * cz) - (cx * sz)) * ay;
    arg1[1][1] = ((sx * sy * sz) + (cx * cz)) * ay;
    arg1[1][2] = sx * cy * ay;
    arg1[2][0] = ((cx * sy * cz) + (sx * sz)) * az;
    arg1[2][1] = ((cx * sy * sz) - (sx * cz)) * az;
    arg1[2][2] = cx * cy * az;
    arg1[3][0] = gEntitiesNextPosXArray[arg0];
    arg1[3][1] = gEntitiesNextPosYArray[arg0];
    arg1[3][2] = gEntitiesNextPosZArray[arg0];
    arg1[0][3] = arg1[1][3] = arg1[2][3] = 0.0f;
    arg1[3][3] = 1.0f;
}

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


void func_80113028(f32 arg0[4][4], f32 arg1[4][4]) {
    f32 det;

    arg0[0][0] = (arg1[1][1] * arg1[2][2]) - (arg1[1][2] * arg1[2][1]);
    arg0[1][0] = (arg1[1][0] * arg1[2][2]) - (arg1[1][2] * arg1[2][0]);
    arg0[2][0] = (arg1[1][0] * arg1[2][1]) - (arg1[1][1] * arg1[2][0]);
    arg0[3][0] = ((arg1[3][0] * arg0[0][0]) - (arg1[3][1] * arg0[1][0])) + (arg1[3][2] * arg0[2][0]);
    arg0[0][1] = (arg1[0][1] * arg1[2][2]) - (arg1[0][2] * arg1[2][1]);
    arg0[1][1] = (arg1[0][0] * arg1[2][2]) - (arg1[0][2] * arg1[2][0]);
    arg0[2][1] = (arg1[0][0] * arg1[2][1]) - (arg1[0][1] * arg1[2][0]);
    arg0[3][1] = ((arg1[3][0] * arg0[0][1]) - (arg1[3][1] * arg0[1][1])) + (arg1[3][2] * arg0[2][1]);
    arg0[0][2] = (arg1[0][1] * arg1[1][2]) - (arg1[0][2] * arg1[1][1]);
    arg0[1][2] = (arg1[0][0] * arg1[1][2]) - (arg1[0][2] * arg1[1][0]);
    arg0[2][2] = (arg1[0][0] * arg1[1][1]) - (arg1[0][1] * arg1[1][0]);
    arg0[3][2] = ((arg1[3][0] * arg0[0][2]) - (arg1[3][1] * arg0[1][2])) + (arg1[3][2] * arg0[2][2]);
    det = ((arg1[0][0] * arg0[0][0]) - (arg1[0][1] * arg0[1][0])) + (arg1[0][2] * arg0[2][0]);
    arg0[1][0] = -arg0[1][0];
    arg0[3][0] = -arg0[3][0];
    arg0[0][1] = -arg0[0][1];
    arg0[2][1] = -arg0[2][1];
    arg0[1][2] = -arg0[1][2];
    arg0[3][2] = -arg0[3][2];
    det = 1.0f / det;
    arg0[0][0] *= det;
    arg0[1][0] *= det;
    arg0[2][0] *= det;
    arg0[3][0] *= det;
    arg0[0][1] *= det;
    arg0[1][1] *= det;
    arg0[2][1] *= det;
    arg0[3][1] *= det;
    arg0[0][2] *= det;
    arg0[1][2] *= det;
    arg0[2][2] *= det;
    arg0[3][2] *= det;
}

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

#ifdef MIPS_TO_C
/* FACTORY: 15/720 instructions match (705 diffs), and the score is
 * almost entirely one frame delta: IDO gives this 0xC8 where the ROM
 * has 0x138, so every $sp displacement and every register that falls
 * out of the allocation differs. The BODY is solved -- both record
 * paths, the three unrolled vertex updates each, the vertex-seen
 * bitmap clear, the plane retransform and the bounds accumulation all
 * read straight off the listing.
 * What the frame needs, measured: the ROM keeps its two bound pairs at
 * $sp+0x118/+0x10C (full-transform path) and +0xBC/+0xB0
 * (translation path) and takes their ADDRESSES (four `addiu $tX, $sp,`
 * materialisations), i.e. they are 12-byte Vectors copied wholesale
 * into rec->unkA0/unkAC -- that much is reproduced here. The
 * remaining 0x70 of its frame (0x50..0xAF and 0xC4..0x10B) is NEVER
 * referenced by any instruction in the listing, so it belongs to
 * locals IDO register-allocated and their identity is not recoverable
 * from the asm alone. Measured inert: adding eighteen per-component
 * f32 temps (one per bounds compare, which is what the ROM's reload
 * pattern suggests) does not grow the frame at all -- IDO forwards
 * them. This one wants a stack-shape search, which is exactly what the
 * permuter is for. */
void func_801133C8(struct GObj *arg0) {
    void func_8010DD8C(void);
    struct struct8011BA10_temp *rec;
    struct vCollisionHeader *mesh;
    struct CollisionTriangle *tri;
    struct Normal *dstNormal;
    struct Normal *srcNormal;
    struct Normal **planes;
    u8 *seen;
    s16 *modelVtx;
    f32 *worldVtx;
    f32 *world;
    f32 mn[3];
    f32 mx[3];
    f32 tmn[3];
    f32 tmx[3];
    f32 nx;
    f32 ny;
    f32 nz;
    f32 posX;
    f32 posY;
    f32 posZ;
    u32 recIndex;
    u32 triIndex;
    u32 normalIndex;
    u32 vtxIndex;
    u32 planeIndex;
    u32 vi;
    s32 slot;
    u8 flags;

    rec = D_8012D948;
    recIndex = 0;
    if (D_8012D940 != 0) {
        do {
            flags = rec->unk2;
            slot = rec->unk1;
            mesh = rec->unk4;
            triIndex = 1;
            if (flags & 2) {
                /* Full transform: the record carries its own matrix. */
                mn[2] = 30000.0f;
                mn[1] = 30000.0f;
                mn[0] = 30000.0f;
                mx[2] = -30000.0f;
                mx[1] = -30000.0f;
                mx[0] = -30000.0f;
                seen = (u8 *) rec->unk10;
                vtxIndex = 0;
                normalIndex = 1;
                if (mesh->header.Len_Vertices != 0) {
                    do {
                        *seen = 0;
                        vtxIndex += 1;
                        seen += 1;
                    } while (vtxIndex < mesh->header.Len_Vertices);
                }
                world = (f32 *) &rec->unk58;
                func_80113028((f32 (*)[4]) &rec->unk18, (f32 (*)[4]) world);
                func_80112CD4(slot, (f32 (*)[4]) world);
                seen = (u8 *) rec->unk10;
                modelVtx = (s16 *) rec->unkC;
                if (mesh->header.Len_Triangles >= 2U) {
                    tri = &mesh->header.Triangles[1];
                    do {
                        vi = tri->vertex[0];
                        if (seen[vi] == 0) {
                            worldVtx = &mesh->header.vertices.VerticesF[vi * 3];
                            func_80112F70((f32 (*)[4]) world, worldVtx, &modelVtx[vi * 3]);
                            seen[tri->vertex[0]] = 1;
                            if (worldVtx[0] < mn[0]) {
                                mn[0] = worldVtx[0];
                            }
                            if (worldVtx[1] < mn[1]) {
                                mn[1] = worldVtx[1];
                            }
                            if (worldVtx[2] < mn[2]) {
                                mn[2] = worldVtx[2];
                            }
                            if (mx[0] < worldVtx[0]) {
                                mx[0] = worldVtx[0];
                            }
                            if (mx[1] < worldVtx[1]) {
                                mx[1] = worldVtx[1];
                            }
                            if (mx[2] < worldVtx[2]) {
                                mx[2] = worldVtx[2];
                            }
                        }
                        vi = tri->vertex[1];
                        if (seen[vi] == 0) {
                            worldVtx = &mesh->header.vertices.VerticesF[vi * 3];
                            func_80112F70((f32 (*)[4]) world, worldVtx, &modelVtx[vi * 3]);
                            seen[tri->vertex[1]] = 1;
                            if (worldVtx[0] < mn[0]) {
                                mn[0] = worldVtx[0];
                            }
                            if (worldVtx[1] < mn[1]) {
                                mn[1] = worldVtx[1];
                            }
                            if (worldVtx[2] < mn[2]) {
                                mn[2] = worldVtx[2];
                            }
                            if (mx[0] < worldVtx[0]) {
                                mx[0] = worldVtx[0];
                            }
                            if (mx[1] < worldVtx[1]) {
                                mx[1] = worldVtx[1];
                            }
                            if (mx[2] < worldVtx[2]) {
                                mx[2] = worldVtx[2];
                            }
                        }
                        vi = tri->vertex[2];
                        if (seen[vi] == 0) {
                            worldVtx = &mesh->header.vertices.VerticesF[vi * 3];
                            func_80112F70((f32 (*)[4]) world, worldVtx, &modelVtx[vi * 3]);
                            seen[tri->vertex[2]] = 1;
                            if (worldVtx[0] < mn[0]) {
                                mn[0] = worldVtx[0];
                            }
                            if (worldVtx[1] < mn[1]) {
                                mn[1] = worldVtx[1];
                            }
                            if (worldVtx[2] < mn[2]) {
                                mn[2] = worldVtx[2];
                            }
                            if (mx[0] < worldVtx[0]) {
                                mx[0] = worldVtx[0];
                            }
                            if (mx[1] < worldVtx[1]) {
                                mx[1] = worldVtx[1];
                            }
                            if (mx[2] < worldVtx[2]) {
                                mx[2] = worldVtx[2];
                            }
                        }
                        triIndex += 1;
                        tri += 1;
                    } while (triIndex < mesh->header.Len_Triangles);
                }
                if (mesh->header.Len_Triangle_Normals >= 2U) {
                    srcNormal = &((struct Normal *) rec->unk8)[1];
                    dstNormal = &mesh->header.Triangle_Normals[1];
                    planeIndex = 4;
                    do {
                        nx = srcNormal->x;
                        ny = srcNormal->y;
                        nz = srcNormal->z;
                        normalIndex += 1;
                        srcNormal += 1;
                        dstNormal += 1;
                        dstNormal[-1].x = ((world[0] * nx) + (world[4] * ny)) + (world[8] * nz);
                        dstNormal[-1].y = ((world[1] * nx) + (world[5] * ny)) + (world[9] * nz);
                        dstNormal[-1].z = ((world[2] * nx) + (world[6] * ny)) + (world[10] * nz);
                        planes = (struct Normal **) ((u8 *) rec->unk14 + planeIndex);
                        planeIndex += 4;
                        dstNormal[-1].originOffset =
                            -(((dstNormal[-1].x * planes[0]->x) + (dstNormal[-1].y * planes[0]->y))
                              + (dstNormal[-1].z * planes[0]->z));
                    } while (normalIndex < mesh->header.Len_Triangle_Normals);
                }
                rec->unkA0 = mn[0];
                rec->unkA4 = mn[1];
                rec->unkA8 = mn[2];
                rec->unkAC = mx[0];
                rec->unkB0 = mx[1];
                rec->unkB4 = mx[2];
            } else if ((flags & 4) || (D_800E3050[slot] != 0.0f) || (D_800E3210[slot] != 0.0f)
                       || (D_800E33D0[slot] != 0.0f)) {
                /* Translation only: the entity moved, so shift the cached
                 * vertices instead of running the full matrix. */
                tmn[2] = 30000.0f;
                tmn[1] = 30000.0f;
                tmn[0] = 30000.0f;
                tmx[2] = -30000.0f;
                tmx[1] = -30000.0f;
                tmx[0] = -30000.0f;
                vtxIndex = 0;
                triIndex = 1;
                normalIndex = 1;
                seen = (u8 *) rec->unk10;
                if (mesh->header.Len_Vertices != 0) {
                    do {
                        *seen = 0;
                        vtxIndex += 1;
                        seen += 1;
                    } while (vtxIndex < mesh->header.Len_Vertices);
                }
                posX = gEntitiesNextPosXArray[slot];
                posY = gEntitiesNextPosYArray[slot];
                posZ = gEntitiesNextPosZArray[slot];
                modelVtx = (s16 *) rec->unkC;
                if (mesh->header.Len_Triangles >= 2U) {
                    tri = &mesh->header.Triangles[1];
                    do {
                        vi = tri->vertex[0];
                        if (((u8 *) rec->unk10)[vi] == 0) {
                            worldVtx = &mesh->header.vertices.VerticesF[vi * 3];
                            worldVtx[0] = modelVtx[vi * 3] + posX;
                            worldVtx[1] = modelVtx[(vi * 3) + 1] + posY;
                            worldVtx[2] = modelVtx[(vi * 3) + 2] + posZ;
                            ((u8 *) rec->unk10)[tri->vertex[0]] = 1;
                            if (worldVtx[0] < tmn[0]) {
                                tmn[0] = worldVtx[0];
                            }
                            if (worldVtx[1] < tmn[1]) {
                                tmn[1] = worldVtx[1];
                            }
                            if (worldVtx[2] < tmn[2]) {
                                tmn[2] = worldVtx[2];
                            }
                            if (tmx[0] < worldVtx[0]) {
                                tmx[0] = worldVtx[0];
                            }
                            if (tmx[1] < worldVtx[1]) {
                                tmx[1] = worldVtx[1];
                            }
                            if (tmx[2] < worldVtx[2]) {
                                tmx[2] = worldVtx[2];
                            }
                        }
                        vi = tri->vertex[1];
                        if (((u8 *) rec->unk10)[vi] == 0) {
                            worldVtx = &mesh->header.vertices.VerticesF[vi * 3];
                            worldVtx[0] = modelVtx[vi * 3] + posX;
                            worldVtx[1] = modelVtx[(vi * 3) + 1] + posY;
                            worldVtx[2] = modelVtx[(vi * 3) + 2] + posZ;
                            ((u8 *) rec->unk10)[tri->vertex[1]] = 1;
                            if (worldVtx[0] < tmn[0]) {
                                tmn[0] = worldVtx[0];
                            }
                            if (worldVtx[1] < tmn[1]) {
                                tmn[1] = worldVtx[1];
                            }
                            if (worldVtx[2] < tmn[2]) {
                                tmn[2] = worldVtx[2];
                            }
                            if (tmx[0] < worldVtx[0]) {
                                tmx[0] = worldVtx[0];
                            }
                            if (tmx[1] < worldVtx[1]) {
                                tmx[1] = worldVtx[1];
                            }
                            if (tmx[2] < worldVtx[2]) {
                                tmx[2] = worldVtx[2];
                            }
                        }
                        vi = tri->vertex[2];
                        if (((u8 *) rec->unk10)[vi] == 0) {
                            worldVtx = &mesh->header.vertices.VerticesF[vi * 3];
                            worldVtx[0] = modelVtx[vi * 3] + posX;
                            worldVtx[1] = modelVtx[(vi * 3) + 1] + posY;
                            worldVtx[2] = modelVtx[(vi * 3) + 2] + posZ;
                            ((u8 *) rec->unk10)[tri->vertex[2]] = 1;
                            if (worldVtx[0] < tmn[0]) {
                                tmn[0] = worldVtx[0];
                            }
                            if (worldVtx[1] < tmn[1]) {
                                tmn[1] = worldVtx[1];
                            }
                            if (worldVtx[2] < tmn[2]) {
                                tmn[2] = worldVtx[2];
                            }
                            if (tmx[0] < worldVtx[0]) {
                                tmx[0] = worldVtx[0];
                            }
                            if (tmx[1] < worldVtx[1]) {
                                tmx[1] = worldVtx[1];
                            }
                            if (tmx[2] < worldVtx[2]) {
                                tmx[2] = worldVtx[2];
                            }
                        }
                        triIndex += 1;
                        tri += 1;
                    } while (triIndex < mesh->header.Len_Triangles);
                }
                if (mesh->header.Len_Triangle_Normals >= 2U) {
                    planeIndex = 4;
                    dstNormal = &mesh->header.Triangle_Normals[1];
                    srcNormal = &((struct Normal *) rec->unk8)[1];
                    do {
                        normalIndex += 1;
                        planes = (struct Normal **) ((u8 *) rec->unk14 + planeIndex);
                        dstNormal->x = srcNormal->x;
                        planeIndex += 4;
                        dstNormal += 1;
                        dstNormal[-1].y = srcNormal->y;
                        dstNormal[-1].z = srcNormal->z;
                        srcNormal += 1;
                        dstNormal[-1].originOffset = srcNormal[-1].originOffset;
                        dstNormal[-1].originOffset =
                            -(((dstNormal[-1].x * planes[0]->x) + (dstNormal[-1].y * planes[0]->y))
                              + (dstNormal[-1].z * planes[0]->z));
                    } while (normalIndex < mesh->header.Len_Triangle_Normals);
                }
                rec->unkA0 = tmn[0];
                rec->unkA4 = tmn[1];
                rec->unkA8 = tmn[2];
                rec->unkAC = tmx[0];
                rec->unkB0 = tmx[1];
                rec->unkB4 = tmx[2];
            }
            rec += 1;
            recIndex += 1;
        } while (recIndex < D_8012D940);
    }
    func_8010DD8C();
}
#elif defined(PORT)
/* PORT: steady-state per-frame update of every dynamic-collision record,
 * from asm/nonmatchings/ovl2/ovl2_10/func_801133C8.s. Same record walk,
 * field map and vertex/plane retransform as func_80113F08 below (see its
 * comment), with two differences: a translation-only record is refreshed
 * only when its dirty flag is set (unk2 & 4) or the owning entity actually
 * moved this frame (nonzero per-frame delta in D_800E3050/D_800E3210/
 * D_800E33D0 -- the deltas func_80112B4C writes); and the process is not
 * retargeted at the end -- func_80113F08 retargets itself HERE after the
 * first frame, so this is the updater that keeps moving platforms
 * animating. The ROM's translation-path plane loop copies the old D-term
 * before overwriting it with the recomputed one; that dead store is
 * dropped, as in F08's arm. */
struct PcF08Model {
    /* scalar mirror of Unk80114A14Model (defined further down this file) */
    s32 unk0;
    s32 unk4;  /* poly table, 0x14 stride, truncated host ptr */
    s32 unk8;  /* poly count */
    s32 unkC;  /* f32 point array (realloc'd), truncated host ptr */
    s32 unk10; /* point count */
    s32 unk14; /* plane table (realloc'd), 0x10 stride, truncated host ptr */
    s32 unk18; /* plane count */
};

void func_8010DD8C(void);

void func_801133C8(struct GObj *arg0) {
    void func_8010DD8C(void);
    Vector mn;
    Vector mx;
    Vector tmn;
    Vector tmx;
    struct struct8011BA10_temp *rec;
    struct vCollisionHeader *mesh;
    struct CollisionTriangle *tri;
    struct Normal *dstNormal;
    struct Normal *srcNormal;
    struct Normal **plane;
    u8 *seen;
    s16 *modelVtx;
    f32 *worldVtx;
    f32 *world;
    f32 nx;
    f32 ny;
    f32 nz;
    f32 posX;
    f32 posY;
    f32 posZ;
    u32 recIndex;
    u32 triIndex;
    u32 normalIndex;
    u32 vtxIndex;
    u32 planeOffset;
    u32 vi;
    s32 slot;
    u8 flags;

    rec = D_8012D948;
    recIndex = 0;
    if (D_8012D940 != 0) {
        do {
            flags = rec->unk2;
            slot = rec->unk1;
            mesh = rec->unk4;
            triIndex = 1;
            if (flags & 2) {
                /* Full transform: the record carries its own matrix. */
                mn.z = 30000.0f;
                mn.y = 30000.0f;
                mn.x = 30000.0f;
                mx.z = -30000.0f;
                mx.y = -30000.0f;
                mx.x = -30000.0f;
                seen = (u8 *) rec->unk10;
                vtxIndex = 0;
                normalIndex = 1;
                if (mesh->header.Len_Vertices != 0) {
                    do {
                        *seen = 0;
                        vtxIndex += 1;
                        seen += 1;
                    } while (vtxIndex < mesh->header.Len_Vertices);
                }
                world = (f32 *) &rec->unk58;
                func_80113028((f32 (*)[4]) &rec->unk18, (f32 (*)[4]) world);
                func_80112CD4(slot, (f32 (*)[4]) world);
                seen = (u8 *) rec->unk10;
                modelVtx = (s16 *) rec->unkC;
                if (mesh->header.Len_Triangles >= 2U) {
                    tri = &mesh->header.Triangles[1];
                    do {
                        vi = tri->vertex[0];
                        if (seen[vi] == 0) {
                            worldVtx = &mesh->header.vertices.VerticesF[vi * 3];
                            func_80112F70((f32 (*)[4]) world, worldVtx, &modelVtx[vi * 3]);
                            seen[tri->vertex[0]] = 1;
                            if (worldVtx[0] < mn.x) {
                                mn.x = worldVtx[0];
                            }
                            if (worldVtx[1] < mn.y) {
                                mn.y = worldVtx[1];
                            }
                            if (worldVtx[2] < mn.z) {
                                mn.z = worldVtx[2];
                            }
                            if (mx.x < worldVtx[0]) {
                                mx.x = worldVtx[0];
                            }
                            if (mx.y < worldVtx[1]) {
                                mx.y = worldVtx[1];
                            }
                            if (mx.z < worldVtx[2]) {
                                mx.z = worldVtx[2];
                            }
                        }
                        vi = tri->vertex[1];
                        if (seen[vi] == 0) {
                            worldVtx = &mesh->header.vertices.VerticesF[vi * 3];
                            func_80112F70((f32 (*)[4]) world, worldVtx, &modelVtx[vi * 3]);
                            seen[tri->vertex[1]] = 1;
                            if (worldVtx[0] < mn.x) {
                                mn.x = worldVtx[0];
                            }
                            if (worldVtx[1] < mn.y) {
                                mn.y = worldVtx[1];
                            }
                            if (worldVtx[2] < mn.z) {
                                mn.z = worldVtx[2];
                            }
                            if (mx.x < worldVtx[0]) {
                                mx.x = worldVtx[0];
                            }
                            if (mx.y < worldVtx[1]) {
                                mx.y = worldVtx[1];
                            }
                            if (mx.z < worldVtx[2]) {
                                mx.z = worldVtx[2];
                            }
                        }
                        vi = tri->vertex[2];
                        if (seen[vi] == 0) {
                            worldVtx = &mesh->header.vertices.VerticesF[vi * 3];
                            func_80112F70((f32 (*)[4]) world, worldVtx, &modelVtx[vi * 3]);
                            seen[tri->vertex[2]] = 1;
                            if (worldVtx[0] < mn.x) {
                                mn.x = worldVtx[0];
                            }
                            if (worldVtx[1] < mn.y) {
                                mn.y = worldVtx[1];
                            }
                            if (worldVtx[2] < mn.z) {
                                mn.z = worldVtx[2];
                            }
                            if (mx.x < worldVtx[0]) {
                                mx.x = worldVtx[0];
                            }
                            if (mx.y < worldVtx[1]) {
                                mx.y = worldVtx[1];
                            }
                            if (mx.z < worldVtx[2]) {
                                mx.z = worldVtx[2];
                            }
                        }
                        triIndex += 1;
                        tri += 1;
                    } while (triIndex < mesh->header.Len_Triangles);
                }
                if (mesh->header.Len_Triangle_Normals >= 2U) {
                    srcNormal = &((struct Normal *) rec->unk8)[1];
                    dstNormal = &mesh->header.Triangle_Normals[1];
                    planeOffset = 4;
                    do {
                        nx = srcNormal->x;
                        ny = srcNormal->y;
                        nz = srcNormal->z;
                        normalIndex += 1;
                        srcNormal += 1;
                        dstNormal += 1;
                        dstNormal[-1].x = ((world[0] * nx) + (world[4] * ny)) + (world[8] * nz);
                        dstNormal[-1].y = ((world[1] * nx) + (world[5] * ny)) + (world[9] * nz);
                        dstNormal[-1].z = ((world[2] * nx) + (world[6] * ny)) + (world[10] * nz);
                        plane = (struct Normal **) ((u8 *) rec->unk14 + planeOffset);
                        planeOffset += 4;
                        dstNormal[-1].originOffset =
                            -(((dstNormal[-1].x * plane[0]->x) + (dstNormal[-1].y * plane[0]->y))
                              + (dstNormal[-1].z * plane[0]->z));
                    } while (normalIndex < mesh->header.Len_Triangle_Normals);
                }
                *(Vector *) &rec->unkA0 = mn;
                *(Vector *) &rec->unkAC = mx;
            } else if ((flags & 4) || (D_800E3050[slot] != 0.0f) || (D_800E3210[slot] != 0.0f)
                       || (D_800E33D0[slot] != 0.0f)) {
                /* Translation only: the entity moved this frame, so shift the
                 * cached vertices instead of running the full matrix. */
                tmn.z = 30000.0f;
                tmn.y = 30000.0f;
                tmn.x = 30000.0f;
                tmx.z = -30000.0f;
                tmx.y = -30000.0f;
                tmx.x = -30000.0f;
                vtxIndex = 0;
                triIndex = 1;
                normalIndex = 1;
                seen = (u8 *) rec->unk10;
                if (mesh->header.Len_Vertices != 0) {
                    do {
                        *seen = 0;
                        vtxIndex += 1;
                        seen += 1;
                    } while (vtxIndex < mesh->header.Len_Vertices);
                }
                posX = gEntitiesNextPosXArray[slot];
                posY = gEntitiesNextPosYArray[slot];
                posZ = gEntitiesNextPosZArray[slot];
                modelVtx = (s16 *) rec->unkC;
                if (mesh->header.Len_Triangles >= 2U) {
                    tri = &mesh->header.Triangles[1];
                    do {
                        seen = (u8 *) rec->unk10;
                        vi = tri->vertex[0];
                        if (seen[vi] == 0) {
                            worldVtx = &mesh->header.vertices.VerticesF[vi * 3];
                            worldVtx[0] = modelVtx[vi * 3] + posX;
                            worldVtx[1] = modelVtx[(vi * 3) + 1] + posY;
                            worldVtx[2] = modelVtx[(vi * 3) + 2] + posZ;
                            seen[tri->vertex[0]] = 1;
                            if (worldVtx[0] < tmn.x) {
                                tmn.x = worldVtx[0];
                            }
                            if (worldVtx[1] < tmn.y) {
                                tmn.y = worldVtx[1];
                            }
                            if (worldVtx[2] < tmn.z) {
                                tmn.z = worldVtx[2];
                            }
                            if (tmx.x < worldVtx[0]) {
                                tmx.x = worldVtx[0];
                            }
                            if (tmx.y < worldVtx[1]) {
                                tmx.y = worldVtx[1];
                            }
                            if (tmx.z < worldVtx[2]) {
                                tmx.z = worldVtx[2];
                            }
                        }
                        seen = (u8 *) rec->unk10;
                        vi = tri->vertex[1];
                        if (seen[vi] == 0) {
                            worldVtx = &mesh->header.vertices.VerticesF[vi * 3];
                            worldVtx[0] = modelVtx[vi * 3] + posX;
                            worldVtx[1] = modelVtx[(vi * 3) + 1] + posY;
                            worldVtx[2] = modelVtx[(vi * 3) + 2] + posZ;
                            seen[tri->vertex[1]] = 1;
                            if (worldVtx[0] < tmn.x) {
                                tmn.x = worldVtx[0];
                            }
                            if (worldVtx[1] < tmn.y) {
                                tmn.y = worldVtx[1];
                            }
                            if (worldVtx[2] < tmn.z) {
                                tmn.z = worldVtx[2];
                            }
                            if (tmx.x < worldVtx[0]) {
                                tmx.x = worldVtx[0];
                            }
                            if (tmx.y < worldVtx[1]) {
                                tmx.y = worldVtx[1];
                            }
                            if (tmx.z < worldVtx[2]) {
                                tmx.z = worldVtx[2];
                            }
                        }
                        seen = (u8 *) rec->unk10;
                        vi = tri->vertex[2];
                        if (seen[vi] == 0) {
                            worldVtx = &mesh->header.vertices.VerticesF[vi * 3];
                            worldVtx[0] = modelVtx[vi * 3] + posX;
                            worldVtx[1] = modelVtx[(vi * 3) + 1] + posY;
                            worldVtx[2] = modelVtx[(vi * 3) + 2] + posZ;
                            seen[tri->vertex[2]] = 1;
                            if (worldVtx[0] < tmn.x) {
                                tmn.x = worldVtx[0];
                            }
                            if (worldVtx[1] < tmn.y) {
                                tmn.y = worldVtx[1];
                            }
                            if (worldVtx[2] < tmn.z) {
                                tmn.z = worldVtx[2];
                            }
                            if (tmx.x < worldVtx[0]) {
                                tmx.x = worldVtx[0];
                            }
                            if (tmx.y < worldVtx[1]) {
                                tmx.y = worldVtx[1];
                            }
                            if (tmx.z < worldVtx[2]) {
                                tmx.z = worldVtx[2];
                            }
                        }
                        triIndex += 1;
                        tri += 1;
                    } while (triIndex < mesh->header.Len_Triangles);
                }
                if (mesh->header.Len_Triangle_Normals >= 2U) {
                    planeOffset = 4;
                    dstNormal = &mesh->header.Triangle_Normals[1];
                    srcNormal = &((struct Normal *) rec->unk8)[1];
                    do {
                        normalIndex += 1;
                        plane = (struct Normal **) ((u8 *) rec->unk14 + planeOffset);
                        dstNormal->x = srcNormal->x;
                        planeOffset += 4;
                        dstNormal += 1;
                        dstNormal[-1].y = srcNormal->y;
                        dstNormal[-1].z = srcNormal->z;
                        srcNormal += 1;
                        dstNormal[-1].originOffset =
                            -(((dstNormal[-1].x * plane[0]->x) + (dstNormal[-1].y * plane[0]->y))
                              + (dstNormal[-1].z * plane[0]->z));
                    } while (normalIndex < mesh->header.Len_Triangle_Normals);
                }
                *(Vector *) &rec->unkA0 = tmn;
                *(Vector *) &rec->unkAC = tmx;
            }
            rec += 1;
            recIndex += 1;
        } while (recIndex < D_8012D940);
    }
    func_8010DD8C();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_801133C8.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 29/667 instructions match (638 diffs), and as with
 * func_801133C8 above the score is one frame delta doing all the
 * damage: IDO gives this 0xD0 where the ROM has 0x118, so every $sp
 * displacement and the register allocation that hangs off it differ.
 * The body is solved -- the unconditional vertex-seen clear and bounds
 * init, both record paths, the three unrolled vertex updates each, the
 * plane retransform, the bounds written into rec->unkA0/unkAC as
 * 12-byte Vector copies after the record pointer is bumped, and the
 * self-retarget onto func_801133C8 all read straight off the listing.
 * Missing frame is 0x48 (18 words) here and 0x70 in func_801133C8; in
 * both cases the extra stack is NEVER referenced by any instruction,
 * so it is locals IDO register-allocated and their identity is not
 * recoverable from the asm. Measured inert on the sibling: adding one
 * f32 temp per bounds compare (IDO forwards them) and spelling the
 * vertex/plane strides as byte offsets (vi * 0xC / vi * 6) rather than
 * element indices. Sealed as permuter fuel: the shape is right and
 * only the stack shape is open. */
void func_80113F08(struct GObj *arg0) {
    void func_8010DD8C(void);
    void func_801133C8(struct GObj *gobj);
    Vector mn;
    Vector mx;
    struct struct8011BA10_temp *rec;
    struct vCollisionHeader *mesh;
    struct CollisionTriangle *tri;
    struct Normal *dstNormal;
    struct Normal *srcNormal;
    struct Normal **plane;
    u8 *seen;
    s16 *modelVtx;
    f32 *worldVtx;
    f32 *world;
    f32 nx;
    f32 ny;
    f32 nz;
    f32 posX;
    f32 posY;
    f32 posZ;
    u32 recIndex;
    u32 triIndex;
    u32 normalIndex;
    u32 vtxIndex;
    u32 planeOffset;
    u32 vi;
    s32 slot;

    rec = D_8012D948;
    recIndex = 0;
    if (D_8012D940 != 0) {
        do {
            mesh = rec->unk4;
            slot = rec->unk1;
            seen = (u8 *) rec->unk10;
            vtxIndex = 0;
            triIndex = 1;
            normalIndex = 1;
            if (mesh->header.Len_Vertices != 0) {
                do {
                    *seen = 0;
                    vtxIndex += 1;
                    seen += 1;
                } while (vtxIndex < mesh->header.Len_Vertices);
            }
            mn.z = 30000.0f;
            mn.y = 30000.0f;
            mn.x = 30000.0f;
            mx.z = -30000.0f;
            mx.y = -30000.0f;
            mx.x = -30000.0f;
            if (rec->unk2 & 2) {
                /* The record carries its own matrix: transform every vertex
                 * and every plane through it. */
                world = (f32 *) &rec->unk58;
                func_80113028((f32 (*)[4]) &rec->unk18, (f32 (*)[4]) world);
                func_80112CD4(slot, (f32 (*)[4]) world);
                seen = (u8 *) rec->unk10;
                modelVtx = (s16 *) rec->unkC;
                if (mesh->header.Len_Triangles >= 2U) {
                    tri = &mesh->header.Triangles[1];
                    do {
                        vi = tri->vertex[0];
                        if (seen[vi] == 0) {
                            worldVtx = &mesh->header.vertices.VerticesF[vi * 3];
                            func_80112F70((f32 (*)[4]) world, worldVtx, &modelVtx[vi * 3]);
                            seen[tri->vertex[0]] = 1;
                            if (worldVtx[0] < mn.x) {
                                mn.x = worldVtx[0];
                            }
                            if (worldVtx[1] < mn.y) {
                                mn.y = worldVtx[1];
                            }
                            if (worldVtx[2] < mn.z) {
                                mn.z = worldVtx[2];
                            }
                            if (mx.x < worldVtx[0]) {
                                mx.x = worldVtx[0];
                            }
                            if (mx.y < worldVtx[1]) {
                                mx.y = worldVtx[1];
                            }
                            if (mx.z < worldVtx[2]) {
                                mx.z = worldVtx[2];
                            }
                        }
                        vi = tri->vertex[1];
                        if (seen[vi] == 0) {
                            worldVtx = &mesh->header.vertices.VerticesF[vi * 3];
                            func_80112F70((f32 (*)[4]) world, worldVtx, &modelVtx[vi * 3]);
                            seen[tri->vertex[1]] = 1;
                            if (worldVtx[0] < mn.x) {
                                mn.x = worldVtx[0];
                            }
                            if (worldVtx[1] < mn.y) {
                                mn.y = worldVtx[1];
                            }
                            if (worldVtx[2] < mn.z) {
                                mn.z = worldVtx[2];
                            }
                            if (mx.x < worldVtx[0]) {
                                mx.x = worldVtx[0];
                            }
                            if (mx.y < worldVtx[1]) {
                                mx.y = worldVtx[1];
                            }
                            if (mx.z < worldVtx[2]) {
                                mx.z = worldVtx[2];
                            }
                        }
                        vi = tri->vertex[2];
                        if (seen[vi] == 0) {
                            worldVtx = &mesh->header.vertices.VerticesF[vi * 3];
                            func_80112F70((f32 (*)[4]) world, worldVtx, &modelVtx[vi * 3]);
                            seen[tri->vertex[2]] = 1;
                            if (worldVtx[0] < mn.x) {
                                mn.x = worldVtx[0];
                            }
                            if (worldVtx[1] < mn.y) {
                                mn.y = worldVtx[1];
                            }
                            if (worldVtx[2] < mn.z) {
                                mn.z = worldVtx[2];
                            }
                            if (mx.x < worldVtx[0]) {
                                mx.x = worldVtx[0];
                            }
                            if (mx.y < worldVtx[1]) {
                                mx.y = worldVtx[1];
                            }
                            if (mx.z < worldVtx[2]) {
                                mx.z = worldVtx[2];
                            }
                        }
                        triIndex += 1;
                        tri += 1;
                    } while (triIndex < mesh->header.Len_Triangles);
                }
                if (mesh->header.Len_Triangle_Normals >= 2U) {
                    srcNormal = &((struct Normal *) rec->unk8)[1];
                    dstNormal = &mesh->header.Triangle_Normals[1];
                    planeOffset = 4;
                    do {
                        nx = srcNormal->x;
                        ny = srcNormal->y;
                        nz = srcNormal->z;
                        normalIndex += 1;
                        srcNormal += 1;
                        dstNormal += 1;
                        dstNormal[-1].x = ((world[0] * nx) + (world[4] * ny)) + (world[8] * nz);
                        dstNormal[-1].y = ((world[1] * nx) + (world[5] * ny)) + (world[9] * nz);
                        dstNormal[-1].z = ((world[2] * nx) + (world[6] * ny)) + (world[10] * nz);
                        plane = (struct Normal **) ((u8 *) rec->unk14 + planeOffset);
                        planeOffset += 4;
                        dstNormal[-1].originOffset =
                            -(((dstNormal[-1].x * plane[0]->x) + (dstNormal[-1].y * plane[0]->y))
                              + (dstNormal[-1].z * plane[0]->z));
                    } while (normalIndex < mesh->header.Len_Triangle_Normals);
                }
            } else {
                /* No matrix: the vertices only need the entity's position. */
                posX = gEntitiesNextPosXArray[slot];
                posY = gEntitiesNextPosYArray[slot];
                posZ = gEntitiesNextPosZArray[slot];
                seen = (u8 *) rec->unk10;
                modelVtx = (s16 *) rec->unkC;
                if (mesh->header.Len_Triangles >= 2U) {
                    tri = &mesh->header.Triangles[1];
                    do {
                        vi = tri->vertex[0];
                        if (seen[vi] == 0) {
                            worldVtx = &mesh->header.vertices.VerticesF[vi * 3];
                            worldVtx[0] = modelVtx[vi * 3] + posX;
                            worldVtx[1] = modelVtx[(vi * 3) + 1] + posY;
                            worldVtx[2] = modelVtx[(vi * 3) + 2] + posZ;
                            seen[tri->vertex[0]] = 1;
                            if (worldVtx[0] < mn.x) {
                                mn.x = worldVtx[0];
                            }
                            if (worldVtx[1] < mn.y) {
                                mn.y = worldVtx[1];
                            }
                            if (worldVtx[2] < mn.z) {
                                mn.z = worldVtx[2];
                            }
                            if (mx.x < worldVtx[0]) {
                                mx.x = worldVtx[0];
                            }
                            if (mx.y < worldVtx[1]) {
                                mx.y = worldVtx[1];
                            }
                            if (mx.z < worldVtx[2]) {
                                mx.z = worldVtx[2];
                            }
                        }
                        vi = tri->vertex[1];
                        if (seen[vi] == 0) {
                            worldVtx = &mesh->header.vertices.VerticesF[vi * 3];
                            worldVtx[0] = modelVtx[vi * 3] + posX;
                            worldVtx[1] = modelVtx[(vi * 3) + 1] + posY;
                            worldVtx[2] = modelVtx[(vi * 3) + 2] + posZ;
                            seen[tri->vertex[1]] = 1;
                            if (worldVtx[0] < mn.x) {
                                mn.x = worldVtx[0];
                            }
                            if (worldVtx[1] < mn.y) {
                                mn.y = worldVtx[1];
                            }
                            if (worldVtx[2] < mn.z) {
                                mn.z = worldVtx[2];
                            }
                            if (mx.x < worldVtx[0]) {
                                mx.x = worldVtx[0];
                            }
                            if (mx.y < worldVtx[1]) {
                                mx.y = worldVtx[1];
                            }
                            if (mx.z < worldVtx[2]) {
                                mx.z = worldVtx[2];
                            }
                        }
                        vi = tri->vertex[2];
                        if (seen[vi] == 0) {
                            worldVtx = &mesh->header.vertices.VerticesF[vi * 3];
                            worldVtx[0] = modelVtx[vi * 3] + posX;
                            worldVtx[1] = modelVtx[(vi * 3) + 1] + posY;
                            worldVtx[2] = modelVtx[(vi * 3) + 2] + posZ;
                            seen[tri->vertex[2]] = 1;
                            if (worldVtx[0] < mn.x) {
                                mn.x = worldVtx[0];
                            }
                            if (worldVtx[1] < mn.y) {
                                mn.y = worldVtx[1];
                            }
                            if (worldVtx[2] < mn.z) {
                                mn.z = worldVtx[2];
                            }
                            if (mx.x < worldVtx[0]) {
                                mx.x = worldVtx[0];
                            }
                            if (mx.y < worldVtx[1]) {
                                mx.y = worldVtx[1];
                            }
                            if (mx.z < worldVtx[2]) {
                                mx.z = worldVtx[2];
                            }
                        }
                        triIndex += 1;
                        tri += 1;
                    } while (triIndex < mesh->header.Len_Triangles);
                }
                planeOffset = 4;
                if (mesh->header.Len_Triangle_Normals >= 2U) {
                    dstNormal = &mesh->header.Triangle_Normals[1];
                    srcNormal = &((struct Normal *) rec->unk8)[1];
                    do {
                        normalIndex += 1;
                        plane = (struct Normal **) ((u8 *) rec->unk14 + planeOffset);
                        dstNormal->x = srcNormal->x;
                        planeOffset += 4;
                        dstNormal += 1;
                        dstNormal[-1].y = srcNormal->y;
                        dstNormal[-1].z = srcNormal->z;
                        srcNormal += 1;
                        dstNormal[-1].originOffset =
                            -(((dstNormal[-1].x * plane[0]->x) + (dstNormal[-1].y * plane[0]->y))
                              + (dstNormal[-1].z * plane[0]->z));
                    } while (normalIndex < mesh->header.Len_Triangle_Normals);
                }
            }
            rec += 1;
            *(Vector *) &rec[-1].unkA0 = mn;
            *(Vector *) &rec[-1].unkAC = mx;
            recIndex += 1;
        } while (recIndex < D_8012D940);
    }
    func_8010DD8C();
    omCurrentProc->entryPoint = func_801133C8;
    omCurrentProc->payload.callback = func_801133C8;
}
#elif defined(PORT)
/* PORT: first-frame refresh of every dynamic-collision record, from
 * asm/nonmatchings/ovl2/ovl2_10/func_80113F08.s. For each D_8012D948
 * record built by func_80114A14 it clears the per-vertex transform flags,
 * rebuilds the world matrix (matrix-driven records) or takes the owning
 * entity's position (translation-only ones), transforms every vertex the
 * poly table references from the original s16 triples (rec->unkC) into the
 * model's f32 point array (m->unkC), retransforms the plane normals and
 * D-terms, and stores the world-space bounding box (unkA0..unkB4 -- the
 * fields ovl2_7's compiled sweep tests read). The per-plane point
 * pointers in rec->unk14 are the truncated host pointers func_80114A14's
 * NON_MATCHING body stores, so they widen back through uintptr_t. The
 * process then retargets itself at func_801133C8 (the steady-state
 * updater, ported above). struct PcF08Model is defined in that block. */
void func_80113F08(struct GObj *arg0) {
    u32 i;
    u32 g;
    u32 k;
    u32 c;

    (void) arg0;
    for (i = 0; i < (u32) D_8012D940; i++) {
        struct struct8011BA10_temp *rec = &D_8012D948[i];
        struct PcF08Model *m = (struct PcF08Model *) rec->unk4;
        s32 slot = rec->unk1;
        u8 *vflags = (u8 *) (uintptr_t) rec->unk10;
        f32 *pts = (f32 *) (uintptr_t) m->unkC;
        s16 *orig = (s16 *) (uintptr_t) rec->unkC;
        u32 *ptrefs = (u32 *) (uintptr_t) rec->unk14;
        f32 mn[3];
        f32 mx[3];

        for (k = 0; k < (u32) m->unk10; k++) {
            vflags[k] = 0;
        }
        mn[0] = mn[1] = mn[2] = 30000.0f;
        mx[0] = mx[1] = mx[2] = -30000.0f;
        if (rec->unk2 & 2) {
            f32(*world)[4] = (f32(*)[4]) & rec->unk58;

            func_80113028((f32(*)[4]) & rec->unk18, world);
            func_80112CD4(slot, world);
            for (g = 1; g < (u32) m->unk8; g++) {
                u16 *poly = (u16 *) (uintptr_t) (m->unk4 + (g * 0x14));

                for (c = 0; c < 3; c++) {
                    u32 vi = poly[c];

                    if (vflags[vi] == 0) {
                        f32 *out = &pts[vi * 3];

                        func_80112F70(world, out, &orig[vi * 3]);
                        vflags[vi] = 1;
                        if (out[0] < mn[0]) {
                            mn[0] = out[0];
                        }
                        if (out[1] < mn[1]) {
                            mn[1] = out[1];
                        }
                        if (out[2] < mn[2]) {
                            mn[2] = out[2];
                        }
                        if (mx[0] < out[0]) {
                            mx[0] = out[0];
                        }
                        if (mx[1] < out[1]) {
                            mx[1] = out[1];
                        }
                        if (mx[2] < out[2]) {
                            mx[2] = out[2];
                        }
                    }
                }
            }
            for (k = 1; k < (u32) m->unk18; k++) {
                f32 *src = (f32 *) (uintptr_t) (rec->unk8 + (k * 0x10));
                f32 *dst = (f32 *) (uintptr_t) (m->unk14 + (k * 0x10));
                f32 *pt = (f32 *) (uintptr_t) ptrefs[k];
                f32 x = src[0];
                f32 y = src[1];
                f32 z = src[2];

                dst[0] = (world[0][0] * x) + (world[1][0] * y) +
                         (world[2][0] * z);
                dst[1] = (world[0][1] * x) + (world[1][1] * y) +
                         (world[2][1] * z);
                dst[2] = (world[0][2] * x) + (world[1][2] * y) +
                         (world[2][2] * z);
                dst[3] = -((dst[0] * pt[0]) + (dst[1] * pt[1]) +
                           (dst[2] * pt[2]));
            }
        } else {
            f32 px = gEntitiesNextPosXArray[slot];
            f32 py = gEntitiesNextPosYArray[slot];
            f32 pz = gEntitiesNextPosZArray[slot];

            for (g = 1; g < (u32) m->unk8; g++) {
                u16 *poly = (u16 *) (uintptr_t) (m->unk4 + (g * 0x14));

                for (c = 0; c < 3; c++) {
                    u32 vi = poly[c];

                    if (vflags[vi] == 0) {
                        s16 *in = &orig[vi * 3];
                        f32 *out = &pts[vi * 3];

                        out[0] = (f32) in[0] + px;
                        out[1] = (f32) in[1] + py;
                        out[2] = (f32) in[2] + pz;
                        vflags[vi] = 1;
                        if (out[0] < mn[0]) {
                            mn[0] = out[0];
                        }
                        if (out[1] < mn[1]) {
                            mn[1] = out[1];
                        }
                        if (out[2] < mn[2]) {
                            mn[2] = out[2];
                        }
                        if (mx[0] < out[0]) {
                            mx[0] = out[0];
                        }
                        if (mx[1] < out[1]) {
                            mx[1] = out[1];
                        }
                        if (mx[2] < out[2]) {
                            mx[2] = out[2];
                        }
                    }
                }
            }
            for (k = 1; k < (u32) m->unk18; k++) {
                f32 *src = (f32 *) (uintptr_t) (rec->unk8 + (k * 0x10));
                f32 *dst = (f32 *) (uintptr_t) (m->unk14 + (k * 0x10));
                f32 *pt = (f32 *) (uintptr_t) ptrefs[k];

                dst[0] = src[0];
                dst[1] = src[1];
                dst[2] = src[2];
                dst[3] = -((src[0] * pt[0]) + (src[1] * pt[1]) +
                           (src[2] * pt[2]));
            }
        }
        rec->unkA0 = mn[0];
        rec->unkA4 = mn[1];
        rec->unkA8 = mn[2];
        rec->unkAC = mx[0];
        rec->unkB0 = mx[1];
        rec->unkB4 = mx[2];
    }
    func_8010DD8C();
    omCurrentProc->entryPoint = func_801133C8;
    omCurrentProc->payload.callback = func_801133C8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_80113F08.s")
#endif

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

struct Unk80114A14Model {
    /* 0x00 */ s32 unk0;
    /* 0x04 */ s32 unk4;
    /* 0x08 */ s32 unk8;
    /* 0x0C */ s32 unkC;
    /* 0x10 */ s32 unk10;
    /* 0x14 */ s32 unk14;
    /* 0x18 */ s32 unk18;
    /* 0x1C */ s32 unk1C;
    /* 0x20 */ s32 unk20;
    /* 0x24 */ s32 unk24;
    /* 0x28 */ s32 unk28;
};

struct Unk80114A14Sub {
    /* 0x0 */ u32 unk0;
    /* 0x4 */ u32 unk4;
    /* 0x8 */ u32 unk8;
    /* 0xC */ u32 unkC;
};

struct Unk80114A14Elem {
    /* 0x0 */ u16 unk0;
    /* 0x2 */ u16 unk2;
    /* 0x4 */ u16 unk4;
    /* 0x6 */ u16 unk6;
};

void *func_800A8358(s32);
void func_80114E80(struct DObj *, s32, f32);

#ifdef NON_MATCHING
/* Left un-guarded when the container killed this lane mid-stint. */
s32 func_80114A14(struct Unk80114A14Model *m, s32 arg1, s32 arg2) {
    struct struct8011BA10_temp *p = &D_8012D948[D_8012D940];
    struct Unk80114A14Elem *e;
    s32 ret;
    u32 i;
    u32 k;
    u32 j;

    m->unk0 = 1;
    p->unk3 = arg2;
    p->unk2 = 0;
    p->unk98 = 0;
    p->unk0 = D_8012D940;
    ret = request_track_general(0x1D, 0x1E, 0x3C);
    p->unk1 = ret;
    D_800DE350[ret]->unk4C = p;
    D_800DE350[ret]->onAnimate = func_80114E80;
    p->unk4 = (struct vCollisionHeader *) m;
    p->unk8 = m->unk14;
    p->unkC = m->unkC;
    m->unk14 = (s32) func_800A8358((m->unk18 * 0x10) | 3);
    m->unkC = (s32) func_800A8358((m->unk10 * 0xC) | 3);
    p->unk10 = (u32) func_800A8358(m->unk10 | 3);
    for (i = 1; i < m->unk18; i++) {
        ((struct Unk80114A14Sub *) m->unk14)[i] = ((struct Unk80114A14Sub *) p->unk8)[i];
    }
    p->unk14 = (u32) func_800A8358((m->unk18 * 4) | 3);
    for (k = 1; k < m->unk18; k++) {
        e = (struct Unk80114A14Elem *) m->unk24;
        for (j = 1; j < m->unk28; j++) {
            if (e[j].unk0 == k) {
                break;
            }
        }
        if (e[j].unk6 != 0) {
            ((u32 *) p->unk14)[k] =
                (*(u16 *) (((((u16 *) m->unk1C)[e[j].unk6] & 0x7FFF) * 0x14) + m->unk4) * 0xC) + m->unkC;
        }
    }
    gEntitiesPosXArray[ret] = gEntitiesNextPosXArray[ret] = ((Vector *) arg1)->x;
    gEntitiesPosYArray[ret] = gEntitiesNextPosYArray[ret] = ((Vector *) arg1)->y;
    gEntitiesPosZArray[ret] = gEntitiesNextPosZArray[ret] = ((Vector *) arg1)->z;
    func_80112CD4(ret, (f32 (*)[4]) &p->unk58);
    D_8012D940++;
    return ret;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_80114A14.s")
#endif

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

void *func_800A8358(s32);
void func_800F8464(s32, void *);
s32 func_80114A14(struct Unk80114A14Model *, s32, s32);

s32 func_80114DBC(s32 arg0, s32 arg1) {
    s32 val;
    void *temp;
    struct Unk80124E14 *p;

#ifdef PORT
    /* PORT guard: the 0x115-record dispose-model table at D_80124E14
     * (N64 stride 0x1C) reaches this build scattered across the split
     * data symbols D_80124E14/D_80124E24/D_80124E2C/D_80124E2E, and
     * struct Unk80124E14 widens to 0x28 on LP64 -- so this indexed read
     * (and the ~20 other D_80124E14 readers in this file) lands on
     * unrelated words. Reconstructing the table natively is the real fix;
     * until then, report "no model" for every id: func_800FD088's bank-5
     * scenery walk treats 0 as spawn-nothing and carries on. Level
     * destructible props are absent; nothing else depends on this path. */
    return 0;
#endif
    if ((u32) arg0 < 0x115) {
        p = &D_80124E14[arg0];
        val = p->unk0;
        if (val != 0) {
            temp = func_800A8358(0x4B);
            func_800F8464(p->unk0, temp);
            return func_80114A14(temp, arg1, func_80114D54(arg0));
        }
        val = request_track_general(0x1D, 0x1E, 0x3C);
        D_800DE350[val]->onAnimate = func_80114E80;
        return val;
    }
    return 0;
}

struct Unk80114E80Sub {
    /* 0x00 */ u8 pad0[0x26];
    /* 0x26 */ u16 unk26;
};

struct Unk80114E80 {
    /* 0x00 */ u8 unk0;
    /* 0x01 */ u8 pad1;
    /* 0x02 */ u8 unk2;
    /* 0x03 */ u8 pad3[0x95];
    /* 0x98 */ struct Unk80114E80Sub *unk98;
    /* 0x9C */ u16 unk9C;
};

void func_800B0F28(struct DObj *, s32, f32);
void func_800A77E8(s32, void *, void *);
void func_80023A28(void *);
void func_800BB468(u32, s32);

void func_80114E80(struct DObj *arg0, s32 arg1, f32 arg2) {
    struct GObj *gobj = arg0->gobj;
    struct Unk80114E80 *p = gobj->unk4C;
    s32 pad;
    struct Unk80114E80 *q;
    s16 temp;

    func_800B0F28(arg0, arg1, arg2);
    switch (arg1) {
    case 0:
        if (arg2 != 0.0f) {
            if (p->unk98 == NULL) {
                temp = D_80124E14[D_800E77A0[gobj->objId]].unk18;
                if (temp != -1) {
                    func_800A77E8(temp, &p->unk98, &p->unk9C);
                }
            }
        } else {
            if (p->unk98 != NULL) {
                if (p->unk98->unk26 == p->unk9C) {
                    func_80023A28(p->unk98);
                }
                p->unk98 = NULL;
            }
        }
        break;
    case 1:
        if (arg2 != 0.0f) {
            p->unk2 &= ~1;
        } else {
            p->unk2 |= 1;
        }
        break;
    case 2:
        q = gobj->unk4C;
        if (func_8011E244() == q->unk0) {
            func_800BB468((u32) arg2, 0);
        }
        break;
    }
}

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

#ifdef NON_MATCHING
// 19/69 diffs. The instruction multiset is exact; the residue is purely where
// IDO schedules `lui %hi(D_800DE350)` (it hoists it above the D_800DEF90 store,
// the ROM keeps it after the `lw 0x4C(arg0)`), which drags the surrounding
// address arithmetic with it. Statement order inside the `if` (all 6
// permutations), inlining `arg0->unk4C`, and a separate index temp were swept.
// Settled and worth keeping:
//   * `u8 *p = arg0->unk4C;` as its own local is what puts `idx` in $v1 and the
//     unk4C pointer in $v0 (28 -> 22); the inline form swaps them.
//   * `temp_a0 = g->unk8;` before the test loads straight into $a0 the way the
//     ROM does; the inline `if (g->unk8)` costs a $v0 + `move` (22 -> 19).
// Re-confirmed 2026-08-23 via verify.py in-place: still exactly 19/69, same
// D_800DE350/D_80126CD0 lui-scheduling floor as the sibling func_8011572C
// above. Genuine scheduler floor, not source-reachable.
void func_80115618(struct GObj *arg0) {
    struct Unk80124E14 *sp1C = &D_80124E14[D_800E77A0[arg0->objId]];
    struct Unk80126CD0 *g;
    u8 *p;
    s32 temp_a0;
    u16 idx;

    func_800AF980(0x17);
    func_800A9864(sp1C->unk4, 0x1869F, 0x10);
    func_800AA018(sp1C->unk8);
    temp_a0 = sp1C->unkC;
    if (temp_a0 != 0) {
        func_800AA018(temp_a0);
    }
    D_800DEF90[omCurrentObj->objId] = sp1C->unk10;
    idx = sp1C->unk1A;
    if (idx != 0) {
        g = &D_80126CD0[idx];
        p = arg0->unk4C;
        omCurrentObj = D_800DE350[p[3]];
        func_800AA018(g->unk4);
        temp_a0 = g->unk8;
        if (temp_a0 != 0) {
            func_800AA018(temp_a0);
        }
        omCurrentObj = arg0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_80115618.s")
#endif
/* 17/87, the same residue func_80115618 above has: idx is in $v1 and the
 * &omCurrentObj materialisation is exact, but IDO hoists `lui %hi(D_800DE350)`
 * ahead of the branch where the ROM hoists `lui %hi(D_80126CD0)` and keeps
 * D_800DE350's after the `lw 0x4C(arg0)`, which also parks `obj` in $v0 instead
 * of the ROM's $t1. Swept: all four statement orders inside the `if`, the
 * `u8 *p` local vs the inline `((struct Unk4C *) arg0->unk4C)->unk3` cast (22 vs
 * 17 -- the inline form is what puts idx in $v1), a chained
 * `omCurrentObj = obj = ...`, dropping `obj` entirely (22), and all seven
 * declaration orders (completely inert).
 * Re-confirmed 2026-08-23 via verify.py in-place: still exactly 17/87, same
 * three-word pattern (D_800DE350/D_80126CD0 lui scheduling + $v0-vs-$t1 for
 * `obj`). Genuine scheduler/regalloc floor, not source-reachable. */
#ifdef NON_MATCHING
void func_8011572C(struct GObj *arg0, u32 arg1) {
    struct Unk80124E14 *sp1C = &D_80124E14[D_800E77A0[arg0->objId]];
    struct Unk80126CD0 *g;
    s32 temp_a0;
    u16 idx;
    struct GObj *obj;

    arg0->onAnimate = NULL;
    func_800AF980(0x17);
    func_800A9864(sp1C->unk4, 0x1869F, 0x10);
    func_800A9F98(sp1C->unk8, arg1);
    temp_a0 = sp1C->unkC;
    if (temp_a0 != 0) {
        func_800A9F98(temp_a0, arg1);
    }
    D_800DEF90[omCurrentObj->objId] = sp1C->unk10;
    idx = sp1C->unk1A;
    if (idx != 0) {
        g = &D_80126CD0[idx];
        obj = D_800DE350[((struct Unk4C *) arg0->unk4C)->unk3];
        omCurrentObj = obj;
        obj->onAnimate = NULL;
        func_800A9F98(g->unk4, arg1);
        temp_a0 = g->unk8;
        if (temp_a0 != 0) {
            func_800A9F98(temp_a0, arg1);
        }
        omCurrentObj = arg0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_8011572C.s")
#endif

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

void func_8011591C(struct GObj *arg0) {
    u8 *sp2C = arg0->unk4C;
    s32 sp28 = arg0->objId;
    struct Unk80124E14 *sp24;
    struct Unk80126CD0 *sp20;

    D_800E33D0[sp28] = 0.0f;
    D_800E3210[sp28] = 0.0f;
    D_800E3050[sp28] = 0.0f;
    if (func_8011E244() == *sp2C) {
        if (D_800E98E0[sp28] != 0) {
            sp24 = &D_80124E14[D_800E77A0[sp28]];
            func_800AA018(sp24->unk8);
            D_800DEF90[omCurrentObj->objId] = sp24->unk14;
            if (sp24->unk1A != 0) {
                sp20 = &D_80126CD0[sp24->unk1A];
                omCurrentObj = D_800DE350[sp2C[3]];
                func_800AA018(sp20->unk4);
                if (sp20->unk8 != 0) {
                    func_800AA018(sp20->unk8);
                }
                omCurrentObj = arg0;
            }
        }
    } else {
        D_800E98E0[sp28] = 1;
    }
}

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
        D_800DEF90[omCurrentObj->objId] = func_800B4924;
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

void func_80115C4C(struct GObj *arg0) {
    s32 sp1C = arg0->objId;
    u8 *sp18 = arg0->unk4C;

    if (func_8011E244() == *sp18) {
        func_800AA018(0x60003);
        D_800DEF90[omCurrentObj->objId] = func_80115B64;
        omCurrentObj = D_800DE350[sp18[3]];
        func_800AA018(0x60004);
        omCurrentObj = D_800DE350[D_800E98E0[sp1C]];
        func_800AA018(0x202EB);
        func_800AA018(0x202EC);
        omCurrentObj = arg0;
    }
}

extern struct GObjProcess *gEntityGObjProcessArray[];

void func_80115D38(struct GObj *arg0) {
    s32 old = arg0->objId;
    s32 track = request_track_general(0x1E, 0x1E, 0x3C);
    s32 unused;

    omCurrentObj = D_800DE350[track];
    omEndProcess(gEntityGObjProcessArray[track]);
    func_800AF980(0x17);
    func_800A9864(0x20060, 0x1869F, 0x10);
    gEntitiesNextPosXArray[track] = gEntitiesNextPosXArray[old];
    gEntitiesNextPosYArray[track] = gEntitiesNextPosYArray[old] + 220.0f;
    gEntitiesNextPosZArray[track] = gEntitiesNextPosZArray[old];
    gEntitiesScaleZArray[track] = 0.2f;
    gEntitiesScaleYArray[track] = 0.2f;
    gEntitiesScaleXArray[track] = 0.2f;
    func_800AA018(0x202E5);
    func_800AA018(0x202E6);
    D_800DEF90[omCurrentObj->objId] = func_80115ACC;
    D_800E98E0[old] = track;
    omCurrentObj = arg0;
    func_801153B8(arg0);
}

void func_80115EAC(struct GObj *arg0) {
    D_800E98E0[arg0->objId] = 0;
    func_8011511C(arg0);
}

void func_80115EDC(struct GObj *arg0) {
    func_80115070(arg0);
}

void func_80115EFC(s32 arg0) {

}

#ifdef NON_MATCHING
/* LEFT UN-GUARDED BY A LANE THAT DIED MID-WORK, at 80/133 insns. */
void func_80115F04(s32 arg0) {
    void func_80116118(struct GObj *);
    u8 *sp6C = ((struct GObj *) arg0)->unk4C;
    Vector sp58;
    Vector sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 cy;
    f32 acc;
    f32 ang;
    s32 id = ((struct GObj *) arg0)->objId;

    sp48 = gEntitiesAngleXArray[id];
    sp44 = gEntitiesAngleYArray[id];
    sp40 = sinf(sp48);
    sp3C = cosf(sp48);
    sp38 = sinf(sp44);
    cy = cosf(sp44);
    sp58.x = sp3C * sp38;
    sp58.y = -sp40;
    sp58.z = sp3C * cy;
    func_8011E31C(&sp4C);
    acc = ((sp58.z * (sp4C.z - gEntitiesNextPosZArray[id])) +
           ((sp58.x * (sp4C.x - gEntitiesNextPosXArray[id])) +
            (sp58.y * (sp4C.y - gEntitiesNextPosYArray[id])))) * 0.00001f + D_800EA6E0[id];
    if (0.006f < acc) {
        acc = 0.006f;
    } else if (acc < -0.006f) {
        acc = -0.006f;
    }
    ang = ((struct GObj *) arg0)->data.dobj->angle.v.x + acc;
    if (0.4363f < ABSF(ang)) {
        acc = 0.0f;
        if (0.0f < ang) {
            ang = 0.4363f;
        } else {
            ang = -0.4363f;
        }
    }
    D_800EA6E0[id] = acc;
    ((struct GObj *) arg0)->data.dobj->angle.v.x = ang;
    if (func_8011E244() != *sp6C) {
        D_800DEF90[omCurrentObj->objId] = func_80116118;
    }
    func_80112B4C((struct GObj *) arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_80115F04.s")
#endif

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

void func_80116260(s32 arg0) {
    extern f32 D_80129210[];
    f32 *p = (f32 *) ((u8 *) D_80129114->unk4[D_800E5F90[0]].unk0 + 0x20);

    p[8] += D_80129210[1];
    p[9] += D_80129210[1];
    p[12] += D_80129210[3];
    p[13] += D_80129210[3];
    p[16] += D_80129210[5];
    p[17] += D_80129210[5];
}

void func_801162F4(struct GObj *arg0) {
    extern f32 D_80129210[];
    struct Unk80124E14 *p = &D_80124E14[D_800E77A0[arg0->objId]];

    D_800D7098[0] = arg0->objId;
    func_800AF980(0x17);
    func_800A9864(p->unk4, 0x1869F, 0x10);
    func_800AA018(p->unk8);
    if (p->unkC != 0) {
        func_800AA018(p->unkC);
    }
    D_800DEF90[omCurrentObj->objId] = p->unk10;
    D_80129210[1] = 0.017894737422466278f;
    D_80129210[3] = 0.17894737422466278f;
    D_80129210[5] = -0.04210526496171951f;
    ohSleep(0x14);
    play_sound(0x183);
    ohSleep(0x28);
    D_800DF150[omCurrentObj->objId] = func_80116260;
    func_800AF27C();
    D_800DF150[omCurrentObj->objId] = NULL;
    play_sound(0x181);
    omEndProcess(0);
}

/* Prototype for the coroutine defined below; the four call sites that
 * follow it are the only callers. */
void func_80116508(struct GObj *arg0);
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

#ifdef MIPS_TO_C
/* FACTORY: 39/412 instructions match (373 diffs) -- a low score that
 * badly understates the draft: the instruction STREAM is the ROM's,
 * opcode for opcode, with the frame (0x70), the full $s0-$fp/$f20-$f30
 * save set, all four late_rodata literals and every branch target
 * right. The residue is one whole-function register rotation: IDO
 * hoists six loop-invariant bases into $s3-$s8 where the ROM hoists
 * seven into $s2-$fp, so D_800E3910 misses out on a base register and
 * costs the four instructions this draft is long. Almost every
 * instruction in the body names one of the rotated registers, which is
 * why the count is 373. Good permuter fuel: the shape is solved and
 * only the allocation is open. */
void func_80116508(struct GObj *arg0) {
    s32 random_soft_s32_range(s32 range);
    f32 *posY;
    f32 *anchorY;
    s32 *command;
    s32 cmd;
    s32 slot;
    f32 rest;
    f32 openCap;

    posY = &gEntitiesNextPosYArray[arg0->objId];
    anchorY = &D_800EA6E0[arg0->objId];
    command = &D_800E98E0[arg0->objId];
    *command = 0;
    *anchorY = *posY;
    for (;;) {
        /* Bob: pick a drift direction, then hold it until the piece strays
         * 15 above or 10 below the height it spawned at. */
        if (random_soft_s32_range(2) != 0) {
            D_800E3210[omCurrentObj->objId] = 0.25f;
        } else {
            D_800E3210[omCurrentObj->objId] = -0.25f;
        }
        while ((cmd = *command) == 0) {
            if ((*posY - *anchorY) >= 15.0f) {
                D_800E3210[omCurrentObj->objId] = -0.25f;
            } else if ((*posY - *anchorY) <= -10.0f) {
                D_800E3210[omCurrentObj->objId] = 0.25f;
            }
            ohSleep(1);
        }
        if (cmd == 1) {
            /* Hop: launch, coast under gravity, freeze, then fall from rest. */
            D_800E3590[omCurrentObj->objId] = 0.0f;
            slot = omCurrentObj->objId;
            D_800E3050[slot] = D_800E3590[slot];
            D_800E3AD0[omCurrentObj->objId] = 65535.0f;
            D_800E3210[omCurrentObj->objId] = 2.1333334f * 16.0f;
            D_800E3750[omCurrentObj->objId] = -2.1333334f;
            D_800E33D0[omCurrentObj->objId] = 0.0f;
            D_800E3910[omCurrentObj->objId] = 0.0f;
            D_800E3E50[omCurrentObj->objId] = 65535.0f;
            ohSleep(0xF);
            D_800E3910[omCurrentObj->objId] = 0.0f;
            slot = omCurrentObj->objId;
            rest = D_800E3910[slot];
            D_800E3750[slot] = rest;
            D_800E3590[omCurrentObj->objId] = rest;
            D_800E33D0[omCurrentObj->objId] = rest;
            D_800E3210[omCurrentObj->objId] = rest;
            D_800E3050[omCurrentObj->objId] = rest;
            D_800E3E50[omCurrentObj->objId] = 65535.0f;
            slot = omCurrentObj->objId;
            openCap = D_800E3E50[slot];
            D_800E3C90[slot] = openCap;
            D_800E3AD0[omCurrentObj->objId] = openCap;
            ohSleep(1);
            D_800E3590[omCurrentObj->objId] = 0.0f;
            slot = omCurrentObj->objId;
            D_800E3050[slot] = D_800E3590[slot];
            D_800E3AD0[omCurrentObj->objId] = 65535.0f;
            D_800E3210[omCurrentObj->objId] = 0.0f;
            D_800E3750[omCurrentObj->objId] = -0.9917355f;
            D_800E33D0[omCurrentObj->objId] = 0.0f;
            D_800E3910[omCurrentObj->objId] = 0.0f;
            D_800E3E50[omCurrentObj->objId] = 65535.0f;
            ohSleep(0x16);
            D_800E3910[omCurrentObj->objId] = 0.0f;
            slot = omCurrentObj->objId;
            rest = D_800E3910[slot];
            D_800E3750[slot] = rest;
            D_800E3590[omCurrentObj->objId] = rest;
            D_800E33D0[omCurrentObj->objId] = rest;
            D_800E3210[omCurrentObj->objId] = rest;
            D_800E3050[omCurrentObj->objId] = rest;
            D_800E3E50[omCurrentObj->objId] = 65535.0f;
            slot = omCurrentObj->objId;
            openCap = D_800E3E50[slot];
            D_800E3C90[slot] = openCap;
            D_800E3AD0[omCurrentObj->objId] = openCap;
            *command = 0;
        } else if (cmd == 2) {
            /* Death drop: sink at a fixed rate, freeze, and never wake. */
            D_800E3590[omCurrentObj->objId] = 0.0f;
            slot = omCurrentObj->objId;
            D_800E3050[slot] = D_800E3590[slot];
            D_800E3AD0[omCurrentObj->objId] = 65535.0f;
            D_800E3210[omCurrentObj->objId] = -8.0f;
            D_800E33D0[omCurrentObj->objId] = 0.0f;
            D_800E3910[omCurrentObj->objId] = 0.0f;
            D_800E3E50[omCurrentObj->objId] = 65535.0f;
            ohSleep(0xA);
            D_800E3910[omCurrentObj->objId] = 0.0f;
            slot = omCurrentObj->objId;
            rest = D_800E3910[slot];
            D_800E3750[slot] = rest;
            D_800E3590[omCurrentObj->objId] = rest;
            D_800E33D0[omCurrentObj->objId] = rest;
            D_800E3210[omCurrentObj->objId] = rest;
            D_800E3050[omCurrentObj->objId] = rest;
            D_800E3E50[omCurrentObj->objId] = 65535.0f;
            slot = omCurrentObj->objId;
            openCap = D_800E3E50[slot];
            D_800E3C90[slot] = openCap;
            D_800E3AD0[omCurrentObj->objId] = openCap;
            curObjSleepForever();
        }
    }
}
#elif defined(PORT)
/* PORT: shared hover coroutine for the four hand/boss pieces above, from
 * asm/nonmatchings/ovl2/ovl2_10/func_80116508.s. Records the spawn height
 * in D_800EA6E0 and bobs forever: picks an up/down drift of +/-0.25/frame
 * at random, reverses when the piece strays 15 above or 10 below the
 * anchor, and watches the command word D_800E98E0[objId]. Command 1 is a
 * hop -- launch at 2.1333334*16 up under gravity -2.1333334 for 15 frames,
 * freeze a frame, then fall from rest under gravity -0.9917355 for 22
 * frames, freeze, clear the command and resume bobbing. Command 2 is the
 * death drop -- descend at 8/frame for 10 frames, freeze, and sleep
 * forever. The freeze writes zero the whole velocity/gravity delta block
 * (D_800E3050..D_800E3910) and open the caps (D_800E3C90/D_800E3AD0/
 * D_800E3E50 = 65535). */
void func_80116508(struct GObj *arg0) {
    s32 random_soft_s32_range(s32);
    s32 id = arg0->objId;

    D_800E98E0[id] = 0;
    D_800EA6E0[id] = gEntitiesNextPosYArray[id];
    while (TRUE) {
        s32 cmd;

        if (random_soft_s32_range(2) != 0) {
            D_800E3210[id] = 0.25f;
        } else {
            D_800E3210[id] = -0.25f;
        }
        while ((cmd = D_800E98E0[id]) == 0) {
            f32 d = gEntitiesNextPosYArray[id] - D_800EA6E0[id];

            if (d >= 15.0f) {
                D_800E3210[id] = -0.25f;
            } else if (d <= -10.0f) {
                D_800E3210[id] = 0.25f;
            }
            ohSleep(1);
        }
        if (cmd == 1) {
            /* Hop: launch upward, freeze at the apex, then drop. */
            D_800E3590[id] = 0.0f;
            D_800E3050[id] = D_800E3590[id];
            D_800E3AD0[id] = 65535.0f;
            D_800E3210[id] = 2.1333334f * 16.0f;
            D_800E3750[id] = -2.1333334f;
            D_800E33D0[id] = 0.0f;
            D_800E3910[id] = 0.0f;
            D_800E3E50[id] = 65535.0f;
            ohSleep(0xF);
            D_800E3910[id] = 0.0f;
            D_800E3750[id] = D_800E3910[id];
            D_800E3590[id] = D_800E3910[id];
            D_800E33D0[id] = D_800E3910[id];
            D_800E3210[id] = D_800E3910[id];
            D_800E3050[id] = D_800E3910[id];
            D_800E3E50[id] = 65535.0f;
            D_800E3C90[id] = D_800E3E50[id];
            D_800E3AD0[id] = D_800E3E50[id];
            ohSleep(1);
            D_800E3590[id] = 0.0f;
            D_800E3050[id] = D_800E3590[id];
            D_800E3AD0[id] = 65535.0f;
            D_800E3210[id] = 0.0f;
            D_800E3750[id] = -0.9917355f;
            D_800E33D0[id] = 0.0f;
            D_800E3910[id] = 0.0f;
            D_800E3E50[id] = 65535.0f;
            ohSleep(0x16);
            D_800E3910[id] = 0.0f;
            D_800E3750[id] = D_800E3910[id];
            D_800E3590[id] = D_800E3910[id];
            D_800E33D0[id] = D_800E3910[id];
            D_800E3210[id] = D_800E3910[id];
            D_800E3050[id] = D_800E3910[id];
            D_800E3E50[id] = 65535.0f;
            D_800E3C90[id] = D_800E3E50[id];
            D_800E3AD0[id] = D_800E3E50[id];
            D_800E98E0[id] = 0;
        } else if (cmd == 2) {
            /* Death drop: descend, freeze, and never wake again. */
            D_800E3590[id] = 0.0f;
            D_800E3050[id] = D_800E3590[id];
            D_800E3AD0[id] = 65535.0f;
            D_800E3210[id] = -8.0f;
            D_800E33D0[id] = 0.0f;
            D_800E3910[id] = 0.0f;
            D_800E3E50[id] = 65535.0f;
            ohSleep(0xA);
            D_800E3910[id] = 0.0f;
            D_800E3750[id] = D_800E3910[id];
            D_800E3590[id] = D_800E3910[id];
            D_800E33D0[id] = D_800E3910[id];
            D_800E3210[id] = D_800E3910[id];
            D_800E3050[id] = D_800E3910[id];
            D_800E3E50[id] = 65535.0f;
            D_800E3C90[id] = D_800E3E50[id];
            D_800E3AD0[id] = D_800E3E50[id];
            curObjSleepForever();
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_80116508.s")
#endif

void func_80116B68(struct GObj *arg0) {
    D_800D7098[0] = arg0->objId;
    func_80115070(arg0);
}

/* K&R definition is load-bearing: the eight thunks below (func_80116CA0 and
 * its siblings, ovl2_10.c:2722-2750) call this with no argument and rely on
 * the GObj already sitting in $a0. MEASURED: with the head written
 * `void func_80116B90(struct GObj *arg0)` the build fails with
 * "too few arguments to function 'func_80116B90'" at all eight. */
void func_80116B90(arg0)
struct GObj *arg0;
{
    struct Unk80124E14 *p = &D_80124E14[D_800E77A0[arg0->objId]];

    func_800AF980(0x17);
    func_800A9864(p->unk4, 0x1869F, 0x10);
    D_800DEF90[omCurrentObj->objId] = p->unk10;
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    func_800AA018(p->unk8);
    while (D_800D7098[0] == 0) {
        ohSleep(1);
    }
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800DEF90[omCurrentObj->objId] = func_80112B4C;
    omEndProcess(0);
}

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
        D_800DEF90[omCurrentObj->objId] = func_80112B4C;
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
    D_800DEF90[omCurrentObj->objId] = func_80116F80;
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
        D_800DEF90[omCurrentObj->objId] = func_80112B4C;
        func_8011E4E4(0x4A);
    }
}

void func_801171F0(struct GObj *arg0) {
    func_801153B8(arg0);
}

#ifdef NON_MATCHING
/* 22/70: the whole body is decoded and every store is right. Two residues:
   IDO emits `bc1fl` to the epilogue where the ROM has `bc1f` + `nop`, and the
   scaled-index spill lands at 0x18($sp) against the ROM's 0x1C with the same
   0x28 frame, i.e. a 4-byte hole above it. Swept: compare operand order,
   early-return form, an empty `else`, `do {} while (0)` before the inner if,
   a type-split store for 0xA, and leading/trailing pad locals (27 each).
   The file-scope declaration of this function was widened from (s32) to
   (struct GObj *) for the draft; --all stayed at 0 diff.
   Re-confirmed 2026-08-23 via verify.py in-place: still exactly 22/70, same
   bc1fl-vs-bc1f+nop delay-slot-fill difference dragging ~15 words of address
   materialisation order with it. Genuine scheduler floor. */
void func_80117210(struct GObj *arg0) {
    extern f32 D_80128D2C;
    void func_80117570(struct GObj *);
    u8 *sp24 = arg0->unk4C;
    s32 sp20 = arg0->objId;

    func_800B4924(arg0);
    if (D_800EA6E0[sp20] < gEntitiesNextPosYArray[sp20]) {
        gEntitiesNextPosYArray[sp20] = D_800EA6E0[sp20];
        D_800E3210[sp20] = D_800EA6E0[sp20] - gEntitiesPosYArray[sp20];
        D_800E98E0[sp20] = 0xA;
        D_800DEF90[omCurrentObj->objId] = func_80117570;
        if (func_8011E244() == *sp24) {
            D_800E3750[sp20] = -0.5f;
            D_800E3C90[sp20] = D_80128D2C;
            D_800DEF90[omCurrentObj->objId] = func_801173F4;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_80117210.s")
#endif
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

/* 10/95: every instruction, register and relative slot order is exact; only the
   frame is 0x30 against the ROM's 0x28.  The three named locals occupy 12 bytes
   in both, but IDO leaves a 4-byte hole below the spill temp AND another below
   the local block (ROM: temp 0x18, locals 0x1C/0x20/0x24; ours: temp 0x1C,
   locals 0x24/0x28/0x2C).  This is the frame-layout anomaly recorded in the
   guide -- the block moves wholesale and never closes.  Swept: declaration
   order (3 permutations), u32 vs s32 index, s32* vs u8* for unk4C, separated
   declaration/assignment, block- vs file-scope extern for D_80126CF4, and
   recomputing the sum instead of reloading gEntitiesNextPosYArray.
   The parameter is spelled (s32) with casts so that this guarded draft agrees
   with the file-scope declaration at the top of the file, which the two
   D_800DEF90 address-taking sites depend on; measured identical (10/95) to the
   (struct GObj *) spelling. */
extern f32 D_80126CF4[];

// Re-confirmed 2026-08-23 (verify.py, still 10/95): a leading `s32 pad`
// shaved 2 diffs (10->8) by luck but did NOT shrink the frame (stayed
// 0x30); two leading pads grew the frame instead (0x38). Pads move
// register allocation here, not the +8 anomaly itself -- reverted, no net
// gain over the documented 10/95. Left guarded.
#ifdef NON_MATCHING
/* FACTORY: 8/95 (verify.py prints 9 on a scratch copy; one is a PHANTOM
   own-.rodata note that resolves to the right symbol on the real path).
   Was 10; the trailing dead `s32 pad` below is worth 2 -- later declarations
   take the lower stack addresses, so a dead word declared LAST lifts the
   compiler's temps onto the ROM's slots. */
void func_801173F4(s32 arg0) {
    u8 *sp24 = ((struct GObj *) arg0)->unk4C;
    s32 sp20 = ((struct GObj *) arg0)->objId;
    f32 sp1C = D_80126CF4[D_800E77A0[sp20]];
    s32 pad;

    func_800B4924((struct GObj *) arg0);
    if ((gEntitiesNextPosYArray[sp20] - D_800EA6E0[sp20]) < sp1C) {
        gEntitiesNextPosYArray[sp20] = D_800EA6E0[sp20] + sp1C;
        D_800E3210[sp20] = gEntitiesNextPosYArray[sp20] - gEntitiesPosYArray[sp20];
        D_800E98E0[sp20] = 0xA;
        D_800DEF90[omCurrentObj->objId] = func_80117328;
    } else {
        if (D_800EA6E0[sp20] < gEntitiesNextPosYArray[sp20]) {
            gEntitiesNextPosYArray[sp20] = D_800EA6E0[sp20];
            D_800E3210[sp20] = D_800EA6E0[sp20] - gEntitiesPosYArray[sp20];
        }
        if (func_8011E244() != *sp24) {
            D_800E3750[sp20] = 0.5f;
            D_800E3C90[sp20] = 4.4f;
            D_800DEF90[omCurrentObj->objId] = func_80117210;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_801173F4.s")
#endif

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

extern f32 D_80126DFC[];
s32 random_soft_s32_range(s32);

/* arg0 is the entity GObj -- all three call sites below pass their own
   `struct GObj *arg0` -- and is unused: the body works off omCurrentObj. */
void func_80117904(struct GObj *arg0) {
    f32 step;

    D_800E3750[omCurrentObj->objId] = -0.5f;
    D_800E3C90[omCurrentObj->objId] = 20.0f;
    step = D_80126DFC[random_soft_s32_range(7)];
    while (-2000.0f < gEntitiesNextPosYArray[omCurrentObj->objId]) {
        gEntitiesAngleXArray[omCurrentObj->objId] += step;
        ohSleep(1);
    }
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    gEntitiesNextPosXArray[omCurrentObj->objId] -= 2000.0f;
    gEntitiesNextPosYArray[omCurrentObj->objId] = 0.0f;
    gEntitiesAngleXArray[omCurrentObj->objId] = 0.0f;
}

void func_80117AB4(struct GObj *arg0) {
    f32 step;

    while (1) {
        while (gEntitiesNextPosXArray[omCurrentObj->objId] < gEntitiesNextPosXArray[D_800D7098[13]] + 800.0f) {
            ohSleep(1);
        }
        D_800E3750[omCurrentObj->objId] = -0.5f;
        D_800E3C90[omCurrentObj->objId] = 20.0f;
        step = D_80126DFC[random_soft_s32_range(7)];
        while (-2000.0f < gEntitiesNextPosYArray[omCurrentObj->objId]) {
            gEntitiesAngleXArray[omCurrentObj->objId] += step;
            ohSleep(1);
        }
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
        if (gEntitiesNextPosXArray[omCurrentObj->objId] - 2000.0f < -7000.0f) {
            break;
        }
        gEntitiesNextPosXArray[omCurrentObj->objId] -= 2000.0f;
        gEntitiesNextPosYArray[omCurrentObj->objId] = 0.0f;
        gEntitiesAngleXArray[omCurrentObj->objId] = 0.0f;
    }
    gEntitiesNextPosXArray[omCurrentObj->objId] += 7000.0f;
    gEntitiesNextPosYArray[omCurrentObj->objId] = -5000.0f;
    omEndProcess(0);
}

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

void func_80117F28(struct GObj *arg0) {
    func_80117834(arg0);
    while (D_800D7098[2] == 0) {
        ohSleep(1);
    }
    D_800E3750[omCurrentObj->objId] = -0.5f;
    D_800E3C90[omCurrentObj->objId] = 20.0f;
    while (-1000.0f < gEntitiesNextPosYArray[omCurrentObj->objId]) {
        ohSleep(1);
    }
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    gEntitiesNextPosXArray[omCurrentObj->objId] += 7000.0f;
    gEntitiesNextPosYArray[omCurrentObj->objId] = -5000.0f;
    omEndProcess(0);
}

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
        D_800DEF90[omCurrentObj->objId] = func_80112B4C;
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
        D_800DEF90[omCurrentObj->objId] = func_80112B4C;
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
        D_800DEF90[omCurrentObj->objId] = func_80112B4C;
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

#ifdef NON_MATCHING
/* 17/74: body is exact. Two residues, both structural.
 * (1) sp40 lands at 0x48, the ROM has it at 0x40. IDO's local-block base here
 *     is a constant 0x48 (frame = align8(0x48 + L)), so sp40 -- always the
 *     lowest local -- cannot go below it; pads declared between sp54 and sp40
 *     grow the frame upward instead (measured: L 0x10 -> frame 0x58,
 *     L 0x18 -> frame 0x60, base 0x48 in both). The ROM has base 0x40 with
 *     frame 0x58, i.e. 8 bytes less than the formula.
 * (2) the dead epilogue after the `while (1)` comes out 16 bytes later than
 *     the ROM's, so the whole function is 4 instructions LONG -- converting it
 *     would shift the segment even though verify.py reports only 17 diffs.
 * Also swept: `v & 0xFF` vs `v` at the second func_8010E288 call (the ROM has
 * `andi $a1, $s2, 0xFF`, we get `move`), f32 sp40[5], a combined
 * {Vector; s32; s32} struct local, and all declaration orders of sp54/sp40.
 * Re-confirmed 2026-08-23 via verify.py in-place: 17/78 (frame base 0x48
 * vs ROM's 0x40, `v & 0xFF` re-tried and made it WORSE at 19/78, and the
 * draft is still 4 instructions (16 bytes) longer than the ROM in the dead
 * epilogue after `while(1)` -- word-count mismatch, not source-reachable
 * per lever 48). Left guarded. */
void func_80118638(struct GObj *arg0) {
    extern s32 D_8012BCE0;
    extern s32 func_8010DF9C(Vector *);
    extern u8 func_8010E2A0(s32);
    extern void func_8010E288(s32, s32);
    s32 sp54;
    Vector sp40;
    u8 v;
    s32 id = arg0->objId;

    sp40.x = gEntitiesNextPosXArray[id];
    sp40.y = gEntitiesNextPosYArray[id];
    sp40.z = gEntitiesNextPosZArray[id];
    if (func_8010DF9C(&sp40) != 0) {
        sp54 = D_8012BCE0;
    }
    D_800DEF90[omCurrentObj->objId] = NULL;
    v = func_8010E2A0(sp54);
    while (1) {
        func_8010E288(sp54, 0x50);
        ohSleep((s32) (120.0f * gameTicksPerDrawInv));
        func_8010E288(sp54, v);
        ohSleep((s32) (60.0f * gameTicksPerDrawInv));
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_10/func_80118638.s")
#endif
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

void func_80118E44(struct GObj *arg0, u32 arg1) {
    struct GObj *sp24;

    func_80115618(arg0);
    if (D_800D6E20[D_800BE508] != 0) {
        sp24 = D_800DE350[((struct Unk4C *) arg0->unk4C)->unk3];
        func_800AECC0(0.0f);
        func_800AED20(0.0f);
        omCurrentObj = sp24;
        func_800AECC0(0.0f);
        func_800AED20(0.0f);
        omCurrentObj = arg0;
    } else {
        func_8011890C(arg0, arg1);
        while (D_800D6E18 == 0) {
            ohSleep(1);
        }
        func_800AECC0(gameTicksPerDraw);
        func_800AED20(gameTicksPerDraw);
        omCurrentObj = D_800DE350[((struct Unk4C *) arg0->unk4C)->unk3];
        func_800AECC0(gameTicksPerDraw);
        func_800AED20(gameTicksPerDraw);
        omCurrentObj = arg0;
    }
    omEndProcess(NULL);
}

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
        D_800DEF90[omCurrentObj->objId] = func_800B4924;
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
        D_800DEF90[omCurrentObj->objId] = func_80112B4C;
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
      D_800DEF90[omCurrentObj->objId] = func_80112B4C;
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
        D_800DEF90[omCurrentObj->objId] = func_80112B4C;
    }
}

struct Unk80126DCC {
    s32 unk0;
    s32 unk4;
};
extern struct Unk80126DCC D_80126DCC[];

void func_8011AA7C(struct GObj *arg0) {
    struct Unk80126DCC *p;
    u32 k;

    if (gEntitiesNextPosYArray[arg0->objId] <= gEntitiesNextPosYArray[0]) {
        k = D_800E77A0[arg0->objId];
        if (k >= 0xF5) {
            D_800DEF90[omCurrentObj->objId] = func_80112B4C;
            k = k - 0xF1;
            p = &D_80126DCC[k];
            func_800AA018(p->unk4);
            func_800AA018(p->unk0);
        } else {
            D_800DEF90[omCurrentObj->objId] = func_8011A9EC;
            k = k - 0xD6;
            p = &D_80126DCC[k];
            func_800AA018(p->unk4);
            func_800AA018(p->unk0);
        }
    }
}

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
        D_800DEF90[omCurrentObj->objId] = func_80112B4C;
    }
}

void func_8011AE6C(struct GObj *arg0) {
    struct Unk80124E14 *temp;

    if (kirby_in_inactionable_state() == 1) {
        temp = &D_80124E14[D_800E77A0[arg0->objId]];
        func_800AA018(temp->unk8);
        D_800DEF90[omCurrentObj->objId] = func_8011ADFC;
    }
}

void func_8011AEF0(struct GObj *arg0) {
    u8 *temp = arg0->unk4C;

    if (func_8011E244() == *temp) {
        func_8011E4E4(0x52);
        D_800DEF90[omCurrentObj->objId] = func_8011AE6C;
    }
}

void func_8011AF50(struct GObj *arg0) {
    u8 *temp = arg0->unk4C;

    if (func_8011E244() == *temp) {
        func_8011E4E4(0x53);
        D_800DEF90[omCurrentObj->objId] = func_8011AE6C;
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
    D_800DEF90[omCurrentObj->objId] = func_800B4924;
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
    D_800DEF90[omCurrentObj->objId] = func_8011B050;
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
        D_800DEF90[omCurrentObj->objId] = func_8011B0A4;
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
        D_800DEF90[omCurrentObj->objId] = func_80112B4C;
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
        D_800DEF90[omCurrentObj->objId] = func_80112B4C;
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
        D_800DEF90[omCurrentObj->objId] = func_80112B4C;
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
        D_800DEF90[omCurrentObj->objId] = func_80112B4C;
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
