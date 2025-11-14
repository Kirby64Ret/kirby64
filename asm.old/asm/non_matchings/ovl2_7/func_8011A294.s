glabel func_8011A294
/* 0A2D04 8011A294 3C0E800D */  lui   $t6, %hi(gCurrentWorld) # $t6, 0x800d
/* 0A2D08 8011A298 8DCE6B90 */  lw    $t6, %lo(gCurrentWorld)($t6)
/* 0A2D0C 8011A29C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A2D10 8011A2A0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A2D14 8011A2A4 29C10002 */  slti  $at, $t6, 2
/* 0A2D18 8011A2A8 10200005 */  beqz  $at, .L8011A2C0_ovl2
/* 0A2D1C 8011A2AC AFA40018 */   sw    $a0, 0x18($sp)
/* 0A2D20 8011A2B0 3C0F800D */  lui   $t7, %hi(gCurrentLevel) # $t7, 0x800d
/* 0A2D24 8011A2B4 8DEF6B94 */  lw    $t7, %lo(gCurrentLevel)($t7)
/* 0A2D28 8011A2B8 29E10004 */  slti  $at, $t7, 4
/* 0A2D2C 8011A2BC 14200006 */  bnez  $at, .L8011A2D8_ovl2
.L8011A2C0_ovl2:
/* 0A2D30 8011A2C0 3C18800D */   lui   $t8, %hi(D_800D6B70) # $t8, 0x800d
/* 0A2D34 8011A2C4 8F186B70 */  lw    $t8, %lo(D_800D6B70)($t8)
/* 0A2D38 8011A2C8 57000004 */  bnezl $t8, .L8011A2DC_ovl2
/* 0A2D3C 8011A2CC 8FA40018 */   lw    $a0, 0x18($sp)
/* 0A2D40 8011A2D0 0C02BE85 */  jal   func_800AFA14
/* 0A2D44 8011A2D4 00000000 */   nop   
.L8011A2D8_ovl2:
/* 0A2D48 8011A2D8 8FA40018 */  lw    $a0, 0x18($sp)
.L8011A2DC_ovl2:
/* 0A2D4C 8011A2DC 0C0462F2 */  jal   func_80118BC8
/* 0A2D50 8011A2E0 2405003C */   li    $a1, 60
/* 0A2D54 8011A2E4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A2D58 8011A2E8 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A2D5C 8011A2EC 03E00008 */  jr    $ra
/* 0A2D60 8011A2F0 00000000 */   nop   
.type func_8011A294, @function
.size func_8011A294, . - func_8011A294
