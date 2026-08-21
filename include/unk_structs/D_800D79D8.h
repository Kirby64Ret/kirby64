#ifdef PORT
/* This struct is a raw N64-byte-offset overlay of the Camera payload. The
 * fields compiled code touches, with their N64 Camera meaning:
 *   unk20/24/28/2C   perspMtx.persp fovy/aspect/near/far   (func_800A70C4)
 *   unk3C..unk5C     viewMtx.lookAt eye/at/up, 9 floats    (func_800A6F68)
 *   unk74/unk78      timeRemaining/animSpeed  (func_800B3008/3070/3094,
 *                    func_800AAFC4/AB040/AB0A8/AB0CC)
 *   unk80            flags                                  (func_800A7160)
 * On the LP64 host every one of those moved (pointers in the leading fields
 * and unions grew), so writes through the N64 offsets landed on neighbours:
 * func_800B3070's 2.0f arrived in cam->mtxCount and the planet-map render
 * walked float bits as OMMtx pointers. Pad each group onto its real LP64
 * offset; the numbers come from the compiled Camera in object_manager.h
 * (fovy +44, eye +80, timeRemaining +160, flags +172). */
struct UnkStruct800D79D8 {
    u8 pad0[44];
    f32 unk20;  /* perspMtx.persp.fovy */
    f32 unk24;  /* perspMtx.persp.aspect */
    f32 unk28;  /* perspMtx.persp.near */
    f32 unk2C;  /* perspMtx.persp.far */
    u8 pad1[20];
    f32 unk3C;  /* viewMtx.lookAt.eye.x */
    f32 unk40;  /* eye.y */
    f32 unk44;  /* eye.z */
    f32 unk48;  /* at.x */
    f32 unk4C;  /* at.y */
    f32 unk50;  /* at.z */
    f32 unk54;  /* up.x */
    f32 unk58;  /* up.y */
    f32 unk5C;  /* up.z */
    u8 pad2[44];
    f32 unk74;  /* timeRemaining */
    f32 unk78;  /* animSpeed */
    u8 pad3[4];
    u32 unk80;  /* flags */
};
#else
struct UnkStruct800D79D8 {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    u32 unk10;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
    f32 unk20;
    f32 unk24;
    f32 unk28;
    f32 unk2C;
    u32 unk30;
    u32 unk34;
    u32 unk38;
    f32 unk3C;
    f32 unk40;
    f32 unk44;
    f32 unk48;
    f32 unk4C;
    f32 unk50;
    f32 unk54;
    f32 unk58;
    f32 unk5C;
    u32 unk60;
    u32 unk64;
    u32 unk68;
    u32 unk6C;
    u32 unk70;
    f32 unk74;
    f32 unk78;
    u32 unk7C;
    u32 unk80;
};
#endif

extern struct UnkStruct800D79D8 *D_800D79D8[];
