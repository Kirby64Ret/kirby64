/* Second translation unit of ovl17.c.
 *
 * func_801DD2B0_ovl17 ends at 0x228624 and its listing carries three
 * nops up to 0x228630 -- exactly align16(end)-end, the signature of an
 * object boundary rather than inter-function padding. While the two
 * TUs were spelled as one `c` subsegment those nops sat INSIDE that
 * function's listing, so it could never be converted: its C body is
 * byte-exact but twelve bytes short. Splitting here lets SUBALIGN(16)
 * emit the fill instead, the same fix already applied to
 * ovl15/ovl15b. */

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

extern f32 D_801E5558_ovl17;
extern f32 D_801E55A0_ovl17;
extern f32 D_801E55A4_ovl17;
extern f32 D_801E5578_ovl17;
extern f32 D_801E557C_ovl17;
extern f32 D_801E5580_ovl17;

/* func_801DB1E0_ovl17 stores 0.0f/1200.0f into unkC/unk10/unk14 with swc1,
   so the three trailing words are floats, not s32. Same layout either way. */
struct Ovl17CamPos {
    Vector unk0;
    f32 unkC;
    f32 unk10;
    f32 unk14;
};

extern struct Ovl17CamPos D_800D7B20;
extern Vector D_800D7B2C;
extern struct Ovl17CamPos D_800D7B38;
extern Vector D_801E4E60_ovl17;
extern Vector D_801E4E6C_ovl17;
extern s32 D_800D6B54;
extern s32 D_800D6B58;
extern s32 D_800BE4F8;
extern void auFunc80020C88(void);
extern void func_800A7EB4(void);
extern void func_8011DA34(void);
extern void play_music(s32, s32);
extern f32 D_800D715C;
extern f32 D_800D7160;
extern f32 D_800D7164;
extern f32 D_800D7168;
extern f32 D_800D716C;
extern f32 D_801E56F0_ovl17;
extern f32 D_801E56F4_ovl17;
extern f32 D_801E56F8_ovl17;

void func_801DD440_ovl17(struct GObj *arg0) {
    func_800A9864(0x100EC, 0x23, 0x10);
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], &procMainStub);
    func_800AA018(0x1067C);
    func_800AA018(0x1067D);
    arg0->data.dobj->pos.v.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    arg0->data.dobj->pos.v.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    arg0->data.dobj->pos.v.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    arg0->data.dobj->angle.v.x = gEntitiesAngleXArray[omCurrentObj->objId];
    arg0->data.dobj->angle.v.y = gEntitiesAngleYArray[omCurrentObj->objId];
    arg0->data.dobj->angle.v.z = gEntitiesAngleZArray[omCurrentObj->objId];
    arg0->data.dobj->scale.v.x = gEntitiesScaleXArray[omCurrentObj->objId];
    arg0->data.dobj->scale.v.y = gEntitiesScaleYArray[omCurrentObj->objId];
    arg0->data.dobj->scale.v.z = gEntitiesScaleZArray[omCurrentObj->objId];
    ohSleep(0x126);
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    curObjSleepForever();
}

void func_801DD60C_ovl17(struct GObj *arg0) {
    f32 temp_f0;

    temp_f0 = 0.2f;
    D_800DEF90[omCurrentObj->objId] = &func_800B5094;
    D_800DDA90[omCurrentObj->objId] = 0x25;
    D_800E0F10[omCurrentObj->objId] = 0x19;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp_f0;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp_f0;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp_f0;
    func_800A9864(0x100F1, 0x23, 0x10);
    func_800AA018(0x1068D);
    func_800AA018(0x1068E);
    func_800AF27C();
    func_800B1900((u16) omCurrentObj->objId);
}

s32 func_800A8234(s32, s32, s32);
void func_800A22D4(struct GObj *);
void func_800BC0F0(s32);
void func_800B4924(struct GObj *);

void func_801DD704_ovl17(struct GObj *arg0) {
    f32 temp_f0;

    temp_f0 = 0.2f;
    D_800DEF90[omCurrentObj->objId] = &func_800B4924;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp_f0;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp_f0;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp_f0;
    D_800DDA90[omCurrentObj->objId] = 0x22;
    D_800DF150[omCurrentObj->objId] = &func_801DD88C_ovl17;
    func_800A9864(0x100F3, 0x23, 0x10);
    func_800AA018(0x10690);
    func_800AA018(0x10692);
    D_800E98E0[omCurrentObj->objId] = func_800A8234(0, 0, 0x42);
    ohSleep(0x82);
    play_sound(0x264);
    func_800BC0F0(1);
    ohSleep(0x20);
    play_sound(0x266);
    func_800BC0F0(2);
    func_800AF27C();
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        func_800A22D4((struct GObj *) D_800E98E0[omCurrentObj->objId]);
    }
    func_800B1900((u16) omCurrentObj->objId);
}

void func_801DD88C_ovl17(struct GObj *arg0) {
    GObj *temp_v1;
    struct DObj *temp_t7;
    s32 temp_v0;

    temp_v1 = (GObj *) D_800E98E0[omCurrentObj->objId];
    temp_t7 = D_800DFBD0[omCurrentObj->objId][5];
    if (temp_v1 != NULL) {
        temp_v0 = (s32) temp_v1->unk4C;
        if (temp_v0 != 0) {
            func_800B2340((Vector *) (temp_v0 + 4), temp_t7, 0xFFFF);
        }
    }
}

/* ovl17.c's trailing alignment padding: 48 bytes that splat put at the head
 * of ovl17_2. It has to assemble at the END of THIS translation unit, or
 * ovl17_2's .text base is 16 mod 32 and every dead epilogue in it is
 * misaligned (func_801DDB8C_ovl17, func_801DDF6C_ovl17). */
/* The listing lives in asm_manual/ (committed) because a fresh splat split of
 * the current yaml no longer emits it, and asm/ is gitignored. */
#pragma GLOBAL_ASM("asm_manual/ovl17/func_801DD8F0_ovl17.s")
