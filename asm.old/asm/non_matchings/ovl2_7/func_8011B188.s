glabel func_8011B188
/* 0A3BF8 8011B188 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0A3BFC 8011B18C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A3C00 8011B190 8C8E0000 */  lw    $t6, ($a0)
/* 0A3C04 8011B194 0C02D249 */  jal   D_800B4924_ovl2
/* 0A3C08 8011B198 AFAE001C */   sw    $t6, 0x1c($sp)
/* 0A3C0C 8011B19C 8FA3001C */  lw    $v1, 0x1c($sp)
/* 0A3C10 8011B1A0 3C0F800F */  lui   $t7, %hi(D_800E98E0) # $t7, 0x800f
/* 0A3C14 8011B1A4 25EF98E0 */  addiu $t7, %lo(D_800E98E0) # addiu $t7, $t7, -0x6720
/* 0A3C18 8011B1A8 00031880 */  sll   $v1, $v1, 2
/* 0A3C1C 8011B1AC 006F1021 */  addu  $v0, $v1, $t7
/* 0A3C20 8011B1B0 8C440000 */  lw    $a0, ($v0)
/* 0A3C24 8011B1B4 10800007 */  beqz  $a0, .L8011B1D4_ovl2
/* 0A3C28 8011B1B8 2498FFFF */   addiu $t8, $a0, -1
/* 0A3C2C 8011B1BC 17000005 */  bnez  $t8, .L8011B1D4_ovl2
/* 0A3C30 8011B1C0 AC580000 */   sw    $t8, ($v0)
/* 0A3C34 8011B1C4 24040004 */  li    $a0, 4
/* 0A3C38 8011B1C8 0C03EE45 */  jal   func_800FB914
/* 0A3C3C 8011B1CC AFA30018 */   sw    $v1, 0x18($sp)
/* 0A3C40 8011B1D0 8FA30018 */  lw    $v1, 0x18($sp)
.L8011B1D4_ovl2:
/* 0A3C44 8011B1D4 3C08800F */  lui   $t0, %hi(D_800E9AA0) # $t0, 0x800f
/* 0A3C48 8011B1D8 25089AA0 */  addiu $t0, %lo(D_800E9AA0) # addiu $t0, $t0, -0x6560
/* 0A3C4C 8011B1DC 00681021 */  addu  $v0, $v1, $t0
/* 0A3C50 8011B1E0 8C490000 */  lw    $t1, ($v0)
/* 0A3C54 8011B1E4 252AFFFF */  addiu $t2, $t1, -1
/* 0A3C58 8011B1E8 1D40000C */  bgtz  $t2, .L8011B21C_ovl2
/* 0A3C5C 8011B1EC AC4A0000 */   sw    $t2, ($v0)
/* 0A3C60 8011B1F0 0C047941 */  jal   func_8011E504
/* 0A3C64 8011B1F4 00000000 */   nop   
/* 0A3C68 8011B1F8 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 0A3C6C 8011B1FC 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 0A3C70 8011B200 3C0C8012 */  lui   $t4, %hi(D_8011B0A4) # $t4, 0x8012
/* 0A3C74 8011B204 3C01800E */ lui $at, %hi(D_800DEF90)
/* 0A3C78 8011B208 8DAE0000 */  lw    $t6, ($t5)
/* 0A3C7C 8011B20C 258CB0A4 */  addiu $t4, %lo(D_8011B0A4) # addiu $t4, $t4, -0x4f5c
/* 0A3C80 8011B210 000E7880 */  sll   $t7, $t6, 2
/* 0A3C84 8011B214 002F0821 */  addu  $at, $at, $t7
/* 0A3C88 8011B218 AC2CEF90 */ sw $t4, %lo(D_800DEF90)($at)
.L8011B21C_ovl2:
/* 0A3C8C 8011B21C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A3C90 8011B220 27BD0020 */  addiu $sp, $sp, 0x20
/* 0A3C94 8011B224 03E00008 */  jr    $ra
/* 0A3C98 8011B228 00000000 */   nop   
.type func_8011B188, @function
.size func_8011B188, . - func_8011B188
