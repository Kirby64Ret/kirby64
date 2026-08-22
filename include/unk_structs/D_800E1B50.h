#ifndef D_800E1B50_H
#define D_800E1B50_H

/* Enemy record family (D_800E1B50[objId], enemy slots 0xE+). Evidence
 * gathered from src/ovl7/enelib.c, ovl7_2.c and ovl7_3.c -- the ovl7
 * enemy-behaviour library -- cross-checked against every other overlay
 * that references these types (ovl1, ovl3, ovl7-ovl19). Struct tags were
 * renamed from the Sub800E1B50_UnkNN placeholders; most FIELD identifiers
 * were left as unkNN and documented here instead, because these types are
 * shared by ~70 overlay files and a field rename has to be updated at
 * every use site across all of them to keep compiling -- only renamed
 * where that full cross-file audit was actually done (noted per field).
 *
 * OFFSETOF/STATIC_ASSERT below follow the convention in src/ovl1/ovl1.c:
 * IDO has no _Static_assert and only WARNS (654) on a negative array size,
 * so a negative BITFIELD width is used instead -- IDO rejects that outright
 * ("bit-field width is negative"), which is what actually locks the N64
 * layout. Guarded #ifndef PORT: the PORT build widens pointers and pins
 * its own shape separately. */
#define D800E1B50_OFFSETOF(t, f) ((s32) &((t *) 0)->f)
#define D800E1B50_STATIC_ASSERT(cond, name) \
    struct d800e1b50_assert_##name { int bit : (cond) ? 1 : -1; }

// TODO: are any of these sub-structs supposed to be more well-known types?

struct SubSub800E1B50_Unk88_UnkC_Unk0_Unk1C {
    u8 filler0[4];
    s32 unk4;
    f32 unk8;
};

struct SubSub800E1B50_Unk88_UnkC_Unk0 {
    u8 filler0[0x10];
    f32 unk10;
    s32 unk14;
    s32 unk18;
    struct SubSub800E1B50_Unk88_UnkC_Unk0_Unk1C *unk1C;
};

struct SubSub800E1B50_Unk88_UnkC_Unk4 {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    f32 unk10;
};

struct SubSub800E1B50_Unk88_UnkC {
    struct SubSub800E1B50_Unk88_UnkC_Unk0 *unk0;
    struct SubSub800E1B50_Unk88_UnkC_Unk4 *unk4;
};

/* Per-species enemy descriptor. One static instance per enemy sub-kind, held
 * in tables like enelib.c's "enemy setup tables" comment names
 * (D_801C29C0_ovl7[]/D_801C2B6C_ovl7[]/etc, picked by D_800E7730[objId]/
 * D_800E77A0[objId] in func_80198914_ovl7) and installed onto the live
 * EnemyRecord at spawn by func_80198880_ovl7/func_80198914_ovl7.
 * Evidence (all from src/ovl7/enelib.c, ovl7_2.c, ovl7_3.c unless noted):
 *   rangeGate  (unk0): copied straight into the per-object f32
 *              D_800E7B20[objId] cell in func_80198880_ovl7 and
 *              func_80198914_ovl7 -- also confirmed in ovl9_13.c
 *              (D_800E7B20[objId] = kindDesc->unk0). enelib.c:3039 gates a
 *              presence check on D_800E7B20[track] == 0.0f.
 *   onHit      (unk4): called `(void (*)(GObj *)) cb(D_800DE350[id])` from
 *              func_80199384_ovl7.
 *   onTouch    (unk8): called `(void (*)(void)) cb()` with no arguments
 *              from func_8019B7D8_ovl7.
 *   unkC: a SubSub800E1B50_Unk88_UnkC* chain, heavily read in ovl7_4.c/
 *              ovl7_5.c; left unrenamed here (not evidenced from the ovl7
 *              scope of this pass, and its own sub-records are unnamed).
 *   unk10: gates func_801A2558_ovl7's per-frame collision driver when
 *              nonzero -- BUT ovl7_5.c:624 casts this SAME field to
 *              `(struct EneScaleSet *) kindDesc->unk10` and dereferences
 *              it, i.e. some kinds reuse the word as a pointer to extra
 *              scale data instead of a plain enable flag. Left un-renamed
 *              and un-retyped (u32) because of that dual use -- a real
 *              name here needs a per-kind disambiguation this pass did not
 *              do.
 *   animTable  (unk14): copied into EnemyRecord.unk8C, which ovl7_2.c
 *              (func_8019F410_ovl7 etc) immediately reinterprets as
 *              `struct Ovl7AnimHdr *` and walks; confirmed identically in
 *              ovl9_13.c (`tmp->unk8C = tmp->unk88->unk14`). Kept s32* to
 *              match EnemyRecord.unk8C's existing spelling rather than
 *              moving Ovl7AnimHdr (itself PORT/N64-shape-guarded, defined
 *              local to ovl7_2.c) into this shared header.
 *   animCue    (unk18): copied into EnemyRecord.unk94 (EnemyAnimCue*).
 *   terrainKind (unk1C): read as a BYTE by the MATCHED func_801A2558_ovl7
 *              (`((u8 *) rec->unk88)[0x1C]`) -- 0 = no terrain/movement
 *              interaction, 2 = a wall-crawl branch (drives the
 *              gEntitiesAngleZArray quadrant test), anything else = plain
 *              ground contact. Kept u32 at file scope (the matched
 *              function's byte read must not move).
 *   probeHook  (unk20): installed as EnemyRecord.unk48
 *              (`ent->unk48 = kindDesc->unk20`) -- the per-kind ground-probe
 *              hook that func_801A0D74_ovl7 compares against
 *              func_8010B480/func_8010B284/func_8010B67C/func_8010B860
 *              (ovl2_7.c's PositionState-taking contact-tag helpers).
 */
#ifdef PORT
/* Enemy descriptors are ROM data blocks; the PC data translation emits them
 * as one 8-byte cell per N64 word (value in the low half, relocations as
 * native pointers). Pad every 4-byte field to a full cell so the offsets
 * land where the emission put them. */
struct EnemyKindDesc {
    f32 rangeGate;
    u32 pad0;
    void (*onHit)(GObj *);
    u32 pad4;
    void (*onTouch)(void);
    u32 pad8;
    struct SubSub800E1B50_Unk88_UnkC *unkC;
    u32 unk10;
    u32 pad10;
    s32 *animTable;
    struct EnemyAnimCue *animCue;
    u32 terrainKind;
    u32 pad1C;
    int (*probeHook)(struct EnemyProbe *);
};
#else
struct EnemyKindDesc {
    f32 rangeGate;
    void (*onHit)(GObj *);
    void (*onTouch)(void);
    struct SubSub800E1B50_Unk88_UnkC *unkC;
    u32 unk10;
    s32 *animTable;
    struct EnemyAnimCue *animCue;
    u32 terrainKind;
    int (*probeHook)(struct EnemyProbe *);
};
#endif
#ifndef PORT
D800E1B50_STATIC_ASSERT(sizeof(struct EnemyKindDesc) == 0x24, enemy_kind_desc_stride);
D800E1B50_STATIC_ASSERT(D800E1B50_OFFSETOF(struct EnemyKindDesc, animTable) == 0x14, enemy_kind_desc_anim_table);
D800E1B50_STATIC_ASSERT(D800E1B50_OFFSETOF(struct EnemyKindDesc, probeHook) == 0x20, enemy_kind_desc_probe_hook);
#endif

/* Anim/sound cue block, installed onto EnemyRecord.unk94 from
 * EnemyKindDesc.animCue at spawn. Confirmed by func_801A2ADC..func_801A2558
 * chain evidence in ovl7_3.c plus every other overlay that reads it
 * (ovl7_4/11/17, ovl9_1/6/7/13, ovl10_3, ovl11, ovl12, ovl14_2, ovl15b,
 * ovl17_3 -- unk18/unk1C in particular are read identically everywhere,
 * ~20 files total, too broad a footprint to rename within this pass; kept
 * as unkNN and documented here instead):
 *   unk0: a primary anim id -- func_801A2558_ovl7's family plays it with
 *         func_800AA018 when != -1 (ovl7_3.c:1607, ovl9_13.c:1138).
 *   unk4: a secondary/alt anim id, same != -1 gate, same func_800AA018
 *         (ovl7_3.c:1608-1609, ovl9_13.c:1139-1140).
 *   unk8: an anim playback speed, fed to func_800AECC0/func_800AED20
 *         (ovl7_3.c:1605-1606, ovl9_13.c:1136-1137).
 *   unk18: a sound id passed as func_800FD570's 2nd argument (a positioned/
 *          looping voice-start call) -- read identically in every overlay
 *          listed above.
 *   unk1C: a sound id played via play_sound(), guarded by the "no sound"
 *          sentinel 0x80000000 -- read identically in every overlay
 *          listed above; matches this field's pre-existing "// sound"
 *          comment.
 *   unkC/unk10/unk14: no direct read/write found in this pass's evidence.
 */
struct EnemyAnimCue {
    s32 unk0;
    s32 unk4;
    f32 unk8;
    u32 unkC;
    u32 unk10;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
};

struct Sub800E1B50_80 {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    f32 unk10;
    f32 unk14;
    f32 unk18;
    u32 unk1C;
    u8 unk20;
    u8 unk21;
};

struct Sub800E1B50_34_4C {
    u32 unk0;
    f32 unk4;
    f32 unk8;
    f32 unkC;
    f32 unk10;
    f32 unk14;
};

struct Sub800E1B50_Unk34 {
    u8 pad[0x4C];
    struct Sub800E1B50_34_4C *unk4C;
};
/* Per-enemy collision/probe scratch record. Allocated per active enemy by
 * func_8010DCAC (ovl2_7.c) and installed onto EnemyRecord.unk84; every
 * function ovl7_3.c calls with an EnemyProbe* (func_8010B480/8010B284/
 * 8010B67C/8010B860/8010DC8C/80105180/801051AC/8010D668/etc) is DEFINED in
 * ovl2_7.c taking `struct PositionState *` (src/ovl2/ovl2_8.h) -- same
 * allocator (func_8010DCAC returns struct PositionState *), same field
 * shape for every offset this pass touched (0x0-0x28: PositionState.unk0,
 * kirbyFootPos[3], scale[3], faceAngle[3] match exactly). Kept as a
 * separate tag rather than unified with PositionState because that
 * header's own layout past 0x28 has an unverified offset (ovl2_7.c's
 * func_801050E0 indexes kirbyHeadPos as a flat f32* through index 6,
 * which lands 4 bytes short of PositionState's commented 0x40 for
 * kirbyHeadPath -- a pre-existing ovl2_8.h documentation bug outside this
 * pass's src/ovl7/ scope, flagged here rather than silently inherited).
 * Evidence for the offsets actually renamed (src/ovl7/enelib.c, ovl7_3.c,
 * cross-checked in ovl7_13.c, ovl9_2/8/13/14/15.c, ovl7_5.c):
 *   posX/posY/posZ (unk4/8/C): world position, mirrored from
 *     gEntitiesNextPosXArray/Y/Z at every write site.
 *   headOffsetY/footOffsetY (unk14/unk18): f32 Y offsets added to the
 *     entity's position to build a probe point -- headOffsetY while
 *     submerged/grounded (func_801A2068_ovl7's flags&1 arm), footOffsetY
 *     everywhere else (grounded fallback and the airborne forward-reach
 *     arm). Read everywhere through `*(f32 *) &probe->unk14/18` (the
 *     field was u32 before this pass -- the reinterpret casts were
 *     working around that; retyped to f32 so they are now redundant but
 *     harmless).
 *   unk10: part of the same f32 offset group by the Ovl7TrackParams
 *     overlay-copy in func_801A2ADC_ovl7/func_801A32EC (`*(struct
 *     Ovl7TrackParams *) &probe->unk10 = *params`, a 5-word block) but
 *     never read back as a standalone scalar in this pass's evidence, so
 *     left unnamed; retyped to f32 for consistency with its siblings.
 *   forwardReachPos/forwardReachNeg (unk1C/unk20): forward probe reach
 *     distances, chosen by facing sign (func_801A1724_ovl7 force-signs
 *     them from the Ovl7TrackParams copy; func_801A2068_ovl7 reads
 *     `facing == 1.0f ? probe->unk1C : probe->unk20` and feeds it through
 *     sinf/cosf(yaw) to build the ahead-of-facing probe point).
 *   facingAngle (unk24): the entity's yaw, mirrored from D_800E17D0 at
 *     every write site (func_801A1724_ovl7, func_801A2ADC_ovl7).
 *   unk0, unk28, unk2C, fill[0x20], unk50: no direct scalar evidence in
 *     this pass (unk50 is read as a small collider-kind byte by
 *     src/ovl1/ovl1_8.c's func_800B6144, outside src/ovl7/ scope).
 */
struct EnemyProbe {
    u32 unk0;
    f32 posX;
    f32 posY;
    f32 posZ;

    f32 unk10;
    f32 headOffsetY;
    f32 footOffsetY;

    f32 forwardReachPos;
    f32 forwardReachNeg;
    f32 facingAngle;

    u32 unk28;
    u32 unk2C;

    u8 fill[0x20];
    u8 unk50;
};
#ifndef PORT
D800E1B50_STATIC_ASSERT(D800E1B50_OFFSETOF(struct EnemyProbe, posX) == 0x4, enemy_probe_position);
D800E1B50_STATIC_ASSERT(D800E1B50_OFFSETOF(struct EnemyProbe, headOffsetY) == 0x14, enemy_probe_offsets);
D800E1B50_STATIC_ASSERT(D800E1B50_OFFSETOF(struct EnemyProbe, forwardReachPos) == 0x1C, enemy_probe_reach);
D800E1B50_STATIC_ASSERT(D800E1B50_OFFSETOF(struct EnemyProbe, unk50) == 0x50, enemy_probe_stride);
#endif

/* Per-kind collision-event dispatch table, installed onto EnemyRecord.unk98.
 * func_801A0D74_ovl7 (ovl7_3.c) is the ONLY reader in the whole tree
 * (verified: zero other files dereference these fields) -- it walks each
 * {callback, fallback action id} pair in a fixed priority order, calling
 * the callback if set and otherwise, if the fallback id is != -1, jumping
 * gEntityFuncListIDArray straight to it. actionIds[7] matches this
 * struct's pre-existing "same number of bytes as the number of functions"
 * comment exactly -- one s8 slot per callback. Evidence is each slot's
 * trigger condition, read directly off func_801A0D74_ovl7:
 *   onGroundChange (was func8, actionIds[0]): D_800E8920 (grounded state)
 *     transition, both the 0->1 and 1->0 edges.
 *   onBit1Change (was funcC, actionIds[1]): D_800E8AE0 bit 1 set.
 *   onWallOrCarry (was func10, actionIds[2]): any of the four collision-
 *     flags bits 0x3F, OR (carried by a mover D_800E6310 with nonzero
 *     speed).
 *   onTurnBlocked (was func14, actionIds[3]): a facing-dependent wall/
 *     ceiling combination that blocks a pending turn (bits 0x200/0x400/
 *     0x800 gated by D_800E6A10's sign).
 *   onFloorRescue (was func18, actionIds[4]): airborne (D_800E8920 == 0)
 *     with the floor-rescue collision bits (0x1C0) set.
 *   onWaterChange (was func1C, actionIds[5]): D_800E8AE0 bit 2 set -- the
 *     same bit func_801A2068_ovl7 (ovl7_3.c) latches on a water-probe
 *     state change.
 *   onHalt (was func20, actionIds[6]): EnemyRecord.unk44 (the halt/
 *     conveyor code from func_8010DC24) is nonzero.
 */
struct EnemyEventTable {
    s8 actionIds[7];
    void (*onGroundChange)(GObj *);
    void (*onBit1Change)(GObj *);
    void (*onWallOrCarry)(GObj *);
    void (*onTurnBlocked)(GObj *);
    void (*onFloorRescue)(GObj *);
    void (*onWaterChange)(GObj *);
    void (*onHalt)(GObj *);
};
#ifndef PORT
D800E1B50_STATIC_ASSERT(sizeof(struct EnemyEventTable) == 0x24, enemy_event_table_stride);
D800E1B50_STATIC_ASSERT(D800E1B50_OFFSETOF(struct EnemyEventTable, onGroundChange) == 0x8, enemy_event_table_callbacks);
#endif

/* Per-enemy-slot record, D_800E1B50[objId] (enemy object slots, 0xE+).
 * Field IDENTIFIERS below are mostly left as unkNN even where this pass
 * has solid evidence for their meaning: this struct is shared by ~70
 * overlay files across ovl1/ovl3/ovl7-ovl19 (every enemy-behaviour
 * source file in the game), and a field rename has to be pushed to every
 * use site in every one of those files to keep compiling -- auditing that
 * full set was out of reach for this pass, so identifiers were renamed
 * only where a full cross-file check (like EnemyProbe/EnemyKindDesc/
 * EnemyEventTable above) actually confirmed a small, safe footprint.
 * Evidence for the fields documented here comes from src/ovl7/enelib.c
 * and ovl7_3.c (this pass's assigned scope) unless noted:
 *   unk0/unk4/unk8 (f32): spawn/world position, mirrored from
 *     gEntitiesNextPosXArray/Y/Z by func_80198914_ovl7 (enelib.c) at
 *     spawn, and read back as posY alone by ovl9/ovl9_8.c's
 *     func_801FB744_ovl9 (`temp->unk4 - gEntitiesNextPosYArray[...]`).
 *   unk44 (u32): the halt/conveyor code returned by func_8010DC24
 *     (ovl2_7.c) -- func_801A187C_ovl7/func_801A0D74_ovl7 (ovl7_3.c)
 *     both gate on it being nonzero, and it selects EnemyEventTable's
 *     onHalt slot above.
 *   unk74/unk78/unk7C (retyped u32 -> pointer this pass, see below):
 *     ground-contact scratch latched by func_801A187C_ovl7/
 *     func_801A1B6C_ovl7 (ovl7_3.c) each tick while grounded --
 *     unk74 is the active water volume (func_8010E048's real ovl2_7.c
 *     signature takes `struct WaterData *` as its first argument, and
 *     every write site assigns it straight from a D_8012BCE0[] annex
 *     slot); unk78/unk7C are the ground normal/triangle pair read from
 *     the collision result block (PC_COL->rec[0].norm/.tri in the PORT
 *     arm; confirmed as pointers independently by ovl9_3.c/ovl9_4.c,
 *     which cast unk78 to `(Vector *)` before reading it).
 *   unk84/unk88/unk8C/unk90/unk94/unk98/unk9C/unk48: the record's links
 *     to the structs named above -- probe (EnemyProbe*), kind descriptor
 *     (EnemyKindDesc*), animation table (s32*, really an
 *     `Ovl7AnimHdr *` per ovl7_2.c -- see EnemyKindDesc's animTable
 *     note), animation/sound cue (EnemyAnimCue*), collision-event
 *     dispatch table (EnemyEventTable*), a death/state callback
 *     (unk9C, installed by func_801A0D50_ovl7), and the per-kind ground-
 *     probe hook (unk48, installed from EnemyKindDesc.probeHook).
 * Static asserts for this struct were not added: past unk48 several
 * fields (unk4C..unk80, unk90) have no confirmed evidence in this pass,
 * so its true size/layout beyond what is documented above is not
 * independently verified here.
 */
typedef struct EnemyRecord {
    f32 unk0;
    f32 unk4;
    f32 unk8;
    u32 unkC;
    u32 unk10;
    u32 unk14;
    f32 unk18;
    f32 unk1C;
    f32 unk20;
    f32 unk24;
    f32 unk28; // for fire enemy, ~0.29 when moving left, ~0.36 when moving right
    u32 unk2C;
    u32 unk30;
    struct Sub800E1B50_Unk34 *unk34;
    u8 unk38;
    s8 unk39;
    u8 unk3A;
    s8 unk3B;
    u8 unk3C; // used as a turnaround timer?
    u8 unk3D;
    u8 unk3E;
    u8 unk3F;
    u8 unk40;
    u8 unk41;
    u8 unk42;
    u8 unk43;
    u32 unk44;
    int (*unk48)(struct EnemyProbe*);
    f32 unk4C;
    f32 unk50;
    f32 unk54;
    f32 unk58;
    f32 unk5C;
    f32 unk60;
    u32 unk64;
    u32 unk68;
    u32 unk6C;
    u32 unk70;
    struct WaterData *unk74;
    void *unk78;
    struct CollisionTriangle *unk7C;
    struct Sub800E1B50_80 *unk80;
    struct EnemyProbe *unk84;
    struct EnemyKindDesc *unk88;
    s32 *unk8C;
    u32 unk90;
    struct EnemyAnimCue *unk94;
    struct EnemyEventTable *unk98;
    void (*unk9C)(GObj *); // educated guess at arguments
} EnemyRecord;

extern struct EnemyRecord *D_800E1B50[];

#endif
