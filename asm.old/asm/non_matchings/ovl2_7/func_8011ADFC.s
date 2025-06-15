glabel func_8011ADFC
/* 0A386C 8011ADFC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A3870 8011AE00 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A3874 8011AE04 0C044AD3 */  jal   func_80112B4C
/* 0A3878 8011AE08 AFA40018 */   sw    $a0, 0x18($sp)
/* 0A387C 8011AE0C 8FAE0018 */  lw    $t6, 0x18($sp)
/* 0A3880 8011AE10 3C19800E */ lui $t9, %hi(D_800DD8D0)
/* 0A3884 8011AE14 8DCF0000 */  lw    $t7, ($t6)
/* 0A3888 8011AE18 000FC080 */  sll   $t8, $t7, 2
/* 0A388C 8011AE1C 0338C821 */  addu  $t9, $t9, $t8
/* 0A3890 8011AE20 8F39D8D0 */ lw $t9, %lo(D_800DD8D0)($t9)
/* 0A3894 8011AE24 00194040 */  sll   $t0, $t9, 1
/* 0A3898 8011AE28 0503000D */  bgezl $t0, .L8011AE60_ovl2
/* 0A389C 8011AE2C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0A38A0 8011AE30 0C047941 */  jal   func_8011E504
/* 0A38A4 8011AE34 00000000 */   nop   
/* 0A38A8 8011AE38 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 0A38AC 8011AE3C 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 0A38B0 8011AE40 3C098011 */  lui   $t1, %hi(func_80112B4C) # $t1, 0x8011
/* 0A38B4 8011AE44 3C01800E */ lui $at, %hi(D_800DEF90)
/* 0A38B8 8011AE48 8D4B0000 */  lw    $t3, ($t2)
/* 0A38BC 8011AE4C 25292B4C */  addiu $t1, %lo(func_80112B4C) # addiu $t1, $t1, 0x2b4c
/* 0A38C0 8011AE50 000B6080 */  sll   $t4, $t3, 2
/* 0A38C4 8011AE54 002C0821 */  addu  $at, $at, $t4
/* 0A38C8 8011AE58 AC29EF90 */ sw $t1, %lo(D_800DEF90)($at)
/* 0A38CC 8011AE5C 8FBF0014 */  lw    $ra, 0x14($sp)
.L8011AE60_ovl2:
/* 0A38D0 8011AE60 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A38D4 8011AE64 03E00008 */  jr    $ra
/* 0A38D8 8011AE68 00000000 */   nop   
.type func_8011ADFC, @function
.size func_8011ADFC, . - func_8011ADFC
