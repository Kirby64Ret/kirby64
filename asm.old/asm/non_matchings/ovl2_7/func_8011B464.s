glabel func_8011B464
/* 0A3ED4 8011B464 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0A3ED8 8011B468 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A3EDC 8011B46C 8C820000 */  lw    $v0, ($a0)
/* 0A3EE0 8011B470 3C03800E */  lui   $v1, %hi(gEntitiesNextPosXArray) # $v1, 0x800e
/* 0A3EE4 8011B474 246325D0 */  addiu $v1, %lo(gEntitiesNextPosXArray) # addiu $v1, $v1, 0x25d0
/* 0A3EE8 8011B478 00027080 */  sll   $t6, $v0, 2
/* 0A3EEC 8011B47C 006E7821 */  addu  $t7, $v1, $t6
/* 0A3EF0 8011B480 C5E60000 */  lwc1  $f6, ($t7)
/* 0A3EF4 8011B484 C4640000 */  lwc1  $f4, ($v1)
/* 0A3EF8 8011B488 44804000 */  mtc1  $zero, $f8
/* 0A3EFC 8011B48C 3C014370 */  li    $at, 0x43700000 # 240.000000
/* 0A3F00 8011B490 46062001 */  sub.s $f0, $f4, $f6
/* 0A3F04 8011B494 44815000 */  mtc1  $at, $f10
/* 0A3F08 8011B498 3C19800E */ lui $t9, %hi(D_800E77A0)
/* 0A3F0C 8011B49C 0002C040 */  sll   $t8, $v0, 1
/* 0A3F10 8011B4A0 4608003C */  c.lt.s $f0, $f8
/* 0A3F14 8011B4A4 0338C821 */  addu  $t9, $t9, $t8
/* 0A3F18 8011B4A8 45020004 */  bc1fl .L8011B4BC_ovl2
/* 0A3F1C 8011B4AC 46000086 */   mov.s $f2, $f0
/* 0A3F20 8011B4B0 10000002 */  b     .L8011B4BC_ovl2
/* 0A3F24 8011B4B4 46000087 */   neg.s $f2, $f0
/* 0A3F28 8011B4B8 46000086 */  mov.s $f2, $f0
.L8011B4BC_ovl2:
/* 0A3F2C 8011B4BC 460A103C */  c.lt.s $f2, $f10
/* 0A3F30 8011B4C0 00000000 */  nop   
/* 0A3F34 8011B4C4 45020015 */  bc1fl .L8011B51C_ovl2
/* 0A3F38 8011B4C8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0A3F3C 8011B4CC 973977A0 */ lhu $t9, %lo(D_800E77A0)($t9)
/* 0A3F40 8011B4D0 3C098012 */  lui   $t1, %hi(D_80124E14) # $t1, 0x8012
/* 0A3F44 8011B4D4 25294E14 */  addiu $t1, %lo(D_80124E14) # addiu $t1, $t1, 0x4e14
/* 0A3F48 8011B4D8 001940C0 */  sll   $t0, $t9, 3
/* 0A3F4C 8011B4DC 01194023 */  subu  $t0, $t0, $t9
/* 0A3F50 8011B4E0 00084080 */  sll   $t0, $t0, 2
/* 0A3F54 8011B4E4 01091821 */  addu  $v1, $t0, $t1
/* 0A3F58 8011B4E8 8C640008 */  lw    $a0, 8($v1)
/* 0A3F5C 8011B4EC 0C02A806 */  jal   func_800AA018
/* 0A3F60 8011B4F0 AFA30018 */   sw    $v1, 0x18($sp)
/* 0A3F64 8011B4F4 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 0A3F68 8011B4F8 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 0A3F6C 8011B4FC 8FA30018 */  lw    $v1, 0x18($sp)
/* 0A3F70 8011B500 3C01800E */ lui $at, %hi(D_800DEF90)
/* 0A3F74 8011B504 8D6C0000 */  lw    $t4, ($t3)
/* 0A3F78 8011B508 8C6A0014 */  lw    $t2, 0x14($v1)
/* 0A3F7C 8011B50C 000C6880 */  sll   $t5, $t4, 2
/* 0A3F80 8011B510 002D0821 */  addu  $at, $at, $t5
/* 0A3F84 8011B514 AC2AEF90 */ sw $t2, %lo(D_800DEF90)($at)
/* 0A3F88 8011B518 8FBF0014 */  lw    $ra, 0x14($sp)
.L8011B51C_ovl2:
/* 0A3F8C 8011B51C 27BD0028 */  addiu $sp, $sp, 0x28
/* 0A3F90 8011B520 03E00008 */  jr    $ra
/* 0A3F94 8011B524 00000000 */   nop   
.type func_8011B464, @function
.size func_8011B464, . - func_8011B464
