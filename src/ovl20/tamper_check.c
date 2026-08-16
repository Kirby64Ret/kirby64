#include <ultra64.h>
#include "macros.h"
#include "main/dma.h"

#include "tamper_check.h"

u32 tamperCryptFunc[] = {
    0xDA041370, 0x5206ECBC, 0xD9BDE3B8, 0xDA1CECB0,
    0xF1B9E2E6, 0xD9BFECB8, 0xDA17ECB0, 0x7076ECA8,
    0xC1B8E8A0, 0xC998ECE8, 0xEC58ECAB, 0xFDB9ECA8,
    0xEDB9ECA5, 0xFDB9FC8D, 0xDA01ECB0, 0x72A0ECAC,
    0xC1B8EEA0, 0xC998FCE8, 0xEE98ECAB, 0xFDB9ECA8,
    0xEDB9ECAD, 0xFDB9FC8D, 0xEDB9ECAB, 0xD9BBECA9,
    0xEDB9ECA9, 0xFDB9ECA8, 0x7206ECBC, 0xDA04EC80,
    0xFE59ECA0, 0xFDB9ECA8, 0xFDB9ECA8, 0xFDB9ECA8,
};

u32 tamperPadBss[4];
u32 tamperOutputBuffer[ARRAY_COUNT(tamperCryptFunc) + 0x10];

// deobfuscates the function directly after this one and calls it
// potentially as a piracy/tamper check
void tamper_check_ovl20(void) {
    u32 i;
	for (i = 0; i < ARRAY_COUNT(tamperOutputBuffer); i++) {
	    tamperOutputBuffer[i] = tamperCryptFunc[i] ^ TAMPER_XOR_KEY;
	}

	// sets a jal address at runtime...?
    tamperOutputBuffer[0x4] = FUNC_ADDR_TO_JAL(dma_read);

    osWritebackDCache(&tamperOutputBuffer, 0xC0);
    osInvalICache(&tamperOutputBuffer, 0xC0);
    gGameTampered = 0;
    if ((*func_80300170)() == 0) {
        gGameTampered = 1;
    }
}
