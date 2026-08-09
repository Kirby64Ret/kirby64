#include "common.h"
#include "track_arrays.h"

struct UnkEA20 {
    /* 0x00 */ char pad0[0xC];
    /* 0x0C */ Vector unkC;
    /* 0x18 */ s32 unk18;
};

s32 func_8010E8F0(Vector *, s32, Vector *, s32, s32);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_8/func_8010E5B0.s")

void func_8010E6F0(Vector *arg0, s32 arg1) {
    arg0->x += gEntitiesNextPosXArray[arg1];
    arg0->y += gEntitiesNextPosYArray[arg1];
    arg0->z += gEntitiesNextPosZArray[arg1];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_8/func_8010E740.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_8/func_8010E8F0.s")

s32 func_8010EA20(struct UnkEA20 *arg0, struct UnkEA20 *arg1, s32 arg2) {
    return func_8010E8F0(&arg0->unkC, arg0->unk18, &arg1->unkC, arg1->unk18, arg2);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_8/func_8010EA68.s")

struct UnkEE24 {
    /* 0x00 */ char pad0[0xC];
    /* 0x0C */ f32 unkC;
    /* 0x10 */ f32 unk10;
    /* 0x14 */ f32 unk14;
    /* 0x18 */ f32 unk18;
    /* 0x1C */ f32 unk1C;
};

s32 func_8010EE24(struct UnkEE24 *arg0, struct UnkEE24 *arg1) {
    f32 rx = arg0->unk18 + arg1->unk18;
    f32 dx = arg0->unkC - arg1->unkC;
    f32 ry;
    f32 dy;
    f32 dz;

    if ((rx < dx) || (dx < -rx)) {
        return 0;
    }
    ry = arg0->unk1C + arg1->unk1C;
    dy = arg0->unk10 - arg1->unk10;
    if ((ry < dy) || (dy < -ry)) {
        return 0;
    }
    dz = arg0->unk14 - arg1->unk14;
    if ((rx < dz) || (dz < -rx)) {
        return 0;
    }
    return 1;
}

s32 func_8010EEE8(struct UnkEE24 *arg0, struct UnkEE24 *arg1) {
    f32 rx = arg0->unk18 + arg1->unk18;
    f32 dx = arg0->unkC - arg1->unkC;
    f32 ry;
    f32 dy;
    f32 dz;

    if ((rx < dx) || (dx < -rx)) {
        return 0;
    }
    ry = arg0->unk1C + arg1->unk18;
    dy = arg0->unk10 - arg1->unk10;
    if ((ry < dy) || (dy < -ry)) {
        return 0;
    }
    dz = arg0->unk14 - arg1->unk14;
    if ((rx < dz) || (dz < -rx)) {
        return 0;
    }
    return 1;
}

struct UnkEFA8 {
    /* 0x00 */ char pad0[0xC];
    /* 0x0C */ f32 unkC;
    /* 0x10 */ f32 unk10;
    /* 0x14 */ f32 unk14;
    /* 0x18 */ f32 unk18;
    /* 0x1C */ f32 unk1C;
    /* 0x20 */ f32 unk20;
    /* 0x24 */ f32 unk24;
};

s32 func_8010EFA8(struct UnkEE24 *arg0, struct UnkEFA8 *arg1) {
    f32 r = arg0->unk18 + arg1->unk24;
    f32 r2;

    if (arg1->unkC < arg1->unk18) {
        if ((arg0->unkC < arg1->unkC - r) || (arg1->unk18 + r < arg0->unkC)) {
            return 0;
        }
    } else {
        if ((arg0->unkC < arg1->unk18 - r) || (arg1->unkC + r < arg0->unkC)) {
            return 0;
        }
    }
    r2 = arg0->unk1C + arg1->unk24;
    if (arg1->unk10 < arg1->unk1C) {
        if ((arg0->unk10 < arg1->unk10 - r2) || (arg1->unk1C + r2 < arg0->unk10)) {
            return 0;
        }
    } else {
        if ((arg0->unk10 < arg1->unk1C - r2) || (arg1->unk10 + r2 < arg0->unk10)) {
            return 0;
        }
    }
    if (arg1->unk14 < arg1->unk20) {
        if ((arg0->unk14 < arg1->unk14 - r) || (arg1->unk20 + r < arg0->unk14)) {
            return 0;
        }
    } else {
        if ((arg0->unk14 < arg1->unk20 - r) || (arg1->unk14 + r < arg0->unk14)) {
            return 0;
        }
    }
    return 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_8/func_8010F140.s")

void func_8010F964(f32 *arg0, f32 *arg1) {
    arg0[0] = (arg1[6] + arg1[3]) * 0.5f;
    arg0[1] = (arg1[7] + arg1[4]) * 0.5f;
    arg0[2] = (arg1[8] + arg1[5]) * 0.5f;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_8/func_8010F9AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_8/func_8010FC30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_8/func_80110014.s")

void func_80110130(void) {
}

void func_80110138(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
}
