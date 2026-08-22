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

#ifdef PORT
/* PORT: LP64 overlay of the generator node. The nodes themselves are the
 * D_800D6A08/D_800D6A0C free/live-list nodes that func_800A04B8 sizes at
 * PC_GENNODE_SIZE and func_800A19EC fills through struct PcGenNode (defined
 * above func_800A09AC), so this typedef MUST land on that same LP64 shape:
 * the 8-byte `next` shifts the scalar block by +4, `bytecode` stays a u32
 * host address (below-4GB arena, like the bank tables) packing into the
 * N64 +0x10 slot's gap, and the two widened pointers push the N64 +0x50
 * union to +0x60. Left at its natural LP64 layout (8-byte `bytecode`
 * pointer), every field from posX on would sit 4-8 bytes past where
 * func_800A19EC wrote it, and func_8009BA74/func_8009BFD4 -- compiled from
 * C in this build and handed these nodes through UnkParticle.unk5C /
 * func_8009BD3C's gn -- would read gn->xf and gn->vars off target.
 * Asserts pinning the shared offsets sit next to struct PcGenNode. */
typedef struct UnkGenerator {
    struct UnkGenerator *next;
    u16 generator_id;
    u16 flags;
    u8 bank_id;
    u8 kind;
    u16 texture_id;
    u16 particle_lifetime;
    u16 generator_lifetime;
    u32 bytecode;            /* host address as u32 (PcGenNode.unk10) */
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
#else
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
#endif

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
#include <stdlib.h> /* realloc, for func_8009B768's host-side bank tables */
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
/* LP64 size of the generator/emitter free-list node (N64: 0x78). The two
 * widened pointers at N64 +0x48/+0x4C push the +0x50..+0x77 tail to
 * +0x60..+0x87; struct PcGenNode (func_800A19EC's arm) asserts this. */
#define PC_GENNODE_SIZE 0x88
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
#ifdef PORT
    /* arg0 is a generator node; on LP64 the emitter slot is +0x58 and the
     * generator id +0x8 (struct PcGenNode below, locked by
     * pc_gennode_check). The N64 +0x4C write landed across unk44 and the
     * DObj pointer. */
    *(UnkEmitter **)((u8 *)arg0 + 0x58) = func_8009B5E8(arg1, *(u16 *)((u8 *)arg0 + 8));
#else
    *(UnkEmitter **)((u8 *)arg0 + 0x4C) = func_8009B5E8(arg1, *(u16 *)((u8 *)arg0 + 4));
#endif
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
 * sites.
 *
 * THE TABLES MUST NOT COME FROM gtlMalloc. This function runs during asset-
 * bank loading, i.e. AFTER func_800A8724 has seeded the asset-cache pools
 * from gDynamicBuffer2.top..poolEnd (func_800A82C0 claims that span without
 * advancing gDynamicBuffer2.top -- the last pool's size is -1, "everything
 * left"). The N64 body below allocates NOTHING here (it relocates in place),
 * so on hardware no gtlMalloc ever happens after the seed. The first version
 * of this arm did gtlMalloc the two tables, and mlAlloc handed back the
 * bytes the cache pools were built in: on the 1-1 level load six banks'
 * tables landed exactly over pools 0/1/2 (pool 1's header at arena+0x2be3a0
 * held texture-table entries when it crashed) and the first func_800A8358
 * walk relinked through blob pointers and segfaulted. Host-side per-bank
 * buffers have the same lifetime the tables need (rebuilt on every bank
 * (re)load, contents stale only while the matching count is stale too) and
 * zero interaction with the game heap. */
void func_8009B768(s32 bank_id, UnkScriptDesc *script_desc, UnkTextureDesc *texture_desc) {
    static UnkScript **sScriptTbl[8];
    static UnkTexture **sTextureTbl[8];
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

    stbl = sScriptTbl[bank_id] =
        realloc(sScriptTbl[bank_id], (size_t)D_800D6A38[bank_id] * sizeof(UnkScript *));
    for (i = 0; i < D_800D6A38[bank_id]; i++) {
        stbl[i] = (UnkScript *)((u8 *)script_desc + pc_be32(script_desc->scripts[i]));
    }
    D_800D6A78[bank_id] = stbl;

    ttbl = sTextureTbl[bank_id] =
        realloc(sTextureTbl[bank_id], (size_t)D_800D6A58[bank_id] * sizeof(UnkTexture *));
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

/* RE-FOUNDATION STATUS, func_8009C4E0 -- BLOCKED, not attempted as a draft.
 * 2394 instructions, the largest function in this overlay (the particle
 * bytecode interpreter). Same two blockers as func_8009E8F4 below: the m2c
 * sketch is `? *`-typed at the signature and `void *`-plus-`->unkNN`
 * throughout, so it neither compiles nor scores, and the real work is naming
 * the opcode records it walks before any matching attempt is meaningful.
 * The PORT arm is the asm-derived semantic reference for the opcode set. */
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
#elif defined(PORT)
/* PORT: the particle bytecode interpreter, hand-ported from
 * asm/nonmatchings/ovl1/ovl1/func_8009C4E0.s. The m2c sketch above is close
 * but re-derived against the raw asm because it garbles several regions:
 *  - jtbl_800D5664 covers opcodes 0x80..0xFF; groups 0x80/0x88/0x90/0x98
 *    dispatch on op&0xF8 (low 3 bits = xyz component flags) and 0xC0/0xD0
 *    on op&0xF0 (low 4 bits = rgba channel flags) -- the sketch's dispatch
 *    prologue is right but its `default:` placement is not.
 *  - the 0xBA/0xBB/0xE0 colour-delta immediates are ALL read with lb
 *    (SIGNED bytes, then <<1); the sketch types half of them unsigned.
 *  - the sketch's `u32 -> f32 += 4294967296.0f` fix-ups come from lbu/lhu
 *    loads (values 0..0xFFFF), so they can never fire and are dropped.
 *  - 0xBC's `var_s1->unk-1` is simply the operand's second byte.
 *  - the old draft's 3-arg func_8009C18C calls in 0xC0/0xD0 were phantom
 *    arguments; the asm passes exactly (cursor, &duration).
 *
 * BYTE ORDER: pc->unk18 points at RAW BIG-ENDIAN ROM bytecode. Provenance
 * verified: func_8009BC4C/func_8009BE54 pass UnkScript.bytecode out of the
 * bank tables that the PORT func_8009B768 rebuilds (its header comment
 * pins that UnkScript interiors keep cartridge byte order), and the
 * generator path stores `(u8 *)script + 0x3C` into PcGenNode.unk10 in
 * func_800A19EC's PORT arm before func_800A09AC feeds it to func_8009BD3C.
 * None of it is gen_data-widened .data. So u8 opcodes are read directly,
 * and the embedded u16/f32 immediates are decoded big-endian explicitly
 * (the N64 reads even the f32s byte-wise via func_8009C154 -- no alignment
 * of the cursor anywhere, which is replicated here). func_8009C18C is
 * byte-oriented and endian-safe, so it is called as-is; func_8009C154 is
 * NOT usable on a little-endian host (it reassembles the bytes in memory
 * order), hence the local big-endian reader below.
 *
 * D_800D6A14/D_800D6A18 are the widened 4-byte-slot DObj tracking tables
 * (host addresses as u32, stored by func_800A0480); adjacency of the two
 * symbols is preserved by gen_data emitting them consecutively in
 * ovl1_ovl1.bss.c. lbreflect_Int16SinTable is native u16[] on the host. */
extern u16 lbreflect_Int16SinTable[];
extern u32 D_800D6A18[];
void *func_800A19EC(s32 arg0, s32 arg1);

/* Read one big-endian f32 immediate from the bytecode stream. */
static u8 *pc_c4e0_f32(u8 *csr, f32 *out) {
    union { u32 w; f32 f; } v;
    v.w = ((u32) csr[0] << 24) | ((u32) csr[1] << 16) | ((u32) csr[2] << 8) | (u32) csr[3];
    *out = v.f;
    return csr + 4;
}

/* sin via the shared 0x800-entry quarter-scaled table: index is the low 12
 * bits of (angle * 651.8986), bit 0x800 selects the negative half; cos is
 * sin(idx + 0x400). Values are 0..0x8000, scaled by 2^-15 by the caller. */
static f32 pc_c4e0_sin(s32 idx) {
    f32 v = (f32) lbreflect_Int16SinTable[idx & 0x7FF];
    return (idx & 0x800) ? -v : v;
}

UnkParticle *func_8009C4E0(UnkParticle *pc, UnkParticle *prev, s32 bank) {
    f32 tmp;

    if (pc->unk6 & 0x800) {
        return pc->next;
    }

    if (pc->unk10 != 0) {
        pc->unk10 -= 1;
        if (pc->unk10 == 0) {
            u8 *base = pc->unk18;
            u8 *csr = base + pc->unk1C;
            u16 wait;

            for (;;) {
                u8 op;
                u32 sel;

                op = *csr++;
                wait = 0;

                if (op < 0x80) {
                    /* wait opcode: low 5 bits = frame count, 0x20 = extended
                     * 13-bit count, 0x40 = inline texture-frame byte. */
                    wait = op & 0x1F;
                    if (op & 0x20) {
                        wait = (u16) ((wait << 8) + *csr++);
                    }
                    if ((op & 0xC0) == 0x40) {
                        pc->unkB = *csr++;
                    }
                } else {
                    sel = op & 0xF8;
                    if (sel >= 0x99) {
                        u32 hi = op & 0xF0;
                        sel = ((hi == 0xC0) || (hi == 0xD0)) ? hi : op;
                    }
                    switch (sel) {
                    case 0x80: /* set position components */
                        if (op & 1) { csr = pc_c4e0_f32(csr, &pc->unk24); }
                        if (op & 2) { csr = pc_c4e0_f32(csr, &pc->unk28); }
                        if (op & 4) { csr = pc_c4e0_f32(csr, &pc->unk2C); }
                        break;
                    case 0x88: /* add to position */
                        if (op & 1) { csr = pc_c4e0_f32(csr, &tmp); pc->unk24 += tmp; }
                        if (op & 2) { csr = pc_c4e0_f32(csr, &tmp); pc->unk28 += tmp; }
                        if (op & 4) { csr = pc_c4e0_f32(csr, &tmp); pc->unk2C += tmp; }
                        break;
                    case 0x90: /* set velocity components */
                        if (op & 1) { csr = pc_c4e0_f32(csr, &pc->unk30); }
                        if (op & 2) { csr = pc_c4e0_f32(csr, &pc->unk34); }
                        if (op & 4) { csr = pc_c4e0_f32(csr, &pc->unk38); }
                        break;
                    case 0x98: /* add to velocity */
                        if (op & 1) { csr = pc_c4e0_f32(csr, &tmp); pc->unk30 += tmp; }
                        if (op & 2) { csr = pc_c4e0_f32(csr, &tmp); pc->unk34 += tmp; }
                        if (op & 4) { csr = pc_c4e0_f32(csr, &tmp); pc->unk38 += tmp; }
                        break;
                    case 0xA0: /* size ramp: duration + target */
                        csr = func_8009C18C(csr, &pc->unk12);
                        csr = pc_c4e0_f32(csr, &pc->unk48);
                        if (pc->unk12 == 1) {
                            pc->unk12 = 0;
                            pc->unk44 = pc->unk48;
                        }
                        break;
                    case 0xA1: /* set flags byte */
                        pc->unk6 = *csr++;
                        break;
                    case 0xA2: /* set gravity (+flag 1 iff nonzero) */
                        csr = pc_c4e0_f32(csr, &pc->unk3C);
                        if (pc->unk3C == 0.0f) {
                            pc->unk6 &= ~1;
                        } else {
                            pc->unk6 |= 1;
                        }
                        break;
                    case 0xA3: /* set friction (+flag 2 iff != 1.0) */
                        csr = pc_c4e0_f32(csr, &pc->unk40);
                        if (pc->unk40 == 1.0f) {
                            pc->unk6 &= ~2;
                        } else {
                            pc->unk6 |= 2;
                        }
                        break;
                    case 0xA4: /* spawn child particle (inherits position) */
                    {
                        UnkParticle *child;
                        s32 id = (csr[0] << 8) + csr[1];

                        csr += 2;
                        child = func_8009BC4C(pc, pc->unk8, id);
                        if (child != NULL) {
                            child->unk24 = pc->unk24;
                            child->unk28 = pc->unk28;
                            child->unk2C = pc->unk2C;
                            child->unk4 = pc->unk4;
                            child->unk5C = pc->unk5C;
                            child->unk60 = pc->unk60;
                            if (child->unk60 != NULL) {
                                child->unk60->unk2A += 1;
                            }
                            func_8009C4E0(child, pc, pc->unk8 >> 3);
                        }
                        break;
                    }
                    case 0xA5: /* spawn generator at our position */
                    {
                        UnkGenerator *gen;
                        s32 id = (csr[0] << 8) + csr[1];

                        csr += 2;
                        gen = (UnkGenerator *) func_800A19EC(pc->unk8, id);
                        if (gen != NULL) {
                            gen->posX = pc->unk24;
                            gen->posY = pc->unk28;
                            gen->posZ = pc->unk2C;
                            gen->generator_id = pc->unk4;
                            gen->xf = pc->unk60;
                            if (gen->xf != NULL) {
                                gen->xf->unk2A += 1;
                            }
                        }
                        break;
                    }
                    case 0xA6: /* randomize remaining lifetime: lo + rand*range */
                    {
                        s32 lo = (csr[0] << 8) + csr[1];
                        s32 range = (csr[2] << 8) + csr[3];

                        csr += 4;
                        pc->unk22 = (u16) ((s32) (random_f32() * (f32) range) + lo);
                        break;
                    }
                    case 0xA7: /* percent-chance immediate death */
                    {
                        u8 chance = *csr++;

                        if ((s32) chance >= (s32) (random_f32() * 100.0f)) {
                            pc->unk22 = 1;
                            goto halt;
                        }
                        break;
                    }
                    case 0xA8: /* jitter position by +/- range per axis */
                        csr = pc_c4e0_f32(csr, &tmp);
                        pc->unk24 += (2.0f * tmp * random_f32()) - tmp;
                        csr = pc_c4e0_f32(csr, &tmp);
                        pc->unk28 += (2.0f * tmp * random_f32()) - tmp;
                        csr = pc_c4e0_f32(csr, &tmp);
                        pc->unk2C += (2.0f * tmp * random_f32()) - tmp;
                        break;
                    case 0xA9: /* random cone-scatter of velocity */
                        csr = pc_c4e0_f32(csr, &tmp);
                        func_8009C1C8(pc, tmp);
                        break;
                    case 0xAA: /* spawn child, random script id in [lo, lo+range) */
                    {
                        UnkParticle *child;
                        s32 lo = (csr[0] << 8) + csr[1];
                        s32 range = (csr[2] << 8) + csr[3];

                        csr += 4;
                        child = func_8009BC4C(pc, pc->unk8, lo + (s32) ((f32) range * random_f32()));
                        if (child != NULL) {
                            child->unk24 = pc->unk24;
                            child->unk28 = pc->unk28;
                            child->unk2C = pc->unk2C;
                            child->unk4 = pc->unk4;
                            child->unk5C = pc->unk5C;
                            child->unk60 = pc->unk60;
                            if (child->unk60 != NULL) {
                                child->unk60->unk2A += 1;
                            }
                            func_8009C4E0(child, pc, pc->unk8 >> 3);
                        }
                        break;
                    }
                    case 0xAB: /* scale velocity */
                        csr = pc_c4e0_f32(csr, &tmp);
                        pc->unk30 *= tmp;
                        pc->unk34 *= tmp;
                        pc->unk38 *= tmp;
                        break;
                    case 0xAC: /* size ramp with random extra target */
                        csr = func_8009C18C(csr, &pc->unk12);
                        csr = pc_c4e0_f32(csr, &pc->unk48);
                        csr = pc_c4e0_f32(csr, &tmp);
                        pc->unk48 += tmp * random_f32();
                        if (pc->unk12 == 1) {
                            pc->unk12 = 0;
                            pc->unk44 = pc->unk48;
                        }
                        break;
                    case 0xAD:
                        pc->unk6 |= 0x80;
                        break;
                    case 0xAE:
                        pc->unk6 &= ~0x60;
                        break;
                    case 0xAF:
                        pc->unk6 = (pc->unk6 & ~0x40) | 0x20;
                        break;
                    case 0xB0:
                        pc->unk6 = (pc->unk6 & ~0x20) | 0x40;
                        break;
                    case 0xB1:
                        pc->unk6 |= 0x60;
                        break;
                    case 0xB2:
                        pc->unk6 |= 0x200;
                        break;
                    case 0xB3:
                        pc->unk6 &= ~0x400;
                        break;
                    case 0xB4:
                        pc->unk6 |= 0x400;
                        break;
                    case 0xB5:
                        pc->unk6 |= 0x100;
                        break;
                    case 0xB6:
                        pc->unk6 &= ~0x100;
                        break;
                    case 0xB7: /* home velocity onto tracked DObj */
                    {
                        s32 idx = *csr++ + pc->unkD;

                        func_8009C350(pc, (DObj *) PC_BANKPTR(D_800D6A14[idx]));
                        break;
                    }
                    case 0xB8: /* accelerate toward tracked DObj */
                    {
                        s32 idx = csr[0] + pc->unkD;

                        csr = pc_c4e0_f32(csr + 1, &tmp);
                        func_8009C44C(pc, (DObj *) PC_BANKPTR(D_800D6A14[idx]), tmp);
                        break;
                    }
                    case 0xB9: /* spawn child (inherits position AND velocity) */
                    {
                        UnkParticle *child;
                        s32 id = (csr[0] << 8) + csr[1];

                        csr += 2;
                        child = func_8009BC4C(pc, pc->unk8, id);
                        if (child != NULL) {
                            child->unk24 = pc->unk24;
                            child->unk28 = pc->unk28;
                            child->unk2C = pc->unk2C;
                            child->unk30 = pc->unk30;
                            child->unk34 = pc->unk34;
                            child->unk38 = pc->unk38;
                            child->unk4 = pc->unk4;
                            child->unk5C = pc->unk5C;
                            child->unk60 = pc->unk60;
                            if (child->unk60 != NULL) {
                                child->unk60->unk2A += 1;
                            }
                            func_8009C4E0(child, pc, pc->unk8 >> 3);
                        }
                        break;
                    }
                    case 0xBA: /* random-walk target colour (signed deltas) */
                    {
                        s32 i;

                        for (i = 0; i < 4; i++) {
                            f32 d = (f32) ((s8) csr[i] * 2) * random_f32();
                            (&pc->unk50)[i] = (u8) (s32) ((f32) (&pc->unk50)[i] + d);
                        }
                        csr += 4;
                        if (pc->unk14 == 0) {
                            pc->unk4C = pc->unk50;
                            pc->unk4D = pc->unk51;
                            pc->unk4E = pc->unk52;
                            pc->unk4F = pc->unk53;
                        }
                        break;
                    }
                    case 0xBB: /* random-walk target env colour (signed deltas) */
                    {
                        s32 i;

                        u8 *env = (u8 *) &pc->unk58;

                        for (i = 0; i < 4; i++) {
                            f32 d = (f32) ((s8) csr[i] * 2) * random_f32();
                            env[i] = (u8) (s32) ((f32) env[i] + d);
                        }
                        csr += 4;
                        if (pc->unk16 == 0) {
                            pc->unk54 = env[0];
                            pc->unk55 = env[1];
                            pc->unk56 = env[2];
                            pc->unk57 = env[3];
                        }
                        break;
                    }
                    case 0xBC: /* texture frame = byte0, + rand*byte1 */
                        pc->unkB = csr[0];
                        tmp = (f32) csr[1];
                        tmp = tmp * random_f32();
                        pc->unkB = (u8) (s32) ((f32) pc->unkB + tmp);
                        csr += 2;
                        break;
                    case 0xBD: /* renormalize speed to base + rand*range */
                    {
                        f32 range;
                        f32 mag;

                        csr = pc_c4e0_f32(csr, &tmp);
                        csr = pc_c4e0_f32(csr, &range);
                        tmp += range * random_f32();
                        mag = sqrtf((pc->unk30 * pc->unk30) + (pc->unk34 * pc->unk34) + (pc->unk38 * pc->unk38));
                        if (mag > 0.00001f) {
                            tmp /= mag;
                            pc->unk30 *= tmp;
                            pc->unk34 *= tmp;
                            pc->unk38 *= tmp;
                        }
                        break;
                    }
                    case 0xBE: /* per-axis velocity scale */
                        csr = pc_c4e0_f32(csr, &tmp);
                        pc->unk30 *= tmp;
                        csr = pc_c4e0_f32(csr, &tmp);
                        pc->unk34 *= tmp;
                        csr = pc_c4e0_f32(csr, &tmp);
                        pc->unk38 *= tmp;
                        break;
                    case 0xBF: /* drive tracked-DObj slot from our position */
                        pc->unk6 = (u16) (pc->unk6 | 0x8000 | (((*csr++ + pc->unkD) - 1) << 0xC));
                        break;
                    case 0xC0: /* colour fade: duration + per-channel targets */
                    {
                        u8 *cur = &pc->unk4C;
                        u8 *tgt = &pc->unk50;

                        csr = func_8009C18C(csr, &pc->unk14);
                        tgt[0] = cur[0];
                        tgt[1] = cur[1];
                        tgt[2] = cur[2];
                        tgt[3] = cur[3];
                        if (op & 1) { pc->unk50 = *csr++; }
                        if (op & 2) { pc->unk51 = *csr++; }
                        if (op & 4) { pc->unk52 = *csr++; }
                        if (op & 8) { pc->unk53 = *csr++; }
                        if (pc->unk14 == 1) {
                            cur[0] = tgt[0];
                            cur[1] = tgt[1];
                            cur[2] = tgt[2];
                            cur[3] = tgt[3];
                            pc->unk14 = 0;
                        }
                        break;
                    }
                    case 0xD0: /* env colour fade: duration + per-channel targets */
                    {
                        u8 *cur = &pc->unk54;
                        u8 *tgt = (u8 *) &pc->unk58;

                        csr = func_8009C18C(csr, &pc->unk16);
                        tgt[0] = cur[0];
                        tgt[1] = cur[1];
                        tgt[2] = cur[2];
                        tgt[3] = cur[3];
                        if (op & 1) { tgt[0] = *csr++; }
                        if (op & 2) { tgt[1] = *csr++; }
                        if (op & 4) { tgt[2] = *csr++; }
                        if (op & 8) { tgt[3] = *csr++; }
                        if (pc->unk16 == 1) {
                            cur[0] = tgt[0];
                            cur[1] = tgt[1];
                            cur[2] = tgt[2];
                            cur[3] = tgt[3];
                            pc->unk16 = 0;
                        }
                        break;
                    }
                    case 0xE0: /* random-walk BOTH colour targets together */
                    {
                        s32 i;

                        u8 *env = (u8 *) &pc->unk58;

                        for (i = 0; i < 4; i++) {
                            f32 d = random_f32() * (f32) ((s8) csr[i] * 2);
                            (&pc->unk50)[i] = (u8) (s32) ((f32) (&pc->unk50)[i] + d);
                            env[i] = (u8) (s32) ((f32) env[i] + d);
                        }
                        csr += 4;
                        if (pc->unk14 == 0) {
                            pc->unk4C = pc->unk50;
                            pc->unk4D = pc->unk51;
                            pc->unk4E = pc->unk52;
                            pc->unk4F = pc->unk53;
                        }
                        if (pc->unk16 == 0) {
                            pc->unk54 = env[0];
                            pc->unk55 = env[1];
                            pc->unk56 = env[2];
                            pc->unk57 = env[3];
                        }
                        break;
                    }
                    case 0xE2:
                        pc->unk6 |= 8;
                        break;
                    case 0xE3:
                        pc->unkC = *csr++;
                        break;
                    case 0xFA: /* loop start, count byte */
                        pc->unk9 = *csr++;
                        pc->unk20 = (u16) (csr - base);
                        break;
                    case 0xFB: /* loop back while --count != 0 */
                        pc->unk9 -= 1;
                        if (pc->unk9 != 0) {
                            csr = base + pc->unk20;
                        }
                        break;
                    case 0xFC: /* set return point */
                        pc->unk1E = (u16) (csr - base);
                        break;
                    case 0xFD: /* jump to return point */
                        csr = base + pc->unk1E;
                        break;
                    case 0xFE:
                    case 0xFF: /* end: die this frame */
                        pc->unk22 = 1;
                        goto halt;
                    default:
                        break;
                    }
                }

                if (wait != 0) {
                    break;
                }
            }
halt:
            pc->unk1C = (u16) (csr - base);
            pc->unk10 = wait;
        }
    }

    /* size interpolation toward unk48 over unk12 frames */
    if (pc->unk12 != 0) {
        pc->unk44 = pc->unk44 + ((pc->unk48 - pc->unk44) / (f32) pc->unk12);
        pc->unk12 -= 1;
    }
    /* fixed-point colour fades (16.16 steps of 0x10000/frames) */
    if (pc->unk14 != 0) {
        s32 step = 0x10000 / pc->unk14;

        pc->unk4C = (u8) (((pc->unk4C << 0x10) + ((pc->unk50 - pc->unk4C) * step)) >> 0x10);
        pc->unk4D = (u8) (((pc->unk4D << 0x10) + ((pc->unk51 - pc->unk4D) * step)) >> 0x10);
        pc->unk4E = (u8) (((pc->unk4E << 0x10) + ((pc->unk52 - pc->unk4E) * step)) >> 0x10);
        pc->unk4F = (u8) (((pc->unk4F << 0x10) + ((pc->unk53 - pc->unk4F) * step)) >> 0x10);
        pc->unk14 -= 1;
    }
    if (pc->unk16 != 0) {
        s32 step = 0x10000 / pc->unk16;
        u8 *env = (u8 *) &pc->unk58;

        pc->unk54 = (u8) (((pc->unk54 << 0x10) + ((env[0] - pc->unk54) * step)) >> 0x10);
        pc->unk55 = (u8) (((pc->unk55 << 0x10) + ((env[1] - pc->unk55) * step)) >> 0x10);
        pc->unk56 = (u8) (((pc->unk56 << 0x10) + ((env[2] - pc->unk56) * step)) >> 0x10);
        pc->unk57 = (u8) (((pc->unk57 << 0x10) + ((env[3] - pc->unk57) * step)) >> 0x10);
        pc->unk16 -= 1;
    }

    /* lifetime countdown; on expiry unlink, drop refs and free */
    pc->unk22 -= 1;
    if (pc->unk22 == 0) {
        UnkParticle *ret;
        UnkGenerator *gn;

        if (prev == NULL) {
            D_800D69C8[bank] = pc->next;
        } else {
            prev->next = pc->next;
        }
        gn = pc->unk5C;
        ret = pc->next;
        if ((gn != NULL) && (pc->unk6 & 4) && (gn->kind == 2)) {
            gn->vars.vortex.lifetime -= 1;
        }
        if (pc->unk60 != NULL) {
            pc->unk60->unk2A -= 1;
            if (pc->unk60->unk2A == 0) {
                /* may run the emitter's callback, which can relink the
                 * list head -- re-read it, exactly like the ROM does */
                func_8009B69C(pc->unk60);
                if (prev == NULL) {
                    ret = D_800D69C8[bank];
                }
            }
        }
        pc->next = D_800D69C0;
        D_800D69C0 = pc;
        D_800D6AE0 -= 1;
        return ret;
    }

    if (pc->unk6 & 4) {
        /* vortex mode: cylindrical orbit around the owning generator.
         * unk3C/unk40 are reused as Euler angles, unk30 as the orbit phase,
         * unk34 as the radial scale, unk38 as the height along the axis. */
        UnkGenerator *gn = pc->unk5C;
        f32 sinA, cosA, sinB, cosB, sinT, cosT, sinP, cosP;
        f32 r, t, h, fx, fz;
        s32 idx;

        idx = (s32) (pc->unk3C * 651.8986f) & 0xFFF;
        sinA = pc_c4e0_sin(idx);
        cosA = pc_c4e0_sin(idx + 0x400);
        idx = (s32) (pc->unk40 * 651.8986f) & 0xFFF;
        sinB = pc_c4e0_sin(idx);
        cosB = pc_c4e0_sin(idx + 0x400);
        cosA *= 0.000030517578f;
        sinA *= 0.000030517578f;
        cosB *= 0.000030517578f;
        sinB *= 0.000030517578f;

        pc->unk38 += gn->vars.rotate.base;

        r = gn->unk38;
        if (r < 0.0f) {
            r = -r;
        }
        t = gn->unk3C;
        if (t < 0.0f) {
            t = -t;
        }
        idx = (s32) (t * 651.8986f) & 0xFFF;
        sinT = pc_c4e0_sin(idx);
        cosT = pc_c4e0_sin(idx + 0x400);

        h = pc->unk38;
        r = r + (h * (sinT / cosT));
        r = r * pc->unk34;

        pc->unk30 += gn->gravity;
        idx = (s32) (pc->unk30 * 651.8986f) & 0xFFF;
        sinP = pc_c4e0_sin(idx);
        cosP = pc_c4e0_sin(idx + 0x400);

        r = r * 0.000030517578f;
        fx = r * cosP;
        fz = r * sinP;
        pc->unk24 = (fx * cosB) + (h * sinB) + gn->posX;
        pc->unk28 = (-fx * sinA * sinB) + (fz * cosA) + (h * sinA * cosB) + gn->posY;
        pc->unk2C = ((-fx * cosA * sinB) - (fz * sinA)) + (h * cosA * cosB) + gn->posZ;
    } else {
        if (pc->unk6 & 1) {
            pc->unk34 -= pc->unk3C;
        }
        if (pc->unk6 & 2) {
            pc->unk30 *= pc->unk40;
            pc->unk34 *= pc->unk40;
            pc->unk38 *= pc->unk40;
        }
        pc->unk24 += pc->unk30;
        pc->unk28 += pc->unk34;
        pc->unk2C += pc->unk38;
    }

    /* mirror our position into the tracked DObj selected by 0xBF */
    if (pc->unk6 & 0x8000) {
        DObj *dobj = (DObj *) PC_BANKPTR(D_800D6A18[(pc->unk6 & 0x7000) >> 0xC]);

        if (dobj != NULL) {
            dobj->pos.v.x = pc->unk24;
            dobj->pos.v.y = pc->unk28;
            dobj->pos.v.z = pc->unk2C;
        }
    }
    return pc->next;
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
/* RE-FOUNDATION STATUS, func_8009E8F4 -- BLOCKED, not attempted as a draft.
 * 1823 instructions (the 2D particle renderer: project, NDC-cull, load the
 * frame's texture and CI palette out of the D_800D6A98 banks, then emit a raw
 * RDP TEXRECT with prim-colour/combiner/render-mode tracking). Two reasons
 * this is not a time-boxed job, both concrete:
 *   1. The m2c sketch below does NOT compile and cannot be scored: it types
 *      every record as `void *` and then reads `->unkNN` off it -- 265 such
 *      references. Turning it into a draft means naming the particle, emitter
 *      and texture-header records first, which is the kind of type work the
 *      QUALITY BAR asks for and is worth doing on its own, before any
 *      matching attempt.
 *   2. At this size the first compile is worth nothing without those types:
 *      the frame alone is 0x350 with 12 saved registers and six saved FP
 *      pairs, so a mis-sized local block offsets the entire body.
 * What IS already solved and should be reused: the PORT arm below was
 * derived FROM this listing (not from the sketch) and documents the pipeline,
 * the bank/texture lookup, the power-of-two mask tables jtbl_800D58B4 /
 * jtbl_800D5930, and the emitter's cached mtx2/normX/normY path. The N64
 * spelling differs from it only in the usual places: 4-byte table strides,
 * s32 addresses, no pc_* helpers, and Gfx writes through the raw command
 * words rather than the host builder. */
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
#ifdef PORT
        /* The LP64 node no longer fits the N64's 0x78 bytes (see
         * PC_GENNODE_SIZE / struct PcGenNode at func_800A19EC). */
        p = gtlMalloc(PC_GENNODE_SIZE, 8);
#else
        p = gtlMalloc(0x78, 4);
#endif
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
/* FACTORY: DIFF 59/277 -- one saved-register permutation. The ROM holds the
 * accumulator matrix pointer in $s5 and the scratch matrix in $s4; IDO picks
 * them the other way round, and the `or $s3,$a2` copy lands one slot later
 * than the ROM's. Everything else -- frame 0xF8, both matrices at 0xB8/0x78,
 * all eight saved registers, f20/f22, the three DObj SRT blocks, the
 * dynamic-store record walk and the whole normalize/transform tail -- is the
 * ROM's, instruction for instruction. Measured levers, in order of value:
 * declaring the ACCUMULATOR matrix before the scratch one (later locals take
 * the lower addresses, so the declaration order is inverted from the frame
 * order) 261 -> 185; writing the kinds dispatch as a SWITCH with an explicit
 * empty `case 0` rather than an if/else-if chain 180 -> 79 (the switch is
 * what produces the ROM's `beql` chain; an if-chain emits bne + nop); and
 * dropping the `kind` temporary to switch on *kinds directly 79 -> 59, which
 * also fixed the frame (0x100 -> 0xF8). Solved semantics: the walk is up the
 * DObj parent chain to the sentinel parent == 1; per node scale (vs 1.0f),
 * rotation and translation (vs 0.0f) are folded in, then the optional
 * DObjDynamicStore at +0x4C contributes up to three records read in kinds[]
 * order from data at +4 with N64 record sizes 0x10 / 0x14 / 0x10 (kind 1
 * translate, 2 rotate, 3 scale) and applied in the REVERSE order
 * scale-rotate-translate; finally arg0 gets the accumulated translation row
 * and arg1 is rotated by the column-normalized basis. */
void func_800A0558(f32 *arg0, f32 *arg1, struct DObj *arg2) {
    void guMtxIdentF(f32 m[4][4]);
    void guMtxCatF(f32 m[4][4], f32 n[4][4], f32 r[4][4]);
    void HS64_MkScaleMtxF(f32 m[4][4], f32 x, f32 y, f32 z);
    void HS64_MkRotationMtxF(f32 m[4][4], f32 x, f32 y, f32 z);
    void HS64_MkTranslateMtxF(f32 m[4][4], f32 x, f32 y, f32 z);
    void guNormalize(f32 *x, f32 *y, f32 *z);
    f32 spB8[4][4];
    f32 sp78[4][4];
    struct DObj *node;
    OMMtxFloat3 *translate;
    OMMtxFloat4 *rotate;
    OMMtxFloat3 *scale;
    u8 *csr;
    u8 *kinds;
    s32 i;
    f32 vx;
    f32 vy;
    f32 vz;

    node = arg2;
    guMtxIdentF(spB8);
    do {
        if ((node->scale.v.x != 1.0f) || (node->scale.v.y != 1.0f) || (node->scale.v.z != 1.0f)) {
            HS64_MkScaleMtxF(sp78, node->scale.v.x, node->scale.v.y, node->scale.v.z);
            guMtxCatF(spB8, sp78, spB8);
        }
        if ((node->angle.v.x != 0.0f) || (node->angle.v.y != 0.0f) || (node->angle.v.z != 0.0f)) {
            HS64_MkRotationMtxF(sp78, node->angle.v.x, node->angle.v.y, node->angle.v.z);
            guMtxCatF(spB8, sp78, spB8);
        }
        if ((node->pos.v.x != 0.0f) || (node->pos.v.y != 0.0f) || (node->pos.v.z != 0.0f)) {
            HS64_MkTranslateMtxF(sp78, node->pos.v.x, node->pos.v.y, node->pos.v.z);
            guMtxCatF(spB8, sp78, spB8);
        }
        if (node->unk4C != NULL) {
            translate = NULL;
            scale = NULL;
            rotate = NULL;
            csr = (u8 *) node->unk4C + 4;
            i = 0;
            kinds = (u8 *) node->unk4C;
            do {
                i += 1;
                switch (*kinds) {
                case 0:
                    break;
                case 1:
                    translate = (OMMtxFloat3 *) csr;
                    csr += 0x10;
                    break;
                case 2:
                    rotate = (OMMtxFloat4 *) csr;
                    csr += 0x14;
                    break;
                case 3:
                    scale = (OMMtxFloat3 *) csr;
                    csr += 0x10;
                    break;
                }
                kinds += 1;
            } while (i != 3);
            if ((scale != NULL) && ((scale->v.x != 1.0f) || (scale->v.y != 1.0f) || (scale->v.z != 1.0f))) {
                HS64_MkScaleMtxF(sp78, scale->v.x, scale->v.y, scale->v.z);
                guMtxCatF(spB8, sp78, spB8);
            }
            if ((rotate != NULL) && ((rotate->v.x != 0.0f) || (rotate->v.y != 0.0f) || (rotate->v.z != 0.0f))) {
                HS64_MkRotationMtxF(sp78, rotate->v.x, rotate->v.y, rotate->v.z);
                guMtxCatF(spB8, sp78, spB8);
            }
            if ((translate != NULL) && ((translate->v.x != 0.0f) || (translate->v.y != 0.0f) || (translate->v.z != 0.0f))) {
                HS64_MkTranslateMtxF(sp78, translate->v.x, translate->v.y, translate->v.z);
                guMtxCatF(spB8, sp78, spB8);
            }
        }
        node = node->parent;
    } while (node != (struct DObj *) 1);
    arg0[0] = spB8[3][0];
    arg0[1] = spB8[3][1];
    arg0[2] = spB8[3][2];
    vy = arg1[1];
    vx = arg1[0];
    vz = arg1[2];
    guNormalize(&spB8[0][0], &spB8[1][0], &spB8[2][0]);
    guNormalize(&spB8[0][1], &spB8[1][1], &spB8[2][1]);
    guNormalize(&spB8[0][2], &spB8[1][2], &spB8[2][2]);
    arg1[0] = (spB8[2][0] * vz) + ((spB8[0][0] * vx) + (spB8[1][0] * vy));
    arg1[1] = (spB8[2][1] * vz) + ((spB8[0][1] * vx) + (spB8[1][1] * vy));
    arg1[2] = (spB8[2][2] * vz) + ((spB8[0][2] * vx) + (spB8[1][2] * vy));
}
#elif defined(PORT)
/* Accumulate the local transform of arg2's DObj chain (chain roots carry
 * the sentinel parent == 1, same as the emitter-track walkers above):
 * per node scale * rotation * translation from the DObj itself, then the
 * optional DObjDynamicStore records in kinds[] order -- native record
 * sizes, exactly as omDObjAddMtx walks them in object_manager.c. arg0
 * gets the accumulated translation row; arg1 is transformed in place by
 * the three column-normalized basis vectors (row-vector convention). */
#include "main/lbmatrix.h"

void func_800A0558(f32 *arg0, f32 *arg1, struct DObj *arg2) {
    Mat4 acc;
    Mat4 tmp;
    struct DObj *node = arg2;
    f32 vx, vy, vz;

    guMtxIdentF(acc);
    do {
        if (node->scale.v.x != 1.0f || node->scale.v.y != 1.0f || node->scale.v.z != 1.0f) {
            HS64_MkScaleMtxF(tmp, node->scale.v.x, node->scale.v.y, node->scale.v.z);
            guMtxCatF(acc, tmp, acc);
        }
        if (node->angle.v.x != 0.0f || node->angle.v.y != 0.0f || node->angle.v.z != 0.0f) {
            HS64_MkRotationMtxF(tmp, node->angle.v.x, node->angle.v.y, node->angle.v.z);
            guMtxCatF(acc, tmp, acc);
        }
        if (node->pos.v.x != 0.0f || node->pos.v.y != 0.0f || node->pos.v.z != 0.0f) {
            HS64_MkTranslateMtxF(tmp, node->pos.v.x, node->pos.v.y, node->pos.v.z);
            guMtxCatF(acc, tmp, acc);
        }
        if (node->unk4C != NULL) {
            uintptr_t csr = (uintptr_t) node->unk4C->data;
            OMMtxFloat3 *translate = NULL;
            OMMtxFloat4 *rotate = NULL;
            OMMtxFloat3 *scale = NULL;
            s32 i;

            for (i = 0; i < 3; i++) {
                switch (node->unk4C->kinds[i]) {
                    case 0:
                        break;
                    case 1:
                        translate = (OMMtxFloat3 *) csr;
                        csr += sizeof(OMMtxFloat3);
                        break;
                    case 2:
                        rotate = (OMMtxFloat4 *) csr;
                        csr += sizeof(OMMtxFloat4);
                        break;
                    case 3:
                        scale = (OMMtxFloat3 *) csr;
                        csr += sizeof(OMMtxFloat3);
                        break;
                }
            }
            if (scale != NULL && (scale->v.x != 1.0f || scale->v.y != 1.0f || scale->v.z != 1.0f)) {
                HS64_MkScaleMtxF(tmp, scale->v.x, scale->v.y, scale->v.z);
                guMtxCatF(acc, tmp, acc);
            }
            if (rotate != NULL && (rotate->v.x != 0.0f || rotate->v.y != 0.0f || rotate->v.z != 0.0f)) {
                HS64_MkRotationMtxF(tmp, rotate->v.x, rotate->v.y, rotate->v.z);
                guMtxCatF(acc, tmp, acc);
            }
            if (translate != NULL && (translate->v.x != 0.0f || translate->v.y != 0.0f || translate->v.z != 0.0f)) {
                HS64_MkTranslateMtxF(tmp, translate->v.x, translate->v.y, translate->v.z);
                guMtxCatF(acc, tmp, acc);
            }
        }
        node = node->parent;
    } while (node != (struct DObj *) 1);

    arg0[0] = acc[3][0];
    arg0[1] = acc[3][1];
    arg0[2] = acc[3][2];
    vx = arg1[0];
    vy = arg1[1];
    vz = arg1[2];
    guNormalize(&acc[0][0], &acc[1][0], &acc[2][0]);
    guNormalize(&acc[0][1], &acc[1][1], &acc[2][1]);
    guNormalize(&acc[0][2], &acc[1][2], &acc[2][2]);
    arg1[0] = (acc[2][0] * vz) + ((acc[0][0] * vx) + (acc[1][0] * vy));
    arg1[1] = (acc[2][1] * vz) + ((acc[0][1] * vx) + (acc[1][1] * vy));
    arg1[2] = (acc[2][2] * vz) + ((acc[0][2] * vx) + (acc[1][2] * vy));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A0558.s")
#endif

#ifdef PORT
/* PORT: the LP64 shape of the D_800D6A0C live / D_800D6A08 free generator
 * nodes, shared by func_800A09AC (below), func_800A19EC and func_800A2080
 * (their arms further down). Same widening rule struct Ovl1PNode and struct
 * Pc2550Obj already use: the 8-byte `next` shifts the scalar block by +4,
 * the two pointers at N64 +0x48/+0x4C widen to +0x50/+0x58, and the N64
 * +0x50..+0x77 tail lands at +0x60..+0x87. func_800A04B8's PORT branch
 * sizes the pool nodes at PC_GENNODE_SIZE so the widened tail fits. */
#include "unk_structs/D_800D79D8.h" /* camera overlay: D_800D6A10's pointee */

struct PcGenNode {
    /* 0x00 */ struct PcGenNode *next;
    /* 0x08 */ u16 unk4;                 /* generator id (func_800A194C) */
    /* 0x0A */ u16 unk6;                 /* flags (N64 +0x06) */
    /* 0x0C */ u8 unk8;
    /* 0x0D */ u8 unk9;                  /* kind */
    /* 0x0E */ u8 unkA;
    /* 0x0F */ u8 unkB;                  /* texture id byte */
    /* 0x10 */ u16 unkC;                 /* particle lifetime */
    /* 0x12 */ u16 unkE;                 /* generator lifetime */
    /* 0x14 */ u32 unk10;                /* bytecode, host address as u32 */
    /* 0x18 */ f32 unk14, unk18, unk1C;  /* position (N64 +0x14..) */
    /* 0x24 */ f32 unk20, unk24, unk28;  /* velocity */
    /* 0x30 */ f32 unk2C, unk30, unk34;  /* gravity, friction, size */
    /* 0x3C */ f32 unk38, unk3C;
    /* 0x44 */ f32 unk40;                /* update rate */
    /* 0x48 */ f32 unk44;                /* frame */
    /* 0x50 */ struct DObj *unk48;
    /* 0x58 */ UnkEmitter *unk4C;
    /* 0x60 */ f32 unk50;
    /* 0x64 */ union { f32 f; u16 hw; } unk54; /* kind 2 (vortex) stores the
                                                * u16 -- Ovl1PNode.unk54 */
    /* 0x68 */ f32 unk58, unk5C, unk60, unk64, unk68, unk6C, unk70;
    /* 0x84 */ u16 unk74;                /* kind 5 sign flags */
};
typedef char pc_gennode_check[
    (__builtin_offsetof(struct PcGenNode, unk4) == 8 &&
     __builtin_offsetof(struct PcGenNode, unk9) == 13 &&
     __builtin_offsetof(struct PcGenNode, unkE) == 18 &&
     __builtin_offsetof(struct PcGenNode, unk14) == 24 &&
     __builtin_offsetof(struct PcGenNode, unk40) == 68 &&
     __builtin_offsetof(struct PcGenNode, unk48) == 80 &&
     __builtin_offsetof(struct PcGenNode, unk4C) == 88 &&
     __builtin_offsetof(struct PcGenNode, unk50) == 96 &&
     __builtin_offsetof(struct PcGenNode, unk54) == 100 &&
     __builtin_offsetof(struct PcGenNode, unk74) == 132 &&
     sizeof(struct PcGenNode) == PC_GENNODE_SIZE) ? 1 : -1];
/* The PORT UnkGenerator overlay (top of file) names these same nodes when
 * they cross into func_8009BA74/func_8009BFD4 via func_8009BD3C's gn and
 * UnkParticle.unk5C; both views must agree on every shared field. */
typedef char pc_gennode_ungen_check[
    (__builtin_offsetof(UnkGenerator, generator_id) ==
         __builtin_offsetof(struct PcGenNode, unk4) &&
     __builtin_offsetof(UnkGenerator, kind) ==
         __builtin_offsetof(struct PcGenNode, unk9) &&
     __builtin_offsetof(UnkGenerator, generator_lifetime) ==
         __builtin_offsetof(struct PcGenNode, unkE) &&
     __builtin_offsetof(UnkGenerator, bytecode) ==
         __builtin_offsetof(struct PcGenNode, unk10) &&
     __builtin_offsetof(UnkGenerator, update_rate) ==
         __builtin_offsetof(struct PcGenNode, unk40) &&
     __builtin_offsetof(UnkGenerator, dobj) ==
         __builtin_offsetof(struct PcGenNode, unk48) &&
     __builtin_offsetof(UnkGenerator, xf) ==
         __builtin_offsetof(struct PcGenNode, unk4C) &&
     __builtin_offsetof(UnkGenerator, vars) ==
         __builtin_offsetof(struct PcGenNode, unk50) &&
     __builtin_offsetof(UnkGenerator, vars.vortex.lifetime) ==
         __builtin_offsetof(struct PcGenNode, unk54)) ? 1 : -1];

extern struct Ovl1ParticleNode *D_800D6AF0;
extern void (*D_800D6AD8)();
void func_800A0558(f32 *, f32 *, struct DObj *);
#endif /* PORT */
#ifdef MIPS_TO_C
/* FACTORY: DIFF 1014/1025. The draft is semantically complete and readable
 * (named locals, documented struct views, no m2c artifacts), but it does not
 * line up yet: IDO builds a 0x1A0 frame against the ROM's 0x148 and takes a
 * ninth callee-saved register ($s8, which it uses to hold the constant 4
 * from the kind 3/4 test), so every save, every spill slot and every
 * register name is offset from instruction 0. Slot COUNT is already right
 * (49 vs the ROM's 51); it is the ~22 extra words of spill space that are
 * wrong, i.e. too many simultaneously live named values in the emission
 * block. Measured: reading the process GObj's flag word inline instead of
 * caching arg0 in a local removes one saved register, and inlining the three
 * world-position expressions into the func_8009BD3C call was worth 22
 * instructions of frame. Getting the rest almost certainly means expressing
 * the yaw/pitch basis with fewer live temporaries -- that is a permuter job.
 * Solved semantics, all read off the listing: the sweep divisor is
 * (f32)(s32)frame (the ROM's trunc.w.s), not the raw accumulator; every
 * func_8009BD3C call passes exactly (trackId, flags, textureIndex, bytecode,
 * particleLifetime, pos xyz, vel xyz, size, gravity, friction, 0, gen) --
 * the m2c sketch's kind-0/1 calls carry two leftover registers in front of
 * that; kind 2 passes the yaw/pitch pair in the size/gravity slots and ORs
 * flag 4; the aim-at-camera bit is byte 0x8 bit 0 and reads the eye at
 * camera+0x3C; kind 5's per-axis sign flags are the halfword at +0x74; and
 * a kind-2 vortex whose particle count is still nonzero is PARKED
 * (lifetime 1, rate 0) rather than recycled. Note that UnkGenerator's
 * declared names for bytes 0x8..0xB do not match how this function uses
 * them -- 0x8 is script flag bits, 0xA the track id, 0xB the texture index
 * -- which is why the draft reads those four bytes through a named view
 * instead of renaming the shared struct. */
/* Per-frame generator update: the process registered on the -7 GObj. Walks
 * the live generator list, advances each node's frame accumulator by its
 * update rate and, for every whole frame accumulated, emits one particle
 * shaped by the generator's kind. Dead nodes are recycled onto the free
 * list, except kind-2 vortex generators that still own particles, which are
 * parked (lifetime 1, rate 0) the same way func_800A1F30 parks them. */
void func_800A09AC(void *arg0) {
    /* Eye position of the camera D_800D6A10 points at (func_8009BA68 sets
     * it). Only the eye is read here, so it is viewed rather than pulling
     * unk_structs/D_800D79D8.h into this TU. */
    typedef struct GenCamera {
        /* 0x00 */ u8 pad0[0x3C];
        /* 0x3C */ f32 eyeX;
        /* 0x40 */ f32 eyeY;
        /* 0x44 */ f32 eyeZ;
    } GenCamera;
    /* UnkGenerator names bytes 0x8..0xB {bank_id, kind, texture_id}, but the
     * code treats 0x8 as the script's flag bits, 0xA as the emitter track id
     * and 0xB as the texture index -- read them through this view rather
     * than renaming the shared struct. */
    typedef struct GenIds {
        /* 0x08 */ u8 scriptFlags;
        /* 0x09 */ u8 kind;
        /* 0x0A */ u8 trackId;
        /* 0x0B */ u8 textureIndex;
    } GenIds;
    /* Kinds 5 and 8 carry a longer parameter tail than the `vars` union
     * describes: a 3x3 box (kind 5) or a cone/ring spec (kind 8) at +0x50,
     * with kind 5's per-axis sign flags as a halfword at +0x74. */
    typedef struct GenBox {
        /* 0x50 */ f32 axis[9];
        /* 0x74 */ u16 signFlags;
    } GenBox;
    extern struct Ovl1ParticleNode *D_800D6AF0;
    extern void (*D_800D6AD8)(UnkGenerator *, f32 *);
    void func_800A0558(f32 *outPos, f32 *inOutVel, struct DObj *node);
    UnkGenerator *gen;
    UnkGenerator *next;
    GenIds *ids;
    GenBox *box;
    GenCamera *camera;
    f32 world[3];
    f32 aim[3];
    f32 speed;
    f32 yaw;
    f32 sinYaw;
    f32 cosYaw;
    f32 sinPitch;
    f32 cosPitch;
    f32 sweepAngle;
    f32 sweepStep;
    f32 ringCos;
    f32 ringSin;
    f32 spreadAngle;
    f32 radius;
    f32 radiusFrac;
    f32 axial;
    f32 dirX;
    f32 dirY;
    f32 dirZ;
    f32 pitch;
    f32 tangential;
    f32 axialSpeed;
    f32 velTangX;
    f32 velTangZ;
    f32 velX;
    f32 velY;
    f32 velZ;
    f32 t;
    f32 lerp;
    f32 jitter;
    f32 posX;
    f32 posY;
    f32 posZ;

    gen = (UnkGenerator *) D_800D6A0C;
    D_800D6AF0 = NULL;
    if (gen == NULL) {
        return;
    }
    do {
        ids = (GenIds *) &gen->bank_id;
        box = (GenBox *) &gen->vars;
        /* The process GObj carries the per-bank pause bits in its flag
         * word, bits 16..31 (the shared declaration types arg0 void *). */
        if (((GObj *) arg0)->flags & (1 << ((ids->trackId >> 3) + 0x10))) {
            D_800D6AF0 = (struct Ovl1ParticleNode *) gen;
            gen = gen->next;
            continue;
        }
        if (gen->flags & 0x800) {
            D_800D6AF0 = (struct Ovl1ParticleNode *) gen;
            gen = gen->next;
            continue;
        }
        if (gen->update_rate < 0.0f) {
            gen->frame -= gen->update_rate;
        } else {
            gen->frame += random_f32() * gen->update_rate;
        }
        if (gen->frame >= 1.0f) {
            aim[0] = gen->velX;
            aim[1] = gen->velY;
            aim[2] = gen->velZ;
            if (gen->dobj != NULL) {
                func_800A0558(world, aim, gen->dobj);
                gen->posX = world[0];
                gen->posY = world[1];
                gen->posZ = world[2];
            }
            /* A negative spread sweeps this frame's emissions evenly across
             * the arc instead of randomizing each one. */
            if (gen->unk3C < 0.0f) {
                switch (ids->kind) {
                case 0:
                case 3:
                case 4:
                    sweepStep = (gen->vars.rotate.target - gen->vars.rotate.base) / (f32) (s32) gen->frame;
                    sweepAngle = (random_f32() * sweepStep) + gen->vars.rotate.base;
                    break;
                case 6:
                case 7:
                    sweepStep = (gen->vars.rotate.target - gen->vars.rotate.base) / (f32) (s32) gen->frame;
                    sweepAngle = (random_f32() * sweepStep) + gen->vars.rotate.base;
                    break;
                default:
                    sweepAngle = random_f32() * 6.2831855f;
                    sweepStep = 6.2831855f / (f32) (s32) gen->frame;
                    break;
                }
            }
        }
        if (gen->frame >= 1.0f) {
            do {
                switch (ids->kind) {
                case 0: /* cone */
                case 3: /* disk, sqrt-uniform, velocity scaled by radius */
                case 4: /* disk, sqrt-uniform */
                case 6: /* cylinder shell */
                case 7: /* cylinder */
                    dirY = aim[1];
                    if (ids->scriptFlags & 1) {
                        /* Aim at the camera instead of along the velocity. */
                        camera = (GenCamera *) D_800D6A10;
                        dirX = camera->eyeX - gen->posX;
                        dirY = camera->eyeY - gen->posY;
                        dirZ = camera->eyeZ - gen->posZ;
                        speed = sqrtf((aim[0] * aim[0]) + (aim[1] * aim[1]) + (aim[2] * aim[2]));
                    } else {
                        dirZ = aim[2];
                        dirX = aim[0];
                        speed = sqrtf((aim[0] * aim[0]) + (dirY * dirY) + (dirZ * dirZ));
                    }
                    yaw = atan2f(dirY, dirZ);
                    sinYaw = sinf(yaw);
                    cosYaw = cosf(yaw);
                    pitch = atan2f(dirX, (dirY * sinYaw) + (dirZ * cosYaw));
                    sinPitch = sinf(pitch);
                    cosPitch = cosf(pitch);
                    if (gen->unk38 < 0.0f) {
                        radiusFrac = 1.0f;
                        radius = -gen->unk38;
                    } else {
                        radiusFrac = random_f32();
                        if ((ids->kind == 3) || (ids->kind == 4)) {
                            radiusFrac = sqrtf(radiusFrac);
                        }
                        radius = gen->unk38 * radiusFrac;
                    }
                    switch (ids->kind) {
                    case 6:
                        if (gen->unk3C < 0.0f) {
                            sweepAngle += sweepStep;
                            spreadAngle = (1.5707964f - atan2f(gen->vars.move.z, radius)) - gen->unk3C;
                        } else {
                            sweepAngle = (random_f32() * (gen->vars.rotate.target - gen->vars.rotate.base)) +
                                         gen->vars.rotate.base;
                            spreadAngle = (1.5707964f - atan2f(gen->vars.move.z, radius)) + gen->unk3C;
                        }
                        break;
                    case 7:
                        if (gen->unk3C < 0.0f) {
                            sweepAngle += sweepStep;
                            spreadAngle = 1.5707964f - gen->unk3C;
                        } else {
                            sweepAngle = (random_f32() * (gen->vars.rotate.target - gen->vars.rotate.base)) +
                                         gen->vars.rotate.base;
                            spreadAngle = gen->unk3C + 1.5707964f;
                        }
                        break;
                    default:
                        if (gen->unk3C < 0.0f) {
                            spreadAngle = -gen->unk3C;
                            sweepAngle += sweepStep;
                        } else {
                            sweepAngle = (random_f32() * (gen->vars.rotate.target - gen->vars.rotate.base)) +
                                         gen->vars.rotate.base;
                            spreadAngle = radiusFrac * gen->unk3C;
                        }
                        break;
                    }
                    ringCos = cosf(sweepAngle) * radius;
                    ringSin = sinf(sweepAngle) * radius;
                    if ((ids->kind == 6) || (ids->kind == 7)) {
                        t = random_f32();
                        if (ids->kind == 6) {
                            ringCos *= 1.0f - t;
                            ringSin *= 1.0f - t;
                        }
                        axial = t * gen->vars.move.z;
                    } else {
                        axial = 0.0f;
                    }
                    tangential = sinf(spreadAngle) * speed;
                    velTangX = cosf(sweepAngle) * tangential;
                    velTangZ = sinf(sweepAngle) * tangential;
                    axialSpeed = cosf(spreadAngle) * speed;
                    /* Local (a, b, c) -> world through the yaw/pitch basis. */
                    velX = (velTangX * cosPitch) + (axialSpeed * sinPitch);
                    velY = (-velTangX * sinYaw * sinPitch) + (velTangZ * cosYaw) +
                           (axialSpeed * sinYaw * cosPitch);
                    velZ = ((-velTangX * cosYaw * sinPitch) - (velTangZ * sinYaw)) +
                           (axialSpeed * cosYaw * cosPitch);
                    if (ids->kind == 3) {
                        velX *= radiusFrac;
                        velY *= radiusFrac;
                        velZ *= radiusFrac;
                    }
                    func_8009BD3C(ids->trackId, gen->flags, ids->textureIndex, gen->bytecode,
                                  gen->particle_lifetime,
                                  (ringCos * cosPitch) + (axial * sinPitch) + gen->posX,
                                  (-ringCos * sinYaw * sinPitch) + (ringSin * cosYaw) +
                                      (axial * sinYaw * cosPitch) + gen->posY,
                                  ((-ringCos * cosYaw * sinPitch) - (ringSin * sinYaw)) +
                                      (axial * cosYaw * cosPitch) + gen->posZ,
                                  velX, velY, velZ,
                                  gen->size, gen->gravity, gen->friction, 0, gen);
                    break;
                case 1: /* segment: lerp between the node and vars.move */
                    lerp = random_f32();
                    posX = gen->posX;
                    posY = gen->posY;
                    posZ = gen->posZ;
                    func_8009BD3C(ids->trackId, gen->flags, ids->textureIndex, gen->bytecode,
                                  gen->particle_lifetime,
                                  posX + (lerp * (gen->vars.move.x - posX)),
                                  posY + (lerp * (gen->vars.move.y - posY)),
                                  posZ + (lerp * (gen->vars.move.z - posZ)),
                                  aim[0], aim[1], aim[2], gen->size, gen->gravity, gen->friction, 0, gen);
                    break;
                case 2: /* vortex: the particle carries the angles, not a position */
                    yaw = atan2f(aim[1], aim[2]);
                    sinYaw = sinf(yaw);
                    pitch = atan2f(aim[0], (aim[1] * sinYaw) + (aim[2] * cosf(yaw)));
                    speed = sqrtf((aim[0] * aim[0]) + (aim[1] * aim[1]) + (aim[2] * aim[2]));
                    if (gen->unk38 < 0.0f) {
                        radiusFrac = 1.0f;
                    } else {
                        radiusFrac = random_f32();
                    }
                    if (gen->unk3C < 0.0f) {
                        sweepAngle += sweepStep;
                    } else {
                        sweepAngle = random_f32() * 6.2831855f;
                    }
                    gen->vars.vortex.f = speed;
                    if (func_8009BD3C(ids->trackId, gen->flags | 4, ids->textureIndex, gen->bytecode,
                                      gen->particle_lifetime, 0.0f, 0.0f, 0.0f, sweepAngle, radiusFrac,
                                      0.0f, gen->size, yaw, pitch, 0, gen) != 0) {
                        gen->vars.vortex.lifetime++;
                    }
                    break;
                case 5: /* box: three independent axes, optionally edge-only */
                    posX = gen->posX;
                    posY = gen->posY;
                    posZ = gen->posZ;
                    if (box->signFlags & 1) {
                        jitter = (random_f32() > 0.5f) ? 0.5f : -0.5f;
                    } else {
                        jitter = random_f32() - 0.5f;
                    }
                    posX += box->axis[0] * jitter;
                    posY += box->axis[1] * jitter;
                    posZ += box->axis[2] * jitter;
                    if (box->signFlags & 2) {
                        jitter = (random_f32() > 0.5f) ? 0.5f : -0.5f;
                    } else {
                        jitter = random_f32() - 0.5f;
                    }
                    posX += box->axis[3] * jitter;
                    posY += box->axis[4] * jitter;
                    posZ += box->axis[5] * jitter;
                    if (box->signFlags & 4) {
                        jitter = (random_f32() > 0.5f) ? 0.5f : -0.5f;
                    } else {
                        jitter = random_f32() - 0.5f;
                    }
                    func_8009BD3C(ids->trackId, gen->flags, ids->textureIndex, gen->bytecode,
                                  gen->particle_lifetime,
                                  posX + (box->axis[6] * jitter),
                                  posY + (box->axis[7] * jitter),
                                  posZ + (box->axis[8] * jitter),
                                  aim[0], aim[1], aim[2], gen->size, gen->gravity, gen->friction, 0, gen);
                    break;
                case 8: /* sphere sector aimed by the stored yaw/pitch spec */
                    radiusFrac = sqrtf(random_f32());
                    t = random_f32() * 6.2831855f;
                    if (box->axis[4] == 0.0f) {
                        yaw = random_f32() * 6.2831855f;
                    } else {
                        yaw = (cosf(t) * radiusFrac * box->axis[4]) + box->axis[3];
                    }
                    if (box->axis[2] == 0.0f) {
                        pitch = (1.0f - sqrtf(random_f32())) * 1.5707964f;
                        if (random_f32() < 0.5f) {
                            pitch = -pitch;
                        }
                    } else {
                        pitch = (sinf(t) * radiusFrac * box->axis[2]) + box->axis[1];
                    }
                    if (gen->unk38 < 0.0f) {
                        radius = -gen->unk38;
                        speed = box->axis[0] / radius;
                    } else {
                        speed = box->axis[0] / gen->unk38;
                        radius = gen->unk38 * random_f32();
                    }
                    sweepAngle = t;
                    posX = cosf(pitch) * (radius * cosf(yaw));
                    posY = sinf(pitch) * radius;
                    posZ = cosf(pitch) * (radius * sinf(yaw));
                    func_8009BD3C(ids->trackId, gen->flags, ids->textureIndex, gen->bytecode,
                                  gen->particle_lifetime, gen->posX + posX, gen->posY + posY,
                                  gen->posZ + posZ, posX * speed, posY * speed, posZ * speed,
                                  gen->size, gen->gravity, gen->friction, 0, gen);
                    break;
                default:
                    if (D_800D6AD8 != NULL) {
                        D_800D6AD8(gen, aim);
                    }
                    break;
                }
                gen->frame -= 1.0f;
            } while (gen->frame >= 1.0f);
        }
        if ((gen->generator_lifetime != 0) && (gen->generator_lifetime-- , gen->generator_lifetime == 0)) {
            if ((ids->kind == 2) && (gen->vars.vortex.lifetime != 0)) {
                /* Still owns particles: park it instead of freeing. */
                gen->generator_lifetime = 1;
                gen->update_rate = 0.0f;
                D_800D6AF0 = (struct Ovl1ParticleNode *) gen;
                gen = gen->next;
                continue;
            }
            if (D_800D6AF0 == NULL) {
                D_800D6A0C = (struct Ovl1ParticleNode *) gen->next;
            } else {
                *(UnkGenerator **) D_800D6AF0 = gen->next;
            }
            next = gen->next;
            if (gen->xf != NULL) {
                gen->xf->unk2A--;
                if (gen->xf->unk2A == 0) {
                    func_8009B69C(gen->xf);
                }
            }
            gen->next = (UnkGenerator *) D_800D6A08;
            D_800D6A08 = (UnkParticle *) gen;
            gen = next;
            D_800D6AE2--;
        } else {
            D_800D6AF0 = (struct Ovl1ParticleNode *) gen;
            gen = gen->next;
        }
    } while (gen != NULL);
}
#elif defined(PORT)
/* PORT: still assembly on the matching build; the m2c sketch above garbles
 * the hot spots, so this is a behavioral port from asm/nonmatchings/ovl1/
 * ovl1/func_800A09AC.s -- the per-frame generator updater the game registers
 * as the -7 GObj's process. It walks the D_800D6A0C node list (struct
 * PcGenNode above); per node it advances the frame accumulator by the update
 * rate (negative rate = fixed step, positive = randomized), and while the
 * accumulator holds a whole frame it emits one particle per kind via
 * func_8009BD3C, then runs the generator-lifetime countdown, recycling dead
 * nodes onto D_800D6A08 exactly the way func_800A1F30 does (kind-2 vortex
 * generators with live particles are parked at lifetime 1 / rate 0 instead).
 * D_800D6AF0 is the GLOBAL prev cursor, not a local: emissions can run
 * particle bytecode that spawns generators, and func_800A194C pushes those
 * on the list head and repairs this cursor so the unlink writes stay valid.
 *
 * Fixes over the sketch: the sweep-step divisors use the ROM's trunc.w.s,
 * i.e. (f32)(s32)unk44, not unk44 itself; every func_8009BD3C call really
 * passes (bank, flags, texture, bytecode, lifetime, pos, vel, size, gravity,
 * friction, 0, node) -- the sketch's kind-0/1 calls shifted two junk args
 * in front of that (its kind-2/5/8 calls were already aligned); and the
 * cone/disk emission math (kinds 0/3/4/6/7) is re-derived from the asm's
 * yaw/pitch basis: local (a,b,c) -> world via
 *   X = a*cosP + c*sinP
 *   Y = -a*sinY*sinP + b*cosY + c*sinY*cosP
 *   Z = -a*cosY*sinP - b*sinY + c*cosY*cosP
 * applied to (cosE*r, sinE*r, axial) for position and
 * (cosE*sinS*speed, sinE*sinS*speed, cosS*speed) for velocity.
 *
 * unk8&1 aims the basis at the camera D_800D6A10 points to (set by
 * func_8009BA68; s32 cell holds the host address, below-4GB arena), read
 * through the canonical UnkStruct800D79D8 overlay (eye at unk3C/40/44).
 * unk48 != NULL routes position/velocity through func_800A0558 first --
 * still a weak stub on this build, so a DObj-attached generator will stop
 * the run there and name it. */
void func_800A09AC(void *arg0) {
    GObj *gobj = arg0;
    struct PcGenNode *gn;
    struct PcGenNode *next;

    gn = (struct PcGenNode *) D_800D6A0C;
    D_800D6AF0 = NULL;
    while (gn != NULL) {
        f32 vel[3];
        f32 angle = 0.0f; /* spE4: sweep angle, persists across emissions */
        f32 step = 0.0f;  /* spC0: per-emission sweep increment */

        /* Per-bank pause bits 16..31 on the process GObj, then the node's
         * own pause flag. */
        if (gobj->flags & (1u << (((gn->unkA >> 3) + 0x10) & 31))) {
            D_800D6AF0 = (struct Ovl1ParticleNode *) gn;
            gn = gn->next;
            continue;
        }
        if (gn->unk6 & 0x800) {
            D_800D6AF0 = (struct Ovl1ParticleNode *) gn;
            gn = gn->next;
            continue;
        }

        if (gn->unk40 < 0.0f) {
            gn->unk44 -= gn->unk40;
        } else {
            gn->unk44 += random_f32() * gn->unk40;
        }

        if (gn->unk44 >= 1.0f) {
            vel[0] = gn->unk20;
            vel[1] = gn->unk24;
            vel[2] = gn->unk28;
            if (gn->unk48 != NULL) {
                f32 out[3];

                func_800A0558(out, vel, gn->unk48);
                gn->unk14 = out[0];
                gn->unk18 = out[1];
                gn->unk1C = out[2];
            }
            if (gn->unk3C < 0.0f) {
                /* Negative spread: sweep this frame's emissions across the
                 * arc instead of randomizing each one. */
                switch (gn->unk9) {
                case 0:
                case 3:
                case 4:
                case 6:
                case 7:
                    step = (gn->unk54.f - gn->unk50) / (f32)(s32)gn->unk44;
                    angle = random_f32() * step + gn->unk50;
                    break;
                default:
                    angle = random_f32() * 6.2831855f;
                    step = 6.2831855f / (f32)(s32)gn->unk44;
                    break;
                }
            }
            do {
                switch (gn->unk9) {
                case 0: /* cone */
                case 3: /* disk, sqrt-uniform, velocity scaled by radius */
                case 4: /* disk, sqrt-uniform */
                case 6: /* ring segment with axial spread */
                case 7: /* ring segment */
                {
                    f32 dx, dy, dz, speed;
                    f32 yaw, sinY, cosY, pitch, sinP, cosP;
                    f32 amp, radial, spread, a, b, c, r;
                    f32 sf, va, vb, vc;
                    f32 px, py, pz, wx, wy, wz;

                    if (gn->unk8 & 1) {
                        struct UnkStruct800D79D8 *cam =
                            (struct UnkStruct800D79D8 *)(uintptr_t)(u32)D_800D6A10;

                        dx = cam->unk3C - gn->unk14;
                        dy = cam->unk40 - gn->unk18;
                        dz = cam->unk44 - gn->unk1C;
                        speed = sqrtf(vel[0] * vel[0] + vel[1] * vel[1] + vel[2] * vel[2]);
                    } else {
                        dx = vel[0];
                        dy = vel[1];
                        dz = vel[2];
                        speed = sqrtf(dx * dx + dy * dy + dz * dz);
                    }
                    yaw = atan2f(dy, dz);
                    sinY = sinf(yaw);
                    cosY = cosf(yaw);
                    pitch = atan2f(dx, dy * sinY + dz * cosY);
                    sinP = sinf(pitch);
                    cosP = cosf(pitch);
                    if (gn->unk38 < 0.0f) {
                        amp = 1.0f;
                        radial = -gn->unk38;
                    } else {
                        amp = random_f32();
                        if ((gn->unk9 == 3) || (gn->unk9 == 4)) {
                            amp = sqrtf(amp);
                        }
                        radial = gn->unk38 * amp;
                    }
                    switch (gn->unk9) {
                    case 6:
                        if (gn->unk3C < 0.0f) {
                            angle += step;
                            spread = (1.5707964f - atan2f(gn->unk58, radial)) - gn->unk3C;
                        } else {
                            angle = random_f32() * (gn->unk54.f - gn->unk50) + gn->unk50;
                            spread = (1.5707964f - atan2f(gn->unk58, radial)) + gn->unk3C;
                        }
                        break;
                    case 7:
                        if (gn->unk3C < 0.0f) {
                            angle += step;
                            spread = 1.5707964f - gn->unk3C;
                        } else {
                            angle = random_f32() * (gn->unk54.f - gn->unk50) + gn->unk50;
                            spread = gn->unk3C + 1.5707964f;
                        }
                        break;
                    default:
                        if (gn->unk3C < 0.0f) {
                            spread = -gn->unk3C;
                            angle += step;
                        } else {
                            angle = random_f32() * (gn->unk54.f - gn->unk50) + gn->unk50;
                            spread = amp * gn->unk3C;
                        }
                        break;
                    }
                    a = cosf(angle) * radial;
                    b = sinf(angle) * radial;
                    if ((gn->unk9 == 6) || (gn->unk9 == 7)) {
                        r = random_f32();
                        if (gn->unk9 == 6) {
                            a *= 1.0f - r;
                            b *= 1.0f - r;
                        }
                        c = r * gn->unk58;
                    } else {
                        c = 0.0f;
                    }
                    sf = sinf(spread) * speed;
                    va = cosf(angle) * sf;
                    vb = sinf(angle) * sf;
                    vc = cosf(spread) * speed;
                    px = a * cosP + c * sinP + gn->unk14;
                    py = -a * sinY * sinP + b * cosY + c * sinY * cosP + gn->unk18;
                    pz = -a * cosY * sinP - b * sinY + c * cosY * cosP + gn->unk1C;
                    wx = va * cosP + vc * sinP;
                    wy = -va * sinY * sinP + vb * cosY + vc * sinY * cosP;
                    wz = -va * cosY * sinP - vb * sinY + vc * cosY * cosP;
                    if (gn->unk9 == 3) {
                        wx *= amp;
                        wy *= amp;
                        wz *= amp;
                    }
                    func_8009BD3C(gn->unkA, gn->unk6, gn->unkB,
                                  (u8 *)(uintptr_t)gn->unk10, gn->unkC,
                                  px, py, pz, wx, wy, wz,
                                  gn->unk34, gn->unk2C, gn->unk30, 0,
                                  (UnkGenerator *) gn);
                    break;
                }
                case 1: /* line between unk14.. and unk50.. */
                {
                    f32 r1 = random_f32();

                    func_8009BD3C(gn->unkA, gn->unk6, gn->unkB,
                                  (u8 *)(uintptr_t)gn->unk10, gn->unkC,
                                  gn->unk14 + r1 * (gn->unk50 - gn->unk14),
                                  gn->unk18 + r1 * (gn->unk54.f - gn->unk18),
                                  gn->unk1C + r1 * (gn->unk58 - gn->unk1C),
                                  vel[0], vel[1], vel[2],
                                  gn->unk34, gn->unk2C, gn->unk30, 0,
                                  (UnkGenerator *) gn);
                    break;
                }
                case 2: /* vortex: angles ride in the vel/gravity/friction
                         * slots, flag 4 marks the particle as vortex-bound */
                {
                    f32 yaw2, pitch2, spd, amt;

                    yaw2 = atan2f(vel[1], vel[2]);
                    pitch2 = atan2f(vel[0], vel[1] * sinf(yaw2) + vel[2] * cosf(yaw2));
                    spd = sqrtf(vel[0] * vel[0] + vel[1] * vel[1] + vel[2] * vel[2]);
                    if (gn->unk38 < 0.0f) {
                        amt = 1.0f;
                    } else {
                        amt = random_f32();
                    }
                    if (gn->unk3C < 0.0f) {
                        angle += step;
                    } else {
                        angle = random_f32() * 6.2831855f;
                    }
                    gn->unk50 = spd;
                    if (func_8009BD3C(gn->unkA, gn->unk6 | 4, gn->unkB,
                                      (u8 *)(uintptr_t)gn->unk10, gn->unkC,
                                      0.0f, 0.0f, 0.0f, angle, amt, 0.0f,
                                      gn->unk34, yaw2, pitch2, 0,
                                      (UnkGenerator *) gn) != NULL) {
                        gn->unk54.hw++;
                    }
                    break;
                }
                case 5: /* box: three axis vectors, each jittered, sign flags
                         * in unk74 pin an axis to +/-0.5 */
                {
                    f32 px5 = gn->unk14;
                    f32 py5 = gn->unk18;
                    f32 pz5 = gn->unk1C;
                    f32 t;

                    if (gn->unk74 & 1) {
                        t = (random_f32() > 0.5f) ? 0.5f : -0.5f;
                    } else {
                        t = random_f32() - 0.5f;
                    }
                    px5 += gn->unk50 * t;
                    py5 += gn->unk54.f * t;
                    pz5 += gn->unk58 * t;
                    if (gn->unk74 & 2) {
                        t = (random_f32() > 0.5f) ? 0.5f : -0.5f;
                    } else {
                        t = random_f32() - 0.5f;
                    }
                    px5 += gn->unk5C * t;
                    py5 += gn->unk60 * t;
                    pz5 += gn->unk64 * t;
                    if (gn->unk74 & 4) {
                        t = (random_f32() > 0.5f) ? 0.5f : -0.5f;
                    } else {
                        t = random_f32() - 0.5f;
                    }
                    func_8009BD3C(gn->unkA, gn->unk6, gn->unkB,
                                  (u8 *)(uintptr_t)gn->unk10, gn->unkC,
                                  px5 + gn->unk68 * t,
                                  py5 + gn->unk6C * t,
                                  pz5 + gn->unk70 * t,
                                  vel[0], vel[1], vel[2],
                                  gn->unk34, gn->unk2C, gn->unk30, 0,
                                  (UnkGenerator *) gn);
                    break;
                }
                case 8: /* sphere sector around the base direction */
                {
                    f32 sq = sqrtf(random_f32());
                    f32 theta = random_f32() * 6.2831855f;
                    f32 az, el, mag, ratio, ox, oy, oz;

                    if (gn->unk60 == 0.0f) {
                        az = random_f32() * 6.2831855f;
                    } else {
                        az = cosf(theta) * sq * gn->unk60 + gn->unk5C;
                    }
                    if (gn->unk58 == 0.0f) {
                        el = (1.0f - sqrtf(random_f32())) * 1.5707964f;
                        if (random_f32() < 0.5f) {
                            el = -el;
                        }
                    } else {
                        el = sinf(theta) * sq * gn->unk58 + gn->unk54.f;
                    }
                    mag = gn->unk38;
                    if (mag < 0.0f) {
                        mag = -mag;
                        ratio = gn->unk50 / mag;
                    } else {
                        ratio = gn->unk50 / mag;
                        mag *= random_f32();
                    }
                    angle = theta; /* the ROM parks theta in the spE4 slot */
                    ox = cosf(el) * (mag * cosf(az));
                    oy = sinf(el) * mag;
                    oz = cosf(el) * (mag * sinf(az));
                    func_8009BD3C(gn->unkA, gn->unk6, gn->unkB,
                                  (u8 *)(uintptr_t)gn->unk10, gn->unkC,
                                  gn->unk14 + ox, gn->unk18 + oy, gn->unk1C + oz,
                                  ox * ratio, oy * ratio, oz * ratio,
                                  gn->unk34, gn->unk2C, gn->unk30, 0,
                                  (UnkGenerator *) gn);
                    break;
                }
                default:
                    if (D_800D6AD8 != NULL) {
                        D_800D6AD8(gn, vel);
                    }
                    break;
                }
                gn->unk44 -= 1.0f;
            } while (gn->unk44 >= 1.0f);
        }

        /* Generator lifetime; 0 means immortal. */
        if (gn->unkE != 0) {
            gn->unkE--;
            if (gn->unkE == 0) {
                if ((gn->unk9 == 2) && (gn->unk54.hw != 0)) {
                    /* Vortex with live particles: park it (func_800A1F30
                     * does the same). */
                    gn->unkE = 1;
                    gn->unk40 = 0.0f;
                } else {
                    next = gn->next;
                    if (D_800D6AF0 == NULL) {
                        D_800D6A0C = (struct Ovl1ParticleNode *) next;
                    } else {
                        ((struct PcGenNode *) D_800D6AF0)->next = next;
                    }
                    if (gn->unk4C != NULL) {
                        gn->unk4C->unk2A--;
                        if (gn->unk4C->unk2A == 0) {
                            func_8009B69C(gn->unk4C);
                        }
                    }
                    gn->next = (struct PcGenNode *) D_800D6A08;
                    D_800D6A08 = (UnkParticle *) gn;
                    D_800D6AE2--;
                    gn = next;
                    continue;
                }
            }
        }
        D_800D6AF0 = (struct Ovl1ParticleNode *) gn;
        gn = gn->next;
    }
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
/* FACTORY: DIFF 189/336. The dispatch (9-entry jump table at kind 0..8 plus
 * the D_800D6ADC default), all nine arms, the texture-flag OR and the
 * emitter-ref tail are the ROM's; the residue is an FP register permutation
 * -- the ROM parks the 0.0f constant in $f0 and each loaded script field in
 * $f2, IDO does it the other way round, so every c.eq.s/swc1 pair in the
 * kind arms reads swapped -- plus three off-by-one branch displacements that
 * follow. Measured levers, all worth keeping: the script record must NOT be
 * cached in a local -- writing `D_800D6A78[idx][arg1]->field` inline at every
 * one of the ~25 field copies reproduces the ROM's re-load of the table slot
 * through the held $a0 and is worth 107 diffs (313 -> 206); assigning unk9
 * before unkA another 7; and moving the unk14/18/1C zero stores after unkE,
 * and unk44's after unk40, another 12 (206 -> 189). Solved semantics:
 * func_800A194C takes NO arguments and the D_800D6ADC callback gets ONLY the
 * node in $a0 (m2c's extra arguments are leftover registers); the bank index
 * is arg0 & 7 with an early NULL for arg1 >= D_800D6A38[bank]; kind 2 stores
 * a HALFWORD zero at +0x54 and kind 5's sign flags are a halfword at +0x74;
 * kind 8's pitch term is `unk14 * unk20` (position X times velocity X, with
 * unk14 just zeroed) rather than velX*velX -- a ROM quirk, reproduced. */
void *func_800A19EC(s32 arg0, s32 arg1) {
    /* Local view of the generator node (the shared struct Ovl1PNode pads
     * over most of this and widening it is a file-scope change). */
    struct GNode {
        /* 0x00 */ struct GNode *next;
        /* 0x04 */ u16 unk4;
        /* 0x06 */ u16 unk6;
        /* 0x08 */ u8 unk8;
        /* 0x09 */ u8 unk9;
        /* 0x0A */ u8 unkA;
        /* 0x0B */ u8 unkB;
        /* 0x0C */ u16 unkC;
        /* 0x0E */ u16 unkE;
        /* 0x10 */ u8 *unk10;
        /* 0x14 */ f32 unk14;
        /* 0x18 */ f32 unk18;
        /* 0x1C */ f32 unk1C;
        /* 0x20 */ f32 unk20;
        /* 0x24 */ f32 unk24;
        /* 0x28 */ f32 unk28;
        /* 0x2C */ f32 unk2C;
        /* 0x30 */ f32 unk30;
        /* 0x34 */ f32 unk34;
        /* 0x38 */ f32 unk38;
        /* 0x3C */ f32 unk3C;
        /* 0x40 */ f32 unk40;
        /* 0x44 */ f32 unk44;
        /* 0x48 */ s32 unk48;
        /* 0x4C */ UnkEmitter *unk4C;
        /* 0x50 */ f32 unk50;
        /* 0x54 */ f32 unk54;
        /* 0x58 */ f32 unk58;
        /* 0x5C */ f32 unk5C;
        /* 0x60 */ f32 unk60;
        /* 0x64 */ f32 unk64;
        /* 0x68 */ f32 unk68;
        /* 0x6C */ f32 unk6C;
        /* 0x70 */ f32 unk70;
        /* 0x74 */ u16 unk74;
    };
    UnkParticle *func_800A194C(void);
    UnkEmitter *func_8009B5E8(u8, u16);
    extern void (*D_800D6ADC)();
    f32 atan2f(f32, f32);
    struct GNode *node;
    s32 idx;
    f32 a;
    f32 b;
    f32 c;

    idx = arg0 & 7;
    if (idx >= 8) {
        return NULL;
    }
    if (arg1 >= D_800D6A38[idx]) {
        return NULL;
    }
    node = (struct GNode *) func_800A194C();
    if (node != NULL) {
        node->unk9 = D_800D6A78[idx][arg1]->kind;
        node->unkA = arg0;
        node->unk6 = D_800D6A78[idx][arg1]->flags;
        node->unk8 = D_800D6A78[idx][arg1]->unk8;
        node->unkB = D_800D6A78[idx][arg1]->texture_id;
        node->unkC = D_800D6A78[idx][arg1]->particle_lifetime;
        node->unkE = D_800D6A78[idx][arg1]->generator_lifetime;
        node->unk14 = 0.0f;
        node->unk18 = 0.0f;
        node->unk1C = 0.0f;
        node->unk20 = D_800D6A78[idx][arg1]->velX;
        node->unk24 = D_800D6A78[idx][arg1]->velY;
        node->unk28 = D_800D6A78[idx][arg1]->velZ;
        node->unk2C = D_800D6A78[idx][arg1]->gravity;
        node->unk30 = D_800D6A78[idx][arg1]->friction;
        node->unk34 = D_800D6A78[idx][arg1]->size;
        node->unk10 = D_800D6A78[idx][arg1]->bytecode;
        node->unk38 = D_800D6A78[idx][arg1]->unk20;
        node->unk3C = D_800D6A78[idx][arg1]->unk24;
        node->unk40 = D_800D6A78[idx][arg1]->unk28;
        node->unk44 = 0.0f;
        if (D_800D6A98[idx][D_800D6A78[idx][arg1]->texture_id]->flags != 0) {
            node->unk6 = node->unk6 | 0x10;
        }
        node->unk48 = 0;
        switch (node->unk9) {
        case 0:
        case 3:
        case 4:
            a = D_800D6A78[idx][arg1]->unk30;
            if ((a == 0.0f) && (D_800D6A78[idx][arg1]->unk34 == 0.0f)) {
                node->unk50 = 0.0f;
                node->unk54 = 6.2831855f;
            } else {
                node->unk50 = a;
                node->unk54 = D_800D6A78[idx][arg1]->unk34;
            }
            break;
        case 1:
            node->unk50 = D_800D6A78[idx][arg1]->unk30;
            node->unk54 = D_800D6A78[idx][arg1]->unk34;
            node->unk58 = D_800D6A78[idx][arg1]->unk38;
            break;
        case 2:
            node->unk74 = 0;
            *(u16 *) &node->unk54 = 0;
            break;
        case 6:
        case 7:
            a = D_800D6A78[idx][arg1]->unk30;
            if ((a == 0.0f) && (D_800D6A78[idx][arg1]->unk34 == 0.0f)) {
                node->unk50 = 0.0f;
                node->unk54 = 6.2831855f;
            } else {
                node->unk50 = a;
                node->unk54 = D_800D6A78[idx][arg1]->unk34;
            }
            node->unk58 = D_800D6A78[idx][arg1]->unk38;
            break;
        case 5:
            node->unk50 = D_800D6A78[idx][arg1]->unk30;
            node->unk60 = D_800D6A78[idx][arg1]->unk34;
            node->unk54 = 0.0f;
            node->unk58 = 0.0f;
            node->unk5C = 0.0f;
            node->unk64 = 0.0f;
            node->unk68 = 0.0f;
            node->unk6C = 0.0f;
            node->unk74 = 0;
            node->unk70 = D_800D6A78[idx][arg1]->unk38;
            if (D_800D6A78[idx][arg1]->unk30 < 0.0f) {
                node->unk74 = 1;
            }
            if (D_800D6A78[idx][arg1]->unk34 < 0.0f) {
                node->unk74 = node->unk74 | 2;
            }
            if (D_800D6A78[idx][arg1]->unk38 < 0.0f) {
                node->unk74 = node->unk74 | 4;
            }
            break;
        case 8:
            a = node->unk20;
            b = node->unk24;
            c = node->unk28;
            node->unk50 = sqrtf((a * a) + (b * b) + (c * c));
            node->unk54 = atan2f(node->unk24, sqrtf((node->unk14 * node->unk20) + (node->unk28 * node->unk28)));
            node->unk5C = atan2f(node->unk28, node->unk20);
            node->unk58 = D_800D6A78[idx][arg1]->unk30;
            node->unk60 = D_800D6A78[idx][arg1]->unk34;
            break;
        default:
            if (D_800D6ADC != NULL) {
                D_800D6ADC(node);
            }
            break;
        }
        if (node->unk8 & 2) {
            node->unk4C = func_8009B5E8(0, node->unk4);
            if (node->unk4C != NULL) {
                node->unk4C->unkBA = 1;
            }
        }
    }
    return node;
}
#elif defined(PORT)
/* PORT: the generator/emitter spawner, from asm/nonmatchings/ovl1/ovl1/
 * func_800A19EC.s (the sketch above is close, but the asm fixes the call
 * shapes -- func_800A194C takes nothing, the D_800D6ADC callback only gets
 * the node in $a0 -- and the store widths: sh at +0x54 for kind 2, sh at
 * +0x74 for kind 5's sign flags). Pops a node off the free list via
 * func_800A194C and fills it from bank (arg0 & 7)'s script record arg1.
 *
 * Node layout: struct PcGenNode is the SAME LP64 shape struct Pc2550Obj
 * (func_800A2550's arm below) and struct Ovl1PNode already use -- the
 * 8-byte `next` shifts the scalar block by +4, the two pointers at N64
 * +0x48/+0x4C widen, and the N64 +0x50..+0x77 tail lands at +0x60..+0x87.
 * The asserts pin the shared offsets; func_800A04B8's PORT branch sizes
 * the pool nodes at PC_GENNODE_SIZE so the widened tail fits.
 *
 * Data: D_800D6A38/D_800D6A78/D_800D6A98 are native tables and the
 * UnkTexture header is normalized in place (func_8009B768's arm), but by
 * that arm's contract UnkScript interiors stay RAW BIG-ENDIAN ("converted
 * at their own read sites"), so every script field is decoded here. The
 * bytecode address is kept as a u32 like the bank tables (arena below
 * 4 GB). unk48 is NULLed by the ROM itself; unk4C is NULLed here because
 * the N64 relied on func_800A194C's word clear at +0x4C, which on LP64
 * covers only half the widened slot. Kind 8's pitch term multiplies
 * position X (just zeroed) by velocity X instead of velX*velX -- ROM
 * quirk, kept. (struct PcGenNode itself is defined above func_800A09AC,
 * which walks the same nodes every frame.) */

/* Raw big-endian UnkScript field reads (2/4-aligned inside the bank blob). */
static u16 pc19ec_su16(const UnkScript *s, u32 off) {
    u16 v;
    __builtin_memcpy(&v, (const u8 *)s + off, 2);
    return pc_be16(v);
}
static f32 pc19ec_sf32(const UnkScript *s, u32 off) {
    union { u32 w; f32 f; } c;
    __builtin_memcpy(&c.w, (const u8 *)s + off, 4);
    c.w = pc_be32(c.w);
    return c.f;
}

void *func_800A19EC(s32 arg0, s32 arg1) {
    extern void (*D_800D6ADC)();
    s32 bank = arg0 & 7;
    struct PcGenNode *gn;
    const UnkScript *script;
    f32 s30, s34, s38;

    if (bank >= 8) { /* dead check, kept from the ROM */
        return NULL;
    }
    if (arg1 >= D_800D6A38[bank]) {
        return NULL;
    }
    gn = (struct PcGenNode *) func_800A194C();
    if (gn != NULL) {
        script = D_800D6A78[bank][arg1];
        gn->unkA = (u8) arg0;
        gn->unk9 = (u8) pc19ec_su16(script, 0x00);   /* kind */
        gn->unk6 = pc19ec_su16(script, 0x0A);        /* flags */
        gn->unk8 = (u8) pc19ec_su16(script, 0x08);
        gn->unkB = (u8) pc19ec_su16(script, 0x02);   /* texture id */
        gn->unkC = pc19ec_su16(script, 0x06);        /* particle lifetime */
        gn->unk14 = gn->unk18 = gn->unk1C = 0.0f;
        gn->unkE = pc19ec_su16(script, 0x04);        /* generator lifetime */
        gn->unk20 = pc19ec_sf32(script, 0x14);       /* velX */
        gn->unk24 = pc19ec_sf32(script, 0x18);       /* velY */
        gn->unk28 = pc19ec_sf32(script, 0x1C);       /* velZ */
        gn->unk2C = pc19ec_sf32(script, 0x0C);       /* gravity */
        gn->unk30 = pc19ec_sf32(script, 0x10);       /* friction */
        gn->unk34 = pc19ec_sf32(script, 0x2C);       /* size */
        gn->unk10 = (u32) (uintptr_t) ((const u8 *) script + 0x3C); /* bytecode */
        gn->unk38 = pc19ec_sf32(script, 0x20);
        gn->unk3C = pc19ec_sf32(script, 0x24);
        gn->unk44 = 0.0f;
        gn->unk40 = pc19ec_sf32(script, 0x28);
        if (D_800D6A98[bank][pc19ec_su16(script, 0x02)]->flags != 0) {
            gn->unk6 |= 0x10;
        }
        gn->unk48 = NULL;
        gn->unk4C = NULL; /* N64: func_800A194C's word clear at +0x4C */
        s30 = pc19ec_sf32(script, 0x30);
        s34 = pc19ec_sf32(script, 0x34);
        s38 = pc19ec_sf32(script, 0x38);
        switch (gn->unk9) {
        case 0:
        case 3:
        case 4:
            if ((s30 == 0.0f) && (s34 == 0.0f)) {
                gn->unk50 = 0.0f;
                gn->unk54.f = 6.2831855f;
            } else {
                gn->unk50 = s30;
                gn->unk54.f = s34;
            }
            break;
        case 1:
            gn->unk50 = s30;
            gn->unk54.f = s34;
            gn->unk58 = s38;
            break;
        case 2:
            gn->unk54.hw = 0;
            break;
        case 6:
        case 7:
            if ((s30 == 0.0f) && (s34 == 0.0f)) {
                gn->unk50 = 0.0f;
                gn->unk54.f = 6.2831855f;
            } else {
                gn->unk50 = s30;
                gn->unk54.f = s34;
            }
            gn->unk58 = s38;
            break;
        case 5:
            gn->unk50 = s30;
            gn->unk60 = s34;
            gn->unk54.f = 0.0f;
            gn->unk58 = 0.0f;
            gn->unk5C = 0.0f;
            gn->unk64 = 0.0f;
            gn->unk68 = 0.0f;
            gn->unk6C = 0.0f;
            gn->unk74 = 0;
            gn->unk70 = s38;
            if (s30 < 0.0f) {
                gn->unk74 = 1;
            }
            if (s34 < 0.0f) {
                gn->unk74 |= 2;
            }
            if (s38 < 0.0f) {
                gn->unk74 |= 4;
            }
            break;
        case 8:
            gn->unk50 = sqrtf((gn->unk20 * gn->unk20) + (gn->unk24 * gn->unk24)
                              + (gn->unk28 * gn->unk28));
            gn->unk54.f = atan2f(gn->unk24, sqrtf((gn->unk14 * gn->unk20)
                                                  + (gn->unk28 * gn->unk28)));
            gn->unk5C = atan2f(gn->unk28, gn->unk20);
            gn->unk58 = s30;
            gn->unk60 = s34;
            break;
        default:
            if (D_800D6ADC != NULL) {
                D_800D6ADC(gn);
            }
            break;
        }
        if (gn->unk8 & 2) {
            UnkEmitter *xf = func_8009B5E8(0, gn->unk4);

            gn->unk4C = xf;
            if (xf != NULL) {
                xf->unkBA = 1;
            }
        }
    }
    return gn;
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
/* FACTORY: DIFF 123/138 -- the two list passes are the MATCHED siblings
 * func_8009BFD4 (particles) and func_800A1F30 (generators) fused, and they
 * come out right; the residue is the argument prologue and the saved-register
 * order it fixes. The ROM masks into $fp on entry (`andi $fp,$a0,0xFFFF`),
 * homes the raw $a0 at 0x48(sp) -- the K&R promoted-parameter store -- and
 * then copies $fp into $s5 separately for EACH pass; IDO instead parks the
 * raw argument in a saved register and masks once, which rotates every
 * save slot from 0x24 on. Measured: declaring arg0 as `u16` in the K&R
 * definition does emit a home store but drops the andi and scores worse
 * (127); hoisting `id = arg0 & 0xFFFF` to the first statement is what took
 * 127 -> 123. The K&R definition itself is REQUIRED, not cosmetic:
 * func_800A22A8/func_800A22D4 below call this with THREE arguments, so a
 * prototyped two-parameter definition does not compile. Solved semantics:
 * the particle pass frees to D_800D69C0/D_800D6AE0 and drops the vortex
 * owner's live count only when (unk5C != NULL && (unk6 & 4) && kind == 2);
 * the generator pass PARKS rather than frees a kind-2 vortex node that still
 * has unk54 != 0 (unk40 = 0.0f, unkE = 1, and it stays linked), everything
 * else goes to D_800D6A08/D_800D6AE2; both passes release the emitter ref
 * through func_8009B69C at zero. The generator id lives at node+4, which
 * struct Ovl1PNode covers with pad4[5], so it is read through a cast rather
 * than by widening the shared struct at file scope. */
void func_800A2080(arg0, arg1)
s32 arg0;
s32 arg1;
{
    UnkParticle *pc;
    UnkParticle *prev_pc;
    UnkParticle *next_pc;
    UnkGenerator *gn;
    struct Ovl1PNode *node;
    struct Ovl1PNode *prev;
    struct Ovl1PNode *next;
    u32 id;

    id = arg0 & 0xFFFF;
    pc = D_800D69C8[arg1];
    prev_pc = NULL;
    if (pc != NULL) {
        do {
            next_pc = pc->next;
            if (id == pc->unk4) {
                if (prev_pc == NULL) {
                    D_800D69C8[arg1] = next_pc;
                } else {
                    prev_pc->next = next_pc;
                }
                gn = pc->unk5C;
                if ((gn != NULL) && (pc->unk6 & 4) && (gn->kind == 2)) {
                    gn->vars.vortex.lifetime--;
                }
                if (pc->unk60 != NULL) {
                    pc->unk60->unk2A--;
                    if (pc->unk60->unk2A == 0) {
                        func_8009B69C(pc->unk60);
                    }
                }
                pc->next = D_800D69C0;
                D_800D69C0 = pc;
                D_800D6AE0--;
            } else {
                prev_pc = pc;
            }
            pc = next_pc;
        } while (next_pc != NULL);
    }
    node = (struct Ovl1PNode *) D_800D6A0C;
    prev = NULL;
    if (node != NULL) {
        do {
            next = node->next;
            if (id == *(u16 *) ((u8 *) node + 4)) {
                if ((node->unk9 == 2) && (node->unk54 != 0)) {
                    node->unk40 = 0.0f;
                    node->unkE = 1;
                    prev = node;
                } else {
                    if (prev == NULL) {
                        D_800D6A0C = (struct Ovl1ParticleNode *) next;
                    } else {
                        prev->next = next;
                    }
                    if (node->unk4C != NULL) {
                        node->unk4C->unk2A--;
                        if (node->unk4C->unk2A == 0) {
                            func_8009B69C(node->unk4C);
                        }
                    }
                    node->next = (struct Ovl1PNode *) D_800D6A08;
                    D_800D6A08 = (UnkParticle *) node;
                    D_800D6AE2--;
                }
            } else {
                prev = node;
            }
            node = next;
        } while (next != NULL);
    }
}
#elif defined(PORT)
/* PORT: from asm/nonmatchings/ovl1/ovl1/func_800A2080.s -- kill every
 * particle in list D_800D69C8[arg1] and every generator on D_800D6A0C whose
 * id (unk4) matches arg0's low 16 bits. The particle pass is func_8009BFD4's
 * logic for a whole list (unlink, drop the vortex owner's live count, release
 * the emitter ref, push onto D_800D69C0); the generator pass is func_800A1F30
 * for a whole list, including its park-don't-free rule for kind-2 vortex
 * generators that still own particles. Generators are walked through struct
 * PcGenNode (func_800A09AC's block above); the particles' UnkGenerator view
 * of the same nodes is layout-checked there. K&R definition on purpose:
 * func_800A22A8/func_800A22D4 below pass a third argument the function
 * never reads, so it must not expose a two-arg prototype (and the ROM's
 * `andi $a0, 0xFFFF` + dead home store is the same IDO promoted-short
 * prologue func_800A2440's note describes). */
void func_800A2080(arg0, arg1)
s32 arg0;
s32 arg1;
{
    u32 id = arg0 & 0xFFFF;
    UnkParticle *pc;
    UnkParticle *prev_pc;
    UnkParticle *next_pc;
    struct PcGenNode *gnode;
    struct PcGenNode *prev_gn;
    struct PcGenNode *next_gn;

    pc = D_800D69C8[arg1];
    prev_pc = NULL;
    while (pc != NULL) {
        next_pc = pc->next;
        if (id == pc->unk4) {
            if (prev_pc == NULL) {
                D_800D69C8[arg1] = next_pc;
            } else {
                prev_pc->next = next_pc;
            }
            if ((pc->unk5C != NULL) && (pc->unk6 & 4) && (pc->unk5C->kind == 2)) {
                pc->unk5C->vars.vortex.lifetime--;
            }
            if (pc->unk60 != NULL) {
                pc->unk60->unk2A--;
                if (pc->unk60->unk2A == 0) {
                    func_8009B69C(pc->unk60);
                }
            }
            pc->next = D_800D69C0;
            D_800D69C0 = pc;
            D_800D6AE0--;
        } else {
            prev_pc = pc;
        }
        pc = next_pc;
    }

    gnode = (struct PcGenNode *) D_800D6A0C;
    prev_gn = NULL;
    while (gnode != NULL) {
        next_gn = gnode->next;
        if (id == gnode->unk4) {
            if ((gnode->unk9 == 2) && (gnode->unk54.hw != 0)) {
                gnode->unk40 = 0.0f;
                gnode->unkE = 1;
                prev_gn = gnode;
            } else {
                if (prev_gn == NULL) {
                    D_800D6A0C = (struct Ovl1ParticleNode *) next_gn;
                } else {
                    prev_gn->next = next_gn;
                }
                if (gnode->unk4C != NULL) {
                    gnode->unk4C->unk2A--;
                    if (gnode->unk4C->unk2A == 0) {
                        func_8009B69C(gnode->unk4C);
                    }
                }
                gnode->next = (struct PcGenNode *) D_800D6A08;
                D_800D6A08 = (UnkParticle *) gnode;
                D_800D6AE2--;
            }
        } else {
            prev_gn = gnode;
        }
        gnode = next_gn;
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
/* PADDING-TRAPPED + FACTORY: DIFF 211/220 (measured by hand -- verify.py
 * REFUSES to score this one: padtrap.classify reports 'trap', 6 words after
 * the function's own .size, so even a byte-exact MATCH must NOT be
 * un-guarded here; converting it would shorten the TU by 24 bytes under
 * kirby.ld's SUBALIGN(16). Fixing that needs a `pad` subsegment in
 * kirby64.yaml plus the matching `. += ` in kirby.ld, in the same edit as
 * the conversion -- a layout change outside this lane.)
 * Residue is a whole-function register assignment: the ROM walks the layout
 * with the node pointer in $s1 (callee-saved, then reused as the entry
 * cursor `s1 += 0x2C`) and holds the 0x12 terminator constant in $v0, while
 * IDO puts the walker in $v1/$v0 and the constant in $a1, so nothing lines
 * up from instruction 8 on; our body is also 6 instructions longer. Tried:
 * m2c's node[1].type walk shape, and the `if (unk4 == 0) return;` early-exit
 * that would explain the ROM's `sltiu $v0,$v0,1` + `bnel`.
 * Solved semantics (this is the useful part): arg0 is the 0x2C-stride layout
 * array; walk to the type == 0x12 terminator; if the terminator's word +4 is
 * nonzero a SECOND 0x2C-stride array follows it, each entry
 * { s32 id; s32 pad; Vector pos, rot, scale } and the last flagged by bit 31
 * of id (still processed). Each id spawns func_800A19EC((id >> 16) & 0xF,
 * id & 0xFFFF); the entry SRT (func_8001C2E4, which takes the three Vectors
 * BY VALUE) is concatenated with the terminator-node SRT and applied:
 * position from row 3, velocity rotated by the 3x3, then per kind --
 * kinds 0/2/3/4/6/7/8 scale unk38 by the length of column 0, kind 1
 * transforms the point at +0x50, kind 5 scales the 3x3 at +0x50 by the
 * matrix columns. All strides are N64 (0x2C nodes, 4-byte words). */
void func_800A2550(void *arg0) {
    /* Local views: the 0x2C-stride layout node and the emitter node.
     * struct Ovl1PNode (above) pads over the fields this function needs, and
     * widening it is a file-scope change, so the offsets are spelled here. */
    struct LNode {
        /* 0x00 */ s32 type;
        /* 0x04 */ s32 unk4;
        /* 0x08 */ Vector pos;
        /* 0x14 */ Vector rot;
        /* 0x20 */ Vector scale;
    };
    struct EmNode {
        /* 0x00 */ u8 pad0[9];
        /* 0x09 */ u8 kind;
        /* 0x0A */ u8 padA[0xA];
        /* 0x14 */ f32 unk14;
        /* 0x18 */ f32 unk18;
        /* 0x1C */ f32 unk1C;
        /* 0x20 */ f32 unk20;
        /* 0x24 */ f32 unk24;
        /* 0x28 */ f32 unk28;
        /* 0x2C */ u8 pad2C[0xC];
        /* 0x38 */ f32 unk38;
        /* 0x3C */ u8 pad3C[0x14];
        /* 0x50 */ f32 v[9];
    };
    f32 sp64[4][4];
    f32 spA4[4][4];
    struct LNode *node;
    struct LNode *ent;
    struct EmNode *em;
    s32 id;
    f32 vx;
    f32 vy;
    f32 vz;

    node = (struct LNode *) arg0;
    if (((struct LNode *) arg0)->type != 0x12) {
        do {
            id = node[1].type;
            node += 1;
        } while (id != 0x12);
    }
    ent = node + 1;
    if (node->unk4 != 0) {
        func_8001C2E4(spA4, ((struct LNode *) arg0)->pos, ((struct LNode *) arg0)->rot,
                      ((struct LNode *) arg0)->scale);
        do {
            id = ent->type;
            em = (struct EmNode *) func_800A19EC((id >> 0x10) & 0xF, id & 0xFFFF);
            if (em != NULL) {
                func_8001C2E4(sp64, ent->pos, ent->rot, ent->scale);
                guMtxCatF(sp64, spA4, sp64);
                vx = em->unk20;
                vy = em->unk24;
                em->unk14 = sp64[3][0];
                vz = em->unk28;
                em->unk18 = sp64[3][1];
                em->unk1C = sp64[3][2];
                em->unk20 = (sp64[2][0] * vz) + ((sp64[0][0] * vx) + (sp64[1][0] * vy));
                em->unk24 = (sp64[2][1] * vz) + ((sp64[0][1] * vx) + (sp64[1][1] * vy));
                em->unk28 = (sp64[2][2] * vz) + ((sp64[0][2] * vx) + (sp64[1][2] * vy));
                switch (em->kind) {
                case 0:
                case 2:
                case 3:
                case 4:
                case 6:
                case 7:
                case 8:
                    em->unk38 = em->unk38 * sqrtf((sp64[2][0] * sp64[2][0]) +
                                                  ((sp64[0][0] * sp64[0][0]) + (sp64[1][0] * sp64[1][0])));
                    break;
                case 1:
                    vx = em->v[0];
                    vy = em->v[1];
                    vz = em->v[2];
                    em->v[0] = sp64[3][0] + ((sp64[0][0] * vx) + (sp64[1][0] * vy) + (sp64[2][0] * vz));
                    em->v[1] = sp64[3][1] + ((sp64[0][1] * vx) + (sp64[1][1] * vy) + (sp64[2][1] * vz));
                    em->v[2] = sp64[3][2] + ((sp64[0][2] * vx) + (sp64[1][2] * vy) + (sp64[2][2] * vz));
                    break;
                case 5:
                    vx = em->v[0];
                    vy = em->v[4];
                    vz = em->v[8];
                    em->v[0] = sp64[0][0] * vx;
                    em->v[1] = sp64[1][0] * vy;
                    em->v[2] = sp64[2][0] * vz;
                    em->v[3] = sp64[0][1] * vx;
                    em->v[4] = sp64[1][1] * vy;
                    em->v[5] = sp64[2][1] * vz;
                    em->v[6] = sp64[0][2] * vx;
                    em->v[7] = sp64[1][2] * vy;
                    em->v[8] = sp64[2][2] * vz;
                    break;
                }
            }
            id = ent->type;
            ent += 1;
        } while (!(id & 0x80000000));
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
 * +0x48/+0x4C widen, putting the N64 +0x50.. block at +0x60) -- the same
 * layout struct PcGenNode (func_800A19EC's arm above) pins with asserts.
 * func_800A19EC is now ported, and func_800A04B8 sizes the free-list nodes
 * at PC_GENNODE_SIZE so the widened kind-5 tail fits. */

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

