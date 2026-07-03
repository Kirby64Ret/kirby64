#ifndef _ML_H
#define _ML_H

#include <ultra64.h>

#include "object_manager.h"

void mlReset(struct DynamicBuffer *arg0);
void *mlAlloc(struct DynamicBuffer *arg0, u32 size, u32 alignment);
void mlSetup(struct DynamicBuffer *tracker, u32 id, void *start, u32 size);

#endif // _ML_H
