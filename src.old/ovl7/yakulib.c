#include <ultra64.h>
#include <macros.h>
#include "yakulib.h"
#include "omCurrentObj.h"

extern void print_error_stub(const char *fmt, ...);

extern u16 D_800E77A0[];
extern u8 D_800E76C0[];
extern u8 D_800E7730[];
extern u8 D_800E7880[];

extern u32 D_800E8E60[];
extern u32 D_800E0D50[];
extern f32 D_800E17D0[];
extern f32 D_800E6A10[];
extern u32 D_800E1D10[];

extern u32 gSegment4StartArray[];

extern Gfx* gDisplayListHeads[4];

extern u32 D_800DD8D0[];
extern u32 D_800E0650[];


extern Lights1 D_800BE548;

#define gSPDoubleLights1(pkt, lt)\
{\
    gSPNumLights(pkt[0]++,NUMLIGHTS_1);                  \
    gSPNumLights(pkt[1]++,NUMLIGHTS_1);                  \
    gSPLight(pkt[0]++,&(lt).l[0],1);                   \
    gSPLight(pkt[1]++,&(lt).l[0],1);                   \
    gSPLight(pkt[0]++,&(lt).a,2);                  \
    gSPLight(pkt[1]++,&(lt).a,2);                  \
}

extern f32 gEntitiesAngleXArray[];
extern f32 gEntitiesAngleYArray[];
extern f32 gEntitiesAngleZArray[];

extern f32 gEntitiesNextPosXArray[];
extern f32 gEntitiesNextPosYArray[];
extern f32 gEntitiesNextPosZArray[];

extern f32 D_801CE578;

s32 request_track_general(s32, s32, s32);

void func_800A4794(Vector*,s32);
void func_800A4DB8(Vector*,s32);

// this file
void func_801BC1AC_ovl7(s32 arg0);
void func_801BC44C_ovl7(s32 arg0);
void func_801BC72C_ovl7(s32 arg0);

s32 func_801BBE50(s32 arg0, s32 arg1, u32 arg2) {
    s32 idx;
    Vector posVec;
    Vector angleVec;

    idx = request_track_general(0x1F, 0x1E, 0x3C);
    if (idx == -1) {
        print_error_stub("NmlBlock Request Error![yakulib.cc]\n");
        return -1;
    }
    D_800E0D50[idx] = arg2;
    D_800E76C0[idx] = 0xFF;
    D_800E7730[idx] = 6;
    D_800E77A0[idx] = 0;
    D_800E7880[idx] = 0;

    D_800E8E60[idx] = 1;
    D_800E1D10[idx] = arg1;
    func_800A4794(&posVec, arg0);
    gEntitiesNextPosXArray[idx] = posVec.x;
    gEntitiesNextPosYArray[idx] = posVec.y;
    gEntitiesNextPosZArray[idx] = posVec.z;
    func_800A4DB8(&angleVec, arg0);
    gEntitiesAngleXArray[idx] = angleVec.x;
    gEntitiesAngleYArray[idx] = angleVec.y + D_801CE578;
    gEntitiesAngleZArray[idx] = angleVec.z;
    D_800E17D0[idx] = D_800E17D0[arg2];
    D_800E6A10[idx] = D_800E6A10[arg2];
    return idx;
}


extern u32 D_800E5F90[];
extern f32 D_800E6BD0[];
extern s32 D_800D7090;
extern f32 eneGetPlayerHeight(void);
s32 func_801BBFE4_ovl7(s32 arg0) {
    s32 idx;
    s32 sp1C;

    idx = request_track_general(0x1F, 0x1E, 0x3C);
    if (idx == -1) {
        print_error_stub("reqDumpStarTrk Request Error!![yakulib.cc]\n");
        return -1;
    }
    D_800E76C0[idx] = 0xFF;
    D_800E7730[idx] = 6;
    D_800E77A0[idx] = arg0;
    D_800E7880[idx] = 0;
    D_800E5F90[idx] = D_800E5F90[D_800E0D50[idx]];
    D_800E6BD0[idx] = D_800E6BD0[D_800E0D50[idx]];
    D_800E6A10[idx] = D_800E6A10[D_800E0D50[idx]];
    if (D_800E0D50[idx] == 0) {
        sp1C = idx;
        gEntitiesNextPosYArray[idx] = eneGetPlayerHeight();
    } else {
        gEntitiesNextPosYArray[idx] = gEntitiesNextPosYArray[D_800E0D50[idx]];
    }
    gEntitiesAngleXArray[idx] = gEntitiesAngleXArray[D_800E0D50[idx]];
    gEntitiesAngleYArray[idx] = gEntitiesAngleYArray[D_800E0D50[idx]];
    gEntitiesAngleZArray[idx] = gEntitiesAngleZArray[D_800E0D50[idx]];
    D_800E8E60[idx] = 0;
    D_800E8220[omCurrentObj->objId] = 1;
    sp1C = idx;
    func_801BC1AC_ovl7(arg0);
    D_800D7090 = sp1C;
    return sp1C;
}

void func_801BC1AC_ovl7(s32 arg0) {
    if (D_800E8220[omCurrentObj->objId] == 0) {
        D_801D0A58 = D_801CA6F4;
    } else {
        D_801D0A58 = D_801CA738;
    }
    D_801D0A58.unk1C = arg0;
}

s32 func_801BC27C_ovl7(s32 arg0, s32 arg1) {
    s32 idx;
    s32 sp1C;

    idx = request_track_general(0x1F, 0x1E, 0x3C);
    if (idx == -1) {
        print_error_stub("reqMixStarTrk Request Error!![yakulib.cc]\n");
        return -1;
    }
    D_800E76C0[idx] = 0xFF;
    D_800E7730[idx] = 6;
    D_800E77A0[idx] = arg0;
    D_800E7880[idx] = arg1;
    D_800E5F90[idx] = D_800E5F90[D_800E0D50[idx]];
    D_800E6BD0[idx] = D_800E6BD0[D_800E0D50[idx]];
    D_800E6A10[idx] = D_800E6A10[D_800E0D50[idx]];
    if (D_800E0D50[idx] == 0) {
        sp1C = idx;
        gEntitiesNextPosYArray[idx] = eneGetPlayerHeight();
    } else {
        gEntitiesNextPosYArray[idx] = gEntitiesNextPosYArray[D_800E0D50[idx]];
    }
    gEntitiesAngleXArray[idx] = gEntitiesAngleXArray[D_800E0D50[idx]];
    gEntitiesAngleYArray[idx] = gEntitiesAngleYArray[D_800E0D50[idx]];
    gEntitiesAngleZArray[idx] = gEntitiesAngleZArray[D_800E0D50[idx]];
    D_800E8E60[idx] = 0;
    D_800E8220[omCurrentObj->objId] = 1;
    sp1C = idx;
    func_801BC44C_ovl7(arg0);
    D_800D7090 = sp1C;
    return sp1C;
}

void func_801BC44C_ovl7(s32 arg0) {
    D_801CE750 = D_801C7DDC;
    D_801CE750.unk1C = D_801CD820[arg0];
    if (D_800E8220[omCurrentObj->objId] == 0) {
        D_801D0A38 = D_801CA7DC;
    } else {
        D_801D0A38 = D_801CA7FC;
    }
    D_801D0A38.unk1C = arg0;
}

extern const char D_801CE520[];

s32 func_801BC580_ovl7(s32 arg0) {
    s32 idx;
    s32 sp1C;

    idx = request_track_general(0x1F, 0x1E, 0x3C);
    if (idx == -1) {
        print_error_stub(&D_801CE520);
        return -1;
    }
    D_800E76C0[idx] = 0xFF;
    D_800E7730[idx] = 6;
    D_800E77A0[idx] = arg0 + 0x24;
    D_800E7880[idx] = 0;
    D_800E5F90[idx] = D_800E5F90[D_800E0D50[idx]];
    D_800E6BD0[idx] = D_800E6BD0[D_800E0D50[idx]];
    D_800E6A10[idx] = D_800E6A10[D_800E0D50[idx]];
    if (D_800E0D50[idx] == 0) {
        sp1C = idx;
        gEntitiesNextPosYArray[idx] = eneGetPlayerHeight();
    } else {
        gEntitiesNextPosYArray[idx] = gEntitiesNextPosYArray[D_800E0D50[idx]];
    }
    gEntitiesAngleXArray[idx] = gEntitiesAngleXArray[D_800E0D50[idx]];
    gEntitiesAngleYArray[idx] = gEntitiesAngleYArray[D_800E0D50[idx]];
    gEntitiesAngleZArray[idx] = gEntitiesAngleZArray[D_800E0D50[idx]];
    D_800E8E60[idx] = 0;
    sp1C = idx;
    func_801BC72C_ovl7(arg0);
    D_800D7090 = sp1C;
    return sp1C;
}

void func_801BC72C_ovl7(s32 arg0) {
    D_801CE770 = D_801C7E84;
    D_801CE770.unk1C = D_801CD820[arg0];
}

extern const char D_801CE54C[];
void func_801BC978_ovl7(s32 *);
s32 func_801BC794_ovl7(s32 arg0) {
    s32 idx;
    s32 sp1C;

    idx = request_track_general(0x1C, 0x1E, 0x3C);
    if (idx == -1) {
        print_error_stub(&D_801CE54C);
        return -1;
    }
    D_800E76C0[idx] = 0xFF;
    D_800E7730[idx] = 3;
    D_800E77A0[idx] = 8;
    D_800E7880[idx] = arg0;
    D_800E5F90[idx] = D_800E5F90[D_800E0D50[idx]];
    D_800E6BD0[idx] = D_800E6BD0[D_800E0D50[idx]];
    D_800E6A10[idx] = D_800E6A10[D_800E0D50[idx]];
    if (D_800E0D50[idx] == 0) {
        sp1C = idx;
        gEntitiesNextPosYArray[idx] = eneGetPlayerHeight();
    } else {
        gEntitiesNextPosYArray[idx] = gEntitiesNextPosYArray[D_800E0D50[idx]];
    }
    gEntitiesAngleXArray[idx] = gEntitiesAngleXArray[D_800E0D50[idx]];
    gEntitiesAngleYArray[idx] = gEntitiesAngleYArray[D_800E0D50[idx]];
    gEntitiesAngleZArray[idx] = gEntitiesAngleZArray[D_800E0D50[idx]];
    D_800E8E60[idx] = D_800E8E60[D_800E0D50[idx]];
    gEntitiesNextPosXArray[idx] = gEntitiesNextPosXArray[D_800E0D50[idx]];
    gEntitiesNextPosYArray[idx] = gEntitiesNextPosYArray[D_800E0D50[idx]];
    gEntitiesNextPosZArray[idx] = gEntitiesNextPosZArray[D_800E0D50[idx]];
    return idx;
}

/**
 * Full explanation of the non-matching cause in this function:
 * - Some cases in this function do 2 gSPSetLights1's on D_800BE548.
 * - Both Lights macros use the same code for the first half of the command
 *   (0xDB000018)
 * - The original code knows to preserve this top half of the command
 *   in a register in order to save a few instructions
 * - However, in the current function, the top half is reloaded for both macros,
 *   instead of just the first one.
 * - This only happens on the double Lights1 macro that operates on D_800BE548,
 *   but not the one that operates on temp_a2
 */

#ifdef NON_MATCHING
void func_801BC978_ovl7(s32 *arg0) {
    s32 temp_v0;
    Lights1 *temp_a2;

    temp_v0 = *arg0;
    if (!(D_800DD8D0[temp_v0] & 0x40)) {
        temp_a2 = D_800E0650[temp_v0];
        switch (func_800AB0F4(arg0) - 6) {
            case 13:
                gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[temp_v0]);
                if (temp_a2 != NULL) {
                    gSPSetLights1(gDisplayListHeads[0]++, (*temp_a2));
                }
                func_800AB120(arg0);
                gSPSetLights1(gDisplayListHeads[0]++, D_800BE548);
                break;
            case 15:
                gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[temp_v0]);
                if (temp_a2 != NULL) {
                    gSPSetLights1(gDisplayListHeads[0]++, (*temp_a2));
                }
                func_800AB1F0(arg0);
                gSPSetLights1(gDisplayListHeads[0]++, D_800BE548);
                break;
            default:
                gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[temp_v0]);
                if (temp_a2 != NULL) {
                    gSPSetLights1(gDisplayListHeads[0]++, (*temp_a2));
                }
                func_800AB2C0(arg0);
                gSPSetLights1(gDisplayListHeads[0]++, D_800BE548);
                break;
            case 21:
            case 23:
                gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[temp_v0]);
                if (temp_a2 != NULL) {
                    gSPSetLights1(gDisplayListHeads[0]++, (*temp_a2));
                }
                func_800AB3A0(arg0);
                // goto fum1; fum1:;
                gSPSetLights1(gDisplayListHeads[0]++, D_800BE548);
                break;
            case 14:
                gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[temp_v0]);
                gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[temp_v0]);
                if (temp_a2 != NULL) {
                    gSPSetLights1(gDisplayListHeads[0]++, (*temp_a2));
                    gSPSetLights1(gDisplayListHeads[1]++, (*temp_a2));
                }
                func_800AB174(arg0);
                gSPSetLights1(gDisplayListHeads[0]++, D_800BE548);
                gSPSetLights1(gDisplayListHeads[1]++, D_800BE548);
                break;
            case 16:
                gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[temp_v0]);
                gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[temp_v0]);
                if (temp_a2 != NULL) {
                    gSPSetLights1(gDisplayListHeads[0]++, (*temp_a2));
                    gSPSetLights1(gDisplayListHeads[1]++, (*temp_a2));
                }
                func_800AB244(arg0);
                // goto fum2; fum2:;
                gSPSetLights1(gDisplayListHeads[0]++, D_800BE548);
                gSPSetLights1(gDisplayListHeads[1]++, D_800BE548);
                break;
            case 18:
            case 20:
                gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[temp_v0]);
                gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[temp_v0]);
                if (temp_a2 != 0) {
                    gSPSetLights1(gDisplayListHeads[0]++, (*temp_a2));
                    gSPSetLights1(gDisplayListHeads[1]++, (*temp_a2));
                }
                func_800AB314(arg0);
                // goto fum3; fum3:;
                gSPSetLights1(gDisplayListHeads[0]++, D_800BE548);
                gSPSetLights1(gDisplayListHeads[1]++, D_800BE548);
                break;
            case 22:
            case 24:
                gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[temp_v0]);
                gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[temp_v0]);
                if (temp_a2 != 0) {
                    gSPSetLights1(gDisplayListHeads[0]++, (*temp_a2));
                    gSPSetLights1(gDisplayListHeads[1]++, (*temp_a2));
                }
                func_800AB3F4(arg0);
                // goto fum4; fum4:;
                gSPSetLights1(gDisplayListHeads[0]++, D_800BE548);
                gSPSetLights1(gDisplayListHeads[1]++, D_800BE548);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_15/func_801BC978_ovl7.s") 
#endif
