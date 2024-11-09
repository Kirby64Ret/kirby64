glabel func_8011B348
/* 0A3DB8 8011B348 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A3DBC 8011B34C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A3DC0 8011B350 0C044AD3 */  jal   func_80112B4C
/* 0A3DC4 8011B354 AFA40018 */   sw    $a0, 0x18($sp)
/* 0A3DC8 8011B358 8FAE0018 */  lw    $t6, 0x18($sp)
/* 0A3DCC 8011B35C 3C19800E */ lui $t9, %hi(D_800DD8D0)
/* 0A3DD0 8011B360 8DCF0000 */  lw    $t7, ($t6)
/* 0A3DD4 8011B364 000FC080 */  sll   $t8, $t7, 2
/* 0A3DD8 8011B368 0338C821 */  addu  $t9, $t9, $t8
/* 0A3DDC 8011B36C 8F39D8D0 */ lw $t9, %lo(D_800DD8D0)($t9)
/* 0A3DE0 8011B370 00194040 */  sll   $t0, $t9, 1
/* 0A3DE4 8011B374 0503000D */  bgezl $t0, .L8011B3AC_ovl2
/* 0A3DE8 8011B378 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0A3DEC 8011B37C 0C03EE45 */  jal   func_800FB914
/* 0A3DF0 8011B380 00002025 */   move  $a0, $zero
/* 0A3DF4 8011B384 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 0A3DF8 8011B388 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 0A3DFC 8011B38C 3C098011 */  lui   $t1, %hi(func_80112B4C) # $t1, 0x8011
/* 0A3E00 8011B390 3C01800E */ lui $at, %hi(D_800DEF90)
/* 0A3E04 8011B394 8D4B0000 */  lw    $t3, ($t2)
/* 0A3E08 8011B398 25292B4C */  addiu $t1, %lo(func_80112B4C) # addiu $t1, $t1, 0x2b4c
/* 0A3E0C 8011B39C 000B6080 */  sll   $t4, $t3, 2
/* 0A3E10 8011B3A0 002C0821 */  addu  $at, $at, $t4
/* 0A3E14 8011B3A4 AC29EF90 */ sw $t1, %lo(D_800DEF90)($at)
/* 0A3E18 8011B3A8 8FBF0014 */  lw    $ra, 0x14($sp)
.L8011B3AC_ovl2:
/* 0A3E1C 8011B3AC 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A3E20 8011B3B0 03E00008 */  jr    $ra
/* 0A3E24 8011B3B4 00000000 */   nop   
.type func_8011B348, @function
.size func_8011B348, . - func_8011B348
