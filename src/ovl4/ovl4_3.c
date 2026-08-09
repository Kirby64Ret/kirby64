#include <ultra64.h>
#include <macros.h>
#include "common.h"
#include "GObj.h"
#include "main/object_manager.h"
#include "ovl1/save_file.h"
#include "ovl1/util.h"
#include "track_arrays.h"
#include "main/contpad.h"

struct Unk800ECA08 {
    /* 0x00 */ s32 unk0;
    /* 0x04 */ u8 pad4[0xC];
    /* 0x10 */ u8 unk10;
    /* 0x11 */ u8 pad11[0x47];
};

extern struct Unk800ECA08 D_800ECA08[];
extern s32 D_800EC9FC;
extern s32 saveCurrentFileNum;

extern void func_800B8BDC(void);
extern void func_800B96A0(s32, s32);
extern void func_800B94FC(s32);
extern void func_800BB3F0(void);

extern Gfx D_8015AA70_ovl4[];
extern s32 D_800D6B24;
extern s32 D_8015C6D8_ovl4;

extern void func_800AC610(void);
extern void func_80157C38_ovl4(void);

extern s32 func_801555AC_ovl4();
extern void func_800B8E00(s32);
extern s32 request_track_3(s32, s32, s32);
extern void func_80155E6C_ovl4(GObj *);
extern s32 D_8015C6D4_ovl4;
extern s32 D_8015C6DC_ovl4;
extern s32 D_8015C6E0_ovl4;
extern s32 D_8015C6E4_ovl4;

typedef struct {
    s32 unk0[3];
} Unk3Words;

typedef struct {
    s32 unk0[6];
} Unk6Words;

typedef struct {
    s32 unk0[2];
} Unk2Words;

extern Unk3Words D_8015A990_ovl4;
extern Unk3Words D_8015A99C_ovl4;
extern Unk6Words D_8015A9A8_ovl4;
extern Unk2Words D_8015A9C0_ovl4;
extern s32 func_800B9F64(s32, s32);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_801553C0_ovl4.s")

s32 func_801554F0_ovl4(void) {
    s32 ret = 0;

    if (D_800E98E0[omCurrentObj->objId] > 0) {
        D_800E98E0[omCurrentObj->objId]--;
        return 0;
    }
    if (gPlayerControllers[0].buttonHeldLong & R_JPAD) {
        ret = 1;
        D_800E98E0[omCurrentObj->objId] = 3;
    }
    if (gPlayerControllers[0].buttonHeldLong & L_JPAD) {
        ret = -1;
        D_800E98E0[omCurrentObj->objId] = 3;
    }
    if (gPlayerControllers[0].buttonHeldLong & U_JPAD) {
        ret = 2;
        D_800E98E0[omCurrentObj->objId] = 3;
    }
    if (gPlayerControllers[0].buttonHeldLong & D_JPAD) {
        ret = -2;
        D_800E98E0[omCurrentObj->objId] = 3;
    }
    return ret;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_801555AC_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_801555F4_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80155890_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80155C00_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80155E6C_ovl4.s")

void func_80156054_ovl4(GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        D_800E9E20[omCurrentObj->objId]--;
        return;
    }
    switch (D_800EA1A0[omCurrentObj->objId]) {
        case 1:
            if (gPlayerControllers[0].buttonPressed & 0xD000) {
                D_800EA1A0[omCurrentObj->objId] = 4;
                D_8015C6E4_ovl4 = 0;
                D_800DF150[omCurrentObj->objId] = NULL;
                D_800DF150[omCurrentObj->objId] = func_80155E6C_ovl4;
            }
            break;
        case 2:
            func_800B8E00(saveCurrentFileNum);
            D_8015C6DC_ovl4 = 0;
            D_8015C6D4_ovl4 = 0;
            D_800E9C60[omCurrentObj->objId] = 1;
            break;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80156160_ovl4.s")

s32 func_801561DC_ovl4(void) {
    Unk3Words sp4C = D_8015A990_ovl4;
    Unk3Words sp40 = D_8015A99C_ovl4;
    Unk6Words sp28 = D_8015A9A8_ovl4;
    Unk2Words sp20 = D_8015A9C0_ovl4;

    switch (D_8015C6DC_ovl4) {
        case 0:
            if (func_801555AC_ovl4(saveCurrentFileNum) != 0) {
                return sp40.unk0[D_8015C6D4_ovl4];
            }
            return sp4C.unk0[saveCurrentFileNum];
        case 1:
            return sp28.unk0[D_8015C6E0_ovl4];
        case 2:
            return sp20.unk0[D_8015C6E4_ovl4];
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_8015632C_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80156560_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_8015665C_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_801567BC_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_801569F0_ovl4.s")

s32 func_80156BAC_ovl4(s32 arg0) {
    u32 world;

    if (func_801555AC_ovl4() != 0) {
        world = gSaveBuffer1.files[arg0].world;
        if (world >= 7) {
            if ((gSaveBuffer1.files[arg0].data38[1] != 0) && (gSaveBuffer1.files[arg0].percentComplete == 100)
             && (func_800B9F64(arg0, 0xD) != 0)) {
                goto ret7;
            }
            return 6;
ret7:
            return 7;
        }
        return world;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80156C4C_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80156EB0_ovl4.s")

u8 func_80157004_ovl4(s32 arg0) {
    return D_800ECA08[arg0].unk10;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80157028_ovl4.s")

s32 func_80157250_ovl4(void) {
    return 4;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80157258_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_801572E4_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80157610_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80157840_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80157B1C_ovl4.s")

void func_80157C38_ovl4(void) {
    D_800EC9FC = saveCurrentFileNum;
    saveSetHeaderChecksum();
    func_800B8BDC();
    func_800B96A0(saveCurrentFileNum, 0);
    func_800B94FC(saveCurrentFileNum);
    func_800BB3F0();
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0, 0x10, 2);
}

void func_80157CB0_ovl4(s32 arg0) {
    if (D_800D6B24 == 0) {
        if (D_8015C6D8_ovl4 != 0) {
            func_80157C38_ovl4();
        }
    }
}

void func_80157CF0_ovl4(void) {
    s32 i;
    s32 id;

    for (i = 0; i != 3; i++) {
        id = request_track_3(1, 0, 0x70);
        D_800E9AA0[id].as_s32 = 2;
        D_800E9C60[id] = i;
        id = request_track_3(1, 0, 0x70);
        D_800E9AA0[id].as_s32 = 4;
        D_800E9C60[id] = i;
        id = request_track_3(1, 0, 0x70);
        D_800E9AA0[id].as_s32 = 3;
        D_800E9C60[id] = i;
        id = request_track_3(1, 0, 0x70);
        D_800E9AA0[id].as_s32 = 8;
        D_800E9C60[id] = i;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80157E04_ovl4.s")

void func_80157FFC_ovl4(Gfx **gfxP) {
    gSPDisplayList((*gfxP)++, D_8015AA70_ovl4);
}

void func_80158020_ovl4(void) {
    omDrawAll();
    func_800AC610();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80158048_ovl4.s")

