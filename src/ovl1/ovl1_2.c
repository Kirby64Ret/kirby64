#include "common.h"
#include "GObj.h"
#include "main/anim.h"
#include "ovl1_2.h"
#include "unk_structs/D_800D79D8.h"

extern GObj *D_800D79B0[];
extern GObj *D_800D79B4;
extern GObj *D_800D79BC;

void func_8017644C_ovl3(void);
void func_80176484_ovl3(void);
void func_800FC804(GObj *);
void func_800A72AC(GObj *);

extern u32 D_8004A404;
extern Gfx *gDisplayListHeads[4];
extern u32 D_800D7B6C;
extern u32 D_800D7B70;
extern u32 D_800D7B74;
extern u32 D_800D7B78;
extern u32 D_800D7B7C;
extern u32 D_800D7B80;

void omDrawAll(void);
void func_800AC610(void);

extern f32 D_800D7A28[];
extern f32 D_800D7A50[];
extern f32 D_800D7A78[];
extern f32 D_800D7AA0[];
extern f32 D_800D7AC8[];
extern f32 D_800D7AF0[];

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_2/func_800A6BC0.s")

void func_800A6E64(void) {
    extern s32 *D_800BF8F0[];
    extern s32 D_800D7A00[];
    s32 i;

    for (i = 0; i < 10; i++) {
        D_800D79B0[i] = NULL;
        D_800D79D8[i] = NULL;
        D_800D7A00[i] = 0;
        *D_800BF8F0[i] = 0;
    }
}

struct UnkStruct800D79D8 *func_800A6F40(u16 arg0) {
    return D_800D79D8[(u16)((arg0 - 10) >> 1)];
}

void func_800A6F68(u16 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 arg9) {
    f32 f_65535f;
    u16 idx;
    f32 tmp;
    struct UnkStruct800D79D8 *st;

    idx = (((arg0 - 10) >> 1));
    tmp = arg6;
    st = D_800D79D8[idx];
    if (st) {
        f_65535f = 65535.0f;
        if (arg1 != f_65535f) {
            st->unk3C = arg1;
            D_800D7A28[idx] = arg1;
        }
        if (arg2 != f_65535f) {
            st->unk40 = arg2;
            D_800D7A50[idx] = arg2;
        }
        if (arg3 != f_65535f) {
            st->unk44 = arg3;
            D_800D7A78[idx] = arg3;
        }
        if (arg4 != f_65535f) {
            st->unk48 = arg4;
            D_800D7AA0[idx] = arg4;
        }
        if (arg5 != f_65535f) {
            st->unk4C = arg5;
            D_800D7AC8[idx] = arg5;
        }
        if (tmp != f_65535f) {
            st->unk50 = tmp;
            D_800D7AF0[idx] = tmp;
        }
        if (arg7 != f_65535f) {
            st->unk54 = arg7;
        }
        if (arg8 != f_65535f) {
            st->unk58 = arg8;
        }
        if (arg9 != f_65535f) {
            st->unk5C = arg9;
        }
    }
}

void func_800A70C4(u16 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4) {
    f32 f_65535f;
    f32 tmp;
    struct UnkStruct800D79D8 *st;

    st = D_800D79D8[(u16)(arg0 - 10 >> 1)];
    tmp = arg4;
    if (st) {
        f_65535f = 65535.0f;
        if (arg1 != f_65535f) {
            st->unk20 = arg1;
        }
        if (arg2 != f_65535f) {
            st->unk24 = arg2;
        }
        if (arg3 != f_65535f) {
            st->unk28 = arg3;
        }
        if (tmp != f_65535f) {
            st->unk2C = tmp;
        }
    }
}

void func_800A7160(u16 arg0, u32 arg1) {
    struct UnkStruct800D79D8 *st;

    st = D_800D79D8[(u16)(arg0 - 10 >> 1)];
    if (st) {
        st->unk80 |= arg1;
    }
}

void func_800A71A0(u32 arg0) {
    GObj *obj;

    obj = D_800D79B0[(arg0 - 10) >> 1];
    if (obj != NULL) {
        animUpdateCameraAnimation(obj);
    }
}

#ifdef MIPS_TO_C
// 28/50: every instruction correct but ONE missing -- the ROM emits a bare
// "addiu $v1, $v1, 0x38" (base bias to &cam->viewMtx) before the last at-field
// read and the eye copy.  Swept: plain member copies, OMLookAt */void */Vector *
// locals, (u8 *)cam + 0x38 casts, lookAtRoll aliasing, eye-before-at order,
// inline D_800D79BC->data.cam, and a redundant .z read -- all stay at 28.
struct Ovl1CamPos {
    Vector unk0;
    Vector unkC;
};
extern struct Ovl1CamPos D_800D7B20;
extern struct Ovl1CamPos D_800D7B38;
extern Vector D_800D7B2C;

void func_800A71E0(void) {
    Camera *cam;

    omCreateProcess(D_800D79BC, func_800FC804, 1, 0);
    cam = D_800D79BC->data.cam;
    D_800D7B20.unk0 = cam->viewMtx.lookAt.at;
    D_800D7B2C = cam->viewMtx.lookAt.eye;
    D_800D7B38 = D_800D7B20;
    D_800D79BC->dlLinkBitMask |= 0x2000000;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_2/func_800A71E0.s")
#endif

void func_800A72AC(GObj *arg0) {
    Camera *src;
    Camera *dst;

    dst = arg0->data.cam;
    src = D_800D79BC->data.cam;
    dst->viewMtx.lookAt.eye = src->viewMtx.lookAt.eye;
    dst->viewMtx.lookAt.at = src->viewMtx.lookAt.at;
    dst->viewMtx.lookAt.up = src->viewMtx.lookAt.up;
    dst->perspMtx.persp.fovy = src->perspMtx.persp.fovy;
    dst->perspMtx.persp.aspect = src->perspMtx.persp.aspect;
    dst->perspMtx.persp.near = src->perspMtx.persp.near;
    dst->perspMtx.persp.far = src->perspMtx.persp.far;
    dst->perspMtx.persp.scale = src->perspMtx.persp.scale;
    func_8017644C_ovl3();
}

void func_800A7348(void) {
    omCreateProcess(D_800D79B4, func_800A72AC, 1, 0);
    D_800D79B4->flags |= 1;
    func_80176484_ovl3();
}

void func_800A7394(void) {
    D_800D79BC->data.cam->matrices[1]->kind = 8;
}

void func_800A73B0(void) {
    D_800D7B6C = D_8004A404;
    D_800D7B70 = (u32) gDisplayListHeads[0];
    D_800D7B74 = (u32) gDisplayListHeads[1];
    omDrawAll();
    func_800AC610();
    D_800D7B6C = D_8004A404 - D_800D7B6C;
    D_800D7B70 = (u32) gDisplayListHeads[0] - D_800D7B70;
    D_800D7B74 = (u32) gDisplayListHeads[1] - D_800D7B74;
    if (D_800D7B78 < D_800D7B6C) {
        D_800D7B78 = D_800D7B6C;
    }
    if (D_800D7B7C < D_800D7B70) {
        D_800D7B7C = D_800D7B70;
    }
    if (D_800D7B80 < D_800D7B74) {
        D_800D7B80 = D_800D7B74;
    }
}

