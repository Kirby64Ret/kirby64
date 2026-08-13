#include <PR/gbi.h>

#include "common.h"
#include "GObj.h"
#include "buffers.h"
#include "main/anim.h"
#include "main/fault.h"
#include "main/gtl.h"
#include "main/rdp_reset.h"
#include "ovl1/game.h"
#include "ovl1/ovl1_3.h"
#include "ovl1/sprite.h"
#include "ovl1/track.h"
#include "track_arrays.h"

typedef struct {
    u16 unk0;
    u8 unk2;
    u8 unk3;
    union {
        u32 unk4;
        struct {
            u16 unk4hi;
            u16 drawRate;
        };
    };
} UnkStruct8015A560_ovl6;

extern UnkStruct8015A560_ovl6 *D_8015A560_ovl6;

extern s32 D_8015A694_ovl6;
extern u32 D_800D6AB8[];

extern Lights1 *D_8015A670_ovl6;
extern GObj *D_8015A56C_ovl6;
extern Gfx D_80154E58_ovl6[];
extern SceneSetup D_80154E9C_ovl6;

void gtlCreateScene(SceneSetup *scene);
void func_80005350(s32 (*func)());
void func_8015166C_ovl6(Gfx **glistp);
s32 func_80151138_ovl6(void *arg0);

extern u16 *scNextFrameBuffer;
extern u16 *gCurrFrameBuffer;
extern u32 scTimestampSetFb;
extern u16 *D_8015A678_ovl6[3];

extern u32 D_8015A7A8_ovl6;
extern u32 D_8015A7AC_ovl6;
extern u32 D_8015A7B0_ovl6;

typedef struct {
    s32 unk0;
    u8 unk4;
} UnkStruct8015A6A8_ovl6;

extern UnkStruct8015A6A8_ovl6 D_8015A6A8_ovl6[];

extern GObj *D_8015A570_ovl6[];
extern GObj *D_8015A574_ovl6;
extern GObj *D_8015A578_ovl6[];
extern GObj *D_8015A668_ovl6;
extern GObj *D_8015A66C_ovl6;

typedef struct {
    u16 unk0;
    u16 unk2;
    u8 unk4;
    u8 unk5;
    u8 unk6;
} UnkStruct8015A7B8_ovl6;

extern UnkStruct8015A7B8_ovl6 D_8015A7B8_ovl6;
extern UnkStruct8015A560_ovl6 *D_8015A7C0_ovl6;

extern s32 D_8015A684_ovl6;
extern GObjProcess *D_8015A688_ovl6;
extern u32 D_8015A68C_ovl6;
extern s32 D_8015A690_ovl6;
extern s32 D_8015A698_ovl6;
extern s32 D_8015A69C_ovl6;
extern GObj *D_8015A6A0_ovl6;

extern Controller_800D6FE8 gPlayerControllers;
extern GObj *D_800D7998;

extern UnkStruct8015A560_ovl6 **D_8015A3B4_ovl6[];
extern void (*D_80154DC0_ovl6[])(void);
extern UnkStruct8015A560_ovl6 D_80154E48_ovl6[];
extern UnkStruct8015A560_ovl6 **D_8015A564_ovl6;
extern s32 D_8015A568_ovl6;

void func_801544E8_ovl6(GObj *gobj);
void func_80154628_ovl6(void);
void func_80151E60_ovl6(GObj *gobj, Lights1 *light);
void func_80152138_ovl6(GObj *gobj, Lights1 *light);
s32 func_800AB0F4(GObj *g);
void renderDrawDObjFromGObj(GObj *g);
void renderDrawObject_TypeD(GObj *g);
void func_8001585C(GObj *g);
void func_80015BCC(GObj *g);

extern Lights1 *D_8004A404;

void func_8015170C_ovl6(GObj *gobj);
void func_8015198C_ovl6(GObj *gobj);
void func_801524C8_ovl6(GObj *gobj);
void func_80152B28_ovl6(GObj *gobj);
void func_80152B9C_ovl6(GObj *gobj);
void func_80152C10_ovl6(GObj *gobj);
void func_80152C84_ovl6(GObj *gobj);
void func_801536A0_ovl6(GObj *gobj);
void func_80153228_ovl6(s32 arg0);
void func_80152D00_ovl6(GObj *gobj);
void func_801532F4_ovl6(GObj *gobj);
void func_8015374C_ovl6(GObj *gobj);
void func_8015392C_ovl6(GObj *gobj);
void func_80153B34_ovl6(GObj *gobj);
void func_80153B80_ovl6(GObj *gobj);
void func_80153CBC_ovl6(GObj *gobj);
void func_80153DC8_ovl6(GObj *gobj);
void func_80153E1C_ovl6(s32 arg0);
void func_801548A4_ovl6(void);
void func_801548F8_ovl6(GObj *arg0);
void func_80154858_ovl6(void);
void omGMoveObjDLHead(GObj *o, u8 link, s32 renderPri);
void func_800AD1A0(GObj *gobj);
void *func_800A8C40(s32 arg0);
void func_800B0F28(struct DObj *arg0, s32 arg1, f32 arg2);
GObj *func_800A19EC(s32 arg0, s32 arg1);
void func_800B2340(Vector *vec, struct DObj *node, u32 track);

void func_80151100_ovl6(void) {
    if (D_8015A694_ovl6 != 0) {
        func_800067B8();
    }
    omUpdateAll();
}

s32 func_80151138_ovl6(void *arg0) {
    void *sp24;
    void *sp20;
    void *sp1C;
    u16 *temp_a0;
    s32 var_v1;
    void *temp_v0;

    if (scNextFrameBuffer != NULL) {
        return 1;
    }
    sp1C = osViGetNextFramebuffer();
    temp_v0 = osViGetCurrentFramebuffer();
    if (gCurrFrameBuffer == D_8015A678_ovl6[0]) {
        var_v1 = 1;
    } else if (gCurrFrameBuffer == D_8015A678_ovl6[1]) {
        var_v1 = 2;
    } else if (gCurrFrameBuffer == D_8015A678_ovl6[2]) {
        var_v1 = 0;
    } else {
        var_v1 = 0;
    }
    temp_a0 = D_8015A678_ovl6[var_v1];
    if ((temp_v0 != temp_a0) && (sp1C != temp_a0)) {
        scNextFrameBuffer = temp_a0;
        scTimestampSetFb = osGetCount();
        return 1;
    }
    return 0;
}

void func_80151204_ovl6(GObj *gobj) {
    gDPPipeSync(gDisplayListHeads[1]++);
    gDPSetRenderMode(gDisplayListHeads[1]++, G_RM_ZB_CLD_SURF, G_RM_ZB_CLD_SURF2);
    func_8009E8F4(gobj, 2, &gDisplayListHeads[1]);
    gDPPipeSync(gDisplayListHeads[1]++);
    gDPSetColorDither(gDisplayListHeads[1]++, G_CD_MAGICSQ);
    gDPSetAlphaDither(gDisplayListHeads[1]++, G_AD_DISABLE);
    gDPSetRenderMode(gDisplayListHeads[1]++, G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2);
}

void func_801512F0_ovl6(void) {
    GObj *gobj;
    u32 i;

    func_8009B99C(0x200);
    func_800A04B8(0x10);
    gobj = HS64_omMakeGObj(0, 0, 0x18, 0x80000000);
    omLinkGObjDL(gobj, func_80151204_ovl6, 0x10, 8, 0x10);
    gobj->dlLinkBitMask = 0x1;

    gobj = HS64_omMakeGObj(0, 0, 0x18, 0x80000000);
    omLinkGObjDL(gobj, func_80151204_ovl6, 0x10, 0x10, 0x10);
    gobj->dlLinkBitMask = 0x2;

    for (i = 0; i < 8; i++) {
        D_800D6AB8[i] = 0;
    }
}

void func_801513C8_ovl6(void) {
    func_800A7A70(0, 0x40001, 0x40002);
}

void func_801513F8_ovl6(struct DObj *arg0, s32 arg1, f32 arg2) {
    GObj *sp2C;
    s32 temp_a1;
    GObj *temp_v0;
    Vector sp20;

    if (arg1 == 0xD) {
        temp_a1 = *(s32 *)&arg2 & 0xFFFF;
        if (temp_a1 >= 0) {
            temp_v0 = func_800A19EC((*(s32 *)&arg2 >> 0x10) * 8, temp_a1);
            if (temp_v0 != NULL) {
                if (temp_v0->unk4C != NULL) {
                    sp2C = temp_v0;
                    func_800B2340(&sp20, arg0, 0xFFFF);
                    ((f32 *)sp2C->unk4C)[1] = sp20.x;
                    ((f32 *)sp2C->unk4C)[2] = sp20.y;
                    ((f32 *)sp2C->unk4C)[3] = sp20.z;
                    return;
                }
                temp_v0->onAnimate = arg0;
            }
        }
    } else {
        func_800B0F28(arg0, arg1, arg2);
    }
}

void func_801514A0_ovl6(GObj *arg0, Lights1 *arg1) {
    TextureScroll *ts = &arg0->data.dobj->mobjList->texture;
    u8 c;

    c = ts->lightColor1.color.r;
    arg1->l[0].l.colc[0] = c;
    arg1->l[0].l.col[0] = c;
    c = ts->lightColor1.color.g;
    arg1->l[0].l.colc[1] = c;
    arg1->l[0].l.col[1] = c;
    c = ts->lightColor1.color.b;
    arg1->l[0].l.colc[2] = c;
    arg1->l[0].l.col[2] = c;
    c = ts->lightColor2.color.r;
    arg1->a.l.colc[0] = c;
    arg1->a.l.col[0] = c;
    c = ts->lightColor2.color.g;
    arg1->a.l.colc[1] = c;
    arg1->a.l.col[1] = c;
    c = ts->lightColor2.color.b;
    arg1->l[0].l.pad1 = 0;
    arg1->l[0].l.pad2 = 0;
    arg1->l[0].l.pad3 = 0;
    arg1->a.l.pad1 = 0;
    arg1->a.l.pad2 = 0;
    arg1->a.l.colc[2] = c;
    arg1->a.l.col[2] = c;
}

void func_8015150C_ovl6(void) {
    Vector sp34;
    f32 sin_x;
    f32 cos_x;
    f32 sin_y;
    f32 cos_y;
    f32 sin_z;
    f32 cos_z;
    f32 temp_f2;

    sp34 = D_8015A56C_ovl6->data.dobj->angle.v;
    sin_x = sinf(sp34.x);
    cos_x = cosf(sp34.x);
    sin_y = sinf(sp34.y);
    cos_y = cosf(sp34.y);
    sin_z = sinf(sp34.z);
    cos_z = cosf(sp34.z);
    temp_f2 = cos_x * sin_y;
    sp34.x = (temp_f2 * cos_z) + (sin_x * sin_z);
    sp34.y = (temp_f2 * sin_z) - (sin_x * cos_z);
    sp34.z = cos_x * cos_y;
    temp_f2 = 100.0f / sqrtf((sp34.x * sp34.x) + (sp34.y * sp34.y) + (sp34.z * sp34.z));
    D_8015A670_ovl6->l[0].l.dir[0] = -(s8)(sp34.x * temp_f2);
    D_8015A670_ovl6->l[0].l.dir[1] = -(s8)(sp34.y * temp_f2);
    D_8015A670_ovl6->l[0].l.dir[2] = -(s8)(sp34.z * temp_f2);
}

void func_8015166C_ovl6(Gfx **glistp) {
    func_8015150C_ovl6();
    func_801514A0_ovl6(D_8015A56C_ovl6, D_8015A670_ovl6);

    gSPSetLights1((*glistp)++, (*D_8015A670_ovl6));
}

void func_8015170C_ovl6(GObj *arg0) {
    gDPPipeSync(gDisplayListHeads[0]++);
    gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[arg0->objId]);
    gSPSetLights1(gDisplayListHeads[0]++, (*D_8015A670_ovl6));
    switch (func_800AB0F4(arg0)) {
        case 19:
        case 21:
        case 23:
        case 25:
            renderDrawDObjFromGObj(arg0);
            break;
        case 27:
        case 29:
            func_8001585C(arg0);
            break;
        case 20:
        case 22:
        case 24:
        case 26:
            gDPPipeSync(gDisplayListHeads[1]++);
            gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[arg0->objId]);
            gSPSetLights1(gDisplayListHeads[1]++, (*D_8015A670_ovl6));
            renderDrawObject_TypeD(arg0);
            break;
        case 28:
        case 30:
            gDPPipeSync(gDisplayListHeads[1]++);
            gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[arg0->objId]);
            gSPSetLights1(gDisplayListHeads[1]++, (*D_8015A670_ovl6));
            func_80015BCC(arg0);
            break;
    }
}

void func_8015198C_ovl6(GObj *arg0) {
    gDPPipeSync(gDisplayListHeads[0]++);
    gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[arg0->objId]);
    gSPSetLights1(gDisplayListHeads[0]++, (*D_8015A670_ovl6));
    gDPSetEnvColor(gDisplayListHeads[0]++, D_8015A670_ovl6->l[0].l.col[0], D_8015A670_ovl6->l[0].l.col[1],
                   D_8015A670_ovl6->l[0].l.col[2], 0xFF);
    switch (func_800AB0F4(arg0)) {
        case 19:
        case 21:
        case 23:
        case 25:
            renderDrawDObjFromGObj(arg0);
            break;
        case 27:
        case 29:
            func_8001585C(arg0);
            break;
        case 20:
        case 22:
        case 24:
        case 26:
            gDPPipeSync(gDisplayListHeads[1]++);
            gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[arg0->objId]);
            gSPSetLights1(gDisplayListHeads[1]++, (*D_8015A670_ovl6));
            gDPSetEnvColor(gDisplayListHeads[1]++, D_8015A670_ovl6->l[0].l.col[0], D_8015A670_ovl6->l[0].l.col[1],
                           D_8015A670_ovl6->l[0].l.col[2], 0xFF);
            renderDrawObject_TypeD(arg0);
            break;
        case 28:
        case 30:
            gDPPipeSync(gDisplayListHeads[1]++);
            gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[arg0->objId]);
            gSPSetLights1(gDisplayListHeads[1]++, (*D_8015A670_ovl6));
            gDPSetEnvColor(gDisplayListHeads[1]++, D_8015A670_ovl6->l[0].l.col[0], D_8015A670_ovl6->l[0].l.col[1],
                           D_8015A670_ovl6->l[0].l.col[2], 0xFF);
            func_80015BCC(arg0);
            break;
    }
}

void func_80151CD0_ovl6(s32 arg0, Vector *arg1) {
    Vector sp24;
    f32 temp_f0;
    f32 temp_f2;

    lbvector_Diff(&sp24, &D_8015A570_ovl6[arg0]->data.dobj->pos.v, arg1);
    temp_f0 = sqrtf((sp24.x * sp24.x) + (sp24.y * sp24.y) + (sp24.z * sp24.z));
    if (temp_f0 == 0.0f) {
        ((Lights1 *)gDynamicBuffer1.top)->l[0].l.dir[2] = 0;
        ((Lights1 *)gDynamicBuffer1.top)->l[0].l.dir[0] = ((Lights1 *)gDynamicBuffer1.top)->l[0].l.dir[2];
        ((Lights1 *)gDynamicBuffer1.top)->l[0].l.dir[1] = 100;
        return;
    }
    temp_f2 = 100.0f / temp_f0;
    ((Lights1 *)gDynamicBuffer1.top)->l[0].l.dir[0] = sp24.x * temp_f2;
    ((Lights1 *)gDynamicBuffer1.top)->l[0].l.dir[1] = sp24.y * temp_f2;
    ((Lights1 *)gDynamicBuffer1.top)->l[0].l.dir[2] = sp24.z * temp_f2;
}

void func_80151DDC_ovl6(s32 arg0) {
    func_80151CD0_ovl6(arg0, &D_800DE350[arg0]->data.dobj->pos.v);
}

void func_80151E10_ovl6(s32 arg0) {
    Vector sp1C;

    utilGetTransformSRT(&sp1C, D_800DE350[arg0]->data.dobj->firstChild->firstChild);
    func_80151CD0_ovl6(arg0, &sp1C);
}

void func_80151E60_ovl6(GObj *arg0, Lights1 *arg1) {
    u32 id;

    id = arg0->objId;
    gDPPipeSync(gDisplayListHeads[0]++);
    gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[id]);
    gSPNumLights(gDisplayListHeads[0]++, NUMLIGHTS_1);
    gSPLight(gDisplayListHeads[0]++, &arg1->l[0], 1);
    gSPLight(gDisplayListHeads[0]++, arg1, 2);
    switch (func_800AB0F4(arg0)) {
        case 19:
        case 21:
        case 23:
        case 25:
            renderDrawDObjFromGObj(arg0);
            break;
        case 27:
        case 29:
            func_8001585C(arg0);
            break;
        case 20:
        case 22:
        case 24:
        case 26:
            gDPPipeSync(gDisplayListHeads[1]++);
            gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[id]);
            gSPNumLights(gDisplayListHeads[1]++, NUMLIGHTS_1);
            gSPLight(gDisplayListHeads[1]++, &arg1->l[0], 1);
            gSPLight(gDisplayListHeads[1]++, arg1, 2);
            renderDrawObject_TypeD(arg0);
            gDPPipeSync(gDisplayListHeads[1]++);
            gSPLight(gDisplayListHeads[1]++, &D_8015A670_ovl6->l[0], 1);
            break;
        case 28:
        case 30:
            gDPPipeSync(gDisplayListHeads[1]++);
            gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[id]);
            gSPNumLights(gDisplayListHeads[1]++, NUMLIGHTS_1);
            gSPLight(gDisplayListHeads[1]++, &arg1->l[0], 1);
            gSPLight(gDisplayListHeads[1]++, arg1, 2);
            func_80015BCC(arg0);
            gDPPipeSync(gDisplayListHeads[1]++);
            gSPLight(gDisplayListHeads[1]++, &D_8015A670_ovl6->l[0], 1);
            break;
    }
    gDPPipeSync(gDisplayListHeads[0]++);
    gSPLight(gDisplayListHeads[0]++, &D_8015A670_ovl6->l[0], 1);
}
void func_80152138_ovl6(GObj *arg0, Lights1 *arg1) {
    u32 id;

    id = arg0->objId;
    gDPPipeSync(gDisplayListHeads[0]++);
    gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[id]);
    gSPNumLights(gDisplayListHeads[0]++, NUMLIGHTS_1);
    gSPLight(gDisplayListHeads[0]++, &arg1->l[0], 1);
    gSPLight(gDisplayListHeads[0]++, arg1, 2);
    gDPSetEnvColor(gDisplayListHeads[0]++, arg1->l[0].l.col[0], arg1->l[0].l.col[1], arg1->l[0].l.col[2], 0xFF);
    switch (func_800AB0F4(arg0)) {
        case 19:
        case 21:
        case 23:
        case 25:
            renderDrawDObjFromGObj(arg0);
            break;
        case 27:
        case 29:
            func_8001585C(arg0);
            break;
        case 20:
        case 22:
        case 24:
        case 26:
            gDPPipeSync(gDisplayListHeads[1]++);
            gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[id]);
            gSPNumLights(gDisplayListHeads[1]++, NUMLIGHTS_1);
            gSPLight(gDisplayListHeads[1]++, &arg1->l[0], 1);
            gSPLight(gDisplayListHeads[1]++, arg1, 2);
            gDPSetEnvColor(gDisplayListHeads[1]++, arg1->l[0].l.col[0], arg1->l[0].l.col[1], arg1->l[0].l.col[2], 0xFF);
            renderDrawObject_TypeD(arg0);
            gDPPipeSync(gDisplayListHeads[1]++);
            gSPLight(gDisplayListHeads[1]++, &D_8015A670_ovl6->l[0], 1);
            break;
        case 28:
        case 30:
            gDPPipeSync(gDisplayListHeads[1]++);
            gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[id]);
            gSPNumLights(gDisplayListHeads[1]++, NUMLIGHTS_1);
            gSPLight(gDisplayListHeads[1]++, &arg1->l[0], 1);
            gSPLight(gDisplayListHeads[1]++, arg1, 2);
            gDPSetEnvColor(gDisplayListHeads[1]++, arg1->l[0].l.col[0], arg1->l[0].l.col[1], arg1->l[0].l.col[2], 0xFF);
            func_80015BCC(arg0);
            gDPPipeSync(gDisplayListHeads[1]++);
            gSPLight(gDisplayListHeads[1]++, &D_8015A670_ovl6->l[0], 1);
            break;
    }
    gDPPipeSync(gDisplayListHeads[0]++);
    gSPLight(gDisplayListHeads[0]++, &D_8015A670_ovl6->l[0], 1);
}

void func_801524C8_ovl6(GObj *arg0) {
    gDPPipeSync(gDisplayListHeads[0]++);
    gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[arg0->objId]);
    gSPSetGeometryMode(gDisplayListHeads[0]++, G_FOG);
    gSPFogPosition(gDisplayListHeads[0]++, D_8015A7B8_ovl6.unk0, D_8015A7B8_ovl6.unk2);
    gDPSetCycleType(gDisplayListHeads[0]++, G_CYC_2CYCLE);
    gDPSetRenderMode(gDisplayListHeads[0]++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2);
    gDPSetFogColor(gDisplayListHeads[0]++, D_8015A7B8_ovl6.unk4, D_8015A7B8_ovl6.unk5, D_8015A7B8_ovl6.unk6, 255);
    switch (func_800AB0F4(arg0)) {
        case 19:
        case 21:
        case 23:
        case 25:
            renderDrawDObjFromGObj(arg0);
            break;
        case 27:
        case 29:
            func_8001585C(arg0);
            break;
        case 20:
        case 22:
        case 24:
        case 26:
            gDPPipeSync(gDisplayListHeads[1]++);
            gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[arg0->objId]);
            gSPSetGeometryMode(gDisplayListHeads[1]++, G_FOG);
            gSPFogPosition(gDisplayListHeads[1]++, D_8015A7B8_ovl6.unk0, D_8015A7B8_ovl6.unk2);
            gDPSetCycleType(gDisplayListHeads[1]++, G_CYC_2CYCLE);
            gDPSetRenderMode(gDisplayListHeads[1]++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2);
            gDPSetFogColor(gDisplayListHeads[1]++, D_8015A7B8_ovl6.unk4, D_8015A7B8_ovl6.unk5,
                           D_8015A7B8_ovl6.unk6, 255);
            renderDrawObject_TypeD(arg0);
            gDPPipeSync(gDisplayListHeads[1]++);
            gSPClearGeometryMode(gDisplayListHeads[1]++, G_FOG);
            gDPSetCycleType(gDisplayListHeads[1]++, G_CYC_1CYCLE);
            gDPSetRenderMode(gDisplayListHeads[1]++, G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2);
            break;
        case 28:
        case 30:
            gDPPipeSync(gDisplayListHeads[1]++);
            gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[arg0->objId]);
            gSPSetGeometryMode(gDisplayListHeads[1]++, G_FOG);
            gSPFogPosition(gDisplayListHeads[1]++, D_8015A7B8_ovl6.unk0, D_8015A7B8_ovl6.unk2);
            gDPSetCycleType(gDisplayListHeads[1]++, G_CYC_2CYCLE);
            gDPSetRenderMode(gDisplayListHeads[1]++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2);
            gDPSetFogColor(gDisplayListHeads[1]++, D_8015A7B8_ovl6.unk4, D_8015A7B8_ovl6.unk5,
                           D_8015A7B8_ovl6.unk6, 255);
            func_80015BCC(arg0);
            gDPPipeSync(gDisplayListHeads[1]++);
            gSPClearGeometryMode(gDisplayListHeads[1]++, G_FOG);
            gDPSetCycleType(gDisplayListHeads[1]++, G_CYC_1CYCLE);
            gDPSetRenderMode(gDisplayListHeads[1]++, G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2);
            break;
    }
    gDPPipeSync(gDisplayListHeads[0]++);
    gSPClearGeometryMode(gDisplayListHeads[0]++, G_FOG);
    gDPSetCycleType(gDisplayListHeads[0]++, G_CYC_1CYCLE);
    gDPSetRenderMode(gDisplayListHeads[0]++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
}

void func_80152B28_ovl6(GObj *arg0) {
    s32 sp1C;
    Lights1 *sp18;

    sp1C = arg0->objId;
    sp18 = D_8004A404;
    func_80151DDC_ovl6(sp1C);
    func_801514A0_ovl6(D_8015A570_ovl6[sp1C], sp18);
    gDynamicBuffer1.top += 0x18;
    func_80151E60_ovl6(arg0, sp18);
}

void func_80152B9C_ovl6(GObj *arg0) {
    s32 sp1C;
    Lights1 *sp18;

    sp1C = arg0->objId;
    sp18 = D_8004A404;
    func_80151DDC_ovl6(sp1C);
    func_801514A0_ovl6(D_8015A570_ovl6[sp1C], sp18);
    gDynamicBuffer1.top += 0x18;
    func_80152138_ovl6(arg0, sp18);
}

void func_80152C10_ovl6(GObj *arg0) {
    s32 sp1C;
    Lights1 *sp18;

    sp1C = arg0->objId;
    sp18 = D_8004A404;
    func_80151E10_ovl6(sp1C);
    func_801514A0_ovl6(D_8015A570_ovl6[sp1C], sp18);
    gDynamicBuffer1.top += 0x18;
    func_80151E60_ovl6(arg0, sp18);
}

void func_80152C84_ovl6(GObj *arg0) {
    s32 sp1C;
    Lights1 *sp18;

    sp1C = arg0->objId;
    sp18 = D_8004A404;
    func_80151E10_ovl6(sp1C);
    func_801514A0_ovl6(D_8015A570_ovl6[sp1C], sp18);
    gDynamicBuffer1.top += 0x18;
    func_80152138_ovl6(arg0, sp18);
}

void func_80152CF8_ovl6(GObj *gobj) {

}

void func_80152D00_ovl6(GObj *arg0) {
    u32 i;
    DObj *var_v0;

    var_v0 = arg0->data.dobj;
    if (var_v0 != NULL) {
        do {
            for (i = 0; i < var_v0->numMatrices; i++) {
                if (var_v0->matrices[i]->kind == 0x1C) {
                    var_v0->matrices[i]->unk05 = 1;
                }
            }
            if (var_v0->firstChild != NULL) {
                var_v0 = var_v0->firstChild;
            } else if (var_v0->next != NULL) {
                var_v0 = var_v0->next;
            } else {
loop_9:
                if (var_v0->parent == (DObj *)1) {
                    var_v0 = NULL;
                } else if (var_v0->parent->next != NULL) {
                    var_v0 = var_v0->parent->next;
                } else {
                    var_v0 = var_v0->parent;
                    goto loop_9;
                }
            }
        } while (var_v0 != NULL);
    }
}

void func_80152DB8_ovl6(void) {
    GObj *sp2C;
    s32 track;

    sp2C = omCurrentObj;
    track = request_track_general(0x11, D_8015A560_ovl6->unk3, D_8015A560_ovl6->unk3 + 1);
    omCurrentObj = D_800DE350[track];
    omEndProcess(gEntityGObjProcessArray[track]);
    omEndProcess(gEntityGObjProcessArray2[track]);
    omEndProcess(gEntityGObjProcessArray5[track]);
    omCurrentObj->onAnimate = func_801513F8_ovl6;
    omCreateProcess(omCurrentObj, animUpdateModelTreeAnimation, 1, 3);
    func_800A9864(D_8015A560_ovl6->unk4, 99999, 0x10);
    func_80152D00_ovl6(omCurrentObj);
    omCurrentObj = sp2C;
}

void func_80152EA8_ovl6(void) {
    void *func_800A9250(u32, s32);
    extern GObj *D_800DE350[];
    GObj *saved;
    u32 spec;
    s32 *slot;
    s32 val;
    u32 *bank;
    DObj *d;
    u8 *src;

    saved = omCurrentObj;
    spec = D_8015A560_ovl6->unk4;
    omCurrentObj = D_800DE350[D_8015A560_ovl6->unk3];
    slot = &((s32 **) &D_800D00C4)[spec >> 16][spec & 0xFFFF];
    val = *slot;
    if (val != 0) {
        gSegment4StartArray[omCurrentObj->objId] = (u32 *) val;
        func_800A8564(*slot, 1);
    } else {
        gSegment4StartArray[omCurrentObj->objId] = func_800A9250(spec, 3);
    }
    bank = gSegment4StartArray[omCurrentObj->objId];
    switch (bank[2]) {
        case 0x11:
        case 0x12:
        case 0x13:
        case 0x14:
        case 0x15:
        case 0x16:
            omCurrentObj->data.dobj->data.data = (void *) bank[0];
            break;
        case 0x17:
        case 0x18:
        case 0x19:
        case 0x1A:
        case 0x1B:
        case 0x1C:
        case 0x1D:
        case 0x1E:
            d = omCurrentObj->data.dobj;
            src = (u8 *) bank[0];
            while (d != NULL) {
                d->data.data = *(void **) (src + 4);
                if (d->firstChild != NULL) {
                    d = d->firstChild;
                } else if (d->next != NULL) {
                    d = d->next;
                } else {
                    while (TRUE) {
                        if ((u32) d->parent == 1) {
                            d = NULL;
                            break;
                        }
                        if (d->parent->next != NULL) {
                            d = d->parent->next;
                            break;
                        }
                        d = d->parent;
                    }
                }
                src += 0x2C;
            }
            break;
    }
    omCurrentObj = saved;
}

void func_80153040_ovl6(void) {
    D_8015A7A8_ovl6 = D_8015A7AC_ovl6 = D_8015A7B0_ovl6 = 0;
}

void func_80153064_ovl6(void) {
    UnkStruct8015A6A8_ovl6 *entry;
    u32 next;
    u32 b0;
    u32 ac;
    u32 a8;

    b0 = D_8015A7B0_ovl6;
    ac = D_8015A7AC_ovl6;
    if (ac != b0) {
        do {
            entry = &D_8015A6A8_ovl6[b0];
            if (entry->unk4 != 0) {
                func_800A8E54(entry->unk0, 3);
            } else {
                func_800A8D64(entry->unk0, 3);
            }
            next = D_8015A7B0_ovl6 + 1;
            if (next >= 0x20) {
                D_8015A7B0_ovl6 = 0;
            } else {
                D_8015A7B0_ovl6 = next;
            }
            ac = D_8015A7AC_ovl6;
            b0 = D_8015A7B0_ovl6;
        } while (ac != b0);
    }
    a8 = D_8015A7A8_ovl6;
    if (a8 != ac) {
        do {
            if (ac + 1 >= 0x20) {
                D_8015A7AC_ovl6 = 0;
            } else {
                D_8015A7AC_ovl6 = ac + 1;
            }
            ac = D_8015A7AC_ovl6;
        } while (a8 != ac);
    }
}

void func_8015314C_ovl6(s32 arg0, u8 arg1) {
    UnkStruct8015A6A8_ovl6 *entry;
    u32 next;

    if (arg0 != -1) {
        if ((D_8015A7AC_ovl6 != D_8015A7B0_ovl6) && (D_8015A7A8_ovl6 == D_8015A7B0_ovl6)) {
            fatal_printf("movie: Too many free data\n");
            for (;;) {
            }
        }
        entry = &D_8015A6A8_ovl6[D_8015A7A8_ovl6];
        entry->unk0 = arg0;
        entry->unk4 = arg1;
        next = D_8015A7A8_ovl6 + 1;
        if (next >= 0x20) {
            D_8015A7A8_ovl6 = 0;
        } else {
            D_8015A7A8_ovl6 = next;
        }
    }
}

s32 func_801531FC_ovl6(void) {
    if (D_8015A7B0_ovl6 == D_8015A7AC_ovl6) {
        return 0;
    }
    return 1;
}

void func_80153228_ovl6(s32 arg0) {
    s32 sp1C;
    s32 sp18;
    GObj *temp_v1;

    temp_v1 = D_800DE350[arg0];
    sp18 = D_800E02D0[arg0];
    if ((temp_v1->onDraw == func_800AD1A0) || (temp_v1->onDraw == func_801548F8_ovl6)) {
        if (temp_v1->unk4C != NULL) {
            func_800ACB7C(temp_v1->unk4C);
        }
        func_800B1900(arg0 & 0xFFFF);
        func_8015314C_ovl6(sp18, 1);
        return;
    }
    func_800B1900(arg0 & 0xFFFF);
    func_8015314C_ovl6(sp18, 0);
}

void func_801532CC_ovl6(void) {
    func_80153228_ovl6(D_8015A560_ovl6->unk3);
}

void func_801532F4_ovl6(GObj *arg0) {
    u32 i;
    s32 var_v1;
    OMMtx **walk;
    OMMtx *mtx;
    DObj *var_v0;

    var_v0 = arg0->data.dobj;
    if (var_v0 != NULL) {
        do {
            if (var_v0->animList == NULL) {
                var_v1 = 1;
            } else {
                var_v1 = 0;
            }
            i = 0;
            if (var_v0->numMatrices != 0) {
#ifdef PORT
                /* The matching build reaches the DObj's matrices array as
                 * raw word 22 off the struct base; LP64 field offsets moved,
                 * so use the named field (same walk as func_80152D00_ovl6). */
                do {
                    mtx = var_v0->matrices[i];
                    i++;
                    if (mtx->kind == 0x1C) {
                        mtx->unk05 = var_v1;
                    }
                } while (i < var_v0->numMatrices);
#else
                walk = (OMMtx **)var_v0;
                do {
                    mtx = walk[22];
                    i++;
                    if (mtx->kind == 0x1C) {
                        mtx->unk05 = var_v1;
                    }
                    walk++;
                } while (i < var_v0->numMatrices);
#endif
            }
            if (var_v0->firstChild != NULL) {
                var_v0 = var_v0->firstChild;
            } else if (var_v0->next != NULL) {
                var_v0 = var_v0->next;
            } else {
loop_11:
                if (var_v0->parent == (DObj *)1) {
                    var_v0 = NULL;
                } else if (var_v0->parent->next != NULL) {
                    var_v0 = var_v0->parent->next;
                } else {
                    var_v0 = var_v0->parent;
                    goto loop_11;
                }
            }
        } while (var_v0 != NULL);
    }
}

void func_801533C0_ovl6(void) {
    GObj *sp1C;

    sp1C = omCurrentObj;
    omCurrentObj = D_800DE350[D_8015A560_ovl6->unk3];
    func_800AA018(D_8015A560_ovl6->unk4);
    func_801532F4_ovl6(omCurrentObj);
    omCurrentObj = sp1C;
}

void func_80153424_ovl6(void) {
    GObj *sp1C;

    sp1C = omCurrentObj;
    omCurrentObj = D_800DE350[D_8015A560_ovl6->unk3];
    func_800AA018(D_8015A560_ovl6->unk4);
    omCurrentObj = sp1C;
}

void func_8015347C_ovl6(void) {
    D_800DE350[D_8015A560_ovl6->unk3]->onDraw = func_8015170C_ovl6;
}

void func_801534A8_ovl6(void) {
    D_800DE350[D_8015A560_ovl6->unk3]->onDraw = func_8015198C_ovl6;
}

void func_801534D4_ovl6(void) {
    D_800DE350[D_8015A560_ovl6->unk3]->onDraw = func_80152B28_ovl6;
    D_8015A570_ovl6[D_8015A560_ovl6->unk3] = D_800DE350[D_8015A560_ovl6->unk4];
}

void func_80153530_ovl6(void) {
    D_800DE350[D_8015A560_ovl6->unk3]->onDraw = func_80152B9C_ovl6;
    D_8015A570_ovl6[D_8015A560_ovl6->unk3] = D_800DE350[D_8015A560_ovl6->unk4];
}

void func_8015358C_ovl6(void) {
    D_800DE350[D_8015A560_ovl6->unk3]->onDraw = func_80152C10_ovl6;
    D_8015A570_ovl6[D_8015A560_ovl6->unk3] = D_800DE350[D_8015A560_ovl6->unk4];
}

void func_801535E8_ovl6(void) {
    D_800DE350[D_8015A560_ovl6->unk3]->onDraw = func_80152C84_ovl6;
    D_8015A570_ovl6[D_8015A560_ovl6->unk3] = D_800DE350[D_8015A560_ovl6->unk4];
}

void func_80153644_ovl6(void) {
    D_800DE350[D_8015A560_ovl6->unk3]->onDraw = func_801524C8_ovl6;
}

void func_80153670_ovl6(void) {
    func_800AAF34(0x10, D_8015A560_ovl6->unk4, 0);
}

void func_801536A0_ovl6(GObj *gobj) {

}

void func_801536A8_ovl6(void) {
    D_8015A56C_ovl6 = D_800DE350[D_8015A560_ovl6->unk3];
    D_8015A56C_ovl6->onDraw = func_801536A0_ovl6;
}

void func_801536E0_ovl6(void) {
    D_800DE350[D_8015A560_ovl6->unk3]->onDraw = func_801536A0_ovl6;
}

void func_8015370C_ovl6(void) {
    D_800D799C->data.cam->bgcolor = D_8015A560_ovl6->unk4;
}

void func_8015372C_ovl6(void) {
    D_800D799C->data.cam->flags &= ~2;
}

void func_8015374C_ovl6(GObj *arg0) {
    TextureScroll *ts = &arg0->data.dobj->mobjList->texture;

    if (ts->primColor.color.a != 0) {
        gDPPipeSync(gDisplayListHeads[1]++);
        gDPSetCombineMode(gDisplayListHeads[1]++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
        gDPSetRenderMode(gDisplayListHeads[1]++, G_RM_CLD_SURF, G_RM_CLD_SURF2);
        gDPSetPrimColor(gDisplayListHeads[1]++, 0, 0, ts->primColor.color.r, ts->primColor.color.g,
                        ts->primColor.color.b, ts->primColor.color.a);
        gDPFillRectangle(gDisplayListHeads[1]++, 48, 38, 272, 202);
        gDPPipeSync(gDisplayListHeads[1]++);
        gDPSetRenderMode(gDisplayListHeads[1]++, G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2);
    }
}

void func_80153868_ovl6(void) {
    GObj *sp1C;

    if ((D_8015A690_ovl6 == 0) && (D_800DE44C == NULL)) {
        sp1C = omCurrentObj;
        request_track_general(0x11, 0x3F, 0x40);
        omCurrentObj = D_800DE44C;
        omEndProcess(gEntityGObjProcessArray[0x3F]);
        omEndProcess(gEntityGObjProcessArray2[0x3F]);
        omEndProcess(gEntityGObjProcessArray5[0x3F]);
        omCreateProcess(omCurrentObj, animUpdateModelTreeAnimation, 1, 3);
        func_800A9864(D_8015A560_ovl6->unk4, 99999, 0xC);
        omCurrentObj = sp1C;
    }
}

void func_8015392C_ovl6(GObj *arg0) {
    TextureScroll *ts = &arg0->data.dobj->mobjList->texture;

    if (ts->primColor.color.a != 0) {
        gDPPipeSync(gDisplayListHeads[1]++);
        gDPSetCombineMode(gDisplayListHeads[1]++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
        gDPSetRenderMode(gDisplayListHeads[1]++, G_RM_CLD_SURF, G_RM_CLD_SURF2);
        gDPSetPrimColor(gDisplayListHeads[1]++, 0, 0, ts->primColor.color.r, ts->primColor.color.g,
                        ts->primColor.color.b, ts->primColor.color.a);
        gDPFillRectangle(gDisplayListHeads[1]++, 10, 10, 310, 230);
        gDPPipeSync(gDisplayListHeads[1]++);
        gDPSetRenderMode(gDisplayListHeads[1]++, G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2);
    }
}

void func_80153A48_ovl6(void) {
    D_8015A668_ovl6 = D_800DE350[D_8015A560_ovl6->unk3];
    omGMoveObjDLHead(D_8015A668_ovl6, 0x10, 1);
    D_8015A668_ovl6->onDraw = func_8015374C_ovl6;
}

void func_80153AA8_ovl6(void) {
    D_8015A66C_ovl6 = D_800DE350[D_8015A560_ovl6->unk3];
    D_8015A66C_ovl6->onDraw = func_801536A0_ovl6;
    D_800D799C->data.cam->flags |= 2;
}

void func_80153AF8_ovl6(void) {
    play_music(0, 0x99999999);
    play_music(0, D_8015A560_ovl6->unk4);
}

void func_80153B34_ovl6(GObj *arg0) {
    if (arg0->data.dobj->mobjList->timeRemaining == -3.4028235e38f) {
        func_80153228_ovl6(0x3F);
        func_80154858_ovl6();
    }
}

void func_80153B80_ovl6(GObj *arg0) {
    s32 temp_v0;

    temp_v0 = gPlayerControllers.buttonPressed;
    if ((temp_v0 & 0x9000) && (D_8015A68C_ovl6 & 1)) {
        func_80153E1C_ovl6(1);
        return;
    }
    if ((temp_v0 & 0x1000) && (D_8015A68C_ovl6 & 2)) {
        func_80153E1C_ovl6(2);
        return;
    }
    if ((temp_v0 & 0x4000) && (D_8015A68C_ovl6 & 0x10)) {
        func_80153E1C_ovl6(3);
    }
}

void func_80153C28_ovl6(void) {
    GObj *sp1C;

    sp1C = D_800DE350[0x3F];
    if ((D_8015A690_ovl6 == 0) && (sp1C != NULL)) {
        omCreateProcess(sp1C, func_80153B34_ovl6, 1, 3);
        omGMoveObjDLHead(sp1C, 0xC, 0);
        sp1C->onDraw = func_8015392C_ovl6;
        if (D_8015A6A0_ovl6 == NULL) {
            D_8015A6A0_ovl6 = HS64_omMakeGObj(0, func_80153B80_ovl6, 0, 0x80000000);
        }
    }
}

void func_80153CBC_ovl6(GObj *arg0) {
    func_8015392C_ovl6(arg0);
    if (arg0->data.dobj->mobjList->timeRemaining == -3.4028235e38f) {
        D_8015A698_ovl6 = 2;
    }
}

void func_80153D10_ovl6(void) {
    GObj *sp1C;

    if (D_8015A690_ovl6 == 0) {
        sp1C = omCurrentObj;
        omCurrentObj = D_800DE350[0x3F];
        func_800AA018(D_8015A560_ovl6->unk4);
        omCurrentObj = sp1C;
    }
}

void func_80153D6C_ovl6(void) {
    GObj *sp1C;

    if (D_8015A690_ovl6 == 0) {
        sp1C = D_800DE350[0x3F];
        omGMoveObjDLHead(sp1C, 0xC, 0);
        sp1C->onDraw = func_80153CBC_ovl6;
        func_801548A4_ovl6();
        D_8015A698_ovl6 = 1;
    }
}

void func_80153DC8_ovl6(GObj *arg0) {
    func_8015392C_ovl6(arg0);
    if (arg0->data.dobj->mobjList->timeRemaining == -3.4028235e38f) {
        D_8015A694_ovl6 = 1;
    }
}

void func_80153E1C_ovl6(s32 arg0) {
    GObj *sp1C;
    UnkStruct8015A560_ovl6 *sp18;

    sp1C = D_800DE44C;
    if (sp1C == NULL) {
        sp18 = D_8015A560_ovl6;
        D_8015A560_ovl6 = D_80154E48_ovl6;
        D_80154DC0_ovl6[D_8015A560_ovl6->unk2]();
        D_8015A560_ovl6++;
        D_80154DC0_ovl6[D_8015A560_ovl6->unk2]();
        D_8015A560_ovl6 = sp18;
        sp1C = D_800DE44C;
        omGMoveObjDLHead(sp1C, 0xC, 0);
        sp1C->onDraw = func_80153DC8_ovl6;
        func_801548A4_ovl6();
        D_8015A690_ovl6 = arg0;
        D_8015A698_ovl6 = 1;
    }
}

void func_80153F00_ovl6(void) {
#ifdef PORT
    /* The script blobs keep their SECOND word as the full N64 u32 value
     * (see pc_ovl6_fix_scripts), so the N64's low-half ->drawRate read is
     * unk4 & 0xFFFF here. */
    gtlSetUpdateDrawRate(1, (u16)D_8015A560_ovl6->unk4);
#else
    gtlSetUpdateDrawRate(1, D_8015A560_ovl6->drawRate);
#endif
}

SPObj *func_80153F2C_ovl6(void) {
    GObj *sp34;
    SPObj *sp30;
    s32 track;

    sp34 = omCurrentObj;
    track = request_track_3(0x11, D_8015A560_ovl6->unk3, D_8015A560_ovl6->unk3 + 1);
    omCurrentObj = D_800DE350[track];
    omEndProcess(gEntityGObjProcessArray[track]);
    omEndProcess(gEntityGObjProcessArray2[track]);
    omEndProcess(gEntityGObjProcessArray5[track]);
    D_800E02D0[track] = D_8015A560_ovl6->unk4;
    sp30 = func_800AC954(omCurrentObj, 1, func_800A8C40(D_8015A560_ovl6->unk4));
    sp30->renderFlags |= 4;
    omLinkGObjDL(omCurrentObj, func_800AD1A0, 0xE, 0x10, 0xE);
    omCurrentObj = sp34;
    return sp30;
}

void func_8015403C_ovl6(void) {
    func_80153F2C_ovl6();
}

void func_8015405C_ovl6(void) {
    SPObj *temp_v0;

    temp_v0 = func_80153F2C_ovl6();
    temp_v0->renderFlags |= 2;
}

void func_80154088_ovl6(void) {
    u32 temp_a0;
    SPObj *temp_v0;

    temp_v0 = D_800DE350[D_8015A560_ovl6->unk3]->unk4C;
    temp_a0 = D_8015A560_ovl6->unk4;
    temp_v0->xOffset = (temp_a0 & 0xFFFF0000) >> 0x10;
    temp_v0->yOffset = temp_a0 & 0xFFFF;
}

void func_80154100_ovl6(void) {
    SPObj *temp_v0;
    u32 temp_t5;

    temp_v0 = D_800DE350[D_8015A560_ovl6->unk3]->unk4C;
    temp_t5 = D_8015A560_ovl6->unk4;
    temp_v0->primColorRed = (temp_t5 & 0xFF000000) >> 0x18;
    temp_v0->primColorGreen = (temp_t5 & 0xFF0000) >> 0x10;
    temp_v0->primColorBlue = (temp_t5 & 0xFF00) >> 8;
    temp_v0->primColorAlpha = temp_t5 & 0xFF;
}

void func_80154158_ovl6(void) {
    D_8015A7C0_ovl6 = D_8015A560_ovl6;
    D_8015A560_ovl6 = *(UnkStruct8015A560_ovl6 **)&D_8015A560_ovl6->unk4;
    D_8015A560_ovl6--;
}

void func_80154180_ovl6(void) {
    func_80007C00(&D_800D799C->data.cam->viewport, 10.0f, 10.0f, 310.0f, 230.0f);
    D_800D7998->flags &= ~1;
    func_80153228_ovl6(0x3E);
}

void func_801541EC_ovl6(void) {
    func_8009C0E4();
    func_800A2024();
}

void func_80154214_ovl6(void) {
    u32 temp_v0;

    temp_v0 = D_8015A560_ovl6->unk4;
    D_8015A7B8_ovl6.unk4 = (temp_v0 & 0xFF000000) >> 0x18;
    D_8015A7B8_ovl6.unk5 = (temp_v0 & 0xFF0000) >> 0x10;
    D_8015A7B8_ovl6.unk6 = (temp_v0 & 0xFF00) >> 8;
}

void func_80154258_ovl6(void) {
    u32 temp_t9 = D_8015A560_ovl6->unk4;

    D_8015A7B8_ovl6.unk0 = (temp_t9 & 0xFFFF0000) >> 0x10;
    D_8015A7B8_ovl6.unk2 = temp_t9 & 0xFFFF;
}

s32 func_80154284_ovl6(void) {
    extern GObj *D_800DE350[];
    s32 i;

    if (D_8015A69C_ovl6 != 0) {
        return 0;
    }
    if (D_8015A698_ovl6 == 0) {
        for (i = 0; i != 62; i++) {
            if ((D_800DE350[i] != NULL) && (D_800DFF50[i] != -1) && ((D_800DD8D0[i] & 0xC0000000) == 0)) {
                return 0;
            }
        }
        goto ret1;
    }
    if (D_8015A698_ovl6 == 1) {
        return 0;
    }
ret1:
    return 1;
}

void func_80154464_ovl6(void) {
    GObj **var_s1;
    s32 var_s0;

    var_s1 = D_800DE350;
    var_s0 = 0;
    do {
        if (*var_s1 != NULL) {
            func_80153228_ovl6(var_s0);
        }
        var_s0++;
        var_s1++;
    } while (var_s0 != 0x3E);
    func_8009C0E4();
    func_800A2024();
    D_8015A560_ovl6 = *D_8015A564_ovl6;
    func_80154628_ovl6();
}

/* 87/89 but structurally instruction-for-instruction: the residue is one
 * saved-register assignment (the ROM shares s1 between &D_8015A564 and
 * &D_8015A7C0, IDO allocates six saved regs instead of five, shifting every
 * s-number). Semantics verified against the listing token by token. */
#ifdef NON_MATCHING
void func_801544E8_ovl6(GObj *gobj) {
    s32 func_80154284_ovl6(void);
    UnkStruct8015A560_ovl6 *p;
    u32 c;

    p = D_8015A560_ovl6;
    if (p->unk2 == 0x22) {
        if (*D_8015A564_ovl6 == NULL) {
            return;
        }
        if (func_80154284_ovl6() == 0) {
            return;
        }
        D_8015A564_ovl6++;
        if (*D_8015A564_ovl6 != NULL) {
            func_80154464_ovl6();
            p = D_8015A560_ovl6;
        } else {
            func_800067B8();
            return;
        }
    }
    if (D_8015A568_ovl6 == p->unk0) {
        c = p->unk2;
        while (c != 0x22) {
            D_80154DC0_ovl6[c]();
            p = D_8015A560_ovl6 + 1;
            D_8015A560_ovl6 = p;
            if ((p->unk2 == 0x22) && (D_8015A7C0_ovl6 != NULL)) {
                p = D_8015A7C0_ovl6 + 1;
                D_8015A560_ovl6 = p;
                D_8015A7C0_ovl6 = NULL;
            }
            if (D_8015A568_ovl6 != p->unk0) {
                goto inc;
            }
            c = p->unk2;
        }
    } else {
inc:
        D_8015A568_ovl6 += 1;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_801544E8_ovl6.s")
#endif

/* 20/27: 27 insns vs the ROM's 26. IDO addresses the two peeled elements the
 * ROM's way (%lo(A570)($at) / %lo(A574)($at)) but schedules the first store
 * immediately after its own lui and re-materialises $at for the second.
 * Re-swept 2026-08 fresh from the listing: explicit 2-element peel + 60-loop
 * over D_8015A578_ovl6 (register base, 27), peel via the D_8015A574_ovl6
 * scalar (lui/sw/lui/sw, 27), chained assignment (28), pointer loop bounded by
 * &D_8015A668_ovl6 (36). All 27+; the shared $at needs the two stores adjacent
 * in the schedule and nothing source-level moves them. */
#ifdef NON_MATCHING
void func_80154628_ovl6(void) {
    s32 i;

    D_8015A56C_ovl6 = NULL;
    D_8015A668_ovl6 = NULL;
    D_8015A66C_ovl6 = NULL;
    for (i = 0; i < 62; i++) {
        D_8015A570_ovl6[i] = NULL;
    }
    D_8015A568_ovl6 = 0;
    D_8015A7C0_ovl6 = NULL;
    D_8015A698_ovl6 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80154628_ovl6.s")
#endif

void func_80154690_ovl6(void) {
    gameSetUpdateRate(1.0f);
    func_80154628_ovl6();
    HS64_omMakeGObj(1, func_801544E8_ovl6, 1, 0x80000000);
}

void func_801546D8_ovl6(GObj *arg0) {
    ColorPack *c;

    if (D_8015A66C_ovl6 != NULL) {
        c = &D_8015A66C_ovl6->data.dobj->mobjList->texture.primColor;
        D_800D799C->data.cam->bgcolor = (c->color.r << 0x18) | (c->color.g << 0x10) | (c->color.b << 8) | 0xFF;
    }
    animUpdateCameraAnimation(arg0);
}

void func_80154748_ovl6(void) {
    func_800A6BC0(2);
    D_800D799C->data.cam->flags |= 1;
    D_800D799C->data.cam->matrices[1]->kind = 0xC;
    D_800D799C->data.cam->flags |= 2;
    if (D_8015A68C_ovl6 & 8) {
        D_800D799C->data.cam->bgcolor = 0xFF0000FF;
    }
    D_800D799C->data.cam->bgcolor = 0xFF;
    omCreateProcess(D_800D799C, func_801546D8_ovl6, 1, 0);
    D_800D7998->flags |= 1;
}

void func_80154810_ovl6(GObj *arg0) {
    SPObj *temp_v0;

    if (D_8015A684_ovl6 == 0) {
        temp_v0 = arg0->unk4C;
        temp_v0->renderFlags |= 8;
        omEndProcess(NULL);
        D_8015A688_ovl6 = NULL;
    }
}

void func_80154858_ovl6(void) {
    GObj *temp_a0;

    temp_a0 = D_800DE350[0x3E];
    if (temp_a0 != NULL) {
        D_8015A684_ovl6 = 4;
        D_8015A688_ovl6 = omCreateProcess(temp_a0, func_80154810_ovl6, 1, 3);
    }
}

void func_801548A4_ovl6(void) {
    GObj *temp_v1;
    SPObj *temp_v0;

    temp_v1 = D_800DE350[0x3E];
    if (temp_v1 != NULL) {
        if (D_8015A688_ovl6 != NULL) {
            omEndProcess(D_8015A688_ovl6);
            return;
        }
        temp_v0 = temp_v1->unk4C;
        temp_v0->renderFlags &= 0xFFF7;
    }
}

void func_801548F8_ovl6(GObj *arg0) {
    if (D_8015A688_ovl6 != NULL) {
        D_8015A684_ovl6 -= 1;
    }
    func_800AD1A0(arg0);
}

void func_80154938_ovl6(void) {
    GObj *sp34;
    SPObj *sp30;
    s32 track;
    s32 var_a0;

    track = request_track_3(0x11, 0x3E, 0x3F);
    sp34 = D_800DE350[track];
    omEndProcess(gEntityGObjProcessArray[track]);
    omEndProcess(gEntityGObjProcessArray2[track]);
    omEndProcess(gEntityGObjProcessArray5[track]);
    if (D_8015A68C_ovl6 & 4) {
        var_a0 = 0x40002;
    } else {
        var_a0 = 0x40001;
    }
    D_800E02D0[track] = var_a0;
    sp30 = func_800AC954(sp34, 0, func_800A8C40(var_a0));
    omLinkGObjDL(sp34, func_801548F8_ovl6, 0x12, 0x10, 0x12);
    sp30->xOffset = 10.0f;
    sp30->yOffset = 10.0f;
    D_8015A688_ovl6 = NULL;
}

/* 8/53: every instruction and register exact; residue is two scheduling
 * clusters (prev=cnt vs the beqz delay slot, and the savep-restore lbu/move
 * order). Swept: u8-vs-u32 token type (u32 required), sentinel local for the
 * 0x22 constant (required), n-temp (required), switch arms (required),
 * branch polarity, duplicated prev-store, (u32) bias casts. */
#ifdef NON_MATCHING
s32 func_80154A40_ovl6(void) {
    UnkStruct8015A560_ovl6 *p;
    UnkStruct8015A560_ovl6 *savep;
    UnkStruct8015A560_ovl6 **q;
    UnkStruct8015A560_ovl6 *n;
    u32 max;
    u32 prev;
    u32 cnt;
    u32 t;
    u32 c;
    u32 tok;

    p = D_8015A560_ovl6;
    q = D_8015A564_ovl6;
    /* PORT: this function is a #pragma GLOBAL_ASM on the matching build, so the
     * body here is a non-matching DRAFT and is only ever compiled for the port.
     * The draft's traversal is untrustworthy: it walks the script lists past
     * the end and faults at `p[1].unk2` (and gtlStart's postInitFunc can reach
     * it while both list pointers are still NULL BSS). The real function is
     * assembly, and its result feeds func_800AE048 as the SPObj pool size --
     * returning 0 starves the pool and pop_spobj() hands NULL to callers that
     * never check (measured crash: func_80154938_ovl6 storing through a NULL
     * SPObj). Over-provision instead until this is genuinely matched:
     * 128 objects x 0x100 bytes = 32KB out of the 64MB port arena. */
    (void)p;
    (void)q;
    return 128;
    savep = NULL;
    max = 0;
    prev = 0;
    cnt = 0;
    c = p->unk2;
    tok = 0x22;
top:
    if (tok == c) {
        t = cnt + prev;
        prev = cnt;
        if (max < t) {
            max = t;
        }
        n = q[1];
        q++;
        cnt = 0;
        if (n == NULL) {
            goto ret;
        }
        p = n;
        c = n->unk2;
        goto dispatch;
    }
dispatch:
    if (tok == c) {
        goto top;
    }
    switch (c) {
        case 0x18:
        case 0x1F:
            cnt++;
            break;
        case 0x21:
            savep = p;
            p = (UnkStruct8015A560_ovl6 *) (p->unk4 - 8);
            break;
    }
    c = p[1].unk2;
    p++;
    if ((tok == c) && (savep != NULL)) {
        p = savep + 1;
        c = ((volatile UnkStruct8015A560_ovl6 *) p)->unk2;
        savep = NULL;
    }
    goto top;
ret:
    return max + 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80154A40_ovl6.s")
#endif

void func_80154B14_ovl6(void) {
    D_8015A694_ovl6 = 0;
    D_8015A690_ovl6 = 0;
    D_8015A69C_ovl6 = 0;
    D_8015A6A0_ovl6 = NULL;
    func_80153040_ovl6();
    func_80154690_ovl6();
    func_800AE048(func_80154A40_ovl6());
    func_800AE0F0();
    func_800A6E64();
    func_801512F0_ovl6();
    func_800A8724(1);
    func_801513C8_ovl6();
    func_80154748_ovl6();
    func_80154938_ovl6();
}

void func_80154BA0_ovl6(Gfx **arg0) {
    gSPDisplayList((*arg0)++, D_80154E58_ovl6);
    if (D_8015A56C_ovl6 != NULL) {
        D_8015A670_ovl6 = (Lights1 *)gDynamicBuffer1.top;
        gDynamicBuffer1.top += 0x18;
        func_8015166C_ovl6(arg0);
    }
}

void func_80154C08_ovl6(void) {
    omDrawAll();
    func_80153064_ovl6();
    func_800AC610();
}

#ifdef PORT
/* PORT: byte-order fixup for the movie scripts.
 *
 * The regenerated PC data (build/pc/data/ovl6_ovl6.data.c) emits the movie
 * script blobs (D_80154F30_ovl6 & co.) as u32 words holding the N64 word
 * VALUES. That is correct for every u32 field, but each script entry is
 * really { u16 unk0; u8 unk2; u8 unk3; u32 unk4; }: on this little-endian
 * host the struct reads pull unk0 from the LOW half and unk2/unk3 from the
 * HIGH bytes of the first word, so every timestamp read 0, every opcode
 * dispatched as byte 2 of the timestamp (usually op 0 -- which is why the
 * sequencer looped func_80152DB8_ovl6 spawning actor track 0 forever and
 * then crashed on track -1). This pass repacks each entry's FIRST word once
 * so the natural little-endian struct reads yield the N64 field values;
 * the second word stays as-is (it is consumed as a full u32 -- model ids,
 * colors, frame counts; the ->drawRate half-word read has its own PORT
 * read-site fix in func_80153F00_ovl6).
 *
 * D_80158E30_ovl6/D_80158E60_ovl6 are emitted as POINTER arrays instead
 * (they embed a &script operand for op 0x21), which on LP64 gives them a
 * 16-byte entry stride no struct walk here can read; they belong to the
 * later movie compilations, not the boot intro, and are skipped (running
 * one of those movies needs its own port pass).
 *
 * D_80154E48_ovl6 (the inline 2-entry script func_80153E1C_ovl6 runs) is
 * emitted as raw N64 BYTES instead: its packed fields are already right on
 * the host and only its u32 operand words need a swap; that is folded into
 * the first call here. */
extern void *D_80158E30_ovl6[];
extern void *D_80158E60_ovl6[];

static void pc_ovl6_fix_scripts(UnkStruct8015A560_ovl6 **list) {
    static const void *seen[256];
    static int nseen;
    static int e48done;

    if (!e48done) {
        u32 *e48 = (u32 *)D_80154E48_ovl6;
        e48done = 1;
        e48[1] = __builtin_bswap32(e48[1]);
        e48[3] = __builtin_bswap32(e48[3]);
    }
    for (; *list != NULL; list++) {
        u32 *w = (u32 *)*list;
        int i;
        int already = 0;

        if (w == (u32 *)D_80158E30_ovl6 || w == (u32 *)D_80158E60_ovl6) {
            continue; /* pointer-stride blob, see above */
        }
        for (i = 0; i < nseen; i++) {
            if (seen[i] == (void *)w) {
                already = 1;
                break;
            }
        }
        if (already) {
            continue;
        }
        if (nseen < (int)(sizeof(seen) / sizeof(seen[0]))) {
            seen[nseen++] = (void *)w;
        }
        for (i = 0; i < 0x1000; i++, w += 2) {
            u32 raw = w[0];
            u32 op = (raw >> 8) & 0xFF;
            w[0] = (raw >> 16) | ((raw & 0xFF00) << 8) | ((raw & 0xFF) << 24);
            if (op == 0x22) {
                break;
            }
        }
    }
}
#endif /* PORT */

void func_80154C38_ovl6(s32 arg0) {
    D_8015A564_ovl6 = D_8015A3B4_ovl6[arg0];
#ifdef PORT
    {
        UnkStruct8015A560_ovl6 **q = D_8015A564_ovl6;
        pc_ovl6_fix_scripts(q);
    }
#endif
    D_8015A560_ovl6 = *D_8015A564_ovl6;
}

/* 24/63: semantically complete; residue is a pure register-class rotation
 * (ROM parks the CSE'd fb0/D_803DA800 temps in t6/t7/t0, IDO picks v1/a2/a3)
 * plus the frame that follows from it. Swept: named-local vs inline CSE,
 * declaration order, flat vs [][320] extern types. */
/* 24/63. The whole residue follows from the frame: the ROM is 0x20, IDO gives
 * 0x28. Measured 2026-08 that IDO's frame here is exactly
 * align8(0x1C + 4 * <number of DECLARED locals>) -- 2 locals and 3 locals both
 * give 0x28, 5 locals give 0x30 -- so the ROM's 0x20 needs ONE declared local,
 * and the ROM's single stack slot (0x1C, holding fb0 across the
 * viApplyScreenSettings call) is that local. Both loop pointers are therefore
 * compiler temps in the ROM, and every spelling tried that removes p and/or end
 * as named locals makes IDO recompute the bound instead (63 insns -> 70):
 * fb0 inlined at all five use sites; p walked as fb0 itself; p/end declared in
 * the two branch scopes (adds 8, frame 0x30); `register` on p/end (ignored).
 * Next idea if anyone picks this up: find a loop spelling that keeps the
 * hoisted bound but names neither pointer. */
/* 24/63. The whole residue follows from the frame: the ROM is 0x20, IDO gives
 * 0x28. Measured 2026-08: IDO's locals base here is 0x1C and the frame is
 * align8(0x1C + 4*N) for N DECLARED locals -- N=1 gives 0x20 with the slot at
 * 0x1C (the ROM's exact layout), N=2 and N=3 both give 0x28, N=5 gives 0x30.
 * So the ROM has exactly ONE declared local, the fb0 spilled across
 * viApplyScreenSettings, and BOTH loop pointers are compiler temps there.
 * Everything tried that removes p/end as named locals makes IDO recompute the
 * loop bound instead (63 insns -> 70): fb0 inlined at all five use sites; p
 * walked as fb0 itself; p/end declared in the two branch scopes, with and
 * without initialisers (adds 8, frame 0x30); `register` (ignored).
 * NOTE: the block-scope trick that closed func_80156560_ovl4 (a loop-body local
 * with an initialiser gets NO frame slot) does NOT apply here -- measured, a
 * local declared in an if/else branch body still costs a full slot. Whatever
 * spelling wins here has to keep the bound hoisted and name neither pointer. */
#ifdef NON_MATCHING
void func_80154C64_ovl6(void) {
    extern u16 gFrameBuffer[];
    extern u16 D_803DA800[];
    extern u16 D_8012EB00[];
    extern u8 D_8015A7D0;
    extern void *D_80154E80_ovl6[];
    extern s32 D_80154EAC_ovl6;
    void viApplyScreenSettings(void *);
    u16 *p;
    u16 *end;
    u16 *fb0;

    fb0 = (u16 *) ((u32) gFrameBuffer - 0x25800);
    D_8015A678_ovl6[0] = fb0;
    D_8015A678_ovl6[1] = gFrameBuffer;
    D_8015A678_ovl6[2] = D_803DA800;
    D_80154E80_ovl6[0] = fb0;
    D_80154E80_ovl6[1] = gFrameBuffer;
    D_80154E80_ovl6[2] = D_803DA800;
    D_80154E80_ovl6[3] = (void *) ((u32) D_8012EB00 - 0x1900);
    viApplyScreenSettings(&D_80154E80_ovl6);
    D_80154EAC_ovl6 = (u32) fb0 - (u32) &D_8015A7D0;
    if (!(D_8015A68C_ovl6 & 8)) {
        end = (u16 *) ((u32) fb0 + 0x6EF00);
        p = fb0;
        while (p < end) {
            *p++ = 1;
        }
    } else {
        end = (u16 *) ((u32) fb0 + 0x25800);
        p = fb0;
        while (p < end) {
            *p++ = 1;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80154C64_ovl6.s")
#endif

s32 func_80154D60_ovl6(s32 arg0, s32 arg1) {
    D_8015A68C_ovl6 = arg1;
    func_80005350(func_80151138_ovl6);
    func_80154C64_ovl6();
    func_80154C38_ovl6(arg0);
    gtlCreateScene(&D_80154E9C_ovl6);
    func_800A74D8();
    func_80005350(NULL);
    return D_8015A690_ovl6;
}
