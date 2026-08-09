#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "unk_structs/D_800E1B50.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"

extern FUNCLIST D_8021BAE8_ovl9;
extern FUNCLIST D_8021BB40_ovl9;
extern FUNCLIST D_8021BC00_ovl9;
extern FUNCLIST D_8021BC20_ovl9;
extern FUNCLIST D_8021BC40_ovl9;

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D0C60_ovl9.s")

extern FUNCLIST D_8021BABC_ovl9;

void func_801D0D78_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 11, D_8021BABC_ovl9);
    }
}

void func_801D0DF8_ovl9(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = 5;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800E9C60[omCurrentObj->objId] = 100;
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        return;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 5;
}

void func_801D0E88_ovl9(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = 5;
    D_800E9AA0[omCurrentObj->objId].as_u32 = 1;
    D_800E9C60[omCurrentObj->objId] = 100;
    if (D_800E8920[omCurrentObj->objId] == 1) {
        *(u32 *) &gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        return;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 5;
}

void func_801D0F1C_ovl9(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = 5;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800E9C60[omCurrentObj->objId] = 100;
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        return;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 5;
}

void func_801D0FAC_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 8, &D_8021BAE8_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D0FF4_ovl9.s")

void func_801A0D74_ovl7();
void func_80199688_ovl7(struct GObj *);
void func_8019F3B0_ovl7(void);

void func_801D123C_ovl9(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId]--;
    if (D_800E98E0[omCurrentObj->objId] < 0) {
        D_800E98E0[omCurrentObj->objId] = 0;
    }
    func_801A0D74_ovl7(arg0);
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        func_80199688_ovl7(arg0);
    }
    func_8019F3B0_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D12DC_ovl9.s")

void func_801A0D74_ovl7();
void func_80199688_ovl7(struct GObj *);
void func_8019F3B0_ovl7(void);

void func_801D1678_ovl9(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId]--;
    if (D_800E98E0[omCurrentObj->objId] < 0) {
        D_800E98E0[omCurrentObj->objId] = 0;
    }
    func_801A0D74_ovl7(arg0);
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        func_80199688_ovl7(arg0);
    }
    func_8019F3B0_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D1718_ovl9.s")

void func_801A0D74_ovl7();
void func_80199688_ovl7(struct GObj *);
void func_8019F3B0_ovl7(void);

void func_801D1BCC_ovl9(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = D_800E98E0[omCurrentObj->objId] - 1;
    if (D_800E98E0[omCurrentObj->objId] < 0) {
        D_800E98E0[omCurrentObj->objId] = 0;
    }
    D_800E9C60[omCurrentObj->objId] = D_800E9C60[omCurrentObj->objId] - 1;
    if (D_800E9C60[omCurrentObj->objId] < 0) {
        D_800E9C60[omCurrentObj->objId] = 0;
    }
    func_801A0D74_ovl7(arg0);
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        func_80199688_ovl7(arg0);
    }
    func_8019F3B0_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D1CA8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D1F30_ovl9.s")

void func_801A0D74_ovl7();
void func_8019F3B0_ovl7(void);

void func_801D2278_ovl9(void) {
    func_801A0D74_ovl7();
    func_8019F3B0_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D22A0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D2480_ovl9.s")

void func_801A0D74_ovl7();
void func_8019F3B0_ovl7(void);

void func_801D2648_ovl9(void) {
    func_801A0D74_ovl7();
    func_8019F3B0_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D2670_ovl9.s")

void func_801A0D74_ovl7();
void func_80199688_ovl7(struct GObj *);
void func_8019F3B0_ovl7(void);

void func_801D29BC_ovl9(GObj *arg0) {
    func_801A0D74_ovl7(arg0);
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        func_80199688_ovl7(arg0);
    }
    func_8019F3B0_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D2A14_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D2B3C_ovl9.s")

void func_801A0D74_ovl7();
void func_8019F3B0_ovl7(void);

void func_801D2E14_ovl9(void) {
    func_801A0D74_ovl7();
    func_8019F3B0_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D2E3C_ovl9.s")

void func_801A0D74_ovl7();
void func_8019F3B0_ovl7(void);

void func_801D315C_ovl9(void) {
    func_801A0D74_ovl7();
    func_8019F3B0_ovl7();
}

extern s32 D_8021BB08_ovl9[];

void func_801D3184_ovl9(GObj *arg0) {
    if (gEntitiesNextPosYArray[omCurrentObj->objId] != gEntitiesPosYArray[omCurrentObj->objId]) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        if (gEntitiesPosYArray[omCurrentObj->objId] < gEntitiesNextPosYArray[omCurrentObj->objId]) {
            D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
        }
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = D_8021BB08_ovl9[D_800E7880[omCurrentObj->objId]];
    }
}

extern struct GObjProcess *gEntityGObjProcessArray[];
void func_801D0D78_ovl9(struct GObj *);

void func_801D3248_ovl9(GObj *arg0) {
    if (D_800E7880[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801D0D78_ovl9);
    }
}

void func_801D32B8_ovl9(GObj *arg0) {
    D_800E3C90[omCurrentObj->objId] = ABSF((D_800E8AE0[omCurrentObj->objId] & 1) ? 4.0f : 16.0f);
}

void func_800AECC0(f32);
void func_800AED20(f32);

void func_801D336C_ovl9(GObj *arg0) {
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 2;
        func_800AECC0(gameTicksPerDraw * 0.5f);
        func_800AED20(gameTicksPerDraw * 0.5f);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D3414_ovl9.s")

extern FUNCLIST D_8021BB30_ovl9;

void func_801D3618_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, D_8021BB30_ovl9);
    }
}

void func_801D3698_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_8021BB40_ovl9);
}

extern void func_800B6FD8(s32);

void func_801D36E0_ovl9(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6FD8;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D3720_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D39F0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D3BE8_ovl9.s")

void func_801A3280_ovl7(void);
void func_800B33F4(void);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800A9EA4(s32);

void func_801D3E10_ovl9(GObj *arg0) {
    func_801A3280_ovl7();
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800A9EA4(0x1001F);
    curObjSleepForever();
}

void func_8019F3F0_ovl7(void);
void func_801D4C50_ovl9(void);

void func_801D3E7C_ovl9(GObj *arg0) {
    func_8019F3F0_ovl7();
    func_801D4C50_ovl9();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D3EA4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D4314_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D4594_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D47D4_ovl9.s")

extern f32 D_8021CEA0_ovl9;
void func_8019F3F0_ovl7(void);
void func_801D4C50_ovl9(void);

void func_801D4BC8_ovl9(GObj *arg0) {
    D_800EAFA0[omCurrentObj->objId] = D_8021CEA0_ovl9 + D_800EAFA0[omCurrentObj->objId];
    if (D_800EAFA0[omCurrentObj->objId] >= 1.0f) {
        D_800EAFA0[omCurrentObj->objId] = 1.0f;
    }
    func_8019F3F0_ovl7();
    func_801D4C50_ovl9();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D4C50_ovl9.s")

void func_801D4D9C_ovl9(GObj *arg0) {
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] |= 1;
}

void func_801D4DCC_ovl9(GObj *arg0) {
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] |= 2;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D4DFC_ovl9.s")

extern FUNCLIST D_8021BB54_ovl9;

void func_801D4F58_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, D_8021BB54_ovl9);
    }
}

void func_800B33F4(void);

void func_801D4FD8_ovl9(GObj *arg0) {
    func_800B33F4();
    D_800E98E0[omCurrentObj->objId] = 0x1E;
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

void func_800B33F4(void);

void func_801D502C_ovl9(GObj *arg0) {
    func_800B33F4();
    D_800E98E0[omCurrentObj->objId] = 0x1E;
    gEntityFuncListIDArray[omCurrentObj->objId] = 3;
}

extern FUNCLIST D_8021BB68_ovl9;
void func_801A0D74_ovl7();

void func_801D5080_ovl9(void) {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7();
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 6, &D_8021BB68_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D50E4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D52F0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D56D0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D5850_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D5DB8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D5FC8_ovl9.s")

void func_8019F3B0_ovl7(void);

void func_801D60B0_ovl9(GObj *arg0) {
    if (D_800E98E0[omCurrentObj->objId] > 0) {
        D_800E98E0[omCurrentObj->objId]--;
    }
    func_8019F3B0_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D6100_ovl9.s")

u32 eneCheckNearPlayer(f32);
void func_8019F3B0_ovl7(void);

void func_801D6244_ovl9(GObj *arg0) {
    if (D_800E98E0[omCurrentObj->objId] <= 0) {
        if (eneCheckNearPlayer(25600.0f) != 0) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 4;
        }
    }
    if (D_800E98E0[omCurrentObj->objId] > 0) {
        D_800E98E0[omCurrentObj->objId] = D_800E98E0[omCurrentObj->objId] - 1;
    }
    func_8019F3B0_ovl7();
}

void func_801D62F0_ovl9(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D62F8_ovl9.s")

void func_8019F3B0_ovl7(void);

void func_801D64EC_ovl9(GObj *arg0) {
    func_8019F3B0_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D650C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D66A0_ovl9.s")

extern FUNCLIST D_8021BBF4_ovl9;

void func_801D69D8_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, D_8021BBF4_ovl9);
    }
}

void func_801D6A58_ovl9(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = 5;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801D6A94_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 2, &D_8021BC00_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D6ADC_ovl9.s")

void func_801D6C30_ovl9(GObj *arg0) {
    if (D_800E98E0[omCurrentObj->objId] > 0) {
        D_800E98E0[omCurrentObj->objId]--;
    }
}

f32 func_801D6C68_ovl9(void) {
    f32 dx;
    f32 dy;
    f32 dz;

    dx = gEntitiesNextPosXArray[0] - D_800EAC20[omCurrentObj->objId];
    dy = (gEntitiesNextPosYArray[0] + 20.0f) - D_800EA8A0[omCurrentObj->objId];
    dz = gEntitiesNextPosZArray[0] - D_800EADE0[omCurrentObj->objId];
    return sqrtf((dx * dx) + (dy * dy) + (dz * dz));
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D6CFC_ovl9.s")

extern struct GObjProcess *gEntityGObjProcessArray[];
void func_801D69D8_ovl9(struct GObj *);

void func_801D6E44_ovl9(GObj *arg0, s32 arg1, f32 arg2) {
    if ((arg1 == 0) && ((s32) arg2 == 1)) {
        if (gEntityFuncListIDArray[omCurrentObj->objId] != 1) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801D69D8_ovl9);
        }
    }
}

extern s32 D_801C80C8_ovl7;
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800AA018(s32);
void func_800AF27C(void);

void func_801D6EBC_ovl9(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C80C8_ovl7;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AA018(0x1004A);
    D_800E98E0[omCurrentObj->objId] = 0x3C;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

s32 func_801D7064_ovl9(void *);
void func_801D7140_ovl9(struct GObj *);

void func_801D6F8C_ovl9(GObj *arg0) {
    D_800E9AA0[omCurrentObj->objId].as_s32 = D_800E9AA0[omCurrentObj->objId].as_s32 + 1;
    if (D_800E9AA0[omCurrentObj->objId].as_s32 == 0x19) {
        play_sound(0xA3);
    }
    if (D_800E9AA0[omCurrentObj->objId].as_s32 >= 0x15) {
        func_801D7064_ovl9(D_800DFBD0[omCurrentObj->objId][4]);
        if (D_800E83E0[omCurrentObj->objId] == 3) {
            func_801D7140_ovl9(arg0);
        }
    }
}

void func_801D705C_ovl9(GObj *arg0) {
}

#ifdef MIPS_TO_C
struct Ovl9AnimCmdA {
    u8 filler0[8];
    void *unk8;
};

struct Ovl9AnimObjA {
    u8 filler0[0x24];
    struct Ovl9AnimCmdA *unk24;
};

struct Ovl9Unk8C2 {
    u32 unk0;
    u32 unk4;
};

void func_80111550(u32);
struct Ovl9AnimObjA *func_80111C88(s32 *, u32);
void func_80111ECC(struct Ovl9AnimObjA *);
s32 func_801D7330_ovl9(void);
s32 func_8019F650_ovl7(void);

s32 func_801D7064_ovl9(void *arg0) {
    UnkStruct800E1B50 *temp;
    s32 id;
    struct Ovl9AnimObjA *anim;
    struct Ovl9Unk8C2 *p;

    id = omCurrentObj->objId;
    temp = D_800E1B50[id];
    if (temp == NULL) {
        return 0;
    }
    if (temp->unk8C == NULL) {
        return 0;
    }
    func_80111550(id);
    anim = func_80111C88(temp->unk8C, omCurrentObj->objId);
    p = (struct Ovl9Unk8C2 *) temp->unk8C[2];
    if ((p->unk4 == 0) && (arg0 != NULL)) {
        anim->unk24->unk8 = arg0;
    }
    func_80111ECC(anim);
    if (func_801D7330_ovl9() == 0) {
        return func_8019F650_ovl7();
    }
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D7064_ovl9.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D7140_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D7330_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D74EC_ovl9.s")

extern FUNCLIST D_8021BC0C_ovl9;

void func_801D7838_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, D_8021BC0C_ovl9);
    }
}

void func_801D78B8_ovl9(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801D78F0_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_8021BC20_ovl9);
}

void func_800A9EA4(s32);

void func_801D7938_ovl9(GObj *arg0) {
    func_800A9EA4(0x100F8);
    animUpdateModelTreeAnimation(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D7968_ovl9.s")

void func_801D7A6C_ovl9(GObj *arg0) {
    if (D_800E98E0[omCurrentObj->objId] > 0) {
        D_800E98E0[omCurrentObj->objId]--;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D7AA4_ovl9.s")

void func_801D7BE4_ovl9(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D7BEC_ovl9.s")

void func_801D7838_ovl9(struct GObj *);

void func_801D7D54_ovl9(struct GObj *arg0) {
    switch (D_800E9E20[omCurrentObj->objId]) {
    case 0xA:
        D_800E98E0[omCurrentObj->objId] = 0x1E;
        gEntityFuncListIDArray[omCurrentObj->objId] = 4;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801D7838_ovl9);
        break;
    case 1:
        D_800E98E0[omCurrentObj->objId] = 0x1E;
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801D7838_ovl9);
        break;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D7E34_ovl9.s")

void func_800AA864(s32, s32);

void func_801D7F4C_ovl9(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800AA864(0x100FC, 3);
    gEntityFuncListIDArray[omCurrentObj->objId] = 4;
}

void func_800AA154(s32);

void func_801D7FB4_ovl9(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800AA154(0x100FE);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D8014_ovl9.s")

extern FUNCLIST D_8021BC38_ovl9;

void func_801D8198_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, D_8021BC38_ovl9);
    }
}

void func_801D8218_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 2, &D_8021BC40_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D8260_ovl9.s")

void func_801D8478_ovl9(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    ohSleep(0x14);
    while (D_800E98E0[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D8520_ovl9.s")

s32 func_801ACC34_ovl7(s32, s32);
void func_800AA018(s32);
void func_800AF27C(void);

void func_801D8C80_ovl9(GObj *arg0) {
    s32 temp;

    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800AA018(0x10020);
    temp = func_801ACC34_ovl7(0x42, 0);
    D_800EBBE0[omCurrentObj->objId] = temp;
    if (temp != 0) {
        D_800E8E60[D_800EBBE0[omCurrentObj->objId]] = 1;
        play_sound(0xA5);
    }
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801D8D44_ovl9(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D8D4C_ovl9.s")

