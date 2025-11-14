#include <ultra64.h>
#include "macros.h"

extern u32 gGameTampered;
u32 D_803000E0[] = {
    0xDA041370, 0x5206ECBC, 0xD9BDE3B8, 0xDA1CECB0,
    0xF1B9E2E6, 0xD9BFECB8, 0xDA17ECB0, 0x7076ECA8,
    0xC1B8E8A0, 0xC998ECE8, 0xEC58ECAB, 0xFDB9ECA8,
    0xEDB9ECA5, 0xFDB9FC8D, 0xDA01ECB0, 0x72A0ECAC,
    0xC1B8EEA0, 0xC998FCE8, 0xEE98ECAB, 0xFDB9ECA8,
    0xEDB9ECAD, 0xFDB9FC8D, 0xEDB9ECAB, 0xD9BBECA9,
    0xEDB9ECA9, 0xFDB9ECA8, 0x7206ECBC, 0xDA04EC80,
    0xFE59ECA0, 0xFDB9ECA8, 0xFDB9ECA8, 0xFDB9ECA8,
};
u32 D_80300170[ARRAY_COUNT(D_803000E0) + 0x10];

extern u32 dma_read;

extern u32 func_80300170(void);
#define FUNC_ADDR_TO_JAL(x) ((((u32)&x & 0xFFFFFF) / 4) | 0xC000000)

#define ASM_DEOBFUSCATOR 0xFDB9ECA8

// deobfuscates the function directly after this one and calls it
// potentially as a piracy/tamper check
void tamper_check_ovl20(void) {
    u32 i;
	for (i = 0; i < ARRAY_COUNT(D_80300170); i++) {
	    D_80300170[i] = D_803000E0[i] ^ ASM_DEOBFUSCATOR;
	}

	// sets a jal address at runtime...?
    D_80300170[0x4] = FUNC_ADDR_TO_JAL(dma_read);

    osWritebackDCache(&D_80300170, 0xC0);
    osInvalICache(&D_80300170, 0xC0);
    gGameTampered = 0;
    if ((*func_80300170)() == 0) {
        gGameTampered = 1;
    }
}
