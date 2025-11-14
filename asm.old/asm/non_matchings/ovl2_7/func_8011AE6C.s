glabel func_8011AE6C
/* 0A38DC 8011AE6C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A38E0 8011AE70 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A38E4 8011AE74 0C04848B */  jal   kirby_in_inactionable_state
/* 0A38E8 8011AE78 AFA40018 */   sw    $a0, 0x18($sp)
/* 0A38EC 8011AE7C 24010001 */  li    $at, 1
/* 0A38F0 8011AE80 14410017 */  bne   $v0, $at, .L8011AEE0_ovl2
/* 0A38F4 8011AE84 8FAE0018 */   lw    $t6, 0x18($sp)
/* 0A38F8 8011AE88 8DCF0000 */  lw    $t7, ($t6)
/* 0A38FC 8011AE8C 3C19800E */ lui $t9, %hi(D_800E77A0)
/* 0A3900 8011AE90 3C098012 */  lui   $t1, %hi(D_80124E14) # $t1, 0x8012
/* 0A3904 8011AE94 000FC040 */  sll   $t8, $t7, 1
/* 0A3908 8011AE98 0338C821 */  addu  $t9, $t9, $t8
/* 0A390C 8011AE9C 973977A0 */ lhu $t9, %lo(D_800E77A0)($t9)
/* 0A3910 8011AEA0 25294E14 */  addiu $t1, %lo(D_80124E14) # addiu $t1, $t1, 0x4e14
/* 0A3914 8011AEA4 001940C0 */  sll   $t0, $t9, 3
/* 0A3918 8011AEA8 01194023 */  subu  $t0, $t0, $t9
/* 0A391C 8011AEAC 00084080 */  sll   $t0, $t0, 2
/* 0A3920 8011AEB0 01091021 */  addu  $v0, $t0, $t1
/* 0A3924 8011AEB4 0C02A806 */  jal   func_800AA018
/* 0A3928 8011AEB8 8C440008 */   lw    $a0, 8($v0)
/* 0A392C 8011AEBC 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 0A3930 8011AEC0 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 0A3934 8011AEC4 3C0A8012 */  lui   $t2, %hi(D_8011ADFC) # $t2, 0x8012
/* 0A3938 8011AEC8 3C01800E */ lui $at, %hi(D_800DEF90)
/* 0A393C 8011AECC 8D6C0000 */  lw    $t4, ($t3)
/* 0A3940 8011AED0 254AADFC */  addiu $t2, %lo(D_8011ADFC) # addiu $t2, $t2, -0x5204
/* 0A3944 8011AED4 000C6880 */  sll   $t5, $t4, 2
/* 0A3948 8011AED8 002D0821 */  addu  $at, $at, $t5
/* 0A394C 8011AEDC AC2AEF90 */ sw $t2, %lo(D_800DEF90)($at)
.L8011AEE0_ovl2:
/* 0A3950 8011AEE0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A3954 8011AEE4 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A3958 8011AEE8 03E00008 */  jr    $ra
/* 0A395C 8011AEEC 00000000 */   nop   
.type func_8011AE6C, @function
.size func_8011AE6C, . - func_8011AE6C
