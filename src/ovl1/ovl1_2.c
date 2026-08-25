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

// 13/169: every instruction correct except the register IDO picks for the
// %hi(D_800BF918) address temp -- the ROM uses $v0 and IDO takes $s2, which
// pulls the `sw $s2` prologue save 10 slots earlier and ripples through the
// save schedule.  Swept with no effect: declaration order and count of every
// local, obj/cam at each declaration position, leading/trailing pads, an
// explicit `pp = &D_800BF918[arg0]` address local, byte-bias indexing,
// statement order of the D_800D7B68 store, for/while loop shape, and a
// return-type flip on every prototype this function introduces.
// The obj/cam stack slots (0x9C/0xA0) are load-bearing on obj and cam being
// declared SECOND and THIRD -- any other position moves them or the frame.
struct Ovl1CameraSetup {
    /* 0x00 */ s32 objId;
    /* 0x04 */ s32 dlLinkBitMask;
    /* 0x08 */ u32 onCreated; /* void (*)(void) -- kept u32 so every field is
                                 4 bytes and the struct still overlays the ROM
                                 data table in the LP64 PC port */
    /* 0x0C */ f32 left;
    /* 0x10 */ f32 bottom;
    /* 0x14 */ f32 right;
    /* 0x18 */ f32 top;
};

extern struct Ovl1CameraSetup *D_800BF918[];
extern u32 D_800D7B68;

void func_800ADD14(GObj *);
void func_80018170(GObj *);
void func_8009BA68(struct UnkStruct800D79D8 *);
void func_80007C00(Vp *, f32, f32, f32, f32);
void ohUpdateStub(GObj *);
GObj *ohCreateCamera(s32, void (*)(GObj *), s32, s32, void (*)(GObj *), s32, s32, s32, s32, u8, void (*)(GObj *), s32, s32);

s32 func_800A6BC0(u8 arg0)
{
  extern s32 *D_800BF8F0[];
  s32 id;
  GObj *obj;
  struct UnkStruct800D79D8 *cam;
  struct Ovl1CameraSetup *e;
  s32 mask;
  s32 idx;
  f32 left;
  struct Ovl1CameraSetup *new_var;
  f32 bottom;
  f32 right;
  f32 top;
  D_800D7B68 = 0;
  new_var = D_800BF918[arg0];
  e = new_var;
  while (1)
  {
    id = e->objId;
    if (id == (-1))
    {
      break;
    }
    mask = e->dlLinkBitMask;
    left = e->left;
    bottom = e->bottom;
    right = e->right;
    top = e->top;
    if (right < left)
    {
      left = 10.0f;
      right = 310.0f;
    }
    if (top < bottom)
    {
      top = 230.0f;
      bottom = 10.0f;
    }
    switch (id)
    {
      case 10:

      case 14:

      case 18:

      case 22:
        obj = ohCreateCamera(id, ohUpdateStub, 0x19, 0x80000000, func_800ADD14, id, mask, -1, 1, 0, 0, 1, 0);
        if (obj == ((void *) 0))
      {
        return -1;
      }
        cam = obj->data.ptr;
        break;

      case 12:

      case 16:

      case 20:

      case 24:
        obj = ohCreateCamera(id, ohUpdateStub, 0x19, 0x80000000, func_80018170, id, mask, -1, 1, 0, 0, 1, 0);
        if (obj == ((void *) 0))
      {
        return -1;
      }
        cam = obj->data.ptr;
        ((Camera *) cam)->flags = 4;
        ((Camera *) cam)->perspMtx.persp.aspect = (right - left) / (top - bottom);
        break;

      case 11:

      case 13:

      case 15:

      case 17:

      case 19:

      case 21:

      case 23:
        break;

    }

    idx = ((u32) (id - 10)) >> 1;
    D_800D79B0[idx] = obj;
    D_800D79D8[idx] = cam;
    func_80007C00(&((Camera *) cam)->viewport, left, bottom, right, top);
    *D_800BF8F0[idx] = (s32) obj;
    if (id == 0x10)
    {
      func_8009BA68(D_800D79D8[3]);
    }
    if (e->onCreated != 0)
    {
      ((void (*)(void)) ((uintptr_t) e->onCreated))();
    }
    e++;
  }

  return 0;
}

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

/* FACTORY: 28/50 -- MEASURED 2026-08-25 by the annotate pass. The number is all this line claims; no
   listing was read for it and no cause is diagnosed. */
#ifdef NON_MATCHING
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

