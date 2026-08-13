#ifndef PLYLIB_H
#define PLYLIB_H

void set_kirby_action_1(s32 actionChange, s32 action);
void set_kirby_action_2(s32 actionChange, u32 action);

struct UnkStruct80128434 {
    Vector unk0;
    u32 unkC;
    Vector unk10;
};

extern struct UnkStruct80128434 D_80128434[];

void func_8011C2A0(void *);

#endif // PLYLIB_H
