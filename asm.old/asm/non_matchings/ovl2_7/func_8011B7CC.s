glabel func_8011B7CC
/* 0A423C 8011B7CC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0A4240 8011B7D0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A4244 8011B7D4 8C8E004C */  lw    $t6, 0x4c($a0)
/* 0A4248 8011B7D8 0C047891 */  jal   func_8011E244
/* 0A424C 8011B7DC AFAE001C */   sw    $t6, 0x1c($sp)
/* 0A4250 8011B7E0 8FAF001C */  lw    $t7, 0x1c($sp)
/* 0A4254 8011B7E4 3C040006 */  lui   $a0, (0x0006013B >> 16) # lui $a0, 6
/* 0A4258 8011B7E8 91F80000 */  lbu   $t8, ($t7)
/* 0A425C 8011B7EC 5458000F */  bnel  $v0, $t8, .L8011B82C_ovl2
/* 0A4260 8011B7F0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0A4264 8011B7F4 0C02A806 */  jal   func_800AA018
/* 0A4268 8011B7F8 3484013B */   ori   $a0, (0x0006013B & 0xFFFF) # ori $a0, $a0, 0x13b
/* 0A426C 8011B7FC 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 0A4270 8011B800 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 0A4274 8011B804 3C198011 */  lui   $t9, %hi(func_80112B4C) # $t9, 0x8011
/* 0A4278 8011B808 3C01800E */ lui $at, %hi(D_800DEF90)
/* 0A427C 8011B80C 8D090000 */  lw    $t1, ($t0)
/* 0A4280 8011B810 27392B4C */  addiu $t9, %lo(func_80112B4C) # addiu $t9, $t9, 0x2b4c
/* 0A4284 8011B814 24040055 */  li    $a0, 85
/* 0A4288 8011B818 00095080 */  sll   $t2, $t1, 2
/* 0A428C 8011B81C 002A0821 */  addu  $at, $at, $t2
/* 0A4290 8011B820 0C047939 */  jal   func_8011E4E4
/* 0A4294 8011B824 AC39EF90 */ sw $t9, %lo(D_800DEF90)($at)
/* 0A4298 8011B828 8FBF0014 */  lw    $ra, 0x14($sp)
.L8011B82C_ovl2:
/* 0A429C 8011B82C 27BD0020 */  addiu $sp, $sp, 0x20
/* 0A42A0 8011B830 03E00008 */  jr    $ra
/* 0A42A4 8011B834 00000000 */   nop   
.type func_8011B7CC, @function
.size func_8011B7CC, . - func_8011B7CC
