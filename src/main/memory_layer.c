// ml: memory layer?

#include <ultra64.h>

#include "GObj.h"

void fatal_printf(const char*, ...);

// unused?
void mlReset(struct DynamicBuffer *arg0) {
    arg0->top = arg0->poolStart;
}

void *mlAlloc(struct DynamicBuffer *arg0, u32 size, u32 alignment) {
    void *ret;
    u32 tmp;

    if (alignment != 0) {
        tmp = alignment - 1;
        ret = (void*)(((u32)arg0->top + tmp) & ~tmp);
    } else {
        ret = arg0->top;
    }
    tmp = (u32) ret + size;
    arg0->top = (void*)tmp;
    if ((u32) arg0->poolEnd < tmp) {
        fatal_printf("ml : alloc overflow #%d\n", arg0->id);
        while (1);
    }
    return ret;
}

void mlSetup(struct DynamicBuffer *tracker, u32 id, void *start, u32 size) {
    tracker->id = id;
    tracker->top = start;
    tracker->poolStart = start;
    tracker->poolEnd = (void*)((s32) start + size);
    bzero(start, size);
}

