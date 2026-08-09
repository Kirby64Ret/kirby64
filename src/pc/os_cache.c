/* Cache maintenance -- genuine no-ops on PC.
 *
 * On N64 these exist because the RCP is a bus master that does not see the
 * R4300's caches: before handing a buffer to DMA you write the dirty lines
 * back, and after DMA has filled a buffer you invalidate the stale lines.
 *
 * On a PC host there is no second bus master. Every "DMA" in this port is a
 * memcpy performed by the same core, through the same coherent cache
 * hierarchy, so there is nothing to write back and nothing to invalidate.
 * These are correct as empty functions, not stubs -- the operation they name
 * is genuinely unnecessary here rather than unimplemented.
 *
 * The one thing they must NOT be is #defines to nothing, because the game
 * calls them through the real prototypes with real arguments and some of
 * those arguments have side effects.
 */
#include <ultra64.h>

void osInvalDCache(void *addr, size_t size) {
    (void)addr;
    (void)size;
}

void osInvalICache(void *addr, size_t size) {
    (void)addr;
    (void)size;
}

void osWritebackDCache(void *addr, size_t size) {
    (void)addr;
    (void)size;
}

void osWritebackDCacheAll(void) {
}
