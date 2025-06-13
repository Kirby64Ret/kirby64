#ifndef __OH_H
#define __OH_H

void ohUpdateStub(GObj *g);
GObj *ohCreateCameraWrapper(s32 link, s32 pri, s32 dlPriority, s32 flags, s32 bgColor);
void ohGObjPause(GObj *g);
void ohGObjResume(GObj *g);

#endif // __OH_H
