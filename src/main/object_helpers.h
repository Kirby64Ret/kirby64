#ifndef __OH_H
#define __OH_H

GObj* ohCreateCamera(s32 objId, void (*updateCB)(GObj*), s32 objLink, s32 objPriority,
                     void (*renderCB)(GObj*), s32 dlPriority, s32 dlLinkBitMask, s32 cameraTag, s32 defaultMatrices,
                     u8 procKind, void (*procFunc)(GObj*), s32 procPriority, s32 defaultFlags);


void ohSleep(s32 sleep);
void ohUpdateStub(GObj *g);
GObj *ohCreateCameraWrapper(s32 link, s32 pri, s32 dlPriority, s32 flags, s32 bgColor);
void ohGObjPause(GObj *g);
void ohGObjResume(GObj *g);
void ohDeleteAllObjects(void);
GObj *ohFindById(u32 id);

#endif // __OH_H
