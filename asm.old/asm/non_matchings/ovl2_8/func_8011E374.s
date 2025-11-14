glabel func_8011E374
/* 0A6DE4 8011E374 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0A6DE8 8011E378 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0A6DEC 8011E37C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0A6DF0 8011E380 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A6DF4 8011E384 8C580000 */  lw    $t8, ($v0)
/* 0A6DF8 8011E388 3C0E8013 */  lui   $t6, %hi(D_80129114) # $t6, 0x8013
/* 0A6DFC 8011E38C 8DCE9114 */  lw    $t6, %lo(D_80129114)($t6)
/* 0A6E00 8011E390 3C08800E */ lui $t0, %hi(D_800E5F90)
/* 0A6E04 8011E394 0018C880 */  sll   $t9, $t8, 2
/* 0A6E08 8011E398 01194021 */  addu  $t0, $t0, $t9
/* 0A6E0C 8011E39C 8D085F90 */ lw $t0, %lo(D_800E5F90)($t0)
/* 0A6E10 8011E3A0 8DCF0004 */  lw    $t7, 4($t6)
/* 0A6E14 8011E3A4 44800000 */  mtc1  $zero, $f0
/* 0A6E18 8011E3A8 00084900 */  sll   $t1, $t0, 4
/* 0A6E1C 8011E3AC 01E95021 */  addu  $t2, $t7, $t1
/* 0A6E20 8011E3B0 8D450004 */  lw    $a1, 4($t2)
/* 0A6E24 8011E3B4 E7A00030 */  swc1  $f0, 0x30($sp)
/* 0A6E28 8011E3B8 E7A00020 */  swc1  $f0, 0x20($sp)
/* 0A6E2C 8011E3BC E7A00024 */  swc1  $f0, 0x24($sp)
/* 0A6E30 8011E3C0 8C4B0000 */  lw    $t3, ($v0)
/* 0A6E34 8011E3C4 3C01800E */ lui $at, %hi(D_800E6A10)
/* 0A6E38 8011E3C8 44803000 */  mtc1  $zero, $f6
/* 0A6E3C 8011E3CC 000B6080 */  sll   $t4, $t3, 2
/* 0A6E40 8011E3D0 002C0821 */  addu  $at, $at, $t4
/* 0A6E44 8011E3D4 C4246A10 */ lwc1 $f4, %lo(D_800E6A10)($at)
/* 0A6E48 8011E3D8 E7A60030 */  swc1  $f6, 0x30($sp)
/* 0A6E4C 8011E3DC 3C06800E */ lui $a2, %hi(D_800E6BD0)
/* 0A6E50 8011E3E0 E7A40028 */  swc1  $f4, 0x28($sp)
/* 0A6E54 8011E3E4 8C4D0000 */  lw    $t5, ($v0)
/* 0A6E58 8011E3E8 27A4002C */  addiu $a0, $sp, 0x2c
/* 0A6E5C 8011E3EC 000D7080 */  sll   $t6, $t5, 2
/* 0A6E60 8011E3F0 00CE3021 */  addu  $a2, $a2, $t6
/* 0A6E64 8011E3F4 0C0078D1 */  jal   func_8001E344_ovl2
/* 0A6E68 8011E3F8 8CC66BD0 */ lw $a2, %lo(D_800E6BD0)($a2)
/* 0A6E6C 8011E3FC 27A40020 */  addiu $a0, $sp, 0x20
/* 0A6E70 8011E400 0C03E270 */  jal   vec3_abs_angle_diff
/* 0A6E74 8011E404 27A5002C */   addiu $a1, $sp, 0x2c
/* 0A6E78 8011E408 44804000 */  mtc1  $zero, $f8
/* 0A6E7C 8011E40C 46000086 */  mov.s $f2, $f0
/* 0A6E80 8011E410 3C018013 */  lui   $at, %hi(D_80128F1C) # $at, 0x8013
/* 0A6E84 8011E414 4608003C */  c.lt.s $f0, $f8
/* 0A6E88 8011E418 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A6E8C 8011E41C 45020004 */  bc1fl .L8011E430_ovl2
/* 0A6E90 8011E420 46001006 */   mov.s $f0, $f2
/* 0A6E94 8011E424 C42A8F1C */  lwc1  $f10, %lo(D_80128F1C)($at)
/* 0A6E98 8011E428 460A0080 */  add.s $f2, $f0, $f10
/* 0A6E9C 8011E42C 46001006 */  mov.s $f0, $f2
.L8011E430_ovl2:
/* 0A6EA0 8011E430 03E00008 */  jr    $ra
/* 0A6EA4 8011E434 27BD0040 */   addiu $sp, $sp, 0x40
.type func_8011E374, @function
.size func_8011E374, . - func_8011E374
