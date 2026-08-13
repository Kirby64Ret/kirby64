#ifndef _TRACK_H
#define _TRACK_H

void initTrack(s32);
extern s32 D_800EC9E0;

s32 request_job(s32 id, s32 minIndex, s32 maxIndex, void *, void *);
s32 request_track(u8 goal, s32 id, s32 minIndex, s32 maxIndex);
s32 request_track_general(s32 id, s32 minIndex, s32 maxIndex);
s32 request_track_2(s32 id, s32 minIndex, s32 maxIndex);
s32 request_track_3(s32 id, s32 minIndex, s32 maxIndex);

#endif // _TRACK_H
