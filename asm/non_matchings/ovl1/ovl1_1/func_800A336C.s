glabel func_800A336C
/* 04B5BC 800A336C 3C02800C */  lui   $v0, %hi(D_800BE500) # $v0, 0x800c
/* 04B5C0 800A3370 8C42E500 */  lw    $v0, %lo(D_800BE500)($v0)
/* 04B5C4 800A3374 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 04B5C8 800A3378 AFBF0014 */  sw    $ra, 0x14($sp)
/* 04B5CC 800A337C 0440001E */  bltz  $v0, .L800A33F8_ovl1
/* 04B5D0 800A3380 28410005 */   slti  $at, $v0, 5
/* 04B5D4 800A3384 1020001C */  beqz  $at, .L800A33F8_ovl1
/* 04B5D8 800A3388 00027080 */   sll   $t6, $v0, 2
/* 04B5DC 800A338C 3C04800C */ lui $a0, %hi(D_800BE414)
/* 04B5E0 800A3390 008E2021 */  addu  $a0, $a0, $t6
/* 04B5E4 800A3394 0C02E7D4 */  jal   func_800B9F50_ovl1
/* 04B5E8 800A3398 8C84E414 */ lw $a0, %lo(D_800BE414)($a0)
/* 04B5EC 800A339C 14400016 */  bnez  $v0, .L800A33F8_ovl1
/* 04B5F0 800A33A0 3C0F800C */   lui   $t7, %hi(D_800BE500) # $t7, 0x800c
/* 04B5F4 800A33A4 8DEFE500 */  lw    $t7, %lo(D_800BE500)($t7)
/* 04B5F8 800A33A8 3C04800C */ lui $a0, %hi(D_800BE414)
/* 04B5FC 800A33AC 3C05800D */  lui   $a1, %hi(D_800D6B88) # $a1, 0x800d
/* 04B600 800A33B0 000FC080 */  sll   $t8, $t7, 2
/* 04B604 800A33B4 00982021 */  addu  $a0, $a0, $t8
/* 04B608 800A33B8 8C84E414 */ lw $a0, %lo(D_800BE414)($a0)
/* 04B60C 800A33BC 0C02E7E4 */  jal   func_800B9F90_ovl1
/* 04B610 800A33C0 8CA56B88 */   lw    $a1, %lo(D_800D6B88)($a1)
/* 04B614 800A33C4 3C04800D */  lui   $a0, %hi(D_800D6B88) # $a0, 0x800d
/* 04B618 800A33C8 0C02E714 */  jal   func_800B9C50_ovl1
/* 04B61C 800A33CC 8C846B88 */   lw    $a0, %lo(D_800D6B88)($a0)
/* 04B620 800A33D0 0C029AC8 */  jal   load_overlay
/* 04B624 800A33D4 24040004 */   li    $a0, 4
/* 04B628 800A33D8 3C19800C */  lui   $t9, %hi(D_800BE500) # $t9, 0x800c
/* 04B62C 800A33DC 8F39E500 */  lw    $t9, %lo(D_800BE500)($t9)
/* 04B630 800A33E0 3C04800C */ lui $a0, %hi(D_800BE414)
/* 04B634 800A33E4 24050002 */  li    $a1, 2
/* 04B638 800A33E8 00194080 */  sll   $t0, $t9, 2
/* 04B63C 800A33EC 00882021 */  addu  $a0, $a0, $t0
/* 04B640 800A33F0 0C055358 */  jal   func_80154D60_ovl1
/* 04B644 800A33F4 8C84E414 */ lw $a0, %lo(D_800BE414)($a0)
.L800A33F8_ovl1:
/* 04B648 800A33F8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 04B64C 800A33FC 27BD0018 */  addiu $sp, $sp, 0x18
/* 04B650 800A3400 03E00008 */  jr    $ra
/* 04B654 800A3404 00000000 */   nop   
