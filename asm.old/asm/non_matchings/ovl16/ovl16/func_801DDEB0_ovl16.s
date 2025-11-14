glabel func_801DDEB0_ovl16
/* 214160 801DDEB0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 214164 801DDEB4 AFBF002C */  sw    $ra, 0x2c($sp)
/* 214168 801DDEB8 AFB40028 */  sw    $s4, 0x28($sp)
/* 21416C 801DDEBC AFB30024 */  sw    $s3, 0x24($sp)
/* 214170 801DDEC0 AFB20020 */  sw    $s2, 0x20($sp)
/* 214174 801DDEC4 AFB1001C */  sw    $s1, 0x1c($sp)
/* 214178 801DDEC8 AFB00018 */  sw    $s0, 0x18($sp)
/* 21417C 801DDECC 0C066ED6 */  jal   func_8019BB58_ovl16
/* 214180 801DDED0 AFA40030 */   sw    $a0, 0x30($sp)
/* 214184 801DDED4 3C148005 */  lui   $s4, %hi(D_8004A7C4) # $s4, 0x8005
/* 214188 801DDED8 2694A7C4 */  addiu $s4, %lo(D_8004A7C4) # addiu $s4, $s4, -0x583c
/* 21418C 801DDEDC 8E850000 */  lw    $a1, ($s4)
/* 214190 801DDEE0 0C02BEED */  jal   func_800AFBB4
/* 214194 801DDEE4 00002025 */   move  $a0, $zero
/* 214198 801DDEE8 8E820000 */  lw    $v0, ($s4)
/* 21419C 801DDEEC 3C0E800B */  lui   $t6, %hi(D_800B4924) # $t6, 0x800b
/* 2141A0 801DDEF0 3C01800E */ lui $at, %hi(D_800DEF90)
/* 2141A4 801DDEF4 8C4F0000 */  lw    $t7, ($v0)
/* 2141A8 801DDEF8 25CE4924 */  addiu $t6, %lo(D_800B4924) # addiu $t6, $t6, 0x4924
/* 2141AC 801DDEFC 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray5)
/* 2141B0 801DDF00 000FC080 */  sll   $t8, $t7, 2
/* 2141B4 801DDF04 00380821 */  addu  $at, $at, $t8
/* 2141B8 801DDF08 AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 2141BC 801DDF0C 8C590000 */  lw    $t9, ($v0)
/* 2141C0 801DDF10 3C05800B */  lui   $a1, %hi(func_800B1434) # $a1, 0x800b
/* 2141C4 801DDF14 24A51434 */  addiu $a1, %lo(func_800B1434) # addiu $a1, $a1, 0x1434
/* 2141C8 801DDF18 00194080 */  sll   $t0, $t9, 2
/* 2141CC 801DDF1C 00882021 */  addu  $a0, $a0, $t0
/* 2141D0 801DDF20 0C02C7DA */  jal   func_800B1F68
/* 2141D4 801DDF24 8C84EC10 */ lw $a0, %lo(gEntityGObjProcessArray5)($a0)
/* 2141D8 801DDF28 8E890000 */  lw    $t1, ($s4)
/* 2141DC 801DDF2C 3C01800E */ lui $at, %hi(D_800DF150)
/* 2141E0 801DDF30 8D2A0000 */  lw    $t2, ($t1)
/* 2141E4 801DDF34 000A5880 */  sll   $t3, $t2, 2
/* 2141E8 801DDF38 002B0821 */  addu  $at, $at, $t3
/* 2141EC 801DDF3C 0C02CCFD */  jal   func_800B33F4
/* 2141F0 801DDF40 AC20F150 */ sw $zero, %lo(D_800DF150)($at)
/* 2141F4 801DDF44 8E820000 */  lw    $v0, ($s4)
/* 2141F8 801DDF48 3C11800F */  lui   $s1, %hi(D_800E98E0) # $s1, 0x800f
/* 2141FC 801DDF4C 263198E0 */  addiu $s1, %lo(D_800E98E0) # addiu $s1, $s1, -0x6720
/* 214200 801DDF50 8C4C0000 */  lw    $t4, ($v0)
/* 214204 801DDF54 3C13800D */  lui   $s3, %hi(D_800D7098) # $s3, 0x800d
/* 214208 801DDF58 26737098 */  addiu $s3, %lo(D_800D7098) # addiu $s3, $s3, 0x7098
/* 21420C 801DDF5C 000C6880 */  sll   $t5, $t4, 2
/* 214210 801DDF60 022D7821 */  addu  $t7, $s1, $t5
/* 214214 801DDF64 ADE00000 */  sw    $zero, ($t7)
/* 214218 801DDF68 8E6E002C */  lw    $t6, 0x2c($s3)
/* 21421C 801DDF6C 24120001 */  li    $s2, 1
/* 214220 801DDF70 24100006 */  li    $s0, 6
/* 214224 801DDF74 164E0024 */  bne   $s2, $t6, .L801DE008_ovl16
/* 214228 801DDF78 00000000 */   nop   
/* 21422C 801DDF7C 8E980000 */  lw    $t8, ($s4)
.L801DDF80_ovl16:
/* 214230 801DDF80 8F190000 */  lw    $t9, ($t8)
/* 214234 801DDF84 00194080 */  sll   $t0, $t9, 2
/* 214238 801DDF88 02281021 */  addu  $v0, $s1, $t0
/* 21423C 801DDF8C 8C430000 */  lw    $v1, ($v0)
/* 214240 801DDF90 54600009 */  bnezl $v1, .L801DDFB8_ovl16
/* 214244 801DDF94 246C0001 */   addiu $t4, $v1, 1
/* 214248 801DDF98 0C029D9E */  jal   play_sound
/* 21424C 801DDF9C 240401AE */   li    $a0, 430
/* 214250 801DDFA0 8E890000 */  lw    $t1, ($s4)
/* 214254 801DDFA4 8D2A0000 */  lw    $t2, ($t1)
/* 214258 801DDFA8 000A5880 */  sll   $t3, $t2, 2
/* 21425C 801DDFAC 022B1021 */  addu  $v0, $s1, $t3
/* 214260 801DDFB0 8C430000 */  lw    $v1, ($v0)
/* 214264 801DDFB4 246C0001 */  addiu $t4, $v1, 1
.L801DDFB8_ovl16:
/* 214268 801DDFB8 0190001A */  div   $zero, $t4, $s0
/* 21426C 801DDFBC 00006810 */  mfhi  $t5
/* 214270 801DDFC0 AC4D0000 */  sw    $t5, ($v0)
/* 214274 801DDFC4 16000002 */  bnez  $s0, .L801DDFD0_ovl16
/* 214278 801DDFC8 00000000 */   nop   
/* 21427C 801DDFCC 0007000D */  break 7
.L801DDFD0_ovl16:
/* 214280 801DDFD0 2401FFFF */  li    $at, -1
/* 214284 801DDFD4 16010004 */  bne   $s0, $at, .L801DDFE8_ovl16
/* 214288 801DDFD8 3C018000 */   lui   $at, 0x8000
/* 21428C 801DDFDC 15810002 */  bne   $t4, $at, .L801DDFE8_ovl16
/* 214290 801DDFE0 00000000 */   nop   
/* 214294 801DDFE4 0006000D */  break 6
.L801DDFE8_ovl16:
/* 214298 801DDFE8 02402025 */  move  $a0, $s2
/* 21429C 801DDFEC 0C002DAF */  jal   finish_current_thread
/* 2142A0 801DDFF0 00000000 */   nop   
/* 2142A4 801DDFF4 8E6F002C */  lw    $t7, 0x2c($s3)
/* 2142A8 801DDFF8 524FFFE1 */  beql  $s2, $t7, .L801DDF80_ovl16
/* 2142AC 801DDFFC 8E980000 */   lw    $t8, ($s4)
/* 2142B0 801DE000 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 2142B4 801DE004 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
.L801DE008_ovl16:
/* 2142B8 801DE008 0C067656 */  jal   func_8019D958_ovl16
/* 2142BC 801DE00C 94440002 */   lhu   $a0, 2($v0)
/* 2142C0 801DE010 8FBF002C */  lw    $ra, 0x2c($sp)
/* 2142C4 801DE014 8FB00018 */  lw    $s0, 0x18($sp)
/* 2142C8 801DE018 8FB1001C */  lw    $s1, 0x1c($sp)
/* 2142CC 801DE01C 8FB20020 */  lw    $s2, 0x20($sp)
/* 2142D0 801DE020 8FB30024 */  lw    $s3, 0x24($sp)
/* 2142D4 801DE024 8FB40028 */  lw    $s4, 0x28($sp)
/* 2142D8 801DE028 03E00008 */  jr    $ra
/* 2142DC 801DE02C 27BD0030 */   addiu $sp, $sp, 0x30
.type func_801DDEB0_ovl16, @function
.size func_801DDEB0_ovl16, . - func_801DDEB0_ovl16
