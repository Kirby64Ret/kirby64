#include <ultra64.h>
#include <macros.h>
#include <config.h>
#include <PR/gbi.h>

#include "ovl0_2_5.h"

// bss

u16 *gZBuffer; // 0x8004A500
u32 viCFBFmt;
s32 gCurrScreenWidth; // 0x8004A508
s32 gCurrScreenHeight; // 0x8004A50C
u32 D_8004A510;
u32 viSettingsChanged;
u32 D_8004A518[3];
s16 D_8004A524, D_8004A526, D_8004A528, D_8004A52A;

// end bss, followed by rdp_reset.c

// takes a u32 color and either returns it
// or packs it into an rgba16 value that gDPSetFillColor can use
u32 func_800078F0(u32 color) {
    // Is this a GPACK_RGBA5551?
    u32 temp_v0 = ((((color >> 0x10) & 0xF800) | ((color >> 0xD) & 0x7C0)) | ((color >> 0xA) & 0x3E)) | ((color >> 7) & 1);

    return (viCFBFmt == 3) ? color : (temp_v0 << 16) | temp_v0;
}

void func_80000980(void*);

#ifdef NON_MATCHING_
// something's finicky about this function
void func_80007944(u32 arg0, u32 arg1, u32 arg2) {
  struct InterruptMessageType5 msg;

    msg.unk0 = 0x00000005;
    msg.unk4 = 0x00000064;
    D_8004A518[0] = arg0;
    msg.unk24 = arg0;
    D_8004A518[1] = arg1;
    msg.unk28 = arg1;
    D_8004A518[2] = arg2;
    msg.unk2C = arg2; func_80000980(&msg);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_80007944.s")
#endif

void func_80007998(s32 arg0) {
    D_8004A510 |= arg0;
    if (arg0 & 0x20) {
        viCFBFmt = 3;
    }
    if (arg0 & 0x10) {
        viCFBFmt = 2;
    }
    viSettingsChanged = 1;
}

void func_800079E4(s32 arg0) {
    gCurrScreenWidth = arg0;
    viSettingsChanged = 1;
}

void func_800079FC(s32 arg0) {
    gCurrScreenHeight = arg0;
    viSettingsChanged = 1;
}

void func_80007A14(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
    D_8004A524 = arg0;
    D_8004A526 = arg1;
    D_8004A528 = arg2;
    D_8004A52A = arg3;
    viSettingsChanged = 1;
}

void func_80007A74(struct InterruptMessageType4 *arg0) {
    arg0->unk24 = gCurrScreenWidth;
    arg0->unk28 = gCurrScreenHeight;
    arg0->unk2C = (s32) D_8004A510;
    arg0->unk30 = (s16) D_8004A524;
    arg0->unk32 = (s16) D_8004A526;
    arg0->unk34 = (s16) D_8004A528;
    arg0->unk36 = (s16) D_8004A52A;
    D_8004A510 = 0;
    viSettingsChanged = 0;
}

void func_80007ADC(struct InterruptMessageType4 *msg) {
    if (viSettingsChanged != 0) {
        msg->unk0 = 4;
        msg->unk4 = 0x32;
        msg->unk14 = 0;
        msg->unk20 = 0;
        func_80007A74(msg);
        osSendMesg(&gInterruptMesgQueue, (OSMesg*) msg, 0);
    }
}

void func_80007B38(s32 arg0, s32 arg1, u32 arg2) {
    struct InterruptMessageType4 msg;

    D_8004A510 = 0;
    viCFBFmt = 2;
    func_80007998(arg2);
    func_800079E4(arg0);
    func_800079FC(arg1);
    msg.unk0 = 4;
    msg.unk4 = 0x64;
    func_80007A74(&msg);
    func_80000980(&msg);
}

struct UnkStruct80007BA4 {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 zb;
    u32 unk10;
    u32 unk14;
    u32 unk18;
};

void func_80007BA4(struct UnkStruct80007BA4 *arg0) {
    func_80007944(arg0->unk0, arg0->unk4, arg0->unk8);
    gZBuffer = (u16*) arg0->zb;
    func_80007B38(arg0->unk10, arg0->unk14, arg0->unk18);
}
