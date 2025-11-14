glabel func_801184B8
/* 0A0F28 801184B8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A0F2C 801184BC AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A0F30 801184C0 8C830000 */  lw    $v1, ($a0)
/* 0A0F34 801184C4 3C02800E */  lui   $v0, %hi(gEntitiesNextPosYArray) # $v0, 0x800e
/* 0A0F38 801184C8 24422790 */  addiu $v0, %lo(gEntitiesNextPosYArray) # addiu $v0, $v0, 0x2790
/* 0A0F3C 801184CC 00037080 */  sll   $t6, $v1, 2
/* 0A0F40 801184D0 004E7821 */  addu  $t7, $v0, $t6
/* 0A0F44 801184D4 C5E60000 */  lwc1  $f6, ($t7)
/* 0A0F48 801184D8 C4440000 */  lwc1  $f4, ($v0)
/* 0A0F4C 801184DC 44804000 */  mtc1  $zero, $f8
/* 0A0F50 801184E0 3C01438C */  li    $at, 0x438C0000 # 280.000000
/* 0A0F54 801184E4 46062001 */  sub.s $f0, $f4, $f6
/* 0A0F58 801184E8 44815000 */  mtc1  $at, $f10
/* 0A0F5C 801184EC 3C19800E */ lui $t9, %hi(D_800E77A0)
/* 0A0F60 801184F0 0003C040 */  sll   $t8, $v1, 1
/* 0A0F64 801184F4 4608003C */  c.lt.s $f0, $f8
/* 0A0F68 801184F8 0338C821 */  addu  $t9, $t9, $t8
/* 0A0F6C 801184FC 45020004 */  bc1fl .L80118510_ovl2
/* 0A0F70 80118500 46000086 */   mov.s $f2, $f0
/* 0A0F74 80118504 10000002 */  b     .L80118510_ovl2
/* 0A0F78 80118508 46000087 */   neg.s $f2, $f0
/* 0A0F7C 8011850C 46000086 */  mov.s $f2, $f0
.L80118510_ovl2:
/* 0A0F80 80118510 460A103C */  c.lt.s $f2, $f10
/* 0A0F84 80118514 00000000 */  nop   
/* 0A0F88 80118518 45020014 */  bc1fl .L8011856C_ovl2
/* 0A0F8C 8011851C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0A0F90 80118520 973977A0 */ lhu $t9, %lo(D_800E77A0)($t9)
/* 0A0F94 80118524 3C098012 */  lui   $t1, %hi(D_80124E14) # $t1, 0x8012
/* 0A0F98 80118528 25294E14 */  addiu $t1, %lo(D_80124E14) # addiu $t1, $t1, 0x4e14
/* 0A0F9C 8011852C 001940C0 */  sll   $t0, $t9, 3
/* 0A0FA0 80118530 01194023 */  subu  $t0, $t0, $t9
/* 0A0FA4 80118534 00084080 */  sll   $t0, $t0, 2
/* 0A0FA8 80118538 01091021 */  addu  $v0, $t0, $t1
/* 0A0FAC 8011853C 0C02A806 */  jal   func_800AA018
/* 0A0FB0 80118540 8C440008 */   lw    $a0, 8($v0)
/* 0A0FB4 80118544 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 0A0FB8 80118548 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 0A0FBC 8011854C 3C0A8011 */  lui   $t2, %hi(func_80112B4C) # $t2, 0x8011
/* 0A0FC0 80118550 3C01800E */ lui $at, %hi(D_800DEF90)
/* 0A0FC4 80118554 8D6C0000 */  lw    $t4, ($t3)
/* 0A0FC8 80118558 254A2B4C */  addiu $t2, %lo(func_80112B4C) # addiu $t2, $t2, 0x2b4c
/* 0A0FCC 8011855C 000C6880 */  sll   $t5, $t4, 2
/* 0A0FD0 80118560 002D0821 */  addu  $at, $at, $t5
/* 0A0FD4 80118564 AC2AEF90 */ sw $t2, %lo(D_800DEF90)($at)
/* 0A0FD8 80118568 8FBF0014 */  lw    $ra, 0x14($sp)
.L8011856C_ovl2:
/* 0A0FDC 8011856C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A0FE0 80118570 03E00008 */  jr    $ra
/* 0A0FE4 80118574 00000000 */   nop   
.type func_801184B8, @function
.size func_801184B8, . - func_801184B8
