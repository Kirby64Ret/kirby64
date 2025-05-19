glabel func_8011AEF0
/* 0A3960 8011AEF0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0A3964 8011AEF4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A3968 8011AEF8 8C8E004C */  lw    $t6, 0x4c($a0)
/* 0A396C 8011AEFC 0C047891 */  jal   func_8011E244
/* 0A3970 8011AF00 AFAE001C */   sw    $t6, 0x1c($sp)
/* 0A3974 8011AF04 8FAF001C */  lw    $t7, 0x1c($sp)
/* 0A3978 8011AF08 91F80000 */  lbu   $t8, ($t7)
/* 0A397C 8011AF0C 5458000D */  bnel  $v0, $t8, .L8011AF44_ovl2
/* 0A3980 8011AF10 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0A3984 8011AF14 0C047939 */  jal   func_8011E4E4
/* 0A3988 8011AF18 24040052 */   li    $a0, 82
/* 0A398C 8011AF1C 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 0A3990 8011AF20 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 0A3994 8011AF24 3C198012 */  lui   $t9, %hi(D_8011AE6C) # $t9, 0x8012
/* 0A3998 8011AF28 3C01800E */ lui $at, %hi(D_800DEF90)
/* 0A399C 8011AF2C 8D090000 */  lw    $t1, ($t0)
/* 0A39A0 8011AF30 2739AE6C */  addiu $t9, %lo(D_8011AE6C) # addiu $t9, $t9, -0x5194
/* 0A39A4 8011AF34 00095080 */  sll   $t2, $t1, 2
/* 0A39A8 8011AF38 002A0821 */  addu  $at, $at, $t2
/* 0A39AC 8011AF3C AC39EF90 */ sw $t9, %lo(D_800DEF90)($at)
/* 0A39B0 8011AF40 8FBF0014 */  lw    $ra, 0x14($sp)
.L8011AF44_ovl2:
/* 0A39B4 8011AF44 27BD0020 */  addiu $sp, $sp, 0x20
/* 0A39B8 8011AF48 03E00008 */  jr    $ra
/* 0A39BC 8011AF4C 00000000 */   nop   
.type func_8011AEF0, @function
.size func_8011AEF0, . - func_8011AEF0
