glabel func_8011B050
/* 0A3AC0 8011B050 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A3AC4 8011B054 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A3AC8 8011B058 8C820000 */  lw    $v0, ($a0)
/* 0A3ACC 8011B05C 44802000 */  mtc1  $zero, $f4
/* 0A3AD0 8011B060 3C01800E */ lui $at, %hi(D_800E3050)
/* 0A3AD4 8011B064 00027080 */  sll   $t6, $v0, 2
/* 0A3AD8 8011B068 002E0821 */  addu  $at, $at, $t6
/* 0A3ADC 8011B06C 0C02D249 */  jal   D_800B4924_ovl2
/* 0A3AE0 8011B070 E4243050 */ swc1 $f4, %lo(D_800E3050)($at)
/* 0A3AE4 8011B074 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 0A3AE8 8011B078 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 0A3AEC 8011B07C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A3AF0 8011B080 3C0F800B */  lui   $t7, %hi(D_800B4924) # $t7, 0x800b
/* 0A3AF4 8011B084 8F190000 */  lw    $t9, ($t8)
/* 0A3AF8 8011B088 3C01800E */ lui $at, %hi(D_800DEF90)
/* 0A3AFC 8011B08C 25EF4924 */  addiu $t7, %lo(D_800B4924) # addiu $t7, $t7, 0x4924
/* 0A3B00 8011B090 00194080 */  sll   $t0, $t9, 2
/* 0A3B04 8011B094 00280821 */  addu  $at, $at, $t0
/* 0A3B08 8011B098 AC2FEF90 */ sw $t7, %lo(D_800DEF90)($at)
/* 0A3B0C 8011B09C 03E00008 */  jr    $ra
/* 0A3B10 8011B0A0 27BD0018 */   addiu $sp, $sp, 0x18
.type func_8011B050, @function
.size func_8011B050, . - func_8011B050
