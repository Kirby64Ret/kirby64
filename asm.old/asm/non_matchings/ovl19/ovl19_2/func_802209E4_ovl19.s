glabel func_802209E4_ovl19
/* 2410F4 802209E4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 2410F8 802209E8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 2410FC 802209EC 0C087861 */  jal   func_8021E184_ovl19
/* 241100 802209F0 AFA40018 */   sw    $a0, 0x18($sp)
/* 241104 802209F4 3C0E800D */  lui   $t6, %hi(D_800D6E64) # $t6, 0x800d
/* 241108 802209F8 8DCE6E64 */  lw    $t6, %lo(D_800D6E64)($t6)
/* 24110C 802209FC 55C00009 */  bnezl $t6, .L80220A24_ovl19
/* 241110 80220A00 24040004 */   li    $a0, 4
/* 241114 80220A04 0C006291 */  jal   random_soft_s32_range
/* 241118 80220A08 24040003 */   li    $a0, 3
/* 24111C 80220A0C 3C01800D */  lui   $at, %hi(D_800D6F18) # $at, 0x800d
/* 241120 80220A10 AC226F18 */  sw    $v0, %lo(D_800D6F18)($at)
/* 241124 80220A14 3C01800D */  lui   $at, %hi(D_800D6E64) # $at, 0x800d
/* 241128 80220A18 240F0001 */  li    $t7, 1
/* 24112C 80220A1C AC2F6E64 */  sw    $t7, %lo(D_800D6E64)($at)
/* 241130 80220A20 24040004 */  li    $a0, 4
.L80220A24_ovl19:
/* 241134 80220A24 0C0878B4 */  jal   func_8021E2D0_ovl19
/* 241138 80220A28 24050002 */   li    $a1, 2
/* 24113C 80220A2C 3C03800D */  lui   $v1, %hi(D_800D71F8) # $v1, 0x800d
/* 241140 80220A30 246371F8 */  addiu $v1, %lo(D_800D71F8) # addiu $v1, $v1, 0x71f8
/* 241144 80220A34 AC620000 */  sw    $v0, ($v1)
/* 241148 80220A38 3C18800D */  lui   $t8, %hi(D_800D6F18) # $t8, 0x800d
/* 24114C 80220A3C 8F186F18 */  lw    $t8, %lo(D_800D6F18)($t8)
/* 241150 80220A40 00024080 */  sll   $t0, $v0, 2
/* 241154 80220A44 3C01800F */ lui $at, %hi(D_800EC2E0)
/* 241158 80220A48 00280821 */  addu  $at, $at, $t0
/* 24115C 80220A4C 24040004 */  li    $a0, 4
/* 241160 80220A50 24050003 */  li    $a1, 3
/* 241164 80220A54 0C0878B4 */  jal   func_8021E2D0_ovl19
/* 241168 80220A58 AC38C2E0 */ sw $t8, %lo(D_800EC2E0)($at)
/* 24116C 80220A5C 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 241170 80220A60 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 241174 80220A64 3C018023 */  lui   $at, %hi(D_8022F774) # $at, 0x8023
/* 241178 80220A68 C420F774 */  lwc1  $f0, %lo(D_8022F774)($at)
/* 24117C 80220A6C 8C690000 */  lw    $t1, ($v1)
/* 241180 80220A70 3C0142A0 */  li    $at, 0x42A00000 # 80.000000
/* 241184 80220A74 44812000 */  mtc1  $at, $f4
/* 241188 80220A78 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 24118C 80220A7C 00095080 */  sll   $t2, $t1, 2
/* 241190 80220A80 002A0821 */  addu  $at, $at, $t2
/* 241194 80220A84 E42425D0 */ swc1 $f4, %lo(gEntitiesNextPosXArray)($at)
/* 241198 80220A88 8C6B0000 */  lw    $t3, ($v1)
/* 24119C 80220A8C 44803000 */  mtc1  $zero, $f6
/* 2411A0 80220A90 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 2411A4 80220A94 000B6080 */  sll   $t4, $t3, 2
/* 2411A8 80220A98 002C0821 */  addu  $at, $at, $t4
/* 2411AC 80220A9C E4262790 */ swc1 $f6, %lo(gEntitiesNextPosYArray)($at)
/* 2411B0 80220AA0 8C6D0000 */  lw    $t5, ($v1)
/* 2411B4 80220AA4 3C01C2A0 */  li    $at, 0xC2A00000 # -80.000000
/* 2411B8 80220AA8 44814000 */  mtc1  $at, $f8
/* 2411BC 80220AAC 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 2411C0 80220AB0 000D7080 */  sll   $t6, $t5, 2
/* 2411C4 80220AB4 002E0821 */  addu  $at, $at, $t6
/* 2411C8 80220AB8 E4282950 */ swc1 $f8, %lo(gEntitiesNextPosZArray)($at)
/* 2411CC 80220ABC 8C6F0000 */  lw    $t7, ($v1)
/* 2411D0 80220AC0 3C01800E */ lui $at, %hi(gEntitiesScaleXArray)
/* 2411D4 80220AC4 3C040002 */  lui   $a0, (0x0002006F >> 16) # lui $a0, 2
/* 2411D8 80220AC8 000FC880 */  sll   $t9, $t7, 2
/* 2411DC 80220ACC 00390821 */  addu  $at, $at, $t9
/* 2411E0 80220AD0 E4204550 */ swc1 $f0, %lo(gEntitiesScaleXArray)($at)
/* 2411E4 80220AD4 8C780000 */  lw    $t8, ($v1)
/* 2411E8 80220AD8 3C01800E */ lui $at, %hi(gEntitiesScaleYArray)
/* 2411EC 80220ADC 3C050001 */  lui   $a1, (0x0001869F >> 16) # lui $a1, 1
/* 2411F0 80220AE0 00184080 */  sll   $t0, $t8, 2
/* 2411F4 80220AE4 00280821 */  addu  $at, $at, $t0
/* 2411F8 80220AE8 E4204710 */ swc1 $f0, %lo(gEntitiesScaleYArray)($at)
/* 2411FC 80220AEC 8C690000 */  lw    $t1, ($v1)
/* 241200 80220AF0 3C01800E */ lui $at, %hi(gEntitiesScaleZArray)
/* 241204 80220AF4 34A5869F */  ori   $a1, (0x0001869F & 0xFFFF) # ori $a1, $a1, 0x869f
/* 241208 80220AF8 00095080 */  sll   $t2, $t1, 2
/* 24120C 80220AFC 002A0821 */  addu  $at, $at, $t2
/* 241210 80220B00 3484006F */  ori   $a0, (0x0002006F & 0xFFFF) # ori $a0, $a0, 0x6f
/* 241214 80220B04 24060010 */  li    $a2, 16
/* 241218 80220B08 0C02A619 */  jal   func_800A9864
/* 24121C 80220B0C E42048D0 */ swc1 $f0, %lo(gEntitiesScaleZArray)($at)
/* 241220 80220B10 3C040002 */  lui   $a0, (0x000203D5 >> 16) # lui $a0, 2
/* 241224 80220B14 3C050002 */  lui   $a1, (0x000203D6 >> 16) # lui $a1, 2
/* 241228 80220B18 34A503D6 */  ori   $a1, (0x000203D6 & 0xFFFF) # ori $a1, $a1, 0x3d6
/* 24122C 80220B1C 348403D5 */  ori   $a0, (0x000203D5 & 0xFFFF) # ori $a0, $a0, 0x3d5
/* 241230 80220B20 0C048C3A */  jal   func_801230E8
/* 241234 80220B24 24060001 */   li    $a2, 1
/* 241238 80220B28 0C02BE85 */  jal   func_800AFA14
/* 24123C 80220B2C 00000000 */   nop   
/* 241240 80220B30 8FBF0014 */  lw    $ra, 0x14($sp)
/* 241244 80220B34 27BD0018 */  addiu $sp, $sp, 0x18
/* 241248 80220B38 03E00008 */  jr    $ra
/* 24124C 80220B3C 00000000 */   nop   
.type func_802209E4_ovl19, @function
.size func_802209E4_ovl19, . - func_802209E4_ovl19
