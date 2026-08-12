/* Parallel interface: the cartridge, SRAM, and every asset load in the game.
 *
 * All content in Kirby 64 arrives through this path. src/main/dma.c wraps it
 * in dma_copy(), which chops the transfer into 64 KB pieces, calls
 * osEPiStartDma once per piece and blocks on osRecvMesg for each completion.
 * So the contract osEPiStartDma has to honour is exactly two things: move the
 * bytes, then post mb->hdr to mb->hdr.retQueue. Miss the second and the game
 * hangs on its first asset.
 *
 * The cartridge is baserom.us.z64, mapped read-only. devAddr arrives as a
 * cartridge-space address -- sometimes a bare ROM offset (dma_overlay_load
 * passes ovl->startAddr), sometimes a K1 pointer (src/main/main.c does
 * dma_read(0xB0000B70, ...) for the RSP boot ucode) -- so the domain-1 base is
 * masked off before indexing the file.
 *
 * =====================================================================
 * TWO KINDS OF TRAFFIC, AND THEY NEED OPPOSITE TREATMENT
 * =====================================================================
 *
 * See docs/PC_PORT_SURFACE.md, "Overlays cannot be emulated, only
 * intercepted". Kirby 64 is 20 overlays sharing VRAM ranges, and the loader
 * DMAs an overlay's image out of the cartridge and then calls into it.
 *
 *   ASSET reads are real. They must come out of the ROM file, byte for byte.
 *   OVERLAY CODE reads must not happen at all. Those cartridge bytes are MIPS
 *   machine code; the native binary's version of the same functions is x86,
 *   already linked and already resident. Copying and jumping would execute
 *   the wrong instruction set at the wrong address.
 *
 * The split is made HERE, on the destination address, with two independent
 * tests -- one specific and one that cannot be fooled:
 *
 *   1. The overlay registry (src/pc/pc_overlay.c). Every overlay whose bounds
 *      the port knows registers its resident RAM span; a DMA landing inside
 *      one is an overlay load and is skipped. Today only ovl1 is registered,
 *      because ovl1Def in src/main/main.c is the only overlay descriptor
 *      built from linker symbols -- the other nineteen are still assembly
 *      data and cannot be read until they are decompiled.
 *
 *   2. The image guard. A DMA whose destination lands inside the native
 *      binary's own text or rodata is an overlay code load by definition,
 *      whatever the registry says, because nothing else could legitimately
 *      target it. __executable_start and _etext are supplied by the linker
 *      in every ELF program, so this test needs no table at all and covers
 *      the nineteen overlays the registry cannot yet see. It is the reason
 *      this design does not have to wait for the overlay loader to be
 *      decompiled to be safe.
 *
 * Neither test can be done from the caller's side: osEPiStartDma only sees a
 * device address, a RAM address and a length, and by design does not know
 * about struct Overlay. Doing it on the destination is what makes the two
 * cases separable at all.
 */
#include <ultra64.h>
#include <PR/rcp.h>
#include <errno.h>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "pc/pc_platform.h"

/* Cartridge address space: domain 1 address 2 lives at 0x10000000 physical,
 * 0xB0000000 through KSEG1. Mask both off to get a file offset. */
#define CART_MASK 0x0FFFFFFFu
#define CART_BASE 0x10000000u

/* -------------------------------------------------------------- ROM image */

static u8 *sRom;
static u32 sRomSize;

int pc_rom_open(void) {
    const char *path = getenv("KIRBY_ROM");
    FILE *f;
    long n;

    if (sRom != NULL) {
        return 0;
    }
    if (path == NULL) {
        path = "baserom.us.z64";
    }
    f = fopen(path, "rb");
    if (f == NULL) {
        fprintf(stderr, "[pc] cannot open cartridge '%s': %s\n", path,
                strerror(errno));
        return -1;
    }
    fseek(f, 0, SEEK_END);
    n = ftell(f);
    fseek(f, 0, SEEK_SET);
    if (n <= 0) {
        fclose(f);
        return -1;
    }
    sRom = (u8 *)malloc((size_t)n);
    if (sRom == NULL || fread(sRom, 1, (size_t)n, f) != (size_t)n) {
        fprintf(stderr, "[pc] short read on cartridge '%s'\n", path);
        free(sRom);
        sRom = NULL;
        fclose(f);
        return -1;
    }
    fclose(f);
    sRomSize = (u32)n;
    pc_trace(PC_TR_DMA, "[dma] cartridge %s, %u bytes\n", path, sRomSize);
    return 0;
}

const u8 *pc_rom_base(u32 *sizeOut) {
    if (sizeOut != NULL) {
        *sizeOut = sRomSize;
    }
    return sRom;
}

u32 pc_rom_read(u32 off, void *dst, u32 size) {
    off &= CART_MASK;
    if (sRom == NULL || off >= sRomSize) {
        return 0;
    }
    if (off + size > sRomSize) {
        size = sRomSize - off;
    }
    memcpy(dst, sRom + off, size);
    return size;
}

/* ------------------------------------------------------------------- SRAM */

/* The cartridge's battery-backed save RAM, 32 KB on this board. src/main/dma.c
 * builds gSRAMHandle by hand and drives it through the same osEPiStartDma, so
 * it is a device here rather than a special case. Backed by a file so saves
 * survive the process, written through on every store because there is no
 * shutdown hook to flush at. */
#define SRAM_SIZE 0x8000

static u8 sSram[SRAM_SIZE];
static int sSramLoaded;

static const char *sram_path(void) {
    const char *p = getenv("KIRBY_SRAM");

    return (p != NULL) ? p : "kirby64.sra";
}

static void sram_load(void) {
    FILE *f;

    if (sSramLoaded) {
        return;
    }
    sSramLoaded = 1;
    f = fopen(sram_path(), "rb");
    if (f != NULL) {
        fread(sSram, 1, sizeof(sSram), f);
        fclose(f);
    }
}

static void sram_flush(void) {
    FILE *f = fopen(sram_path(), "wb");

    if (f != NULL) {
        fwrite(sSram, 1, sizeof(sSram), f);
        fclose(f);
    }
}

/* ------------------------------------------------------------- PI handles */

static OSPiHandle sCartHandle;
static OSPiHandle *sHandleList;
static OSMesgQueue *sPiCmdQueue;

static void check_image_guard(void);

void pc_pi_init(void) {
    check_image_guard();
    pc_rom_open();
    sram_load();
}

OSPiHandle *osCartRomInit(void) {
    if (sCartHandle.baseAddress != 0) {
        return &sCartHandle;
    }
    pc_rom_open();

    /* The same fields libultra fills in from the cartridge's domain register.
     * Nothing here reads them back, but src/main/dma.c compares
     * gSRAMHandle.baseAddress against PHYS_TO_K1(PI_DOM2_ADDR2) to decide
     * whether it has already initialised, so the values have to be the real
     * ones rather than zero. */
    sCartHandle.type = DEVICE_TYPE_CART;
    sCartHandle.baseAddress = 0xB0000000u;
    sCartHandle.latency = 0x40;
    sCartHandle.pageSize = 0x0C;
    sCartHandle.relDuration = 0x02;
    sCartHandle.pulse = 0x12;
    sCartHandle.domain = 0;
    sCartHandle.speed = 0;
    memset(&sCartHandle.transferInfo, 0, sizeof(sCartHandle.transferInfo));

    osEPiLinkHandle(&sCartHandle);
    return &sCartHandle;
}

s32 osEPiLinkHandle(OSPiHandle *h) {
    OSPiHandle *p;

    for (p = sHandleList; p != NULL; p = p->next) {
        if (p == h) {
            return 0;
        }
    }
    h->next = sHandleList;
    sHandleList = h;
    return 0;
}

/* On N64 this spawns a priority-150 thread that serialises PI access, because
 * the PI is one shared piece of hardware and several threads want it. Here
 * every transfer completes inside osEPiStartDma before it returns, so there is
 * nothing to serialise and no thread is created. The command queue is kept
 * because osPiGetCmdQueue() hands it out and code may post to it. */
void osCreatePiManager(OSPri pri, OSMesgQueue *cmdQ, OSMesg *cmdBuf,
                       s32 cmdMsgCnt) {
    (void)pri;
    if (cmdQ != NULL) {
        osCreateMesgQueue(cmdQ, cmdBuf, cmdMsgCnt);
    }
    sPiCmdQueue = cmdQ;
    pc_pi_init();
}

OSMesgQueue *osPiGetCmdQueue(void) {
    return sPiCmdQueue;
}

/* ------------------------------------------------------- the image guard */

/* Supplied by the linker in every ELF executable. __data_start is the first
 * byte of the WRITABLE image; everything from __executable_start up to it --
 * .text, .rodata, .eh_frame and the rest -- is mapped read-only, so a DMA
 * landing anywhere in that span cannot be performed at all, only refused.
 *
 * _etext alone is not enough, and the difference is not academic: the second
 * overlay's descriptor resolves its RAMStart into .eh_frame (0x4c5bb9, past
 * _etext at 0x4b974d and with no symbol on it), and a guard that stopped at
 * _etext waved that straight through into a SIGSEGV. */
extern char __executable_start[];
extern char _etext[];
extern char __data_start[];

static int lands_in_own_image(const void *p, u32 size) {
    const char *a = (const char *)p;
    const char *b = a + size;

    return b > __executable_start && a < __data_start;
}

/* PROVE THE GUARD IS WIRED TO THE REAL LINKER SYMBOLS, at startup, once.
 *
 * ld defines __executable_start and _etext only when nothing else does, and a
 * WEAK definition counts as something else. tools/pc/gen_stubs.py used to emit
 * weak abort stubs for both (they are undefined symbols in os_pi.o like any
 * other), so the two ended up 21 bytes apart inside the stub blob and this
 * guard answered "no" for every address in the program. The consequence was a
 * SIGSEGV inside memcpy 200 ms into the run, with a backtrace pointing at
 * dma_overlay_load and nothing pointing here.
 *
 * The generator no longer stubs them. This is the check that says so out loud
 * if that ever regresses: the address of a function in this very file must
 * land inside the range the guard is testing against. */
static void check_image_guard(void) {
    const char *self = (const char *)(const void *)&lands_in_own_image;

    if (_etext > __executable_start && __data_start > _etext &&
        lands_in_own_image(self, 1)) {
        return;
    }
    fprintf(stderr,
            "[pc] FATAL: the own-image DMA guard is not wired up.\n"
            "     __executable_start=%p _etext=%p __data_start=%p, and this\n"
            "     file's own code at %p is not inside that range. Something is\n"
            "     defining those linker symbols -- check build/pc/stubs.c.\n"
            "     Continuing would let an overlay DMA overwrite the port's\n"
            "     own code.\n",
            (void *)__executable_start, (void *)_etext, (void *)__data_start,
            (const void *)self);
    fflush(NULL);
    abort();
}

/* ---------------------------------------------------------------- the DMA */

static s32 do_transfer(OSPiHandle *h, s32 dir, u32 devAddr, void *ram,
                       u32 size) {
    int ovl;

    if (ram == NULL || size == 0) {
        return 0;
    }

    /* Split 1: a known-resident overlay. */
    ovl = pc_overlay_covering(ram, size);
    if (ovl >= 0) {
        pc_trace(PC_TR_DMA,
                 "[dma] SKIP overlay %d load: rom %08x -> %p (%u bytes)\n", ovl,
                 devAddr, ram, size);
        return 0;
    }

    /* Split 1b: a destination that cannot be host memory at all.
     *
     * ram == NULL alone is not enough, because dma_copy() SPLITS a transfer
     * into 0x10000-byte chunks and advances the address between them: given a
     * NULL buffer the first chunk is skipped here and the second arrives as
     * 0x10000, which is still unmapped but no longer zero. That is exactly how
     * the port died -- memcpy to 0x10000, with dma_read()'s caller three
     * frames up holding a buffer that a stubbed allocator never allocated.
     *
     * This binary links -no-pie at 0x400000, so nothing the game can legally
     * write to lives below that. Refusing the whole range turns "the allocator
     * upstream is not implemented yet" into a traced skip instead of a SIGSEGV
     * inside libc, which is the difference between a diagnosis and a hunt.
     *
     * It returns SUCCESS, like the other two skips, and that is deliberate.
     * Reporting -1 here looks honest and is worse: src/main/dma.c treats a
     * failed osEPiStartDma as `fatal_printf("dma pi full ...")`, which calls
     * faultWaitButton, which spins on crash_screen_sleep waiting for a button
     * that a headless run will never see -- at gtl process priority 250, above
     * everything else. The port then sat there forever with the VI ticking
     * happily, which is a far more confusing state than a skipped read. */
    if ((const char *)ram < __executable_start) {
        pc_trace(PC_TR_DMA,
                 "[dma] SKIP unmapped destination: rom %08x -> %p (%u bytes)\n",
                 devAddr, ram, size);
        return 0;
    }

    /* Split 2: the guard that needs no table. */
    if (lands_in_own_image(ram, size)) {
        pc_trace(PC_TR_DMA,
                 "[dma] SKIP write into own text: rom %08x -> %p (%u bytes)\n",
                 devAddr, ram, size);
        return 0;
    }

    if (h != NULL && h->type == DEVICE_TYPE_SRAM) {
        u32 off = devAddr & CART_MASK;

        sram_load();
        if (off >= SRAM_SIZE) {
            return -1;
        }
        if (off + size > SRAM_SIZE) {
            size = SRAM_SIZE - off;
        }
        if (dir == OS_READ) {
            memcpy(ram, sSram + off, size);
        } else {
            memcpy(sSram + off, ram, size);
            sram_flush();
        }
        pc_trace(PC_TR_DMA, "[dma] sram %s %08x %p %u\n",
                 dir == OS_READ ? "rd" : "wr", off, ram, size);
        return 0;
    }

    /* Cartridge. Writes to a mask ROM are physically impossible and libultra
     * would just corrupt the PI; refuse loudly rather than silently. */
    if (dir != OS_READ) {
        pc_trace(PC_TR_DMA, "[dma] write to cartridge refused (%08x, %u)\n",
                 devAddr, size);
        return -1;
    }
    if (sRom == NULL) {
        /* No ROM present. Zero-fill so the caller gets deterministic garbage
         * rather than whatever was in the buffer, and say so once. */
        PC_STUB_ONCE("no cartridge image; asset DMA returns zeroes");
        memset(ram, 0, size);
        return 0;
    }
    if (pc_rom_read(devAddr, ram, size) != size) {
        pc_trace(PC_TR_DMA, "[dma] short/oob read %08x %u\n", devAddr, size);
    }
    pc_trace(PC_TR_DMA, "[dma] cart rd %08x -> %p %u\n", devAddr & CART_MASK,
             ram, size);
    return 0;
}

s32 osEPiStartDma(OSPiHandle *h, OSIoMesg *mb, s32 dir) {
    s32 rc;

    if (mb == NULL) {
        return -1;
    }
    rc = do_transfer(h, dir, (u32)mb->devAddr, mb->dramAddr, (u32)mb->size);

    /* The completion message. Synchronous transfer, so it is posted before
     * returning; src/main/dma.c's osRecvMesg then finds it already waiting and
     * does not block, which is the fast path and is correct. */
    if (mb->hdr.retQueue != NULL) {
        int saved = pc_in_event_delivery;

        pc_in_event_delivery = 1;
        osSendMesg(mb->hdr.retQueue, (OSMesg)mb, OS_MESG_NOBLOCK);
        pc_in_event_delivery = saved;
    }
    pc_event_fire(OS_EVENT_PI);
    return rc;
}

s32 osPiStartDma(OSIoMesg *mb, s32 pri, s32 dir, uintptr_t devAddr, void *vAddr,
                 size_t nbytes, OSMesgQueue *mq) {
    (void)pri;
    if (mb != NULL) {
        mb->hdr.retQueue = mq;
        mb->dramAddr = vAddr;
        mb->devAddr = devAddr;
        mb->size = nbytes;
    }
    return osEPiStartDma(&sCartHandle, mb, dir);
}

s32 osEPiRawStartDma(OSPiHandle *h, s32 dir, u32 devAddr, void *ram,
                     size_t size) {
    return do_transfer(h, dir, devAddr, ram, (u32)size);
}

s32 osPiRawStartDma(s32 dir, u32 devAddr, void *ram, size_t size) {
    return do_transfer(&sCartHandle, dir, devAddr, ram, (u32)size);
}

s32 osEPiReadIo(OSPiHandle *h, u32 devAddr, u32 *data) {
    u8 b[4];

    (void)h;
    if (pc_rom_read(devAddr, b, 4) != 4) {
        *data = 0;
        return -1;
    }
    /* The cartridge is big-endian; a PI IO read delivers a native word. */
    *data = ((u32)b[0] << 24) | ((u32)b[1] << 16) | ((u32)b[2] << 8) | b[3];
    return 0;
}

s32 osEPiRawReadIo(OSPiHandle *h, u32 devAddr, u32 *data) {
    return osEPiReadIo(h, devAddr, data);
}

s32 osPiReadIo(uintptr_t devAddr, u32 *data) {
    return osEPiReadIo(&sCartHandle, (u32)devAddr, data);
}

s32 osEPiWriteIo(OSPiHandle *h, u32 devAddr, u32 data) {
    (void)h;
    (void)devAddr;
    (void)data;
    return -1; /* mask ROM */
}

s32 osEPiRawWriteIo(OSPiHandle *h, u32 devAddr, u32 data) {
    return osEPiWriteIo(h, devAddr, data);
}

s32 osPiWriteIo(uintptr_t devAddr, u32 data) {
    return osEPiWriteIo(&sCartHandle, (u32)devAddr, data);
}

s32 osEPiDeviceType(OSPiHandle *h, OSPiInfo *info) {
    if (h == NULL || info == NULL) {
        return -1;
    }
    info->type = h->type;
    info->address = h->baseAddress;
    return 0;
}

/* Nothing is outstanding, ever: transfers complete inside osEPiStartDma. */
void pc_pi_tick(void) {
}
