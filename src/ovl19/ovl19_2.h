#ifndef OVL19_2_H
#define OVL19_2_H

// seems to be a group of bank 2 file pointers (either images or animations)
struct Ovl19_2Struct {
    u32 unk0; // loaded? by func_800AA154
    u32 unk4;
    u32 unk8; // Assigned to D_800EC2E0[1]
    u32 unkC; // assigned to D_800EC4A0[1]
    u32 unk10; // assigned to D_800EC2E0[2]
    u32 unk14; // assigned to D_800EC4A0[2]
};

#endif // OVL19_2_H