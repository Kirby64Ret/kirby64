#include <ultra64.h>
#include <macros.h>
#include "ovl0_2_5.h"

// ovl0
OSViMode osViModeFpalLan1 = {
    0x2C,
    {
        0x0000311E,
        0x00000140,
        0x04541E3A,
        0x00000271,
        0x00170C69,
        0x0C6F0C6D,
        0x00800300,
        0x00000200,
        0x00000000,
    },
    {
        {
            0x280,
            0x400,
            0x002F0269,
            0x0009026B,
            2,
        },
        {
            0x280,
            0x400,
            0x002F0269,
            0x0009026B,
            2,
        }
    },
};

u32 D_8003FE10 = 0xFFFFFFFF;


// rodata
extern const char D_8003FEA0[];// = "rdp_output_buff over !! size = %d\n byte";
extern const f32 D_8003FEC8;// = 0.833f;

struct unk_func_80000C54
{
    s32 unk0;
    s32 unk4;
    s32 unk8;
    struct unk_func_80000C54 *unkC;
    struct unk_func_80000C54 *unk10;
};

// bss

struct UnkStruct800009E8 *D_80048B80;
struct Unk80005A98_2 *D_80048B84;
struct Unk80005A98_2 *D_80048B88;
struct Unk80005A98_2 *D_80048B8C;
struct Unk80005A98_2 *D_80048B90;
struct Unk80005A98_2 *D_80048B94;
struct Unk80005A98_2 *D_80048B98;
u32 D_80048B9C;
struct Unk80005A98_2 *D_80048BA0;
struct Unk80005A98_2 *D_80048BA4;
OSViMode D_80048BA8;
OSViMode gCurrentViMode; // 0x80048BAC
u32 D_80048C48;

// 0x80048C4C? bss boundary?

void *D_80048C50[3]; // 0x80048C50 // array based on use in func_80000A44
void *D_80048C5C; // 0x80048C5C
void *D_80048C60; // 0x80048C60
s32 D_80048C64; // 0x80048C64
void *gCurrFrameBuffer; // 0x80048C68
s32 D_80048C6C; // 0x80048C6C
s32 D_80048C70; // 0x80048C70
s32 D_80048C74; // 0x80048C74
s32 D_80048C78; // 0x80048C78


union {
    u32 d;
    u8 b[4];
} D_80048C7C; // 0x80048C7C

struct unkD_80048C80 { s32 D_80048C80; s32 unk4; } D_80048C80; // 0x80048C80
s32 D_80048C88; // 0x80048C88
s32 D_80048C8C; // 0x80048C8C
s32 D_80048C90; // 0x80048C90
// 0x80048C94?
OSMesg D_80048C98[8]; // 0x80048C98
OSMesgQueue gInterruptMesgQueue; // 0x80048CB8
u32 D_80048CD0;
OSMesgQueue *D_80048CD4;
u32 D_80048CD8;
u32 *D_80048CDC;

// rsp done after pre-nmi?
u32 D_80048CE0;

void (*fptr_80048CE4)();
// 0x80048CE8 and 0x80048CEC? bss file boundary?

// end bss, followed by ovl0_1


void func_80000900(void) {

}

void func_80000908(void) {
    while (1) {
        if (D_80048B8C || D_80048BA4 || D_80048B9C)
            func_80000900();
        else break;
    }
}

struct InterruptMessage80000980 {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    u32 unk10;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
    OSMesgQueue *unk20;
    struct InterruptMessage80000980 *unk24;
};

void func_80000980(struct InterruptMessage80000980 *arg0) {
    OSMesg msg;
    OSMesgQueue mq;

    osCreateMesgQueue(&mq, &msg, 1);
    arg0->unk14 = 0;
    arg0->unk1C = 1;
    arg0->unk20 = &mq;
    osSendMesg(&gInterruptMesgQueue, arg0, 0);
    osRecvMesg(&mq, NULL, 1);
}

void func_800009E8(struct UnkStruct800009E8 *arg0, OSMesgQueue *mq,
    OSMesg *msg, s32 count) {

    struct InterruptMessage80000980 sp18;

    osCreateMesgQueue(mq, msg, count);
    arg0->unk4 = mq;
    sp18.unk0 = 3;
    sp18.unk4 = 0x64;
    sp18.unk24 = arg0;
    func_80000980(&sp18);
}

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0/func_80000A44.s")

s32 func_80000B64(s32 arg0) {
    struct unk_func_80000C54 *phi_v0;

    phi_v0 = D_80048B8C;
    if ((phi_v0 != 0) && (phi_v0->unk0 == 1)) {
        return 0;
    }
    phi_v0 = D_80048B94;
    while (phi_v0 != NULL) {
        if (phi_v0->unk0 == 1) {
            return 0;
        }
        phi_v0 = phi_v0->unkC;
    }
    phi_v0 = D_80048B84;
    while (phi_v0 != 0) {
        if (phi_v0->unk0 == 1) {
            return 0;
        }
        phi_v0 = phi_v0->unkC;
    }
    phi_v0 = D_80048BA4;
    if ((phi_v0 != 0) && (phi_v0->unk0 == 1)) {
        return 0;
    }
    phi_v0 = D_80048B9C;
    while (phi_v0 != 0) {
        if (phi_v0->unk0 == 1) {
            return 0;
        }
        phi_v0 = phi_v0->unkC;
    }
    return 1;
}

void func_80000C54(struct unk_func_80000C54 *arg0) {
    struct unk_func_80000C54 *phi_v0;

    phi_v0 = D_80048B88;
    while (phi_v0 != 0 && phi_v0->unk4 < arg0->unk4) {
        phi_v0 = phi_v0->unk10;
    }
    arg0->unk10 = phi_v0;
    if (phi_v0 != 0) {
        arg0->unkC = phi_v0->unkC;
        phi_v0->unkC = arg0;
    } else {
        arg0->unkC = D_80048B84;
        D_80048B84 = arg0;
    }
    phi_v0 = arg0->unkC;
    if (phi_v0 != 0) {
        phi_v0->unk10 = arg0;
        return;
    }
    D_80048B88 = arg0;
}

void func_80000CE4(struct unk_func_80000C54 *arg0) {
    struct unk_func_80000C54 *v0;

    v0 = arg0->unk10;
    if (v0 != 0) {
        v0->unkC = arg0->unkC;
    } else {
        D_80048B84 = arg0->unkC;
    }
    v0 = arg0->unkC;
    if (v0 != 0) {
        v0->unk10 = arg0->unk10;
    } else {
        D_80048B88 = arg0->unk10;
    }
}

void func_80000D34(struct unk_func_80000C54 *arg0) {
    s32 temp_v1;
    struct unk_func_80000C54 *v0;

    v0 = D_80048B98;
    while (v0 != NULL && v0->unk4 < arg0->unk4)
    {
        v0 = v0->unk10;
    }
    arg0->unk10 = v0;
    if (v0 != 0) {
        arg0->unkC = v0->unkC;
        v0->unkC = arg0;
    } else {
        v0 = &D_80048B94;
        arg0->unkC = v0->unk0;
        v0->unk0 = arg0;
    }
    v0 = arg0->unkC;
    if (v0 != 0) {
        v0->unk10 = arg0;
    } else {
        D_80048B98 = arg0;
    }
}

void func_80000DC4(struct unk_func_80000C54 *arg0) {
    struct unk_func_80000C54 *v0;

    v0 = arg0->unk10;
    if (v0 != 0) {
        v0->unkC = arg0->unkC;
    } else {
        D_80048B94 = arg0->unkC;
    }
    v0 = arg0->unkC;
    if (v0 != 0) {
        v0->unk10 = arg0->unk10;
    } else {
        D_80048B98 = arg0->unk10;
    }
}

void func_80000E14(struct unk_func_80000C54 *arg0) {
    struct unk_func_80000C54 *v0;

    arg0->unkC = 0;
    arg0->unk10 = D_80048BA0;
    v0 = D_80048BA0;
    if (v0 != 0) {
        v0->unkC = arg0;
    } else {
        D_80048B9C = arg0;
    }
    D_80048BA0 = arg0;
}

void func_80000E4C(struct unk_func_80000C54 *arg0) {
    struct unk_func_80000C54 *v0;

    v0 = arg0->unk10;
    if (v0 != 0) {
        v0->unkC = arg0->unkC;
    } else {
        D_80048B9C = arg0->unkC;
    }
    v0 = arg0->unkC;
    if (v0 != 0) {
        v0->unk10 = arg0->unk10;
    } else {
        D_80048BA0 = arg0->unk10;
    }
}

#define GET_BIT(x, n) (((u32)(x) << (31 - (n))) >> 31)

void func_80000E9C(void) {
    D_80048BA8 = gCurrentViMode;
    osViSetMode(&D_80048BA8);
    if (GET_BIT(D_80048C7C.d, 27)) {
        osViSetYScale(1.0f);
    } else if (osTvType == TV_TYPE_PAL) {
        osViSetYScale(D_8003FEC8);
    }
    osViBlack(GET_BIT(D_80048C7C.d, 27));
    D_80048C48 = 0;
}

#ifdef RESEARCHING
// some J U I C Y VI mode stuff in here
OSViMode func_80000F78(u32 arg0, u32 arg1, s32 arg2, s16 arg3, s16 arg4, s16 arg5, s16 arg6) {
    u32 sp20;
    s32 sp1C;
    s32 sp14;
    u32 sp0;
    s16 temp_a1;
    s16 temp_a2;
    s32 temp_a3;
    s32 temp_lo;
    s32 temp_t7_4;
    s32 temp_t7_5;
    s32 temp_t7_6;
    s32 temp_t8;
    s32 temp_t8_3;
    s32 temp_t9_4;
    s32 temp_v1;
    u32 temp_a0;
    u32 temp_t0;
    u32 temp_t1;
    u32 temp_t4;
    u32 temp_t6;
    u32 temp_t7;
    u32 temp_t7_2;
    u32 temp_t7_3;
    u32 temp_t8_2;
    u32 temp_t9;
    u32 temp_t9_2;
    u32 temp_t9_3;
    u32 phi_t9;
    s32 phi_t2;
    u32 phi_t1;
    s32 phi_a0;
    s32 phi_v1;
    u32 phi_t0;
    s32 phi_v1_2;
    u32 phi_v1_3;
    s32 phi_v1_4;
    s32 phi_t8;
    s32 phi_v1_5;

    if ((arg0 >= 0x141) || (phi_t2 = 1, ((arg1 < 0xF1) == 0))) {
        phi_t2 = 0;
    }
    if ((arg2 & 4) != 0) {
        D_80048C7C.unk0 = D_80048C7C.unk0 | 0x40;
        gCurrentViMode.comRegs.ctrl = gCurrentViMode.comRegs.ctrl | 0x40;
    }
    if ((arg2 & 8) != 0) {
        D_80048C7C.unk0 = D_80048C7C.unk0 & 0xFFBF;
        gCurrentViMode.comRegs.ctrl = gCurrentViMode.comRegs.ctrl & ~0x40;
    }
    if ((arg2 & 0x10) != 0) {
        temp_t7 = gCurrentViMode.comRegs.ctrl & ~3;
        D_80048C7C.unk0 = D_80048C7C.unk0 & 0xFFDF;
        gCurrentViMode.comRegs.ctrl = temp_t7;
        gCurrentViMode.comRegs.ctrl = temp_t7 | 2;
    }
    if ((arg2 & 0x20) != 0) {
        temp_t7_2 = gCurrentViMode.comRegs.ctrl & ~3;
        D_80048C7C.unk0 = D_80048C7C.unk0 | 0x20;
        gCurrentViMode.comRegs.ctrl = temp_t7_2;
        gCurrentViMode.comRegs.ctrl = temp_t7_2 | 3;
    }
    if ((arg2 & 0x40) != 0) {
        D_80048C7C.unk0 = D_80048C7C.unk0 | 0x10;
        gCurrentViMode.comRegs.ctrl = gCurrentViMode.comRegs.ctrl | 8;
    }
    if ((arg2 & 0x80) != 0) {
        D_80048C7C.unk0 = D_80048C7C.unk0 & 0xFFEF;
        gCurrentViMode.comRegs.ctrl = gCurrentViMode.comRegs.ctrl & ~8;
    }
    if ((arg2 & 0x1000) != 0) {
        D_80048C7C.unk0 = D_80048C7C.unk0 | 2;
        gCurrentViMode.comRegs.ctrl = gCurrentViMode.comRegs.ctrl | 4;
    }
    if ((arg2 & 0x2000) != 0) {
        D_80048C7C.unk0 = D_80048C7C.unk0 & 0xFFFD;
        gCurrentViMode.comRegs.ctrl = gCurrentViMode.comRegs.ctrl & ~4;
    }
    if ((arg2 & 0x4000) != 0) {
        D_80048C7C.unk0 = D_80048C7C.unk0 | 1;
        gCurrentViMode.comRegs.ctrl = gCurrentViMode.comRegs.ctrl | 0x10000;
    }
    if ((arg2 & 0x8000) != 0) {
        D_80048C7C.unk0 = D_80048C7C.unk0 & 0xFFFE;
        gCurrentViMode.comRegs.ctrl = gCurrentViMode.comRegs.ctrl & 0xFFFEFFFF;
    }
    if (arg2 & 0x10000) {
        D_80048C7C.unk1 = D_80048C7C.unk1 | 0x80;
        gCurrentViMode.comRegs.ctrl = gCurrentViMode.comRegs.ctrl | 0x10;
    }
    if (arg2 & 0x20000) {
        D_80048C7C.unk1 = D_80048C7C.unk1 & 0xFF7F;
        gCurrentViMode.comRegs.ctrl = gCurrentViMode.comRegs.ctrl & ~0x10;
    }
    if ((arg2 & 0x100) != 0) {
        D_80048C7C.unk0 = D_80048C7C.unk0 | 8;
    }
    if ((arg2 & 0x200) != 0) {
        D_80048C7C.unk0 = D_80048C7C.unk0 & 0xFFF7;
    }
    if ((arg2 & 0x400) != 0) {
        D_80048C7C.unk0 = D_80048C7C.unk0 | 4;
    }
    if ((arg2 & 0x800) != 0) {
        D_80048C7C.unk0 = D_80048C7C.unk0 & 0xFFFB;
    }
    if ((arg2 & 1) != 0) {
        D_80048C7C.unk0 = (D_80048C7C.unk0 & 0xFF7F) | 0x80;
    }
    if ((arg2 & 2) != 0) {
        D_80048C7C.unk0 = D_80048C7C.unk0 & 0xFF7F;
    }
    temp_a0 = D_80048C7C.unk0;
    gCurrentViMode.comRegs.ctrl = gCurrentViMode.comRegs.ctrl & ~0x300;
    if ((temp_a0 >> 0x1F) != 0) {
        phi_v1_5 = 0x100;
        if ((D_80048C7C.unk0 & 1) != 0) {
            phi_v1_5 = 0;
        }
        phi_t9 = gCurrentViMode.comRegs.ctrl | phi_v1_5;
        phi_t1 = (temp_a0 << 5) >> 0x1F;
        phi_t0 = (temp_a0 * 4) >> 0x1F;
    } else {
        temp_t1 = (temp_a0 << 5) >> 0x1F;
        if ((temp_t1 == 0) && (temp_t0 = (temp_a0 * 4) >> 0x1F, (temp_t0 == 1))) {
            gCurrentViMode.comRegs.ctrl = gCurrentViMode.comRegs.ctrl | 0x300;
            phi_t1 = temp_t1;
            phi_t0 = temp_t0;
        } else {
            phi_t9 = gCurrentViMode.comRegs.ctrl | 0x200;
            phi_t1 = temp_t1;
            phi_t0 = (temp_a0 * 4) >> 0x1F;
        }
    }
    gCurrentViMode.comRegs.ctrl = phi_t9;
    if (phi_t2 != 0) {
        if ((temp_a0 * 2) < 0) {
            phi_a0 = 0;
        } else {
            phi_a0 = 1;
        }
    } else {
        phi_a0 = 1;
        if (phi_t1 != 0) {
            phi_a0 = 0;
        }
    }
    temp_a3 = phi_t2 == 0;
    temp_a1 = arg5 & 0xFFFE;
    temp_a2 = arg6 & 0xFFFE;
    if ((temp_a3 != 0) && (phi_a0 == 0)) {
        sp14 = 2;
    } else {
        sp14 = 1;
    }
    if (phi_t2 != 0) {
        phi_v1_3 = 1;
    } else {
        phi_v1_3 = 2;
    }
    temp_t4 = arg1 << 0xB;
    temp_lo = ((temp_t4 / ((temp_a2 - temp_a1) + 0x1E0)) / phi_v1_3) * sp14;
    if ((temp_a3 != 0) && (phi_a0 != 0)) {
        phi_v1 = 2;
    } else {
        phi_v1 = 1;
    }
    gCurrentViMode.comRegs.width = phi_v1 * arg0;
    temp_v1 = osTvType;
    if (temp_v1 == OS_TV_TYPE_NTSC) {
        gCurrentViMode.comRegs.burst = 0x3E52239;
        gCurrentViMode.comRegs.vSync = 0x20C;
        gCurrentViMode.comRegs.hSync = 0xC15;
        gCurrentViMode.comRegs.leap = 0xC150C15;
        gCurrentViMode.comRegs.hStart = 0x6C02EC;
        gCurrentViMode.fldRegs[0].vStart = 0x2501FF;
        gCurrentViMode.fldRegs[0].vBurst = 0xE0204;
    }
    if (temp_v1 == OS_TV_TYPE_PAL) {
        gCurrentViMode.comRegs.burst = 0x404233A;
        gCurrentViMode.comRegs.vSync = 0x270;
        gCurrentViMode.comRegs.hSync = 0x150C69;
        gCurrentViMode.comRegs.leap = 0xC6F0C6E;
        gCurrentViMode.comRegs.hStart = 0x800300;
        gCurrentViMode.fldRegs[0].vStart = 0x2F0269;
        gCurrentViMode.fldRegs[0].vBurst = 0x9026B;
    }
    if (temp_v1 == OS_TV_TYPE_MPAL) {
        gCurrentViMode.comRegs.burst = 0x4651E39;
        gCurrentViMode.comRegs.vSync = 0x20C;
        gCurrentViMode.comRegs.hSync = 0xC10;
        gCurrentViMode.comRegs.leap = 0xC1C0C1C;
        gCurrentViMode.comRegs.hStart = 0x6C02EC;
        gCurrentViMode.fldRegs[0].vStart = 0x2501FF;
        gCurrentViMode.fldRegs[0].vBurst = 0xE0204;
    }
    temp_t7_3 = gCurrentViMode.comRegs.hStart;
    sp0 = temp_t7_3;
    gCurrentViMode.fldRegs[1].vStart = gCurrentViMode.fldRegs[0].vStart;
    temp_t9 = temp_t7_3 >> 0x10;
    sp20 = temp_t9;
    sp1C = temp_t7_3 & 0xFFFF;
    temp_t8 = temp_t9 + arg3;
    sp20 = temp_t8;
    if (temp_t8 < 0) {
        sp20 = 0;
    }
    temp_t7_4 = sp1C + arg4;
    sp1C = temp_t7_4;
    if (temp_t7_4 < 0) {
        sp1C = 0;
    }
    temp_t8_2 = gCurrentViMode.fldRegs[0].vStart;
    gCurrentViMode.comRegs.hStart = (sp20 << 0x10) | sp1C;
    temp_t9_2 = temp_t8_2 >> 0x10;
    sp0 = temp_t8_2;
    sp20 = temp_t9_2;
    temp_t8_3 = temp_t9_2 + temp_a1;
    sp1C = temp_t8_2 & 0xFFFF;
    sp20 = temp_t8_3;
    if (temp_t8_3 < 0) {
        sp20 = 0;
    }
    temp_t7_5 = sp1C + temp_a2;
    sp1C = temp_t7_5;
    if (temp_t7_5 < 0) {
        sp1C = 0;
    }
    temp_t9_3 = gCurrentViMode.fldRegs[1].vStart;
    gCurrentViMode.fldRegs[0].vStart = (sp20 << 0x10) | sp1C;
    temp_t6 = temp_t9_3 >> 0x10;
    sp0 = temp_t9_3;
    sp20 = temp_t6;
    temp_t9_4 = temp_t6 + temp_a1;
    sp1C = temp_t9_3 & 0xFFFF;
    sp20 = temp_t9_4;
    if (temp_t9_4 < 0) {
        sp20 = 0;
    }
    temp_t7_6 = sp1C + temp_a2;
    sp1C = temp_t7_6;
    if (temp_t7_6 < 0) {
        sp1C = 0;
    }
    gCurrentViMode.fldRegs[1].vStart = (sp20 << 0x10) | sp1C;
    gCurrentViMode.fldRegs[1].vBurst = gCurrentViMode.fldRegs[0].vBurst;
    if ((phi_t2 != 0) && (phi_a0 != 0)) {
        gCurrentViMode.comRegs.vSync = gCurrentViMode.comRegs.vSync + 1;
        if (temp_v1 == 2) {
            gCurrentViMode.comRegs.hSync = gCurrentViMode.comRegs.hSync + 0x40001;
        }
        if (temp_v1 == 2) {
            gCurrentViMode.comRegs.leap = gCurrentViMode.comRegs.leap + 0xFFFCFFFE;
        }
    } else {
        gCurrentViMode.fldRegs[0].vStart = gCurrentViMode.fldRegs[0].vStart + 0xFFFDFFFE;
        if (temp_v1 == 2) {
            gCurrentViMode.fldRegs[0].vBurst = gCurrentViMode.fldRegs[0].vBurst + 0xFFFCFFFE;
        }
        if (temp_v1 == 0) {
            gCurrentViMode.fldRegs[1].vBurst = gCurrentViMode.fldRegs[1].vBurst + 0x2FFFE;
        }
    }
    gCurrentViMode.comRegs.vCurrent = 0;
    gCurrentViMode.comRegs.xScale = (arg0 << 0xA) / ((arg4 - arg3) + 0x280);
    phi_v1_2 = 2;
    if (phi_t0 == 0) {
        phi_v1_2 = 1;
    }
    gCurrentViMode.fldRegs[0].origin = phi_v1_2 * arg0 * 2;
    if (phi_t0 == 0) {
        sp14 = 1;
    } else {
        sp14 = 2;
    }
    phi_v1_4 = 2;
    if (phi_t2 != 0) {
        phi_v1_4 = 1;
    }
    gCurrentViMode.fldRegs[0].yScale = temp_lo;
    gCurrentViMode.fldRegs[1].yScale = temp_lo;
    gCurrentViMode.fldRegs[1].origin = phi_v1_4 * arg0 * 2 * sp14;
    if (phi_t1 != 0) {
        if (temp_t4 < 0xB4000) {
            gCurrentViMode.fldRegs[0].yScale = temp_lo + 0x3000000;
            phi_t8 = temp_lo + 0x1000000;
        } else {
            gCurrentViMode.fldRegs[0].yScale = gCurrentViMode.fldRegs[0].yScale + 0x2000000;
            phi_t8 = gCurrentViMode.fldRegs[1].yScale + 0x2000000;
        }
        gCurrentViMode.fldRegs[1].yScale = phi_t8;
    }
    gCurrentViMode.fldRegs[0].vIntr = 2;
    gCurrentViMode.fldRegs[1].vIntr = 2;
    D_80048C48 = 1;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0/func_80000F78.s")
#endif

void func_80001774(void *arg0) {
    if ((D_80048C48 != 0) && (D_80048CDC == 0)) {
        func_80000E9C();
    }
    if (D_80048CD0 != 0) {
        osSendMesg(D_80048CD4, (OSMesg) 1, OS_MESG_NOBLOCK);
        if ((u32)arg0 == -1) {
            gCurrFrameBuffer = D_80048C5C;
            D_80048C5C = 0;
        } else {
            gCurrFrameBuffer = arg0;
        }
    } else if ((u32)arg0 == -1) {
        osViSwapBuffer(D_80048C5C);
        if (D_80048C60 == D_80048C5C) {
            D_80048C64 = 1;
        }
        gCurrFrameBuffer = D_80048C5C;
        D_80048C5C = 0;
    } else {
        osViSwapBuffer(arg0);
        gCurrFrameBuffer = arg0;
    }
    D_80048C74 = (osGetCount() - D_80048C6C) / 0xB9B;
}

void func_8000189C(struct Unk80005A98_2 *arg0) {
    if (D_80048B8C != 0) {
        osSpTaskYield();
        D_80048B8C->unk8 = 4;
        func_80000D34(D_80048B8C);
        arg0->unk8 = 3;
    } else {
        osSpTaskStart(&arg0->task);
        arg0->unk8 = 2;
    }
    D_80048B8C = arg0;
}

void func_80001924(struct Unk80005A98_2 *arg0) {
    D_80048C70 = osGetCount();
    if ((D_80048B8C != 0) && (D_80048B8C->unk8 == 2)) {
        osSpTaskYield();
        D_80048B8C->unk8 = 4;
        arg0->unk8 = 3;
    } else {
        osSpTaskStart(&arg0->task);
        arg0->unk8 = 2;
    }
    D_80048B90 = arg0;
}

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0/func_800019BC.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0/func_80001E20.s")

// u64 memes
#ifdef NON_MATCHING
void func_80001FAC(void) {
    if (D_80048BA4 == 0) {
        if (D_80048B9C != 0) {
            D_80048BA4 = D_80048B9C;
            func_80000E4C(D_80048B9C);
            D_80048BA4->unk8 = 2;
            osDpSetNextBuffer(D_80048BA4->task.t.output_buff, (u64) D_80048BA4->unk78);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0/func_80001FAC.s")
#endif

// Weird match
void func_80002014(void) {
    struct UnkStruct800009E8 *phi_s0;
    OSMesgQueue *queue;

    phi_s0 = D_80048B80;
    while (phi_s0 != 0) {
        queue = phi_s0->unk4;
        osSendMesg(phi_s0->unk4, 1, OS_MESG_NOBLOCK);
        if (queue) // Needed to match
        {
            
        }
        phi_s0 = phi_s0->unk0;
    }
    func_80001E20();
}

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0/func_8000206C.s")

// meme with the function pointer
#ifdef NON_MATCHING
void func_800022DC(void) {
    if ((D_80048B8C != 0) && (D_80048B8C->unk18 == 2)) {
        if (D_80048B8C->unk0 == 1) {
            if (D_80048B8C->unk6C != 0) {
                if (fptr_80048CE4 != 0) {
                    if (D_80048B8C->unk6C == -1) {
                        fptr_80048CE4(D_80048C5C);
                    } else {
                        fptr_80048CE4(D_80048B8C->unk6C);
                    }
                }
                func_80001774(D_80048B8C->unk6C);
            }
            if (D_80048B8C->unk20 != 0) {
                osSendMesg(D_80048B8C->unk20, D_80048B8C->unk1C, 0);
            }
            if (D_80048B8C->unk8 == 4) {
                osSpTaskLoad(&D_80048B90->task);
                osSpTaskStartGo(&D_80048B90->task);
                D_80048B90->unk8 = 2;
            }
        }
        D_80048B8C = NULL;
        func_80001E20();
    }
    else if (D_80048BA4 != 0) {
        if (D_80048BA4->unk6C != 0) {
            if (fptr_80048CE4 != 0) {
                if (D_80048BA4->unk6C == -1) {
                    fptr_80048CE4(D_80048C5C);
                } else {
                    fptr_80048CE4(D_80048BA4->unk6C);
                }
            }
            func_80001774(D_80048BA4->unk6C);
        }
        if (D_80048BA4->unk20 != 0) {
            osSendMesg(D_80048BA4->unk20, D_80048BA4->unk1C, 0);
        }
        D_80048BA4 = NULL;
        func_80001FAC();
    }
    else if ((D_80048B94 != 0) && (D_80048B94->unk18 == 2)) {
        if (D_80048B94->unk0 == 1) {
            if (D_80048B94->unk6C != 0) {
                if (fptr_80048CE4 != 0) {
                    if (D_80048B94->unk6C == -1) {
                        fptr_80048CE4(D_80048C5C);
                    } else {
                        fptr_80048CE4(D_80048B94->unk6C);
                    }
                }
                func_80001774(D_80048B94->unk6C);
            }
            if (D_80048B94->unk20 != 0) {
                osSendMesg(D_80048B94->unk20, D_80048B94->unk1C, 0);
            }
            func_80000DC4(D_80048B94);
        }
        func_80001E20();
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0/func_800022DC.s")
#endif

void func_8000256C(u32 *arg0) {
    arg0[2] = 1;
    func_80000C54(arg0);
    func_80001E20();
}

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0/func_80002598.s")

void func_80002AF8(void) {
    s32 i;

    D_80048CDC = 1;
    osViSetYScale(1.0f);
    osViBlack(1);
    for (i = 0; i < 4; i++) {
        func_800047F0(i);
        func_800047D0(i);
    }
    D_80048CE0 = osAfterPreNMI();
}

void func_80002B70(s32 arg0) {
    D_80048CD8 = arg0;
}

void func_80002B7C(void (*arg0)()) {
    fptr_80048CE4 = arg0;
}

void func_80002B88(void) {
    fptr_80048CE4 = 0;
}
