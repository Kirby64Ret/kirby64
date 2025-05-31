glabel func_80116F80
/* 09F9F0 80116F80 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 09F9F4 80116F84 AFBF0014 */  sw    $ra, 0x14($sp)
/* 09F9F8 80116F88 8C8E004C */  lw    $t6, 0x4c($a0)
/* 09F9FC 80116F8C 0C047891 */  jal   func_8011E244
/* 09FA00 80116F90 AFAE001C */   sw    $t6, 0x1c($sp)
/* 09FA04 80116F94 8FAF001C */  lw    $t7, 0x1c($sp)
/* 09FA08 80116F98 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 09FA0C 80116F9C 91F80000 */  lbu   $t8, ($t7)
/* 09FA10 80116FA0 54580012 */  bnel  $v0, $t8, .L80116FEC_ovl2
/* 09FA14 80116FA4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 09FA18 80116FA8 0C02BB30 */  jal   func_800AECC0
/* 09FA1C 80116FAC C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 09FA20 80116FB0 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 09FA24 80116FB4 0C02BB48 */  jal   func_800AED20
/* 09FA28 80116FB8 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 09FA2C 80116FBC 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 09FA30 80116FC0 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 09FA34 80116FC4 3C198011 */  lui   $t9, %hi(func_80112B4C) # $t9, 0x8011
/* 09FA38 80116FC8 3C01800E */ lui $at, %hi(D_800DEF90)
/* 09FA3C 80116FCC 8D090000 */  lw    $t1, ($t0)
/* 09FA40 80116FD0 27392B4C */  addiu $t9, %lo(func_80112B4C) # addiu $t9, $t9, 0x2b4c
/* 09FA44 80116FD4 24040049 */  li    $a0, 73
/* 09FA48 80116FD8 00095080 */  sll   $t2, $t1, 2
/* 09FA4C 80116FDC 002A0821 */  addu  $at, $at, $t2
/* 09FA50 80116FE0 0C047939 */  jal   func_8011E4E4
/* 09FA54 80116FE4 AC39EF90 */ sw $t9, %lo(D_800DEF90)($at)
/* 09FA58 80116FE8 8FBF0014 */  lw    $ra, 0x14($sp)
.L80116FEC_ovl2:
/* 09FA5C 80116FEC 27BD0020 */  addiu $sp, $sp, 0x20
/* 09FA60 80116FF0 03E00008 */  jr    $ra
/* 09FA64 80116FF4 00000000 */   nop   
.type func_80116F80, @function
.size func_80116F80, . - func_80116F80
