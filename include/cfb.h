#ifndef CFB_H
#define CFB_H

#include <PR/ultratypes.h>
#include "config.h"

extern u16 gFrameBuffer[NUM_CFBs][CFB_WIDTH * CFB_HEIGHT];
extern u16 D_803FC100[NUM_CFBs][CFB_WIDTH * CFB_HEIGHT];
extern u16 D_803DA800[][CFB_WIDTH]; // fb2

#endif // CFB_H

