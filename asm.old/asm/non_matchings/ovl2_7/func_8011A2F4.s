glabel func_8011A2F4
/* 0A2D64 8011A2F4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0A2D68 8011A2F8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A2D6C 8011A2FC AFA40028 */  sw    $a0, 0x28($sp)
/* 0A2D70 8011A300 8C8F004C */  lw    $t7, 0x4c($a0)
/* 0A2D74 8011A304 0C0478DA */  jal   func_8011E368
/* 0A2D78 8011A308 AFAF0024 */   sw    $t7, 0x24($sp)
/* 0A2D7C 8011A30C 50400027 */  beql  $v0, $zero, .L8011A3AC_ovl2
/* 0A2D80 8011A310 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0A2D84 8011A314 0C047891 */  jal   func_8011E244
/* 0A2D88 8011A318 00000000 */   nop   
/* 0A2D8C 8011A31C 8FB80024 */  lw    $t8, 0x24($sp)
/* 0A2D90 8011A320 8FA80028 */  lw    $t0, 0x28($sp)
/* 0A2D94 8011A324 93190000 */  lbu   $t9, ($t8)
/* 0A2D98 8011A328 54590020 */  bnel  $v0, $t9, .L8011A3AC_ovl2
/* 0A2D9C 8011A32C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0A2DA0 8011A330 8D090000 */  lw    $t1, ($t0)
/* 0A2DA4 8011A334 3C02800E */ lui $v0, %hi(D_800E77A0)
/* 0A2DA8 8011A338 3C0C8012 */  lui   $t4, %hi(D_80124E14) # $t4, 0x8012
/* 0A2DAC 8011A33C 00095040 */  sll   $t2, $t1, 1
/* 0A2DB0 8011A340 004A1021 */  addu  $v0, $v0, $t2
/* 0A2DB4 8011A344 944277A0 */ lhu $v0, %lo(D_800E77A0)($v0)
/* 0A2DB8 8011A348 258C4E14 */  addiu $t4, %lo(D_80124E14) # addiu $t4, $t4, 0x4e14
/* 0A2DBC 8011A34C 000258C0 */  sll   $t3, $v0, 3
/* 0A2DC0 8011A350 01625823 */  subu  $t3, $t3, $v0
/* 0A2DC4 8011A354 000B5880 */  sll   $t3, $t3, 2
/* 0A2DC8 8011A358 016C1821 */  addu  $v1, $t3, $t4
/* 0A2DCC 8011A35C 8C640008 */  lw    $a0, 8($v1)
/* 0A2DD0 8011A360 AFA30018 */  sw    $v1, 0x18($sp)
/* 0A2DD4 8011A364 0C02A806 */  jal   func_800AA018
/* 0A2DD8 8011A368 AFA20020 */   sw    $v0, 0x20($sp)
/* 0A2DDC 8011A36C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0A2DE0 8011A370 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0A2DE4 8011A374 8FA30018 */  lw    $v1, 0x18($sp)
/* 0A2DE8 8011A378 8FA20020 */  lw    $v0, 0x20($sp)
/* 0A2DEC 8011A37C 8DCF0000 */  lw    $t7, ($t6)
/* 0A2DF0 8011A380 8C6D0014 */  lw    $t5, 0x14($v1)
/* 0A2DF4 8011A384 3C01800E */ lui $at, %hi(D_800DEF90)
/* 0A2DF8 8011A388 000FC080 */  sll   $t8, $t7, 2
/* 0A2DFC 8011A38C 00380821 */  addu  $at, $at, $t8
/* 0A2E00 8011A390 AC2DEF90 */ sw $t5, %lo(D_800DEF90)($at)
/* 0A2E04 8011A394 3C01800D */  lui   $at, %hi(D_800D6F24) # $at, 0x800d
/* 0A2E08 8011A398 2459FF41 */  addiu $t9, $v0, -0xbf
/* 0A2E0C 8011A39C AC396F24 */  sw    $t9, %lo(D_800D6F24)($at)
/* 0A2E10 8011A3A0 0C029D9E */  jal   play_sound
/* 0A2E14 8011A3A4 240401FD */   li    $a0, 509
/* 0A2E18 8011A3A8 8FBF0014 */  lw    $ra, 0x14($sp)
.L8011A3AC_ovl2:
/* 0A2E1C 8011A3AC 27BD0028 */  addiu $sp, $sp, 0x28
/* 0A2E20 8011A3B0 03E00008 */  jr    $ra
/* 0A2E24 8011A3B4 00000000 */   nop   
.type func_8011A2F4, @function
.size func_8011A2F4, . - func_8011A2F4
