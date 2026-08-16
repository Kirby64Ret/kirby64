#ifndef _TAMPER_H
#define _TAMPER_H

// ovl1 bss
extern u32 gGameTampered;

#define FUNC_ADDR_TO_JAL(x) ((((u32)&x & 0xFFFFFF) / 4) | 0xC000000)

#define TAMPER_XOR_KEY 0xFDB9ECA8

extern u32 func_80300170(void);

void tamper_check_ovl20(void);

#endif // _TAMPER_H
