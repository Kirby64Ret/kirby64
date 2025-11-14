glabel func_800A6A18
/* 04EC68 800A6A18 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 04EC6C 800A6A1C AFB40028 */  sw    $s4, 0x28($sp)
/* 04EC70 800A6A20 AFB30024 */  sw    $s3, 0x24($sp)
/* 04EC74 800A6A24 AFB20020 */  sw    $s2, 0x20($sp)
/* 04EC78 800A6A28 3C138005 */  lui   $s3, %hi(D_8004A578) # $s3, 0x8005
/* 04EC7C 800A6A2C 3C148005 */  lui   $s4, %hi(D_8004A5F8) # $s4, 0x8005
/* 04EC80 800A6A30 AFBF0034 */  sw    $ra, 0x34($sp)
/* 04EC84 800A6A34 AFB60030 */  sw    $s6, 0x30($sp)
/* 04EC88 800A6A38 AFB5002C */  sw    $s5, 0x2c($sp)
/* 04EC8C 800A6A3C AFB1001C */  sw    $s1, 0x1c($sp)
/* 04EC90 800A6A40 AFB00018 */  sw    $s0, 0x18($sp)
/* 04EC94 800A6A44 2694A5F8 */  addiu $s4, %lo(D_8004A5F8) # addiu $s4, $s4, -0x5a08
/* 04EC98 800A6A48 2673A578 */  addiu $s3, %lo(D_8004A578) # addiu $s3, $s3, -0x5a88
/* 04EC9C 800A6A4C 2412FFBF */  li    $s2, -65
/* 04ECA0 800A6A50 8E700000 */  lw    $s0, ($s3)
.L800A6A54_ovl1:
/* 04ECA4 800A6A54 5200000A */  beql  $s0, $zero, .L800A6A80_ovl1
/* 04ECA8 800A6A58 26730004 */   addiu $s3, $s3, 4
.L800A6A5C_ovl1:
/* 04ECAC 800A6A5C 8E110004 */  lw    $s1, 4($s0)
/* 04ECB0 800A6A60 0C002DE3 */  jal   func_8000B78C_ovl1
/* 04ECB4 800A6A64 02002025 */   move  $a0, $s0
/* 04ECB8 800A6A68 8E0E0044 */  lw    $t6, 0x44($s0)
/* 04ECBC 800A6A6C 01D27824 */  and   $t7, $t6, $s2
/* 04ECC0 800A6A70 AE0F0044 */  sw    $t7, 0x44($s0)
/* 04ECC4 800A6A74 1620FFF9 */  bnez  $s1, .L800A6A5C_ovl1
/* 04ECC8 800A6A78 02208025 */   move  $s0, $s1
/* 04ECCC 800A6A7C 26730004 */  addiu $s3, $s3, 4
.L800A6A80_ovl1:
/* 04ECD0 800A6A80 0274082B */  sltu  $at, $s3, $s4
/* 04ECD4 800A6A84 5420FFF3 */  bnezl $at, .L800A6A54_ovl1
/* 04ECD8 800A6A88 8E700000 */   lw    $s0, ($s3)
/* 04ECDC 800A6A8C 3C11800E */  lui   $s1, %hi(D_800DD710) # $s1, 0x800e
/* 04ECE0 800A6A90 3C16800E */  lui   $s6, %hi(D_800DD8D0) # $s6, 0x800e
/* 04ECE4 800A6A94 3C15800E */  lui   $s5, %hi(D_800DE350) # $s5, 0x800e
/* 04ECE8 800A6A98 3C14FFFF */  lui   $s4, (0xFFFF00FF >> 16) # lui $s4, 0xffff
/* 04ECEC 800A6A9C 3C13800E */  lui   $s3, %hi(D_800DD8D0) # $s3, 0x800e
/* 04ECF0 800A6AA0 2673D8D0 */  addiu $s3, %lo(D_800DD8D0) # addiu $s3, $s3, -0x2730
/* 04ECF4 800A6AA4 369400FF */  ori   $s4, (0xFFFF00FF & 0xFFFF) # ori $s4, $s4, 0xff
/* 04ECF8 800A6AA8 26B5E350 */  addiu $s5, %lo(D_800DE350) # addiu $s5, $s5, -0x1cb0
/* 04ECFC 800A6AAC 26D6D8D0 */  addiu $s6, %lo(D_800DD8D0) # addiu $s6, $s6, -0x2730
/* 04ED00 800A6AB0 2631D710 */  addiu $s1, %lo(D_800DD710) # addiu $s1, $s1, -0x28f0
/* 04ED04 800A6AB4 00008025 */  move  $s0, $zero
/* 04ED08 800A6AB8 2412FFFF */  li    $s2, -1
.L800A6ABC_ovl1:
/* 04ED0C 800A6ABC 8E380000 */  lw    $t8, ($s1)
/* 04ED10 800A6AC0 02701021 */  addu  $v0, $s3, $s0
/* 04ED14 800A6AC4 52580008 */  beql  $s2, $t8, .L800A6AE8_ovl1
/* 04ED18 800A6AC8 26310004 */   addiu $s1, $s1, 4
/* 04ED1C 800A6ACC 8C590000 */  lw    $t9, ($v0)
/* 04ED20 800A6AD0 02B04821 */  addu  $t1, $s5, $s0
/* 04ED24 800A6AD4 8D240000 */  lw    $a0, ($t1)
/* 04ED28 800A6AD8 03344024 */  and   $t0, $t9, $s4
/* 04ED2C 800A6ADC 0C02C71F */  jal   func_800B1C7C
/* 04ED30 800A6AE0 AC480000 */   sw    $t0, ($v0)
/* 04ED34 800A6AE4 26310004 */  addiu $s1, $s1, 4
.L800A6AE8_ovl1:
/* 04ED38 800A6AE8 1636FFF4 */  bne   $s1, $s6, .L800A6ABC_ovl1
/* 04ED3C 800A6AEC 26100004 */   addiu $s0, $s0, 4
/* 04ED40 800A6AF0 8FBF0034 */  lw    $ra, 0x34($sp)
/* 04ED44 800A6AF4 8FB00018 */  lw    $s0, 0x18($sp)
/* 04ED48 800A6AF8 8FB1001C */  lw    $s1, 0x1c($sp)
/* 04ED4C 800A6AFC 8FB20020 */  lw    $s2, 0x20($sp)
/* 04ED50 800A6B00 8FB30024 */  lw    $s3, 0x24($sp)
/* 04ED54 800A6B04 8FB40028 */  lw    $s4, 0x28($sp)
/* 04ED58 800A6B08 8FB5002C */  lw    $s5, 0x2c($sp)
/* 04ED5C 800A6B0C 8FB60030 */  lw    $s6, 0x30($sp)
/* 04ED60 800A6B10 03E00008 */  jr    $ra
/* 04ED64 800A6B14 27BD0038 */   addiu $sp, $sp, 0x38
.type func_800A6A18, @function
.size func_800A6A18, . - func_800A6A18
