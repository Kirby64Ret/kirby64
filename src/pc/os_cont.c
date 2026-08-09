/* Serial interface: controllers, rumble packs, and EEPROM.
 *
 * The SI is a polled bus. Nothing here is asynchronous on PC, but the game's
 * code is written around the asynchrony and would deadlock without it:
 *
 *     osContStartQuery(&sSIMesgQueue);
 *     osRecvMesg(&sSIMesgQueue, NULL, 1);      // BLOCKING
 *     osContGetQuery(sControllerStatuses);
 *
 * (src/main/contpad.c, query_controllers). sSIMesgQueue holds one message. So
 * every osCont*Start* call must post exactly one completion, and osCont*Get*
 * must then hand back the data the start call captured. Posting nothing hangs
 * the controller thread on its first poll; posting twice overflows a
 * one-deep queue and loses the second, which is harmless but hides bugs.
 *
 * The capture-then-fetch split is kept honestly: Start snapshots the pads and
 * Get copies the snapshot out. Reading the host pads inside Get instead would
 * work today and would quietly break the moment something calls Get twice.
 */
#include <ultra64.h>
#include <PR/os_pfs.h>
#include <PR/os_motor.h>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "pc/pc_platform.h"
#include "pc/pc_backend.h"

static PCPad sSnapshot[MAXCONTROLLERS];
static u8 sPlugged[MAXCONTROLLERS];
static int sContInited;

static void post_si(OSMesgQueue *mq) {
    int saved = pc_in_event_delivery;

    if (mq == NULL) {
        return;
    }
    pc_in_event_delivery = 1;
    osSendMesg(mq, (OSMesg)1, OS_MESG_NOBLOCK);
    pc_in_event_delivery = saved;
    pc_event_fire(OS_EVENT_SI);
}

static void snapshot(void) {
    int i;

    pcb_input_poll(sSnapshot, MAXCONTROLLERS);
    for (i = 0; i < MAXCONTROLLERS; i++) {
        sPlugged[i] = sSnapshot[i].present;
    }
}

void pc_cont_init(void) {
    if (sContInited) {
        return;
    }
    sContInited = 1;
    snapshot();
}

void pc_cont_tick(void) {
    /* Input is sampled on demand in osContStartReadData, which is what the
     * hardware does. Nothing to do between polls. */
}

/* ---------------------------------------------------------- controllers */

s32 osContInit(OSMesgQueue *mq, u8 *bitpattern, OSContStatus *status) {
    int i;
    u8 bits = 0;

    pc_cont_init();
    snapshot();

    for (i = 0; i < MAXCONTROLLERS; i++) {
        if (sPlugged[i]) {
            bits |= (u8)(1 << i);
            status[i].type = CONT_TYPE_NORMAL | CONT_ABSOLUTE | CONT_JOYPORT;
            /* CONT_CARD_ON: a pak is inserted. Reporting one is what makes
             * src/main/contpad.c call osMotorInit and osPfsInitPak, which is
             * the path a real session takes -- and the Controller Pak here is
             * a file that always exists, so it is also true. */
            status[i].status = CONT_CARD_ON;
            status[i].errno = 0;
        } else {
            status[i].type = 0;
            status[i].status = 0;
            status[i].errno = CONT_NO_RESPONSE_ERROR;
        }
    }
    if (bitpattern != NULL) {
        *bitpattern = bits;
    }
    /* osContInit is synchronous on hardware too -- it does its own SI
     * transaction and waits. It must NOT post to mq: src/main/contpad.c
     * (func_80004250) does not receive after calling it, and a stale message
     * would be consumed by the next query_controllers as a false completion. */
    (void)mq;
    return 0;
}

s32 osContReset(OSMesgQueue *mq, OSContStatus *status) {
    return osContInit(mq, NULL, status);
}

s32 osContStartQuery(OSMesgQueue *mq) {
    snapshot();
    post_si(mq);
    return 0;
}

void osContGetQuery(OSContStatus *status) {
    int i;

    for (i = 0; i < MAXCONTROLLERS; i++) {
        if (sPlugged[i]) {
            status[i].type = CONT_TYPE_NORMAL | CONT_ABSOLUTE | CONT_JOYPORT;
            status[i].status = CONT_CARD_ON;
            status[i].errno = 0;
        } else {
            status[i].type = 0;
            status[i].status = 0;
            status[i].errno = CONT_NO_RESPONSE_ERROR;
        }
    }
}

s32 osContStartReadData(OSMesgQueue *mq) {
    snapshot();
    post_si(mq);
    return 0;
}

void osContGetReadData(OSContPad *pad) {
    int i;

    for (i = 0; i < MAXCONTROLLERS; i++) {
        if (sPlugged[i]) {
            pad[i].button = sSnapshot[i].button;
            pad[i].stick_x = sSnapshot[i].stick_x;
            pad[i].stick_y = sSnapshot[i].stick_y;
            pad[i].errno = 0;
        } else {
            pad[i].button = 0;
            pad[i].stick_x = 0;
            pad[i].stick_y = 0;
            pad[i].errno = CONT_NO_RESPONSE_ERROR;
        }
    }
}

s32 osContSetCh(u8 ch) {
    (void)ch;
    return 0;
}

/* ---------------------------------------------------------------- rumble */

/* On N64 the Rumble Pak is a device in the controller's pak slot, so
 * osMotorInit shares the OSPfs handle with the memory card and the two are
 * mutually exclusive. The port has no such conflict -- rumble is a gamepad
 * feature and the "pak" is a file -- so both are always available. */
s32 osMotorInit(OSMesgQueue *mq, OSPfs *pfs, int channel) {
    if (pfs == NULL) {
        return PFS_ERR_INVALID;
    }
    if (channel < 0 || channel >= MAXCONTROLLERS || !sPlugged[channel]) {
        return PFS_ERR_NOPACK;
    }
    pfs->queue = mq;
    pfs->channel = channel;
    pfs->status |= PFS_MOTOR_INITIALIZED;
    return 0;
}

s32 __osMotorAccess(OSPfs *pfs, s32 flag) {
    if (pfs == NULL || !(pfs->status & PFS_MOTOR_INITIALIZED)) {
        return PFS_ERR_INVALID;
    }
    /* MOTOR_STOP is 0 and MOTOR_START is 1 in <PR/os_motor.h>. */
    pcb_input_rumble(pfs->channel, flag != MOTOR_STOP);
    return 0;
}

/* osMotorStart/osMotorStop are #defines onto __osMotorAccess in
 * <PR/os_motor.h>, not separate entry points, so there is nothing else to
 * define here. */

/* --------------------------------------------------------------- EEPROM */

/* Kirby 64's save data. 4 Kbit = 64 blocks of 8 bytes; the addresses the API
 * takes are BLOCK numbers, not bytes, which is the one detail that is easy to
 * get wrong and impossible to notice until a save is read back shifted.
 *
 * Backed by a plain file, written through on every block write. There is no
 * shutdown hook in the game to flush at -- a console loses power without
 * warning and the hardware is genuinely committed per write -- so this
 * matches the real device's durability as well as its layout. */
#define EEPROM_BYTES (EEPROM_MAXBLOCKS * EEPROM_BLOCK_SIZE)

static u8 sEeprom[EEPROM_BYTES];
static int sEepromLoaded;

static const char *eeprom_path(void) {
    const char *p = getenv("KIRBY_EEPROM");

    return (p != NULL) ? p : "kirby64.eep";
}

static void eeprom_load(void) {
    FILE *f;

    if (sEepromLoaded) {
        return;
    }
    sEepromLoaded = 1;
    f = fopen(eeprom_path(), "rb");
    if (f != NULL) {
        fread(sEeprom, 1, sizeof(sEeprom), f);
        fclose(f);
    }
}

static void eeprom_flush(void) {
    FILE *f = fopen(eeprom_path(), "wb");

    if (f != NULL) {
        fwrite(sEeprom, 1, sizeof(sEeprom), f);
        fclose(f);
    }
}

s32 osEepromProbe(OSMesgQueue *mq) {
    (void)mq;
    eeprom_load();
    return EEPROM_TYPE_4K;
}

s32 osEepromLongRead(OSMesgQueue *mq, u8 address, u8 *buffer, int nbytes) {
    u32 off = (u32)address * EEPROM_BLOCK_SIZE;

    (void)mq;
    eeprom_load();
    if (nbytes < 0 || off + (u32)nbytes > EEPROM_BYTES) {
        return -1;
    }
    memcpy(buffer, sEeprom + off, (size_t)nbytes);
    return 0;
}

s32 osEepromLongWrite(OSMesgQueue *mq, u8 address, u8 *buffer, int nbytes) {
    u32 off = (u32)address * EEPROM_BLOCK_SIZE;

    (void)mq;
    eeprom_load();
    if (nbytes < 0 || off + (u32)nbytes > EEPROM_BYTES) {
        return -1;
    }
    memcpy(sEeprom + off, buffer, (size_t)nbytes);
    eeprom_flush();
    return 0;
}

s32 osEepromRead(OSMesgQueue *mq, u8 address, u8 *buffer) {
    return osEepromLongRead(mq, address, buffer, EEPROM_BLOCK_SIZE);
}

s32 osEepromWrite(OSMesgQueue *mq, u8 address, u8 *buffer) {
    return osEepromLongWrite(mq, address, buffer, EEPROM_BLOCK_SIZE);
}
