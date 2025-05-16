#ifndef BUFFERS_H
#define BUFFERS_H

// proc function is at D_800D4FD0[id].unk4
extern struct GObjProcess *gEntityGObjProcessArray[0x70];

// defaults to func_800B0D90, which dispatches D_800DEF90 and D_800DF150
extern struct GObjProcess *gEntityGObjProcessArray2[0x70];

// defaults to objSleepForever
extern struct GObjProcess *gEntityGObjProcessArray3[0x70];

// defaults to func_800B1870, which does nothing
extern struct GObjProcess *gEntityGObjProcessArray4[0x70];

// defaults to a user function.
// either func_800B1434 (stub), func_800B143C (move) or func_800B158C (no clue)
extern struct GObjProcess *gEntityGObjProcessArray5[0x70];

#endif