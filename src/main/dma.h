#ifndef DMA_H
#define DMA_H

extern void *dmaDevAddr; // s
extern void *dmaVramAddr; // t
extern u32 dmaLen; // l

void dmaInit();
void dma_overlay_load(struct Overlay *);
void dma_read(u32 x, void *y, u32 z);
OSPiHandle *sram_init(void);

#endif
