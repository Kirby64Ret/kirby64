/* The RCP register window.
 *
 * FOUND BY RUNNING, not by reading the symbol table, and worth recording
 * because it is a whole category the gap measurement cannot see.
 *
 * `make -f Makefile.pc gap` counts undefined SYMBOLS. Game code that pokes
 * hardware directly has no symbol:
 *
 *     #define HW_REG(reg, type) *(volatile type *)(uintptr_t)(reg | 0xa0000000)
 *
 *     void check_sp_imem(void) {                        // src/main/main.c
 *         gSPImemOkay = (HW_REG(SP_IMEM_START, u32) == 0x17D7) ? 1 : 0;
 *     }
 *
 * That is a load from 0xA4001000. It links perfectly and segfaults instantly,
 * and it is exactly where the boot got to once the scheduler, the message
 * queues, the VI, the PI and the cartridge DMA were all working. Nothing in
 * the platform layer's 82 symbols would ever have revealed it.
 *
 * WHAT THIS FILE DOES. It reserves the RCP's MMIO range as ordinary anonymous
 * memory at the addresses the game expects, so those accesses read and write
 * something instead of faulting. That is a memory map, not an emulator: no
 * register has any behaviour behind it. A write to SP_STATUS_REG lands in a
 * page and stays there.
 *
 * WHY THAT IS THE RIGHT SHAPE ANYWAY. Every direct register access in this
 * game falls into one of three kinds:
 *
 *   * a self-test whose answer does not matter (check_sp_imem and
 *     check_sp_dmem set a flag nothing reads today);
 *   * something libultra also does through a proper API, which the platform
 *     layer already implements and which will win once the game routes
 *     through it;
 *   * something that genuinely needs the RCP, which is the renderer, and is
 *     out of scope by design.
 *
 * So a passive window unblocks the boot without pretending to a fidelity it
 * does not have. Under the libultraship architecture these accesses become
 * `#ifdef PORT` branches in game code and this file goes away -- but it is
 * what lets the boot trace advance in the meantime, and the trace is the
 * point.
 *
 * The seed values below are the one exception: SP_IMEM and SP_DMEM are
 * primed with what a correctly booted RSP would hold, because the alternative
 * is a self-test that reports broken hardware on every run and buries a real
 * failure later in noise.
 */
#include <ultra64.h>
#include <PR/rcp.h>
#include <stdio.h>
#include <string.h>
#include <sys/mman.h>

#include "pc/pc_platform.h"

/* Physical 0x03F00000 (RDRAM registers) through 0x04900000 (past SI) covers
 * every base in <PR/rcp.h>. KSEG1-mapped, which is what HW_REG produces. */
#define MMIO_PHYS_BASE 0x03F00000u
#define MMIO_PHYS_END  0x04900000u
#define MMIO_KSEG1     0xA0000000u
#define MMIO_ADDR      (MMIO_KSEG1 | MMIO_PHYS_BASE)
#define MMIO_SIZE      (MMIO_PHYS_END - MMIO_PHYS_BASE)

static int sMapped;

int pc_mmio_map(void) {
    void *want = (void *)(uintptr_t)MMIO_ADDR;
    void *got;

    if (sMapped) {
        return 0;
    }

    got = mmap(want, MMIO_SIZE, PROT_READ | PROT_WRITE,
               MAP_PRIVATE | MAP_ANONYMOUS | MAP_FIXED | MAP_NORESERVE, -1, 0);
    if (got == MAP_FAILED || got != want) {
        /* Not fatal by itself: everything except direct register pokes still
         * works, and saying so once is more useful than dying here. The
         * likely cause on a 64-bit host is that the address is already taken;
         * on a hardened kernel it can be vm.mmap_min_addr. */
        fprintf(stderr,
                "[pc] could not reserve the RCP register window at %08X "
                "(%u bytes). Direct HW_REG() accesses will fault.\n",
                (unsigned)MMIO_ADDR, (unsigned)MMIO_SIZE);
        return -1;
    }
    sMapped = 1;

    /* Seed the two locations the boot self-tests read. src/main/main.c wants
     * 0x17D7 at SP_IMEM_START and -1 at SP_DMEM_START; those are the values a
     * successfully uploaded RSP boot ucode leaves behind. */
    *(volatile u32 *)(uintptr_t)(MMIO_KSEG1 | SP_IMEM_START) = 0x17D7;
    *(volatile s32 *)(uintptr_t)(MMIO_KSEG1 | SP_DMEM_START) = -1;

    pc_trace(PC_TR_DMA, "[mmio] RCP window %08X..%08X reserved\n",
             (unsigned)MMIO_ADDR, (unsigned)(MMIO_ADDR + MMIO_SIZE));
    return 0;
}
