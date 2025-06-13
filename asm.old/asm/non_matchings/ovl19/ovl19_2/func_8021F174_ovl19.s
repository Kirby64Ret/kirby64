glabel func_8021F174_ovl19
/* 23F884 8021F174 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 23F888 8021F178 AFBF0024 */  sw    $ra, 0x24($sp)
/* 23F88C 8021F17C AFB30020 */  sw    $s3, 0x20($sp)
/* 23F890 8021F180 AFB2001C */  sw    $s2, 0x1c($sp)
/* 23F894 8021F184 AFB10018 */  sw    $s1, 0x18($sp)
/* 23F898 8021F188 AFB00014 */  sw    $s0, 0x14($sp)
/* 23F89C 8021F18C 0C0877F4 */  jal   func_8021DFD0_ovl19
/* 23F8A0 8021F190 AFA40028 */   sw    $a0, 0x28($sp)
/* 23F8A4 8021F194 3C138005 */  lui   $s3, %hi(D_8004A7C4) # $s3, 0x8005
/* 23F8A8 8021F198 2673A7C4 */  addiu $s3, %lo(D_8004A7C4) # addiu $s3, $s3, -0x583c
/* 23F8AC 8021F19C 8E620000 */  lw    $v0, ($s3)
/* 23F8B0 8021F1A0 3C018023 */  lui   $at, %hi(D_8022F750) # $at, 0x8023
/* 23F8B4 8021F1A4 C420F750 */  lwc1  $f0, %lo(D_8022F750)($at)
/* 23F8B8 8021F1A8 8C4E0000 */  lw    $t6, ($v0)
/* 23F8BC 8021F1AC 3C01800E */ lui $at, %hi(D_800DF150)
/* 23F8C0 8021F1B0 3C040002 */  lui   $a0, (0x0002006B >> 16) # lui $a0, 2
/* 23F8C4 8021F1B4 000E7880 */  sll   $t7, $t6, 2
/* 23F8C8 8021F1B8 002F0821 */  addu  $at, $at, $t7
/* 23F8CC 8021F1BC AC20F150 */ sw $zero, %lo(D_800DF150)($at)
/* 23F8D0 8021F1C0 8C580000 */  lw    $t8, ($v0)
/* 23F8D4 8021F1C4 3C01800E */ lui $at, %hi(gEntitiesScaleXArray)
/* 23F8D8 8021F1C8 3C050001 */  lui   $a1, (0x0001869F >> 16) # lui $a1, 1
/* 23F8DC 8021F1CC 0018C880 */  sll   $t9, $t8, 2
/* 23F8E0 8021F1D0 00390821 */  addu  $at, $at, $t9
/* 23F8E4 8021F1D4 E4204550 */ swc1 $f0, %lo(gEntitiesScaleXArray)($at)
/* 23F8E8 8021F1D8 8C480000 */  lw    $t0, ($v0)
/* 23F8EC 8021F1DC 3C01800E */ lui $at, %hi(gEntitiesScaleYArray)
/* 23F8F0 8021F1E0 34A5869F */  ori   $a1, (0x0001869F & 0xFFFF) # ori $a1, $a1, 0x869f
/* 23F8F4 8021F1E4 00084880 */  sll   $t1, $t0, 2
/* 23F8F8 8021F1E8 00290821 */  addu  $at, $at, $t1
/* 23F8FC 8021F1EC E4204710 */ swc1 $f0, %lo(gEntitiesScaleYArray)($at)
/* 23F900 8021F1F0 8C4A0000 */  lw    $t2, ($v0)
/* 23F904 8021F1F4 3C01800E */ lui $at, %hi(gEntitiesScaleZArray)
/* 23F908 8021F1F8 3484006B */  ori   $a0, (0x0002006B & 0xFFFF) # ori $a0, $a0, 0x6b
/* 23F90C 8021F1FC 000A5880 */  sll   $t3, $t2, 2
/* 23F910 8021F200 002B0821 */  addu  $at, $at, $t3
/* 23F914 8021F204 24060010 */  li    $a2, 16
/* 23F918 8021F208 0C02A619 */  jal   func_800A9864
/* 23F91C 8021F20C E42048D0 */ swc1 $f0, %lo(gEntitiesScaleZArray)($at)
/* 23F920 8021F210 8E6D0000 */  lw    $t5, ($s3)
/* 23F924 8021F214 3C18800E */ lui $t8, %hi(D_800DFBD0)
/* 23F928 8021F218 240C0002 */  li    $t4, 2
/* 23F92C 8021F21C 8DAE0000 */  lw    $t6, ($t5)
/* 23F930 8021F220 3C040002 */  lui   $a0, (0x000203BC >> 16) # lui $a0, 2
/* 23F934 8021F224 3C050002 */  lui   $a1, (0x000203BD >> 16) # lui $a1, 2
/* 23F938 8021F228 000E7880 */  sll   $t7, $t6, 2
/* 23F93C 8021F22C 030FC021 */  addu  $t8, $t8, $t7
/* 23F940 8021F230 8F18FBD0 */ lw $t8, %lo(D_800DFBD0)($t8)
/* 23F944 8021F234 34A503BD */  ori   $a1, (0x000203BD & 0xFFFF) # ori $a1, $a1, 0x3bd
/* 23F948 8021F238 348403BC */  ori   $a0, (0x000203BC & 0xFFFF) # ori $a0, $a0, 0x3bc
/* 23F94C 8021F23C 8F190030 */  lw    $t9, 0x30($t8)
/* 23F950 8021F240 00003025 */  move  $a2, $zero
/* 23F954 8021F244 0C048C3A */  jal   func_801230E8
/* 23F958 8021F248 A32C0054 */   sb    $t4, 0x54($t9)
/* 23F95C 8021F24C 8E680000 */  lw    $t0, ($s3)
/* 23F960 8021F250 3C12800E */  lui   $s2, %hi(D_800E0D50) # $s2, 0x800e
/* 23F964 8021F254 26520D50 */  addiu $s2, %lo(D_800E0D50) # addiu $s2, $s2, 0xd50
/* 23F968 8021F258 8D090000 */  lw    $t1, ($t0)
/* 23F96C 8021F25C 3C11800F */  lui   $s1, %hi(D_800E8060) # $s1, 0x800f
/* 23F970 8021F260 26318060 */  addiu $s1, %lo(D_800E8060) # addiu $s1, $s1, -0x7fa0
/* 23F974 8021F264 00095080 */  sll   $t2, $t1, 2
/* 23F978 8021F268 024A5821 */  addu  $t3, $s2, $t2
/* 23F97C 8021F26C 8D6D0000 */  lw    $t5, ($t3)
/* 23F980 8021F270 000D7080 */  sll   $t6, $t5, 2
/* 23F984 8021F274 022E7821 */  addu  $t7, $s1, $t6
/* 23F988 8021F278 8DF80000 */  lw    $t8, ($t7)
/* 23F98C 8021F27C 1700000D */  bnez  $t8, .L8021F2B4_ovl19
/* 23F990 8021F280 00000000 */   nop   
.L8021F284_ovl19:
/* 23F994 8021F284 0C002DAF */  jal   finish_current_thread
/* 23F998 8021F288 24040001 */   li    $a0, 1
/* 23F99C 8021F28C 8E6C0000 */  lw    $t4, ($s3)
/* 23F9A0 8021F290 8D990000 */  lw    $t9, ($t4)
/* 23F9A4 8021F294 00194080 */  sll   $t0, $t9, 2
/* 23F9A8 8021F298 02484821 */  addu  $t1, $s2, $t0
/* 23F9AC 8021F29C 8D2A0000 */  lw    $t2, ($t1)
/* 23F9B0 8021F2A0 000A5880 */  sll   $t3, $t2, 2
/* 23F9B4 8021F2A4 022B6821 */  addu  $t5, $s1, $t3
/* 23F9B8 8021F2A8 8DAE0000 */  lw    $t6, ($t5)
/* 23F9BC 8021F2AC 11C0FFF5 */  beqz  $t6, .L8021F284_ovl19
/* 23F9C0 8021F2B0 00000000 */   nop   
.L8021F2B4_ovl19:
/* 23F9C4 8021F2B4 3C10800F */  lui   $s0, %hi(D_800E8920) # $s0, 0x800f
/* 23F9C8 8021F2B8 26108920 */  addiu $s0, %lo(D_800E8920) # addiu $s0, $s0, -0x76e0
/* 23F9CC 8021F2BC 8E0F0000 */  lw    $t7, ($s0)
.L8021F2C0_ovl19:
/* 23F9D0 8021F2C0 55E00006 */  bnezl $t7, .L8021F2DC_ovl19
/* 23F9D4 8021F2C4 3C040002 */   lui   $a0, 2
/* 23F9D8 8021F2C8 0C002DAF */  jal   finish_current_thread
/* 23F9DC 8021F2CC 24040001 */   li    $a0, 1
/* 23F9E0 8021F2D0 1000FFFB */  b     .L8021F2C0_ovl19
/* 23F9E4 8021F2D4 8E0F0000 */   lw    $t7, ($s0)
/* 23F9E8 8021F2D8 3C040002 */  lui   $a0, (0x000203B0 >> 16) # lui $a0, 2
.L8021F2DC_ovl19:
/* 23F9EC 8021F2DC 3C050002 */  lui   $a1, (0x000203B1 >> 16) # lui $a1, 2
/* 23F9F0 8021F2E0 34A503B1 */  ori   $a1, (0x000203B1 & 0xFFFF) # ori $a1, $a1, 0x3b1
/* 23F9F4 8021F2E4 348403B0 */  ori   $a0, (0x000203B0 & 0xFFFF) # ori $a0, $a0, 0x3b0
/* 23F9F8 8021F2E8 0C048C3A */  jal   func_801230E8
/* 23F9FC 8021F2EC 24060001 */   li    $a2, 1
/* 23FA00 8021F2F0 3C040002 */  lui   $a0, (0x000203BE >> 16) # lui $a0, 2
/* 23FA04 8021F2F4 3C050002 */  lui   $a1, (0x000203BF >> 16) # lui $a1, 2
/* 23FA08 8021F2F8 34A503BF */  ori   $a1, (0x000203BF & 0xFFFF) # ori $a1, $a1, 0x3bf
/* 23FA0C 8021F2FC 348403BE */  ori   $a0, (0x000203BE & 0xFFFF) # ori $a0, $a0, 0x3be
/* 23FA10 8021F300 0C048C3A */  jal   func_801230E8
/* 23FA14 8021F304 00003025 */   move  $a2, $zero
/* 23FA18 8021F308 8E780000 */  lw    $t8, ($s3)
/* 23FA1C 8021F30C 24100001 */  li    $s0, 1
/* 23FA20 8021F310 8F020000 */  lw    $v0, ($t8)
/* 23FA24 8021F314 00021080 */  sll   $v0, $v0, 2
/* 23FA28 8021F318 02426021 */  addu  $t4, $s2, $v0
/* 23FA2C 8021F31C 8D990000 */  lw    $t9, ($t4)
/* 23FA30 8021F320 00194080 */  sll   $t0, $t9, 2
/* 23FA34 8021F324 02284821 */  addu  $t1, $s1, $t0
/* 23FA38 8021F328 8D2A0000 */  lw    $t2, ($t1)
/* 23FA3C 8021F32C 160A000D */  bne   $s0, $t2, .L8021F364_ovl19
/* 23FA40 8021F330 00000000 */   nop   
.L8021F334_ovl19:
/* 23FA44 8021F334 0C002DAF */  jal   finish_current_thread
/* 23FA48 8021F338 24040001 */   li    $a0, 1
/* 23FA4C 8021F33C 8E6B0000 */  lw    $t3, ($s3)
/* 23FA50 8021F340 8D620000 */  lw    $v0, ($t3)
/* 23FA54 8021F344 00021080 */  sll   $v0, $v0, 2
/* 23FA58 8021F348 02426821 */  addu  $t5, $s2, $v0
/* 23FA5C 8021F34C 8DAE0000 */  lw    $t6, ($t5)
/* 23FA60 8021F350 000E7880 */  sll   $t7, $t6, 2
/* 23FA64 8021F354 022FC021 */  addu  $t8, $s1, $t7
/* 23FA68 8021F358 8F0C0000 */  lw    $t4, ($t8)
/* 23FA6C 8021F35C 120CFFF5 */  beq   $s0, $t4, .L8021F334_ovl19
/* 23FA70 8021F360 00000000 */   nop   
.L8021F364_ovl19:
/* 23FA74 8021F364 3C19800E */ lui $t9, %hi(D_800DFBD0)
/* 23FA78 8021F368 0322C821 */  addu  $t9, $t9, $v0
/* 23FA7C 8021F36C 8F39FBD0 */ lw $t9, %lo(D_800DFBD0)($t9)
/* 23FA80 8021F370 3C040002 */  lui   $a0, (0x000203A6 >> 16) # lui $a0, 2
/* 23FA84 8021F374 3C050002 */  lui   $a1, (0x000203A7 >> 16) # lui $a1, 2
/* 23FA88 8021F378 8F280030 */  lw    $t0, 0x30($t9)
/* 23FA8C 8021F37C 34A503A7 */  ori   $a1, (0x000203A7 & 0xFFFF) # ori $a1, $a1, 0x3a7
/* 23FA90 8021F380 348403A6 */  ori   $a0, (0x000203A6 & 0xFFFF) # ori $a0, $a0, 0x3a6
/* 23FA94 8021F384 00003025 */  move  $a2, $zero
/* 23FA98 8021F388 0C048C3A */  jal   func_801230E8
/* 23FA9C 8021F38C A1100054 */   sb    $s0, 0x54($t0)
/* 23FAA0 8021F390 0C02BE85 */  jal   func_800AFA14
/* 23FAA4 8021F394 00000000 */   nop   
/* 23FAA8 8021F398 8FBF0024 */  lw    $ra, 0x24($sp)
/* 23FAAC 8021F39C 8FB00014 */  lw    $s0, 0x14($sp)
/* 23FAB0 8021F3A0 8FB10018 */  lw    $s1, 0x18($sp)
/* 23FAB4 8021F3A4 8FB2001C */  lw    $s2, 0x1c($sp)
/* 23FAB8 8021F3A8 8FB30020 */  lw    $s3, 0x20($sp)
/* 23FABC 8021F3AC 03E00008 */  jr    $ra
/* 23FAC0 8021F3B0 27BD0028 */   addiu $sp, $sp, 0x28
.type func_8021F174_ovl19, @function
.size func_8021F174_ovl19, . - func_8021F174_ovl19
