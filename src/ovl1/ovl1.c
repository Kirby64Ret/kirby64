#include <ultra64.h>

#include "GObj.h"
#include "common.h"
#include "main/anim.h"
#include "main/gtl.h"
#include "main/object_manager.h"

#include "DObj.h"

// this file
// extern s8 D_800BE3E0, D_800BE3E4;

s8 D_800BE3E0 = 0;
s8 D_800BE3E4 = 0;
u16 D_800BE3E8 = 0;
u8 D_800BE3EC = 0x7B;

typedef struct UnkEmitter {
    struct UnkEmitter *next;
    f32 unk4;
    f32 unk8;
    f32 unkC;
    f32 unk10;
    f32 unk14;
    f32 unk18;
    f32 unk1C;
    f32 unk20;
    f32 unk24;
    u8 unk28;
    u8 unk29;
    u16 unk2A;
    u8 pad2C[0x88];
    void (*unkB4)();
    u16 unkB8;
    u8 unkBA;
} UnkEmitter;

typedef struct UnkGenerator {
    struct UnkGenerator *next;
    u16 generator_id;
    u16 flags;
    u8 bank_id;
    u8 kind;
    u16 texture_id;
    u16 particle_lifetime;
    u16 generator_lifetime;
    u8 *bytecode;
    f32 posX;
    f32 posY;
    f32 posZ;
    f32 velX;
    f32 velY;
    f32 velZ;
    f32 gravity;
    f32 friction;
    f32 size;
    f32 unk38;
    f32 unk3C;
    f32 update_rate;
    f32 frame;
    void *dobj;
    UnkEmitter *xf;
    union {
        struct {
            f32 base;
            f32 target;
        } rotate;
        struct {
            f32 x;
            f32 y;
            f32 z;
        } move;
        struct {
            f32 f;
            u16 lifetime;
        } vortex;
    } vars;
} UnkGenerator;

typedef struct UnkParticle {
    struct UnkParticle *next;
    u16 unk4;
    u16 unk6;
    u8 unk8;
    u8 unk9;
    u8 unkA;
    u8 unkB;
    u8 unkC;
    u8 unkD;
    u16 unkE;
    u16 unk10;
    u16 unk12;
    u16 unk14;
    u16 unk16;
    u8 *unk18;
    u16 unk1C;
    u16 unk1E;
    u16 unk20;
    u16 unk22;
    f32 unk24;
    f32 unk28;
    f32 unk2C;
    f32 unk30;
    f32 unk34;
    f32 unk38;
    f32 unk3C;
    f32 unk40;
    f32 unk44;
    f32 unk48;
    u8 unk4C;
    u8 unk4D;
    u8 unk4E;
    u8 unk4F;
    u8 unk50;
    u8 unk51;
    u8 unk52;
    u8 unk53;
    u8 unk54;
    u8 unk55;
    u8 unk56;
    u8 unk57;
    u32 unk58;
    UnkGenerator *unk5C;
    UnkEmitter *unk60;
} UnkParticle;

typedef struct UnkScript {
    u16 kind;
    u16 texture_id;
    u16 generator_lifetime;
    u16 particle_lifetime;
    u16 unk8;
    u16 flags;
    f32 gravity;
    f32 friction;
    f32 velX;
    f32 velY;
    f32 velZ;
    f32 unk20;
    f32 unk24;
    f32 unk28;
    f32 size;
    f32 unk30;
    f32 unk34;
    f32 unk38;
    u8 bytecode[1];
} UnkScript;

#ifdef PORT
/* PORT overlays for RAW ROM BANK DATA.
 *
 * These structs are laid over bytes DMA'd straight out of the cartridge, so
 * every slot is a 32-BIT BIG-ENDIAN word. The N64 reads them natively; this
 * host is little-endian LP64, so (a) every multi-byte field needs a swap and
 * (b) a pointer member would be 8 bytes and walk the data at the wrong
 * stride. Pointer slots are therefore declared u32 -- after relocation they
 * hold NATIVE host addresses truncated to 32 bits, which is lossless because
 * the whole image and arena live below 4 GB (pc_check_low_memory aborts at
 * startup otherwise; see src/pc/pc_mmio.c). */
typedef struct UnkScriptDesc {
    s32 scripts_num;
    u32 scripts[1];
} UnkScriptDesc;

typedef struct UnkTexture {
    u32 count;
    s32 fmt;
    s32 siz;
    s32 width;
    s32 height;
    u16 palettes_num;
    u16 flags;
    u32 data[1];
} UnkTexture;

typedef struct UnkTextureDesc {
    s32 textures_num;
    u32 textures[1];
} UnkTextureDesc;

static inline u32 pc_be32(u32 v) { return __builtin_bswap32(v); }
static inline u16 pc_be16(u16 v) { return (u16)__builtin_bswap16(v); }
/* Bank slots hold host addresses as u32 after relocation. */
#define PC_BANKPTR(x) ((void *)(uintptr_t)(x))
#else
typedef struct UnkScriptDesc {
    s32 scripts_num;
    UnkScript *scripts[1];
} UnkScriptDesc;

typedef struct UnkTexture {
    u32 count;
    s32 fmt;
    s32 siz;
    s32 width;
    s32 height;
    u16 palettes_num;
    u16 flags;
    void *data[1];
} UnkTexture;

typedef struct UnkTextureDesc {
    s32 textures_num;
    UnkTexture *textures[1];
} UnkTextureDesc;
#endif

void *gtlMalloc(u32 size, u32 alignment);
void func_8009E834(GObj *arg0);
GObj *ohFindById(u32 id);
UnkParticle *func_8009C4E0();
f32 random_f32(void);
f32 sinf(f32);
f32 cosf(f32);
f32 sqrtf(f32);
f32 atan2f(f32, f32);

extern UnkParticle *D_800D69C0;
extern UnkParticle *D_800D69C8[16];
extern s32 D_800D6A10;
extern u16 D_800D6AE0;
extern u16 D_800D6AE2;
extern u16 D_800D6AE4;
extern u16 D_800D6AE6;
extern u16 D_800D6AE8;
extern u16 D_800D6AEA;
extern UnkEmitter *D_800D6AEC;
// extern u16 D_800BE3E8;
extern u32 D_800D6A14[];
extern s32 D_800D6A38[8];
extern s32 D_800D6A58[8];
extern UnkScript **D_800D6A78[8];
extern UnkTexture **D_800D6A98[8];

s32 func_8009B550(s32 arg0, s32 arg1) {
    UnkEmitter *temp_v0;
    s32 var_s0;

    D_800D6AEC = NULL;
    var_s0 = 0;
    if (arg0 > 0) {
        do {
            temp_v0 = gtlMalloc(arg1, 4);
            if (temp_v0 == NULL) {
                return var_s0;
            }
            var_s0 += 1;
            temp_v0->next = D_800D6AEC;
            D_800D6AEC = temp_v0;
        } while (var_s0 != arg0);
    }
    D_800D6AE4 = 0;
    D_800D6AEA = 0;
    return var_s0;
}

UnkEmitter *func_8009B5E8(u8 arg0, u16 arg1) {
    UnkEmitter *xf = D_800D6AEC;

    if (xf != NULL) {
        D_800D6AEC = xf->next;
        xf->unk2A = 1;
        xf->unk29 = D_800BE3EC;
        xf->unk4 = xf->unk8 = xf->unkC = 0.0f;
        xf->unk10 = xf->unk14 = xf->unk18 = 0.0f;
        xf->unk1C = xf->unk20 = xf->unk24 = 1.0f;
        xf->unkB4 = NULL;
        xf->unk28 = arg0;
        xf->unkB8 = arg1;
        xf->unkBA = 0;
        D_800D6AE4++;
        if (D_800D6AEA < D_800D6AE4) {
            D_800D6AEA = D_800D6AE4;
        }
    }
    return xf;
}

void func_8009B69C(UnkEmitter *arg0) {
    void (*temp_v0)();

    temp_v0 = arg0->unkB4;
    if (temp_v0 != NULL) {
        temp_v0();
    }
    arg0->next = D_800D6AEC;
    D_800D6AEC = arg0;
    D_800D6AE4 -= 1;
}

void func_8009B6F0(UnkParticle *arg0, u8 arg1) {
    arg0->unk60 = func_8009B5E8(arg1, arg0->unk4);
}

void func_8009B72C(void *arg0, u8 arg1) {
    *(UnkEmitter **)((u8 *)arg0 + 0x4C) = func_8009B5E8(arg1, *(u16 *)((u8 *)arg0 + 4));
}

#ifdef PORT
/* Bank relocation for the host. The N64 body below does this in place with
 * native reads; here every header word is big-endian and every slot is 4
 * bytes, so counts and offsets are swapped explicitly and the public tables
 * D_800D6A78/D_800D6A98 are rebuilt as NATIVE pointer arrays in the gtl
 * arena. Consumers of those tables then work unchanged. UnkTexture header
 * fields are normalised to native IN PLACE (this function is their only
 * producer); texel data itself stays N64 byte order, which is what Fast3D
 * expects. UnkScript interiors are NOT touched here -- their consumers are
 * the script interpreter's problem and will be converted at their own read
 * sites. */
void func_8009B768(s32 bank_id, UnkScriptDesc *script_desc, UnkTextureDesc *texture_desc) {
    s32 i, j;
    UnkScript **stbl;
    UnkTexture **ttbl;
    UnkTexture *tex;

    if (bank_id >= 8) {
        return;
    }
    script_desc->scripts_num = pc_be32(script_desc->scripts_num);
    texture_desc->textures_num = pc_be32(texture_desc->textures_num);
    D_800D6A38[bank_id] = script_desc->scripts_num;
    D_800D6A58[bank_id] = texture_desc->textures_num;

    stbl = gtlMalloc(D_800D6A38[bank_id] * sizeof(UnkScript *), 8);
    for (i = 0; i < D_800D6A38[bank_id]; i++) {
        stbl[i] = (UnkScript *)((u8 *)script_desc + pc_be32(script_desc->scripts[i]));
    }
    D_800D6A78[bank_id] = stbl;

    ttbl = gtlMalloc(D_800D6A58[bank_id] * sizeof(UnkTexture *), 8);
    for (i = 0; i < D_800D6A58[bank_id]; i++) {
        ttbl[i] = (UnkTexture *)((u8 *)texture_desc + pc_be32(texture_desc->textures[i]));
    }
    D_800D6A98[bank_id] = ttbl;

    for (i = 0; i < D_800D6A58[bank_id]; i++) {
        tex = ttbl[i];
        tex->count = pc_be32(tex->count);
        tex->fmt = pc_be32(tex->fmt);
        tex->siz = pc_be32(tex->siz);
        tex->width = pc_be32(tex->width);
        tex->height = pc_be32(tex->height);
        tex->palettes_num = pc_be16(tex->palettes_num);
        tex->flags = pc_be16(tex->flags);
        for (j = 0; j < tex->count; j++) {
            tex->data[j] = (u32)(uintptr_t)((u8 *)texture_desc + pc_be32(tex->data[j]));
        }
        if (tex->fmt == 2) {
            if (tex->flags & 1) {
                j = tex->count;
                tex->data[j] = (u32)(uintptr_t)((u8 *)texture_desc + pc_be32(tex->data[j]));
            } else if (tex->palettes_num != 0) {
                for (j = tex->count; j < tex->count + tex->palettes_num; j++) {
                    tex->data[j] = (u32)(uintptr_t)((u8 *)texture_desc + pc_be32(tex->data[j]));
                }
            } else {
                for (j = tex->count; j < tex->count * 2; j++) {
                    tex->data[j] = (u32)(uintptr_t)((u8 *)texture_desc + pc_be32(tex->data[j]));
                }
            }
        }
    }
}
#else
void func_8009B768(s32 bank_id, UnkScriptDesc *script_desc, UnkTextureDesc *texture_desc) {
    s32 i, j;

    if (bank_id >= 8) {
        return;
    }
    D_800D6A38[bank_id] = script_desc->scripts_num;
    D_800D6A58[bank_id] = texture_desc->textures_num;
    D_800D6A78[bank_id] = script_desc->scripts;
    D_800D6A98[bank_id] = texture_desc->textures;

    for (i = 1; i <= D_800D6A38[bank_id]; i++) {
        script_desc->scripts[i - 1] = (UnkScript *)((u8 *)script_desc + (s32)script_desc->scripts[i - 1]);
    }
    for (i = 1; i <= D_800D6A58[bank_id]; i++) {
        texture_desc->textures[i - 1] = (UnkTexture *)((u8 *)texture_desc + (s32)texture_desc->textures[i - 1]);
    }
    for (i = 0; i < D_800D6A58[bank_id]; i++) {
        for (j = 0; j < D_800D6A98[bank_id][i]->count; j++) {
            D_800D6A98[bank_id][i]->data[j] = (void *)((u8 *)texture_desc + (s32)D_800D6A98[bank_id][i]->data[j]);
        }
        if (D_800D6A98[bank_id][i]->fmt == 2) {
            if (D_800D6A98[bank_id][i]->flags & 1) {
                j = D_800D6A98[bank_id][i]->count;

                D_800D6A98[bank_id][i]->data[j] = (void *)((u8 *)texture_desc + (s32)D_800D6A98[bank_id][i]->data[j]);
            } else if (D_800D6A98[bank_id][i]->palettes_num != 0) {
                for (j = D_800D6A98[bank_id][i]->count; j < D_800D6A98[bank_id][i]->count + D_800D6A98[bank_id][i]->palettes_num; j++) {
                    D_800D6A98[bank_id][i]->data[j] = (void *)((u8 *)texture_desc + (s32)D_800D6A98[bank_id][i]->data[j]);
                }
            } else {
                for (j = D_800D6A98[bank_id][i]->count; j < D_800D6A98[bank_id][i]->count * 2; j++) {
                    D_800D6A98[bank_id][i]->data[j] = (void *)((u8 *)texture_desc + (s32)D_800D6A98[bank_id][i]->data[j]);
                }
            }
        }
    }
}
#endif /* PORT */

GObj *func_8009B99C(s32 num) {
    s32 i;
    UnkParticle *pc;

    D_800D69C0 = NULL;

    for (i = 0; i < 16; i++) {
        D_800D69C8[i] = NULL;
    }
    for (i = num - 1; i >= 0; i--) {
        pc = gtlMalloc(sizeof(*pc), 4);

        if (pc == NULL) {
            return NULL;
        }
        pc->next = D_800D69C0;
        D_800D69C0 = pc;
    }
    D_800D6AE0 = 0;
    D_800D6AE6 = 0;

    if (ohFindById(-6) != NULL) {
        return NULL;
    }
    return HS64_omMakeGObj(-6, func_8009E834, 0, 0x80000000);
}

void func_8009BA68(s32 arg0) {
    D_800D6A10 = arg0;
}

#ifdef NON_MATCHING
UnkParticle *func_8009BA74(UnkParticle *this_pc, s32 bank_id, u32 flags, u16 texture_id, u8 *bytecode, s32 lifetime, f32 pos_x, f32 pos_y, f32 pos_z, f32 vel_x, f32 vel_y, f32 vel_z, f32 size, f32 gravity, f32 friction, u32 texture_flags, UnkGenerator *gn) {
    UnkParticle *new_pc;
    s32 val;

    new_pc = D_800D69C0;

    if (new_pc == NULL) {
        return NULL;
    }
    D_800D6AE0++;

    if (D_800D6AE6 < D_800D6AE0) {
        D_800D6AE6 = D_800D6AE0;
    }
    if (gn != NULL) {
        new_pc->unk4 = gn->generator_id;
    } else {
        new_pc->unk4 = ++D_800BE3E8;
    }
    if (gn != NULL) {
        new_pc->unk60 = gn->xf;

        if (new_pc->unk60 != NULL) {
            new_pc->unk60->unk2A++;
        }
    } else {
        new_pc->unk60 = NULL;
    }
    D_800D69C0 = new_pc->next;

    if (this_pc == NULL) {
        new_pc->next = D_800D69C8[bank_id >> 3];
        D_800D69C8[bank_id >> 3] = new_pc;
    } else {
        new_pc->next = this_pc->next;
        this_pc->next = new_pc;
    }
    new_pc->unk8 = bank_id;
    new_pc->unk6 = flags;
    new_pc->unkA = texture_id;

    new_pc->unk24 = pos_x;
    new_pc->unk28 = pos_y;
    new_pc->unk2C = pos_z;

    new_pc->unk30 = vel_x;
    new_pc->unk34 = vel_y;
    new_pc->unk38 = vel_z;

    new_pc->unk44 = size;
    new_pc->unk3C = gravity;
    new_pc->unk40 = friction;

    new_pc->unk22 = lifetime + 1;
    new_pc->unk1C = 0;
    new_pc->unk1E = 0;

    new_pc->unk18 = bytecode;

    if (texture_flags != 0) {
        new_pc->unk6 |= 0x10;
    }
    if (bytecode != NULL) {
        new_pc->unk10 = 1;
        val = 0;
    } else {
        new_pc->unk10 = 0;
        val = 0;
    }

    new_pc->unk4C = new_pc->unk4D = new_pc->unk4E = new_pc->unk4F = new_pc->unkC = 0xFF;
    new_pc->unk54 = new_pc->unk55 = new_pc->unk56 = val;

    new_pc->unkB = 0;
    new_pc->unk57 = 0;

    new_pc->unk12 = new_pc->unk14 = new_pc->unk16 = 0;

    new_pc->unk5C = gn;

    return new_pc;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009BA74.s")
#endif
#ifdef NON_MATCHING
UnkParticle *func_8009BC4C(UnkParticle *pc, s32 bank_id, s32 script_id) {
    UnkScript *script;
    s32 id = bank_id & 7;

    if (id >= 8) {
        return NULL;
    }
    if (script_id >= D_800D6A38[id]) {
        return NULL;
    }
    script = D_800D6A78[id][script_id];

    return func_8009BA74(pc, bank_id, script->flags, script->texture_id, script->bytecode, script->particle_lifetime,
                         0.0f, 0.0f, 0.0f, script->velX, script->velY, script->velZ, script->size, script->gravity,
                         script->friction, D_800D6A98[id][script->texture_id]->flags, NULL);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009BC4C.s")
#endif
#ifdef NON_MATCHING
UnkParticle *func_8009BD3C(s32 bank_id, u32 flags, u16 texture_id, u8 *bytecode, s32 lifetime, f32 pos_x, f32 pos_y, f32 pos_z, f32 vel_x, f32 vel_y, f32 vel_z, f32 size, f32 gravity, f32 friction, u32 texture_flags, UnkGenerator *gn) {
    UnkParticle *pc = func_8009BA74(NULL, bank_id, flags, texture_id, bytecode, lifetime, pos_x, pos_y, pos_z,
                                    vel_x, vel_y, vel_z, size, gravity, friction, texture_flags, gn);

    if (pc != NULL) {
        func_8009C4E0(pc, 0, bank_id >> 3);
    }
    return pc;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009BD3C.s")
#endif
UnkParticle *func_8009BE04(s32 bank_id, s32 script_id) {
    UnkParticle *pc = func_8009BC4C(NULL, bank_id, script_id);

    if (pc != NULL) {
        func_8009C4E0(pc, NULL, bank_id >> 3);
    }
    return pc;
}

#ifdef NON_MATCHING
UnkParticle *func_8009BE54(s32 bank_id, s32 script_id, f32 pos_x, f32 pos_y, f32 pos_z, f32 vel_x, f32 vel_y, f32 vel_z) {
    UnkParticle *pc;
    UnkScript *script;
    s32 id = bank_id & 7;

    if (id >= 8) {
        return NULL;
    }
    if (script_id >= D_800D6A38[id]) {
        return NULL;
    }
    script = D_800D6A78[id][script_id];

    pc = func_8009BA74(NULL, bank_id, script->flags, script->texture_id, script->bytecode, script->particle_lifetime,
                       pos_x, pos_y, pos_z, vel_x, vel_y, vel_z, script->size, script->gravity, script->friction,
                       D_800D6A98[id][script->texture_id]->flags, NULL);

    if (pc != NULL) {
        func_8009C4E0(pc, 0, bank_id >> 3);
    }
    return pc;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009BE54.s")
#endif
UnkParticle *func_8009BF7C(s32 bank_id, s32 script_id) {
    return func_8009BC4C(NULL, bank_id, script_id);
}

void func_8009BFA8(UnkParticle *pc) {
    if (pc != NULL) {
        func_8009C4E0(pc, NULL, pc->unk8 >> 3);
    }
}

void func_8009BFD4(UnkParticle *this_pc) {
    UnkParticle *prev_pc;
    UnkParticle *current_pc;
    UnkGenerator *gn;
    s32 bank_id;

    bank_id = this_pc->unk8 >> 3;
    current_pc = D_800D69C8[bank_id];
    prev_pc = NULL;

    while (current_pc != NULL) {
        if (current_pc == this_pc) {
            if (prev_pc == NULL) {
                D_800D69C8[bank_id] = current_pc->next;
            } else {
                prev_pc->next = current_pc->next;
            }
            gn = this_pc->unk5C;

            if ((gn != NULL) && (this_pc->unk6 & 4) && (gn->kind == 2)) {
                gn->vars.vortex.lifetime--;
            }
            if (this_pc->unk60 != NULL) {
                this_pc->unk60->unk2A--;

                if (this_pc->unk60->unk2A == 0) {
                    func_8009B69C(this_pc->unk60);
                }
            }
            current_pc->next = D_800D69C0;
            D_800D69C0 = current_pc;
            D_800D6AE0--;

            break;
        }
        prev_pc = current_pc;
        current_pc = current_pc->next;
    }
}

void func_8009C0E4(void) {
    UnkParticle *current_pc;
    UnkParticle *next_pc;
    s32 i;

    for (i = 0; i < 16; i++) {
        current_pc = D_800D69C8[i];

        while (current_pc != NULL) {
            next_pc = current_pc->next;

            func_8009BFD4(current_pc);

            current_pc = next_pc;
        }
    }
}

u8 *func_8009C154(u8 *csr, f32 *f) {
    u8 bytes[4];

    bytes[0] = *csr++;
    bytes[1] = *csr++;
    bytes[2] = *csr++;
    bytes[3] = *csr++;

    *f = *(f32 *)bytes;

    return csr;
}

u8 *func_8009C18C(u8 *csr, u16 *s) {
    u16 value = *csr++;

    if (value & 0x80) {
        value = ((value & 0x7F) << 8) + *csr++;
    }
    *s = value + 1;

    return csr;
}

void func_8009C1C8(UnkParticle *pc, f32 angle) {
    Vector vel;
    f32 sin_angle;
    f32 magnitude;
    f32 pitch;
    f32 yaw;
    f32 sin_pitch;
    f32 cos_pitch;
    f32 sin_yaw;
    f32 cos_yaw;
    f32 cos_angle;

    vel.x = pc->unk30;
    vel.y = pc->unk34;
    vel.z = pc->unk38;

    pitch = atan2f(vel.y, vel.z);
    sin_pitch = sinf(pitch);
    cos_pitch = cosf(pitch);

    yaw = atan2f(vel.x, (vel.y * sin_pitch) + (vel.z * cos_pitch));
    sin_yaw = sinf(yaw);
    cos_yaw = cosf(yaw);

    magnitude = sqrtf((vel.x * vel.x) + (vel.y * vel.y) + (vel.z * vel.z));

    vel.y = random_f32() * 6.2831855f;

    sin_angle = sinf(angle) * magnitude;

    vel.z = sin_yaw;
    vel.x = cosf(vel.y) * sin_angle;
    vel.y = sinf(vel.y) * sin_angle;

    cos_angle = cosf(angle) * magnitude;

    pc->unk30 = (vel.x * cos_yaw) + (cos_angle * sin_yaw);
    pc->unk34 = (((-vel.x * sin_pitch) * sin_yaw) + (vel.y * cos_pitch)) + ((cos_angle * sin_pitch) * cos_yaw);
    pc->unk38 = (((-vel.x * cos_pitch) * vel.z) - (vel.y * sin_pitch)) + ((cos_angle * cos_pitch) * cos_yaw);
}

void func_8009C350(UnkParticle *pc, DObj *dobj) {
    f32 dx;
    f32 dy;
    f32 dz;
    f32 dist;

    if (dobj == NULL) {
        return;
    }
    dx = dobj->pos.v.x - pc->unk24;
    dy = dobj->pos.v.y - pc->unk28;
    dz = dobj->pos.v.z - pc->unk2C;

    dist = sqrtf((pc->unk30 * pc->unk30) + (pc->unk34 * pc->unk34) + (pc->unk38 * pc->unk38));

    if (((dx * dx) + (dy * dy) + (dz * dz)) != 0.0f) {
        dist /= sqrtf((dx * dx) + (dy * dy) + (dz * dz));

        pc->unk30 = dx * dist;
        pc->unk34 = dy * dist;
        pc->unk38 = dz * dist;
    }
}

void func_8009C44C(UnkParticle *pc, DObj *dobj, f32 magnitude) {
    f32 dx;
    f32 dy;
    f32 dz;
    f32 dist;

    if (dobj == NULL) {
        return;
    }
    dx = dobj->pos.v.x - pc->unk24;
    dy = dobj->pos.v.y - pc->unk28;
    dz = dobj->pos.v.z - pc->unk2C;

    dist = (dx * dx) + (dy * dy) + (dz * dz);

    if (dist != 0.0f) {
        dist = magnitude / dist;

        pc->unk30 += dist * dx;
        pc->unk34 += dist * dy;
        pc->unk38 += dist * dz;
    }
}

#ifdef MIPS_TO_C

? *func_8009C4E0(? *arg0, ? *arg1, s32 arg2) {
    u16 sp94;
    s32 sp88;
    f32 sp80;
    f32 sp7C;
    f32 sp70;
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    f32 sp50;
    f32 sp44;
    ? *sp2C;
    ? *sp28;
    ? *temp_a2;
    ? *temp_a2_2;
    ? *temp_a2_3;
    ? *temp_s1_5;
    ? *temp_s1_7;
    ? *temp_v0_16;
    ? *temp_v0_4;
    ? *temp_v0_8;
    ? *temp_v0_9;
    ? *temp_v1;
    ? *temp_v1_2;
    ? *temp_v1_3;
    ? *var_s0;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f10;
    f32 temp_f10_2;
    f32 temp_f10_3;
    f32 temp_f10_4;
    f32 temp_f10_5;
    f32 temp_f10_6;
    f32 temp_f10_7;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f16_3;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f4_3;
    f32 temp_f4_4;
    f32 temp_f4_5;
    f32 temp_f6;
    f32 temp_f6_2;
    f32 temp_f6_3;
    f32 temp_f6_4;
    f32 temp_f6_5;
    f32 temp_f6_6;
    f32 temp_f6_7;
    f32 temp_f6_8;
    f32 temp_f8;
    f32 temp_f8_2;
    f32 temp_f8_3;
    f32 temp_f8_4;
    f32 var_f0;
    f32 var_f0_2;
    f32 var_f10;
    f32 var_f10_2;
    f32 var_f10_3;
    f32 var_f10_4;
    f32 var_f12;
    f32 var_f16;
    f32 var_f18;
    f32 var_f18_2;
    f32 var_f2;
    f32 var_f4;
    f32 var_f4_2;
    f32 var_f6;
    f32 var_f6_2;
    f32 var_f6_3;
    f32 var_f6_4;
    f32 var_f6_5;
    f32 var_f8;
    f32 var_f8_2;
    f32 var_f8_3;
    s32 temp_a1;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_s0_3;
    s32 temp_s0_5;
    s32 temp_s0_7;
    s32 temp_v0_13;
    s32 temp_v0_18;
    s32 temp_v0_19;
    s32 temp_v0_20;
    s32 temp_v0_21;
    s32 temp_v0_22;
    s32 temp_v0_23;
    s32 temp_v0_24;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v1_6;
    s32 var_v1;
    s8 *temp_s1_3;
    s8 *temp_s1_4;
    s8 *temp_s1_6;
    s8 *temp_s1_8;
    u16 temp_a3;
    u16 temp_a3_2;
    u16 temp_t0_4;
    u16 temp_t1;
    u16 temp_t2_8;
    u16 temp_t2_9;
    u16 temp_t5;
    u16 temp_t6_5;
    u16 temp_t7_8;
    u16 temp_t8;
    u16 temp_v0;
    u16 temp_v0_12;
    u16 temp_v0_14;
    u16 temp_v0_17;
    u16 temp_v0_25;
    u16 var_v0;
    u8 *temp_a0_2;
    u8 *temp_a0_3;
    u8 *temp_s1;
    u8 *temp_s1_2;
    u8 *temp_v0_10;
    u8 *temp_v0_11;
    u8 *var_s1;
    u8 temp_a0;
    u8 temp_a0_4;
    u8 temp_a0_5;
    u8 temp_a1_2;
    u8 temp_a1_3;
    u8 temp_a2_4;
    u8 temp_a2_5;
    u8 temp_s0;
    u8 temp_s0_2;
    u8 temp_s0_4;
    u8 temp_s0_6;
    u8 temp_s0_8;
    u8 temp_s0_9;
    u8 temp_t0;
    u8 temp_t0_2;
    u8 temp_t0_3;
    u8 temp_t1_2;
    u8 temp_t2;
    u8 temp_t2_3;
    u8 temp_t2_4;
    u8 temp_t2_5;
    u8 temp_t2_6;
    u8 temp_t2_7;
    u8 temp_t3;
    u8 temp_t3_2;
    u8 temp_t4_2;
    u8 temp_t4_3;
    u8 temp_t4_4;
    u8 temp_t5_2;
    u8 temp_t5_3;
    u8 temp_t5_4;
    u8 temp_t6;
    u8 temp_t6_2;
    u8 temp_t6_3;
    u8 temp_t6_4;
    u8 temp_t7;
    u8 temp_t7_2;
    u8 temp_t7_4;
    u8 temp_t7_5;
    u8 temp_t7_6;
    u8 temp_t7_7;
    u8 temp_t8_2;
    u8 temp_t8_3;
    u8 temp_t8_4;
    u8 temp_v1_4;
    u8 temp_v1_5;
    void **temp_v1_7;
    void *temp_a0_6;
    void *temp_a0_7;
    void *temp_a0_8;
    void *temp_a2_6;
    void *temp_t2_2;
    void *temp_t4;
    void *temp_t7_3;
    void *temp_t9;
    void *temp_v0_15;
    void *temp_v0_5;

    if (arg0->unk6 & 0x800) {
        goto block_217;
    }
    temp_v0 = arg0->unk10;
    if (temp_v0 != 0) {
        temp_t8 = temp_v0 - 1;
        arg0->unk10 = temp_t8;
        if (!(temp_t8 & 0xFFFF)) {
            var_s1 = arg0->unk18 + arg0->unk1C;
loop_5:
            temp_a0 = *var_s1;
            var_s1 += 1;
            if (temp_a0 >= 0x80) {
                temp_v0_2 = temp_a0 & 0xF8;
                sp94 = 0;
                var_v1 = temp_v0_2 & 0xFF;
                if ((temp_v0_2 & 0xFF) >= 0x99) {
                    temp_v0_3 = temp_a0 & 0xF0;
                    temp_a1 = temp_v0_3 & 0xFF;
                    var_v1 = temp_v0_3 & 0xFF;
                    if ((temp_a1 != 0xC0) && (temp_a1 != 0xD0)) {
                        var_v1 = temp_a0 & 0xFF;
                    }
                }
                switch (var_v1) {
                    case 0x80:
                        if (temp_a0 & 1) {
                            var_s1 = func_8009C154(var_s1, arg0 + 0x24);
                        }
                        if (temp_a0 & 2) {
                            var_s1 = func_8009C154(var_s1, arg0 + 0x28);
                        }
                        if (temp_a0 & 4) {
                            var_s1 = func_8009C154(var_s1, arg0 + 0x2C);
                        }
                        goto block_154;
                    case 0x88:
                        if (temp_a0 & 1) {
                            var_s1 = func_8009C154(var_s1, &sp80);
                            arg0->unk24 = arg0->unk24 + sp80;
                        }
                        if (temp_a0 & 2) {
                            var_s1 = func_8009C154(var_s1, &sp80);
                            arg0->unk28 = arg0->unk28 + sp80;
                        }
                        if (temp_a0 & 4) {
                            var_s1 = func_8009C154(var_s1, &sp80);
                            arg0->unk2C = arg0->unk2C + sp80;
                        }
                        goto block_154;
                    case 0x90:
                        if (temp_a0 & 1) {
                            var_s1 = func_8009C154(var_s1, arg0 + 0x30);
                        }
                        if (temp_a0 & 2) {
                            var_s1 = func_8009C154(var_s1, arg0 + 0x34);
                        }
                        if (temp_a0 & 4) {
                            var_s1 = func_8009C154(var_s1, arg0 + 0x38);
                        }
                        goto block_154;
                    case 0x98:
                        if (temp_a0 & 1) {
                            var_s1 = func_8009C154(var_s1, &sp80);
                            arg0->unk30 = arg0->unk30 + sp80;
                        }
                        if (temp_a0 & 2) {
                            var_s1 = func_8009C154(var_s1, &sp80);
                            arg0->unk34 = arg0->unk34 + sp80;
                        }
                        if (temp_a0 & 4) {
                            var_s1 = func_8009C154(var_s1, &sp80);
                            arg0->unk38 = arg0->unk38 + sp80;
                        }
                        goto block_154;
                    case 0xA0:
                        var_s1 = func_8009C154(func_8009C18C(var_s1, arg0 + 0x12), arg0 + 0x48);
                        if (arg0->unk12 == 1) {
                            arg0->unk12 = 0;
                            arg0->unk44 = arg0->unk48;
                        }
                        goto block_154;
                    case 0xA1:
                        temp_t7 = var_s1->unk0;
                        var_s1 += 1;
                        arg0->unk6 = temp_t7;
                        goto block_154;
                    case 0xA2:
                        var_s1 = func_8009C154(var_s1, arg0 + 0x3C);
                        if (arg0->unk3C == 0.0f) {
                            arg0->unk6 = arg0->unk6 & ~1;
                        } else {
                            arg0->unk6 = arg0->unk6 | 1;
                        }
                        goto block_154;
                    case 0xA3:
                        var_s1 = func_8009C154(var_s1, arg0 + 0x40);
                        if (arg0->unk40 == 1.0f) {
                            arg0->unk6 = arg0->unk6 & 0xFFFD;
                        } else {
                            arg0->unk6 = arg0->unk6 | 2;
                        }
                        goto block_154;
                    case 0xA4:
                        temp_s0 = var_s1->unk0;
                        temp_t6 = var_s1->unk1;
                        var_s1 += 2;
                        temp_v0_4 = func_8009BC4C(arg0, arg0->unk8, (temp_s0 << 8) + temp_t6);
                        if (temp_v0_4 != NULL) {
                            temp_v0_4->unk24 = arg0->unk24;
                            temp_v0_4->unk28 = arg0->unk28;
                            temp_v0_4->unk2C = arg0->unk2C;
                            temp_v0_4->unk4 = arg0->unk4;
                            temp_v0_4->unk5C = arg0->unk5C;
                            temp_t9 = arg0->unk60;
                            temp_v0_4->unk60 = temp_t9;
                            if (temp_t9 != NULL) {
                                temp_t9->unk2A = temp_t9->unk2A + 1;
                            }
                            func_8009C4E0(temp_v0_4, arg0, arg0->unk8 >> 3);
                        }
                        goto block_154;
                    case 0xA5:
                        temp_s0_2 = var_s1->unk0;
                        temp_t2 = var_s1->unk1;
                        var_s1 += 2;
                        temp_v0_5 = func_800A19EC(arg0->unk8, (temp_s0_2 << 8) + temp_t2);
                        if (temp_v0_5 != NULL) {
                            temp_v0_5->unk14 = arg0->unk24;
                            temp_v0_5->unk18 = arg0->unk28;
                            temp_v0_5->unk1C = arg0->unk2C;
                            temp_v0_5->unk4 = arg0->unk4;
                            temp_t4 = arg0->unk60;
                            temp_v0_5->unk4C = temp_t4;
                            if (temp_t4 != NULL) {
                                temp_t4->unk2A = temp_t4->unk2A + 1;
                            }
                        }
                        goto block_154;
                    case 0xA6:
                        temp_t7_2 = var_s1->unk1;
                        temp_s0_3 = var_s1->unk0 << 8;
                        temp_v0_6 = (var_s1->unk2 << 8) + var_s1->unk3;
                        var_s1 += 4;
                        sp88 = temp_v0_6;
                        arg0->unk22 = (random_f32(temp_a0) * temp_v0_6) + (temp_s0_3 + temp_t7_2);
                        goto block_154;
                    case 0xA7:
                        temp_s0_4 = var_s1->unk0;
                        var_s1 += 1;
                        if (temp_s0_4 >= (random_f32(temp_a0) * 100.0f)) {
                            arg0->unk22 = 1;
                            var_v0 = var_s1 - arg0->unk18;
                        } else {
                            goto block_154;
                        }
                        break;
                    case 0xA8:
                        temp_s1 = func_8009C154(var_s1, &sp80);
                        arg0->unk24 = arg0->unk24 + ((2.0f * sp80 * random_f32()) - sp80);
                        temp_s1_2 = func_8009C154(temp_s1, &sp80);
                        arg0->unk28 = arg0->unk28 + ((2.0f * sp80 * random_f32()) - sp80);
                        var_s1 = func_8009C154(temp_s1_2, &sp80);
                        arg0->unk2C = arg0->unk2C + ((2.0f * sp80 * random_f32()) - sp80);
                        goto block_154;
                    case 0xA9:
                        var_s1 = func_8009C154(var_s1, &sp80);
                        func_8009C1C8(arg0, sp80);
                        goto block_154;
                    case 0xAA:
                        temp_t6_2 = var_s1->unk1;
                        temp_s0_5 = var_s1->unk0 << 8;
                        temp_v0_7 = (var_s1->unk2 << 8) + var_s1->unk3;
                        var_s1 += 4;
                        sp88 = temp_v0_7;
                        temp_v0_8 = func_8009BC4C(arg0, arg0->unk8, temp_s0_5 + temp_t6_2 + (temp_v0_7 * random_f32(temp_a0)));
                        if (temp_v0_8 != NULL) {
                            temp_v0_8->unk24 = arg0->unk24;
                            temp_v0_8->unk28 = arg0->unk28;
                            temp_v0_8->unk2C = arg0->unk2C;
                            temp_v0_8->unk4 = arg0->unk4;
                            temp_v0_8->unk5C = arg0->unk5C;
                            temp_t2_2 = arg0->unk60;
                            temp_v0_8->unk60 = temp_t2_2;
                            if (temp_t2_2 != NULL) {
                                temp_t2_2->unk2A = temp_t2_2->unk2A + 1;
                            }
                            func_8009C4E0(temp_v0_8, arg0, arg0->unk8 >> 3);
                        }
                        goto block_154;
                    case 0xAB:
                        var_s1 = func_8009C154(var_s1, &sp80);
                        arg0->unk30 = arg0->unk30 * sp80;
                        arg0->unk34 = arg0->unk34 * sp80;
                        arg0->unk38 = arg0->unk38 * sp80;
                        goto block_154;
                    case 0xAC:
                        var_s1 = func_8009C154(func_8009C154(func_8009C18C(var_s1, arg0 + 0x12), arg0 + 0x48), &sp80);
                        arg0->unk48 = arg0->unk48 + (sp80 * random_f32());
                        if (arg0->unk12 == 1) {
                            arg0->unk12 = 0;
                            arg0->unk44 = arg0->unk48;
                        }
                        goto block_154;
                    case 0xAD:
                        arg0->unk6 = arg0->unk6 | 0x80;
                        goto block_154;
                    case 0xAE:
                        arg0->unk6 = arg0->unk6 & ~0x60;
                        goto block_154;
                    case 0xAF:
                        temp_t1 = arg0->unk6 & ~0x40;
                        arg0->unk6 = temp_t1;
                        arg0->unk6 = (temp_t1 & 0xFFFF) | 0x20;
                        goto block_154;
                    case 0xB0:
                        temp_t5 = arg0->unk6 & 0xFFDF;
                        arg0->unk6 = temp_t5;
                        arg0->unk6 = (temp_t5 & 0xFFFF) | 0x40;
                        goto block_154;
                    case 0xB1:
                        arg0->unk6 = arg0->unk6 | 0x60;
                        goto block_154;
                    case 0xB2:
                        arg0->unk6 = arg0->unk6 | 0x200;
                        goto block_154;
                    case 0xB3:
                        arg0->unk6 = arg0->unk6 & 0xFBFF;
                        goto block_154;
                    case 0xB4:
                        arg0->unk6 = arg0->unk6 | 0x400;
                        goto block_154;
                    case 0xB5:
                        arg0->unk6 = arg0->unk6 | 0x100;
                        goto block_154;
                    case 0xB6:
                        arg0->unk6 = arg0->unk6 & ~0x100;
                        goto block_154;
                    case 0xB7:
                        temp_s0_6 = var_s1->unk0;
                        var_s1 += 1;
                        func_8009C350(arg0, D_800D6A14[temp_s0_6 + arg0->unkD]);
                        goto block_154;
                    case 0xB8:
                        temp_s0_7 = var_s1->unk0 + arg0->unkD;
                        var_s1 = func_8009C154(var_s1 + 1, &sp80);
                        func_8009C44C(arg0, D_800D6A14[temp_s0_7], sp80);
                        goto block_154;
                    case 0xB9:
                        temp_s0_8 = var_s1->unk0;
                        temp_t4_2 = var_s1->unk1;
                        var_s1 += 2;
                        temp_v0_9 = func_8009BC4C(arg0, arg0->unk8, (temp_s0_8 << 8) + temp_t4_2);
                        if (temp_v0_9 != NULL) {
                            temp_v0_9->unk24 = arg0->unk24;
                            temp_v0_9->unk28 = arg0->unk28;
                            temp_v0_9->unk2C = arg0->unk2C;
                            temp_v0_9->unk30 = arg0->unk30;
                            temp_v0_9->unk34 = arg0->unk34;
                            temp_v0_9->unk38 = arg0->unk38;
                            temp_v0_9->unk4 = arg0->unk4;
                            temp_v0_9->unk5C = arg0->unk5C;
                            temp_t7_3 = arg0->unk60;
                            temp_v0_9->unk60 = temp_t7_3;
                            if (temp_t7_3 != NULL) {
                                temp_t7_3->unk2A = temp_t7_3->unk2A + 1;
                            }
                            func_8009C4E0(temp_v0_9, arg0, arg0->unk8 >> 3);
                        }
                        goto block_154;
                    case 0xBA:
                        temp_f6 = var_s1->unk0 * 2;
                        sp80 = temp_f6;
                        temp_t2_3 = arg0->unk50;
                        var_f10 = temp_t2_3;
                        temp_f4 = temp_f6 * random_f32(temp_a0);
                        if (temp_t2_3 < 0) {
                            var_f10 += 4294967296.0f;
                        }
                        arg0->unk50 = var_f10 + temp_f4;
                        temp_s1_3 = &var_s1[1].unk1;
                        temp_f4_2 = var_s1[1] * 2;
                        sp80 = temp_f4_2;
                        temp_t7_4 = arg0->unk51;
                        var_f6 = temp_t7_4;
                        temp_f8 = temp_f4_2 * random_f32();
                        if (temp_t7_4 < 0) {
                            var_f6 += 4294967296.0f;
                        }
                        arg0->unk51 = var_f6 + temp_f8;
                        temp_s1_4 = temp_s1_3 + 1;
                        temp_f8_2 = temp_s1_3->unk0 * 2;
                        sp80 = temp_f8_2;
                        temp_t2_4 = arg0->unk52;
                        var_f4 = temp_t2_4;
                        temp_f10 = temp_f8_2 * random_f32();
                        if (temp_t2_4 < 0) {
                            var_f4 += 4294967296.0f;
                        }
                        arg0->unk52 = var_f4 + temp_f10;
                        var_s1 = temp_s1_4 + 1;
                        temp_f10_2 = *temp_s1_4 * 2;
                        sp80 = temp_f10_2;
                        temp_t7_5 = arg0->unk53;
                        var_f8 = temp_t7_5;
                        temp_f6_2 = temp_f10_2 * random_f32();
                        if (temp_t7_5 < 0) {
                            var_f8 += 4294967296.0f;
                        }
                        arg0->unk53 = var_f8 + temp_f6_2;
                        if (arg0->unk14 == 0) {
                            arg0->unk4C = (unaligned s32) arg0->unk50;
                        }
                        goto block_154;
                    case 0xBB:
                        temp_f6_3 = var_s1->unk0 * 2;
                        sp80 = temp_f6_3;
                        temp_t5_2 = arg0->unk58;
                        var_f10_2 = temp_t5_2;
                        temp_f4_3 = temp_f6_3 * random_f32(temp_a0);
                        if (temp_t5_2 < 0) {
                            var_f10_2 += 4294967296.0f;
                        }
                        arg0->unk58 = var_f10_2 + temp_f4_3;
                        temp_s1_5 = &var_s1[1].unk1;
                        temp_f4_4 = var_s1[1] * 2;
                        sp80 = temp_f4_4;
                        temp_t0 = arg0->unk59;
                        var_f6_2 = temp_t0;
                        temp_f8_3 = temp_f4_4 * random_f32();
                        if (temp_t0 < 0) {
                            var_f6_2 += 4294967296.0f;
                        }
                        arg0->unk59 = var_f6_2 + temp_f8_3;
                        temp_s1_6 = temp_s1_5 + 1;
                        temp_f8_4 = temp_s1_5->unk0 * 2;
                        sp80 = temp_f8_4;
                        temp_t5_3 = arg0->unk5A;
                        var_f4_2 = temp_t5_3;
                        temp_f10_3 = temp_f8_4 * random_f32();
                        if (temp_t5_3 < 0) {
                            var_f4_2 += 4294967296.0f;
                        }
                        arg0->unk5A = var_f4_2 + temp_f10_3;
                        var_s1 = temp_s1_6 + 1;
                        temp_f10_4 = *temp_s1_6 * 2;
                        sp80 = temp_f10_4;
                        temp_t0_2 = arg0->unk5B;
                        var_f8_2 = temp_t0_2;
                        temp_f6_4 = temp_f10_4 * random_f32();
                        if (temp_t0_2 < 0) {
                            var_f8_2 += 4294967296.0f;
                        }
                        arg0->unk5B = var_f8_2 + temp_f6_4;
                        if (arg0->unk16 == 0) {
                            arg0->unk54 = (unaligned s32) arg0->unk58;
                        }
                        goto block_154;
                    case 0xBC:
                        temp_t6_3 = var_s1->unk0;
                        var_s1 = &var_s1[1].unk1;
                        arg0->unkB = temp_t6_3;
                        temp_t7_6 = var_s1->unk-1;
                        var_f6_3 = temp_t7_6;
                        if (temp_t7_6 < 0) {
                            var_f6_3 += 4294967296.0f;
                        }
                        sp80 = var_f6_3;
                        temp_t8_2 = arg0->unkB;
                        var_f8_3 = temp_t8_2;
                        temp_f10_5 = var_f6_3 * random_f32(temp_a0);
                        if (temp_t8_2 < 0) {
                            var_f8_3 += 4294967296.0f;
                        }
                        arg0->unkB = var_f8_3 + temp_f10_5;
                        goto block_154;
                    case 0xBD:
                        var_s1 = func_8009C154(func_8009C154(var_s1, &sp80), &sp7C);
                        sp80 += sp7C * random_f32();
                        temp_f2 = arg0->unk30;
                        temp_f14 = arg0->unk34;
                        temp_f16 = arg0->unk38;
                        temp_f0 = sqrtf((temp_f2 * temp_f2) + (temp_f14 * temp_f14) + (temp_f16 * temp_f16));
                        sp7C = temp_f0;
                        if (temp_f0 > 0.00001f) {
                            temp_f4_5 = sp80 / temp_f0;
                            sp80 = temp_f4_5;
                            arg0->unk30 = arg0->unk30 * temp_f4_5;
                            arg0->unk34 = arg0->unk34 * sp80;
                            arg0->unk38 = arg0->unk38 * sp80;
                        }
                        goto block_154;
                    case 0xBE:
                        temp_a0_2 = func_8009C154(var_s1, &sp80);
                        arg0->unk30 = arg0->unk30 * sp80;
                        temp_a0_3 = func_8009C154(temp_a0_2, &sp80);
                        arg0->unk34 = arg0->unk34 * sp80;
                        var_s1 = func_8009C154(temp_a0_3, &sp80);
                        arg0->unk38 = arg0->unk38 * sp80;
                        goto block_154;
                    case 0xBF:
                        temp_s0_9 = var_s1->unk0;
                        var_s1 += 1;
                        arg0->unk6 = arg0->unk6 | 0x8000 | (((temp_s0_9 + arg0->unkD) - 1) << 0xC);
                        goto block_154;
                    case 0xC0:
                        temp_v1 = arg0 + 0x4C;
                        temp_a2 = arg0 + 0x50;
                        sp28 = &*temp_a2;
                        sp2C = &*temp_v1;
                        temp_v0_10 = func_8009C18C(var_s1, arg0 + 0x14, temp_a2);
                        temp_v1_2 = &*temp_v1;
                        temp_a2_2 = &*temp_a2;
                        var_s1 = temp_v0_10;
                        *temp_a2_2 = (unaligned s32) *temp_v1_2;
                        if (temp_a0 & 1) {
                            var_s1 = temp_v0_10 + 1;
                            arg0->unk50 = *temp_v0_10;
                        }
                        if (temp_a0 & 2) {
                            temp_t1_2 = *var_s1;
                            var_s1 += 1;
                            arg0->unk51 = temp_t1_2;
                        }
                        if (temp_a0 & 4) {
                            temp_t3 = *var_s1;
                            var_s1 += 1;
                            arg0->unk52 = temp_t3;
                        }
                        if (temp_a0 & 8) {
                            temp_t5_4 = *var_s1;
                            var_s1 += 1;
                            arg0->unk53 = temp_t5_4;
                        }
                        if (arg0->unk14 == 1) {
                            *temp_v1_2 = (unaligned s32) *temp_a2_2;
                            arg0->unk14 = 0;
                        }
                        goto block_154;
                    case 0xD0:
                        temp_v1_3 = arg0 + 0x54;
                        temp_a2_3 = arg0 + 0x58;
                        sp28 = temp_a2_3;
                        sp2C = temp_v1_3;
                        temp_v0_11 = func_8009C18C(var_s1, arg0 + 0x16, temp_a2_3);
                        var_s1 = temp_v0_11;
                        *temp_a2_3 = (unaligned s32) *temp_v1_3;
                        if (temp_a0 & 1) {
                            var_s1 = temp_v0_11 + 1;
                            arg0->unk58 = *temp_v0_11;
                        }
                        if (temp_a0 & 2) {
                            temp_t4_3 = *var_s1;
                            var_s1 += 1;
                            arg0->unk59 = temp_t4_3;
                        }
                        if (temp_a0 & 4) {
                            temp_t6_4 = *var_s1;
                            var_s1 += 1;
                            arg0->unk5A = temp_t6_4;
                        }
                        if (temp_a0 & 8) {
                            temp_t8_3 = *var_s1;
                            var_s1 += 1;
                            arg0->unk5B = temp_t8_3;
                        }
                        if (arg0->unk16 == 1) {
                            *temp_v1_3 = (unaligned s32) *temp_a2_3;
                            arg0->unk16 = 0;
                        }
                        goto block_154;
                    case 0xE0:
                        temp_f6_5 = random_f32(temp_a0) * (var_s1->unk0 * 2);
                        sp80 = temp_f6_5;
                        temp_t4_4 = arg0->unk50;
                        var_f10_3 = temp_t4_4;
                        if (temp_t4_4 < 0) {
                            var_f10_3 += 4294967296.0f;
                        }
                        arg0->unk50 = var_f10_3 + temp_f6_5;
                        arg0->unk58 = arg0->unk58 + sp80;
                        temp_s1_7 = &var_s1[1].unk1;
                        temp_f10_6 = random_f32() * (var_s1[1] * 2);
                        sp80 = temp_f10_6;
                        temp_t2_5 = arg0->unk51;
                        var_f6_4 = temp_t2_5;
                        if (temp_t2_5 < 0) {
                            var_f6_4 += 4294967296.0f;
                        }
                        arg0->unk51 = var_f6_4 + temp_f10_6;
                        arg0->unk59 = arg0->unk59 + sp80;
                        temp_s1_8 = temp_s1_7 + 1;
                        temp_f6_6 = random_f32() * (temp_s1_7->unk0 * 2);
                        sp80 = temp_f6_6;
                        temp_t0_3 = arg0->unk52;
                        var_f10_4 = temp_t0_3;
                        if (temp_t0_3 < 0) {
                            var_f10_4 += 4294967296.0f;
                        }
                        arg0->unk52 = var_f10_4 + temp_f6_6;
                        arg0->unk5A = arg0->unk5A + sp80;
                        var_s1 = temp_s1_8 + 1;
                        temp_f10_7 = random_f32() * (*temp_s1_8 * 2);
                        sp80 = temp_f10_7;
                        temp_t8_4 = arg0->unk53;
                        var_f6_5 = temp_t8_4;
                        if (temp_t8_4 < 0) {
                            var_f6_5 += 4294967296.0f;
                        }
                        arg0->unk53 = var_f6_5 + temp_f10_7;
                        arg0->unk5B = arg0->unk5B + sp80;
                        if (arg0->unk14 == 0) {
                            arg0->unk4C = (unaligned s32) arg0->unk50;
                        }
                        if (arg0->unk16 == 0) {
                            arg0->unk54 = (unaligned s32) arg0->unk58;
                        }
                        goto block_154;
                    case 0xE2:
                        arg0->unk6 = arg0->unk6 | 8;
                        goto block_154;
                    case 0xE3:
                        temp_t2_6 = var_s1->unk0;
                        var_s1 += 1;
                        arg0->unkC = temp_t2_6;
                        goto block_154;
                    case 0xFA:
                        temp_t3_2 = var_s1->unk0;
                        var_s1 += 1;
                        arg0->unk20 = var_s1 - arg0->unk18;
                        arg0->unk9 = temp_t3_2;
                        goto block_154;
                    case 0xFB:
                        temp_t7_7 = arg0->unk9 - 1;
                        arg0->unk9 = temp_t7_7;
                        if (temp_t7_7 & 0xFF) {
                            var_s1 = arg0->unk18 + arg0->unk20;
                        }
                        goto block_154;
                    case 0xFC:
                        arg0->unk1E = var_s1 - arg0->unk18;
                        goto block_154;
                    case 0xFD:
                        var_s1 = arg0->unk18 + arg0->unk1E;
                        goto block_154;
                    case 0xFE:
                    case 0xFF:
                        arg0->unk22 = 1;
                        var_v0 = var_s1 - arg0->unk18;
                        break;
                }
            } else {
                temp_v0_12 = temp_a0 & 0x1F;
                sp94 = temp_v0_12;
                if (temp_a0 & 0x20) {
                    sp94 = var_s1->unk0 + ((temp_v0_12 & 0xFFFF) << 8);
                    var_s1 += 1;
                }
                temp_v0_13 = temp_a0 & 0xC0;
                if ((temp_v0_13 != 0) && (temp_v0_13 == 0x40)) {
                    temp_t2_7 = *var_s1;
                    var_s1 += 1;
                    arg0->unkB = temp_t2_7;
                }
            default:
block_154:
                if (sp94 != 0) {
                    var_v0 = var_s1 - arg0->unk18;
                } else {
                    goto loop_5;
                }
            }
            arg0->unk1C = var_v0;
            arg0->unk10 = sp94;
        }
    }
    temp_v0_14 = arg0->unk12;
    if (temp_v0_14 != 0) {
        temp_f0_2 = arg0->unk44;
        arg0->unk12 = temp_v0_14 - 1;
        arg0->unk44 = temp_f0_2 + ((arg0->unk48 - temp_f0_2) / temp_v0_14);
    }
    temp_a3 = arg0->unk14;
    if (temp_a3 != 0) {
        temp_lo = 0x10000 / temp_a3;
        temp_v1_4 = arg0->unk4C;
        temp_a0_4 = arg0->unk4D;
        temp_a1_2 = arg0->unk4E;
        temp_a2_4 = arg0->unk4F;
        arg0->unk4C = ((temp_v1_4 << 0x10) + ((arg0->unk50 - temp_v1_4) * temp_lo)) >> 0x10;
        arg0->unk4D = ((temp_a0_4 << 0x10) + ((arg0->unk51 - temp_a0_4) * temp_lo)) >> 0x10;
        arg0->unk4E = ((temp_a1_2 << 0x10) + ((arg0->unk52 - temp_a1_2) * temp_lo)) >> 0x10;
        arg0->unk14 = temp_a3 - 1;
        arg0->unk4F = ((temp_a2_4 << 0x10) + ((arg0->unk53 - temp_a2_4) * temp_lo)) >> 0x10;
    }
    temp_a3_2 = arg0->unk16;
    if (temp_a3_2 != 0) {
        temp_lo_2 = 0x10000 / temp_a3_2;
        temp_v1_5 = arg0->unk54;
        temp_a0_5 = arg0->unk55;
        temp_a1_3 = arg0->unk56;
        temp_a2_5 = arg0->unk57;
        arg0->unk54 = ((temp_v1_5 << 0x10) + ((arg0->unk58 - temp_v1_5) * temp_lo_2)) >> 0x10;
        arg0->unk55 = ((temp_a0_5 << 0x10) + ((arg0->unk59 - temp_a0_5) * temp_lo_2)) >> 0x10;
        arg0->unk56 = ((temp_a1_3 << 0x10) + ((arg0->unk5A - temp_a1_3) * temp_lo_2)) >> 0x10;
        arg0->unk16 = temp_a3_2 - 1;
        arg0->unk57 = ((temp_a2_5 << 0x10) + ((arg0->unk5B - temp_a2_5) * temp_lo_2)) >> 0x10;
    }
    temp_t2_8 = arg0->unk22 - 1;
    arg0->unk22 = temp_t2_8;
    if (!(temp_t2_8 & 0xFFFF)) {
        if (arg1 == NULL) {
            *(&D_800D69C8 + (arg2 * 4)) = arg0->unk0;
        } else {
            *arg1 = arg0->unk0;
        }
        temp_v0_15 = arg0->unk5C;
        var_s0 = arg0->unk0;
        if ((temp_v0_15 != NULL) && (arg0->unk6 & 4) && (temp_v0_15->unk9 == 2)) {
            temp_v0_15->unk54 = temp_v0_15->unk54 - 1;
        }
        temp_a0_6 = arg0->unk60;
        if (temp_a0_6 != NULL) {
            temp_a0_6->unk2A = temp_a0_6->unk2A - 1;
            temp_a0_7 = arg0->unk60;
            if (temp_a0_7->unk2A == 0) {
                func_8009B69C(temp_a0_7);
                if (arg1 == NULL) {
                    temp_v0_16 = *(&D_800D69C8 + (arg2 * 4));
                    if (var_s0 != temp_v0_16) {
                        var_s0 = temp_v0_16;
                    }
                }
            }
        }
        arg0->unk0 = D_800D69C0;
        D_800D69C0 = arg0;
        D_800D6AE0 -= 1;
        return var_s0;
    }
    temp_v0_17 = arg0->unk6;
    if (temp_v0_17 & 4) {
        temp_a2_6 = arg0->unk5C;
        temp_v0_18 = (arg0->unk3C * 651.8986f) & 0xFFF & 0xFFFF;
        temp_v0_19 = (temp_v0_18 + 0x400) & 0xFFFF;
        sp5C = *(&lbreflect_Int16SinTable + ((temp_v0_18 & 0x7FF) * 2));
        if (temp_v0_18 & 0x800) {
            sp5C = -sp5C;
        }
        var_f16 = *(&lbreflect_Int16SinTable + ((temp_v0_19 & 0x7FF) * 2));
        if (temp_v0_19 & 0x800) {
            var_f16 = -var_f16;
        }
        temp_v0_20 = (arg0->unk40 * 651.8986f) & 0xFFF & 0xFFFF;
        temp_v0_21 = (temp_v0_20 + 0x400) & 0xFFFF;
        sp58 = *(&lbreflect_Int16SinTable + ((temp_v0_20 & 0x7FF) * 2));
        if (temp_v0_20 & 0x800) {
            sp58 = -sp58;
        }
        var_f12 = *(&lbreflect_Int16SinTable + ((temp_v0_21 & 0x7FF) * 2));
        if (temp_v0_21 & 0x800) {
            var_f12 = -var_f12;
        }
        temp_f16_2 = var_f16 * 0.000030517578f;
        sp5C *= 0.000030517578f;
        temp_f12 = var_f12 * 0.000030517578f;
        sp58 *= 0.000030517578f;
        arg0->unk38 = arg0->unk38 + temp_a2_6->unk50;
        temp_f0_3 = temp_a2_6->unk38;
        if (temp_f0_3 < 0.0f) {
            sp70 = -temp_f0_3;
        } else {
            sp70 = temp_f0_3;
        }
        temp_f0_4 = temp_a2_6->unk3C;
        if (temp_f0_4 < 0.0f) {
            var_f2 = -temp_f0_4;
        } else {
            var_f2 = temp_f0_4;
        }
        temp_v1_6 = (var_f2 * 651.8986f) & 0xFFF & 0xFFFF;
        temp_t0_4 = *(&lbreflect_Int16SinTable + ((temp_v1_6 & 0x7FF) * 2));
        temp_v0_22 = (temp_v1_6 + 0x400) & 0xFFFF;
        var_f18 = temp_t0_4;
        if (temp_t0_4 < 0) {
            var_f18 += 4294967296.0f;
        }
        if (temp_v1_6 & 0x800) {
            var_f18 = -var_f18;
        }
        temp_t6_5 = *(&lbreflect_Int16SinTable + ((temp_v0_22 & 0x7FF) * 2));
        var_f0 = temp_t6_5;
        if (temp_t6_5 < 0) {
            var_f0 += 4294967296.0f;
        }
        sp54 = temp_f16_2;
        if (temp_v0_22 & 0x800) {
            var_f0 = -var_f0;
            sp54 = temp_f16_2;
        }
        temp_f16_3 = arg0->unk38;
        temp_f6_7 = sp70 + (temp_f16_3 * (var_f18 / var_f0));
        sp70 = temp_f6_7;
        sp70 = temp_f6_7 * arg0->unk34;
        arg0->unk30 = arg0->unk30 + temp_a2_6->unk2C;
        temp_v0_23 = (arg0->unk30 * 651.8986f) & 0xFFF & 0xFFFF;
        temp_t2_9 = *(&lbreflect_Int16SinTable + ((temp_v0_23 & 0x7FF) * 2));
        temp_v0_24 = (temp_v0_23 + 0x400) & 0xFFFF;
        var_f18_2 = temp_t2_9;
        if (temp_t2_9 < 0) {
            var_f18_2 += 4294967296.0f;
        }
        if (temp_v0_23 & 0x800) {
            var_f18_2 = -var_f18_2;
        }
        temp_t7_8 = *(&lbreflect_Int16SinTable + ((temp_v0_24 & 0x7FF) * 2));
        var_f0_2 = temp_t7_8;
        if (temp_t7_8 < 0) {
            var_f0_2 += 4294967296.0f;
        }
        sp44 = var_f0_2;
        sp50 = temp_f12;
        if (temp_v0_24 & 0x800) {
            sp50 = temp_f12;
            sp44 = -var_f0_2;
        }
        temp_f6_8 = sp70 * 0.000030517578f;
        temp_f2_2 = temp_f6_8 * sp44;
        sp70 = temp_f6_8;
        temp_f14_2 = -temp_f2_2;
        arg0->unk24 = (temp_f2_2 * sp50) + (temp_f16_3 * sp58) + temp_a2_6->unk14;
        temp_f12_2 = sp70 * var_f18_2;
        arg0->unk28 = (temp_f14_2 * sp5C * sp58) + (temp_f12_2 * sp54) + (temp_f16_3 * sp5C * sp50) + temp_a2_6->unk18;
        arg0->unk2C = ((temp_f14_2 * sp54 * sp58) - (temp_f12_2 * sp5C)) + (temp_f16_3 * sp54 * sp50) + temp_a2_6->unk1C;
    } else {
        if (temp_v0_17 & 1) {
            arg0->unk34 = arg0->unk34 - arg0->unk3C;
        }
        if (arg0->unk6 & 2) {
            temp_f0_5 = arg0->unk40;
            arg0->unk30 = arg0->unk30 * temp_f0_5;
            arg0->unk34 = arg0->unk34 * temp_f0_5;
            arg0->unk38 = arg0->unk38 * temp_f0_5;
        }
        arg0->unk24 = arg0->unk24 + arg0->unk30;
        arg0->unk28 = arg0->unk28 + arg0->unk34;
        arg0->unk2C = arg0->unk2C + arg0->unk38;
    }
    temp_v0_25 = arg0->unk6;
    if (temp_v0_25 & 0x8000) {
        temp_v1_7 = (((temp_v0_25 & 0x7000) >> 0xC) * 4) + &D_800D6A18;
        temp_a0_8 = *temp_v1_7;
        if (temp_a0_8 != NULL) {
            temp_a0_8->unk1C = arg0->unk24;
            (*temp_v1_7)->unk20 = arg0->unk28;
            (*temp_v1_7)->unk24 = arg0->unk2C;
        }
    }
block_217:
    return arg0->unk0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009C4E0.s")
#endif

/* FACTORY: 26/48. Behaviourally complete and the instruction count matches.
   Two coupled residues: (a) the ROM holds &D_800D69C8 in $s6 and the 0x10 loop
   bound in $s5, IDO reverses them (the array base is materialised first in the
   ROM); (b) the ROM emits the `p = next` assignment TWICE around a branch-likely
   (`bnel $v0,$t9` + a duplicated `or $s0,$v0`, then `b` + a third copy) and
   re-tests $s0 at the bottom, where IDO collapses it to `bne`+nop and tests
   $v0 (next) directly. The compare operand order IS already right -- with a
   memory load on one side the asm order is the reverse of the source order
   (measured on func_800A2440), hence `p->next == next`. Permuter fuel. */
#ifdef NON_MATCHING
void func_8009E834(GObj *arg0) {
    UnkParticle *func_8009C4E0(UnkParticle *, UnkParticle *, s32);
    UnkParticle *p;
    UnkParticle *prev;
    s32 i;
    u32 flags;
    UnkParticle *next;

    flags = arg0->flags;
    i = 0;
    do {
        if (!(flags & 0x10000)) {
            p = D_800D69C8[i];
            prev = NULL;
            if (p != NULL) {
                do {
                    next = func_8009C4E0(p, prev, i);
                    if (p->next == next) {
                        prev = p;
                    }
                    p = next;
                } while (p != NULL);
            }
        }
        i++;
        flags >>= 1;
    } while (i != 0x10);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009E834.s")
#endif

// crazy large gfx function lol
// contribute here! https://decomp.me/scratch/V81WB
#ifdef MIPS_TO_C
void func_8009E8F4(void *arg0, s32 arg1, void **arg2) {
    s32 sp348;
    s32 sp344;
    s32 sp340;
    s32 sp33C;
    s32 sp338;
    f32 sp2F0;
    f32 sp2EC;
    f32 sp2E8;
    f32 sp2E0;
    f32 sp2CC;
    f32 sp250;
    f32 sp24C;
    f32 sp240;
    f32 sp23C;
    f32 sp238;
    f32 sp234;
    f32 sp230;
    f32 sp22C;
    s32 sp228;
    s32 sp224;
    s32 sp20C;
    s32 sp1EC;
    s32 spAC;
    Camera *temp_s0;
    Camera *var_s5;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f14_3;
    f32 temp_f14_4;
    f32 temp_f14_5;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f16_3;
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f22_2;
    f32 temp_f22_3;
    f32 temp_f24;
    f32 temp_f24_2;
    f32 temp_f26;
    f32 temp_f26_2;
    f32 temp_f28;
    f32 temp_f28_2;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f2_4;
    f32 temp_f2_5;
    f32 temp_f2_6;
    f32 temp_f2_7;
    f32 temp_f2_8;
    f32 var_f0;
    f32 var_f10;
    f32 var_f12;
    f32 var_f14;
    f32 var_f16;
    f32 var_f18;
    f32 var_f20;
    f32 var_f22;
    f32 var_f26;
    f32 var_f28;
    f32 var_f4;
    s16 var_a1_7;
    s16 var_a1_8;
    s16 var_v0_6;
    s16 var_v0_7;
    s32 *temp_v1;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_f10;
    s32 temp_f4;
    s32 temp_f4_2;
    s32 temp_f6;
    s32 temp_f6_2;
    s32 temp_f8;
    s32 temp_fp;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_lo_3;
    s32 temp_lo_4;
    s32 temp_ra;
    s32 temp_ra_2;
    s32 temp_ra_3;
    s32 temp_s0_8;
    s32 temp_s5;
    s32 temp_s6;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t1_3;
    s32 temp_t1_4;
    s32 temp_t1_5;
    s32 temp_t2;
    s32 temp_t2_2;
    s32 temp_t2_3;
    s32 temp_t2_4;
    s32 temp_t3;
    s32 temp_t3_2;
    s32 temp_t3_3;
    s32 temp_t3_4;
    s32 temp_t4;
    s32 temp_t4_2;
    s32 temp_t4_3;
    s32 temp_t4_4;
    s32 temp_t5;
    s32 temp_t5_2;
    s32 temp_t7;
    s32 temp_v0_14;
    s32 temp_v0_15;
    s32 temp_v0_16;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 temp_v0_9;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 temp_v1_5;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a1_4;
    s32 var_a1_5;
    s32 var_a1_6;
    s32 var_a2;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a3_4;
    s32 var_s4;
    s32 var_s4_2;
    s32 var_s7;
    s32 var_t0;
    s32 var_t9;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_4;
    s32 var_v0_5;
    s32 var_v0_8;
    s32 var_v1;
    s32 var_v1_2;
    s32 var_v1_4;
    s32 var_v1_5;
    u16 temp_a2;
    u16 temp_a2_2;
    u16 temp_a2_3;
    u8 temp_a1_2;
    u8 temp_t9;
    u8 var_v0;
    u8 var_v1_3;
    void **temp_a3;
    void *temp_s0_2;
    void *temp_s0_3;
    void *temp_s0_4;
    void *temp_s0_5;
    void *temp_s0_6;
    void *temp_s0_7;
    void *temp_s1;
    void *temp_s1_10;
    void *temp_s1_11;
    void *temp_s1_12;
    void *temp_s1_13;
    void *temp_s1_14;
    void *temp_s1_15;
    void *temp_s1_16;
    void *temp_s1_17;
    void *temp_s1_18;
    void *temp_s1_19;
    void *temp_s1_20;
    void *temp_s1_21;
    void *temp_s1_22;
    void *temp_s1_23;
    void *temp_s1_24;
    void *temp_s1_25;
    void *temp_s1_26;
    void *temp_s1_27;
    void *temp_s1_28;
    void *temp_s1_29;
    void *temp_s1_2;
    void *temp_s1_30;
    void *temp_s1_31;
    void *temp_s1_32;
    void *temp_s1_33;
    void *temp_s1_34;
    void *temp_s1_35;
    void *temp_s1_36;
    void *temp_s1_37;
    void *temp_s1_38;
    void *temp_s1_39;
    void *temp_s1_3;
    void *temp_s1_4;
    void *temp_s1_5;
    void *temp_s1_6;
    void *temp_s1_7;
    void *temp_s1_8;
    void *temp_s1_9;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *var_s1;
    void *var_s1_2;
    void *var_s1_3;
    void *var_s2;

    temp_s0 = omCurrentCamera->data;
    temp_s1 = *arg2;
    var_s4 = 0;
    var_s5 = temp_s0;
    if (temp_s0->mtxCount > 0) {
        do {
            temp_t9 = var_s5->matrices[0]->kind;
            switch (temp_t9) {                      /* switch 1 */
                case 3:                             /* switch 1 */
                    HS64_PerspectiveF(&sp278[0], 0, temp_s0->perspMtx.persp.fovy, temp_s0->perspMtx.persp.aspect, temp_s0->perspMtx.persp.near, temp_s0->perspMtx.persp.far, temp_s0->perspMtx.persp.scale);
                    break;
                case 4:                             /* switch 1 */
                    func_8001B28C(&sp278[0], 0, temp_s0->perspMtx.persp.fovy, temp_s0->perspMtx.persp.aspect, temp_s0->perspMtx.persp.near, temp_s0->perspMtx.persp.far, temp_s0->perspMtx.persp.scale);
                    break;
                case 5:                             /* switch 1 */
                    guOrthoF(&sp278[0], temp_s0->perspMtx.ortho.left, temp_s0->perspMtx.persp.fovy, temp_s0->perspMtx.persp.aspect, temp_s0->perspMtx.persp.near, temp_s0->perspMtx.persp.far, temp_s0->perspMtx.persp.scale, temp_s0->perspMtx.ortho.scale);
                    break;
                case 6:                             /* switch 1 */
                case 7:                             /* switch 1 */
                case 12:                            /* switch 1 */
                case 13:                            /* switch 1 */
                    guLookAtF(&sp2F8[0], temp_s0->viewMtx.lookAt.eye.x, temp_s0->viewMtx.lookAt.eye.y, temp_s0->viewMtx.lookAt.eye.z, temp_s0->viewMtx.lookAt.at.x, temp_s0->viewMtx.lookAt.at.y, temp_s0->viewMtx.lookAt.at.z, temp_s0->viewMtx.lookAt.up.x, temp_s0->viewMtx.lookAt.up.y, temp_s0->viewMtx.lookAt.up.z);
                    break;
                case 8:                             /* switch 1 */
                case 9:                             /* switch 1 */
                case 14:                            /* switch 1 */
                case 15:                            /* switch 1 */
                    guLookAtF_2(&sp2F8[0], temp_s0->viewMtx.lookAt.eye.x, temp_s0->viewMtx.lookAt.eye.y, temp_s0->viewMtx.lookAt.eye.z, temp_s0->viewMtx.lookAt.at.x, temp_s0->viewMtx.lookAt.at.y, temp_s0->viewMtx.lookAt.at.z, temp_s0->viewMtx.lookAt.up.x, 0.0f, 1.0f, 0.0f);
                    break;
                case 10:                            /* switch 1 */
                case 11:                            /* switch 1 */
                case 16:                            /* switch 1 */
                case 17:                            /* switch 1 */
                    guLookAtF_2(&sp2F8[0], temp_s0->viewMtx.lookAt.eye.x, temp_s0->viewMtx.lookAt.eye.y, temp_s0->viewMtx.lookAt.eye.z, temp_s0->viewMtx.lookAt.at.x, temp_s0->viewMtx.lookAt.at.y, temp_s0->viewMtx.lookAt.at.z, temp_s0->viewMtx.lookAt.up.x, 0.0f, 0.0f, 1.0f);
                    break;
                default:                            /* switch 1 */
                    HS64_PerspectiveF(&sp278[0], 0, temp_s0->perspMtx.persp.fovy, temp_s0->perspMtx.persp.aspect, temp_s0->perspMtx.persp.near, temp_s0->perspMtx.persp.far, temp_s0->perspMtx.persp.scale);
                    guLookAtF(&sp2F8[0], temp_s0->viewMtx.lookAt.eye.x, temp_s0->viewMtx.lookAt.eye.y, temp_s0->viewMtx.lookAt.eye.z, temp_s0->viewMtx.lookAt.at.x, temp_s0->viewMtx.lookAt.at.y, temp_s0->viewMtx.lookAt.at.z, temp_s0->viewMtx.lookAt.up.x, temp_s0->viewMtx.lookAt.up.y, temp_s0->viewMtx.lookAt.up.z);
                    break;
            }
            var_s4 += 1;
            var_s5 += 4;
        } while (var_s4 < temp_s0->mtxCount);
    }
    if (temp_s0->mtxCount != 0) {
        guMtxCatF(&sp2F8[0], &sp278[0], &sp2B8[0]);
        sp240 = temp_s0->viewport.vp.vscale[0];
        sp238 = -temp_s0->viewport.vp.vscale[1];
        sp230 = temp_s0->viewport.vp.vscale[2];
        sp23C = temp_s0->viewport.vp.vtrans[0];
        sp234 = temp_s0->viewport.vp.vtrans[1];
        sp22C = temp_s0->viewport.vp.vtrans[2];
    } else {
        temp_f26 = temp_s0->viewport.vp.vscale[0];
        temp_f24 = -temp_s0->viewport.vp.vscale[1];
        sp23C = temp_s0->viewport.vp.vtrans[0];
        temp_f22 = temp_s0->viewport.vp.vscale[2];
        sp234 = temp_s0->viewport.vp.vtrans[1];
        temp_f28 = temp_s0->viewport.vp.vtrans[2];
        guMtxIdentF(&sp2B8[0]);
        sp2B8[0] = 1.0f / temp_f26;
        sp2CC = 1.0f / temp_f24;
        sp2E0 = -1.0f / temp_f22;
        sp2E8 = -sp23C / temp_f26;
        sp2EC = -sp234 / temp_f24;
        sp2F0 = temp_f28 / temp_f22;
        memcpy(&sp278[0], &sp2B8[0], 0x40);
        sp230 = temp_f22;
        sp238 = temp_f24;
        sp240 = temp_f26;
        sp22C = temp_f28;
    }
    sp250 = sqrtf((sp2D8 * sp2D8) + ((sp2B8[0] * sp2B8[0]) + (sp2C8 * sp2C8)));
    sp24C = sqrtf((sp2DC * sp2DC) + ((sp2B8[1] * sp2B8[1]) + (sp2CC * sp2CC)));
    temp_s1_2 = temp_s1 + 8;
    temp_s1->unk0 = 0xE7000000;
    temp_s1->unk4 = 0;
    temp_s1_3 = temp_s1_2 + 8;
    temp_s1_2->unk0 = 0xE3000C00;
    temp_s1_2->unk4 = 0;
    temp_s1_4 = temp_s1_3 + 8;
    temp_s1_3->unk4 = 4;
    temp_s1_3->unk0 = 0xE2001D00;
    temp_s1_4->unk0 = 0xE3001801;
    temp_s1_5 = temp_s1_4 + 8;
    temp_s1_4->unk4 = D_800BE3E0;
    temp_s1_5->unk0 = 0xE3001A01;
    temp_s1_5->unk4 = D_800BE3E4;
    sp340 = -1;
    var_s1 = temp_s1_5 + 8;
    sp348 = 0;
    sp344 = 0;
    sp33C = -1;
    sp338 = -1;
    D_800BE3EC += 1;
    sp20C = 0;
    do {
        if (arg0->unk30 & (1 << sp20C)) {
            var_s2 = *(&D_800D69C8 + (sp20C * 4));
            if (var_s2 != NULL) {
                do {
                    if (var_s2->unk6 & 8) {
                        if (!(arg1 & 1)) {

                        } else {
                            goto block_22;
                        }
                    } else if (arg1 & 2) {
block_22:
                        if (var_s2->unk44 != 0.0f) {
                            temp_s0_2 = var_s2->unk60;
                            temp_f26_2 = var_s2->unk24;
                            temp_f28_2 = var_s2->unk28;
                            temp_f20 = var_s2->unk2C;
                            if (temp_s0_2 != NULL) {
                                if (D_800BE3EC != temp_s0_2->unk29) {
                                    var_v0 = temp_s0_2->unk28;
                                    if (var_v0 != 2) {
                                        func_8001C2E4(temp_s0_2 + 0x2C, temp_s0_2->unk4, temp_s0_2->unk8, temp_s0_2->unkC, temp_s0_2->unk10, temp_s0_2->unk14, temp_s0_2->unk18, temp_s0_2->unk1C, temp_s0_2->unk20, temp_s0_2->unk24);
                                        var_v0 = var_s2->unk60->unk28;
                                    }
                                    if (var_v0 == 1) {
                                        var_s2->unk60->unk28 = 2;
                                    }
                                    guMtxCatF(var_s2->unk60 + 0x2C, &sp2B8[0], var_s2->unk60 + 0x6C);
                                    temp_s0_3 = var_s2->unk60;
                                    temp_f2 = temp_s0_3->unk6C;
                                    temp_f14 = temp_s0_3->unk7C;
                                    temp_f0 = temp_s0_3->unk8C;
                                    var_s2->unk60->unkAC = sqrtf((temp_f0 * temp_f0) + ((temp_f2 * temp_f2) + (temp_f14 * temp_f14)));
                                    temp_s0_4 = var_s2->unk60;
                                    temp_f14_2 = temp_s0_4->unk70;
                                    temp_f16 = temp_s0_4->unk80;
                                    temp_f2_2 = temp_s0_4->unk90;
                                    var_s2->unk60->unkB0 = sqrtf((temp_f2_2 * temp_f2_2) + ((temp_f14_2 * temp_f14_2) + (temp_f16 * temp_f16)));
                                    temp_s0_5 = var_s2->unk60;
                                    if (temp_s0_5->unkBA != 0) {
                                        temp_f2_3 = temp_s0_5->unk2C;
                                        temp_f14_3 = temp_s0_5->unk3C;
                                        temp_f0_2 = temp_s0_5->unk4C;
                                        temp_s0_6 = var_s2->unk60;
                                        temp_f22_2 = sqrtf((temp_f0_2 * temp_f0_2) + ((temp_f2_3 * temp_f2_3) + (temp_f14_3 * temp_f14_3)));
                                        temp_f14_4 = temp_s0_6->unk30;
                                        temp_f16_2 = temp_s0_6->unk40;
                                        temp_f2_4 = temp_s0_6->unk50;
                                        temp_s0_7 = var_s2->unk60;
                                        temp_f24_2 = sqrtf((temp_f2_4 * temp_f2_4) + ((temp_f14_4 * temp_f14_4) + (temp_f16_2 * temp_f16_2)));
                                        temp_f14_5 = temp_s0_7->unk34;
                                        temp_f16_3 = temp_s0_7->unk44;
                                        temp_f2_5 = temp_s0_7->unk54;
                                        temp_f0_3 = sqrtf((temp_f2_5 * temp_f2_5) + ((temp_f14_5 * temp_f14_5) + (temp_f16_3 * temp_f16_3)));
                                        var_s2->unk60->unk6C = sp278[0] * temp_f22_2;
                                        var_s2->unk60->unk70 = 0.0f;
                                        var_s2->unk60->unk74 = 0.0f;
                                        var_s2->unk60->unk78 = 0.0f;
                                        var_s2->unk60->unk7C = 0.0f;
                                        var_s2->unk60->unk80 = sp28C * temp_f24_2;
                                        var_s2->unk60->unk84 = 0.0f;
                                        var_s2->unk60->unk88 = 0.0f;
                                        var_s2->unk60->unk8C = 0.0f;
                                        var_s2->unk60->unk90 = 0.0f;
                                        var_s2->unk60->unk94 = sp2A0 * temp_f0_3;
                                        var_s2->unk60->unk98 = sp2A4 * temp_f0_3;
                                    }
                                    var_s2->unk60->unk29 = D_800BE3EC;
                                }
                                var_f14 = var_s2->unk60->unkAC;
                                var_f16 = var_s2->unk60->unkB0;
                                var_f0 = var_s2->unk60->unk9C + ((var_s2->unk60->unk6C * temp_f26_2) + (var_s2->unk60->unk7C * temp_f28_2) + (var_s2->unk60->unk8C * temp_f20));
                                var_f12 = var_s2->unk60->unkA0 + ((var_s2->unk60->unk70 * temp_f26_2) + (var_s2->unk60->unk80 * temp_f28_2) + (var_s2->unk60->unk90 * temp_f20));
                                var_f22 = var_s2->unk60->unkA4 + ((var_s2->unk60->unk74 * temp_f26_2) + (var_s2->unk60->unk84 * temp_f28_2) + (var_s2->unk60->unk94 * temp_f20));
                                var_f4 = var_s2->unk60->unkA8;
                                var_f10 = (var_s2->unk60->unk78 * temp_f26_2) + (var_s2->unk60->unk88 * temp_f28_2) + (var_s2->unk60->unk98 * temp_f20);
                            } else {
                                var_f14 = sp250;
                                var_f16 = sp24C;
                                var_f0 = sp2E8 + ((sp2B8[0] * temp_f26_2) + (sp2C8 * temp_f28_2) + (sp2D8 * temp_f20));
                                var_f12 = sp2EC + ((sp2B8[1] * temp_f26_2) + (sp2CC * temp_f28_2) + (sp2DC * temp_f20));
                                var_f22 = sp2F0 + ((sp2B8[2] * temp_f26_2) + (sp2D0 * temp_f28_2) + (sp2E0 * temp_f20));
                                var_f4 = sp2F4;
                                var_f10 = (sp2B8[3] * temp_f26_2) + (sp2D4 * temp_f28_2) + (sp2E4 * temp_f20);
                            }
                            temp_f2_6 = var_f4 + var_f10;
                            if (temp_f2_6 != 0.0f) {
                                temp_f2_7 = 1.0f / temp_f2_6;
                                temp_f0_4 = var_f0 * temp_f2_7;
                                temp_f12 = var_f12 * temp_f2_7;
                                temp_f22_3 = var_f22 * temp_f2_7;
                                if (!(temp_f0_4 < -1.0f) && !(temp_f0_4 > 1.0f) && !(temp_f12 < -1.0f) && !(temp_f12 > 1.0f) && !(temp_f22_3 < -1.0f) && !(temp_f22_3 > 1.0f)) {
                                    temp_f2_8 = temp_f2_7 * var_s2->unk44;
                                    temp_a2 = var_s2->unk6;
                                    var_s7 = 2;
                                    temp_f0_5 = (temp_f0_4 * sp240) + sp23C;
                                    var_f18 = (((temp_f2_8 * var_f14) + temp_f0_4) * sp240) + sp23C;
                                    if (temp_f0_5 < var_f18) {
                                        var_f26 = temp_f0_5 - (var_f18 - temp_f0_5);
                                    } else {
                                        var_f26 = var_f18;
                                        var_f18 = temp_f0_5 - (var_f18 - temp_f0_5);
                                    }
                                    temp_f12_2 = (temp_f12 * sp238) + sp234;
                                    var_f20 = (((temp_f2_8 * var_f16) + temp_f12) * sp238) + sp234;
                                    if (temp_f12_2 < var_f20) {
                                        var_f28 = temp_f12_2 - (var_f20 - temp_f12_2);
                                    } else {
                                        var_f28 = var_f20;
                                        var_f20 = temp_f12_2 - (var_f20 - temp_f12_2);
                                    }
                                    temp_a1 = (var_s2->unk8 & 7) * 4;
                                    temp_v0 = *(*(&D_800D6A98 + temp_a1) + (var_s2->unkA * 4));
                                    temp_a0 = var_s2->unkB * 4;
                                    temp_s6 = temp_v0->unk4;
                                    temp_fp = (temp_v0 + temp_a0)->unk18;
                                    temp_t1 = temp_v0->unk8;
                                    temp_s0_8 = temp_v0->unkC;
                                    temp_s5 = temp_v0->unk10;
                                    spAC = temp_a1;
                                    if (temp_s6 == 2) {
                                        temp_a1_2 = var_s2->unkC;
                                        temp_v1 = temp_v0 + (temp_v0->unk0 * 4) + 0x18;
                                        if (temp_a1_2 != 0xFF) {
                                            var_t9 = *(temp_v1 + (temp_a1_2 * 4));
                                            goto block_53;
                                        }
                                        if (!(temp_a2 & 0x10)) {
                                            sp1EC = *(temp_v1 + temp_a0);
                                        } else {
                                            var_t9 = *temp_v1;
block_53:
                                            sp1EC = var_t9;
                                        }
                                    }
                                    temp_f4 = (temp_s0_8 * 4096.0f) / (var_f18 - var_f26);
                                    sp228 = temp_f4;
                                    temp_f6 = (temp_s5 * 4096.0f) / (var_f20 - var_f28);
                                    sp224 = temp_f6;
                                    if (temp_a2 & 0x20) {
                                        sp228 = temp_f4 * 2;
                                        var_s7 = 1;
                                        switch (temp_s0_8) { /* switch 4; irregular */
                                            case 0x2: /* switch 4 */
                                                var_t0 = 1;
                                                break;
                                            case 0x4: /* switch 4 */
                                                var_t0 = 2;
                                                break;
                                            case 0x8: /* switch 4 */
                                                var_t0 = 3;
                                                break;
                                            case 0x10: /* switch 4 */
                                                var_t0 = 4;
                                                break;
                                            case 0x20: /* switch 4 */
                                                var_t0 = 5;
                                                break;
                                            case 0x40: /* switch 4 */
                                                var_t0 = 6;
                                                break;
                                            case 0x80: /* switch 4 */
                                                var_t0 = 7;
                                                break;
                                            case 0x100: /* switch 4 */
                                                var_t0 = 8;
                                                break;
                                            case 0x3: /* switch 4 */
                                            case 0x5: /* switch 4 */
                                            case 0x6: /* switch 4 */
                                            case 0x7: /* switch 4 */
                                            case 0x9: /* switch 4 */
                                            case 0xA: /* switch 4 */
                                            case 0xB: /* switch 4 */
                                            case 0xC: /* switch 4 */
                                            case 0xD: /* switch 4 */
                                            case 0xE: /* switch 4 */
                                            case 0xF: /* switch 4 */
                                            case 0x11: /* switch 4 */
                                            case 0x12: /* switch 4 */
                                            case 0x13: /* switch 4 */
                                            case 0x14: /* switch 4 */
                                            case 0x15: /* switch 4 */
                                            case 0x16: /* switch 4 */
                                            case 0x17: /* switch 4 */
                                            case 0x18: /* switch 4 */
                                            case 0x19: /* switch 4 */
                                            case 0x1A: /* switch 4 */
                                            case 0x1B: /* switch 4 */
                                            case 0x1C: /* switch 4 */
                                            case 0x1D: /* switch 4 */
                                            case 0x1E: /* switch 4 */
                                            case 0x1F: /* switch 4 */
                                                goto block_73;
                                        }
                                    } else {
block_73:
                                        var_t0 = 0;
                                    }
                                    var_s4_2 = 2;
                                    if (temp_a2 & 0x40) {
                                        sp224 = temp_f6 * 2;
                                        var_s4_2 = 1;
                                        switch (temp_s5) { /* switch 5; irregular */
                                            case 0x2: /* switch 5 */
                                                var_a2 = 1;
                                                break;
                                            case 0x4: /* switch 5 */
                                                var_a2 = 2;
                                                break;
                                            case 0x8: /* switch 5 */
                                                var_a2 = 3;
                                                break;
                                            case 0x10: /* switch 5 */
                                                var_a2 = 4;
                                                break;
                                            case 0x20: /* switch 5 */
                                                var_a2 = 5;
                                                break;
                                            case 0x40: /* switch 5 */
                                                var_a2 = 6;
                                                break;
                                            case 0x80: /* switch 5 */
                                                var_a2 = 7;
                                                break;
                                            case 0x100: /* switch 5 */
                                                var_a2 = 8;
                                                break;
                                            case 0x3: /* switch 5 */
                                            case 0x5: /* switch 5 */
                                            case 0x6: /* switch 5 */
                                            case 0x7: /* switch 5 */
                                            case 0x9: /* switch 5 */
                                            case 0xA: /* switch 5 */
                                            case 0xB: /* switch 5 */
                                            case 0xC: /* switch 5 */
                                            case 0xD: /* switch 5 */
                                            case 0xE: /* switch 5 */
                                            case 0xF: /* switch 5 */
                                            case 0x11: /* switch 5 */
                                            case 0x12: /* switch 5 */
                                            case 0x13: /* switch 5 */
                                            case 0x14: /* switch 5 */
                                            case 0x15: /* switch 5 */
                                            case 0x16: /* switch 5 */
                                            case 0x17: /* switch 5 */
                                            case 0x18: /* switch 5 */
                                            case 0x19: /* switch 5 */
                                            case 0x1A: /* switch 5 */
                                            case 0x1B: /* switch 5 */
                                            case 0x1C: /* switch 5 */
                                            case 0x1D: /* switch 5 */
                                            case 0x1E: /* switch 5 */
                                            case 0x1F: /* switch 5 */
                                                goto block_93;
                                        }
                                    } else {
block_93:
                                        var_a2 = 0;
                                    }
                                    if (temp_s6 == 2) {
                                        if (sp1EC != sp344) {
                                            temp_s1_6 = var_s1 + 8;
                                            var_s1->unk0 = 0xFD100000;
                                            var_s1->unk4 = sp1EC;
                                            temp_s1_7 = temp_s1_6 + 8;
                                            temp_s1_6->unk0 = 0xE8000000;
                                            temp_s1_6->unk4 = 0;
                                            temp_s1_8 = temp_s1_7 + 8;
                                            temp_s1_7->unk4 = 0x07000000;
                                            temp_s1_7->unk0 = 0xF5000100;
                                            temp_s1_9 = temp_s1_8 + 8;
                                            temp_s1_8->unk0 = 0xE6000000;
                                            temp_s1_8->unk4 = 0;
                                            temp_s1_9->unk0 = 0xF0000000;
                                            temp_s1_10 = temp_s1_9 + 8;
                                            sp344 = sp1EC;
                                            temp_s1_9->unk4 = 0x073FC000;
                                            temp_s1_10->unk0 = 0xE7000000;
                                            temp_s1_10->unk4 = 0;
                                            var_s1 = temp_s1_10 + 8;
                                        }
                                        if (sp338 != 1) {
                                            var_s1->unk4 = 0x8000;
                                            var_s1->unk0 = 0xE3001001;
                                            var_s1 += 8;
                                            sp338 = 1;
                                        }
                                    } else if (sp338 != 0) {
                                        var_s1->unk0 = 0xE3001001;
                                        var_s1->unk4 = 0;
                                        var_s1 += 8;
                                        sp338 = 0;
                                    }
                                    if (temp_fp != sp348) {
                                        switch (temp_t1) { /* switch 6; irregular */
                                            case 0: /* switch 6 */
                                                temp_lo = temp_s0_8 * temp_s5;
                                                temp_v0_2 = (temp_s6 & 7) << 0x15;
                                                temp_ra = temp_v0_2 | 0xF5000000;
                                                temp_t1_2 = (var_s4_2 & 3) << 0x12;
                                                temp_s1_11 = var_s1 + 8;
                                                temp_t2 = (var_a2 & 0xF) << 0xE;
                                                var_s1->unk0 = temp_v0_2 | 0xFD000000 | 0x100000;
                                                temp_t3 = (var_s7 & 3) << 8;
                                                var_s1->unk4 = temp_fp;
                                                temp_s1_11->unk0 = temp_ra | 0x100000;
                                                temp_t4 = (var_t0 & 0xF) * 0x10;
                                                temp_s1_12 = temp_s1_11 + 8;
                                                temp_s1_11->unk4 = temp_t1_2 | 0x07000000 | temp_t2 | temp_t3 | temp_t4;
                                                temp_v0_3 = ((temp_lo + 3) >> 2) - 1;
                                                temp_s1_13 = temp_s1_12 + 8;
                                                temp_s1_12->unk0 = 0xE6000000;
                                                temp_s1_12->unk4 = 0;
                                                temp_s1_13->unk0 = 0xF3000000;
                                                temp_s1_14 = temp_s1_13 + 8;
                                                if (temp_v0_3 < 0x7FF) {
                                                    var_a3 = temp_v0_3;
                                                } else {
                                                    var_a3 = 0x7FF;
                                                }
                                                temp_v1_2 = temp_s0_8 / 16;
                                                var_a1 = temp_v1_2;
                                                if (temp_v1_2 <= 0) {
                                                    var_a1 = 1;
                                                }
                                                if (temp_v1_2 <= 0) {
                                                    var_v0_2 = 1;
                                                } else {
                                                    var_v0_2 = temp_v1_2;
                                                }
                                                temp_s1_13->unk4 = (((var_a1 + 0x7FF) / var_v0_2) & 0xFFF) | 0x07000000 | ((var_a3 & 0xFFF) << 0xC);
                                                temp_s1_14->unk0 = 0xE7000000;
                                                temp_s1_15 = temp_s1_14 + 8;
                                                temp_s1_14->unk4 = 0;
                                                temp_s1_15->unk4 = temp_t1_2 | temp_t2 | temp_t3 | temp_t4;
                                                temp_s1_15->unk0 = temp_ra | (((((temp_s0_8 >> 1) + 7) >> 3) & 0x1FF) << 9);
                                                temp_s1_16 = temp_s1_15 + 8;
                                                temp_s1_16->unk0 = 0xF2000000;
                                                temp_s1_16->unk4 = ((((temp_s0_8 - 1) * 4) & 0xFFF) << 0xC) | (((temp_s5 - 1) * 4) & 0xFFF);
                                                var_s1 = temp_s1_16 + 8;
                                                if (temp_lo >= 0x1000) {
block_146:
                                                    sp344 = 0;
                                                }
                                                break;
                                            case 1: /* switch 6 */
                                                temp_lo_2 = temp_s0_8 * temp_s5;
                                                temp_v0_4 = (temp_s6 & 7) << 0x15;
                                                temp_ra_2 = temp_v0_4 | 0xF5000000;
                                                temp_t1_3 = (var_s4_2 & 3) << 0x12;
                                                temp_s1_17 = var_s1 + 8;
                                                temp_t2_2 = (var_a2 & 0xF) << 0xE;
                                                var_s1->unk0 = temp_v0_4 | 0xFD000000 | 0x100000;
                                                temp_t3_2 = (var_s7 & 3) << 8;
                                                var_s1->unk4 = temp_fp;
                                                temp_s1_17->unk0 = temp_ra_2 | 0x100000;
                                                temp_t4_2 = (var_t0 & 0xF) * 0x10;
                                                temp_s1_18 = temp_s1_17 + 8;
                                                temp_s1_17->unk4 = temp_t1_3 | 0x07000000 | temp_t2_2 | temp_t3_2 | temp_t4_2;
                                                temp_v0_5 = ((temp_lo_2 + 1) >> 1) - 1;
                                                temp_s1_19 = temp_s1_18 + 8;
                                                temp_s1_18->unk0 = 0xE6000000;
                                                temp_s1_18->unk4 = 0;
                                                temp_s1_19->unk0 = 0xF3000000;
                                                temp_s1_20 = temp_s1_19 + 8;
                                                if (temp_v0_5 < 0x7FF) {
                                                    var_a3_2 = temp_v0_5;
                                                } else {
                                                    var_a3_2 = 0x7FF;
                                                }
                                                temp_v1_3 = temp_s0_8 / 8;
                                                var_a1_2 = temp_v1_3;
                                                if (temp_v1_3 <= 0) {
                                                    var_a1_2 = 1;
                                                }
                                                if (temp_v1_3 <= 0) {
                                                    var_v0_3 = 1;
                                                } else {
                                                    var_v0_3 = temp_v1_3;
                                                }
                                                temp_s1_19->unk4 = (((var_a1_2 + 0x7FF) / var_v0_3) & 0xFFF) | 0x07000000 | ((var_a3_2 & 0xFFF) << 0xC);
                                                temp_s1_20->unk0 = 0xE7000000;
                                                temp_s1_21 = temp_s1_20 + 8;
                                                temp_s1_20->unk4 = 0;
                                                temp_s1_21->unk4 = temp_t1_3 | temp_t2_2 | temp_t3_2 | temp_t4_2;
                                                temp_s1_21->unk0 = temp_ra_2 | 0x80000 | ((((temp_s0_8 + 7) >> 3) & 0x1FF) << 9);
                                                temp_s1_22 = temp_s1_21 + 8;
                                                temp_s1_22->unk0 = 0xF2000000;
                                                temp_s1_22->unk4 = ((((temp_s0_8 - 1) * 4) & 0xFFF) << 0xC) | (((temp_s5 - 1) * 4) & 0xFFF);
                                                var_s1 = temp_s1_22 + 8;
                                                if (temp_lo_2 >= 0x800) {
                                                    goto block_146;
                                                }
                                                break;
                                            case 2: /* switch 6 */
                                                temp_lo_3 = temp_s0_8 * temp_s5;
                                                temp_v0_6 = (temp_s6 & 7) << 0x15;
                                                temp_t1_4 = (var_s4_2 & 3) << 0x12;
                                                temp_t2_3 = (var_a2 & 0xF) << 0xE;
                                                temp_s1_23 = var_s1 + 8;
                                                temp_t3_3 = (var_s7 & 3) << 8;
                                                var_s1->unk0 = temp_v0_6 | 0xFD000000 | 0x100000;
                                                temp_t4_3 = (var_t0 & 0xF) * 0x10;
                                                temp_s1_24 = temp_s1_23 + 8;
                                                var_s1->unk4 = temp_fp;
                                                temp_ra_3 = temp_v0_6 | 0xF5000000 | 0x100000;
                                                temp_s1_23->unk4 = temp_t1_4 | 0x07000000 | temp_t2_3 | temp_t3_3 | temp_t4_3;
                                                temp_s1_23->unk0 = temp_ra_3;
                                                temp_v0_7 = temp_lo_3 - 1;
                                                temp_s1_25 = temp_s1_24 + 8;
                                                temp_s1_24->unk0 = 0xE6000000;
                                                temp_s1_24->unk4 = 0;
                                                temp_s1_25->unk0 = 0xF3000000;
                                                temp_s1_26 = temp_s1_25 + 8;
                                                if (temp_v0_7 < 0x7FF) {
                                                    var_a3_3 = temp_v0_7;
                                                } else {
                                                    var_a3_3 = 0x7FF;
                                                }
                                                temp_t5 = temp_s0_8 * 2;
                                                temp_v1_4 = temp_t5 / 8;
                                                var_a1_3 = temp_v1_4;
                                                if (temp_v1_4 <= 0) {
                                                    var_a1_3 = 1;
                                                }
                                                if (temp_v1_4 <= 0) {
                                                    var_v0_4 = 1;
                                                } else {
                                                    var_v0_4 = temp_v1_4;
                                                }
                                                temp_s1_25->unk4 = (((var_a1_3 + 0x7FF) / var_v0_4) & 0xFFF) | 0x07000000 | ((var_a3_3 & 0xFFF) << 0xC);
                                                temp_s1_26->unk0 = 0xE7000000;
                                                temp_s1_27 = temp_s1_26 + 8;
                                                temp_s1_26->unk4 = 0;
                                                temp_s1_27->unk4 = temp_t1_4 | temp_t2_3 | temp_t3_3 | temp_t4_3;
                                                temp_s1_27->unk0 = temp_ra_3 | ((((temp_t5 + 7) >> 3) & 0x1FF) << 9);
                                                temp_s1_28 = temp_s1_27 + 8;
                                                temp_s1_28->unk0 = 0xF2000000;
                                                temp_s1_28->unk4 = ((((temp_s0_8 - 1) * 4) & 0xFFF) << 0xC) | (((temp_s5 - 1) * 4) & 0xFFF);
                                                var_s1 = temp_s1_28 + 8;
                                                if (temp_lo_3 >= 0x400) {
                                                    goto block_146;
                                                }
                                                break;
                                            case 3: /* switch 6 */
                                                temp_lo_4 = temp_s0_8 * temp_s5;
                                                temp_v0_8 = (temp_s6 & 7) << 0x15;
                                                temp_t1_5 = (var_s4_2 & 3) << 0x12;
                                                temp_t2_4 = (var_a2 & 0xF) << 0xE;
                                                temp_s1_29 = var_s1 + 8;
                                                temp_t3_4 = (var_s7 & 3) << 8;
                                                var_s1->unk0 = temp_v0_8 | 0xFD000000 | 0x180000;
                                                temp_t4_4 = (var_t0 & 0xF) * 0x10;
                                                temp_s1_30 = temp_s1_29 + 8;
                                                var_s1->unk4 = temp_fp;
                                                temp_t5_2 = temp_v0_8 | 0xF5000000 | 0x180000;
                                                temp_s1_29->unk4 = temp_t1_5 | 0x07000000 | temp_t2_4 | temp_t3_4 | temp_t4_4;
                                                temp_s1_29->unk0 = temp_t5_2;
                                                temp_v0_9 = temp_lo_4 - 1;
                                                temp_s1_31 = temp_s1_30 + 8;
                                                temp_s1_30->unk0 = 0xE6000000;
                                                temp_s1_30->unk4 = 0;
                                                temp_s1_31->unk0 = 0xF3000000;
                                                temp_s1_32 = temp_s1_31 + 8;
                                                if (temp_v0_9 < 0x7FF) {
                                                    var_a3_4 = temp_v0_9;
                                                } else {
                                                    var_a3_4 = 0x7FF;
                                                }
                                                temp_v1_5 = (temp_s0_8 * 4) / 8;
                                                var_a1_4 = temp_v1_5;
                                                if (temp_v1_5 <= 0) {
                                                    var_a1_4 = 1;
                                                }
                                                if (temp_v1_5 <= 0) {
                                                    var_v0_5 = 1;
                                                } else {
                                                    var_v0_5 = temp_v1_5;
                                                }
                                                temp_s1_31->unk4 = (((var_a1_4 + 0x7FF) / var_v0_5) & 0xFFF) | 0x07000000 | ((var_a3_4 & 0xFFF) << 0xC);
                                                temp_s1_32->unk0 = 0xE7000000;
                                                temp_s1_33 = temp_s1_32 + 8;
                                                temp_s1_32->unk4 = 0;
                                                temp_s1_33->unk4 = temp_t1_5 | temp_t2_4 | temp_t3_4 | temp_t4_4;
                                                temp_s1_33->unk0 = temp_t5_2 | (((((temp_s0_8 * 2) + 7) >> 3) & 0x1FF) << 9);
                                                temp_s1_34 = temp_s1_33 + 8;
                                                temp_s1_34->unk0 = 0xF2000000;
                                                temp_s1_34->unk4 = ((((temp_s0_8 - 1) * 4) & 0xFFF) << 0xC) | (((temp_s5 - 1) * 4) & 0xFFF);
                                                var_s1 = temp_s1_34 + 8;
                                                if (temp_lo_4 >= 0x200) {
                                                    goto block_146;
                                                }
                                                break;
                                        }
                                        sp348 = temp_fp;
                                    }
                                    temp_a3 = spAC + &D_800D6AB8;
                                    temp_v0_10 = *temp_a3;
                                    if (temp_v0_10 != NULL) {
                                        var_v1 = ((temp_v0_10->unk0 * var_s2->unk4C) >> 0x10) & 0xFFFF;
                                        var_a0 = ((temp_v0_10->unk2 * var_s2->unk4D) >> 0x10) & 0xFFFF;
                                        var_a1_5 = ((temp_v0_10->unk4 * var_s2->unk4E) >> 0x10) & 0xFFFF;
                                        if (var_v1 >= 0x100) {
                                            var_v1 = 0xFF;
                                        }
                                        if (var_a0 >= 0x100) {
                                            var_a0 = 0xFF;
                                        }
                                        if (var_a1_5 >= 0x100) {
                                            var_a1_5 = 0xFF;
                                        }
                                        var_s1->unk0 = 0xFA000000;
                                        var_s1_2 = var_s1 + 8;
                                        var_s1->unk4 = (var_v1 << 0x18) | ((var_a0 & 0xFF) << 0x10) | ((var_a1_5 & 0xFF) << 8) | var_s2->unk4F;
                                    } else {
                                        var_s1->unk0 = 0xFA000000;
                                        var_s1_2 = var_s1 + 8;
                                        var_s1->unk4 = (var_s2->unk4C << 0x18) | (var_s2->unk4D << 0x10) | (var_s2->unk4E << 8) | var_s2->unk4F;
                                    }
                                    temp_a2_2 = var_s2->unk6;
                                    if (temp_a2_2 & 0x80) {
                                        temp_v0_11 = *temp_a3;
                                        if (temp_v0_11 != NULL) {
                                            temp_v0_12 = var_s1_2;
                                            var_v1_2 = (temp_v0_11->unk0 * var_s2->unk54) >> 0x10;
                                            var_a0_2 = (temp_v0_11->unk2 * var_s2->unk55) >> 0x10;
                                            var_a1_6 = (temp_v0_11->unk4 * var_s2->unk56) >> 0x10;
                                            if (var_v1_2 >= 0x100) {
                                                var_v1_2 = 0xFF;
                                            }
                                            if (var_a0_2 >= 0x100) {
                                                var_a0_2 = 0xFF;
                                            }
                                            if (var_a1_6 >= 0x100) {
                                                var_a1_6 = 0xFF;
                                            }
                                            temp_v0_12->unk0 = 0xFB000000;
                                            var_s1_2 += 8;
                                            temp_v0_12->unk4 = (var_v1_2 << 0x18) | ((var_a0_2 & 0xFF) << 0x10) | ((var_a1_6 & 0xFF) << 8) | var_s2->unk57;
                                        } else {
                                            temp_v0_13 = var_s1_2;
                                            temp_v0_13->unk0 = 0xFB000000;
                                            var_s1_2 += 8;
                                            temp_v0_13->unk4 = (var_s2->unk54 << 0x18) | (var_s2->unk55 << 0x10) | (var_s2->unk56 << 8) | var_s2->unk57;
                                        }
                                        var_s1_2->unk0 = 0xFC30B261;
                                        var_s1_2->unk4 = 0x5566DB6D;
                                    } else if (temp_a2_2 & 0x100) {
                                        var_s1_2->unk0 = 0xFC7096E1;
                                        var_s1_2->unk4 = 0xFF2FFFFF;
                                    } else {
                                        var_s1_2->unk0 = 0xFC119623;
                                        var_s1_2->unk4 = 0xFF2FFFFF;
                                    }
                                    var_s1_3 = var_s1_2 + 8;
                                    temp_a2_3 = var_s2->unk6;
                                    temp_f6_2 = var_f18;
                                    if (temp_a2_3 & 0x400) {
                                        var_a0_3 = 3;
                                    } else {
                                        var_a0_3 = 1;
                                        if (temp_a2_3 & 0x200) {
                                            var_v1_3 = var_s2->unk57;
                                        } else {
                                            var_v1_3 = 8;
                                        }
                                        if (sp33C != var_v1_3) {
                                            var_s1_3->unk0 = 0xF9000000;
                                            var_s1_3->unk4 = var_v1_3 & 0xFF;
                                            var_s1_3 += 8;
                                            sp33C = var_v1_3;
                                        }
                                    }
                                    if (sp340 != var_a0_3) {
                                        var_s1_3->unk0 = 0xE2001E01;
                                        var_s1_3->unk4 = var_a0_3;
                                        var_s1_3 += 8;
                                        sp340 = var_a0_3;
                                    }
                                    var_s1_3->unk0 = 0xEE000000;
                                    temp_s1_35 = var_s1_3 + 8;
                                    var_s1_3->unk4 = (((temp_f22_3 * sp230) + sp22C) * 32.0f) << 0x10;
                                    temp_s1_36 = temp_s1_35 + 8;
                                    if (temp_f6_2 > 0) {
                                        var_a1_7 = temp_f6_2;
                                    } else {
                                        var_a1_7 = 0;
                                    }
                                    temp_f8 = var_f20;
                                    temp_s1_37 = temp_s1_36 + 8;
                                    temp_f10 = var_f28;
                                    temp_f4_2 = var_f26;
                                    if (temp_f8 > 0) {
                                        var_v0_6 = temp_f8;
                                    } else {
                                        var_v0_6 = 0;
                                    }
                                    temp_s1_35->unk0 = (var_v0_6 & 0xFFF) | 0xE4000000 | ((var_a1_7 & 0xFFF) << 0xC);
                                    if (temp_f4_2 > 0) {
                                        var_a1_8 = temp_f4_2;
                                    } else {
                                        var_a1_8 = 0;
                                    }
                                    if (temp_f10 > 0) {
                                        var_v0_7 = temp_f10;
                                    } else {
                                        var_v0_7 = 0;
                                    }
                                    temp_s1_35->unk4 = (var_v0_7 & 0xFFF) | ((var_a1_8 & 0xFFF) << 0xC);
                                    temp_s1_36->unk0 = 0xE1000000;
                                    if (temp_f4_2 < 0) {
                                        if (unksp22A < 0) {
                                            temp_v0_14 = (temp_f4_2 * unksp22A) >> 7;
                                            if (temp_v0_14 > 0) {
                                                var_a0_4 = temp_v0_14;
                                            } else {
                                                var_a0_4 = 0;
                                            }
                                        } else {
                                            var_v1_4 = 0;
                                            temp_v0_15 = (temp_f4_2 * unksp22A) >> 7;
                                            if (temp_v0_15 < 0) {
                                                var_v1_4 = temp_v0_15;
                                            }
                                            var_a0_4 = var_v1_4;
                                        }
                                    } else {
                                        var_a0_4 = 0;
                                    }
                                    if (temp_f10 < 0) {
                                        if (unksp226 < 0) {
                                            var_v0_8 = (temp_f10 * unksp226) >> 7;
                                            if (var_v0_8 > 0) {

                                            } else {
                                                var_v0_8 = 0;
                                            }
                                        } else {
                                            var_v1_5 = 0;
                                            temp_v0_16 = (temp_f10 * unksp226) >> 7;
                                            if (temp_v0_16 < 0) {
                                                var_v1_5 = temp_v0_16;
                                            }
                                            var_v0_8 = var_v1_5;
                                        }
                                    } else {
                                        var_v0_8 = 0;
                                    }
                                    temp_s1_36->unk4 = (-var_v0_8 & 0xFFFF) | (var_a0_4 * -0x10000);
                                    temp_s1_37->unk0 = 0xF1000000;
                                    var_s1 = temp_s1_37 + 8;
                                    temp_s1_37->unk4 = (sp228 << 0x10) | (sp224 & 0xFFFF);
                                }
                            }
                        }
                    }
                    var_s2 = var_s2->unk0;
                } while (var_s2 != NULL);
            }
        }
        temp_t7 = sp20C + 1;
        sp20C = temp_t7;
    } while (temp_t7 != 0x10);
    if (sp338 != 0) {
        var_s1->unk0 = 0xE3001001;
        var_s1->unk4 = 0;
        var_s1 += 8;
    }
    temp_s1_38 = var_s1 + 8;
    var_s1->unk4 = 0x80000;
    var_s1->unk0 = 0xE3000C00;
    temp_s1_39 = temp_s1_38 + 8;
    temp_s1_38->unk0 = 0xE2001D00;
    temp_s1_38->unk4 = 0;
    temp_s1_39->unk0 = 0xE2001E01;
    temp_s1_39->unk4 = 0;
    *arg2 = temp_s1_39 + 8;
}
#elif defined(PORT)
/* PORT: hand-port of the ROM's 2D particle renderer (the m2c sketch above is
 * the semantic reference; asm/nonmatchings/ovl1/ovl1/func_8009E8F4.s is the
 * ground truth). For every live particle in the D_800D69C8 lists whose bank
 * bit is set in the GObj's dlLinkBitMask, this projects the particle position
 * through the camera (or through its emitter's cached matrix), culls against
 * NDC, loads the frame's texture -- and CI palette -- out of the banks
 * relocated by the PORT func_8009B768 (header fields and data[] slots are
 * already native there; data[] holds host addresses as u32), and emits a raw
 * RDP TEXRECT with prim-color / combiner / render-mode state tracking.
 * Behavioural port, not codegen-matching. */

void guOrthoF(f32 mf[4][4], f32 l, f32 r, f32 b, f32 t, f32 n, f32 f, f32 scale);
void guLookAtF(f32 mf[4][4], f32 xEye, f32 yEye, f32 zEye, f32 xAt, f32 yAt, f32 zAt,
               f32 xUp, f32 yUp, f32 zUp);
void guLookAtF_2(f32 mf[4][4], f32 xEye, f32 yEye, f32 zEye, f32 xAt, f32 yAt, f32 zAt,
                 f32 roll, f32 xUp, f32 yUp, f32 zUp);
void guMtxCatF(f32 m[4][4], f32 n[4][4], f32 res[4][4]);
void HS64_PerspectiveF(f32 mf[4][4], u16 *perspNorm, f32 fovy, f32 aspect, f32 n, f32 f,
                       f32 scale);
void func_8001B28C(f32 mf[4][4], u16 *perspNorm, f32 fovy, f32 aspect, f32 n, f32 f,
                   f32 scale);
void func_8001C2E4(f32 m[4][4], Vector translate, Vector rotate, Vector scale);

/* Per-bank prim/env color modulation table. On the PC bss it is a native
 * pointer array (8 slots); a NULL slot means "no modulation". */
extern void *D_800D6AB8[];

/* UnkEmitter (top of this file) hides its two matrices and the two cached
 * axis norms behind pad2C[0x88]. This mirror names those fields; it is
 * layout-identical to UnkEmitter under LP64 (checked right below). N64
 * offsets in comments. */
typedef struct PortXfEmitter {
    struct UnkEmitter *next;
    f32 tx, ty, tz;       /* 0x04 translate */
    f32 rx, ry, rz;       /* 0x10 rotate */
    f32 sclX, sclY, sclZ; /* 0x1C scale */
    u8 mtxState;          /* 0x28: !=2 rebuild each frame; 1 -> build once then 2 */
    u8 frameStamp;        /* 0x29 compared against D_800BE3EC */
    u16 refCount;         /* 0x2A */
    f32 mtx[4][4];        /* 0x2C local transform */
    f32 mtx2[4][4];       /* 0x6C local * (view*proj) */
    f32 normX;            /* 0xAC column-0 norm of mtx2 */
    f32 normY;            /* 0xB0 column-1 norm of mtx2 */
    void (*unkB4)();      /* 0xB4 */
    u16 unkB8;            /* 0xB8 */
    u8 billboard;         /* 0xBA */
} PortXfEmitter;
typedef char port_xf_emitter_size_check[(sizeof(PortXfEmitter) == sizeof(UnkEmitter)) ? 1 : -1];
typedef char port_xf_emitter_tail_check[
    (__builtin_offsetof(PortXfEmitter, unkB4) == __builtin_offsetof(UnkEmitter, unkB4)) ? 1 : -1];

/* Shape of the D_800D6AB8 entries: three u16 color multipliers (16.16-ish,
 * 0x10000 = 1.0 after the >>16). */
typedef struct PortColorMod {
    u16 r, g, b;
} PortColorMod;

/* The ROM's power-of-two mask tables (jtbl_800D58B4/jtbl_800D5930): only
 * exact powers of two in [2,256] get a mask, everything else gets 0. */
static s32 port_dim_mask(s32 d) {
    switch (d) {
        case 0x002: return 1;
        case 0x004: return 2;
        case 0x008: return 3;
        case 0x010: return 4;
        case 0x020: return 5;
        case 0x040: return 6;
        case 0x080: return 7;
        case 0x100: return 8;
        default:    return 0;
    }
}

void func_8009E8F4(void *arg0, s32 arg1, void **arg2) {
    GObj *gobj = arg0;
    Camera *cam = omCurrentCamera->data.cam;
    Gfx *g = (Gfx *) *arg2;
    f32 projF[4][4]; /* sp278: projection (or screen-inverse copy) */
    f32 viewF[4][4]; /* sp2F8: view */
    f32 vpF[4][4];   /* sp2B8: view * proj (or screen-inverse) */
    f32 vsX, vsY, vsZ, vtX, vtY, vtZ;
    f32 colNormX, colNormY; /* sp250 / sp24C */
    s32 lastRenderMode = -1; /* sp340 */
    s32 lastBlendAlpha = -1; /* sp33C */
    s32 lastTlutMode = -1;   /* sp338 */
    u32 lastImg = 0;         /* sp348 */
    u32 lastPal = 0;         /* sp344 */
    s32 i;

    /* The N64 leaves whichever of proj/view no camera matrix writes as stack
     * garbage; identity is the safe host equivalent. */
    guMtxIdentF(projF);
    guMtxIdentF(viewF);

    for (i = 0; i < (s32) cam->mtxCount; i++) {
        switch (cam->matrices[i]->kind) {
            case 3:
                HS64_PerspectiveF(projF, NULL, cam->perspMtx.persp.fovy,
                                  cam->perspMtx.persp.aspect, cam->perspMtx.persp.near,
                                  cam->perspMtx.persp.far, cam->perspMtx.persp.scale);
                break;
            case 4:
                func_8001B28C(projF, NULL, cam->perspMtx.persp.fovy,
                              cam->perspMtx.persp.aspect, cam->perspMtx.persp.near,
                              cam->perspMtx.persp.far, cam->perspMtx.persp.scale);
                break;
            case 5:
                guOrthoF(projF, cam->perspMtx.ortho.left, cam->perspMtx.ortho.right,
                         cam->perspMtx.ortho.bottom, cam->perspMtx.ortho.top,
                         cam->perspMtx.ortho.near, cam->perspMtx.ortho.far,
                         cam->perspMtx.ortho.scale);
                break;
            case 6:
            case 7:
            case 12:
            case 13:
                guLookAtF(viewF, cam->viewMtx.lookAt.eye.x, cam->viewMtx.lookAt.eye.y,
                          cam->viewMtx.lookAt.eye.z, cam->viewMtx.lookAt.at.x,
                          cam->viewMtx.lookAt.at.y, cam->viewMtx.lookAt.at.z,
                          cam->viewMtx.lookAt.up.x, cam->viewMtx.lookAt.up.y,
                          cam->viewMtx.lookAt.up.z);
                break;
            case 8:
            case 9:
            case 14:
            case 15:
                guLookAtF_2(viewF, cam->viewMtx.lookAtRoll.xEye, cam->viewMtx.lookAtRoll.yEye,
                            cam->viewMtx.lookAtRoll.zEye, cam->viewMtx.lookAtRoll.xAt,
                            cam->viewMtx.lookAtRoll.yAt, cam->viewMtx.lookAtRoll.zAt,
                            cam->viewMtx.lookAtRoll.roll, 0.0f, 1.0f, 0.0f);
                break;
            case 10:
            case 11:
            case 16:
            case 17:
                guLookAtF_2(viewF, cam->viewMtx.lookAtRoll.xEye, cam->viewMtx.lookAtRoll.yEye,
                            cam->viewMtx.lookAtRoll.zEye, cam->viewMtx.lookAtRoll.xAt,
                            cam->viewMtx.lookAtRoll.yAt, cam->viewMtx.lookAtRoll.zAt,
                            cam->viewMtx.lookAtRoll.roll, 0.0f, 0.0f, 1.0f);
                break;
            default:
                HS64_PerspectiveF(projF, NULL, cam->perspMtx.persp.fovy,
                                  cam->perspMtx.persp.aspect, cam->perspMtx.persp.near,
                                  cam->perspMtx.persp.far, cam->perspMtx.persp.scale);
                guLookAtF(viewF, cam->viewMtx.lookAt.eye.x, cam->viewMtx.lookAt.eye.y,
                          cam->viewMtx.lookAt.eye.z, cam->viewMtx.lookAt.at.x,
                          cam->viewMtx.lookAt.at.y, cam->viewMtx.lookAt.at.z,
                          cam->viewMtx.lookAt.up.x, cam->viewMtx.lookAt.up.y,
                          cam->viewMtx.lookAt.up.z);
                break;
        }
    }

    vsX = cam->viewport.vp.vscale[0];
    vsY = -cam->viewport.vp.vscale[1];
    vsZ = cam->viewport.vp.vscale[2];
    vtX = cam->viewport.vp.vtrans[0];
    vtY = cam->viewport.vp.vtrans[1];
    vtZ = cam->viewport.vp.vtrans[2];

    if (cam->mtxCount != 0) {
        guMtxCatF(viewF, projF, vpF);
    } else {
        s32 r, c;

        /* No camera matrices: build the inverse of the viewport mapping so
         * "world" coordinates are effectively screen coordinates. */
        guMtxIdentF(vpF);
        vpF[0][0] = 1.0f / vsX;
        vpF[1][1] = 1.0f / vsY;
        vpF[2][2] = -1.0f / vsZ;
        vpF[3][0] = -vtX / vsX;
        vpF[3][1] = -vtY / vsY;
        vpF[3][2] = vtZ / vsZ;
        for (r = 0; r < 4; r++) {
            for (c = 0; c < 4; c++) {
                projF[r][c] = vpF[r][c];
            }
        }
    }

    colNormX = sqrtf(vpF[0][0] * vpF[0][0] + vpF[1][0] * vpF[1][0] + vpF[2][0] * vpF[2][0]);
    colNormY = sqrtf(vpF[0][1] * vpF[0][1] + vpF[1][1] * vpF[1][1] + vpF[2][1] * vpF[2][1]);

    /* Header: pipe sync, point sampling, RDP state defaults. */
    g->words.w0 = 0xE7000000; g->words.w1 = 0; g++;
    g->words.w0 = 0xE3000C00; g->words.w1 = 0; g++;
    g->words.w0 = 0xE2001D00; g->words.w1 = 4; g++;
    g->words.w0 = 0xE3001801; g->words.w1 = (u8) D_800BE3E0; g++;
    g->words.w0 = 0xE3001A01; g->words.w1 = (u8) D_800BE3E4; g++;

    D_800BE3EC += 1;

    for (i = 0; i < 16; i++) {
        UnkParticle *p;

        if (!(gobj->dlLinkBitMask & (1u << i))) {
            continue;
        }
        for (p = D_800D69C8[i]; p != NULL; p = p->next) {
            u32 flags;
            f32 px, py, pz;
            f32 normX, normY;
            f32 cx, cy, cz, cw;
            f32 invW, sprScale;
            f32 scX, seX, scY, seY;
            f32 xlF, xrF, ytF, ybF, zScr;
            PortXfEmitter *em;
            UnkTexture *tex;
            s32 fmt, siz, tw, th;
            u32 img, pal;
            s32 dsdx, dtdy;
            s32 cmS, maskS, cmT, maskT;

            flags = p->unk6;
            if (flags & 8) {
                if (!(arg1 & 1)) {
                    continue;
                }
            } else if (!(arg1 & 2)) {
                continue;
            }
            if (p->unk44 == 0.0f) {
                continue;
            }

            px = p->unk24;
            py = p->unk28;
            pz = p->unk2C;
            em = (PortXfEmitter *) p->unk60;

            if (em != NULL) {
                if (D_800BE3EC != em->frameStamp) {
                    if (em->mtxState != 2) {
                        Vector tv, rv, sv;

                        tv.x = em->tx; tv.y = em->ty; tv.z = em->tz;
                        rv.x = em->rx; rv.y = em->ry; rv.z = em->rz;
                        sv.x = em->sclX; sv.y = em->sclY; sv.z = em->sclZ;
                        func_8001C2E4(em->mtx, tv, rv, sv);
                    }
                    if (em->mtxState == 1) {
                        em->mtxState = 2;
                    }
                    guMtxCatF(em->mtx, vpF, em->mtx2);
                    em->normX = sqrtf(em->mtx2[0][0] * em->mtx2[0][0] +
                                      em->mtx2[1][0] * em->mtx2[1][0] +
                                      em->mtx2[2][0] * em->mtx2[2][0]);
                    em->normY = sqrtf(em->mtx2[0][1] * em->mtx2[0][1] +
                                      em->mtx2[1][1] * em->mtx2[1][1] +
                                      em->mtx2[2][1] * em->mtx2[2][1]);
                    if (em->billboard != 0) {
                        f32 lsx = sqrtf(em->mtx[0][0] * em->mtx[0][0] +
                                        em->mtx[1][0] * em->mtx[1][0] +
                                        em->mtx[2][0] * em->mtx[2][0]);
                        f32 lsy = sqrtf(em->mtx[0][1] * em->mtx[0][1] +
                                        em->mtx[1][1] * em->mtx[1][1] +
                                        em->mtx[2][1] * em->mtx[2][1]);
                        f32 lsz = sqrtf(em->mtx[0][2] * em->mtx[0][2] +
                                        em->mtx[1][2] * em->mtx[1][2] +
                                        em->mtx[2][2] * em->mtx[2][2]);

                        em->mtx2[0][0] = projF[0][0] * lsx;
                        em->mtx2[0][1] = 0.0f;
                        em->mtx2[0][2] = 0.0f;
                        em->mtx2[0][3] = 0.0f;
                        em->mtx2[1][0] = 0.0f;
                        em->mtx2[1][1] = projF[1][1] * lsy;
                        em->mtx2[1][2] = 0.0f;
                        em->mtx2[1][3] = 0.0f;
                        em->mtx2[2][0] = 0.0f;
                        em->mtx2[2][1] = 0.0f;
                        em->mtx2[2][2] = projF[2][2] * lsz;
                        em->mtx2[2][3] = projF[2][3] * lsz;
                    }
                    em->frameStamp = D_800BE3EC;
                }
                normX = em->normX;
                normY = em->normY;
                cx = em->mtx2[3][0] + (em->mtx2[0][0] * px + em->mtx2[1][0] * py + em->mtx2[2][0] * pz);
                cy = em->mtx2[3][1] + (em->mtx2[0][1] * px + em->mtx2[1][1] * py + em->mtx2[2][1] * pz);
                cz = em->mtx2[3][2] + (em->mtx2[0][2] * px + em->mtx2[1][2] * py + em->mtx2[2][2] * pz);
                cw = em->mtx2[3][3] + (em->mtx2[0][3] * px + em->mtx2[1][3] * py + em->mtx2[2][3] * pz);
            } else {
                normX = colNormX;
                normY = colNormY;
                cx = vpF[3][0] + (vpF[0][0] * px + vpF[1][0] * py + vpF[2][0] * pz);
                cy = vpF[3][1] + (vpF[0][1] * px + vpF[1][1] * py + vpF[2][1] * pz);
                cz = vpF[3][2] + (vpF[0][2] * px + vpF[1][2] * py + vpF[2][2] * pz);
                cw = vpF[3][3] + (vpF[0][3] * px + vpF[1][3] * py + vpF[2][3] * pz);
            }

            if (cw == 0.0f) {
                continue;
            }
            invW = 1.0f / cw;
            cx *= invW;
            cy *= invW;
            cz *= invW;
            if (cx < -1.0f || cx > 1.0f || cy < -1.0f || cy > 1.0f || cz < -1.0f || cz > 1.0f) {
                continue;
            }

            sprScale = invW * p->unk44;

            /* Screen-space extents: center, center+half-extent, mirror. */
            scX = cx * vsX + vtX;
            seX = ((sprScale * normX) + cx) * vsX + vtX;
            if (scX < seX) {
                xlF = scX - (seX - scX);
                xrF = seX;
            } else {
                xlF = seX;
                xrF = scX - (seX - scX);
            }
            scY = cy * vsY + vtY;
            seY = ((sprScale * normY) + cy) * vsY + vtY;
            if (scY < seY) {
                ytF = scY - (seY - scY);
                ybF = seY;
            } else {
                ytF = seY;
                ybF = scY - (seY - scY);
            }
            zScr = cz * vsZ + vtZ;

            /* Texture bank lookup (tables normalised by PORT func_8009B768:
             * header native, data[] slots are u32 host addresses). */
            {
                s32 bank = p->unk8 & 7;

                tex = D_800D6A98[bank][p->unkA];
                fmt = tex->fmt;
                siz = tex->siz;
                tw = tex->width;
                th = tex->height;
                img = tex->data[p->unkB];
                pal = 0;
                if (fmt == 2) {
                    u32 cnt = tex->count;

                    if (p->unkC != 0xFF) {
                        pal = tex->data[cnt + p->unkC];
                    } else if (flags & 0x10) {
                        pal = tex->data[cnt];
                    } else {
                        pal = tex->data[cnt + p->unkB];
                    }
                }

                dsdx = (s32) ((tw * 4096.0f) / (xrF - xlF));
                dtdy = (s32) ((th * 4096.0f) / (ybF - ytF));

                cmS = 2; /* G_TX_CLAMP */
                maskS = 0;
                if (flags & 0x20) {
                    dsdx *= 2;
                    cmS = 1; /* G_TX_MIRROR */
                    maskS = port_dim_mask(tw);
                }
                cmT = 2;
                maskT = 0;
                if (flags & 0x40) {
                    dtdy *= 2;
                    cmT = 1;
                    maskT = port_dim_mask(th);
                }

                /* CI: load the TLUT (tile 7, TMEM 0x100) when it changed, and
                 * make sure the RGBA16 TLUT mode is on; off otherwise. */
                if (fmt == 2) {
                    if (pal != lastPal) {
                        g->words.w0 = 0xFD100000; g->words.w1 = pal; g++;
                        g->words.w0 = 0xE8000000; g->words.w1 = 0; g++;
                        g->words.w0 = 0xF5000100; g->words.w1 = 0x07000000; g++;
                        g->words.w0 = 0xE6000000; g->words.w1 = 0; g++;
                        g->words.w0 = 0xF0000000; g->words.w1 = 0x073FC000; g++;
                        g->words.w0 = 0xE7000000; g->words.w1 = 0; g++;
                        lastPal = pal;
                    }
                    if (lastTlutMode != 1) {
                        g->words.w0 = 0xE3001001; g->words.w1 = 0x8000; g++;
                        lastTlutMode = 1;
                    }
                } else if (lastTlutMode != 0) {
                    g->words.w0 = 0xE3001001; g->words.w1 = 0; g++;
                    lastTlutMode = 0;
                }

                /* Texture load via LOADBLOCK through tile 7, render tile 0. */
                if (img != lastImg) {
                    if (siz >= 0 && siz <= 3) {
                        u32 fmtBits = ((u32) fmt & 7) << 21;
                        u32 tileBits = ((u32) (cmT & 3) << 18) | ((u32) (maskT & 0xF) << 14) |
                                       ((u32) (cmS & 3) << 8) | ((u32) (maskS & 0xF) << 4);
                        s32 texels = tw * th;
                        u32 ldSiz, rdSiz;
                        s32 lrs, wpr, line, evictThresh;

                        switch (siz) {
                            case 0: /* 4b, loaded as 16b */
                                ldSiz = 0x100000;
                                rdSiz = 0;
                                lrs = ((texels + 3) >> 2) - 1;
                                wpr = tw / 16;
                                line = ((tw >> 1) + 7) >> 3;
                                evictThresh = 0x1000;
                                break;
                            case 1: /* 8b, loaded as 16b */
                                ldSiz = 0x100000;
                                rdSiz = 0x80000;
                                lrs = ((texels + 1) >> 1) - 1;
                                wpr = tw / 8;
                                line = (tw + 7) >> 3;
                                evictThresh = 0x800;
                                break;
                            case 2: /* 16b */
                                ldSiz = 0x100000;
                                rdSiz = 0x100000;
                                lrs = texels - 1;
                                wpr = (tw * 2) / 8;
                                line = ((tw * 2) + 7) >> 3;
                                evictThresh = 0x400;
                                break;
                            default: /* 3: 32b */
                                ldSiz = 0x180000;
                                rdSiz = 0x180000;
                                lrs = texels - 1;
                                wpr = (tw * 4) / 8;
                                line = ((tw * 2) + 7) >> 3;
                                evictThresh = 0x200;
                                break;
                        }
                        if (lrs >= 0x7FF) {
                            lrs = 0x7FF;
                        }
                        if (wpr <= 0) {
                            wpr = 1;
                        }

                        g->words.w0 = 0xFD000000 | fmtBits | ldSiz;
                        g->words.w1 = img;
                        g++;
                        g->words.w0 = 0xF5000000 | fmtBits | ldSiz;
                        g->words.w1 = 0x07000000 | tileBits;
                        g++;
                        g->words.w0 = 0xE6000000; g->words.w1 = 0; g++;
                        g->words.w0 = 0xF3000000;
                        g->words.w1 = 0x07000000 | ((u32) (lrs & 0xFFF) << 12) |
                                      ((u32) ((wpr + 0x7FF) / wpr) & 0xFFF);
                        g++;
                        g->words.w0 = 0xE7000000; g->words.w1 = 0; g++;
                        g->words.w0 = 0xF5000000 | fmtBits | rdSiz | ((u32) (line & 0x1FF) << 9);
                        g->words.w1 = tileBits;
                        g++;
                        g->words.w0 = 0xF2000000;
                        g->words.w1 = ((u32) (((tw - 1) * 4) & 0xFFF) << 12) |
                                      (u32) (((th - 1) * 4) & 0xFFF);
                        g++;

                        /* Big loads spill into the TLUT half of TMEM. */
                        if (texels >= evictThresh) {
                            lastPal = 0;
                        }
                    }
                    lastImg = img;
                }

                /* Prim color, optionally modulated per bank. */
                {
                    PortColorMod *cm = (PortColorMod *) D_800D6AB8[bank];

                    if (cm != NULL) {
                        s32 cr = (cm->r * p->unk4C) >> 16;
                        s32 cg = (cm->g * p->unk4D) >> 16;
                        s32 cb = (cm->b * p->unk4E) >> 16;

                        if (cr >= 0x100) cr = 0xFF;
                        if (cg >= 0x100) cg = 0xFF;
                        if (cb >= 0x100) cb = 0xFF;
                        g->words.w0 = 0xFA000000;
                        g->words.w1 = ((u32) cr << 24) | ((u32) (cg & 0xFF) << 16) |
                                      ((u32) (cb & 0xFF) << 8) | p->unk4F;
                        g++;
                    } else {
                        g->words.w0 = 0xFA000000;
                        g->words.w1 = ((u32) p->unk4C << 24) | ((u32) p->unk4D << 16) |
                                      ((u32) p->unk4E << 8) | p->unk4F;
                        g++;
                    }

                    /* Env color + combiner. */
                    if (flags & 0x80) {
                        if (cm != NULL) {
                            s32 er = (cm->r * p->unk54) >> 16;
                            s32 eg = (cm->g * p->unk55) >> 16;
                            s32 eb = (cm->b * p->unk56) >> 16;

                            if (er >= 0x100) er = 0xFF;
                            if (eg >= 0x100) eg = 0xFF;
                            if (eb >= 0x100) eb = 0xFF;
                            g->words.w0 = 0xFB000000;
                            g->words.w1 = ((u32) er << 24) | ((u32) (eg & 0xFF) << 16) |
                                          ((u32) (eb & 0xFF) << 8) | p->unk57;
                            g++;
                        } else {
                            g->words.w0 = 0xFB000000;
                            g->words.w1 = ((u32) p->unk54 << 24) | ((u32) p->unk55 << 16) |
                                          ((u32) p->unk56 << 8) | p->unk57;
                            g++;
                        }
                        g->words.w0 = 0xFC30B261; g->words.w1 = 0x5566DB6D; g++;
                    } else if (flags & 0x100) {
                        g->words.w0 = 0xFC7096E1; g->words.w1 = 0xFF2FFFFF; g++;
                    } else {
                        g->words.w0 = 0xFC119623; g->words.w1 = 0xFF2FFFFF; g++;
                    }
                }

                /* Blend color / render mode selector. */
                {
                    s32 mode;

                    if (flags & 0x400) {
                        mode = 3;
                    } else {
                        s32 bl = (flags & 0x200) ? p->unk57 : 8;

                        mode = 1;
                        if (lastBlendAlpha != bl) {
                            g->words.w0 = 0xF9000000;
                            g->words.w1 = (u32) bl & 0xFF;
                            g++;
                            lastBlendAlpha = bl;
                        }
                    }
                    if (lastRenderMode != mode) {
                        g->words.w0 = 0xE2001E01;
                        g->words.w1 = (u32) mode;
                        g++;
                        lastRenderMode = mode;
                    }
                }

                /* Prim depth + the 128-bit TEXRECT (E4 / E1 / F1). */
                {
                    s32 xrRaw = (s32) xrF;
                    s32 ybRaw = (s32) ybF;
                    s32 xlRaw = (s32) xlF;
                    s32 ytRaw = (s32) ytF;
                    s16 xrI = (s16) xrRaw;
                    s16 ybI = (s16) ybRaw;
                    s16 xlI = (s16) xlRaw;
                    s16 ytI = (s16) ytRaw;
                    s32 xrC = (xrI > 0) ? xrI : 0;
                    s32 ybC = (ybI > 0) ? ybI : 0;
                    s32 xlC = (xlI > 0) ? xlI : 0;
                    s32 ytC = (ytI > 0) ? ytI : 0;
                    s32 sOfs = 0;
                    s32 tOfs = 0;

                    g->words.w0 = 0xEE000000;
                    g->words.w1 = (u32) (s32) (zScr * 32.0f) << 16;
                    g++;

                    /* Off-screen-left/top: advance S/T into the image. */
                    if (xlI < 0) {
                        s16 d = (s16) dsdx;
                        s32 v = (xlI * d) >> 7;

                        if (d < 0) {
                            sOfs = (v > 0) ? v : 0;
                        } else {
                            sOfs = (v < 0) ? v : 0;
                        }
                    }
                    if (ytRaw < 0) {
                        s16 d = (s16) dtdy;
                        s32 v = (ytI * d) >> 7;

                        if (d < 0) {
                            tOfs = (v > 0) ? v : 0;
                        } else {
                            tOfs = (v < 0) ? v : 0;
                        }
                    }

                    g->words.w0 = 0xE4000000 | ((u32) (xrC & 0xFFF) << 12) | (u32) (ybC & 0xFFF);
                    g->words.w1 = ((u32) (xlC & 0xFFF) << 12) | (u32) (ytC & 0xFFF);
                    g++;
                    g->words.w0 = 0xE1000000;
                    g->words.w1 = ((u32) (-sOfs) << 16) | ((u32) (-tOfs) & 0xFFFF);
                    g++;
                    g->words.w0 = 0xF1000000;
                    g->words.w1 = ((u32) dsdx << 16) | ((u32) dtdy & 0xFFFF);
                    g++;
                }
            }
        }
    }

    /* Footer: TLUT off, restore filter/state. */
    if (lastTlutMode != 0) {
        g->words.w0 = 0xE3001001; g->words.w1 = 0; g++;
    }
    g->words.w0 = 0xE3000C00; g->words.w1 = 0x80000; g++;
    g->words.w0 = 0xE2001D00; g->words.w1 = 0; g++;
    g->words.w0 = 0xE2001E01; g->words.w1 = 0; g++;

    *arg2 = g;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009E8F4.s")
#endif

void func_800A043C(void *arg0, u32 flag) {
    func_8009E8F4(arg0, flag, &gDisplayListHeads[0]);
}

void func_800A0460(void *arg0) {
    func_800A043C(arg0, 0x00000003);
}

void func_800A0480(s32 arg0, u32 arg1) {
    if (arg0 > 0) {
        if (arg0 < 9) {
            D_800D6A14[arg0] = arg1;
        }
    }
}

void func_800A04A4(u32 arg0, u32 arg1) {
    D_800BE3E0 = arg0;
    D_800BE3E4 = arg1;
}

struct Ovl1ParticleNode;
extern UnkParticle *D_800D6A08;
extern struct Ovl1ParticleNode *D_800D6A0C;
void func_800A09AC(void *);

GObj *func_800A04B8(s32 arg0) {
    UnkParticle *p;
    s32 i;

    D_800D6A08 = (UnkParticle *) (D_800D6A0C = NULL);
    for (i = arg0 - 1; i >= 0; i--) {
        p = gtlMalloc(0x78, 4);
        if (p == NULL) {
            return NULL;
        }
        p->next = D_800D6A08;
        D_800D6A08 = p;
    }
    D_800D6AE2 = 0;
    D_800D6AE8 = 0;
    return HS64_omMakeGObj(-7, func_800A09AC, 0, 0x80000000);
}









#ifdef MIPS_TO_C

void func_800A0558(void *arg0, void *arg1, void *arg2) {
    f32 spE0;
    f32 spDC;
    f32 spD8;
    f32 spD0;
    f32 spCC;
    f32 spC8;
    f32 sp6C;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f0_6;
    f32 temp_f20;
    f32 temp_f22;
    s32 var_a0;
    u8 *temp_v0;
    u8 *var_a1;
    u8 temp_v0_2;
    void *var_s0;
    void *var_s1;
    void *var_s3;
    void *var_t0;
    void *var_v1;

    var_s3 = arg2;
    guMtxIdentF(&spB8[0]);
    do {
        temp_f0 = var_s3->unk40;
        if ((temp_f0 != 1.0f) || (var_s3->unk44 != 1.0f) || (var_s3->unk48 != 1.0f)) {
            HS64_MkScaleMtxF(&sp78[0], temp_f0, var_s3->unk44, var_s3->unk48);
            guMtxCatF(&spB8[0], &sp78[0], &spB8[0]);
        }
        temp_f0_2 = var_s3->unk30;
        if ((temp_f0_2 != 0.0f) || (var_s3->unk34 != 0.0f) || (var_s3->unk38 != 0.0f)) {
            HS64_MkRotationMtxF(&sp78[0], temp_f0_2, var_s3->unk34, var_s3->unk38);
            guMtxCatF(&spB8[0], &sp78[0], &spB8[0]);
        }
        temp_f0_3 = var_s3->unk1C;
        if ((temp_f0_3 != 0.0f) || (var_s3->unk20 != 0.0f) || (var_s3->unk24 != 0.0f)) {
            HS64_MkTranslateMtxF(&sp78[0], temp_f0_3, var_s3->unk20, var_s3->unk24);
            guMtxCatF(&spB8[0], &sp78[0], &spB8[0]);
        }
        temp_v0 = var_s3->unk4C;
        var_s1 = NULL;
        var_s0 = NULL;
        var_t0 = NULL;
        if (temp_v0 != NULL) {
            var_v1 = temp_v0 + 4;
            var_a0 = 0;
            var_a1 = temp_v0;
            do {
                temp_v0_2 = *var_a1;
                var_a0 += 1;
                switch (temp_v0_2) {                /* irregular */
                    case 0:
                        break;
                    case 1:
                        var_s1 = var_v1;
block_23:
                        var_v1 += 0x10;
                        break;
                    case 2:
                        var_s0 = var_v1;
                        var_v1 += 0x14;
                        break;
                    case 3:
                        var_t0 = var_v1;
                        goto block_23;
                }
                var_a1 += 1;
            } while (var_a0 != 3);
            if ((var_t0 != NULL) && ((temp_f0_4 = var_t0->unk4, (temp_f0_4 != 1.0f)) || (var_t0->unk8 != 1.0f) || (var_t0->unkC != 1.0f))) {
                HS64_MkScaleMtxF(&sp78[0], temp_f0_4, var_t0->unk8, var_t0->unkC);
                guMtxCatF(&spB8[0], &sp78[0], &spB8[0]);
            }
            if ((var_s0 != NULL) && ((temp_f0_5 = var_s0->unk8, (temp_f0_5 != 0.0f)) || (var_s0->unkC != 0.0f) || (var_s0->unk10 != 0.0f))) {
                HS64_MkRotationMtxF(&sp78[0], temp_f0_5, var_s0->unkC, var_s0->unk10);
                guMtxCatF(&spB8[0], &sp78[0], &spB8[0]);
            }
            if ((var_s1 != NULL) && ((temp_f0_6 = var_s1->unk4, (temp_f0_6 != 0.0f)) || (var_s1->unk8 != 0.0f) || (var_s1->unkC != 0.0f))) {
                HS64_MkTranslateMtxF(&sp78[0], temp_f0_6, var_s1->unk8, var_s1->unkC);
                guMtxCatF(&spB8[0], &sp78[0], &spB8[0]);
            }
        }
        var_s3 = var_s3->unk14;
    } while (var_s3 != 1);
    arg0->unk0 = spE8;
    arg0->unk4 = spEC;
    arg0->unk8 = spF0;
    temp_f22 = arg1->unk4;
    temp_f20 = arg1->unk0;
    sp6C = arg1->unk8;
    guNormalize(&spB8[0], &spC8, &spD8);
    guNormalize(&spB8[1], &spCC, &spDC);
    guNormalize(&spB8[2], &spD0, &spE0);
    arg1->unk0 = (spD8 * sp6C) + ((spB8[0] * temp_f20) + (spC8 * temp_f22));
    arg1->unk4 = (spDC * sp6C) + ((spB8[1] * temp_f20) + (spCC * temp_f22));
    arg1->unk8 = (spE0 * sp6C) + ((spB8[2] * temp_f20) + (spD0 * temp_f22));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A0558.s")
#endif

#ifdef MIPS_TO_C

void func_800A09AC(void *arg0) {
    ? *sp140;
    f32 sp130;
    f32 sp12C;
    f32 sp128;
    f32 sp124;
    f32 sp110;
    f32 sp10C;
    f32 sp104;
    f32 sp100;
    f32 spFC;
    f32 spF8;
    f32 spF4;
    f32 spF0;
    f32 spE4;
    f32 spD0;
    f32 spC0;
    f32 spBC;
    f32 spA8;
    f32 spA0;
    f32 sp9C;
    f32 sp98;
    ? *temp_v0_4;
    ? *var_s0;
    f32 temp_f0;
    f32 temp_f0_10;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f0_6;
    f32 temp_f0_7;
    f32 temp_f0_8;
    f32 temp_f0_9;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f32 temp_f12_4;
    f32 temp_f14;
    f32 temp_f20;
    f32 temp_f20_2;
    f32 temp_f20_3;
    f32 temp_f22;
    f32 temp_f22_2;
    f32 temp_f22_3;
    f32 temp_f22_4;
    f32 temp_f22_5;
    f32 temp_f22_6;
    f32 temp_f22_7;
    f32 temp_f24;
    f32 temp_f24_2;
    f32 temp_f24_3;
    f32 temp_f24_4;
    f32 temp_f24_5;
    f32 temp_f24_6;
    f32 temp_f26;
    f32 temp_f26_2;
    f32 temp_f26_3;
    f32 temp_f28;
    f32 temp_f2;
    f32 temp_f2_10;
    f32 temp_f2_11;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f2_4;
    f32 temp_f2_5;
    f32 temp_f2_6;
    f32 temp_f2_7;
    f32 temp_f2_8;
    f32 temp_f2_9;
    f32 temp_f30;
    f32 temp_f30_2;
    f32 temp_f30_3;
    f32 temp_f30_4;
    f32 temp_f30_5;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f6;
    f32 temp_f6_2;
    f32 temp_f8;
    f32 temp_f8_2;
    f32 temp_f8_3;
    f32 var_f0;
    f32 var_f0_2;
    f32 var_f14;
    f32 var_f16;
    f32 var_f18;
    f32 var_f20;
    f32 var_f20_2;
    f32 var_f20_3;
    f32 var_f20_4;
    f32 var_f22;
    f32 var_f22_2;
    f32 var_f24;
    f32 var_f24_2;
    f32 var_f24_3;
    f32 var_f26;
    f32 var_f28;
    f32 var_f28_2;
    f32 var_f28_3;
    f32 var_f28_4;
    f32 var_f30;
    f32 var_f30_2;
    f32 var_f4;
    s32 temp_a2;
    u16 temp_t5;
    u16 temp_v0_3;
    u8 temp_t4;
    u8 temp_t7;
    u8 temp_v0;
    u8 temp_v0_2;
    void *temp_a0;
    void *temp_a0_2;

    var_s0 = D_800D6A0C;
    D_800D6AF0 = NULL;
    if (var_s0 != NULL) {
        do {
            if (arg0->unk44 & (1 << ((var_s0->unkA >> 3) + 0x10))) {
                D_800D6AF0 = var_s0;
                goto block_105;
            }
            if (var_s0->unk6 & 0x800) {
                D_800D6AF0 = var_s0;
                goto block_105;
            }
            temp_f0 = var_s0->unk40;
            if (temp_f0 < 0.0f) {
                var_f4 = var_s0->unk44 - temp_f0;
            } else {
                var_f4 = var_s0->unk44 + (random_f32() * var_s0->unk40);
            }
            var_s0->unk44 = var_f4;
            if (var_s0->unk44 >= 1.0f) {
                sp124 = var_s0->unk20;
                sp128 = var_s0->unk24;
                sp12C = var_s0->unk28;
                temp_a2 = var_s0->unk48;
                if (temp_a2 != 0) {
                    func_800A0558(&sp130, &sp124, temp_a2);
                    var_s0->unk14 = sp130;
                    var_s0->unk18 = sp134;
                    var_s0->unk1C = sp138;
                }
                if (var_s0->unk3C < 0.0f) {
                    temp_t4 = var_s0->unk9;
                    switch (temp_t4) {              /* switch 1 */
                        case 0:                     /* switch 1 */
                        case 3:                     /* switch 1 */
                        case 4:                     /* switch 1 */
                            temp_f2 = var_s0->unk50;
                            temp_f12 = (var_s0->unk54 - temp_f2) / var_s0->unk44;
                            temp_f8 = random_f32() * temp_f12;
                            spC0 = temp_f12;
                            spE4 = temp_f8 + temp_f2;
                            break;
                        case 6:                     /* switch 1 */
                        case 7:                     /* switch 1 */
                            temp_f2_2 = var_s0->unk50;
                            temp_f12_2 = (var_s0->unk54 - temp_f2_2) / var_s0->unk44;
                            temp_f6 = random_f32() * temp_f12_2;
                            spC0 = temp_f12_2;
                            spE4 = temp_f6 + temp_f2_2;
                            break;
                        default:                    /* switch 1 */
                            spE4 = random_f32() * 6.2831855f;
                            spC0 = 6.2831855f / var_s0->unk44;
                            break;
                    }
                }
            }
            if (var_s0->unk44 >= 1.0f) {
                do {
                    temp_t7 = var_s0->unk9;
                    switch (temp_t7) {              /* switch 2 */
                        case 0:                     /* switch 2 */
                        case 3:                     /* switch 2 */
                        case 4:                     /* switch 2 */
                        case 6:                     /* switch 2 */
                        case 7:                     /* switch 2 */
                            var_f22 = sp128;
                            if (var_s0->unk8 & 1) {
                                var_f24 = D_800D6A10->unk3C - var_s0->unk14;
                                var_f22 = D_800D6A10->unk40 - var_s0->unk18;
                                var_f20 = D_800D6A10->unk44 - var_s0->unk1C;
                                var_f0 = sqrtf((sp124 * sp124) + (sp128 * sp128) + (sp12C * sp12C));
                            } else {
                                var_f20 = sp12C;
                                var_f24 = sp124;
                                var_f0 = sqrtf((sp124 * sp124) + (var_f22 * var_f22) + (var_f20 * var_f20));
                            }
                            sp110 = var_f0;
                            temp_f0_2 = atan2f(var_f22, var_f20);
                            sp10C = temp_f0_2;
                            temp_f26 = sinf(temp_f0_2);
                            temp_f0_3 = cosf(sp10C);
                            sp100 = temp_f0_3;
                            temp_f0_4 = atan2f(var_f24, (var_f22 * temp_f26) + (var_f20 * temp_f0_3));
                            spFC = sinf(temp_f0_4);
                            sp104 = temp_f26;
                            spF8 = cosf(temp_f0_4);
                            temp_f2_3 = var_s0->unk38;
                            if (temp_f2_3 < 0.0f) {
                                var_f28 = 1.0f;
                                var_f24_2 = -temp_f2_3;
                                spBC = 1.0f;
                            } else {
                                var_f0_2 = random_f32();
                                spBC = var_f0_2;
                                temp_v0 = var_s0->unk9;
                                var_f28 = var_f0_2;
                                if ((temp_v0 == 3) || (temp_v0 == 4)) {
                                    var_f0_2 = sqrtf(var_f28);
                                    spBC = var_f0_2;
                                    var_f28 = var_f0_2;
                                }
                                var_f24_2 = var_s0->unk38 * var_f0_2;
                            }
                            switch (var_s0->unk9) { /* switch 3; irregular */
                                case 6:             /* switch 3 */
                                    if (var_s0->unk3C < 0.0f) {
                                        spE4 += spC0;
                                        var_f28_2 = (1.5707964f - atan2f(var_s0->unk58, var_f24_2)) - var_s0->unk3C;
                                    } else {
                                        temp_f2_4 = var_s0->unk50;
                                        spE4 = (random_f32() * (var_s0->unk54 - temp_f2_4)) + temp_f2_4;
                                        var_f28_2 = (1.5707964f - atan2f(var_s0->unk58, var_f24_2)) + var_s0->unk3C;
                                    }
                                    break;
                                case 7:             /* switch 3 */
                                    temp_f0_5 = var_s0->unk3C;
                                    if (temp_f0_5 < 0.0f) {
                                        spE4 += spC0;
                                        var_f28_2 = 1.5707964f - temp_f0_5;
                                    } else {
                                        temp_f2_5 = var_s0->unk50;
                                        spE4 = (random_f32() * (var_s0->unk54 - temp_f2_5)) + temp_f2_5;
                                        var_f28_2 = var_s0->unk3C + 1.5707964f;
                                    }
                                    break;
                                default:            /* switch 3 */
                                    temp_f0_6 = var_s0->unk3C;
                                    if (temp_f0_6 < 0.0f) {
                                        var_f28_2 = -temp_f0_6;
                                        spE4 += spC0;
                                    } else {
                                        temp_f2_6 = var_s0->unk50;
                                        spE4 = (random_f32() * (var_s0->unk54 - temp_f2_6)) + temp_f2_6;
                                        var_f28_2 = var_f28 * var_s0->unk3C;
                                    }
                                    break;
                            }
                            var_f22_2 = cosf(spE4) * var_f24_2;
                            temp_v0_2 = var_s0->unk9;
                            var_f26 = sinf(spE4) * var_f24_2;
                            if ((temp_v0_2 == 6) || (temp_v0_2 == 7)) {
                                temp_f0_7 = random_f32();
                                if (var_s0->unk9 == 6) {
                                    temp_f2_7 = 1.0f - temp_f0_7;
                                    var_f22_2 *= temp_f2_7;
                                    var_f26 *= temp_f2_7;
                                }
                                var_f30 = temp_f0_7 * var_s0->unk58;
                            } else {
                                var_f30 = 0.0f;
                            }
                            temp_f20 = sinf(var_f28_2) * sp110;
                            temp_f24 = cosf(spE4) * temp_f20;
                            spF4 = var_f22_2;
                            spF0 = var_f26;
                            temp_f22 = sinf(spE4) * temp_f20;
                            temp_f0_8 = cosf(var_f28_2);
                            sp9C = spFC;
                            sp98 = spF8;
                            spA0 = sp100;
                            temp_f2_8 = -spF4;
                            temp_f12_3 = -temp_f24;
                            temp_f8_2 = sp98;
                            temp_f2_9 = temp_f0_8 * sp110;
                            spD0 = ((temp_f2_8 * sp100 * spFC) - (spF0 * sp104)) + (var_f30 * sp100 * spF8) + var_s0->unk1C;
                            temp_f6_2 = sp9C;
                            sp9C = sp104;
                            temp_f28 = (temp_f24 * temp_f8_2) + (temp_f2_9 * temp_f6_2);
                            temp_f4 = sp9C;
                            sp9C = temp_f8_2;
                            temp_f8_3 = spA0;
                            spA0 = temp_f4;
                            sp98 = temp_f8_3;
                            var_f14 = temp_f28;
                            spA0 = temp_f6_2;
                            sp9C = temp_f4;
                            temp_f30 = (temp_f12_3 * temp_f4 * temp_f6_2) + (temp_f22 * temp_f8_3) + (temp_f2_9 * temp_f4 * temp_f8_2);
                            var_f16 = temp_f30;
                            temp_f4_2 = ((temp_f12_3 * sp98 * spA0) - (temp_f22 * temp_f4)) + (temp_f2_9 * sp98 * temp_f8_2);
                            spA8 = temp_f4_2;
                            var_f18 = temp_f4_2;
                            if (var_s0->unk9 == 3) {
                                var_f14 = temp_f28 * spBC;
                                var_f16 = temp_f30 * spBC;
                                var_f18 = temp_f4_2 * spBC;
                            }
                            func_8009BD3C(temp_f12_3, var_f14, var_s0->unkA, var_s0->unk6, var_s0->unkB, var_s0->unk10, (bitwise f32) var_s0->unkC, (spF4 * spF8) + (var_f30 * spFC) + var_s0->unk14, (temp_f2_8 * sp104 * spFC) + (spF0 * sp100) + (var_f30 * sp104 * spF8) + var_s0->unk18, spD0, var_f14, var_f16, var_f18, var_s0->unk34, var_s0->unk2C, var_s0->unk30, 0, var_s0);
                            break;
                        case 1:                     /* switch 2 */
                            temp_f0_9 = random_f32();
                            temp_f2_10 = var_s0->unk14;
                            temp_f12_4 = var_s0->unk18;
                            temp_f14 = var_s0->unk1C;
                            func_8009BD3C(temp_f12_4, temp_f14, var_s0->unkA, var_s0->unk6, var_s0->unkB, var_s0->unk10, (bitwise f32) var_s0->unkC, temp_f2_10 + (temp_f0_9 * (var_s0->unk50 - temp_f2_10)), temp_f12_4 + (temp_f0_9 * (var_s0->unk54 - temp_f12_4)), temp_f14 + (temp_f0_9 * (var_s0->unk58 - temp_f14)), sp124, sp128, sp12C, var_s0->unk34, var_s0->unk2C, var_s0->unk30, 0, var_s0);
                            break;
                        case 2:                     /* switch 2 */
                            temp_f0_10 = atan2f(sp128, sp12C);
                            sp10C = temp_f0_10;
                            temp_f26_2 = sinf(temp_f0_10);
                            temp_f30_2 = atan2f(sp124, (sp128 * temp_f26_2) + (sp12C * cosf(sp10C)));
                            temp_f22_2 = sqrtf((sp124 * sp124) + (sp128 * sp128) + (sp12C * sp12C));
                            if (var_s0->unk38 < 0.0f) {
                                var_f28_3 = 1.0f;
                            } else {
                                var_f28_3 = random_f32();
                            }
                            if (var_s0->unk3C < 0.0f) {
                                spE4 += spC0;
                            } else {
                                spE4 = random_f32() * 6.2831855f;
                            }
                            var_s0->unk50 = temp_f22_2;
                            if (func_8009BD3C((bitwise f32) var_s0->unkA, (bitwise f32) (var_s0->unk6 | 4), var_s0->unkB, (bitwise u16) var_s0->unk10, var_s0->unkC, 0.0f, 0.0f, 0.0f, spE4, var_f28_3, 0.0f, var_s0->unk34, sp10C, temp_f30_2, 0.0f, var_s0) != 0) {
                                var_s0->unk54 = (bitwise u16) var_s0->unk54 + 1;
                            }
                            break;
                        case 5:                     /* switch 2 */
                            temp_f24_2 = var_s0->unk14;
                            temp_f22_3 = var_s0->unk18;
                            temp_f30_3 = var_s0->unk1C;
                            if (var_s0->unk74 & 1) {
                                if (random_f32() > 0.5f) {
                                    var_f20_2 = 0.5f;
                                } else {
                                    var_f20_2 = -0.5f;
                                }
                            } else {
                                var_f20_2 = random_f32() - 0.5f;
                            }
                            temp_f24_3 = temp_f24_2 + (var_s0->unk50 * var_f20_2);
                            temp_f22_4 = temp_f22_3 + (var_s0->unk54 * var_f20_2);
                            temp_f30_4 = temp_f30_3 + (var_s0->unk58 * var_f20_2);
                            if (var_s0->unk74 & 2) {
                                if (random_f32() > 0.5f) {
                                    var_f20_3 = 0.5f;
                                } else {
                                    var_f20_3 = -0.5f;
                                }
                            } else {
                                var_f20_3 = random_f32() - 0.5f;
                            }
                            temp_f24_4 = temp_f24_3 + (var_s0->unk5C * var_f20_3);
                            temp_f22_5 = temp_f22_4 + (var_s0->unk60 * var_f20_3);
                            temp_f30_5 = temp_f30_4 + (var_s0->unk64 * var_f20_3);
                            if (var_s0->unk74 & 4) {
                                if (random_f32() > 0.5f) {
                                    var_f20_4 = 0.5f;
                                } else {
                                    var_f20_4 = -0.5f;
                                }
                            } else {
                                var_f20_4 = random_f32() - 0.5f;
                            }
                            func_8009BD3C((bitwise f32) var_s0->unkA, (bitwise f32) var_s0->unk6, var_s0->unkB, (bitwise u16) var_s0->unk10, var_s0->unkC, temp_f24_4 + (var_s0->unk68 * var_f20_4), temp_f22_5 + (var_s0->unk6C * var_f20_4), temp_f30_5 + (var_s0->unk70 * var_f20_4), sp124, sp128, sp12C, var_s0->unk34, var_s0->unk2C, (bitwise f32) var_s0->unk30, 0.0f, var_s0);
                            break;
                        case 8:                     /* switch 2 */
                            temp_f24_5 = sqrtf(random_f32());
                            temp_f20_2 = random_f32() * 6.2831855f;
                            if (var_s0->unk60 == 0.0f) {
                                sp10C = random_f32() * 6.2831855f;
                            } else {
                                sp10C = (cosf(temp_f20_2) * temp_f24_5 * var_s0->unk60) + var_s0->unk5C;
                            }
                            if (var_s0->unk58 == 0.0f) {
                                var_f30_2 = (1.0f - sqrtf(random_f32())) * 1.5707964f;
                                if (random_f32() < 0.5f) {
                                    var_f30_2 = -var_f30_2;
                                }
                            } else {
                                var_f30_2 = (sinf(temp_f20_2) * temp_f24_5 * var_s0->unk58) + var_s0->unk54;
                            }
                            temp_f24_6 = var_s0->unk38;
                            if (temp_f24_6 < 0.0f) {
                                var_f24_3 = -temp_f24_6;
                                var_f28_4 = var_s0->unk50 / var_f24_3;
                            } else {
                                var_f28_4 = var_s0->unk50 / temp_f24_6;
                                var_f24_3 = temp_f24_6 * random_f32();
                            }
                            spE4 = temp_f20_2;
                            temp_f22_6 = cosf(sp10C);
                            temp_f26_3 = cosf(var_f30_2) * (var_f24_3 * temp_f22_6);
                            temp_f20_3 = sinf(var_f30_2) * var_f24_3;
                            temp_f22_7 = sinf(sp10C);
                            temp_f2_11 = cosf(var_f30_2) * (var_f24_3 * temp_f22_7);
                            func_8009BD3C((bitwise f32) var_s0->unkA, (bitwise f32) var_s0->unk6, var_s0->unkB, (bitwise u16) var_s0->unk10, var_s0->unkC, var_s0->unk14 + temp_f26_3, var_s0->unk18 + temp_f20_3, var_s0->unk1C + temp_f2_11, temp_f26_3 * var_f28_4, temp_f20_3 * var_f28_4, temp_f2_11 * var_f28_4, var_s0->unk34, var_s0->unk2C, (bitwise f32) var_s0->unk30, 0.0f, var_s0);
                            break;
                        default:                    /* switch 2 */
                            if (D_800D6AD8 != NULL) {
                                D_800D6AD8(var_s0, &sp124);
                            }
                            break;
                    }
                    var_s0->unk44 = var_s0->unk44 - 1.0f;
                } while (var_s0->unk44 >= 1.0f);
            }
            temp_v0_3 = var_s0->unkE;
            temp_t5 = temp_v0_3 - 1;
            if ((temp_v0_3 != 0) && (var_s0->unkE = temp_t5, ((temp_t5 & 0xFFFF) == 0))) {
                if ((var_s0->unk9 == 2) && ((bitwise u16) var_s0->unk54 != 0)) {
                    var_s0->unkE = 1;
                    var_s0->unk40 = 0.0f;
                    goto block_104;
                }
                if (D_800D6AF0 == NULL) {
                    D_800D6A0C = var_s0->unk0;
                } else {
                    *D_800D6AF0 = var_s0->unk0;
                }
                temp_a0 = var_s0->unk4C;
                temp_v0_4 = var_s0->unk0;
                if (temp_a0 != NULL) {
                    temp_a0->unk2A = temp_a0->unk2A - 1;
                    temp_a0_2 = var_s0->unk4C;
                    if (temp_a0_2->unk2A == 0) {
                        sp140 = temp_v0_4;
                        func_8009B69C(temp_a0_2);
                    }
                }
                var_s0->unk0 = D_800D6A08;
                D_800D6A08 = var_s0;
                var_s0 = temp_v0_4;
                D_800D6AE2 -= 1;
            } else {
block_104:
                D_800D6AF0 = var_s0;
block_105:
                var_s0 = var_s0->unk0;
            }
        } while (var_s0 != NULL);
    }
}
#elif defined(PORT)
/* PORT: still assembly on the matching build, and the m2c sketch above is not
 * compilable. This is the per-frame particle-list updater (walks D_800D6AF0,
 * recycles nodes onto D_800D6A08); the game registers it as a GObj process at
 * scene start, so the weak abort stub fires on the first frame. A no-op keeps
 * the boot alive at the cost of frozen/absent particles until the function is
 * genuinely matched. */
void func_800A09AC(void *arg0) {
    (void)arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A09AC.s")
#endif

struct Ovl1ParticleNode;
extern UnkParticle *D_800D6A08;
extern struct Ovl1ParticleNode *D_800D6A0C;
extern struct Ovl1ParticleNode *D_800D6AF0;

UnkParticle *func_800A194C(void) {
    UnkParticle *p;

    p = D_800D6A08;
    if (p == NULL) {
        return NULL;
    }
    D_800D6AE2++;
    if (D_800D6AE8 < D_800D6AE2) {
        D_800D6AE8 = D_800D6AE2;
    }
    D_800D6A08 = p->next;
    p->next = (UnkParticle *) D_800D6A0C;
    D_800D6A0C = (struct Ovl1ParticleNode *) p;
    if (D_800D6AF0 == NULL) {
        D_800D6AF0 = (struct Ovl1ParticleNode *) p;
    }
    D_800BE3E8 = D_800BE3E8 + 1;
    p->unk4 = D_800BE3E8;
    *(s32 *) &p->unk4C = 0;
    return p;
}





#ifdef MIPS_TO_C

void *func_800A19EC(s32 arg0, s32 arg1) {
    s32 sp2C;
    s32 sp28;
    s32 *sp24;
    f32 temp_f0;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    s32 *temp_a0;
    s32 temp_a1;
    s32 temp_v0_2;
    s32 temp_v1;
    u8 temp_t5;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_v0;
    void *temp_v0_3;
    void *var_a1;

    temp_v0_2 = arg0 & 7;
    if (temp_v0_2 >= 8) {
        return NULL;
    }
    temp_a1 = temp_v0_2 * 4;
    if (arg1 >= *(&D_800D6A38 + temp_a1)) {
        return NULL;
    }
    sp28 = temp_a1;
    temp_v0 = func_800A194C(temp_a1, arg0, arg1);
    if (temp_v0 != NULL) {
        temp_a0 = temp_a1 + &D_800D6A78;
        temp_v1 = arg1 * 4;
        temp_v0->unkA = arg0;
        temp_v0->unk9 = **(*temp_a0 + temp_v1);
        temp_v0->unk6 = (*(*temp_a0 + temp_v1))->unkA;
        temp_v0->unk8 = (*(*temp_a0 + temp_v1))->unk8;
        temp_v0->unkB = (*(*temp_a0 + temp_v1))->unk2;
        temp_v0->unkC = (*(*temp_a0 + temp_v1))->unk6;
        temp_v0->unk14 = 0.0f;
        temp_v0->unk18 = 0.0f;
        temp_v0->unk1C = 0.0f;
        temp_v0->unkE = (*(*temp_a0 + temp_v1))->unk4;
        temp_v0->unk20 = (*(*temp_a0 + temp_v1))->unk14;
        temp_v0->unk24 = (*(*temp_a0 + temp_v1))->unk18;
        temp_v0->unk28 = (*(*temp_a0 + temp_v1))->unk1C;
        temp_v0->unk2C = (*(*temp_a0 + temp_v1))->unkC;
        temp_v0->unk30 = (*(*temp_a0 + temp_v1))->unk10;
        temp_v0->unk34 = (*(*temp_a0 + temp_v1))->unk2C;
        temp_v0->unk10 = *(*temp_a0 + temp_v1) + 0x3C;
        temp_v0->unk38 = (*(*temp_a0 + temp_v1))->unk20;
        temp_v0->unk3C = (*(*temp_a0 + temp_v1))->unk24;
        temp_v0->unk44 = 0.0f;
        temp_v0->unk40 = (*(*temp_a0 + temp_v1))->unk28;
        if ((*(*(&D_800D6A98 + temp_a1) + ((*(*temp_a0 + temp_v1))->unk2 * 4)))->unk16 != 0) {
            temp_v0->unk6 = temp_v0->unk6 | 0x10;
        }
        temp_t5 = temp_v0->unk9;
        temp_v0->unk48 = 0;
        switch (temp_t5) {
            case 0:
            case 3:
            case 4:
                temp_a1_2 = *(*temp_a0 + temp_v1);
                temp_f2 = temp_a1_2->unk30;
                if ((temp_f2 == 0.0f) && (temp_a1_2->unk34 == 0.0f)) {
                    temp_v0->unk50 = 0.0f;
                    temp_v0->unk54 = 6.2831855f;
                } else {
                    temp_v0->unk50 = temp_f2;
                    temp_v0->unk54 = (*(*temp_a0 + temp_v1))->unk34;
                }
                break;
            case 1:
                temp_v0->unk50 = (*(*temp_a0 + temp_v1))->unk30;
                temp_v0->unk54 = (*(*temp_a0 + temp_v1))->unk34;
                temp_v0->unk58 = (*(*temp_a0 + temp_v1))->unk38;
                break;
            case 2:
                temp_v0->unk54 = 0;
                break;
            case 6:
            case 7:
                temp_a1_3 = *(*temp_a0 + temp_v1);
                temp_f2_2 = temp_a1_3->unk30;
                if ((temp_f2_2 == 0.0f) && (temp_a1_3->unk34 == 0.0f)) {
                    temp_v0->unk50 = 0.0f;
                    temp_v0->unk54 = 6.2831855f;
                } else {
                    temp_v0->unk50 = temp_f2_2;
                    temp_v0->unk54 = (*(*temp_a0 + temp_v1))->unk34;
                }
                temp_v0->unk58 = (*(*temp_a0 + temp_v1))->unk38;
                break;
            case 5:
                temp_v0->unk50 = (*(*temp_a0 + temp_v1))->unk30;
                temp_v0->unk60 = (*(*temp_a0 + temp_v1))->unk34;
                temp_v0->unk54 = 0.0f;
                temp_v0->unk58 = 0.0f;
                temp_v0->unk5C = 0.0f;
                temp_v0->unk64 = 0.0f;
                temp_v0->unk68 = 0.0f;
                temp_v0->unk6C = 0.0f;
                temp_v0->unk74 = 0;
                temp_v0->unk70 = (*(*temp_a0 + temp_v1))->unk38;
                var_a1 = *(*temp_a0 + temp_v1);
                if (var_a1->unk30 < 0.0f) {
                    temp_v0->unk74 = 1;
                    var_a1 = *(*temp_a0 + temp_v1);
                }
                if (var_a1->unk34 < 0.0f) {
                    temp_v0->unk74 = temp_v0->unk74 | 2;
                    var_a1 = *(*temp_a0 + temp_v1);
                }
                if (var_a1->unk38 < 0.0f) {
                    temp_v0->unk74 = temp_v0->unk74 | 4;
                }
                break;
            case 8:
                temp_f0 = temp_v0->unk20;
                temp_f2_3 = temp_v0->unk24;
                temp_f14 = temp_v0->unk28;
                sp24 = temp_a0;
                sp2C = temp_v1;
                temp_f14_2 = temp_v0->unk28;
                temp_v0->unk50 = sqrtf((temp_f0 * temp_f0) + (temp_f2_3 * temp_f2_3) + (temp_f14 * temp_f14));
                temp_v0->unk54 = atan2f(temp_v0->unk24, sqrtf((temp_v0->unk14 * temp_v0->unk20) + (temp_f14_2 * temp_f14_2)));
                temp_v0->unk5C = atan2f(temp_v0->unk28, temp_v0->unk20);
                temp_v0->unk58 = (*(*temp_a0 + temp_v1))->unk30;
                temp_v0->unk60 = (*(*temp_a0 + temp_v1))->unk34;
                break;
            default:
                if (D_800D6ADC != NULL) {
                    D_800D6ADC(temp_v0, temp_a1, arg0, arg1);
                }
                break;
        }
        if (temp_v0->unk8 & 2) {
            temp_v0_3 = func_8009B5E8(0, temp_v0->unk4);
            temp_v0->unk4C = temp_v0_3;
            if (temp_v0_3 != NULL) {
                temp_v0_3->unkBA = 1;
            }
        }
    }
    return temp_v0;
}
#elif defined(PORT)
/* PORT: still assembly on the matching build and the m2c sketch above is
 * not compilable; the particle/emitter object it would build also leans on
 * script tables whose LP64 layout is still unresolved. Scene setup calls
 * this per placed emitter (func_800A2550), so a weak abort stub would end
 * the run on the first scene with emitters; a NULL return is the
 * documented "emitter did not spawn" result every caller already checks
 * for. Effects stay absent until this is genuinely ported. */
void *func_800A19EC(s32 arg0, s32 arg1) {
    (void)arg0;
    (void)arg1;
    return NULL;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A19EC.s")
#endif

// The node type of the D_800D6A0C live list / D_800D6A08 free list -- 0x78
// bytes, the size func_800A04B8 gtlMallocs. It is NOT UnkParticle (whose 0x14
// is a u16 and whose 0x4C is a u8), so it gets its own tag.
struct Ovl1PNode {
    /* 0x00 */ struct Ovl1PNode *next;
    /* 0x04 */ u8 pad4[5];
    /* 0x09 */ u8 unk9;
    /* 0x0A */ u8 padA[4];
    /* 0x0E */ u16 unkE;
    /* 0x10 */ s32 pad10;
    /* 0x14 */ f32 unk14;
    /* 0x18 */ f32 unk18;
    /* 0x1C */ f32 unk1C;
    /* 0x20 */ s32 pad20[8];
    /* 0x40 */ f32 unk40;
    /* 0x44 */ s32 pad44;
    /* 0x48 */ struct DObj *unk48;
    /* 0x4C */ UnkEmitter *unk4C;
    /* 0x50 */ s32 pad50;
    /* 0x54 */ u16 unk54;
};

void func_800A1F30(struct Ovl1PNode *arg0) {
    s32 pad0;
    struct Ovl1PNode *p;
    struct Ovl1PNode *prev;

    p = (struct Ovl1PNode *) D_800D6A0C;
    prev = NULL;
    if (p != NULL) {
        do {
            if (p == arg0) {
                if ((arg0->unk9 == 2) && (arg0->unk54 != 0)) {
                    arg0->unkE = 1;
                    arg0->unk40 = 0.0f;
                    return;
                }
                if (prev == NULL) {
                    D_800D6A0C = (struct Ovl1ParticleNode *) p->next;
                } else {
                    prev->next = p->next;
                }
                if (arg0->unk4C != NULL) {
                    arg0->unk4C->unk2A--;
                    if (arg0->unk4C->unk2A == 0) {
                        func_8009B69C(arg0->unk4C);
                    }
                }
                p->next = (struct Ovl1PNode *) D_800D6A08;
                D_800D6A08 = (UnkParticle *) p;
                D_800D6AE2--;
                return;
            }
            prev = p;
            p = p->next;
        } while (p != NULL);
    }
}

struct Ovl1ParticleNode {
    struct Ovl1ParticleNode *next;
};

extern struct Ovl1ParticleNode *D_800D6A0C;

void func_800A2024(void) {
    struct Ovl1ParticleNode *var_s0;
    struct Ovl1ParticleNode *temp_s1;

    var_s0 = D_800D6A0C;
    while (var_s0 != NULL) {
        temp_s1 = var_s0->next;
        func_800A1F30(var_s0);
        var_s0 = temp_s1;
    }
}

extern void (*D_800D6AD8)();
extern void (*D_800D6ADC)();

void func_800A206C(void (*arg0)(), void (*arg1)()) {
    D_800D6ADC = arg0;
    D_800D6AD8 = arg1;
}

#ifdef MIPS_TO_C

void func_800A2080(s32 arg0, s32 arg1) {
    ? **temp_s6;
    ? *temp_v0;
    ? *temp_v0_3;
    ? *var_s0;
    ? *var_s0_2;
    ? *var_s1;
    ? *var_s1_2;
    s32 temp_fp;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a0_4;
    void *temp_v0_2;

    temp_s6 = (arg1 * 4) + &D_800D69C8;
    var_s0 = *temp_s6;
    temp_fp = arg0 & 0xFFFF;
    var_s1 = NULL;
    if (var_s0 != NULL) {
        do {
            temp_v0 = var_s0->unk0;
            if (temp_fp == var_s0->unk4) {
                if (var_s1 == NULL) {
                    *temp_s6 = temp_v0;
                } else {
                    *var_s1 = temp_v0;
                }
                temp_v0_2 = var_s0->unk5C;
                if ((temp_v0_2 != NULL) && (var_s0->unk6 & 4) && (temp_v0_2->unk9 == 2)) {
                    temp_v0_2->unk54 = temp_v0_2->unk54 - 1;
                }
                temp_a0 = var_s0->unk60;
                if (temp_a0 != NULL) {
                    temp_a0->unk2A = temp_a0->unk2A - 1;
                    temp_a0_2 = var_s0->unk60;
                    if (temp_a0_2->unk2A == 0) {
                        func_8009B69C(temp_a0_2);
                    }
                }
                var_s0->unk0 = D_800D69C0;
                D_800D69C0 = var_s0;
                D_800D6AE0 -= 1;
            } else {
                var_s1 = var_s0;
            }
            var_s0 = temp_v0;
        } while (temp_v0 != NULL);
    }
    var_s0_2 = D_800D6A0C;
    var_s1_2 = NULL;
    if (var_s0_2 != NULL) {
        do {
            temp_v0_3 = var_s0_2->unk0;
            if (temp_fp == var_s0_2->unk4) {
                if ((var_s0_2->unk9 == 2) && (var_s0_2->unk54 != 0)) {
                    var_s0_2->unk40 = 0.0f;
                    var_s0_2->unkE = 1;
                    goto block_29;
                }
                if (var_s1_2 == NULL) {
                    D_800D6A0C = temp_v0_3;
                } else {
                    *var_s1_2 = temp_v0_3;
                }
                temp_a0_3 = var_s0_2->unk4C;
                if (temp_a0_3 != NULL) {
                    temp_a0_3->unk2A = temp_a0_3->unk2A - 1;
                    temp_a0_4 = var_s0_2->unk4C;
                    if (temp_a0_4->unk2A == 0) {
                        func_8009B69C(temp_a0_4);
                    }
                }
                var_s0_2->unk0 = D_800D6A08;
                D_800D6A08 = var_s0_2;
                D_800D6AE2 -= 1;
            } else {
block_29:
                var_s1_2 = var_s0_2;
            }
            var_s0_2 = temp_v0_3;
        } while (temp_v0_3 != NULL);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A2080.s")
#endif

typedef struct UnkA22A8 {
    u8  unk0[4];
    u16 unk4;
    u8  unk6[2];
    u8  unk8;
    u8  unk9;
    u8  unkA;
} UnkA22A8;

void func_800A22A8(UnkA22A8 *arg0) {
    func_800A2080(arg0->unk4, arg0->unk8 >> 3, arg0);
}

void func_800A22D4(UnkA22A8 *arg0) {
    func_800A2080(arg0->unk4, arg0->unkA >> 3, arg0);
}

void func_800A2300(GObj *arg0) {
    struct Ovl1PNode *p;
    struct Ovl1PNode *next;
    struct DObj *node;

    if (arg0->kind == 1) {
        node = arg0->data.dobj;
        if (node != NULL) {
            do {
                p = (struct Ovl1PNode *) D_800D6A0C;
                if (p != NULL) {
                    do {
                        next = p->next;
                        if (p->unk48 == node) {
                            func_800A1F30(p);
                        }
                        p = next;
                    } while (next != NULL);
                }
                node = animModelTreeNextNode(node);
            } while (node != NULL);
        }
    }
}

/* FACTORY: 17/45, residue = whole-loop $v0/$v1 swap. Structure, frame (0x10
   with the $f20 save), both loop shapes, every displacement and both `bnel`
   forms are byte-exact; the ROM keeps the walking node pointer in $v0 and the
   D_800D69C8 array cursor in $v1, IDO reverses them, and the two `addiu %lo`
   materialisations swap with it. This is the SAME floor already recorded on
   func_800A8EC0 in ovl1_3.c ("the ROM puts the walking pointer in $v0 and the
   counter in $v1"). Swept: both declaration orders of p/q. Permuter fuel. */
#ifdef NON_MATCHING
void func_800A238C(f32 arg0, f32 arg1, f32 arg2) {
    UnkParticle *p;
    UnkParticle **q;
    struct Ovl1PNode *n;

    q = D_800D69C8;
    do {
        p = *q;
        q++;
        if (p != NULL) {
            do {
                p->unk24 += arg0;
                p->unk28 += arg1;
                p->unk2C += arg2;
                p = p->next;
            } while (p != NULL);
        }
    } while (q < &D_800D6A08);
    n = (struct Ovl1PNode *) D_800D6A0C;
    if (n != NULL) {
        do {
            n->unk14 += arg0;
            n->unk18 += arg1;
            n->unk1C += arg2;
            n = n->next;
        } while (n != NULL);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A238C.s")
#endif

// K&R definition with a u16 first parameter: the ROM's dead `sw $a0, 0x0($sp)`
// home store plus the `andi $a0, $a0, 0xFFFF` truncation is IDO's K&R
// promoted-short prologue.
void func_800A2440(arg0, arg1)
u16 arg0;
s32 arg1;
{
    UnkParticle *p;

    p = D_800D69C8[arg1];
    if (p != NULL) {
        do {
            if (p->unk4 == arg0) {
                p->unk6 |= 0x800;
            }
            p = p->next;
        } while (p != NULL);
    }
    p = (UnkParticle *) D_800D6A0C;
    if (p != NULL) {
        do {
            if (p->unk4 == arg0) {
                p->unk6 |= 0x800;
            }
            p = p->next;
        } while (p != NULL);
    }
}

// Clone of func_800A2440; see the K&R note there.
void func_800A24C4(arg0, arg1)
u16 arg0;
s32 arg1;
{
    UnkParticle *p;

    p = D_800D69C8[arg1];
    if (p != NULL) {
        do {
            if (p->unk4 == arg0) {
                p->unk6 &= ~0x800;
            }
            p = p->next;
        } while (p != NULL);
    }
    p = (UnkParticle *) D_800D6A0C;
    if (p != NULL) {
        do {
            if (p->unk4 == arg0) {
                p->unk6 &= ~0x800;
            }
            p = p->next;
        } while (p != NULL);
    }
}

#ifdef MIPS_TO_C

void func_800A2550(void *arg0) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    s32 temp_t7;
    s32 temp_t9;
    s32 temp_v0;
    u8 temp_t8;
    void *temp_v0_2;
    void *var_s1;
    void *var_s1_2;

    var_s1 = arg0;
    if (arg0->unk0 != 0x12) {
        do {
            temp_t7 = var_s1->unk2C;
            var_s1 += 0x2C;
        } while (temp_t7 != 0x12);
    }
    var_s1_2 = var_s1 + 0x2C;
    if (var_s1->unk4 != 0) {
        func_8001C2E4(&spA4[0], arg0->unk8, arg0->unkC, arg0->unk10, arg0->unk14, arg0->unk18, arg0->unk1C, arg0->unk20, arg0->unk24, arg0->unk28);
        do {
            temp_v0 = var_s1_2->unk0;
            temp_v0_2 = func_800A19EC((temp_v0 >> 0x10) & 0xF, temp_v0 & 0xFFFF);
            if (temp_v0_2 != NULL) {
                func_8001C2E4(&sp64[0], var_s1_2->unk8, var_s1_2->unkC, var_s1_2->unk10, var_s1_2->unk14, var_s1_2->unk18, var_s1_2->unk1C, var_s1_2->unk20, var_s1_2->unk24, var_s1_2->unk28);
                guMtxCatF(&sp64[0], &spA4[0], &sp64[0]);
                temp_f0 = temp_v0_2->unk20;
                temp_f2 = temp_v0_2->unk24;
                temp_v0_2->unk14 = sp94;
                temp_f12 = temp_v0_2->unk28;
                temp_t8 = temp_v0_2->unk9;
                temp_v0_2->unk18 = sp98;
                temp_v0_2->unk1C = sp9C;
                temp_v0_2->unk20 = (sp84 * temp_f12) + ((sp64[0] * temp_f0) + (sp74 * temp_f2));
                temp_v0_2->unk24 = (sp88 * temp_f12) + ((sp64[1] * temp_f0) + (sp78 * temp_f2));
                temp_v0_2->unk28 = (sp8C * temp_f12) + ((sp64[2] * temp_f0) + (sp7C * temp_f2));
                switch (temp_t8) {
                    case 0:
                    case 2:
                    case 3:
                    case 4:
                    case 6:
                    case 7:
                    case 8:
                        temp_v0_2->unk38 = temp_v0_2->unk38 * sqrtf((sp84 * sp84) + ((sp64[0] * sp64[0]) + (sp74 * sp74)));
                        break;
                    case 1:
                        temp_f0_2 = temp_v0_2->unk50;
                        temp_f2_2 = temp_v0_2->unk54;
                        temp_f12_2 = temp_v0_2->unk58;
                        temp_v0_2->unk50 = sp94 + ((sp64[0] * temp_f0_2) + (sp74 * temp_f2_2) + (sp84 * temp_f12_2));
                        temp_v0_2->unk54 = sp98 + ((sp64[1] * temp_f0_2) + (sp78 * temp_f2_2) + (sp88 * temp_f12_2));
                        temp_v0_2->unk58 = sp9C + ((sp64[2] * temp_f0_2) + (sp7C * temp_f2_2) + (sp8C * temp_f12_2));
                        break;
                    case 5:
                        temp_f0_3 = temp_v0_2->unk50;
                        temp_f2_3 = temp_v0_2->unk60;
                        temp_f12_3 = temp_v0_2->unk70;
                        temp_v0_2->unk50 = sp64[0] * temp_f0_3;
                        temp_v0_2->unk54 = sp74 * temp_f2_3;
                        temp_v0_2->unk58 = sp84 * temp_f12_3;
                        temp_v0_2->unk5C = sp64[1] * temp_f0_3;
                        temp_v0_2->unk60 = sp78 * temp_f2_3;
                        temp_v0_2->unk64 = sp88 * temp_f12_3;
                        temp_v0_2->unk68 = sp64[2] * temp_f0_3;
                        temp_v0_2->unk6C = sp7C * temp_f2_3;
                        temp_v0_2->unk70 = sp8C * temp_f12_3;
                        break;
                }
            }
            temp_t9 = var_s1_2->unk0;
            var_s1_2 += 0x2C;
        } while (!(temp_t9 & 0x80000000));
    }
}
#elif defined(PORT)
/* PORT: still assembly on the matching build; the m2c sketch above is not
 * compilable. Behavioral port from
 * asm/nonmatchings/ovl1/ovl1/func_800A2550.s -- the scene particle-emitter
 * placer. arg0 is the geo blob's layout section (0x2C-stride nodes). It
 * walks to the type-0x12 terminator; if the terminator's word +4 is
 * nonzero, a SECOND 0x2C-stride array follows the terminator: each entry
 * is { u32 id; pad; f32 pos[3]; f32 rot[3]; f32 scale[3] }, the last entry
 * flagged by bit 31 of its id (and still processed). Each id spawns
 * emitter (id>>16)&0xF / (id&0xFFFF) via func_800A19EC and transforms it
 * by (entry SRT matrix) * (first-node SRT matrix): position from the
 * translation row, velocity rotated through the 3x3, plus a per-kind
 * extra (scale for most kinds, a point for kind 1, a 3x3 for kind 5).
 *
 * BYTE ORDER: the layout nodes themselves are native (func_800A9250's PORT
 * normalizer swaps the node array through the terminator's TYPE word for
 * layoutModes 0x17..0x1E, and this function is only reached for those
 * modes -- func_800F72B0/func_800F6E30 skip it for 0x11..0x16). But the
 * terminator's word +4 and the whole second array live PAST what the
 * normalizer touched and are still raw big-endian, so every read of them
 * here decodes explicitly (and nothing is swapped in place: the blob is
 * shared/cached, and this function can run on it more than once).
 *
 * The emitter object layout mirrors struct Ovl1PNode's LP64 shape (the
 * 8-byte `next` shifts the scalar block by +4; the two pointers at N64
 * +0x48/+0x4C widen, putting the N64 +0x50.. block at +0x60). TODAY
 * func_800A19EC is still a weak NULL stub on this build, so the transform
 * body is exercised only once emitters exist; if kind-5 emitters ever
 * spawn, the free-list node size (0x78 on the N64) must be re-checked
 * against this widened layout. */

struct Pc2550Obj {                       /* LP64 mirror of struct Ovl1PNode */
    /* 0x00 */ void *next;
    /* 0x08 */ u8 pad4[5];
    /* 0x0D */ u8 unk9;                  /* emitter kind (N64 +0x09) */
    /* 0x0E */ u8 padA[4];
    /* 0x12 */ u16 unkE;
    /* 0x14 */ s32 pad10;
    /* 0x18 */ f32 unk14, unk18, unk1C;  /* position (N64 +0x14..) */
    /* 0x24 */ f32 unk20, unk24, unk28;  /* velocity */
    /* 0x30 */ f32 unk2C, unk30, unk34;
    /* 0x3C */ f32 unk38, unk3C;         /* unk38 = size (N64 +0x38) */
    /* 0x44 */ f32 unk40;
    /* 0x48 */ s32 pad44;
    /* 0x50 */ struct DObj *unk48;
    /* 0x58 */ void *unk4C;
    /* 0x60 */ f32 unk50, unk54, unk58;  /* N64 +0x50.. */
    /* 0x6C */ f32 unk5C, unk60, unk64;
    /* 0x78 */ f32 unk68, unk6C, unk70;
    /* 0x84 */ s32 unk74;
};

void *func_800A19EC(s32, s32);
void func_8001C2E4(f32 m[4][4], Vector translate, Vector rotate, Vector scale);
void guMtxCatF(f32 m[4][4], f32 n[4][4], f32 res[4][4]);

static u32 pc2550_w(const void *p) {
    return __builtin_bswap32(*(const u32 *)p);
}
static f32 pc2550_f(const void *p) {
    union { u32 w; f32 f; } u;
    u.w = pc2550_w(p);
    return u.f;
}
static Vector pc2550_vec(const u8 *p) {
    Vector v;
    v.x = pc2550_f(p);
    v.y = pc2550_f(p + 4);
    v.z = pc2550_f(p + 8);
    return v;
}
/* The layout nodes BEFORE and AT the terminator are native. */
static Vector pc2550_vec_native(const u8 *p) {
    Vector v;
    v.x = ((const f32 *)p)[0];
    v.y = ((const f32 *)p)[1];
    v.z = ((const f32 *)p)[2];
    return v;
}

void func_800A2550(void *arg0) {
    u8 *first = arg0;
    u8 *node = arg0;
    u8 *ent;
    f32 m1[4][4];
    f32 m2[4][4];
    struct Pc2550Obj *obj;
    u32 id;

    while (*(s32 *)node != 0x12) { /* native type words */
        node += 0x2C;
    }
    if (pc2550_w(node + 4) == 0) { /* BE: past the normalizer's reach */
        return;
    }

    func_8001C2E4(m1, pc2550_vec_native(first + 0x8),
                  pc2550_vec_native(first + 0x14),
                  pc2550_vec_native(first + 0x20));

    ent = node + 0x2C;
    do {
        id = pc2550_w(ent);
        obj = func_800A19EC((s32)((id >> 16) & 0xF), (s32)(id & 0xFFFF));
        if (obj != NULL) {
            f32 vx, vy, vz;

            func_8001C2E4(m2, pc2550_vec(ent + 0x8), pc2550_vec(ent + 0x14),
                          pc2550_vec(ent + 0x20));
            guMtxCatF(m2, m1, m2);

            obj->unk14 = m2[3][0];
            obj->unk18 = m2[3][1];
            obj->unk1C = m2[3][2];
            vx = obj->unk20;
            vy = obj->unk24;
            vz = obj->unk28;
            obj->unk20 = m2[0][0] * vx + m2[1][0] * vy + m2[2][0] * vz;
            obj->unk24 = m2[0][1] * vx + m2[1][1] * vy + m2[2][1] * vz;
            obj->unk28 = m2[0][2] * vx + m2[1][2] * vy + m2[2][2] * vz;

            switch (obj->unk9) {
                case 0:
                case 2:
                case 3:
                case 4:
                case 6:
                case 7:
                case 8:
                    obj->unk38 *= sqrtf(m2[0][0] * m2[0][0] + m2[1][0] * m2[1][0] +
                                        m2[2][0] * m2[2][0]);
                    break;
                case 1: {
                    f32 px = obj->unk50;
                    f32 py = obj->unk54;
                    f32 pz = obj->unk58;
                    obj->unk50 = m2[3][0] + (m2[0][0] * px + m2[1][0] * py + m2[2][0] * pz);
                    obj->unk54 = m2[3][1] + (m2[0][1] * px + m2[1][1] * py + m2[2][1] * pz);
                    obj->unk58 = m2[3][2] + (m2[0][2] * px + m2[1][2] * py + m2[2][2] * pz);
                    break;
                }
                case 5: {
                    f32 ax = obj->unk50;
                    f32 ay = obj->unk60;
                    f32 az = obj->unk70;
                    obj->unk50 = m2[0][0] * ax;
                    obj->unk54 = m2[1][0] * ay;
                    obj->unk58 = m2[2][0] * az;
                    obj->unk5C = m2[0][1] * ax;
                    obj->unk60 = m2[1][1] * ay;
                    obj->unk64 = m2[2][1] * az;
                    obj->unk68 = m2[0][2] * ax;
                    obj->unk6C = m2[1][2] * ay;
                    obj->unk70 = m2[2][2] * az;
                    break;
                }
            }
        }
        ent += 0x2C;
    } while (!(id & 0x80000000));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A2550.s")
#endif

