#include "common.h"
#include "main/contpad.h"

typedef struct RumbleCmd {
    /* 0x00 */ s32 cmd;
    /* 0x04 */ s32 unk04;
    /* 0x08 */ OSMesgQueue *queue;
} RumbleCmd;

typedef struct RumbleCmd1 {
    /* 0x00 */ s32 cmd;
    /* 0x04 */ s32 unk04;
    /* 0x08 */ OSMesgQueue *queue;
    /* 0x0C */ s32 arg0;
} RumbleCmd1;

typedef struct RumbleCmd2 {
    /* 0x00 */ s32 cmd;
    /* 0x04 */ s32 unk04;
    /* 0x08 */ OSMesgQueue *queue;
    /* 0x0C */ s32 arg0;
    /* 0x10 */ s32 arg1;
} RumbleCmd2;

typedef struct RumbleCmd3 {
    /* 0x00 */ s32 cmd;
    /* 0x04 */ s32 unk04;
    /* 0x08 */ OSMesgQueue *queue;
    /* 0x0C */ s32 arg0;
    /* 0x10 */ s32 arg1;
    /* 0x14 */ s32 arg2;
} RumbleCmd3;

typedef struct RumbleItem {
    /* 0x00 */ u8 unk00;
    /* 0x01 */ u8 unk01;
    /* 0x02 */ u16 unk02;
    /* 0x04 */ u16 unk04;
    /* 0x08 */ s32 unk08;
    /* 0x0C */ u16 *unk0C;
    /* 0x10 */ u16 *unk10;
} RumbleItem;

typedef struct RumbleNode {
    /* 0x00 */ RumbleItem *item;
    /* 0x04 */ struct RumbleNode *next;
    /* 0x08 */ struct RumbleNode *prev;
} RumbleNode;

typedef struct RumbleCont {
    /* 0x00 */ u8 unk00;
    /* 0x04 */ RumbleNode *unk04;
} RumbleCont;

extern OSMesgQueue D_800ED4C8;
extern s32 alGlobals;
extern s32 D_800ED4C0;
extern RumbleCont D_800ED4A0[];
extern u16 *D_800D5238[];
extern u8 D_800D5274[];

void func_800047B0(s32 arg0);
void func_800BB028(RumbleCmd *arg0);
s32 func_800BAA64(RumbleItem *arg0);
void func_800BAA04(RumbleCont *arg0, RumbleNode *arg1);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_10/func_800BA7A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_10/func_800BA90C.s")

void func_800BAA04(RumbleCont *arg0, RumbleNode *arg1) {
    RumbleNode *tail;
    RumbleNode *next;

    tail = arg0->unk04->prev;
    next = arg1->next;
    arg1->item->unk10 = NULL;
    if (next != NULL) {
        if (arg1->prev->next == NULL) {
            arg0->unk04 = arg1->next;
        } else {
            arg1->prev->next = next;
            next->prev = arg1->prev;
        }
        arg1->next = tail->next;
        tail->next = arg1;
        arg1->prev = tail;
        arg0->unk04->prev = arg1;
    }
}

s32 func_800BAA64(RumbleItem *arg0) {
    s32 done;
    u16 *ptr;

    ptr = arg0->unk10;
    done = arg0->unk02;
    if (done == 0) {
        do {
            switch (*ptr >> 13) {
                case 0:
                    return 1;
                case 1:
                case 2:
                    // the do/while(0) shape here is load-bearing for the match
                    do {
                        done = 1;
                    } while (0);
                    break;
                case 3:
                    ptr++;
                    break;
                case 4:
                    if (arg0->unk04 == 1) {
                        ptr++;
                    } else {
                        ptr = arg0->unk0C;
                    }
                    break;
            }
        } while (done == 0);
    }
    return 0;
}

void func_800BAAE4(RumbleCont *arg0) {
    RumbleNode *node;
    RumbleItem *item;

    node = arg0->unk04;
    if (node != NULL) {
        do {
            item = node->item;
            if (item->unk10 == NULL) {
                return;
            }
            if ((item->unk08 == 0) || ((item->unk08 < 0) && (func_800BAA64(item) != 0))) {
                func_800BAA04(arg0, node);
                node = arg0->unk04;
            } else {
                node = node->next;
            }
        } while (node != NULL);
    }
}

s32 func_800BAB68(u8 *arg0, RumbleItem *arg1, s32 arg2) {
    if (arg1->unk10 == NULL) {
        contRumbleInit(arg2);
        contRumbleStop(arg2);
        if (*arg0 != 0) {
            *arg0 = 0;
        }
        return 1;
    }
    if (arg1->unk01 != *arg0) {
        if (*arg0 != 0) {
            contRumbleStop(arg2);
            *arg0 = 0;
        } else {
            func_800047B0(arg2);
            *arg0 = 1;
        }
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_10/func_800BAC0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_10/func_800BAD0C.s")

#ifdef MIPS_TO_C
s32 func_800BAEB0(RumbleCont *arg0, s32 arg1, s32 arg2) {
    RumbleNode *node;
    RumbleItem *item;

    node = arg0->unk04;
    if (node != NULL) {
        do {
            item = node->item;
            if (item != NULL) {
                if ((item->unk10 != NULL) && (arg1 == item->unk00)) {
                    if (arg2 != 0) {
                        if ((item->unk08 > 0) && (item->unk08 < arg2)) {
                            item->unk08 = arg2;
                            return 1;
                        }
                    } else {
                        item->unk02 = item->unk04 = 0;
                        item->unk10 = D_800D5238[arg1];
                        return 1;
                    }
                }
            } else {
                return 0;
            }
            node = node->next;
        } while (node != NULL);
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_10/func_800BAEB0.s")
#endif

RumbleItem *func_800BAF50(RumbleCont *arg0, s32 arg1) {
    RumbleNode *head;
    RumbleNode *tail;
    RumbleNode *node;
    RumbleItem *item;

    head = arg0->unk04;
    tail = head->prev;
    node = head;
    if (head != NULL) {
        do {
            item = node->item;
            if (item->unk10 != NULL) {
                if (D_800D5274[arg1] >= D_800D5274[item->unk00]) {
                    if (node == head) {
                        tail->prev->next = tail->next;
                        arg0->unk04 = tail;
                        tail->next = node;
                        node->prev = tail;
                        return tail->item;
                    } else if (node != tail) {
                        tail->prev->next = tail->next;
                        arg0->unk04->prev = tail->prev;
                        tail->prev = node->prev;
                        tail->prev->next = tail;
                        tail->next = node;
                        node->prev = tail;
                        return tail->item;
                    } else {
                        return tail->item;
                    }
                }
            } else {
                return item;
            }
            node = node->next;
        } while (node != NULL);
    }
    return NULL;
}

void func_800BB028(RumbleCmd *arg0) {
    OSMesg msg;
    OSMesgQueue mq;

    osCreateMesgQueue(&mq, &msg, 1);
    arg0->unk04 = 1;
    arg0->queue = &mq;
    osSendMesg(&D_800ED4C8, arg0, OS_MESG_NOBLOCK);
    osRecvMesg(&mq, NULL, OS_MESG_BLOCK);
}

void func_800BB08C(s32 arg0, s32 arg1, s32 arg2) {
    RumbleCont *cont;
    RumbleItem *item;

    if (D_800ED4C0 != 0) {
        cont = &D_800ED4A0[arg0];
        if (func_800BAEB0(cont, arg1, arg2) == 0) {
            item = func_800BAF50(cont, arg1);
            if (item != NULL) {
                if (arg2 == 0) {
                    item->unk08 = -1;
                } else {
                    item->unk08 = arg2;
                }
                item->unk00 = arg1;
                item->unk01 = 0;
                item->unk02 = item->unk04 = 0;
                item->unk0C = NULL;
                item->unk10 = D_800D5238[arg1];
            }
        }
    }
}

void func_800BB12C(s32 arg0) {
    RumbleCont *cont;
    RumbleNode *node;

    contRumbleInit(arg0);
    contRumbleStop(arg0);
    cont = &D_800ED4A0[arg0];
    if (cont->unk00 != 0) {
        cont->unk00 = 0;
    }
    node = cont->unk04;
    while (node != NULL) {
        node->item->unk10 = NULL;
        node = node->next;
    }
}

#ifdef MIPS_TO_C
void func_800BB198(s32 arg0, s32 arg1) {
    RumbleCont *cont;
    RumbleNode *head;
    RumbleNode *node;
    RumbleItem *item;

    cont = &D_800ED4A0[arg0];
    head = cont->unk04;
    node = head;
    if (head->item->unk10 != NULL) {
        while (node != NULL) {
            item = node->item;
            if (item->unk10 != NULL) {
                if (arg1 == item->unk00) {
                    func_800BAA04(cont, node);
                    head = cont->unk04;
                    node = head;
                } else {
                    node = node->next;
                }
            } else {
                break;
            }
        }
        func_800BAB68((u8 *)cont, head->item, arg0);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_10/func_800BB198.s")
#endif

// Draft, 8/70: correct and structurally exact. Residue is (a) the outer loop's
// node/cont pointer bumps emitted in the opposite order, and (b) the trailing
// 64-bit canary store: the ROM materialises 0xFEDCBA98 and a separate `li 0`
// FIRST and then shares one `lui $at` between both stores. `extern u64` gets the
// `li $t4, 0` right but splits the lui; a 2-word array, a 2-field struct, split
// named externs and a hoisted local all keep the lui unshared.
// The interleaved head (node/item pointer assignments BETWEEN the stores) is
// load-bearing -- grouping them before or after costs 5-12 diffs.
#ifdef NON_MATCHING
extern RumbleItem D_800ED320[][3];
extern RumbleNode D_800ED410[][3];
extern OSThread D_800ECD70;
extern s32 D_800ECF58[2];

void func_800BAD0C(void *);

void func_800BB24C(void) {
    RumbleNode *node;
    RumbleNode *prev;
    RumbleItem *item;
    s32 i;
    s32 j;

    for (i = 0; i < 4; i++) {
        D_800ED4A0[i].unk00 = 0;
        D_800ED4A0[i].unk04 = &D_800ED410[i][0];
        node = &D_800ED410[i][0];
        D_800ED410[i][0].item = &D_800ED320[i][0];
        item = &D_800ED320[i][0];
        D_800ED320[i][0].unk0C = NULL;
        D_800ED320[i][0].unk10 = NULL;
        prev = node;
        for (j = 1; j != 3; j++) {
            node++;
            prev->next = node;
            item++;
            node->item = item;
            item->unk0C = NULL;
            item->unk10 = NULL;
            node->prev = prev;
            prev = node;
        }
        node->next = NULL;
        D_800ED4A0[i].unk04->prev = node;
    }
    D_800ED4C0 = 1;
    alGlobals = contChannelMap[0];
    osCreateThread(&D_800ECD70, 100000000, func_800BAD0C, NULL, D_800ED320, 0x34);
    D_800ECF58[0] = 0;
    D_800ECF58[1] = 0xFEDCBA98;
    osStartThread(&D_800ECD70);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_10/func_800BB24C.s")
#endif

void func_800BB364(s32 arg0, s32 arg1, s32 arg2) {
    RumbleCmd3 cmd;

    cmd.cmd = 0;
    cmd.arg0 = arg0;
    cmd.arg1 = arg1;
    cmd.arg2 = arg2;
    func_800BB028((RumbleCmd *) &cmd);
}

void func_800BB394(s32 arg0) {
    RumbleCmd1 cmd;

    cmd.cmd = 1;
    cmd.arg0 = arg0;
    func_800BB028((RumbleCmd *) &cmd);
}

void func_800BB3C0(s32 arg0, s32 arg1) {
    RumbleCmd2 cmd;

    cmd.cmd = 2;
    cmd.arg0 = arg0;
    cmd.arg1 = arg1;
    func_800BB028((RumbleCmd *) &cmd);
}

void func_800BB3F0(void) {
    RumbleCmd cmd;

    cmd.cmd = 3;
    func_800BB028(&cmd);
}

void func_800BB418(void) {
    RumbleCmd cmd;

    cmd.cmd = 4;
    func_800BB028(&cmd);
}

void func_800BB440(void) {
    RumbleCmd cmd;

    cmd.cmd = 5;
    func_800BB028(&cmd);
}

void func_800BB468(s32 arg0, s32 arg1) {
    func_800BB364(alGlobals, arg0, arg1);
}

void func_800BB498(void) {
    func_800BB394(alGlobals);
}

void func_800BB4BC(s32 arg0) {
    func_800BB3C0(alGlobals, arg0);
}

void func_800BB4E4(s32 arg0, s32 arg1, s32 arg2) {
    func_800BB364(contChannelMap[arg0], arg1, arg2);
}

void func_800BB510(s32 arg0) {
    func_800BB394(contChannelMap[arg0]);
}

// last function in this translation unit: its listing carries the
// TU's trailing alignment padding, which C does not emit
#ifdef MIPS_TO_C
void func_800BB53C(s32 arg0, s32 arg1) {
    func_800BB3C0(contChannelMap[arg0], arg1);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_10/func_800BB53C.s")
#endif
